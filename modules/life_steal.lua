-- MUGEN X - Life Steal (Vampirism)
local lifesteal = {}

function lifesteal.init()
    hook.add("tick", "lifesteal_tick", function()
        for i = 1, 2 do
            local p = player(i)
            
            -- Logic: On Hit (MoveContact=1, Time=1)
            if p.MoveContact == 1 and p.Time == 1 then
                -- Calculate Heal Amount (e.g. 10% of damage dealt?)
                -- We don't know exact damage dealt in Lua easily without hooks.
                -- Fixed amount: 10 HP
                local heal = 10
                
                -- Apply Heal
                p.Life = math.min(p.LifeMax, p.Life + heal)
                
                -- Visual: Red + Green Spark
                p:PalFX({time=5, add={50,0,0}, sinadd={0,50,0,5}})
                
                -- Debug
                -- print("Player " .. i .. " stole life!")
            end
        end
    end)
end

return lifesteal

