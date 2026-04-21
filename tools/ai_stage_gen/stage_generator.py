import sys
import os

# Add parent directory to path to allow importing sibling modules
sys.path.append(os.path.join(os.path.dirname(__file__), '..'))
from asset_gen import sd_client

STAGE_PRESETS = {
    "Cyberpunk City": "neon lights, futuristic skyscrapers, rain, night, cyberpunk city street",
    "Ancient Dojo": "traditional japanese dojo, tatami mats, wooden walls, cherry blossoms outside",
    "Lava Pit": "volcano interior, flowing lava, dark rocks, heat haze, intense fire",
    "Space Station": "sci-fi corridor, view of earth from window, metallic panels, stars",
    "Forest": "dense forest, sunlight filtering through trees, green grass, nature",
    "Underwater Base": "glass dome underwater, fish swimming outside, blue lighting, coral reef",
    "Desert Ruins": "sandy desert, crumbling stone pillars, pyramid in distance, bright sun",
    "Snowy Peak": "mountain top, snow storm, ice crystals, cold atmosphere, white clouds",
    "Haunted Mansion": "spooky house interior, cobwebs, dark shadows, purple lighting, ghosts",
    "Cyber Colosseum": "digital arena, holographic crowds, glowing grid floor, tron style",
    "Candy Land": "landscape made of sweets, chocolate river, lollipop trees, pink sky",
    "Void Dimension": "abstract purple void, floating geometric shapes, stars, cosmic energy",
    "Pirate Ship": "deck of a wooden ship, ocean waves, sails, cannons, sunset",
    "Wild West Town": "dusty street, saloon, wooden buildings, tumbleweed, noon sun",
    "Crystal Cave": "underground cavern, glowing crystals, stalactites, magical atmosphere",
    "Moon Base": "lunar surface, craters, black sky, earth in background, rover",
    "Steampunk Lab": "brass gears, steam pipes, victorian machinery, clockwork",
    "Jungle Temple": "aztec ruins, vines, waterfall, stone idols, tropical birds",
    "Gladiator Arena": "roman colosseum, sand floor, stone walls, cheering crowd",
    "Rooftop": "city skyline at sunset, water tower, vents, urban atmosphere",
    "Subway Station": "tiled walls, train tracks, graffiti, fluorescent lights",
    "Cathedral": "stained glass windows, stone pillars, altar, holy light",
    "Library": "bookshelves, scrolls, magic books, quiet atmosphere, dust motes",
    "Factory": "conveyor belts, robotic arms, industrial sparks, metal floor",
    "Beach": "white sand, palm trees, blue ocean, waves, sunny sky",
    "Volcano Rim": "crater edge, smoke, ash, magma, dark sky",
    "Sky Castle": "floating island, clouds, white marble, fantasy architecture",
    "Sewers": "green slime, pipes, dark tunnels, rats, grime",
    "Throne Room": "red carpet, gold throne, banners, royal atmosphere",
    "Graveyard": "tombstones, fog, dead trees, full moon, crows"
}

def generate_stage(name, prompt=None):
    print(f"Generating stage: {name}")
    
    # Check if name matches a preset
    if not prompt and name in STAGE_PRESETS:
        prompt = STAGE_PRESETS[name]
        print(f"  > Using Preset Prompt: {prompt}")
    elif not prompt:
        prompt = f"{name}, fighting game background"
    
    # Use absolute path based on this script's location
    base_dir = os.path.dirname(os.path.abspath(__file__))
    stage_dir = os.path.join(base_dir, "..", "..", "stages")
    os.makedirs(stage_dir, exist_ok=True)
    
    # 1. Generate Background Image
    bg_path = os.path.join(stage_dir, f"{name.replace(' ', '_')}_bg.png")
    if sd_client.check_connection():
        full_prompt = f"{prompt}, fighting game background, wide angle, high resolution, pixel art style, 16-bit"
        sd_client.generate_image(
            prompt=full_prompt,
            negative_prompt="characters, people, text, watermark, blur",
            width=1024, # SD 1.5 struggles with 1280, 1024x512 is safer for landscape
            height=512,
            output_path=bg_path
        )
    else:
        print("  ! SD API not found. Skipping image generation.")
    
    # 2. Generate DEF file
    def_path = os.path.join(stage_dir, f"{name.replace(' ', '_')}.def")
    build_stage_def(name, def_path)
    
    print(f"Stage {name} generation complete.")
    print(f"  - Image: {bg_path}")
    print(f"  - Def: {def_path}")
    print("  ! NOTE: You must compile the PNG into an SFF file named '{name}.sff' using Fighter Factory.")

def build_stage_def(name, path):
    safe_name = name.replace(' ', '_')
    content = f"""[Info]
name = "{name}"
displayname = "{name}"
versiondate = 11,25,2025
mugenversion = 1.1
author = "MUGEN X AI"

[Camera]
startx = 0
starty = 0
boundleft = -220
boundright = 220
boundhigh = -20
boundlow = 0
verticalfollow = .2
floortension = 0
tension = 50

[PlayerInfo]
p1startx = -70
p1starty = 0
p1facing = 1
p2startx = 70
p2starty = 0
p2facing = -1
leftbound  = -1000
rightbound =  1000
topbound  =  0
botbound  =  0

[Scaling]
topz     = 0
botz     = 50
topscale = 1
botscale = 1.2

[Bound]
screenleft = 15
screenright = 15

[StageInfo]
zoffset = 200
autoturn = 1
resetBG = 1
localcoord = 320, 240
xscale = 1
yscale = 1

[Shadow]
intensity = 96
color = 0,0,0
yscale = .3
fade.range = 0,0

[Reflection]
intensity = 0

[Music]
bgmusic = 
bgmvolume = 100

[BGdef]
spr = {safe_name}.sff
debugbg = 0

[BG 0]
type  = normal
spriteno = 0, 0
start = 0, 0
delta = 1, 1
mask = 0
velocity = 0, 0
tile = 0, 0
tilespacing = 0, 0
"""
    with open(path, "w") as f:
        f.write(content)

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "interactive":
        print("Interactive Stage Generator")
        print("Available Presets:")
        for k in STAGE_PRESETS.keys():
            print(f" - {k}")
            
        while True:
            choice = input("Enter Stage Name (or Preset): ")
            generate_stage(choice)
            if input("Generate another? (y/n): ") != "y": break
    else:
        generate_stage("Training Room", "grid background, digital, vr training room")
