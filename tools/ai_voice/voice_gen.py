import sys
import os
import pyttsx3
import random

def generate_voice_pack(char_name, personality):
    print(f"=== AI VOICE ACTOR: {char_name} ({personality}) ===")
    
    char_dir = os.path.join("..", "..", "chars", char_name)
    if not os.path.exists(char_dir):
        print(f"Error: Character {char_name} not found.")
        return

    sound_dir = os.path.join(char_dir, "sound")
    os.makedirs(sound_dir, exist_ok=True)
    
    engine = pyttsx3.init()
    
    # Tweak voice based on personality
    voices = engine.getProperty('voices')
    p = personality.lower()
    
    if p == "hero":
        engine.setProperty('rate', 150); engine.setProperty('pitch', 100)
    elif p == "villain":
        engine.setProperty('rate', 110); engine.setProperty('pitch', 50)
    elif p == "robot":
        engine.setProperty('rate', 180)
    elif p == "child":
        engine.setProperty('rate', 160)
    elif p == "monster":
        engine.setProperty('rate', 80); engine.setProperty('pitch', 30)
    elif p == "alien":
        engine.setProperty('rate', 200); engine.setProperty('pitch', 150)
    elif p == "announcer":
        engine.setProperty('rate', 140)
    elif p == "old master":
        engine.setProperty('rate', 100)
    elif p == "femme fatale":
        engine.setProperty('rate', 130)
    elif p == "soldier":
        engine.setProperty('rate', 140)
    elif p == "wizard":
        engine.setProperty('rate', 110); engine.setProperty('pitch', 80)
    elif p == "ghost":
        engine.setProperty('rate', 90); engine.setProperty('volume', 0.5)
    elif p == "demon":
        engine.setProperty('rate', 90); engine.setProperty('pitch', 20)
    elif p == "angel":
        engine.setProperty('rate', 130); engine.setProperty('pitch', 180)
    elif p == "glitch":
        engine.setProperty('rate', 250); engine.setProperty('pitch', 150)
    elif p == "narrator":
        engine.setProperty('rate', 120); engine.setProperty('pitch', 90)
    elif p == "coward":
        engine.setProperty('rate', 180); engine.setProperty('pitch', 160)
    elif p == "maniac":
        engine.setProperty('rate', 220); engine.setProperty('pitch', 120)
    elif p == "stoic":
        engine.setProperty('rate', 100); engine.setProperty('pitch', 70)
    # --- NEW PERSONALITIES ---
    elif p == "ninja":
        engine.setProperty('rate', 160); engine.setProperty('volume', 0.8) # Fast, quiet
    elif p == "brute":
        engine.setProperty('rate', 90); engine.setProperty('pitch', 40) # Slow, dumb
    elif p == "noble":
        engine.setProperty('rate', 130); engine.setProperty('pitch', 110) # Posh
    elif p == "jester":
        engine.setProperty('rate', 190); engine.setProperty('pitch', 140) # High, erratic
    elif p == "cyborg":
        engine.setProperty('rate', 140) # Monotone
    elif p == "beast":
        engine.setProperty('rate', 110); engine.setProperty('pitch', 35) # Growly
    elif p == "god":
        engine.setProperty('rate', 100); engine.setProperty('pitch', 60); engine.setProperty('volume', 1.0) # Booming
    elif p == "assassin":
        engine.setProperty('rate', 140); engine.setProperty('volume', 0.7) # Whispery
    elif p == "pirate":
        engine.setProperty('rate', 130); engine.setProperty('pitch', 80) # Gruff
    elif p == "zombie":
        engine.setProperty('rate', 60); engine.setProperty('pitch', 40) # Moaning
    elif p == "valkyrie":
        engine.setProperty('rate', 140); engine.setProperty('pitch', 120) # Strong female
    elif p == "orc":
        engine.setProperty('rate', 100); engine.setProperty('pitch', 45) # Aggressive
    elif p == "elf":
        engine.setProperty('rate', 150); engine.setProperty('pitch', 130) # Elegant
    elif p == "dwarf":
        engine.setProperty('rate', 120); engine.setProperty('pitch', 60) # Stout
    elif p == "hacker":
        engine.setProperty('rate', 170) # Fast talker
        
    lines = {
        "intro": [
            f"I am {char_name}, prepare yourself!",
            "Let's get this over with.",
            "You stand no chance against me!",
            "Ready to die?",
            "Show me what you've got!",
            "This will be quick.",
            "En garde!",
            "Target acquired.",
            "I've been waiting for this.",
            "Don't blink."
        ],
        "win": [
            "Too easy!",
            "Is that all you've got?",
            "Victory is mine!",
            "Pathetic.",
            "I expected more.",
            "Another one bites the dust.",
            "Flawless.",
            "You were weak.",
            "Go home.",
            "I am supreme!"
        ],
        "lose": [
            "Impossible!",
            "I... failed...",
            "Nooooo!",
            "You got lucky.",
            "I'll be back.",
            "This isn't over!",
            "Forgive me...",
            "System failure.",
            "Agh... defeat...",
            "How?!"
        ],
        "attack": [
            "Hah!", "Take this!", "Hyah!", "Die!", "Burn!", "Freeze!", "Crush!", "Slash!", "Fire!", "Go!"
        ],
        "hurt": [
            "Oof!", "Argh!", "No!", "Ugh!", "Pain!", "Stop!", "Help!", "Why?!", "Gah!", "Ouch!"
        ],
        "taunt": [
            "Come on!", "You're slow!", "Is that it?", "Boring.", "Try harder!", "Laughable.", "Weak.", "Scared?", "Fight me!", "Run away!"
        ]
    }
    
    for category, options in lines.items():
        text = random.choice(options)
        filename = os.path.join(sound_dir, f"{category}.wav")
        print(f"  > Generating {category}: '{text}'")
        engine.save_to_file(text, filename)
        
    engine.runAndWait()
    print(f"  > Voice pack generated in {sound_dir}")

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "interactive":
        while True:
            name = input("Enter Character Name: ")
            personality = input("Enter Personality: ")
            generate_voice_pack(name, personality)
            if input("Generate another? (y/n): ") != "y": break
    else:
        generate_voice_pack("RyuClone", "Hero")
