-- MUGEN X - RPG Summon System
local summon = {}

summon.active = {false, false}
summon.timer = {0, 0}

function summon.init()
    hook.add("tick", "summon_tick", function()
        for i = 1, 2 do
            local p = player(i)
            
            -- Trigger: 'a' + 'x' (Macro) + 1 Bar
            if main.f_input(main.t_players, {'a', 'x'}) and p.Power >= 1000 and not summon.active[i] then
                summon.active[i] = true
                summon.timer[i] = 300 -- 5 Seconds
                p.Power = p.Power - 1000
                print("Player " .. i .. " SUMMONED FAMILIAR!")
            end
            
            if summon.active[i] then
                summon.timer[i] = summon.timer[i] - 1
                
                -- Logic: Familiar attacks periodically
                if summon.timer[i] % 60 == 0 then -- Every second
                    -- Deal Damage to enemy
                    local enemy = player(i == 1 and 2 or 1)
                    enemy.Life = enemy.Life - 20
                    
                    -- Visual: Fireball?
                    -- explod(...)
                    textImgDraw(textImgNew(), enemy.Pos.x, enemy.Pos.y - 50, "FAMILIAR HIT!", 0, 0)
                end
                
                -- Visual: Floating Orb near player
                textImgDraw(textImgNew(), p.Pos.x - (30*p.Facing), p.Pos.y - 100, "(o)", 0, 0)
                
                if summon.timer[i] <= 0 then
                    summon.active[i] = false
                end
            end
        end
    end)
end

return summon

