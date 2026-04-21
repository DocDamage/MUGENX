-- MUGEN X - AI Lab Integration
local ai_lab = {}

-- Hook into the main menu items
-- We map the internal names from system.def to Lua functions

menu.t_itemname['charmaker'] = function(t, item, cursorPosY, moveTxt, section)
    if main.f_input(main.t_players, {'pal', 's'}) then
        sndPlay(motif.files.snd_data, motif[section].cursor_done_snd[1], motif[section].cursor_done_snd[2])
        
        -- Launch the Python Generator in a new terminal window
        -- We use 'start' on Windows to open a new window
        local cmd = 'start "AI Character Maker" cmd /k "python tools/ai_character_gen/generator.py interactive"'
        os.execute(cmd)
        
menu.t_itemname['fusion'] = function(t, item, cursorPosY, moveTxt, section)
    if main.f_input(main.t_players, {'pal', 's'}) then
        sndPlay(motif.files.snd_data, motif[section].cursor_done_snd[1], motif[section].cursor_done_snd[2])
        local cmd = 'start "Fusion Lab" cmd /k "python tools/ai_fusion_lab/fusion.py interactive"'
        os.execute(cmd)
        return false
    end
    return true
end

menu.t_itemname['sim'] = function(t, item, cursorPosY, moveTxt, section)
    if main.f_input(main.t_players, {'pal', 's'}) then
        sndPlay(motif.files.snd_data, motif[section].cursor_done_snd[1], motif[section].cursor_done_snd[2])
        local cmd = 'start "Death Battle Sim" cmd /k "python tools/death_battle_sim/sim.py interactive"'
        os.execute(cmd)
        return false
    end
    return true
end

menu.t_itemname['commentary'] = function(t, item, cursorPosY, moveTxt, section)
    if main.f_input(main.t_players, {'pal', 's'}) then
        sndPlay(motif.files.snd_data, motif[section].cursor_done_snd[1], motif[section].cursor_done_snd[2])
        local cmd = 'start "AI Commentary" cmd /k "python tools/ai_commentary/commentator.py interactive"'
        os.execute(cmd)
        return false
    end
    return true
end

menu.t_itemname['story'] = function(t, item, cursorPosY, moveTxt, section)
    if main.f_input(main.t_players, {'pal', 's'}) then
        sndPlay(motif.files.snd_data, motif[section].cursor_done_snd[1], motif[section].cursor_done_snd[2])
        local cmd = 'start "AI Storyteller (LLM)" cmd /k "python tools/ai_story/storyteller_llm.py interactive"'
        os.execute(cmd)
        return false
    end
    return true
end

menu.t_itemname['skins'] = function(t, item, cursorPosY, moveTxt, section)
    if main.f_input(main.t_players, {'pal', 's'}) then
        sndPlay(motif.files.snd_data, motif[section].cursor_done_snd[1], motif[section].cursor_done_snd[2])
        local cmd = 'start "AI Reskinner" cmd /k "python tools/ai_skins/reskinner.py interactive"'
        os.execute(cmd)
        return false
    end
    return true
end

menu.t_itemname['downloader'] = function(t, item, cursorPosY, moveTxt, section)
    if main.f_input(main.t_players, {'pal', 's'}) then
        sndPlay(motif.files.snd_data, motif[section].cursor_done_snd[1], motif[section].cursor_done_snd[2])
        local cmd = 'start "Asset Downloader" cmd /k "python tools/asset_downloader/downloader.py interactive"'
        os.execute(cmd)
        return false
    end
    return true
end

menu.t_itemname['uploader'] = function(t, item, cursorPosY, moveTxt, section)
    if main.f_input(main.t_players, {'pal', 's'}) then
        sndPlay(motif.files.snd_data, motif[section].cursor_done_snd[1], motif[section].cursor_done_snd[2])
        local cmd = 'start "Asset Uploader" cmd /k "python tools/asset_uploader/uploader.py interactive"'
        os.execute(cmd)
        return false
    end
    return true
end

menu.t_itemname['balance'] = function(t, item, cursorPosY, moveTxt, section)
    if main.f_input(main.t_players, {'pal', 's'}) then
        sndPlay(motif.files.snd_data, motif[section].cursor_done_snd[1], motif[section].cursor_done_snd[2])
        local cmd = 'start "Auto Balancer" cmd /k "python tools/auto_balance/patcher.py interactive"'
        os.execute(cmd)
        return false
    end
    return true
end

menu.t_itemname['tournament'] = function(t, item, cursorPosY, moveTxt, section)
    if main.f_input(main.t_players, {'pal', 's'}) then
        sndPlay(motif.files.snd_data, motif[section].cursor_done_snd[1], motif[section].cursor_done_snd[2])
        local cmd = 'start "Tournament Maker" cmd /k "python tools/tournament/bracket.py interactive"'
        os.execute(cmd)
        return false
    end
    return true
end

menu.t_itemname['trashtalk'] = function(t, item, cursorPosY, moveTxt, section)
    if main.f_input(main.t_players, {'pal', 's'}) then
        sndPlay(motif.files.snd_data, motif[section].cursor_done_snd[1], motif[section].cursor_done_snd[2])
        local cmd = 'start "Trash Talk Gen" cmd /k "python tools/trash_talk/generator.py interactive"'
        os.execute(cmd)
        return false
    end
    return true
end

menu.t_itemname['settings'] = function(t, item, cursorPosY, moveTxt, section)
    if main.f_input(main.t_players, {'pal', 's'}) then
        sndPlay(motif.files.snd_data, motif[section].cursor_done_snd[1], motif[section].cursor_done_snd[2])
        local cmd = 'start "Advanced Settings" cmd /k "python tools/settings/configurator.py interactive"'
        os.execute(cmd)
        return false
    end
    return true
end

menu.t_itemname['commandlist'] = function(t, item, cursorPosY, moveTxt, section)
    if main.f_input(main.t_players, {'pal', 's'}) then
        sndPlay(motif.files.snd_data, motif[section].cursor_done_snd[1], motif[section].cursor_done_snd[2])
        local cmd = 'start "Command List Gen" cmd /k "python tools/command_list/gen.py interactive"'
        os.execute(cmd)
        return false
    end
    return true
end

menu.t_itemname['movemaker'] = function(t, item, cursorPosY, moveTxt, section)
    if main.f_input(main.t_players, {'pal', 's'}) then
        sndPlay(motif.files.snd_data, motif[section].cursor_done_snd[1], motif[section].cursor_done_snd[2])
        local cmd = 'start "Move Creator" cmd /k "python tools/move_maker/maker.py interactive"'
        os.execute(cmd)
        return false
    end
    return true
end

menu.t_itemname['voice'] = function(t, item, cursorPosY, moveTxt, section)
    if main.f_input(main.t_players, {'pal', 's'}) then
        sndPlay(motif.files.snd_data, motif[section].cursor_done_snd[1], motif[section].cursor_done_snd[2])
        local cmd = 'start "AI Voice Actor" cmd /k "python tools/ai_voice/voice_gen.py interactive"'
        os.execute(cmd)
        return false
    end
    return true
end

menu.t_itemname['music'] = function(t, item, cursorPosY, moveTxt, section)
    if main.f_input(main.t_players, {'pal', 's'}) then
        sndPlay(motif.files.snd_data, motif[section].cursor_done_snd[1], motif[section].cursor_done_snd[2])
        local cmd = 'start "AI Music Composer" cmd /k "python tools/ai_music/composer.py interactive"'
        os.execute(cmd)
        return false
    end
    return true
end

menu.t_itemname['coach'] = function(t, item, cursorPosY, moveTxt, section)
    if main.f_input(main.t_players, {'pal', 's'}) then
        sndPlay(motif.files.snd_data, motif[section].cursor_done_snd[1], motif[section].cursor_done_snd[2])
        local cmd = 'start "AI Coach" cmd /k "python tools/ai_coach/coach.py interactive"'
        os.execute(cmd)
        return false
    end
    return true
end

menu.t_itemname['trainer'] = function(t, item, cursorPosY, moveTxt, section)
    if main.f_input(main.t_players, {'pal', 's'}) then
        sndPlay(motif.files.snd_data, motif[section].cursor_done_snd[1], motif[section].cursor_done_snd[2])
        local cmd = 'start "Neural Trainer" cmd /k "python tools/ai_training/trainer.py interactive"'
        os.execute(cmd)
        return false
    end
    return true
end

return ai_lab
