import os
import random

def generate_trash_talk(character, count=20):
    """Generate trash talk lines for a character"""
    
    # Create trash talk directory
    trash_dir = os.path.join("..", "..", "data", "trash_talk")
    os.makedirs(trash_dir, exist_ok=True)
    
    # Trash talk templates
    templates = [
        "Is that all you've got?",
        "You call that a punch?",
        "I've seen better fighters at the arcade!",
        "You're going down!",
        "Prepare to lose!",
        "This will be over quickly.",
        "You're out of your league!",
        "Time to end this!",
        "You can't touch me!",
        "Pathetic!",
        "Too slow!",
        "Is that your best?",
        "You're finished!",
        "Give up now!",
        "You never stood a chance!",
        "I'm just getting started!",
        "You're making this too easy!",
        "Weak!",
        "Try harder!",
        "You bore me.",
        "Next!",
        "You're done!",
        "Game over!",
        "See you later!",
        "Better luck next time!",
    ]
    
    # Select random lines
    selected = random.sample(templates, min(count, len(templates)))
    
    # Save trash talk
    filepath = os.path.join(trash_dir, f"{character}_trash_talk.txt")
    
    with open(filepath, 'w') as f:
        f.write(f"=== Trash Talk for {character} ===\n\n")
        for i, line in enumerate(selected, 1):
            f.write(f"{i}. {line}\n")
    
    print(f"    ✓ Saved to {filepath}")
