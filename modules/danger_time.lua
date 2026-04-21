-- MUGEN X - Danger Time
local danger = {}

danger.active = false
danger.timer = 0

function danger.init()
    hook.add("tick", "danger_tick", function()
        -- Trigger: Random chance on Clashes (if we had a clash event)
        -- Or random chance on heavy counter hits
        
        -- Let's use a global check: If both players have low health (< 30%)
        -- Trigger Danger Time once per match
        local p1 = player(1)
        local p2 = player(2)
        
        if not danger.active and danger.timer == 0 then
            if p1.Life < (p1.LifeMax * 0.3) and p2.Life < (p2.LifeMax * 0.3) then
                -- Trigger
                danger.active = true
                danger.timer = 600 -- 10 Seconds
                
                -- Visual
                textImgDraw(textImgNew(), 640, 300, "!! DANGER TIME !!", 0, 0)
                print("DANGER TIME STARTED")
            end
        end
        
        if danger.active then
            danger.timer = danger.timer - 1
            
            -- Effect: Increase Damage (Buff Attack for both)
            p1.Attack = 150
            p2.Attack = 150
            
            -- Visual: Red Background Flash?
            if danger.timer % 60 == 0 then
                bgDraw(255, 0, 0) -- Flash Red
            end
            
            if danger.timer <= 0 then
                danger.active = false
                p1.Attack = 100
                p2.Attack = 100
                print("DANGER TIME ENDED")
            end
        end
    end)
end

return danger

