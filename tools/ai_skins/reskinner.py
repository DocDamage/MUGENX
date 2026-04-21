import sys
import os

# Add parent directory to path to allow importing sibling modules
sys.path.append(os.path.join(os.path.dirname(__file__), '..'))
from asset_gen import sd_client

def generate_skin(char_name, style):
    print(f"=== AI RESKINNER: {char_name} -> {style} ===")
    
    char_dir = os.path.join("..", "..", "chars", char_name)
    if not os.path.exists(char_dir):
        print(f"Error: Character {char_name} not found.")
        return

    # Look for a reference sprite (usually 0,0 or similar)
    # For this mock, we'll assume we are generating a NEW sprite based on the prompt
    # because we don't have an actual sprite parser to extract images from SFF yet.
    
    output_dir = os.path.join(char_dir, "skins", style)
    os.makedirs(output_dir, exist_ok=True)
    
    prompt = f"{char_name} character, {style} style, alternate costume, fighting game sprite"
    
    print(f"  > Generating skin concept for {char_name} in {style} style...")
    
    if sd_client.check_connection():
        filename = f"{char_name}_{style}_concept.png"
        path = os.path.join(output_dir, filename)
        
        sd_client.generate_image(
            prompt=prompt,
            negative_prompt="blur, low quality",
            width=512,
            height=512,
            output_path=path
        )
        print(f"  > Skin concept saved to {path}")
    else:
        print("  ! SD API not found. Skipping generation.")

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "interactive":
        print("=== MUGEN X - SKIN GENERATOR ===")
        name = input("Enter Character Name: ")
        style = input("Enter Style (e.g. Cyberpunk, Zombie, 8-bit): ")
        generate_skin(name, style)
        input("\nPress Enter to close...")
    else:
        generate_skin("Ryu", "Cyberpunk")
