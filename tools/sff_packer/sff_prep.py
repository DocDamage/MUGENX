"""Compile an existing character's numbered PNG sources into SFF v2."""

from __future__ import annotations

import argparse
import sys
from pathlib import Path

TOOLS_DIR = Path(__file__).resolve().parents[1]
if str(TOOLS_DIR) not in sys.path:
    sys.path.insert(0, str(TOOLS_DIR))

from common.asset_compile import compile_sff, compile_status, write_sff_definition
from common.paths import repo_path


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("character", help="Character folder path relative to chars/")
    parser.add_argument("--prepare-only", action="store_true", help="Write sprites-sff.def without invoking sprmake2")
    args = parser.parse_args()

    directory = repo_path("chars", *args.character.replace("\\", "/").split("/"))
    if not directory.is_dir():
        print(f"Character directory not found: {directory}", file=sys.stderr)
        return 1
    output_name = directory.name + ".sff"

    try:
        if args.prepare_only:
            definition = write_sff_definition(directory, output_name)
            print(f"Prepared: {definition}")
        else:
            output = compile_sff(directory, output_name)
            print(f"Compiled: {output}")
        print(compile_status(directory, output_name))
        return 0
    except Exception as exc:
        print(f"SFF compilation failed: {exc}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
