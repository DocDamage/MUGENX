-- ============================================================================
-- MUGEN X ENGINE - ADVANCED DASHBOARD (v7.1 - ORGANIZED)
-- ============================================================================

local dev = {}
local config = require("settings_manager")

dev.active = false
dev.tab = 1 
dev.selected = 1
dev.log_lines = {}
dev.ai_result = "" 
dev.stats = {chars = 0, stages = 0, last_update = "Never"}
dev.last_read_time = 0

local UI = {
    x = 40, y = 40, w = 400, h = 300,
    c_bg = {10, 10, 15, 230},
    c_header = {60, 60, 90, 255},
    c_text = {240, 240, 240, 255},
    c_highlight = {255, 200, 0, 255},
    c_dim = {100, 100, 100, 255},
    c_value = {0, 255, 255, 255},
    c_tooltip_bg = {0, 0, 0, 200}
}

dev.tabs = {"DASH", "AI-TXT", "AI-IMG", "SETTINGS", "LAB", "ACTIONS", "LOGS"}

-- TEXT ACTIONS
dev.ai_text_actions = {
    {name = "💬 GEN TRASH TALK", type = "ai", mode = "trash_talk", desc = "Generate savage win quote"},
    {name = "📖 GEN STORY INTRO", type = "ai", mode = "story", desc = "Generate dramatic intro"},
    {name = "📜 GEN CHARACTER BIO", type = "ai", mode = "bio", desc = "Create backstory for P1"},
    {name = "🎙️ GEN COMMENTARY", type = "ai", mode = "commentary", desc = "Generate hype announcer line"},
    {name = "🎯 GEN DAILY MISSION", type = "ai", mode = "mission", desc = "Create a new challenge"}
}

-- IMAGE ACTIONS
dev.ai_img_actions = {
    {name = "👤 GEN SPRITE (P1)", type = "img", mode = "sprite", desc = "Generate pixel art sprite for P1"},
    {name = "🗡️ GEN WEAPON (SWORD)", type = "img", mode = "weapon", desc = "Generate a pixel art sword"},
    {name = "🏟️ GEN STAGE (DOJO)", type = "img", mode = "stage", desc = "Generate a dojo background"},
    {name = "🏙️ GEN STAGE (CITY)", type = "img", mode = "stage", desc = "Generate a city background"}
}

dev.settings_menu = {{section = "GAMEPLAY", items = {{id = "difficulty", name = "AI Difficulty", type = "slider", min = 1, max = 8, path = {"gameplay", "difficulty"}, desc = "How smart the CPU is"}}}}
dev.lab_actions = {{name = "🧬 FUSE P1 + P2", type = "fuse", desc = "Create Hybrid Character"}}
dev.maint_actions = {{name = "✨ ONE-CLICK MAINTENANCE", cmd = "maintenance", desc = "Fix Everything"}}

dev.flat_settings = {}
for _, sect in ipairs(dev.settings_menu) do
    table.insert(dev.flat_settings, {type = "header", name = sect.section})
    for _, item in ipairs(sect.items) do table.insert(dev.flat_settings, item) end
end

function dev.init()
    -- UPDATED PATH: tools/dev_bridge.py
    os.execute("start /B python tools/dev_bridge.py init")
    print("🛠️  MUGEN X DASHBOARD v7.1 LOADED")
end

function dev.read_ai_output()
    local f = io.open("ai_output.txt", "r")
    if f then
        dev.ai_result = f:read("*all")
        f:close()
    end
end

function dev.run_ai_text(action)
    local p1_name = "Ryu" 
    textImgSetText(dev.txt_status, "AI WRITING...")
    local cmd = ""
    -- UPDATED PATH: tools/llm_backend.py
    if action.mode == "bio" then cmd = "python tools/llm_backend.py bio \"" .. p1_name .. "\" \"strong warrior\""
    elseif action.mode == "commentary" then cmd = "python tools/llm_backend.py commentary \"a massive combo\""
    else cmd = "python tools/llm_backend.py " .. action.mode .. " \"" .. p1_name .. "\" \"Ken\"" end
    os.execute("start /B " .. cmd)
end

function dev.run_ai_img(action)
    local p1_name = "Ryu"
    textImgSetText(dev.txt_status, "AI PAINTING (Takes time)...")
    local cmd = ""
    -- UPDATED PATH: tools/image_gen_backend.py
    if action.mode == "sprite" then cmd = "python tools/image_gen_backend.py sprite \"" .. p1_name .. "\" \"karate fighter stance\""
    elseif action.mode == "weapon" then cmd = "python tools/image_gen_backend.py weapon \"sword\" \"fantasy sword\""
    elseif action.mode == "stage" then 
        local prompt = "dojo"
        if action.desc:find("city") then prompt = "cyberpunk city" end
        cmd = "python tools/image_gen_backend.py stage \"new_stage\" \"" .. prompt .. "\"" 
    end
    os.execute("start /B " .. cmd)
end

function dev.run_cmd(cmd)
    textImgSetText(dev.txt_status, "RUNNING: " .. cmd .. "...")
    -- UPDATED PATH: tools/dev_bridge.py
    os.execute("start /B python tools/dev_bridge.py " .. cmd)
end

-- Input Handler
function dev.check_input()
    local p1 = 1
    local confirm = main.f_input(main.t_players[p1], "a") or main.f_input(main.t_players[p1], "start")
    if main.f_input(main.t_players[p1], "F8") then return "toggle" end
    if confirm then return "select" end
    if main.f_input(main.t_players[p1], "$D") then return "down" end
    if main.f_input(main.t_players[p1], "$U") then return "up" end
    if main.f_input(main.t_players[p1], "$F") then return "right" end
    if main.f_input(main.t_players[p1], "$B") then return "left" end
    return nil
end

function dev.update()
    local input = dev.check_input()
    if input == "toggle" then 
        dev.active = not dev.active
        sndPlay(sysSnd, 100, 0)
        return
    end
    if not dev.active then return end

    if dev.tab == 2 and os.time() % 2 == 0 then dev.read_ai_output() end

    if input == "right" then
        dev.tab = dev.tab + 1
        if dev.tab > 7 then dev.tab = 1 end
        dev.selected = 1
        sndPlay(sysSnd, 100, 0)
    elseif input == "left" then
        dev.tab = dev.tab - 1
        if dev.tab < 1 then dev.tab = 7 end
        dev.selected = 1
        sndPlay(sysSnd, 100, 0)
    elseif input == "down" then
        dev.selected = dev.selected + 1
        local max = 1
        if dev.tab == 2 then max = #dev.ai_text_actions end
        if dev.tab == 3 then max = #dev.ai_img_actions end
        if dev.tab == 4 then max = #dev.flat_settings end
        if dev.tab == 5 then max = #dev.lab_actions end
        if dev.tab == 6 then max = #dev.maint_actions end
        if dev.selected > max then dev.selected = 1 end
        sndPlay(sysSnd, 100, 0)
    elseif input == "up" then
        dev.selected = dev.selected - 1
        local max = 1
        if dev.tab == 2 then max = #dev.ai_text_actions end
        if dev.tab == 3 then max = #dev.ai_img_actions end
        if dev.tab == 4 then max = #dev.flat_settings end
        if dev.tab == 5 then max = #dev.lab_actions end
        if dev.tab == 6 then max = #dev.maint_actions end
        if dev.selected < 1 then dev.selected = max end
        sndPlay(sysSnd, 100, 0)
    elseif input == "select" then
        if dev.tab == 2 then dev.run_ai_text(dev.ai_text_actions[dev.selected])
        elseif dev.tab == 3 then dev.run_ai_img(dev.ai_img_actions[dev.selected])
        elseif dev.tab == 6 then dev.run_cmd(dev.maint_actions[dev.selected].cmd) end
        sndPlay(sysSnd, 100, 1)
    end
end

function dev.draw()
    if not dev.active then return end

    -- Draw Tabs
    local tab_x = UI.x
    for i, t in ipairs(dev.tabs) do
        if i == dev.tab then
            textImgSetColor(dev.txt_tab, UI.c_highlight[1], UI.c_highlight[2], UI.c_highlight[3])
            textImgSetText(dev.txt_tab, "[" .. t .. "]")
        else
            textImgSetColor(dev.txt_tab, UI.c_dim[1], UI.c_dim[2], UI.c_dim[3])
            textImgSetText(dev.txt_tab, " " .. t .. " ")
        end
        textImgDraw(dev.txt_tab, tab_x, UI.y)
        tab_x = tab_x + 55
    end

    local content_y = UI.y + 40
    local desc_text = ""
    
    if dev.tab == 1 then -- DASHBOARD
        textImgSetColor(dev.txt_content, UI.c_text[1], UI.c_text[2], UI.c_text[3])
        textImgSetText(dev.txt_content, "AI STATUS: " .. (io.open("models/tinyllama-1.1b-chat.Q4_K_M.gguf", "r") and "ONLINE" or "SIMULATION MODE"))
        textImgDraw(dev.txt_content, UI.x + 10, content_y)

    elseif dev.tab == 2 then -- AI TEXT
        for i, act in ipairs(dev.ai_text_actions) do
            if i == dev.selected then
                textImgSetColor(dev.txt_content, UI.c_highlight[1], UI.c_highlight[2], UI.c_highlight[3])
                textImgSetText(dev.txt_content, "> " .. act.name)
                desc_text = act.desc
            else
                textImgSetColor(dev.txt_content, UI.c_text[1], UI.c_text[2], UI.c_text[3])
                textImgSetText(dev.txt_content, "  " .. act.name)
            end
            textImgDraw(dev.txt_content, UI.x + 10, content_y + ((i-1)*20))
        end
        textImgSetColor(dev.txt_small, UI.c_value[1], UI.c_value[2], UI.c_value[3])
        textImgSetText(dev.txt_small, "OUTPUT:\n" .. dev.ai_result)
        textImgDraw(dev.txt_small, UI.x + 10, content_y + 150)

    elseif dev.tab == 3 then -- AI IMG
        for i, act in ipairs(dev.ai_img_actions) do
            if i == dev.selected then
                textImgSetColor(dev.txt_content, UI.c_highlight[1], UI.c_highlight[2], UI.c_highlight[3])
                textImgSetText(dev.txt_content, "> " .. act.name)
                desc_text = act.desc
            else
                textImgSetColor(dev.txt_content, UI.c_text[1], UI.c_text[2], UI.c_text[3])
                textImgSetText(dev.txt_content, "  " .. act.name)
            end
            textImgDraw(dev.txt_content, UI.x + 10, content_y + ((i-1)*20))
        end
        textImgSetColor(dev.txt_small, UI.c_dim[1], UI.c_dim[2], UI.c_dim[3])
        textImgSetText(dev.txt_small, "Images saved to /generated_assets/")
        textImgDraw(dev.txt_small, UI.x + 10, content_y + 150)
    end
    
    if desc_text ~= "" then
        textImgSetColor(dev.txt_small, UI.c_value[1], UI.c_value[2], UI.c_value[3])
        textImgSetText(dev.txt_small, "INFO: " .. desc_text)
        textImgDraw(dev.txt_small, UI.x + 10, UI.y + 280)
    end
end

-- Text images (fonts loaded later by engine)
dev.txt_tab = textImgNew()
-- textImgSetFont(dev.txt_tab, 0)  -- Font loaded by engine automatically
textImgSetScale(dev.txt_tab, 0.8, 0.8)

dev.txt_content = textImgNew()
-- textImgSetFont(dev.txt_content, 0)  -- Font loaded by engine automatically

dev.txt_small = textImgNew()
-- textImgSetFont(dev.txt_small, 0)  -- Font loaded by engine automatically
textImgSetScale(dev.txt_small, 0.9, 0.9)

dev.txt_status = textImgNew()

return dev


