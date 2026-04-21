-- ============================================================================
-- MUGEN X ENGINE - ABYSS MODE (Roguelike)
-- ============================================================================

local abyss = {}

-- STATE
abyss.depth = 0
abyss.gold = 0
abyss.perks = {}
abyss.active = false

-- PERK DATABASE
abyss.perk_list = {
    {id = "atk_up", name = "Savage Strength", desc = "+10% Damage", cost = 100},
    {id = "def_up", name = "Iron Skin", desc = "-10% Damage Taken", cost = 100},
    {id = "spd_up", name = "Lightning Feet", desc = "+5% Move Speed", cost = 150},
    {id = "vamp",   name = "Bloodthirst", desc = "Heal 2% on hit", cost = 300},
    {id = "meter",  name = "Inner Focus", desc = "Start with 1 Bar", cost = 200}
}

function abyss.start_run()
    abyss.depth = 1
    abyss.gold = 0
    abyss.perks = {}
    abyss.active = true
    print("⚔️  ENTERING THE ABYSS...")
    abyss.next_match()
end

function abyss.next_match()
    -- Determine Enemy Difficulty based on Depth
    local difficulty = math.min(8, math.floor(abyss.depth / 5) + 1)
    
    -- Check for Boss Floor
    if abyss.depth % 10 == 0 then
        print("⚠️  BOSS BATTLE APPROACHING!")
        -- Load Boss Character
    else
        -- Load Random Character
    end
    
    print("Depth: " .. abyss.depth .. " | Difficulty: " .. difficulty)
end

function abyss.on_win()
    abyss.depth = abyss.depth + 1
    abyss.gold = abyss.gold + (abyss.depth * 10)
    
    -- Offer Shop every 3 floors
    if abyss.depth % 3 == 0 then
        abyss.open_shop()
    else
        abyss.next_match()
    end
end

function abyss.open_shop()
    -- (UI Logic would go here)
    print("💰 ABYSS MERCHANT: 'What are ya buyin?'")
    -- Auto-buy perk for now (simulation)
    local perk = abyss.perk_list[math.random(#abyss.perk_list)]
    table.insert(abyss.perks, perk)
    print("Bought: " .. perk.name)
    abyss.next_match()
end

return abyss

