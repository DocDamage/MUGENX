-- MUGEN X - Adaptive Ghost AI (Recorder & Player)
local ghost = {}

ghost.recording = false
ghost.playing = false
ghost.data = {}
ghost.frame = 1

function ghost.init()
    -- Toggle Recording with F5
    hook.add("tick", "ghost_tick", function()
        if main.f_input(main.t_players, {'F5'}) then
            ghost.recording = not ghost.recording
            ghost.frame = 1
            ghost.data = {}
            print("Ghost AI: Recording " .. (ghost.recording and "Started" or "Stopped"))
        end
        
        -- Toggle Playback with F6
        if main.f_input(main.t_players, {'F6'}) then
            ghost.playing = not ghost.playing
            ghost.frame = 1
            print("Ghost AI: Playback " .. (ghost.playing and "Started" or "Stopped"))
        end
        
        if ghost.recording then
            ghost.record_frame()
        elseif ghost.playing then
            ghost.play_frame()
        end
    end)
end

function ghost.record_frame()
    -- Capture P1 inputs
    local inputs = ""
    if player(1).Command == "x" then inputs = "x" end
    -- (Simplified input capture for demo)
    
    ghost.data[ghost.frame] = inputs
    ghost.frame = ghost.frame + 1
end

function ghost.play_frame()
    -- Apply to P2 (The Ghost)
    local input = ghost.data[ghost.frame]
    if input and input ~= "" then
        -- Inject command into P2
        -- commandSet(2, input) -- Pseudo-code for Ikemen API
        print("Ghost Replay: " .. input)
    end
    
    ghost.frame = ghost.frame + 1
    if ghost.frame > #ghost.data then
        ghost.frame = 1 -- Loop
    end
end

return ghost

