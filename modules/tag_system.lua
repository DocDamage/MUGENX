-- MUGEN X - Tag Team Synergy & Supers
local tag_sys = {}

tag_sys.synergies = {
    ["Ryu"] = { ["Ken"] = "Shoto Bros" },
    ["Scorpion"] = { ["Sub-Zero"] = "Fire & Ice" }
}

function tag_sys.init()
    hook.add("roundstart", "tag_check", function()
        if teamMode == "simul" or teamMode == "tag" then
            local p1 = player(1)
            local p3 = player(3)
            
            if p1 and p3 and tag_sys.synergies[p1.name] and tag_sys.synergies[p1.name][p3.name] then
                print("SYNERGY ACTIVE: " .. tag_sys.synergies[p1.name][p3.name])
                p1.LifeMax = p1.LifeMax * 1.2
                p3.LifeMax = p3.LifeMax * 1.2
            end
        end
    end)
    
    hook.add("tick", "tag_super_check", function()
        -- Team Super Logic: If P1 does Super and P3 is ready, P3 also does Super
        if teamMode == "simul" then
            local p1 = player(1)
            local p3 = player(3)
            
            if p1 and p3 and p1.StateNo == 3000 and p3.Power >= 1000 then
                -- P1 is in Super State (3000 is placeholder)
                -- Force P3 to Super
                -- commandSet(3, "SuperMove") 
                print("TEAM SUPER ACTIVATED!")
            end
        end
    end)
end

return tag_sys

