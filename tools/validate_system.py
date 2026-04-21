"""Repo-root-aware preflight validation for the MUGEN X workspace."""

from __future__ import annotations

import argparse
import json
import sys
from dataclasses import asdict, dataclass
from pathlib import Path

from common.def_references import active_roster_def_paths, missing_def_references
from common.paths import PROJECT_ROOT, repo_path

ERROR_KEYWORDS = ("error", "failed", "panic", "fatal", "traceback", "invalid")
ERROR_SKIP_TERMS = (".txt", "readme", "fixed an error", "correct")


@dataclass
class CheckResult:
    name: str
    path: str
    status: str
    detail: str


def make_file_check(relative_path: str, description: str) -> CheckResult:
    path = repo_path(*relative_path.split("/"))
    if path.is_file():
        return CheckResult(
            name=description,
            path=relative_path,
            status="ok",
            detail=f"{path.stat().st_size:,} bytes",
        )
    return CheckResult(
        name=description,
        path=relative_path,
        status="missing",
        detail="Missing required file",
    )


def make_dir_check(relative_path: str, description: str) -> CheckResult:
    path = repo_path(*relative_path.split("/"))
    if path.is_dir():
        item_count = sum(1 for _ in path.rglob("*"))
        return CheckResult(
            name=description,
            path=relative_path,
            status="ok",
            detail=f"{item_count:,} items",
        )
    return CheckResult(
        name=description,
        path=relative_path,
        status="missing",
        detail="Missing required directory",
    )


def resolve_system_script(system_def_path: Path) -> CheckResult:
    if not system_def_path.is_file():
        return CheckResult(
            name="Runtime Script",
            path="data/system.def",
            status="missing",
            detail="Cannot resolve script because system.def is missing",
        )

    in_module_section = False
    script_value = None

    for raw_line in system_def_path.read_text(encoding="utf-8", errors="ignore").splitlines():
        line = raw_line.strip()
        if not line or line.startswith(";"):
            continue
        if line.startswith("[") and line.endswith("]"):
            in_module_section = line.lower() == "[module]"
            continue
        if in_module_section and line.lower().startswith("script"):
            _, _, value = line.partition("=")
            script_value = value.strip()
            break

    if not script_value:
        return CheckResult(
            name="Runtime Script",
            path="data/system.def",
            status="missing",
            detail="No [Module] script entry found",
        )

    script_path = repo_path(*script_value.replace("\\", "/").split("/"))
    if script_path.is_file():
        return CheckResult(
            name="Runtime Script",
            path=script_value.replace("\\", "/"),
            status="ok",
            detail="Resolved from data/system.def",
        )

    return CheckResult(
        name="Runtime Script",
        path=script_value.replace("\\", "/"),
        status="missing",
        detail="Configured script path does not exist",
    )
def roster_reference_failures(select_def_path: Path) -> list[dict[str, str]]:
    failures: list[dict[str, str]] = []

    for relative_def in active_roster_def_paths(select_def_path):
        def_path = repo_path("chars", *relative_def.split("/"))
        for failure in missing_def_references(def_path):
            failures.append(
                {
                    "roster_entry": relative_def,
                    "field": failure["field"],
                    "reference": failure["reference"],
                    "detail": failure["detail"],
                }
            )

    return failures


def analyze_log(log_path: Path, from_offset: int = 0) -> dict:
    if not log_path.is_file():
        return {"status": "missing", "error_count": 0, "matches": []}

    log_bytes = log_path.read_bytes()
    file_size = len(log_bytes)
    safe_offset = max(0, min(from_offset, file_size))
    prefix_text = log_bytes[:safe_offset].decode("utf-8", errors="ignore")
    log_text = log_bytes[safe_offset:].decode("utf-8", errors="ignore")
    starting_line = prefix_text.count("\n") + 1

    matches: list[dict[str, object]] = []
    skipping_game_end_traceback = False
    for line_number, raw_line in enumerate(log_text.splitlines(), start=starting_line):
        lowered = raw_line.lower()
        stripped = raw_line.strip()
        if "<game end>" in lowered:
            skipping_game_end_traceback = True
            continue
        if skipping_game_end_traceback:
            if stripped.startswith("stack traceback") or raw_line.startswith("\t"):
                continue
            skipping_game_end_traceback = False
        if any(keyword in lowered for keyword in ERROR_KEYWORDS) and not any(
            skip in lowered for skip in ERROR_SKIP_TERMS
        ):
            matches.append({"line": line_number, "text": raw_line.strip()[:200]})

    return {
        "status": "ok",
        "from_offset": safe_offset,
        "scanned_bytes": file_size - safe_offset,
        "file_size": file_size,
        "error_count": len(matches),
        "matches": matches[:10],
    }


def build_report(log_from_offset: int = 0) -> dict:
    file_checks = [
        make_file_check("engine/Ikemen_GO.exe", "Engine Executable"),
        make_file_check("data/system.def", "System Configuration"),
        make_file_check("data/select.def", "Character Select"),
        make_file_check("data/fight.def", "Fight Configuration"),
        make_file_check("external/script/main.lua", "Main Lua Entry"),
        make_file_check("modules/init_all.lua", "Module Bootstrap"),
        make_file_check("stages/training.def", "Training Stage"),
    ]
    file_checks.append(resolve_system_script(repo_path("data", "system.def")))

    dir_checks = [
        make_dir_check("chars", "Characters Directory"),
        make_dir_check("stages", "Stages Directory"),
        make_dir_check("modules", "Modules Directory"),
        make_dir_check("data", "Data Directory"),
    ]

    char_defs = sum(1 for _ in repo_path("chars").rglob("*.def")) if repo_path("chars").is_dir() else 0
    stage_defs = sum(1 for _ in repo_path("stages").rglob("*.def")) if repo_path("stages").is_dir() else 0
    module_files = sum(1 for _ in repo_path("modules").glob("*.lua")) if repo_path("modules").is_dir() else 0

    critical_failures = [
        result for result in (*file_checks, *dir_checks) if result.status != "ok"
    ]
    reference_failures = roster_reference_failures(repo_path("data", "select.def"))

    return {
        "project_root": str(PROJECT_ROOT),
        "checks": {
            "files": [asdict(result) for result in file_checks],
            "directories": [asdict(result) for result in dir_checks],
        },
        "statistics": {
            "character_definitions": char_defs,
            "stage_definitions": stage_defs,
            "lua_modules": module_files,
        },
        "roster_reference_failures": {
            "count": len(reference_failures),
            "matches": reference_failures[:25],
        },
        "log_analysis": analyze_log(repo_path("Ikemen.log"), from_offset=log_from_offset),
        "summary": {
            "status": "ok" if not critical_failures and not reference_failures else "failed",
            "critical_failure_count": len(critical_failures),
            "roster_reference_failure_count": len(reference_failures),
        },
    }


def print_report(report: dict) -> None:
    print("=" * 70)
    print("MUGEN X PRE-LAUNCH VALIDATION")
    print("=" * 70)
    print(f"Project root: {report['project_root']}")
    print()

    print("Critical files:")
    for result in report["checks"]["files"]:
        status = "OK" if result["status"] == "ok" else "FAIL"
        print(f"  [{status}] {result['name']}: {result['path']} ({result['detail']})")
    print()

    print("Critical directories:")
    for result in report["checks"]["directories"]:
        status = "OK" if result["status"] == "ok" else "FAIL"
        print(f"  [{status}] {result['name']}: {result['path']} ({result['detail']})")
    print()

    print("Content statistics:")
    print(f"  Character definitions: {report['statistics']['character_definitions']}")
    print(f"  Stage definitions: {report['statistics']['stage_definitions']}")
    print(f"  Lua modules: {report['statistics']['lua_modules']}")
    print()

    roster_reference_failures = report["roster_reference_failures"]
    print("Roster file-reference checks:")
    if roster_reference_failures["count"] == 0:
        print("  [OK] No missing required files found for active select.def entries")
    else:
        print(
            f"  [FAIL] Found {roster_reference_failures['count']} missing file reference(s) "
            "in active roster entries"
        )
        for match in roster_reference_failures["matches"]:
            print(
                "    "
                f"{match['roster_entry']} [{match['field']}] -> {match['reference']}"
            )
    print()

    log_analysis = report["log_analysis"]
    print("Previous log analysis:")
    if log_analysis["status"] == "missing":
        print("  [INFO] Ikemen.log not found")
    elif log_analysis["error_count"] == 0:
        print("  [OK] No error-like lines found in Ikemen.log")
    else:
        print(f"  [WARN] Found {log_analysis['error_count']} error-like line(s) in Ikemen.log")
        if log_analysis.get("from_offset", 0):
            print(
                "  [INFO] Scan scope: "
                f"{log_analysis['scanned_bytes']} byte(s) from offset {log_analysis['from_offset']}"
            )
        for match in log_analysis["matches"]:
            print(f"    line {match['line']}: {match['text']}")
    print()

    verdict = report["summary"]["status"]
    print("=" * 70)
    if verdict == "ok":
        print("VALIDATION PASSED")
        print("Launch options:")
        print("  LAUNCH_MUGEN_X.bat")
        print("  TEST_LAUNCH.bat --dry-run")
    else:
        print("VALIDATION FAILED")
        print(f"Critical failures: {report['summary']['critical_failure_count']}")
    print("=" * 70)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--json", action="store_true", help="Emit machine-readable JSON")
    parser.add_argument(
        "--log-from-offset",
        type=int,
        default=0,
        help="Only scan Ikemen.log content written at or after this byte offset.",
    )
    parser.add_argument(
        "--fail-on-log-errors",
        action="store_true",
        help="Return a non-zero exit code if the scanned Ikemen.log scope contains error-like lines.",
    )
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    report = build_report(log_from_offset=args.log_from_offset)

    if args.json:
        json.dump(report, sys.stdout, indent=2)
        sys.stdout.write("\n")
    else:
        print_report(report)

    if report["summary"]["status"] != "ok":
        return 1
    if args.fail_on_log_errors and report["log_analysis"]["error_count"] > 0:
        return 3
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except RuntimeError as exc:
        print(f"VALIDATION ERROR: {exc}", file=sys.stderr)
        raise SystemExit(2) from exc
