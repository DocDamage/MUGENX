-- MUGEN X - Persistent RPG Quest System

local runtime = require("runtime")
local rpg = require("rpg_core")
local quests = {}

quests.previous_life = {}
quests.templates = {
    {id = "damage_200", desc = "Deal 200 Damage", type = "damage", target = 200, xp = 150, gold = 100},
    {id = "block_3", desc = "Block 3 Attacks", type = "block", target = 3, xp = 80, gold = 40},
    {id = "win_1", desc = "Win a Match", type = "win", target = 1, xp = 120, gold = 75},
    {id = "trial_1", desc = "Complete a Trial", type = "trial", target = 1, xp = 100, gold = 50},
}

local function copy_template(template)
    return {
        id = template.id,
        desc = template.desc,
        type = template.type,
        target = template.target,
        current = 0,
        xp = template.xp,
        gold = template.gold,
    }
end

function quests.ensure(slot)
    local state = rpg.ensure(slot)
    state.quests = state.quests or {}
    state.quests.completed = tonumber(state.quests.completed) or 0
    if type(state.quests.active) ~= "table" then
        local index = (state.quests.completed % #quests.templates) + 1
        state.quests.active = copy_template(quests.templates[index])
        runtime.run_hook_safe("mugenx_quest_assigned", slot, state.quests.active)
    end
    return state.quests.active
end

function quests.complete(slot)
    local state = rpg.ensure(slot)
    local quest = quests.ensure(slot)
    state.quests.completed = (tonumber(state.quests.completed) or 0) + 1
    state.quests.active = nil
    rpg.gain_xp(slot, quest.xp or 0, "quest_complete")
    rpg.gain_gold(slot, quest.gold or 0, "quest_complete")
    runtime.run_hook_safe("mugenx_quest_complete", slot, quest)
    quests.ensure(slot)
    return true
end

function quests.progress(slot, kind, amount)
    local quest = quests.ensure(slot)
    if quest.type ~= kind then return false end
    amount = math.max(0, tonumber(amount) or 0)
    if amount <= 0 then return false end
    quest.current = math.min(quest.target, (tonumber(quest.current) or 0) + amount)
    runtime.run_hook_safe("mugenx_quest_progress", slot, quest, amount)
    if quest.current >= quest.target then quests.complete(slot) end
    return true
end

function quests.track_damage()
    local p1 = runtime.snapshot(1)
    local p2 = runtime.snapshot(2)
    if not p1 or not p2 then return end

    if quests.previous_life[2] then
        local damage = math.max(0, quests.previous_life[2] - p2.life)
        if damage > 0 then
            quests.progress(1, "damage", damage)
            local state = rpg.ensure(1)
            state.counters.damage_dealt = (state.counters.damage_dealt or 0) + damage
        end
    end
    if quests.previous_life[1] then
        local damage = math.max(0, quests.previous_life[1] - p1.life)
        if damage > 0 then
            quests.progress(2, "damage", damage)
            local state = rpg.ensure(2)
            state.counters.damage_dealt = (state.counters.damage_dealt or 0) + damage
        end
    end
    quests.previous_life[1] = p1.life
    quests.previous_life[2] = p2.life
end

function quests.on_guard_damage(slot, damage)
    if (tonumber(damage) or 0) <= 0 then return end
    quests.progress(slot, "block", 1)
    local state = rpg.ensure(slot)
    state.counters.blocks = (state.counters.blocks or 0) + 1
end

function quests.on_match_end()
    local winner = runtime.call("winnerteam")
    if winner == 1 or winner == 2 then quests.progress(winner, "win", 1) end
end

function quests.on_trial_complete()
    quests.progress(1, "trial", 1)
end

function quests.status(slot)
    local state = rpg.ensure(slot or 1)
    local quest = quests.ensure(slot or 1)
    return {
        active = quest,
        completed = state.quests.completed or 0,
    }
end

function quests.init()
    quests.ensure(1)
    quests.ensure(2)
    runtime.safe_hook("matchstart", "mugenx_quests_reset_life", function()
        local p1, p2 = runtime.snapshot(1), runtime.snapshot(2)
        quests.previous_life[1] = p1 and p1.life or nil
        quests.previous_life[2] = p2 and p2.life or nil
    end)
    runtime.safe_hook("tick", "mugenx_quests_damage", quests.track_damage)
    runtime.safe_hook("mugenx_guard_damage", "mugenx_quests_block", quests.on_guard_damage)
    runtime.safe_hook("matchend", "mugenx_quests_win", quests.on_match_end)
    runtime.safe_hook("mugenx_trial_complete", "mugenx_quests_trial", quests.on_trial_complete)
end

return quests
