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
; QCBHCF
[Command]
name = "QCBHCF_a"
command = ~D, DB, D, DF, a
time = 35

[Command]
name = "QCBHCF_b"
command = ~D, DB, D, DF, b
time = 35

[Command]
name = "QCBHCF_x"
command = ~D, DB, D, DF, x
time = 35

[Command]
name = "QCFQCF_x"
command = ~D, DF, D, DF, x
time = 25

[Command]
name = "FHCF_x"
command = ~F, ~DB, D, DF, x
time = 25

[Command]
name = "QCBHCF_ab"
command = ~D, DB, D, DF, a+b
time = 35

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
name = "QCD_ab"
command = ~DB, D, a + b
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

[Command]
name = "bx"
command = b+x
time = 1

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "hyper"
command = a+b+x
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
name = "holdx"
command = /$x
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

;COMBO_BREAKER_HYPER
[State -1]
type = ChangeState
value = 21000
triggerall = command = "QCD_ab"
triggerall = Var(2) >= 2
triggerall = alive = 1
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152
trigger4 = stateno = 153
trigger5 = stateno = 154
trigger6 = stateno = 155

;COMBO_BREAKER
[State -1]
type = ChangeState
value = 2100
triggerall = command = "QCD_ab"
triggerall = alive = 1
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152
trigger4 = stateno = 153
trigger5 = stateno = 154
trigger6 = stateno = 155

;===========================================================================
;---------------------------------------------------------------------------
;FATHERS_RAGE_HYPER
[State -1]
type = ChangeState
value = 4400
triggerall = command = "QCBHCF_ab"
triggerall = Var(2) >= 2
trigger1 = statetype = S
trigger1 = ctrl = 1

;!!!RAGE_EXPLOSION!!!(HYPER_MODE)
[State -1]
type = ChangeState
value = 1210
triggerall = command = "hyper"
trigger1 = power >= 3000
trigger1 = Var(2) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

;THOUSAND_CURSES
[State -1]
type = ChangeState
value = 4300
triggerall = command = "FHCF_x"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1

;FATHERS_RAGE#1
[State -1]
type = ChangeState
value = 4000
triggerall = command = "QCBHCF_x"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1

;RUMIKOS_RAGE
[State -1]
type = ChangeState
value = 4100
triggerall = command = "QCBHCF_b"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1

;FATHERS_RAGE#2
[State -1]
type = ChangeState
value = 4200
triggerall = command = "QCFQCF_x"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;-----------------HYPER_MODE__SPECIALS--------------------------------------
;---------------------------------------------------------------------------
;LEAPING_HEADBUTT_HYPER
[State -1]
type = ChangeState
value = 11000
triggerall = command = "uppercut_y"
triggerall = Var(2) >= 2
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact

;RUNNING_SHOULDER_RAM_HYPER
[State -1]
type = ChangeState
value = 10000
triggerall = command = "QCF_x"
triggerall = Var(2) >= 2
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact

;VERBAL_ATTACK_HYPER
[State -1]
type = ChangeState
value = 16000
triggerall = command = "QCB_b"
triggerall = Var(2) >= 2
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact

;ADDITIONAL_LEAPING_ROUNDHOUSE_HYPER
[State -1]
type = ChangeState
value = 14200
triggerall = command = "QCB_x"
triggerall = Var(2) >= 2
trigger1 = stateno = 11100
trigger1 = movecontact

;LEAPING_ROUNDHOUSE_HYPER
[State -1]
type = ChangeState
value = 14000
triggerall = command = "QCB_x"
triggerall = Var(2) >= 2
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact

;PANDA_RAGE_HYPER
[State -1]
type = ChangeState
value = 15000
triggerall = command = "QCB_y"
triggerall = Var(2) >= 2
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact

;SUPERSONIC_PUNCH_HYPER
[State -1]
type = ChangeState
value = 17000
triggerall = command = "QCF_b"
triggerall = Var(2) >= 2
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact

;---------------------------------------------------------------------------
;---------------------NORMAL_SPECIALS------------------------------------------
;---------------------------------------------------------------------------
;LEAPING_HEADBUTT
[State -1]
type = ChangeState
value = 1100
triggerall = command = "uppercut_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact

;RUNNING_SHOULDER_RAM
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
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact

;VERBAL_ATTACK
[State -1]
type = ChangeState
value = 1600
triggerall = command = "QCB_b"
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact

;ADDITIONAL_LEAPING_ROUNDHOUSE
[State -1]
type = ChangeState
value = 1420
triggerall = command = "QCB_x"
trigger1 = stateno = 1110
trigger1 = movecontact

;LEAPING_ROUNDHOUSE
[State -1]
type = ChangeState
value = 1400
triggerall = command = "QCB_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact

;PANDA_RAGE
[State -1]
type = ChangeState
value = 1500
triggerall = command = "QCB_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact

;SUPERSONIC_PUNCH
[State -1]
type = ChangeState
value = 1700
triggerall = command = "QCF_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact

;---------------------------------------------------------------------------
;CHARGE
[State -1]
type = ChangeState
value = 1200
triggerall = power < 3000
trigger1 = command = "ab"
trigger1 = statetype = S
trigger1 = var(2) < 2
trigger1 = ctrl = 1

;HELPER
[State -1]
type = ChangeState
value = 3000
triggerall = command = "ab"
triggerall = power >= 1000
trigger1 = stateno = 5110

;===========================================================================
;---------------------------------------------------------------------------
;Stand_Throw (close dir+b)_HYPER
[State -1]
type = ChangeState
value = 13000
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 5 ;Near P2
triggerall = Var(2) >= 2
trigger1 = command = "fwd_b"
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_b";p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_b";p2 stand
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_b";p2 crouch
trigger4 = p2statetype = C
trigger4 = p2movetype != H

;---------------------------------------------------------------------------
;Stand_Throw (close dir+b)
[State -1]
type = ChangeState
value = 1300
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 5 ;Near P2
trigger1 = command = "fwd_b";p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_b";p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_b";p2 stand
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_b";p2 crouch
trigger4 = p2statetype = C
trigger4 = p2movetype != H

;---------------------------------------------------------------------------
;EVADE
[State -1]
type = ChangeState
value = 2200
triggerall = command = "xy"
trigger1 = statetype = S
trigger1 = ctrl = 1

;TAUNT
[State -1]
type = ChangeState
value = 2500
triggerall = command = "bx"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
HYPER_ATTACKS
;---------------------------------------------------------------------------
;JAB
[State -1]
type = ChangeState
value = 201
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = Var(2) >= 2
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = time >= 5

;OSTRICH_PUNCH
[State -1]
type = ChangeState
value = 211
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = Var(2) >= 2
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact

;QUICK_KICK
[State -1]
type = ChangeState
value = 221
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = Var(2) >= 2
trigger1 = statetype = S
trigger1 = ctrl = 1

;ROUNDHOUSE
[State -1]
type = ChangeState
value = 231
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = Var(2) >= 2
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact
trigger3 = stateno = 211
trigger3 = movecontact
trigger4 = stateno = 401
trigger4 = movecontact
trigger5 = stateno = 411
trigger5 = movecontact
trigger6 = stateno = 421
trigger6 = movecontact

;CROUCH_JAB
[State -1]
type = ChangeState
value = 401
triggerall = statetype = C
triggerall = command = "holddown"
triggerall = Var(2) >= 2
trigger1 = command = "a"
trigger1 = ctrl = 1

;SLIDE
[State -1]
type = ChangeState
value = 411
triggerall = statetype = C
triggerall = command = "holddown"
triggerall = command = "x"
triggerall = Var(2) >= 2
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact
trigger3 = stateno = 211
trigger3 = movecontact
trigger4 = stateno = 401
trigger4 = movecontact
trigger5 = stateno = 421
trigger5 = movecontact

[State -1]
type = ChangeState
value = 411
triggerall = statetype = C
triggerall = command = "holddown"
triggerall = command = "y"
triggerall = Var(2) >= 2
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact
trigger3 = stateno = 211
trigger3 = movecontact
trigger4 = stateno = 401
trigger4 = movecontact
trigger5 = stateno = 421
trigger5 = movecontact

;QUICK_CROUCH_KICK
[State -1]
type = ChangeState
value = 421
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = Var(2) >= 2
trigger1 = statetype = C
trigger1 = ctrl = 1

;BUTT_KICK
[State -1]
type = ChangeState
value = 601
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = Var(2) >= 2
trigger1 = command = "a"
trigger2 = command = "b"

;OSTRICH_KICK_AIR
[State -1]
type = ChangeState
value = 611
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = Var(2) >= 2
trigger1 = command = "x"
trigger2 = command = "y"

;---------------------------------------------------------------------------
NORMAL_ATTACKS
;---------------------------------------------------------------------------
;JAB
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time >= 5

;---------------------------------------------------------------------------
;OSTRICH_PUNCH
[State -1]
type = ChangeState
value = 210
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact

;---------------------------------------------------------------------------
;QUICK_KICK
[State -1]
type = ChangeState
value = 220
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;ROUNDHOUSE
[State -1]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
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
trigger6 = stateno = 420
trigger6 = movecontact

;---------------------------------------------------------------------------
;CROUCH_JAB
[State -1]
type = ChangeState
value = 400
triggerall = statetype = C
triggerall = command = "holddown"
trigger1 = command = "a"
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;SLIDE
[State -1]
type = ChangeState
value = 410
triggerall = statetype = C
triggerall = command = "holddown"
triggerall = command = "x"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 420
trigger5 = movecontact

[State -1]
type = ChangeState
value = 410
triggerall = statetype = C
triggerall = command = "holddown"
triggerall = command = "y"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 420
trigger5 = movecontact

;---------------------------------------------------------------------------
;QUICK_CROUCH_KICK
[State -1]
type = ChangeState
value = 420
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;BUTT_KICK
[State -1]
type = ChangeState
value = 600
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = command = "a"
trigger2 = command = "b"

;---------------------------------------------------------------------------
;OSTRICH_KICK_AIR
[State -1]
type = ChangeState
value = 610
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = command = "x"
trigger2 = command = "y"

