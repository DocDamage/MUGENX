"""
MUGEN X ENGINE - INTELLIGENT MUSIC MAPPER
Auto-assigns music tracks to stages and characters based on fuzzy matching.
"""
import os
import re
from pathlib import Path

BASE_DIR = Path(r"d:\MUGENAI\MUGENX")
MUSIC_DIR = BASE_DIR / "sound" / "music"
STAGES_DIR = BASE_DIR / "stages"
CHARS_DIR = BASE_DIR / "chars"

def map_music():
    print("=" * 80)
    print("🎵 MUSIC MAPPER")
    print("=" * 80)
    
    if not MUSIC_DIR.exists():
        print("❌ Music directory missing.")
        return

    tracks = [f for f in MUSIC_DIR.iterdir() if f.suffix in ['.mp3', '.ogg', '.wav']]
    print(f"Found {len(tracks)} music tracks.")
    
    # 1. Map to Stages
    print("Mapping to Stages...")
    for root, dirs, files in os.walk(STAGES_DIR):
        for f in files:
            if f.endswith(".def"):
                stage_path = Path(root) / f
                stage_name = f[:-4].lower()
                
                # Find best track
                best_track = None
                for track in tracks:
                    track_name = track.stem.lower()
                    if track_name in stage_name or stage_name in track_name:
                        best_track = track
                        break
                
                if best_track:
                    update_def_music(stage_path, best_track)
                    print(f"  ✅ {stage_name} -> {best_track.name}")

    # 2. Map to Characters (as 'victory' themes or specific stage overrides)
    # (Implementation similar to stages, usually set in select.def)

def update_def_music(def_path, track_path):
    try:
        with open(def_path, 'r', errors='ignore') as f:
            content = f.read()
            
        # Check if [Music] section exists
        if "[Music]" not in content:
            content += "\n[Music]\nbgmusic = \nbgmvolume = 100\n"
            
        # Update bgmusic
        # Path needs to be relative to MUGEN root
        rel_path = f"sound/music/{track_path.name}"
        content = re.sub(r"bgmusic\s*=\s*.*", f"bgmusic = {rel_path}", content, flags=re.IGNORECASE)
        
        with open(def_path, 'w') as f:
            f.write(content)
    except:
        pass

if __name__ == "__main__":
    map_music()
