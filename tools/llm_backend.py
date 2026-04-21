"""
MUGEN X ENGINE - LOCAL LLM BACKEND (v2.0)
Powered by TinyLlama/Phi-2 via CTransformers.
Now supports Bios, Commentary, and Missions.
"""
import sys
import random
import time
from pathlib import Path

# Configuration
BASE_DIR = Path(r"d:\MUGENAI\MUGENX")
MODELS_DIR = BASE_DIR / "models"
MODEL_FILE = MODELS_DIR / "tinyllama-1.1b-chat.Q4_K_M.gguf"

# Fallback responses if model is missing
FALLBACKS = {
    "trash_talk": [
        "You call that a fight? I was barely trying!",
        "Go home and be a family man!",
        "Is that your best? Pathetic.",
        "You need more training to beat me!"
    ],
    "story": [
        "In a world consumed by chaos, one fighter stands alone...",
        "The tournament of legends has begun. Only the strong survive.",
        "Seeking revenge for his fallen clan, he enters the arena."
    ],
    "bio": [
        "A mysterious warrior from the far east, seeking the ultimate challenge.",
        "An experiment gone wrong, this fighter now seeks to control their power.",
        "A legendary champion who has returned to reclaim their title."
    ],
    "commentary": [
        "OH! HE GOT ROCKED!",
        "WHAT A COMBO!",
        "THAT WAS INSANE!",
        "CAN HE RECOVER FROM THAT?!"
    ],
    "mission": [
        "Win a match without jumping.",
        "Perform a 10-hit combo.",
        "Win with a Perfect KO.",
        "Defeat 3 opponents in Survival Mode."
    ]
}

def load_model():
    try:
        from ctransformers import AutoModelForCausalLM
        if not MODEL_FILE.exists(): return None
        return AutoModelForCausalLM.from_pretrained(str(MODEL_FILE), model_type="llama", gpu_layers=0)
    except:
        return None

def generate_text(prompt, max_tokens=128, type_key="story"):
    print(f"🤖 AI THINKING: {prompt}...")
    
    llm = load_model()
    
    if llm:
        try:
            # Real Generation
            response = llm(prompt, max_new_tokens=max_tokens, temperature=0.8)
            return response.strip()
        except Exception as e:
            return f"AI ERROR: {e}"
    else:
        # Simulated Generation (Fallback)
        time.sleep(1) # Fake thinking time
        return random.choice(FALLBACKS.get(type_key, ["..."]))

def generate_trash_talk(char_name, enemy_name):
    prompt = f"Write a savage win quote for {char_name} after beating {enemy_name} in a fight:"
    return generate_text(prompt, 32, "trash_talk")

def generate_story_intro(char_name):
    prompt = f"Write a dramatic arcade mode intro for {char_name}:"
    return generate_text(prompt, 64, "story")

def generate_bio(name, traits="strong, fast"):
    prompt = f"Write a short backstory for a fighting game character named {name} who is {traits}:"
    return generate_text(prompt, 64, "bio")

def generate_commentary(event):
    prompt = f"Write a hype announcer reaction to {event}:"
    return generate_text(prompt, 32, "commentary")

def generate_mission():
    prompt = "Create a specific challenge for a fighting game player (e.g. Win without blocking):"
    return generate_text(prompt, 32, "mission")

if __name__ == "__main__":
    MODELS_DIR.mkdir(exist_ok=True)
    
    if len(sys.argv) < 2:
        print("Usage: llm_backend.py [mode] [args...]")
    else:
        cmd = sys.argv[1]
        output = ""
        
        if cmd == "trash_talk":
            output = generate_trash_talk(sys.argv[2], sys.argv[3])
        elif cmd == "story":
            output = generate_story_intro(sys.argv[2])
        elif cmd == "bio":
            output = generate_bio(sys.argv[2], sys.argv[3] if len(sys.argv) > 3 else "powerful")
        elif cmd == "commentary":
            output = generate_commentary(sys.argv[2])
        elif cmd == "mission":
            output = generate_mission()
            
        # Write to a file so Lua can read it easily
        with open(BASE_DIR / "ai_output.txt", "w") as f:
            f.write(output)
        print(output)
