-- ============================================================================
-- MUGEN X ENGINE - NETPLAY LOBBY
-- ============================================================================

local lobby = {}
lobby.active = false

function lobby.init()
    -- Connect to Ikemen GO Netplay API
end

function lobby.draw()
    if not lobby.active then return end
    
    textImgSetText(lobby.txt_status, "ONLINE LOBBY\nSearching for opponents...")
    textImgDraw(lobby.txt_status, 640, 360)
end

lobby.txt_status = textImgNew()

return lobby

