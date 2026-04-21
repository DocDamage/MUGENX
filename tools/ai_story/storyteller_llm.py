import sys
import os
sys.path.append(os.path.join(os.path.dirname(__file__), ".."))
import llm_client

def generate_story(char1, char2):
    print(f"=== AI STORYTELLER (LLM POWERED): {char1} vs {char2} ===")
    
    system_prompt = "You are a creative writer for a fighting game. Write dramatic, intense intros."
    user_prompt = f"""
    Write a short story intro for a battle between {char1} and {char2}.
    
    Structure:
    1. A title for the episode.
    2. A paragraph describing the setting and the tension.
    3. One line of dialogue for {char1}.
    4. One line of dialogue for {char2}.
    
    Keep it under 150 words.
    """
    
    print("  > Contacting Neural Network...")
    story = llm_client.generate_text(system_prompt, user_prompt)
    
    if story:
        print("\n" + "="*40)
        print(story)
        print("="*40 + "\n")
        
        # Save to file
        with open(os.path.join("..", "..", "data", "current_story.txt"), "w") as f:
            f.write(story)
        print("  > Story saved to data/current_story.txt")
    else:
        print("  > Falling back to template engine...")
        # Fallback logic could go here
        print(f"  > {char1} meets {char2}. They fight.")

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "interactive":
        print("=== MUGEN X - LLM STORYTELLER ===")
        print("Note: Requires a running local LLM (LM Studio) or OpenAI Key.")
        
        c1 = input("Enter Character 1: ")
        c2 = input("Enter Character 2: ")
        generate_story(c1, c2)
        input("\nPress Enter to close...")
    else:
        generate_story("Ryu", "Ken")
