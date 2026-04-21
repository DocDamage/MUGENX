import sys
import os
import re

def generate_command_list(char_name):
    print(f"=== COMMAND LIST GENERATOR: {char_name} ===")
    
    cmd_path = os.path.join("..", "..", "chars", char_name, f"{char_name}.cmd")
    if not os.path.exists(cmd_path):
        print(f"Error: {cmd_path} not found.")
        return

    commands = []
    
    with open(cmd_path, 'r', errors='ignore') as f:
        lines = f.readlines()
        
    # Simple parser to find [Command] sections
    current_cmd_name = None
    current_cmd_input = None
    
    for line in lines:
        line = line.strip()
        if line.startswith("[Command]"):
            current_cmd_name = None
            current_cmd_input = None
        elif line.lower().startswith("name"):
            current_cmd_name = line.split("=")[1].strip().replace('"', '')
        elif line.lower().startswith("command"):
            current_cmd_input = line.split("=")[1].strip()
            
            # If we have both, store it
            if current_cmd_name and current_cmd_input:
                # Filter out system commands
                if not current_cmd_name.startswith("recovery") and "hold" not in current_cmd_name:
                    commands.append((current_cmd_name, current_cmd_input))
                    current_cmd_name = None # Reset
    
    # Output
    print(f"\nMove List for {char_name}:")
    print("--------------------------------")
    for name, inp in commands:
        # Format input for readability
        inp = inp.replace("/", " > ").replace("$", "").replace("D", "Down").replace("F", "Fwd").replace("B", "Back").replace("U", "Up")
        print(f"{name:<20} | {inp}")
        
    # Save to file
    out_path = os.path.join("..", "..", "chars", char_name, "movelist.txt")
    with open(out_path, "w") as f:
        f.write(f"Move List for {char_name}\n")
        f.write("================================\n")
        for name, inp in commands:
            f.write(f"{name:<20} | {inp}\n")
            
    print(f"\nSaved to {out_path}")

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "interactive":
        print("=== MUGEN X - COMMAND LIST GEN ===")
        # List chars
        char_dir = os.path.join("..", "..", "chars")
        chars = [d for d in os.listdir(char_dir) if os.path.isdir(os.path.join(char_dir, d))]
        
        for i, c in enumerate(chars):
            print(f"{i+1}. {c}")
            
        try:
            idx = int(input("Select Character (Number): ")) - 1
            if 0 <= idx < len(chars):
                generate_command_list(chars[idx])
            else:
                print("Invalid selection.")
        except ValueError:
            print("Invalid input.")
        input("\nPress Enter to close...")
    else:
        generate_command_list("Ryu")
