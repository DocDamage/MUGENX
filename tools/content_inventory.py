"""Canonical character inventory scanner and select.def audit for MUGEN X."""

from __future__ import annotations

import argparse
import json
import re
import sys
from collections import Counter, defaultdict
from dataclasses import asdict, dataclass
from pathlib import Path

from common.paths import PROJECT_ROOT, repo_path

INVENTORY_VERSION = 1
DEFAULT_OVERRIDE_PATH = repo_path("tools", "content_inventory_overrides.json")
EXCLUDED_TOP_LEVEL_CATEGORIES = {
    "characters that need to be created",
}
STORY_PART_TOKENS = {
    "ac",
    "arcade",
    "cutscene",
    "demo",
    "ed",
    "end",
    "oped",
    "ending",
    "endings",
    "intro",
    "media",
    "story",
    "stories",
    "win",
}
SUPPORT_PART_TOKENS = {
    "ai",
    "cpu",
    "film",
    "sound",
}
STORY_STEM_PATTERN = re.compile(
    r"(^|[_-])(intro|ending|end|final|win|lose|story)([_-].*)?$|"
    r"(intro|ending|end|final|win|lose)$",
    re.IGNORECASE,
)
SUPPORT_STEM_PATTERN = re.compile(
    r"(^|[_-])(sound|cpu|noai|assist|helper)([_-].*)?$|"
    r"(sound|cpu|noai|assist|helper)$",
    re.IGNORECASE,
)


@dataclass
class InventoryEntry:
    path: str
    classification: str
    reason: str
    category: str
    directory: str
    override_source: str | None = None


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--chars-root",
        default=str(repo_path("chars")),
        help="Character root to scan. Defaults to the repo chars directory.",
    )
    parser.add_argument(
        "--select-def",
        default=str(repo_path("data", "select.def")),
        help="select.def file to audit against the scanned inventory.",
    )
    parser.add_argument(
        "--json",
        action="store_true",
        help="Emit machine-readable JSON instead of a text summary.",
    )
    parser.add_argument(
        "--write-report",
        help="Optional path to write the full JSON report to disk.",
    )
    parser.add_argument(
        "--write-playable-list",
        help="Optional path to write the sorted playable character def list.",
    )
    parser.add_argument(
        "--overrides",
        default=str(DEFAULT_OVERRIDE_PATH),
        help="Optional JSON manifest for explicit classification overrides.",
    )
    parser.add_argument(
        "--fail-on-suspicious-select",
        action="store_true",
        help="Exit non-zero when select.def contains non-playable entries.",
    )
    parser.add_argument(
        "--fail-on-missing-select",
        action="store_true",
        help="Exit non-zero when select.def references defs missing from inventory.",
    )
    parser.add_argument(
        "--fail-on-manual-review",
        action="store_true",
        help="Exit non-zero when inventory leaves defs in manual-review state.",
    )
    return parser.parse_args()


def normalize_relpath(path: Path, root: Path) -> str:
    return path.relative_to(root).as_posix()


def load_overrides(path: Path) -> dict:
    if not path.is_file():
        return {"path_classifications": {}, "path_prefix_classifications": {}}
    return json.loads(path.read_text(encoding="utf-8"))


def resolve_override(rel_path: str, overrides: dict) -> tuple[str, str, str] | None:
    path_key = rel_path.casefold()

    path_classifications = {
        key.casefold(): value for key, value in overrides.get("path_classifications", {}).items()
    }
    if path_key in path_classifications:
        value = path_classifications[path_key]
        return value["classification"], value["reason"], "path"

    prefix_classifications = overrides.get("path_prefix_classifications", {})
    for prefix, value in prefix_classifications.items():
        normalized_prefix = prefix.casefold().rstrip("/")
        if path_key.startswith(normalized_prefix + "/") or path_key == normalized_prefix:
            return value["classification"], value["reason"], "prefix"

    return None


def classify_marker(def_path: Path, root: Path) -> str | None:
    rel_parts = [part.casefold() for part in def_path.relative_to(root).parts[:-1]]
    if any(part in STORY_PART_TOKENS for part in rel_parts):
        return "story_def"
    if any(part in SUPPORT_PART_TOKENS for part in rel_parts):
        return "support_variant"

    stem = def_path.stem.casefold()
    if STORY_STEM_PATTERN.search(stem):
        return "story_def"
    if SUPPORT_STEM_PATTERN.search(stem):
        return "support_variant"
    return None


def classify_directory(
    directory: Path,
    def_files: list[Path],
    chars_root: Path,
    overrides: dict,
) -> list[InventoryEntry]:
    entries: list[InventoryEntry] = []
    dir_name = directory.name.casefold()
    rel_directory = normalize_relpath(directory, chars_root)
    category = Path(rel_directory).parts[0] if rel_directory != "." else "uncategorized"
    excluded_category = category.casefold() in EXCLUDED_TOP_LEVEL_CATEGORIES

    direct_matches = [path for path in def_files if path.stem.casefold() == dir_name]
    marker_map = {path: classify_marker(path, chars_root) for path in def_files}
    story_defs = [path for path, classification in marker_map.items() if classification == "story_def"]
    support_marked_defs = [
        path for path, classification in marker_map.items() if classification == "support_variant"
    ]
    story_set = set(story_defs)
    support_marked_set = set(support_marked_defs)
    non_story_defs = [path for path in def_files if path not in story_set and path not in support_marked_set]

    playable_paths: set[Path] = set()
    support_paths: set[Path] = set()
    manual_paths: set[Path] = set()

    if direct_matches:
        playable_paths.add(sorted(direct_matches)[0])
        for candidate in non_story_defs:
            if candidate not in playable_paths:
                support_paths.add(candidate)
    elif len(non_story_defs) == 1:
        playable_paths.add(non_story_defs[0])
    elif len(non_story_defs) > 1:
        manual_paths.update(non_story_defs)

    for def_path in sorted(def_files):
        rel_path = normalize_relpath(def_path, chars_root)
        override = resolve_override(rel_path, overrides)
        override_source = None
        if override is not None:
            classification, reason, override_source = override
        elif excluded_category:
            classification = "support_variant"
            reason = "top-level category is marked as placeholder or non-roster content"
        elif def_path in story_set:
            classification = "story_def"
            reason = "path or filename indicates intro/ending/story content"
        elif def_path in support_marked_set:
            classification = "support_variant"
            reason = "path or filename indicates support or non-playable variant content"
        elif def_path in playable_paths:
            if def_path in direct_matches:
                reason = "filename matches parent directory"
            else:
                reason = "only non-story def in directory"
            classification = "playable_character"
        elif def_path in support_paths:
            classification = "support_variant"
            reason = "non-story def exists alongside a clearer playable definition"
        else:
            classification = "manual_review"
            reason = "multiple non-story defs found without a clear primary playable def"

        entries.append(
            InventoryEntry(
                path=rel_path,
                classification=classification,
                reason=reason,
                category=category,
                directory=rel_directory,
                override_source=override_source,
            )
        )

    return entries


def scan_inventory(chars_root: Path, overrides: dict) -> list[InventoryEntry]:
    defs_by_directory: dict[Path, list[Path]] = defaultdict(list)

    for def_path in chars_root.rglob("*.def"):
        rel_parts = {part.casefold() for part in def_path.relative_to(chars_root).parts}
        if "zipped_characters" in rel_parts:
            continue
        defs_by_directory[def_path.parent].append(def_path)

    entries: list[InventoryEntry] = []
    for directory in sorted(defs_by_directory):
        entries.extend(
            classify_directory(directory, sorted(defs_by_directory[directory]), chars_root, overrides)
        )
    return entries


def parse_select_def(select_def_path: Path) -> list[str]:
    if not select_def_path.is_file():
        return []

    entries: list[str] = []
    in_characters = False

    for raw_line in select_def_path.read_text(encoding="utf-8", errors="ignore").splitlines():
        line = raw_line.strip()
        if not line or line.startswith(";"):
            continue
        if line.lower() == "[characters]":
            in_characters = True
            continue
        if in_characters and line.startswith("[") and line.endswith("]"):
            break
        if not in_characters:
            continue

        char_ref = line.split(",", 1)[0].strip().replace("\\", "/")
        if char_ref.casefold() == "randomselect":
            continue
        entries.append(char_ref)

    return entries


def build_report(chars_root: Path, select_def_path: Path, overrides: dict | None = None) -> dict:
    active_overrides = overrides or load_overrides(DEFAULT_OVERRIDE_PATH)
    inventory_entries = scan_inventory(chars_root, active_overrides)
    inventory_map = {entry.path.casefold(): entry for entry in inventory_entries}
    select_entries = parse_select_def(select_def_path)

    suspicious_roster_entries: list[dict[str, str]] = []
    missing_roster_entries: list[str] = []

    for char_ref in select_entries:
        matched = inventory_map.get(char_ref.casefold())
        if matched is None:
            missing_roster_entries.append(char_ref)
            continue
        if matched.classification != "playable_character":
            suspicious_roster_entries.append(
                {
                    "path": char_ref,
                    "classification": matched.classification,
                    "reason": matched.reason,
                }
            )

    playable_entries = [entry for entry in inventory_entries if entry.classification == "playable_character"]
    manual_review_entries = [entry for entry in inventory_entries if entry.classification == "manual_review"]
    story_entries = [entry for entry in inventory_entries if entry.classification == "story_def"]
    support_entries = [entry for entry in inventory_entries if entry.classification == "support_variant"]

    playable_set = {entry.path.casefold() for entry in playable_entries}
    roster_set = {entry.casefold() for entry in select_entries}
    playable_missing_from_roster = sorted(
        entry.path for entry in playable_entries if entry.path.casefold() not in roster_set
    )

    counts = Counter(entry.classification for entry in inventory_entries)
    override_count = sum(1 for entry in inventory_entries if entry.override_source is not None)

    return {
        "inventory_version": INVENTORY_VERSION,
        "project_root": str(PROJECT_ROOT),
        "chars_root": str(chars_root),
        "select_def": str(select_def_path),
        "overrides_path": str(DEFAULT_OVERRIDE_PATH),
        "summary": {
            "total_defs_scanned": len(inventory_entries),
            "playable_character_defs": counts["playable_character"],
            "story_defs": counts["story_def"],
            "support_variant_defs": counts["support_variant"],
            "manual_review_defs": counts["manual_review"],
            "override_classifications_applied": override_count,
            "select_character_entries": len(select_entries),
            "suspicious_select_entries": len(suspicious_roster_entries),
            "missing_select_entries": len(missing_roster_entries),
            "playable_missing_from_roster": len(playable_missing_from_roster),
        },
        "inventory": [asdict(entry) for entry in inventory_entries],
        "suspicious_select_entries": suspicious_roster_entries,
        "missing_select_entries": missing_roster_entries,
        "playable_missing_from_roster": playable_missing_from_roster,
        "samples": {
            "story_defs": [entry.path for entry in story_entries[:20]],
            "support_variant_defs": [entry.path for entry in support_entries[:20]],
            "manual_review_defs": [entry.path for entry in manual_review_entries[:20]],
        },
    }


def write_report(report: dict, output_path: Path) -> None:
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(json.dumps(report, indent=2), encoding="utf-8")


def write_playable_list(report: dict, output_path: Path) -> None:
    playable_paths = sorted(
        entry["path"]
        for entry in report["inventory"]
        if entry["classification"] == "playable_character"
    )
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text("\n".join(playable_paths) + "\n", encoding="utf-8")


def print_summary(report: dict) -> None:
    summary = report["summary"]
    print("=" * 72)
    print("MUGEN X CONTENT INVENTORY")
    print("=" * 72)
    print(f"Project root: {report['project_root']}")
    print(f"Chars root:   {report['chars_root']}")
    print(f"select.def:   {report['select_def']}")
    print()
    print("Classification summary:")
    print(f"  playable_character : {summary['playable_character_defs']}")
    print(f"  story_def          : {summary['story_defs']}")
    print(f"  support_variant    : {summary['support_variant_defs']}")
    print(f"  manual_review      : {summary['manual_review_defs']}")
    print()
    print("Roster audit:")
    print(f"  select.def entries           : {summary['select_character_entries']}")
    print(f"  suspicious select entries    : {summary['suspicious_select_entries']}")
    print(f"  missing select entries       : {summary['missing_select_entries']}")
    print(f"  playable defs missing roster : {summary['playable_missing_from_roster']}")
    print()

    if report["suspicious_select_entries"]:
        print("Suspicious select.def entries:")
        for entry in report["suspicious_select_entries"][:20]:
            print(f"  - {entry['path']} [{entry['classification']}] {entry['reason']}")
        if len(report["suspicious_select_entries"]) > 20:
            print(f"  ... and {len(report['suspicious_select_entries']) - 20} more")
        print()

    if report["samples"]["manual_review_defs"]:
        print("Manual review samples:")
        for path in report["samples"]["manual_review_defs"][:10]:
            print(f"  - {path}")
        print()


def determine_exit_code(report: dict, args: argparse.Namespace) -> int:
    summary = report["summary"]
    if args.fail_on_suspicious_select and summary["suspicious_select_entries"] > 0:
        return 2
    if args.fail_on_missing_select and summary["missing_select_entries"] > 0:
        return 3
    if args.fail_on_manual_review and summary["manual_review_defs"] > 0:
        return 4
    return 0


def main() -> int:
    args = parse_args()
    chars_root = Path(args.chars_root).resolve()
    select_def_path = Path(args.select_def).resolve()
    overrides = load_overrides(Path(args.overrides).resolve())

    report = build_report(chars_root, select_def_path, overrides=overrides)

    if args.write_report:
        write_report(report, Path(args.write_report).resolve())
    if args.write_playable_list:
        write_playable_list(report, Path(args.write_playable_list).resolve())

    if args.json:
        json.dump(report, sys.stdout, indent=2)
        sys.stdout.write("\n")
    else:
        print_summary(report)

    return determine_exit_code(report, args)


if __name__ == "__main__":
    raise SystemExit(main())
