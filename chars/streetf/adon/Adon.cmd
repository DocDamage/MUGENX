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
[Command]
name = "Spunches_x"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "Spunches_y"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "Spunches_z"
command = ~D, DF, F, D, DF, F, z
time = 30

[Command]
name = "Skick_a"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "Skick_b"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "Skick_c"
command = ~D, DF, F, D, DF, F, c
time = 30
;-| Special Motions |------------------------------------------------------
;-----------------
; specials
[Command]
name = "Jagkick_a"
command = ~B, D, DB, a

[Command]
name = "Jagkick_b"
command = ~B, D, DB, b

[Command]
name = "Jagkick_c"
command = ~B, D, DB, c



[Command]
name = "Jagtooth_a"
command = ~F, DF, D, DB, B, a
time = 20

[Command]
name = "Jagtooth_b"
command = ~F, DF, D, DB, B, b
time = 20

[Command]
name = "Jagtooth_c"
command = ~F, DF, D, DB, B, c
time = 20



[Command]
name = "ff_a"
command = F, F, a
time = 15

[Command]
name = "ff_b"
command = F, F, b
time = 15

[Command]
name = "ff_c"
command = F, F, c
time = 15

[Command]
name = "ff_x"
command = F, F, x
time = 15

[Command]
name = "ff_y"
command = F, F, y
time = 15

[Command]
name = "ff_z"
command = F, F, z
time = 15


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
command = c+z
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "fab"
command = /F, a+b
time = 3

[Command]
name = "ab"
command = /B, a+b
time = 3

[Command]
name = "bc"
command = b+c
time = 1

[Command]
name = "fbc"
command = /F, b+c
time = 3

[Command]
name = "bc"
command = /B, b+c
time = 3

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "yz"
command = y+z
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
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
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

[Command]
name = "s"
command = s
time = 1


;-| Hold Button |-----------------------------------------------------------
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
;kick_Throw (close dir+kick)
[State -1]
type =  ChangeState
value = 2500
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 10
triggerall = stateno != 100 
triggerall = p2statetype = S
triggerall = p2statetype != A	
triggerall = p2statetype != C
triggerall = p2movetype != H
trigger1 = command = "back_a"
trigger2 = command = "back_b"
trigger3 = command = "back_c"

;kick_Throw reversed (close dir+kick)
[State -1]
type =  ChangeState
value = 2505
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 5
triggerall = stateno != 100 
triggerall = p2statetype = S
triggerall = p2statetype != A	
triggerall = p2statetype != C
triggerall = p2movetype != H
trigger1 = command = "fwd_a"
trigger2 = command = "fwd_b"
trigger3 = command = "fwd_c"

;punch_Throw (close dir+punch)
[State -1]
type =  ChangeState
value = 2510
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 5
triggerall = stateno != 100 
triggerall = p2statetype = S
triggerall = p2statetype != A	
triggerall = p2statetype != C
triggerall = p2movetype != H
trigger1 = command = "fwd_x"
trigger2 = command = "fwd_y"
trigger3 = command = "fwd_z"


;punch_Throw reversed (close dir+punch)
[State -1]
type =  ChangeState
value = 2515
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 10
triggerall = stateno != 100 
triggerall = p2statetype = S
triggerall = p2statetype != A	
triggerall = p2statetype != C
triggerall = p2movetype != H
trigger1 = command = "back_x"
trigger2 = command = "back_y"
trigger3 = command = "back_z"

;===========================================================================
;---------------------------------------------------------------------------
;Punches combo
;light
[State -1]
type = ChangeState
value = 3020
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = power >= 1000
trigger1 = command = "Spunches_x"
trigger2 = power >= 1000
trigger2 = power < 2000
trigger2 = command = "Spunches_y"
trigger3 = power >= 1000
trigger3 = power < 2000
trigger3 = command = "Spunches_z"


;medium
[State -1]
type = ChangeState
value = 3010
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = power >= 2000
trigger1 = command = "Spunches_y"
trigger2 = power >= 2000
trigger2 = power < 3000
trigger2 = command = "Spunches_z"

;heavy
[State -1]
type = ChangeState
value = 3000
triggerall = command = "Spunches_z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = power = 3000

;---------------------------------------------------------------------------
;kick combo
;light
[State -1]
type = ChangeState
value = 3120
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = power >= 1000
trigger1 = command = "Skick_a"
trigger2 = power >= 1000
trigger2 = power < 2000
trigger2 = command = "Skick_b"
trigger3 = power >= 1000
trigger3 = power < 2000
trigger3 = command = "Skick_c"


;medium
[State -1]
type = ChangeState
value = 3110
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = power >= 2000
trigger1 = command = "Skick_b"
trigger2 = power >= 2000
trigger2 = power < 3000
trigger2 = command = "Skick_c"

;heavy
[State -1]
type = ChangeState
value = 3100
triggerall = command = "Skick_c"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = power = 3000

;---------------------------------------------------------------------------
;Jaguar_Tooth_a
[State -1]
type = ChangeState
value = 2000
triggerall = command = "Jagtooth_a"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jaguar_Tooth_b
[State -1]
type = ChangeState
value = 2100
triggerall = command = "Jagtooth_b"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jaguar_Tooth_c
[State -1]
type = ChangeState
value = 2200
triggerall = command = "Jagtooth_c"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jaguar_a
[State -1]
type = ChangeState
value = 1000
triggerall = command = "uppercut_a"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Jaguar_b
[State -1]
type = ChangeState
value = 1100
triggerall = command = "uppercut_b"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Jaguar_c
[State -1]
type = ChangeState
value = 1200
triggerall = command = "uppercut_c"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jaguar_kick_a
[State -1]
type = ChangeState
value = 1001
triggerall = command = "Jagkick_a"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jaguar_kick_b
[State -1]
type = ChangeState
value = 1101
triggerall = command = "Jagkick_b"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jaguar_kick_c
[State -1]
type = ChangeState
value = 1201
triggerall = command = "Jagkick_c"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_A
[State -1]
type = ChangeState
value = 210
triggerall = command = "a";Place name of command here
triggerall = command != "holddown";Standing moves should have this line
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact

;---------------------------------------------------------------------------
;Stand_B
[State -1]
type = ChangeState
value = 211
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact  ;If move hits, or is guarded by opponent
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 201
trigger4 = movecontact

;----------------------------------------------------------------------------
;Stand_C - Close
[State -1]
type = ChangeState
value = 215
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 36
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 211
trigger2 = movecontact
trigger3 = stateno = 201
trigger3 = movecontact

;----------------------------------------------------------------------------
;Stand_C
[State -1]
type = ChangeState
value = 212
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 211
trigger2 = movecontact
trigger3 = stateno = 201
trigger3 = movecontact

;---------------------------------------------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = 411
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 410
trigger2 = movecontact

;---------------------------------------------------------------------------
;Crouch_C
[State -1]
type = ChangeState
value = 412
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 411
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 610
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_B
[State -1]
type = ChangeState
value = 611
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_C
[State -1]
type = ChangeState
value = 612
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_X
[State -1]
type = ChangeState
value = 200
triggerall = command = "x";Place name of command here
triggerall = command != "holddown";Standing moves should have this line
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact

;---------------------------------------------------------------------------
;Stand_forward + Y
[State -1]
type = ChangeState
value = 205
triggerall = command = "fwd_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_Y
[State -1]
type = ChangeState
value = 201
triggerall = command = "y";Place name of command here
triggerall = command != "holddown";Standing moves should have this line
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = movecontact

;---------------------------------------------------------------------------
;Stand_Z
[State -1]
type = ChangeState
value = 202
triggerall = command = "z";Place name of command here
triggerall = command != "holddown";Standing moves should have this line
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact
trigger3 = stateno = 211
trigger3 = movecontact

;---------------------------------------------------------------------------
;Crouch_X
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_Y
[State -1]
type = ChangeState
value = 401
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact

;---------------------------------------------------------------------------
;Crouch_Z
[State -1]
type = ChangeState
value = 402
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 401
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump_X
[State -1]
type = ChangeState
value = 600
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_Y
[State -1]
type = ChangeState
value = 601
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_Z
[State -1]
type = ChangeState
value = 602
trigger1 = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Taunt
[State -1]
type = ChangeState
value = 195
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Zero/Alpha Counter
[State -1]
type = ChangeState
value = 900
triggerall = StateNo >= 150
triggerall = StateNo <= 153
trigger1 = Command = "QCB_a"
trigger2 = Command = "QCB_b"
trigger3 = Command = "QCB_c"
trigger4 = Command = "ff_a"
trigger5 = Command = "ff_b"
trigger6 = Command = "ff_c"

;---------------------------------------------------------------------------
;Recovery Roll 
[State -1]
type = ChangeState
value = 910
triggerall = command = "fbc"
triggerall = alive = 1
trigger1 = stateno = 5050
trigger2 = stateno = 5071

;Recovery Roll 
[State -1]
type = ChangeState
value = 915
triggerall = command = "bc"
triggerall = alive = 1
trigger1 = stateno = 5050
trigger2 = stateno = 5071

;Recovery Roll 
[State -1]
type = ChangeState
value = 910
triggerall = command = "fab"
triggerall = alive = 1
trigger1 = stateno = 5050
trigger2 = stateno = 5071

;Recovery Roll 
[State -1]
type = ChangeState
value = 915
triggerall = command = "ab"
triggerall = alive = 1
trigger1 = stateno = 5050
trigger2 = stateno = 5071

;Evade Roll 
[State -1]
type = ChangeState
value = 910
triggerall = StateNo >= 150
triggerall = StateNo <= 153
trigger1 = Command = "QCB_x"
trigger2 = Command = "QCB_y"
trigger3 = Command = "QCB_z"
trigger4 = Command = "ff_x"
trigger5 = Command = "ff_y"
trigger6 = Command = "ff_z"
