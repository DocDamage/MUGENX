"""
MUGEN X ENGINE - Mega Pack Finder
Opens pages with massive character collections and full games.
"""
import webbrowser
import time

print("=" * 80)
print("📦 MUGEN MEGA PACK FINDER 📦")
print("=" * 80)
print()
print("Opening sources for MASSIVE content packs...")
print()

# 1. Archive.org (Best for huge, uncurated packs)
print("1. Opening Archive.org MUGEN Collections...")
print("   (Look for 'MUGEN Character Pack' or 'MUGEN Roster')")
webbrowser.open("https://archive.org/search.php?query=mugen+character+pack")
time.sleep(1)

# 2. MUGEN Archive - Full Games (Best for curated games)
print("2. Opening MUGEN Archive 'Full Games' section...")
print("   (Download a game, extract its characters!)")
webbrowser.open("https://mugenarchive.com/forums/downloads.php?do=cat&id=3")
time.sleep(1)

# 3. MUGEN Free For All - Full Games
print("3. Opening MUGEN Free For All 'Full Games'...")
webbrowser.open("https://mugenfreeforall.com/forum/12-full-games/")

print()
print("=" * 80)
print("💡 THE STRATEGY:")
print("1. Download ONE big game (e.g., 'MUGEN Megamix', 'Everything vs Everything')")
print("2. Extract the ZIP")
print("3. Go to that game's 'chars' folder")
print("4. Copy EVERYTHING to d:\\MUGENAI\\MUGENX\\chars\\")
print("5. Run 'python quick_play_setup.py' to update your roster")
print("=" * 80)
