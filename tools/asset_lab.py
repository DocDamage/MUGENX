"""
MUGEN X ENGINE - ASSET LAB BACKEND
Handles generation and assignment of Stages, Weapons, Finishers, and Move Mods.
"""
import os
import shutil
import json
import random
import re
import sys
from pathlib import Path

# Configuration
BASE_DIR = Path(r"d:\MUGENAI\MUGENX")
STAGES_DIR = BASE_DIR / "stages"
DATA_DIR = BASE_DIR / "data"
CUSTOM_DB = DATA_DIR / "customization.json"

# Ensure DB exists
if not CUSTOM_DB.exists():
    with open(CUSTOM_DB, 'w') as f:
        json.dump({"weapons": {}, "finishers": {}, "mods": {}}, f)

def load_db():
    with open(CUSTOM_DB, 'r') as f:
        return json.load(f)

def save_db(data):
    with open(CUSTOM_DB, 'w') as f:
        json.dump(data, f, indent=2)

# =============================================================================
# STAGE LAB
# =============================================================================
def remix_stage(stage_name, variant):
    print(f"🏟️  REMIXING STAGE: {stage_name} ({variant})")
    
    # Find stage def
    stage_def = None
    for root, dirs, files in os.walk(STAGES_DIR):
        for f in files:
            if f.lower() == f"{stage_name.lower()}.def":
                stage_def = Path(root) / f
                break
        if stage_def: break
        
    if not stage_def:
        print("❌ Stage not found.")
        return False

    new_name = f"{stage_name}_{variant}"
    target_dir = STAGES_DIR / new_name
    
    if target_dir.exists():
        print("⚠️  Remix already exists.")
        return True
        
    target_dir.mkdir(parents=True)
    
    # Copy all files (SFF, MP3, etc)
    src_dir = stage_def.parent
    for item in src_dir.iterdir():
        if item.is_file():
            shutil.copy(item, target_dir / item.name)
            
    # Rename DEF
    old_def = target_dir / stage_def.name
    new_def = target_dir / f"{new_name}.def"
    old_def.rename(new_def)
    
    # Modify DEF based on variant
    with open(new_def, 'r', errors='ignore') as f:
        content = f.read()
        
    # Update Name
    content = re.sub(r"displayname\s*=\s*\".*?\"", f"displayname = \"{new_name}\"", content)
    content = re.sub(r"name\s*=\s*\".*?\"", f"name = \"{new_name}\"", content)
    
    if variant == "Night":
        # Darker shadow, maybe different music if we had a library
        content = re.sub(r"shadow\.intensity\s*=\s*\d+", "shadow.intensity = 180", content)
        content = re.sub(r"shadow\.color\s*=\s*.*", "shadow.color = 0,0,50", content) # Blue tint
    elif variant == "Boss":
        # Zoom out, epic tension
        content = re.sub(r"boundhigh\s*=\s*-?\d+", "boundhigh = -50", content) # Higher ceiling
        content = re.sub(r"verticalfollow\s*=\s*[\d\.]+", "verticalfollow = 0.1", content) # Slow cam
    elif variant == "Turbo":
        # Fast music (pitch up not possible in def, but we can change tension)
        content = re.sub(r"tension\s*=\s*\d+", "tension = 100", content) # Fast camera
        
    with open(new_def, 'w') as f:
        f.write(content)
        
    print(f"✅ Created {variant} Stage Remix!")
    return True

# =============================================================================
# GEAR LAB (Weapons / Finishers)
# =============================================================================
def equip_item(char_name, category, item_id):
    print(f"⚔️  EQUIPPING: {char_name} -> {item_id} ({category})")
    db = load_db()
    
    if category not in db: db[category] = {}
    db[category][char_name] = item_id
    
    save_db(db)
    print("✅ Saved to Database!")
    return True

# =============================================================================
# MOVE LAB (Mods)
# =============================================================================
def apply_move_mod(char_name, mod_type):
    print(f"💪 APPLYING MOD: {char_name} -> {mod_type}")
    db = load_db()
    
    if "mods" not in db: db["mods"] = {}
    if char_name not in db["mods"]: db["mods"][char_name] = []
    
    if mod_type not in db["mods"][char_name]:
        db["mods"][char_name].append(mod_type)
        
    save_db(db)
    print("✅ Mod Active!")
    return True

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: asset_lab.py [stage|equip|mod] [args...]")
    else:
        cmd = sys.argv[1]
        if cmd == "stage":
            remix_stage(sys.argv[2], sys.argv[3])
            # We should update roster to include new stage, but stages list is usually manual
            # For now, we assume user adds it or we have a stage scanner
        elif cmd == "equip":
            equip_item(sys.argv[2], sys.argv[3], sys.argv[4])
        elif cmd == "mod":
            apply_move_mod(sys.argv[2], sys.argv[3])
