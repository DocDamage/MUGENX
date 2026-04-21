"""
MUGEN X ENGINE - Smart Roster Generator (v2.0)
Adds 'category' tags and 'order' priorities based on folder structure.
"""
import os
from pathlib import Path

BASE_DIR = Path(r"d:\MUGENAI\MUGENX")
CHARS_DIR = BASE_DIR / "chars"
SELECT_DEF = BASE_DIR / "data" / "select.def"

def generate_smart_roster():
    print("=" * 80)
    print("📂 SMART ROSTER GENERATOR")
    print("=" * 80)
    
    if not CHARS_DIR.exists(): return

    categories = {} # Store chars by category
    
    print("Scanning and Categorizing...")
    
    for root, dirs, files in os.walk(CHARS_DIR):
        root_path = Path(root)
        if "zipped_characters" in root_path.parts: continue
        
        for file in files:
            if file.endswith(".def"):
                # Determine Category from parent folder
                # e.g. chars/anime/Goku -> category = "anime"
                try:
                    rel_path = root_path.relative_to(CHARS_DIR)
                    parts = rel_path.parts
                    
                    if len(parts) > 0:
                        category = parts[0].upper() # Top level folder is category
                    else:
                        category = "UNCATEGORIZED"
                        
                    if category not in categories:
                        categories[category] = []
                        
                    full_def_path = rel_path / file
                    path_str = str(full_def_path).replace("\\", "/")
                    
                    # Add entry with category param
                    # Format: char_name, stage, order=1, music=..., exclude=0
                    entry = f"{path_str}, stages/training.def, order=1, param:category={category}"
                    categories[category].append(entry)
                    
                except ValueError:
                    continue

    # Write select.def
    content = "; MUGEN X ENGINE - Smart Roster\n"
    content += "[Options]\narcade.maxmatches = 6,1,1,0,0,0,0,0,0,0\nteam.maxmatches = 4,1,1,0,0,0,0,0,0,0\n\n"
    content += "[Characters]\n"
    
    total_chars = 0
    for cat, chars in sorted(categories.items()):
        content += f"\n; --- {cat} ---\n"
        for char_entry in sorted(chars):
            content += char_entry + "\n"
        total_chars += len(chars)
        
    content += "\nRandomSelect, random\n"
    content += "\n[ExtraStages]\nstages/training.def\n"
    
    with open(SELECT_DEF, 'w') as f:
        f.write(content)
        
    print(f"✅ Categorized {total_chars} characters into {len(categories)} groups.")
    print("Categories found:", ", ".join(categories.keys()))

if __name__ == "__main__":
    generate_smart_roster()
