-- MUGEN X - Active Tag Swap (Cross Assault)
local tag = {}

tag.cooldown = {0, 0}

function tag.init()
    hook.add("tick", "tag_tick", function()
        if teamMode == "simul" or teamMode == "tag" then
            for i = 1, 2 do
                local p = player(i)
                
                -- Trigger: 'z' + 'c' (Macro) + 1 Bar
                if main.f_input(main.t_players, {'z', 'c'}) and p.Power >= 1000 and tag.cooldown[i] <= 0 then
                    -- SWAP
                    tag.cooldown[i] = 180 -- 3 Seconds
                    p.Power = p.Power - 1000
                    
                    -- Logic:
                    -- In 'tag' mode, Ikemen handles swapping with 'd' + 's' usually.
                    -- We want an *instant* attack swap.
                    
                    -- 1. Call Partner (P3/P4)
                    local partner_id = (i == 1) and 3 or 4
                    local partner = player(partner_id)
                    
                    if partner then
                        -- Teleport Partner to P1
                        -- partner.Pos = p.Pos
                        
                        -- Force Partner Attack
                        -- partner.StateNo = 200
                        
                        -- Switch Control?
                        -- This is the hard part in Lua. 'player(i)' is usually the active one.
                        -- In Simul, both are active.
                        
                        print("Player " .. i .. " CROSS ASSAULT!")
                        textImgDraw(textImgNew(), p.Pos.x, p.Pos.y - 100, "TAG SWAP!", 0, 0)
                    end
                end
                
                if tag.cooldown[i] > 0 then
                    tag.cooldown[i] = tag.cooldown[i] - 1
                end
            end
        end
    end)
end

return tag

