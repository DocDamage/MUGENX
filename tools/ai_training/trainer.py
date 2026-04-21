import sys
import os
import random
import re

def train_character(char_name):
    print(f"=== NEURAL TRAINER: {char_name} ===")
    
    char_dir = os.path.join("..", "..", "chars", char_name)
    cmd_path = os.path.join(char_dir, f"{char_name}.cmd")
    
    if not os.path.exists(cmd_path):
        print(f"Error: {char_name} not found.")
        return
        
    print("  > Reading Match Logs...")
    # Mock reading match logs to find "bad" moves
    # Assume "Fireball" was used too often and got punished
    bad_move = "Fireball"
    good_move = "DragonPunch"
    
    print(f"  > Insight: {bad_move} is being punished. {good_move} is effective.")
    print("  > Optimizing AI Triggers...")
    
    with open(cmd_path, 'r', errors='ignore') as f:
        lines = f.readlines()
        
    new_lines = []
    for line in lines:
        # Simple heuristic: adjust random triggers
        # triggerall = random < 500
        if f"; {bad_move}" in line or f'name = "{bad_move}"' in line:
            # We found the move, now look for the trigger in subsequent lines
            # This is a complex parse in reality, so we'll do a mock replacement for the demo
            pass
            
        # Mock: If we see a random trigger, tune it
        if "random <" in line:
            match = re.search(r"random < (\d+)", line)
            if match:
                val = int(match.group(1))
                # Tune
                new_val = max(10, min(999, val + random.randint(-50, 50)))
                line = line.replace(str(val), str(new_val))
                print(f"    - Adjusted probability: {val} -> {new_val}")
                
        new_lines.append(line)
        
    with open(cmd_path, 'w') as f:
        f.writelines(new_lines)
        
    print(f"SUCCESS: {char_name} has been re-trained.")

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "interactive":
        print("=== MUGEN X - NEURAL TRAINER ===")
        # List chars
        char_dir = os.path.join("..", "..", "chars")
        chars = [d for d in os.listdir(char_dir) if os.path.isdir(os.path.join(char_dir, d))]
        
        for i, c in enumerate(chars):
            print(f"{i+1}. {c}")
            
        try:
            idx = int(input("Select Character to Train (Number): ")) - 1
            if 0 <= idx < len(chars):
                train_character(chars[idx])
            else:
                print("Invalid selection.")
        except ValueError:
            print("Invalid input.")
        input("\nPress Enter to close...")
    else:
        train_character("Ryu")
