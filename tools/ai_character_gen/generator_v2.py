"""Compatibility entrypoint for the canonical MUGEN X character generator.

Historically this file contained a second partially mocked generator. Keeping a
single implementation prevents the two pipelines from producing incompatible
characters.
"""

from __future__ import annotations

from generator import main


if __name__ == "__main__":
    raise SystemExit(main())
