"""
🎮 MUGEN X ENGINE - ULTIMATE CONTENT GENERATOR 🎮
Generates all content types for the engine
"""
import sys
import os

# Add tools to path
sys.path.append('tools')

print("=" * 80)
print("🎮 MUGEN X ENGINE - ULTIMATE CONTENT GENERATOR 🎮")
print("=" * 80)
print()

# Import all generators
from ai_music import composer
from ai_story import story_gen
from trash_talk import generator as trash_gen
from ai_commentary import commentary_gen
from ai_skins import palette_gen
from move_maker import move_generator
from ai_coach import coach_gen

# ============================================================================
# 1. MUSIC GENERATION
# ============================================================================
print("🎵 [1/7] GENERATING MUSIC PACKS...")
print("-" * 80)

MUSIC_MOODS = [
    "Cyberpunk", "Epic", "Boss", "Retro", "Latin", "Oriental", "Celtic",
    "Industrial", "Lofi", "Trap", "Disco", "Opera", "Tribal", "Gothic", "Arcade"
]

music_count = 0
for i, mood in enumerate(MUSIC_MOODS, 1):
    stage_name = f"Stage_{mood}"
    print(f"  [{i}/{len(MUSIC_MOODS)}] Composing {mood} theme for {stage_name}...")
    try:
        composer.compose_theme(stage_name, mood)
        music_count += 1
    except Exception as e:
        print(f"    ⚠️  Error: {e}")

print(f"✅ Generated {music_count} music tracks!\n")

# ============================================================================
# 2. STORY MODE SCRIPTS
# ============================================================================
print("📖 [2/7] GENERATING STORY MODE SCRIPTS...")
print("-" * 80)

STORY_ARCS = [
    {"title": "The Tournament Begins", "chars": ["Ryu_X", "Ken_X"], "theme": "rivalry"},
    {"title": "Dark Forces Rise", "chars": ["Scorpion_X", "SubZero_X"], "theme": "revenge"},
    {"title": "Galactic Showdown", "chars": ["Goku_X", "Vegeta_X"], "theme": "power"},
    {"title": "Heroes Unite", "chars": ["Mario_X", "Sonic_X"], "theme": "friendship"},
    {"title": "Legendary Clash", "chars": ["Link_Zelda_X", "Ganondorf_X"], "theme": "destiny"},
]

story_count = 0
for i, arc in enumerate(STORY_ARCS, 1):
    print(f"  [{i}/{len(STORY_ARCS)}] Writing '{arc['title']}'...")
    try:
        story_gen.generate_story_arc(arc['title'], arc['chars'], arc['theme'])
        story_count += 1
    except Exception as e:
        print(f"    ⚠️  Error: {e}")

print(f"✅ Generated {story_count} story arcs!\n")

# ============================================================================
# 3. TRASH TALK LINES
# ============================================================================
print("💬 [3/7] GENERATING TRASH TALK LINES...")
print("-" * 80)

TRASH_TALK_CHARS = [
    "Ryu_X", "Ken_X", "Scorpion_X", "SubZero_X", "Goku_X", 
    "Vegeta_X", "Mario_X", "Sonic_X", "Link_Zelda_X", "Cloud_X"
]

trash_count = 0
for i, char in enumerate(TRASH_TALK_CHARS, 1):
    print(f"  [{i}/{len(TRASH_TALK_CHARS)}] Writing trash talk for {char}...")
    try:
        trash_gen.generate_trash_talk(char, count=20)
        trash_count += 1
    except Exception as e:
        print(f"    ⚠️  Error: {e}")

print(f"✅ Generated trash talk for {trash_count} characters!\n")

# ============================================================================
# 4. AI COMMENTARY
# ============================================================================
print("🎙️  [4/7] GENERATING AI COMMENTARY LINES...")
print("-" * 80)

COMMENTARY_TYPES = [
    "intro", "combo", "super", "ko", "perfect", "comeback", "timeout", "draw"
]

commentary_count = 0
for i, ctype in enumerate(COMMENTARY_TYPES, 1):
    print(f"  [{i}/{len(COMMENTARY_TYPES)}] Writing {ctype} commentary...")
    try:
        commentary_gen.generate_commentary_set(ctype, count=15)
        commentary_count += 1
    except Exception as e:
        print(f"    ⚠️  Error: {e}")

print(f"✅ Generated {commentary_count} commentary sets!\n")

# ============================================================================
# 5. CHARACTER SKINS/PALETTES
# ============================================================================
print("🎨 [5/7] GENERATING CHARACTER SKINS...")
print("-" * 80)

SKIN_THEMES = [
    "Shadow", "Gold", "Ice", "Fire", "Neon", "Retro", "Zombie", "Cyber"
]

SAMPLE_CHARS = ["Ryu_X", "Ken_X", "Scorpion_X", "SubZero_X", "Goku_X", "Vegeta_X", "Mario_X", "Sonic_X"]

skin_count = 0
for char in SAMPLE_CHARS:
    for theme in SKIN_THEMES[:3]:  # 3 skins per character
        print(f"  Creating {theme} skin for {char}...")
        try:
            palette_gen.generate_palette(char, theme)
            skin_count += 1
        except Exception as e:
            print(f"    ⚠️  Error: {e}")

print(f"✅ Generated {skin_count} character skins!\n")

# ============================================================================
# 6. CUSTOM MOVES
# ============================================================================
print("⚔️  [6/7] GENERATING CUSTOM MOVES...")
print("-" * 80)

MOVE_TYPES = [
    "Projectile", "AntiAir", "Command_Grab", "Counter", "Teleport",
    "Install_Super", "Beam_Super", "Rush_Super"
]

move_count = 0
for i, move_type in enumerate(MOVE_TYPES, 1):
    print(f"  [{i}/{len(MOVE_TYPES)}] Creating {move_type} move template...")
    try:
        move_generator.create_move_template(move_type)
        move_count += 1
    except Exception as e:
        print(f"    ⚠️  Error: {e}")

print(f"✅ Generated {move_count} move templates!\n")

# ============================================================================
# 7. AI COACH TRAINING PROGRAMS
# ============================================================================
print("🎯 [7/7] GENERATING AI COACH TRAINING PROGRAMS...")
print("-" * 80)

TRAINING_PROGRAMS = [
    {"name": "Combo Mastery", "focus": "execution", "difficulty": "intermediate"},
    {"name": "Neutral Game", "focus": "spacing", "difficulty": "advanced"},
    {"name": "Defense Fundamentals", "focus": "blocking", "difficulty": "beginner"},
    {"name": "Mixup Madness", "focus": "offense", "difficulty": "advanced"},
    {"name": "Frame Trap Setups", "focus": "pressure", "difficulty": "expert"},
]

program_count = 0
for i, program in enumerate(TRAINING_PROGRAMS, 1):
    print(f"  [{i}/{len(TRAINING_PROGRAMS)}] Creating '{program['name']}' program...")
    try:
        coach_gen.generate_training_program(
            program['name'], 
            program['focus'], 
            program['difficulty']
        )
        program_count += 1
    except Exception as e:
        print(f"    ⚠️  Error: {e}")

print(f"✅ Generated {program_count} training programs!\n")

# ============================================================================
# SUMMARY
# ============================================================================
print("=" * 80)
print("🎉 CONTENT GENERATION COMPLETE! 🎉")
print("=" * 80)
print()
print("📊 SUMMARY:")
print(f"  🎵 Music Tracks: {music_count}")
print(f"  📖 Story Arcs: {story_count}")
print(f"  💬 Trash Talk Sets: {trash_count}")
print(f"  🎙️  Commentary Sets: {commentary_count}")
print(f"  🎨 Character Skins: {skin_count}")
print(f"  ⚔️  Move Templates: {move_count}")
print(f"  🎯 Training Programs: {program_count}")
print()
total = music_count + story_count + trash_count + commentary_count + skin_count + move_count + program_count
print(f"  🏆 TOTAL ASSETS GENERATED: {total}")
print()
print("=" * 80)
print("All content has been saved to their respective directories!")
print("Check the following folders:")
print("  - sound/music/")
print("  - data/story/")
print("  - data/trash_talk/")
print("  - data/commentary/")
print("  - chars/*/palettes/")
print("  - data/moves/")
print("  - data/training/")
print("=" * 80)
