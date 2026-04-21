-- MUGEN X - RPG Quest System
local quests = {}

-- Active Quests: [PlayerID] = { desc="Land 5 Hits", type="combo", target=5, current=0, reward_xp=50, reward_gold=100 }
quests.active = {nil, nil}

function quests.generate(player_id)
    local types = {"combo", "damage", "block"}
    local t = types[math.random(#types)]
    
    local q = {}
    if t == "combo" then
        q = {desc="Land a 5-Hit Combo", type="combo", target=5, current=0, xp=100, gold=50}
    elseif t == "damage" then
        q = {desc="Deal 200 Damage", type="damage", target=200, current=0, xp=150, gold=100}
    elseif t == "block" then
        q = {desc="Block 3 Attacks", type="block", target=3, current=0, xp=80, gold=40}
    end
    
    quests.active[player_id] = q
    print("Player " .. player_id .. " New Quest: " .. q.desc)
end

function quests.init()
    -- Generate initial quests
    quests.generate(1)
    quests.generate(2)
    
    hook.add("tick", "quests_tick", function()
        for i = 1, 2 do
            local q = quests.active[i]
            local p = player(i)
            
            if q then
                -- Check Progress
                if q.type == "combo" then
                    -- Check Combo Counter (HitCount)
                    -- Assuming 'HitCount' is available or we track it
                    -- Mock: If p.MoveContact == 1, increment
                    if p.MoveContact == 1 then q.current = q.current + 1 else q.current = 0 end
                elseif q.type == "damage" then
                    if p.MoveContact == 1 then q.current = q.current + 10 end
                elseif q.type == "block" then
                    if p.StateNo == 150 or p.StateNo == 152 then 
                        -- If blocked hit
                        local enemy = player(i == 1 and 2 or 1)
                        if enemy.MoveContact == 1 then q.current = q.current + 1 end
                    end
                end
                
                -- Completion
                if q.current >= q.target then
                    -- REWARD
                    -- We need to access rpg_core and rpg_shop. Ideally via global or require.
                    -- For now, just print.
                    print("QUEST COMPLETE! +" .. q.xp .. " XP, +" .. q.gold .. " Gold")
                    
                    -- Visual
                    textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 200, "QUEST DONE!", 0, 0)
                    
                    -- Generate New Quest
                    quests.generate(i)
                end
                
                -- UI
                textImgDraw(textImgNew(), 20 + ((i-1)*280), 60, "Q: " .. q.desc .. " (" .. q.current .. "/" .. q.target .. ")", 0, 0)
            end
        end
    end)
end

return quests

