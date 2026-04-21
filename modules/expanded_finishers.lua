-- ============================================================================
-- MUGEN X ENGINE - EXPANDED FINISHERS LIBRARY
-- Massive expansion of Summons, Brutalities, and Hara-Kiris
-- ============================================================================

local expanded_finishers = {}

-- ============================================================================
-- SUMMON FATALITIES EXPANSION (100+ Total)
-- ============================================================================

expanded_finishers.summon_fatalities = {
    -- DEMONS & DEVILS (20)
    demon_horde = {name = "Demon Horde", summon = "demons", count = 5, gore = 9},
    hell_spawn = {name = "Hell Spawn", summon = "hell_beast", gore = 10},
    succubus_drain = {name = "Succubus Drain", summon = "succubus", gore = 7},
    incubus_torment = {name = "Incubus Torment", summon = "incubus", gore = 8},
    devil_contract = {name = "Devil's Contract", summon = "devil", gore = 9},
    imp_swarm = {name = "Imp Swarm", summon = "imps", count = 20, gore = 7},
    balrog_flame = {name = "Balrog Flames", summon = "balrog", gore = 10},
    archfiend_wrath = {name = "Archfiend Wrath", summon = "archfiend", gore = 10},
    hellhound_pack = {name = "Hellhound Pack", summon = "hellhounds", count = 3, gore = 9},
    pit_fiend = {name = "Pit Fiend", summon = "pit_fiend", gore = 10},
    shadow_demon = {name = "Shadow Demon", summon = "shadow_demon", gore = 8},
    blood_demon = {name = "Blood Demon", summon = "blood_demon", gore = 10},
    chaos_demon = {name = "Chaos Demon", summon = "chaos_demon", gore = 9},
    void_demon = {name = "Void Demon", summon = "void_demon", gore = 8},
    infernal_lord = {name = "Infernal Lord", summon = "infernal_lord", gore = 10},
    demon_prince = {name = "Demon Prince", summon = "demon_prince", gore = 10},
    lesser_demons = {name = "Lesser Demons", summon = "lesser_demons", count = 10, gore = 8},
    greater_demon = {name = "Greater Demon", summon = "greater_demon", gore = 10},
    demon_king = {name = "Demon King", summon = "demon_king", gore = 10},
    lucifer_himself = {name = "Lucifer", summon = "lucifer", gore = 10},
    
    -- UNDEAD (20)
    zombie_swarm = {name = "Zombie Swarm", summon = "zombies", count = 10, gore = 9},
    skeleton_army = {name = "Skeleton Army", summon = "skeletons", count = 8, gore = 7},
    vampire_bite = {name = "Vampire Bite", summon = "vampire", gore = 8},
    lich_curse = {name = "Lich Curse", summon = "lich", gore = 7},
    wraith_touch = {name = "Wraith Touch", summon = "wraith", gore = 6},
    ghoul_feast = {name = "Ghoul Feast", summon = "ghouls", count = 5, gore = 9},
    banshee_scream = {name = "Banshee Scream", summon = "banshee", gore = 5},
    necromancer_raise = {name = "Necromancer", summon = "necromancer", gore = 8},
    death_knight = {name = "Death Knight", summon = "death_knight", gore = 9},
    mummy_curse = {name = "Mummy's Curse", summon = "mummy", gore = 7},
    revenant_revenge = {name = "Revenant Revenge", summon = "revenant", gore = 8},
    wight_drain = {name = "Wight Drain", summon = "wight", gore = 7},
    zombie_lord = {name = "Zombie Lord", summon = "zombie_lord", gore = 9},
    skeleton_king = {name = "Skeleton King", summon = "skeleton_king", gore = 8},
    vampire_lord = {name = "Vampire Lord", summon = "vampire_lord", gore = 9},
    lich_king = {name = "Lich King", summon = "lich_king", gore = 8},
    ghost_army = {name = "Ghost Army", summon = "ghosts", count = 15, gore = 6},
    specter_horde = {name = "Specter Horde", summon = "specters", count = 12, gore = 7},
    undead_dragon = {name = "Undead Dragon", summon = "undead_dragon", gore = 10},
    death_itself = {name = "Death Itself", summon = "grim_reaper", gore = 10},
    
    -- DRAGONS (15)
    dragon_fire = {name = "Dragon Fire", summon = "dragon", gore = 8},
    dragon_devour = {name = "Dragon Devour", summon = "dragon", gore = 9},
    ice_dragon = {name = "Ice Dragon", summon = "ice_dragon", gore = 7},
    lightning_dragon = {name = "Lightning Dragon", summon = "lightning_dragon", gore = 8},
    poison_dragon = {name = "Poison Dragon", summon = "poison_dragon", gore = 8},
    shadow_dragon = {name = "Shadow Dragon", summon = "shadow_dragon", gore = 9},
    bone_dragon = {name = "Bone Dragon", summon = "bone_dragon", gore = 8},
    crystal_dragon = {name = "Crystal Dragon", summon = "crystal_dragon", gore = 7},
    gold_dragon = {name = "Gold Dragon", summon = "gold_dragon", gore = 8},
    black_dragon = {name = "Black Dragon", summon = "black_dragon", gore = 9},
    red_dragon = {name = "Red Dragon", summon = "red_dragon", gore = 9},
    blue_dragon = {name = "Blue Dragon", summon = "blue_dragon", gore = 8},
    green_dragon = {name = "Green Dragon", summon = "green_dragon", gore = 8},
    white_dragon = {name = "White Dragon", summon = "white_dragon", gore = 7},
    ancient_dragon = {name = "Ancient Dragon", summon = "ancient_dragon", gore = 10},
    
    -- ELEMENTALS (15)
    fire_elemental = {name = "Fire Elemental", summon = "fire_elemental", gore = 8},
    ice_elemental = {name = "Ice Elemental", summon = "ice_elemental", gore = 6},
    lightning_elemental = {name = "Lightning Elemental", summon = "lightning_elemental", gore = 7},
    earth_elemental = {name = "Earth Elemental", summon = "earth_elemental", gore = 7},
    water_elemental = {name = "Water Elemental", summon = "water_elemental", gore = 6},
    wind_elemental = {name = "Wind Elemental", summon = "wind_elemental", gore = 6},
    shadow_elemental = {name = "Shadow Elemental", summon = "shadow_elemental", gore = 7},
    light_elemental = {name = "Light Elemental", summon = "light_elemental", gore = 6},
    poison_elemental = {name = "Poison Elemental", summon = "poison_elemental", gore = 8},
    magma_elemental = {name = "Magma Elemental", summon = "magma_elemental", gore = 9},
    storm_elemental = {name = "Storm Elemental", summon = "storm_elemental", gore = 7},
    nature_elemental = {name = "Nature Elemental", summon = "nature_elemental", gore = 6},
    metal_elemental = {name = "Metal Elemental", summon = "metal_elemental", gore = 8},
    crystal_elemental = {name = "Crystal Elemental", summon = "crystal_elemental", gore = 7},
    void_elemental = {name = "Void Elemental", summon = "void_elemental", gore = 8},
    
    -- MYTHICAL CREATURES (15)
    kraken_tentacles = {name = "Kraken", summon = "kraken", gore = 8},
    phoenix_flames = {name = "Phoenix", summon = "phoenix", gore = 7},
    hydra_heads = {name = "Hydra", summon = "hydra", gore = 9},
    cerberus_bite = {name = "Cerberus", summon = "cerberus", gore = 9},
    chimera_attack = {name = "Chimera", summon = "chimera", gore = 9},
    manticore_sting = {name = "Manticore", summon = "manticore", gore = 8},
    basilisk_gaze = {name = "Basilisk", summon = "basilisk", gore = 7},
    griffin_maul = {name = "Griffin", summon = "griffin", gore = 8},
    pegasus_trample = {name = "Pegasus", summon = "pegasus", gore = 6},
    sphinx_riddle = {name = "Sphinx", summon = "sphinx", gore = 7},
    minotaur_charge = {name = "Minotaur", summon = "minotaur", gore = 9},
    medusa_stone = {name = "Medusa", summon = "medusa", gore = 7},
    cyclops_crush = {name = "Cyclops", summon = "cyclops", gore = 9},
    leviathan_swallow = {name = "Leviathan", summon = "leviathan", gore = 10},
    behemoth_stomp = {name = "Behemoth", summon = "behemoth", gore = 9},
    
    -- COSMIC/DIVINE (15)
    meteor_strike = {name = "Meteor Strike", summon = "meteor", gore = 10},
    black_hole_summon = {name = "Black Hole", summon = "black_hole", gore = 5},
    angel_smite = {name = "Angel Smite", summon = "angel", gore = 6},
    god_lightning = {name = "God's Lightning", summon = "god", gore = 7},
    archangel_sword = {name = "Archangel", summon = "archangel", gore = 8},
    seraphim_fire = {name = "Seraphim", summon = "seraphim", gore = 7},
    cherub_swarm = {name = "Cherub Swarm", summon = "cherubs", count = 10, gore = 5},
    valkyrie_spear = {name = "Valkyrie", summon = "valkyrie", gore = 8},
    titan_stomp = {name = "Titan", summon = "titan", gore = 10},
    god_of_war = {name = "God of War", summon = "war_god", gore = 10},
    god_of_death = {name = "God of Death", summon = "death_god", gore = 10},
    cosmic_horror = {name = "Cosmic Horror", summon = "cosmic_horror", gore = 9},
    eldritch_being = {name = "Eldritch Being", summon = "eldritch", gore = 9},
    old_god = {name = "Old God", summon = "old_god", gore = 10},
    supernova = {name = "Supernova", summon = "supernova", gore = 10},
}

-- ============================================================================
-- BRUTALITIES EXPANSION (100+ Total)
-- ============================================================================

expanded_finishers.brutalities = {
    -- PUNCH BRUTALITIES (20)
    jab_brutality = {name = "Jab Brutality", move = "jab", condition = "mash_punch", gore = 7},
    cross_brutality = {name = "Cross Brutality", move = "cross", condition = "hold_forward", gore = 8},
    hook_brutality = {name = "Hook Brutality", move = "hook", condition = "hold_back", gore = 8},
    uppercut_brutality = {name = "Uppercut Brutality", move = "uppercut", condition = "hold_up", gore = 10},
    overhead_brutality = {name = "Overhead Brutality", move = "overhead", condition = "hold_down", gore = 9},
    haymaker_brutality = {name = "Haymaker Brutality", move = "haymaker", condition = "charge", gore = 9},
    backfist_brutality = {name = "Backfist Brutality", move = "backfist", condition = "reverse", gore = 8},
    spinning_punch = {name = "Spinning Punch Brutality", move = "spin_punch", condition = "rotate", gore = 8},
    superman_punch = {name = "Superman Punch Brutality", move = "superman", condition = "jump", gore = 9},
    hammer_fist = {name = "Hammer Fist Brutality", move = "hammer_fist", condition = "overhead", gore = 9},
    palm_strike = {name = "Palm Strike Brutality", move = "palm", condition = "thrust", gore = 7},
    elbow_strike = {name = "Elbow Brutality", move = "elbow", condition = "close", gore = 9},
    forearm_smash = {name = "Forearm Brutality", move = "forearm", condition = "charge", gore = 8},
    double_punch = {name = "Double Punch Brutality", move = "double_punch", condition = "both", gore = 8},
    rapid_punches = {name = "Rapid Punches Brutality", move = "rapid", condition = "mash", gore = 9},
    power_punch = {name = "Power Punch Brutality", move = "power", condition = "charge", gore = 10},
    precision_strike = {name = "Precision Strike Brutality", move = "precision", condition = "perfect", gore = 8},
    devastating_blow = {name = "Devastating Blow Brutality", move = "devastating", condition = "max_charge", gore = 10},
    knockout_punch = {name = "Knockout Punch Brutality", move = "knockout", condition = "counter", gore = 10},
    finishing_blow = {name = "Finishing Blow Brutality", move = "finish", condition = "final_hit", gore = 10},
    
    -- KICK BRUTALITIES (20)
    low_kick_brutality = {name = "Low Kick Brutality", move = "low_kick", condition = "hold_down", gore = 7},
    mid_kick_brutality = {name = "Mid Kick Brutality", move = "mid_kick", condition = "neutral", gore = 8},
    high_kick_brutality = {name = "High Kick Brutality", move = "high_kick", condition = "hold_up", gore = 9},
    roundhouse_brutality = {name = "Roundhouse Brutality", move = "roundhouse", condition = "spin", gore = 9},
    sweep_brutality = {name = "Sweep Brutality", move = "sweep", condition = "hold_down", gore = 8},
    axe_kick_brutality = {name = "Axe Kick Brutality", move = "axe_kick", condition = "overhead", gore = 9},
    spinning_kick = {name = "Spinning Kick Brutality", move = "spin_kick", condition = "rotate", gore = 9},
    jump_kick = {name = "Jump Kick Brutality", move = "jump_kick", condition = "air", gore = 8},
    drop_kick = {name = "Drop Kick Brutality", move = "drop_kick", condition = "dive", gore = 9},
    side_kick = {name = "Side Kick Brutality", move = "side_kick", condition = "lateral", gore = 8},
    back_kick = {name = "Back Kick Brutality", move = "back_kick", condition = "reverse", gore = 8},
    knee_strike = {name = "Knee Strike Brutality", move = "knee", condition = "close", gore = 9},
    stomp_brutality = {name = "Stomp Brutality", move = "stomp", condition = "down", gore = 10},
    bicycle_kick = {name = "Bicycle Kick Brutality", move = "bicycle", condition = "rapid", gore = 9},
    tornado_kick = {name = "Tornado Kick Brutality", move = "tornado", condition = "spin_multi", gore = 9},
    crescent_kick = {name = "Crescent Kick Brutality", move = "crescent", condition = "arc", gore = 8},
    hook_kick = {name = "Hook Kick Brutality", move = "hook_kick", condition = "curve", gore = 8},
    thrust_kick = {name = "Thrust Kick Brutality", move = "thrust", condition = "push", gore = 8},
    flying_kick = {name = "Flying Kick Brutality", move = "flying", condition = "jump_far", gore = 9},
    death_kick = {name = "Death Kick Brutality", move = "death_kick", condition = "final", gore = 10},
    
    -- THROW BRUTALITIES (20)
    forward_throw = {name = "Forward Throw Brutality", move = "throw_forward", condition = "mash", gore = 9},
    back_throw = {name = "Back Throw Brutality", move = "throw_back", condition = "reverse", gore = 9},
    overhead_throw = {name = "Overhead Throw Brutality", move = "throw_overhead", condition = "up", gore = 9},
    slam_throw = {name = "Slam Throw Brutality", move = "slam", condition = "down", gore = 10},
    suplex_brutality = {name = "Suplex Brutality", move = "suplex", condition = "back", gore = 10},
    piledriver = {name = "Piledriver Brutality", move = "piledriver", condition = "spin", gore = 10},
    powerbomb = {name = "Powerbomb Brutality", move = "powerbomb", condition = "lift", gore = 10},
    german_suplex = {name = "German Suplex Brutality", move = "german", condition = "bridge", gore = 9},
    belly_to_belly = {name = "Belly to Belly Brutality", move = "belly", condition = "squeeze", gore = 9},
    hip_toss = {name = "Hip Toss Brutality", move = "hip_toss", condition = "rotate", gore = 8},
    shoulder_throw = {name = "Shoulder Throw Brutality", move = "shoulder", condition = "flip", gore = 9},
    judo_throw = {name = "Judo Throw Brutality", move = "judo", condition = "technique", gore = 8},
    wrestling_slam = {name = "Wrestling Slam Brutality", move = "wrestling", condition = "impact", gore = 10},
    spinebuster = {name = "Spinebuster Brutality", move = "spinebuster", condition = "spine", gore = 10},
    chokeslam = {name = "Chokeslam Brutality", move = "chokeslam", condition = "choke", gore = 10},
    tombstone = {name = "Tombstone Brutality", move = "tombstone", condition = "invert", gore = 10},
    brainbuster = {name = "Brainbuster Brutality", move = "brainbuster", condition = "vertical", gore = 10},
    ddt_brutality = {name = "DDT Brutality", move = "ddt", condition = "spike", gore = 10},
    facebuster = {name = "Facebuster Brutality", move = "facebuster", condition = "face", gore = 10},
    backbreaker = {name = "Backbreaker Brutality", move = "backbreaker", condition = "knee", gore = 10},
    
    -- SPECIAL MOVE BRUTALITIES (20)
    fireball_brutality = {name = "Fireball Brutality", move = "fireball", condition = "max_charge", gore = 8},
    dragon_punch_brutality = {name = "Dragon Punch Brutality", move = "dp", condition = "perfect", gore = 10},
    flash_kick_brutality = {name = "Flash Kick Brutality", move = "flash_kick", condition = "max_height", gore = 9},
    sonic_boom_brutality = {name = "Sonic Boom Brutality", move = "sonic_boom", condition = "full_charge", gore = 8},
    spinning_piledriver_brutality = {name = "SPD Brutality", move = "spd", condition = "720", gore = 10},
    teleport_brutality = {name = "Teleport Brutality", move = "teleport", condition = "behind", gore = 8},
    dive_kick_brutality = {name = "Dive Kick Brutality", move = "dive_kick", condition = "steep", gore = 9},
    slide_brutality = {name = "Slide Brutality", move = "slide", condition = "low", gore = 8},
    rekka_brutality = {name = "Rekka Brutality", move = "rekka", condition = "all_hits", gore = 9},
    command_grab_brutality = {name = "Command Grab Brutality", move = "cmd_grab", condition = "unblockable", gore = 10},
    counter_brutality = {name = "Counter Brutality", move = "counter", condition = "perfect_timing", gore = 9},
    parry_brutality = {name = "Parry Brutality", move = "parry", condition = "frame_perfect", gore = 9},
    reflect_brutality = {name = "Reflect Brutality", move = "reflect", condition = "projectile", gore = 8},
    absorb_brutality = {name = "Absorb Brutality", move = "absorb", condition = "energy", gore = 7},
    charge_brutality = {name = "Charge Brutality", move = "charge", condition = "full_screen", gore = 9},
    beam_brutality = {name = "Beam Brutality", move = "beam", condition = "sustained", gore = 9},
    rush_brutality = {name = "Rush Brutality", move = "rush", condition = "all_hits", gore = 9},
    install_brutality = {name = "Install Brutality", move = "install", condition = "active", gore = 8},
    transformation_brutality = {name = "Transformation Brutality", move = "transform", condition = "powered_up", gore = 9},
    ultimate_brutality = {name = "Ultimate Brutality", move = "ultimate", condition = "max_power", gore = 10},
    
    -- COMBO BRUTALITIES (20)
    chain_combo_brutality = {name = "Chain Combo Brutality", move = "chain", condition = "full_chain", gore = 9},
    target_combo_brutality = {name = "Target Combo Brutality", move = "target", condition = "complete", gore = 9},
    dial_combo_brutality = {name = "Dial Combo Brutality", move = "dial", condition = "all_inputs", gore = 9},
    magic_series_brutality = {name = "Magic Series Brutality", move = "magic", condition = "lmhs", gore = 9},
    air_combo_brutality = {name = "Air Combo Brutality", move = "air_combo", condition = "juggle", gore = 9},
    ground_combo_brutality = {name = "Ground Combo Brutality", move = "ground", condition = "otg", gore = 9},
    wall_combo_brutality = {name = "Wall Combo Brutality", move = "wall", condition = "bounce", gore = 9},
    corner_combo_brutality = {name = "Corner Combo Brutality", move = "corner", condition = "trapped", gore = 10},
    infinite_combo_brutality = {name = "Infinite Combo Brutality", move = "infinite", condition = "loop", gore = 10},
    tod_combo_brutality = {name = "TOD Combo Brutality", move = "tod", condition = "100_percent", gore = 10},
    reset_combo_brutality = {name = "Reset Combo Brutality", move = "reset", condition = "continue", gore = 9},
    mixup_combo_brutality = {name = "Mixup Combo Brutality", move = "mixup", condition = "unreactable", gore = 9},
    frame_trap_brutality = {name = "Frame Trap Brutality", move = "frame_trap", condition = "caught", gore = 9},
    tick_throw_brutality = {name = "Tick Throw Brutality", move = "tick", condition = "throw", gore = 10},
    unblockable_brutality = {name = "Unblockable Brutality", move = "unblockable", condition = "setup", gore = 10},
    guard_break_brutality = {name = "Guard Break Brutality", move = "guard_break", condition = "broken", gore = 10},
    chip_kill_brutality = {name = "Chip Kill Brutality", move = "chip", condition = "block_damage", gore = 8},
    counter_hit_brutality = {name = "Counter Hit Brutality", move = "counter_hit", condition = "ch", gore = 10},
    punish_brutality = {name = "Punish Brutality", move = "punish", condition = "whiff", gore = 9},
    perfect_brutality = {name = "Perfect Brutality", move = "perfect", condition = "no_damage", gore = 10},
}

-- ============================================================================
-- HARA-KIRI EXPANSION (50+ Total)
-- ============================================================================

expanded_finishers.hara_kiri = {
    -- TRADITIONAL (10)
    seppuku = {name = "Seppuku", method = "blade", gore = 8},
    harakiri = {name = "Harakiri", method = "ritual", gore = 8},
    ritual_suicide = {name = "Ritual Suicide", method = "ceremony", gore = 8},
    honorable_death = {name = "Honorable Death", method = "blade_chest", gore = 8},
    samurai_end = {name = "Samurai's End", method = "katana", gore = 9},
    warrior_sacrifice = {name = "Warrior's Sacrifice", method = "spear", gore = 9},
    noble_death = {name = "Noble Death", method = "poison", gore = 6},
    ritual_blade = {name = "Ritual Blade", method = "tanto", gore = 8},
    honor_restored = {name = "Honor Restored", method = "wakizashi", gore = 8},
    final_duty = {name = "Final Duty", method = "naginata", gore = 9},
    
    -- EXPLOSIVE (10)
    self_destruct = {name = "Self Destruct", method = "explosion", gore = 10},
    kamikaze = {name = "Kamikaze", method = "suicide_bomb", gore = 10},
    grenade_pull = {name = "Grenade Pull", method = "grenade", gore = 10},
    c4_detonation = {name = "C4 Detonation", method = "c4", gore = 10},
    nuclear_meltdown = {name = "Nuclear Meltdown", method = "nuclear", gore = 10},
    plasma_overload = {name = "Plasma Overload", method = "plasma", gore = 10},
    energy_core_breach = {name = "Core Breach", method = "energy", gore = 10},
    reactor_explosion = {name = "Reactor Explosion", method = "reactor", gore = 10},
    bomb_vest = {name = "Bomb Vest", method = "vest", gore = 10},
    martyrdom = {name = "Martyrdom", method = "sacrifice_explosion", gore = 10},
    
    -- ELEMENTAL (10)
    self_immolation = {name = "Self Immolation", method = "fire", gore = 9},
    freeze_shatter = {name = "Freeze Shatter", method = "ice", gore = 8},
    lightning_rod = {name = "Lightning Rod", method = "lightning", gore = 8},
    acid_bath = {name = "Acid Bath", method = "acid", gore = 9},
    lava_dive = {name = "Lava Dive", method = "lava", gore = 9},
    drowning = {name = "Drowning", method = "water", gore = 6},
    suffocation = {name = "Suffocation", method = "air", gore = 6},
    petrification = {name = "Petrification", method = "stone", gore = 7},
    crystallization = {name = "Crystallization", method = "crystal", gore = 7},
    vaporization = {name = "Vaporization", method = "steam", gore = 8},
    
    -- CREATIVE (10)
    black_hole_dive = {name = "Black Hole Dive", method = "gravity", gore = 5},
    time_paradox = {name = "Time Paradox", method = "time", gore = 6},
    dimension_tear = {name = "Dimension Tear", method = "portal", gore = 7},
    soul_extraction = {name = "Soul Extraction", method = "soul", gore = 7},
    heart_stop = {name = "Heart Stop", method = "cardiac", gore = 6},
    brain_shutdown = {name = "Brain Shutdown", method = "neural", gore = 6},
    blood_drain = {name = "Blood Drain", method = "exsanguination", gore = 9},
    organ_failure = {name = "Organ Failure", method = "internal", gore = 7},
    poison_drink = {name = "Poison Drink", method = "toxin", gore = 6},
    overdose = {name = "Overdose", method = "drug", gore = 6},
    
    -- BRUTAL (10)
    head_removal = {name = "Head Removal", method = "decapitation", gore = 10},
    heart_rip_self = {name = "Heart Rip", method = "heart_tear", gore = 10},
    gut_spill = {name = "Gut Spill", method = "disembowelment", gore = 10},
    limb_removal = {name = "Limb Removal", method = "amputation", gore = 9},
    spine_snap = {name = "Spine Snap", method = "back_break", gore = 9},
    neck_twist = {name = "Neck Twist", method = "neck_break", gore = 8},
    eye_gouge_self = {name = "Eye Gouge", method = "eye_removal", gore = 9},
    throat_slash = {name = "Throat Slash", method = "throat_cut", gore = 9},
    wrist_slash = {name = "Wrist Slash", method = "wrist_cut", gore = 8},
    impalement = {name = "Impalement", method = "self_impale", gore = 10},
}

-- ============================================================================
-- INITIALIZATION
-- ============================================================================

function expanded_finishers.init()
    print("💀 EXPANDED FINISHERS LIBRARY LOADED! 💀")
    print("")
    print("📊 EXPANDED COUNTS:")
    print("  👹 Summon Fatalities: 100+")
    print("  💥 Brutalities: 100+")
    print("  ⚰️  Hara-Kiris: 50+")
    print("")
    print("  🏆 NEW TOTAL: 250+")
    print("  🌟 GRAND TOTAL WITH BASE: 550+")
    print("")
    print("🔥 FINISHERS: ULTIMATE EDITION 🔥")
end

return expanded_finishers

