-- MUGEN X - Tournament Mode
local tournament = {}

tournament.active = false
tournament.bracket = {} -- { {p1="Ryu", p2="Ken", winner=nil}, ... }
tournament.round = 1

function tournament.generate(size)
    tournament.active = true
    tournament.bracket = {}
    tournament.round = 1
    
    -- Mock Participants
    local pool = {"Ryu", "Ken", "Chun-Li", "Guile", "Zangief", "Dhalsim", "Blanka", "Honda"}
    
    -- Create Pairs
    for i = 1, size/2 do
        local p1 = table.remove(pool, math.random(#pool))
        local p2 = table.remove(pool, math.random(#pool))
        table.insert(tournament.bracket, {p1=p1, p2=p2, winner=nil})
    end
    
    print("TOURNAMENT GENERATED (" .. size .. " Players)")
end

function tournament.init()
    -- Toggle with F11
    hook.add("tick", "tournament_tick", function()
        if main.f_input(main.t_players, {'F11'}) and not tournament.active then
            tournament.generate(8)
        end
        
        if tournament.active then
            -- Draw Bracket UI
            rectDraw(0, 0, 640, 480, 0, 0, 50, 255) -- Blue BG
            textImgDraw(textImgNew(), 320, 30, "TOURNAMENT ROUND " .. tournament.round, 0, 0)
            
            for i, match in ipairs(tournament.bracket) do
                local y = 80 + (i * 40)
                local text = match.p1 .. " vs " .. match.p2
                if match.winner then text = text .. " [WIN: " .. match.winner .. "]" end
                
                textImgDraw(textImgNew(), 320, y, text, 0, 0)
            end
            
            textImgDraw(textImgNew(), 320, 400, "Press [Start] to Sim Match", 0, 0)
            
            -- Sim Match Logic
            if main.f_input(main.t_players, {'s'}) then
                -- Find next unresolved match
                for _, match in ipairs(tournament.bracket) do
                    if not match.winner then
                        -- Sim Result (Random for now)
                        match.winner = (math.random() < 0.5) and match.p1 or match.p2
                        print("Match Result: " .. match.winner .. " wins!")
                        return -- One at a time
                    end
                end
                
                -- If all matches done, advance round
                -- (Logic to create next bracket tier omitted for brevity)
                print("ROUND COMPLETE")
                tournament.active = false -- End for demo
            end
        end
    end)
end

return tournament

