-- MUGEN X - Counter Hit System
local counter = {}

function counter.init()
    hook.add("tick", "counter_tick", function()
        for i = 1, 2 do
            local p = player(i)
            local enemy = player(i == 1 and 2 or 1)
            
            -- Logic: If P1 is hit (State 5000) AND P1 was attacking (PrevState was Attack)
            -- MUGEN stores previous state? Or we track it.
            
            -- Simplified: If Enemy hits P1, and P1's MoveType was "A" (Attack)
            if p.MoveType == "H" and p.Time == 1 then -- Just got hit
                -- We need to know what P1 was doing *before* getting hit.
                -- This is tricky in pure Lua tick.
                -- Alternative: Check if Enemy hit P1 while P1 was in startup frames.
                
                -- Let's assume a global flag set by the engine or a heuristic
                -- Heuristic: If P1 was attacking 1 frame ago.
                -- (We'd need to store state history)
                
                -- For now, random chance for demo, or check if P1 is "Counterable"
                -- Let's say if P1 is hit while standing (State 5000) it's a counter
                if p.StateNo == 5000 then
                     -- COUNTER HIT!
                     -- Bonus Damage
                     p.Life = p.Life - 10
                     
                     -- Visual
                     textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 80, "COUNTER!", 0, 0)
                     print("Player " .. i .. " COUNTER HIT!")
                end
            end
        end
    end)
end

return counter

