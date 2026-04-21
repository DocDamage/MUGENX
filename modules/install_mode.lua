-- MUGEN X - Install / Power-Up Mode
local install = {}

install.timers = {0, 0}

function install.init()
    hook.add("tick", "install_tick", function()
        for i = 1, 2 do
            local p = player(i)
            
            -- Trigger: Down + Down + Start (Simplified: 's') + Full Meter (3000)
            if p.Power >= 3000 and install.timers[i] <= 0 then
                if main.f_input(main.t_players, {'s'}) and p.Command == "holddown" then
                    -- ACTIVATE INSTALL
                    install.timers[i] = 600 -- 10 Seconds
                    p.Power = 0
                    
                    print("Player " .. i .. " INSTALL ACTIVATED!")
                end
            end
            
            -- Active Effect
            if install.timers[i] > 0 then
                install.timers[i] = install.timers[i] - 1
                
                -- Buffs
                p.Attack = 150 -- +50% Attack
                p.Defence = 150 -- +50% Defence
                p.MoveSpeed = 1.2 -- Faster
                
                -- Visual: Golden Glow
                if install.timers[i] % 5 == 0 then
                    p:PalFX({time=5, add={100,100,0}, sinadd={50,50,0,5}})
                end
                
                if install.timers[i] <= 0 then
                    -- DEACTIVATE
                    p.Attack = 100
                    p.Defence = 100
                    print("Player " .. i .. " INSTALL ENDED")
                end
            end
        end
    end)
end

return install

