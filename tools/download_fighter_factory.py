"""
MUGEN X ENGINE - Fighter Factory Download Helper
Opens download page and provides instructions
"""
import webbrowser
import os

print("=" * 80)
print("🎮 FIGHTER FACTORY DOWNLOAD HELPER 🎮")
print("=" * 80)
print()

print("Opening Fighter Factory download page in your browser...")
print()

# Official download URLs
FIGHTER_FACTORY_URLS = [
    "http://fighterfactory.virtualltek.com/",
    "https://mugenguild.com/forum/topics/fighter-factory-classic-181152.0.html",
    "https://archive.org/details/FighterFactoryClassic"
]

print("📥 DOWNLOAD OPTIONS:")
print()
print("1. Fighter Factory Classic (Recommended)")
print("   URL: http://fighterfactory.virtualltek.com/")
print()
print("2. Fighter Factory Ultimate")
print("   URL: https://mugenguild.com/")
print()
print("3. Archive.org Mirror")
print("   URL: https://archive.org/details/FighterFactoryClassic")
print()

# Open the main download page
try:
    webbrowser.open(FIGHTER_FACTORY_URLS[0])
    print("✅ Opened download page in your browser!")
except:
    print("⚠️  Could not open browser automatically.")
    print(f"   Please visit: {FIGHTER_FACTORY_URLS[0]}")

print()
print("=" * 80)
print("📋 DOWNLOAD INSTRUCTIONS:")
print("=" * 80)
print()
print("1. Click 'Download' on the webpage")
print("2. Save the file (FighterFactory.zip)")
print("3. Extract to: C:\\FighterFactory\\")
print("4. Run: FighterFactory.exe")
print("5. Come back here for next steps!")
print()
print("=" * 80)
print("⏱️  ESTIMATED TIME: 2-3 minutes")
print("=" * 80)
print()

input("Press ENTER after you've downloaded and extracted Fighter Factory...")

print()
print("=" * 80)
print("✅ GREAT! Now let's set it up...")
print("=" * 80)
print()
print("📋 NEXT STEPS:")
print()
print("1. Open Fighter Factory (Run as Administrator)")
print("2. File → Batch Process")
print("3. Load: d:\\MUGENAI\\MUGENX\\batch_lists\\characters_batch.txt")
print("4. Click 'Process All'")
print("5. Wait for compilation")
print()
print("See FIGHTER_FACTORY_GUIDE.md for detailed instructions!")
print()
print("=" * 80)
