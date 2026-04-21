"""Helpers for resolving .def file references used by active roster entries."""

from __future__ import annotations

from pathlib import Path

DEF_FILE_CHECK_KEYS = {
    "cmd",
    "cns",
    "st",
    "st1",
    "st2",
    "st3",
    "st4",
    "st5",
    "st6",
    "st7",
    "stcommon",
    "sprite",
    "anim",
    "sound",
}

SHARED_DEF_REFERENCES = {"common1.cns", "common1.cmd", "common.cmd"}


def active_roster_def_paths(select_def_path: Path) -> list[str]:
    if not select_def_path.is_file():
        return []

    entries: list[str] = []
    in_characters = False
    for raw_line in select_def_path.read_text(encoding="utf-8", errors="ignore").splitlines():
        line = raw_line.strip()
        if not line or line.startswith(";"):
            continue
        if line.startswith("[") and line.endswith("]"):
            in_characters = line.lower() == "[characters]"
            continue
        if not in_characters or line.lower().startswith("randomselect"):
            continue
        entries.append(line.split(",", 1)[0].strip().replace("\\", "/"))
    return entries


def missing_def_references(def_path: Path) -> list[dict[str, str]]:
    if not def_path.is_file():
        return [
            {
                "field": "def",
                "reference": def_path.name,
                "detail": "Character .def file is missing",
            }
        ]

    failures: list[dict[str, str]] = []
    in_files_section = False
    for raw_line in def_path.read_text(encoding="utf-8", errors="ignore").splitlines():
        line = raw_line.strip()
        if not line or line.startswith(";"):
            continue
        if line.startswith("[") and line.endswith("]"):
            in_files_section = line.lower() == "[files]"
            continue
        if not in_files_section or "=" not in line:
            continue

        key, value = [part.strip() for part in line.split("=", 1)]
        key = key.lower()
        if key not in DEF_FILE_CHECK_KEYS:
            continue

        value = value.split(";", 1)[0].strip().strip('"')
        if not value or Path(value).name.lower() in SHARED_DEF_REFERENCES:
            continue

        referenced_path = def_path.parent / value.replace("\\", "/")
        if not referenced_path.exists():
            failures.append(
                {
                    "field": key,
                    "reference": value.replace("\\", "/"),
                    "detail": "Referenced file is missing relative to the character .def",
                }
            )

    return failures
