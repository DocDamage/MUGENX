-- MUGEN X - Guard Crush System
local guard = {}

-- Guard Health Table: [PlayerID] = current_guard_hp
guard.max_hp = 100
guard.status = {100, 100}

function guard.init()
    hook.add("tick", "guard_tick", function()
        for i = 1, 2 do
            local p = player(i)
            
            -- Regen Guard if not blocking
            if p.StateNo ~= 150 and p.StateNo ~= 152 then
                guard.status[i] = math.min(guard.max_hp, guard.status[i] + 0.5)
            end
            
            -- Check Block
            if p.StateNo == 150 or p.StateNo == 152 then -- Guarding
                -- If hit while guarding (MoveType H + StateType S/C/A)
                -- Note: In MUGEN, blocking is a specific state. 
                -- We need to detect "Blocked Hit".
                -- 'GetHitVar(guarded)' is the trigger in CNS. In Lua, we check logic.
                
                -- Mock Logic: If enemy is attacking and close and we are in state 150
                local enemy = player(i == 1 and 2 or 1)
                if enemy.MoveType == "A" and enemy.MoveContact == 1 then
                     -- We assume it was blocked if we are in state 150
                     guard.status[i] = guard.status[i] - 2 -- Chip damage to guard
                     
                     if guard.status[i] <= 0 then
                         -- GUARD CRUSH!
                         p.Ctrl = 0
                         p.StateNo = 5300 -- Dizzy/Stun state
                         guard.status[i] = guard.max_hp -- Reset
                         
                         -- Visual
                         textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 100, "GUARD CRUSH!", 0, 0)
                         print("Player " .. i .. " GUARD CRUSHED!")
                     end
                end
            end
        end
    end)
end

return guard

