import os
import json
import random
import sys

# Add parent directory to path to import tools
sys.path.append(os.path.join(os.path.dirname(__file__), '..'))

try:
    from asset_gen.sd_client import generate_image
except ImportError:
    # Mock if not found
    def generate_image(prompt, output_path):
        print(f"[Mock] Generating image for '{prompt}' to {output_path}")

# --- EXPANDED CONSTANTS ---

WEAPON_TYPES = [
    "Sword", "Axe", "Spear", "Dagger", "Bow", "Staff", "Hammer",
    "Katana", "Scythe", "Glaive", "Knuckles", "Whip", "Shield", "Grimoire",
    "Greatsword", "Crossbow", "Flail", "Claws", "Orb", "Gunblade"
]

ELEMENTS = [
    "Fire", "Ice", "Lightning", "Dark", "Light", "Physical",
    "Poison", "Wind", "Earth", "Water", "Arcane", "Blood", "Cosmic", "Nature", "Metal"
]

RARITIES = ["Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic", "Divine", "Cursed"]

# --- NAME GENERATION DATA ---

PREFIXES = {
    "Fire": ["Burning", "Infernal", "Crimson", "Blazing", "Scorching", "Ember", "Volcanic", "Phoenix", "Ash", "Flame"],
    "Ice": ["Frozen", "Glacial", "Crystal", "Frost", "Shivering", "Winter", "Arctic", "Hail", "Rime", "Icebound"],
    "Lightning": ["Shocking", "Thunderous", "Storm", "Volt", "Static", "Sparking", "Tempest", "Lightning", "Fulminating"],
    "Dark": ["Cursed", "Void", "Shadow", "Abyssal", "Night", "Black", "Obsidian", "Grim", "Doom", "Hollow"],
    "Light": ["Holy", "Divine", "Radiant", "Luminous", "Dawn", "Sun", "Bright", "Celestial", "Sacred", "Pure"],
    "Physical": ["Sharp", "Heavy", "Brutal", "Steel", "Iron", "Mighty", "Solid", "Keen", "Hardened", "Warrior's"],
    "Poison": ["Toxic", "Venomous", "Noxious", "Plague", "Blight", "Acid", "Corrosive", "Vile", "Rotting", "Serpent's"],
    "Wind": ["Swift", "Gale", "Breezy", "Zephyr", "Aero", "Sky", "Cloud", "Stormy", "Whirlwind", "Soaring"],
    "Earth": ["Stone", "Rock", "Terra", "Gaia", "Dust", "Mountain", "Boulder", "Quake", "Root", "Ancient"],
    "Water": ["Aqua", "Tidal", "Ocean", "Sea", "River", "Flowing", "Mist", "Rain", "Torrent", "Liquid"],
    "Arcane": ["Mystic", "Magic", "Rune", "Spell", "Enchanted", "Wizard's", "Ethereal", "Astral", "Mana", "Flux"],
    "Blood": ["Bloody", "Sanguine", "Vampiric", "Crimson", "Gory", "Life-Stealing", "Red", "Scarlet", "Vein", "Heart"],
    "Cosmic": ["Star", "Galaxy", "Void", "Nebula", "Space", "Alien", "Comet", "Meteor", "Planetary", "Stellar"],
    "Nature": ["Leaf", "Vine", "Thorn", "Forest", "Wild", "Beast", "Feral", "Green", "Bloom", "Sylvan"],
    "Metal": ["Steel", "Iron", "Bronze", "Silver", "Gold", "Platinum", "Titanium", "Chrome", "Rusty", "Polished"]
}

SUFFIXES = {
    "Sword": ["Blade", "Saber", "Edge", "Cutter", "Slicer", "Brand", "Longsword", "Rapier", "Falchion", "Claymore"],
    "Axe": ["Cleaver", "Chopper", "Reaver", "Splitter", "Hatchet", "Battleaxe", "Waraxe", "Decapitator", "Hewer"],
    "Spear": ["Lance", "Pike", "Harpoon", "Impaler", "Javelin", "Trident", "Polearm", "Glaive", "Spike", "Needle"],
    "Dagger": ["Fang", "Claw", "Tooth", "Shiv", "Knife", "Dirk", "Stiletto", "Razor", "Scalpel", "Thorn"],
    "Bow": ["Piercer", "Striker", "Shot", "Whisper", "Longbow", "Shortbow", "Recurve", "Hunter", "Archer", "String"],
    "Staff": ["Rod", "Scepter", "Wand", "Cane", "Staff", "Pole", "Branch", "Stave", "Crook", "Pillar"],
    "Hammer": ["Crusher", "Smasher", "Mallet", "Breaker", "Maul", "Warhammer", "Sledge", "Pounder", "Bane", "Impact"],
    "Katana": ["Blade", "Edge", "Steel", "Soul", "Spirit", "Honor", "Ghost", "Demon", "Dragon", "Flower"],
    "Scythe": ["Reaper", "Harvester", "Slice", "Doom", "Death", "Sickle", "Crescent", "Moon", "End", "Fate"],
    "Knuckles": ["Fist", "Punch", "Strike", "Brawler", "Smash", "Impact", "Force", "Grip", "Hand", "Touch"],
    "Whip": ["Lash", "Cord", "Chain", "Tail", "Snap", "Sting", "Thong", "Scourge", "Punisher", "Coil"],
    "Shield": ["Guard", "Wall", "Bulwark", "Defender", "Protector", "Aegis", "Barrier", "Blockade", "Shelter", "Ward"],
    "Grimoire": ["Tome", "Book", "Scroll", "Script", "Codex", "Volume", "Text", "Manual", "Guide", "Chronicle"],
    "Gunblade": ["Trigger", "Barrel", "Shot", "Blast", "Explosion", "Revolver", "Magnum", "Bullet", "Shell", "Fire"],
    "Orb": ["Sphere", "Globe", "Eye", "Core", "Heart", "Gem", "Jewel", "Pearl", "Crystal", "Stone"]
}

TITLES = [
    "of the Gods", "of Doom", "of Destiny", "of the Ancients", "of Chaos", "of Order",
    "of the Dragon", "of the King", "of the Queen", "of the Hero", "of the Villain",
    "of Eternity", "of Time", "of Space", "of Life", "of Death", "of War", "of Peace",
    "of the Void", "of the Abyss", "of the Stars", "of the Sun", "of the Moon", "of the Earth"
]

# --- TEMPLATES (UNIQUE WEAPONS) ---
UNIQUE_TEMPLATES = [
    {"name": "Excalibur", "type": "Sword", "element": "Light", "rarity": "Mythic", "stats": {"atk": 100, "def": 20, "speed": 0.1, "range": 10}},
    {"name": "Mjolnir", "type": "Hammer", "element": "Lightning", "rarity": "Mythic", "stats": {"atk": 120, "def": 10, "speed": -0.1, "range": 5}},
    {"name": "Gungnir", "type": "Spear", "element": "Light", "rarity": "Legendary", "stats": {"atk": 90, "def": 0, "speed": 0.2, "range": 80}},
    {"name": "Masamune", "type": "Katana", "element": "Dark", "rarity": "Legendary", "stats": {"atk": 95, "def": -10, "speed": 0.3, "range": 20}},
    {"name": "Aegis", "type": "Shield", "element": "Light", "rarity": "Epic", "stats": {"atk": 20, "def": 100, "speed": -0.2, "range": 0}},
    {"name": "Soul Edge", "type": "Greatsword", "element": "Dark", "rarity": "Cursed", "stats": {"atk": 150, "def": 0, "speed": -0.3, "range": 30}},
    {"name": "Frostmourne", "type": "Sword", "element": "Ice", "rarity": "Legendary", "stats": {"atk": 110, "def": 10, "speed": 0, "range": 15}},
    {"name": "Thunderfury", "type": "Sword", "element": "Lightning", "rarity": "Legendary", "stats": {"atk": 105, "def": 5, "speed": 0.2, "range": 10}}
]

def generate_weapon_name(w_type, element, rarity):
    prefix_list = PREFIXES.get(element, ["Ancient"])
    suffix_list = SUFFIXES.get(w_type, ["Weapon"])
    
    prefix = random.choice(prefix_list)
    suffix = random.choice(suffix_list)
    
    name = f"{prefix} {suffix}"
    
    if rarity in ["Legendary", "Mythic", "Divine"]:
        if random.random() < 0.5:
            title = random.choice(TITLES)
            name = f"{name} {title}"
            
    return name

def generate_stats(w_type, rarity):
    multiplier = 1.0
    if rarity == "Uncommon": multiplier = 1.2
    elif rarity == "Rare": multiplier = 1.5
    elif rarity == "Epic": multiplier = 2.0
    elif rarity == "Legendary": multiplier = 3.0
    elif rarity == "Mythic": multiplier = 5.0
    elif rarity == "Divine": multiplier = 8.0
    elif rarity == "Cursed": multiplier = 4.0 # High stats but maybe penalty elsewhere
    
    base_atk = random.randint(10, 20) * multiplier
    base_def = 0
    speed = 0
    range_mod = 0
    
    # Type Modifiers
    if w_type == "Sword": base_atk *= 1.0
    elif w_type == "Axe": base_atk *= 1.5; speed = -0.1
    elif w_type == "Dagger": base_atk *= 0.7; speed = 0.3
    elif w_type == "Hammer": base_atk *= 1.8; speed = -0.2
    elif w_type == "Spear": range_mod = 50; base_atk *= 0.9
    elif w_type == "Bow": range_mod = 200; base_atk *= 0.8
    elif w_type == "Katana": base_atk *= 1.1; speed = 0.1
    elif w_type == "Greatsword": base_atk *= 1.6; speed = -0.15
    elif w_type == "Knuckles": base_atk *= 0.6; speed = 0.4
    elif w_type == "Shield": base_atk *= 0.2; base_def = 50 * multiplier
    
    # Rarity Bonus
    if rarity == "Divine":
        base_atk += 50
        base_def += 50
    elif rarity == "Cursed":
        base_atk += 100
        base_def -= 20
        
    return {
        "atk": int(base_atk),
        "def": int(base_def),
        "speed": float(f"{speed:.2f}"),
        "range": range_mod
    }

def create_weapon(output_dir="data/generated_weapons"):
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    
    # 5% Chance for Unique Template
    if random.random() < 0.05:
        template = random.choice(UNIQUE_TEMPLATES)
        print(f"Generated UNIQUE Weapon: {template['name']}")
        
        # Copy to avoid mutating template
        weapon_data = template.copy()
        weapon_data["image"] = f"{template['name'].replace(' ', '_').lower()}.png"
        
        # Generate Image
        prompt = f"fantasy {template['rarity']} {template['element']} {template['type']} weapon icon, {template['name']}, game asset, white background, high quality"
        image_path = os.path.join(output_dir, weapon_data["image"])
        generate_image(prompt, image_path)
        
        return weapon_data
        
    w_type = random.choice(WEAPON_TYPES)
    element = random.choice(ELEMENTS)
    rarity = random.choice(RARITIES)
    
    name = generate_weapon_name(w_type, element, rarity)
    stats = generate_stats(w_type, rarity)
    
    weapon_data = {
        "name": name,
        "type": w_type,
        "element": element,
        "rarity": rarity,
        "stats": stats,
        "image": f"{name.replace(' ', '_').lower()}.png"
    }
    
    # Generate Image
    prompt = f"fantasy {rarity} {element} {w_type} weapon icon, game asset, white background, high quality"
    image_path = os.path.join(output_dir, weapon_data["image"])
    generate_image(prompt, image_path)
    
    print(f"Generated Weapon: {name} ({rarity} {element} {w_type})")
    print(f"Stats: ATK {stats['atk']} | DEF {stats['def']} | SPD {stats['speed']} | RNG {stats['range']}")
    
    return weapon_data

if __name__ == "__main__":
    # Generate a batch
    weapons = []
    for _ in range(10): # Increased batch size
        weapons.append(create_weapon())
        
    # Save to JSON DB
    db_path = os.path.join("d:\\MUGENAI\\MUGENX\\data", "weapons_db.json")
    
    existing = []
    if os.path.exists(db_path):
        try:
            with open(db_path, 'r') as f:
                existing = json.load(f)
        except:
            existing = []
            
    existing.extend(weapons)
    
    with open(db_path, 'w') as f:
        json.dump(existing, f, indent=4)
        
    print(f"Saved {len(weapons)} new weapons to {db_path}")
