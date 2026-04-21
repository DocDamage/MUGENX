-- MUGEN X - Battle Logger
local logger = {}

logger.match_data = {
    winner = 0,
    time_left = 99,
    p1_life = 0,
    p2_life = 0,
    max_combo = 0
}

function logger.init()
    hook.add("roundend", "logger_round_end", function()
        logger.capture_stats()
        logger.save_log()
    end)
end

function logger.capture_stats()
    -- Capture final state
    logger.match_data.time_left = matchTime()
    logger.match_data.p1_life = player(1).Life
    logger.match_data.p2_life = player(2).Life
    
    if player(1).Win then logger.match_data.winner = 1
    elseif player(2).Win then logger.match_data.winner = 2
    else logger.match_data.winner = 0 end
    
    print("Logger: Stats Captured")
end

function logger.save_log()
    local json_str = string.format(
        '{"winner": %d, "time_left": %d, "p1_life": %d, "p2_life": %d}',
        logger.match_data.winner,
        logger.match_data.time_left,
        logger.match_data.p1_life,
        logger.match_data.p2_life
    )
    
    local file = io.open("data/match_log.json", "w")
    if file then
        file:write(json_str)
        file:close()
        print("Logger: match_log.json saved")
    else
        print("Logger: Failed to save log")
    end
end

return logger

