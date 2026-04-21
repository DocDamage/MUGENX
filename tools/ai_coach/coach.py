import sys
import os
import json
sys.path.append(os.path.join(os.path.dirname(__file__), ".."))
import llm_client

def analyze_gameplay():
    print("=== AI COACH: GAMEPLAY ANALYSIS ===")
    
    # Read Ghost Data (Mocking the read from a file, assuming ghost_ai.lua saved it)
    # In a real scenario, ghost_ai.lua would write 'ghost_data.json'
    ghost_data = {
        "jump_count": 45,
        "block_count": 2,
        "attack_whiffs": 15,
        "super_usage": 0
    }
    
    print("  > Analyzing Player Patterns...")
    print(f"    - Jumps: {ghost_data['jump_count']}")
    print(f"    - Blocks: {ghost_data['block_count']}")
    
    system_prompt = "You are a professional fighting game coach. Be harsh but helpful."
    user_prompt = f"""
    Analyze this player's stats from a recent match:
    - Jumps: {ghost_data['jump_count']} (Very High)
    - Blocks: {ghost_data['block_count']} (Extremely Low)
    - Whiffs: {ghost_data['attack_whiffs']}
    - Supers: {ghost_data['super_usage']}
    
    Give 3 specific tips to improve.
    """
    
    print("  > Consulting Neural Network...")
    advice = llm_client.generate_text(system_prompt, user_prompt)
    
    if advice:
        print("\n" + "="*40)
        print("COACH SAYS:")
        print(advice)
        print("="*40 + "\n")
    else:
        print("  > Coach is offline. (LLM Error)")

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "interactive":
        analyze_gameplay()
        input("\nPress Enter to close...")
    else:
        analyze_gameplay()
