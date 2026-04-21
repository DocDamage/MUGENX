"""Static audit of Lua module wiring for the MUGEN X runtime."""

from __future__ import annotations

import argparse
import json
import re
from collections import defaultdict
from pathlib import Path

from common.paths import repo_path

REQUIRE_PATTERN = re.compile(r"""require\(\s*['"]([^'"]+)['"]\s*\)""")
MANIFEST_ID_PATTERN = re.compile(r"""id\s*=\s*["']([^"']+)["']""")
INIT_FUNCTION_PATTERN = re.compile(r"""function\s+[A-Za-z0-9_\.]+\.init\s*\(""")
LOCAL_INIT_PATTERN = re.compile(r"""init\s*=\s*function\s*\(""")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--report",
        help="Optional JSON report path. Defaults to reports/lua_module_audit.json when omitted.",
    )
    parser.add_argument(
        "--summary",
        help="Optional text summary path. Defaults to reports/lua_module_audit_summary.txt when omitted.",
    )
    parser.add_argument("--stdout", action="store_true", help="Print the text summary to stdout.")
    return parser.parse_args()


def module_files() -> list[Path]:
    return sorted(repo_path("modules").glob("*.lua"))


def scanned_entrypoints() -> list[Path]:
    return [
        repo_path("modules", "init_all.lua"),
        repo_path("external", "script", "main.lua"),
        repo_path("external", "script", "mugenx_main.lua"),
    ]


def normalize_module_id(raw: str) -> str:
    raw = raw.replace("\\", "/")
    if raw.startswith("external/script/"):
        return raw
    if raw.startswith("external.script."):
        return raw
    return raw.split(".")[-1]


def parse_require_graph(paths: list[Path]) -> dict[str, list[str]]:
    graph: dict[str, list[str]] = {}
    for path in paths:
        if not path.is_file():
            continue
        text = path.read_text(encoding="utf-8", errors="ignore")
        graph[str(path)] = [normalize_module_id(match) for match in REQUIRE_PATTERN.findall(text)]
    return graph


def parse_manifest_ids(init_all_path: Path) -> list[str]:
    if not init_all_path.is_file():
        return []
    return [normalize_module_id(match) for match in MANIFEST_ID_PATTERN.findall(init_all_path.read_text(encoding="utf-8", errors="ignore"))]


def has_init_function(module_path: Path) -> bool:
    text = module_path.read_text(encoding="utf-8", errors="ignore")
    return bool(INIT_FUNCTION_PATTERN.search(text) or LOCAL_INIT_PATTERN.search(text))


def build_report() -> dict:
    module_paths = module_files()
    module_by_id = {path.stem: path for path in module_paths}
    manifest_ids = parse_manifest_ids(repo_path("modules", "init_all.lua"))
    graph = parse_require_graph(module_paths + scanned_entrypoints())

    required_by: dict[str, list[str]] = defaultdict(list)
    external_required_by: dict[str, list[str]] = defaultdict(list)
    dependency_required_by: dict[str, list[str]] = defaultdict(list)

    for caller, required_ids in graph.items():
        caller_path = Path(caller)
        caller_is_module = caller_path.parent == repo_path("modules")
        caller_label = str(caller_path.relative_to(repo_path()))
        for module_id in required_ids:
            if module_id not in module_by_id:
                continue
            required_by[module_id].append(caller_label)
            if caller_is_module:
                dependency_required_by[module_id].append(caller_label)
            else:
                external_required_by[module_id].append(caller_label)

    modules_payload = []
    category_buckets: dict[str, list[str]] = defaultdict(list)

    for module_id, module_path in sorted(module_by_id.items()):
        classifications: list[str] = []
        if module_id in manifest_ids:
            classifications.append("bootstrap_manifest")
        if external_required_by[module_id]:
            classifications.append("directly_required_elsewhere")
        if dependency_required_by[module_id] and module_id not in manifest_ids:
            classifications.append("dependency_only")
        if not required_by[module_id] and module_id not in manifest_ids:
            classifications.append("unwired")
        if not classifications:
            classifications.append("bootstrap_only")

        for category in classifications:
            category_buckets[category].append(module_id)

        modules_payload.append(
            {
                "module": module_id,
                "path": str(module_path.relative_to(repo_path())).replace("\\", "/"),
                "in_init_all": module_id in manifest_ids,
                "has_init_function": has_init_function(module_path),
                "classifications": classifications,
                "required_by": sorted(required_by[module_id]),
                "required_by_external": sorted(external_required_by[module_id]),
                "required_by_modules": sorted(dependency_required_by[module_id]),
            }
        )

    return {
        "summary": {
            "module_file_count": len(module_paths),
            "manifest_module_count": len(manifest_ids),
            "bootstrap_manifest": len(category_buckets["bootstrap_manifest"]),
            "bootstrap_only": len(category_buckets["bootstrap_only"]),
            "directly_required_elsewhere": len(category_buckets["directly_required_elsewhere"]),
            "dependency_only": len(category_buckets["dependency_only"]),
            "unwired": len(category_buckets["unwired"]),
        },
        "manifest_modules": manifest_ids,
        "category_buckets": {key: sorted(value) for key, value in sorted(category_buckets.items())},
        "scanned_files": sorted(str(path.relative_to(repo_path())).replace("\\", "/") for path in module_paths + scanned_entrypoints() if path.exists()),
        "modules": modules_payload,
    }


def render_summary(report: dict) -> str:
    lines = [
        "MUGEN X LUA MODULE AUDIT",
        "=======================",
        "",
        f"Module files: {report['summary']['module_file_count']}",
        f"Manifest modules: {report['summary']['manifest_module_count']}",
        f"Bootstrap manifest: {report['summary']['bootstrap_manifest']}",
        f"Bootstrap only: {report['summary']['bootstrap_only']}",
        f"Directly required elsewhere: {report['summary']['directly_required_elsewhere']}",
        f"Dependency only: {report['summary']['dependency_only']}",
        f"Unwired: {report['summary']['unwired']}",
        "",
    ]

    for category in (
        "bootstrap_manifest",
        "bootstrap_only",
        "directly_required_elsewhere",
        "dependency_only",
        "unwired",
    ):
        items = report["category_buckets"].get(category, [])
        lines.append(f"[{category}] ({len(items)})")
        for module_id in items:
            lines.append(f"- {module_id}")
        lines.append("")

    return "\n".join(lines).rstrip() + "\n"


def main() -> int:
    args = parse_args()
    report = build_report()
    report_path = Path(args.report).resolve() if args.report else repo_path("reports", "lua_module_audit.json")
    summary_path = Path(args.summary).resolve() if args.summary else repo_path("reports", "lua_module_audit_summary.txt")

    report_path.parent.mkdir(parents=True, exist_ok=True)
    report_path.write_text(json.dumps(report, indent=2), encoding="utf-8")

    summary_text = render_summary(report)
    summary_path.write_text(summary_text, encoding="utf-8")

    if args.stdout:
        print(summary_text, end="")

    print(f"Wrote {report_path}")
    print(f"Wrote {summary_path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
