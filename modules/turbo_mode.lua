-- MUGEN X - Turbo Mode
local turbo = {}

turbo.active = false
turbo.speed_mult = 1.5

function turbo.init()
    -- Toggle with F4
    hook.add("tick", "turbo_tick", function()
        if main.f_input(main.t_players, {'F4'}) then
            turbo.active = not turbo.active
            print("TURBO MODE: " .. (turbo.active and "ON" or "OFF"))
        end
        
        if turbo.active then
            -- Apply Speed Buff to everyone
            for i = 1, 2 do
                local p = player(i)
                -- This is a hacky way to do it, modifying Anim speed or Velocity
                -- Better engine support would be 'setGameSpeed(1.5)'
                
                -- Simulate by adding velocity? No, that breaks physics.
                -- We'll just print for now as a placeholder for the Engine setting.
            end
            
            textImgDraw(textImgNew(), 640, 80, "TURBO", 0, 0)
        end
    end)
end

return turbo

