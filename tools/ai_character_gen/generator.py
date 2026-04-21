# MUGEN X - AI Character Generator
# Phase 3

import os
import sys
import os

# Add parent directory to path to allow importing sibling modules
sys.path.append(os.path.join(os.path.dirname(__file__), '..'))
from asset_gen import sd_client

def generate_character(name, style, prompt):
    print(f"Generating character: {name} with style {style}")
    
    # Step 1: Generate Lore & Moveset
    moveset = generate_moveset(name, style, prompt)
    
    # Step 2: Generate Sprites
    sprites = generate_sprites(name, moveset, prompt) # Pass prompt
    
    # Step 3: Build MUGEN Files
    build_def_file(name, style)
    build_air_file(name, moveset)
    build_cmd_file(name, moveset)
    build_cns_file(name, moveset, style)
    
    print(f"Character {name} generation complete.")

def generate_moveset(name, style, prompt):
    print("  > Generating moveset...")
    # TODO: Connect to LLM for moveset generation
    return {}

def generate_sprites(name, moveset, base_prompt):
    print("  > Generating sprites...")
    
    # Create character folder
    char_dir = os.path.join("..", "..", "chars", name)
    os.makedirs(char_dir, exist_ok=True)
    
    # Define sprite types needed
    sprite_reqs = [
        ("idle", "standing idle pose, fighting stance, side view"),
        ("walk", "walking forward, fighting game sprite, side view"),
        ("punch", "throwing a punch, fighting game sprite, side view"),
        ("kick", "kicking, fighting game sprite, side view"),
        ("hit", "taking damage, pain, fighting game sprite, side view"),
        ("ko", "knocked out on ground, fighting game sprite, side view"),
        ("portrait", "close up face portrait, high quality")
    ]
    
    generated_files = []
    
    if sd_client.check_connection():
        for pose, desc in sprite_reqs:
            full_prompt = f"{base_prompt}, {desc}, pixel art style, 16-bit, clean background"
            filename = f"{name}_{pose}.png"
            path = os.path.join(char_dir, filename)
            
            sd_client.generate_image(
                prompt=full_prompt, 
                negative_prompt="blur, fuzzy, 3d render, photo, realistic, text, watermark",
                width=512, 
                height=512, 
                output_path=path
            )
            generated_files.append(path)
    else:
        print("  ! SD API not found. Skipping sprite generation.")
        
    return generated_files

def build_def_file(name, style):
    print("  > Building .def file...")
    char_dir = os.path.join("..", "..", "chars", name)
    def_path = os.path.join(char_dir, f"{name}.def")
    
    content = f"""[Info]
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

[Palette Keymap]
x = 1
y = 2
z = 3
a = 4
b = 5
c = 6

[MUGEN X]
engineType = "{style}"
"""
    with open(def_path, "w") as f:
        f.write(content)
    print(f"    - Created {def_path}")

def build_air_file(name, moveset):
    print("  > Building .air file...")
    char_dir = os.path.join("..", "..", "chars", name)
    air_path = os.path.join(char_dir, f"{name}.air")
    
    # Note: In a real implementation, we would map the generated sprites to group/index here.
    # For now, we assume a standard sprite sheet layout or placeholders.
    
    content = """; Animation file for {name}

; Stand
[Begin Action 0]
0,0, 0,0, 10
0,1, 0,0, 10
0,2, 0,0, 10
0,1, 0,0, 10

; Walk
[Begin Action 20]
20,0, 0,0, 5
20,1, 0,0, 5
20,2, 0,0, 5
20,3, 0,0, 5
20,4, 0,0, 5
20,5, 0,0, 5

; Jump Start
[Begin Action 40]
40,0, 0,0, 4

; Jump Up
[Begin Action 41]
40,1, 0,0, 1

; Jump Down
[Begin Action 42]
40,2, 0,0, 1

; Jump Land
[Begin Action 43]
40,0, 0,0, 2

; Run Fwd
[Begin Action 100]
100,0, 0,0, 5
100,1, 0,0, 5
100,2, 0,0, 5
100,3, 0,0, 5

; Light Punch
[Begin Action 200]
200,0, 0,0, 3
200,1, 0,0, 3, Clsn1: [0,0, 40,40]
200,2, 0,0, 6
200,0, 0,0, 4

; Heavy Punch
[Begin Action 210]
210,0, 0,0, 4
210,1, 0,0, 4
210,2, 0,0, 4, Clsn1: [0,0, 50,50]
210,3, 0,0, 8
210,0, 0,0, 6

; Light Kick
[Begin Action 230]
230,0, 0,0, 3
230,1, 0,0, 3, Clsn1: [0,0, 40,40]
230,2, 0,0, 6
230,0, 0,0, 4

; Heavy Kick
[Begin Action 240]
240,0, 0,0, 4
240,1, 0,0, 4
240,2, 0,0, 4, Clsn1: [0,0, 50,50]
240,3, 0,0, 8
240,0, 0,0, 6
"""
    with open(air_path, "w") as f:
        f.write(content)
    print(f"    - Created {air_path}")

def build_cmd_file(name, moveset):
    print("  > Building .cmd file...")
    char_dir = os.path.join("..", "..", "chars", name)
    cmd_path = os.path.join(char_dir, f"{name}.cmd")
    
    content = """[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 1

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "recovery"
command = x+y, x+z, y+z, a+b, a+c, b+c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Statedef -1]

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

; Light Punch
[State -1, Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; Heavy Punch
[State -1, Heavy Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; Light Kick
[State -1, Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; Heavy Kick
[State -1, Heavy Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
"""
    with open(cmd_path, "w") as f:
        f.write(content)
    print(f"    - Created {cmd_path}")

def build_cns_file(name, moveset, style):
    print("  > Building .cns file...")
    char_dir = os.path.join("..", "..", "chars", name)
    cns_path = os.path.join(char_dir, f"{name}.cns")
    
    # Base stats
    life = 1000
    attack = 100
    defence = 100
    
    # Style adjustments
    if style == "SF2":
        life = 1000
        attack = 100
        defence = 100
    elif style == "MVC":
        life = 1100
        attack = 90 # Lower base damage for combos
        defence = 90
    elif style == "AI":
        life = 1200 # Boss-like stats
        attack = 120
        defence = 120
        
    content = f"""[Data]
life = {life}
attack = {attack}
defence = {defence}
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
    print(f"    - Created {cns_path}")

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "interactive":
        print("=== MUGEN X - AI CHARACTER MAKER ===")
        name = input("Enter Character Name: ")
        style = input("Enter Style (SF2/MVC/AI): ")
        prompt = input("Enter Visual Description: ")
        generate_character(name, style, prompt)
        input("\nPress Enter to close...")
    elif len(sys.argv) < 4:
        print("Usage: python generator.py <Name> <Style> <Prompt>")
    else:
        generate_character(sys.argv[1], sys.argv[2], sys.argv[3])
