"""
MUGEN X ENGINE - THUMBNAIL GENERATOR
Creates placeholder thumbnails for stages.
"""
from pathlib import Path
from PIL import Image, ImageDraw, ImageFont # Requires Pillow

BASE_DIR = Path(r"d:\MUGENAI\MUGENX")
STAGES_DIR = BASE_DIR / "stages"

def generate_thumbnails():
    print("🖼️  Generating Stage Thumbnails...")
    
    for root, dirs, files in os.walk(STAGES_DIR):
        for f in files:
            if f.endswith(".def"):
                stage_name = f[:-4]
                thumb_path = Path(root) / f"{stage_name}.png"
                
                if not thumb_path.exists():
                    # Create simple image with text
                    img = Image.new('RGB', (320, 240), color = (20, 20, 40))
                    d = ImageDraw.Draw(img)
                    d.text((10,100), stage_name, fill=(255,255,255))
                    img.save(thumb_path)
                    print(f"  ✅ Created thumb for {stage_name}")

if __name__ == "__main__":
    # Check for PIL
    try:
        import PIL
        generate_thumbnails()
    except ImportError:
        print("❌ Pillow library not found. Install with: pip install Pillow")
