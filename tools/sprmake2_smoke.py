"""Exercise the external Elecbyte sprmake2 compiler with a generated PNG.

This is intentionally tiny and dependency-free. It proves that the configured
compiler is executable and that MUGEN X's generated SFF definition is accepted.
"""

from __future__ import annotations

import struct
import tempfile
import zlib
from pathlib import Path

from common.asset_compile import compile_sff, discover_sprmake2


def _chunk(name: bytes, payload: bytes) -> bytes:
    body = name + payload
    return struct.pack(">I", len(payload)) + body + struct.pack(">I", zlib.crc32(body) & 0xFFFFFFFF)


def write_rgb_png(path: Path, width: int = 2, height: int = 2) -> None:
    # RGB8 PNG with two scanlines. No Pillow dependency is required for CI.
    rows = []
    pixels = [
        (255, 0, 255), (0, 255, 255),
        (255, 255, 0), (255, 255, 255),
    ]
    for y in range(height):
        row = bytearray([0])
        for x in range(width):
            row.extend(pixels[(y * width + x) % len(pixels)])
        rows.append(bytes(row))
    raw = b"".join(rows)
    png = (
        b"\x89PNG\r\n\x1a\n"
        + _chunk(b"IHDR", struct.pack(">IIBBBBB", width, height, 8, 2, 0, 0, 0))
        + _chunk(b"IDAT", zlib.compress(raw, level=9))
        + _chunk(b"IEND", b"")
    )
    path.write_bytes(png)


def main() -> int:
    compiler = discover_sprmake2()
    if compiler is None:
        print("[FAIL] sprmake2 is not configured")
        return 2

    with tempfile.TemporaryDirectory(prefix="mugenx-sff-") as temp_dir:
        root = Path(temp_dir)
        write_rgb_png(root / "0-0.png")
        output = compile_sff(root, "selfcheck.sff", compiler=compiler, axis_mode="origin")
        raw = output.read_bytes()
        if len(raw) < 64:
            print(f"[FAIL] SFF output is unexpectedly small: {len(raw)} bytes")
            return 3
        if raw[:12] != b"ElecbyteSpr\x00":
            print(f"[FAIL] unexpected SFF signature: {raw[:12]!r}")
            return 4

        print(f"[OK] sprmake2: {compiler}")
        print(f"[OK] generated {output.name}: {len(raw)} bytes, signature={raw[:12]!r}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
