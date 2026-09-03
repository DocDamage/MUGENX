-- MUGEN X - Persistent Achievement System

local runtime = require("runtime")
local rpg = require("rpg_core")
local achievements = {}

achievements.definitions = {
    first_blood = {title = "First Blood", desc = "Win your first match"},
    combo_master = {title = "Trial Master", desc = "Complete three character trials"},
    big_spender = {title = "Big Spender", desc = "Spend 1000 Gold"},
    perfect = {title = "Perfectionist", desc = "Win a round without losing life"},
    level_10 = {title = "Contender", desc = "Reach RPG level 10"},
    collector = {title = "Arsenal", desc = "Own ten different items"},
    quester = {title = "Contract Complete", desc = "Complete five quests"},
}

achievements.queue = {}
achievements.max_queue = 10

local function unlocked_table(slot)
    local state = rpg.ensure(slot)
    state.achievements = state.achievements or {}
    return state.achievements
end

function achievements.is_unlocked(slot, id)
    return unlocked_table(slot)[id] ~= nil
end

function achievements.unlock(slot, id)
    local definition = achievements.definitions[id]
    if not definition or achievements.is_unlocked(slot, id) then return false end
    local state = rpg.ensure(slot)
    state.achievements[id] = {
        unlocked = true,
        tick = type(tickcount) == "function" and tickcount() or 0,
        title = definition.title,
    }
    achievements.queue[#achievements.queue + 1] = {slot = slot, id = id, title = definition.title}
    while #achievements.queue > achievements.max_queue do table.remove(achievements.queue, 1) end
    runtime.run_hook_safe("mugenx_achievement", slot, id, definition)
    print("MUGEN X Achievement: P" .. tostring(slot) .. " unlocked " .. definition.title)
    return true
end

local function inventory_distinct(state)
    local count = 0
    for _, amount in pairs(state.inventory or {}) do
        if (tonumber(amount) or 0) > 0 then count = count + 1 end
    end
    return count
end

function achievements.check_progress(slot)
    local state = rpg.ensure(slot)
    if state.level >= 10 then achievements.unlock(slot, "level_10") end
    if inventory_distinct(state) >= 10 then achievements.unlock(slot, "collector") end
    if (state.counters.trials or 0) >= 3 then achievements.unlock(slot, "combo_master") end
    if state.quests and (state.quests.completed or 0) >= 5 then achievements.unlock(slot, "quester") end
    if (state.counters.gold_spent or 0) >= 1000 then achievements.unlock(slot, "big_spender") end
end

function achievements.on_match_end()
    local winner = runtime.call("winnerteam")
    if winner == 1 or winner == 2 then achievements.unlock(winner, "first_blood") end
end

function achievements.on_round_end()
    local p1, p2 = runtime.snapshot(1), runtime.snapshot(2)
    if p1 and p2 then
        if p1.alive and p2.life <= 0 and p1.life_max > 0 and p1.life >= p1.life_max then
            achievements.unlock(1, "perfect")
        elseif p2.alive and p1.life <= 0 and p2.life_max > 0 and p2.life >= p2.life_max then
            achievements.unlock(2, "perfect")
        end
    end
end

function achievements.on_spend(slot, amount)
    local state = rpg.ensure(slot)
    state.counters.gold_spent = (state.counters.gold_spent or 0) + math.max(0, tonumber(amount) or 0)
    achievements.check_progress(slot)
end

function achievements.status(slot)
    local unlocked = unlocked_table(slot or 1)
    local count = 0
    for _ in pairs(unlocked) do count = count + 1 end
    return {
        count = count,
        total = 0,
        unlocked = unlocked,
        queue = achievements.queue,
    }
end

function achievements.init()
    local total = 0
    for _ in pairs(achievements.definitions) do total = total + 1 end
    achievements.total = total
    runtime.safe_hook("tick", "mugenx_achievements_progress", function()
        achievements.check_progress(1)
        achievements.check_progress(2)
    end)
    runtime.safe_hook("matchend", "mugenx_achievements_match", achievements.on_match_end)
    runtime.safe_hook("roundend", "mugenx_achievements_round", achievements.on_round_end)
    runtime.safe_hook("mugenx_rpg_spend", "mugenx_achievements_spend", achievements.on_spend)
end

return achievements
