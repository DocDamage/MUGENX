-- MUGEN X - Frame Data Display
local frames = {}

-- Data: [PlayerID] = { state=0, time=0, startup=0, active=0, recovery=0, type="" }
frames.data = {
    { state=0, time=0, startup=0, active=0, recovery=0, type="" },
    { state=0, time=0, startup=0, active=0, recovery=0, type="" }
}

function frames.init()
    hook.add("tick", "frames_tick", function()
        -- Toggle with F2
        if main.f_input(main.t_players, {'F2'}) then
            frames.active = not frames.active
            print("FRAME DATA: " .. (frames.active and "ON" or "OFF"))
        end
        
        if not frames.active then return end
        
        for i = 1, 2 do
            local p = player(i)
            local d = frames.data[i]
            
            -- Detect State Change
            if p.StateNo ~= d.state then
                d.state = p.StateNo
                d.time = 0
                d.startup = 0
                d.active = 0
                d.recovery = 0
                
                -- Guess Type
                if p.StateNo >= 200 and p.StateNo <= 499 then d.type = "Normal"
                elseif p.StateNo >= 1000 and p.StateNo <= 2999 then d.type = "Special"
                elseif p.StateNo >= 3000 then d.type = "Super"
                else d.type = "Neutral" end
            else
                d.time = d.time + 1
            end
            
            -- Analyze Phases (Heuristic)
            -- If MoveContact is 0 and MoveType is A, it's Startup or Active (whiff)
            -- If MoveContact > 0, we hit active.
            -- This is hard to perfect without reading AnimElem.
            
            -- Simple Display
            local text = string.format("P%d State: %d | Time: %d | Type: %s", i, p.StateNo, p.Time, d.type)
            local adv = ""
            
            -- Advantage Calc (on hit/block)
            -- If P1 is in state 0 (Idle) and P2 is in 5000 (Hitstun), P1 is plus.
            local enemy = player(i == 1 and 2 or 1)
            if p.StateNo == 0 and (enemy.StateNo >= 5000 or enemy.StateNo == 150) then
                adv = " (+?)" -- We are free, they are stuck
            elseif (p.StateNo >= 5000 or p.StateNo == 150) and enemy.StateNo == 0 then
                adv = " (-?)" -- We are stuck, they are free
            end
            
            textImgDraw(textImgNew(), 20 + ((i-1)*320), 220, text .. adv, 0, 0)
        end
    end)
end

return frames

