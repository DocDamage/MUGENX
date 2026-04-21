import sys
import os

def create_sff_prep(char_name):
    print(f"=== SFF PREP TOOL: {char_name} ===")
    
    char_dir = os.path.join("..", "..", "chars", char_name)
    if not os.path.exists(char_dir):
        print(f"Error: Character {char_name} not found.")
        return

    # Look for PNGs
    sprites = [f for f in os.listdir(char_dir) if f.endswith(".png")]
    if not sprites:
        print("No sprites found to pack.")
        return
        
    # Generate sprites.def for sprmake2
    def_path = os.path.join(char_dir, "sprites.def")
    with open(def_path, "w") as f:
        f.write(f"[Output]\nFilename = {char_name}.sff\n\n")
        f.write("[Option]\nInputPng = 1\n\n")
        f.write("[Group]\n")
        
        for spr in sprites:
            # Assume format: 9000-0.png -> Group 9000, Index 0
            try:
                parts = spr.replace(".png", "").split("-")
                grp = parts[0]
                idx = parts[1]
                f.write(f"9000,0, {spr}, 0,0\n") # Placeholder axis 0,0
            except:
                f.write(f"9000,0, {spr}, 0,0\n")
                
    print(f"Generated {def_path}")
    print("To compile, run: sprmake2 -o <sff_name> <def_file>")
    
    # Try to run if sprmake2 exists in tools
    sprmake_path = os.path.join("..", "tools", "sprmake2.exe")
    if os.path.exists(sprmake_path):
        print("Found sprmake2! Compiling...")
        os.system(f"{sprmake_path} -o {os.path.join(char_dir, char_name+'.sff')} {def_path}")
    else:
        print("sprmake2.exe not found in tools/. Please download it to compile SFF.")

if __name__ == "__main__":
    if len(sys.argv) > 1:
        create_sff_prep(sys.argv[1])
    else:
        print("Usage: python sff_prep.py <CharName>")
