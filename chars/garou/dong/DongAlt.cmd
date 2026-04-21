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
;-----------------
; Rush Super
[Command]
name = "RUSH"
command = ~D, DF, F, D, DF, F, D, DF, F, y
time = 75

; Rush Super
[Command]
name = "Lvl3Ksuper"
command = ~D, DF, F, D, DF, F, D, DF, F, b
time = 75

; HP SUPER
[Command]
name = "HPSUPER"
command = ~D, DF, F, D, DF, F, y
time = 30

; HK SUPER
[Command]
name = "HKSUPER"
command = ~D, DF, F, D, DF, F, b
time = 30

; WK SUPER
[Command]
name = "WKSUPER"
command = ~D, DF, F, D, DF, F, a
time = 30

; WP SUPER
[Command]
name = "WPSUPER"
command = ~D, DF, F, D, DF, F, x
time = 30

;-| Special Motions |------------------------------------------------------
;-----------------
; DP+WP
[Command]
name = "DP_a"
command = ~F, D, DF, x

; DP+SP
[Command]
name = "DP_x"
command = ~F, D, DF, y

[Command]
name = "Hienzan_b"
command = ~45$D, U, a
time = 10

[Command]
name = "Hienzan_y"
command = ~45$D, U, b
time = 10

; QCF+WK
[Command]
name = "QCF_b"
command = ~D, DF, F, a

; QCF+SK
[Command]
name = "QCF_y"
command = ~D, DF, F, b

; HCB_K
[Command]
name = "HCB_x"
command = ~F, D, B, y
time = 20

; QCF+WK
[Command]
name = "QCB_b"
command = ~D, DB, B, a

; QCF+SK
[Command]
name = "QCB_y"
command = ~D, DB, B, b

; RoundHouse
[Command]
name = "RH"
command = /$D, x+a
time = 20

; Feint1
[Command]
name = "Feint1"
command = /F, x+y
time = 20

; Feint2
[Command]
name = "Feint2"
command = /D, x+y
time = 20

; Overhead
[Command]
name = "Overhead"
command = x+a
time = 20

; TOP Attack
[Command]
name = "TOP"
command = y+b
time = 20

[Command]
name = "longjump"
command = $D, $U
time = 18

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"       ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"       ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+a
time = 1

[Command]
name = "ab"
command = x+a
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,x
time = 1

[Command]
name = "fwd_b"
command = /F,a
time = 1

[Command]
name = "fwd_c"
command = /F,a
time = 1

[Command]
name = "fwd_x"
command = /F,b
time = 1

[Command]
name = "fwd_y"
command = /F,b
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,x
time = 1

[Command]
name = "back_b"
command = /B,a
time = 1

[Command]
name = "back_c"
command = /B,y
time = 1

[Command]
name = "down_a"
command = /$D,x
time = 1

[Command]
name = "down_b"
command = /$D,a
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "down_x"
command = /$D,y
time = 1

[Command]
name = "down_y"
command = /$D,b
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_ab"
command = /F, x+a
time = 1

[Command]
name = "back_ab"
command = /B, x+a
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = x
time = 1

[Command]
name = "b"
command = a
time = 1

[Command]
name = "Taunt"
command = s
time = 1

[Command]
name = "x"
command = y
time = 1

[Command]
name = "hold_y"
command = /b
time = 1

[Command]
name = "y"
command = b
time = 1

[Command]
name = "z"
command = z
time = 1

;-| Hold Dir |--------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "upback"
command = UB
time = 1

[Command]
name = "downback"
command = DB
time = 1

;-| Hold Dir |--------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
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
; Rush Super
[State -1]
type = ChangeState
value = 3040
triggerall = command = "RUSH"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger4 = stateno = 1000
trigger4 = movecontact

;---------------------------------------------------------------------------
; WK SUPER
[State -1]
type = ChangeState
value = 3000
triggerall = command = "WKSUPER"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 1000
trigger4 = movecontact

;---------------------------------------------------------------------------
;Lvl3 HK SUPER
[State -1]
type = ChangeState
value = 3050
triggerall = command = "Lvl3Ksuper"
triggerall = power >= 3000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 1000
trigger4 = movecontact

;---------------------------------------------------------------------------
; HK SUPER
[State -1]
type = ChangeState
value = 3020
triggerall = command = "HKSUPER"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 1000
trigger4 = movecontact

;---------------------------------------------------------------------------
; WP SUPER
[State -1]
type = ChangeState
value = 3010
triggerall = command = "WPSUPER"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact

;---------------------------------------------------------------------------
; HP SUPER
[State -1]
type = ChangeState
value = 3030
triggerall = command = "HPSUPER"
triggerall = power >= 2000
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; QCF+WK
[State -1]
type = ChangeState
value = 1000
triggerall = command = "QCF_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 420
trigger4 = movecontact

;---------------------------------------------------------------------------
; QCF+SK
[State -1]
type = ChangeState
value = 1010
triggerall = command = "QCF_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 420
trigger4 = movecontact

;---------------------------------------------------------------------------
; HCB+P
[State -1]
type = ChangeState
value = 1020
triggerall = command = "HCB_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact

;---------------------------------------------------------------------------
; QCB+WK
[State -1]
type = ChangeState
value = 1030
triggerall = command = "QCB_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 420
trigger4 = movecontact

;---------------------------------------------------------------------------
; QCB+SK
[State -1]
type = ChangeState
value = 1040
triggerall = command = "QCB_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 420
trigger4 = movecontact

;---------------------------------------------------------------------------
; DP+WP
[State -1]
type = ChangeState
value = 1050
triggerall = command = "DP_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 225
trigger4 = movecontact
trigger5 = stateno = 420
trigger5 = movecontact

;---------------------------------------------------------------------------
; DP+SP
[State -1]
type = ChangeState
value = 1060
triggerall = command = "DP_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 225
trigger4 = movecontact
trigger5 = stateno = 420
trigger5 = movecontact

;---------------------------------------------------------------------------
; Hienzan strong
[State -1]
type = ChangeState
value = 1080
triggerall = command = "Hienzan_y"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 40
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 205
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 220
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 420
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact

;---------------------------------------------------------------------------
; Hienzan Weak
[State -1]
type = ChangeState
value = 1090
triggerall = command = "Hienzan_b"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 40
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 205
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 220
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 420
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact

;---------------------------------------------------------------------------
;WeakD+K In Air
[State -1]
type = Changestate
value = 1070
triggerall = command = "down_b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact

;---------------------------------------------------------------------------
;StrongD+K In Air
[State -1]
type = Changestate
value = 1070
triggerall = command = "down_y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact

;---------------------------------------------------------------------------
; RoundHouse
[State -1]
type = ChangeState
value = 250
triggerall = command = "RH"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;---------------------------------------------------------------------------
; Overhead
[State -1]
type = ChangeState
value = 260
triggerall = command = "Overhead"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; TOP Attack
[State -1]
type = ChangeState
value = 270
triggerall = statetype != A
triggerall = ctrl = 1
triggerall = Var(3) = [1,3]
trigger1 = command = "TOP"

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
; Throw
[State -1]
type = ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "fwd_c"   
trigger1 = stateno != 100    
trigger1 = p2bodydist X < 3
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_c"   
trigger2 = stateno != 100    
trigger2 = p2bodydist X < 3
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_c"  
trigger3 = p2bodydist X < 5
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_c"  
trigger4 = p2bodydist X < 5
trigger4 = p2statetype = C
trigger4 = p2movetype != H

;---------------------------------------------------------------------------
; Weak Punch
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = P2bodydist X > 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time > 7

;---------------------------------------------------------------------------
; Hard Punch
[State -1]
type = ChangeState
value = 220
triggerall = command = "x"
triggerall = P2bodydist X > 20
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Weak Kick
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = P2bodydist X > 20
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Hard Kick
[State -1]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = P2bodydist X > 20
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Weak Punch (Close)
[State -1]
type = ChangeState
value = 205
triggerall = command = "a"
triggerall = P2bodydist X <= 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time > 7

;---------------------------------------------------------------------------
; Hard Punch (Close)
[State -1]
type = ChangeState
value = 225
triggerall = command = "x"
triggerall = P2bodydist X <= 20
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Weak Kick (Close)
[State -1]
type = ChangeState
value = 215
triggerall = command = "b"
triggerall = P2bodydist X <= 20
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Hard Kick (Close)
[State -1]
type = ChangeState
value = 235
triggerall = command = "y"
triggerall = P2bodydist X <= 20
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Weak Punch (Crouch)
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 410
trigger2 = movecontact
trigger3 = stateno = 420
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact

;---------------------------------------------------------------------------
; Hard Punch (Crouch)
[State -1]
type = ChangeState
value = 420
triggerall = command = "x"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 410
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact

;---------------------------------------------------------------------------
; Weak Kick (Crouch)
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 420
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 205
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 215
trigger7 = movecontact

;---------------------------------------------------------------------------
; Hard Kick (Crouch)
[State -1]
type = ChangeState
value = 430
triggerall = command = "y"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;JUMPING A
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;JUMPING B
[State -1]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;JUMPING C
[State -1]
type = ChangeState
value = 620
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;JUMPING D
[State -1]
type = ChangeState
value = 630
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Taunt
[State -1]
type = ChangeState
value = 700
triggerall = command = "Taunt"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Feint 1
[State -1]
type = ChangeState
value = 710
triggerall = command = "Feint1"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;---------------------------------------------------------------------------
; Feint 2
[State -1]
type = ChangeState
value = 720
triggerall = command = "Feint2"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

;---------------------------------------------------------------------------
[State -1]
type = VarSet
v = 5
value = 1
triggerall = command = "x"
triggerall = Pos Y < 8
trigger1 = stateno = 5050
trigger2 = stateno = 5071

[State -1]
type = VarSet
v = 5
value = 2
triggerall = command = "a"
triggerall = Pos Y < 8
trigger1 = stateno = 5050
trigger2 = stateno = 5071

[State -1]
type = VarSet
v = 5
value = 3
triggerall = command = "y"
triggerall = Pos Y < 8
trigger1 = stateno = 5050
trigger2 = stateno = 5071

[State -1]
type = VarSet
v = 5
value = 4
triggerall = command = "b"
triggerall = Pos Y < 8
trigger1 = stateno = 5050
trigger2 = stateno = 5071

