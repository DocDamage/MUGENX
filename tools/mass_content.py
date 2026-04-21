import sys
import os
import random

# Add parent directory to path
sys.path.append(os.path.join(os.path.dirname(__file__), '..'))

from ai_character_gen import generator_v2
from ai_stage_gen import stage_generator

# Define Content Packs
PACKS = {
    "Street_Fighter_Tribute": {
        "chars": [
            {"name": "Ryu_X", "style": "SF2", "archetype": "Shoto", "prompt": "karate fighter, white gi, red headband"},
            {"name": "Ken_X", "style": "SF2", "archetype": "Shoto", "prompt": "karate fighter, red gi, blonde hair"},
            {"name": "Chun_X", "style": "SF2", "archetype": "Speedster", "prompt": "chinese martial artist, blue dress, ox horns"},
            {"name": "Guile_X", "style": "SF2", "archetype": "Zoner", "prompt": "soldier, green tank top, flat top hair"},
            {"name": "Zangief_X", "style": "SF2", "archetype": "Grappler", "prompt": "russian wrestler, red briefs, scars"},
            {"name": "Dhalsim_X", "style": "SF2", "archetype": "Zoner", "prompt": "yoga master, skulls, floating"},
            {"name": "Blanka_X", "style": "SF2", "archetype": "Beast", "prompt": "green beast man, orange hair, electric"},
            {"name": "Honda_X", "style": "SF2", "archetype": "Sumo", "prompt": "sumo wrestler, face paint"}
        ],
        "stages": [
            {"name": "Suzaku Castle", "prompt": "japanese castle rooftop, sunset, clouds"},
            {"name": "Air Force Base", "prompt": "military jet, hangar, crates, soldier crowd"},
            {"name": "China Street", "prompt": "busy chinese market, bicycles, chickens, neon signs"},
            {"name": "Bath House", "prompt": "japanese bath house, mount fuji mural, steam"}
        ]
    },
    "Fantasy_RPG": {
        "chars": [
            {"name": "Arthur_X", "style": "AI", "archetype": "Knight", "prompt": "knight in shining armor, sword, shield"},
            {"name": "Merlin_X", "style": "AI", "archetype": "Wizard", "prompt": "old wizard, blue robe, pointy hat, staff"},
            {"name": "Robin_X", "style": "AI", "archetype": "Archer", "prompt": "hooded ranger, green cloak, bow"},
            {"name": "Garret_X", "style": "AI", "archetype": "Rogue", "prompt": "thief, black leather, daggers, mask"},
            {"name": "Bjorn_X", "style": "AI", "archetype": "Viking", "prompt": "viking warrior, beard, axe, fur"},
            {"name": "Lilith_X", "style": "AI", "archetype": "Demon", "prompt": "succubus, wings, horns, tail"}
        ],
        "stages": [
            {"name": "Throne Room", "prompt": "royal throne room, red carpet, gold pillars"},
            {"name": "Dark Dungeon", "prompt": "stone dungeon, torches, chains, skeletons"},
            {"name": "Enchanted Forest", "prompt": "magical forest, glowing mushrooms, fairies"},
            {"name": "Dragon Peak", "prompt": "mountain top, dragon nest, gold coins, snow"}
        ]
    },
    "Cyber_Future": {
        "chars": [
            {"name": "Unit_01", "style": "MVC", "archetype": "Robot", "prompt": "combat robot, sleek white armor, laser eye"},
            {"name": "Major_K", "style": "MVC", "archetype": "Cyborg", "prompt": "female cyborg, purple hair, visor, gun"},
            {"name": "Neo_X", "style": "MVC", "archetype": "Monk", "prompt": "cyberpunk martial artist, sunglasses, trenchcoat"},
            {"name": "Glitch_X", "style": "MVC", "archetype": "Glitch", "prompt": "corrupted data avatar, pixelated, error messages"}
        ],
        "stages": [
            {"name": "Neo Tokyo", "prompt": "cyberpunk city street, rain, neon signs, holograms"},
            {"name": "Server Room", "prompt": "server racks, glowing cables, blue light, data stream"},
            {"name": "Wasteland", "prompt": "post apocalyptic city ruins, rust, dust, sunset"}
        ]
    },
    "Mortal_Kombat_Tribute": {
        "chars": [
            {"name": "Scorpion_X", "style": "MK", "archetype": "Ninja", "prompt": "yellow ninja, skull mask, chain spear, hellfire"},
            {"name": "SubZero_X", "style": "MK", "archetype": "Ninja", "prompt": "blue ninja, ice hands, cold breath"},
            {"name": "Raiden_X", "style": "MK", "archetype": "God", "prompt": "thunder god, straw hat, lightning eyes"},
            {"name": "Liu_X", "style": "MK", "archetype": "Monk", "prompt": "shaolin monk, red headband, fire fists"},
            {"name": "Johnny_X", "style": "MK", "archetype": "MovieStar", "prompt": "hollywood action star, sunglasses, green energy"},
            {"name": "Sonya_X", "style": "MK", "archetype": "Soldier", "prompt": "special forces agent, green vest, energy rings"},
            {"name": "Kano_X", "style": "MK", "archetype": "Cyborg", "prompt": "mercenary, metal eye plate, red laser"},
            {"name": "Goro_X", "style": "MK", "archetype": "Boss", "prompt": "four armed shokan warrior, ponytail"}
        ],
        "stages": [
            {"name": "The Pit", "prompt": "bridge over spikes, full moon, dark sky"},
            {"name": "Courtyard", "prompt": "shaolin courtyard, monks watching, throne"},
            {"name": "Dead Pool", "prompt": "acid pool, chains, hooks, stone walls"},
            {"name": "Living Forest", "prompt": "creepy forest, trees with faces, dark fog"}
        ]
    },
    "Anime_Fighters": {
        "chars": [
            {"name": "Goku_X", "style": "DBZ", "archetype": "Saiyan", "prompt": "spiky hair, orange gi, blue sash, aura"},
            {"name": "Vegeta_X", "style": "DBZ", "archetype": "Saiyan", "prompt": "spiky hair, blue armor, white gloves, scouter"},
            {"name": "Naruto_X", "style": "Anime", "archetype": "Ninja", "prompt": "orange jumpsuit, blonde hair, headband, whiskers"},
            {"name": "Luffy_X", "style": "Anime", "archetype": "Pirate", "prompt": "straw hat, red vest, scar under eye, stretchy"},
            {"name": "Ichigo_X", "style": "Anime", "archetype": "Samurai", "prompt": "orange hair, black robe, giant sword"},
            {"name": "Sailor_X", "style": "Anime", "archetype": "MagicalGirl", "prompt": "sailor uniform, tiara, long blonde hair, moon staff"}
        ],
        "stages": [
            {"name": "World Tournament", "prompt": "martial arts tournament arena, tiled floor, grass"},
            {"name": "Hidden Leaf Village", "prompt": "ninja village, hokage rock faces, rooftops"},
            {"name": "Pirate Ship Deck", "prompt": "sunny ship deck, ocean, seagulls"},
            {"name": "Soul Society", "prompt": "japanese spirit world, white buildings, blue sky"}
        ]
    },
    "Comic_Heroes": {
        "chars": [
            {"name": "Super_X", "style": "MVC", "archetype": "Hero", "prompt": "blue suit, red cape, S symbol, flying"},
            {"name": "Bat_X", "style": "MVC", "archetype": "Ninja", "prompt": "black bat suit, cape, utility belt, cowl"},
            {"name": "Spider_X", "style": "MVC", "archetype": "Speedster", "prompt": "red and blue spandex, web pattern, big eyes"},
            {"name": "Iron_X", "style": "MVC", "archetype": "Robot", "prompt": "red and gold power armor, glowing chest, flight"},
            {"name": "Hulk_X", "style": "MVC", "archetype": "Giant", "prompt": "giant green monster, purple pants, angry"},
            {"name": "Wolverine_X", "style": "MVC", "archetype": "Beast", "prompt": "yellow spandex, metal claws, mask"}
        ],
        "stages": [
            {"name": "Metropolis Rooftop", "prompt": "city skyline, daily planet globe, sun"},
            {"name": "Bat Cave", "prompt": "dark cave, giant computer, batmobile, waterfalls"},
            {"name": "Stark Tower", "prompt": "high tech lab, holograms, view of city"},
            {"name": "Daily Bugle", "prompt": "newspaper office, desks, papers flying"}
        ]
    },
    "Horror_Icons": {
        "chars": [
            {"name": "Dracula_X", "style": "Dark", "archetype": "Vampire", "prompt": "vampire lord, cape, fangs, pale skin"},
            {"name": "Frank_X", "style": "Dark", "archetype": "Zombie", "prompt": "frankenstein monster, bolts in neck, scars, green skin"},
            {"name": "Wolf_X", "style": "Dark", "archetype": "Beast", "prompt": "werewolf, fur, claws, torn clothes"},
            {"name": "Mummy_X", "style": "Dark", "archetype": "Undead", "prompt": "mummy, bandages, glowing eyes, egyptian jewelry"},
            {"name": "Slasher_X", "style": "Dark", "archetype": "Killer", "prompt": "hockey mask, machete, jumpsuit, blood"}
        ],
        "stages": [
            {"name": "Graveyard Shift", "prompt": "foggy cemetery, tombstones, full moon, bats"},
            {"name": "Haunted Castle", "prompt": "gothic castle hall, cobwebs, chandeliers"},
            {"name": "Swamp", "prompt": "murky swamp, dead trees, green fog, slime"}
        ]
    },
    "Tekken_Tribute": {
        "chars": [
            {"name": "Kazuya_X", "style": "3D", "archetype": "Shoto", "prompt": "martial artist, spiky hair, red eye, scars"},
            {"name": "Heihachi_X", "style": "3D", "archetype": "Shoto", "prompt": "old martial artist, grey hair wings, lightning"},
            {"name": "Jin_X", "style": "3D", "archetype": "Shoto", "prompt": "hooded fighter, flame pants, tattoos"},
            {"name": "King_X", "style": "3D", "archetype": "Grappler", "prompt": "wrestler, jaguar mask, cape"},
            {"name": "Paul_X", "style": "3D", "archetype": "Brawler", "prompt": "tall blonde flat top hair, red gi, biker"},
            {"name": "Law_X", "style": "3D", "archetype": "Speedster", "prompt": "bruce lee style, yellow jumpsuit, nunchucks"},
            {"name": "Yoshimitsu_X", "style": "3D", "archetype": "Samurai", "prompt": "alien samurai, mechanical armor, sword, spinning"},
            {"name": "Nina_X", "style": "3D", "archetype": "Assassin", "prompt": "blonde assassin, purple catsuit, guns"}
        ],
        "stages": [
            {"name": "Infinite Azure", "prompt": "endless shallow water, starry sky, reflection"},
            {"name": "Mishima Dojo", "prompt": "wooden dojo floor, statues, moonlight"},
            {"name": "Urban War Zone", "prompt": "destroyed city street, burning helicopter, rubble"},
            {"name": "King's Arena", "prompt": "wrestling ring, spotlights, cheering crowd"}
        ]
    },
    "Smash_Bros_Tribute": {
        "chars": [
            {"name": "Mario_X", "style": "Platform", "archetype": "Shoto", "prompt": "plumber, red hat, overalls, fireball"},
            {"name": "Link_X", "style": "Platform", "archetype": "Knight", "prompt": "elf warrior, green tunic, master sword, shield"},
            {"name": "Samus_X", "style": "Platform", "archetype": "Robot", "prompt": "orange power armor, arm cannon, visor"},
            {"name": "Kirby_X", "style": "Platform", "archetype": "Mimic", "prompt": "pink round creature, cute, inhaling"},
            {"name": "Fox_X", "style": "Platform", "archetype": "Speedster", "prompt": "fox pilot, jacket, blaster, reflector"},
            {"name": "Pikachu_X", "style": "Platform", "archetype": "Beast", "prompt": "yellow electric mouse, red cheeks, lightning tail"},
            {"name": "DK_X", "style": "Platform", "archetype": "Grappler", "prompt": "giant gorilla, red tie, muscular"},
            {"name": "Ness_X", "style": "Platform", "archetype": "Psychic", "prompt": "boy with baseball cap, striped shirt, psychic energy"}
        ],
        "stages": [
            {"name": "Battlefield", "prompt": "floating island, ruins, waterfalls, blue sky"},
            {"name": "Final Destination", "prompt": "floating platform in space, galaxy background"},
            {"name": "Hyrule Castle", "prompt": "fantasy castle rooftop, triforce symbol, wind"},
            {"name": "Mushroom Kingdom", "prompt": "brick blocks, pipes, hills with eyes"}
        ]
    },
    "KOF_Tribute": {
        "chars": [
            {"name": "Kyo_X", "style": "KOF", "archetype": "Shoto", "prompt": "school uniform, headband, fire hands"},
            {"name": "Iori_X", "style": "KOF", "archetype": "Shoto", "prompt": "red hair over eye, moon symbol on back, purple fire"},
            {"name": "Terry_X", "style": "KOF", "archetype": "Brawler", "prompt": "red vest, trucker hat, blonde ponytail"},
            {"name": "Mai_X", "style": "KOF", "archetype": "Ninja", "prompt": "red kunoichi outfit, fans, fire"},
            {"name": "Geese_X", "style": "KOF", "archetype": "Boss", "prompt": "business suit, hakama pants, slicked hair"},
            {"name": "Rugal_X", "style": "KOF", "archetype": "Boss", "prompt": "red suit, mesh shirt, mustache, cyber eye"},
            {"name": "Athena_X", "style": "KOF", "archetype": "Idol", "prompt": "pop idol outfit, purple hair, psychic balls"},
            {"name": "Ryo_X", "style": "KOF", "archetype": "Shoto", "prompt": "orange gi, blonde hair, serious face"}
        ],
        "stages": [
            {"name": "Esaka Street", "prompt": "japanese city street, overpass, neon signs"},
            {"name": "Pao Pao Cafe", "prompt": "tropical bar, palm trees, neon lights"},
            {"name": "South Town Geese Tower", "prompt": "top of skyscraper, japanese sliding doors, night city view"},
            {"name": "Neo Geo Land", "prompt": "arcade interior, game cabinets, crowd"}
        ]
    },
    "Darkstalkers_Tribute": {
        "chars": [
            {"name": "Morrigan_X", "style": "Dark", "archetype": "Succubus", "prompt": "succubus, green hair, bat wings, leotard"},
            {"name": "Felicia_X", "style": "Dark", "archetype": "Beast", "prompt": "cat woman, white fur, blue hair, claws"},
            {"name": "Demitri_X", "style": "Dark", "archetype": "Vampire", "prompt": "vampire lord, blue suit, cape, aura"},
            {"name": "Talbain_X", "style": "Dark", "archetype": "Beast", "prompt": "werewolf, kung fu pants, nunchucks"},
            {"name": "Raptor_X", "style": "Dark", "archetype": "Zombie", "prompt": "zombie rocker, guitar, leather jacket, bones"},
            {"name": "HsienKo_X", "style": "Dark", "archetype": "Undead", "prompt": "jiangshi, giant sleeves, claws, hat"}
        ],
        "stages": [
            {"name": "Deserted Chateau", "prompt": "gothic mansion hall, red carpet, moonlight"},
            {"name": "Fetus of God", "prompt": "alien fleshy landscape, giant heart, gross"},
            {"name": "Tower of Arrogance", "prompt": "top of tower, night sky, gargoyles"},
            {"name": "Iron Horse", "prompt": "demon train interior, skulls, fire"}
        ]
    },
    "Guilty_Gear_Tribute": {
        "chars": [
            {"name": "Sol_X", "style": "Anime", "archetype": "Brawler", "prompt": "red jacket, headband, giant lighter sword"},
            {"name": "Ky_X", "style": "Anime", "archetype": "Shoto", "prompt": "blue holy knight uniform, lightning sword"},
            {"name": "May_X", "style": "Anime", "archetype": "Pirate", "prompt": "orange pirate hat, giant anchor, dolphins"},
            {"name": "Potemkin_X", "style": "Anime", "archetype": "Grappler", "prompt": "giant soldier, metal collar, helmet, gauntlets"},
            {"name": "Chipp_X", "style": "Anime", "archetype": "Ninja", "prompt": "white hair, ninja outfit, arm blade, fast"},
            {"name": "Faust_X", "style": "Anime", "archetype": "Weirdo", "prompt": "tall doctor, paper bag on head, giant scalpel"}
        ],
        "stages": [
            {"name": "Paris", "prompt": "futuristic paris street, eiffel tower, gears"},
            {"name": "May Ship", "prompt": "airship deck, blue sky, clouds, crew watching"},
            {"name": "Nirvana", "prompt": "white void, floating gears, holy light"},
            {"name": "Hellfire", "prompt": "burning city, lava, destruction"}
        ]
    },
    "SoulCalibur_Tribute": {
        "chars": [
            {"name": "Siegfried_X", "style": "3D", "archetype": "Knight", "prompt": "crystal armor, giant crystal sword, blonde hair"},
            {"name": "Nightmare_X", "style": "3D", "archetype": "Boss", "prompt": "cursed azure armor, giant eye on sword, demon arm"},
            {"name": "Ivy_X", "style": "3D", "archetype": "Whip", "prompt": "purple outfit, whip sword, silver hair"},
            {"name": "Taki_X", "style": "3D", "archetype": "Ninja", "prompt": "red bodysuit, dual daggers, mask"},
            {"name": "Mitsurugi_X", "style": "3D", "archetype": "Samurai", "prompt": "samurai armor, katana, scar"},
            {"name": "Voldo_X", "style": "3D", "archetype": "Weirdo", "prompt": "bondage gear, claws, blindfold, contortionist"}
        ],
        "stages": [
            {"name": "Ostrheinsburg Castle", "prompt": "medieval castle courtyard, knights, banners"},
            {"name": "Lost Cathedral", "prompt": "flooded cathedral ruins, water, sunlight"},
            {"name": "Money Pit", "prompt": "underground vault, gold coins, statues"},
            {"name": "Astral Chaos", "prompt": "dimension of chaos, floating rocks, galaxy"}
        ]
    },
    "Killer_Instinct_Tribute": {
        "chars": [
            {"name": "Jago_X", "style": "KI", "archetype": "Ninja", "prompt": "monk ninja, tiger mask, laser sword"},
            {"name": "Fulgore_X", "style": "KI", "archetype": "Robot", "prompt": "cyborg soldier, plasma claws, ponytail, laser eyes"},
            {"name": "Orchid_X", "style": "KI", "archetype": "Agent", "prompt": "green outfit, energy batons, fire cat"},
            {"name": "Glacius_X", "style": "KI", "archetype": "Alien", "prompt": "ice alien, liquid body, ice spikes"},
            {"name": "Sabrewulf_X", "style": "KI", "archetype": "Beast", "prompt": "werewolf, cybernetic arms, blue fur"},
            {"name": "Spinal_X", "style": "KI", "archetype": "Undead", "prompt": "skeleton pirate, shield, sword, green fire"}
        ],
        "stages": [
            {"name": "Tiger Shrine", "prompt": "tibetan temple, giant tiger statue, snow"},
            {"name": "UltraTech Industries", "prompt": "factory interior, robots, assembly line"},
            {"name": "Ice Temple", "prompt": "frozen temple, ice crystals, snow storm"},
            {"name": "Castle Roof", "prompt": "stormy castle roof, lightning, rain"}
        ]
    },
    "BlazBlue_Tribute": {
        "chars": [
            {"name": "Ragna_X", "style": "Anime", "archetype": "Brawler", "prompt": "red coat, white hair, giant sword, dark aura"},
            {"name": "Jin_X", "style": "Anime", "archetype": "Samurai", "prompt": "blue uniform, katana, ice powers"},
            {"name": "Noel_X", "style": "Anime", "archetype": "Gunner", "prompt": "blue beret, dual pistols, blonde hair"},
            {"name": "Rachel_X", "style": "Anime", "archetype": "Vampire", "prompt": "gothic lolita dress, umbrella, red eyes"},
            {"name": "Tager_X", "style": "Anime", "archetype": "Grappler", "prompt": "giant red cyborg, magnetism, glasses"},
            {"name": "Hakumen_X", "style": "Anime", "archetype": "Samurai", "prompt": "white armor, long hair, giant katana, mask"}
        ],
        "stages": [
            {"name": "Kagutsuchi Port", "prompt": "steampunk city port, night, rain, gears"},
            {"name": "Cathedral of Time", "prompt": "clock tower interior, giant gears, stained glass"},
            {"name": "Sheol Gate", "prompt": "giant gate, blue flames, dark void"}
        ]
    },
    "Samurai_Shodown_Tribute": {
        "chars": [
            {"name": "Haohmaru_X", "style": "Samurai", "archetype": "Samurai", "prompt": "wild hair, katana, sake jug, white gi"},
            {"name": "Nakoruru_X", "style": "Samurai", "archetype": "Druid", "prompt": "ainu priestess, hawk companion, dagger"},
            {"name": "Ukyo_X", "style": "Samurai", "archetype": "Samurai", "prompt": "blue hair, coughing, fast draw sword"},
            {"name": "Galford_X", "style": "Samurai", "archetype": "Ninja", "prompt": "american ninja, dog companion, scarf"},
            {"name": "Genjuro_X", "style": "Samurai", "archetype": "Samurai", "prompt": "red hair, scar, hanafuda cards, evil"},
            {"name": "Earthquake_X", "style": "Samurai", "archetype": "Giant", "prompt": "giant fat ninja, chain sickle, tattoos"}
        ],
        "stages": [
            {"name": "Gairyu Isle", "prompt": "island beach, crashing waves, sunset"},
            {"name": "Kamui Kotan", "prompt": "snowy forest, animals watching, shrine"},
            {"name": "Osaka Summer", "prompt": "japanese festival, fireworks, crowd"}
        ]
    },
    "Fatal_Fury_Tribute": {
        "chars": [
            {"name": "Andy_X", "style": "KOF", "archetype": "Ninja", "prompt": "blonde ninja, white outfit, fire elbow"},
            {"name": "Joe_X", "style": "KOF", "archetype": "Kickboxer", "prompt": "muay thai fighter, headband, tornado uppercut"},
            {"name": "Billy_X", "style": "KOF", "archetype": "Weapon", "prompt": "bandana, staff, union jack shirt"},
            {"name": "Yamazaki_X", "style": "KOF", "archetype": "Maniac", "prompt": "gangster, knife, snake arm, crazy laugh"},
            {"name": "Rock_X", "style": "KOF", "archetype": "Shoto", "prompt": "red jacket, blonde hair, energy wings"}
        ],
        "stages": [
            {"name": "Sound Beach", "prompt": "beach boardwalk, sunset, palm trees"},
            {"name": "Geese Tower Roof", "prompt": "helipad, night city view, wind"},
            {"name": "Pao Pao Cafe 2", "prompt": "bar interior, neon signs, crowd"}
        ]
    },
    "Virtua_Fighter_Tribute": {
        "chars": [
            {"name": "Akira_X", "style": "3D", "archetype": "Monk", "prompt": "white gi, headband, bajiquan stance"},
            {"name": "Pai_X", "style": "3D", "archetype": "Speedster", "prompt": "chinese dress, movie star, fast kicks"},
            {"name": "Wolf_X_VF", "style": "3D", "archetype": "Grappler", "prompt": "native american wrestler, face paint"},
            {"name": "Jeffry_X", "style": "3D", "archetype": "Brawler", "prompt": "fisherman, dreadlocks, muscular"},
            {"name": "Kage_X", "style": "3D", "archetype": "Ninja", "prompt": "full ninja suit, metal mask, katana"}
        ],
        "stages": [
            {"name": "Great Wall", "prompt": "great wall of china, mountains, sunset"},
            {"name": "Island Cage", "prompt": "fighting cage on tropical island, blue sky"},
            {"name": "Sanctuary", "prompt": "greek ruins, marble pillars, water"}
        ]
    },
    "Dead_or_Alive_Tribute": {
        "chars": [
            {"name": "Kasumi_X", "style": "3D", "archetype": "Ninja", "prompt": "blue kunoichi outfit, red hair, cherry blossoms"},
            {"name": "Ryu_Hayabusa_X", "style": "3D", "archetype": "Ninja", "prompt": "black ninja suit, falcon symbol, sword"},
            {"name": "Ayane_X", "style": "3D", "archetype": "Ninja", "prompt": "purple hair, butterfly outfit, fast"},
            {"name": "Tina_X", "style": "3D", "archetype": "Grappler", "prompt": "cowgirl outfit, blonde hair, wrestler"},
            {"name": "Zack_X", "style": "3D", "archetype": "Kickboxer", "prompt": "green hair, sunglasses, muay thai"}
        ],
        "stages": [
            {"name": "Danger Zone", "prompt": "industrial floor, exploding tiles, blue light"},
            {"name": "White Beach", "prompt": "white sand beach, palm trees, clear water"},
            {"name": "Kyoto in Bloom", "prompt": "japanese garden, cherry blossoms falling, bridge"}
        ]
    },
    "Final_Fantasy_Tribute": {
        "chars": [
            {"name": "Cloud_X", "style": "RPG", "archetype": "Soldier", "prompt": "spiky blonde hair, giant buster sword, soldier uniform"},
            {"name": "Sephiroth_X", "style": "RPG", "archetype": "Boss", "prompt": "long silver hair, black coat, extremely long katana"},
            {"name": "Terra_X", "style": "RPG", "archetype": "Mage", "prompt": "green hair, red dress, magic aura"},
            {"name": "Tifa_X", "style": "RPG", "archetype": "Monk", "prompt": "black hair, white tank top, martial artist gloves"},
            {"name": "Squall_X", "style": "RPG", "archetype": "Soldier", "prompt": "gunblade, scar, leather jacket, fur collar"},
            {"name": "Vivi_X", "style": "RPG", "archetype": "Mage", "prompt": "black mage, yellow hat, glowing eyes, staff"}
        ],
        "stages": [
            {"name": "Midgar Reactor", "prompt": "mako reactor, green glowing pipes, industrial"},
            {"name": "Forgotten City", "prompt": "crystal shell houses, water, ancient ruins"},
            {"name": "Balamb Garden", "prompt": "futuristic school, flying, blue sky"}
        ]
    },
    "Undertale_Tribute": {
        "chars": [
            {"name": "Sans_X", "style": "Indie", "archetype": "Skeleton", "prompt": "skeleton, blue hoodie, glowing blue eye, bones"},
            {"name": "Papyrus_X", "style": "Indie", "archetype": "Skeleton", "prompt": "tall skeleton, red scarf, armor, spaghetti"},
            {"name": "Undyne_X", "style": "Indie", "archetype": "Knight", "prompt": "fish warrior, red hair, eyepatch, energy spears"}
        ],
        "stages": [
            {"name": "Snowdin Town", "prompt": "snowy town, christmas lights, cozy houses"},
            {"name": "Judgment Hall", "prompt": "golden hallway, stained glass, pillars"},
            {"name": "Waterfall", "prompt": "blue glowing water, echo flowers, dark cave"}
        ]
    },
    "Touhou_Tribute": {
        "chars": [
            {"name": "Reimu_X", "style": "BulletHell", "archetype": "Mage", "prompt": "shrine maiden, red and white dress, gohei, talismans"},
            {"name": "Marisa_X", "style": "BulletHell", "archetype": "Mage", "prompt": "witch, black and white dress, broom, master spark"},
            {"name": "Sakuya_X", "style": "BulletHell", "archetype": "Maid", "prompt": "maid outfit, silver hair, throwing knives, time stop"}
        ],
        "stages": [
            {"name": "Hakurei Shrine", "prompt": "shinto shrine, cherry blossoms, tea table"},
            {"name": "Scarlet Devil Mansion", "prompt": "european mansion, red moon, mist"},
            {"name": "Bamboo Forest", "prompt": "dense bamboo forest, fog, mysterious"}
        ]
    },
    "JoJo_Tribute": {
        "chars": [
            {"name": "Jotaro_X", "style": "Anime", "archetype": "StandUser", "prompt": "school uniform, hat blending with hair, purple star platinum"},
            {"name": "Dio_X", "style": "Anime", "archetype": "TimeStopper", "prompt": "yellow jacket, blonde hair, steamroller, the world"},
            {"name": "Giorno_X", "style": "Anime", "archetype": "StandUser", "prompt": "pink suit, blonde donuts hair, gold experience"}
        ],
        "stages": [
            {"name": "Cairo Bridge", "prompt": "night city bridge, road roller, street lights"},
            {"name": "Morioh Town", "prompt": "bizarre town, yellow sky, crazy noisy bizarre town"},
            {"name": "Colosseum at Night", "prompt": "roman colosseum, moonlight, pillars"}
        ]
    },
    "Star_Wars_Tribute": {
        "chars": [
            {"name": "Vader_X", "style": "SciFi", "archetype": "Sith", "prompt": "black armor, cape, red lightsaber, breathing"},
            {"name": "Luke_X", "style": "SciFi", "archetype": "Jedi", "prompt": "black jedi robes, green lightsaber, mechanical hand"},
            {"name": "Maul_X", "style": "SciFi", "archetype": "Sith", "prompt": "red and black face, horns, double bladed lightsaber"}
        ],
        "stages": [
            {"name": "Death Star Hangar", "prompt": "imperial hangar, tie fighters, glossy floor"},
            {"name": "Mustafar", "prompt": "lava planet, mining facility, volcanoes"},
            {"name": "Hoth Base", "prompt": "ice cave, rebel base, snow"}
        ]
    },
    "Pokemon_Tribute": {
        "chars": [
            {"name": "Charizard_X", "style": "Pokemon", "archetype": "Dragon", "prompt": "orange dragon, wings, fire tail, flying"},
            {"name": "Mewtwo_X", "style": "Pokemon", "archetype": "Psychic", "prompt": "purple psychic cat, tail, floating, energy"},
            {"name": "Lucario_X", "style": "Pokemon", "archetype": "Monk", "prompt": "blue jackal, aura, martial arts, spikes"},
            {"name": "Greninja_X", "style": "Pokemon", "archetype": "Ninja", "prompt": "blue frog ninja, tongue scarf, water shuriken"},
            {"name": "Machamp_X", "style": "Pokemon", "archetype": "Grappler", "prompt": "four armed wrestler, muscular, belt"}
        ],
        "stages": [
            {"name": "Pokemon Stadium", "prompt": "stadium arena, crowd, pokeball logo, lights"},
            {"name": "Spear Pillar", "prompt": "ancient ruins, space distortion, pillars"},
            {"name": "Kalos League", "prompt": "futuristic arena, holographic displays"}
        ]
    },
    "Overwatch_Tribute": {
        "chars": [
            {"name": "Tracer_X", "style": "FPS", "archetype": "Speedster", "prompt": "orange goggles, dual pistols, time blink, british"},
            {"name": "Reaper_X", "style": "FPS", "archetype": "Assassin", "prompt": "skull mask, black cloak, dual shotguns, smoke"},
            {"name": "Genji_X", "style": "FPS", "archetype": "Cyborg", "prompt": "green cyborg ninja, katana, shuriken, mask"},
            {"name": "Dva_X", "style": "FPS", "archetype": "Mech", "prompt": "pink mech suit, bunny logo, korean gamer girl"},
            {"name": "Reinhardt_X", "style": "FPS", "archetype": "Knight", "prompt": "giant armor, rocket hammer, shield, german"}
        ],
        "stages": [
            {"name": "Hanamura", "prompt": "japanese street, cherry blossoms, arcade"},
            {"name": "Numbani", "prompt": "futuristic african city, omnic rights, museum"},
            {"name": "Watchpoint Gibraltar", "prompt": "overwatch base, rocket, ocean view"}
        ]
    },
    "League_of_Legends_Tribute": {
        "chars": [
            {"name": "Yasuo_X", "style": "MOBA", "archetype": "Samurai", "prompt": "wandering samurai, wind blade, ponytail, sake"},
            {"name": "Ahri_X", "style": "MOBA", "archetype": "Mage", "prompt": "nine tailed fox, korean, charm orb, whiskers"},
            {"name": "Jinx_X", "style": "MOBA", "archetype": "Gunner", "prompt": "blue braids, minigun, rocket launcher, crazy"},
            {"name": "Darius_X", "style": "MOBA", "archetype": "Warrior", "prompt": "noxian general, giant axe, red armor, execute"},
            {"name": "Lux_X", "style": "MOBA", "archetype": "Mage", "prompt": "blonde mage, light staff, demacian armor, laser"}
        ],
        "stages": [
            {"name": "Summoner's Rift", "prompt": "moba battlefield, three lanes, jungle, nexus"},
            {"name": "Demacia Square", "prompt": "white stone city, statues, banners, justice"},
            {"name": "Noxus Arena", "prompt": "red colosseum, chains, brutal, crowd"}
        ]
    },
    "Fortnite_Tribute": {
        "chars": [
            {"name": "Jonesy_X", "style": "BR", "archetype": "Soldier", "prompt": "blonde default skin, pickaxe, building, emoting"},
            {"name": "Drift_X", "style": "BR", "archetype": "Ninja", "prompt": "pink kitsune mask, hoodie, rift energy"},
            {"name": "Raven_X", "style": "BR", "archetype": "Assassin", "prompt": "dark hood, purple eyes, wings, scythe"}
        ],
        "stages": [
            {"name": "Tilted Towers", "prompt": "urban city, buildings, loot, storm approaching"},
            {"name": "Pleasant Park", "prompt": "suburban houses, soccer field, trees"},
            {"name": "The Agency", "prompt": "spy headquarters, vault, modern architecture"}
        ]
    },
    "Minecraft_Tribute": {
        "chars": [
            {"name": "Steve_X", "style": "Voxel", "archetype": "Builder", "prompt": "blocky human, blue shirt, pickaxe, sword"},
            {"name": "Creeper_X", "style": "Voxel", "archetype": "Bomber", "prompt": "green blocky creature, sad face, exploding"},
            {"name": "Enderman_X", "style": "Voxel", "archetype": "Teleporter", "prompt": "tall black creature, purple eyes, blocks, teleport"}
        ],
        "stages": [
            {"name": "Overworld Plains", "prompt": "blocky grass, trees, pigs, day cycle"},
            {"name": "Nether Fortress", "prompt": "red hellscape, lava, netherrack, fortress"},
            {"name": "The End", "prompt": "void, obsidian pillars, dragon, purple sky"}
        ]
    },
    "Sonic_Tribute": {
        "chars": [
            {"name": "Sonic_X", "style": "Platform", "archetype": "Speedster", "prompt": "blue hedgehog, red shoes, spiky, fast, rings"},
            {"name": "Tails_X", "style": "Platform", "archetype": "Inventor", "prompt": "yellow fox, two tails, flying, gadgets"},
            {"name": "Knuckles_X", "style": "Platform", "archetype": "Brawler", "prompt": "red echidna, spiked fists, gliding, strong"},
            {"name": "Shadow_X", "style": "Platform", "archetype": "Edgy", "prompt": "black hedgehog, red stripes, chaos emerald, gun"},
            {"name": "Eggman_X", "style": "Platform", "archetype": "Boss", "prompt": "fat scientist, mustache, robot suit, evil"}
        ],
        "stages": [
            {"name": "Green Hill Zone", "prompt": "checkered ground, loops, palm trees, blue sky"},
            {"name": "Chemical Plant", "prompt": "industrial tubes, purple liquid, platforms"},
            {"name": "Space Colony ARK", "prompt": "space station, earth view, metal corridors"}
        ]
    },
    "Mega_Man_Tribute": {
        "chars": [
            {"name": "MegaMan_X", "style": "Platform", "archetype": "Robot", "prompt": "blue robot boy, arm cannon, helmet, pellets"},
            {"name": "Zero_X", "style": "Platform", "archetype": "Samurai", "prompt": "red robot, blonde hair, beam saber, dash"},
            {"name": "Bass_X", "style": "Platform", "archetype": "Rival", "prompt": "purple robot, scarf, buster, rival"}
        ],
        "stages": [
            {"name": "Wily Castle", "prompt": "skull fortress, gears, traps, night"},
            {"name": "Highway Stage", "prompt": "futuristic highway, cars, city background"},
            {"name": "Maverick Factory", "prompt": "robot factory, assembly line, danger"}
        ]
    },
    "Castlevania_Tribute": {
        "chars": [
            {"name": "Simon_X", "style": "Gothic", "archetype": "Whip", "prompt": "barbarian, vampire killer whip, cross, holy water"},
            {"name": "Alucard_X", "style": "Gothic", "archetype": "Vampire", "prompt": "dhampir, long hair, sword, dark powers, cape"},
            {"name": "Dracula_CV_X", "style": "Gothic", "archetype": "Boss", "prompt": "vampire lord, throne, fireballs, castle master"}
        ],
        "stages": [
            {"name": "Clock Tower", "prompt": "gothic clock tower, gears, medusa heads, night"},
            {"name": "Throne Room CV", "prompt": "dracula throne, candles, red carpet, stained glass"},
            {"name": "Chapel", "prompt": "gothic chapel, pews, holy symbols, moonlight"}
        ]
    },
    "Devil_May_Cry_Tribute": {
        "chars": [
            {"name": "Dante_X", "style": "Stylish", "archetype": "Gunslinger", "prompt": "red coat, white hair, dual pistols, sword, pizza"},
            {"name": "Vergil_X", "style": "Stylish", "archetype": "Samurai", "prompt": "blue coat, katana, motivated, power, yamato"},
            {"name": "Nero_X", "style": "Stylish", "archetype": "Brawler", "prompt": "white hair, red queen sword, devil arm, punk"}
        ],
        "stages": [
            {"name": "Temen-ni-gru", "prompt": "demon tower, gothic architecture, red sky"},
            {"name": "Devil May Cry Office", "prompt": "messy office, pool table, jukebox, pizza boxes"},
            {"name": "Demon Realm", "prompt": "hellish landscape, floating rocks, red energy"}
        ]
    },
    "God_of_War_Tribute": {
        "chars": [
            {"name": "Kratos_X", "style": "Hack", "archetype": "Warrior", "prompt": "bald, red tattoo, blades of chaos, angry, spartan"},
            {"name": "Kratos_Norse_X", "style": "Hack", "archetype": "Warrior", "prompt": "beard, leviathan axe, older, father, norse"},
            {"name": "Atreus_X", "style": "Hack", "archetype": "Archer", "prompt": "boy, bow, quiver, norse, son"}
        ],
        "stages": [
            {"name": "Olympus", "prompt": "greek temple, clouds, pillars, gods watching"},
            {"name": "Midgard Lake", "prompt": "norse lake, world tree, boat, mist"},
            {"name": "Helheim", "prompt": "frozen hell, ice, death, norse underworld"}
        ]
    },
    "Halo_Tribute": {
        "chars": [
            {"name": "MasterChief_X", "style": "FPS", "archetype": "Soldier", "prompt": "green armor, gold visor, assault rifle, spartan"},
            {"name": "Arbiter_X", "style": "FPS", "archetype": "Alien", "prompt": "elite armor, energy sword, mandibles, honor"},
            {"name": "Cortana_X", "style": "FPS", "archetype": "AI", "prompt": "blue hologram, female, glowing, digital"}
        ],
        "stages": [
            {"name": "Blood Gulch", "prompt": "canyon, red and blue bases, warthog, rocks"},
            {"name": "Halo Ring", "prompt": "ring world, forerunner structures, space view"},
            {"name": "UNSC Infinity", "prompt": "spaceship interior, holographic displays, military"}
        ]
    },
    "Doom_Tribute": {
        "chars": [
            {"name": "DoomSlayer_X", "style": "FPS", "archetype": "Berserker", "prompt": "green armor, helmet, super shotgun, rip and tear"},
            {"name": "Cyberdemon_X", "style": "FPS", "archetype": "Boss", "prompt": "demon, rocket launcher arm, horns, cybernetic"},
            {"name": "Cacodemon_X", "style": "FPS", "archetype": "Demon", "prompt": "red floating ball, one eye, teeth, fireball"}
        ],
        "stages": [
            {"name": "Mars Base", "prompt": "uac facility, red planet, demons, industrial"},
            {"name": "Hell Landscape", "prompt": "fire, brimstone, demon architecture, skulls"},
            {"name": "Argent Tower", "prompt": "energy tower, blue argent, technology, hell portal"}
        ]
    },
    "Zelda_Tribute": {
        "chars": [
            {"name": "Link_Zelda_X", "style": "Adventure", "archetype": "Hero", "prompt": "green tunic, master sword, hylian shield, elf ears"},
            {"name": "Zelda_X", "style": "Adventure", "archetype": "Princess", "prompt": "princess dress, triforce, magic, wisdom, blonde"},
            {"name": "Ganondorf_X", "style": "Adventure", "archetype": "Warlock", "prompt": "gerudo king, red hair, dark magic, triforce of power"}
        ],
        "stages": [
            {"name": "Hyrule Field", "prompt": "green fields, hyrule castle distance, day, peaceful"},
            {"name": "Temple of Time", "prompt": "master sword pedestal, stained glass, sacred"},
            {"name": "Ganon's Castle", "prompt": "dark castle, evil energy, torches, boss arena"}
        ]
    },
    "Metroid_Tribute": {
        "chars": [
            {"name": "Samus_Metroid_X", "style": "SciFi", "archetype": "Bounty", "prompt": "orange power suit, arm cannon, morph ball, visor"},
            {"name": "ZeroSuit_X", "style": "SciFi", "archetype": "Acrobat", "prompt": "blue zero suit, blonde ponytail, paralyzer, athletic"},
            {"name": "Ridley_X", "style": "SciFi", "archetype": "Dragon", "prompt": "purple space dragon, wings, tail, nemesis"}
        ],
        "stages": [
            {"name": "Brinstar", "prompt": "alien cave, organic walls, acid, metroid planet"},
            {"name": "Frigate Orpheon", "prompt": "space pirate ship, metal corridors, danger"},
            {"name": "Crateria", "prompt": "planet surface, rain, ruins, atmospheric"}
        ]
    }
}

def install_pack(pack_name):
    if pack_name not in PACKS:
        print(f"Pack '{pack_name}' not found.")
        return

    print(f"=== INSTALLING PACK: {pack_name} ===")
    pack = PACKS[pack_name]
    
    # Install Chars
    for char in pack["chars"]:
        print(f"  > Generating Character: {char['name']}...")
        # Use generator_v2 logic
        # We suppress stdout to keep it clean, or just let it flow
        generator_v2.generate_character(char['name'], char['style'], char.get('archetype', 'Shoto'), char['prompt'])
        
    # Install Stages
    for stage in pack["stages"]:
        print(f"  > Generating Stage: {stage['name']}...")
        stage_generator.generate_stage(stage['name'], stage['prompt'])
        
    print(f"=== PACK {pack_name} INSTALLED SUCCESSFULLY ===")

def install_all():
    for pack in PACKS:
        install_pack(pack)

if __name__ == "__main__":
    if len(sys.argv) > 1:
        if sys.argv[1] == "all":
            install_all()
        elif sys.argv[1] in PACKS:
            install_pack(sys.argv[1])
        else:
            print("Available Packs:")
            for k in PACKS.keys(): print(f" - {k}")
    else:
        print("Usage: python mass_content.py [pack_name|all]")
        print("Available Packs:")
        for k in PACKS.keys(): print(f" - {k}")
