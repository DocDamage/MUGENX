"""Asset compilation helpers for generated MUGEN X content.

The project does not vendor Elecbyte's sprite compiler. `sprmake2` is discovered
from MUGENX_SPRMAKE2, common repo-local locations, or PATH. SND v1.01 is simple
enough to write directly, so numbered WAV sources are packed without a GUI tool.
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
SOUND_RE = re.compile(r"^(?P<group>-?\d+)-(?P<index>-?\d+)\.wav$", re.IGNORECASE)


@dataclass(frozen=True)
class SpriteSource:
    path: Path
    group: int
    index: int
    axis_x: int
    axis_y: int


@dataclass(frozen=True)
class SoundSource:
    path: Path
    group: int
    index: int


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


def collect_sound_sources(directory: Path) -> list[SoundSource]:
    sounds: list[SoundSource] = []
    for path in sorted(directory.glob("*.wav")):
        match = SOUND_RE.match(path.name)
        if not match:
            continue
        header = path.read_bytes()[:12]
        if len(header) < 12 or header[:4] != b"RIFF" or header[8:12] != b"WAVE":
            raise ValueError(f"Not a RIFF/WAVE source: {path}")
        sounds.append(
            SoundSource(
                path=path,
                group=int(match.group("group")),
                index=int(match.group("index")),
            )
        )
    return sorted(sounds, key=lambda item: (item.group, item.index, item.path.name.lower()))


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


def compile_snd(directory: Path, output_name: str) -> Path:
    """Pack `<group>-<index>.wav` sources into Elecbyte SND v1.01."""
    directory = directory.resolve()
    sources = collect_sound_sources(directory)
    if not sources:
        raise ValueError(f"No <group>-<index>.wav sounds found in {directory}")

    payloads = [(source, source.path.read_bytes()) for source in sources]
    output_path = directory / output_name
    first_offset = 512

    with output_path.open("wb") as handle:
        # Ikemen reads two uint16 version fields, then uint32 count/first offset.
        handle.write(b"ElecbyteSnd\x00")
        handle.write(struct.pack("<HHII", 1, 1, len(payloads), first_offset))
        handle.write(b"\x00" * (512 - handle.tell()))

        offset = first_offset
        for index, (source, wav_data) in enumerate(payloads):
            next_offset = 0
            if index + 1 < len(payloads):
                next_offset = offset + 16 + len(wav_data)
            handle.write(
                struct.pack(
                    "<IIii",
                    next_offset,
                    len(wav_data),
                    source.group,
                    source.index,
                )
            )
            handle.write(wav_data)
            offset = next_offset

    return output_path


def compile_status(directory: Path, output_name: str, *, axis_mode: str = "character") -> dict:
    compiler = discover_sprmake2()
    sources = collect_sprite_sources(directory, axis_mode=axis_mode)
    return {
        "project_root": str(PROJECT_ROOT),
        "compiler": str(compiler) if compiler else None,
        "source_count": len(sources),
        "sound_source_count": len(collect_sound_sources(directory)),
        "output": str(directory / output_name),
        "output_exists": (directory / output_name).is_file(),
        "axis_mode": axis_mode,
    }
