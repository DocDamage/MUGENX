-- MUGEN X - Stun / Dizzy System
local stun = {}

-- Stun Table: [PlayerID] = { current=0, max=100, timer=0 }
stun.data = {
    {current=0, max=100, timer=0},
    {current=0, max=100, timer=0}
}

function stun.init()
    hook.add("tick", "stun_tick", function()
        for i = 1, 2 do
            local p = player(i)
            local s = stun.data[i]
            
            -- Decay Stun over time if not being hit
            if p.MoveType ~= "H" and s.current > 0 then
                s.timer = s.timer + 1
                if s.timer > 60 then -- Wait 1 second before decaying
                    s.current = math.max(0, s.current - 0.5)
                end
            else
                s.timer = 0
            end
            
            -- Detect Hit (Increase Stun)
            -- Ideally we hook into 'HitOverride' or similar, but checking StateNo works for basic logic
            if p.StateNo == 5000 and p.Time == 1 then -- Just got hit standing
                 s.current = s.current + 10
                 print("Player " .. i .. " Stun: " .. s.current)
            elseif p.StateNo == 5010 and p.Time == 1 then -- Crouching hit
                 s.current = s.current + 10
            elseif p.StateNo == 5020 and p.Time == 1 then -- Air hit
                 s.current = s.current + 10
            end
            
            -- Trigger Dizzy
            if s.current >= s.max then
                -- Force Dizzy State (5300)
                if p.StateNo < 5300 then
                    p.StateNo = 5300
                    p.Ctrl = 0
                    s.current = 0 -- Reset
                    
                    -- Visual
                    textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 100, "DIZZY!", 0, 0)
                    print("Player " .. i .. " IS DIZZY!")
                end
            end
        end
    end)
end

return stun

