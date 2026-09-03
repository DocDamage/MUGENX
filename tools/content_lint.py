"""Validate active MUGEN X character/stage content and write quarantine reports."""

from __future__ import annotations

import argparse
import json

from common.content_lint import run_lint


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--fix-overflow",
        action="store_true",
        help="Clamp targeted plain integer fields to signed int32 bounds.",
    )
    parser.add_argument("--json", action="store_true", help="Print the full JSON report")
    parser.add_argument("--no-write-report", action="store_true", help="Do not update reports/*.json")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    report = run_lint(
        fix_overflow=args.fix_overflow,
        write_reports=not args.no_write_report,
    )
    if args.json:
        print(json.dumps(report, indent=2))
    else:
        print("MUGEN X ACTIVE CONTENT LINT")
        print(f"Status: {report['status']}")
        print(f"Roster entries: {report['active_roster_entries']}")
        print(f"Stage entries: {report['active_stage_entries']}")
        print(f"Scanned text files: {report['scanned_text_files']}")
        print(f"Errors: {report['error_count']}")
        print(f"Warnings: {report['warning_count']}")
        print(f"Quarantined entries: {len(report['quarantined_roster_entries'])}")
        if report["fixed_files"]:
            print("Overflow fixes:")
            for path in report["fixed_files"]:
                print(f"  - {path}")
        for issue in report["issues"][:25]:
            location = issue["path"]
            if issue["line"]:
                location += f":{issue['line']}"
            print(f"  [{issue['severity'].upper()}] {issue['code']} {location}: {issue['detail']}")
    return 0 if report["status"] == "ok" else 1


if __name__ == "__main__":
    raise SystemExit(main())
