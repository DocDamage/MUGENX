-- ============================================================================
-- MUGEN X ENGINE - MAIN ENTRY POINT
-- This script connects Ikemen GO to the MUGEN X Lua Modules
-- ============================================================================

-- 1. Add our modules folder to the package path so we can require them
package.path = package.path .. ";./modules/?.lua"

-- 2. Load the Master Initializer
require("init_all")

-- 3. Get references to our key systems
local dev_menu = require("dev_menu")
local balance = require("balance_system")
local polish = require("polish_system")
local abyss = require("abyss_mode")

-- ============================================================================
-- EVENT HOOKS (The "Glue")
-- ============================================================================

-- Runs every frame (60 times per second)
function hook.run()
    -- 1. Update Dev Menu (F8)
    dev_menu.update()
    
    -- 2. Update Polish Systems (Particles, Camera)
    polish.update()
    
    -- 3. Update Abyss Mode (if active)
    if abyss.active then
        abyss.update()
    end
end

-- Runs every frame during rendering (for UI overlays)
function hook.draw()
    -- 1. Draw Dev Menu Overlay
    dev_menu.draw()
    
    -- 2. Draw Abyss UI (if active)
    if abyss.active then
        abyss.draw_ui()
    end
end

-- Runs whenever a player takes damage
function hook.on_damage(attacker, defender, damage)
    -- 1. Apply Universal Balance (Scaling/Normalization)
    local new_damage = balance.on_damage(attacker, defender, damage)
    
    -- 2. Trigger Polish Effects (Hitstop, Shake)
    polish.on_hit(defender, new_damage)
    
    return new_damage
end

-- Runs when a match starts
function hook.on_round_start()
    polish.on_round_start()
end

print("🔌 MUGEN X ENGINE: HOOKS ESTABLISHED")
