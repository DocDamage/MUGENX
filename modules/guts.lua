-- MUGEN X - Guts System (Low HP Defense Scaling)
local guts = {}

function guts.init()
    hook.add("tick", "guts_tick", function()
        for i = 1, 2 do
            local p = player(i)
            
            -- Calculate Guts Scaling
            -- 100% HP = 100% Defense
            -- 30% HP = 120% Defense
            -- 10% HP = 150% Defense
            
            local hp_percent = p.Life / p.LifeMax
            local def_mult = 1.0
            
            if hp_percent < 0.10 then
                def_mult = 1.5
            elseif hp_percent < 0.30 then
                def_mult = 1.2
            elseif hp_percent < 0.50 then
                def_mult = 1.1
            end
            
            -- Apply Defense
            -- Note: p.Defence is usually base stat. We modify it dynamically.
            -- We need to be careful not to stack it infinitely.
            -- Resetting to base (100) first is safer if we knew the base.
            -- Assuming base is 100 for now.
            
            p.Defence = 100 * def_mult
            
            -- Debug Visual
            if def_mult > 1.0 then
                -- textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 40, "GUTS!", 0, 0)
            end
        end
    end)
end

return guts

