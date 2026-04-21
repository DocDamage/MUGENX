import sys
import os
import json
import pyttsx3

def generate_post_match_commentary():
    print("=== AI COMMENTARY: POST-MATCH REPORT ===")
    
    log_path = os.path.join("..", "..", "data", "match_log.json")
    if not os.path.exists(log_path):
        print("No match log found.")
        return
        
    try:
        with open(log_path, 'r') as f:
            data = json.load(f)
            
        winner = data.get("winner", 0)
        p1_life = data.get("p1_life", 0)
        p2_life = data.get("p2_life", 0)
        time_left = data.get("time_left", 0)
        
        text = ""
        
        if winner == 0:
            text = "A draw! Unbelievable!"
        else:
            winner_life = p1_life if winner == 1 else p2_life
            
            if winner_life > 900:
                text = f"Player {winner} wins with a flawless victory! Absolute perfection!"
            elif winner_life < 100:
                text = f"Player {winner} survives by the skin of their teeth! What a comeback!"
            else:
                text = f"Player {winner} takes the round after a hard fought battle."
                
            if time_left < 10:
                text += " They almost ran out of time!"
                
        print(f"  > Generated Line: \"{text}\"")
        
        # TTS
        engine = pyttsx3.init()
        engine.setProperty('rate', 140)
        engine.say(text)
        engine.runAndWait()
        
    except Exception as e:
        print(f"Error reading log: {e}")

if __name__ == "__main__":
    generate_post_match_commentary()
