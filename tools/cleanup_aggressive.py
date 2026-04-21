"""
MUGEN X ENGINE - AGGRESSIVE ROSTER CLEANUP
Removes ALL broken character entries from select.def
"""
from pathlib import Path

BASE_DIR = Path(r"d:\MUGENAI\MUGENX")
SELECT_DEF = BASE_DIR / "data" / "select.def"
CHARS_DIR = BASE_DIR / "chars"

# List of known broken characters
BROKEN_CHARS = [
    "Vegeta_X",
    "Zangief_X",
    "Hakumen_X",
    "characters that need to be created"
]

def cleanup_select_def():
    print("🧹 Aggressive Roster Cleanup...")
    
    with open(SELECT_DEF, 'r', errors='ignore') as f:
        lines = f.readlines()
    
    new_lines = []
    removed = 0
    
    for line in lines:
        skip = False
        for broken_name in BROKEN_CHARS:
            if broken_name in line and not line.strip().startswith(';'):
                print(f"  ❌ Removing: {line.strip()}")
                removed += 1
                skip = True
                break
        
        if not skip:
            new_lines.append(line)
    
    with open(SELECT_DEF, 'w') as f:
        f.writelines(new_lines)
    
    print(f"\n✅ Cleanup Complete!")
    print(f"   Removed {removed} broken entries")

if __name__ == "__main__":
    cleanup_select_def()
