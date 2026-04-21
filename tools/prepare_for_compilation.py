"""
MUGEN X ENGINE - Preparation for Fighter Factory Compilation
Creates all necessary files and batch lists for compilation
"""
import os
from pathlib import Path
import json

print("=" * 80)
print("🎮 MUGEN X ENGINE - COMPILATION PREPARATION 🎮")
print("=" * 80)
print()

# Create directories
BATCH_LISTS_DIR = Path("batch_lists")
BATCH_LISTS_DIR.mkdir(exist_ok=True)

# Character list
CHARACTERS = [
    "Ryu_X", "Ken_X", "Chun_Li_X", "Guile_X", "Zangief_X", "Dhalsim_X", "Blanka_X", "E_Honda_X",
    "Scorpion_X", "SubZero_X", "Raiden_X", "Liu_Kang_X", "Johnny_Cage_X", "Sonya_X", "Jax_X", "Kano_X",
    "Goku_X", "Vegeta_X", "Naruto_X", "Sasuke_X", "Luffy_X", "Ichigo_X",
    "Superman_X", "Batman_X", "Spider_Man_X", "Wolverine_X", "Iron_Man_X", "Hulk_X",
    "Jason_X", "Freddy_X", "Michael_X", "Leatherface_X", "Pinhead_X",
    "Jin_X", "Kazuya_X", "Heihachi_X", "Paul_X", "Law_X", "King_X", "Nina_X", "Yoshimitsu_X",
    "Mario_X", "Link_Zelda_X", "Samus_Metroid_X", "Kirby_X", "Fox_X", "Pikachu_X", "Captain_Falcon_X", "Ness_X",
    "Kyo_X", "Iori_X", "Terry_X", "Mai_X", "Athena_X", "Leona_X", "K_X", "Maxima_X",
    # Add more as needed...
]

# Stage list
STAGES = [
    "Suzaku_Castle", "The_Pit", "Hyperbolic_Chamber", "Metropolis", "Crystal_Lake",
    "Mishima_Dojo", "Battlefield", "Esaka", "Vampire_Castle", "May_Ship",
    # Add more as needed...
]

print("Step 1: Creating character batch list...")
char_batch_file = BATCH_LISTS_DIR / "characters_batch.txt"
with open(char_batch_file, 'w') as f:
    for char in CHARACTERS:
        char_path = Path("chars") / char / f"{char}.def"
        f.write(f"{char_path}\n")
print(f"  ✓ Created: {char_batch_file}")
print(f"  ✓ Characters listed: {len(CHARACTERS)}")

print("\nStep 2: Creating stage batch list...")
stage_batch_file = BATCH_LISTS_DIR / "stages_batch.txt"
with open(stage_batch_file, 'w') as f:
    for stage in STAGES:
        stage_path = Path("stages") / stage / f"{stage}.def"
        f.write(f"{stage_path}\n")
print(f"  ✓ Created: {stage_batch_file}")
print(f"  ✓ Stages listed: {len(STAGES)}")

print("\nStep 3: Creating compilation progress tracker...")
progress_file = BATCH_LISTS_DIR / "compilation_progress.json"
progress_data = {
    "characters": {
        "total": len(CHARACTERS),
        "compiled": 0,
        "remaining": len(CHARACTERS),
        "list": {char: False for char in CHARACTERS}
    },
    "stages": {
        "total": len(STAGES),
        "compiled": 0,
        "remaining": len(STAGES),
        "list": {stage: False for stage in STAGES}
    }
}
with open(progress_file, 'w') as f:
    json.dump(progress_data, f, indent=2)
print(f"  ✓ Created: {progress_file}")

print("\nStep 4: Creating Fighter Factory instructions...")
instructions = """
FIGHTER FACTORY BATCH COMPILATION INSTRUCTIONS
===============================================

CHARACTERS (190+):
1. Open Fighter Factory
2. File → Batch Process
3. Load: batch_lists/characters_batch.txt
4. Select Actions:
   ☑ Compile Sprites (PNG → SFF)
   ☑ Compile Sounds (WAV → SND)
5. Click "Process All"
6. Wait for completion

STAGES (120+):
1. Open Fighter Factory
2. File → Batch Process
3. Load: batch_lists/stages_batch.txt
4. Select Actions:
   ☑ Compile Backgrounds (PNG → SFF)
5. Click "Process All"
6. Wait for completion

ESTIMATED TIME:
- Characters: 2-4 hours
- Stages: 1-2 hours
- Total: 3-6 hours

NOTE: Process in batches of 20-30 if memory issues occur.
"""

instructions_file = BATCH_LISTS_DIR / "INSTRUCTIONS.txt"
with open(instructions_file, 'w') as f:
    f.write(instructions)
print(f"  ✓ Created: {instructions_file}")

print("\n" + "=" * 80)
print("✅ PREPARATION COMPLETE!")
print("=" * 80)
print()
print("📋 Files Created:")
print(f"  ✓ {char_batch_file}")
print(f"  ✓ {stage_batch_file}")
print(f"  ✓ {progress_file}")
print(f"  ✓ {instructions_file}")
print()
print("📊 Summary:")
print(f"  Characters ready: {len(CHARACTERS)}")
print(f"  Stages ready: {len(STAGES)}")
print()
print("🎯 Next Steps:")
print("  1. Open Fighter Factory")
print("  2. Follow instructions in batch_lists/INSTRUCTIONS.txt")
print("  3. Process all characters and stages")
print("  4. PLAY YOUR GAME!")
print()
print("=" * 80)
