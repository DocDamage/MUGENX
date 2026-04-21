-- MUGEN X ENGINE - Engine Loader
-- Handles loading the correct engine module based on character type.

local loader = {}

function loader.init(char)
    -- Check for engineType variable on the character
    -- Note: 'char' object API depends on IKEMEN GO's Lua implementation
    
    local engineType = char.engineType or "SF2" -- Default to SF2 if not specified
    
    if engineType == "SF2" then
        local engine = require("engine_sf2")
        engine.init(char)
    elseif engineType == "MVC" then
        local engine = require("engine_mvc")
        engine.init(char)
    elseif engineType == "AI" then
        local engine = require("engine_ai")
        engine.init(char)
    else
        print("Warning: Unknown engine type '" .. tostring(engineType) .. "' for character.")
    end
end

return loader

