import sys
import os
import re

# Add parent directory to path to allow importing sibling modules
sys.path.append(os.path.join(os.path.dirname(__file__), '..'))
from ai_character_gen import generator

def fuse_characters(char1, char2, fusion_name):
    print(f"=== FUSION LAB: {char1} + {char2} -> {fusion_name} ===")
    
    # 1. Analyze Parents (Get Stats)
    stats1 = get_char_stats(char1)
    stats2 = get_char_stats(char2)
    
    # 2. Calculate Fused Stats
    fused_stats = {
        "life": int((stats1["life"] + stats2["life"]) / 2),
        "attack": int((stats1["attack"] + stats2["attack"]) / 2),
        "defence": int((stats1["defence"] + stats2["defence"]) / 2)
    }
    print(f"  > Fused Stats: Life={fused_stats['life']}, Atk={fused_stats['attack']}, Def={fused_stats['defence']}")
    
    # 3. Generate Fused Assets
    # We use the AI generator to create a visual fusion
    prompt = f"A fusion character combining {char1} and {char2}, hybrid design"
    print(f"  > Generating visual fusion with prompt: '{prompt}'")
    
    # Reuse the generator logic
    # Step 1: Sprites
    generator.generate_sprites(fusion_name, {}, prompt)
    
    # Step 2: Build Files
    generator.build_def_file(fusion_name, "AI") # Fusions default to AI engine
    generator.build_cmd_file(fusion_name, {})
    generator.build_air_file(fusion_name, {})
    
    # Step 3: Custom CNS with fused stats
    build_fused_cns(fusion_name, fused_stats)
    
    print(f"Fusion Complete! Character '{fusion_name}' created.")

def get_char_stats(char_name):
    # Default stats
    stats = {"life": 1000, "attack": 100, "defence": 100}
    
    cns_path = os.path.join("..", "..", "chars", char_name, f"{char_name}.cns")
    if os.path.exists(cns_path):
        try:
            with open(cns_path, "r", errors='ignore') as f:
                content = f.read()
                
            # Regex to find stats
            life_match = re.search(r"life\s*=\s*(\d+)", content, re.IGNORECASE)
            if life_match: stats["life"] = int(life_match.group(1))
            
            atk_match = re.search(r"attack\s*=\s*(\d+)", content, re.IGNORECASE)
            if atk_match: stats["attack"] = int(atk_match.group(1))
            
            def_match = re.search(r"defence\s*=\s*(\d+)", content, re.IGNORECASE)
            if def_match: stats["defence"] = int(def_match.group(1))
            
            print(f"  > Read stats for {char_name}: {stats}")
        except Exception as e:
            print(f"  ! Error reading {char_name}: {e}")
    else:
        print(f"  ! Could not find {cns_path}, using default stats.")
        
    return stats

def build_fused_cns(name, stats):
    print("  > Building fused .cns file...")
    char_dir = os.path.join("..", "..", "chars", name)
    cns_path = os.path.join(char_dir, f"{name}.cns")
    
    content = f"""[Data]
life = {stats['life']}
attack = {stats['attack']}
defence = {stats['defence']}
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
runjump.back = -2.55,-8.1
runjump.fwd = 4,-8.1
airjump.neu = 0,-8.1
airjump.back = -2.55
airjump.fwd = 2.5

[Movement]
airjump.num = 1
airjump.height = 35
yaccel = .44
stand.friction = .85
crouch.friction = .82
"""
    with open(cns_path, "w") as f:
        f.write(content)

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "interactive":
        print("=== MUGEN X - FUSION LAB ===")
        c1 = input("Enter Character 1 Name: ")
        c2 = input("Enter Character 2 Name: ")
        fn = input(f"Enter Fusion Name (Default: {c1}_{c2}): ")
        if not fn: fn = f"{c1}_{c2}"
        fuse_characters(c1, c2, fn)
        input("\nPress Enter to close...")
    elif len(sys.argv) < 3:
        print("Usage: python fusion.py <Char1> <Char2> [FusionName]")
    else:
        fn = sys.argv[3] if len(sys.argv) > 3 else f"{sys.argv[1]}_{sys.argv[2]}"
        fuse_characters(sys.argv[1], sys.argv[2], fn)
