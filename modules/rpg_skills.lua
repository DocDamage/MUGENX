-- MUGEN X - RPG Skill Tree (Perks)
local skills = {}

-- Skills Data: [PlayerID] = { "DoubleJump", "LifeRegen" }
skills.unlocked = { {}, {} }

function skills.unlock(player_id, skill_name)
    table.insert(skills.unlocked[player_id], skill_name)
    print("Player " .. player_id .. " Unlocked Skill: " .. skill_name)
end

function skills.has(player_id, skill_name)
    for _, s in ipairs(skills.unlocked[player_id]) do
        if s == skill_name then return true end
    end
    return false
end

function skills.init()
    -- Demo: Unlock some skills by default
    skills.unlock(1, "LifeRegen")
    skills.unlock(2, "Vampirism")

    hook.add("tick", "skills_tick", function()
        for i = 1, 2 do
            local p = player(i)
            
            -- Passive: Life Regen
            if skills.has(i, "LifeRegen") then
                if gameTime % 60 == 0 then -- Every second
                    p.Life = math.min(p.LifeMax, p.Life + 5)
                end
            end
            
            -- Passive: Vampirism
            if skills.has(i, "Vampirism") then
                if p.MoveContact == 1 and p.Time == 1 then
                    p.Life = math.min(p.LifeMax, p.Life + 5)
                end
            end
            
            -- Passive: Rage (Low HP = More Damage)
            if skills.has(i, "Rage") then
                if p.Life < (p.LifeMax * 0.3) then
                    p.Attack = 150
                else
                    p.Attack = 100
                end
            end
        end
    end)
end

return skills

