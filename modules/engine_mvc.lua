-- MUGEN X ENGINE - MVC Runtime Profile
-- Publishes policy/feature flags for MUGEN X-aware characters without mutating
-- arbitrary legacy character internals.

local runtime = require("runtime")
local mvc = {}

mvc.PROFILE_ID = 2
mvc.constants = {
    gravity_milli = 450,
    super_jump_vel_y_milli = -14500,
    air_dash_count = 1,
    magic_series = 1,
    otg = 1,
    assists = 1,
}

local function publish(slot)
    runtime.set_map(slot, "_mugenx_profile_mvc", mvc.PROFILE_ID)
    runtime.set_map(slot, "_mugenx_profile_gravity", mvc.constants.gravity_milli)
    runtime.set_map(slot, "_mugenx_profile_air_dashes", mvc.constants.air_dash_count)
    runtime.set_map(slot, "_mugenx_profile_magic_series", mvc.constants.magic_series)
    runtime.set_map(slot, "_mugenx_profile_otg", mvc.constants.otg)
    runtime.set_map(slot, "_mugenx_profile_assists", mvc.constants.assists)
end

function mvc.init()
    runtime.safe_hook("matchstart", "mugenx_mvc_matchstart", function()
        local max_players = type(config) == "table" and tonumber(config.Players) or 4
        for slot = 1, math.max(1, math.min(8, max_players)) do
            publish(slot)
        end
    end)
end

return mvc
