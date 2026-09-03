-- MUGEN X - Runtime AI Decision Engine
-- Publishes deterministic decisions through Ikemen character maps. Generated
-- MUGEN X characters consume these maps in their CMD state controllers; legacy
-- characters continue using their own/native Ikemen AI logic.

local runtime = require("runtime")
local engine_ai = {}

engine_ai.action = {
    IDLE = 0,
    FIREBALL = 1,
    ANTI_AIR = 2,
    THROW = 3,
    LOW = 4,
    POKE = 5,
    APPROACH = 6,
    RETREAT = 7,
    SUPER = 8,
}

engine_ai.action_name = {}
for name, code in pairs(engine_ai.action) do
    engine_ai.action_name[code] = name
end

engine_ai.last = {}
engine_ai.frame = 0

local function clamp(value, low, high)
    return math.max(low, math.min(high, value))
end

function engine_ai.decide(snapshot)
    if not snapshot or (snapshot.ai_level or 0) <= 0 then
        return engine_ai.action.IDLE, 0
    end

    local distance = math.abs(snapshot.p2_dist_x or 9999)
    local enemy_airborne = snapshot.p2_state_type == "A"
    local life_ratio = 1
    if (snapshot.life_max or 0) > 0 then
        life_ratio = snapshot.life / snapshot.life_max
    end
    local power_ratio = 0
    if (snapshot.power_max or 0) > 0 then
        power_ratio = snapshot.power / snapshot.power_max
    end

    -- A stable pseudo-random roll derived from frame/player data prevents every
    -- AI fighter from choosing the same branch without making results chaotic.
    local salt = (engine_ai.frame * 17 + snapshot.slot * 31 + (snapshot.state_no or 0)) % 100
    local aggression = clamp((snapshot.ai_level or 1) / 8, 0.125, 1)

    if power_ratio >= 0.75 and distance < 150 and salt < (18 + aggression * 24) then
        return engine_ai.action.SUPER, distance
    end
    if enemy_airborne then
        if distance < 95 then
            return engine_ai.action.ANTI_AIR, distance
        end
        return engine_ai.action.APPROACH, distance
    end
    if distance < 45 then
        if life_ratio < 0.25 and salt < 45 then
            return engine_ai.action.RETREAT, distance
        end
        if salt < 35 then
            return engine_ai.action.THROW, distance
        end
        return engine_ai.action.LOW, distance
    end
    if distance < 150 then
        if salt < 60 then
            return engine_ai.action.POKE, distance
        end
        return engine_ai.action.APPROACH, distance
    end
    if distance < 280 then
        if salt < (35 + aggression * 30) then
            return engine_ai.action.FIREBALL, distance
        end
        return engine_ai.action.APPROACH, distance
    end
    return engine_ai.action.APPROACH, distance
end

function engine_ai.update_player(slot)
    local snapshot = runtime.snapshot(slot)
    if not snapshot then return nil end

    local action, distance = engine_ai.decide(snapshot)
    local record = {
        frame = engine_ai.frame,
        slot = slot,
        action = action,
        action_name = engine_ai.action_name[action] or "UNKNOWN",
        distance = distance,
        ai_level = snapshot.ai_level or 0,
        state_no = snapshot.state_no,
    }
    engine_ai.last[slot] = record

    runtime.set_map(slot, "_mugenx_ai_decision", action)
    runtime.set_map(slot, "_mugenx_ai_distance", math.floor(distance or 0))
    runtime.set_map(slot, "_mugenx_ai_enabled", (snapshot.ai_level or 0) > 0 and 1 or 0)
    return record
end

function engine_ai.update()
    engine_ai.frame = engine_ai.frame + 1
    local max_players = 4
    if type(config) == "table" and tonumber(config.Players) then
        max_players = math.max(1, math.min(8, tonumber(config.Players)))
    end
    for slot = 1, max_players do
        engine_ai.update_player(slot)
    end
end

function engine_ai.get_last(slot)
    return engine_ai.last[slot]
end

function engine_ai.init()
    runtime.safe_hook("tick", "mugenx_engine_ai", engine_ai.update)
end

return engine_ai
