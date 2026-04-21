"""
MUGEN X ENGINE - Add Missing NeoGeo Characters
Scans neogeo folder and adds any missing characters to select.def
"""

import os
from pathlib import Path
import random

def get_all_stages(stages_dir):
    """Get all available stage paths"""
    stages = []
    for root, dirs, files in os.walk(stages_dir):
        for file in files:
            if file.endswith('.def'):
                rel_path = os.path.relpath(os.path.join(root, file), stages_dir)
                stage_path = 'stages/' + rel_path.replace('\\', '/')
                stages.append(stage_path)
    return stages

def get_neogeo_characters(neogeo_dir):
    """Get all neogeo character paths"""
    chars = []
    
    for item in os.listdir(neogeo_dir):
        char_dir = os.path.join(neogeo_dir, item)
        if not os.path.isdir(char_dir):
            continue
            
        # Check for .def files
        def_files = [f for f in os.listdir(char_dir) if f.lower().endswith('.def')]
        
        # Check for 0627PATCH folder
        patch_dir = os.path.join(char_dir, '0627PATCH')
        if os.path.isdir(patch_dir):
            patch_defs = [f for f in os.listdir(patch_dir) if f.lower().endswith('.def')]
            if patch_defs:
                chars.append(f"neogeo/{item}/0627PATCH/{patch_defs[0]}")
                continue
        
        # Use main folder def
        if def_files:
            chars.append(f"neogeo/{item}/{def_files[0]}")
    
    return chars

def get_current_characters(select_def):
    """Get currently listed characters"""
    current = set()
    with open(select_def, 'r', encoding='utf-8') as f:
        for line in f:
            line = line.strip()
            if ',' in line and not line.startswith(';') and not line.startswith('['):
                char_path = line.split(',')[0].strip()
                current.add(char_path)
    return current

def main():
    script_dir = Path(__file__).parent
    neogeo_dir = script_dir / 'chars' / 'neogeo'
    select_def = script_dir / 'data' / 'select.def'
    stages_dir = script_dir / 'stages'
    
    print("=" * 60)
    print("MUGEN X ENGINE - Add Missing NeoGeo Characters")
    print("=" * 60)
    print()
    
    # Get lists
    all_stages = get_all_stages(str(stages_dir))
    neogeo_chars = get_neogeo_characters(str(neogeo_dir))
    current_chars = get_current_characters(str(select_def))
    
    # Find missing
    missing = []
    for char in neogeo_chars:
        if char not in current_chars:
            missing.append(char)
    
    print(f"NeoGeo Characters Found: {len(neogeo_chars)}")
    print(f"Currently in select.def: {len([c for c in current_chars if 'neogeo/' in c])}")
    print(f"Missing from select.def: {len(missing)}")
    print()
    
    if not missing:
        print("✅ All NeoGeo characters are already in select.def!")
        return
    
    print("Missing characters:")
    for char in missing[:10]:  # Show first 10
        print(f"  - {char}")
    if len(missing) > 10:
        print(f"  ... and {len(missing) - 10} more")
    print()
    
    # Add them
    with open(select_def, 'r', encoding='utf-8') as f:
        lines = f.readlines()
    
    # Find end of [Characters] section
    insert_pos = -1
    for i, line in enumerate(lines):
        if line.strip().startswith('[Characters]'):
            # Find next section or end of file
            for j in range(i + 1, len(lines)):
                if lines[j].strip().startswith('[') and lines[j].strip() != '[Characters]':
                    insert_pos = j
                    break
            if insert_pos == -1:
                insert_pos = len(lines)
            break
    
    if insert_pos == -1:
        print("ERROR: Could not find [Characters] section!")
        return
    
    # Add missing characters before the next section
    new_lines = []
    for char in missing:
        stage = random.choice(all_stages)
        new_lines.append(f"{char}, {stage}\r\n")
    
    # Insert new lines
    lines = lines[:insert_pos] + new_lines + lines[insert_pos:]
    
    # Write back
    with open(select_def, 'w', encoding='utf-8') as f:
        f.writelines(lines)
    
    print(f"✅ Added {len(missing)} missing NeoGeo characters!")
    print(f"   Total characters now: {len(current_chars) + len(missing)}")
    print()
    print("Restart MUGEN X to see all characters!")
    print("=" * 60)

if __name__ == '__main__':
    main()
