-- MUGEN X - Super Armor System
local armor = {}

-- Armor Points: [PlayerID] = hits_remaining
armor.points = {0, 0}
armor.active = {false, false}

function armor.init()
    hook.add("tick", "armor_tick", function()
        for i = 1, 2 do
            local p = player(i)
            
            -- Logic: Some characters or modes might have armor.
            -- For demo, let's give armor during specific states (e.g. Taunt or Heavy Attack startup)
            -- Or toggle via cheat key (F3)
            
            if main.f_input(main.t_players, {'F3'}) then
                armor.active[i] = not armor.active[i]
                armor.points[i] = armor.active[i] and 3 or 0 -- 3 Hits of armor
                print("Player " .. i .. " Armor: " .. (armor.active[i] and "ON" or "OFF"))
            end
            
            if armor.active[i] and armor.points[i] > 0 then
                -- Check if hit
                if p.MoveType == "H" and p.Time == 1 then
                    -- ABSROB HIT
                    armor.points[i] = armor.points[i] - 1
                    
                    -- Force Idle/Attack state (Ignore Hitstun)
                    -- This is tricky. We need to force them OUT of state 5000.
                    -- If they were attacking (State 200), keep them in 200?
                    -- We can't know previous state easily.
                    
                    -- Simple Armor: Force Stand (0) if hit
                    p.StateNo = 0
                    p.Ctrl = 1
                    
                    -- Visual: Grey Flash
                    p:PalFX({time=5, add={100,100,100}})
                    textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 80, "ARMOR!", 0, 0)
                    print("Player " .. i .. " ARMORED A HIT! Remaining: " .. armor.points[i])
                end
            end
        end
    end)
end

return armor

