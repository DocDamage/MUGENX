"""
MUGEN X ENGINE - CHARACTER LAB BACKEND
Handles in-game Fusion and Smart Cloning.
"""
import os
import shutil
import random
import re
import sys
from pathlib import Path

# Reuse logic from our smart cloner
import smart_clone_aggressive as cloner
import update_roster_recursive as roster

BASE_DIR = Path(r"d:\MUGENAI\MUGENX")
CHARS_DIR = BASE_DIR / "chars"

def find_char_path(name):
    """Finds a character folder by name (fuzzy match)."""
    name_lower = name.lower().replace('"', '').strip()
    
    # 1. Try exact folder match
    if (CHARS_DIR / name_lower).exists():
        return CHARS_DIR / name_lower
        
    # 2. Search all defs
    for root, dirs, files in os.walk(CHARS_DIR):
        if "zipped_characters" in root: continue
        for f in files:
            if f.endswith(".def"):
                # Check filename
                if f[:-4].lower() == name_lower:
                    return Path(root)
                # Check displayname inside def (slower but accurate)
                # Skipping for speed, relying on filename match
    return None

def create_fusion(name_a, name_b):
    print(f"🧪 ATTEMPTING FUSION: {name_a} + {name_b}")
    
    path_a = find_char_path(name_a)
    path_b = find_char_path(name_b)
    
    if not path_a or not path_b:
        print("❌ Error: Could not find one of the parents.")
        return False
        
    # New Name
    new_name = f"{name_a}_{name_b}_Fusion"
    target_dir = CHARS_DIR / new_name
    
    if target_dir.exists():
        print(f"⚠️  Fusion {new_name} already exists!")
        return True # Treat as success so we can play it
        
    print(f"  ✨ Creating {new_name}...")
    target_dir.mkdir(parents=True)
    
    # 1. Copy Parent A (Dominant Visuals)
    # We use Parent A as the base
    for item in path_a.iterdir():
        if item.is_file():
            shutil.copy(item, target_dir / item.name)
            
    # 2. Rename DEF
    old_def = target_dir / f"{path_a.name}.def"
    # Fallback if def name doesn't match folder
    if not old_def.exists():
        defs = list(target_dir.glob("*.def"))
        if defs: old_def = defs[0]
        
    new_def = target_dir / f"{new_name}.def"
    if old_def.exists():
        old_def.rename(new_def)
        
    # 3. Modify Stats (Average A and B)
    # We need to read CNS from B to get stats
    stats_b = {"life": 1000, "attack": 100, "defence": 100, "power": 3000}
    
    # (Simple parsing of B's stats would go here, for now we assume standard or random boost)
    # Let's just apply a "Fusion Boost" (1.2x stats)
    
    # 4. Apply Fusion Mods (Visual + Stats)
    cloner.apply_mods(new_def, list(target_dir.glob("*.cns"))[0], "Boss") # Fusions are Boss-tier
    
    # 5. Update Name
    with open(new_def, 'r', errors='ignore') as f:
        content = f.read()
    content = re.sub(r"displayname\s*=\s*\".*?\"", f"displayname = \"{new_name}\"", content)
    content = re.sub(r"name\s*=\s*\".*?\"", f"name = \"{new_name}\"", content)
    with open(new_def, 'w') as f:
        f.write(content)
        
    print("✅ Fusion Created Successfully!")
    return True

def create_variant(name, variant_type):
    print(f"🧬 CLONING VARIANT: {name} ({variant_type})")
    
    path = find_char_path(name)
    if not path:
        print("❌ Error: Character not found.")
        return False
        
    new_name = f"{name}_{variant_type}"
    target_dir = CHARS_DIR / new_name
    
    if target_dir.exists():
        print("⚠️  Variant already exists.")
        return True
        
    target_dir.mkdir(parents=True)
    
    # Copy Files
    for item in path.iterdir():
        if item.is_file():
            shutil.copy(item, target_dir / item.name)
            
    # Rename DEF
    old_def = list(target_dir.glob("*.def"))[0]
    new_def = target_dir / f"{new_name}.def"
    old_def.rename(new_def)
    
    # Apply Mods
    cloner.apply_mods(new_def, list(target_dir.glob("*.cns"))[0], variant_type)
    
    # Update Name
    with open(new_def, 'r', errors='ignore') as f:
        content = f.read()
    content = re.sub(r"displayname\s*=\s*\".*?\"", f"displayname = \"{new_name}\"", content)
    content = re.sub(r"name\s*=\s*\".*?\"", f"name = \"{new_name}\"", content)
    with open(new_def, 'w') as f:
        f.write(content)
        
    print(f"✅ Created {variant_type} Variant!")
    return True

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: character_lab.py [fuse|clone] [args...]")
    else:
        cmd = sys.argv[1]
        if cmd == "fuse":
            if create_fusion(sys.argv[2], sys.argv[3]):
                roster.update_roster()
        elif cmd == "clone":
            if create_variant(sys.argv[2], sys.argv[3]):
                roster.update_roster()
