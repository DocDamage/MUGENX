-- MUGEN X - Safety Shield (Faultless Defense)
local shield = {}

function shield.init()
    hook.add("tick", "shield_tick", function()
        for i = 1, 2 do
            local p = player(i)
            
            -- Trigger: Blocking (State 150/152) + Holding 'z' (Macro) + Has Meter
            if (p.StateNo == 150 or p.StateNo == 152) and p.Power > 0 then
                if main.f_input(main.t_players, {'z'}) then
                    -- ACTIVE SHIELD
                    
                    -- Drain Meter
                    p.Power = math.max(0, p.Power - 10)
                    
                    -- Visual: Green Bubble
                    p:PalFX({time=2, add={0,100,0}, mul={100,255,100}, sinadd={0,50,0,2}})
                    
                    -- Logic:
                    -- 1. Prevent Chip Damage (Restore Life if hit? Hard to intercept damage calc)
                    --    Instead, we can just heal back any small damage taken this frame?
                    --    Or rely on the visual for now.
                    
                    -- 2. Increase Pushback
                    -- If enemy hits us, push them back harder
                    local enemy = player(i == 1 and 2 or 1)
                    if enemy.MoveContact == 1 then
                        enemy.Vel.x = enemy.Vel.x - (5 * p.Facing)
                    end
                    
                    -- Debug
                    -- print("Player " .. i .. " SHIELD ACTIVE")
                end
            end
        end
    end)
end

return shield

