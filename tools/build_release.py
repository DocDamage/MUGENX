"""
MUGEN X ENGINE - RELEASE BUILDER
Creates a clean, distributable ZIP of the game.
"""
import os
import zipfile
import shutil
from pathlib import Path
from datetime import datetime

BASE_DIR = Path(r"d:\MUGENAI\MUGENX")
BUILD_DIR = BASE_DIR / "builds"
EXCLUDES = [
    "tools", "docs", ".git", ".vscode", "__pycache__", 
    "characters that need to be created", "zipped_characters",
    "builds", "dev_log.txt", "ai_output.txt"
]

def build_release():
    print("📦 BUILDING GOLDEN MASTER RELEASE...")
    BUILD_DIR.mkdir(exist_ok=True)
    
    timestamp = datetime.now().strftime("%Y%m%d_%H%M")
    zip_name = f"MUGEN_X_ENGINE_v1.0_{timestamp}.zip"
    zip_path = BUILD_DIR / zip_name
    
    with zipfile.ZipFile(zip_path, 'w', zipfile.ZIP_DEFLATED) as zipf:
        for root, dirs, files in os.walk(BASE_DIR):
            # Check excludes
            rel_root = os.path.relpath(root, BASE_DIR)
            if any(ex in rel_root.split(os.sep) for ex in EXCLUDES):
                continue
                
            for file in files:
                if any(file.endswith(ext) for ext in ['.py', '.md', '.json']):
                    # Skip dev scripts in root if any remain
                    if rel_root == ".": continue
                    
                file_path = os.path.join(root, file)
                arcname = os.path.join(rel_root, file)
                
                print(f"  Adding: {arcname}")
                zipf.write(file_path, arcname)
                
    print(f"\n🎉 BUILD COMPLETE: {zip_path}")
    print(f"   Size: {os.path.getsize(zip_path) / (1024*1024):.2f} MB")

if __name__ == "__main__":
    build_release()
