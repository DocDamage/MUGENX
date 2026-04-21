import sys
import os
import re
import random

def auto_balance():
    print("=== AI AUTO-BALANCER ===")
    print("Analyzing simulation data...")
    
    # Mocking simulation data since we don't have the JSON output from Sim yet
    # In a real scenario, this would read 'sim_results.json'
    char_dir = os.path.join("..", "..", "chars")
    chars = [d for d in os.listdir(char_dir) if os.path.isdir(os.path.join(char_dir, d))]
    
    if not chars:
        print("No characters found.")
        return

    for char in chars:
        # Simulate a win rate for demonstration
        win_rate = random.randint(30, 70) 
        print(f"\nAnalyzing {char} (Win Rate: {win_rate}%)")
        
        cns_path = os.path.join(char_dir, char, f"{char}.cns")
        if not os.path.exists(cns_path):
            print("  ! CNS file not found.")
            continue
            
        # Decision Logic
        action = "NONE"
        multiplier = 1.0
        
        if win_rate > 60:
            action = "NERF"
            multiplier = 0.95 # -5% stats
        elif win_rate < 40:
            action = "BUFF"
            multiplier = 1.05 # +5% stats
            
        if action != "NONE":
            print(f"  > Action: {action} (Multiplier: {multiplier})")
            apply_patch(cns_path, multiplier)
        else:
            print("  > Status: BALANCED")

def apply_patch(cns_path, multiplier):
    try:
        with open(cns_path, 'r', errors='ignore') as f:
            lines = f.readlines()
            
        new_lines = []
        for line in lines:
            # Look for Attack/Defence/Life definitions
            # Regex to capture "key = value"
            match = re.match(r"^\s*(life|attack|defence)\s*=\s*(\d+)", line, re.IGNORECASE)
            if match:
                key = match.group(1)
                val = int(match.group(2))
                new_val = int(val * multiplier)
                print(f"    - {key}: {val} -> {new_val}")
                new_lines.append(f"{key} = {new_val}\n")
            else:
                new_lines.append(line)
                
        with open(cns_path, 'w') as f:
            f.writelines(new_lines)
            
        print("    - Patch applied successfully.")
        
    except Exception as e:
        print(f"    ! Error patching file: {e}")

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "interactive":
        print("=== MUGEN X - AUTO BALANCER ===")
        print("This tool will analyze character performance and automatically adjust stats.")
        input("Press Enter to start analysis...")
        auto_balance()
        input("\nPress Enter to close...")
    else:
        auto_balance()
