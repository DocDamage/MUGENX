-- MUGEN X - Guard Pressure / Crush Integration
-- Ikemen already owns guard-point depletion and guard-break behavior. This
-- module observes the real native values, publishes MUGEN X maps, and emits
-- lifecycle events instead of maintaining a second fake guard-health system.

local runtime = require("runtime")
local guard = {}

guard.previous = {}
guard.last = {}

local function reset()
    guard.previous = {}
    guard.last = {}
end

function guard.update_player(slot)
    local snapshot = runtime.snapshot(slot)
    if not snapshot then return end

    local current = tonumber(snapshot.guard_points)
    local maximum = tonumber(snapshot.guard_points_max)
    local previous = guard.previous[slot]
    local damage = 0

    if current and previous and previous.current then
        damage = math.max(0, previous.current - current)
    end

    local ratio = 1
    if current and maximum and maximum > 0 then
        ratio = math.max(0, math.min(1, current / maximum))
    end

    local crushed = false
    if current and previous and previous.current and previous.current > 0 and current <= 0 then
        crushed = true
    end

    guard.last[slot] = {
        current = current,
        maximum = maximum,
        ratio = ratio,
        damage = damage,
        guarded = snapshot.guarded == true,
        crushed = crushed,
    }

    runtime.set_map(slot, "_mugenx_guard_ratio", math.floor(ratio * 1000))
    runtime.set_map(slot, "_mugenx_guard_damage", math.floor(damage))
    runtime.set_map(slot, "_mugenx_guard_crush", crushed and 1 or 0)

    if damage > 0 then
        runtime.run_hook_safe("mugenx_guard_damage", slot, damage, guard.last[slot])
    end
    if crushed then
        runtime.run_hook_safe("mugenx_guard_crush", slot, guard.last[slot])
        print(string.format("MUGEN X: native guard crush detected for P%d", slot))
    end

    guard.previous[slot] = {current = current, maximum = maximum}
end

function guard.update()
    local max_players = type(config) == "table" and tonumber(config.Players) or 4
    for slot = 1, math.max(1, math.min(8, max_players)) do
        guard.update_player(slot)
    end
end

function guard.init()
    runtime.safe_hook("matchstart", "mugenx_guard_reset", reset)
    runtime.safe_hook("tick", "mugenx_guard_tick", guard.update)
end

return guard
