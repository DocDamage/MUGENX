"""
MUGEN X ENGINE - Bulk Character Installer
Installs characters from ZIP files and updates the roster.
"""
import os
import zipfile
import shutil
from pathlib import Path

# Configuration
BASE_DIR = Path(r"d:\MUGENAI\MUGENX")
ZIP_SOURCE_DIR = BASE_DIR / "chars" / "zipped_characters"
CHARS_DIR = BASE_DIR / "chars"
SELECT_DEF = BASE_DIR / "data" / "select.def"

def install_characters():
    print("=" * 80)
    print("📦 MUGEN BULK CHARACTER INSTALLER")
    print("=" * 80)

    if not ZIP_SOURCE_DIR.exists():
        print(f"❌ Error: Source directory not found: {ZIP_SOURCE_DIR}")
        return

    # 1. Get list of zip files
    zip_files = list(ZIP_SOURCE_DIR.glob("*.zip"))
    if not zip_files:
        print(f"⚠️  No .zip files found in {ZIP_SOURCE_DIR}")
        return

    print(f"found {len(zip_files)} zip files. Starting installation...")
    print("-" * 80)

    installed_count = 0

    for zip_path in zip_files:
        char_name_guess = zip_path.stem # e.g., "Ryu" from "Ryu.zip"
        print(f"Processing: {zip_path.name}...")

        try:
            with zipfile.ZipFile(zip_path, 'r') as zf:
                # Check structure: does it have a single top-level folder?
                # We look at the first part of the path for every file
                top_level_folders = set()
                files_at_root = False
                
                for name in zf.namelist():
                    parts = Path(name).parts
                    if len(parts) > 1:
                        top_level_folders.add(parts[0])
                    else:
                        # It's a file at the root (or empty folder entry)
                        if not name.endswith('/'): 
                            files_at_root = True

                # DECISION LOGIC:
                # Case A: Everything is inside one folder (e.g. "Ryu/Ryu.def")
                if len(top_level_folders) == 1 and not files_at_root:
                    folder_name = list(top_level_folders)[0]
                    target_path = CHARS_DIR / folder_name
                    
                    # Check if already exists
                    if target_path.exists():
                        print(f"  ⚠️  Skipping: Folder '{folder_name}' already exists in chars/")
                    else:
                        zf.extractall(CHARS_DIR)
                        print(f"  ✅ Extracted folder: {folder_name}")
                        installed_count += 1

                # Case B: Files are at root (e.g. "Ryu.def", "Ryu.sff")
                # We must create a folder for it
                else:
                    target_path = CHARS_DIR / char_name_guess
                    if target_path.exists():
                        print(f"  ⚠️  Skipping: Folder '{char_name_guess}' already exists in chars/")
                    else:
                        target_path.mkdir(parents=True, exist_ok=True)
                        zf.extractall(target_path)
                        print(f"  ✅ Extracted to new folder: {char_name_guess}")
                        installed_count += 1

        except zipfile.BadZipFile:
            print(f"  ❌ Error: Bad zip file")
        except Exception as e:
            print(f"  ❌ Error: {e}")

    print("-" * 80)
    print(f"📦 Extraction complete. {installed_count} new characters installed.")
    
    # 2. Update Roster
    update_roster()

def update_roster():
    print("\n📝 Updating Roster (select.def)...")
    
    valid_chars = []
    
    # Scan chars directory for valid characters
    # A valid character folder must contain a .def file
    for item in CHARS_DIR.iterdir():
        if item.is_dir() and item.name != "zipped_characters": # Skip the zip source folder
            # Look for .def file with same name as folder (standard)
            def_file = item / f"{item.name}.def"
            if def_file.exists():
                valid_chars.append(f"{item.name}/{item.name}.def")
            else:
                # Fallback: look for ANY .def file
                defs = list(item.glob("*.def"))
                if defs:
                    valid_chars.append(f"{item.name}/{defs[0].name}")

    if not valid_chars:
        print("⚠️  No valid characters found in chars/ directory.")
        return

    # Read existing select.def to preserve options
    existing_lines = []
    if SELECT_DEF.exists():
        with open(SELECT_DEF, 'r') as f:
            existing_lines = f.readlines()

    # Construct new content
    new_content = []
    in_chars_section = False
    chars_added = False

    # Header and Options
    header = """; MUGEN X ENGINE - Auto-Updated Roster
[Options]
arcade.maxmatches = 6,1,1,0,0,0,0,0,0,0
team.maxmatches = 4,1,1,0,0,0,0,0,0,0

[Characters]
"""
    new_content.append(header)

    # Add all found characters
    for char_def in valid_chars:
        # Add default stage assignment
        new_content.append(f"{char_def}, stages/training.def\n")

    # Add Random Select
    new_content.append("\nRandomSelect, random\n")

    # Add ExtraStages section if it exists in original, or default
    new_content.append("\n[ExtraStages]\nstages/training.def\n")

    # Write file
    with open(SELECT_DEF, 'w') as f:
        f.writelines(new_content)

    print(f"✅ Roster updated with {len(valid_chars)} characters!")
    print(f"📍 File: {SELECT_DEF}")

if __name__ == "__main__":
    install_characters()
