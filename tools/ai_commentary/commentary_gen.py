import os
import random

def generate_commentary_set(commentary_type, count=15):
    """Generate AI commentary lines for different match events"""
    
    # Create commentary directory
    commentary_dir = os.path.join("..", "..", "data", "commentary")
    os.makedirs(commentary_dir, exist_ok=True)
    
    # Commentary templates by type
    templates = {
        "intro": [
            "Ladies and gentlemen, welcome to the fight!",
            "This is going to be an epic showdown!",
            "The crowd is on their feet!",
            "Let's see what these fighters can do!",
            "It's time for the main event!",
        ],
        "combo": [
            "What a combo!",
            "Incredible execution!",
            "That's a devastating string!",
            "The hits just keep coming!",
            "Absolutely brutal!",
            "Frame-perfect!",
            "That's gotta hurt!",
            "Unbelievable combo!",
        ],
        "super": [
            "SUPER MOVE!",
            "Here comes the big one!",
            "This could be it!",
            "Maximum power!",
            "Ultimate technique!",
            "Game-changing super!",
            "What a spectacular display!",
        ],
        "ko": [
            "IT'S OVER!",
            "K.O.!",
            "What a finish!",
            "Absolutely demolished!",
            "Lights out!",
            "That's all she wrote!",
            "Victory!",
        ],
        "perfect": [
            "A PERFECT VICTORY!",
            "Flawless!",
            "Untouchable!",
            "Absolute domination!",
            "Not a scratch!",
            "Perfect execution!",
        ],
        "comeback": [
            "What a comeback!",
            "Unbelievable turnaround!",
            "They're not done yet!",
            "The momentum has shifted!",
            "Never count them out!",
        ],
        "timeout": [
            "Time's up!",
            "The clock has run out!",
            "It's going to the judges!",
            "What a close match!",
        ],
        "draw": [
            "It's a draw!",
            "Perfectly matched!",
            "Neither could claim victory!",
            "We need a rematch!",
        ]
    }
    
    lines = templates.get(commentary_type, ["Great match!"])
    
    # Save commentary
    filepath = os.path.join(commentary_dir, f"{commentary_type}_commentary.txt")
    
    with open(filepath, 'w') as f:
        f.write(f"=== {commentary_type.upper()} Commentary ===\n\n")
        for i, line in enumerate(lines, 1):
            f.write(f"{i}. {line}\n")
    
    print(f"    ✓ Saved to {filepath}")
