"""Deterministic select.def builder driven by the canonical content inventory."""

from __future__ import annotations

import argparse
import difflib
import fnmatch
import json
import sys
from pathlib import Path

from common.def_references import missing_def_references
from common.paths import repo_path
from content_inventory import build_report


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--chars-root",
        default=str(repo_path("chars")),
        help="Character root to scan. Defaults to the repo chars directory.",
    )
    parser.add_argument(
        "--inventory-report",
        help="Optional content inventory JSON report to consume instead of rescanning chars/.",
    )
    parser.add_argument(
        "--policy",
        default=str(repo_path("tools", "roster_policy.json")),
        help="Roster policy JSON with include/exclude controls.",
    )
    parser.add_argument(
        "--select-def",
        default=str(repo_path("data", "select.def")),
        help="select.def file to read and optionally rewrite.",
    )
    parser.add_argument(
        "--stage-default",
        default="stages/training.def",
        help="Fallback stage to use for playable defs that do not already have a stage assignment.",
    )
    parser.add_argument(
        "--write",
        action="store_true",
        help="Write the rebuilt roster back to --select-def. Dry-run diff is the default.",
    )
    parser.add_argument(
        "--max-promoted-default-stage-entries",
        type=int,
        help=(
            "Optional safety gate for --write. Abort if the rebuilt roster would include more than "
            "this many policy-promoted default-stage entries."
        ),
    )
    parser.add_argument(
        "--write-quarantine-report",
        help="Optional path to write a JSON report of excluded or suspicious current roster entries.",
    )
    parser.add_argument(
        "--diff",
        action="store_true",
        help="Print a unified diff between the current and proposed select.def content.",
    )
    parser.add_argument(
        "--stdout",
        action="store_true",
        help="Print the proposed select.def content to stdout.",
    )
    return parser.parse_args()


def split_select_sections(select_text: str) -> tuple[list[str], list[str], list[str]]:
    lines = select_text.splitlines()
    preamble: list[str] = []
    char_section: list[str] = []
    suffix: list[str] = []

    in_characters = False
    characters_complete = False

    for line in lines:
        stripped = line.strip()
        if characters_complete:
            suffix.append(line)
            continue

        if not in_characters:
            preamble.append(line)
            if stripped.lower() == "[characters]":
                in_characters = True
            continue

        if in_characters and stripped.startswith("[") and stripped.endswith("]"):
            suffix.append(line)
            in_characters = False
            characters_complete = True
            continue

        if in_characters:
            char_section.append(line)

    return preamble, char_section, suffix


def parse_character_entries(char_lines: list[str]) -> tuple[dict[str, str], list[str]]:
    stage_map: dict[str, str] = {}
    passthrough_lines: list[str] = []

    for raw_line in char_lines:
        stripped = raw_line.strip()
        if not stripped or stripped.startswith(";"):
            continue
        if stripped.lower().startswith("randomselect"):
            passthrough_lines.append(stripped)
            continue

        parts = [part.strip() for part in stripped.split(",")]
        if not parts:
            continue

        path = parts[0].replace("\\", "/")
        if len(parts) > 1 and parts[1]:
            stage_map[path.casefold()] = parts[1]

    return stage_map, passthrough_lines


def load_json(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def load_policy(path: Path) -> dict:
    if not path.is_file():
        return {
            "exclude_categories": [],
            "exclude_globs": [],
            "exclude_prefixes": [],
            "exclude_paths": [],
            "include_new_default_stage_entries": False,
            "allow_default_stage_globs": [],
            "allow_default_stage_paths": [],
            "defer_default_stage_globs": [],
            "defer_default_stage_paths": [],
            "canonical_groups": [],
            "include_randomselect": False,
            "stage_default": "stages/training.def",
        }
    return load_json(path)


def normalize_allow_default_stage_entries(policy: dict) -> dict[str, dict[str, str]]:
    normalized: dict[str, dict[str, str]] = {}
    for item in policy.get("allow_default_stage_paths", []):
        if isinstance(item, str):
            normalized[item.casefold()] = {"path": item, "note": ""}
        elif isinstance(item, dict) and "path" in item:
            normalized[item["path"].casefold()] = {
                "path": item["path"],
                "note": item.get("note", ""),
            }
    return normalized


def filter_inventory(
    report: dict,
    policy: dict,
    current_stage_map: dict[str, str],
) -> tuple[list[dict], list[dict], list[dict], list[dict], list[dict], list[dict], list[dict]]:
    excluded_categories = {value.casefold() for value in policy.get("exclude_categories", [])}
    excluded_globs = [value.casefold() for value in policy.get("exclude_globs", [])]
    excluded_prefixes = [value.casefold().rstrip("/") for value in policy.get("exclude_prefixes", [])]
    excluded_paths = {value.casefold() for value in policy.get("exclude_paths", [])}
    allow_default_stage_globs = [
        value.casefold() for value in policy.get("allow_default_stage_globs", [])
    ]
    defer_default_stage_globs = [
        value.casefold() for value in policy.get("defer_default_stage_globs", [])
    ]
    allow_default_stage_entries = normalize_allow_default_stage_entries(policy)
    allow_default_stage_paths = set(allow_default_stage_entries)
    defer_default_stage_entries = normalize_allow_default_stage_entries(
        {"allow_default_stage_paths": policy.get("defer_default_stage_paths", [])}
    )
    defer_default_stage_paths = set(defer_default_stage_entries)
    include_new_default_stage_entries = policy.get("include_new_default_stage_entries", False)
    canonical_group_map: dict[str, tuple[str, str]] = {}
    for group in policy.get("canonical_groups", []):
        group_name = group.get("name", "unnamed-group")
        preferred_path = group["preferred_path"].casefold()
        for path in group.get("paths", []):
            canonical_group_map[path.casefold()] = (group_name, preferred_path)

    playable_entries: list[dict] = []
    policy_exclusions: list[dict] = []
    broken_reference_candidates: list[dict] = []
    deferred_default_stage_candidates: list[dict] = []
    default_stage_quarantine: list[dict] = []
    canonical_suppressions: list[dict] = []
    promoted_default_stage_entries: list[dict] = []

    for entry in report["inventory"]:
        if entry["classification"] != "playable_character":
            continue

        path_key = entry["path"].casefold()
        if entry["category"].casefold() in excluded_categories:
            policy_exclusions.append(
                {
                    "path": entry["path"],
                    "reason": "excluded by roster policy category",
                    "category": entry["category"],
                }
            )
            continue

        if any(fnmatch.fnmatch(path_key, pattern) for pattern in excluded_globs):
            policy_exclusions.append(
                {
                    "path": entry["path"],
                    "reason": "excluded by roster policy glob",
                    "category": entry["category"],
                }
            )
            continue

        if any(path_key == prefix or path_key.startswith(prefix + "/") for prefix in excluded_prefixes):
            policy_exclusions.append(
                {
                    "path": entry["path"],
                    "reason": "excluded by roster policy prefix",
                    "category": entry["category"],
                }
            )
            continue

        if path_key in excluded_paths:
            policy_exclusions.append(
                {
                    "path": entry["path"],
                    "reason": "excluded by roster policy path",
                    "category": entry["category"],
                }
            )
            continue

        if path_key in canonical_group_map:
            group_name, preferred_path = canonical_group_map[path_key]
            if path_key != preferred_path:
                canonical_suppressions.append(
                    {
                        "path": entry["path"],
                        "reason": "suppressed by canonical group preference",
                        "group": group_name,
                        "preferred_path": preferred_path,
                    }
                )
                continue

        reference_failures = missing_def_references(repo_path("chars", *entry["path"].split("/")))
        if reference_failures:
            broken_reference_candidates.append(
                {
                    "path": entry["path"],
                    "reason": "excluded because required files referenced by the character .def are missing",
                    "category": entry["category"],
                    "missing_references": reference_failures[:8],
                }
            )
            continue

        if path_key not in current_stage_map:
            if path_key in defer_default_stage_paths or any(
                fnmatch.fnmatch(path_key, pattern) for pattern in defer_default_stage_globs
            ):
                defer_meta = defer_default_stage_entries.get(path_key, {"note": ""})
                deferred_default_stage_candidates.append(
                    {
                        "path": entry["path"],
                        "reason": "intentionally deferred by roster policy pending duplicate or naming review",
                        "category": entry["category"],
                        "note": defer_meta.get("note", ""),
                    }
                )
                continue

        if (
            path_key not in current_stage_map
            and not include_new_default_stage_entries
            and path_key not in allow_default_stage_paths
            and not any(fnmatch.fnmatch(path_key, pattern) for pattern in allow_default_stage_globs)
        ):
            default_stage_quarantine.append(
                {
                    "path": entry["path"],
                    "reason": "new playable candidate would receive only the default training stage",
                    "category": entry["category"],
                }
            )
            continue

        if path_key not in current_stage_map:
            allow_meta = allow_default_stage_entries.get(path_key, {"note": ""})
            promoted_default_stage_entries.append(
                {
                    "path": entry["path"],
                    "reason": "allowed into roster despite default training stage via policy allowlist",
                    "category": entry["category"],
                    "note": allow_meta.get("note", ""),
                }
            )

        playable_entries.append(entry)

    return (
        playable_entries,
        policy_exclusions,
        broken_reference_candidates,
        deferred_default_stage_candidates,
        default_stage_quarantine,
        canonical_suppressions,
        promoted_default_stage_entries,
    )


def build_character_block(
    playable_entries: list[dict],
    current_stage_map: dict[str, str],
    stage_default: str,
) -> tuple[list[str], list[dict[str, str]]]:
    playable_entries = sorted(
        playable_entries,
        key=lambda entry: (entry["category"].casefold(), entry["path"].casefold()),
    )

    lines: list[str] = []
    stage_assignments: list[dict[str, str]] = []
    current_category = None

    for entry in playable_entries:
        category = entry["category"]
        if category != current_category:
            if lines:
                lines.append("")
            lines.append(f"; --- {category.upper()} ---")
            current_category = category

        stage = current_stage_map.get(entry["path"].casefold(), stage_default)
        lines.append(f"{entry['path']}, {stage}")
        stage_assignments.append({"path": entry["path"], "stage": stage})

    return lines, stage_assignments


def build_select_text(
    current_text: str,
    report: dict,
    policy: dict,
) -> tuple[str, dict]:
    preamble, char_section, suffix = split_select_sections(current_text)
    stage_map, passthrough_lines = parse_character_entries(char_section)
    (
        playable_entries,
        policy_exclusions,
        broken_reference_candidates,
        deferred_default_stage_candidates,
        default_stage_quarantine,
        canonical_suppressions,
        promoted_default_stage_entries,
    ) = filter_inventory(
        report, policy, stage_map
    )
    stage_default = policy.get("stage_default", "stages/training.def")
    built_lines, stage_assignments = build_character_block(playable_entries, stage_map, stage_default)

    if passthrough_lines and policy.get("include_randomselect", False):
        built_lines.append("")
        built_lines.extend(passthrough_lines)

    preamble_text = "\n".join(preamble).rstrip()
    suffix_text = "\n".join(suffix).strip()
    character_text = "\n".join(built_lines).strip()

    parts = [preamble_text, character_text]
    if suffix_text:
        parts.append(suffix_text)
    final_text = "\n\n".join(part for part in parts if part) + "\n"

    quarantine_report = {
        "summary": {
            "rebuilt_character_entries": len(stage_assignments),
            "reused_stage_assignments": sum(
                1 for assignment in stage_assignments if assignment["path"].casefold() in stage_map
            ),
            "default_stage_assignments": sum(
                1 for assignment in stage_assignments if assignment["path"].casefold() not in stage_map
            ),
            "excluded_current_entries": len(report["suspicious_select_entries"]) + len(report["missing_select_entries"]),
            "policy_excluded_candidates": len(policy_exclusions),
            "broken_reference_candidates": len(broken_reference_candidates),
            "deferred_default_stage_candidates": len(deferred_default_stage_candidates),
            "default_stage_quarantined_candidates": len(default_stage_quarantine),
            "canonical_suppressed_candidates": len(canonical_suppressions),
            "promoted_default_stage_entries": len(promoted_default_stage_entries),
        },
        "excluded_current_entries": report["suspicious_select_entries"],
        "missing_current_entries": report["missing_select_entries"],
        "policy_excluded_candidates": policy_exclusions,
        "broken_reference_candidates": broken_reference_candidates,
        "deferred_default_stage_candidates": deferred_default_stage_candidates,
        "default_stage_quarantined_candidates": default_stage_quarantine,
        "canonical_suppressed_candidates": canonical_suppressions,
        "promoted_default_stage_entries": promoted_default_stage_entries,
        "default_stage_entries": [
            assignment["path"]
            for assignment in stage_assignments
            if assignment["path"].casefold() not in stage_map
        ],
    }

    return final_text, quarantine_report


def make_diff(current_text: str, proposed_text: str, select_path: Path) -> str:
    return "".join(
        difflib.unified_diff(
            current_text.splitlines(keepends=True),
            proposed_text.splitlines(keepends=True),
            fromfile=f"{select_path} (current)",
            tofile=f"{select_path} (proposed)",
        )
    )


def write_json(path: Path, payload: dict) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2), encoding="utf-8")


def main() -> int:
    args = parse_args()
    chars_root = Path(args.chars_root).resolve()
    select_path = Path(args.select_def).resolve()
    policy_path = Path(args.policy).resolve()

    current_text = select_path.read_text(encoding="utf-8", errors="ignore")
    policy = load_policy(policy_path)
    if args.inventory_report:
        report = load_json(Path(args.inventory_report).resolve())
    else:
        report = build_report(chars_root, select_path)
    if args.stage_default:
        policy["stage_default"] = args.stage_default
    proposed_text, quarantine_report = build_select_text(current_text, report, policy)

    promoted_default_stage_count = quarantine_report["summary"]["promoted_default_stage_entries"]
    if args.write and args.max_promoted_default_stage_entries is not None:
        if promoted_default_stage_count > args.max_promoted_default_stage_entries:
            preview_paths = [
                entry["path"]
                for entry in quarantine_report["promoted_default_stage_entries"][:10]
            ]
            print(
                "Refusing to write select.def: "
                f"{promoted_default_stage_count} promoted default-stage entries exceed the "
                f"configured maximum of {args.max_promoted_default_stage_entries}."
            )
            print(
                "Deferred default-stage candidates: "
                f"{quarantine_report['summary']['deferred_default_stage_candidates']}"
            )
            if preview_paths:
                print("Promoted preview:")
                for path in preview_paths:
                    print(f"  - {path}")
            print("Re-run with a higher --max-promoted-default-stage-entries value if intentional.")
            return 2

    diff_text = make_diff(current_text, proposed_text, select_path)
    if args.diff or not args.write:
        if diff_text:
            sys.stdout.write(diff_text)
        else:
            print("No select.def changes proposed.")

    if args.stdout:
        print(proposed_text, end="")

    if args.write_quarantine_report:
        write_json(Path(args.write_quarantine_report).resolve(), quarantine_report)

    if args.write:
        select_path.write_text(proposed_text, encoding="utf-8")
        print(f"Wrote rebuilt roster to {select_path}")
    else:
        print("Dry run only. Re-run with --write to update select.def.")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
