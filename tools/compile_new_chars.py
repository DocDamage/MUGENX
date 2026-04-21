"""
MUGEN X ENGINE - NEW CHARACTER COMPILER
Turns raw folders in 'characters that need to be created' into playable characters.
"""
import os
import shutil
from pathlib import Path

# Configuration
BASE_DIR = Path(r"d:\MUGENAI\MUGENX")
SOURCE_DIR = BASE_DIR / "chars" / "characters that need to be created"
TARGET_DIR = BASE_DIR / "chars"

# Template for character definition
DEF_TEMPLATE = """[Info]
name = "{name}"
displayname = "{name}"
versiondate = 11,25,2025
mugenversion = 1.1
author = "MUGEN X AI"
pal.defaults = 1

[Files]
cmd     = {name}.cmd
cns     = {name}.cns
st      = {name}.cns
stcommon = common1.cns
sprite  = {name}.sff
anim    = {name}.air
sound   = {name}.snd
"""

# Template for commands (Basic input)
CMD_TEMPLATE = """[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Statedef -1]
"""

# Template for constants (Stats)
CNS_TEMPLATE = """[Data]
life = 1000
power = 3000
attack = 100
defence = 100
fall.defence_up = 50
liedown.time = 60
airjuggle = 15
sparkno = 2
guard.sparkno = 40
KO.echo = 0
volume = 0
IntPersistIndex = 60
FloatPersistIndex = 40

[Size]
xscale = 1
yscale = 1
ground.back = 15
ground.front = 16
air.back = 12
air.front = 12
height = 60
attack.dist = 160
proj.attack.dist = 90
proj.doscale = 0
head.pos = -5, -90
mid.pos = -5, -60
shadowoffset = 0
draw.offset = 0,0

[Velocity]
walk.fwd  = 2.4
walk.back = -2.2
run.fwd  = 4.6, 0
run.back = -4.5,-3.8
jump.neu = 0,-8.4
jump.back = -2.55
jump.fwd = 2.5

[Movement]
airjump.num = 1
airjump.height = 35
yaccel = .44
stand.friction = .85
crouch.friction = .82
"""

# Template for animations (Empty idle)
AIR_TEMPLATE = """[Begin Action 0]
; Idle Stance
0,0, 0,0, 10
"""

def compile_new_characters():
    print("=" * 80)
    print("🏭 MUGEN X NEW CHARACTER COMPILER")
    print("=" * 80)

    if not SOURCE_DIR.exists():
        print(f"❌ Source folder not found: {SOURCE_DIR}")
        return

    # Get list of folders
    folders = [f for f in SOURCE_DIR.iterdir() if f.is_dir()]
    
    if not folders:
        print("⚠️  No character folders found to compile.")
        return

    print(f"Found {len(folders)} characters to compile...")
    print("-" * 80)

    compiled_count = 0

    for folder in folders:
        char_name = folder.name
        target_char_dir = TARGET_DIR / char_name
        
        print(f"Processing: {char_name}...")

        # 1. Create Target Directory
        if target_char_dir.exists():
            print(f"  ⚠️  Skipping: {char_name} already exists in playable chars/")
            continue
            
        target_char_dir.mkdir(parents=True)
        
        # 2. Generate Files
        # DEF
        with open(target_char_dir / f"{char_name}.def", 'w') as f:
            f.write(DEF_TEMPLATE.format(name=char_name))
            
        # CMD
        with open(target_char_dir / f"{char_name}.cmd", 'w') as f:
            f.write(CMD_TEMPLATE)
            
        # CNS
        with open(target_char_dir / f"{char_name}.cns", 'w') as f:
            f.write(CNS_TEMPLATE)
            
        # AIR
        with open(target_char_dir / f"{char_name}.air", 'w') as f:
            f.write(AIR_TEMPLATE)
            
        # 3. Handle Assets (SFF/SND)
        # Check if source has sprites
        src_sff = folder / f"{char_name}.sff"
        if src_sff.exists():
            shutil.copy(src_sff, target_char_dir / f"{char_name}.sff")
            print("  ✅ Copied existing SFF")
        else:
            # Create dummy SFF (empty file, game might warn but run)
            # Ideally we copy a template "kfm.sff" if available
            # For now, we create an empty file to satisfy file check
            with open(target_char_dir / f"{char_name}.sff", 'wb') as f:
                pass 
            print("  ⚠️  Created dummy SFF (Needs sprites!)")

        src_snd = folder / f"{char_name}.snd"
        if src_snd.exists():
            shutil.copy(src_snd, target_char_dir / f"{char_name}.snd")
            print("  ✅ Copied existing SND")
        else:
            with open(target_char_dir / f"{char_name}.snd", 'wb') as f:
                pass
            print("  ⚠️  Created dummy SND")

        compiled_count += 1
        print(f"  ✨ Compiled: {char_name}")

    print("-" * 80)
    print(f"🎉 Successfully compiled {compiled_count} new characters!")
    print("👉 Run 'python update_roster_recursive.py' to add them to the game.")

if __name__ == "__main__":
    compile_new_characters()
