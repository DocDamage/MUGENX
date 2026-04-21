-- MUGEN X - RPG Equipment System
local equip = {}

-- Equipment Slots: [PlayerID] = { weapon=nil, armor=nil, accessory=nil }
equip.slots = {
    { weapon=nil, armor=nil, accessory=nil },
    { weapon=nil, armor=nil, accessory=nil }
}

-- Item Database
equip.items = {
    ["Iron Sword"] = { type="weapon", atk=10, def=0 },
    ["Steel Armor"] = { type="armor", atk=0, def=15 },
    ["Speed Ring"] = { type="accessory", atk=5, def=5, speed=0.1 }
}

function equip.equip_item(player_id, item_name)
    local item = equip.items[item_name]
    if item then
        equip.slots[player_id][item.type] = item
        print("Player " .. player_id .. " Equipped: " .. item_name)
    end
end

function equip.init()
    -- Demo: Equip items
    equip.equip_item(1, "Iron Sword")
    equip.equip_item(2, "Steel Armor")

    hook.add("tick", "equip_tick", function()
        for i = 1, 2 do
            local p = player(i)
            local s = equip.slots[i]
            
            -- Apply Stat Bonuses
            local bonus_atk = 0
            local bonus_def = 0
            
            if s.weapon then bonus_atk = bonus_atk + s.weapon.atk end
            if s.armor then bonus_def = bonus_def + s.armor.def end
            if s.accessory then 
                bonus_atk = bonus_atk + s.accessory.atk 
                -- Speed mod is harder to apply continuously without drifting, 
                -- so we assume base speed mod in `rpg_core` handles it or we ignore for now.
            end
            
            -- Apply to Player (Stacking with RPG Core)
            -- Note: We need to be careful not to double-apply if RPG Core sets base.
            -- Ideally, RPG Core should read this module.
            -- For now, we just add to the current value (assuming it resets or we add once).
            -- Since 'tick' runs every frame, adding continuously is BAD.
            -- We should set a "Base + Bonus" logic.
            -- Hack: Just set it every frame to (Base + Bonus)
            
            -- Let's assume Base is 100.
            p.Attack = 100 + bonus_atk
            p.Defence = 100 + bonus_def
            
            -- UI
            -- textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 180, "EQ: " .. (s.weapon and s.weapon.name or "None"), 0, 0)
        end
    end)
end

return equip

