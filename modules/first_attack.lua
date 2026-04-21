-- MUGEN X - First Attack Bonus
local first = {}

first.awarded = false

function first.init()
    hook.add("roundstart", "first_reset", function()
        first.awarded = false
    end)
    
    hook.add("tick", "first_tick", function()
        if first.awarded then return end
        
        for i = 1, 2 do
            local p = player(i)
            
            -- Check if player landed a hit
            if p.MoveContact == 1 and p.Time == 1 then
                -- FIRST ATTACK!
                first.awarded = true
                
                -- Reward: 200 Meter
                p.Power = p.Power + 200
                
                -- Visual
                textImgDraw(textImgNew(), 640, 200, "FIRST ATTACK!", 0, 0)
                print("Player " .. i .. " GOT FIRST ATTACK!")
                
                -- Sound?
                -- sndPlay(...)
            end
        end
    end)
end

return first

