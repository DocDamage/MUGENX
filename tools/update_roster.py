"""
MUGEN X ENGINE - Roster Updater
Scans the 'chars' folder and adds ALL found characters to the game.
Run this after manually extracting characters!
"""
import os
from pathlib import Path

BASE_DIR = Path(r"d:\MUGENAI\MUGENX")
CHARS_DIR = BASE_DIR / "chars"
SELECT_DEF = BASE_DIR / "data" / "select.def"

def update_roster():
    print("=" * 80)
    print("📝 MUGEN ROSTER UPDATER")
    print("=" * 80)
    
    if not CHARS_DIR.exists():
        print(f"❌ Error: Chars directory not found: {CHARS_DIR}")
        return

    valid_chars = []
    print(f"Scanning {CHARS_DIR}...")

    # Scan chars directory
    for item in CHARS_DIR.iterdir():
        if item.is_dir() and item.name != "zipped_characters":
            # 1. Look for [FolderName].def (Standard)
            def_file = item / f"{item.name}.def"
            if def_file.exists():
                valid_chars.append(f"{item.name}/{item.name}.def")
                print(f"  ✅ Found: {item.name}")
            else:
                # 2. Fallback: Look for ANY .def file
                defs = list(item.glob("*.def"))
                if defs:
                    # Use the first one found
                    valid_chars.append(f"{item.name}/{defs[0].name}")
                    print(f"  ✅ Found: {item.name} (using {defs[0].name})")

    if not valid_chars:
        print("\n⚠️  No characters found! Make sure you have extracted folders in 'chars/'")
        return

    # Generate select.def content
    content = """; MUGEN X ENGINE - Auto-Generated Roster
[Options]
arcade.maxmatches = 6,1,1,0,0,0,0,0,0,0
team.maxmatches = 4,1,1,0,0,0,0,0,0,0

[Characters]
"""
    
    for char_def in valid_chars:
        content += f"{char_def}, stages/training.def\n"

    content += "\nRandomSelect, random\n"
    content += "\n[ExtraStages]\nstages/training.def\n"

    # Write file
    with open(SELECT_DEF, 'w') as f:
        f.write(content)

    print("-" * 80)
    print(f"🎉 Success! Added {len(valid_chars)} characters to the roster.")
    print(f"📍 Updated: {SELECT_DEF}")
    print("=" * 80)

if __name__ == "__main__":
    update_roster()
