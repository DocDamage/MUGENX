-- MUGEN X - RPG Class System
local rpg_classes = {}
local core = require("rpg_core")

-- Class Definitions
rpg_classes.defs = {
    ["Warrior"] = { desc="High HP/Atk", passive="Rage" },
    ["Mage"] = { desc="High MP/Int", passive="ManaRegen" },
    ["Rogue"] = { desc="High Speed/Crit", passive="Backstab" },
    ["Paladin"] = { desc="High Def/Heal", passive="HolyShield" }
}

function rpg_classes.init()
    hook.add("tick", "rpg_classes_tick", function()
        for i = 1, 2 do
            local p = player(i)
            local s = core.state[i]
            local cls = rpg_classes.defs[s.class]
            
            if cls then
                -- Apply Passives
                if cls.passive == "Rage" then
                    -- More damage at low HP
                    if p.Life < (p.LifeMax * 0.3) then p.Attack = p.Attack + 20 end
                elseif cls.passive == "ManaRegen" then
                    -- Regen MP
                    if gameTime % 60 == 0 then p.Power = p.Power + 50 end
                elseif cls.passive == "Backstab" then
                    -- Crit from behind
                    local enemy = player(i == 1 and 2 or 1)
                    if p.MoveContact == 1 and (p.Facing == enemy.Facing) then
                        -- Behind logic is tricky with Facing, simplified:
                        -- If both facing same way, one is behind.
                        -- Bonus Damage
                        enemy.Life = enemy.Life - 5
                        textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 100, "BACKSTAB!", 0, 0)
                    end
                elseif cls.passive == "HolyShield" then
                    -- Chance to block damage
                    if p.MoveType == "H" and math.random() < 0.1 then
                        p.Life = p.Life + 10 -- Heal back
                        textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 100, "BLOCK!", 0, 0)
                    end
                end
            end
            
            -- Class Change Menu (Hold Start + Up)
            if main.f_input(main.t_players, {'s'}) and p.Command == "holdup" then
                textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 200, "CLASS CHANGE", 0, 0)
                textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 180, "[x] Warrior  [y] Mage", 0, 0)
                textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 160, "[z] Rogue    [a] Paladin", 0, 0)
                
                if main.f_input(main.t_players, {'x'}) then s.class = "Warrior"; print("Class Changed: Warrior") end
                if main.f_input(main.t_players, {'y'}) then s.class = "Mage"; print("Class Changed: Mage") end
                if main.f_input(main.t_players, {'z'}) then s.class = "Rogue"; print("Class Changed: Rogue") end
                if main.f_input(main.t_players, {'a'}) then s.class = "Paladin"; print("Class Changed: Paladin") end
            end
        end
    end)
end

return rpg_classes

