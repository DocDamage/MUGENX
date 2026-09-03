-- MUGEN X ENGINE - Runtime Dashboard
-- F8 toggles the overlay. Left/right cycle live system pages. The dashboard is
-- read-only except for explicitly safe actions such as beginning a tournament.

local runtime = require("runtime")
local registry = require("module_registry")
local engine_ai = require("engine_ai")
local rpg = require("rpg_core")
local weapons = require("weapon_system")
local quests = require("rpg_quests")
local achievements = require("achievements")
local tournament = require("tournament")
local trials = require("trials")
local logger = require("logger")

local dev = {}

dev.active = false
dev.page = 1
dev.pages = {"RUNTIME", "AI", "RPG", "PROGRESS", "TOURNAMENT", "TRIALS", "TOOLS", "LOGS"}
dev.text = nil
dev.small = nil
dev.last_action = "F8 toggles dashboard"
dev.key_latch = {}

local function text_new(scale)
    if type(textImgNew) ~= "function" then return nil end
    local ok, image = pcall(textImgNew)
    if not ok then return nil end
    if scale and type(textImgSetScale) == "function" then
        pcall(textImgSetScale, image, scale, scale)
    end
    return image
end

local function draw_line(image, x, y, text, r, g, b)
    if not image then return end
    if type(textImgSetText) == "function" then pcall(textImgSetText, image, tostring(text or "")) end
    if type(textImgSetPos) == "function" then pcall(textImgSetPos, image, x, y) end
    if type(textImgSetColor) == "function" then pcall(textImgSetColor, image, r or 240, g or 240, b or 240) end
    if type(textImgDraw) == "function" then pcall(textImgDraw, image) end
end

local function key_pressed(key)
    if type(getKey) ~= "function" then return false end
    local ok, value = pcall(getKey, key)
    if not ok then return false end
    local pressed = value == true or (type(value) == "string" and value ~= "")
    if pressed and not dev.key_latch[key] then
        dev.key_latch[key] = true
        if type(resetKey) == "function" then pcall(resetKey) end
        return true
    elseif not pressed then
        dev.key_latch[key] = nil
    end
    return false
end

local function player_input(commands)
    if type(main) ~= "table" or type(main.f_input) ~= "function" then return false end
    local ok, value = pcall(main.f_input, {1}, commands)
    return ok and value == true
end

local function count_table(value)
    local count = 0
    if type(value) == "table" then for _ in pairs(value) do count = count + 1 end end
    return count
end

local function format_ai(slot)
    local record = engine_ai.get_last(slot)
    if not record then return "P" .. tostring(slot) .. ": no AI decision yet" end
    return string.format(
        "P%d: %s | AI %d | dist %.0f | state %s",
        slot,
        tostring(record.action_name),
        tonumber(record.ai_level) or 0,
        tonumber(record.distance) or 0,
        tostring(record.state_no or "-")
    )
end

local function runtime_lines()
    local snapshot = type(mugen_x_registry_snapshot) == "function" and mugen_x_registry_snapshot() or nil
    local counts = registry.counts()
    local loaded = snapshot and snapshot.loaded or {}
    local failures = snapshot and snapshot.failures or {}
    local errors = runtime.get_errors()
    return {
        "Canonical module registry v" .. tostring(registry.version),
        string.format("Active %d | Experimental %d | Archive %d", counts.active, counts.experimental, counts.archive),
        string.format("Loaded %d | Bootstrap failures %d | Runtime errors %d", #loaded, #failures, #errors),
        "Round state: " .. tostring(runtime.round_state()) .. " | Round: " .. tostring(runtime.round_no()),
        "Mode: " .. tostring(runtime.game_mode()),
        failures[1] and ("Latest bootstrap failure: " .. tostring(failures[#failures].id) .. " / " .. tostring(failures[#failures].phase)) or "Bootstrap failures: none recorded",
        errors[1] and ("Latest runtime error: " .. tostring(errors[#errors].scope)) or "Runtime errors: none recorded",
    }
end

local function ai_lines()
    local p1 = runtime.snapshot(1)
    local p2 = runtime.snapshot(2)
    return {
        format_ai(1),
        format_ai(2),
        p1 and ("P1: " .. tostring(p1.name) .. " | life " .. tostring(p1.life) .. "/" .. tostring(p1.life_max)) or "P1 unavailable",
        p2 and ("P2: " .. tostring(p2.name) .. " | life " .. tostring(p2.life) .. "/" .. tostring(p2.life_max)) or "P2 unavailable",
        "Generated MUGENX fighters consume _mugenx_ai_decision maps.",
        "Legacy fighters keep their native Ikemen/MUGEN AI.",
    }
end

local function rpg_lines()
    local state = rpg.snapshot(1)
    local weapon = weapons.equipped(1)
    local inventory_count = count_table(state.inventory)
    local next_xp = rpg.xp_for_next(state.level)
    return {
        "P1: " .. tostring(state.name),
        string.format("Level %d | XP %d/%d | Gold %d", state.level, state.xp, next_xp, state.gold),
        string.format(
            "Bonuses: ATK %s | DEF %s | SPD %s | LIFE %s",
            tostring(state.stats.attack_bonus or 0),
            tostring(state.stats.defence_bonus or 0),
            tostring(state.stats.speed_bonus or 0),
            tostring(state.stats.max_life_bonus or 0)
        ),
        "Inventory item types: " .. tostring(inventory_count),
        weapon and ("Weapon: " .. tostring(weapon.name) .. " | " .. tostring(weapon.rarity) .. " " .. tostring(weapon.element)) or "Weapon: none equipped",
        string.format("Matches %d | Wins %d | Losses %d", state.counters.matches or 0, state.counters.wins or 0, state.counters.losses or 0),
        "Save: save/rpg_data.json",
    }
end

local function progress_lines()
    local quest_status = quests.status(1)
    local quest = quest_status.active
    local ach = achievements.status(1)
    local ret = {
        "Quests completed: " .. tostring(quest_status.completed),
        quest and ("Active: " .. tostring(quest.desc)) or "Active quest: none",
        quest and string.format("Progress: %s/%s | Reward %s XP / %s Gold", tostring(quest.current), tostring(quest.target), tostring(quest.xp), tostring(quest.gold)) or "",
        string.format("Achievements: %d/%d", ach.count or 0, achievements.total or 0),
        "Trials completed: " .. tostring((rpg.ensure(1).counters or {}).trials or 0),
    }
    local queued = ach.queue and ach.queue[#ach.queue]
    if queued then ret[#ret + 1] = "Latest unlock: " .. tostring(queued.title) end
    return ret
end

local function tournament_lines()
    local status = tournament.status()
    local ret = {
        "Roster entries available: " .. tostring(status.roster_count or 0),
        status.active and string.format("Tournament active | Round %d | Match %d", status.round or 0, status.match or 0) or "Tournament inactive",
    }
    if status.current then
        ret[#ret + 1] = tostring(status.current.p1.name) .. " VS " .. tostring(status.current.p2.name)
        ret[#ret + 1] = "Load this pairing in Ikemen; real winner is recorded at match end."
    elseif status.champion then
        ret[#ret + 1] = "Champion: " .. tostring(status.champion.name)
    else
        ret[#ret + 1] = "Press confirm to build an 8-fighter bracket from select.def."
    end
    if status.error then ret[#ret + 1] = "Status: " .. tostring(status.error) end
    return ret
end

local function trial_lines()
    local status = trials.status()
    return {
        runtime.is_training() and "Training mode detected" or "Enter Training mode to record trial completions",
        string.format("Trial %d/%d", status.index or 0, status.count or 0),
        "Name: " .. tostring(status.name or "none"),
        "Input: " .. tostring(status.input or "-"),
        "Inputs are read from Ikemen command buffers, not simulated.",
        status.error and ("Trial database error: " .. tostring(status.error)) or "Database: data/trials.json",
    }
end

local function tool_lines()
    return {
        "Canonical maintenance commands:",
        "python tools/validate_system.py",
        "python tools/content_lint.py",
        "python tools/content_lint.py --fix-overflow",
        "python tools/ai_character_gen/generator.py NAME --style balanced",
        "python tools/ai_stage_gen/stage_generator.py NAME",
        "Set MUGENX_SPRMAKE2 if sprmake2 is not on PATH.",
        "Generation registers content only after compile/reference validation.",
    }
end

local function log_lines()
    local errors = runtime.get_errors()
    local ret = {
        "Match log: " .. tostring(logger.path),
        "Runtime error count: " .. tostring(#errors),
        "Dashboard action: " .. tostring(dev.last_action),
    }
    local start = math.max(1, #errors - 3)
    for index = start, #errors do
        local err = errors[index]
        if err then ret[#ret + 1] = tostring(err.scope) .. ": " .. tostring(err.error) end
    end
    if #errors == 0 then ret[#ret + 1] = "No runtime adapter errors recorded." end
    return ret
end

local PAGE_RENDERERS = {
    runtime_lines,
    ai_lines,
    rpg_lines,
    progress_lines,
    tournament_lines,
    trial_lines,
    tool_lines,
    log_lines,
}

local function handle_confirm()
    if dev.page == 5 then
        local status = tournament.status()
        if not status.active then
            local ok, detail = tournament.begin(8)
            dev.last_action = ok and "Created 8-fighter tournament bracket" or ("Tournament start failed: " .. tostring(detail))
        else
            dev.last_action = "Tournament already active; current pairing shown on page"
        end
    else
        dev.last_action = "No destructive action assigned to this page"
    end
end

function dev.init()
    dev.text = text_new(1.0)
    dev.small = text_new(0.82)
    print("MUGEN X Runtime Dashboard loaded - F8 toggles overlay")
end

function dev.update()
    if key_pressed("F8") then
        dev.active = not dev.active
        dev.last_action = dev.active and "Dashboard opened" or "Dashboard closed"
        return
    end
    if not dev.active then return end

    if player_input({"$F"}) then
        dev.page = dev.page + 1
        if dev.page > #dev.pages then dev.page = 1 end
    elseif player_input({"$B"}) then
        dev.page = dev.page - 1
        if dev.page < 1 then dev.page = #dev.pages end
    elseif player_input({"pal", "s"}) then
        handle_confirm()
    end
end

function dev.draw()
    if not dev.active or not dev.text then return end

    local title = string.format("MUGEN X | %s | %d/%d", dev.pages[dev.page], dev.page, #dev.pages)
    draw_line(dev.text, 22, 28, title, 255, 210, 80)
    draw_line(dev.small, 22, 48, "F8 close | Left/Right pages | Confirm action where available", 160, 190, 220)

    local renderer = PAGE_RENDERERS[dev.page]
    local lines = renderer and renderer() or {"Page unavailable"}
    local y = 78
    for _, line in ipairs(lines) do
        if line ~= "" then
            draw_line(dev.small, 30, y, line, 235, 235, 235)
            y = y + 19
        end
    end

    draw_line(dev.small, 22, 224, dev.last_action, 120, 230, 180)
end

return dev
