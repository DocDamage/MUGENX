"""
MUGEN X ENGINE - Stage Randomizer Script
Randomizes stage assignments for all characters in select.def
"""

import random
import os
from pathlib import Path

def get_all_stages(stages_dir):
    """Get all .def files from the stages directory"""
    stages = []
    for root, dirs, files in os.walk(stages_dir):
        for file in files:
            if file.endswith('.def'):
                # Get relative path from stages directory
                rel_path = os.path.relpath(os.path.join(root, file), stages_dir)
                # Convert backslashes to forward slashes for MUGEN
                stage_path = 'stages/' + rel_path.replace('\\', '/')
                stages.append(stage_path)
    return stages

def randomize_stages(select_def_path, stages_dir):
    """Randomize stage assignments in select.def"""
    
    # Get all available stages
    all_stages = get_all_stages(stages_dir)
    
    if not all_stages:
        print("ERROR: No stages found!")
        return False
    
    print(f"Found {len(all_stages)} stages")
    print(f"Sample stages: {all_stages[:5]}")
    
    # Read select.def
    with open(select_def_path, 'r', encoding='utf-8') as f:
        lines = f.readlines()
    
    # Process lines
    new_lines = []
    in_characters_section = False
    chars_updated = 0
    
    for line in lines:
        stripped = line.strip()
        
        # Check if we're in the [Characters] section
        if stripped == '[Characters]':
            in_characters_section = True
            new_lines.append(line)
            continue
        
        # Check if we've left the [Characters] section
        if stripped.startswith('[') and stripped != '[Characters]':
            in_characters_section = False
        
        # Process character lines
        if in_characters_section and ',' in line and not stripped.startswith(';'):
            # Split character and stage
            parts = line.split(',', 1)
            if len(parts) == 2:
                char_def = parts[0].strip()
                # Randomly select a stage
                random_stage = random.choice(all_stages)
                new_lines.append(f"{char_def}, {random_stage}\n")
                chars_updated += 1
            else:
                new_lines.append(line)
        else:
            new_lines.append(line)
    
    # Backup original file
    backup_path = select_def_path + '.backup'
    if not os.path.exists(backup_path):
        with open(select_def_path, 'r', encoding='utf-8') as f:
            with open(backup_path, 'w', encoding='utf-8') as bf:
                bf.write(f.read())
        print(f"Backup created: {backup_path}")
    
    # Write new file
    with open(select_def_path, 'w', encoding='utf-8') as f:
        f.writelines(new_lines)
    
    print(f"\n✅ Successfully randomized {chars_updated} character stages!")
    return True

def main():
    # Paths
    script_dir = Path(__file__).parent
    select_def = script_dir / 'data' / 'select.def'
    stages_dir = script_dir / 'stages'
    
    print("=" * 60)
    print("MUGEN X ENGINE - Stage Randomizer")
    print("=" * 60)
    print(f"Select.def: {select_def}")
    print(f"Stages dir: {stages_dir}")
    print()
    
    if not select_def.exists():
        print(f"ERROR: select.def not found at {select_def}")
        return
    
    if not stages_dir.exists():
        print(f"ERROR: stages directory not found at {stages_dir}")
        return
    
    randomize_stages(str(select_def), str(stages_dir))
    
    print("\n" + "=" * 60)
    print("Done! Restart MUGEN X to see the changes.")
    print("=" * 60)

if __name__ == '__main__':
    main()
