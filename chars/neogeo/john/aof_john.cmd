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
name = "DFDFx"
command = ~D,F,D,F,x
time = 30

[Command]
name = "DFDFa"
command = ~D,F,D,F,a
time = 30

[Command]
name = "FBDFx"
command = ~F,B,D,F,x
time = 20

[Command]
name = "FBDFa"
command = ~F,B,D,F,a
time = 20


;-| Special Motions |------------------------------------------------------

[Command]
name = "DUy"
command = ~D,DF,F,y
time = 10

[Command]
name = "DBx"
command = ~D,B,x
time = 10

[Command]
name = "DFx"
command = ~D,F,x
time = 10

[Command]
name = "DBy"
command = ~D,B,y
time = 10

[Command]
name = "AAA"
command = a,a,a
time = 20

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
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "yz"
command = y+z
time = 1

[Command]
name = "yb"
command = y+b
time = 1

[Command]
name = "xa"
command = x+a
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
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
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
name = "longjump"
command = D, $U
time = 18

[Command]
name = "holdfwdy";Required (do not remove)
command = /F,y
time = 1

[Command]
name = "Fxy"
command = /F,x+y
time = 1

[Command]
name = "Bxy"
command = /B,x+y
time = 1

[Command]
name = "Fz"
command = /F,z
time = 1

[Command]
name = "Bz"
command = /B,z
time = 1

[Command]
name = "BD" ;Required (do not remove)
command = /$BD
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "ab"
command = a+b
time = 1

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
name = "hold_a"
command = /a
time = 7

[Command]
name = "hold_b"
command = /b
time = 7

[Command]
name = "hold_c"
command = /c
time = 7

[Command]
name = "hold_x"
command = /x
time = 7

[Command]
name = "hold_y"
command = /y
time = 7

[Command]
name = "hold_z"
command = /z
time = 7

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

;===========================================================================
;---------------------------------------------------------------------------
;DFDFa
[State -1]
type = ChangeState
value = 553
triggerall = NumExplod(900) != 1
triggerall = NumExplod(910) != 1
triggerall = NumExplod(930) != 1
triggerall = power >=2000
triggerall = command = "FBDFa"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 5277
trigger3 = stateno = 5299
trigger4 = stateno = 100
trigger5 = anim = 11
trigger6 = stateno = 510
trigger6 = movecontact
trigger7 = stateno = 514
trigger7 = movecontact
trigger8 = stateno = 515
trigger8 = movecontact
trigger9 = stateno = 520
trigger9 = movecontact
trigger10 = stateno = 523
trigger10 = movecontact
trigger11 = stateno = 524
trigger11 = movecontact
trigger12 = stateno = 5281
trigger12 = movecontact
trigger13 = stateno = 5282
trigger13 = movecontact
trigger14 = stateno = 5292
trigger14 = movecontact
trigger15 = stateno = 5293
trigger15 = movecontact
trigger16 = stateno = 5294
trigger16 = movecontact
trigger17 = stateno = 5511
trigger17 = movecontact
trigger18 = stateno = 8084
trigger19 = stateno = 5202
trigger19 = movecontact

;---------------------------------------------------------------------------
;DFDFxCM
[State -1]
type = ChangeState
value = 5529
triggerall = NumExplod(900) != 1
triggerall = NumExplod(910) = 1
triggerall = NumExplod(930) != 1
triggerall = command = "FBDFx"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 5277
trigger3 = stateno = 5299
trigger4 = stateno = 100
trigger5 = anim = 11
trigger6 = stateno = 510
trigger6 = movecontact
trigger7 = stateno = 514
trigger7 = movecontact
trigger8 = stateno = 515
trigger8 = movecontact
trigger9 = stateno = 520
trigger9 = movecontact
trigger10 = stateno = 523
trigger10 = movecontact
trigger11 = stateno = 524
trigger11 = movecontact
trigger12 = stateno = 5281
trigger12 = movecontact
trigger13 = stateno = 5282
trigger13 = movecontact
trigger14 = stateno = 5292
trigger14 = movecontact
trigger15 = stateno = 5293
trigger15 = movecontact
trigger16 = stateno = 5294
trigger16 = movecontact
trigger17 = stateno = 5511
trigger17 = movecontact
trigger18 = stateno = 8084
trigger19 = stateno = 5202
trigger19 = movecontact
trigger20 = stateno = 550
trigger20 = time >=18
trigger21 = stateno = 554


;---------------------------------------------------------------------------
;DFDFx
[State -1]
type = ChangeState
value = 552
triggerall = NumExplod(900) != 1
triggerall = NumExplod(910) != 1
triggerall = NumExplod(930) != 1
triggerall = power >=1000
triggerall = command = "FBDFx"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 5277
trigger3 = stateno = 5299
trigger4 = stateno = 100
trigger5 = anim = 11
trigger6 = stateno = 510
trigger6 = movecontact
trigger7 = stateno = 514
trigger7 = movecontact
trigger8 = stateno = 515
trigger8 = movecontact
trigger9 = stateno = 520
trigger9 = movecontact
trigger10 = stateno = 523
trigger10 = movecontact
trigger11 = stateno = 524
trigger11 = movecontact
trigger12 = stateno = 5281
trigger12 = movecontact
trigger13 = stateno = 5282
trigger13 = movecontact
trigger14 = stateno = 5292
trigger14 = movecontact
trigger15 = stateno = 5293
trigger15 = movecontact
trigger16 = stateno = 5294
trigger16 = movecontact
trigger17 = stateno = 5511
trigger17 = movecontact
trigger18 = stateno = 8084
trigger19 = stateno = 5202
trigger19 = movecontact

;---------------------------------------------------------------------------
;DBx
[State -1]
type = ChangeState
value = 547
triggerall = command = "DBx"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 5277
trigger3 = stateno = 5299
trigger4 = stateno = 100
trigger5 = anim = 11
trigger6 = stateno = 510
trigger6 = movecontact
trigger7 = stateno = 514
trigger7 = movecontact
trigger8 = stateno = 515
trigger8 = movecontact
trigger9 = stateno = 520
trigger9 = movecontact
trigger10 = stateno = 523
trigger10 = movecontact
trigger11 = stateno = 524
trigger11 = movecontact
trigger12 = stateno = 5281
trigger12 = movecontact
trigger13 = stateno = 5282
trigger13 = movecontact
trigger14 = stateno = 5292
trigger14 = movecontact
trigger15 = stateno = 5293
trigger15 = movecontact
trigger16 = stateno = 5294
trigger16 = movecontact
trigger17 = NumExplod(900) = 1
trigger17 = movecontact
trigger18 = stateno = 5511
trigger18 = movecontact
trigger19 = stateno = 8084
trigger20 = stateno = 5202
trigger20 = movecontact

;---------------------------------------------------------------------------
;DUy
[State -1]
type = ChangeState
value = 543
triggerall = command = "DUy"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 5277
trigger3 = stateno = 5299
trigger4 = stateno = 100
trigger5 = anim = 11
trigger6 = stateno = 510
trigger6 = movecontact
trigger7 = stateno = 514
trigger7 = movecontact
trigger8 = stateno = 515
trigger8 = movecontact
trigger9 = stateno = 520
trigger9 = movecontact
trigger10 = stateno = 523
trigger10 = movecontact
trigger11 = stateno = 524
trigger11 = movecontact
trigger12 = stateno = 5281
trigger12 = movecontact
trigger13 = stateno = 5282
trigger13 = movecontact
trigger14 = stateno = 5292
trigger14 = movecontact
trigger15 = stateno = 5293
trigger15 = movecontact
trigger16 = stateno = 5294
trigger16 = movecontact
trigger17 = NumExplod(900) = 1
trigger17 = movecontact
trigger18 = stateno = 5511
trigger18 = movecontact
trigger19 = stateno = 8084
trigger20 = stateno = 5202
trigger20 = movecontact

;---------------------------------------------------------------------------
;DBy
[State -1]
type = ChangeState
value = 554
triggerall = command = "DBy"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 5277
trigger3 = stateno = 5299
trigger4 = stateno = 100
trigger5 = anim = 11
trigger6 = stateno = 510
trigger6 = movecontact
trigger7 = stateno = 514
trigger7 = movecontact
trigger8 = stateno = 515
trigger8 = movecontact
trigger9 = stateno = 520
trigger9 = movecontact
trigger10 = stateno = 523
trigger10 = movecontact
trigger11 = stateno = 524
trigger11 = movecontact
trigger12 = stateno = 5281
trigger12 = movecontact
trigger13 = stateno = 5282
trigger13 = movecontact
trigger14 = stateno = 5292
trigger14 = movecontact
trigger15 = stateno = 5293
trigger15 = movecontact
trigger16 = stateno = 5294
trigger16 = movecontact
trigger17 = NumExplod(900) = 1
trigger17 = movecontact
trigger18 = stateno = 5511
trigger18 = movecontact
trigger19 = stateno = 8084
trigger20 = stateno = 5202
trigger20 = movecontact

;---------------------------------------------------------------------------
;DFx
[State -1]
type = ChangeState
value = 550
triggerall = command = "DFx"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 5277
trigger3 = stateno = 5299
trigger4 = stateno = 100
trigger5 = anim = 11
trigger6 = stateno = 510
trigger6 = movecontact
trigger7 = stateno = 514
trigger7 = movecontact
trigger8 = stateno = 515
trigger8 = movecontact
trigger9 = stateno = 520
trigger9 = movecontact
trigger10 = stateno = 523
trigger10 = movecontact
trigger11 = stateno = 524
trigger11 = movecontact
trigger12 = stateno = 5281
trigger12 = movecontact
trigger13 = stateno = 5282
trigger13 = movecontact
trigger14 = stateno = 5292
trigger14 = movecontact
trigger15 = stateno = 5293
trigger15 = movecontact
trigger16 = stateno = 5294
trigger16 = movecontact
trigger17 = NumExplod(900) = 1
trigger17 = movecontact
trigger18 = stateno = 5511
trigger18 = movecontact
trigger19 = stateno = 8084
trigger20 = stateno = 5202
trigger20 = movecontact

;---------------------------------------------------------------------------
;SP
[State -1]
type = ChangeState
value = 901
triggerall = command = "yz"
triggerall = power >=3000
triggerall = NumExplod(900) = 0
triggerall = NumExplod(910) != 1
triggerall = NumExplod(930) != 1
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 5277
trigger3 = stateno = 5299
trigger4 = stateno = 100
trigger5 = anim = 11
trigger6 = stateno = 510
trigger6 = movecontact
trigger7 = stateno = 514
trigger7 = movecontact
trigger8 = stateno = 515
trigger8 = movecontact
trigger9 = stateno = 520
trigger9 = movecontact
trigger10 = stateno = 523
trigger10 = movecontact
trigger11 = stateno = 524
trigger11 = movecontact
trigger12 = stateno = 5281
trigger12 = movecontact
trigger13 = stateno = 5282
trigger13 = movecontact
trigger14 = stateno = 5292
trigger14 = movecontact
trigger15 = stateno = 5293
trigger15 = movecontact
trigger16 = stateno = 5294
trigger16 = movecontact
trigger17 = stateno = 5511
trigger17 = movecontact
trigger18 = stateno = 8084
trigger19 = stateno = 5202
trigger19 = movecontact

;---------------------------------------------------------------------------
;CM
[State -1]
type = ChangeState
value = 911
triggerall = command = "xa"
triggerall = power >=3000
triggerall = NumExplod(900) != 1
triggerall = NumExplod(910) = 0
triggerall = NumExplod(930) != 1
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 5277
trigger3 = stateno = 5299
trigger4 = stateno = 100
trigger5 = anim = 11
trigger6 = stateno = 510
trigger6 = movecontact
trigger7 = stateno = 514
trigger7 = movecontact
trigger8 = stateno = 515
trigger8 = movecontact
trigger9 = stateno = 520
trigger9 = movecontact
trigger10 = stateno = 523
trigger10 = movecontact
trigger11 = stateno = 524
trigger11 = movecontact
trigger12 = stateno = 5281
trigger12 = movecontact
trigger13 = stateno = 5282
trigger13 = movecontact
trigger14 = stateno = 5292
trigger14 = movecontact
trigger15 = stateno = 5293
trigger15 = movecontact
trigger16 = stateno = 5294
trigger16 = movecontact
trigger17 = stateno = 5511
trigger17 = movecontact
trigger18 = stateno = 8084
trigger19 = stateno = 5202
trigger19 = movecontact

;---------------------------------------------------------------------------
;AM
[State -1]
type = ChangeState
value = 931
triggerall = command = "yb"
triggerall = power >=3000
triggerall = NumExplod(900) != 1
triggerall = NumExplod(930) = 0
triggerall = NumExplod(910) != 1
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 5277
trigger3 = stateno = 5299
trigger4 = stateno = 100
trigger5 = anim = 11
trigger6 = stateno = 510
trigger6 = movecontact
trigger7 = stateno = 514
trigger7 = movecontact
trigger8 = stateno = 515
trigger8 = movecontact
trigger9 = stateno = 520
trigger9 = movecontact
trigger10 = stateno = 523
trigger10 = movecontact
trigger11 = stateno = 524
trigger11 = movecontact
trigger12 = stateno = 5281
trigger12 = movecontact
trigger13 = stateno = 5282
trigger13 = movecontact
trigger14 = stateno = 5292
trigger14 = movecontact
trigger15 = stateno = 5293
trigger15 = movecontact
trigger16 = stateno = 5294
trigger16 = movecontact
trigger17 = stateno = 5511
trigger17 = movecontact
trigger18 = stateno = 8084
trigger19 = stateno = 5202
trigger19 = movecontact

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;RunBackB
[State -1]
type = ChangeState
value = 8085
triggerall = Var(19) = 1
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "Bxy"
trigger2 = command = "Bz"

;RBBJ
[State -1]
type = ChangeState
value = 8085
triggerall = Var(19) = 1
triggerall = command != "holddown"
trigger1 = command = "Bxy"
trigger1 = stateno = 5277
trigger2 = command = "Bxy"
trigger2 = stateno = 5299
trigger3 = command = "Bz"
trigger3 = stateno = 5277
trigger4 = command = "Bz"
trigger4 = stateno = 5299

;===========================================================================
;---------------------------------------------------------------------------
;PowerA
[State -1]
type = ChangeState
value = 504
triggerall = power !=3000
triggerall = NumExplod(900) != 1
triggerall = NumExplod(910) != 1
triggerall = NumExplod(930) != 1
trigger1 = statetype = S
triggerall = ctrl = 1
trigger1 = command = "hold_x"
trigger1 = command = "hold_y"
trigger1 = command = "hold_a"
trigger2 = statetype = C
trigger2 = command = "holddown"
trigger2 = command = "hold_z"

;PowerAR
[State -1]
type = ChangeState
value = 504
triggerall = power !=3000
triggerall = NumExplod(900) != 1
triggerall = NumExplod(910) != 1
triggerall = NumExplod(930) != 1
triggerall = stateno = 100
triggerall = ctrl = 0
trigger1 = command = "hold_x"
trigger1 = command = "hold_y"
trigger1 = command = "hold_a"
trigger2 = command = "holddown"
trigger2 = command = "hold_z"

;PowerAJ
[State -1]
type = ChangeState
value = 504
triggerall = power !=3000
triggerall = NumExplod(900) != 1
triggerall = NumExplod(910) != 1
triggerall = NumExplod(930) != 1
trigger1 = stateno = 5277
trigger1 = command = "hold_x"
trigger1 = command = "hold_y"
trigger1 = command = "hold_a"
trigger2 = stateno = 5299
trigger2 = command = "hold_x"
trigger2 = command = "hold_y"
trigger2 = command = "hold_a"
trigger3 = stateno = 5277
trigger3 = command = "holddown"
trigger3 = command = "hold_z"
trigger4 = stateno = 5299
trigger4 = command = "holddown"
trigger4 = command = "hold_z"
trigger5 = anim = 11
trigger5 = command = "holddown"
trigger5 = command = "hold_z"

;---------------------------------------------------------------------------
;SPG_CBB
[State -1]
type = ChangeState
value = 503
triggerall = Var(19) = 1
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "xy"
trigger2 = command = "z"

;SPG_CBB
[State -1]
type = ChangeState
value = 503
triggerall = Var(19) = 1
triggerall = stateno = 100
triggerall = statetype != A
triggerall = ctrl = 0
trigger1 = command = "Fxy"
trigger2 = command = "Fz"

;---------------------------------------------------------------------------
;SPG_CJBB
[State -1]
type = ChangeState
value = 503
triggerall = Var(19) = 1
triggerall = command != "holddown"
trigger1 = command = "xy"
trigger1 = stateno = 5277
trigger2 = command = "Bxy"
trigger2 = stateno = 5299
trigger3 = command = "z"
trigger3 = stateno = 5277
trigger4 = command = "z"
trigger4 = stateno = 5299

;---------------------------------------------------------------------------
;SPG_BG
[State -1]
type = ChangeState
value = 50211
triggerall = statetype != A
triggerall = anim = 150
triggerall = power >= 500
triggerall = NumExplod(900) != 1
triggerall = NumExplod(910) != 1
triggerall = NumExplod(930) != 1
trigger1 = command = "Bxy"
trigger2 = command = "Bz"
trigger3 = command = "BD"
trigger3 = command = "xy"
trigger4 = command = "BD"
trigger4 = command = "z"

;SPG_BG
[State -1]
type = ChangeState
value = 50211
triggerall = statetype != A
triggerall = anim = 151
triggerall = power >= 500
triggerall = NumExplod(900) != 1
triggerall = NumExplod(910) != 1
triggerall = NumExplod(930) != 1
trigger1 = command = "Bxy"
trigger2 = command = "Bz"
trigger3 = command = "BD"
trigger3 = command = "xy"
trigger4 = command = "BD"
trigger4 = command = "z"

;--------------------------------------------------------------------------
;SPG_A
[State -1]
type = ChangeState
value = 501
triggerall = Var(19) != 1
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "Fxy"
trigger2 = command = "Fz"

;SPG_AJ
[State -1]
type = ChangeState
value = 501
triggerall = Var(19) != 1
triggerall = command != "holddown"
trigger1 = command = "Fxy"
trigger1 = stateno = 5277
trigger2 = command = "Fxy"
trigger2 = stateno = 5299
trigger3 = command = "Fz"
trigger3 = stateno = 5277
trigger4 = command = "Fz"
trigger4 = stateno = 5299

;SPG_AR
[State -1]
type = ChangeState
value = 50112
triggerall = Var(19) != 1
triggerall = stateno = 100
triggerall = statetype != A
triggerall = ctrl = 0
trigger1 = command = "Fxy"
trigger2 = command = "Fz"


;SPG_AG
[State -1]
type = ChangeState
value = 50111
triggerall = statetype != A
triggerall = anim = 150
triggerall = power >= 500
triggerall = NumExplod(900) != 1
triggerall = NumExplod(910) != 1
triggerall = NumExplod(930) != 1
trigger1 = command = "xy"
trigger2 = command = "z"

;SPG_AG
[State -1]
type = ChangeState
value = 50111
triggerall = statetype != A
triggerall = anim = 151
triggerall = power >= 500
triggerall = NumExplod(900) != 1
triggerall = NumExplod(910) != 1
triggerall = NumExplod(930) != 1
trigger1 = command = "xy"
trigger2 = command = "z"

;---------------------------------------------------------------------------
;SPG_C
[State -1]
type = ChangeState
value = 503
triggerall = Var(19) != 1
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "Bxy"
trigger2 = command = "Bz"

;---------------------------------------------------------------------------
;SPG_CJ
[State -1]
type = ChangeState
value = 503
triggerall = Var(19) != 1
triggerall = command != "holddown"
trigger1 = command = "Bxy"
trigger1 = stateno = 5277
trigger2 = command = "Bxy"
trigger2 = stateno = 5299
trigger3 = command = "Bz"
trigger3 = stateno = 5277
trigger4 = command = "Bz"
trigger4 = stateno = 5299

;---------------------------------------------------------------------------
;SPG_B
[State -1]
type = ChangeState
value = 502
triggerall = Var(19) != 1
triggerall = statetype != A
trigger1 = command != "holddown"
trigger1 = ctrl = 1
trigger1 = command = "xy"
trigger2 = command != "holddown"
trigger2 = ctrl = 1
trigger2 = command = "z"

;SPG_B
[State -1]
type = ChangeState
value = 502
triggerall = statetype != A
triggerall = alive = 1
trigger1 = anim >= 5090
trigger1 = anim <= 5105
trigger1 = command = "xy"
trigger2 = anim >= 5090
trigger2 = anim <= 5105
trigger2 = command = "z"
trigger3 = anim >= 5090
trigger3 = anim <= 5105
trigger3 = command = "ab"
trigger4 = anim >= 5110
trigger4 = time <=5
trigger4 = command = "z"
trigger5 = anim >= 5110
trigger5 = time <=5
trigger5 = command = "xy"
trigger6 = anim >= 5110
trigger6 = time <=5
trigger6 = command = "ab"



;SPG_BJ
[State -1]
type = ChangeState
value = 502
triggerall = Var(19) != 1
triggerall = command != "holddown"
trigger1 = command = "xy"
trigger1 = stateno = 5277
trigger2 = command = "xy"
trigger2 = stateno = 5299
trigger3 = command = "z"
trigger3 = stateno = 5277
trigger4 = command = "z"
trigger4 = stateno = 5299

;---------------------------------------------------------------------------
;StCD
[State -1]
type = ChangeState
value = 529
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = command = "c"
trigger1 = command != "b"
trigger2 = command = "ab"

;StCDR
[State -1]
type = ChangeState
value = 529
triggerall = stateno =100
triggerall = ctrl = 0
trigger1 = command = "c"
trigger1 = command != "b"
trigger2 = command = "ab"

;StCD
[State -1]
type = ChangeState
value = 529
triggerall = command != "holddown"
trigger1 = stateno =5277
trigger1 = command = "c"
trigger1 = command != "b"
trigger2 = stateno =5299
trigger2 = command = "c"
trigger2 = command != "b"
trigger3 = stateno =5277
trigger3 = command = "ab"
trigger4 = stateno =5299
trigger4 = command = "ab"

;---------------------------------------------------------------------------
;StCDCERG
[State -1]
type = ChangeState
value = 5291
triggerall = statetype != A
triggerall = anim = 150
triggerall = power >= 500
triggerall = NumExplod(900) != 1
triggerall = NumExplod(910) != 1
triggerall = NumExplod(930) != 1
trigger1 = command = "c"
trigger1 = command != "b"
trigger2 = command = "ab"

;---------------------------------------------------------------------------
;StCDCERG
[State -1]
type = ChangeState
value = 5291
triggerall = statetype != A
triggerall = anim = 151
triggerall = power >= 500
triggerall = NumExplod(900) != 1
triggerall = NumExplod(910) != 1
triggerall = NumExplod(930) != 1
trigger1 = command = "c"
trigger1 = command != "b"
trigger2 = command = "ab"

;---------------------------------------------------------------------------
;Fy
[State -1]
type = ChangeState
value = 551
triggerall = movecontact = 0
triggerall = command = "holdfwdy"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 5277
trigger3 = stateno = 5299
trigger4 = stateno = 100
trigger5 = anim = 11

;---------------------------------------------------------------------------
;Fy
[State -1]
type = ChangeState
value = 5511
triggerall = command = "holdfwdy"
triggerall = statetype != A
trigger1 = stateno = 5277
trigger2 = stateno = 5277
trigger3 = stateno = 5299
trigger4 = stateno = 100
trigger5 = anim = 11
trigger6 = stateno = 510
trigger6 = movecontact
trigger7 = stateno = 514
trigger7 = movecontact
trigger8 = stateno = 515
trigger8 = movecontact
trigger9 = stateno = 520
trigger9 = movecontact
trigger10 = stateno = 523
trigger10 = movecontact
trigger11 = stateno = 524
trigger11 = movecontact
trigger12 = stateno = 5281
trigger12 = movecontact
trigger13 = stateno = 5282
trigger13 = movecontact
trigger14 = stateno = 5292
trigger14 = movecontact
trigger15 = stateno = 5293
trigger15 = movecontact
trigger16 = stateno = 5294
trigger16 = movecontact
trigger17 = NumExplod(900) = 1
trigger17 = movecontact

;---------------------------------------------------------------------------
;NFA
[State -1]
type = ChangeState
value = 548
triggerall = statetype = S
triggerall = stateno != 100
triggerall = P2movetype != H
triggerall = P2statetype != A
triggerall = P2bodydist X <= 6
triggerall = ctrl = 1
trigger1 = command = "fwd_a"
trigger2 = command = "back_a"
trigger3 = command = "fwd_b"
trigger4 = command = "back_b"


;---------------------------------------------------------------------------
;Stx
[State -1]
type = ChangeState
value = 510
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 510
trigger2 = movecontact
trigger2 = time >=6
trigger3 = stateno = 510
trigger3 = time >=10
trigger4 = P2bodydist X >= -10
trigger4 = P2bodydist X <= 22
trigger4 = stateno = 5277
trigger5 = stateno = 5299
trigger6 = stateno = 100
trigger7 = NumExplod(900) = 1
trigger7 = movecontact

;---------------------------------------------------------------------------
;Styn
[State -1]
type = ChangeState
value = 515
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X >= -10
triggerall = P2bodydist X <= 22
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 5277
trigger3 = stateno = 5299
trigger4 = stateno = 100
trigger5 = NumExplod(900) = 1
trigger5 = movecontact

;---------------------------------------------------------------------------
;Sty
[State -1]
type = ChangeState
value = 516
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X >= 23
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 100
trigger3 = NumExplod(900) = 1
trigger3 = movecontact

;---------------------------------------------------------------------------
;StAn
[State -1]
type = ChangeState
value = 520
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X >= -10
triggerall = P2bodydist X <= 22
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 5277
trigger3 = stateno = 5299
trigger4 = stateno = 100
trigger5 = NumExplod(900) = 1
trigger5 = movecontact

[State -1]
type = ChangeState
triggerall = stateno = 503
triggerall = time <= 26
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "a"
trigger4 = command = "b"
trigger4 = command != "c"
value = 5202

;---------------------------------------------------------------------------
;StA
[State -1]
type = ChangeState
value = 521
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X >= 23
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 100
trigger3 = NumExplod(900) = 1
trigger3 = movecontact

;---------------------------------------------------------------------------
;Stbn
[State -1]
type = ChangeState
value = 524
triggerall = command = "b"
triggerall = command != "c"
triggerall = command != "holddown"
triggerall = P2bodydist X >= -10
triggerall = P2bodydist X <= 22
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 5277
trigger3 = stateno = 5299
trigger4 = stateno = 100
trigger5 = NumExplod(900) = 1
trigger5 = movecontact

;---------------------------------------------------------------------------
;Stb
[State -1]
type = ChangeState
value = 525
triggerall = command = "b"
triggerall = command != "c"
triggerall = command != "holddown"
triggerall = P2bodydist X >= 23
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 100
trigger3 = NumExplod(900) = 1
trigger3 = movecontact

;---------------------------------------------------------------------------
;CX
[State -1]
type = ChangeState
value = 514
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 514
trigger2 = movecontact
trigger2 = time >=6
trigger3 = stateno = 514
trigger3 = time >=8
trigger4 = stateno = 100
trigger5 = anim = 11
trigger6 = stateno = 519
trigger6 = movecontact
trigger7 = NumExplod(900) = 1
trigger7 = movecontact

;---------------------------------------------------------------------------
;CY
[State -1]
type = ChangeState
value = 519
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 100
trigger3 = anim = 11
trigger4 = NumExplod(900) = 1
trigger4 = movecontact

;---------------------------------------------------------------------------
;CB
[State -1]
type = ChangeState
value = 528
triggerall = command = "b"
triggerall = command != "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 100
trigger3 = anim = 11
trigger4 = NumExplod(900) = 1
trigger4 = movecontact

;---------------------------------------------------------------------------
;CA
[State -1]
type = ChangeState
value = 523
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 100
trigger3 = anim = 11
trigger4 = NumExplod(900) = 1
trigger4 = movecontact

;---------------------------------------------------------------------------
;JCD
[State -1]
type = ChangeState
value = 530
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = command = "c"
trigger1 = command != "b"
trigger2 = command = "ab"
trigger3 = NumExplod(900) = 1
trigger3 = movecontact

;---------------------------------------------------------------------------
;Jx
[State -1]
type = ChangeState
value = 513
triggerall = command = "x"
triggerall = statetype = A
triggerall = anim != 105
trigger1 = ctrl = 1
trigger2 = NumExplod(900) = 1
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jy
[State -1]
type = ChangeState
value = 518
triggerall = command = "y"
triggerall = statetype = A
triggerall = anim != 105
trigger1 = ctrl = 1
trigger2 = NumExplod(900) = 1
trigger2 = movecontact

;---------------------------------------------------------------------------
;JA
[State -1]
type = ChangeState
value = 522
triggerall = command = "a"
triggerall = statetype = A
triggerall = anim != 105
trigger1 = ctrl = 1
trigger2 = NumExplod(900) = 1
trigger2 = movecontact

;---------------------------------------------------------------------------
;JB
[State -1]
type = ChangeState
value = 527
triggerall = command = "b"
triggerall = command != "c"
triggerall = statetype = A
triggerall = anim != 105
trigger1 = ctrl = 1
trigger2 = NumExplod(900) = 1
trigger2 = movecontact

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = statetype = C
triggerall = command = "holddown"
triggerall = command = "c"
triggerall = command != "b"
trigger1 = ctrl = 1
trigger2 = NumExplod(900) = 1
trigger2 = movecontact




