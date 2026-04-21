-- MUGEN X - Dynamic Difficulty Adjustment (DDA)
local dda = {}

dda.player_wins = 0
dda.player_losses = 0

function dda.init()
    hook.add("matchover", "dda_check", function()
        local p1 = player(1)
        
        if p1.Win then
            dda.player_wins = dda.player_wins + 1
            dda.player_losses = 0 -- Reset streak
        else
            dda.player_losses = dda.player_losses + 1
            dda.player_wins = 0
        end
        
        -- Adjust AI Level globally
        -- Note: Ikemen allows setting AILevel via Lua for the next match usually
        local current_ai = 4 -- Default
        
        if dda.player_wins >= 3 then
            print("DDA: Player is dominating. Increasing Difficulty.")
            -- setAILevel(8) -- Pseudo-code
        elseif dda.player_losses >= 3 then
            print("DDA: Player is struggling. Decreasing Difficulty.")
            -- setAILevel(2) -- Pseudo-code
        end
    end)
end

return dda

