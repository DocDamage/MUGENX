-- MUGEN X - Time Freeze (Za Warudo)
local time_stop = {}

time_stop.active = false
time_stop.timer = 0
time_stop.owner = 0

function time_stop.init()
    hook.add("tick", "time_stop_tick", function()
        -- Trigger: Down, Down, z + c (Macro) + 3 Bars
        for i = 1, 2 do
            local p = player(i)
            if p.Power >= 3000 and not time_stop.active then
                if main.f_input(main.t_players, {'z', 'c'}) and p.Command == "holddown" then
                    -- ACTIVATE
                    time_stop.active = true
                    time_stop.timer = 180 -- 3 Seconds
                    time_stop.owner = i
                    p.Power = 0
                    
                    -- Visual
                    bgDraw(50, 50, 50) -- Grey out BG (Pseudo)
                    textImgDraw(textImgNew(), 640, 300, "TIME STOP!", 0, 0)
                    print("Player " .. i .. " STOPPED TIME!")
                end
            end
        end
        
        if time_stop.active then
            time_stop.timer = time_stop.timer - 1
            
            -- Freeze the OTHER player
            local victim_id = (time_stop.owner == 1) and 2 or 1
            local victim = player(victim_id)
            
            -- Force Freeze
            victim.Vel.x = 0
            victim.Vel.y = 0
            victim.AnimTime = 0 -- Pause Animation? (Hard to do directly)
            victim.Ctrl = 0
            
            -- Grey Effect on Victim
            victim:PalFX({time=2, add={-100,-100,-100}, mul={100,100,100}})
            
            if time_stop.timer <= 0 then
                time_stop.active = false
                print("TIME RESUMED")
            end
        end
    end)
end

return time_stop

