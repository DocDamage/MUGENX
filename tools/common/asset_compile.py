"""Asset compilation helpers for generated MUGEN X content.

The project does not vendor Elecbyte's compiler. `sprmake2` is discovered from
MUGENX_SPRMAKE2, common repo-local locations, or PATH. Generated source PNGs
must use `<group>-<index>.png` names so SFF IDs are deterministic.
"""

from __future__ import annotations

import os
import re
import shutil
import struct
import subprocess
from dataclasses import dataclass
from pathlib import Path

from common.paths import PROJECT_ROOT, repo_path

SPRITE_RE = re.compile(r"^(?P<group>-?\d+)-(?P<index>-?\d+)\.png$", re.IGNORECASE)


@dataclass(frozen=True)
class SpriteSource:
    path: Path
    group: int
    index: int
    axis_x: int
    axis_y: int


def _png_size(path: Path) -> tuple[int, int]:
    """Read PNG dimensions without an image-library dependency."""
    with path.open("rb") as handle:
        signature = handle.read(24)
    if len(signature) < 24 or signature[:8] != b"\x89PNG\r\n\x1a\n":
        raise ValueError(f"Not a PNG file: {path}")
    width, height = struct.unpack(">II", signature[16:24])
    return width, height


def discover_sprmake2() -> Path | None:
    candidates: list[Path] = []
    explicit = os.getenv("MUGENX_SPRMAKE2")
    if explicit:
        candidates.append(Path(explicit).expanduser())
    candidates.extend(
        [
            repo_path("tools", "sprmake2.exe"),
            repo_path("tools", "sprmake2"),
            repo_path("engine", "sprmake2.exe"),
            repo_path("engine", "sprmake2"),
            repo_path("sprmake2.exe"),
            repo_path("sprmake2"),
        ]
    )
    path_hit = shutil.which("sprmake2") or shutil.which("sprmake2.exe")
    if path_hit:
        candidates.append(Path(path_hit))
    for candidate in candidates:
        if candidate.is_file():
            return candidate.resolve()
    return None


def collect_sprite_sources(directory: Path, *, axis_mode: str = "character") -> list[SpriteSource]:
    if axis_mode not in {"character", "origin"}:
        raise ValueError(f"Unsupported axis mode: {axis_mode}")
    sprites: list[SpriteSource] = []
    for path in sorted(directory.glob("*.png")):
        match = SPRITE_RE.match(path.name)
        if not match:
            continue
        width, height = _png_size(path)
        if axis_mode == "origin":
            axis_x, axis_y = 0, 0
        else:
            axis_x, axis_y = max(0, width // 2), max(0, height - 1)
        sprites.append(
            SpriteSource(
                path=path,
                group=int(match.group("group")),
                index=int(match.group("index")),
                axis_x=axis_x,
                axis_y=axis_y,
            )
        )
    return sorted(sprites, key=lambda item: (item.group, item.index, item.path.name.lower()))


def write_sff_definition(directory: Path, output_name: str, *, axis_mode: str = "character") -> Path:
    sprites = collect_sprite_sources(directory, axis_mode=axis_mode)
    if not sprites:
        raise ValueError(f"No <group>-<index>.png sprites found in {directory}")

    definition = directory / "sprites-sff.def"
    lines = [
        "[Output]",
        f"filename = {output_name}",
        "",
        "[Option]",
        "sprite.compress.5 = lz5",
        "sprite.compress.8 = rle8",
        "sprite.compress.24 = none",
        "sprite.autocrop = 1",
        "sprite.detectduplicates = 1",
        "pal.detectduplicates = 1",
        "pal.discardduplicates = 1",
        "sprite.usepal = -1",
        "",
        "[Sprite]",
    ]
    for sprite in sprites:
        lines.append(
            f"{sprite.group}, {sprite.index}, {sprite.path.name}, "
            f"{sprite.axis_x}, {sprite.axis_y}"
        )
    definition.write_text("\n".join(lines) + "\n", encoding="utf-8")
    return definition


def compile_sff(
    directory: Path,
    output_name: str,
    *,
    compiler: Path | None = None,
    axis_mode: str = "character",
) -> Path:
    directory = directory.resolve()
    compiler = compiler or discover_sprmake2()
    if compiler is None:
        raise FileNotFoundError(
            "sprmake2 was not found. Set MUGENX_SPRMAKE2, place sprmake2.exe "
            "under tools/ or engine/, or add it to PATH."
        )

    definition = write_sff_definition(directory, output_name, axis_mode=axis_mode)
    output_path = directory / output_name
    completed = subprocess.run(
        [str(compiler), "-o", output_name, definition.name],
        cwd=directory,
        text=True,
        capture_output=True,
        check=False,
    )
    if completed.returncode != 0 or not output_path.is_file():
        diagnostic = "\n".join(part for part in [completed.stdout, completed.stderr] if part).strip()
        raise RuntimeError(
            f"sprmake2 failed with exit code {completed.returncode}: {diagnostic or 'no diagnostic output'}"
        )
    return output_path


def compile_status(directory: Path, output_name: str, *, axis_mode: str = "character") -> dict:
    compiler = discover_sprmake2()
    sources = collect_sprite_sources(directory, axis_mode=axis_mode)
    return {
        "project_root": str(PROJECT_ROOT),
        "compiler": str(compiler) if compiler else None,
        "source_count": len(sources),
        "output": str(directory / output_name),
        "output_exists": (directory / output_name).is_file(),
        "axis_mode": axis_mode,
    }
