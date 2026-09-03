"""Active stage integrity helpers and safe select.def pruning."""

from __future__ import annotations

import os
import tempfile
from pathlib import Path

from common.content_lint import active_stage_paths, lint_stage
from common.paths import repo_path

FALLBACK_STAGE = "stages/training.def"
MISSING_STAGE_CODES = {"missing-stage", "missing-stage-sff"}


def normalize_ref(value: str) -> str:
    return value.strip().strip('"').replace("\\", "/").lower()


def invalid_active_stages(select_path: Path | None = None) -> dict[str, list[dict]]:
    select_path = select_path or repo_path("data", "select.def")
    invalid: dict[str, list[dict]] = {}
    for stage_ref in active_stage_paths(select_path):
        stage_path = repo_path(*stage_ref.replace("\\", "/").split("/"))
        issues = lint_stage(stage_path)
        blockers = [
            {
                "code": issue.code,
                "path": issue.path,
                "line": issue.line,
                "detail": issue.detail,
            }
            for issue in issues
            if issue.code in MISSING_STAGE_CODES
        ]
        if blockers:
            invalid[normalize_ref(stage_ref)] = blockers
    return invalid


def _atomic_write(path: Path, text: str) -> None:
    fd, temp_name = tempfile.mkstemp(prefix=path.name + ".", suffix=".tmp", dir=path.parent)
    try:
        with os.fdopen(fd, "w", encoding="utf-8", newline="\n") as handle:
            handle.write(text)
        os.replace(temp_name, path)
    finally:
        if os.path.exists(temp_name):
            os.unlink(temp_name)


def prune_invalid_active_stages(
    *,
    select_path: Path | None = None,
    write: bool = False,
    fallback_stage: str = FALLBACK_STAGE,
) -> dict:
    """Replace broken character stage assignments and remove broken ExtraStages.

    The stage files themselves are deliberately left untouched. This changes only
    the active selection surface so known-broken stage assets cannot crash a match.
    """

    select_path = select_path or repo_path("data", "select.def")
    invalid = invalid_active_stages(select_path)
    invalid_keys = set(invalid)
    lines = select_path.read_text(encoding="utf-8", errors="ignore").splitlines()
    output: list[str] = []
    section = ""
    replacements = 0
    removals = 0

    for raw in lines:
        stripped = raw.strip()
        structural = stripped.split(";", 1)[0].strip()
        if structural.startswith("[") and structural.endswith("]"):
            section = structural.lower()
            output.append(raw)
            continue

        if not structural or structural.startswith(";"):
            output.append(raw)
            continue

        if section == "[characters]" and not structural.lower().startswith("randomselect"):
            body, sep, comment = raw.partition(";")
            parts = body.split(",")
            changed = False
            for index in range(1, len(parts)):
                clean = parts[index].strip().strip('"').replace("\\", "/")
                key = normalize_ref(clean)
                if key in invalid_keys:
                    leading = parts[index][: len(parts[index]) - len(parts[index].lstrip())]
                    parts[index] = leading + fallback_stage
                    replacements += 1
                    changed = True
            if changed:
                rebuilt = ",".join(parts)
                if sep:
                    rebuilt += ";" + comment
                output.append(rebuilt)
            else:
                output.append(raw)
            continue

        if section == "[extrastages]":
            stage_ref = structural.replace("\\", "/")
            if normalize_ref(stage_ref) in invalid_keys:
                removals += 1
                continue

        output.append(raw)

    changed = output != lines
    if write and changed:
        _atomic_write(select_path, "\n".join(output) + "\n")

    return {
        "status": "changed" if changed else "clean",
        "write": write,
        "invalid_stage_count": len(invalid),
        "character_stage_replacements": replacements,
        "extra_stage_removals": removals,
        "fallback_stage": fallback_stage,
        "invalid_stages": invalid,
    }
