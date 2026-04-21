"""
MUGEN X ENGINE - FIX BROKEN CHARACTER PATHS
Fixes characters with incorrect 'files/' paths
"""
from pathlib import Path
import re
import shutil

BASE_DIR = Path(r"d:\MUGENAI\MUGENX")
CHARS_DIR = BASE_DIR / "chars"

def fix_character_def(def_path):
    """Fix broken paths in .def file"""
    try:
        with open(def_path, 'r', errors='ignore') as f:
            content = f.read()
        
        original = content
        
        # Fix: files/vegeta.sff -> vegeta.sff
        content = re.sub(r'files/(\w+\.(sff|snd|air|act|cmd|cns))', r'\1', content, flags=re.IGNORECASE)
        
        if content != original:
            # Backup
            shutil.copy(def_path, str(def_path) + '.bak')
            # Write fixed version
            with open(def_path, 'w') as f:
                f.write(content)
            return True
    except:
        pass
    return False

def scan_and_fix():
    print("🔧 Fixing Broken Character Paths...")
    fixed_count = 0
    
    for char_dir in CHARS_DIR.iterdir():
        if char_dir.is_dir():
            # Find .def files
            for def_file in char_dir.glob("*.def"):
                if fix_character_def(def_file):
                    fixed_count += 1
                    print(f"  ✅ Fixed: {char_dir.name}/{def_file.name}")
    
    print(f"\n✅ Scan Complete!")
    print(f"   Fixed {fixed_count} characters")

if __name__ == "__main__":
    scan_and_fix()
