"""
MUGEN X ENGINE - Remove Broken Characters Script
Removes characters with missing States folders or broken file references
"""

import os
import re

def check_character_files(char_path, base_dir):
    """Check if a character's required files exist"""
    full_path = os.path.join(base_dir, 'chars', char_path)
    
    # Get the .def file
    if not os.path.exists(full_path):
        return False, f"Character path doesn't exist: {full_path}"
    
    # Read the .def file
    try:
        with open(full_path, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
    except:
        return False, "Cannot read .def file"
    
    # Check for States/ references
    if 'States/' in content or 'states/' in content:
        # Check if States folder exists
        char_dir = os.path.dirname(full_path)
        states_dir = os.path.join(char_dir, 'States')
        states_dir2 = os.path.join(char_dir, 'states')
        
        if not (os.path.isdir(states_dir) or os.path.isdir(states_dir2)):
            return False, "References States/ folder which doesn't exist"
    
    return True, "OK"

def main():
    base_dir = os.path.dirname(__file__)
    select_def = os.path.join(base_dir, 'data', 'select.def')
    
    print("=" * 70)
    print("MUGEN X ENGINE - Remove Broken Characters")
    print("=" * 70)
    print()
    
    # Read select.def
    with open(select_def, 'r', encoding='utf-8') as f:
        lines = f.readlines()
    
    # Process lines
    new_lines = []
    removed = []
    in_characters = False
    
    for line in lines:
        stripped = line.strip()
        
        # Check if we're in [Characters] section
        if stripped == '[Characters]':
            in_characters = True
            new_lines.append(line)
            continue
        
        # Check if we've left [Characters] section
        if stripped.startswith('[') and stripped != '[Characters]':
            in_characters = False
        
        # Process character lines
        if in_characters and ',' in line and not stripped.startswith(';'):
            # Extract character path
            char_path = line.split(',')[0].strip()
            
            # Check if character is valid
            is_valid, reason = check_character_files(char_path, base_dir)
            
            if not is_valid:
                removed.append((char_path, reason))
                print(f"❌ Removing: {char_path}")
                print(f"   Reason: {reason}")
                continue  # Skip this line (remove it)
        
        new_lines.append(line)
    
    print()
    print(f"Total characters removed: {len(removed)}")
    print()
    
    if removed:
        # Backup
        backup_path = select_def + '.before_cleanup'
        with open(backup_path, 'w', encoding='utf-8') as f:
            f.writelines(lines)
        print(f"✅ Backup created: {backup_path}")
        
        # Write cleaned file
        with open(select_def, 'w', encoding='utf-8') as f:
            f.writelines(new_lines)
        
        print(f"✅ Cleaned select.def written")
        print()
        print("Removed characters:")
        for char, reason in removed[:20]:  # Show first 20
            print(f"  - {char}: {reason}")
        if len(removed) > 20:
            print(f"  ... and {len(removed) - 20} more")
    else:
        print("✅ No broken characters found!")
    
    print()
    print("=" * 70)

if __name__ == '__main__':
    main()
