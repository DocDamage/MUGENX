import sys
import os
import random

def generate_story(char1, char2):
    print(f"=== AI STORYTELLER: {char1} vs {char2} ===")
    
    # Mock LLM Generation
    # In a real implementation, this would call an OpenAI/LocalLLM API
    
    intros = [
        f"{char1} encounters {char2} in the ruins of the old world.",
        f"A rivalry spanning centuries comes to a head as {char1} faces {char2}.",
        f"{char2} stands in {char1}'s way. There can be only one."
    ]
    
    dialogue = [
        f"{char1}: Get out of my way.",
        f"{char2}: Make me.",
        f"{char1}: You will regret this.",
        f"{char2}: Talk is cheap."
    ]
    
    story = {
        "title": f"The Clash of {char1} and {char2}",
        "intro": random.choice(intros),
        "dialogue": dialogue,
        "ending": f"And so, the legend of {char1} continues..."
    }
    
    # Output to a text file for the game to read (or display here)
    print("\n--- STORYBOARD ---")
    print(f"TITLE: {story['title']}")
    print(f"SCENE: {story['intro']}")
    print("---")
    for line in story['dialogue']:
        print(line)
    print("---")
    
    # Save to data/story.txt
    story_path = os.path.join("..", "..", "data", "current_story.txt")
    with open(story_path, "w") as f:
        f.write(f"Title: {story['title']}\n")
        f.write(f"Intro: {story['intro']}\n")
        for line in story['dialogue']:
            f.write(f"Line: {line}\n")
            
    print(f"\nStory generated and saved to {story_path}")

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "interactive":
        print("=== MUGEN X - STORY MODE GENERATOR ===")
        c1 = input("Enter Protagonist Name: ")
        c2 = input("Enter Antagonist Name: ")
        generate_story(c1, c2)
        input("\nPress Enter to close...")
    else:
        generate_story("Ryu", "Ken")
