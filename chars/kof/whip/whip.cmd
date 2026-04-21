; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;               command = ~30
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their engine.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands are given below. Delete, add, or modify as you wish.


;-| Super Motions |--------------------------------------------------------
[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command] 
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "EX1"
command = ~D, DB, B, DB, D, DF, F, x
time = 50

[Command]
name = "EX1"
command = ~D, DB, B, DB, D, DF, F, y
time = 50

;-| Special Motions |------------------------------------------------------
[Command]
name = "bu-meranjyaku"
command = ~B, DB, D, DF, F, x
time = 18

[Command]
name = "bu-merankyou"
command = ~B, DB, D, DF, F, y
time = 18

[Command]
name = "jyoudan"
command = ~F, DF, D, DB, B, x
time = 18

[Command]
name = "gedan"
command = ~F, DF, D, DB, B, y
time = 18

[Command]
name = "tyuudan"
command = ~F, DF, D, DB, B, a
time = 18

[Command]
name = "jyoushou"
command = ~F, D, DF, x

[Command]
name = "jyoushou2"
command = ~F, D, DF, a

[Command]
name = "jyoushou3"
command = ~F, D, DF, y

[Command]
name = "jyoushou4"
command = ~F, D, DF, b

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCB_a"
command = ~D, DF, F, a

[Command]
name = "QCB_b"
command = ~D, DF, F, b

[Command]
name = "fukkujyaku"
command = ~D, DB, B, x

[Command]
name = "fukkukyou"
command = ~D, DB, B, y

[Command]
name = "jyuujyaku"
command = ~B, D, DB, x

[Command]
name = "jyuukyou"
command = ~B, D, DB, y


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
;[Command]
;name = "recovery";Required (do not remove)
;command = x+y
;time = 1

[Command]
name = "b+y"
command = b+y
time = 1

[Command]
name = "a+x"
command = a+x
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "ukete"
command = /F,x
time = 1

[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

;-| Single Button |---------------------------------------------------------

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.  
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;redEX1
[State -1, ]
type = ChangeState
value = 3000
triggerall = command = "EX1"
triggerall = power >= 1000
triggerall = life <= 333
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 220)|| (stateno = 201) ||(stateno = 211) ||(stateno = 221) ||(stateno = 231) ||(stateno = 410) ||(stateno = 420) 
trigger2 = (time > 6)||movecontact
trigger3 = stateno = 851
trigger4 = stateno = 1102
trigger4 = time > 21


;---------------------------------------------------------------------------
;EX1
[State -1, ]
type = ChangeState
value = 2000
triggerall = command = "EX1"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 220)|| (stateno = 201) ||(stateno = 211) ||(stateno = 221) ||(stateno = 231) ||(stateno = 410) ||(stateno = 420) 
trigger2 = (time > 6)||movecontact
trigger3 = stateno = 851
trigger4 = stateno = 1102
trigger4 = time > 21


;---------------------------------------------------------------------------
;ブーメラン弱
[State -1, ]
type = ChangeState
value = 1050
triggerall = command = "bu-meranjyaku"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 220)|| (stateno = 201) ||(stateno = 211) ||(stateno = 221) ||(stateno = 231) ||(stateno = 410) ||(stateno = 420) 
trigger2 = (time > 6)||movecontact
trigger3 = stateno = 851
trigger4 = stateno = 1102
trigger4 = time > 21


;---------------------------------------------------------------------------
;ブーメラン強
[State -1, ]
type = ChangeState
value = 1000
triggerall = command = "bu-merankyou"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 220)|| (stateno = 201) ||(stateno = 211) ||(stateno = 221) ||(stateno = 231) ||(stateno = 410) ||(stateno = 420) 
trigger2 = (time > 6)||movecontact
trigger3 = stateno = 851
trigger4 = stateno = 1102
trigger4 = time > 21


;---------------------------------------------------------------------------
;下段
[State -1, ]
type = ChangeState
value = 1200
triggerall = command = "gedan"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 220)|| (stateno = 201) ||(stateno = 211) ||(stateno = 221) ||(stateno = 231) ||(stateno = 410) ||(stateno = 420) 
trigger2 = (time > 6)||movecontact
trigger3 = stateno = 851
trigger4 = stateno = 1102
trigger4 = time > 21


;---------------------------------------------------------------------------
;上段
[State -1, ]
type = ChangeState
value = 1201
triggerall = command = "jyoudan"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 220)|| (stateno = 201) ||(stateno = 211) ||(stateno = 221) ||(stateno = 231) ||(stateno = 410) ||(stateno = 420) 
trigger2 = (time > 6)||movecontact
trigger3 = stateno = 851
trigger4 = stateno = 1102
trigger4 = time > 21


;---------------------------------------------------------------------------
;中段
[State -1, ]
type = ChangeState
value = 1202
triggerall = command = "tyuudan"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 220)|| (stateno = 201) ||(stateno = 211) ||(stateno = 221) ||(stateno = 231) ||(stateno = 410) ||(stateno = 420) 
trigger2 = (time > 6)||movecontact
trigger3 = stateno = 851
trigger4 = stateno = 1102
trigger4 = time > 21


;---------------------------------------------------------------------------
;jyoushou
[State -1, ]
type = ChangeState
value = 1100
triggerall = command = "jyoushou"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 220)|| (stateno = 201) ||(stateno = 211) ||(stateno = 221) ||(stateno = 231) ||(stateno = 410) ||(stateno = 420) 
trigger2 = (time > 6)||movecontact
trigger3 = stateno = 851
trigger4 = stateno = 1102
trigger4 = time > 21


;---------------------------------------------------------------------------
;jyoushou2
[State -1, ]
type = ChangeState
value = 1110
triggerall = command = "jyoushou2"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 220)|| (stateno = 201) ||(stateno = 211) ||(stateno = 221) ||(stateno = 231) ||(stateno = 410) ||(stateno = 420) 
trigger2 = (time > 6)||movecontact
trigger3 = stateno = 851
trigger4 = stateno = 1102
trigger4 = time > 21


;---------------------------------------------------------------------------
;jyoushou3
[State -1, ]
type = ChangeState
value = 1120
triggerall = command = "jyoushou3"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 220)|| (stateno = 201) ||(stateno = 211) ||(stateno = 221) ||(stateno = 231) ||(stateno = 410) ||(stateno = 420) 
trigger2 = (time > 6)||movecontact
trigger3 = stateno = 851
trigger4 = stateno = 1102
trigger4 = time > 21


;---------------------------------------------------------------------------
;jyoushou4
[State -1, ]
type = ChangeState
value = 1130
triggerall = command = "jyoushou4"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 220)|| (stateno = 201) ||(stateno = 211) ||(stateno = 221) ||(stateno = 231) ||(stateno = 410) ||(stateno = 420) 
trigger2 = (time > 6)||movecontact
trigger3 = stateno = 851
trigger4 = stateno = 1102
trigger4 = time > 21


;---------------------------------------------------------------------------
;フックショット弱
[State -1, ]
type = ChangeState
value = 1600
triggerall = command = "fukkujyaku"
triggerall = anim < 100 
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = pos Y < -60

;---------------------------------------------------------------------------
;フックショット強
[State -1, ]
type = ChangeState
value = 1610
triggerall = command = "fukkukyou"
triggerall = anim < 100 
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = pos Y < -60

;---------------------------------------------------------------------------
;銃弱
[State -1, ]
type = ChangeState
value = ifelse(var(17)>7,1751,1700)
triggerall = command = "jyuujyaku"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 220)|| (stateno = 201) ||(stateno = 211) ||(stateno = 221) ||(stateno = 231) ||(stateno = 410) ||(stateno = 420) 
trigger2 = (time > 6)||movecontact
trigger3 = stateno = 851
trigger4 = stateno = 1102
trigger4 = time > 21


;---------------------------------------------------------------------------
;銃強
[State -1, ]
type = ChangeState
value = ifelse(var(17)>7,1751,1710)
triggerall = command = "jyuukyou"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 220)|| (stateno = 201) ||(stateno = 211) ||(stateno = 221) ||(stateno = 231) ||(stateno = 410) ||(stateno = 420) 
trigger2 = (time > 6)||movecontact
trigger3 = stateno = 851
trigger4 = stateno = 1102
trigger4 = time > 21

;===========================================================================
;---------------------------------------------------------------------------
;前避け
[State -1, ]
type = ChangeState
value = 800
triggerall = command = "a+x"
triggerall = command != "holddown"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後ろ避け
[State -1, ]
type = ChangeState
value = 850
triggerall = command = "a+x"
triggerall = command != "holddown"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand_Throw
;K投げ
[State -1, Standing Throw]
type = ChangeState
value = 550
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "fwd_b"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "back_b";Near, p2 stand
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;Stand_Throw
;P投げ
[State -1, Standing Throw]
type = ChangeState
value = 500
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "fwd_y"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "back_y";Near, p2 stand
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H


;===========================================================================
;---------------------------------------------------------------------------
;うけて
[State -1, ]
type = ChangeState
value = 202
triggerall = command = "ukete"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 220)|| (stateno = 201) ||(stateno = 211) ||(stateno = 221) ||(stateno = 231) ||(stateno = 410) ||(stateno = 420) 
trigger2 = (time > 6)||movecontact
trigger3 = stateno = 1102
trigger3 = time > 21

;---------------------------------------------------------------------------
;ふっとばし
[State -1, ]
type = ChangeState
value = 240
triggerall = command = "b+y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプふっとばし
[State -1, ]
type = ChangeState
value = 640
triggerall = command = "b+y"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離弱Ｐ
[State -1, Stand Light Punch]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 201) ||(stateno = 221)
trigger2 = movecontact&& time > 8

;---------------------------------------------------------------------------
;近距離強Ｐ
[State -1, Stand Strong Punch]
type = ChangeState
value = 211
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x < 20
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 200) && time > 5
;trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;近距離弱Ｋ
[State -1, Stand Light Kick]
type = ChangeState
value = 221
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist x < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 201) ||(stateno = 221)
trigger2 = movecontact&& time > 8

;---------------------------------------------------------------------------
;近距離強Ｋ
[State -1, Standing Strong Kick]
type = ChangeState
value = 231
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist x < 20
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 200) && time > 5
;trigger3 = (stateno = 230) && time > 6


;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = stateno = 200
;trigger2 = time > 7

;---------------------------------------------------------------------------
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 200) && time > 5
;trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;--------------------------------------------------------------------------
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = (stateno = 200) && time > 5
;trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;trigger2 = (stateno = 400) || (stateno = 430)
;trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 420
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 201) ||(stateno = 221)
trigger2 = movecontact&& time > 8


;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;trigger2 = (stateno = 400) || (stateno = 430)
;trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = anim = 41 || anim = 44
;trigger2 = stateno = 600
;trigger2 = statetime >= 7

;---------------------------------------------------------------------------
;空中強Ｐ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = anim = 41 || anim = 44
;trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
;trigger2 = movecontact

;---------------------------------------------------------------------------
;空中弱Ｋ
[State -1, Jump Light Kick]
type = ChangeState
value = 620
triggerall = command = "a"
trigger1 = anim = 41 || anim = 44

;---------------------------------------------------------------------------
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = anim = 41 || anim = 44
;trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
;trigger2 = movecontact


;---------------------------------------------------------------------------
;斜め空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 601
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 600
;trigger2 = statetime >= 7

;---------------------------------------------------------------------------
;斜めジャンプ強Ｐ
[State -1, Jump Strong Punch]
type = ChangeState
value = 611
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
;trigger2 = movecontact

;---------------------------------------------------------------------------
;斜めジャンプ弱Ｋ
[State -1, Jump Light Kick]
type = ChangeState
value = 621
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;斜め空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 631
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
;trigger2 = movecontact



