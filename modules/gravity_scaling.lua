-- MUGEN X - Gravity Scaling (Anti-Infinite)
local gravity = {}

-- Track combo length
gravity.combo_count = {0, 0}

function gravity.init()
    hook.add("tick", "gravity_tick", function()
        for i = 1, 2 do
            local p = player(i)
            local enemy = player(i == 1 and 2 or 1)
            
            -- Check if Enemy is being comboed
            if enemy.MoveType == "H" then
                -- Increase counter
                -- We need to detect *new* hits.
                -- Simplified: Just check HitCount var if available, or assume continuous state
                
                -- If enemy is in air hit state (5020-5070)
                if enemy.StateNo >= 5020 and enemy.StateNo <= 5070 then
                    -- Increase Gravity artificially
                    -- We can't set 'Physics' constant directly usually.
                    -- But we can add downward velocity.
                    
                    -- The longer they are in air hit, the heavier they get
                    enemy.Vel.y = enemy.Vel.y + 0.05
                    
                    -- Visual: Purple weight effect?
                end
            else
                -- Reset
            end
        end
    end)
end

return gravity

