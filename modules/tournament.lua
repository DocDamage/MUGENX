-- MUGEN X - Tournament Bracket
-- Builds brackets from the active select.def roster and records actual Ikemen
-- match winners. It never simulates/randomizes match results.

local runtime = require("runtime")
local tournament = {}

tournament.select_path = "data/select.def"
tournament.roster = {}
tournament.rounds = {}
tournament.round = 0
tournament.match = 1
tournament.active = false
tournament.champion = nil
tournament.last_error = nil

local function trim(value)
    return tostring(value or ""):match("^%s*(.-)%s*$")
end

local function normalize(value)
    return trim(value):lower():gsub("[^%w]", "")
end

local function character_name_from_def(ref)
    local path = "chars/" .. ref:gsub("\\", "/")
    local file = io.open(path, "r")
    if not file then return ref end
    local in_info = false
    for raw in file:lines() do
        local line = trim(raw)
        if line:match("^%[.-%]$") then
            in_info = line:lower() == "[info]"
        elseif in_info then
            local key, value = line:match("^([^=]+)=(.+)$")
            if key and trim(key):lower() == "name" then
                file:close()
                return trim(value):gsub('^"', ''):gsub('"$', '')
            end
        end
    end
    file:close()
    return ref
end

function tournament.load_roster()
    local file, err = io.open(tournament.select_path, "r")
    if not file then
        tournament.last_error = tostring(err)
        return false
    end
    local in_characters = false
    local roster = {}
    local seen = {}
    for raw in file:lines() do
        local line = trim(raw)
        if line:match("^%[.-%]$") then
            in_characters = line:lower() == "[characters]"
        elseif in_characters and line ~= "" and line:sub(1, 1) ~= ";" then
            local ref = trim(line:match("^([^,;]+)"))
            if ref and ref ~= "" and ref:lower() ~= "randomselect" and ref:lower():match("%.def$") then
                ref = ref:gsub("\\", "/")
                local key = ref:lower()
                if not seen[key] then
                    seen[key] = true
                    roster[#roster + 1] = {ref = ref, name = character_name_from_def(ref)}
                end
            end
        end
    end
    file:close()
    tournament.roster = roster
    tournament.last_error = nil
    return #roster > 1
end

local function shuffled(source)
    local ret = {}
    for index, value in ipairs(source) do ret[index] = value end
    for i = #ret, 2, -1 do
        local j = math.random(i)
        ret[i], ret[j] = ret[j], ret[i]
    end
    return ret
end

local function nearest_power_of_two(value)
    local n = 1
    while n * 2 <= value do n = n * 2 end
    return n
end

local function pair_round(participants)
    local matches = {}
    for i = 1, #participants, 2 do
        matches[#matches + 1] = {
            p1 = participants[i],
            p2 = participants[i + 1],
            winner = nil,
            completed = false,
        }
    end
    return matches
end

function tournament.begin(size)
    if #tournament.roster < 2 and not tournament.load_roster() then
        return false, tournament.last_error or "not enough roster entries"
    end
    local max_size = nearest_power_of_two(#tournament.roster)
    size = tonumber(size) or math.min(8, max_size)
    size = nearest_power_of_two(math.max(2, math.min(size, max_size)))
    local pool = shuffled(tournament.roster)
    local participants = {}
    for i = 1, size do participants[i] = pool[i] end

    tournament.rounds = {pair_round(participants)}
    tournament.round = 1
    tournament.match = 1
    tournament.active = true
    tournament.champion = nil
    runtime.run_hook_safe("mugenx_tournament_started", size, tournament.rounds[1])
    return true
end

function tournament.current_match()
    if not tournament.active then return nil end
    local round = tournament.rounds[tournament.round]
    return round and round[tournament.match] or nil
end

local function names_match(match)
    local p1 = runtime.snapshot(1)
    local p2 = runtime.snapshot(2)
    if not p1 or not p2 then return false end
    local loaded = {[normalize(p1.name)] = true, [normalize(p2.name)] = true}
    return loaded[normalize(match.p1.name)] and loaded[normalize(match.p2.name)]
end

local function advance_if_needed()
    local round = tournament.rounds[tournament.round]
    if not round then return end
    if tournament.match <= #round then return end

    local winners = {}
    for _, match in ipairs(round) do
        if not match.winner then return end
        winners[#winners + 1] = match.winner
    end
    if #winners == 1 then
        tournament.champion = winners[1]
        tournament.active = false
        runtime.run_hook_safe("mugenx_tournament_complete", tournament.champion)
        return
    end

    tournament.round = tournament.round + 1
    tournament.match = 1
    tournament.rounds[tournament.round] = pair_round(winners)
    runtime.run_hook_safe("mugenx_tournament_round", tournament.round, tournament.rounds[tournament.round])
end

function tournament.record_current(winner_team, force)
    local match = tournament.current_match()
    if not match then return false, "no active match" end
    if not force and not names_match(match) then
        return false, "loaded fighters do not match the current bracket pairing"
    end
    winner_team = tonumber(winner_team)
    if winner_team ~= 1 and winner_team ~= 2 then return false, "match has no winning team" end

    match.winner = winner_team == 1 and match.p1 or match.p2
    match.completed = true
    runtime.run_hook_safe("mugenx_tournament_result", tournament.round, tournament.match, match.winner, match)
    tournament.match = tournament.match + 1
    advance_if_needed()
    return true, match.winner
end

function tournament.on_match_end()
    if not tournament.active then return end
    local winner = runtime.call("winnerteam")
    local ok, detail = tournament.record_current(winner, false)
    if not ok then
        tournament.last_error = detail
    else
        tournament.last_error = nil
    end
end

function tournament.status()
    local current = tournament.current_match()
    return {
        active = tournament.active,
        round = tournament.round,
        match = tournament.match,
        roster_count = #tournament.roster,
        current = current,
        champion = tournament.champion,
        error = tournament.last_error,
    }
end

function tournament.init()
    tournament.load_roster()
    runtime.safe_hook("matchend", "mugenx_tournament_result", tournament.on_match_end)
end

return tournament
