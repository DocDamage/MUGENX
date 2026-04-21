-- MUGEN X - RPG Loot System (Integrated)
local rpg_loot = {}
local core = require("rpg_core")

function rpg_loot.init()
    hook.add("tick", "rpg_loot_tick", function()
        for i = 1, 2 do
            local p = player(i)
            local enemy = player(i == 1 and 2 or 1)
            local s = core.state[i]
            
            -- Gold on Hit
            if p.MoveContact == 1 and p.Time == 1 then
                s.gold = s.gold + 5
            end
            
            -- Drop on KO
            if enemy.StateNo == 5150 and enemy.Time == 1 then
                 local r = math.random()
                 if r < 0.3 then
                     core.add_item(i, "Potion", 1)
                     textImgDraw(textImgNew(), enemy.Pos.x, enemy.Pos.y - 50, "DROP: Potion", 0, 0)
                 elseif r < 0.4 then
                     core.add_item(i, "Iron Ore", 1)
                     textImgDraw(textImgNew(), enemy.Pos.x, enemy.Pos.y - 50, "DROP: Iron Ore", 0, 0)
                 elseif r < 0.45 then
                     core.add_item(i, "Rare Gem", 1)
                     textImgDraw(textImgNew(), enemy.Pos.x, enemy.Pos.y - 50, "DROP: Rare Gem", 0, 0)
                 end
                 
                 -- Bonus XP
                 core.gain_xp(i, 200)
            end
        end
    end)
end

return rpg_loot

