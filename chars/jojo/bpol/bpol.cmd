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
;   name = "some_name"
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
;               command = /F, a    ;hold fwd while you press a
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


;-| Super Motions |--------------------------------------------------------
[Command]
name = "dameoshitoiuyatuda"
command = ~D, DF, F, x+y

[Command]
name = "dameoshitoiuyatuda"
command = ~D, DF, F, y+b

[Command]
name = "dameoshitoiuyatuda"
command = ~D, DF, F, x+b

[Command]
name = "dameoshitoiuyatuda"
command = /F, z

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCF_yb"
command = ~D, DF, F, y+b

[Command]
name = "QCB_ab"
command = ~D, DB, B, a+b

;-| Special Motions |------------------------------------------------------
[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCB_a"
command = ~D, DF, F, a

[Command]
name = "QCB_b"
command = ~D, DF, F, b

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "downfwd_a"
command = /DF,a
time = 1

[Command]
name = "downfwd_b"
command = /DF,b
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back1_a"
command = /B$,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
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
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
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
name = "holdup";Required (do not remove)
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
;   [State -1]                  ;Don't change this
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = "command_name"
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
;Superwaza A
[State -1]
type = ChangeState
value = 3500
triggerall = command = "dameoshitoiuyatuda"
;triggerall = command = "QCF_xy"
;triggerall = command = "QCF_yb"
;triggerall = command = "QCF_z"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = stateno <= 2999
trigger1 = numhelper(3001) <= 0
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = stateno <= 2999
trigger2 = stateno != 2000
trigger2 = stateno != 2010
trigger2 = stateno != 2011
trigger2 = stateno != 2020
trigger2 = stateno != 2021
trigger2 = stateno != 2022
trigger2 = numhelper(3001) <= 0
trigger2 = movecontact

;;Superwaza B
;[State -1]
;type = ChangeState
;value = 3000
;triggerall = command = "QCB_ab"
;triggerall = power >= 1000
;trigger1 = statetype = S
;trigger1 = ctrl = 1
;trigger2 = statetype != A
;trigger2 = hitdefattr = SC, NA, SA
;trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
;/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;鬼連斬Ａ
[State -1]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact

;-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-
;鬼連斬Ａ派生１
[State -1]
type = VarSet
v = 1
value = 1
triggerall = time > 1
trigger1 = command = "QCF_x"
trigger1 = numhelper(3001) < 1

;---------------------------------------------------------------------------
;/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;鬼連斬Ｂ
[State -1]
type = ChangeState
value = 1010
triggerall = command = "QCF_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact

;-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-
;鬼連斬Ｂ派生１
[State -1]
type = VarSet
v = 1
value = 2
triggerall = time > 1
trigger1 = command = "QCF_y"
trigger1 = numhelper(3001) < 1

;---------------------------------------------------------------------------
;/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;鬼連斬Ｃ
[State -1]
type = ChangeState
value = 1020
triggerall = command = "QCF_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact

;-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-_/-
;鬼連斬Ｃ派生１
[State -1]
type = VarSet
v = 1
value = 3
triggerall = time > 1
trigger1 = command = "QCF_b"
trigger1 = numhelper(3001) < 1

;===========================================================================
;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;投げ
;[State -1]
;type = ChangeState
;value = 1070
;triggerall = statetype = S
;triggerall = ctrl = 1
;triggera1 = command = "fwd_y"
;triggerall = command = "fwd_y"
;trigger1 = p2bodydist X <= 10

;---------------------------------------------------------------------------
;Stand_Throw
[State -1]
type = ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "fwd_ab";Command
trigger2 = command = "back_ab";Command
;trigger3 = command = "fwd_b";Near, p2 stand
;trigger3 = stateno != 100    ;Not running
;trigger3 = p2bodydist X < 3
;trigger3 = p2statetype = S
;trigger3 = p2movetype != H
trigger4 = command = "fwd_b";Near, p2 crouch
trigger4 = stateno != 100    ;Not running
trigger4 = p2bodydist X < 3
trigger4 = p2statetype = C
trigger4 = p2movetype != H
trigger5 = command = "back_b";Near, p2 stand
trigger5 = p2bodydist X < 5
trigger5 = p2statetype = S
trigger5 = p2movetype != H
trigger6 = command = "back_b";Near, p2 crouch
trigger6 = p2bodydist X < 5
trigger6 = p2statetype = C
trigger6 = p2movetype != H

;---------------------------------------------------------------------------
;Air_Throw1
[State -1]
type = ChangeState
value = 950
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = command = "fwd_ab"
trigger2 = command = "back_ab"
;---------------------------
;Air_Throw1 (second set of commands)
[State -1]
type = ChangeState
value = 950
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 9
triggerall = p2bodydist Y > -22
triggerall = p2bodydist Y < 22
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = command = "fwd_b"
trigger2 = command = "back_b"


;===========================================================================
;---------------------------------------------------------------------------
;Stand_x
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = stateno != 200

;---------------------------------------------------------------------------
;Stand_y
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact

;---------------------------------------------------------------------------
;Stand_a（スタンドボタン、チャリオッツスピリット）
[State -1]
type = ChangeState
value = 2050
triggerall = command = "QCF_a"
;triggerall = command != "holddown"
;triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = numhelper(3001) <= 0
trigger1 = stateno <= 999
trigger1 = stateno != 2000
trigger1 = stateno != 2010
trigger1 = stateno != 2011
trigger1 = stateno != 2020
trigger1 = stateno != 2021
trigger1 = stateno != 2022
trigger1 = stateno != 2030
trigger1 = stateno != 2031
trigger1 = stateno != 2032
trigger1 = stateno != 2040
trigger1 = stateno != 2041
trigger1 = stateno != 2042
trigger1 = stateno != 2050
trigger1 = stateno != 2051
trigger1 = stateno != 2052


;Stand_a（スタンドボタン、ニュートラル）
[State -1]
type = ChangeState
value = 2000
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdback"
triggerall = command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = numhelper(3001) <= 0
trigger1 = stateno <= 999
trigger1 = stateno != 2000
trigger1 = stateno != 2010
trigger1 = stateno != 2011
trigger1 = stateno != 2020
trigger1 = stateno != 2021
trigger1 = stateno != 2022
trigger1 = stateno != 2030
trigger1 = stateno != 2031
trigger1 = stateno != 2032
trigger1 = stateno != 2040
trigger1 = stateno != 2041
trigger1 = stateno != 2042
trigger1 = stateno != 2050
trigger1 = stateno != 2051
trigger1 = stateno != 2052

;Stand_a（スタンドボタン、後ろ入れ）
[State -1]
type = ChangeState
value = 2020
triggerall = command = "back1_a"
triggerall = command != "holddown"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = numhelper(3001) <= 0
trigger1 = stateno <= 999
trigger1 = stateno != 2000
trigger1 = stateno != 2010
trigger1 = stateno != 2011
trigger1 = stateno != 2020
trigger1 = stateno != 2021
trigger1 = stateno != 2022
trigger1 = stateno != 2030
trigger1 = stateno != 2031
trigger1 = stateno != 2032
trigger1 = stateno != 2040
trigger1 = stateno != 2041
trigger1 = stateno != 2042
trigger1 = stateno != 2050
trigger1 = stateno != 2051
trigger1 = stateno != 2052


;Stand_a（スタンドボタン、前入れ）
[State -1]
type = ChangeState
value = 2030
triggerall = command = "fwd_a"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
;triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = numhelper(3001) <= 0
trigger1 = stateno <= 999
trigger1 = stateno != 2000
trigger1 = stateno != 2010
trigger1 = stateno != 2011
trigger1 = stateno != 2020
trigger1 = stateno != 2021
trigger1 = stateno != 2022
trigger1 = stateno != 2030
trigger1 = stateno != 2031
trigger1 = stateno != 2032
trigger1 = stateno != 2040
trigger1 = stateno != 2041
trigger1 = stateno != 2042
trigger1 = stateno != 2050
trigger1 = stateno != 2051
trigger1 = stateno != 2052


;Stand_a（スタンドボタン、下入れ）
[State -1]
type = ChangeState
value = 2040
triggerall = command = "a"
triggerall = command = "holddown"
;triggerall = command = "holdback"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger1 = numhelper(3001) <= 0
trigger1 = stateno <= 999
trigger1 = stateno != 2000
trigger1 = stateno != 2010
trigger1 = stateno != 2011
trigger1 = stateno != 2020
trigger1 = stateno != 2021
trigger1 = stateno != 2022
trigger1 = stateno != 2030
trigger1 = stateno != 2031
trigger1 = stateno != 2032
trigger1 = stateno != 2040
trigger1 = stateno != 2041
trigger1 = stateno != 2042
trigger1 = stateno != 2050
trigger1 = stateno != 2051
trigger1 = stateno != 2052
trigger2 = stateno = 400 ;crouch_a
trigger2 = movecontact
trigger3 = stateno = 410 ;crouch_a
trigger3 = movecontact


;---------------------------------------------------------------------------
;Stand_b
[State -1]
type = ChangeState
value = 220
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact

;---------------------------------------------------------------------------
;Crouch_x
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger1 = stateno != 400
trigger1 = stateno != 2000
trigger1 = stateno != 2010
trigger1 = stateno != 2020
trigger1 = stateno != 2021
trigger1 = stateno != 2022
trigger1 = stateno != 2030
trigger1 = stateno != 2031
trigger1 = stateno != 2032
trigger1 = stateno != 2040
trigger1 = stateno != 2041
trigger1 = stateno != 2042
trigger1 = stateno != 2050
trigger1 = stateno != 2051
trigger1 = stateno != 2052
trigger1 = numhelper(3001) <= 0

;Crouch_x（スタンド存在時）
[State -1]
type = ChangeState
value = 420
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = stateno = 2000
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger2 = stateno = 2010
trigger3 = statetype = C
trigger3 = numhelper(3001) > 0
trigger3 = ctrl = 1
trigger4 = statetype = C
trigger4 = ctrl = 1
trigger4 = stateno = 2020
trigger5 = statetype = C
trigger5 = ctrl = 1
trigger5 = stateno = 2021
trigger6 = statetype = C
trigger6 = ctrl = 1
trigger6 = stateno = 2022

;---------------------------------------------------------------------------
;Crouch_y
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger1 = stateno != 2000
trigger1 = stateno != 2010
trigger1 = stateno != 2020
trigger1 = stateno != 2021
trigger1 = stateno != 2022
trigger1 = stateno != 2030
trigger1 = stateno != 2031
trigger1 = stateno != 2032
trigger1 = stateno != 2040
trigger1 = stateno != 2041
trigger1 = stateno != 2042
trigger1 = stateno != 2050
trigger1 = stateno != 2051
trigger1 = stateno != 2052
trigger1 = numhelper(3001) <= 0
trigger2 = stateno = 400 ;crouch_a
trigger2 = movecontact
trigger2 = stateno != 2000
trigger2 = stateno != 2010
trigger2 = stateno != 2020
trigger2 = stateno != 2021
trigger2 = stateno != 2022
trigger2 = stateno != 2030
trigger2 = stateno != 2031
trigger2 = stateno != 2032
trigger2 = stateno != 2040
trigger2 = stateno != 2041
trigger2 = stateno != 2042
trigger2 = stateno != 2050
trigger2 = stateno != 2051
trigger2 = stateno != 2052
trigger2 = numhelper(3001) <= 0
;trigger3 = stateno = 500 ;crouch_fwd_a
;trigger3 = movecontact
;trigger3 = stateno != 2000
;trigger3 = stateno != 2010
;trigger3 = stateno != 2020
;trigger3 = stateno != 2021
;trigger3 = stateno != 2022
;trigger3 = stateno != 2030
;trigger3 = stateno != 2031
;trigger3 = stateno != 2032
;trigger3 = stateno != 2040
;trigger3 = stateno != 2041
;trigger3 = stateno != 2042
;trigger3 = numhelper(3001) <= 0

;Crouch_y（スタンド存在時）
[State -1]
type = ChangeState
value = 420
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = stateno = 2000
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger2 = stateno = 2010
trigger3 = statetype = C
trigger3 = numhelper(3001) > 0
trigger3 = ctrl = 1
trigger4 = statetype = C
trigger4 = ctrl = 1
trigger4 = stateno = 2020
trigger5 = statetype = C
trigger5 = ctrl = 1
trigger5 = stateno = 2021
trigger6 = statetype = C
trigger6 = ctrl = 1
trigger6 = stateno = 2022

;---------------------------------------------------------------------------
;Crouch_b
[State -1]
type = ChangeState
value = 420
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 410 ;crouch_b
trigger2 = movecontact
;trigger3 = stateno = 500 ;crouch_fwd_b
;trigger3 = movecontact

;---------------------------------------------------------------------------
;Jump_x
[State -1]
type = ChangeState
value = 600
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = command = "a";-------
trigger2 = stateno = 600 ;jump_a
trigger2 = statetime >= 12

;---------------------------------------------------------------------------
;Jump_y
[State -1]
type = ChangeState
value = 610
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
;trigger2 = command = "b";-------
;trigger2 = stateno = 600 ;jump_a
;trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump_b
[State -1]
type = ChangeState
value = 620
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
;trigger2 = command = "y";-------
;trigger2 = stateno = 620 ;jump_y
;trigger2 = movecontact
;trigger2 = statetime >= 6

