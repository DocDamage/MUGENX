-- MUGEN X ENGINE - Module Initialization
-- Centralized first-party module manifest with per-module load visibility.

print("MUGEN X ENGINE - Initializing Modules...")
print("")

local module_specs = {
    {id = "polish_system", init = true},
    {id = "advanced_polish", init = true},
    {id = "vfx_polish", init = true},
    {id = "hyper_polish", init = true},
    {id = "finishers", init = true},
    {id = "expanded_finishers", init = true},
    {id = "settings_manager", init = false},
    {id = "dev_menu", init = true},
    {id = "balance_system", init = true},
    {id = "abyss_mode", init = false},
    {id = "visual_shaders", init = true},
    {id = "ai_trainer", init = false},
    {id = "boss_ai", init = false},
    {id = "story_mode", init = false},
    {id = "netplay_lobby", init = false},
    {id = "tutorial_dojo", init = false},
}

local loaded_modules = {}
local loaded_by_id = {}

local function log_status(status, phase, module_id, detail)
    if detail and detail ~= "" then
        print(string.format("[%s] %s %s - %s", status, phase, module_id, detail))
    else
        print(string.format("[%s] %s %s", status, phase, module_id))
    end
end

for _, spec in ipairs(module_specs) do
    local ok_require, mod_or_err = pcall(require, spec.id)
    if not ok_require then
        log_status("FAIL", "require", spec.id, tostring(mod_or_err))
    else
        loaded_modules[#loaded_modules + 1] = {id = spec.id, module = mod_or_err}
        loaded_by_id[spec.id] = mod_or_err
        log_status("OK", "require", spec.id, nil)

        if spec.init and type(mod_or_err) == "table" and type(mod_or_err.init) == "function" then
            local ok_init, init_err = pcall(mod_or_err.init)
            if ok_init then
                log_status("OK", "init", spec.id, nil)
            else
                log_status("FAIL", "init", spec.id, tostring(init_err))
            end
        elseif spec.init then
            log_status("WARN", "init", spec.id, "no init() function found")
        end
    end
end

local dev_menu = loaded_by_id.dev_menu
local story = loaded_by_id.story_mode
local lobby = loaded_by_id.netplay_lobby
local dojo = loaded_by_id.tutorial_dojo

local function safe_call(module_table, function_name)
    if type(module_table) == "table" and type(module_table[function_name]) == "function" then
        local ok, err = pcall(module_table[function_name])
        if not ok then
            log_status("FAIL", function_name, tostring(module_table), tostring(err))
        end
    end
end

function mugen_x_update()
    safe_call(dev_menu, "update")
    safe_call(story, "update")
    safe_call(dojo, "update")
end

function mugen_x_draw()
    safe_call(dev_menu, "draw")
    safe_call(story, "draw")
    safe_call(lobby, "draw")
    safe_call(dojo, "draw")
end

print("")
print(string.format("Module manifest complete: %d attempted", #module_specs))
print("MUGEN X ENGINE module bootstrap finished.")
