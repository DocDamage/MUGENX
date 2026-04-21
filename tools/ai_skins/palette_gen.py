import os
import random

def generate_palette(character, theme):
    """Generate color palette/skin for a character"""
    
    # Color palettes by theme
    palettes = {
        "Shadow": {"primary": "#1a1a2e", "secondary": "#16213e", "accent": "#0f3460"},
        "Gold": {"primary": "#ffd700", "secondary": "#ffed4e", "accent": "#ffc107"},
        "Ice": {"primary": "#a8dadc", "secondary": "#457b9d", "accent": "#1d3557"},
        "Fire": {"primary": "#ff6b6b", "secondary": "#ee5a6f", "accent": "#c44569"},
        "Neon": {"primary": "#ff006e", "secondary": "#8338ec", "accent": "#3a86ff"},
        "Retro": {"primary": "#ff9770", "secondary": "#fdca40", "accent": "#e4572e"},
        "Zombie": {"primary": "#7f8c8d", "secondary": "#95a5a6", "accent": "#34495e"},
        "Cyber": {"primary": "#00f5ff", "secondary": "#00d9ff", "accent": "#0099cc"},
    }
    
    palette = palettes.get(theme, palettes["Shadow"])
    
    # Create palettes directory for character
    char_dir = os.path.join("..", "..", "chars", character, "palettes")
    os.makedirs(char_dir, exist_ok=True)
    
    # Save palette file
    filepath = os.path.join(char_dir, f"{theme.lower()}.pal")
    
    with open(filepath, 'w') as f:
        f.write(f"; {theme} Palette for {character}\n")
        f.write(f"; Primary: {palette['primary']}\n")
        f.write(f"; Secondary: {palette['secondary']}\n")
        f.write(f"; Accent: {palette['accent']}\n")
        f.write("\n[Palette]\n")
        f.write(f"color1 = {palette['primary']}\n")
        f.write(f"color2 = {palette['secondary']}\n")
        f.write(f"color3 = {palette['accent']}\n")
    
    print(f"    ✓ Created {theme} palette for {character}")
