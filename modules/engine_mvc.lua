-- MUGEN X ENGINE - MVC Module
-- Implements Marvel vs. Capcom style mechanics

local mvc = {}

-- MVC Physics Constants
local GRAVITY = 0.45 -- Slightly floatier than SF2
local SUPER_JUMP_VEL_Y = -14.5
local AIR_DASH_COUNT = 1

function mvc.init(char)
    -- 1. Physics
    -- char:setConstant("Movement", "yaccel", GRAVITY)
    
    -- 2. Enable Magic Series (Chain Combos)
    -- We set a flag that the global input handler or CMD file checks
    if char.setVar then
        char:setVar("can_chain_combo", 1)
        
        -- 3. Enable Super Jump
        char:setVar("can_super_jump", 1)
        
        -- 4. Enable Assists
        char:setVar("can_assist", 1)
    end
    
    print("MVC Engine initialized for " .. (char.name or "Character"))
end

function mvc.update(char)
    -- Called every tick
    
    -- 1. Super Jump Logic
    -- Detect Down -> Up input quickly for Super Jump
    -- if char:command("superjump") then
    --     char:changeState(40) -- Custom super jump state
    -- end
    
    -- 2. Progressive Gravity
    -- In MVC, gravity often scales during long air combos to prevent infinite loops
    -- local comboCount = char:getComboCount()
    -- if comboCount > 5 then
    --      char:setGravity(GRAVITY + (comboCount * 0.05))
    -- end
end

function mvc.onHit(char, target, moveType, damage)
    -- 1. Faster Hitstop (MVC is faster paced)
    local stopTime = 8
    -- char:setHitStop(stopTime)
    -- target:setHitStop(stopTime)
    
    -- 2. OTG (Off The Ground) Logic
    -- If target is lying down (State 5110) and move has OTG property
    -- if target:getState() == 5110 and moveType == "otg" then
    --     target:changeState(5120) -- Get up / hit state
    -- end
    
    -- 3. Launcher Detection
    -- if moveType == "launcher" then
    --     target:setVelocity(0, -15)
    --     target:changeState(5000) -- Air hit
    --     print("MVC Engine: Launcher connected!")
    -- end
end

return mvc

