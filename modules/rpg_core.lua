-- MUGEN X - RPG Core
-- Persistent, engine-safe progression state. Gameplay modules communicate with
-- characters through Ikemen maps rather than mutating imaginary player fields.

local runtime = require("runtime")
local rpg = {}

rpg.VERSION = 2
rpg.players = {}
rpg.max_level = 99
rpg.level_curve_base = 100

local function copy_table(value)
    if type(value) ~= "table" then return value end
    local ret = {}
    for key, child in pairs(value) do
        ret[key] = copy_table(child)
    end
    return ret
end

local function default_player(slot)
    local snapshot = runtime.snapshot(slot)
    return {
        slot = slot,
        name = snapshot and snapshot.name or ("Player " .. tostring(slot)),
        level = 1,
        xp = 0,
        gold = 0,
        stats = {
            attack_bonus = 0,
            defence_bonus = 0,
            speed_bonus = 0,
            max_life_bonus = 0,
        },
        inventory = {},
        equipment = {weapon = nil},
        quests = {},
        achievements = {},
        counters = {
            wins = 0,
            losses = 0,
            matches = 0,
            trials = 0,
            damage_dealt = 0,
            blocks = 0,
        },
    }
end

function rpg.ensure(slot)
    slot = tonumber(slot) or 1
    if not rpg.players[slot] then
        rpg.players[slot] = default_player(slot)
    end
    return rpg.players[slot]
end

function rpg.reset(slot)
    if slot then
        rpg.players[slot] = default_player(slot)
        return rpg.players[slot]
    end
    rpg.players = {}
    return true
end

function rpg.xp_for_next(level)
    level = math.max(1, tonumber(level) or 1)
    return math.floor(rpg.level_curve_base * level * (1 + (level - 1) * 0.15))
end

function rpg.recalculate_level(slot)
    local player_state = rpg.ensure(slot)
    local leveled = false
    while player_state.level < rpg.max_level do
        local needed = rpg.xp_for_next(player_state.level)
        if player_state.xp < needed then break end
        player_state.xp = player_state.xp - needed
        player_state.level = player_state.level + 1
        player_state.stats.attack_bonus = player_state.stats.attack_bonus + 1
        player_state.stats.defence_bonus = player_state.stats.defence_bonus + 1
        if player_state.level % 5 == 0 then
            player_state.stats.max_life_bonus = player_state.stats.max_life_bonus + 10
        end
        leveled = true
        runtime.run_hook_safe("mugenx_rpg_level_up", slot, player_state.level)
    end
    return leveled, player_state.level
end

function rpg.gain_xp(slot, amount, reason)
    local state = rpg.ensure(slot)
    amount = math.max(0, math.floor(tonumber(amount) or 0))
    if amount == 0 then return state.xp end
    state.xp = state.xp + amount
    rpg.recalculate_level(slot)
    runtime.run_hook_safe("mugenx_rpg_xp", slot, amount, reason or "unknown")
    return state.xp
end

function rpg.gain_gold(slot, amount, reason)
    local state = rpg.ensure(slot)
    amount = math.max(0, math.floor(tonumber(amount) or 0))
    state.gold = state.gold + amount
    runtime.run_hook_safe("mugenx_rpg_gold", slot, amount, reason or "unknown")
    return state.gold
end

function rpg.spend_gold(slot, amount, reason)
    local state = rpg.ensure(slot)
    amount = math.max(0, math.floor(tonumber(amount) or 0))
    if state.gold < amount then return false end
    state.gold = state.gold - amount
    runtime.run_hook_safe("mugenx_rpg_spend", slot, amount, reason or "unknown")
    return true
end

function rpg.add_item(slot, item_id, count)
    if type(item_id) ~= "string" or item_id == "" then return false end
    local state = rpg.ensure(slot)
    count = math.max(1, math.floor(tonumber(count) or 1))
    state.inventory[item_id] = (tonumber(state.inventory[item_id]) or 0) + count
    runtime.run_hook_safe("mugenx_rpg_item_added", slot, item_id, count)
    return true
end

function rpg.remove_item(slot, item_id, count)
    local state = rpg.ensure(slot)
    count = math.max(1, math.floor(tonumber(count) or 1))
    local current = tonumber(state.inventory[item_id]) or 0
    if current < count then return false end
    current = current - count
    if current <= 0 then state.inventory[item_id] = nil else state.inventory[item_id] = current end
    return true
end

function rpg.set_stat(slot, key, value)
    local state = rpg.ensure(slot)
    if state.stats[key] == nil then return false end
    state.stats[key] = tonumber(value) or 0
    return true
end

function rpg.add_stat(slot, key, delta)
    local state = rpg.ensure(slot)
    if state.stats[key] == nil then return false end
    state.stats[key] = (tonumber(state.stats[key]) or 0) + (tonumber(delta) or 0)
    return true
end

function rpg.record_match(slot, won)
    local state = rpg.ensure(slot)
    state.counters.matches = (state.counters.matches or 0) + 1
    if won then
        state.counters.wins = (state.counters.wins or 0) + 1
        rpg.gain_xp(slot, 50 + state.level * 5, "match_win")
        rpg.gain_gold(slot, 25 + state.level * 2, "match_win")
    else
        state.counters.losses = (state.counters.losses or 0) + 1
        rpg.gain_xp(slot, 15, "match_loss")
    end
end

function rpg.publish(slot)
    local state = rpg.ensure(slot)
    runtime.set_map(slot, "_mugenx_rpg_level", state.level)
    runtime.set_map(slot, "_mugenx_rpg_xp", state.xp)
    runtime.set_map(slot, "_mugenx_rpg_gold", state.gold)
    runtime.set_map(slot, "_mugenx_rpg_attack_bonus", math.floor(state.stats.attack_bonus or 0))
    runtime.set_map(slot, "_mugenx_rpg_defence_bonus", math.floor(state.stats.defence_bonus or 0))
    runtime.set_map(slot, "_mugenx_rpg_speed_bonus", math.floor((state.stats.speed_bonus or 0) * 1000))
    runtime.set_map(slot, "_mugenx_rpg_life_bonus", math.floor(state.stats.max_life_bonus or 0))
end

function rpg.publish_all()
    local max_players = type(config) == "table" and tonumber(config.Players) or 4
    for slot = 1, math.max(1, math.min(8, max_players)) do
        rpg.publish(slot)
    end
end

function rpg.serialize()
    local data = {version = rpg.VERSION, players = {}}
    for slot, state in pairs(rpg.players) do
        data.players[tostring(slot)] = copy_table(state)
    end
    return data
end

function rpg.deserialize(data)
    if type(data) ~= "table" or type(data.players) ~= "table" then return false end
    local restored = {}
    for key, state in pairs(data.players) do
        local slot = tonumber(key) or (type(state) == "table" and tonumber(state.slot))
        if slot and type(state) == "table" then
            local base = default_player(slot)
            for field, value in pairs(state) do base[field] = copy_table(value) end
            base.slot = slot
            base.stats = base.stats or default_player(slot).stats
            base.inventory = base.inventory or {}
            base.equipment = base.equipment or {weapon = nil}
            base.quests = base.quests or {}
            base.achievements = base.achievements or {}
            base.counters = base.counters or default_player(slot).counters
            restored[slot] = base
        end
    end
    rpg.players = restored
    return true
end

function rpg.snapshot(slot)
    return copy_table(rpg.ensure(slot))
end

function rpg.init()
    rpg.ensure(1)
    rpg.ensure(2)
    runtime.safe_hook("tick", "mugenx_rpg_publish", rpg.publish_all)
    runtime.safe_hook("matchend", "mugenx_rpg_match_rewards", function()
        local winner = runtime.call("winnerteam")
        if winner == 1 then
            rpg.record_match(1, true)
            rpg.record_match(2, false)
        elseif winner == 2 then
            rpg.record_match(1, false)
            rpg.record_match(2, true)
        end
    end)
end

return rpg
