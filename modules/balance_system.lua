-- ============================================================================
-- MUGEN X ENGINE - UNIVERSAL BALANCE SYSTEM
-- Normalizes damage, health, and prevents infinite combos
-- ============================================================================

local balance = {}

-- CONFIGURATION
balance.target_hp = 1000        -- Standard HP for calculations
balance.max_damage_cap = 350    -- Max damage a single move can do (35%)
balance.min_damage_scale = 0.5  -- Minimum scaling (50%)
balance.combo_decay = 0.85      -- Damage reduction per hit in combo
balance.infinite_limit = 15     -- Max hits before forced burst

-- STATE
balance.combo_count = 0
balance.current_scaling = 1.0

function balance.init()
    print("⚖️  BALANCE SYSTEM ACTIVE: Normalizing 700+ Characters")
end

-- Called every time a player takes damage
function balance.on_damage(attacker, defender, damage)
    -- 1. Normalize based on Defender's Max HP
    -- If defender has 2000 HP, damage needs to be doubled to feel "standard"
    -- If defender has 500 HP, damage needs to be halved
    local hp_ratio = defender.LifeMax / balance.target_hp
    local normalized_dmg = damage * hp_ratio

    -- 2. Apply Combo Scaling (Proration)
    if defender.GetHitVar("isbound") > 0 then
        balance.combo_count = balance.combo_count + 1
        balance.current_scaling = balance.current_scaling * balance.combo_decay
    else
        -- Reset if not in combo
        balance.combo_count = 0
        balance.current_scaling = 1.0
    end

    -- 3. Apply Scaling
    local final_dmg = normalized_dmg * balance.current_scaling

    -- 4. Cap Damage (No one-hit kills)
    if final_dmg > balance.max_damage_cap then
        final_dmg = balance.max_damage_cap
    end

    -- 5. Infinite Prevention System (IPS)
    if balance.combo_count > balance.infinite_limit then
        -- Force Burst / Knockback
        balance.trigger_burst(defender)
        final_dmg = 0
    end

    return final_dmg
end

function balance.trigger_burst(player)
    -- Visual effect
    explod(player, "burst_spark")
    -- Force invincibility and pushback
    player.Ctrl = 1
    player.VelSet(-10, -5)
    print("⚠️  INFINITE BREAKER TRIGGERED!")
end

return balance

