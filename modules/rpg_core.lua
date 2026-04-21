-- MUGEN X - RPG Core System (Master State)
local rpg_core = {}

-- Master State for Players
-- [ID] = { 
--   level=1, xp=0, xp_next=100, 
--   gold=0, 
--   stats={str=5, vit=5, dex=5, int=5, luk=5},
--   class="Novice",
--   inventory={}, -- { "Potion": 5, "Iron Sword": 1 }
--   equipment={ weapon=nil, armor=nil, accessory=nil },
--   skills={}, -- { "DoubleJump": true }
--   skill_points=0
-- }
rpg_core.state = {
    { 
        level=1, xp=0, xp_next=100, gold=500, 
        stats={str=5, vit=5, dex=5, int=5, luk=5}, 
        class="Novice", 
        inventory={["Potion"]=3}, 
        equipment={weapon=nil, armor=nil, accessory=nil}, 
        skills={}, skill_points=0 
    },
    { 
        level=1, xp=0, xp_next=100, gold=500, 
        stats={str=5, vit=5, dex=5, int=5, luk=5}, 
        class="Novice", 
        inventory={["Potion"]=3}, 
        equipment={weapon=nil, armor=nil, accessory=nil}, 
        skills={}, skill_points=0 
    }
}

function rpg_core.add_item(id, item, amount)
    amount = amount or 1
    local inv = rpg_core.state[id].inventory
    inv[item] = (inv[item] or 0) + amount
    print(string.format("Player %d Gained %dx %s", id, amount, item))
end

function rpg_core.remove_item(id, item, amount)
    amount = amount or 1
    local inv = rpg_core.state[id].inventory
    if (inv[item] or 0) >= amount then
        inv[item] = inv[item] - amount
        if inv[item] <= 0 then inv[item] = nil end
        return true
    end
    return false
end

function rpg_core.gain_xp(id, amount)
    local s = rpg_core.state[id]
    s.xp = s.xp + amount
    while s.xp >= s.xp_next do
        s.xp = s.xp - s.xp_next
        s.level = s.level + 1
        s.xp_next = math.floor(s.xp_next * 1.2)
        s.skill_points = s.skill_points + 1
        
        -- Auto-Stat Growth based on Class
        if s.class == "Warrior" then s.stats.str = s.stats.str + 2; s.stats.vit = s.stats.vit + 1
        elseif s.class == "Mage" then s.stats.int = s.stats.int + 2; s.stats.dex = s.stats.dex + 1
        elseif s.class == "Rogue" then s.stats.dex = s.stats.dex + 2; s.stats.luk = s.stats.luk + 1
        else s.stats.str = s.stats.str + 1; s.stats.vit = s.stats.vit + 1 end -- Novice
        
        local p = player(id)
        textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 150, "LEVEL UP! (" .. s.level .. ")", 0, 0)
        p:PalFX({time=30, add={255,255,0}, sinadd={255,255,0,10}})
    end
end

function rpg_core.init()
    hook.add("tick", "rpg_core_tick", function()
        for i = 1, 2 do
            local p = player(i)
            local s = rpg_core.state[i]
            
            -- Calculate Derived Stats
            -- STR -> Attack
            -- VIT -> Defence + HP Regen?
            -- DEX -> Speed
            -- INT -> Meter Gain
            -- LUK -> Crit Chance
            
            local base_atk = 100 + (s.stats.str * 2)
            local base_def = 100 + (s.stats.vit * 2)
            
            -- Apply Equipment Bonuses (Mock read)
            if s.equipment.weapon == "Iron Sword" then base_atk = base_atk + 10 end
            if s.equipment.armor == "Leather Armor" then base_def = base_def + 10 end
            
            p.Attack = base_atk
            p.Defence = base_def
            
            -- UI Overlay
            textImgDraw(textImgNew(), 20 + ((i-1)*280), 20, "LVL " .. s.level .. " " .. s.class, 0, 0)
            textImgDraw(textImgNew(), 20 + ((i-1)*280), 35, "HP: " .. p.Life .. " MP: " .. p.Power, 0, 0)
        end
    end)
end

return rpg_core

