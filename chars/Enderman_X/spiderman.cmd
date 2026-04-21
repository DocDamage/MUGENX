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
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
;

;-| Supers |-----------------------------------------------------------
[Command]
name = "meteo"
command = ~D, DF, F, z+c
time = 40

[Command]
name = "qcf_2p"
command = ~D, DF, F, x+y

[Command]
name = "qcf_2p"
command = ~D, DF, F, x+z

[Command]
name = "qcf_2p"
command = ~D, DF, F, y+z

[Command]
name = "qcb_2p"
command = ~D, DB, B, x+y

[Command]
name = "qcb_2p"
command = ~D, DB, B, x+z

[Command]
name = "qcb_2p"
command = ~D, DB, B, y+z

[Command]
name = "qcf_2k"
command = ~D, DF, F, a+b

[Command]
name = "qcf_2k"
command = ~D, DF, F, a+c

[Command]
name = "qcf_2k"
command = ~D, DF, F, b+c

[Command]
name = "qcb_2k"
command = ~D, DB, B, a+b

[Command]
name = "qcb_2k"
command = ~D, DB, B, a+c

[Command]
name = "qcb_2k"
command = ~D, DB, B, b+c

;-| Specials |-----------------------------------------------------------

[Command]
name = "hcb_x"
command = ~F, D, B, x

[Command]
name = "hcb_x"
command = ~F, DF, D, DB, B, x

[Command]
name = "hcb_y"
command = ~F, D, B, y

[Command]
name = "hcb_y"
command = ~F, DF, D, DB, B, y

[Command]
name = "hcb_z"
command = ~F, D, B, z

[Command]
name = "hcb_z"
command = ~F, DF, D, DB, B, z

[Command]
name = "qcf_x"
command = ~D, DF, F, x

[Command]
name = "qcf_y"
command = ~D, DF, F, y

[Command]
name = "qcf_z"
command = ~D, DF, F, z

[Command]
name = "anti_x"
command = ~F, D, F, x

[Command]
name = "anti_y"
command = ~F, D, F, y

[Command]
name = "anti_z"
command = ~F, D, F, z

[Command]
name = "qcf_a"
command = ~D, DF, F, a

[Command]
name = "qcf_b"
command = ~D, DF, F, b

[Command]
name = "qcf_c"
command = ~D, DF, F, c

[Command]
name = "qcb_a"
command = ~D, DB, B, a

[Command]
name = "qcb_b"
command = ~D, DB, B, b

[Command]
name = "qcb_c"
command = ~D, DB, B, c

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| Super Jump |-----------------------------------------------------------
[Command]
name = "DU"
command = D, U
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
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

;--{Super Attacks}-------------------------
[State -1, ]
type = ChangeState
value = 2000
triggerall = power >= 1000
triggerall = command = "qcf_2p"
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movehit = 1
trigger3 = stateno = 210
trigger3 = movehit = 1
trigger4 = stateno = 220
trigger4 = movehit = 1
trigger5 = stateno = 230
trigger5 = movehit = 1
trigger6 = stateno = 240
trigger6 = movehit = 1
trigger7 = stateno = 250
trigger7 = movehit = 1
trigger8 = stateno = 400
trigger8 = movehit = 1
trigger9 = stateno = 410
trigger9 = movehit = 1
trigger10= stateno = 420
trigger10= movehit = 1
trigger11= stateno = 430
trigger11= movehit = 1
trigger12= stateno = 440
trigger12= movehit = 1
trigger13= stateno = 450
trigger13= movehit = 1
trigger14= stateno = 600
trigger14= movehit = 1
trigger15= stateno = 610
trigger15= movehit = 1
trigger16= stateno = 620
trigger16= movehit = 1
trigger17= stateno = 630
trigger17= movehit = 1
trigger18= stateno = 640
trigger18= movehit = 1
trigger19= stateno = 650
trigger19= movehit = 1

[State -1, ]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = command = "qcf_2k"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movehit = 1
trigger3 = stateno = 210
trigger3 = movehit = 1
trigger4 = stateno = 220
trigger4 = movehit = 1
trigger5 = stateno = 230
trigger5 = movehit = 1
trigger6 = stateno = 240
trigger6 = movehit = 1
trigger7 = stateno = 250
trigger7 = movehit = 1
trigger8 = stateno = 400
trigger8 = movehit = 1
trigger9 = stateno = 410
trigger9 = movehit = 1
trigger10= stateno = 420
trigger10= movehit = 1
trigger11= stateno = 430
trigger11= movehit = 1
trigger12= stateno = 440
trigger12= movehit = 1
trigger13= stateno = 450
trigger13= movehit = 1

[State -1, ]
type = ChangeState
value = 4000
triggerall = power >= 1000
triggerall = command = "qcb_2p"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movehit = 1
trigger3 = stateno = 210
trigger3 = movehit = 1
trigger4 = stateno = 220
trigger4 = movehit = 1
trigger5 = stateno = 230
trigger5 = movehit = 1
trigger6 = stateno = 240
trigger6 = movehit = 1
trigger7 = stateno = 250
trigger7 = movehit = 1
trigger8 = stateno = 400
trigger8 = movehit = 1
trigger9 = stateno = 410
trigger9 = movehit = 1
trigger10= stateno = 420
trigger10= movehit = 1
trigger11= stateno = 430
trigger11= movehit = 1
trigger12= stateno = 440
trigger12= movehit = 1
trigger13= stateno = 450
trigger13= movehit = 1

[State -1, ]
type = ChangeState
value = 7000
triggerall = power >= 1000
triggerall = command = "qcb_2k"
triggerall = statetype != A
triggerall = palno = [7,9]
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movehit = 1
trigger3 = stateno = 210
trigger3 = movehit = 1
trigger4 = stateno = 220
trigger4 = movehit = 1
trigger5 = stateno = 230
trigger5 = movehit = 1
trigger6 = stateno = 240
trigger6 = movehit = 1
trigger7 = stateno = 250
trigger7 = movehit = 1
trigger8 = stateno = 400
trigger8 = movehit = 1
trigger9 = stateno = 410
trigger9 = movehit = 1
trigger10= stateno = 420
trigger10= movehit = 1
trigger11= stateno = 430
trigger11= movehit = 1
trigger12= stateno = 440
trigger12= movehit = 1
trigger13= stateno = 450
trigger13= movehit = 1
trigger14= stateno = 3000
trigger14= movehit = 1

[State -1, ]
type = ChangeState
value = 6000
triggerall = power >= 3000
triggerall = command = "meteo"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movehit = 1
trigger3 = stateno = 210
trigger3 = movehit = 1
trigger4 = stateno = 220
trigger4 = movehit = 1
trigger5 = stateno = 230
trigger5 = movehit = 1
trigger6 = stateno = 240
trigger6 = movehit = 1
trigger7 = stateno = 250
trigger7 = movehit = 1
trigger8 = stateno = 400
trigger8 = movehit = 1
trigger9 = stateno = 410
trigger9 = movehit = 1
trigger10= stateno = 420
trigger10= movehit = 1
trigger11= stateno = 430
trigger11= movehit = 1
trigger12= stateno = 440
trigger12= movehit = 1
trigger13= stateno = 450
trigger13= movehit = 1

;--{Special Attacks}-------------------------
[State -1, ]
type = ChangeState
value = 1500
triggerall = command = "hcb_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movehit = 1
trigger3 = stateno = 210
trigger3 = movehit = 1
trigger4 = stateno = 220
trigger4 = movehit = 1
trigger5 = stateno = 230
trigger5 = movehit = 1
trigger6 = stateno = 240
trigger6 = movehit = 1
trigger7 = stateno = 250
trigger7 = movehit = 1
trigger8 = stateno = 400
trigger8 = movehit = 1
trigger9 = stateno = 410
trigger9 = movehit = 1
trigger10= stateno = 420
trigger10= movehit = 1
trigger11= stateno = 430
trigger11= movehit = 1
trigger12= stateno = 440
trigger12= movehit = 1
trigger13= stateno = 450
trigger13= movehit = 1

[State -1, ]
type = ChangeState
value = 1510
triggerall = command = "hcb_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movehit = 1
trigger3 = stateno = 210
trigger3 = movehit = 1
trigger4 = stateno = 220
trigger4 = movehit = 1
trigger5 = stateno = 230
trigger5 = movehit = 1
trigger6 = stateno = 240
trigger6 = movehit = 1
trigger7 = stateno = 250
trigger7 = movehit = 1
trigger8 = stateno = 400
trigger8 = movehit = 1
trigger9 = stateno = 410
trigger9 = movehit = 1
trigger10= stateno = 420
trigger10= movehit = 1
trigger11= stateno = 430
trigger11= movehit = 1
trigger12= stateno = 440
trigger12= movehit = 1
trigger13= stateno = 450
trigger13= movehit = 1

[State -1, ]
type = ChangeState
value = 1520
triggerall = command = "hcb_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movehit = 1
trigger3 = stateno = 210
trigger3 = movehit = 1
trigger4 = stateno = 220
trigger4 = movehit = 1
trigger5 = stateno = 230
trigger5 = movehit = 1
trigger6 = stateno = 240
trigger6 = movehit = 1
trigger7 = stateno = 250
trigger7 = movehit = 1
trigger8 = stateno = 400
trigger8 = movehit = 1
trigger9 = stateno = 410
trigger9 = movehit = 1
trigger10= stateno = 420
trigger10= movehit = 1
trigger11= stateno = 430
trigger11= movehit = 1
trigger12= stateno = 440
trigger12= movehit = 1
trigger13= stateno = 450
trigger13= movehit = 1

[State -1, ]
type = ChangeState
value = 1400
triggerall = command = "anti_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movehit = 1
trigger3 = stateno = 210
trigger3 = movehit = 1
trigger4 = stateno = 220
trigger4 = movehit = 1
trigger5 = stateno = 230
trigger5 = movehit = 1
trigger6 = stateno = 240
trigger6 = movehit = 1
trigger7 = stateno = 250
trigger7 = movehit = 1
trigger8 = stateno = 400
trigger8 = movehit = 1
trigger9 = stateno = 410
trigger9 = movehit = 1
trigger10= stateno = 420
trigger10= movehit = 1
trigger11= stateno = 430
trigger11= movehit = 1
trigger12= stateno = 440
trigger12= movehit = 1
trigger13= stateno = 450
trigger13= movehit = 1

[State -1, ]
type = ChangeState
value = 1410
triggerall = command = "anti_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movehit = 1
trigger3 = stateno = 210
trigger3 = movehit = 1
trigger4 = stateno = 220
trigger4 = movehit = 1
trigger5 = stateno = 230
trigger5 = movehit = 1
trigger6 = stateno = 240
trigger6 = movehit = 1
trigger7 = stateno = 250
trigger7 = movehit = 1
trigger8 = stateno = 400
trigger8 = movehit = 1
trigger9 = stateno = 410
trigger9 = movehit = 1
trigger10= stateno = 420
trigger10= movehit = 1
trigger11= stateno = 430
trigger11= movehit = 1
trigger12= stateno = 440
trigger12= movehit = 1
trigger13= stateno = 450
trigger13= movehit = 1

[State -1, ]
type = ChangeState
value = 1420
triggerall = command = "anti_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movehit = 1
trigger3 = stateno = 210
trigger3 = movehit = 1
trigger4 = stateno = 220
trigger4 = movehit = 1
trigger5 = stateno = 230
trigger5 = movehit = 1
trigger6 = stateno = 240
trigger6 = movehit = 1
trigger7 = stateno = 250
trigger7 = movehit = 1
trigger8 = stateno = 400
trigger8 = movehit = 1
trigger9 = stateno = 410
trigger9 = movehit = 1
trigger10= stateno = 420
trigger10= movehit = 1
trigger11= stateno = 430
trigger11= movehit = 1
trigger12= stateno = 440
trigger12= movehit = 1
trigger13= stateno = 450
trigger13= movehit = 1

[State -1, ]
type = ChangeState
value = 1000
triggerall = NumHelper(1005) = 0
triggerall = command = "qcf_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movehit = 1
trigger3 = stateno = 210
trigger3 = movehit = 1
trigger4 = stateno = 220
trigger4 = movehit = 1
trigger5 = stateno = 230
trigger5 = movehit = 1
trigger6 = stateno = 240
trigger6 = movehit = 1
trigger7 = stateno = 250
trigger7 = movehit = 1
trigger8 = stateno = 400
trigger8 = movehit = 1
trigger9 = stateno = 410
trigger9 = movehit = 1
trigger10= stateno = 420
trigger10= movehit = 1
trigger11= stateno = 430
trigger11= movehit = 1
trigger12= stateno = 440
trigger12= movehit = 1
trigger13= stateno = 450
trigger13= movehit = 1

[State -1, ]
type = ChangeState
value = 1010
triggerall = NumHelper(1005) = 0
triggerall = command = "qcf_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movehit = 1
trigger3 = stateno = 210
trigger3 = movehit = 1
trigger4 = stateno = 220
trigger4 = movehit = 1
trigger5 = stateno = 230
trigger5 = movehit = 1
trigger6 = stateno = 240
trigger6 = movehit = 1
trigger7 = stateno = 250
trigger7 = movehit = 1
trigger8 = stateno = 400
trigger8 = movehit = 1
trigger9 = stateno = 410
trigger9 = movehit = 1
trigger10= stateno = 420
trigger10= movehit = 1
trigger11= stateno = 430
trigger11= movehit = 1
trigger12= stateno = 440
trigger12= movehit = 1
trigger13= stateno = 450
trigger13= movehit = 1

[State -1, ]
type = ChangeState
value = 1020
triggerall = NumHelper(1005) = 0
triggerall = command = "qcf_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movehit = 1
trigger3 = stateno = 210
trigger3 = movehit = 1
trigger4 = stateno = 220
trigger4 = movehit = 1
trigger5 = stateno = 230
trigger5 = movehit = 1
trigger6 = stateno = 240
trigger6 = movehit = 1
trigger7 = stateno = 250
trigger7 = movehit = 1
trigger8 = stateno = 400
trigger8 = movehit = 1
trigger9 = stateno = 410
trigger9 = movehit = 1
trigger10= stateno = 420
trigger10= movehit = 1
trigger11= stateno = 430
trigger11= movehit = 1
trigger12= stateno = 440
trigger12= movehit = 1
trigger13= stateno = 450
trigger13= movehit = 1

[State -1, ]
type = ChangeState
value = 1100
triggerall = NumHelper(1005) = 0
triggerall = command = "qcf_x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movehit = 1
trigger3 = stateno = 610
trigger3 = movehit = 1
trigger4 = stateno = 620
trigger4 = movehit = 1
trigger5 = stateno = 630
trigger5 = movehit = 1
trigger6 = stateno = 640
trigger6 = movehit = 1
trigger7 = stateno = 650
trigger7 = movehit = 1

[State -1, ]
type = ChangeState
value = 1110
triggerall = NumHelper(1005) = 0
triggerall = command = "qcf_y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movehit = 1
trigger3 = stateno = 610
trigger3 = movehit = 1
trigger4 = stateno = 620
trigger4 = movehit = 1
trigger5 = stateno = 630
trigger5 = movehit = 1
trigger6 = stateno = 640
trigger6 = movehit = 1
trigger7 = stateno = 650
trigger7 = movehit = 1

[State -1, ]
type = ChangeState
value = 1120
triggerall = NumHelper(1005) = 0
triggerall = command = "qcf_z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movehit = 1
trigger3 = stateno = 610
trigger3 = movehit = 1
trigger4 = stateno = 620
trigger4 = movehit = 1
trigger5 = stateno = 630
trigger5 = movehit = 1
trigger6 = stateno = 640
trigger6 = movehit = 1
trigger7 = stateno = 650
trigger7 = movehit = 1

;Wall Cling (back)
[State -1]
type = ChangeState
value = 1200
triggerall = command = "holdfwd"
triggerall = stateno != 102
trigger1 = Pos Y < -50
trigger1 = Pos Y > -300
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger1 = BackEdgeDist < 2
trigger1 = Stateno != 1201
trigger1 = Stateno != 1202
trigger1 = Stateno != 1210

;Wall Cling (front)
[State -1]
type = ChangeState
value = 1210
triggerall = command = "holdback"
triggerall = stateno != 102
trigger1 = Pos Y < -50
trigger1 = Pos Y > -300
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger1 = FrontEdgeDist < 2
trigger1 = Stateno != 1200
trigger1 = Stateno != 1201
trigger1 = Stateno != 1202

[State -1, ]
type = ChangeState
value = 1300
triggerall = command = "qcb_a"
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movehit = 1
trigger3 = stateno = 210
trigger3 = movehit = 1
trigger4 = stateno = 220
trigger4 = movehit = 1
trigger5 = stateno = 230
trigger5 = movehit = 1
trigger6 = stateno = 240
trigger6 = movehit = 1
trigger7 = stateno = 250
trigger7 = movehit = 1
trigger8 = stateno = 400
trigger8 = movehit = 1
trigger9 = stateno = 410
trigger9 = movehit = 1
trigger10= stateno = 420
trigger10= movehit = 1
trigger11= stateno = 430
trigger11= movehit = 1
trigger12= stateno = 440
trigger12= movehit = 1
trigger13= stateno = 450
trigger13= movehit = 1
trigger14= stateno = 600
trigger14= movehit = 1
trigger15= stateno = 610
trigger15= movehit = 1
trigger16= stateno = 620
trigger16= movehit = 1
trigger17= stateno = 630
trigger17= movehit = 1
trigger18= stateno = 640
trigger18= movehit = 1
trigger19= stateno = 650
trigger19= movehit = 1

[State -1, ]
type = ChangeState
value = 1310
triggerall = command = "qcb_b"
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movehit = 1
trigger3 = stateno = 210
trigger3 = movehit = 1
trigger4 = stateno = 220
trigger4 = movehit = 1
trigger5 = stateno = 230
trigger5 = movehit = 1
trigger6 = stateno = 240
trigger6 = movehit = 1
trigger7 = stateno = 250
trigger7 = movehit = 1
trigger8 = stateno = 400
trigger8 = movehit = 1
trigger9 = stateno = 410
trigger9 = movehit = 1
trigger10= stateno = 420
trigger10= movehit = 1
trigger11= stateno = 430
trigger11= movehit = 1
trigger12= stateno = 440
trigger12= movehit = 1
trigger13= stateno = 450
trigger13= movehit = 1
trigger14= stateno = 600
trigger14= movehit = 1
trigger15= stateno = 610
trigger15= movehit = 1
trigger16= stateno = 620
trigger16= movehit = 1
trigger17= stateno = 630
trigger17= movehit = 1
trigger18= stateno = 640
trigger18= movehit = 1
trigger19= stateno = 650
trigger19= movehit = 1

[State -1, ]
type = ChangeState
value = 1320
triggerall = command = "qcb_c"
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movehit = 1
trigger3 = stateno = 210
trigger3 = movehit = 1
trigger4 = stateno = 220
trigger4 = movehit = 1
trigger5 = stateno = 230
trigger5 = movehit = 1
trigger6 = stateno = 240
trigger6 = movehit = 1
trigger7 = stateno = 250
trigger7 = movehit = 1
trigger8 = stateno = 400
trigger8 = movehit = 1
trigger9 = stateno = 410
trigger9 = movehit = 1
trigger10= stateno = 420
trigger10= movehit = 1
trigger11= stateno = 430
trigger11= movehit = 1
trigger12= stateno = 440
trigger12= movehit = 1
trigger13= stateno = 450
trigger13= movehit = 1
trigger14= stateno = 600
trigger14= movehit = 1
trigger15= stateno = 610
trigger15= movehit = 1
trigger16= stateno = 620
trigger16= movehit = 1
trigger17= stateno = 630
trigger17= movehit = 1
trigger18= stateno = 640
trigger18= movehit = 1
trigger19= stateno = 650
trigger19= movehit = 1

[State -1, ]
type = ChangeState
value = 1600
triggerall = command = "qcf_a"
triggerall = statetype != A
trigger1 = ctrl

[State -1, ]
type = ChangeState
value = 1610
triggerall = command = "qcf_b"
triggerall = statetype != A
trigger1 = ctrl

[State -1, ]
type = ChangeState
value = 1620
triggerall = command = "qcf_c"
triggerall = statetype != A
trigger1 = ctrl

;--{Throw Attacks}-------------------------
[State -1, ]
type = ChangeState
value = 900
triggerall = command != "holddown"
triggerall = statetype = S && p2statetype = S
triggerall = p2bodydist x <= 10
triggerall = ctrl
trigger1 = command = "holdback" && command = "z"
trigger2 = command = "holdback" && command = "c"

[State -1, ]
type = ChangeState
value = 910
triggerall = command != "holddown"
triggerall = statetype = S && p2statetype = S
triggerall = p2bodydist x <= 10
triggerall = ctrl
trigger1 = command = "holdfwd" && command = "z"
trigger2 = command = "holdfwd" && command = "c"

[State -1, ]
type = ChangeState
value = 950
triggerall = pos y <= -30
triggerall = statetype = A && p2statetype = A
triggerall = p2bodydist x <= 10 && p2bodydist y = [-20,20]
triggerall = command = "holdback" && command = "z"
trigger1 = ctrl
trigger2 = stateno = 1300 && movehit = 1
trigger3 = stateno = 1310 && movehit = 1
trigger4 = stateno = 1320 && movehit = 1

[State -1, ]
type = ChangeState
value = 950
triggerall = pos y <= -30
triggerall = statetype = A && p2statetype = A
triggerall = p2bodydist x <= 10 && p2bodydist y = [-20,20]
triggerall = command = "holdback" && command = "c"
trigger1 = ctrl
trigger2 = stateno = 1300 && movehit = 1
trigger3 = stateno = 1310 && movehit = 1
trigger4 = stateno = 1320 && movehit = 1

[State -1, ]
type = ChangeState
value = 960
triggerall = pos y <= -30
triggerall = statetype = A && p2statetype = A
triggerall = p2bodydist x <= 10 && p2bodydist y = [-20,20]
triggerall = command = "holdfwd" && command = "c"
trigger1 = ctrl
trigger2 = stateno = 1300 && movehit = 1
trigger3 = stateno = 1310 && movehit = 1
trigger4 = stateno = 1320 && movehit = 1

;--{Normal Attacks}-------------------------
[State -1, ]
type = ChangeState
value = 200
triggerall = command != "holddown"
trigger1 = command = "x"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, ]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movehit = 1
trigger3 = stateno = 230
trigger3 = movehit = 1

[State -1, ]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movehit = 1
trigger3 = stateno = 210
trigger3 = movehit = 1
trigger4 = stateno = 230
trigger4 = movehit = 1
trigger5 = stateno = 240
trigger5 = movehit = 1

[State -1, ]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movehit = 1

[State -1, ]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movehit = 1
trigger3 = stateno = 210
trigger3 = movehit = 1
trigger4 = stateno = 230
trigger4 = movehit = 1

[State -1, ]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movehit = 1
trigger3 = stateno = 210
trigger3 = movehit = 1
trigger4 = stateno = 220
trigger4 = movehit = 1
trigger5 = stateno = 230
trigger5 = movehit = 1
trigger6 = stateno = 240
trigger6 = movehit = 1
trigger7 = stateno = 410
trigger7 = movehit = 1
trigger8 = stateno = 440
trigger8 = movehit = 1

[State -1, ]
type = ChangeState
value = 400
trigger1 = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, ]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movehit = 1
trigger3 = stateno = 430
trigger3 = movehit = 1

[State -1, ]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movehit = 1
trigger3 = stateno = 410
trigger3 = movehit = 1
trigger4 = stateno = 430
trigger4 = movehit = 1
trigger5 = stateno = 440
trigger5 = movehit = 1

[State -1, ]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movehit = 1

[State -1, ]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movehit = 1
trigger3 = stateno = 410
trigger3 = movehit = 1
trigger4 = stateno = 430
trigger4 = movehit = 1

[State -1, ]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movehit = 1
trigger3 = stateno = 410
trigger3 = movehit = 1
trigger4 = stateno = 420
trigger4 = movehit = 1
trigger5 = stateno = 430
trigger5 = movehit = 1
trigger6 = stateno = 440
trigger6 = movehit = 1

[State -1, ]
type = ChangeState
value = 600
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movehit = 1
trigger3 = stateno = 630
trigger3 = movehit = 1

[State -1, ]
type = ChangeState
value = 620
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movehit = 1
trigger3 = stateno = 610
trigger3 = movehit = 1
trigger4 = stateno = 630
trigger4 = movehit = 1
trigger5 = stateno = 640
trigger5 = movehit = 1

[State -1, ]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movehit = 1

[State -1, ]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movehit = 1
trigger3 = stateno = 610
trigger3 = movehit = 1
trigger4 = stateno = 630
trigger4 = movehit = 1

[State -1, ]
type = ChangeState
value = 650
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movehit = 1
trigger3 = stateno = 610
trigger3 = movehit = 1
trigger4 = stateno = 620
trigger4 = movehit = 1
trigger5 = stateno = 630
trigger5 = movehit = 1
trigger6 = stateno = 640
trigger6 = movehit = 1

[State -1, ]
type = ChangeState
value = 195
triggerall = stateno != 100
triggerall = stateno != 102
triggerall = stateno != 105
triggerall = stateno != 195
trigger1 = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, ]
type = ChangeState
value = 100
triggerall = stateno != 100
triggerall = stateno != 102
triggerall = stateno != 105
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, ]
type = ChangeState
value = 105
triggerall = stateno != 100
triggerall = stateno != 102
triggerall = stateno != 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Super Jump
[State -1, ]
type = ChangeState
value = 700
triggerall = stateno != 100
trigger1 = command = "DU"
trigger1 = statetype != A
trigger1 = ctrl

;-------------------
;MEE Template Files
;   provided by
;  Kitsune Sniper
;       ***
; Thanks, Kitsune!
;-------------------
