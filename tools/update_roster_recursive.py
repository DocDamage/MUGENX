"""
MUGEN X ENGINE - Recursive Roster Updater
Scans 'chars' and all subdirectories for character DEF files.
"""
import os
from pathlib import Path

BASE_DIR = Path(r"d:\MUGENAI\MUGENX")
CHARS_DIR = BASE_DIR / "chars"
SELECT_DEF = BASE_DIR / "data" / "select.def"

def update_roster():
    print("=" * 80)
    print("📝 MUGEN RECURSIVE ROSTER UPDATER")
    print("=" * 80)
    
    if not CHARS_DIR.exists():
        print(f"❌ Error: Chars directory not found: {CHARS_DIR}")
        return

    valid_chars = []
    print(f"Scanning {CHARS_DIR} recursively...")
    print("(This might take a moment if you have thousands of characters)")

    # Walk through all directories
    for root, dirs, files in os.walk(CHARS_DIR):
        root_path = Path(root)
        
        # Skip the zipped_characters folder
        if "zipped_characters" in root_path.parts:
            continue
            
        # Look for .def files
        for file in files:
            if file.endswith(".def"):
                # We found a def file!
                # Check if it's a character def (usually matches folder name, but we'll accept any)
                # To be safe, we usually want the def file to match the parent folder name
                # OR be the only def file in that folder.
                
                # Construct relative path for select.def
                # It needs to be relative to the MUGEN root, usually starting with "chars/..."
                # But Ikemen/Mugen expects: "kfm/kfm.def" (relative to chars/)
                # OR absolute path.
                
                # Let's make it relative to CHARS_DIR
                try:
                    rel_path = root_path.relative_to(CHARS_DIR)
                    full_def_path = rel_path / file
                    
                    # Store as "folder/file.def" (standard MUGEN format)
                    # Note: If it's in a sub-sub folder, it might be "category/char/char.def"
                    # MUGEN supports this!
                    valid_chars.append(str(full_def_path).replace("\\", "/"))
                except ValueError:
                    continue

    if not valid_chars:
        print("\n⚠️  No characters found!")
        return

    print(f"\n✅ Found {len(valid_chars)} characters!")

    # Generate select.def content
    content = """; MUGEN X ENGINE - Auto-Generated Roster
[Options]
arcade.maxmatches = 6,1,1,0,0,0,0,0,0,0
team.maxmatches = 4,1,1,0,0,0,0,0,0,0

[Characters]
"""
    
    # Sort for neatness
    valid_chars.sort()

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
