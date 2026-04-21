"""
MUGEN X ENGINE - Folder Fixer
Moves characters from nested 'chars/chars' to the main 'chars' folder.
"""
import os
import shutil
from pathlib import Path

BASE_DIR = Path(r"d:\MUGENAI\MUGENX")
CHARS_DIR = BASE_DIR / "chars"
NESTED_CHARS_DIR = CHARS_DIR / "chars"

def fix_folders():
    print("=" * 80)
    print("🔧 MUGEN FOLDER FIXER")
    print("=" * 80)

    if not NESTED_CHARS_DIR.exists():
        print(f"⚠️  Nested folder not found: {NESTED_CHARS_DIR}")
        return

    print(f"Found nested folder: {NESTED_CHARS_DIR}")
    print("Moving characters to main folder...")
    print("-" * 80)

    moved_count = 0
    
    # Iterate through items in the nested folder
    for item in NESTED_CHARS_DIR.iterdir():
        target_path = CHARS_DIR / item.name
        
        if target_path.exists():
            print(f"  ⚠️  Skipping {item.name}: Already exists in main folder")
        else:
            try:
                shutil.move(str(item), str(target_path))
                # print(f"  ✅ Moved: {item.name}") # Commented out to avoid spamming output
                moved_count += 1
            except Exception as e:
                print(f"  ❌ Error moving {item.name}: {e}")

    print("-" * 80)
    print(f"🎉 Moved {moved_count} characters to the correct location!")
    
    # Try to remove the now-empty nested folder
    try:
        NESTED_CHARS_DIR.rmdir()
        print("🗑️  Removed empty nested 'chars' folder.")
    except:
        print("ℹ️  Nested folder not empty, kept it.")

if __name__ == "__main__":
    fix_folders()
