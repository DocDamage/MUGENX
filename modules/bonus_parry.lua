-- MUGEN X - Bonus Stage: Parry Ball
local bonus = {}

bonus.active = false
bonus.ball = {x=0, y=0, vx=0, vy=0}
bonus.score = 0

function bonus.init()
    -- Toggle with F9
    hook.add("tick", "bonus_tick", function()
        if main.f_input(main.t_players, {'F9'}) then
            bonus.active = not bonus.active
            if bonus.active then
                bonus.ball = {x=160, y=0, vx=2, vy=0}
                bonus.score = 0
                print("BONUS STAGE START")
            end
        end
        
        if bonus.active then
            local p = player(1)
            local b = bonus.ball
            
            -- Physics
            b.x = b.x + b.vx
            b.y = b.y + b.vy
            
            -- Gravity
            -- b.vy = b.vy + 0.2
            
            -- Bounce off walls
            if b.x < -200 or b.x > 200 then b.vx = -b.vx end
            
            -- Seek Player
            if b.x < p.Pos.x then b.vx = b.vx + 0.1 else b.vx = b.vx - 0.1 end
            if b.y < p.Pos.y - 50 then b.vy = b.vy + 0.1 else b.vy = b.vy - 0.1 end
            
            -- Draw Ball
            textImgDraw(textImgNew(), b.x + 320, b.y + 240, "O", 0, 0)
            textImgDraw(textImgNew(), 320, 50, "SCORE: " .. bonus.score, 0, 0)
            
            -- Collision (Parry)
            local dist = math.abs(p.Pos.x - b.x) + math.abs((p.Pos.y - 50) - b.y)
            if dist < 30 then
                -- Check Parry (Forward)
                if p.Command == "holdfwd" then
                    -- PARRY!
                    b.vx = -b.vx * 1.5 -- Speed up
                    b.vy = -b.vy * 1.5
                    bonus.score = bonus.score + 100
                    p:PalFX({time=5, add={255,255,255}})
                    print("PARRY! Score: " .. bonus.score)
                else
                    -- HIT
                    p.Life = p.Life - 10
                    p.StateNo = 5000
                    bonus.active = false
                    print("GAME OVER. Final Score: " .. bonus.score)
                end
            end
        end
    end)
end

return bonus

