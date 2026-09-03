"""Apply the active-content quarantine to data/select.def without deleting assets.

Policy:
- roster entries with remaining high-signal character errors are commented out;
- active stage references whose DEF/SFF is missing are replaced with training.def;
- broken [ExtraStages] entries are commented out;
- source character/stage assets are never deleted.

Run the targeted int32 fixer before this command so mechanically repairable
characters are not unnecessarily quarantined.
"""

from __future__ import annotations

import os
import tempfile
from pathlib import Path

from common.content_lint import run_lint
from common.paths import repo_path

SAFE_STAGE = "stages/training.def"
MARKER = "; QUARANTINED phase-1-5: "


def norm(value: str) -> str:
    return value.strip().strip('"').replace("\\", "/").lower()


def atomic_write(path: Path, text: str) -> None:
    fd, temp_name = tempfile.mkstemp(prefix=path.name + ".", suffix=".tmp", dir=path.parent)
    try:
        with os.fdopen(fd, "w", encoding="utf-8", newline="\n") as handle:
            handle.write(text)
        os.replace(temp_name, path)
    finally:
        if os.path.exists(temp_name):
            os.unlink(temp_name)


def main() -> int:
    report = run_lint(fix_overflow=False, write_reports=True)
    bad_chars = {norm(entry) for entry in report["quarantined_roster_entries"]}
    bad_stages = {
        norm(issue["path"])
        for issue in report["issues"]
        if issue["severity"] == "error"
        and issue["code"] in {"missing-stage", "missing-stage-sff"}
        and str(issue["path"]).lower().endswith(".def")
    }

    select_path = repo_path("data", "select.def")
    lines = select_path.read_text(encoding="utf-8", errors="ignore").splitlines()
    out: list[str] = []
    section = ""
    quarantined_chars = 0
    replaced_stages = 0
    quarantined_extra_stages = 0

    for raw in lines:
        stripped = raw.strip()
        if stripped.startswith("[") and stripped.endswith("]"):
            section = stripped.lower()
            out.append(raw)
            continue
        if not stripped or stripped.startswith(";"):
            out.append(raw)
            continue

        if section == "[characters]":
            parts = [part.strip() for part in raw.split(",")]
            char_ref = norm(parts[0]) if parts else ""
            if char_ref in bad_chars:
                out.append(MARKER + raw)
                quarantined_chars += 1
                continue

            changed = False
            for index in range(1, len(parts)):
                token = parts[index].split(";", 1)[0].strip()
                if norm(token) in bad_stages:
                    suffix = ""
                    if ";" in parts[index]:
                        suffix = ";" + parts[index].split(";", 1)[1]
                    parts[index] = SAFE_STAGE + suffix
                    replaced_stages += 1
                    changed = True
            out.append(", ".join(parts) if changed else raw)
            continue

        if section == "[extrastages]":
            clean = raw.split(";", 1)[0].strip()
            if norm(clean) in bad_stages:
                out.append(MARKER + raw)
                quarantined_extra_stages += 1
                continue

        out.append(raw)

    new_text = "\n".join(out) + "\n"
    old_text = select_path.read_text(encoding="utf-8", errors="ignore")
    if new_text != old_text:
        atomic_write(select_path, new_text)

    print(f"Character entries quarantined: {quarantined_chars}")
    print(f"Broken character stage assignments replaced: {replaced_stages}")
    print(f"Broken ExtraStages entries quarantined: {quarantined_extra_stages}")
    print(f"Bad character set: {len(bad_chars)}")
    print(f"Bad stage set: {len(bad_stages)}")

    post = run_lint(fix_overflow=False, write_reports=True)
    print(f"Post-quarantine errors: {post['error_count']}")
    if post["error_count"]:
        for issue in post["issues"][:20]:
            if issue["severity"] == "error":
                print(f"  {issue['code']} {issue['path']}:{issue['line'] or ''} {issue['detail']}")
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
