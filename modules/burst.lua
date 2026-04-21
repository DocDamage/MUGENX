-- MUGEN X - Combo Breaker / Burst System
local burst = {}

burst.cost = 1000 -- 1 Bar
burst.cooldown = 0

function burst.init()
    hook.add("tick", "burst_tick", function()
        for i = 1, 2 do
            local p = player(i)
            local enemy = player(i == 1 and 2 or 1)
            
            -- Trigger: Being Hit (State 5000+) + Press Start (or A+B+C) + Has Meter
            if (p.StateNo >= 5000 and p.StateNo <= 5300) and p.Power >= burst.cost then
                -- Check Input (Start button for simplicity)
                if main.f_input(main.t_players, {'s'}) then
                    -- EXECUTE BURST
                    p.Power = p.Power - burst.cost
                    
                    -- Visual: Blue Flash
                    p:PalFX({time=20, add={0,100,255}, sinadd={-255,-255,-255,10}})
                    
                    -- Physics: Push Enemy Away
                    -- We can't directly set Enemy velocity easily without access, 
                    -- but we can reset our own state to idle (Combo Breaker)
                    p.StateNo = 0
                    p.Ctrl = 1
                    
                    -- Push ourselves back to safety
                    p.Vel.x = -10
                    p.Vel.y = -5
                    
                    print("Player " .. i .. " BURST!")
                end
            end
        end
    end)
end

return burst

