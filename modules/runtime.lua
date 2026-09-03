-- MUGEN X ENGINE - Safe Ikemen Runtime Adapter
-- Centralizes player-context switching and optional Lua API access.

local runtime = {}

runtime.errors = {}
runtime.max_errors = 100

local function record_error(scope, err)
    runtime.errors[#runtime.errors + 1] = {
        scope = scope,
        error = tostring(err),
        tick = type(tickcount) == "function" and tickcount() or 0,
    }
    if #runtime.errors > runtime.max_errors then
        table.remove(runtime.errors, 1)
    end
end

function runtime.call(name, ...)
    local fn = rawget(_G, name)
    if type(fn) ~= "function" then
        return nil
    end
    local ok, value = pcall(fn, ...)
    if not ok then
        record_error("api:" .. name, value)
        return nil
    end
    return value
end

function runtime.with_player(slot, fn)
    if type(slot) ~= "number" or type(fn) ~= "function" then
        return nil
    end
    if type(player) ~= "function" then
        return nil
    end

    local old_id = type(id) == "function" and id() or nil
    local ok_select, exists = pcall(player, slot)
    if not ok_select or not exists then
        if old_id ~= nil and type(playerid) == "function" then
            pcall(playerid, old_id)
        end
        return nil
    end

    local ok, value = pcall(fn)
    if old_id ~= nil and type(playerid) == "function" then
        pcall(playerid, old_id)
    end
    if not ok then
        record_error("player:" .. tostring(slot), value)
        return nil
    end
    return value
end

function runtime.snapshot(slot)
    return runtime.with_player(slot, function()
        local guarded = runtime.call("getHitVar", "guarded")
        local received_damage = runtime.call("receivedDamage")
        return {
            slot = slot,
            id = runtime.call("id"),
            playerno = runtime.call("playerno"),
            name = runtime.call("name") or ("P" .. tostring(slot)),
            life = runtime.call("life") or 0,
            life_max = runtime.call("lifemax") or 0,
            red_life = runtime.call("redlife") or 0,
            power = runtime.call("power") or 0,
            power_max = runtime.call("powermax") or 0,
            attack = runtime.call("attack") or 0,
            defence = runtime.call("defence") or 0,
            guard_points = runtime.call("guardpoints"),
            guard_points_max = runtime.call("guardpointsmax"),
            dizzy_points = runtime.call("dizzypoints"),
            dizzy_points_max = runtime.call("dizzypointsmax"),
            state_no = runtime.call("stateno") or -1,
            state_type = runtime.call("statetype"),
            move_type = runtime.call("movetype"),
            physics = runtime.call("physics"),
            ctrl = runtime.call("ctrl"),
            ai_level = runtime.call("ailevel") or 0,
            time = runtime.call("time") or 0,
            alive = runtime.call("alive"),
            p2_dist_x = runtime.call("p2DistX"),
            p2_dist_y = runtime.call("p2DistY"),
            p2_state_type = runtime.call("p2StateType"),
            p2_state_no = runtime.call("p2StateNo"),
            move_contact = runtime.call("moveContact"),
            move_hit = runtime.call("moveHit"),
            guarded = guarded == true or guarded == 1,
            received_damage = received_damage or 0,
        }
    end)
end

function runtime.set_map(slot, key, value)
    if type(key) ~= "string" or key == "" then
        return false
    end
    local result = runtime.with_player(slot, function()
        if type(mapSet) ~= "function" then
            return false
        end
        mapSet(key, tonumber(value) or 0)
        return true
    end)
    return result == true
end

function runtime.set_power(slot, value)
    return runtime.with_player(slot, function()
        if type(setPower) ~= "function" then return false end
        setPower(math.floor(tonumber(value) or 0))
        return true
    end) == true
end

function runtime.set_guard_points(slot, value)
    return runtime.with_player(slot, function()
        if type(setGuardPoints) ~= "function" then return false end
        setGuardPoints(math.floor(tonumber(value) or 0))
        return true
    end) == true
end

function runtime.safe_hook(event, name, fn)
    if type(hook) ~= "table" or type(hook.add) ~= "function" then
        return false
    end
    hook.add(event, name, function(...)
        local ok, err = pcall(fn, ...)
        if not ok then
            record_error("hook:" .. tostring(event) .. ":" .. tostring(name), err)
        end
    end)
    return true
end

function runtime.run_hook_safe(event, ...)
    if type(hook) ~= "table" or type(hook.lists) ~= "table" then
        return
    end
    local callbacks = hook.lists[event]
    if type(callbacks) ~= "table" then
        return
    end
    for name, fn in pairs(callbacks) do
        if type(fn) == "function" then
            local ok, err = pcall(fn, ...)
            if not ok then
                record_error("hook:" .. tostring(event) .. ":" .. tostring(name), err)
            end
        end
    end
end

function runtime.game_mode()
    return runtime.call("gamemode") or ""
end

function runtime.round_state()
    return runtime.call("roundstate")
end

function runtime.round_no()
    return runtime.call("roundno")
end

function runtime.is_training()
    if type(gamemode) ~= "function" then return false end
    local ok, value = pcall(gamemode, "training")
    return ok and value == true
end

function runtime.get_errors()
    return runtime.errors
end

return runtime
