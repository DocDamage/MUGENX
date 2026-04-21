-- ============================================================================
-- MUGEN X ENGINE - AI COMBO TRAINER
-- ============================================================================

local trainer = {}
trainer.recording = false
trainer.input_buffer = {}
trainer.saved_combos = {}

function trainer.on_hit(player, move_name)
    if not trainer.recording then return end
    
    table.insert(trainer.input_buffer, {
        move = move_name,
        time = game.time
    })
end

function trainer.end_combo(damage)
    if #trainer.input_buffer > 2 then
        print("🤖 AI LEARNED NEW COMBO! Damage: " .. damage)
        table.insert(trainer.saved_combos, {
            inputs = trainer.input_buffer,
            damage = damage
        })
    end
    trainer.input_buffer = {}
end

return trainer

