import sys
import os
import random

# === ARCHETYPE DEFINITIONS ===
ARCHETYPES = {
    "Shoto": {
        "life": 1000, "attack": 100, "defence": 100, "speed": 1.0,
        "moves": ["Fireball", "DragonPunch", "Tatsumaki"]
    },
    "Grappler": {
        "life": 1300, "attack": 120, "defence": 110, "speed": 0.8,
        "moves": ["CommandGrab", "Lariat", "BodySplash"]
    },
    "Speedster": {
        "life": 850, "attack": 90, "defence": 90, "speed": 1.3,
        "moves": ["DashAttack", "MultiKick", "Teleport"]
    },
    "Zoner": {
        "life": 950, "attack": 105, "defence": 95, "speed": 0.9,
        "moves": ["LongShot", "Trap", "AntiAirBeam"]
    },
    "Boss": {
        "life": 1500, "attack": 150, "defence": 150, "speed": 1.1,
        "moves": ["ScreenNuke", "TeleportGrab", "LaserEye"]
    },
    "Ninja": {
        "life": 900, "attack": 95, "defence": 85, "speed": 1.4,
        "moves": ["Shuriken", "LogSub", "IzunaDrop"]
    },
    "Samurai": {
        "life": 1050, "attack": 130, "defence": 90, "speed": 0.95,
        "moves": ["IaiSlash", "CounterStance", "HelmSplitter"]
    },
    "Cyborg": {
        "life": 1100, "attack": 110, "defence": 120, "speed": 1.0,
        "moves": ["RocketPunch", "OilSlick", "SelfDestruct"]
    },
    "Beast": {
        "life": 1200, "attack": 115, "defence": 100, "speed": 1.2,
        "moves": ["Bite", "Howl", "RollingAttack"]
    },
    "Puppet": {
        "life": 900, "attack": 80, "defence": 80, "speed": 1.0,
        "moves": ["SummonDoll", "DollLaser", "SwapPlace"]
    },
    "Joke": {
        "life": 500, "attack": 50, "defence": 50, "speed": 0.5,
        "moves": ["Trip", "Taunt", "Confetti"]
    },
    "Summoner": {
        "life": 850, "attack": 90, "defence": 80, "speed": 1.1,
        "moves": ["CallBeast", "SpiritBomb", "DimensionRift"]
    },
    "ShapeShifter": {
        "life": 1000, "attack": 100, "defence": 100, "speed": 1.2,
        "moves": ["MorphStrike", "Mimic", "SlimePuddle"]
    },
    "TimeMage": {
        "life": 900, "attack": 85, "defence": 95, "speed": 1.0,
        "moves": ["Slow", "Haste", "StopWatch"]
    },
    "Vampire": {
        "life": 1100, "attack": 110, "defence": 100, "speed": 1.3,
        "moves": ["LifeDrain", "BatForm", "MistStep"]
    },
    "Paladin": {
        "life": 1400, "attack": 110, "defence": 140, "speed": 0.7,
        "moves": ["HolyLight", "ShieldBash", "Heal"]
    },
    "Monk": {
        "life": 1100, "attack": 105, "defence": 105, "speed": 1.1,
        "moves": ["PalmStrike", "Meditation", "HundredFists"]
    },
    "Pirate": {
        "life": 1050, "attack": 115, "defence": 95, "speed": 1.0,
        "moves": ["PistolShot", "CutlassSlash", "CannonFire"]
    },
    "Cowboy": {
        "life": 950, "attack": 110, "defence": 90, "speed": 1.0,
        "moves": ["Revolver", "Lasso", "Dynamite"]
    },
    "Alien": {
        "life": 900, "attack": 120, "defence": 80, "speed": 1.4,
        "moves": ["AcidSpit", "Probe", "UFOAbduct"]
    },
    "Zombie": {
        "life": 1600, "attack": 130, "defence": 50, "speed": 0.4,
        "moves": ["Bite", "Vomit", "LimbThrow"]
    },
    "Angel": {
        "life": 1000, "attack": 100, "defence": 120, "speed": 1.2,
        "moves": ["DivineRay", "Flight", "Resurrection"]
    },
    "Demon": {
        "life": 1200, "attack": 140, "defence": 90, "speed": 1.1,
        "moves": ["Hellfire", "SoulSteal", "DarkPortal"]
    },
    "Glitch": {
        "life": 800, "attack": 150, "defence": 50, "speed": 2.0,
        "moves": ["Corrupt", "LagSpike", "Crash"]
    },
    "Slime": {
        "life": 1300, "attack": 80, "defence": 130, "speed": 0.6,
        "moves": ["Absorb", "Split", "Bounce"]
    },
    "Ghost": {
        "life": 700, "attack": 90, "defence": 150, "speed": 1.1,
        "moves": ["Invis", "Possess", "Scare"]
    },
    "Soldier": {
        "life": 1000, "attack": 105, "defence": 105, "speed": 1.0,
        "moves": ["Grenade", "KnifeCombo", "AirStrike"]
    },
    "Wizard": {
        "life": 800, "attack": 130, "defence": 70, "speed": 0.9,
        "moves": ["Fireball", "LightningBolt", "IceWall"]
    },
    "Bard": {
        "life": 950, "attack": 85, "defence": 95, "speed": 1.1,
        "moves": ["SongOfPower", "Lullaby", "SonicChord"]
    },
    "Necromancer": {
        "life": 850, "attack": 110, "defence": 80, "speed": 0.8,
        "moves": ["RaiseDead", "BoneSpear", "Curse"]
    },
    "Druid": {
        "life": 1100, "attack": 100, "defence": 110, "speed": 1.0,
        "moves": ["Entangle", "BearForm", "ThornWhip"]
    },
    "Boxer": {
        "life": 1100, "attack": 125, "defence": 100, "speed": 1.1,
        "moves": ["Uppercut", "JabCombo", "DempseyRoll"]
    },
    "Wrestler": {
        "life": 1400, "attack": 115, "defence": 120, "speed": 0.7,
        "moves": ["Dropkick", "Suplex", "ChairShot"]
    },
    "Psychic": {
        "life": 900, "attack": 120, "defence": 90, "speed": 1.0,
        "moves": ["MindBlast", "Telekinesis", "FutureSight"]
    },
    "Archer": {
        "life": 900, "attack": 105, "defence": 85, "speed": 1.2,
        "moves": ["ArrowRain", "EagleEye", "TrapShot"]
    },
    "Knight": {
        "life": 1200, "attack": 110, "defence": 130, "speed": 0.8,
        "moves": ["Charge", "ShieldBlock", "SwordSpin"]
    },
    "Assassin": {
        "life": 800, "attack": 140, "defence": 70, "speed": 1.5,
        "moves": ["Backstab", "PoisonDart", "SmokeBomb"]
    },
    "Giant": {
        "life": 2000, "attack": 160, "defence": 80, "speed": 0.3,
        "moves": ["Stomp", "BoulderThrow", "Roar"]
    },
    "Fairy": {
        "life": 600, "attack": 70, "defence": 60, "speed": 1.6,
        "moves": ["Dust", "Shrink", "Fly"]
    },
    "Dragon": {
        "life": 1800, "attack": 150, "defence": 140, "speed": 0.9,
        "moves": ["FireBreath", "TailWhip", "Flight"]
    },
    "Robot": {
        "life": 1200, "attack": 110, "defence": 130, "speed": 0.8,
        "moves": ["Laser", "Rocket", "Scan"]
    }
}

def generate_character(name, style, archetype_name, prompt):
    print(f"=== NEURAL CHARACTER GENERATOR 2.0: {name} ({style}/{archetype_name}) ===")
    
    # 1. Select Archetype
    archetype = ARCHETYPES.get(archetype_name, ARCHETYPES["Shoto"])
    print(f"  > Loaded Archetype: {archetype_name} {archetype}")
    
    # 2. Create Directories
    char_dir = os.path.join("chars", name)
    if not os.path.exists(char_dir):
        os.makedirs(char_dir)
        print(f"  > Created directory: {char_dir}")
        
    # 3. Build .def file
    build_def_file(name, char_dir, style)
    
    # 4. Build .cns file (Stats)
    build_cns_file(name, char_dir, style, archetype)
    
    # 5. Build .cmd file (Moveset)
    build_cmd_file(name, char_dir, archetype)
    
    # 6. Build .air file (Animations - Mock)
    build_air_file(name, char_dir)
    
    # 7. Generate Sprites (SD Integration)
    # Mocking sprite generation for now to save API calls in this loop
    # In real usage, we would call sd_client here
    print(f"  > Generating Sprites for {name} using style {style}...")
    
    print(f"=== CHARACTER GENERATION COMPLETE: {name} ===")

def build_def_file(name, char_dir, style):
    content = f"""
[Info]
name = "{name}"
displayname = "{name}"
versiondate = "11/25/2025"
mugenversion = "1.0"
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

[MUGEN X]
engineType = "{style}"
"""
    with open(os.path.join(char_dir, f"{name}.def"), "w") as f:
        f.write(content)
    print(f"  > Built {name}.def")

def build_cns_file(name, char_dir, style, archetype):
    content = f"""
[Data]
life = {archetype['life']}
attack = {archetype['attack']}
defence = {archetype['defence']}
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
walk.fwd  = {2.4 * archetype['speed']}
walk.back = {-2.2 * archetype['speed']}
run.fwd  = {4.6 * archetype['speed']}
run.back = {-4.5 * archetype['speed']}
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
    with open(os.path.join(char_dir, f"{name}.cns"), "w") as f:
        f.write(content)
    print(f"  > Built {name}.cns")

def build_cmd_file(name, char_dir, archetype):
    # Basic CMD template
    moves = archetype['moves']
    content = f"""
[Command]
name = "high_jump"
command = $D, $U
time = 10

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "special_1"
command = ~D, DF, F, x
time = 15

[Command]
name = "special_2"
command = ~D, DB, B, y
time = 15

[Command]
name = "super_1"
command = ~D, DF, F, D, DF, F, x
time = 30

; --- AI LOGIC ---
[Statedef -1]

[State -1, Special 1 ({moves[0]})]
type = ChangeState
value = 1000
triggerall = command = "special_1"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Special 2 ({moves[1]})]
type = ChangeState
value = 1100
triggerall = command = "special_2"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Super ({moves[2]})]
type = ChangeState
value = 3000
triggerall = command = "super_1"
trigger1 = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
"""
    with open(os.path.join(char_dir, f"{name}.cmd"), "w") as f:
        f.write(content)
    print(f"  > Built {name}.cmd")

def build_air_file(name, char_dir):
    content = """
; Mock AIR file
[Begin Action 0]
0,0, 0,0, 10
"""
    with open(os.path.join(char_dir, f"{name}.air"), "w") as f:
        f.write(content)
    print(f"  > Built {name}.air")

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "interactive":
        print("Interactive Mode")
        while True:
            name = input("Enter Character Name: ")
            style = input("Enter Style (SF2/MVC/AI): ")
            archetype = input("Enter Archetype (Shoto/Grappler/etc): ")
            prompt = input("Enter Visual Prompt: ")
            generate_character(name, style, archetype, prompt)
            if input("Create another? (y/n): ") != "y": break
    else:
        # Test Run
        generate_character("RyuClone", "SF2", "Shoto", "karate fighter")
