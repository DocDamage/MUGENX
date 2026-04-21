-- MUGEN X - Fatality System
local fatality = {}

fatality.active = false
fatality.timer = 0

function fatality.init()
    hook.add("roundstate", "fatality_check", function()
        -- RoundState 3 is "Match Over" / "Finish Him" window often
        if roundState() == 3 and not fatality.active then
            local winner = player(1).Win and player(1) or player(2)
            local loser = player(1).Win and player(2) or player(1)
            
            if winner and loser then
                fatality.active = true
                fatality.timer = 120 -- 2 seconds to input
                
                -- Darken Screen
                bgDraw(0,0, 0) -- Pseudo-code for darkening
                textImgDraw(textImgNew(), 640, 300, "FINISH HIM!", 0, 0)
                print("FATALITY WINDOW OPEN")
            end
        end
    end)
    
    hook.add("tick", "fatality_input", function()
        if fatality.active and fatality.timer > 0 then
            fatality.timer = fatality.timer - 1
            
            local winner = player(1).Win and player(1) or player(2)
            
            -- Check for Input (e.g., Down, Down, High Punch)
            -- Simplified: Press Start
            if main.f_input(main.t_players, {'s'}) then
                -- EXECUTE FATALITY
                print("FATALITY EXECUTED!")
                
                -- Force Winner into Victory Pose (State 180)
                winner.StateNo = 180
                
                -- Force Loser into "Dead" state (State 5150)
                local loser = player(1).Win and player(2) or player(1)
                loser.StateNo = 5150
                loser.Life = 0
                
                -- Play Sound
                -- sndPlay(...)
                
                fatality.active = false
            end
        else
            fatality.active = false
        end
    end)
end

return fatality

