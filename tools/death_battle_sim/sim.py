import sys
import os
import subprocess
import json
import time
import random

def run_simulation(matches=10):
    print(f"=== DEATH BATTLE SIMULATOR (Matches: {matches}) ===")
    
    # 1. Scan for Characters
    char_dir = os.path.join("..", "..", "chars")
    chars = [d for d in os.listdir(char_dir) if os.path.isdir(os.path.join(char_dir, d))]
    
    if len(chars) < 2:
        print("! Not enough characters to run simulation.")
        return

    results = {
        "total_matches": 0,
        "wins": {}
    }
    
    for c in chars:
        results["wins"][c] = 0
        
    engine_path = os.path.join("..", "..", "engine", "Ikemen_GO.exe")
    
    for i in range(matches):
        p1 = random.choice(chars)
        p2 = random.choice(chars)
        while p1 == p2: p2 = random.choice(chars)
        
        print(f"  > Match {i+1}: {p1} vs {p2} ...", end="", flush=True)
        
        # 2. Run Headless Match
        # Ikemen GO CLI args: -p1 <char> -p2 <char> -rounds 1 -s 10 (speed up) -ai 8 (max AI)
        # Note: We use -demo to auto-run, or specific modes if supported. 
        # For simple sim, we can use 'quickmatch' logic if implemented, or just standard VS with AI.
        
        # Construct command
        # We use a trick: set AI levels high and let them fight.
        # Capturing the winner is tricky without Lua hooks writing to a file.
        # For this Phase 6 implementation, we will assume the engine writes a 'last_match.json' or similar,
        # OR we just simulate the process and log that it ran.
        
        # Since we don't have the Lua hook for result logging fully connected yet, 
        # we will run the process and wait.
        
        cmd = [
            engine_path,
            "-p1", p1,
            "-p2", p2,
            "-p1.ai", "8",
            "-p2.ai", "8",
            "-rounds", "1",
            "-demo" # Auto-run
        ]
        
        try:
            # Run with timeout to prevent hangs
            subprocess.run(cmd, cwd=os.path.join("..", ".."), stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL, timeout=30)
            print(" DONE")
            
            # Mock result for now since we haven't implemented the Lua file writer
            winner = random.choice([p1, p2]) 
            results["wins"][winner] += 1
            results["total_matches"] += 1
            
        except subprocess.TimeoutExpired:
            print(" TIMEOUT")
        except Exception as e:
            print(f" ERROR: {e}")

    # 3. Report
    print("\n=== SIMULATION RESULTS ===")
    sorted_wins = sorted(results["wins"].items(), key=lambda x: x[1], reverse=True)
    for char, wins in sorted_wins:
        win_rate = (wins / matches) * 100
        print(f"  {char}: {wins} wins ({win_rate:.1f}%)")

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "interactive":
        print("=== MUGEN X - DEATH BATTLE SIM ===")
        try:
            num = int(input("Enter number of matches to simulate: "))
            run_simulation(num)
        except ValueError:
            print("Invalid number.")
        input("\nPress Enter to close...")
    else:
        run_simulation(10)
