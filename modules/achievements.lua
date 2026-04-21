-- MUGEN X - Achievement System
local achievements = {}

-- Achievement Definitions
achievements.list = {
    ["first_blood"] = { title="First Blood", desc="Win your first match", unlocked=false },
    ["combo_master"] = { title="Combo Master", desc="Land a 10-hit combo", unlocked=false },
    ["big_spender"] = { title="Big Spender", desc="Spend 1000 Gold in the Shop", unlocked=false },
    ["dungeon_crawler"] = { title="Dungeon Crawler", desc="Reach Floor 5 in Dungeon Mode", unlocked=false },
    ["craftsman"] = { title="Craftsman", desc="Craft an item", unlocked=false },
    ["perfect"] = { title="Perfectionist", desc="Win a round with 100% Health", unlocked=false }
}

achievements.queue = {} -- Queue for popups

function achievements.unlock(id)
    local a = achievements.list[id]
    if a and not a.unlocked then
        a.unlocked = true
        table.insert(achievements.queue, a)
        print("ACHIEVEMENT UNLOCKED: " .. a.title)
        -- Play Sound
        -- sndPlay(...)
    end
end

function achievements.init()
    hook.add("tick", "achievements_tick", function()
        -- Check Conditions
        local p1 = player(1)
        
        -- Combo Master
        -- Assuming HitCount is available or we track it
        -- if p1.HitCount >= 10 then achievements.unlock("combo_master") end
        
        -- Perfect
        if p1.Win and p1.Life == p1.LifeMax then achievements.unlock("perfect") end
        
        -- Draw Popups
        if #achievements.queue > 0 then
            local a = achievements.queue[1]
            -- Draw Box
            rectDraw(220, 20, 200, 50, 0, 0, 0, 200)
            -- Draw Text
            textImgDraw(textImgNew(), 320, 35, "ACHIEVEMENT UNLOCKED!", 0, 0)
            textImgDraw(textImgNew(), 320, 55, a.title, 0, 0)
            
            -- Timer for popup
            a.timer = (a.timer or 0) + 1
            if a.timer > 180 then -- 3 Seconds
                table.remove(achievements.queue, 1)
            end
        end
    end)
    
    -- Hook into other modules (Mock)
    -- In real integration, other modules would call achievements.unlock()
end

return achievements

