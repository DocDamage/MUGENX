-- MUGEN X - Dynamic Weather System
local weather = {}

weather.type = "clear" -- clear, rain, wind, snow
weather.timer = 0

function weather.init()
    hook.add("roundstart", "weather_set", function()
        -- Random Weather
        local r = math.random()
        if r < 0.25 then weather.type = "rain"
        elseif r < 0.5 then weather.type = "wind"
        elseif r < 0.75 then weather.type = "snow"
        else weather.type = "clear" end
        
        print("WEATHER: " .. weather.type)
    end)
    
    hook.add("tick", "weather_tick", function()
        if weather.type == "clear" then return end
        
        for i = 1, 2 do
            local p = player(i)
            
            if weather.type == "wind" then
                -- Push players right
                if p.StateNo == 0 or p.StateNo == 20 then -- Idle or Walk
                    p.Vel.x = p.Vel.x + 0.5
                end
                -- Visual: Leaves?
            elseif weather.type == "rain" then
                -- Slippery Floor (Reduce Friction)
                -- Hard to edit friction directly, simulate by adding slide velocity
                if p.StateNo == 0 and math.abs(p.Vel.x) > 0 then
                    p.Vel.x = p.Vel.x * 1.05 -- Slide
                end
                -- Visual: Rain drops (Draw lines?)
                -- animDraw(...)
            elseif weather.type == "snow" then
                -- Slow Movement
                p.MoveSpeed = 0.8
            end
        end
        
        -- Draw Weather Name
        textImgDraw(textImgNew(), 640, 50, "WEATHER: " .. string.upper(weather.type), 0, 0)
    end)
end

return weather

