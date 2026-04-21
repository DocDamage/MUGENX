-- ============================================================================
-- MUGEN X ENGINE - STORY MODE ENGINE
-- ============================================================================

local story = {}
story.active = false
story.scene_data = {}
story.current_line = 1

function story.start(scene_id)
    story.active = true
    story.current_line = 1
    -- Load scene data (mockup)
    story.scene_data = {
        {speaker = "Ryu", text = "The tournament begins..."},
        {speaker = "Ken", text = "I won't hold back!"},
        {speaker = "Ryu", text = "Come on then!"}
    }
end

function story.update()
    if not story.active then return end
    
    if main.f_input(main.t_players[1], "a") then
        story.current_line = story.current_line + 1
        if story.current_line > #story.scene_data then
            story.active = false -- End scene
        end
        sndPlay(sysSnd, 100, 0)
    end
end

function story.draw()
    if not story.active then return end
    
    -- Draw Text Box
    -- (Visuals would go here)
    local line = story.scene_data[story.current_line]
    if line then
        textImgSetText(story.txt_speaker, line.speaker)
        textImgSetText(story.txt_dialogue, line.text)
        
        textImgDraw(story.txt_speaker, 100, 500)
        textImgDraw(story.txt_dialogue, 100, 530)
    end
end

-- Init Text
story.txt_speaker = textImgNew()
story.txt_dialogue = textImgNew()

return story

