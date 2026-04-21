"""
MUGEN X ENGINE - VISUAL AI BACKEND
Generates Sprites, Weapons, and Stages using Stable Diffusion (Tiny).
"""
import sys
import torch
from pathlib import Path
from diffusers import DiffusionPipeline

BASE_DIR = Path(r"d:\MUGENAI\MUGENX")
OUTPUT_DIR = BASE_DIR / "generated_assets"

# We use a tiny, fast model optimized for pixel art if possible, 
# or a standard small SD model. "TAASD" or "Tiny-SD" is good for speed.
MODEL_ID = "segmind/tiny-sd" 

def generate_image(prompt, type_key, name):
    print(f"🎨 AI PAINTING: {prompt}...")
    
    try:
        # Load Pipeline
        pipe = DiffusionPipeline.from_pretrained(MODEL_ID, torch_dtype=torch.float32)
        
        # Use GPU if available, else CPU (slow)
        if torch.cuda.is_available():
            pipe = pipe.to("cuda")
        else:
            # CPU mode is slow, warn user
            print("⚠️  No GPU detected. Running on CPU (this will be slow).")
            pipe = pipe.to("cpu")

        # Enhance prompt for pixel art style
        full_prompt = f"pixel art, {prompt}, 16-bit, fighting game sprite, white background, high quality"
        if type_key == "stage":
            full_prompt = f"pixel art, fighting game background, {prompt}, wide shot, 16-bit, retro style"

        # Generate
        image = pipe(full_prompt, num_inference_steps=20).images[0]
        
        # Save
        save_path = OUTPUT_DIR / type_key
        save_path.mkdir(parents=True, exist_ok=True)
        filename = f"{name}_{type_key}.png"
        image.save(save_path / filename)
        
        return f"SUCCESS: Saved to generated_assets/{type_key}/{filename}"
        
    except Exception as e:
        return f"ERROR: Image Gen Failed - {e}"

if __name__ == "__main__":
    OUTPUT_DIR.mkdir(exist_ok=True)
    
    if len(sys.argv) < 4:
        print("Usage: image_gen.py [sprite|weapon|stage] [name] [desc]")
    else:
        print(generate_image(sys.argv[3], sys.argv[1], sys.argv[2]))
