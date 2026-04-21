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
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "dra ex1"
command = ~F, DF, D, DB, B, x+y
time = 22
[Command]
name = "dra ex2"
command = ~F, DF, D, DB, B, x+z
time = 22
[Command]
name = "dra ex3"
command = ~F, DF, D, DB, B, y+z
time = 22


[Command]
name = "hadou ex"
command = ~D, DF, F, x+y
time = 15
[Command]
name = "hadou ex"
command = ~D, DF, F, x+z
time = 15
[Command]
name = "hadou ex"
command = ~D, DF, F, y+z
time = 15

[Command]
name = "hadou ex2"
command = ~D, DF, F, a+b
time = 15
[Command]
name = "hadou ex2"
command = ~D, DF, F, a+c
time = 15
[Command]
name = "hadou ex2"
command = ~D, DF, F, b+c
time = 15


[Command]
name = "tatumaki ex"
command = ~D, DB, B, a+b
time = 15
[Command]
name = "tatumaki ex"
command = ~D, DB, B, a+c
time = 15
[Command]
name = "tatumaki ex"
command = ~D, DB, B, b+c
time = 15

[Command]
name = "tatumaki ex2"
command = ~D, DB, B, x+y
time = 15
[Command]
name = "tatumaki ex2"
command = ~D, DB, B, x+z
time = 15
[Command]
name = "tatumaki ex2"
command = ~D, DB, B, y+z
time = 15

[Command]
name = "toriex"
command = ~F, DF, D, DB, B, x+y
time = 25
[Command]
name = "toriex"
command = ~F, DF, D, DB, B, x+z
time = 25
[Command]
name = "toriex"
command = ~F, DF, D, DB, B, y+z
time = 25


;-| Special Motions |------------------------------------------------------
[Command]
name = "dark"
command = ~x, x, F, y, z
time = 30

[Command]
name = "blade X"
command = ~F, D, DF, x
time = 15

[Command]
name = "blade Y"
command = ~F, D, DF, y
time = 15

[Command]
name = "blade Z"
command = ~F, D, DF, z
time = 15

[Command]
name = "fdb"
command = ~F, DF, D, DB, B, x
time = 25

[Command]
name = "fdb"
command = ~F, DF, D, DB, B, y
time = 25

[Command]
name = "fdb"
command = ~F, DF, D, DB, B, z
time = 25

[Command]
name = "tatumaki a"
command = ~D, DB, B, a
time = 15
[Command]
name = "tatumaki b"
command = ~D, DB, B, b
time = 15
[Command]
name = "tatumaki c"
command = ~D, DB, B, c
time = 15

[Command]
name = "soul x"
command = ~D, DF, F, x
time = 12

[Command]
name = "soul y"
command = ~D, DF, F, y
time = 12

[Command]
name = "soul z"
command = ~D, DF, F, z
time = 12


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
name = "recovery";Required (do not remove)
command = x+b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y+b
time = 1

[Command]
name = "x+y+b"
command = x+y+b
time = 1

[Command]
name = "b+y"
command = b+y
time = 1

[Command]
name = "a+x"
command = a+x
time = 1

[Command]
name = "a+b+c"
command = a+b+c
time = 1

[Command]
name = "x+y+z"
command = x+y+z
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "pnage"
command = /F,y
time = 1

[Command]
name = "pnage"
command = /F,z
time = 1

[Command]
name = "pnage2"
command = /B,y
time = 1

[Command]
name = "pnage2"
command = /B,z
time = 1

[Command]
name = "knage"
command = /F,b
time = 1

[Command]
name = "knage"
command = /F,c
time = 1

[Command]
name = "knage2"
command = /B,b
time = 1

[Command]
name = "knage2"
command = /B,c
time = 1

[Command]
name = "asibarai"
command = /DF, z
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

[Command]
name = "uf";Required (do not remove)
command = /UF
time = 1

[Command]
name = "ub";Required (do not remove)
command = /UB
time = 1

[Command]
name = "dash1";Required (do not remove)
command = ~$D,$U 
;time = 1

[Command]
name = "dash2";Required (do not remove)
command = ~12$D,$U 
;time = 1

[Command]
name = "~x"
command = ~x
;time = 1

[Command]
name = "~y"
command = ~y
;time = 1

[Command]
name = "~z"
command = ~z
;time = 1

[Command]
name = "~c"
command = ~c
;time = 1

[Command]
name = "~1"
command = ~F
;time = 1
[Command]
name = "~2"
command = ~DF
;time = 1
[Command]
name = "~3"
command = ~D
;time = 1
[Command]
name = "~4"
command = ~DB
;time = 1
[Command]
name = "~5"
command = ~B
;time = 1
[Command]
name = "~6"
command = ~UB
;time = 1
[Command]
name = "~7"
command = ~U
;time = 1
[Command]
name = "~8"
command = ~UF
;time = 1

[Command]
name = "~$D"
command = ~5$D
;time = 5

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
[Statedef -1];---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;
;---------------------------------------------------------------------------
;
[State -1, Run Fwd]
type = posset
triggerall = var(45) != 0
trigger1 = stateno = 5120
trigger1 = animtime = 0

trigger2 = statetype = A
trigger2 = (stateno = [600,699])||(stateno = [120,158])||(stateno = 50)||(stateno = 42)
trigger2 = pos y >= 0
trigger2 = vel y > 0

trigger3 = statetype = A
trigger3 = (stateno = 1620)||(stateno = 1650)||(stateno = 3203)
trigger3 = pos y >= 0
trigger3 = vel y > 0

trigger4 = statetype = A
trigger4 = anim = 44
trigger4 = pos y >= 0
trigger4 = vel y > 0
y = 0

;---------------------------------------------------------------------------
;
[State -1, Run Fwd]
type = ChangeState
value = var(45)
triggerall = var(45) != 0
trigger1 = stateno = 5120
trigger1 = animtime = 0

trigger2 = statetype = A
trigger2 = (stateno = [600,699])||(stateno = [120,158])||(stateno = 50)||(stateno = 42)
trigger2 = pos y >= 0
trigger2 = vel y > 0

trigger3 = statetype = A
trigger3 = (stateno = 1620)||(stateno = 1650)||(stateno = 3203)
trigger3 = pos y >= 0
trigger3 = vel y > 0

trigger4 = statetype = A
trigger4 = anim = 44
trigger4 = pos y >= 0
trigger4 = vel y > 0

;---------------------------------------------------------------------------
;EX
;---------------------------------------------------------------------------
;hyper
[State -1, Run Fwd]
type = ChangeState
value = 3000
triggerall = var(40) = 0
triggerall = numhelper(3050) = 0
triggerall = command = "hadou ex"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl
trigger3 = stateno = [199,499]

;---------------------------------------------------------------------------
;hyper
[State -1, Run Fwd]
type = ChangeState
value = 3100
triggerall = var(40) = 0
triggerall = command = "hadou ex2"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl
trigger3 = stateno = [199,499]

;---------------------------------------------------------------------------
;hyper
[State -1, Run Fwd]
type = null;ChangeState
value = 3200
triggerall = var(40) = 0
triggerall = numhelper(3250) = 0
triggerall = command = "tatumaki ex"
triggerall = power >= 1000
triggerall = pos y < -50
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]

;---------------------------------------------------------------------------
;hyper
[State -1, Run Fwd]
type = ChangeState
value = 3400
triggerall = numprojid(3400) = 0
triggerall = var(40) = 0
triggerall = command = "tatumaki ex2"
triggerall = power >= 1000
triggerall = pos y < -50
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]

;---------------------------------------------------------------------------
;hyper
[State -1, Run Fwd]
type = ChangeState
value = 3300
triggerall = var(40) = 0
triggerall = numhelper(3350) = 0
triggerall = numhelper(3351) = 0
triggerall = numhelper(3352) = 0
triggerall = command = "dra ex1"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl
trigger3 = stateno = [199,499]
;---------------------------------------------------------------------------
;hyper
[State -1, Run Fwd]
type = ChangeState
value = 3310
triggerall = var(40) = 0
triggerall = numhelper(3350) = 0
triggerall = numhelper(3351) = 0
triggerall = numhelper(3352) = 0
triggerall = command = "dra ex2"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl
trigger3 = stateno = [199,499]
;---------------------------------------------------------------------------
;hyper
[State -1, Run Fwd]
type = ChangeState
value = 3320
triggerall = var(40) = 0
triggerall = numhelper(3350) = 0
triggerall = numhelper(3351) = 0
triggerall = numhelper(3352) = 0
triggerall = command = "dra ex3"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl
trigger3 = stateno = [199,499]


;---------------------------------------------------------------------------
;shouryuken
[State -1, Run Fwd]
type = ChangeState
value = 1000
triggerall = var(40) = 0
triggerall = command = "blade X"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl
trigger3 = stateno = [199,499]

;---------------------------------------------------------------------------
;shouryuken
[State -1, Run Fwd]
type = ChangeState
value = 1010
triggerall = var(40) = 0
triggerall = command = "blade Y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl
trigger3 = stateno = [199,499]

;---------------------------------------------------------------------------
;shouryuken
[State -1, Run Fwd]
type = ChangeState
value = 1020
triggerall = var(40) = 0
triggerall = command = "blade Z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl
trigger3 = stateno = [199,499]

;---------------------------------------------------------------------------
;shouryuken
[State -1, Run Fwd]
type = ChangeState
value = 1050
triggerall = var(40) = 0
triggerall = command = "blade X"
triggerall = pos y < -50
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]

;---------------------------------------------------------------------------
;shouryuken
[State -1, Run Fwd]
type = ChangeState
value = 1060
triggerall = var(40) = 0
triggerall = command = "blade Y"
triggerall = pos y < -50
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]

;---------------------------------------------------------------------------
;shouryuken
[State -1, Run Fwd]
type = ChangeState
value = 1070
triggerall = var(40) = 0
triggerall = command = "blade Z"
triggerall = pos y < -50
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,699]

;---------------------------------------------------------------------------
;blow
[State -1, Run Fwd]
type = ChangeState
value = 1100
triggerall = var(40) = 0
triggerall = command = "tatumaki a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl
trigger3 = stateno = [199,499]
;---------------------------------------------------------------------------
;blow
[State -1, Run Fwd]
type = ChangeState
value = 1110
triggerall = var(40) = 0
triggerall = command = "tatumaki b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl
trigger3 = stateno = [199,499]
;---------------------------------------------------------------------------
;blow
[State -1, Run Fwd]
type = ChangeState
value = 1120
triggerall = var(40) = 0
triggerall = command = "tatumaki c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl
trigger3 = stateno = [199,499]

;---------------------------------------------------------------------------
;
[State -1, Run Fwd]
type = ChangeState
value = 1200
triggerall = var(40) = 0
triggerall = numhelper(2300) = 0
triggerall = command = "soul x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl
trigger3 = stateno = [199,499]

;---------------------------------------------------------------------------
;
[State -1, Run Fwd]
type = ChangeState
value = 1210
triggerall = var(40) = 0
triggerall = numhelper(2300) = 0
triggerall = command = "soul y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl
trigger3 = stateno = [199,499]

;---------------------------------------------------------------------------
;
[State -1, Run Fwd]
type = ChangeState
value = 1220
triggerall = var(40) = 0
triggerall = numhelper(2300) = 0
triggerall = command = "soul z"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl
trigger3 = stateno = [199,499]

;---------------------------------------------------------------------------
;
[State -1, Run Fwd]
type = ChangeState
value = 1400
triggerall = fvar(14) = 0
triggerall = var(40) = 0
triggerall = numhelper(2400) = 0
triggerall = command = "fdb"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl

;---------------------------------------------------------------------------
;tyouhatu
[State -1, Run Fwd]
type = ChangeState
value = 195
triggerall = var(40) = 0
triggerall = command = "start"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl

;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(40) = 0
triggerall = fvar(14) = 0
triggerall = (command = "FF")||(command = "x+y+z")
triggerall = stateno != [100,109]
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(40) = 0
triggerall = fvar(14) = 0
triggerall = command = "BB"
triggerall = stateno != [100,109]
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl

;---------------------------------------------------------------------------

[State -1, 7]
type = ChangeState
triggerall = var(26) = 0
triggerall = movehit
triggerall = command = "a+b+c"
trigger1 = stateno = 250
value = 41
ctrl = 0

;---------------------------------------------------------------------------
;
[State -1, Jump Strong Kick]
type = ChangeState
value = 41
triggerall = command = "a+b+c"
triggerall = var(50) = 0
triggerall = stateno != 20
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = time < 10
trigger2 = stateno = 11
trigger3 = stateno = 10
trigger4 = stateno = 40

;---------------------------------------------------------------------------
;Stand_Throw
;P投げ
[State -1, Standing Throw]
type = ChangeState
value = 500
triggerall = fvar(14) = 0
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != [100,109]
trigger1 = command = "pnage"
trigger1 = abs(p2bodydist X) < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "pnage2"
trigger2 = abs(p2bodydist X) < 9
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;Stand_Throw
;投げ
[State -1, Standing Throw]
type = ChangeState
value = 550
triggerall = fvar(14) = 0
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != [100,109]
trigger1 = command = "knage"
trigger1 = abs(p2bodydist X) < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "knage2"
trigger2 = abs(p2bodydist X) < 9
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;
[State -1, Run Fwd]
type = ChangeState
value = 580
triggerall = numhelper(2043) = 0
triggerall = statetype = A
triggerall = ctrl
triggerall = pos y < -50
triggerall = p2movetype != H
trigger1 = command = "pnage"
trigger1 = abs(p2bodydist X) < 5
trigger1 = abs(p2bodydist y) < 50
trigger1 = p2statetype = A
trigger2 = command = "pnage2"
trigger2 = abs(p2bodydist X) < 9
trigger2 = abs(p2bodydist y) < 50
trigger2 = p2statetype = A

;---------------------------------------------------------------------------
;
[State -1, Run Fwd]
type = ChangeState
value = 580
triggerall = numhelper(2043) = 0
triggerall = anim = 44
triggerall = (stateno = [600,699])||(stateno = 1620)||(stateno = 1650)
triggerall = pos y < -50
triggerall = p2movetype != H
trigger1 = command = "pnage"
trigger1 = abs(p2bodydist X) < 5
trigger1 = abs(p2bodydist y) < 50
trigger1 = p2statetype = A
trigger2 = command = "pnage2"
trigger2 = abs(p2bodydist X) < 9
trigger2 = abs(p2bodydist y) < 50
trigger2 = p2statetype = A

;===========================================================================
;---------------------------------------------------------------------------
;立ち
[State -1, Stand Light Kick]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = (command != "holddown")||(command = "~$D")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl

trigger3 = movecontact = 1
trigger3 = (statetype = S)||(statetype = C)
trigger3 = var(12) < 0

;---------------------------------------------------------------------------
;立ち
[State -1, Stand Light Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = (command != "holddown")||(command = "~$D")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl

trigger3 = movecontact = 1
trigger3 = (statetype = S)||(statetype = C)
trigger3 = var(12) < 10

;--------------------------------------------------------------------------
;立ち強
[State -1, Standing Strong Kick]
type = ChangeState
value = 220+(command = "holdfwd")*5*(var(40) = 0)
triggerall = command = "z"
triggerall = (command != "holddown")||(command = "~$D")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl

trigger3 = movecontact = 1
trigger3 = (statetype = S)||(statetype = C)
trigger3 = var(12) < 20

;---------------------------------------------------------------------------
;立ち
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = (command != "holddown")||(command = "~$D")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl

trigger3 = movecontact = 1
trigger3 = (statetype = S)||(statetype = C)
trigger3 = var(12) < 1
trigger4 = stateno = 230
trigger4 = time > 8

;---------------------------------------------------------------------------
;立ち
[State -1, Stand Light Punch]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = (command != "holddown")||(command = "~$D")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl

trigger3 = movecontact = 1
trigger3 = (statetype = S)||(statetype = C)
trigger3 = var(12) < 11

;--------------------------------------------------------------------------
;立ち強
[State -1, Standing Strong Kick]
type = ChangeState
value = 250+(command = "holdfwd")*5
triggerall = command = "c"
triggerall = (command != "holddown")||(command = "~$D")
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl

trigger3 = movecontact = 1
trigger3 = (statetype = S)||(statetype = C)
trigger3 = var(12) < 21

;---------------------------------------------------------------------------
;しゃがみ弱
[State -1, Crouching Light Kick]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = statetype = S
trigger2 = ctrl

trigger3 = movecontact = 1
trigger3 = (statetype = S)||(statetype = C)
trigger3 = var(12) < 0
trigger4 = stateno = 400
trigger4 = time > 8

;---------------------------------------------------------------------------
;しゃがみ
[State -1, Crouching Strong Kick]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = statetype = S
trigger2 = ctrl

trigger3 = movecontact = 1
trigger3 = (statetype = S)||(statetype = C)
trigger3 = var(12) < 10

;---------------------------------------------------------------------------
;しゃがみ強
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420+(command = "holdfwd")*5*(var(40) = 0)
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = statetype = S
trigger2 = ctrl

trigger3 = movecontact = 1
trigger3 = (statetype = S)||(statetype = C)
trigger3 = var(12) < 20

;---------------------------------------------------------------------------
;しゃがみ弱
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = statetype = S
trigger2 = ctrl

trigger3 = movecontact = 1
trigger3 = (statetype = S)||(statetype = C)
trigger3 = var(12) < 1
;---------------------------------------------------------------------------
;しゃがみ
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = statetype = S
trigger2 = ctrl

trigger3 = movecontact = 1
trigger3 = (statetype = S)||(statetype = C)
trigger3 = var(12) < 11

;---------------------------------------------------------------------------
;しゃがみ強
[State -1, Crouching Strong Punch]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = statetype = S
trigger2 = ctrl

trigger3 = movecontact = 1
trigger3 = (statetype = S)||(statetype = C)
trigger3 = var(12) < 21

;---------------------------------------------------------------------------
;弱
[State -1, Stand Light Kick]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl

trigger2 = (stateno = [600,699])&&(stateno != 600)
trigger2 = anim = 44
trigger2 = var(11)

trigger3 = stateno = 630
trigger3 = time > 7
trigger3 = var(11)

trigger4 = (stateno = 1620)||(stateno = 1650)
trigger4 = anim = 44
trigger4 = var(11)

;---------------------------------------------------------------------------
;
[State -1, Stand Light Kick]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

trigger2 = (stateno = [600,699])&&(stateno != 610)
trigger2 = anim = 44
trigger2 = var(11)

trigger3 = (stateno = 600)||(stateno = 630)
trigger3 = time > 7
trigger3 = var(11)

trigger4 = movecontact = 1
trigger4 = var(12) < 10

trigger5 = (stateno = 1620)||(stateno = 1650)
trigger5 = anim = 44
trigger5 = var(11)

;---------------------------------------------------------------------------
;
[State -1, Stand Light Kick]
type = ChangeState
value = 620+(var(10)>1)*1000
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])&&(stateno != 620)
trigger2 = anim = 44
trigger2 = var(11)

trigger3 = (stateno = 600)||(stateno = 630)
trigger3 = time > 7
trigger3 = var(11)

trigger4 = movecontact = 1
trigger4 = var(12) < 20

trigger5 = stateno = 1650
trigger5 = anim = 44
trigger5 = var(11)

;---------------------------------------------------------------------------
;弱
[State -1, Stand Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl

trigger2 = (stateno = [600,699])&&(stateno != 600)
trigger2 = anim = 44
trigger2 = var(11)

trigger3 = stateno = 600
trigger3 = time > 7
trigger3 = var(11)

trigger4 = movecontact = 1
trigger4 = var(12) < 1

trigger5 = (stateno = 1620)||(stateno = 1650)
trigger5 = anim = 44
trigger5 = var(11)

;---------------------------------------------------------------------------
;
[State -1, Stand Light Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl

trigger2 = (stateno = [600,699])&&(stateno != 600)
trigger2 = anim = 44
trigger2 = var(11)

trigger3 = (stateno = 600)||(stateno = 630)
trigger3 = time > 7
trigger3 = var(11)

trigger4 = movecontact = 1
trigger4 = var(12) < 11

trigger5 = (stateno = 1620)||(stateno = 1650)
trigger5 = anim = 44
trigger5 = var(11)

;---------------------------------------------------------------------------
;
[State -1, Stand Light Kick]
type = ChangeState
value = 650+(var(10)>1)*1000+(numhelper(2220)!= 0)
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl

trigger2 = (stateno = [600,699])&&(stateno != 600)
trigger2 = anim = 44
trigger2 = var(11)

trigger3 = (stateno = 600)||(stateno = 630)
trigger3 = time > 7
trigger3 = var(11)

trigger4 = movecontact = 1
trigger4 = var(12) < 21

trigger5 = stateno = 1620
trigger5 = anim = 44
trigger5 = var(11)

;---------------------------------------------------------------------------

[State -1, 7]
type = ChangeState
triggerall = var(26) = 0
triggerall = movehit
triggerall = (command = "holdup")||(command = "a+b+c")
trigger1 = stateno = 250
value = 41
ctrl = 0

;---------------------------------------------------------------------------
;
[State -1, Jump Strong Kick]
type = ChangeState
value = 40
triggerall = command = "dash2"
triggerall = var(50) = 0
triggerall = ctrl
trigger1 = statetype = S
trigger2 = statetype = C

;---------------------------------------------------------------------------
;
[State -1, Jump Strong Kick]
type = ChangeState
value = 41
triggerall = (command = "dash1")||(command = "a+b+c")
triggerall = command != "dash2"
triggerall = var(50) = 0
triggerall = stateno != 20
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = time < 10
trigger2 = stateno = 11
trigger3 = stateno = 10
trigger4 = stateno = 40

;---------------------------------------------------------------------------

