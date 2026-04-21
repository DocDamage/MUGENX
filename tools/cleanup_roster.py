"""
MUGEN X ENGINE - ROSTER CLEANUP
Removes broken characters from select.def
"""
from pathlib import Path
import re

BASE_DIR = Path(r"d:\MUGENAI\MUGENX")
SELECT_DEF = BASE_DIR / "data" / "select.def"
CHARS_DIR = BASE_DIR / "chars"

def is_character_valid(char_path):
    """Check if character has all required files"""
    char_dir = CHARS_DIR / char_path
    if not char_dir.exists():
        return False
    
    # Check for .def file
    def_files = list(char_dir.glob("*.def"))
    if not def_files:
        return False
    
    # Check first .def file for broken paths
    try:
        with open(def_files[0], 'r', errors='ignore') as f:
            content = f.read()
            # Check if it references files/ incorrectly
            if re.search(r'files/.*\.sff', content, re.IGNORECASE):
                # This is likely a broken relative path
                return False
    except:
        return False
    
    return True

def cleanup_roster():
    print("🧹 Cleaning Broken Characters from Roster...")
    
    if not SELECT_DEF.exists():
        print("❌ select.def not found!")
        return
    
    with open(SELECT_DEF, 'r', errors='ignore') as f:
        lines = f.readlines()
    
    new_lines = []
    removed_count = 0
    
    for line in lines:
        # Check if it's a character line
        if line.strip() and not line.strip().startswith(';') and ',' in line:
            # Extract character path
            parts = line.split(',')
            char_path = parts[0].strip()
            
            if char_path.startswith('chars/'):
                char_name = char_path.replace('chars/', '')
                
                if is_character_valid(char_name):
                    new_lines.append(line)
                else:
                    removed_count += 1
                    print(f"  ❌ Removed: {char_name}")
            else:
                new_lines.append(line)
        else:
            new_lines.append(line)
    
    # Write back
    with open(SELECT_DEF, 'w') as f:
        f.writelines(new_lines)
    
    print(f"\n✅ Cleanup Complete!")
    print(f"   Removed {removed_count} broken characters")
    print(f"   Roster is now clean and stable")

if __name__ == "__main__":
    cleanup_roster()
