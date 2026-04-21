"""
MUGEN X ENGINE - SMART CLONE & MOD SYSTEM (v2.0 - AGGRESSIVE MODE)
Guarantees every placeholder becomes a playable fighter.
"""
import os
import shutil
import random
import re
from pathlib import Path

# Configuration
BASE_DIR = Path(r"d:\MUGENAI\MUGENX")
CHARS_DIR = BASE_DIR / "chars"
SOURCE_LIST_DIR = BASE_DIR / "chars" / "characters that need to be created"

def load_existing_library():
    """Scans for all VALID, existing characters to use as templates."""
    library = {} # { "goku": path_to_def }
    all_chars = [] # List of all valid def paths for random fallback
    
    print("📚 Indexing existing library...")
    for root, dirs, files in os.walk(CHARS_DIR):
        if "zipped_characters" in root: continue
        if "characters that need to be created" in root: continue
        
        for f in files:
            if f.endswith(".def"):
                key = f[:-4].lower()
                full_path = Path(root) / f
                library[key] = full_path
                all_chars.append(full_path)
                
    print(f"✅ Indexed {len(library)} source characters.")
    return library, all_chars

def find_best_match(name, library, all_chars):
    """Finds the best existing character to clone."""
    name_lower = name.lower()
    
    # 1. Exact match
    if name_lower in library: return library[name_lower]
    
    # 2. Substring match
    sorted_keys = sorted(library.keys(), key=len, reverse=True)
    for key in sorted_keys:
        if key in name_lower:
            return library[key]
            
    # 3. Fallback: Try to find "Ryu" or "KFM" specifically
    if "ryu" in library: return library["ryu"]
    if "kfm" in library: return library["kfm"]
    if "kungfum" in library: return library["kungfum"]
    
    # 4. Ultimate Fallback: Pick a random character from library
    if all_chars:
        return random.choice(all_chars)
        
    return None

def apply_mods(def_file, cns_file, variant_type):
    """Edits DEF and CNS files to apply color and stat mods."""
    try:
        # Color Mod
        with open(def_file, 'r', errors='ignore') as f:
            content = f.read()
        pals = list(range(1, 13))
        random.shuffle(pals)
        pal_str = ",".join(map(str, pals))
        content = re.sub(r"pal\.defaults\s*=\s*[\d,]+", f"pal.defaults = {pal_str}", content)
        with open(def_file, 'w') as f:
            f.write(content)

        # Flair Mod
        with open(cns_file, 'r', errors='ignore') as f:
            cns_content = f.read()
            
        def mod_stat(text, key, multiplier):
            pattern = f"({key}\s*=\s*)(\d+)"
            match = re.search(pattern, text, re.IGNORECASE)
            if match:
                val = int(match.group(2))
                new_val = int(val * multiplier)
                return text.replace(match.group(0), f"{key} = {new_val}")
            return text

        if variant_type == "Turbo":
            cns_content = mod_stat(cns_content, "walk.fwd", 1.5)
            cns_content = mod_stat(cns_content, "run.fwd", 1.5)
            cns_content = mod_stat(cns_content, "attack", 0.9)
        elif variant_type == "Tank":
            cns_content = mod_stat(cns_content, "life", 1.5)
            cns_content = mod_stat(cns_content, "defence", 1.3)
            cns_content = mod_stat(cns_content, "run.fwd", 0.8)
        elif variant_type == "Power":
            cns_content = mod_stat(cns_content, "attack", 1.4)
            cns_content = mod_stat(cns_content, "life", 0.8)
        elif variant_type == "Boss":
            cns_content = mod_stat(cns_content, "life", 2.0)
            cns_content = mod_stat(cns_content, "attack", 1.5)
            cns_content = mod_stat(cns_content, "power", 3000)

        with open(cns_file, 'w') as f:
            f.write(cns_content)
            
    except Exception as e:
        print(f"    ⚠️ Mod failed: {e}")

def smart_clone():
    print("=" * 80)
    print("🧬 MUGEN X SMART CLONER (AGGRESSIVE MODE)")
    print("=" * 80)
    
    library, all_chars = load_existing_library()
    
    if not all_chars:
        print("❌ CRITICAL: No existing characters found to clone from!")
        print("   Please install at least ONE character (like Ryu or KFM) first.")
        return

    if not SOURCE_LIST_DIR.exists():
        print("❌ Source list directory missing.")
        return

    targets = [f.name for f in SOURCE_LIST_DIR.iterdir() if f.is_dir()]
    print(f"🎯 Found {len(targets)} targets to upgrade.")
    print("-" * 80)
    
    success_count = 0
    
    for char_name in targets:
        target_dir = CHARS_DIR / char_name
        
        # Find donor
        donor_def_path = find_best_match(char_name, library, all_chars)
        donor_dir = donor_def_path.parent
        
        print(f"Processing {char_name}...")
        print(f"  ↳ Cloning: {donor_def_path.name}")
        
        try:
            # 1. Clear target dir
            if target_dir.exists():
                for item in target_dir.iterdir():
                    if item.is_file(): item.unlink()
            else:
                target_dir.mkdir(parents=True)
            
            # 2. Copy all files from donor
            for item in donor_dir.iterdir():
                if item.is_file():
                    shutil.copy(item, target_dir / item.name)
            
            # 3. Rename DEF
            donor_def_name = donor_def_path.name
            if (target_dir / donor_def_name).exists():
                (target_dir / donor_def_name).rename(target_dir / f"{char_name}.def")
            
            # 4. Update Display Name
            new_def = target_dir / f"{char_name}.def"
            with open(new_def, 'r', errors='ignore') as f:
                content = f.read()
            content = re.sub(r"displayname\s*=\s*\".*?\"", f"displayname = \"{char_name}\"", content)
            content = re.sub(r"name\s*=\s*\".*?\"", f"name = \"{char_name}\"", content)
            with open(new_def, 'w') as f:
                f.write(content)
                
            # 5. Apply Mods
            variant = "Turbo"
            if "boss" in char_name.lower(): variant = "Boss"
            elif "evil" in char_name.lower(): variant = "Power"
            elif "heavy" in char_name.lower(): variant = "Tank"
            
            cns_files = list(target_dir.glob("*.cns"))
            if cns_files:
                apply_mods(new_def, cns_files[0], variant)
            
            success_count += 1
            
        except Exception as e:
            print(f"  ❌ Error: {e}")

    print("-" * 80)
    print(f"🎉 Upgraded {success_count} characters!")

if __name__ == "__main__":
    smart_clone()
