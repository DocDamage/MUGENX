-- MUGEN X - RPG Save System

local runtime = require("runtime")
local rpg = require("rpg_core")
local save = {}

save.path = "save/rpg_data.json"
save.loaded = false
save.dirty = false
save.last_error = nil

local function json_api()
    if type(_G.json) == "table" and type(_G.json.encode) == "function" and type(_G.json.decode) == "function" then
        return _G.json
    end
    return nil
end

function save.mark_dirty()
    save.dirty = true
end

function save.load()
    local json = json_api()
    if not json then
        save.last_error = "Ikemen JSON API unavailable"
        return false, save.last_error
    end
    local file = io.open(save.path, "r")
    if not file then
        save.loaded = true
        return true, "new save"
    end
    local raw = file:read("*a")
    file:close()
    if not raw or raw == "" then
        save.loaded = true
        return true, "empty save"
    end

    local ok_decode, data = pcall(json.decode, raw)
    if not ok_decode or type(data) ~= "table" then
        save.last_error = "failed to decode RPG save: " .. tostring(data)
        return false, save.last_error
    end
    if not rpg.deserialize(data) then
        save.last_error = "RPG save schema is invalid"
        return false, save.last_error
    end
    save.loaded = true
    save.dirty = false
    save.last_error = nil
    return true
end

function save.write(force)
    if not force and not save.dirty then return true, "clean" end
    local json = json_api()
    if not json then
        save.last_error = "Ikemen JSON API unavailable"
        return false, save.last_error
    end
    local ok_encode, raw = pcall(json.encode, rpg.serialize())
    if not ok_encode or type(raw) ~= "string" then
        save.last_error = "failed to encode RPG save: " .. tostring(raw)
        return false, save.last_error
    end

    local temp_path = save.path .. ".tmp"
    local file, err = io.open(temp_path, "w")
    if not file then
        save.last_error = tostring(err)
        return false, save.last_error
    end
    file:write(raw)
    file:close()

    os.remove(save.path .. ".bak")
    os.rename(save.path, save.path .. ".bak")
    local ok, rename_err = os.rename(temp_path, save.path)
    if not ok then
        save.last_error = tostring(rename_err)
        os.rename(save.path .. ".bak", save.path)
        return false, save.last_error
    end

    save.dirty = false
    save.last_error = nil
    runtime.run_hook_safe("mugenx_rpg_saved", save.path)
    return true
end

function save.init()
    local ok, err = save.load()
    if not ok then
        print("MUGEN X RPG Save: " .. tostring(err))
    end

    local dirty_events = {
        "mugenx_rpg_xp",
        "mugenx_rpg_gold",
        "mugenx_rpg_spend",
        "mugenx_rpg_item_added",
        "mugenx_rpg_level_up",
        "mugenx_achievement",
        "mugenx_quest_complete",
    }
    for _, event in ipairs(dirty_events) do
        runtime.safe_hook(event, "mugenx_rpg_save_dirty_" .. event, save.mark_dirty)
    end
    runtime.safe_hook("matchend", "mugenx_rpg_save_matchend", function() save.write(true) end)
end

return save
