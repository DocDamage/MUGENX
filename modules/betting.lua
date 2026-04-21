-- MUGEN X - Betting System (Spectator)
local betting = {}
local core = require("rpg_core")

betting.active_bet = {amount=0, target=0} -- Amount, PlayerID
betting.open = false

function betting.init()
    hook.add("roundstart", "betting_open", function()
        -- Only if both players are AI
        if player(1).AILevel > 0 and player(2).AILevel > 0 then
            betting.open = true
            betting.active_bet = {amount=0, target=0}
            print("BETTING OPEN! Press 1 or 2 to bet 100 Gold.")
        else
            betting.open = false
        end
    end)
    
    hook.add("tick", "betting_tick", function()
        if betting.open then
            textImgDraw(textImgNew(), 320, 100, "PLACE YOUR BETS!", 0, 0)
            textImgDraw(textImgNew(), 320, 120, "Press [1] for P1, [2] for P2 ($100)", 0, 0)
            
            -- Input check (using P1 controller for the 'User')
            if main.f_input(main.t_players, {'1'}) and core.state[1].gold >= 100 then
                betting.active_bet = {amount=100, target=1}
                core.state[1].gold = core.state[1].gold - 100
                betting.open = false
                print("Bet placed on Player 1")
            elseif main.f_input(main.t_players, {'2'}) and core.state[1].gold >= 100 then
                betting.active_bet = {amount=100, target=2}
                core.state[1].gold = core.state[1].gold - 100
                betting.open = false
                print("Bet placed on Player 2")
            end
            
            -- Close betting after 5 seconds
            if roundTime() > 300 then betting.open = false end
        end
    end)
    
    hook.add("matchover", "betting_payout", function()
        if betting.active_bet.amount > 0 then
            local winner = player(1).Win and 1 or 2
            if winner == betting.active_bet.target then
                -- WIN
                local payout = betting.active_bet.amount * 2
                core.state[1].gold = core.state[1].gold + payout
                textImgDraw(textImgNew(), 320, 150, "BET WON! +" .. payout, 0, 0)
                print("BET WON!")
            else
                -- LOSE
                textImgDraw(textImgNew(), 320, 150, "BET LOST...", 0, 0)
                print("BET LOST.")
            end
        end
    end)
end

return betting

