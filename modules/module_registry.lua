-- MUGEN X ENGINE - Canonical Module Registry
-- Classifies every first-party Lua module as active, experimental, or archive.
-- Only active modules are bootstrapped automatically.

local registry = {}

registry.version = 2
registry.allowed_status = {active = true, experimental = true, archive = true}

local specs = {
    -- Runtime / presentation
    {id = "settings_manager", status = "active", init = false, group = "runtime"},
    {id = "polish_system", status = "active", init = true, group = "presentation"},
    {id = "advanced_polish", status = "active", init = true, group = "presentation"},
    {id = "vfx_polish", status = "active", init = true, group = "presentation"},
    {id = "hyper_polish", status = "active", init = true, group = "presentation"},
    {id = "visual_shaders", status = "active", init = true, group = "presentation"},
    {id = "balance_system", status = "active", init = true, group = "combat"},
    {id = "finishers", status = "active", init = true, group = "combat"},
    {id = "expanded_finishers", status = "active", init = true, group = "combat"},

    -- Phase 1-5 runtime integrations
    {id = "engine_sf2", status = "active", init = true, group = "combat"},
    {id = "engine_mvc", status = "active", init = true, group = "combat"},
    {id = "engine_ai", status = "active", init = true, group = "ai"},
    {id = "input_history", status = "active", init = true, group = "training"},
    {id = "guard_crush", status = "active", init = true, group = "combat"},
    {id = "counter_hit", status = "active", init = true, group = "combat"},
    {id = "logger", status = "active", init = true, group = "telemetry"},
    {id = "combo_trainer", status = "active", init = true, group = "training", depends = {"input_history"}},
    {id = "trials", status = "active", init = true, group = "training", depends = {"input_history", "rpg_core"}},
    {id = "tournament", status = "active", init = true, group = "modes"},
    {id = "rpg_core", status = "active", init = true, group = "rpg"},
    {id = "rpg_save", status = "active", init = true, group = "rpg", depends = {"rpg_core"}},
    {id = "weapon_system", status = "active", init = true, group = "rpg", depends = {"rpg_core"}},
    {id = "rpg_quests", status = "active", init = true, group = "rpg", depends = {"rpg_core"}},
    {id = "achievements", status = "active", init = true, group = "progression", depends = {"rpg_core"}},
    {id = "dev_menu", status = "active", init = true, group = "ui", lifecycle = {update = true, draw = true}},

    -- Experimental systems: shipped, discoverable, but not auto-bootstrapped.
    {id = "abyss_mode", status = "experimental", init = false, group = "modes"},
    {id = "ai_trainer", status = "experimental", init = false, group = "ai"},
    {id = "assist", status = "experimental", init = true, group = "combat"},
    {id = "betting", status = "experimental", init = true, group = "modes"},
    {id = "bonus_parry", status = "experimental", init = true, group = "combat"},
    {id = "boss_ai", status = "experimental", init = false, group = "ai"},
    {id = "burst", status = "experimental", init = true, group = "combat"},
    {id = "clash_system", status = "experimental", init = true, group = "combat"},
    {id = "custom_combo", status = "experimental", init = true, group = "combat"},
    {id = "danger_time", status = "experimental", init = true, group = "combat"},
    {id = "debug_hitboxes", status = "experimental", init = true, group = "debug"},
    {id = "dynamic_difficulty", status = "experimental", init = true, group = "ai"},
    {id = "fatalities", status = "experimental", init = true, group = "combat"},
    {id = "first_attack", status = "experimental", init = true, group = "combat"},
    {id = "frame_data", status = "experimental", init = true, group = "training"},
    {id = "ghost_ai", status = "experimental", init = true, group = "ai"},
    {id = "gravity_scaling", status = "experimental", init = true, group = "combat"},
    {id = "guts", status = "experimental", init = true, group = "combat"},
    {id = "install_mode", status = "experimental", init = true, group = "tools"},
    {id = "juice", status = "experimental", init = true, group = "presentation"},
    {id = "just_frame", status = "experimental", init = true, group = "combat"},
    {id = "life_steal", status = "experimental", init = true, group = "combat"},
    {id = "negative_penalty", status = "experimental", init = true, group = "combat"},
    {id = "netplay_lobby", status = "experimental", init = false, group = "netplay"},
    {id = "parry", status = "experimental", init = true, group = "combat"},
    {id = "reflect", status = "experimental", init = true, group = "combat"},
    {id = "roman_cancel", status = "experimental", init = true, group = "combat"},
    {id = "rpg_classes", status = "experimental", init = true, group = "rpg", depends = {"rpg_core"}},
    {id = "rpg_crafting", status = "experimental", init = true, group = "rpg", depends = {"rpg_core"}},
    {id = "rpg_crit", status = "experimental", init = true, group = "rpg", depends = {"rpg_core"}},
    {id = "rpg_dungeon", status = "experimental", init = true, group = "rpg", depends = {"rpg_core"}},
    {id = "rpg_elements", status = "experimental", init = true, group = "rpg", depends = {"rpg_core"}},
    {id = "rpg_equipment", status = "experimental", init = true, group = "rpg", depends = {"rpg_core"}},
    {id = "rpg_loot", status = "experimental", init = true, group = "rpg", depends = {"rpg_core"}},
    {id = "rpg_raid", status = "experimental", init = true, group = "rpg", depends = {"rpg_core"}},
    {id = "rpg_shop", status = "experimental", init = true, group = "rpg", depends = {"rpg_core"}},
    {id = "rpg_skills", status = "experimental", init = true, group = "rpg", depends = {"rpg_core"}},
    {id = "rpg_summon", status = "experimental", init = true, group = "rpg", depends = {"rpg_core"}},
    {id = "safety_shield", status = "experimental", init = true, group = "combat"},
    {id = "snap_back", status = "experimental", init = true, group = "combat"},
    {id = "status_effects", status = "experimental", init = true, group = "combat"},
    {id = "story_mode", status = "experimental", init = false, group = "modes"},
    {id = "stun_meter", status = "experimental", init = true, group = "combat"},
    {id = "super_armor", status = "experimental", init = true, group = "combat"},
    {id = "tag_swap", status = "experimental", init = true, group = "combat"},
    {id = "tag_system", status = "experimental", init = true, group = "combat"},
    {id = "time_freeze", status = "experimental", init = true, group = "combat"},
    {id = "training_plus", status = "experimental", init = true, group = "training"},
    {id = "turbo_mode", status = "experimental", init = true, group = "modes"},
    {id = "tutorial_dojo", status = "experimental", init = false, group = "training"},
    {id = "wall_bounce", status = "experimental", init = true, group = "combat"},
    {id = "weather", status = "experimental", init = true, group = "presentation"},

    -- Alternate/legacy orchestration entrypoints are retained for compatibility only.
    {id = "engine_loader", status = "archive", init = false, group = "legacy"},
}

registry.specs = specs
registry.by_id = {}
for _, spec in ipairs(specs) do
    assert(registry.allowed_status[spec.status], "Invalid module status for " .. spec.id)
    assert(registry.by_id[spec.id] == nil, "Duplicate module registry id: " .. spec.id)
    registry.by_id[spec.id] = spec
end

function registry.get(id)
    return registry.by_id[id]
end

function registry.list(status)
    local out = {}
    for _, spec in ipairs(registry.specs) do
        if status == nil or spec.status == status then out[#out + 1] = spec end
    end
    return out
end

function registry.active()
    return registry.list("active")
end

function registry.counts()
    local ret = {active = 0, experimental = 0, archive = 0}
    for _, spec in ipairs(registry.specs) do ret[spec.status] = ret[spec.status] + 1 end
    return ret
end

return registry
