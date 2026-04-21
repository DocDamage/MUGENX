import sys
import os
import pyttsx3

def generate_commentary_pack(personality):
    print(f"=== AI COMMENTARY GENERATOR: {personality} ===")
    
    # Define lines based on personality
    lines = {
        "intro": "Welcome to the arena!",
        "ko": "Knockout!",
        "win": "Winner!",
        "combo": "Amazing combo!",
        "low_hp": "He's on the ropes!"
    }
    
    if personality == "Hype Man":
        lines = {
            "intro": "LADIES AND GENTLEMEN! IT'S SHOWTIME!",
            "ko": "DESTRUCTIVE FINISH!",
            "win": "ABSOLUTE DOMINATION!",
            "combo": "UNBELIEVABLE! LOOK AT THE MOVES!",
            "low_hp": "DON'T BLINK! IT'S NOT OVER YET!"
        }
    elif personality == "Golf Announcer":
        lines = {
            "intro": "A quiet hush falls over the green...",
            "ko": "Oh dear. That looks painful.",
            "win": "A splendid performance.",
            "combo": "Consistent form.",
            "low_hp": "A precarious situation."
        }
        
    output_dir = os.path.join("..", "..", "sound", "commentary", personality.replace(" ", "_"))
    os.makedirs(output_dir, exist_ok=True)
    
    engine = pyttsx3.init()
    
    # Configure voice (basic)
    voices = engine.getProperty('voices')
    if personality == "Golf Announcer" and len(voices) > 1:
        engine.setProperty('voice', voices[1].id) # Try to pick a different voice
    
    engine.setProperty('rate', 150 if personality == "Hype Man" else 100)
    
    for key, text in lines.items():
        filename = os.path.join(output_dir, f"{key}.wav")
        print(f"  > Generating '{key}': \"{text}\"")
        engine.save_to_file(text, filename)
        
    engine.runAndWait()
    print(f"Commentary pack saved to {output_dir}")

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "interactive":
        print("=== MUGEN X - COMMENTARY GENERATOR ===")
        print("1. Standard")
        print("2. Hype Man")
        print("3. Golf Announcer")
        choice = input("Select Personality (1-3): ")
        
        p = "Standard"
        if choice == "2": p = "Hype Man"
        elif choice == "3": p = "Golf Announcer"
        
        generate_commentary_pack(p)
        input("\nPress Enter to close...")
    else:
        generate_commentary_pack("Standard")
