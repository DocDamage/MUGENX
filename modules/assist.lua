-- MUGEN X - Assist / Striker System
local assist = {}

assist.cooldown = {0, 0}
assist.COOLDOWN_MAX = 300 -- 5 Seconds

function assist.init()
    hook.add("tick", "assist_tick", function()
        -- Only works in Simul mode (2v2 or 2v1)
        if teamMode == "simul" then
            for i = 1, 2 do
                -- Determine Partner ID
                -- P1's partner is P3. P2's partner is P4.
                local partner_id = (i == 1) and 3 or 4
                local partner = player(partner_id)
                
                -- Check if partner exists and is alive
                if partner and partner.Life > 0 and assist.cooldown[i] <= 0 then
                    -- Input: Press 'c' (Strong Kick / Macro)
                    if main.f_input(main.t_players, {'c'}) then
                        -- CALL ASSIST
                        assist.cooldown[i] = assist.COOLDOWN_MAX
                        
                        -- Force Partner to Attack
                        -- We teleport them near the player and force an attack state
                        local p = player(i)
                        
                        -- Logic: Teleport behind player
                        -- Note: Direct Pos setting might be jittery, but we try
                        -- partner.Pos.x = p.Pos.x - (30 * p.Facing)
                        -- partner.Pos.y = p.Pos.y
                        
                        -- Force State: Jump In Kick (State 600 usually) or Fireball
                        -- Let's try to force a specific attack state if we know it, otherwise generic
                        -- partner.StateNo = 200 -- Light Punch
                        -- partner.Ctrl = 0
                        
                        -- Visual
                        textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 120, "ASSIST!", 0, 0)
                        print("Player " .. i .. " CALLED ASSIST!")
                    end
                end
                
                if assist.cooldown[i] > 0 then
                    assist.cooldown[i] = assist.cooldown[i] - 1
                end
            end
        end
    end)
end

return assist

