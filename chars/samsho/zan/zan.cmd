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
name = "mugenho"
command = ~B, F, DF, D, x+y

[Command]
name = "singekizan"
command = ~D, DF, D, DF, z
time = 25

;-| Special Motions |------------------------------------------------------
[Command]
name = "hudou"
command = ~F, D, DF, a

;-----------------
[Command]
name = "buhouken"
command = ~D,DF, F, a

;-----------------
[Command]
name = "tenhozan A"
command = ~F, D, DF, x

[Command]
name = "tenhozan B"
command = ~F, D, DF, y

[Command]
name = "tenhozan C"
command = ~F, D, DF, z

;-----------------
[Command]
name = "sippuzan A"
command = ~D,DF, F, x

[Command]
name = "sippuzan B"
command = ~D, DF, F, y

[Command]
name = "sippuzan C"
command = ~D, DF, F, z

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
command = x+y
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "yz"
command = y+z
time = 1

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "za"
command = z+a
time = 1

[Command]
name = "xa"
command = x+a
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_x"
command = /F,a
time = 1

[Command]
name = "fwd_a"
command = /F,x
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "downfwd_x"
command = /DF,a
time = 1

[Command]
name = "downfwd_b"
command = /DF,b
time = 1

[Command]
name = "downfwd_y"
command = /DF,y
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
name = "fwd_xa"
command = /F, x+a
time = 1

[Command]
name = "back_z"
command = /B, z
time = 1


;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = x
time = 1

[Command]
name = "b"
command = y
time = 1

[Command]
name = "c"
command = z
time = 1

[Command]
name = "x"
command = a
time = 1

[Command]
name = "y"
command = b
time = 1

[Command]
name = "z"
command = c
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

[Command]
name = "ESCAPEFWD"
command = F
time = 1

[Command]
name = "ESCAPEBACK"
command = B
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
;---------------------------------------------------------------------------
;mugenho
[State -1]
type = ChangeState
value = 3000
triggerall = command = "mugenho"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;---------------------------------------------------------------------------
;singekizan
[State -1]
type = ChangeState
value = 4000
triggerall = command = "singekizan"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;Roll_Fwd
[State -1]
type = ChangeState
value = 7000
trigger1 = command = "holdfwd"
trigger1 = stateno = 5110

;Roll_Back
[State -1]
type = ChangeState
value = 7100
trigger1 = command = "holdback"
trigger1 = stateno = 5110


;---------------------------------------------------------------------------
; Master Art 
[State -1]
type = ChangeState
value = 3500
triggerall = command = "yz"
triggerall = P2bodydist X <= 40
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

[State -1]
type = ChangeState
value = 3501
triggerall = command = "fwd_a"
trigger1 = stateno = 3500
trigger1 = movehit
trigger1 = anim != 3500

[State -1]
type = ChangeState
value = 3502
triggerall = command = "a"
trigger1 = stateno = 3501
trigger1 = movehit

[State -1]
type = ChangeState
value = 3503
triggerall = command = "b"
trigger1 = stateno = 3502
trigger1 = movehit

[State -1]
type = ChangeState
value = 3504
triggerall = command = "b"
trigger1 = stateno = 3503
trigger1 = movehit

[State -1]
type = ChangeState
value = 3505
triggerall = command = "c"
trigger1 = stateno = 3504
trigger1 = movehit

[State -1]
type = ChangeState
value = 3506
triggerall = command = "c"
trigger1 = stateno = 3505
trigger1 = movehit

[State -1]
type = ChangeState
value = 3507
trigger1 = command = "a"
trigger1 = stateno = 3506
trigger1 = movehit

[State -1]
type = ChangeState
value = 3508
trigger1 = command = "b"
trigger1 = stateno = 3507
trigger1 = movehit

[State -1]
type = ChangeState
value = 3509
trigger1 = command = "c"
trigger1 = stateno = 3508
trigger1 = movehit

[State -1]
type = ChangeState
value = 3510
trigger1 = command = "c"
trigger1 = AnimElem = 6, >= 0
trigger1 = stateno = 3509
trigger1 = movehit

[State -1]
type = ChangeState
value = 3511
trigger1 = command = "c"
trigger1 = AnimElem = 5, >= 0
trigger1 = stateno = 3510
trigger1 = movehit

[State -1]
type = ChangeState
value = 3512
trigger1 = command = "c"
trigger1 = stateno = 3511
trigger1 = movehit
trigger1 = AnimElem = 5, >= 0

[State -1]
type = ChangeState
value = 3513
trigger1 = command = "c"
trigger1 = stateno = 3512
trigger1 = movehit
trigger1 = AnimElem = 4, >= 0

;---------------------------------------------------------------------------
; hudou
[State -1]
type = ChangeState
value = 1100
triggerall = command = "hudou"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200

;---------------------------------------------------------------------------
tenhozan A
[State -1]
type = ChangeState
value = 1500
triggerall = command = "tenhozan A"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact

;---------------------------------------------------------------------------
tenhozan B
[State -1]
type = ChangeState
value = 1510
triggerall = command = "tenhozan B"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact

;---------------------------------------------------------------------------
tenhozan C
[State -1]
type = ChangeState
value = 1520
triggerall = command = "tenhozan C"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact

;---------------------------------------------------------------------------
;sippuzan A
[State -1]
type = ChangeState
value = 1020
triggerall = command = "sippuzan A"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
sippuzan B
[State -1]
type = ChangeState
value = 1021
triggerall = command = "sippuzan B"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact

;---------------------------------------------------------------------------
sippuzan C
[State -1]
type = ChangeState
value = 1022
triggerall = command = "sippuzan C"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact

;===========================================================================
; buhouken
[State -1]
type = ChangeState
value = 1200
triggerall = command = "buhouken"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200

;---------------------------------------------------------------------------
;’Ç‚¢“¢‚¿
[State -1]
type = ChangeState
value = 350
triggerall = command = "downfwd_y"
triggerall = statetype = C
triggerall = P2bodydist X <= 75
trigger1 = P2StateType = L 
trigger1 = ctrl = 1

;crouch_guard_breaker
[State -1]
type = ChangeState
value = 1900
triggerall = command = "xy"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;haaa!
[State -1]
type = ChangeState
value = 1910
triggerall = command = "za"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Run around
[State -1]
type = ChangeState
value = 390
trigger1 = command = "fwd_xa"
trigger1 = statetype = S
trigger1 = p2bodydist X < 60
trigger1 = p2statetype = S
trigger1 = ctrl = 1
trigger1 = stateno != 100

;---------------------------------------------------------------------------
;Hide
[State -1]
type = ChangeState
value = 380
trigger1 = command = "xa"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Push! (close dir+b)
; Complicated? Skip the throws and look at stand_a, etc, first.
; This is disabled right now. Remove the "null;" below when you
; want to use it.
[State -1]
type = ChangeState; ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 5 ;Near P2
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

;---------------------------------------------------------------------------
;RUNNING_A
[State -1]
type = ChangeState
value = 300
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = stateno = 100
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RUNNING_B
[State -1]
type = ChangeState
value = 305
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 100
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RUNNING_C
[State -1]
type = ChangeState
value = 310
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = stateno = 100
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RUNNING_X
[State -1]
type = ChangeState
value = 315
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = stateno = 100
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_A(close)
[State -1]
type = ChangeState
value = 207
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 40
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_A
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_B(close)
[State -1]
type = ChangeState
value = 217
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 40
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_B
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_C(close)
[State -1]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 60
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_C
[State -1]
type = ChangeState
value = 228
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_X2
[State -1]
type = ChangeState
value = 206
triggerall = command = "fwd_x"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_X
[State -1]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_A(close)
[State -1]
type = ChangeState
value = 407
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = P2bodydist X <= 40
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_B(close)
[State -1]
type = ChangeState
value = 417
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = P2bodydist X <= 40
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = 405
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_C
[State -1]
type = ChangeState
value = 410
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_x2
[State -1]
type = ChangeState
value = 418
triggerall = command = "downfwd_x"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_x
[State -1]
type = ChangeState
value = 415
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_B
[State -1]
type = ChangeState
value = 605
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_C
[State -1]
type = ChangeState
value = 610
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_x
[State -1]
type = ChangeState
value = 615
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

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


