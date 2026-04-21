"""
MUGEN X ENGINE - DEV BRIDGE
Central command center for the In-Game Dashboard.
Handles all operations and writes status to dev_log.txt for the game to read.
"""
import os
import sys
import time
import json
from pathlib import Path

# Import our existing tools
import install_zipped_chars
import update_roster_recursive
import fix_folders

BASE_DIR = Path(r"d:\MUGENAI\MUGENX")
LOG_FILE = BASE_DIR / "dev_log.txt"
STATS_FILE = BASE_DIR / "dev_stats.json"

def log(message, status="INFO"):
    """Write to log file for the game to read"""
    timestamp = time.strftime("%H:%M:%S")
    line = f"[{timestamp}] {message}"
    print(line)
    try:
        with open(LOG_FILE, 'a') as f:
            f.write(line + "\n")
    except:
        pass

def clear_log():
    try:
        with open(LOG_FILE, 'w') as f:
            f.write("--- MUGEN X DEV CONSOLE READY ---\n")
    except:
        pass

def update_stats():
    """Count assets and save to JSON"""
    chars_dir = BASE_DIR / "chars"
    stages_dir = BASE_DIR / "stages"
    
    char_count = 0
    if chars_dir.exists():
        # Fast recursive count
        for root, dirs, files in os.walk(chars_dir):
            if "zipped_characters" in root: continue
            for f in files:
                if f.endswith(".def"): char_count += 1
                
    stage_count = 0
    if stages_dir.exists():
        stage_count = len(list(stages_dir.glob("*.def"))) + len(list(stages_dir.glob("*/*.def")))

    stats = {
        "chars": char_count,
        "stages": stage_count,
        "last_update": time.strftime("%Y-%m-%d %H:%M")
    }
    
    with open(STATS_FILE, 'w') as f:
        json.dump(stats, f)
    
    log(f"Stats updated: {char_count} Chars, {stage_count} Stages")

def run_maintenance():
    log("🚀 STARTING ONE-CLICK MAINTENANCE...", "START")
    
    log("1. Installing Zips...")
    try:
        install_zipped_chars.install_characters()
        log("✅ Zips Processed")
    except Exception as e:
        log(f"❌ Zip Error: {e}")

    log("2. Fixing Folder Structure...")
    try:
        fix_folders.fix_folders()
        log("✅ Folders Fixed")
    except Exception as e:
        log(f"❌ Folder Error: {e}")

    log("3. Updating Roster...")
    try:
        update_roster_recursive.update_roster()
        log("✅ Roster Updated")
    except Exception as e:
        log(f"❌ Roster Error: {e}")
        
    update_stats()
    log("✨ MAINTENANCE COMPLETE!", "SUCCESS")

def main():
    if len(sys.argv) < 2:
        print("Usage: dev_bridge.py [command]")
        return

    command = sys.argv[1]
    
    if command == "init":
        clear_log()
        update_stats()
    elif command == "maintenance":
        run_maintenance()
    elif command == "install_zips":
        log("📦 Installing Zips...")
        install_zipped_chars.install_characters()
        update_stats()
        log("✅ Install Complete")
    elif command == "refresh_roster":
        log("📝 Refreshing Roster...")
        update_roster_recursive.update_roster()
        update_stats()
        log("✅ Roster Refreshed")
    elif command == "fix_folders":
        log("🔧 Fixing Folders...")
        fix_folders.fix_folders()
        update_stats()
        log("✅ Folders Fixed")
    else:
        log(f"Unknown command: {command}")

if __name__ == "__main__":
    main()
