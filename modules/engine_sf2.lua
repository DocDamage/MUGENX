-- MUGEN X ENGINE - SF2 Module
-- Implements Street Fighter 2 style mechanics

local sf2 = {}

-- SF2 Physics Constants
local GRAVITY = 0.5
local AIR_JUMP_COUNT = 0 -- No double jumps usually
local DEFENCE_MUL = 1.0

-- Hitstop Constants (Frames)
local HITSTOP_LIGHT = 11
local HITSTOP_MEDIUM = 13
local HITSTOP_HEAVY = 15

-- Dizzy System Constants
local DIZZY_THRESHOLD = 1000
local DIZZY_DECAY = 2 -- Points recovered per tick

function sf2.init(char)
    -- Apply SF2 physics overrides
    -- Note: Actual API calls depend on Ikemen's specific Lua bindings for character data
    
    -- 1. Physics
    -- char:setConstant("Movement", "yaccel", GRAVITY)
    -- char:setConstant("Movement", "airjump.num", AIR_JUMP_COUNT)
    
    -- 2. Initialize Dizzy System
    -- We use custom variables to track dizzy status
    if char.setVar then
        char:setVar("dizzy_points", 0)
        char:setVar("dizzy_active", 0)
    end
    
    print("SF2 Engine initialized for " .. (char.name or "Character"))
end

function sf2.update(char)
    -- Called every tick
    
    -- 1. Dizzy Decay
    if char.getVar and char.setVar then
        local currentDizzy = char:getVar("dizzy_points") or 0
        if currentDizzy > 0 then
            char:setVar("dizzy_points", math.max(0, currentDizzy - DIZZY_DECAY))
        end
    end
    
    -- 2. Velocity Clamps (Prevent excessive speed bugs common in old Mugen chars)
    -- local velX = char:getVelocity().x
    -- if math.abs(velX) > 20 then char:setVelocity(20 * (velX/math.abs(velX)), char:getVelocity().y) end
end

function sf2.onHit(char, target, moveType, damage)
    -- 1. Apply CPS Hitstop
    local stopTime = HITSTOP_LIGHT
    if moveType == "medium" then stopTime = HITSTOP_MEDIUM end
    if moveType == "heavy" then stopTime = HITSTOP_HEAVY end
    
    -- char:setHitStop(stopTime)
    -- target:setHitStop(stopTime)
    
    -- 2. Add Dizzy Points
    if target.getVar and target.setVar then
        local dizzyAdd = (damage or 0) * 1.5 -- Simple formula: more damage = more dizzy
        local currentDizzy = target:getVar("dizzy_points") or 0
        target:setVar("dizzy_points", currentDizzy + dizzyAdd)
        
        -- 3. Check Dizzy State
        if target:getVar("dizzy_points") >= DIZZY_THRESHOLD and target:getVar("dizzy_active") == 0 then
            -- Trigger Dizzy State
            -- target:changeState(5300) -- Standard dizzy state
            target:setVar("dizzy_active", 1)
            target:setVar("dizzy_points", 0) -- Reset
            print("SF2 Engine: " .. (target.name or "Target") .. " is DIZZY!")
        end
    end
end

return sf2

