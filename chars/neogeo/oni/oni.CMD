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
name = "BloodyMess_Level1"
command = ~D, F, D, F, y
time = 35

[Command]
name = "BloodyMess_Level2"
command = ~D, F, D, F, b
time = 35

;-| Special Motions |------------------------------------------------------

[Command]
name = "AirCut_W"
command = ~F, D, DF, x
time = 15

[Command]
name = "AirCut_S"
command = ~F, D, DF, a
time = 15

[Command]
name = "CuttingEdge_W"
command = ~D, B, x
time = 25

[Command]
name = "CuttingEdge_W"
command = ~F, D, B, x
time = 25

[Command]
name = "CuttingEdge_S"
command = ~D, B, a
time = 25

[Command]
name = "CuttingEdge_S"
command = ~F, D, B, a
time = 25

[Command]
name = "TheRipper_S"
command = ~B, D, F, x
time = 15

[Command]
name = "TheRipper_L"
command = ~B, D, F, a
time = 15

[Command]
name = "ColdSteel_S"
command = ~D, B, x
time = 15

[Command]
name = "ColdSteel_L"
command = ~D, B, a
time = 15

[Command]
name = "ColdSteel_Any"
command = ~D, B, x
time = 15

[Command]
name = "ColdSteel_Any"
command = ~D, B, a
time = 15

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
name = "FirstImpactStarter"
command = a+b
time = 1

[Command]
name = "Counter"
command = /B, a+b
time = 1

[Command]
name = "Dodge"
command = x+y
time = 1

[Command]
name = "Roll_F"
command = /F, x+y
time = 1

[Command]
name = "Roll_B"
command = /B, x+y
time = 1

[Command]
name = "SafeFall"
command = x+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x, a, b, c, y
time = 1

[Command]
name = "ab"
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "dwnfwd_y"
command = /DF,y
time = 1

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
name = "back_y"
command = /B,y
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
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
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "fwd";Required (do not remove)
command = F
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
name = "holdup"
command = /$U
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
name = "hold_b"
command = /b
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
; Bloody Mess (Level 1)
[State -1]
type = ChangeState
value = 3000
triggerall = command = "BloodyMess_Level1"
triggerall = Power >= 1000
trigger1 = Ctrl = 1
trigger1 = (StateType = S) || (StateType = C)
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger2 = AnimElem = 5, < 0
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger3 = AnimElem = 6, < 0
trigger4 = StateNo = 220
trigger4 = MoveContact
trigger4 = AnimElem = 7, < 0
trigger5 = StateNo = 240
trigger5 = MoveContact
trigger5 = AnimElem = 5, < 0
trigger6 = StateNo = 260
trigger6 = MoveContact
trigger6 = AnimElem = 7, < 0
trigger7 = StateNo = 300
trigger7 = MoveContact
trigger7 = AnimElem = 5, < 0
trigger8 = StateNo = 310
trigger8 = MoveContact
trigger8 = AnimElem = 7, < 0
trigger9 = StateNo = 320
trigger9 = MoveContact
trigger9 = AnimElem = 5, < 0
trigger10 = StateNo = 500
trigger10 = MoveContact
trigger10 = AnimElem = 8, < 0
trigger11 = StateNo = 510
trigger11 = MoveContact
trigger11 = AnimElem = 7, < 0
trigger12 = StateNo = 2240
trigger12 = MoveContact
trigger12 = AnimElem = 8, < 0

;---------------------------------------------------------------------------
; Bloody Mess (Level 2)
[State -1]
type = ChangeState
value = 3010
triggerall = command = "BloodyMess_Level2"
triggerall = Power >= 2000
trigger1 = Ctrl = 1
trigger1 = (StateType = S) || (StateType = C)
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger2 = AnimElem = 5, < 0
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger3 = AnimElem = 6, < 0
trigger4 = StateNo = 220
trigger4 = MoveContact
trigger4 = AnimElem = 7, < 0
trigger5 = StateNo = 240
trigger5 = MoveContact
trigger5 = AnimElem = 5, < 0
trigger6 = StateNo = 260
trigger6 = MoveContact
trigger6 = AnimElem = 7, < 0
trigger7 = StateNo = 300
trigger7 = MoveContact
trigger7 = AnimElem = 5, < 0
trigger8 = StateNo = 310
trigger8 = MoveContact
trigger8 = AnimElem = 7, < 0
trigger9 = StateNo = 320
trigger9 = MoveContact
trigger9 = AnimElem = 5, < 0
trigger10 = StateNo = 500
trigger10 = MoveContact
trigger10 = AnimElem = 8, < 0
trigger11 = StateNo = 510
trigger11 = MoveContact
trigger11 = AnimElem = 7, < 0
trigger12 = StateNo = 2240
trigger12 = MoveContact
trigger12 = AnimElem = 8, < 0

;===========================================================================
;---------------------------------------------------------------------------
; Cutting Edge (Weak)
[State -1]
type = ChangeState
value = 1100
triggerall = command = "CuttingEdge_W"
trigger1 = Ctrl = 1
trigger1 = StateType = A
trigger2 = StateNo = [400, 430]
trigger2 = MoveContact
trigger2 = Var(0) <= 4
trigger3 = StateNo = 2290
trigger3 = MoveContact
trigger3 = AnimElem = 7, < 0

;---------------------------------------------------------------------------
; Cutting Edge (Strong)
[State -1]
type = ChangeState
value = 1150
triggerall = command = "CuttingEdge_S"
trigger1 = Ctrl = 1
trigger1 = StateType = A
trigger2 = StateNo = [400, 430]
trigger2 = MoveContact
trigger2 = Var(0) <= 4
trigger3 = StateNo = 2290
trigger3 = MoveContact
trigger3 = AnimElem = 7, < 0

;---------------------------------------------------------------------------
; Air Cut (Weak)
[State -1]
type = ChangeState
value = 1000
triggerall = command = "AirCut_W"
trigger1 = Ctrl = 1
trigger1 = (StateType = S) || (StateType = C)
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger2 = AnimElem = 5, < 0
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger3 = AnimElem = 6, < 0
trigger4 = StateNo = 220
trigger4 = MoveContact
trigger4 = AnimElem = 7, < 0
trigger5 = StateNo = 240
trigger5 = MoveContact
trigger5 = AnimElem = 5, < 0
trigger6 = StateNo = 260
trigger6 = MoveContact
trigger6 = AnimElem = 7, < 0
trigger7 = StateNo = 300
trigger7 = MoveContact
trigger7 = AnimElem = 5, < 0
trigger8 = StateNo = 310
trigger8 = MoveContact
trigger8 = AnimElem = 7, < 0
trigger9 = StateNo = 320
trigger9 = MoveContact
trigger9 = AnimElem = 5, < 0
trigger10 = StateNo = 500
trigger10 = MoveContact
trigger10 = AnimElem = 8, < 0
trigger11 = StateNo = 510
trigger11 = MoveContact
trigger11 = AnimElem = 7, < 0
trigger12 = StateNo = 2240
trigger12 = MoveContact
trigger12 = AnimElem = 8, < 0

;---------------------------------------------------------------------------
; Air Cut (Strong)
[State -1]
type = ChangeState
value = 1050
triggerall = command = "AirCut_S"
trigger1 = Ctrl = 1
trigger1 = (StateType = S) || (StateType = C)
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger2 = AnimElem = 5, < 0
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger3 = AnimElem = 6, < 0
trigger4 = StateNo = 220
trigger4 = MoveContact
trigger4 = AnimElem = 7, < 0
trigger5 = StateNo = 240
trigger5 = MoveContact
trigger5 = AnimElem = 5, < 0
trigger6 = StateNo = 260
trigger6 = MoveContact
trigger6 = AnimElem = 7, < 0
trigger7 = StateNo = 300
trigger7 = MoveContact
trigger7 = AnimElem = 5, < 0
trigger8 = StateNo = 310
trigger8 = MoveContact
trigger8 = AnimElem = 7, < 0
trigger9 = StateNo = 320
trigger9 = MoveContact
trigger9 = AnimElem = 5, < 0
trigger10 = StateNo = 500
trigger10 = MoveContact
trigger10 = AnimElem = 8, < 0
trigger11 = StateNo = 510
trigger11 = MoveContact
trigger11 = AnimElem = 7, < 0
trigger12 = StateNo = 2240
trigger12 = MoveContact
trigger12 = AnimElem = 8, < 0

;---------------------------------------------------------------------------
; The Ripper (Short)
[State -1]
type = ChangeState
value = 1200
triggerall = command = "TheRipper_S"
trigger1 = Ctrl = 1
trigger1 = (StateType = S) || (StateType = C)
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger2 = AnimElem = 5, < 0
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger3 = AnimElem = 6, < 0
trigger4 = StateNo = 220
trigger4 = MoveContact
trigger4 = AnimElem = 7, < 0
trigger5 = StateNo = 240
trigger5 = MoveContact
trigger5 = AnimElem = 5, < 0
trigger6 = StateNo = 260
trigger6 = MoveContact
trigger6 = AnimElem = 7, < 0
trigger7 = StateNo = 300
trigger7 = MoveContact
trigger7 = AnimElem = 5, < 0
trigger8 = StateNo = 310
trigger8 = MoveContact
trigger8 = AnimElem = 7, < 0
trigger9 = StateNo = 320
trigger9 = MoveContact
trigger9 = AnimElem = 5, < 0
trigger10 = StateNo = 500
trigger10 = MoveContact
trigger10 = AnimElem = 8, < 0
trigger11 = StateNo = 510
trigger11 = MoveContact
trigger11 = AnimElem = 7, < 0
trigger12 = StateNo = 2240
trigger12 = MoveContact
trigger12 = AnimElem = 8, < 0

;---------------------------------------------------------------------------
; The Ripper (Long)
[State -1]
type = ChangeState
value = 1210
triggerall = command = "TheRipper_L"
trigger1 = Ctrl = 1
trigger1 = (StateType = S) || (StateType = C)
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger2 = AnimElem = 5, < 0
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger3 = AnimElem = 6, < 0
trigger4 = StateNo = 220
trigger4 = MoveContact
trigger4 = AnimElem = 7, < 0
trigger5 = StateNo = 240
trigger5 = MoveContact
trigger5 = AnimElem = 5, < 0
trigger6 = StateNo = 260
trigger6 = MoveContact
trigger6 = AnimElem = 7, < 0
trigger7 = StateNo = 300
trigger7 = MoveContact
trigger7 = AnimElem = 5, < 0
trigger8 = StateNo = 310
trigger8 = MoveContact
trigger8 = AnimElem = 7, < 0
trigger9 = StateNo = 320
trigger9 = MoveContact
trigger9 = AnimElem = 5, < 0
trigger10 = StateNo = 500
trigger10 = MoveContact
trigger10 = AnimElem = 8, < 0
trigger11 = StateNo = 510
trigger11 = MoveContact
trigger11 = AnimElem = 7, < 0
trigger12 = StateNo = 2240
trigger12 = MoveContact
trigger12 = AnimElem = 8, < 0

;---------------------------------------------------------------------------
; Cold Steel (Short) - Blow 1
[State -1]
type = ChangeState
value = 1300
triggerall = command = "ColdSteel_S"
trigger1 = Ctrl = 1
trigger1 = (StateType = S) || (StateType = C)
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger2 = AnimElem = 5, < 0
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger3 = AnimElem = 6, < 0
trigger4 = StateNo = 220
trigger4 = MoveContact
trigger4 = AnimElem = 7, < 0
trigger5 = StateNo = 240
trigger5 = MoveContact
trigger5 = AnimElem = 5, < 0
trigger6 = StateNo = 260
trigger6 = MoveContact
trigger6 = AnimElem = 7, < 0
trigger7 = StateNo = 300
trigger7 = MoveContact
trigger7 = AnimElem = 5, < 0
trigger8 = StateNo = 310
trigger8 = MoveContact
trigger8 = AnimElem = 7, < 0
trigger9 = StateNo = 320
trigger9 = MoveContact
trigger9 = AnimElem = 5, < 0
trigger10 = StateNo = 500
trigger10 = MoveContact
trigger10 = AnimElem = 8, < 0
trigger11 = StateNo = 510
trigger11 = MoveContact
trigger11 = AnimElem = 7, < 0
trigger12 = StateNo = 2240
trigger12 = MoveContact
trigger12 = AnimElem = 8, < 0

;---------------------------------------------------------------------------
; Cold Steel (Long) - Blow 1
[State -1]
type = ChangeState
value = 1305
triggerall = command = "ColdSteel_L"
trigger1 = Ctrl = 1
trigger1 = (StateType = S) || (StateType = C)
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger2 = AnimElem = 5, < 0
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger3 = AnimElem = 6, < 0
trigger4 = StateNo = 220
trigger4 = MoveContact
trigger4 = AnimElem = 7, < 0
trigger5 = StateNo = 240
trigger5 = MoveContact
trigger5 = AnimElem = 5, < 0
trigger6 = StateNo = 260
trigger6 = MoveContact
trigger6 = AnimElem = 7, < 0
trigger7 = StateNo = 300
trigger7 = MoveContact
trigger7 = AnimElem = 5, < 0
trigger8 = StateNo = 310
trigger8 = MoveContact
trigger8 = AnimElem = 7, < 0
trigger9 = StateNo = 320
trigger9 = MoveContact
trigger9 = AnimElem = 5, < 0
trigger10 = StateNo = 500
trigger10 = MoveContact
trigger10 = AnimElem = 8, < 0
trigger11 = StateNo = 510
trigger11 = MoveContact
trigger11 = AnimElem = 7, < 0
trigger12 = StateNo = 2240
trigger12 = MoveContact
trigger12 = AnimElem = 8, < 0

;---------------------------------------------------------------------------
; Cold Steel - Blow 2
[State -1]
type = ChangeState
value = 1310
triggerall = command = "ColdSteel_Any"
trigger1 = StateNo = [1300, 1305]
trigger1 = AnimElem = 5, > 0

;---------------------------------------------------------------------------
; Cold Steel - Blow 3
[State -1]
type = ChangeState
value = 1320
triggerall = command = "ColdSteel_Any"
trigger1 = StateNo = 1310
trigger1 = AnimElem = 5, > 0

;===========================================================================
;---------------------------------------------------------------------------
; First Impact Combo Starter
[State -1]
type = ChangeState
value = 2100
triggerall = command = "FirstImpactStarter"
trigger1 = (StateType = S) || (StateType = C)
trigger1 = Ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;Air Throw
[State -1]
type = ChangeState
value = 650
triggerall = StateType = A
triggerall = P2StateType = A
triggerall = Ctrl = 1
triggerall = P2BodyDist X < 14
triggerall = P2BodyDist Y = [-14, 14]
triggerall = P2MoveType != H
trigger1 = Command = "fwd_a"

;Throw (forward)
[State -1]
type = ChangeState
value = 600
triggerall = StateType = S
triggerall = Ctrl = 1
triggerall = P2BodyDist X < 14
triggerall = P2MoveType != H
trigger1 = Command = "fwd_a"
trigger1 = P2StateType = S
trigger2 = Command = "fwd_a"
trigger2 = P2StateType = C

;Throw (back)
[State -1]
type = ChangeState
value = 605
triggerall = StateType = S
triggerall = Ctrl = 1
triggerall = P2BodyDist X < 14
triggerall = P2MoveType != H
trigger1 = Command = "back_a"
trigger1 = P2StateType = S
trigger2 = Command = "back_a"
trigger2 = P2StateType = C

;===========================================================================
;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = StateType = S
trigger1 = Ctrl = 1

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = StateType = S
trigger1 = Ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
; Counter Attack
[State -1]
type = VarSet
triggerall = command = "Counter"
trigger1 = StateNo = 150
trigger2 = StateNo = 152
v = 1
value = 1

;---------------------------------------------------------------------------
; Counter Attack
[State -1]
type = ChangeState
value = 2030
triggerall = (StateNo = 151) || (StateNo = 153)
triggerall = Power >= 1000
trigger1 = command = "Counter"
trigger2 = Var(1) = 1

;---------------------------------------------------------------------------
; Roll Forward
[State -1]
type = ChangeState
value = 2010
triggerall = command = "Roll_F"
trigger1 = StateType = S
trigger1 = Ctrl = 1

;---------------------------------------------------------------------------
; Roll Back
[State -1]
type = ChangeState
value = 2020
triggerall = command = "Roll_B"
trigger1 = StateType = S
trigger1 = Ctrl = 1

;---------------------------------------------------------------------------
; Dodge
[State -1]
type = ChangeState
value = 2000
triggerall = command = "Dodge"
trigger1 = StateType = S
trigger1 = Ctrl = 1

;---------------------------------------------------------------------------
; Safe Fall
[State -1]
type = VarSet
trigger1 = command = "SafeFall"
trigger1 = MoveType = H
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -20
trigger1 = Alive
v = 7
value = 1

;===========================================================================
;---------------------------------------------------------------------------
; Command Move 1 (Backhand Claw)
[State -1]
type = ChangeState
value = 500
triggerall = command = "fwd_x"
trigger1 = StateType = S
trigger1 = Ctrl = 1
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger2 = AnimElem = 5, < 0
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger3 = AnimElem = 6, < 0
trigger4 = StateNo = 220
trigger4 = MoveContact
trigger4 = AnimElem = 7, < 0
trigger5 = StateNo = 240
trigger5 = MoveContact
trigger5 = AnimElem = 5, < 0
trigger6 = StateNo = 260
trigger6 = MoveContact
trigger6 = AnimElem = 7, < 0
trigger7 = StateNo = 300
trigger7 = MoveContact
trigger7 = AnimElem = 5, < 0
trigger8 = StateNo = 310
trigger8 = MoveContact
trigger8 = AnimElem = 7, < 0
trigger9 = StateNo = 320
trigger9 = MoveContact
trigger9 = AnimElem = 5, < 0

;---------------------------------------------------------------------------
; Command Move 2 (High Roundhouse)
[State -1]
type = ChangeState
value = 510
triggerall = command = "dwnfwd_y"
trigger1 = (StateType = S) || (StateType = C)
trigger1 = Ctrl = 1
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger2 = AnimElem = 5, < 0
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger3 = AnimElem = 6, < 0
trigger4 = StateNo = 220
trigger4 = MoveContact
trigger4 = AnimElem = 7, < 0
trigger5 = StateNo = 240
trigger5 = MoveContact
trigger5 = AnimElem = 5, < 0
trigger6 = StateNo = 260
trigger6 = MoveContact
trigger6 = AnimElem = 7, < 0
trigger7 = StateNo = 300
trigger7 = MoveContact
trigger7 = AnimElem = 5, < 0
trigger8 = StateNo = 310
trigger8 = MoveContact
trigger8 = AnimElem = 7, < 0
trigger9 = StateNo = 320
trigger9 = MoveContact
trigger9 = AnimElem = 5, < 0

;===========================================================================
;---------------------------------------------------------------------------
; Standing Light Punch (Close)
[State -1]
type = ChangeState
value = 200
triggerall = P2BodyDist X <= 40
trigger1 = command = "x"
trigger1 = command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl = 1
trigger2 = stateno = 200
trigger2 = Var(0) = 1

;---------------------------------------------------------------------------
; Standing Light Punch
[State -1]
type = ChangeState
value = 210
trigger1 = command = "x"
trigger1 = command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl = 1
trigger2 = stateno = 200
trigger2 = Var(0) = 1
trigger3 = stateno = 210
trigger3 = Var(0) = 1

;---------------------------------------------------------------------------
; Standing Strong Punch (Close)
[State -1]
type = ChangeState
value = 220
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 35
trigger1 = StateType = S
trigger1 = Ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Punch
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Kick (Close)
[State -1]
type = ChangeState
value = 240
triggerall = P2BodyDist X <= 30
trigger1 = command = "y"
trigger1 = command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Kick
[State -1]
type = ChangeState
value = 250
trigger1 = command = "y"
trigger1 = command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Kick (Close)
[State -1]
type = ChangeState
value = 260
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 92
trigger1 = StateType = S
trigger1 = Ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1]
type = ChangeState
value = 270
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1]
type = ChangeState
value = 300
trigger1 = command = "x"
trigger1 = StateType = C
trigger1 = Ctrl = 1
trigger2 = stateno = 300
trigger2 = Var(0) = 1

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1]
type = ChangeState
value = 310
trigger1 = command = "a"
trigger1 = StateType = C
trigger1 = Ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1]
type = ChangeState
value = 320
trigger1 = command = "y"
trigger1 = StateType = C
trigger1 = Ctrl = 1
trigger2 = stateno = 320
trigger2 = Var(0) = 1
trigger2 = AnimTime = 0

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1]
type = ChangeState
value = 330
trigger1 = command = "b"
trigger1 = StateType = C
trigger1 = Ctrl = 1

;---------------------------------------------------------------------------
; Jumping Light Punch
[State -1]
type = ChangeState
value = 400
trigger1 = command = "x"
trigger1 = StateType = A
trigger1 = Ctrl = 1

;---------------------------------------------------------------------------
; Jumping Strong Punch
[State -1]
type = ChangeState
value = 410
trigger1 = command = "a"
trigger1 = StateType = A
trigger1 = Ctrl = 1

;---------------------------------------------------------------------------
; Jumping Light Kick
[State -1]
type = ChangeState
value = 420
trigger1 = command = "y"
trigger1 = StateType = A
trigger1 = Ctrl = 1

;---------------------------------------------------------------------------
; Jumping Strong Kick
[State -1]
type = ChangeState
value = 430
trigger1 = command = "b"
trigger1 = StateType = A
trigger1 = Ctrl = 1

;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 4950
trigger1 = command = "start"
trigger1 = StateType = S
trigger1 = Ctrl = 1

