"""Bounded Windows smoke test for the real Ikemen executable.

The normal TEST_LAUNCH --wait path is appropriate for a human workstation but a
successful game process does not exit on its own. This CI gate therefore starts
the exact configured engine, requires it to remain healthy for a minimum window,
then terminates it and inspects both Ikemen.log and captured console output.
"""

from __future__ import annotations

import argparse
import os
import re
import subprocess
import sys
import time
from pathlib import Path

from common.paths import PROJECT_ROOT, repo_path
from validate_system import analyze_log

FATAL_CONSOLE_RE = re.compile(
    r"(?:^|\n)\s*(?:panic:|fatal(?:\s+error)?:|stack traceback:)|runtime bootstrap failure",
    re.IGNORECASE,
)


def tail(path: Path, limit: int = 5000) -> str:
    if not path.is_file():
        return ""
    data = path.read_bytes()
    return data[-limit:].decode("utf-8", errors="replace")


def terminate_tree(process: subprocess.Popen[bytes]) -> None:
    if process.poll() is not None:
        return
    if os.name == "nt":
        subprocess.run(
            ["taskkill", "/PID", str(process.pid), "/T", "/F"],
            stdout=subprocess.DEVNULL,
            stderr=subprocess.DEVNULL,
            check=False,
        )
    else:
        process.terminate()
        try:
            process.wait(timeout=5)
        except subprocess.TimeoutExpired:
            process.kill()


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--seconds", type=float, default=15.0, help="Minimum healthy runtime window")
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    if args.seconds < 3:
        print("[FAIL] --seconds must be at least 3")
        return 2

    engine = repo_path("engine", "Ikemen_GO.exe")
    if not engine.is_file():
        print(f"[FAIL] engine executable missing: {engine}")
        return 3

    logs_dir = repo_path("logs")
    logs_dir.mkdir(parents=True, exist_ok=True)
    console_path = logs_dir / "ci_runtime_console.log"
    ikemen_log = repo_path("Ikemen.log")
    for path in (console_path, ikemen_log):
        try:
            path.unlink()
        except FileNotFoundError:
            pass

    env = os.environ.copy()
    # Avoid depending on an audio endpoint on hosted Windows runners.
    env.setdefault("SDL_AUDIODRIVER", "dummy")

    command = [str(engine), "-r", "."]
    print("[INFO] launching:", subprocess.list2cmdline(command))
    print(f"[INFO] required healthy window: {args.seconds:.1f}s")

    start = time.monotonic()
    with console_path.open("wb") as console:
        process = subprocess.Popen(
            command,
            cwd=PROJECT_ROOT,
            env=env,
            stdout=console,
            stderr=subprocess.STDOUT,
        )
        survived = False
        try:
            while True:
                code = process.poll()
                elapsed = time.monotonic() - start
                if code is not None:
                    print(f"[FAIL] Ikemen exited after {elapsed:.2f}s with code {code}")
                    break
                if elapsed >= args.seconds:
                    survived = True
                    print(f"[OK] Ikemen remained running for {elapsed:.2f}s")
                    break
                time.sleep(0.25)
        finally:
            terminate_tree(process)

    console_text = tail(console_path)
    log_text = tail(ikemen_log)

    if not survived:
        if console_text:
            print("--- console tail ---")
            print(console_text)
        if log_text:
            print("--- Ikemen.log tail ---")
            print(log_text)
        return 4

    fatal_console = FATAL_CONSOLE_RE.search(console_text)
    if fatal_console:
        print(f"[FAIL] fatal console pattern: {fatal_console.group(0).strip()}")
        print(console_text)
        return 5

    analysis = analyze_log(ikemen_log, from_offset=0)
    if analysis["status"] == "missing":
        print("[WARN] Ikemen.log was not created during the bounded run")
    elif analysis["error_count"]:
        print(f"[FAIL] Ikemen.log contains {analysis['error_count']} error-like line(s)")
        for match in analysis["matches"]:
            print(f"  line {match['line']}: {match['text']}")
        return 6
    else:
        print(f"[OK] Ikemen.log contains no validator-classified errors ({analysis['file_size']} bytes)")

    print(f"[OK] console captured at {console_path.relative_to(PROJECT_ROOT)}")
    print("[OK] real Ikemen startup smoke passed")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
