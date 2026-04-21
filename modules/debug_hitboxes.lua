-- MUGEN X - Debug Hitbox Viewer
local debug_hb = {}

debug_hb.active = false

function debug_hb.init()
    -- Toggle with F1
    hook.add("tick", "debug_hb_tick", function()
        if main.f_input(main.t_players, {'F1'}) then
            debug_hb.active = not debug_hb.active
            print("DEBUG HITBOXES: " .. (debug_hb.active and "ON" or "OFF"))
        end
        
        if debug_hb.active then
            for i = 1, 2 do
                local p = player(i)
                
                -- Draw Collision Box (Blue)
                -- We approximate size based on constants or generic size
                -- rectDraw(x, y, width, height, r, g, b, alpha)
                -- Ikemen Lua API might differ, using generic draw function assumption
                
                local x = p.Pos.x
                local y = p.Pos.y
                local w = 40
                local h = 80
                
                -- Body Box
                rectDraw(x - (w/2), y - h, w, h, 0, 0, 255, 100)
                
                -- Attack Box (Red) - Only if attacking
                if p.MoveType == "A" then
                    -- Offset based on facing
                    local atk_x = x + (40 * p.Facing)
                    local atk_y = y - 60
                    rectDraw(atk_x - 20, atk_y - 20, 40, 40, 255, 0, 0, 100)
                end
                
                -- Axis (Green)
                rectDraw(x - 2, y - 2, 4, 4, 0, 255, 0, 255)
            end
            
            textImgDraw(textImgNew(), 20, 20, "DEBUG MODE ACTIVE", 0, 0)
        end
    end)
end

return debug_hb

