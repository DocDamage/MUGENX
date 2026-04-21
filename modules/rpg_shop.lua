-- MUGEN X - RPG Shop System (Integrated)
local rpg_shop = {}
local core = require("rpg_core") -- Access Master State

rpg_shop.menu_open = {false, false}

function rpg_shop.init()
    hook.add("tick", "rpg_shop_tick", function()
        for i = 1, 2 do
            local p = player(i)
            local s = core.state[i]
            
            -- Toggle Shop: Hold Start + Taunt
            if main.f_input(main.t_players, {'s'}) and p.StateNo == 195 then
                rpg_shop.menu_open[i] = true
            else
                rpg_shop.menu_open[i] = false
            end
            
            if rpg_shop.menu_open[i] then
                textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 180, "ITEM SHOP (Gold: " .. s.gold .. ")", 0, 0)
                textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 160, "[x] Potion ($50)", 0, 0)
                textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 140, "[y] Iron Sword ($200)", 0, 0)
                textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 120, "[z] Leather Armor ($200)", 0, 0)
                
                -- Buy Potion
                if main.f_input(main.t_players, {'x'}) and s.gold >= 50 then
                    s.gold = s.gold - 50
                    core.add_item(i, "Potion", 1)
                end
                
                -- Buy Sword
                if main.f_input(main.t_players, {'y'}) and s.gold >= 200 then
                    s.gold = s.gold - 200
                    core.add_item(i, "Iron Sword", 1)
                    -- Auto Equip if empty
                    if not s.equipment.weapon then s.equipment.weapon = "Iron Sword" end
                end
                
                -- Buy Armor
                if main.f_input(main.t_players, {'z'}) and s.gold >= 200 then
                    s.gold = s.gold - 200
                    core.add_item(i, "Leather Armor", 1)
                    if not s.equipment.armor then s.equipment.armor = "Leather Armor" end
                end
            end
            
            -- Use Potion Hotkey (Hold Down + Start)
            if main.f_input(main.t_players, {'s'}) and p.Command == "holddown" then
                if core.remove_item(i, "Potion", 1) then
                    p.Life = math.min(p.LifeMax, p.Life + 200)
                    p:PalFX({time=10, add={0,255,0}})
                    textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 100, "USED POTION", 0, 0)
                end
            end
        end
    end)
end

return rpg_shop

