"""High-signal content validation for the active MUGEN X roster and stages."""

from __future__ import annotations

import json
import re
from dataclasses import asdict, dataclass
from pathlib import Path

from common.def_references import active_roster_def_paths, missing_def_references
from common.paths import PROJECT_ROOT, repo_path

INT32_MIN = -(2**31)
INT32_MAX = 2**31 - 1
TEXT_SUFFIXES = {".def", ".cns", ".cmd", ".air", ".st", ".zss"}
CLAMP_KEYS = {"pausemovetime", "supermovetime", "projpriority", "time", "movetime"}
VELOCITY_KEYS = {"air.velocity", "ground.velocity", "guard.velocity"}
INTEGER_RE = re.compile(r"^[+-]?\d+$")
ASSIGNMENT_RE = re.compile(r"^(?P<prefix>\s*)(?P<key>[^;=]+?)\s*=\s*(?P<value>[^;]*)(?P<comment>\s*;.*)?$")


@dataclass
class Issue:
    severity: str
    code: str
    path: str
    line: int | None
    detail: str
    roster_entry: str | None = None


def rel(path: Path) -> str:
    try:
        return path.resolve().relative_to(PROJECT_ROOT.resolve()).as_posix()
    except ValueError:
        return path.as_posix()


def _read_lines(path: Path) -> list[str]:
    return path.read_text(encoding="utf-8", errors="ignore").splitlines()


def _resolve_reference(owner: Path, value: str) -> Path | None:
    value = value.strip().strip('"').replace("\\", "/")
    if not value:
        return None
    local = owner.parent / value
    if local.exists():
        return local
    rooted = repo_path(*value.split("/"))
    if rooted.exists():
        return rooted
    return local


def character_files(def_path: Path) -> list[Path]:
    files = [def_path]
    if not def_path.is_file():
        return files
    in_files = False
    for raw in _read_lines(def_path):
        line = raw.strip()
        if not line or line.startswith(";"):
            continue
        if line.startswith("[") and line.endswith("]"):
            in_files = line.lower() == "[files]"
            continue
        if not in_files or "=" not in line:
            continue
        _, value = [part.strip() for part in line.split("=", 1)]
        value = value.split(";", 1)[0].strip().strip('"')
        candidate = _resolve_reference(def_path, value)
        if candidate and candidate.suffix.lower() in TEXT_SUFFIXES and candidate.is_file():
            files.append(candidate)
    return list(dict.fromkeys(files))


def active_stage_paths(select_path: Path) -> list[str]:
    if not select_path.is_file():
        return []
    stages: list[str] = []
    section = ""
    for raw in _read_lines(select_path):
        line = raw.strip()
        if not line or line.startswith(";"):
            continue
        if line.startswith("[") and line.endswith("]"):
            section = line.lower()
            continue
        if section == "[characters]":
            for part in [piece.strip() for piece in line.split(",")[1:]]:
                clean = part.split(";", 1)[0].strip().replace("\\", "/")
                if clean.lower().endswith(".def") and "stage" in clean.lower():
                    stages.append(clean)
        elif section == "[extrastages]":
            clean = line.split(";", 1)[0].strip().replace("\\", "/")
            if clean.lower().endswith(".def"):
                stages.append(clean)
    return list(dict.fromkeys(stages))


def lint_text_file(path: Path, *, fix_overflow: bool = False) -> tuple[list[Issue], bool]:
    issues: list[Issue] = []
    lines = _read_lines(path)
    changed = False
    output = list(lines)

    for index, raw in enumerate(lines, start=1):
        stripped = raw.strip()
        # MUGEN permits inline comments immediately after a valid section header,
        # e.g. `[State -2, foo]; Japanese note`. Validate only the structural
        # portion before `;`; otherwise every such legal header is a false positive.
        structural = stripped.split(";", 1)[0].strip()
        if structural.startswith("[") and not structural.endswith("]"):
            issues.append(Issue("error", "malformed-section", rel(path), index, "Section header is not closed"))

        match = ASSIGNMENT_RE.match(raw)
        if not match:
            continue
        key = match.group("key").strip().lower()
        value = match.group("value").strip()

        if key in CLAMP_KEYS and INTEGER_RE.match(value):
            number = int(value)
            if number < INT32_MIN or number > INT32_MAX:
                issues.append(
                    Issue(
                        "error",
                        "int32-overflow",
                        rel(path),
                        index,
                        f"{key}={number} exceeds signed int32 range",
                    )
                )
                if fix_overflow:
                    clamped = max(INT32_MIN, min(INT32_MAX, number))
                    comment = match.group("comment") or ""
                    output[index - 1] = f"{match.group('prefix')}{match.group('key').strip()} = {clamped}{comment}"
                    changed = True

        if key in VELOCITY_KEYS:
            bare = value.lower()
            if re.fullmatch(r"[a-z_][a-z0-9_]*", bare) and bare not in {"none"}:
                issues.append(
                    Issue(
                        "error",
                        "malformed-velocity",
                        rel(path),
                        index,
                        f"{key} has invalid bare token: {value}",
                    )
                )

    if changed:
        path.write_text("\n".join(output) + "\n", encoding="utf-8")
    return issues, changed


def lint_stage(stage_path: Path) -> list[Issue]:
    issues: list[Issue] = []
    if not stage_path.is_file():
        return [Issue("error", "missing-stage", rel(stage_path), None, "Stage .def is missing")]

    in_bgdef = False
    for line_no, raw in enumerate(_read_lines(stage_path), start=1):
        line = raw.strip()
        if not line or line.startswith(";"):
            continue
        if line.startswith("[") and line.endswith("]"):
            in_bgdef = line.lower() == "[bgdef]"
            continue
        if in_bgdef and "=" in line:
            key, value = [part.strip() for part in line.split("=", 1)]
            if key.lower() == "spr" and value:
                target = _resolve_reference(stage_path, value)
                if not target or not target.is_file():
                    issues.append(
                        Issue("error", "missing-stage-sff", rel(stage_path), line_no, f"Missing stage SFF: {value}")
                    )
                break
    text_issues, _ = lint_text_file(stage_path)
    issues.extend(text_issues)
    return issues


def run_lint(*, fix_overflow: bool = False, write_reports: bool = True) -> dict:
    select_path = repo_path("data", "select.def")
    issues: list[Issue] = []
    scanned: set[Path] = set()
    fixed_files: list[str] = []
    quarantined: set[str] = set()

    for roster_entry in active_roster_def_paths(select_path):
        def_path = repo_path("chars", *roster_entry.split("/"))
        for failure in missing_def_references(def_path):
            issue = Issue(
                "error",
                "missing-character-reference",
                rel(def_path),
                None,
                f"{failure['field']} -> {failure['reference']}: {failure['detail']}",
                roster_entry,
            )
            issues.append(issue)
            quarantined.add(roster_entry)

        for path in character_files(def_path):
            if path in scanned or not path.is_file():
                continue
            scanned.add(path)
            file_issues, changed = lint_text_file(path, fix_overflow=fix_overflow)
            for issue in file_issues:
                issue.roster_entry = roster_entry
                if issue.severity == "error":
                    quarantined.add(roster_entry)
            issues.extend(file_issues)
            if changed:
                fixed_files.append(rel(path))

    stages = active_stage_paths(select_path)
    for stage_ref in stages:
        stage_path = repo_path(*stage_ref.split("/"))
        issues.extend(lint_stage(stage_path))

    errors = [issue for issue in issues if issue.severity == "error"]
    warnings = [issue for issue in issues if issue.severity == "warning"]
    report = {
        "status": "ok" if not errors else "failed",
        "active_roster_entries": len(active_roster_def_paths(select_path)),
        "active_stage_entries": len(stages),
        "scanned_text_files": len(scanned),
        "error_count": len(errors),
        "warning_count": len(warnings),
        "fixed_files": fixed_files,
        "quarantined_roster_entries": sorted(quarantined),
        "issues": [asdict(issue) for issue in issues],
    }

    if write_reports:
        reports = repo_path("reports")
        reports.mkdir(parents=True, exist_ok=True)
        (reports / "content_lint.json").write_text(json.dumps(report, indent=2), encoding="utf-8")
        quarantine = {
            "generated_by": "tools/common/content_lint.py",
            "entries": sorted(quarantined),
            "reason": "Active roster entries with high-signal content errors",
        }
        (reports / "content_quarantine.json").write_text(json.dumps(quarantine, indent=2), encoding="utf-8")

    return report
