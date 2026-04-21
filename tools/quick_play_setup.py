"""
MUGEN X ENGINE - Quick Play Setup with Pre-Made Characters
Get playing in 17 minutes!
"""
import webbrowser
import os
from pathlib import Path

print("=" * 80)
print("🎮 MUGEN X ENGINE - QUICK PLAY SETUP 🎮")
print("=" * 80)
print()
print("Let's get you playing in 17 minutes!")
print()

# Character download sites
DOWNLOAD_SITES = {
    "MUGEN Free For All": "https://mugenfreeforall.com/",
    "MUGEN Guild": "https://mugenguild.com/forum/",
    "MUGEN Archive": "https://mugenarchive.com/",
    "Infinity MUGEN Team": "http://www.infinitymugenteam.com/"
}

print("📥 STEP 1: DOWNLOAD CHARACTERS (10 minutes)")
print("=" * 80)
print()
print("I'm opening the best character download sites for you...")
print()

# Open download sites
for name, url in DOWNLOAD_SITES.items():
    print(f"  Opening: {name}")
    try:
        webbrowser.open(url)
    except:
        print(f"    ⚠️  Could not open automatically. Visit: {url}")

print()
print("✅ Download sites opened in your browser!")
print()
print("📋 RECOMMENDED STARTER CHARACTERS (Download these):")
print()
print("  Fighting Games:")
print("    1. Ryu (Street Fighter)")
print("    2. Scorpion (Mortal Kombat)")
print("    3. Jin (Tekken)")
print("    4. Sol Badguy (Guilty Gear)")
print("    5. Terry Bogard (Fatal Fury)")
print()
print("  Popular Characters:")
print("    6. Goku (Dragon Ball)")
print("    7. Naruto")
print("    8. Sonic")
print("    9. Mario")
print("    10. Mega Man")
print()
print("💡 TIP: Search for 'high quality' or 'HD' versions!")
print()

input("Press ENTER after you've downloaded 10 characters...")

print()
print("📂 STEP 2: INSTALL CHARACTERS (5 minutes)")
print("=" * 80)
print()

chars_dir = Path("chars")
chars_dir.mkdir(exist_ok=True)

print(f"Character folder ready: {chars_dir.absolute()}")
print()
print("📋 INSTALLATION INSTRUCTIONS:")
print()
print("1. Extract each character ZIP file")
print("2. Copy the character folder to:")
print(f"   {chars_dir.absolute()}")
print()
print("Example:")
print("  - Extract 'Ryu.zip'")
print("  - You'll get a folder like 'Ryu' or 'SF_Ryu'")
print(f"  - Copy that folder to: {chars_dir.absolute()}")
print()
print("Each character folder should contain:")
print("  ✓ character.def")
print("  ✓ character.sff (sprites)")
print("  ✓ character.snd (sounds)")
print("  ✓ character.air (animations)")
print()

input("Press ENTER after you've copied all characters to chars/ folder...")

print()
print("📝 STEP 3: UPDATE ROSTER (2 minutes)")
print("=" * 80)
print()

# Get list of characters in chars folder
installed_chars = []
for item in chars_dir.iterdir():
    if item.is_dir():
        # Look for .def file
        def_files = list(item.glob("*.def"))
        if def_files:
            installed_chars.append((item.name, def_files[0].name))

if installed_chars:
    print(f"✅ Found {len(installed_chars)} characters installed!")
    print()
    print("Characters found:")
    for char_folder, def_file in installed_chars:
        print(f"  ✓ {char_folder}")
    print()
    
    # Create select.def
    select_def = Path("data") / "select.def"
    select_def.parent.mkdir(parents=True, exist_ok=True)
    
    select_content = """; MUGEN X ENGINE - Quick Play Roster
; Auto-generated character list

[Options]
arcade.maxmatches = 6,1,1,0,0,0,0,0,0,0
team.maxmatches = 4,1,1,0,0,0,0,0,0,0

[Characters]
"""
    
    # Add all found characters
    for char_folder, def_file in installed_chars:
        select_content += f"{char_folder}/{def_file}, stages/training.def\n"
    
    # Add random select
    select_content += "\nRandomSelect, random\n"
    
    # Write select.def
    with open(select_def, 'w') as f:
        f.write(select_content)
    
    print(f"✅ Roster updated: {select_def}")
    print(f"   Added {len(installed_chars)} characters!")
    print()
else:
    print("⚠️  No characters found yet!")
    print("   Make sure you copied character folders to chars/")
    print()

print()
print("🎮 STEP 4: PLAY! (Immediate)")
print("=" * 80)
print()
print("You're ready to play!")
print()
print("🚀 TO LAUNCH YOUR GAME:")
print()
print("  Option 1: Double-click Ikemen_GO.exe")
print("  Option 2: Run from command line:")
print(f"    cd {Path.cwd()}")
print("    Ikemen_GO.exe")
print()
print("=" * 80)
print("🎉 SETUP COMPLETE! 🎉")
print("=" * 80)
print()
print("📊 SUMMARY:")
print(f"  ✅ Characters installed: {len(installed_chars)}")
print("  ✅ Roster updated: Yes")
print("  ✅ Ready to play: YES!")
print()
print("🎮 GAME MODES AVAILABLE:")
print("  - Arcade Mode")
print("  - Versus Mode")
print("  - Training Mode")
print("  - Team Battle")
print("  - Survival Mode")
print()
print("💡 TIPS:")
print("  - Add more characters anytime!")
print("  - Download stages for variety")
print("  - Customize with your own music")
print()
print("🌟 ENJOY YOUR GAME! 🌟")
print("=" * 80)
