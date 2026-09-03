-- MUGEN X ENGINE - SF2 Runtime Profile
-- Publishes compatibility-safe policy values through Ikemen maps instead of
-- attempting unsupported object-style character mutation.

local runtime = require("runtime")
local sf2 = {}

sf2.PROFILE_ID = 1
sf2.constants = {
    gravity_milli = 500,
    air_jumps = 0,
    hitstop_light = 11,
    hitstop_medium = 13,
    hitstop_heavy = 15,
    dizzy_threshold = 1000,
    dizzy_decay = 2,
}

local function publish(slot)
    runtime.set_map(slot, "_mugenx_profile_sf2", sf2.PROFILE_ID)
    runtime.set_map(slot, "_mugenx_profile_gravity", sf2.constants.gravity_milli)
    runtime.set_map(slot, "_mugenx_profile_air_jumps", sf2.constants.air_jumps)
    runtime.set_map(slot, "_mugenx_profile_dizzy_threshold", sf2.constants.dizzy_threshold)
end

function sf2.init()
    runtime.safe_hook("matchstart", "mugenx_sf2_matchstart", function()
        local max_players = type(config) == "table" and tonumber(config.Players) or 4
        for slot = 1, math.max(1, math.min(8, max_players)) do
            publish(slot)
        end
    end)
end

function sf2.hitstop_for(weight)
    if weight == "heavy" then return sf2.constants.hitstop_heavy end
    if weight == "medium" then return sf2.constants.hitstop_medium end
    return sf2.constants.hitstop_light
end

return sf2
