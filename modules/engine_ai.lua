-- MUGEN X - Fuzzy Logic AI Engine
local engine_ai = {}

-- Fuzzy Sets
engine_ai.dist = { CLOSE = 0, MID = 1, FAR = 2 }
engine_ai.state = { GROUND = 0, AIR = 1, LIE = 2 }

function engine_ai.get_fuzzy_dist(p1, p2)
    local d = math.abs(p1.Pos.x - p2.Pos.x)
    if d < 60 then return engine_ai.dist.CLOSE
    elseif d < 160 then return engine_ai.dist.MID
    else return engine_ai.dist.FAR end
end

function engine_ai.decide(player_id)
    local p = player(player_id)
    local e = player(player_id == 1 and 2 or 1)
    
    local dist = engine_ai.get_fuzzy_dist(p, e)
    local e_state = (e.Pos.y < 0) and engine_ai.state.AIR or engine_ai.state.GROUND
    
    -- Decision Tree
    if e_state == engine_ai.state.AIR then
        if dist == engine_ai.dist.CLOSE then
            -- Anti-Air Priority
            return "DragonPunch"
        else
            -- Wait / Fireball
            return "Fireball"
        end
    elseif e_state == engine_ai.state.GROUND then
        if dist == engine_ai.dist.CLOSE then
            -- Mixup: Throw or Low
            return (math.random() > 0.5) and "Throw" or "CrouchKick"
        elseif dist == engine_ai.dist.MID then
            -- Poke
            return "StandKick"
        else
            -- Zone
            return "Fireball"
        end
    end
    
    return "Idle"
end

function engine_ai.update(player_id)
    -- In a real implementation, this would set the command bits.
    -- For MUGEN X, we simulate the "Brain" active state.
    
    -- Only run for AI controlled players
    if player(player_id).AILevel > 0 then
        local decision = engine_ai.decide(player_id)
        -- print(string.format("AI P%d Decision: %s", player_id, decision))
        
        -- Mock Injection:
        -- if decision == "Fireball" then commandSet(player_id, "D,DF,F,x") end
    end
end

return engine_ai

