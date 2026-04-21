-- MUGEN X - Negative Penalty System
local penalty = {}

-- Track retreat behavior
penalty.retreat_count = {0, 0}
penalty.warning_level = {0, 0}

function penalty.init()
    hook.add("tick", "penalty_tick", function()
        for i = 1, 2 do
            local p = player(i)
            
            -- Detect Back Dash or Walking Back
            -- State 105 is Back Dash usually, 21 is Walk Back
            if (p.StateNo == 105 and p.Time == 1) or (p.StateNo == 21 and p.Time % 30 == 0) then
                penalty.retreat_count[i] = penalty.retreat_count[i] + 1
            end
            
            -- Decay count if moving forward or attacking
            if p.StateNo == 100 or p.MoveType == "A" then
                penalty.retreat_count[i] = math.max(0, penalty.retreat_count[i] - 0.1)
            end
            
            -- Check Threshold
            if penalty.retreat_count[i] > 5 then
                -- WARNING
                if penalty.warning_level[i] == 0 then
                    textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 80, "NEGATIVE WARNING", 0, 0)
                    penalty.warning_level[i] = 1
                end
            end
            
            if penalty.retreat_count[i] > 8 then
                -- PENALTY APPLIED
                p.Power = 0 -- Drain all meter
                penalty.retreat_count[i] = 0 -- Reset
                penalty.warning_level[i] = 0
                
                -- Visual
                textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 80, "NEGATIVE PENALTY!", 0, 0)
                p:PalFX({time=30, add={50,0,0}, mul={255,100,100}}) -- Red Tint
                print("Player " .. i .. " NEGATIVE PENALTY APPLIED")
            end
        end
    end)
end

return penalty

