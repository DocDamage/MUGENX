-- MUGEN X - RPG Persistence (Save/Load)
local save = {}
local json = require("json") -- Assuming JSON lib availability

save.file_path = "save/rpg_data.json"

function save.save_data()
    -- Gather Data from all modules
    -- rpg_core.data, rpg_equipment.slots, rpg_skills.unlocked, etc.
    
    -- Mock Data Gathering
    local data = {
        p1 = {
            level = 5, -- rpg_core.data[1].level
            xp = 250,
            gold = 1000, -- rpg_shop.gold[1]
            items = {"Iron Sword", "Potion"},
            skills = {"LifeRegen"}
        }
    }
    
    local f = io.open(save.file_path, "w")
    if f then
        f:write(json.encode(data))
        f:close()
        print("RPG DATA SAVED")
    end
end

function save.load_data()
    local f = io.open(save.file_path, "r")
    if f then
        local content = f:read("*all")
        f:close()
        local data = json.decode(content)
        
        if data then
            -- Apply Data
            -- rpg_core.data[1].level = data.p1.level
            -- ...
            print("RPG DATA LOADED")
        end
    end
end

function save.init()
    -- Auto-Load on Init
    save.load_data()
    
    -- Auto-Save on Match Over
    hook.add("matchover", "rpg_autosave", function()
        save.save_data()
    end)
end

return save

