-- MUGEN X - Roman Cancel (Rapid Cancel)
local rc = {}

rc.cost = 500 -- 50% Meter
rc.freeze_time = 10

function rc.init()
    hook.add("tick", "rc_tick", function()
        for i = 1, 2 do
            local p = player(i)
            
            -- Trigger: Attacking (State 200-499 or 1000+) + Hit/Block Contact + Input (A+B+C)
            -- Simplified Input: 'z' button
            if (p.StateNo >= 200) and (p.MoveContact > 0) and p.Power >= rc.cost then
                if main.f_input(main.t_players, {'z'}) then
                    -- EXECUTE ROMAN CANCEL
                    p.Power = p.Power - rc.cost
                    
                    -- Visual: Red Ring/Flash
                    p:PalFX({time=15, add={255,0,0}, sinadd={-255,0,0,10}})
                    
                    -- Reset State to Idle (Neutral)
                    p.StateNo = 0
                    p.Ctrl = 1
                    
                    -- Slow Down Time (Simulated by pausing opponent briefly?)
                    -- Ikemen Lua API might support 'setGameSpeed' or 'pause'
                    -- For now, we just print
                    print("Player " .. i .. " ROMAN CANCEL!")
                end
            end
        end
    end)
end

return rc

