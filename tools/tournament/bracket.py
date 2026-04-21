import sys
import os
import random
import math

def generate_bracket():
    print("=== TOURNAMENT BRACKET GENERATOR ===")
    
    char_dir = os.path.join("..", "..", "chars")
    chars = [d for d in os.listdir(char_dir) if os.path.isdir(os.path.join(char_dir, d))]
    
    if len(chars) < 2:
        print("Not enough characters for a tournament.")
        return
        
    # Shuffle and pick 8 or 16
    random.shuffle(chars)
    size = 8 if len(chars) >= 8 else 4
    if len(chars) < 4: size = 2
    
    participants = chars[:size]
    print(f"Generating {size}-Man Tournament Bracket...")
    
    print("\n--- ROUND 1 ---")
    matches = []
    for i in range(0, size, 2):
        p1 = participants[i]
        p2 = participants[i+1]
        print(f"Match {i//2 + 1}: {p1} vs {p2}")
        matches.append((p1, p2))
        
    # In a real implementation, this would generate a graphical bracket image
    # or a 'tournament.def' file for Ikemen GO's survival mode.
    
    # Generate a text file bracket
    bracket_path = os.path.join("..", "..", "data", "tournament_bracket.txt")
    with open(bracket_path, "w") as f:
        f.write(f"MUGEN X TOURNAMENT ({size} Entrants)\n")
        f.write("================================\n\n")
        f.write("ROUND 1:\n")
        for i, (p1, p2) in enumerate(matches):
            f.write(f"Match {i+1}: {p1} vs {p2}\n")
            
    print(f"\nBracket saved to {bracket_path}")

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "interactive":
        print("=== MUGEN X - TOURNAMENT MAKER ===")
        input("Press Enter to generate bracket...")
        generate_bracket()
        input("\nPress Enter to close...")
    else:
        generate_bracket()
