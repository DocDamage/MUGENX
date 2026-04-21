-- MUGEN X - Just Frame System
local just = {}

function just.init()
    hook.add("tick", "just_tick", function()
        for i = 1, 2 do
            local p = player(i)
            
            -- Logic: If player hits enemy (MoveContact=1) AND Time is exactly X (e.g., frame 5 of impact)
            -- This is hard to predict generically.
            -- Alternative: "Just Input". If player inputs a command exactly when previous move ends.
            
            -- Let's try "Rhythm Hit". If hit coincides with a beat (every 30 frames ~ 0.5s)
            if p.MoveContact == 1 and p.Time == 1 then
                local beat = 30
                if (gameTime % beat) <= 2 then -- 2 frame window
                    -- JUST FRAME HIT!
                    
                    -- Visual: Blue Spark
                    p:PalFX({time=5, add={0,200,255}, sinadd={0,255,255,10}})
                    
                    -- Bonus Damage
                    -- We can't easily add damage to the *current* hit without CNS access,
                    -- but we can give meter or heal.
                    p.Power = p.Power + 50
                    
                    textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 60, "JUST!", 0, 0)
                    -- print("Player " .. i .. " JUST FRAME!")
                end
            end
        end
    end)
end

return just

