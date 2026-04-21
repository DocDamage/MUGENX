-- MUGEN X - RPG Crafting System (Integrated)
local rpg_crafting = {}
local core = require("rpg_core")

rpg_crafting.recipes = {
    { result="Steel Sword", materials={ ["Iron Sword"]=1, ["Iron Ore"]=2 } },
    { result="Mega Potion", materials={ ["Potion"]=2, ["Rare Gem"]=1 } },
    { result="Plate Armor", materials={ ["Leather Armor"]=1, ["Iron Ore"]=3 } }
}

function rpg_crafting.can_craft(id, recipe)
    local inv = core.state[id].inventory
    for mat, count in pairs(recipe.materials) do
        if (inv[mat] or 0) < count then return false end
    end
    return true
end

function rpg_crafting.craft(id, idx)
    local recipe = rpg_crafting.recipes[idx]
    if recipe and rpg_crafting.can_craft(id, recipe) then
        -- Consume Materials
        for mat, count in pairs(recipe.materials) do
            core.remove_item(id, mat, count)
        end
        -- Add Result
        core.add_item(id, recipe.result, 1)
        
        -- Visual
        local p = player(id)
        textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 200, "CRAFTED " .. string.upper(recipe.result), 0, 0)
        p:PalFX({time=20, add={255,255,255}})
    else
        print("Not enough materials!")
    end
end

function rpg_crafting.init()
    hook.add("tick", "rpg_crafting_tick", function()
        for i = 1, 2 do
            local p = player(i)
            
            -- Open Craft Menu: Hold Start + Crouch
            if main.f_input(main.t_players, {'s'}) and p.StateNo == 11 then
                textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 200, "CRAFTING BENCH", 0, 0)
                textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 180, "[x] Steel Sword (Iron Sword + 2 Ore)", 0, 0)
                textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 160, "[y] Mega Potion (2 Potion + Gem)", 0, 0)
                textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 140, "[z] Plate Armor (Leather + 3 Ore)", 0, 0)
                
                if main.f_input(main.t_players, {'x'}) then rpg_crafting.craft(i, 1) end
                if main.f_input(main.t_players, {'y'}) then rpg_crafting.craft(i, 2) end
                if main.f_input(main.t_players, {'z'}) then rpg_crafting.craft(i, 3) end
            end
        end
    end)
end

return rpg_crafting

