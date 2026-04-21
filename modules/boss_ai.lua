-- ============================================================================
-- MUGEN X ENGINE - BOSS AI (UNFAIR MODE)
-- ============================================================================

local boss_ai = {}

function boss_ai.update(player)
    -- Only run for CPU controlled players tagged as Boss
    if player.AILevel > 0 and player.const("size.height") > 100 then -- Simple check for now
        -- 1. Input Reading (Auto-Block)
        -- If opponent is attacking, 40% chance to instantly block
        local enemy = player.Enemy
        if enemy.StateNo >= 200 and enemy.StateNo <= 400 then -- Attacking
            if math.random() < 0.4 then
                player.Command("holdback")
            end
        end
        
        -- 2. Aggression
        -- Always move forward
        if math.abs(player.Pos.x - enemy.Pos.x) > 100 then
            player.Command("holdfwd")
        end
        
        -- 3. Meter Cheating
        -- Regenerate power slowly
        if player.Power < 3000 then
            player.PowerSet(player.Power + 5)
        end
    end
end

return boss_ai

