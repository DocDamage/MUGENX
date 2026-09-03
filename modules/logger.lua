-- MUGEN X - Battle Logger
-- Captures real Ikemen snapshots and writes one JSON object per completed match.

local runtime = require("runtime")
local logger = {}

logger.path = "save/mugenx_match_history.jsonl"
logger.current = nil
logger.last_saved = nil

local function encode(value)
    if type(_G.json) == "table" and type(_G.json.encode) == "function" then
        local ok, result = pcall(_G.json.encode, value)
        if ok then return result end
    end
    return nil
end

local function player_record(slot)
    local s = runtime.snapshot(slot)
    if not s then return nil end
    return {
        slot = slot,
        name = s.name,
        life = s.life,
        life_max = s.life_max,
        power = s.power,
        state_no = s.state_no,
        ai_level = s.ai_level,
    }
end

function logger.begin_match()
    logger.current = {
        started_tick = type(tickcount) == "function" and tickcount() or 0,
        mode = runtime.game_mode(),
        players = {player_record(1), player_record(2)},
        rounds = {},
        winner_team = -1,
    }
end

function logger.capture_round(round_no)
    if not logger.current then logger.begin_match() end
    logger.current.rounds[#logger.current.rounds + 1] = {
        round = round_no or runtime.round_no(),
        fight_time = runtime.call("fighttime") or 0,
        winner_team = runtime.call("winnerteam") or -1,
        p1 = player_record(1),
        p2 = player_record(2),
    }
end

function logger.finish_match()
    if not logger.current then logger.begin_match() end
    logger.current.ended_tick = type(tickcount) == "function" and tickcount() or 0
    logger.current.winner_team = runtime.call("winnerteam") or -1
    logger.current.final = {p1 = player_record(1), p2 = player_record(2)}

    local line = encode(logger.current)
    if not line then
        print("MUGEN X Logger: JSON encoder unavailable; match not written")
        return false
    end

    local file, err = io.open(logger.path, "a")
    if not file then
        print("MUGEN X Logger: failed to open " .. logger.path .. ": " .. tostring(err))
        return false
    end
    file:write(line, "\n")
    file:close()
    logger.last_saved = logger.current
    runtime.run_hook_safe("mugenx_match_logged", logger.current)
    logger.current = nil
    return true
end

function logger.init()
    runtime.safe_hook("matchstart", "mugenx_logger_start", logger.begin_match)
    runtime.safe_hook("roundend", "mugenx_logger_round", logger.capture_round)
    runtime.safe_hook("matchend", "mugenx_logger_match", logger.finish_match)
end

return logger
