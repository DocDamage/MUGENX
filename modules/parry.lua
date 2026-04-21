-- MUGEN X - Universal Parry System
local parry = {}

parry.window = 5 -- Frames
parry.cooldown = 0

function parry.init()
    hook.add("tick", "parry_tick", function()
        for i = 1, 2 do
            local p = player(i)
            local enemy = player(i == 1 and 2 or 1)
            
            -- Simple Parry Logic: Press Forward exactly when enemy attacks
            -- Note: True parry requires collision detection which is complex in pure Lua without hooks into the physics engine.
            -- We will simulate "Just Defense" (Instant Block) instead.
            
            if p.StateNo == 150 then -- Guard Start
                if p.Time <= parry.window then
                    -- Check if actually guarding an attack
                    if enemy.MoveType == "A" and math.abs(p.Pos.x - enemy.Pos.x) < 200 then
                        -- SUCCESSFUL PARRY / JUST DEFEND
                        -- Visual Effect (Flash White)
                        p:PalFX({time=10, add={255,255,255}, sinadd={-255,-255,-255,10}})
                        
                        -- Reward: Build Meter
                        p.Power = p.Power + 100
                        
                        -- Reward: Heal slightly (Regen)
                        p.Life = math.min(p.Life + 20, p.LifeMax)
                        
                        -- Debug Text
                        textImgDraw(textImgNew(), p.Pos.x + 160, p.Pos.y + 200, "PARRY!", 0, 0)
                        print("Player " .. i .. " Parried!")
                    end
                end
            end
        end
    end)
end

return parry

