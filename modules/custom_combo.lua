-- MUGEN X - Custom Combo (Shadow Frenzy)
local custom = {}

custom.timers = {0, 0}

function custom.init()
    hook.add("tick", "custom_tick", function()
        for i = 1, 2 do
            local p = player(i)
            
            -- Trigger: 'y' + 'b' (Medium Punch + Kick) + 2 Bars (2000)
            if p.Power >= 2000 and custom.timers[i] <= 0 then
                if main.f_input(main.t_players, {'y', 'b'}) then
                    -- ACTIVATE
                    custom.timers[i] = 300 -- 5 Seconds
                    p.Power = p.Power - 2000
                    
                    -- Freeze Screen briefly
                    -- setGameSpeed(0) ...
                    
                    print("Player " .. i .. " CUSTOM COMBO ACTIVE!")
                end
            end
            
            if custom.timers[i] > 0 then
                custom.timers[i] = custom.timers[i] - 1
                
                -- Effect: Free Cancels
                -- If we hit something, immediately restore control to allow next move
                if p.MoveContact > 0 then
                    p.Ctrl = 1
                    -- This allows cancelling any frame into any other move
                end
                
                -- Visual: Shadows
                -- p:AfterImage(...) -- Lua API for afterimages if available
                p:PalFX({time=2, add={50,0,50}, sinadd={50,0,50,5}}) -- Purple
                
                -- Timer Bar?
                -- drawRect(...)
            end
        end
    end)
end

return custom

