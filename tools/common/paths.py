"""Canonical project path resolution for MUGEN X tooling."""

from __future__ import annotations

from pathlib import Path


REPO_MARKERS = ("engine", "data", "modules", "external", "tools")


def find_project_root(start: Path | None = None) -> Path:
    """Resolve the project root by walking parent directories."""
    candidate = (start or Path(__file__)).resolve()
    if candidate.is_file():
        candidate = candidate.parent

    for directory in (candidate, *candidate.parents):
        if all((directory / marker).exists() for marker in REPO_MARKERS):
            return directory

    raise RuntimeError(
        f"Unable to locate project root from {candidate}. Expected markers: "
        + ", ".join(REPO_MARKERS)
    )


PROJECT_ROOT = find_project_root()
TOOLS_ROOT = PROJECT_ROOT / "tools"
ENGINE_ROOT = PROJECT_ROOT / "engine"
DATA_ROOT = PROJECT_ROOT / "data"
MODULES_ROOT = PROJECT_ROOT / "modules"
EXTERNAL_ROOT = PROJECT_ROOT / "external"


def repo_path(*parts: str) -> Path:
    """Build a path relative to the canonical project root."""
    return PROJECT_ROOT.joinpath(*parts)
