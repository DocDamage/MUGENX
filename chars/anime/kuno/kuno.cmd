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
name = "QCFQCF_b"
command = ~D, F, D, F, b
time = 25

[Command]
name = "QCFQCF_x"
command = ~D, F, D, F, x
time = 25

[Command]
name = "QCFQCF_y"
command = ~D, F, D, F, y
time = 25

[Command]
name = "QCFQCF_a"
command = ~D, F, D, F, a
time = 25

;-| Special Motions |------------------------------------------------------
;-----------------
; QCF
[Command]
name = "QCF_a"
command = ~D, F, a
time = 15

[Command]
name = "QCF_b"
command = ~D, F, b
time = 15

[Command]
name = "QCF_ab"
command = ~D, F, a+b
time = 15

[Command]
name = "QCF_c"
command = ~D, F, c
time = 15

[Command]
name = "QCF_x"
command = ~D, F, x
time = 15

[Command]
name = "QCF_y"
command = ~D, F, y
time = 15

[Command]
name = "QCF_z"
command = ~D, F, z
time = 15

;-----------------
; QCB
[Command]
name = "QCB_a"
command = ~D, B, a
time = 15

[Command]
name = "QCB_b"
command = ~D, B, b
time = 15

[Command]
name = "QCB_ab"
command = ~D, B, a+b
time = 15

[Command]
name = "QCB_c"
command = ~D, B, c
time = 15

[Command]
name = "QCB_x"
command = ~D, B, x
time = 15

[Command]
name = "QCB_y"
command = ~D, B, y
time = 15

[Command]
name = "QCB_z"
command = ~D, B, z
time = 15

[Command]
name = "QCD_y"
command = ~B, D, y
time = 15

[Command]
name = "QCD_ab"
command = DB, D, a + b
time = 15

;-----------------
; Uppercut
[Command]
name = "uppercut_a"
command = ~F, D, DF, a
time = 20

[Command]
name = "uppercut_b"
command = ~F, D, DF, b
time = 20

[Command]
name = "uppercut_c"
command = ~F, D, DF, c
time = 20

[Command]
name = "uppercut_x"
command = ~F, D, DF, x
time = 20

[Command]
name = "uppercut_y"
command = ~F, D, DF, y
time = 20

[Command]
name = "uppercut_z"
command = ~F, D, DF, z
time = 20


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

[Command]
name = "downback_x"
command = /DB,c
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

[Command]
name = "holda"
command = /$a
time = 1

[Command]
name = "holdb"
command = /$b
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "charge"
command = /$a+b
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
;Charge
[State -1]
type = ChangeState
value = 2500
triggerall = power < 3000
trigger1 = command = "ab"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_Throw
[State -1]
type = Null ;ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "fwd_b";Near, p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2bodydist X < 3
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_b";Near, p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2bodydist X < 3
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_b";Near, p2 stand
trigger3 = p2bodydist X < 5
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_b";Near, p2 crouch
trigger4 = p2bodydist X < 5
trigger4 = p2statetype = C
trigger4 = p2movetype != H

;Air_Throw1 (close dir+b)
[State -1]
type = Null ;ChangeState
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
;---------------------------------------------------------------------------
;Super#3
[State -1]
type = ChangeState
value = 4200
triggerall = command = "QCFQCF_y"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movehit
trigger2 = stateno >= 200
trigger2 = stateno <= 450


;Super#1
[State -1]
type = ChangeState
value = 4000
triggerall = command = "QCFQCF_b"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movehit
trigger2 = stateno >= 200
trigger2 = stateno <= 450

;Super#2
[State -1]
type = ChangeState
value = 4100
triggerall = command = "QCFQCF_a"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movehit
trigger2 = stateno >= 200
trigger2 = stateno <= 450

;Super#4
[State -1]
type = ChangeState
value = 4300
triggerall = command = "QCFQCF_x"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movehit
trigger2 = stateno >= 200
trigger2 = stateno <= 450

;Super#5
[State -1]
type = ChangeState
value = 4400
triggerall = command = "QCFQCF_x"
triggerall = power >= 3000
triggerall = statetype = A
trigger1 = stateno = 1010
trigger2 = stateno = 1210
trigger3 = stateno = 1020

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Uppercut_a
[State -1]
type = ChangeState
value = 1200
triggerall = command = "uppercut_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movehit
trigger2 = stateno = 200
trigger3 = movehit
trigger3 = stateno = 210

;Uppercut_x
[State -1]
type = ChangeState
value = 1000
triggerall = command = "uppercut_x"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Uppercut_special_y
[State -1]
type = ChangeState
value = 1050
triggerall = command = "uppercut_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = NumProjID(1100) = 1
trigger2 = stateno = 1100
trigger3 = NumProjID(1150) = 1
trigger3 = stateno = 1150

;Hadoken_a_x_combo
[State -1]
type = ChangeState
value = 1170
triggerall = movehit
triggerall = stateno >= 200
triggerall = stateno <= 450
trigger1 = command = "QCF_y"
trigger2 = command = "QCF_b"

;Hadoken_a
[State -1]
type = ChangeState
value = 1150
triggerall = command = "QCF_b"
triggerall = NumProjID(1150) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

;Hadoken_x
[State -1]
type = ChangeState
value = 1100
triggerall = command = "QCF_y"
triggerall = NumProjID(1110) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

;Melon_Splicing_a_x_combo
[State -1]
type = ChangeState
value = 2070
triggerall = movehit
triggerall = stateno >= 200
triggerall = stateno <= 450
trigger1 = command = "QCB_a"
trigger2 = command = "QCB_x"

;Melon_Splicing_a
[State -1]
type = ChangeState
value = 2050
triggerall = command = "QCB_a"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Melon_Splicing_x
[State -1]
type = ChangeState
value = 2000
triggerall = command = "QCB_x"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Melon_Splicing_y
[State -1]
type = ChangeState
value = 2100
triggerall = command = "QCB_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = NumProjID(1100) = 1
trigger2 = stateno = 1100
trigger3 = NumProjID(1150) = 1
trigger3 = stateno = 1150

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Slash_A_B_[Close]
[State -1]
type = ChangeState
value = 225
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = command != "holddown"
triggerall = P2BodyDist X < 20
trigger1 = command = "a"
trigger2 = command = "b"

;Slash_A
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Slash_B
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movehit
trigger2 = stateno = 200
trigger3 = movehit
trigger3 = stateno = 225

;Fwd_Slash_C_[3 Hit Combo!]
[State -1]
type = ChangeState
value = 220
triggerall = command = "fwd_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movehit
trigger2 = stateno = 210

;Slash_C_D_[Close]
[State -1]
type = ChangeState
value = 235
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = command != "holddown"
triggerall = P2BodyDist X < 30
trigger1 = command = "x"
trigger2 = command = "y"

;Slash_C_[Close_Combo]
[State -1]
type = ChangeState
value = 236
triggerall = statetype = S
triggerall = command != "holddown"
triggerall = P2BodyDist X < 30
triggerall = command = "x"
trigger1 = movehit
trigger1 = stateno = 225

;Slash_D_[Close_Combo]
[State -1]
type = ChangeState
value = 236
triggerall = statetype = S
triggerall = command != "holddown"
triggerall = P2BodyDist X < 30
triggerall = command = "y"
trigger1 = movehit
trigger1 = stateno = 225

;Slash_C_[run]
[State -1]
type = ChangeState
value = 221
triggerall = command = "x"
triggerall = command != "holddown"
;triggerall = P2BodyDist X >= 20
triggerall = ctrl = 1
trigger1 = stateno = 100
trigger2 = stateno = 101

;Slash_C_[far]
[State -1]
type = ChangeState
value = 220
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2BodyDist X >= 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movehit
trigger2 = Time > 10
trigger2 = stateno = 430

;Slash_D_[run]
[State -1]
type = ChangeState
value = 231
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2BodyDist X >= 80
triggerall = ctrl = 1
trigger1 = stateno = 100
trigger2 = stateno = 101

;Slash_D_[far]
[State -1]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2BodyDist X >= 30
trigger1 = statetype = S
trigger1 = ctrl = 1

;Slash_Crouch_A
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;Slash_Crouch_B
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;Slash_Crouch_C
[State -1]
type = ChangeState
value = 420
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;Slash_Crouch_D
[State -1]
type = ChangeState
value = 430
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;Slash_Air_A_B
[State -1]
type = ChangeState
value = 600
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = command = "a"
trigger2 = command = "b"

;Slash_Air_C
[State -1]
type = ChangeState
value = 620
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Slash_Air_D
[State -1]
type = ChangeState
value = 630
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1


