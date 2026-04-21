-- MUGEN X - Combo Trainer
local trainer = {}

trainer.trials = {
    { name="Basic 1", seq={"a", "a", "b"} },
    { name="Basic 2", seq={"x", "y", "special_1"} },
    { name="Advanced", seq={"jump", "x", "y", "super_1"} }
}
trainer.current_trial = 1
trainer.progress = 0 -- Index in sequence

function trainer.init()
    hook.add("tick", "trainer_tick", function()
        -- Only in Training Mode
        if gameMode == "training" then
            local t = trainer.trials[trainer.current_trial]
            
            -- Display Trial
            textImgDraw(textImgNew(), 320, 50, "TRIAL: " .. t.name, 0, 0)
            
            -- Display Sequence
            local seq_str = ""
            for idx, cmd in ipairs(t.seq) do
                if idx <= trainer.progress then
                    seq_str = seq_str .. "[G]" .. cmd .. " " -- Green/Done
                else
                    seq_str = seq_str .. cmd .. " "
                end
            end
            textImgDraw(textImgNew(), 320, 70, seq_str, 0, 0)
            
            -- Check Input
            -- We need to check if the *next* command in sequence was executed
            -- AND if it connected (for combos)
            
            local p = player(1)
            local target_cmd = t.seq[trainer.progress + 1]
            
            -- Mock Check: If player state matches command type
            -- Real check involves reading input buffer or move name
            
            if p.MoveContact == 1 then
                -- If we hit something, assume it's the right move for demo
                trainer.progress = trainer.progress + 1
                
                if trainer.progress >= #t.seq then
                    -- TRIAL COMPLETE
                    textImgDraw(textImgNew(), 320, 100, "SUCCESS!", 0, 0)
                    -- Wait and load next
                    if trainer.current_trial < #trainer.trials then
                        trainer.current_trial = trainer.current_trial + 1
                        trainer.progress = 0
                    end
                end
            end
            
            -- Reset if dropped combo (Time > X without hit)
            if p.MoveType == "I" and p.Time > 60 then
                trainer.progress = 0
            end
        end
    end)
end

return trainer

