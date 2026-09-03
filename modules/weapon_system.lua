-- MUGEN X - Weapon System

local runtime = require("runtime")
local rpg = require("rpg_core")
local weapons = {}

weapons.path = "data/weapons_db.json"
weapons.db = {}
weapons.by_id = {}
weapons.element_codes = {
    Physical = 0, Fire = 1, Water = 2, Ice = 3, Lightning = 4, Earth = 5,
    Wind = 6, Nature = 7, Poison = 8, Blood = 9, Light = 10, Dark = 11,
    Arcane = 12, Cosmic = 13, Metal = 14,
}
weapons.last_error = nil

local function slug(value)
    value = tostring(value or "weapon"):lower()
    value = value:gsub("[^%w]+", "_"):gsub("^_+", ""):gsub("_+$", "")
    return value ~= "" and value or "weapon"
end

function weapons.load()
    local json = type(_G.json) == "table" and _G.json or nil
    if not json or type(json.decode) ~= "function" then
        weapons.last_error = "Ikemen JSON API unavailable"
        return false, weapons.last_error
    end
    local file, err = io.open(weapons.path, "r")
    if not file then
        weapons.last_error = tostring(err)
        return false, weapons.last_error
    end
    local raw = file:read("*a")
    file:close()
    local ok, data = pcall(json.decode, raw)
    if not ok or type(data) ~= "table" then
        weapons.last_error = "failed to decode weapon database: " .. tostring(data)
        return false, weapons.last_error
    end

    weapons.db = {}
    weapons.by_id = {}
    local used = {}
    for _, item in ipairs(data) do
        if type(item) == "table" and type(item.name) == "string" then
            local base = slug(item.name)
            local id = base
            local suffix = 2
            while used[id] do
                id = base .. "_" .. tostring(suffix)
                suffix = suffix + 1
            end
            used[id] = true
            item.id = id
            item.stats = item.stats or {}
            weapons.db[#weapons.db + 1] = item
            weapons.by_id[id] = item
        end
    end
    weapons.last_error = nil
    return true, #weapons.db
end

function weapons.get(id_or_name)
    if type(id_or_name) ~= "string" then return nil end
    local direct = weapons.by_id[id_or_name]
    if direct then return direct end
    local wanted = id_or_name:lower()
    for _, item in ipairs(weapons.db) do
        if tostring(item.name):lower() == wanted then return item end
    end
    return nil
end

function weapons.grant(slot, id_or_name, count)
    local item = weapons.get(id_or_name)
    if not item then return false, "unknown weapon" end
    rpg.add_item(slot, item.id, count or 1)
    return true, item
end

function weapons.equip(slot, id_or_name)
    local item = weapons.get(id_or_name)
    if not item then return false, "unknown weapon" end
    local state = rpg.ensure(slot)
    if (tonumber(state.inventory[item.id]) or 0) <= 0 then
        return false, "weapon is not in inventory"
    end
    state.equipment.weapon = item.id
    runtime.run_hook_safe("mugenx_weapon_equipped", slot, item.id, item)
    return true, item
end

function weapons.unequip(slot)
    local state = rpg.ensure(slot)
    local previous = state.equipment.weapon
    state.equipment.weapon = nil
    runtime.run_hook_safe("mugenx_weapon_equipped", slot, nil, previous)
    return true
end

function weapons.equipped(slot)
    local state = rpg.ensure(slot)
    if not state.equipment or not state.equipment.weapon then return nil end
    return weapons.get(state.equipment.weapon)
end

function weapons.publish(slot)
    local item = weapons.equipped(slot)
    local stats = item and item.stats or {}
    runtime.set_map(slot, "_mugenx_weapon_attack", math.floor(tonumber(stats.atk) or 0))
    runtime.set_map(slot, "_mugenx_weapon_defence", math.floor(tonumber(stats.def) or 0))
    runtime.set_map(slot, "_mugenx_weapon_speed", math.floor((tonumber(stats.speed) or 0) * 1000))
    runtime.set_map(slot, "_mugenx_weapon_range", math.floor(tonumber(stats.range) or 0))
    runtime.set_map(slot, "_mugenx_weapon_element", item and (weapons.element_codes[item.element] or 0) or 0)
end

function weapons.publish_all()
    local max_players = type(config) == "table" and tonumber(config.Players) or 4
    for slot = 1, math.max(1, math.min(8, max_players)) do weapons.publish(slot) end
end

function weapons.list(filter)
    if not filter or filter == "" then return weapons.db end
    filter = tostring(filter):lower()
    local ret = {}
    for _, item in ipairs(weapons.db) do
        if tostring(item.type or ""):lower() == filter
            or tostring(item.element or ""):lower() == filter
            or tostring(item.rarity or ""):lower() == filter then
            ret[#ret + 1] = item
        end
    end
    return ret
end

function weapons.init()
    local ok, detail = weapons.load()
    if not ok then
        print("MUGEN X Weapons: " .. tostring(detail))
    else
        print("MUGEN X Weapons: loaded " .. tostring(detail) .. " database entries")
    end
    runtime.safe_hook("tick", "mugenx_weapon_publish", weapons.publish_all)
end

return weapons
