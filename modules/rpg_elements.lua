-- MUGEN X - RPG Elemental Affinity
local elements = {}

-- Elements: Fire, Water, Earth, Wind
-- Fire > Wind > Earth > Water > Fire
elements.types = { "Fire", "Water", "Earth", "Wind" }
elements.player_element = { "Fire", "Water" } -- Default assignments

function elements.get_multiplier(atk_elem, def_elem)
    if atk_elem == "Fire" and def_elem == "Wind" then return 1.5 end
    if atk_elem == "Wind" and def_elem == "Earth" then return 1.5 end
    if atk_elem == "Earth" and def_elem == "Water" then return 1.5 end
    if atk_elem == "Water" and def_elem == "Fire" then return 1.5 end
    
    if atk_elem == "Fire" and def_elem == "Water" then return 0.5 end
    if atk_elem == "Water" and def_elem == "Earth" then return 0.5 end
    if atk_elem == "Earth" and def_elem == "Wind" then return 0.5 end
    if atk_elem == "Wind" and def_elem == "Fire" then return 0.5 end
    
    return 1.0
end

function elements.init()
    hook.add("tick", "elements_tick", function()
        for i = 1, 2 do
            local p = player(i)
            local enemy = player(i == 1 and 2 or 1)
            
            -- Check Hit
            if p.MoveContact == 1 and p.Time == 1 then
                local mult = elements.get_multiplier(elements.player_element[i], elements.player_element[i == 1 and 2 or 1])
                
                if mult > 1.0 then
                    textImgDraw(textImgNew(), enemy.Pos.x, enemy.Pos.y - 120, "WEAKNESS!", 0, 0)
                    -- Apply Bonus Damage
                    enemy.Life = enemy.Life - 10
                    p:PalFX({time=5, add={255,100,0}}) -- Orange Flash
                elseif mult < 1.0 then
                    textImgDraw(textImgNew(), enemy.Pos.x, enemy.Pos.y - 120, "RESIST", 0, 0)
                    -- Heal back some damage (Resist)
                    enemy.Life = math.min(enemy.LifeMax, enemy.Life + 5)
                    p:PalFX({time=5, add={100,100,100}}) -- Grey Flash
                end
            end
            
            -- UI
            textImgDraw(textImgNew(), 20 + ((i-1)*280), 80, "ELM: " .. elements.player_element[i], 0, 0)
        end
    end)
end

return elements

