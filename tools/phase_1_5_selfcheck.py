"""Static/self-contained verification for the Phase 1-5 implementation.

This is intentionally runnable without launching Ikemen. It checks Python syntax,
the CommonLua bootstrap contract, registry coverage, active-module hygiene, the
native SND writer, and optionally the active-content lint. A real waited Ikemen
smoke run remains the final runtime gate.
"""

from __future__ import annotations

import argparse
import compileall
import json
import re
import struct
import tempfile
import wave
from pathlib import Path

from common.asset_compile import compile_snd, discover_sprmake2
from common.content_lint import run_lint
from common.paths import PROJECT_ROOT, repo_path

INFRA_MODULES = {"init_all", "module_registry", "runtime"}
REGISTRY_ID_RE = re.compile(r'id\s*=\s*"([^"]+)"')
ACTIVE_ID_RE = re.compile(r'id\s*=\s*"([^"]+)"\s*,\s*status\s*=\s*"active"')
BANNED_ACTIVE_PATTERNS = {
    "direct hook.add": "hook.add(",
    "legacy player object assignment": "local p = player(",
    "legacy enemy object assignment": "local enemy = player(",
    "legacy Life field": ".Life",
    "legacy MoveType field": ".MoveType",
    "legacy object PalFX": ":PalFX(",
    "legacy object VelSet": ":VelSet(",
}


def result(name: str, ok: bool, detail: str, *, warning: bool = False) -> dict:
    return {
        "name": name,
        "status": "warning" if warning else ("ok" if ok else "failed"),
        "detail": detail,
    }


def check_python() -> dict:
    ok = compileall.compile_dir(str(repo_path("tools")), quiet=1, force=True)
    return result("Python syntax", ok, "compileall tools/" + (" passed" if ok else " failed"))


def check_common_lua() -> dict:
    failures = []
    for relative in ("save/config.json", "engine/save/config.json"):
        path = repo_path(*relative.split("/"))
        try:
            data = json.loads(path.read_text(encoding="utf-8"))
        except (OSError, json.JSONDecodeError) as exc:
            failures.append(f"{relative}: {exc}")
            continue
        if data.get("CommonLua") != ["mugen_x_loop()"]:
            failures.append(f"{relative}: CommonLua={data.get('CommonLua')!r}")
    return result(
        "CommonLua lifecycle",
        not failures,
        "both configs call mugen_x_loop()" if not failures else "; ".join(failures),
    )


def registry_sets() -> tuple[set[str], set[str]]:
    text = repo_path("modules", "module_registry.lua").read_text(encoding="utf-8", errors="ignore")
    return set(REGISTRY_ID_RE.findall(text)), set(ACTIVE_ID_RE.findall(text))


def check_registry_coverage() -> dict:
    classified, _ = registry_sets()
    modules = {path.stem for path in repo_path("modules").glob("*.lua")}
    unclassified = sorted(modules - classified - INFRA_MODULES)
    stale = sorted(classified - modules)
    ok = not unclassified and not stale
    detail = f"{len(classified)} classified; {len(INFRA_MODULES)} infrastructure"
    if unclassified:
        detail += "; unclassified=" + ", ".join(unclassified)
    if stale:
        detail += "; missing files=" + ", ".join(stale)
    return result("Lua registry coverage", ok, detail)


def check_active_hygiene() -> dict:
    _, active = registry_sets()
    findings: list[str] = []
    for module_id in sorted(active):
        path = repo_path("modules", module_id + ".lua")
        if not path.is_file():
            findings.append(f"{module_id}: missing file")
            continue
        text = path.read_text(encoding="utf-8", errors="ignore")
        for label, pattern in BANNED_ACTIVE_PATTERNS.items():
            if pattern in text:
                findings.append(f"{module_id}: {label}")
    return result(
        "Active module hygiene",
        not findings,
        f"{len(active)} active modules are free of known legacy object/hook patterns"
        if not findings
        else "; ".join(findings),
    )


def check_snd_writer() -> dict:
    try:
        with tempfile.TemporaryDirectory(prefix="mugenx-snd-") as temp_dir:
            root = Path(temp_dir)
            source = root / "1-2.wav"
            with wave.open(str(source), "wb") as wav:
                wav.setnchannels(1)
                wav.setsampwidth(2)
                wav.setframerate(8000)
                wav.writeframes(b"\x00\x00" * 80)
            output = compile_snd(root, "selfcheck.snd")
            raw = output.read_bytes()
            if raw[:12] != b"ElecbyteSnd\x00":
                return result("Native SND writer", False, "invalid SND signature")
            version_hi, version_lo, count, first_offset = struct.unpack("<HHII", raw[12:24])
            ok = (version_hi, version_lo, count, first_offset) == (1, 1, 1, 512)
            detail = (
                f"version={version_hi}.{version_lo:02d}, sounds={count}, first_offset={first_offset}"
            )
            return result("Native SND writer", ok, detail)
    except Exception as exc:
        return result("Native SND writer", False, str(exc))


def check_sprite_compiler() -> dict:
    compiler = discover_sprmake2()
    if compiler:
        return result("sprmake2 discovery", True, str(compiler))
    return result(
        "sprmake2 discovery",
        True,
        "not installed; set MUGENX_SPRMAKE2 or place sprmake2 under tools/engine before generating SFFs",
        warning=True,
    )


def check_content() -> dict:
    report = run_lint(fix_overflow=False, write_reports=False)
    ok = report["error_count"] == 0
    return result(
        "Active content lint",
        ok,
        f"{report['scanned_text_files']} files; {report['error_count']} errors; "
        f"{len(report['quarantined_roster_entries'])} quarantined roster entries",
    )


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--skip-content", action="store_true", help="Skip the active roster/stage lint")
    parser.add_argument("--json", action="store_true")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    checks = [
        check_python(),
        check_common_lua(),
        check_registry_coverage(),
        check_active_hygiene(),
        check_snd_writer(),
        check_sprite_compiler(),
    ]
    if not args.skip_content:
        checks.append(check_content())

    failed = [item for item in checks if item["status"] == "failed"]
    report = {
        "project_root": str(PROJECT_ROOT),
        "status": "failed" if failed else "ok",
        "failed_count": len(failed),
        "checks": checks,
        "next_runtime_gate": "TEST_LAUNCH.bat --wait --capture-log --fail-on-log-errors --no-pause",
    }

    if args.json:
        print(json.dumps(report, indent=2))
    else:
        print("MUGEN X PHASE 1-5 SELFCHECK")
        for item in checks:
            print(f"[{item['status'].upper()}] {item['name']}: {item['detail']}")
        print(f"Result: {report['status']}")
        print("Runtime gate: " + report["next_runtime_gate"])

    return 1 if failed else 0


if __name__ == "__main__":
    raise SystemExit(main())
