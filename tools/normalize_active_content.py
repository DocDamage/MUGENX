"""Normalize active MUGEN X content for runtime-safe release validation.

The normalization is intentionally narrow:
- clamp only known signed-int32 timing/controller sentinel fields;
- replace broken per-character stage assignments with training.def;
- remove broken entries from [ExtraStages].

No character is removed from the roster and no broken stage source file is deleted.
"""

from __future__ import annotations

import argparse
import json
from collections import Counter

from common.content_lint import run_lint
from common.stage_integrity import prune_invalid_active_stages


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--write", action="store_true", help="Apply normalization to the workspace")
    parser.add_argument("--json", action="store_true", help="Emit machine-readable JSON")
    return parser.parse_args()


def main() -> int:
    args = parse_args()

    # Stage pruning is evaluated before overflow repair so the report records the
    # exact selection edits required by the current workspace.
    stage_report = prune_invalid_active_stages(write=args.write)
    lint_report = run_lint(fix_overflow=args.write, write_reports=True)

    fixed_issue_counts = Counter(
        issue["code"] for issue in lint_report["issues"] if issue["code"] == "int32-overflow"
    )
    report = {
        "write": args.write,
        "stage_integrity": stage_report,
        "overflow_candidates": fixed_issue_counts.get("int32-overflow", 0),
        "overflow_files": lint_report["fixed_files"],
        "post_write_note": (
            "Run content lint again after --write; this report describes issues detected before/while normalization."
            if args.write
            else "Dry run only; no files were modified."
        ),
    }

    if args.json:
        print(json.dumps(report, indent=2))
    else:
        print("MUGEN X ACTIVE CONTENT NORMALIZATION")
        print("Mode:", "WRITE" if args.write else "DRY RUN")
        print(f"Broken active stages: {stage_report['invalid_stage_count']}")
        print(f"Character stage fallbacks: {stage_report['character_stage_replacements']}")
        print(f"ExtraStages removed: {stage_report['extra_stage_removals']}")
        print(f"Int32 overflow candidates: {report['overflow_candidates']}")
        print(f"Files rewritten for overflow: {len(report['overflow_files'])}")
        print(report["post_write_note"])

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
