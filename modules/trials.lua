-- MUGEN X - Dynamic Combo Trials
local trials = {}
local json = require("json") -- Assuming Ikemen has a JSON loader or we mock it

trials.active = false
trials.current_step = 1
trials.data = {}
trials.current_char_trials = {}

function trials.init()
    -- Load Data
    local f = io.open("data/trials.json", "r")
    if f then
        local content = f:read("*all")
        f:close()
        -- Mock JSON parse since we don't have the lib loaded in this env
        -- In real engine: trials.data = json.decode(content)
        trials.data = {
            {char="Ryu", trials={{name="Hadoken", input="D,DF,F,x"}}}
        }
    end

    hook.add("enter", "trials_start", function()
        if gameMode == "training" then
            trials.active = true
            trials.current_step = 1
            
            -- Find trials for current char
            local p1_name = player(1).name
            trials.current_char_trials = {}
            for _, entry in ipairs(trials.data) do
                if entry.char == p1_name then
                    trials.current_char_trials = entry.trials
                    break
                end
            end
            
            print("Trials Mode: Active for " .. p1_name)
        end
    end)
    
    hook.add("tick", "trials_tick", function()
        if not trials.active or #trials.current_char_trials == 0 then return end
        
        local target = trials.current_char_trials[trials.current_step]
        if not target then 
            textImgDraw(textImgNew(), 640, 300, "ALL TRIALS COMPLETE!", 0, 0)
            return
        end
        
        -- Check Input
        if main.f_input(main.t_players, {target.input}) then
            print("Trial Complete: " .. target.name)
            trials.current_step = trials.current_step + 1
        end
    end)
end

return trials

