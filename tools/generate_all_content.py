import sys
import os
import random

# Add parent directory to path
sys.path.append(os.path.join(os.path.dirname(__file__), '..'))

print("=" * 80)
print("🎮 MUGEN X ENGINE - ULTIMATE CONTENT GENERATOR 🎮")
print("=" * 80)
print()

# ============================================================================
# 1. MUSIC GENERATION
# ============================================================================
print("🎵 [1/8] GENERATING MUSIC PACKS...")
print("-" * 80)

from ai_music import composer

MUSIC_MOODS = [
    "Cyberpunk", "Epic", "Boss", "Retro", "Latin", "Oriental", "Celtic",
    "Industrial", "Lofi", "Trap", "Disco", "Opera", "Tribal", "Gothic", "Arcade"
]

music_count = 0
for i, mood in enumerate(MUSIC_MOODS, 1):
    stage_name = f"Stage_{mood}"
    print(f"  [{i}/{len(MUSIC_MOODS)}] Composing {mood} theme for {stage_name}...")
    composer.compose_theme(stage_name, mood)
    music_count += 1

print(f"✅ Generated {music_count} music tracks!\n")

# ============================================================================
# 2. VOICE PACKS GENERATION
# ============================================================================
print("🗣️  [2/8] GENERATING VOICE PACKS...")
print("-" * 80)

from ai_voice import voice_gen

VOICE_PERSONALITIES = [
    "Hero", "Villain", "Robot", "Monster", "God", "Ninja", "Demon", "Angel",
    "Pirate", "Zombie", "Cyborg", "Beast", "Assassin", "Jester", "Noble"
]

SAMPLE_CHARACTERS = [
    "Ryu_X", "Ken_X", "Scorpion_X", "SubZero_X", "Goku_X", "Vegeta_X",
    "Mario_X", "Sonic_X", "Link_Zelda_X", "Cloud_X", "Dante_X", "Kratos_X"
]

voice_count = 0
for i, (char, personality) in enumerate(zip(SAMPLE_CHARACTERS, VOICE_PERSONALITIES), 1):
    print(f"  [{i}/{len(SAMPLE_CHARACTERS)}] Recording voice for {char} ({personality})...")
    try:
        voice_gen.generate_voice_pack(char, personality)
        voice_count += 1
    except Exception as e:
        print(f"    ⚠️  Skipped (character not found or error): {e}")

print(f"✅ Generated {voice_count} voice packs!\n")

# ============================================================================
# 3. STORY MODE SCRIPTS
# ============================================================================
print("📖 [3/8] GENERATING STORY MODE SCRIPTS...")
print("-" * 80)

from ai_story import story_gen

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
    story_gen.generate_story_arc(arc['title'], arc['chars'], arc['theme'])
    story_count += 1

print(f"✅ Generated {story_count} story arcs!\n")

# ============================================================================
# 4. TRASH TALK LINES
# ============================================================================
print("💬 [4/8] GENERATING TRASH TALK LINES...")
print("-" * 80)

from trash_talk import generator

TRASH_TALK_CHARS = SAMPLE_CHARACTERS[:10]

trash_count = 0
for i, char in enumerate(TRASH_TALK_CHARS, 1):
    print(f"  [{i}/{len(TRASH_TALK_CHARS)}] Writing trash talk for {char}...")
    generator.generate_trash_talk(char, count=20)
    trash_count += 1

print(f"✅ Generated trash talk for {trash_count} characters!\n")

# ============================================================================
# 5. AI COMMENTARY
# ============================================================================
print("🎙️  [5/8] GENERATING AI COMMENTARY LINES...")
print("-" * 80)

from ai_commentary import commentary_gen

COMMENTARY_TYPES = [
    "intro", "combo", "super", "ko", "perfect", "comeback", "timeout", "draw"
]

commentary_count = 0
for i, ctype in enumerate(COMMENTARY_TYPES, 1):
    print(f"  [{i}/{len(COMMENTARY_TYPES)}] Writing {ctype} commentary...")
    commentary_gen.generate_commentary_set(ctype, count=15)
    commentary_count += 1

print(f"✅ Generated {commentary_count} commentary sets!\n")

# ============================================================================
# 6. CHARACTER SKINS/PALETTES
# ============================================================================
print("🎨 [6/8] GENERATING CHARACTER SKINS...")
print("-" * 80)

from ai_skins import palette_gen

SKIN_THEMES = [
    "Shadow", "Gold", "Ice", "Fire", "Neon", "Retro", "Zombie", "Cyber"
]

skin_count = 0
for char in SAMPLE_CHARACTERS[:8]:
    for theme in SKIN_THEMES[:3]:  # 3 skins per character
        print(f"  Creating {theme} skin for {char}...")
        palette_gen.generate_palette(char, theme)
        skin_count += 1

print(f"✅ Generated {skin_count} character skins!\n")

# ============================================================================
# 7. CUSTOM MOVES
# ============================================================================
print("⚔️  [7/8] GENERATING CUSTOM MOVES...")
print("-" * 80)

from move_maker import move_generator

MOVE_TYPES = [
    "Projectile", "AntiAir", "Command_Grab", "Counter", "Teleport",
    "Install_Super", "Beam_Super", "Rush_Super"
]

move_count = 0
for i, move_type in enumerate(MOVE_TYPES, 1):
    print(f"  [{i}/{len(MOVE_TYPES)}] Creating {move_type} move template...")
    move_generator.create_move_template(move_type)
    move_count += 1

print(f"✅ Generated {move_count} move templates!\n")

# ============================================================================
# 8. AI COACH TRAINING PROGRAMS
# ============================================================================
print("🎯 [8/8] GENERATING AI COACH TRAINING PROGRAMS...")
print("-" * 80)

from ai_coach import coach_gen

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
    coach_gen.generate_training_program(
        program['name'], 
        program['focus'], 
        program['difficulty']
    )
    program_count += 1

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
print(f"  🗣️  Voice Packs: {voice_count}")
print(f"  📖 Story Arcs: {story_count}")
print(f"  💬 Trash Talk Sets: {trash_count}")
print(f"  🎙️  Commentary Sets: {commentary_count}")
print(f"  🎨 Character Skins: {skin_count}")
print(f"  ⚔️  Move Templates: {move_count}")
print(f"  🎯 Training Programs: {program_count}")
print()
total = music_count + voice_count + story_count + trash_count + commentary_count + skin_count + move_count + program_count
print(f"  🏆 TOTAL ASSETS GENERATED: {total}")
print()
print("=" * 80)
print("All content has been saved to their respective directories!")
print("Check the following folders:")
print("  - sound/music/")
print("  - chars/*/sound/")
print("  - data/story/")
print("  - data/trash_talk/")
print("  - data/commentary/")
print("  - chars/*/palettes/")
print("  - data/moves/")
print("  - data/training/")
print("=" * 80)
