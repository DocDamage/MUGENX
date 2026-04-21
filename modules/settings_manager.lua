-- ============================================================================
-- MUGEN X ENGINE - SETTINGS MANAGER
-- Handles persistent configuration for Gameplay, Graphics, and Audio.
-- ============================================================================

local config = {}

-- DEFAULT SETTINGS
config.data = {
    gameplay = {
        difficulty = 4,         -- 1-8
        speed = 1.0,           -- 0.5 - 1.5
        damage_scale = 1.0,    -- 0.5 - 2.0
        infinite_breaker = true,
        air_blocking = true
    },
    graphics = {
        shader = "None",       -- None, CRT, HQ, Anime
        bloom = true,
        camera_shake = true,
        particles = "High"     -- Low, Med, High
    },
    audio = {
        master_vol = 100,
        bgm_vol = 80,
        sfx_vol = 100
    },
    access = {
        one_button = false,
        high_contrast = false,
        screen_reader = false
    }
}

function config.load()
    local f = io.open("mugenx_config.json", "r")
    if f then
        local content = f:read("*all")
        f:close()
        -- Simple parser (Lua doesn't have native JSON)
        -- For robustness, we'll just regex match keys we know
        for section, vars in pairs(config.data) do
            for k, v in pairs(vars) do
                local pattern = '"' .. k .. '":%s*([%w%.]+)'
                local match = string.match(content, pattern)
                if match then
                    if match == "true" then config.data[section][k] = true
                    elseif match == "false" then config.data[section][k] = false
                    elseif tonumber(match) then config.data[section][k] = tonumber(match)
                    else config.data[section][k] = string.gsub(match, '"', '') end
                end
            end
        end
        print("⚙️  SETTINGS LOADED")
    end
end

function config.save()
    local json = "{\n"
    for section, vars in pairs(config.data) do
        json = json .. '  "' .. section .. '": {\n'
        for k, v in pairs(vars) do
            local val = tostring(v)
            if type(v) == "string" then val = '"' .. v .. '"' end
            json = json .. '    "' .. k .. '": ' .. val .. ',\n'
        end
        json = json .. '    "_end": 0\n  },\n'
    end
    json = json .. '  "_end": 0\n}'
    
    local f = io.open("mugenx_config.json", "w")
    if f then
        f:write(json)
        f:close()
        print("💾 SETTINGS SAVED")
    end
    
    -- Apply settings immediately
    config.apply()
end

function config.apply()
    -- Apply Gameplay
    -- (Hook into balance system)
    local balance = require("balance_system")
    if balance then
        balance.damage_mult = config.data.gameplay.damage_scale
        balance.infinite_enabled = config.data.gameplay.infinite_breaker
    end
    
    -- Apply Graphics
    -- (Hook into shader system)
    local shaders = require("visual_shaders")
    if shaders then
        shaders.active_profile = config.data.graphics.shader
        shaders.apply(config.data.graphics.shader)
    end
    
    -- Apply Audio
    -- setVolume(config.data.audio.master_vol) -- Hypothetical API
end

config.load() -- Load on init
return config

