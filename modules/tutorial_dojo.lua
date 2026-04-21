-- ============================================================================
-- MUGEN X ENGINE - THE DOJO (INTERACTIVE TUTORIAL)
-- ============================================================================

local dojo = {}
dojo.active = false
dojo.step = 1
dojo.timer = 0
dojo.completed = false

dojo.lessons = {
    {text = "WELCOME TO THE DOJO.\nLet's start with movement.\nHold FORWARD to walk.", input = "$F"},
    {text = "Good.\nNow hold BACK to block.", input = "$B"},
    {text = "Excellent.\nTap UP to jump.", input = "$U"},
    {text = "Now, let's attack.\nPress 'A' to Punch.", input = "a"},
    {text = "Nice strike.\nPress 'B' to Kick.", input = "b"},
    {text = "Finally, the Special Move.\nInput DOWN, FORWARD, PUNCH.", input = "D,F,a"} -- Simplified check
}

function dojo.start()
    dojo.active = true
    dojo.step = 1
    dojo.timer = 0
    dojo.completed = false
    -- Play TTS Intro
    os.execute("start /B python tools/tts_backend.py \"Welcome to the Dojo. Let us begin.\"")
end

function dojo.update()
    if not dojo.active or dojo.completed then return end
    
    local lesson = dojo.lessons[dojo.step]
    local p1 = main.t_players[1]
    
    -- Check Input
    local success = false
    if lesson.input == "D,F,a" then
        -- Special move logic (simplified for tutorial)
        if main.f_input(p1, "$D") and main.f_input(p1, "$F") and main.f_input(p1, "a") then success = true end
    else
        if main.f_input(p1, lesson.input) then success = true end
    end
    
    if success then
        dojo.timer = dojo.timer + 1
        if dojo.timer > 30 then -- Hold for 0.5s or confirm
            dojo.next_step()
        end
    end
end

function dojo.next_step()
    dojo.step = dojo.step + 1
    dojo.timer = 0
    sndPlay(sysSnd, 100, 1) -- Success sound
    
    if dojo.step > #dojo.lessons then
        dojo.completed = true
        os.execute("start /B python tools/tts_backend.py \"Training Complete. You are ready.\"")
    else
        -- Read next lesson
        local text = dojo.lessons[dojo.step].text:gsub("\n", " ")
        os.execute("start /B python tools/tts_backend.py \"" .. text .. "\"")
    end
end

function dojo.draw()
    if not dojo.active then return end
    
    local text = ""
    if dojo.completed then
        text = "TRAINING COMPLETE!\nPress Start to Exit."
        textImgSetColor(dojo.txt, 0, 255, 0, 255)
    else
        text = "LESSON " .. dojo.step .. "/" .. #dojo.lessons .. "\n" .. dojo.lessons[dojo.step].text
        textImgSetColor(dojo.txt, 255, 255, 255, 255)
    end
    
    textImgSetText(dojo.txt, text)
    textImgDraw(dojo.txt, 640, 200) -- Center screen
end

dojo.txt = textImgNew()
-- textImgSetFont(dojo.txt, 0)  -- Font loaded by engine automatically
textImgSetBank(dojo.txt, 0)
textImgSetAlign(dojo.txt, 0) -- Center

return dojo

