-- MUGEN X - RPG Critical Hit System
local crit = {}

function crit.init()
    hook.add("tick", "crit_tick", function()
        for i = 1, 2 do
            local p = player(i)
            
            -- Check Hit
            if p.MoveContact == 1 and p.Time == 1 then
                -- Base Crit Chance 10%
                local chance = 0.1
                
                -- RPG Stat Influence (Luck)
                -- local luck = rpg_core.data[i].luck or 0
                -- chance = chance + (luck * 0.01)
                
                if math.random() < chance then
                    -- CRITICAL HIT!
                    -- Apply Bonus Damage (simulated by reducing enemy life further)
                    local enemy = player(i == 1 and 2 or 1)
                    enemy.Life = enemy.Life - 20 -- Bonus flat damage
                    
                    -- Visual
                    textImgDraw(textImgNew(), enemy.Pos.x, enemy.Pos.y - 100, "CRITICAL!", 0, 0)
                    p:PalFX({time=5, add={255,0,0}}) -- Red Flash
                    
                    print("Player " .. i .. " CRITICAL HIT!")
                end
            end
        end
    end)
end

return crit

