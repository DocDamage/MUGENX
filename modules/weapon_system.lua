-- MUGEN X - Weapon System (Logic)
local weapons = {}
local core = require("rpg_core")
local json = require("json") -- Assuming JSON availability

weapons.db = {}

function weapons.load_db()
    local f = io.open("data/weapons_db.json", "r")
    if f then
        local content = f:read("*all")
        f:close()
        weapons.db = json.decode(content)
        print("WEAPON DB LOADED: " .. #weapons.db .. " items.")
    else
        -- Fallback mock
        weapons.db = {
            {name="Mock Sword", type="Sword", element="Physical", stats={atk=10, speed=0, range=0}}
        }
    end
end

function weapons.get_weapon(name)
    for _, w in ipairs(weapons.db) do
        if w.name == name then return w end
    end
    return nil
end

function weapons.init()
    weapons.load_db()
    
    hook.add("tick", "weapons_tick", function()
        for i = 1, 2 do
            local p = player(i)
            local s = core.state[i]
            
            -- Check Equipped Weapon
            if s.equipment.weapon then
                local w = weapons.get_weapon(s.equipment.weapon)
                if not w then 
                    -- Maybe it's a default item not in DB, skip
                else
                    -- Apply Passive Effects
                    -- Note: Stats are applied in rpg_core usually, but we can do special logic here
                    
                    -- 1. Range Extension (Mock)
                    -- If weapon has range, we assume attacks reach further.
                    -- We can't change hitboxes easily.
                    -- But we can spawn a helper hitbox? Or just visual.
                    
                    -- 2. Element Effect
                    if w.element == "Fire" and p.MoveContact == 1 and p.Time == 1 then
                         -- Burn Effect
                         local enemy = player(i == 1 and 2 or 1)
                         enemy.Life = enemy.Life - 2
                         enemy:PalFX({time=5, add={100,0,0}})
                    elseif w.element == "Ice" and p.MoveContact == 1 and p.Time == 1 then
                         -- Slow Effect
                         local enemy = player(i == 1 and 2 or 1)
                         enemy.Vel.x = enemy.Vel.x * 0.5
                         enemy:PalFX({time=5, add={0,0,100}})
                    end
                    
                    -- 3. Weapon Type Logic
                    if w.type == "Dagger" then
                        -- Backstab Bonus
                        -- (Already in Rogue class, but weapon can have it too)
                    elseif w.type == "Hammer" then
                        -- Stun Bonus
                        if math.random() < 0.1 and p.MoveContact == 1 then
                            local enemy = player(i == 1 and 2 or 1)
                            enemy.Ctrl = 0 -- Mini Stun
                            textImgDraw(textImgNew(), enemy.Pos.x, enemy.Pos.y - 80, "STUN!", 0, 0)
                        end
                    end
                    
                    -- UI: Show Weapon Name
                    textImgDraw(textImgNew(), 20 + ((i-1)*280), 100, "WPN: " .. w.name, 0, 0)
                end
            end
        end
    end)
end

return weapons

