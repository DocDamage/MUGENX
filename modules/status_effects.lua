-- MUGEN X - Elemental Status Effects
local status = {}

-- Status Table: [PlayerID] = { type="burn", timer=0, damage=0 }
status.active_effects = {}

function status.apply(player_id, type, duration, damage)
    status.active_effects[player_id] = {
        type = type,
        timer = duration,
        damage = damage
    }
    print(string.format("Player %d afflicted with %s!", player_id, type))
end

function status.init()
    hook.add("tick", "status_tick", function()
        for pid = 1, 2 do
            local effect = status.active_effects[pid]
            if effect and effect.timer > 0 then
                local p = player(pid)
                effect.timer = effect.timer - 1
                
                -- Apply Logic
                if effect.type == "burn" then
                    -- DOT (Damage over Time)
                    if effect.timer % 10 == 0 then -- Every 10 ticks
                        p.Life = math.max(1, p.Life - effect.damage)
                        -- Red Flash
                        p:PalFX({time=5, add={200,0,0}})
                    end
                elseif effect.type == "freeze" then
                    -- Slow Down / Stop
                    p.Vel.x = 0
                    p.Vel.y = 0
                    -- Blue Tint
                    p:PalFX({time=2, add={0,0,200}, mul={100,100,255}})
                elseif effect.type == "shock" then
                    -- Random Stun
                    if math.random() < 0.1 then
                        p.Ctrl = 0 -- Lose control briefly
                        -- Yellow Flash
                        p:PalFX({time=5, add={200,200,0}})
                    end
                end
                
                if effect.timer <= 0 then
                    status.active_effects[pid] = nil
                    print(string.format("Player %d recovered from %s.", pid, effect.type))
                end
            end
        end
    end)
end

return status

