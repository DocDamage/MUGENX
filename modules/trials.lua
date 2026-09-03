-- MUGEN X - Data-Driven Trials

local runtime = require("runtime")
local input_history = require("input_history")
local rpg = require("rpg_core")
local trials = {}

trials.path = "data/trials.json"
trials.database = {}
trials.active = nil
trials.index = 1
trials.last_completed_serial = 0
trials.last_error = nil

local function normalize_name(value)
    return tostring(value or ""):lower():gsub("[^%w]", "")
end

local function parse_input(value)
    local ret = {}
    for token in tostring(value or ""):gmatch("[^,%s]+") do
        ret[#ret + 1] = token
    end
    return ret
end

function trials.load()
    local json = type(_G.json) == "table" and _G.json or nil
    if not json or type(json.decode) ~= "function" then
        trials.last_error = "Ikemen JSON API unavailable"
        return false
    end
    local file, err = io.open(trials.path, "r")
    if not file then
        trials.last_error = tostring(err)
        return false
    end
    local raw = file:read("*a")
    file:close()
    local ok, data = pcall(json.decode, raw)
    if not ok or type(data) ~= "table" then
        trials.last_error = "failed to decode trials database: " .. tostring(data)
        return false
    end
    trials.database = data
    trials.last_error = nil
    return true
end

function trials.for_character(name)
    local wanted = normalize_name(name)
    for _, entry in ipairs(trials.database) do
        local candidate = normalize_name(entry.char)
        if candidate ~= "" and (wanted == candidate or wanted:find(candidate, 1, true)) then
            return entry.trials or {}
        end
    end
    return {
        {name = "Quick Chain", input = "x,y"},
        {name = "Quarter Circle", input = "D,DF,F,x"},
        {name = "Dragon Motion", input = "F,D,DF,x"},
    }
end

function trials.current()
    if not trials.active then return nil end
    return trials.active[trials.index]
end

function trials.select_for_match()
    local snapshot = runtime.snapshot(1)
    trials.active = trials.for_character(snapshot and snapshot.name or "")
    trials.index = 1
    trials.last_completed_serial = 0
end

function trials.complete_current(entry)
    local trial = trials.current()
    if not trial then return false end
    local state = rpg.ensure(1)
    state.trials = state.trials or {}
    local key = normalize_name((runtime.snapshot(1) or {}).name) .. ":" .. normalize_name(trial.name)
    local first_completion = not state.trials[key]
    state.trials[key] = true
    state.counters.trials = (state.counters.trials or 0) + 1
    if first_completion then
        rpg.gain_xp(1, 35, "trial_complete")
        rpg.gain_gold(1, 10, "trial_complete")
    end
    trials.last_completed_serial = entry and entry.serial or trials.last_completed_serial
    runtime.run_hook_safe("mugenx_trial_complete", "character_trial", trial.name, trials.index)
    if trials.index < #trials.active then
        trials.index = trials.index + 1
    end
    return true
end

function trials.on_input(slot, _, entry)
    if slot ~= 1 or not runtime.is_training() then return end
    local trial = trials.current()
    if not trial or not entry or entry.serial <= trials.last_completed_serial then return end
    local sequence = parse_input(trial.input or trial.move)
    if #sequence > 0 and input_history.matches_sequence(1, sequence, 24) then
        trials.complete_current(entry)
    end
end

function trials.status()
    local trial = trials.current()
    return {
        index = trials.index,
        count = trials.active and #trials.active or 0,
        name = trial and trial.name or nil,
        input = trial and (trial.input or trial.move) or nil,
        error = trials.last_error,
    }
end

function trials.init()
    if not trials.load() then
        print("MUGEN X Trials: " .. tostring(trials.last_error))
    end
    runtime.safe_hook("matchstart", "mugenx_trials_match", trials.select_for_match)
    runtime.safe_hook("mugenx_input", "mugenx_trials_input", trials.on_input)
end

return trials
