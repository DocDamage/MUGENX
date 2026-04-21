"""
MUGEN X ENGINE - SMART CLONE & MOD SYSTEM
Turns placeholder characters into unique variants of existing fighters.
"""
import os
import shutil
import random
import re
from pathlib import Path

# Configuration
BASE_DIR = Path(r"d:\MUGENAI\MUGENX")
CHARS_DIR = BASE_DIR / "chars"
TARGET_DIR = CHARS_DIR # We are modifying the folders we just created

def load_existing_library():
    """Scans for all VALID, existing characters to use as templates."""
    library = {} # { "goku": path_to_def, "ryu": path_to_def }
    
    print("📚 Indexing existing library...")
    for root, dirs, files in os.walk(CHARS_DIR):
        if "zipped_characters" in root: continue
        
        for f in files:
            if f.endswith(".def"):
                # Key is the lowercase filename without extension (e.g. "goku")
                key = f[:-4].lower()
                # Store full path to def
                library[key] = Path(root) / f
                
    print(f"✅ Indexed {len(library)} source characters.")
    return library

def find_best_match(name, library):
    """Finds the best existing character to clone based on name."""
    name_lower = name.lower()
    
    # 1. Exact match (unlikely for new chars)
    if name_lower in library: return library[name_lower]
    
    # 2. Substring match (e.g. "Goku" inside "Goku_SSJ5")
    # Sort library keys by length desc so we match "Goku_Z2" before "Goku" if possible
    sorted_keys = sorted(library.keys(), key=len, reverse=True)
    
    for key in sorted_keys:
        if key in name_lower:
            return library[key]
            
    # 3. Fallback: Kung Fu Man (or any standard char) if found
    if "kfm" in library: return library["kfm"]
    if "ryu" in library: return library["ryu"]
    
    return None

def apply_mods(char_dir, def_file, cns_file, variant_type):
    """Edits DEF and CNS files to apply color and stat mods."""
    
    # 1. COLOR MOD (Edit DEF)
    # Change pal.defaults to prioritize 4, 5, 6, etc.
    try:
        with open(def_file, 'r', errors='ignore') as f:
            content = f.read()
        
        # Random palette order to ensure variety
        pals = list(range(1, 13))
        random.shuffle(pals)
        pal_str = ",".join(map(str, pals))
        
        # Regex replace pal.defaults
        content = re.sub(r"pal\.defaults\s*=\s*[\d,]+", f"pal.defaults = {pal_str}", content)
        
        with open(def_file, 'w') as f:
            f.write(content)
    except Exception as e:
        print(f"    ⚠️ Color Mod failed: {e}")

    # 2. FLAIR MOD (Edit CNS)
    # Adjust stats based on variant type
    try:
        with open(cns_file, 'r', errors='ignore') as f:
            cns_content = f.read()
            
        # Helper to modify key=value
        def mod_stat(text, key, multiplier):
            # Regex to find "key = 1000"
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
            cns_content = mod_stat(cns_content, "attack", 0.9) # Slightly weaker
        elif variant_type == "Tank":
            cns_content = mod_stat(cns_content, "life", 1.5)
            cns_content = mod_stat(cns_content, "defence", 1.3)
            cns_content = mod_stat(cns_content, "run.fwd", 0.8) # Slower
        elif variant_type == "Power":
            cns_content = mod_stat(cns_content, "attack", 1.4)
            cns_content = mod_stat(cns_content, "life", 0.8) # Glass cannon
        elif variant_type == "Boss":
            cns_content = mod_stat(cns_content, "life", 2.0)
            cns_content = mod_stat(cns_content, "attack", 1.5)
            cns_content = mod_stat(cns_content, "power", 3000) # Max power start

        with open(cns_file, 'w') as f:
            f.write(cns_content)
            
    except Exception as e:
        print(f"    ⚠️ Flair Mod failed: {e}")

def smart_clone():
    print("=" * 80)
    print("🧬 MUGEN X SMART CLONER & MODDER")
    print("=" * 80)
    
    library = load_existing_library()
    
    # Identify the new placeholder characters
    # We look for folders that have the "dummy" files we created (size < 1KB usually)
    # Or we just process the list from "characters that need to be created" again
    
    # Let's use the source folder to know which ones to process
    source_list_dir = BASE_DIR / "chars" / "characters that need to be created"
    if not source_list_dir.exists():
        print("❌ Source list directory missing.")
        return

    targets = [f.name for f in source_list_dir.iterdir() if f.is_dir()]
    print(f"🎯 Found {len(targets)} targets to upgrade.")
    print("-" * 80)
    
    success_count = 0
    
    for char_name in targets:
        target_dir = CHARS_DIR / char_name
        
        # Find donor
        donor_def_path = find_best_match(char_name, library)
        
        if not donor_def_path:
            print(f"❌ No match found for {char_name}. Skipping.")
            continue
            
        donor_dir = donor_def_path.parent
        print(f"Processing {char_name}...")
        print(f"  ↳ Match: {donor_def_path.name} (from {donor_dir.name})")
        
        # Copy Assets
        # We need to copy SFF, SND, AIR, CNS, CMD, ACT files
        # And update the local DEF to point to them OR rename them
        
        # Strategy: Copy EVERYTHING from donor to target, then rename target DEF back
        # This ensures we get all helper files (common.cns, etc)
        
        try:
            # 1. Clear target dir (remove our dummy files)
            for item in target_dir.iterdir():
                if item.is_file(): item.unlink()
            
            # 2. Copy all files from donor
            for item in donor_dir.iterdir():
                if item.is_file():
                    shutil.copy(item, target_dir / item.name)
            
            # 3. Rename the main DEF file to match the folder name
            # (MUGEN requires folder name and def name to match for select.def shorthand)
            donor_def_name = donor_def_path.name
            if (target_dir / donor_def_name).exists():
                (target_dir / donor_def_name).rename(target_dir / f"{char_name}.def")
            
            # 4. Update the Display Name in the new DEF
            new_def = target_dir / f"{char_name}.def"
            with open(new_def, 'r', errors='ignore') as f:
                content = f.read()
            
            # Replace displayname
            content = re.sub(r"displayname\s*=\s*\".*?\"", f"displayname = \"{char_name}\"", content)
            content = re.sub(r"name\s*=\s*\".*?\"", f"name = \"{char_name}\"", content)
            
            with open(new_def, 'w') as f:
                f.write(content)
                
            # 5. Apply Mods
            # Determine variant type based on name keywords
            variant = "Turbo" # Default
            if "boss" in char_name.lower() or "god" in char_name.lower(): variant = "Boss"
            elif "evil" in char_name.lower() or "dark" in char_name.lower(): variant = "Power"
            elif "heavy" in char_name.lower() or "mecha" in char_name.lower(): variant = "Tank"
            
            # Find the CNS file (referenced in DEF, but usually same name or cns.cns)
            # We'll just look for any .cns file
            cns_files = list(target_dir.glob("*.cns"))
            if cns_files:
                apply_mods(target_dir, new_def, cns_files[0], variant)
                print(f"  ✨ Applied {variant} Mod & Color Swap")
            
            success_count += 1
            
        except Exception as e:
            print(f"  ❌ Error processing {char_name}: {e}")

    print("-" * 80)
    print(f"🎉 Upgraded {success_count} characters to unique variants!")

if __name__ == "__main__":
    smart_clone()
