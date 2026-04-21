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
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands are given below. Delete, add, or modify as you wish.

;-| Super Motions |--------------------------------------------------------

; QCF x 2
[Command]
name = "2QCF_k"
command = ~D, DF, F, a+b
time = 20

[Command]
name = "2QCF_k"
command = ~D, DF, F, b+c
time = 20

[Command]
name = "2QCF_k"
command = ~D, DF, F, a+c
time = 20


; QCF x 2
[Command]
name = "2QCF_p"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "2QCF_p"
command = ~D, DF, F, y+z
time = 20

[Command]
name = "2QCF_p"
command = ~D, DF, F, x+z
time = 20
  

; QCB x 2
[Command]
name = "2QCB_k"
command = ~D, DB, B, a+b
time = 20

[Command]
name = "2QCB_k"
command = ~D, DB, B, a+c
time = 20

[Command]
name = "2QCB_k"
command = ~D, DB, B, b+c
time = 20

; QCB x 2
[Command]
name = "2QCB_p"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "2QCB_p"
command = ~D, DB, B, y+z
time = 20

[Command]
name = "2QCB_p"
command = ~D, DB, B, x+z
time = 20

[Command]
name = "tag1"
command = a+x
time = 35

[Command]
name = "tag2"
command = b+y
time = 35

[Command]
name = "tag3"
command = c+z
time = 35

;-| Special Motions |------------------------------------------------------
;-----------------
; QCF
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
time = 30

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

;-----------------
; QCB
[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

;-----------------
; Uppercut
[Command]
name = "uppercut_a"
command = ~F, D, DF, a

[Command]
name = "uppercut_b"
command = ~F, D, DF, b

[Command]
name = "uppercut_c"
command = ~F, D, DF, c

[Command]
name = "uppercut_x"
command = ~F, D, DF, x
time = 30

[Command]
name = "uppercut_y"
command = ~F, D, DF, y
time = 30

[Command]
name = "uppercut_z"
command = ~F, D, DF, z
time = 30

; Uppercut
[Command]
name = "ruppercut_a"
command = ~B, D, DB, a

[Command]
name = "ruppercut_b"
command = ~B, D, DB, b

[Command]
name = "ruppercut_c"
command = ~B, D, DB, c

[Command]
name = "ruppercut_x"
command = ~B, D, DB, x

[Command]
name = "ruppercut_y"
command = ~B, D, DB, y

[Command]
name = "ruppercut_z"
command = ~B, D, DB, z

;--------------------
;Charge_Down_up
[Command]
name = "chargedownup_a"
command = ~60$D, U, a
time = 10

[Command]
name = "chargedownup_b"
command = ~60$D, U, b
time = 10

[Command]
name = "chargedownup_c"
command = ~60$D, U, c
time = 10

[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10

;--------------------
;Charge_Back_fwd
[Command]
name = "chargebackfwd_a"
command = ~60$B, F, a
time = 10

[Command]
name = "chargebackfwd_b"
command = ~60$B, F, b
time = 10

[Command]
name = "chargebackfwd_c"
command = ~60$B, F, c
time = 10

[Command]
name = "chargebackfwd_x"
command = ~60$B, F, x
time = 10

[Command]
name = "chargebackfwd_y"
command = ~60$B, F, y
time = 10

[Command]
name = "chargebackfwd_z"
command = ~60$B, F, z
time = 10

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

[Command]
name = "tag"
command = c+z
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
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_z"
command = /B,z
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
name = "holdZ"
command = /z
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
name = "s"
command = s
time = 1

[Command]
name = "~x"
command = ~x
time = 1

[Command]
name = "~y"
command = ~y
time = 1

[Command]
name = "~z"
command = ~z
time = 1
[Command]
name = "release_z"
command = ~z
time = 1

[Command]
name = "hold_z"
command = ~60$z
time = 1

[Command]
name = "hold_zz"
command = ~1$z
time = 1

[Command]
name = "sjump"
command = ~D, U
time = 5


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
 
[Command]
name = "relfwd"
command = ~F
time = 1

[Command]
name = "relback"
command = ~B
time = 1

[Command]
name = "relup"
command = ~U
time = 1

[Command]
name = "reldown"
command = ~D
time = 1

[Command]
name = "uf"
command = UF
time = 1

[Command]
name = "ub"
command = UB
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
; Rush Drill
[State -1]
type = ChangeState
value = 9111
triggerall = power >= 1000
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "2QCF_k"

; Beat Plane
[State -1]
type = ChangeState
value = 4000
triggerall = power >= 1000
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "2QCB_k"

; Magnetic Shockwave
[State -1]
type = ChangeState
value = 1458
triggerall = power >= 1000
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = var(22) = 0
triggerall = var(23) = 0
triggerall = var(24) = 0
triggerall = var(25) = 0
triggerall = var(26) = 1
trigger1 = command = "2QCB_p"

; Aqua Rush
[State -1]
type = ChangeState
value = 1455
triggerall = power >= 1000
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = var(23) = 1
trigger1 = command = "2QCB_p"

; Yogo Inferno
[State -1]
type = ChangeState
value = 11459
triggerall = power >= 1000
triggerall = var(24) = 1
triggerall = command = "2QCB_p"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406

; Shoryu Reppa
[State -1]
type = ChangeState
value = 8869
triggerall = power >= 1000
triggerall = var(22) = 0
triggerall = var(23) = 0
triggerall = var(24) = 0
triggerall = var(25) = 0
triggerall = var(26) = 0
triggerall = command = "2QCB_p"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406

; Force Field
[State -1]
type = ChangeState
value = 1457
triggerall = power >= 1000
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = var(25) = 1
trigger1 = command = "2QCB_p"

; Hyper Megaman
[State -1]
type = ChangeState
value = 9021
triggerall = power >= 1000
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "2QCF_p"

; Beat Plane
[State -1]
type = ChangeState
value = 4000
triggerall = power >= 1000
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = command = "2QCB_k"
;---------------------------------------------------------------------------
;Air Mega Upper X
[State -1]
type = ChangeState
value = 21100
triggerall = command = "uppercut_x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 600
trigger3 = movecontact && stateno = 601
trigger4 = movecontact && stateno = 604
trigger5 = movecontact && stateno = 605
trigger6 = movecontact && stateno = 608
;---------------------------------------------------------------------------
;Air Mega Upper y
[State -1]
type = ChangeState
value = 21101
triggerall = command = "uppercut_y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 600
trigger3 = movecontact && stateno = 601
trigger4 = movecontact && stateno = 604
trigger5 = movecontact && stateno = 605
trigger6 = movecontact && stateno = 608
;---------------------------------------------------------------------------
;Air Mega Upper z
[State -1]
type = ChangeState
value = 21102
triggerall = command = "uppercut_z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 600
trigger3 = movecontact && stateno = 601
trigger4 = movecontact && stateno = 604
trigger5 = movecontact && stateno = 605
trigger6 = movecontact && stateno = 608

; Mega Upper X
[State -1]
type = ChangeState
value = 1100
triggerall = command = "uppercut_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;---------------------------------------------------------------------------
; Mega Upper Y
[State -1]
type = ChangeState
value = 1110
triggerall = command = "uppercut_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550

;---------------------------------------------------------------------------
; Mega upper Z
[State -1]
type = ChangeState
value = 1120
triggerall = command = "uppercut_z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550
;----------------------------------------------------------------------------
;TOP SPin
[State -1]
type = ChangeState
value = 305
triggerall = command = "QCB_a"
triggerall = var(22) = 0
triggerall = var(23) = 0
triggerall = var(24) = 0
triggerall = var(25) = 0
triggerall = var(26) = 0
triggerall = NumHelper(802) = 0
triggerall = stateno != 305
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Napalm Bomb
[State -1]
type = ChangeState
value = 8212
triggerall = command = "QCF_a"
triggerall = var(22) = 1
triggerall = NumHelper(802) = 0
triggerall = NumHelper(8213) = 0
triggerall = NumHelper(1116) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Napalm Bomb high
[State -1]
type = ChangeState
value = 8215
triggerall = command = "QCB_a"
triggerall = var(22) = 1
triggerall = NumHelper(802) = 0
triggerall = NumHelper(8213) = 0
triggerall = NumHelper(1116) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;TOP SPin
[State -1]
type = ChangeState
value = 66305
triggerall = command = "QCF_a"
triggerall = var(22) = 0
triggerall = var(23) = 0
triggerall = var(24) = 0
triggerall = var(25) = 0
triggerall = var(26) = 0
triggerall = NumHelper(802) = 0
triggerall = stateno != 305
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; Water Balloon
[State -1]
type = ChangeState
value = 886
triggerall = command = "QCF_a"
triggerall = var(23) = 1
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Ice CrackerH
[State -1]
type = ChangeState
value = 888
triggerall = command = "QCF_c"
triggerall = var(23) = 1
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Ice CrackerV
[State -1]
type = ChangeState
value = 1888
triggerall = command = "QCB_c"
triggerall = var(23) = 1
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; Water Balloon
[State -1]
type = ChangeState
value = 1886
triggerall = command = "QCB_a"
triggerall = var(23) = 1
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Spark Shock
[State -1]
type = ChangeState
value = 880
triggerall = numHelper(7447) = 0
triggerall = numHelper(8246) = 0
triggerall = numHelper(4895) = 0
triggerall = command = "QCF_a"
triggerall = var(25) = 1
triggerall = NumHelper(802) = 0
triggerall = NumprojID(823) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Spark Shock up
[State -1]
type = ChangeState
value = 1880
triggerall = numHelper(7447) = 0
triggerall = numHelper(8246) = 0
triggerall = numHelper(4895) = 0
triggerall = command = "QCB_a"
triggerall = var(25) = 1
triggerall = NumHelper(802) = 0
triggerall = NumprojID(823) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; Atomic Fire
[State -1]
type = ChangeState
value = 5699
triggerall = command = "QCF_c"
triggerall = var(24) = 1
triggerall = NumHelper(25) = 0
triggerall = NumHelper(8021) = 0
triggerall = NumHelper(802) = 0
triggerall = NumProjID(244) = 0
triggerall = NumProjID(841) = 0
triggerall = NumProjID(5699) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; Atomic Fire 2
[State -1]
type = ChangeState
value = 5700
triggerall = command = "QCB_c"
triggerall = var(24) = 1
triggerall = NumHelper(25) = 0
triggerall = NumHelper(8021) = 0
triggerall = NumHelper(802) = 0
triggerall = NumProjID(244) = 0
triggerall = NumProjID(841) = 0
triggerall = NumProjID(5699) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; Captain Fire
[State -1]
type = ChangeState
value = 841
triggerall = command = "QCF_a"
triggerall = var(24) = 1
triggerall = NumHelper(25) = 0
triggerall = NumHelper(8021) = 0
triggerall = NumHelper(802) = 0
triggerall = NumProjID(244) = 0
triggerall = NumProjID(841) = 0
triggerall = NumProjID(5699) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; Captain Fire 2
[State -1]
type = ChangeState
value = 1841
triggerall = command = "QCB_a"
triggerall = var(24) = 1
triggerall = NumHelper(25) = 0
triggerall = NumHelper(8021) = 0
triggerall = NumHelper(802) = 0
triggerall = NumProjID(244) = 0
triggerall = NumProjID(841) = 0
triggerall = NumProjID(5699) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; ice wave ceiling
[State -1]
type = ChangeState
value = 8330
triggerall = command = "QCB_b"
triggerall = var(23) = 1
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; ice wave
[State -1]
type = ChangeState
value = 8320
triggerall = command = "QCF_b"
triggerall = var(23) = 1
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;H Optic Blast
[State -1]
type = ChangeState
value = 922
triggerall = numprojid(823) = 0
triggerall = numprojid(7875) = 0
triggerall = numexplod(7876) = 0
triggerall = numhelper(802) = 0
triggerall = numhelper(8021) = 0
triggerall = command = "QCF_x"
triggerall = var(26) = 1
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;V Optic Blast
[State -1]
type = ChangeState
value = 1922
triggerall = numprojid(823) = 0
triggerall = numprojid(7875) = 0
triggerall = numexplod(7876) = 0
triggerall = numhelper(802) = 0
triggerall = numhelper(8021) = 0
triggerall = command = "QCB_x"
triggerall = var(26) = 1
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Electric Column
[State -1]
type = ChangeState
value = 8245
triggerall = numHelper(7447) = 0
triggerall = numHelper(8246) = 0
triggerall = numHelper(4895) = 0
triggerall = command = "QCF_c"
triggerall = var(25) = 1
triggerall = NumHelper(8246) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Thunder Bolt
[State -1]
type = ChangeState
value = 4895
triggerall = numHelper(7447) = 0
triggerall = numHelper(8246) = 0
triggerall = numHelper(4895) = 0
triggerall = command = "QCF_b"
triggerall = var(25) = 1
triggerall = NumHelper(8246) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Thunder Bolt2
[State -1]
type = ChangeState
value = 4898
triggerall = numHelper(7447) = 0
triggerall = numHelper(8246) = 0
triggerall = numHelper(4895) = 0
triggerall = command = "QCB_b"
triggerall = var(25) = 1
triggerall = NumHelper(8246) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Electric Column 2
[State -1]
type = ChangeState
value = 8250
triggerall = numHelper(7447) = 0
triggerall = numHelper(8246) = 0
triggerall = numHelper(4895) = 0
triggerall = command = "QCB_c"
triggerall = var(25) = 1
triggerall = NumHelper(8246) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; Flame Spread (far)
[State -1]
type = ChangeState
value = 827
triggerall = command = "QCF_b"
triggerall = var(24) = 1
triggerall = NumHelper(25) = 0
triggerall = NumHelper(8021) = 0
triggerall = NumHelper(802) = 0
triggerall = NumProjID(244) = 0
triggerall = NumProjID(841) = 0
triggerall = NumProjID(5699) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; Flame Spread  (close)
[State -1]
type = ChangeState
value = 1827
triggerall = command = "QCB_b"
triggerall = var(24) = 1
triggerall = NumHelper(25) = 0
triggerall = NumHelper(8021) = 0
triggerall = NumHelper(802) = 0
triggerall = NumProjID(244) = 0
triggerall = NumProjID(841) = 0
triggerall = NumProjID(5699) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; Rock Ball
[State -1]
type = ChangeState
value = 318
triggerall = command = "QCF_b"
triggerall = var(22) = 0
triggerall = var(23) = 0
triggerall = var(24) = 0
triggerall = var(25) = 0
triggerall = var(26) = 0
triggerall = NumHelper(802) = 0
triggerall = NumHelper(222) = 0
triggerall = NumHelper(8888) = 0
triggerall = NumProjID(823) = 0
triggerall = NumProjID(8210) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; Rock Ball
[State -1]
type = ChangeState
value = 318
triggerall = command = "QCB_b"
triggerall = var(22) = 0
triggerall = var(23) = 0
triggerall = var(24) = 0
triggerall = var(25) = 0
triggerall = var(26) = 0
triggerall = NumHelper(802) = 0
triggerall = NumHelper(222) = 0
triggerall = NumHelper(8888) = 0
triggerall = NumProjID(823) = 0
triggerall = NumProjID(8210) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Purr & Furr
[State -1]
type = null ;ChangeState
value = 78851
triggerall = numhelper(1716) = 0
triggerall = command = "tag3"
triggerall = var(22) = 0
triggerall = var(23) = 0
triggerall = var(24) = 0
triggerall = var(25) = 0
triggerall = var(26) = 0
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; WOODMAN call beta
[State -1]
type = null ;ChangeState
value = 4150  ;(4150 makes him bounce, 14150 will make him roll)
triggerall = numhelper(1716) = 0
triggerall = command = "tag2"
triggerall = var(22) = 0
triggerall = var(23) = 0
triggerall = var(24) = 0
triggerall = var(25) = 0
triggerall = var(26) = 0
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Arthur
[State -1]
type = null ;ChangeState
value = 78841
triggerall = numhelper(1716) = 0
triggerall = command = "tag1"
triggerall = var(22) = 0
triggerall = var(23) = 0
triggerall = var(24) = 0
triggerall = var(25) = 0
triggerall = var(26) = 0
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Smart Bomb
[State -1]
type = ChangeState
value = 1115
triggerall = command = "QCF_c"
triggerall = var(22) = 1
triggerall = NumHelper(802) = 0
triggerall = NumHelper(8213) = 0
triggerall = NumHelper(1116) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Smart Bomb 2
[State -1]
type = ChangeState
value = 1125
triggerall = command = "QCB_c"
triggerall = var(22) = 1
triggerall = NumHelper(802) = 0
triggerall = NumHelper(8213) = 0
triggerall = NumHelper(1116) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Beat call beta
[State -1]
type = null;ChangeState
value = 4745 ;(4745 makes him shoot fireballs 4750 makes him drop missles)
triggerall = numhelper(1716) = 0
triggerall = command = "x"
triggerall = command = "a"
triggerall = var(22) = 1
triggerall = var(23) = 0
triggerall = var(24) = 0
triggerall = var(25) = 0
triggerall = var(26) = 0
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; Roll call Beta
[State -1]
type = null;ChangeState
value = 1715 ;(1715 makes her do Roll buster, 1720 makes her throw flowers)
triggerall = command = "x"
triggerall = command = "a"
triggerall = var(24) = 1
triggerall = numhelper(1716) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; proto call beta
[State -1]
type = null;ChangeState
value = 8349 ;(8349 makes him do an uppercut, 18349 makes him charge)
triggerall = command = "x"
triggerall = command = "a"
triggerall = var(23) = 1
triggerall = numhelper(1716) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Repulser
[State -1]
type = ChangeState
value = 566
triggerall = numprojid(823) = 0
triggerall = numprojid(7875) = 0
triggerall = numexplod(7876) = 0
triggerall = numhelper(802) = 0
triggerall = numhelper(8021) = 0
triggerall = command = "QCF_b"
triggerall = var(26) = 1
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Repulser
[State -1]
type = ChangeState
value = 566
triggerall = numprojid(823) = 0
triggerall = numprojid(7875) = 0
triggerall = numexplod(7876) = 0
triggerall = numhelper(802) = 0
triggerall = numhelper(8021) = 0
triggerall = command = "QCB_b"
triggerall = var(26) = 1
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Flash Bomb
[State -1]
type = ChangeState
value = 842
triggerall = command = "QCF_b"
triggerall = var(22) = 1
triggerall = NumHelper(802) = 0
triggerall = NumHelper(8213) = 0
triggerall = NumHelper(1116) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Flash Bomb up
[State -1]
type = ChangeState
value = 1842
triggerall = command = "QCB_b"
triggerall = var(22) = 1
triggerall = NumHelper(802) = 0
triggerall = NumHelper(8213) = 0
triggerall = NumHelper(1116) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Tornado Hold far
[State -1]
type = ChangeState
value = 1222
triggerall = command = "QCF_x"
triggerall = var(22) = 0
triggerall = var(23) = 0
triggerall = var(24) = 0
triggerall = var(25) = 0
triggerall = var(26) = 0
triggerall = NumHelper(802) = 0
triggerall = NumHelper(222) = 0
triggerall = NumHelper(8888) = 0
triggerall = NumProjID(823) = 0
triggerall = NumProjID(8210) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Tornado Hold close
[State -1]
type = ChangeState
value = 222
triggerall = command = "QCB_x"
triggerall = var(22) = 0
triggerall = var(23) = 0
triggerall = var(24) = 0
triggerall = var(25) = 0
triggerall = var(26) = 0
triggerall = NumHelper(802) = 0
triggerall = NumHelper(222) = 0
triggerall = NumHelper(8888) = 0
triggerall = NumProjID(823) = 0
triggerall = NumProjID(8210) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Needle Cannon High
[State -1]
type = ChangeState
value = 8210
triggerall = command = "QCF_c"
triggerall = var(22) = 0
triggerall = var(23) = 0
triggerall = var(24) = 0
triggerall = var(25) = 0
triggerall = var(26) = 0
triggerall = NumHelper(802) = 0
triggerall = NumHelper(222) = 0
triggerall = NumHelper(8888) = 0
triggerall = NumProjID(823) = 0
triggerall = NumProjID(8210) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Needle Cannon Low
[State -1]
type = ChangeState
value = 18210
triggerall = command = "QCB_c"
triggerall = var(22) = 0
triggerall = var(23) = 0
triggerall = var(24) = 0
triggerall = var(25) = 0
triggerall = var(26) = 0
triggerall = NumHelper(802) = 0
triggerall = NumHelper(222) = 0
triggerall = NumHelper(8888) = 0
triggerall = NumProjID(823) = 0
triggerall = NumProjID(8210) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Thunder Claw
[State -1]
type = ChangeState
value = 816
triggerall = numHelper(7447) = 0
triggerall = numHelper(8246) = 0
triggerall = numHelper(4895) = 0
triggerall = command = "QCF_x"
triggerall = var(25) = 1
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Gravity Hold
[State -1]
type = ChangeState
value = 113
triggerall = var(17) <= 0
triggerall = numprojid(823) = 0
triggerall = numprojid(7875) = 0
triggerall = numexplod(7876) = 0
triggerall = numhelper(802) = 0
triggerall = numhelper(8021) = 0
triggerall = command = "QCF_z"
triggerall = var(26) = 1
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Gravity Hold
[State -1]
type = ChangeState
value = 113
triggerall = var(17) <= 0
triggerall = numprojid(823) = 0
triggerall = numprojid(7875) = 0
triggerall = numexplod(7876) = 0
triggerall = numhelper(802) = 0
triggerall = numhelper(8021) = 0
triggerall = command = "QCB_z"
triggerall = var(26) = 1
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Homing Sniper
[State -1]
type = ChangeState
value = 1901
triggerall = command = "QCF_x"
triggerall = var(22) = 1
triggerall = NumHelper(802) = 0
triggerall = NumHelper(8213) = 0
triggerall = NumHelper(1116) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; Fire Shot
[State -1]
type = ChangeState
value = 8340
triggerall = command = "QCF_x"
triggerall = var(24) = 1
triggerall = NumHelper(25) = 0
triggerall = NumHelper(8021) = 0
triggerall = NumHelper(802) = 0
triggerall = NumProjID(244) = 0
triggerall = NumProjID(841) = 0
triggerall = NumProjID(5699) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; Fire Shot
[State -1]
type = ChangeState
value = 8341
triggerall = command = "QCB_x"
triggerall = var(24) = 1
triggerall = NumHelper(25) = 0
triggerall = NumHelper(8021) = 0
triggerall = NumHelper(802) = 0
triggerall = NumProjID(244) = 0
triggerall = NumProjID(841) = 0
triggerall = NumProjID(5699) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Homing Sniper low
[State -1]
type = ChangeState
value = 1904
triggerall = command = "QCB_x"
triggerall = var(22) = 1
triggerall = NumHelper(802) = 0
triggerall = NumHelper(8213) = 0
triggerall = NumHelper(1116) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Thunder Claw low
[State -1]
type = ChangeState
value = 1816
triggerall = numHelper(7447) = 0
triggerall = numHelper(8246) = 0
triggerall = numHelper(4895) = 0
triggerall = command = "QCB_x"
triggerall = var(25) = 1
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Elec Orb
[State -1]
type = ChangeState
value = 7447
triggerall = numHelper(7447) = 0
triggerall = numHelper(8246) = 0
triggerall = numHelper(4895) = 0
triggerall = command = "QCB_y"
triggerall = var(25) = 1
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Elec Orb far
[State -1]
type = ChangeState
value = 7449
triggerall = numHelper(7447) = 0
triggerall = numHelper(8246) = 0
triggerall = numHelper(4895) = 0
triggerall = command = "QCF_y"
triggerall = var(25) = 1
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Crash Bomb Close
[State -1]
type = ChangeState
value = 830
triggerall = command = "QCB_y"
triggerall = var(22) = 1
triggerall = NumHelper(802) = 0
triggerall = NumHelper(8213) = 0
triggerall = NumHelper(1116) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Crash Bomb far
[State -1]
type = ChangeState
value = 1830
triggerall = command = "QCF_y"
triggerall = var(22) = 1
triggerall = NumHelper(802) = 0
triggerall = NumHelper(8213) = 0
triggerall = NumHelper(1116) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Fire Wheel vert
[State -1]
type = ChangeState
value = 1845
triggerall = command = "QCB_y"
triggerall = var(24) = 1
triggerall = NumHelper(25) = 0
triggerall = NumHelper(8021) = 0
triggerall = NumHelper(802) = 0
triggerall = NumProjID(244) = 0
triggerall = NumProjID(841) = 0
triggerall = NumProjID(5699) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Fire Wheel horo
[State -1]
type = ChangeState
value = 845
triggerall = command = "QCF_y"
triggerall = var(24) = 1
triggerall = NumHelper(25) = 0
triggerall = NumHelper(8021) = 0
triggerall = NumHelper(802) = 0
triggerall = NumProjID(244) = 0
triggerall = NumProjID(841) = 0
triggerall = NumProjID(5699) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Leaf Shield
[State -1]
type = ChangeState
value = 800
triggerall = command = "QCF_y"
triggerall = var(22) = 0
triggerall = var(23) = 0
triggerall = var(24) = 0
triggerall = var(25) = 0
triggerall = var(26) = 0
triggerall = NumHelper(802) = 0
triggerall = NumHelper(222) = 0
triggerall = NumHelper(8888) = 0
triggerall = NumProjID(823) = 0
triggerall = NumProjID(8210) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Leaf Shield Toss
[State -1]
type = ChangeState
value = 801
triggerall = command = "QCF_y"
triggerall = var(22) = 0
triggerall = var(23) = 0
triggerall = var(24) = 0
triggerall = var(25) = 0
triggerall = var(26) = 0
triggerall = NumHelper(802) = 1
triggerall = NumHelper(222) = 0
triggerall = NumHelper(8888) = 0
triggerall = NumProjID(823) = 0
triggerall = NumProjID(8210) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Air Leaf Shield Toss
[State -1]
type = ChangeState
value = 804
triggerall = command = "QCF_y"
triggerall = var(22) = 0
triggerall = var(23) = 0
triggerall = var(24) = 0
triggerall = var(25) = 0
triggerall = var(26) = 0
triggerall = NumHelper(802) = 1
triggerall = NumHelper(222) = 0
triggerall = NumHelper(8888) = 0
triggerall = NumProjID(823) = 0
triggerall = NumProjID(8210) = 0
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 601
trigger4 = movecontact
trigger4 = stateno = 604
trigger5 = movecontact
trigger5 = stateno = 605

;Leaf Shield
[State -1]
type = ChangeState
value = 800
triggerall = command = "QCB_y"
triggerall = var(22) = 0
triggerall = var(23) = 0
triggerall = var(24) = 0
triggerall = var(25) = 0
triggerall = var(26) = 0
triggerall = NumHelper(802) = 0
triggerall = NumHelper(222) = 0
triggerall = NumHelper(8888) = 0
triggerall = NumProjID(823) = 0
triggerall = NumProjID(8210) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Leaf Shield Toss
[State -1]
type = ChangeState
value = 801
triggerall = command = "QCB_y"
triggerall = var(22) = 0
triggerall = var(23) = 0
triggerall = var(24) = 0
triggerall = var(25) = 0
triggerall = var(26) = 0
triggerall = NumHelper(802) = 1
triggerall = NumHelper(222) = 0
triggerall = NumHelper(8888) = 0
triggerall = NumProjID(823) = 0
triggerall = NumProjID(8210) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Air Leaf Shield Toss
[State -1]
type = ChangeState
value = 804
triggerall = command = "QCB_y"
triggerall = var(22) = 0
triggerall = var(23) = 0
triggerall = var(24) = 0
triggerall = var(25) = 0
triggerall = var(26) = 0
triggerall = NumHelper(802) = 1
triggerall = NumHelper(222) = 0
triggerall = NumHelper(8888) = 0
triggerall = NumProjID(823) = 0
triggerall = NumProjID(8210) = 0
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 600
trigger3 = movecontact && stateno = 601
trigger4 = movecontact && stateno = 604
trigger5 = movecontact && stateno = 605
;----------------------------------------------------------------------------
;Danger Wrap
[State -1]
type = ChangeState
value = 8110
triggerall = command = "QCB_z"
triggerall = var(22) = 1
triggerall = NumHelper(802) = 0
triggerall = NumHelper(8213) = 0
triggerall = NumHelper(1116) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Danger Wrap far
[State -1]
type = ChangeState
value = 8115
triggerall = command = "QCF_z"
triggerall = var(22) = 1
triggerall = NumHelper(802) = 0
triggerall = NumHelper(8213) = 0
triggerall = NumHelper(1116) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Gemini Beam fast
[State -1]
type = ChangeState
value = 1910
triggerall = numprojid(823) = 0
triggerall = numprojid(7875) = 0
triggerall = numexplod(7876) = 0
triggerall = numhelper(802) = 0
triggerall = numhelper(8021) = 0
triggerall = command = "QCF_y"
triggerall = var(26) = 1
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Gemini Beam slow
[State -1]
type = ChangeState
value = 910
triggerall = numprojid(823) = 0
triggerall = numprojid(7875) = 0
triggerall = numexplod(7876) = 0
triggerall = numhelper(802) = 0
triggerall = numhelper(8021) = 0
triggerall = command = "QCB_y"
triggerall = var(26) = 1
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Photon Array
[State -1]
type = ChangeState
value = 565
triggerall = numprojid(823) = 0
triggerall = numprojid(7875) = 0
triggerall = numexplod(7876) = 0
triggerall = numhelper(802) = 0
triggerall = numhelper(8021) = 0
triggerall = command = "QCB_a"
triggerall = var(26) = 1
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Photon Array 2
[State -1]
type = ChangeState
value = 1565
triggerall = numprojid(823) = 0
triggerall = numprojid(7875) = 0
triggerall = numexplod(7876) = 0
triggerall = numhelper(802) = 0
triggerall = numhelper(8021) = 0
triggerall = command = "QCF_a"
triggerall = var(26) = 1
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;star crash
[State -1]
type = ChangeState
value = 850;900
triggerall = numprojid(823) = 0
triggerall = numprojid(7875) = 0
triggerall = numexplod(7876) = 0
triggerall = numhelper(802) = 0
triggerall = numhelper(8021) = 0
triggerall = command = "QCF_c"
triggerall = var(26) = 1
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;star crash2
[State -1]
type = ChangeState
value = 850;900
triggerall = numprojid(823) = 0
triggerall = numprojid(7875) = 0
triggerall = numexplod(7876) = 0
triggerall = numhelper(802) = 0
triggerall = numhelper(8021) = 0
triggerall = command = "QCB_c"
triggerall = var(26) = 1
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Gyro Blades far
[State -1]
type = ChangeState
value = 1825
triggerall = command = "QCF_z"
triggerall = var(22) = 0
triggerall = var(23) = 0
triggerall = var(24) = 0
triggerall = var(25) = 0
triggerall = var(26) = 0
triggerall = NumHelper(802) = 0
triggerall = NumHelper(222) = 0
triggerall = NumHelper(8888) = 0
triggerall = NumProjID(823) = 0
triggerall = NumProjID(8210) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Gyro Blades
[State -1]
type = ChangeState
value = 825
triggerall = command = "QCB_z"
triggerall = var(22) = 0
triggerall = var(23) = 0
triggerall = var(24) = 0
triggerall = var(25) = 0
triggerall = var(26) = 0
triggerall = NumHelper(802) = 0
triggerall = NumHelper(222) = 0
triggerall = NumHelper(8888) = 0
triggerall = NumProjID(823) = 0
triggerall = NumProjID(8210) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; Wave Geyser
[State -1]
type = ChangeState
value = 861
triggerall = command = "QCF_z"
triggerall = var(23) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; Wave Geyser 2
[State -1]
type = ChangeState
value = 1861
triggerall = command = "QCB_z"
triggerall = var(23) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; Fire Storm
[State -1]
type = ChangeState
value = 1217
triggerall = command = "QCF_z"
triggerall = var(24) = 1
triggerall = NumHelper(25) = 0
triggerall = NumHelper(8021) = 0
triggerall = NumHelper(802) = 0
triggerall = NumProjID(244) = 0
triggerall = NumProjID(841) = 0
triggerall = NumProjID(5699) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; vert Fire Storm
[State -1]
type = ChangeState
value = 11217
triggerall = command = "QCB_z"
triggerall = var(24) = 1
triggerall = NumHelper(25) = 0
triggerall = NumHelper(8021) = 0
triggerall = NumHelper(802) = 0
triggerall = NumProjID(244) = 0
triggerall = NumProjID(841) = 0
triggerall = NumProjID(5699) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; Water Weapons
[State -1]
type = ChangeState
value = 503
triggerall = command = "chargebackfwd_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
;----------------------------------------------------------------------------
; Space Weapons
[State -1]
type = ChangeState
value = 504
triggerall = command = "chargebackfwd_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
;----------------------------------------------------------------------------
; Shoto Skills
[State -1]
type = ChangeState
value = 505
triggerall = command = "chargebackfwd_c"
trigger1 = statetype = S
trigger1 = ctrl = 1
;----------------------------------------------------------------------------
; Earth Weapons
[State -1]
type = ChangeState
value = 500
triggerall = command = "chargebackfwd_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
;----------------------------------------------------------------------------
; Wind Weapons
[State -1]
type = ChangeState
value = 501
triggerall = command = "chargebackfwd_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
;----------------------------------------------------------------------------
; Fire Weapons
[State -1]
type = ChangeState
value = 506
triggerall = command = "chargebackfwd_z"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
; Bubble Lead
[State -1]
type = ChangeState
value = 819
triggerall = var(17) <= 0
triggerall = p2stateno != 99333
triggerall = command = "QCF_x"
triggerall = var(23) = 1
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; Bubble Lead high
[State -1]
type = ChangeState
value = 1819
triggerall = var(17) <= 0
triggerall = p2stateno != 99333
triggerall = command = "QCB_x"
triggerall = var(23) = 1
triggerall = NumHelper(802) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; Deep Freeze low
[State -1]
type = ChangeState
value = 1860
triggerall = command = "QCB_y"
triggerall = var(23) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; Deep Freeze
[State -1]
type = ChangeState
value = 860
triggerall = command = "QCF_y"
triggerall = var(23) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Thunderball
[State -1]
type = ChangeState
value = 5677
triggerall = command = "QCB_z"
triggerall = var(25) = 1
triggerall = NumHelper(802) = 0
triggerall = stateno != 305
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
;Thunderball2
[State -1]
type = ChangeState
value = 5678
triggerall = command = "QCF_z"
triggerall = var(25) = 1
triggerall = NumHelper(802) = 0
triggerall = stateno != 305
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; Monster call beta
[State -1]
type = null;ChangeState
value = 8134 ;(8134 makes him do the slap, 28314 makes him shoot a laser)
triggerall = command = "x"
triggerall = command = "a"
triggerall = var(26) = 1
triggerall = numhelper(1716) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
; Fliptop
[State -1]
type = null;ChangeState
value = 3715
triggerall = command = "x"
triggerall = command = "a"
triggerall = var(25) = 1
triggerall = numhelper(1716) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = movecontact && stateno = 206
trigger11 = movecontact && stateno = 406
;----------------------------------------------------------------------------
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
;Stand_Throw (close dir+b)
; Complicated? Skip the throws and look at stand_a, etc, first.
; This is disabled right now. Remove the "null;" below when you
; want to use it.
[State -1]
type = ChangeState
value = 4568
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 30 ;Near P2
trigger1 = command = "fwd_z";p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_z";p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_z";p2 stand
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_z";p2 crouch
trigger4 = p2statetype = C
trigger4 = p2movetype != H

[State -1]
type = ChangeState
value = 4568
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 30 ;Near P2
trigger1 = command = "fwd_c";p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_c";p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_c";p2 stand
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_c";p2 crouch
trigger4 = p2statetype = C
trigger4 = p2movetype != H
;---------------------------------------------------------------------------
;Air_Throw1 (close dir+b)
; This is disabled right now. Remove the "null;" below when you
; want to use it.
[State -1]
type = null; ChangeState
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


;---------------------------------------------------------------------------
;super Jump
[State -1]
type = ChangeState
value = 10023
triggerall = command = "sjump"
triggerall = var(34) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------
;Stand X
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = animelem >= 4
trigger2 = stateno = 200
trigger3 = stateno = 100
trigger4 = stateno = 105

;---------------------------------------------------------------------------
;Stand Y
[State -1]
type = ChangeState
value = 201
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 204
trigger4 = movecontact && stateno = 400
trigger5 = movecontact && stateno = 404
trigger6 = stateno = 100
trigger7 = stateno = 105
;;---------------------------------------------------------------------------
;Stand zzzz
[State -1]
type = ChangeState
value = 1202
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 400
trigger4 = movecontact && stateno = 201
trigger5 = movecontact && stateno = 401
trigger6 = movecontact && stateno = 204
trigger7 = movecontact && stateno = 404
trigger8 = movecontact && stateno = 205
trigger9 = movecontact && stateno = 405
trigger10 = stateno = 100
trigger11 = stateno = 105
;---------------------------------------------------------------------------
;Stand Z
[State -1]
type = ChangeState
value = 202
triggerall = NumHelper(6000) > 0
triggerall = helper(6000), stateno = 6000
triggerall = command = "release_z"
triggerall = command != "holddown"
triggerall = stateno != 202
triggerall = stateno != 1202       
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 400
trigger4 = movecontact && stateno = 201
trigger5 = movecontact && stateno = 401
trigger6 = movecontact && stateno = 204
trigger7 = movecontact && stateno = 404
trigger8 = movecontact && stateno = 205
trigger9 = movecontact && stateno = 405
trigger10 = stateno = 100
trigger11 = stateno = 105
;;---------------------------------------------------------------------------
;Stand A
[State -1]
type = ChangeState
value = 204
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = animelem >= 4
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 400
trigger5 = stateno = 100
trigger6 = stateno = 105
;---------------------------------------------------------------------------
;Stand B
[State -1]
type = ChangeState
value = 205
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 204
trigger5 = movecontact
trigger5 = stateno = 400
trigger6 = movecontact
trigger6 = stateno = 401
trigger7 = movecontact
trigger7 = stateno = 404
trigger8 = stateno = 100
trigger9 = stateno = 105
;---------------------------------------------------------------------------
;Stand C
[State -1]
type = ChangeState
value = 206
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 204
trigger5 = movecontact && stateno = 205
trigger6 = movecontact && stateno = 400
trigger7 = movecontact && stateno = 401
trigger8 = movecontact && stateno = 404
trigger9 = movecontact && stateno = 405
trigger10 = stateno = 100
trigger11 = stateno = 105
;---------------------------------------------------------------------------
;Crouch X
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch Y
[State -1]
type = ChangeState
value = 401
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 400
trigger3 = movecontact
trigger3 = stateno = 404
trigger4 = movecontact
trigger4 = stateno = 200
trigger5 = movecontact
trigger5 = stateno = 204
;;---------------------------------------------------------------------------
;crouch zzzz
[State -1]
type = ChangeState
value = 1402
triggerall = command = "z"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 400
trigger4 = movecontact && stateno = 201
trigger5 = movecontact && stateno = 401
trigger6 = movecontact && stateno = 204
trigger7 = movecontact && stateno = 404
trigger8 = movecontact && stateno = 205
trigger9 = movecontact && stateno = 405
;---------------------------------------------------------------------------
;Crouch Z
[State -1]
type = ChangeState
value = 402
triggerall = NumHelper(6000) > 0
triggerall = helper(6000), stateno = 6000
triggerall = command = "release_z"
triggerall = command = "holddown"
triggerall = stateno != 1402
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 400
trigger3 = movecontact
trigger3 = stateno = 401
trigger4 = movecontact
trigger4 = stateno = 404
trigger5 = movecontact
trigger5 = stateno = 405
trigger6 = movecontact
trigger6 = stateno = 200
trigger7 = movecontact
trigger7 = stateno = 201
trigger8 = movecontact
trigger8 = stateno = 204
trigger9 = movecontact
trigger9 = stateno = 205

;---------------------------------------------------------------------------
;Crouch A
[State -1]
type = ChangeState
value = 404
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 400
trigger3 = movecontact
trigger3 = stateno = 200
trigger4 = movecontact
trigger4 = stateno = 204

;---------------------------------------------------------------------------
;Crouch B
[State -1]
type = ChangeState
value = 405
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 400
trigger3 = movecontact
trigger3 = stateno = 401
trigger4 = movecontact
trigger4 = stateno = 404
trigger5 = movecontact
trigger5 = stateno = 200
trigger6 = movecontact
trigger6 = stateno = 201
trigger7 = movecontact
trigger7 = stateno = 204

;---------------------------------------------------------------------------
;Crouch C
[State -1]
type = ChangeState
value = 406
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 400
trigger3 = movecontact
trigger3 = stateno = 401
trigger4 = movecontact
trigger4 = stateno = 404
trigger5 = movecontact
trigger5 = stateno = 200
trigger6 = movecontact
trigger6 = stateno = 201
trigger7 = movecontact
trigger7 = stateno = 204
trigger8 = movecontact
trigger8 = stateno = 205
trigger9 = movecontact
trigger9 = stateno = 405
trigger10 = movecontact
trigger10 = stateno = 402

;;---------------------------------------------------------------------------
;;Aerial Rave Jump
;[State -1]
;type = ChangeState
;value = 40
;triggerall = command = "holdup"
;trigger1 = movecontact
;trigger1 = stateno = 206

;Jump X
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump Y
[State -1]
type = ChangeState
value = 601
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 604
;---------------------------------------------------------------------------
;air zzzz
[State -1]
type = ChangeState
value = 1602
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 604
trigger3 = movecontact && stateno = 605
trigger4 = movecontact && stateno = 606
trigger5 = movecontact && stateno = 607
trigger6 = movecontact && stateno = 600
trigger7 = movecontact && stateno = 601

;Jump Z
[State -1]
type = ChangeState
value = 602
triggerall = NumHelper(6000) > 0
triggerall = helper(6000), stateno = 6000
triggerall = command = "release_z"
triggerall = stateno != 602
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 600
trigger3 = movecontact && stateno = 601
trigger4 = movecontact && stateno = 604
trigger5 = movecontact && stateno = 605
;---------------------------------------------------------------------------
;Jump A
[State -1]
type = ChangeState
value = 604
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
;trigger2 = p2statetype = A
trigger2 = movecontact
trigger2 = stateno = 600
;---------------------------------------------------------------------------
;Jump B
[State -1]
type = ChangeState
value = 605
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
;trigger2 = p2statetype = A
trigger2 = movecontact
trigger2 = stateno = 600
;trigger3 = p2statetype = A
trigger3 = movecontact
trigger3 = stateno = 601
;trigger4 = p2statetype = A
trigger4 = movecontact
trigger4 = stateno = 602
;trigger5 = p2statetype = A
trigger5 = movecontact
trigger5 = stateno = 604
;---------------------------------------------------------------------------
;Jump C
[State -1]
type = ChangeState
value = 606
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
;trigger2 = p2statetype = A
trigger2 = movecontact
trigger2 = stateno = 600
;trigger3 = p2statetype = A
trigger3 = movecontact
trigger3 = stateno = 601
;trigger4 = p2statetype = A
trigger4 = movecontact
trigger4 = stateno = 604
;trigger5 = p2statetype = A
trigger5 = movecontact
trigger5 = stateno = 605
;trigger6 = p2statetype = A
trigger6 = movecontact
trigger6 = stateno = 608
;---------------------------------------------------------------------------
;Taunt
[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------


