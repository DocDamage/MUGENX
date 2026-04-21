-- MUGEN X - Wall Bounce Physics
local wb = {}

function wb.init()
    hook.add("tick", "wb_tick", function()
        for i = 1, 2 do
            local p = player(i)
            
            -- Check if in hit state (5000+) and in air
            if p.StateNo >= 5000 and p.Pos.y < 0 then
                -- Check bounds (Screen Edge)
                -- LocalCoord 320 means edge is roughly +/- 160
                local edge = 150
                
                if p.Pos.x < -edge or p.Pos.x > edge then
                    -- Check velocity (must be moving towards wall)
                    if math.abs(p.Vel.x) > 5 then
                        -- TRIGGER WALL BOUNCE
                        p.Vel.x = -p.Vel.x * 0.8 -- Bounce back with damping
                        p.Vel.y = -5 -- Pop up slightly
                        
                        -- Effect
                        -- Shake Screen
                        -- Play Sound
                        print("Player " .. i .. " WALL BOUNCE!")
                    end
                end
            end
        end
    end)
end

return wb

