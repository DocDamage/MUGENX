"""
MUGEN X ENGINE - STORYBOARD GENERATOR
Creates Intro and Credits storyboards.
"""
from pathlib import Path

BASE_DIR = Path(r"d:\MUGENAI\MUGENX")
DATA_DIR = BASE_DIR / "data"

INTRO_TEMPLATE = """[Info]
name = "MUGEN X Intro"

[SceneDef]
spr = system.sff
startscene = 0

[Scene 0]
time = 300
fadein.time = 30
fadeout.time = 30
clearcolor = 0,0,0
layerall.pos = 0,0
layer0.anim = 0
layer0.offset = 640,360
bgm = sound/music/menu_theme.wav
bgm.loop = 0
text0.text = "IN A WORLD OF CHAOS..."
text0.font = 3,0,0
text0.pos = 640,300
text0.color = 255,255,255

[Scene 1]
time = 300
fadein.time = 30
fadeout.time = 30
clearcolor = 0,0,0
text0.text = "ONE ENGINE RISES..."
text0.font = 3,0,0
text0.pos = 640,300
text0.color = 255,0,0

[Scene 2]
time = 300
fadein.time = 30
fadeout.time = 30
clearcolor = 0,0,0
text0.text = "MUGEN X"
text0.font = 3,0,0
text0.pos = 640,360
text0.scale = 2,2
text0.color = 255,255,0
"""

CREDITS_TEMPLATE = """[Info]
name = "MUGEN X Credits"

[SceneDef]
spr = system.sff
startscene = 0

[Scene 0]
time = 1200
fadein.time = 60
fadeout.time = 60
clearcolor = 0,0,0
bgm = sound/music/victory_theme.wav
text0.text = "MUGEN X ENGINE\\n\\nCREATED BY\\nYOU & MUGEN AI\\n\\nPOWERED BY\\nIKEMEN GO\\n\\nSPECIAL THANKS\\nMUGEN COMMUNITY\\n\\nTHANK YOU FOR PLAYING!"
text0.font = 3,0,0
text0.pos = 640,720
text0.color = 255,255,255
; Scroll effect
window = 0,0, 1280,720
"""

def generate_storyboards():
    print("🎬 Generating Storyboards...")
    
    with open(DATA_DIR / "intro.def", "w") as f:
        f.write(INTRO_TEMPLATE)
    print("  ✅ Generated data/intro.def")
    
    with open(DATA_DIR / "credits.def", "w") as f:
        f.write(CREDITS_TEMPLATE)
    print("  ✅ Generated data/credits.def")

if __name__ == "__main__":
    generate_storyboards()
