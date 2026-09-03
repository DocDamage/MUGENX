-- MUGEN X - Real Input History
-- Reads Ikemen's command buffers after the stock loop processes input.

local runtime = require("runtime")
local inputs = {}

inputs.MAX_ENTRIES = 64
inputs.history = {}
inputs.previous = {}
inputs.serial = 0

for slot = 1, 8 do
    inputs.history[slot] = {}
    inputs.previous[slot] = {direction = "N", buttons = {}}
end

local BUTTONS = {"a", "b", "c", "x", "y", "z", "s"}

local function command_state(slot, name)
    if type(main) ~= "table" or type(main.t_cmd) ~= "table" then return false end
    local cmd = main.t_cmd[slot]
    if cmd == nil or type(commandGetState) ~= "function" then return false end
    local ok, value = pcall(commandGetState, cmd, name)
    return ok and value == true
end

local function direction(slot)
    local u = command_state(slot, "$U")
    local d = command_state(slot, "$D")
    local b = command_state(slot, "$B")
    local f = command_state(slot, "$F")
    if d and f then return "DF" end
    if d and b then return "DB" end
    if u and f then return "UF" end
    if u and b then return "UB" end
    if d then return "D" end
    if u then return "U" end
    if f then return "F" end
    if b then return "B" end
    return "N"
end

function inputs.add(slot, token)
    if not inputs.history[slot] or not token or token == "" then return nil end
    inputs.serial = inputs.serial + 1
    local entry = {
        serial = inputs.serial,
        token = token,
        tick = type(tickcount) == "function" and tickcount() or inputs.serial,
    }
    local history = inputs.history[slot]
    history[#history + 1] = entry
    if #history > inputs.MAX_ENTRIES then
        table.remove(history, 1)
    end
    runtime.run_hook_safe("mugenx_input", slot, token, entry)
    return entry
end

function inputs.capture_slot(slot)
    local prev = inputs.previous[slot]
    if not prev then return end

    local dir = direction(slot)
    if dir ~= prev.direction then
        if dir ~= "N" then inputs.add(slot, dir) end
        prev.direction = dir
    end

    for _, button in ipairs(BUTTONS) do
        local down = command_state(slot, button)
        if down and not prev.buttons[button] then
            inputs.add(slot, button)
        end
        prev.buttons[button] = down
    end
end

function inputs.capture()
    local max_players = 4
    if type(config) == "table" and tonumber(config.Players) then
        max_players = math.max(1, math.min(8, tonumber(config.Players)))
    end
    for slot = 1, max_players do
        inputs.capture_slot(slot)
    end
end

function inputs.get(slot)
    return inputs.history[slot] or {}
end

function inputs.clear(slot)
    if slot then
        inputs.history[slot] = {}
        inputs.previous[slot] = {direction = "N", buttons = {}}
        return
    end
    for i = 1, 8 do
        inputs.history[i] = {}
        inputs.previous[i] = {direction = "N", buttons = {}}
    end
end

function inputs.get_since(slot, serial)
    local ret = {}
    for _, entry in ipairs(inputs.get(slot)) do
        if entry.serial > (serial or 0) then
            ret[#ret + 1] = entry
        end
    end
    return ret
end

local function normalize_sequence(sequence)
    if type(sequence) == "string" then
        local result = {}
        for token in sequence:gmatch("[^,%s]+") do
            result[#result + 1] = token
        end
        return result
    end
    return sequence or {}
end

function inputs.matches_sequence(slot, sequence, max_gap)
    local wanted = normalize_sequence(sequence)
    if #wanted == 0 then return false end
    local history = inputs.get(slot)
    local wi = #wanted
    local last_tick = nil
    max_gap = tonumber(max_gap) or 20

    for hi = #history, 1, -1 do
        local entry = history[hi]
        if entry.token == wanted[wi] then
            if last_tick and last_tick - entry.tick > max_gap then
                return false
            end
            last_tick = entry.tick
            wi = wi - 1
            if wi == 0 then return true end
        end
    end
    return false
end

function inputs.init()
    runtime.safe_hook("matchstart", "mugenx_input_reset", function() inputs.clear() end)
    runtime.safe_hook("tick", "mugenx_input_capture", inputs.capture)
end

return inputs
