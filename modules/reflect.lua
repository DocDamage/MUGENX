-- MUGEN X - Projectile Reflection
local reflect = {}

function reflect.init()
    hook.add("tick", "reflect_tick", function()
        for i = 1, 2 do
            local p = player(i)
            
            -- Trigger: Just Guard (State 150, Time < 5) vs Projectile
            -- Detecting "Projectile" specifically is hard without Helper type check.
            -- We assume if enemy is far away and we block, it's a projectile.
            
            local enemy = player(i == 1 and 2 or 1)
            local dist = math.abs(p.Pos.x - enemy.Pos.x)
            
            if p.StateNo == 150 and p.Time <= 5 and dist > 200 then
                -- Check if actually hit by something (MoveContact?)
                -- Or just simulate the mechanic:
                -- If we block at the perfect time against a far opponent, we "Reflect"
                
                -- In a real engine, we'd find the Projectile Helper and reverse its velocity.
                -- Here, we'll spawn a "Reflect" visual and give a bonus.
                
                -- Mock: If enemy is attacking (MoveType A)
                if enemy.MoveType == "A" then
                     -- REFLECT!
                     -- Visual
                     textImgDraw(textImgNew(), p.Pos.x + (50 * p.Facing), p.Pos.y - 60, "REFLECT!", 0, 0)
                     p:PalFX({time=10, add={255,255,255}})
                     
                     -- Send a fireball back? (Spawn Helper)
                     -- helper(p.ID, ...)
                     
                     print("Player " .. i .. " REFLECTED!")
                end
            end
        end
    end)
end

return reflect

