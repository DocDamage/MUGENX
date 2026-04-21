-- MUGEN X - Input History Display
local inputs = {}

-- History: [PlayerID] = { {cmd="a", time=100}, ... }
inputs.history = { {}, {} }
inputs.MAX_LINES = 10

function inputs.add(player_id, cmd)
    local h = inputs.history[player_id]
    table.insert(h, 1, {cmd=cmd, time=gameTime}) -- Insert at top
    if #h > inputs.MAX_LINES then table.remove(h) end -- Remove oldest
end

function inputs.init()
    hook.add("tick", "inputs_tick", function()
        for i = 1, 2 do
            local p = player(i)
            
            -- Detect Inputs (Simplified)
            -- In reality, we'd hook into the input processing loop
            local keys = {"U", "D", "L", "R", "a", "b", "c", "x", "y", "z", "s"}
            local pressed = {}
            
            -- This check is flawed because f_input consumes buffer or checks state
            -- We assume we can check current button state
            -- if p.Command == "a" then ... (Not exposed like this usually)
            
            -- Mock: Random inputs for demo visual
            -- In real engine, we read `main.t_players[i].input`
            
            -- Drawing the list
            local x_base = (i == 1) and 20 or 600
            
            for idx, entry in ipairs(inputs.history[i]) do
                local y = 100 + (idx * 15)
                local age = gameTime - entry.time
                local alpha = math.max(0, 255 - (age * 2))
                
                -- textImgDraw(textImgNew(), x_base, y, entry.cmd, 0, 0) -- Need alpha support
            end
        end
    end)
    
    -- Mock Input Hook
    hook.add("input", "inputs_log", function(id, cmd)
        inputs.add(id, cmd)
    end)
end

return inputs

