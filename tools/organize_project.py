"""
MUGEN X ENGINE - PROJECT ORGANIZER
Moves scripts to /tools and docs to /docs.
"""
import os
import shutil
from pathlib import Path

BASE_DIR = Path(r"d:\MUGENAI\MUGENX")
TOOLS_DIR = BASE_DIR / "tools"
DOCS_DIR = BASE_DIR / "docs"

def organize():
    print("🧹 ORGANIZING PROJECT...")
    
    # Create Dirs
    TOOLS_DIR.mkdir(exist_ok=True)
    DOCS_DIR.mkdir(exist_ok=True)
    
    # Move Python Scripts
    # We exclude this script itself until the end
    for f in BASE_DIR.glob("*.py"):
        if f.name == "organize_project.py": continue
        
        print(f"  -> Moving {f.name} to tools/")
        try:
            shutil.move(str(f), str(TOOLS_DIR / f.name))
        except Exception as e:
            print(f"     Error: {e}")

    # Move Markdown Docs
    for f in BASE_DIR.glob("*.md"):
        print(f"  -> Moving {f.name} to docs/")
        try:
            shutil.move(str(f), str(DOCS_DIR / f.name))
        except Exception as e:
            print(f"     Error: {e}")
            
    print("✅ Project Organized!")

if __name__ == "__main__":
    organize()
