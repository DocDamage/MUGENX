-- MUGEN X - Input/Combo Sequence Trainer
-- Consumes the real input-history event stream. This trains command execution;
-- hit-confirm/contact analysis is exposed separately through runtime snapshots.

local runtime = require("runtime")
local input_history = require("input_history")
local trainer = {}

trainer.trials = {
    {name = "Basic Chain", seq = {"a", "a", "b"}},
    {name = "Quarter Circle", seq = {"D", "DF", "F", "x"}},
    {name = "Dragon Motion", seq = {"F", "D", "DF", "x"}},
}
trainer.current_trial = 1
trainer.progress = 0
trainer.completed = 0
trainer.last_tick = nil
trainer.window_ticks = 90
trainer.enabled = true

local function current()
    return trainer.trials[trainer.current_trial]
end

function trainer.reset_progress()
    trainer.progress = 0
    trainer.last_tick = nil
end

function trainer.reset()
    trainer.current_trial = 1
    trainer.completed = 0
    trainer.reset_progress()
end

function trainer.set_trial(index)
    index = tonumber(index)
    if not index or not trainer.trials[index] then return false end
    trainer.current_trial = index
    trainer.reset_progress()
    return true
end

function trainer.add_trial(name, sequence)
    if type(name) ~= "string" or type(sequence) ~= "table" or #sequence == 0 then
        return false
    end
    trainer.trials[#trainer.trials + 1] = {name = name, seq = sequence}
    return true
end

function trainer.on_input(slot, token, entry)
    if slot ~= 1 or not trainer.enabled or not runtime.is_training() then return end
    local trial = current()
    if not trial then return end

    local tick = entry and entry.tick or (type(tickcount) == "function" and tickcount() or 0)
    if trainer.last_tick and tick - trainer.last_tick > trainer.window_ticks then
        trainer.reset_progress()
    end

    local expected = trial.seq[trainer.progress + 1]
    if token == expected then
        trainer.progress = trainer.progress + 1
        trainer.last_tick = tick
        if trainer.progress >= #trial.seq then
            trainer.completed = trainer.completed + 1
            runtime.run_hook_safe("mugenx_trial_complete", "combo_trainer", trial.name, trainer.current_trial)
            if trainer.current_trial < #trainer.trials then
                trainer.current_trial = trainer.current_trial + 1
            end
            trainer.reset_progress()
        end
        return
    end

    -- Allow the current input to immediately become the first step of a new
    -- attempt; otherwise reset without pretending a move connected.
    if token == trial.seq[1] then
        trainer.progress = 1
        trainer.last_tick = tick
    elseif trainer.progress > 0 then
        trainer.reset_progress()
    end
end

function trainer.status()
    local trial = current()
    return {
        enabled = trainer.enabled,
        current_trial = trainer.current_trial,
        name = trial and trial.name or nil,
        sequence = trial and trial.seq or {},
        progress = trainer.progress,
        completed = trainer.completed,
    }
end

function trainer.init()
    runtime.safe_hook("matchstart", "mugenx_combo_trainer_reset", trainer.reset)
    runtime.safe_hook("mugenx_input", "mugenx_combo_trainer_input", trainer.on_input)
end

return trainer
