-- MUGEN X - RPG Dungeon Mode (Survival)
local dungeon = {}
local core = require("rpg_core")

dungeon.active = false
dungeon.floor = 1
dungeon.max_floors = 10

function dungeon.init()
    -- Hook into match end to progress floor
    hook.add("matchover", "dungeon_progress", function()
        if dungeon.active then
            local p1 = player(1)
            if p1.Win then
                dungeon.floor = dungeon.floor + 1
                core.gain_xp(1, 500 * dungeon.floor)
                core.state[1].gold = core.state[1].gold + (100 * dungeon.floor)
                
                if dungeon.floor > dungeon.max_floors then
                    print("DUNGEON CLEARED!")
                    dungeon.active = false
                    -- Big Reward
                    core.add_item(1, "Rare Gem", 5)
                else
                    print("ADVANCING TO FLOOR " .. dungeon.floor)
                    -- In a real engine, we would load the next match here.
                    -- Ikemen Lua API: startMatch(data)
                    -- For now, we just simulate the state.
                end
            else
                print("GAME OVER - DIED ON FLOOR " .. dungeon.floor)
                dungeon.active = false
                dungeon.floor = 1
            end
        end
    end)
    
    hook.add("tick", "dungeon_tick", function()
        -- Toggle Dungeon Mode with F8
        if main.f_input(main.t_players, {'F8'}) then
            dungeon.active = not dungeon.active
            dungeon.floor = 1
            print("DUNGEON MODE: " .. (dungeon.active and "ON" or "OFF"))
        end
        
        if dungeon.active then
            textImgDraw(textImgNew(), 320, 20, "DUNGEON FLOOR " .. dungeon.floor, 0, 0)
            
            -- Apply scaling to Enemy (P2) based on floor
            local enemy = player(2)
            local scale = 1.0 + (dungeon.floor * 0.2) -- +20% stats per floor
            
            -- Note: Setting this every tick overrides other modules, but fine for demo
            enemy.Attack = 100 * scale
            enemy.Defence = 100 * scale
            enemy.LifeMax = 1000 * scale
            
            -- If it's floor 10, it's a Boss
            if dungeon.floor == 10 then
                textImgDraw(textImgNew(), 320, 40, "BOSS BATTLE", 0, 0)
                enemy.Attack = enemy.Attack * 1.5
            end
        end
    end)
end

return dungeon

