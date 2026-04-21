import os

def generate_training_program(name, focus, difficulty):
    """Generate an AI coach training program"""
    
    # Create training directory
    training_dir = os.path.join("..", "..", "data", "training")
    os.makedirs(training_dir, exist_ok=True)
    
    # MASSIVELY EXPANDED Training program templates
    programs = {
        "execution": {
            "beginner": [
                "Practice basic combos (3-4 hits)",
                "Learn special move inputs (QCF, DP, etc.)",
                "Master timing windows",
                "Understand hit confirms",
                "Practice cancel timing"
            ],
            "intermediate": [
                "Chain normals into specials",
                "Confirm hit into combo",
                "Practice links (2-3 frame)",
                "Learn optimal bnb combos",
                "Master jump cancel combos",
                "Practice corner combos"
            ],
            "advanced": [
                "One-frame links",
                "Optimal damage combos",
                "Character-specific routes",
                "Situational combos",
                "Counter-hit combos",
                "Air combo extensions"
            ],
            "expert": [
                "Frame-perfect execution",
                "Max damage optimization",
                "Situational optimal combos",
                "Instant air dash combos",
                "Tiger knee motion specials",
                "Perfect link chains"
            ]
        },
        "spacing": {
            "beginner": [
                "Understand attack ranges",
                "Practice footsies basics",
                "Learn to whiff punish",
                "Control personal space",
                "Recognize poke ranges"
            ],
            "intermediate": [
                "Control neutral space",
                "Bait and punish whiffs",
                "Corner pressure spacing",
                "Anti-air positioning",
                "Dash spacing",
                "Jump arc control"
            ],
            "advanced": [
                "Frame traps at max range",
                "Shimmy mixups",
                "Advanced positioning",
                "Stage control",
                "Spacing for counter-hits",
                "Perfect backdash spacing"
            ],
            "expert": [
                "Perfect spacing control",
                "Micro-adjustments",
                "Predictive movement",
                "Pixel-perfect positioning",
                "Advanced stage positioning",
                "Optimal punish spacing"
            ]
        },
        "blocking": {
            "beginner": [
                "Block high and low",
                "Recognize overheads",
                "Pushblock timing",
                "Understand blockstun",
                "Basic defense"
            ],
            "intermediate": [
                "Fuzzy guard",
                "Option selects",
                "Reversal timing",
                "Throw tech",
                "Delayed wakeup",
                "Crouch tech"
            ],
            "advanced": [
                "Advanced blocking patterns",
                "Instant block",
                "Guard cancel",
                "OS throw tech",
                "Chicken blocking",
                "Absolute guard"
            ],
            "expert": [
                "Perfect defense",
                "Parry mastery",
                "Counter strategies",
                "Advanced option selects",
                "Frame-perfect blocks",
                "Predictive blocking"
            ]
        },
        "offense": {
            "beginner": [
                "Basic pressure strings",
                "Throw mixups",
                "Frame advantage basics",
                "Simple blockstrings",
                "Basic oki"
            ],
            "intermediate": [
                "Advanced blockstrings",
                "Stagger pressure",
                "Reset situations",
                "Tick throws",
                "Meaty attacks",
                "Safe jump setups"
            ],
            "advanced": [
                "Unblockable setups",
                "Fuzzy setups",
                "Ambiguous crossups",
                "Left/right mixups",
                "High/low mixups",
                "Frame trap pressure"
            ],
            "expert": [
                "Perfect mixups",
                "Unreactable offense",
                "Mind games mastery",
                "Optimal pressure",
                "Advanced oki",
                "Infinite pressure loops"
            ]
        },
        "pressure": {
            "beginner": [
                "Maintain offense",
                "Frame traps basics",
                "Safe pressure",
                "Basic blockstrings",
                "Simple mixups"
            ],
            "intermediate": [
                "Tick throws",
                "Meaty attacks",
                "Oki setups",
                "Stagger pressure",
                "Frame advantage",
                "Safe jumps"
            ],
            "advanced": [
                "Loop pressure",
                "Reset neutral advantage",
                "Corner carry optimization",
                "Advanced frame traps",
                "Unblockable setups",
                "Perfect meaties"
            ],
            "expert": [
                "Infinite pressure",
                "Perfect frame traps",
                "Unescapable setups",
                "Optimal oki",
                "Advanced resets",
                "Pressure optimization"
            ]
        },
        "neutral": {
            "beginner": [
                "Understand neutral game",
                "Basic footsies",
                "Poke game",
                "Anti-air basics",
                "Movement fundamentals"
            ],
            "intermediate": [
                "Advanced footsies",
                "Whiff punishing",
                "Space control",
                "Jump control",
                "Dash mixups",
                "Backdash spacing"
            ],
            "advanced": [
                "Perfect neutral",
                "Advanced movement",
                "Stage control",
                "Predictive anti-airs",
                "Counter-poke game",
                "Perfect spacing"
            ],
            "expert": [
                "Neutral mastery",
                "Perfect movement",
                "Optimal positioning",
                "Advanced reads",
                "Perfect anti-airs",
                "Neutral domination"
            ]
        },
        "mixups": {
            "beginner": [
                "High/low mixups",
                "Throw mixups",
                "Basic resets",
                "Simple oki",
                "Crossup basics"
            ],
            "intermediate": [
                "Left/right mixups",
                "Fuzzy guard setups",
                "Ambiguous crossups",
                "Tick throw setups",
                "Meaty mixups",
                "Safe jump mixups"
            ],
            "advanced": [
                "Unblockable setups",
                "Advanced fuzzy",
                "Perfect crossups",
                "Frame trap mixups",
                "Reset mastery",
                "Optimal mixups"
            ],
            "expert": [
                "Unreactable mixups",
                "Perfect setups",
                "Advanced resets",
                "Optimal oki mixups",
                "Mixup mastery",
                "Infinite mixup loops"
            ]
        },
        "antiair": {
            "beginner": [
                "Recognize jump-ins",
                "Basic anti-air normals",
                "Anti-air special moves",
                "Timing practice",
                "Positioning basics"
            ],
            "intermediate": [
                "Advanced anti-airs",
                "Air-to-air",
                "Anti-air confirms",
                "Crossup defense",
                "Perfect timing",
                "Multiple options"
            ],
            "advanced": [
                "Perfect anti-airs",
                "Air throw anti-airs",
                "Advanced positioning",
                "Predictive anti-airs",
                "Counter-hit setups",
                "Optimal punishes"
            ],
            "expert": [
                "Anti-air mastery",
                "Perfect reads",
                "Optimal positioning",
                "Advanced air control",
                "Perfect timing",
                "Anti-air domination"
            ]
        },
        "zoning": {
            "beginner": [
                "Projectile basics",
                "Space control",
                "Keep away",
                "Anti-air zoning",
                "Basic patterns"
            ],
            "intermediate": [
                "Advanced projectiles",
                "Zoning patterns",
                "Trap setups",
                "Corner zoning",
                "Projectile confirms",
                "Space control"
            ],
            "advanced": [
                "Perfect zoning",
                "Advanced patterns",
                "Optimal spacing",
                "Trap mastery",
                "Counter-zoning",
                "Perfect keepaway"
            ],
            "expert": [
                "Zoning mastery",
                "Perfect patterns",
                "Optimal traps",
                "Advanced reads",
                "Perfect spacing",
                "Zoning domination"
            ]
        },
        "rushdown": {
            "beginner": [
                "Aggressive pressure",
                "Basic rushdown",
                "Frame advantage",
                "Simple mixups",
                "Dash pressure"
            ],
            "intermediate": [
                "Advanced pressure",
                "Mixup game",
                "Frame traps",
                "Reset pressure",
                "Corner carry",
                "Optimal routes"
            ],
            "advanced": [
                "Perfect rushdown",
                "Advanced mixups",
                "Pressure loops",
                "Optimal damage",
                "Reset mastery",
                "Corner domination"
            ],
            "expert": [
                "Rushdown mastery",
                "Perfect pressure",
                "Optimal mixups",
                "Advanced resets",
                "Perfect execution",
                "Rushdown domination"
            ]
        }
    }
    
    lessons = programs.get(focus, programs["execution"]).get(difficulty, ["Practice fundamentals"])
    
    # Save training program
    safe_name = name.replace(" ", "_").lower()
    filepath = os.path.join(training_dir, f"{safe_name}.txt")
    
    with open(filepath, 'w') as f:
        f.write(f"=== {name} Training Program ===\n\n")
        f.write(f"Focus: {focus.upper()}\n")
        f.write(f"Difficulty: {difficulty.upper()}\n\n")
        f.write("--- LESSONS ---\n\n")
        for i, lesson in enumerate(lessons, 1):
            f.write(f"{i}. {lesson}\n")
        f.write("\n--- TRAINING TIPS ---\n\n")
        f.write("- Practice in Training Mode\n")
        f.write("- Start slow, build muscle memory\n")
        f.write("- Review frame data\n")
        f.write("- Watch replays of your matches\n")
        f.write("- Focus on consistency over speed\n")
        f.write("- Practice against different characters\n")
        f.write("- Record dummy actions for realistic practice\n")
        f.write("- Set specific goals for each session\n")
    
    print(f"    ✓ Created '{name}' training program")

if __name__ == "__main__":
    # Generate comprehensive training library
    focuses = ["execution", "spacing", "blocking", "offense", "pressure", 
               "neutral", "mixups", "antiair", "zoning", "rushdown"]
    difficulties = ["beginner", "intermediate", "advanced", "expert"]
    
    count = 0
    for focus in focuses:
        for difficulty in difficulties:
            name = f"{focus.title()} {difficulty.title()}"
            generate_training_program(name, focus, difficulty)
            count += 1
    
    print(f"\n✅ Generated {count} training programs!")
