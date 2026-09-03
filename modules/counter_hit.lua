-- MUGEN X - Counter Hit Detection
-- Detects a new damage event while the victim was attacking on the previous
-- observed frame. It records/publishes the event but never invents extra damage.

local runtime = require("runtime")
local counter = {}

counter.previous = {}
counter.events = {}
counter.MAX_EVENTS = 50

local function reset()
    counter.previous = {}
    counter.events = {}
end

local function push_event(event)
    counter.events[#counter.events + 1] = event
    if #counter.events > counter.MAX_EVENTS then table.remove(counter.events, 1) end
end

function counter.update_player(slot)
    local now = runtime.snapshot(slot)
    if not now then return end
    local previous = counter.previous[slot]
    local is_counter = false
    local damage = 0

    if previous then
        damage = math.max(0, (previous.life or now.life) - (now.life or previous.life or 0))
        is_counter = damage > 0 and previous.move_type == "A" and now.move_type == "H"
    end

    runtime.set_map(slot, "_mugenx_counter_hit", is_counter and 1 or 0)
    if is_counter then
        local event = {
            slot = slot,
            damage = damage,
            previous_state = previous.state_no,
            current_state = now.state_no,
            tick = type(tickcount) == "function" and tickcount() or 0,
        }
        push_event(event)
        runtime.run_hook_safe("mugenx_counter_hit", slot, event)
        print(string.format("MUGEN X: counter hit detected on P%d (%d damage)", slot, damage))
    end

    counter.previous[slot] = {
        life = now.life,
        move_type = now.move_type,
        state_no = now.state_no,
    }
end

function counter.update()
    local max_players = type(config) == "table" and tonumber(config.Players) or 4
    for slot = 1, math.max(1, math.min(8, max_players)) do
        counter.update_player(slot)
    end
end

function counter.init()
    runtime.safe_hook("matchstart", "mugenx_counter_reset", reset)
    runtime.safe_hook("tick", "mugenx_counter_tick", counter.update)
end

return counter
