import os
import random

def generate_story_arc(title, characters, theme):
    """Generate a story arc with dialogue between characters"""
    
    # Create story directory
    story_dir = os.path.join("..", "..", "data", "story")
    os.makedirs(story_dir, exist_ok=True)
    
    # Generate dialogue based on theme
    dialogue_templates = {
        "rivalry": [
            f"{characters[0]}: We meet again, {characters[1]}.",
            f"{characters[1]}: This time, I won't lose!",
            f"{characters[0]}: Your determination is admirable, but futile.",
            f"{characters[1]}: We'll see about that!",
        ],
        "revenge": [
            f"{characters[0]}: You took everything from me!",
            f"{characters[1]}: You were weak. You deserved it.",
            f"{characters[0]}: Today, I reclaim my honor!",
            f"{characters[1]}: Then come and try!",
        ],
        "power": [
            f"{characters[0]}: I've surpassed my limits!",
            f"{characters[1]}: Impossible! My power is absolute!",
            f"{characters[0]}: Let's settle this once and for all!",
            f"{characters[1]}: Agreed. No holding back!",
        ],
        "friendship": [
            f"{characters[0]}: Hey! Long time no see!",
            f"{characters[1]}: Good to see you! Want to spar?",
            f"{characters[0]}: You know it! Let's go!",
            f"{characters[1]}: May the best fighter win!",
        ],
        "destiny": [
            f"{characters[0]}: Our fates have been intertwined since the beginning.",
            f"{characters[1]}: This battle was inevitable.",
            f"{characters[0]}: Only one of us can fulfill the prophecy.",
            f"{characters[1]}: Then let destiny decide!",
        ]
    }
    
    dialogue = dialogue_templates.get(theme, dialogue_templates["rivalry"])
    
    # Save story arc
    safe_title = title.replace(" ", "_").lower()
    filepath = os.path.join(story_dir, f"{safe_title}.txt")
    
    with open(filepath, 'w') as f:
        f.write(f"=== {title} ===\n\n")
        f.write(f"Theme: {theme.upper()}\n")
        f.write(f"Characters: {', '.join(characters)}\n\n")
        f.write("--- DIALOGUE ---\n\n")
        for line in dialogue:
            f.write(f"{line}\n")
    
    print(f"    ✓ Saved to {filepath}")
