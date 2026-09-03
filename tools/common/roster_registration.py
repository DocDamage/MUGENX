"""Controlled registration of generated characters and stages in select.def."""

from __future__ import annotations

import os
import tempfile
from pathlib import Path

from common.paths import repo_path


def _normalized(value: str) -> str:
    return value.strip().replace("\\", "/").lower()


def _atomic_write(path: Path, text: str) -> None:
    fd, temp_name = tempfile.mkstemp(prefix=path.name + ".", suffix=".tmp", dir=path.parent)
    try:
        with os.fdopen(fd, "w", encoding="utf-8", newline="\n") as handle:
            handle.write(text)
        os.replace(temp_name, path)
    finally:
        if os.path.exists(temp_name):
            os.unlink(temp_name)


def _section_bounds(lines: list[str], section_name: str) -> tuple[int, int] | None:
    target = f"[{section_name}]".lower()
    start = None
    for index, raw in enumerate(lines):
        stripped = raw.strip().lower()
        if start is None:
            if stripped == target:
                start = index + 1
            continue
        if stripped.startswith("[") and stripped.endswith("]"):
            return start, index
    if start is not None:
        return start, len(lines)
    return None


def register_character(
    def_reference: str,
    *,
    stage: str = "stages/training.def",
    select_path: Path | None = None,
) -> bool:
    select_path = select_path or repo_path("data", "select.def")
    lines = select_path.read_text(encoding="utf-8", errors="ignore").splitlines()
    bounds = _section_bounds(lines, "Characters")
    if bounds is None:
        raise ValueError(f"[Characters] section not found in {select_path}")

    normalized = _normalized(def_reference)
    for raw in lines[bounds[0] : bounds[1]]:
        clean = raw.split(";", 1)[0].split(",", 1)[0].strip()
        if _normalized(clean) == normalized:
            return False

    entry = def_reference.replace("\\", "/")
    if stage:
        normalized_stage = stage.replace("\\", "/")
        entry += f", {normalized_stage}"
    lines.insert(bounds[1], entry)
    _atomic_write(select_path, "\n".join(lines) + "\n")
    return True


def register_stage(stage_reference: str, *, select_path: Path | None = None) -> bool:
    select_path = select_path or repo_path("data", "select.def")
    lines = select_path.read_text(encoding="utf-8", errors="ignore").splitlines()
    bounds = _section_bounds(lines, "ExtraStages")
    if bounds is None:
        # Add a canonical section at EOF rather than overloading character lines.
        if lines and lines[-1].strip():
            lines.append("")
        lines.extend(["[ExtraStages]", stage_reference.replace("\\", "/")])
        _atomic_write(select_path, "\n".join(lines) + "\n")
        return True

    normalized = _normalized(stage_reference)
    for raw in lines[bounds[0] : bounds[1]]:
        clean = raw.split(";", 1)[0].strip()
        if _normalized(clean) == normalized:
            return False

    lines.insert(bounds[1], stage_reference.replace("\\", "/"))
    _atomic_write(select_path, "\n".join(lines) + "\n")
    return True
