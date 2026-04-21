"""
Generate massive music and story library
"""
import sys
import os

sys.path.append('tools')

from ai_music import composer
from ai_story import story_gen

print("=" * 80)
print("🎵📖 MUSIC & STORY EXPANSION GENERATOR 🎵📖")
print("=" * 80)
print()

# ============================================================================
# MUSIC GENERATION - EXPANDED
# ============================================================================
print("🎵 GENERATING EXPANDED MUSIC LIBRARY...")
print("-" * 80)

# Organize by genre/mood categories
MUSIC_LIBRARY = {
    "Action": ["Epic", "Boss", "Intense", "Battle", "War", "Heroic"],
    "Electronic": ["Cyberpunk", "Trap", "Dubstep", "Trance", "Industrial", "Techno"],
    "Retro": ["8-bit", "Arcade", "Retro", "Chiptune", "Synthwave", "Vaporwave"],
    "Orchestral": ["Orchestral", "Classical", "Opera", "Cinematic", "Dramatic", "Majestic"],
    "World": ["Latin", "Oriental", "Celtic", "Tribal", "African", "Middle_Eastern"],
    "Chill": ["Lofi", "Ambient", "Jazz", "Blues", "Smooth", "Relaxing"],
    "Party": ["Disco", "Funk", "Dance", "House", "Pop", "Upbeat"],
    "Dark": ["Dark", "Horror", "Gothic", "Ominous", "Sinister", "Haunting"],
    "Rock": ["Rock", "Metal", "Punk", "Grunge", "Alternative", "Hard_Rock"],
    "Misc": ["Victory", "Sad", "Happy", "Mysterious", "Suspense", "Tension"]
}

music_count = 0
total_tracks = sum(len(moods) for moods in MUSIC_LIBRARY.values())
current = 0

for genre, moods in MUSIC_LIBRARY.items():
    print(f"\n  📁 {genre} Genre:")
    for mood in moods:
        current += 1
        stage_name = f"{genre}_{mood}"
        print(f"    [{current}/{total_tracks}] Composing {mood}...")
        try:
            composer.compose_theme(stage_name, mood)
            music_count += 1
        except Exception as e:
            print(f"      ⚠️  Error: {e}")

print(f"\n✅ Generated {music_count} music tracks across {len(MUSIC_LIBRARY)} genres!\n")

# ============================================================================
# STORY GENERATION - EXPANDED
# ============================================================================
print("📖 GENERATING EXPANDED STORY LIBRARY...")
print("-" * 80)

# Massive story arc library
STORY_LIBRARY = [
    # Rivalry Stories
    {"title": "The Tournament Begins", "chars": ["Ryu_X", "Ken_X"], "theme": "rivalry"},
    {"title": "Eternal Rivals", "chars": ["Scorpion_X", "SubZero_X"], "theme": "rivalry"},
    {"title": "Saiyan Pride", "chars": ["Goku_X", "Vegeta_X"], "theme": "rivalry"},
    {"title": "Speed Demons", "chars": ["Sonic_X", "Shadow_X"], "theme": "rivalry"},
    {"title": "Brothers in Arms", "chars": ["Ryu_X", "Akuma_X"], "theme": "rivalry"},
    
    # Revenge Stories
    {"title": "Dark Forces Rise", "chars": ["Scorpion_X", "SubZero_X"], "theme": "revenge"},
    {"title": "Vengeance Unleashed", "chars": ["Jin_X", "Kazuya_X"], "theme": "revenge"},
    {"title": "Blood Feud", "chars": ["Iori_X", "Kyo_X"], "theme": "revenge"},
    {"title": "The Reckoning", "chars": ["Kratos_X", "Zeus_X"], "theme": "revenge"},
    {"title": "Betrayal's Price", "chars": ["Vergil_X", "Dante_X"], "theme": "revenge"},
    
    # Power Stories
    {"title": "Galactic Showdown", "chars": ["Goku_X", "Vegeta_X"], "theme": "power"},
    {"title": "Ultimate Strength", "chars": ["Zangief_X", "Haggar_X"], "theme": "power"},
    {"title": "God Slayer", "chars": ["Kratos_X", "Ares_X"], "theme": "power"},
    {"title": "Demon's Awakening", "chars": ["Akuma_X", "Oni_X"], "theme": "power"},
    {"title": "Limitless Potential", "chars": ["Goku_X", "Jiren_X"], "theme": "power"},
    
    # Friendship Stories
    {"title": "Heroes Unite", "chars": ["Mario_X", "Sonic_X"], "theme": "friendship"},
    {"title": "Bonds of Battle", "chars": ["Ryu_X", "Ken_X"], "theme": "friendship"},
    {"title": "Team Spirit", "chars": ["Terry_X", "Andy_X"], "theme": "friendship"},
    {"title": "Unlikely Allies", "chars": ["Sonic_X", "Tails_X"], "theme": "friendship"},
    {"title": "Brotherhood", "chars": ["Mario_X", "Luigi_X"], "theme": "friendship"},
    
    # Destiny Stories
    {"title": "Legendary Clash", "chars": ["Link_Zelda_X", "Ganondorf_X"], "theme": "destiny"},
    {"title": "Chosen One", "chars": ["Cloud_X", "Sephiroth_X"], "theme": "destiny"},
    {"title": "Fated Battle", "chars": ["Jin_X", "Kazuya_X"], "theme": "destiny"},
    {"title": "Prophecy Fulfilled", "chars": ["Ryu_X", "Akuma_X"], "theme": "destiny"},
    {"title": "Eternal Conflict", "chars": ["Scorpion_X", "SubZero_X"], "theme": "destiny"},
    
    # Tournament Stories
    {"title": "King of Fighters", "chars": ["Kyo_X", "Iori_X"], "theme": "rivalry"},
    {"title": "World Warrior", "chars": ["Ryu_X", "Sagat_X"], "theme": "rivalry"},
    {"title": "Iron Fist Tournament", "chars": ["Jin_X", "Heihachi_X"], "theme": "rivalry"},
    {"title": "Mortal Kombat", "chars": ["Liu_X", "Shang_X"], "theme": "rivalry"},
    {"title": "Street Fighter Championship", "chars": ["Ryu_X", "Bison_X"], "theme": "rivalry"},
    
    # Crossover Stories
    {"title": "Worlds Collide", "chars": ["Ryu_X", "Scorpion_X"], "theme": "friendship"},
    {"title": "Dimensional Rift", "chars": ["Goku_X", "Superman_X"], "theme": "power"},
    {"title": "Multiverse Mayhem", "chars": ["Mario_X", "Mega_Man_X"], "theme": "friendship"},
    {"title": "Crossover Crisis", "chars": ["Sonic_X", "Mega_Man_X"], "theme": "friendship"},
    {"title": "Ultimate Showdown", "chars": ["Cloud_X", "Link_Zelda_X"], "theme": "power"},
    
    # Origin Stories
    {"title": "The Beginning", "chars": ["Ryu_X", "Gouken_X"], "theme": "friendship"},
    {"title": "First Steps", "chars": ["Ken_X", "Sean_X"], "theme": "friendship"},
    {"title": "Training Days", "chars": ["Goku_X", "Master_Roshi_X"], "theme": "friendship"},
    {"title": "Path of the Warrior", "chars": ["Jin_X", "Jun_X"], "theme": "destiny"},
    {"title": "Awakening", "chars": ["Ryu_X", "Akuma_X"], "theme": "destiny"},
    
    # Boss Stories
    {"title": "Final Confrontation", "chars": ["Ryu_X", "Bison_X"], "theme": "power"},
    {"title": "God of Destruction", "chars": ["Goku_X", "Beerus_X"], "theme": "power"},
    {"title": "Dark Emperor", "chars": ["Luke_X", "Vader_X"], "theme": "destiny"},
    {"title": "Ultimate Evil", "chars": ["Link_Zelda_X", "Ganon_X"], "theme": "destiny"},
    {"title": "Demon King", "chars": ["Dante_X", "Mundus_X"], "theme": "revenge"},
]

story_count = 0
for i, arc in enumerate(STORY_LIBRARY, 1):
    print(f"  [{i}/{len(STORY_LIBRARY)}] Writing '{arc['title']}'...")
    try:
        story_gen.generate_story_arc(arc['title'], arc['chars'], arc['theme'])
        story_count += 1
    except Exception as e:
        print(f"    ⚠️  Error: {e}")

print(f"\n✅ Generated {story_count} story arcs!\n")

# ============================================================================
# SUMMARY
# ============================================================================
print("=" * 80)
print("🎉 MUSIC & STORY EXPANSION COMPLETE! 🎉")
print("=" * 80)
print()
print("📊 SUMMARY:")
print(f"  🎵 Music Tracks: {music_count}")
print(f"  📖 Story Arcs: {story_count}")
print()
print(f"  🏆 TOTAL NEW ASSETS: {music_count + story_count}")
print()
print("=" * 80)
print("Content saved to:")
print("  - sound/music/")
print("  - data/story/")
print("=" * 80)
