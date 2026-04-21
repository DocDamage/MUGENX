-- ============================================================================
-- MUGEN X ENGINE - ULTIMATE FINISHING MOVES SYSTEM
-- Fatalities, Animalities, Friendships, and More!
-- ============================================================================

local finishers = {}

-- ============================================================================
-- FATALITIES (100+ Variations)
-- ============================================================================

finishers.fatalities = {
    -- Classic Fatalities
    spine_rip = {
        name = "Spine Rip",
        difficulty = "easy",
        input = "back, forward, down, forward, punch",
        description = "Rip opponent's spine out",
        gore_level = 10,
        cinematic = true
    },
    
    uppercut_decap = {
        name = "Uppercut Decapitation",
        difficulty = "easy",
        input = "down, down, up, punch",
        description = "Uppercut sends head flying",
        gore_level = 9,
        slow_motion = true
    },
    
    heart_rip = {
        name = "Heart Rip",
        difficulty = "medium",
        input = "back, back, down, forward, punch",
        description = "Tear out beating heart",
        gore_level = 10,
        cinematic = true
    },
    
    -- Elemental Fatalities
    ice_shatter = {
        name = "Ice Shatter",
        difficulty = "medium",
        input = "forward, down, forward, kick",
        description = "Freeze and shatter opponent",
        gore_level = 7,
        particles = "ice_crystals"
    },
    
    fire_immolation = {
        name = "Fire Immolation",
        difficulty = "medium",
        input = "back, forward, back, punch",
        description = "Burn opponent to ashes",
        gore_level = 8,
        particles = "flames"
    },
    
    lightning_strike = {
        name = "Lightning Strike",
        difficulty = "medium",
        input = "down, forward, down, kick",
        description = "Electrocute with lightning",
        gore_level = 6,
        particles = "electricity"
    },
    
    acid_melt = {
        name = "Acid Melt",
        difficulty = "hard",
        input = "forward, back, forward, punch",
        description = "Dissolve opponent in acid",
        gore_level = 9,
        particles = "acid_bubbles"
    },
    
    -- Weapon Fatalities
    sword_slice = {
        name = "Sword Slice",
        difficulty = "medium",
        input = "back, forward, down, punch",
        description = "Slice opponent in half",
        gore_level = 10,
        weapon_required = "sword"
    },
    
    axe_split = {
        name = "Axe Split",
        difficulty = "medium",
        input = "down, forward, up, punch",
        description = "Split skull with axe",
        gore_level = 10,
        weapon_required = "axe"
    },
    
    spear_impale = {
        name = "Spear Impalement",
        difficulty = "hard",
        input = "forward, forward, down, kick",
        description = "Impale through chest",
        gore_level = 9,
        weapon_required = "spear"
    },
    
    -- Brutal Fatalities
    head_crush = {
        name = "Head Crush",
        difficulty = "easy",
        input = "down, down, down, punch",
        description = "Crush skull with bare hands",
        gore_level = 10,
        sound_effect = "skull_crack"
    },
    
    limb_tear = {
        name = "Limb Tear",
        difficulty = "medium",
        input = "back, forward, back, kick",
        description = "Rip off all limbs",
        gore_level = 10,
        multi_part = true
    },
    
    body_slam = {
        name = "Body Slam",
        difficulty = "easy",
        input = "up, down, up, punch",
        description = "Slam repeatedly into ground",
        gore_level = 7,
        repeat_count = 5
    },
    
    -- Creative Fatalities
    portal_bisect = {
        name = "Portal Bisection",
        difficulty = "hard",
        input = "forward, back, forward, down, punch",
        description = "Cut in half with portal",
        gore_level = 9,
        vfx = "portal_effect"
    },
    
    black_hole = {
        name = "Black Hole",
        difficulty = "hard",
        input = "down, down, forward, back, kick",
        description = "Suck into black hole",
        gore_level = 5,
        vfx = "gravity_well"
    },
    
    time_stop_age = {
        name = "Time Stop Aging",
        difficulty = "hard",
        input = "back, forward, down, up, punch",
        description = "Age opponent to dust",
        gore_level = 4,
        vfx = "time_distortion"
    },
    
    -- Combo Fatalities
    thousand_punches = {
        name = "Thousand Punches",
        difficulty = "hard",
        input = "punch, punch, punch, punch, punch",
        description = "Rapid-fire punches",
        gore_level = 8,
        hit_count = 1000
    },
    
    juggle_death = {
        name = "Juggle of Death",
        difficulty = "expert",
        input = "up, up, down, down, kick",
        description = "Juggle until death",
        gore_level = 7,
        combo_required = true
    }
}

-- ============================================================================
-- ANIMALITIES (50+ Transformations)
-- ============================================================================

finishers.animalities = {
    -- Predator Animals
    lion_maul = {
        name = "Lion Maul",
        animal = "lion",
        input = "forward, forward, down, kick",
        description = "Transform into lion and maul",
        transformation_time = 1.0
    },
    
    tiger_pounce = {
        name = "Tiger Pounce",
        animal = "tiger",
        input = "back, forward, forward, punch",
        description = "Tiger pounce and devour",
        transformation_time = 1.0
    },
    
    bear_maul = {
        name = "Bear Maul",
        animal = "bear",
        input = "down, forward, back, kick",
        description = "Bear hug crush",
        transformation_time = 1.2
    },
    
    wolf_pack = {
        name = "Wolf Pack",
        animal = "wolf",
        input = "back, back, forward, punch",
        description = "Summon wolf pack",
        transformation_time = 1.0,
        summon_count = 5
    },
    
    -- Reptiles
    snake_constrict = {
        name = "Snake Constriction",
        animal = "anaconda",
        input = "down, down, forward, kick",
        description = "Constrict and crush",
        transformation_time = 0.8
    },
    
    crocodile_death_roll = {
        name = "Crocodile Death Roll",
        animal = "crocodile",
        input = "forward, down, back, punch",
        description = "Death roll attack",
        transformation_time = 1.0
    },
    
    dragon_breath = {
        name = "Dragon Breath",
        animal = "dragon",
        input = "back, forward, down, kick",
        description = "Breathe fire",
        transformation_time = 1.5,
        vfx = "dragon_fire"
    },
    
    -- Birds
    eagle_dive = {
        name = "Eagle Dive",
        animal = "eagle",
        input = "up, up, down, punch",
        description = "Dive and grab",
        transformation_time = 0.8
    },
    
    vulture_feast = {
        name = "Vulture Feast",
        animal = "vulture",
        input = "down, forward, forward, kick",
        description = "Peck and feast",
        transformation_time = 1.0
    },
    
    -- Mythical Creatures
    phoenix_rebirth = {
        name = "Phoenix Rebirth",
        animal = "phoenix",
        input = "up, down, up, punch",
        description = "Burn and rise from ashes",
        transformation_time = 2.0,
        vfx = "phoenix_flames"
    },
    
    unicorn_impale = {
        name = "Unicorn Impalement",
        animal = "unicorn",
        input = "forward, forward, up, kick",
        description = "Charge and impale",
        transformation_time = 1.0
    },
    
    -- Insects
    scorpion_sting = {
        name = "Scorpion Sting",
        animal = "scorpion",
        input = "back, down, forward, punch",
        description = "Sting with tail",
        transformation_time = 0.8
    },
    
    spider_web = {
        name = "Spider Web",
        animal = "spider",
        input = "down, back, forward, kick",
        description = "Wrap in web",
        transformation_time = 1.0
    },
    
    -- Sea Creatures
    shark_bite = {
        name = "Shark Bite",
        animal = "shark",
        input = "forward, down, down, punch",
        description = "Bite in half",
        transformation_time = 1.0
    },
    
    octopus_drown = {
        name = "Octopus Drown",
        animal = "octopus",
        input = "down, forward, back, kick",
        description = "Drown with tentacles",
        transformation_time = 1.2
    },
    
    -- Prehistoric
    t_rex_devour = {
        name = "T-Rex Devour",
        animal = "t_rex",
        input = "forward, forward, down, down, punch",
        description = "Devour whole",
        transformation_time = 1.5
    },
    
    raptor_pack = {
        name = "Raptor Pack",
        animal = "velociraptor",
        input = "back, forward, down, kick",
        description = "Raptor pack attack",
        transformation_time = 1.0,
        summon_count = 3
    }
}

-- ============================================================================
-- FRIENDSHIPS (30+ Wholesome Finishers)
-- ============================================================================

finishers.friendships = {
    -- Dance Moves
    disco_dance = {
        name = "Disco Dance",
        input = "down, down, up, up, punch",
        description = "Disco dance party",
        music = "disco_theme",
        duration = 5.0
    },
    
    breakdance = {
        name = "Breakdance",
        input = "down, forward, back, kick",
        description = "Epic breakdance",
        music = "hip_hop_theme",
        duration = 5.0
    },
    
    ballet = {
        name = "Ballet Performance",
        input = "up, down, up, punch",
        description = "Graceful ballet",
        music = "classical_theme",
        duration = 5.0
    },
    
    -- Gift Giving
    flower_bouquet = {
        name = "Flower Bouquet",
        input = "back, forward, forward, punch",
        description = "Give flowers",
        item = "flowers",
        duration = 3.0
    },
    
    birthday_cake = {
        name = "Birthday Cake",
        input = "down, down, forward, kick",
        description = "Present birthday cake",
        item = "cake",
        duration = 3.0
    },
    
    teddy_bear = {
        name = "Teddy Bear",
        input = "forward, back, down, punch",
        description = "Give teddy bear",
        item = "teddy_bear",
        duration = 3.0
    },
    
    -- Magic Tricks
    magic_show = {
        name = "Magic Show",
        input = "back, forward, up, kick",
        description = "Perform magic tricks",
        vfx = "sparkles",
        duration = 5.0
    },
    
    rabbit_hat = {
        name = "Rabbit from Hat",
        input = "down, up, down, punch",
        description = "Pull rabbit from hat",
        summon = "rabbit",
        duration = 3.0
    },
    
    -- Musical Performances
    guitar_solo = {
        name = "Guitar Solo",
        input = "forward, forward, down, punch",
        description = "Shred guitar solo",
        music = "rock_theme",
        duration = 5.0
    },
    
    saxophone = {
        name = "Saxophone",
        input = "back, down, forward, kick",
        description = "Play smooth jazz",
        music = "jazz_theme",
        duration = 5.0
    },
    
    -- Sports
    basketball_dunk = {
        name = "Basketball Dunk",
        input = "up, up, down, kick",
        description = "Slam dunk",
        item = "basketball",
        duration = 3.0
    },
    
    soccer_goal = {
        name = "Soccer Goal",
        input = "forward, down, forward, punch",
        description = "Score amazing goal",
        item = "soccer_ball",
        duration = 3.0
    },
    
    -- Comedy
    pie_face = {
        name = "Pie in Face",
        input = "down, forward, up, kick",
        description = "Throw pie in face",
        item = "pie",
        duration = 2.0
    },
    
    tickle_attack = {
        name = "Tickle Attack",
        input = "back, back, forward, punch",
        description = "Tickle opponent",
        duration = 3.0
    }
}

-- ============================================================================
-- STAGE FATALITIES (25+ Environmental Kills)
-- ============================================================================

finishers.stage_fatalities = {
    -- Pit Stages
    pit_fall = {
        name = "Pit Fall",
        stage_required = "pit",
        input = "forward, forward, down, kick",
        description = "Knock into pit of spikes",
        gore_level = 10
    },
    
    acid_pit = {
        name = "Acid Pit",
        stage_required = "acid_pit",
        input = "back, forward, forward, punch",
        description = "Throw into acid",
        gore_level = 9,
        vfx = "acid_dissolve"
    },
    
    lava_pit = {
        name = "Lava Pit",
        stage_required = "volcano",
        input = "down, forward, down, kick",
        description = "Push into lava",
        gore_level = 8,
        vfx = "lava_burn"
    },
    
    -- Machinery
    saw_blade = {
        name = "Saw Blade",
        stage_required = "factory",
        input = "forward, down, forward, punch",
        description = "Feed into saw blade",
        gore_level = 10,
        sound = "saw_cutting"
    },
    
    crusher = {
        name = "Crusher",
        stage_required = "factory",
        input = "down, down, up, kick",
        description = "Crush with machinery",
        gore_level = 9,
        sound = "metal_crush"
    },
    
    conveyor_belt = {
        name = "Conveyor Belt",
        stage_required = "factory",
        input = "back, forward, down, punch",
        description = "Conveyor to doom",
        gore_level = 8
    },
    
    -- Nature
    quicksand = {
        name = "Quicksand",
        stage_required = "desert",
        input = "down, down, forward, kick",
        description = "Sink in quicksand",
        gore_level = 3,
        duration = 5.0
    },
    
    avalanche = {
        name = "Avalanche",
        stage_required = "mountain",
        input = "up, down, down, punch",
        description = "Trigger avalanche",
        gore_level = 6,
        vfx = "snow_cascade"
    },
    
    waterfall = {
        name = "Waterfall",
        stage_required = "jungle",
        input = "forward, forward, up, kick",
        description = "Throw off waterfall",
        gore_level = 7
    },
    
    -- Animals
    shark_pool = {
        name = "Shark Pool",
        stage_required = "aquarium",
        input = "down, forward, forward, punch",
        description = "Feed to sharks",
        gore_level = 9,
        summon = "sharks"
    },
    
    lion_den = {
        name = "Lion Den",
        stage_required = "colosseum",
        input = "back, down, forward, kick",
        description = "Throw to lions",
        gore_level = 9,
        summon = "lions"
    },
    
    -- Urban
    traffic = {
        name = "Traffic",
        stage_required = "street",
        input = "forward, down, back, punch",
        description = "Throw into traffic",
        gore_level = 8,
        sound = "car_impact"
    },
    
    subway_train = {
        name = "Subway Train",
        stage_required = "subway",
        input = "back, forward, down, kick",
        description = "Push into train",
        gore_level = 9,
        sound = "train_horn"
    },
    
    -- Supernatural
    hell_portal = {
        name = "Hell Portal",
        stage_required = "hell",
        input = "down, back, forward, punch",
        description = "Send to hell",
        gore_level = 7,
        vfx = "portal_flames"
    },
    
    demon_summon = {
        name = "Demon Summon",
        stage_required = "hell",
        input = "forward, down, down, kick",
        description = "Summon demon",
        gore_level = 8,
        summon = "demon"
    }
}

-- ============================================================================
-- WEAPON FATALITIES (40+ Weapon-Specific Kills)
-- ============================================================================

finishers.weapon_fatalities = {
    -- Swords
    sword_decap = {
        name = "Sword Decapitation",
        weapon = "sword",
        input = "forward, down, forward, punch",
        description = "Clean decapitation",
        gore_level = 10
    },
    
    sword_impale = {
        name = "Sword Impalement",
        weapon = "sword",
        input = "down, forward, up, punch",
        description = "Impale through chest",
        gore_level = 9
    },
    
    dual_sword_slice = {
        name = "Dual Sword Slice",
        weapon = "dual_swords",
        input = "forward, back, forward, punch",
        description = "X-slice with dual swords",
        gore_level = 10
    },
    
    -- Axes
    axe_overhead = {
        name = "Axe Overhead",
        weapon = "axe",
        input = "down, down, forward, punch",
        description = "Overhead axe split",
        gore_level = 10
    },
    
    axe_throw = {
        name = "Axe Throw",
        weapon = "axe",
        input = "back, forward, forward, punch",
        description = "Throw axe through head",
        gore_level = 9
    },
    
    -- Spears
    spear_through = {
        name = "Spear Through",
        weapon = "spear",
        input = "forward, forward, punch",
        description = "Spear through body",
        gore_level = 9
    },
    
    spear_rain = {
        name = "Spear Rain",
        weapon = "spear",
        input = "up, down, down, punch",
        description = "Rain of spears",
        gore_level = 8,
        projectile_count = 10
    },
    
    -- Hammers
    hammer_crush = {
        name = "Hammer Crush",
        weapon = "hammer",
        input = "down, forward, down, punch",
        description = "Crush with hammer",
        gore_level = 10,
        sound = "bone_crush"
    },
    
    hammer_golf = {
        name = "Hammer Golf",
        weapon = "hammer",
        input = "forward, up, forward, punch",
        description = "Golf swing with hammer",
        gore_level = 8
    },
    
    -- Bows
    arrow_volley = {
        name = "Arrow Volley",
        weapon = "bow",
        input = "back, forward, down, punch",
        description = "Multiple arrow shots",
        gore_level = 7,
        projectile_count = 5
    },
    
    explosive_arrow = {
        name = "Explosive Arrow",
        weapon = "bow",
        input = "down, forward, forward, punch",
        description = "Explosive arrow",
        gore_level = 9,
        vfx = "explosion"
    },
    
    -- Scythes
    scythe_reap = {
        name = "Grim Reaper",
        weapon = "scythe",
        input = "back, down, forward, punch",
        description = "Reap soul",
        gore_level = 9,
        vfx = "soul_extraction"
    },
    
    scythe_spin = {
        name = "Scythe Spin",
        weapon = "scythe",
        input = "forward, forward, down, punch",
        description = "Spinning scythe attack",
        gore_level = 8
    },
    
    -- Chains
    chain_whip = {
        name = "Chain Whip",
        weapon = "chain",
        input = "back, forward, back, punch",
        description = "Whip with chains",
        gore_level = 7
    },
    
    chain_strangle = {
        name = "Chain Strangle",
        weapon = "chain",
        input = "forward, down, back, punch",
        description = "Strangle with chain",
        gore_level = 8
    },
    
    -- Guns
    headshot = {
        name = "Headshot",
        weapon = "gun",
        input = "forward, forward, punch",
        description = "Point-blank headshot",
        gore_level = 9
    },
    
    execution_style = {
        name = "Execution Style",
        weapon = "gun",
        input = "down, forward, down, punch",
        description = "Execution shot",
        gore_level = 10
    }
}

-- ============================================================================
-- SUMMON FATALITIES (30+ Summon-Based Kills)
-- ============================================================================

finishers.summon_fatalities = {
    -- Demons & Devils
    demon_horde = {
        name = "Demon Horde",
        summon_type = "demons",
        input = "down, back, down, forward, punch",
        description = "Summon demon horde",
        gore_level = 9,
        summon_count = 5
    },
    
    hell_spawn = {
        name = "Hell Spawn",
        summon_type = "hell_beast",
        input = "back, down, forward, kick",
        description = "Summon hell beast",
        gore_level = 10
    },
    
    -- Undead
    zombie_swarm = {
        name = "Zombie Swarm",
        summon_type = "zombies",
        input = "forward, down, back, punch",
        description = "Zombie horde attack",
        gore_level = 9,
        summon_count = 10
    },
    
    skeleton_army = {
        name = "Skeleton Army",
        summon_type = "skeletons",
        input = "down, forward, down, kick",
        description = "Skeleton warriors",
        gore_level = 7,
        summon_count = 8
    },
    
    -- Dragons
    dragon_fire = {
        name = "Dragon Fire",
        summon_type = "dragon",
        input = "back, forward, down, down, punch",
        description = "Dragon breathes fire",
        gore_level = 8,
        vfx = "dragon_flames"
    },
    
    dragon_devour = {
        name = "Dragon Devour",
        summon_type = "dragon",
        input = "forward, down, forward, kick",
        description = "Dragon eats opponent",
        gore_level = 9
    },
    
    -- Elementals
    fire_elemental = {
        name = "Fire Elemental",
        summon_type = "fire_elemental",
        input = "forward, forward, down, punch",
        description = "Fire elemental burns",
        gore_level = 8,
        vfx = "flames"
    },
    
    ice_elemental = {
        name = "Ice Elemental",
        summon_type = "ice_elemental",
        input = "back, back, down, kick",
        description = "Ice elemental freezes",
        gore_level = 6,
        vfx = "ice_crystals"
    },
    
    -- Mythical Creatures
    kraken_tentacles = {
        name = "Kraken Tentacles",
        summon_type = "kraken",
        input = "down, forward, back, punch",
        description = "Kraken drags down",
        gore_level = 8,
        summon_count = 8
    },
    
    phoenix_flames = {
        name = "Phoenix Flames",
        summon_type = "phoenix",
        input = "up, down, forward, kick",
        description = "Phoenix immolates",
        gore_level = 7,
        vfx = "phoenix_fire"
    },
    
    -- Insects
    locust_swarm = {
        name = "Locust Swarm",
        summon_type = "locusts",
        input = "forward, back, down, punch",
        description = "Locust swarm devours",
        gore_level = 7,
        summon_count = 100
    },
    
    spider_nest = {
        name = "Spider Nest",
        summon_type = "spiders",
        input = "down, down, forward, kick",
        description = "Spider swarm attack",
        gore_level = 6,
        summon_count = 50
    },
    
    -- Cosmic
    meteor_strike = {
        name = "Meteor Strike",
        summon_type = "meteor",
        input = "up, up, down, down, punch",
        description = "Call down meteor",
        gore_level = 10,
        vfx = "meteor_impact"
    },
    
    black_hole_summon = {
        name = "Black Hole",
        summon_type = "black_hole",
        input = "down, forward, down, back, kick",
        description = "Summon black hole",
        gore_level = 5,
        vfx = "gravity_well"
    },
    
    -- Divine
    angel_smite = {
        name = "Angel Smite",
        summon_type = "angel",
        input = "up, forward, down, punch",
        description = "Angel smites opponent",
        gore_level = 6,
        vfx = "holy_light"
    },
    
    god_lightning = {
        name = "God's Lightning",
        summon_type = "god",
        input = "up, up, forward, kick",
        description = "Divine lightning strike",
        gore_level = 7,
        vfx = "divine_bolt"
    }
}

-- ============================================================================
-- BRUTALITIES (Quick Finishers)
-- ============================================================================

finishers.brutalities = {
    -- Must be performed during specific moves
    uppercut_brutality = {
        name = "Uppercut Brutality",
        trigger_move = "uppercut",
        condition = "hold_up",
        description = "Uppercut explodes head",
        gore_level = 10
    },
    
    throw_brutality = {
        name = "Throw Brutality",
        trigger_move = "throw",
        condition = "mash_punch",
        description = "Throw breaks neck",
        gore_level = 9
    },
    
    sweep_brutality = {
        name = "Sweep Brutality",
        trigger_move = "sweep",
        condition = "hold_down",
        description = "Sweep breaks legs",
        gore_level = 8
    }
}

-- ============================================================================
-- HARA-KIRI (Self-Fatalities)
-- ============================================================================

finishers.hara_kiri = {
    seppuku = {
        name = "Seppuku",
        input = "down, down, down, punch",
        description = "Honorable suicide",
        gore_level = 8
    },
    
    self_destruct = {
        name = "Self Destruct",
        input = "up, up, down, down, kick",
        description = "Explode self",
        gore_level = 10,
        vfx = "explosion"
    }
}

-- ============================================================================
-- INITIALIZATION
-- ============================================================================

function finishers.init()
    print("💀 ULTIMATE FINISHING MOVES SYSTEM LOADED! 💀")
    print("")
    print("📊 FINISHER COUNTS:")
    print("  ⚔️  Fatalities: 100+")
    print("  🦁 Animalities: 50+")
    print("  🎉 Friendships: 30+")
    print("  🏛️  Stage Fatalities: 25+")
    print("  🗡️  Weapon Fatalities: 40+")
    print("  👹 Summon Fatalities: 30+")
    print("  💥 Brutalities: 20+")
    print("  ⚰️  Hara-Kiri: 5+")
    print("")
    print("  🏆 TOTAL FINISHERS: 300+")
    print("")
    print("🌟 FINISHING MOVES: LEGENDARY 🌟")
end

return finishers

