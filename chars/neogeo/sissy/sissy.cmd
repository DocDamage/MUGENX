;		------------------------------
;		    	Sissy by Chloe
;			 Matrimelee
;		-----------------------------
;		     Began June 12th 2003
;		-----------------------------

;==============================================================================================
;
; COMMANDS DEFINITION
;
;==============================================================================================

;----------------------------------------------------------------------------------------------
; a        -> light kick
; b        -> heavy kick
; c        -> heavy punch + heavy kick
; x        -> light punch
; y        -> heavy punch
; z        -> light punch + light kick
; start    -> taunt
;----------------------------------------------------------------------------------------------

;-| AI Commands |------------------------------------------------------------------------------

[Command]
name = "AI01"
command = ~D, D, D, D, D, D, D
time = 1

[Command]
name = "AI02"
command = ~D, D, D, D, D, D, B
time = 1

[Command]
name = "AI03"
command = ~D, D, D, D, D, B, B
time = 1

[Command]
name = "AI04"
command = ~D, D, D, D, B, B, B
time = 1

[Command]
name = "AI05"
command = ~D, D, D, B, B, B, B
time = 1

[Command]
name = "AI06"
command = ~D, D, B, B, B, B, B
time = 1

[Command]
name = "AI07"
command = ~D, B, B, B, B, B, B
time = 1

[Command]
name = "AI08"
command = ~B, B, B, B, B, B, B
time = 1

[Command]
name = "AI09"
command = ~B, B, B, B, B, B, U
time = 1

[Command]
name = "AI10"
command = ~B, B, B, B, B, U, U
time = 1

[Command]
name = "AI11"
command = ~B, B, B, B, U, U, U
time = 1

[Command]
name = "AI12"
command = ~B, B, B, U, U, U, U
time = 1

[Command]
name = "AI13"
command = ~B, B, U, U, U, U, U
time = 1

[Command]
name = "AI14"
command = ~B, U, U, U, U, U, U
time = 1

[Command]
name = "AI15"
command = ~U, U, U, U, U, U, U
time = 1

;-| Super Motions |----------------------------------------------------------------------------

[Command]
name 	= "multi_bomb"
command = ~D, DB, B, D, F, x
time 	= 60

[Command]
name 	= "frog_mutation"
command = ~D, DB, B, D, F, y
time 	= 60

;-| Special Motions |--------------------------------------------------------------------------

[Command]
name 	= "abobo"
command = ~D, DF, F, x
time 	= 10

[Command]
name 	= "abobo"
command = ~D, DF, F, y
time 	= 10

[Command]
name 	= "sword"
command = ~F, D, DF, x
time 	= 10

[Command]
name 	= "sword"
command = ~F, D, DF, y
time 	= 10

[Command]
name 	= "bomb1"
command = ~D, DB, B, a
time 	= 10

[Command]
name 	= "bomb2"
command = ~D, DB, B, b
time 	= 10

[Command]
name 	= "frog1"
command = ~D, DF, F, a
time 	= 10

[Command]
name 	= "frog2"
command = ~D, DF, F, b
time 	= 10

;-| Double Tap |-------------------------------------------------------------------------------

[Command]
name 	= "FF"     ; Required (do not remove)
command = F, F
time 	= 10

[Command]
name 	= "BB"     ; Required (do not remove)
command = B, B
time 	= 10

[Command]
name 	= "DU"
command = $D, $U
time 	= 5


;-| 2/3 Button Combination |-------------------------------------------------------------------

[Command]
name 	= "recovery";Required (do not remove)
command = x+a
time 	= 1

[Command]
name 	= "recovery";Required (do not remove)
command = z
time 	= 1

[Command]
name 	= "xa"
command = z
time 	= 1

[Command]
name = "xa"
Command = a+x
time = 1

[Command]
name 	= "yb"
command = c
time 	= 1

[Command]
name 	= "yb"
command = b+y
time 	= 1

[Command]
name = "ab"
Command = a+b
time = 1

[Command]
name = "bx"
Command = b+x
time = 1

[Command]
name = "ay"
Command = a+y
time = 1

[Command]
name = "xy"
Command = x+y
time = 1

[Command]
name = "abxy"
Command = x+y+a+b
time = 1

[Command]
name = "abcd"
Command = c+z
time = 1

;-| Single Button |----------------------------------------------------------------------------

[Command]
name 	= "x"
command = x
time 	= 1

[Command]
name 	= "y"
command = y
time 	= 1

[Command]
name 	= "z"
command = z
time 	= 1

[Command]
name 	= "a"
command = a
time 	= 1

[Command]
name 	= "b"
command = b
time 	= 1

[Command]
name 	= "c"
command = c
time 	= 1

[Command]
name 	= "s"
command = s
time 	= 1

;-| Hold Button |------------------------------------------------------------------------------

[Command]
name 	= "holdfwd";Required (do not remove)
command = /$F
time 	= 1

[Command]
name 	= "holdback";Required (do not remove)
command = /$B
time 	= 1

[Command]
name 	= "holdup" ;Required (do not remove)
command = /$U
time 	= 1

[Command]
name 	= "holddown";Required (do not remove)
command = /$D
time 	= 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;==============================================================================================
;
; STATE ENTRY
;
;==============================================================================================

[Statedef -1]

;=========
; AI Mode
;=========

; AI detect
;----------

[state -1, AI set]
type	= VarSet
trigger1 = command = "AI01"
trigger2 = command = "AI02"
trigger3 = command = "AI03"
trigger4 = command = "AI04"
trigger5 = command = "AI05"
trigger6 = command = "AI06"
trigger7 = command = "AI07"
trigger8 = command = "AI08"
trigger9 = command = "AI09"
trigger10 = command = "AI10"
trigger11 = command = "AI11"
trigger12 = command = "AI12"
trigger13 = command = "AI13"
trigger14 = command = "AI14"
trigger15 = command = "AI15"
v = 0
value = 1

; AI Frog Mutation
;------------------------
[State -1, AI Frog Mutation]
type = ChangeState
value = 3000
triggerall = var(0) = 1 && Power > 2000
triggerall = (StateType != A) && (P2Dist x >= 50) && (P2Life > 0)
triggerall = RoundState = 2 && (random = [0, 280])
trigger1 = (ctrl)
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 210 && MoveContact
trigger4 = StateNo = 220 && MoveContact
trigger5 = StateNo = 230 && MoveContact

; AI Multi bomb
;------------------------
[State -1, AI Multi Bomb]
type = ChangeState
value = 2000
triggerall = var(0) = 1 && Power > 1000
triggerall = (StateType != A) && (P2Dist x >= 70) && (P2Life > 0)
triggerall = RoundState = 2 && (random = [0, 280])
trigger1 = (ctrl)
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 210 && MoveContact
trigger4 = StateNo = 220 && MoveContact
trigger5 = StateNo = 230 && MoveContact

; AI Roll Forward
;----------------
[State -1, AI roll fwd]
type = ChangeState
value = 110
triggerall = var(0) = 1 && (P2Life > 0)
triggerall = (StateType != A) && (P2BodyDist x = [0, 50])
triggerall = RoundState = 2
trigger1 = (ctrl) && (random = [900, 999])
trigger2 = (enemy, numproj > 0)

; AI Roll Backward
;----------------
[State -1, AI roll bwd]
type = ChangeState
value = 115
triggerall = var(0) = 1 && (P2Life > 0)
triggerall = (StateType != A) && (P2BodyDist x = [0, 50])
triggerall = RoundState = 2
trigger1 = (ctrl) && (random = [900, 999])
trigger2 = (enemy, numproj > 0)

; AI Blocking
;----------------
[State -1, blocking1]
type = ChangeState
triggerall = var(0) = 1 && (P2Life > 0)
triggerall = (StateType != A) && (P2statetype != C)
triggerall = (P2Movetype = A) || (enemy, NumProj > 0)
trigger1 = ctrl && (random = [0, 80])
value = 130

[State -1, blocking2]
type = ChangeState
triggerall = var(0) = 1 && (P2Life > 0)
triggerall = (StateType != A) && (P2statetype = C)
triggerall = (P2Movetype = A) || (enemy, NumProj > 0)
trigger1 = ctrl && (random = [0, 80])
value = 131

[State -1, blocking3]
type = ChangeState
triggerall = var(0) = 1 && (P2Life > 0)
triggerall = (StateType != A) && (P2statetype != C)
triggerall = (P2Movetype = A) || (enemy, NumProj > 0)
trigger1 = stateno = 152 && (random = [0, 80])
value = 150

[State -1, blocking4]
type = ChangeState
triggerall = var(0)= 1 && (P2Life > 0)
triggerall = (StateType != A) && (P2statetype = C)
triggerall = (P2Movetype = A) || (enemy, NumProj > 0)
trigger1 = stateno = 150 && (random = [0, 80])
value = 152

[State -1, blocking5]
type = ChangeState
triggerall = var(0) = 1 && (P2Life > 0)
triggerall = (StateType = A) && (P2Movetype = A) || (enemy, NumProj > 0)
trigger1 = ctrl && (random = [0, 80])
value = 132

; AI Abobo
;----------------
[State -1, AI Abobo]
type = ChangeState
value = 1000
triggerall = var(0) = 1
triggerall = (StateType != A) && (P2BodyDist x = [0, 150])
triggerall = RoundState = 2 && (random = [0, 180])
trigger1 = (ctrl)
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 210 && MoveContact
trigger4 = StateNo = 220 && MoveContact
trigger5 = StateNo = 230 && MoveContact

; AI Sword
;----------------
[State -1, AI CD]
type = ChangeState
value = 1400
triggerall = var(0) = 1
triggerall = (P2BodyDist x = [0, 30])
triggerall = (StateType != A)
triggerall = RoundState = 2 && (random = [0, 180])
trigger1 = P2statetype = A && (ctrl) 
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 210 && MoveContact
trigger4 = StateNo = 220 && MoveContact
trigger5 = StateNo = 230 && MoveContact


; AI Bomb Low
;------------------
[State -1, AI Bomb Low]
type = ChangeState
value = 1100
triggerall = var(0) = 1 && numproj = 0 && (P2Life > 0)
triggerall = (StateType != A) && (ctrl) && NumProjID(1130) = 0
triggerall = RoundState = 2 && (random = [0, 180])
trigger1 = (P2Dist x <= 100) && (P2Dist x >= 50)

; AI Bomb Far
;------------------
[State -1, AI Bomb Low]
type = ChangeState
value = 1150
triggerall = var(0) = 1 && numproj = 0 && (P2Life > 0)
triggerall = (StateType != A) && (ctrl) && NumProjID(1130) = 0
triggerall = RoundState = 2 && (random = [0, 180])
trigger1 = (P2Dist x <= 160) && (P2Dist x >= 110)

; AI Stupid Frog
;------------------
[State -1, AI Frog]
type = ChangeState
value = 1200
triggerall = var(0) = 1 && numproj = 0 && (P2Life > 0)
triggerall = (StateType != A) && (ctrl) && NumProjID(1220) = 0
triggerall = RoundState = 2 && (random = [0, 180])
trigger1 = life > 100 && (random = [900, 999])
trigger2 = (enemy, numproj > 0) && (P2Dist x >= 260)

; AI Stupid Frog
;------------------
[State -1, AI Frog]
type = ChangeState
value = 1250
triggerall = var(0) = 1 && numproj = 0 && (P2Life > 0)
triggerall = (StateType != A) && (ctrl) && NumProjID(1220) = 0
triggerall = RoundState = 2 && (random = [0, 180])
trigger1 = life > 100 && (random = [900, 999])
trigger2 = (enemy, numproj > 0) && (P2Dist x >= 260)

; AI CD Stand
;----------------
[State -1, AI CD]
type = ChangeState
value = 500
triggerall = var(0) = 1
triggerall = (StateType != A)
triggerall = (P2BodyDist x = [0, 40]) && (ctrl) 
triggerall = RoundState = 2 && (random = [0, 180])
trigger1 = (P2Dist x <= 100)
trigger2 = P2statetype = A

; AI CD Crouch
;----------------
[State -1, AI CD]
type = ChangeState
value = 510
triggerall = var(0) = 1
triggerall = (StateType != A)
triggerall = (P2BodyDist x = [0, 40]) && (ctrl) 
triggerall = RoundState = 2 && (random = [0, 180])
trigger1 = (P2Dist x <= 100)
trigger2 = P2statetype = A

; AI Throw
;----------------
[State -1, AI ground throw]
type = ChangeState
value = 800
triggerall = var(0) = 1
triggerall = (P2bodydist x = [0, 20]) && (P2StateType != A) && (P2MoveType != H)
triggerall = RoundState = 2 && (random = [0, 180])
trigger1 = (StateType != A) && (ctrl) && FrontEdgeDist > 60


;=================
; Supers / Hypers
;=================

; Multi Bomb
;-----------
[State -1, Multi Bomb]
type = ChangeState
value = 2000
triggerall = command = "multi_bomb" && Power >= 1000
trigger1 = StateType != A && ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 210 && MoveContact
trigger4 = StateNo = 220 && MoveContact
trigger5 = StateNo = 230 && MoveContact

; Frog Mutation
;--------------
[State -1, Frog Mutation]
type = ChangeState
value = 3000
triggerall = command = "frog_mutation" && Power >= 2000
triggerall = NumHelper(7000) = 0
trigger1 = StateType != A && ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 210 && MoveContact
trigger4 = StateNo = 220 && MoveContact
trigger5 = StateNo = 230 && MoveContact


;==========
; Specials
;==========

; Sword
;------
[State -1, Sword]
type = ChangeState
value = 1400
triggerall = command = "sword"
trigger1 = StateType != A && ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 210 && MoveContact
trigger4 = StateNo = 220 && MoveContact
trigger5 = StateNo = 230 && MoveContact

; Abobo Punches
;--------------
[State -1, Abobo]
type = ChangeState
value = 1000
triggerall = command = "abobo"
trigger1 = StateType != A && ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 210 && MoveContact
trigger4 = StateNo = 220 && MoveContact
trigger5 = StateNo = 230 && MoveContact

; Bomb
;-----
[State -1, Bomb]
type = ChangeState
value = 1100
triggerall = command = "bomb1" && NumProjID(1130) = 0
trigger1 = StateType != A && ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 210 && MoveContact
trigger4 = StateNo = 220 && MoveContact
trigger5 = StateNo = 230 && MoveContact

[State -1, Bomb]
type = ChangeState
value = 1150
triggerall = command = "bomb2" && NumProjID(1130) = 0
trigger1 = StateType != A && ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 210 && MoveContact
trigger4 = StateNo = 220 && MoveContact
trigger5 = StateNo = 230 && MoveContact

; Frog
;-----
[State -1, Frog]
type = ChangeState
value = 1200
triggerall = command = "frog1" && NumProjID(1220) = 0
trigger1 = StateType != A && ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 210 && MoveContact
trigger4 = StateNo = 220 && MoveContact
trigger5 = StateNo = 230 && MoveContact

[State -1, Frog]
type = ChangeState
value = 1250
triggerall = command = "frog2" && NumProjID(1220) = 0
trigger1 = StateType != A && ctrl
trigger2 = StateNo = 200 && MoveContact
trigger3 = StateNo = 210 && MoveContact
trigger4 = StateNo = 220 && MoveContact
trigger5 = StateNo = 230 && MoveContact


;================
; Standard Moves
;================

; Run
;----
[State -1, run]
type = ChangeState
value = 100
triggerall = command = "FF"
trigger1 = statetype != A && ctrl

; Hop Back
;---------
[State -1, hop back]
type = ChangeState
value = 105
triggerall = command = "BB"
trigger1 = statetype != A && ctrl

; Roll Forward
;-------------
[State -1, roll fwd]
type = ChangeState
value = 110
triggerall = command = "xa" && command ="holdfwd"
trigger1 = statetype != A && ctrl

; Roll Back
;----------
[State -1, roll back]
type = ChangeState
value = 115
triggerall = command = "xa" && command ="holdback"
trigger1 = statetype != A && ctrl

; Taunt
;------
[State -1]
type = ChangeState
value = 195
triggerall = command = "s" && ctrl
trigger1 = StateType != A


;====================
; Additionnal Attacks
;====================

; CD Crouch
;----------
[State -1, CD]
type = ChangeState
value = 510
triggerall = command = "yb"
trigger1 = StateType = C && ctrl

; CD Stand
;---------
[State -1, CD]
type = ChangeState
value = 500
triggerall = command = "yb"
trigger1 = StateType != A && ctrl

; Running Puch
;-------------
[State -1, RP]
type = ChangeState
value = 250
triggerall = command = "x" || command = "y"
trigger1 = StateType != A && StateNo = 101

; Running Puch
;-------------
[State -1, RK]
type = ChangeState
value = 260
triggerall = command = "a" || command = "b"
trigger1 = StateType != A && StateNo = 101

;====================
; Throw attack
;====================

[State -1]
type = ChangeState
value = 800
triggerall = command = "y" && command ="holdfwd" && P2BodyDist X <= 12
trigger1 = StateType = S && ctrl && stateno != 100
trigger1 = P2StateType != A && P2MoveType != H 

;==================
; Crouching Attacks
;==================

; Crouch Light Punch
;-------------------
[State -1, crouch light punch]
type = ChangeState
value = 300
triggerall = command = "x"
trigger1 = StateType = C && ctrl

; Crouch Light Kick
;------------------
[State -1, crouch light kick]
type = ChangeState
value = 320
triggerall = command = "a"
trigger1 = StateType = C && ctrl

; Crouch Strong Punch
;--------------------
[State -1, crouch strong punch]
type = ChangeState
value = 310
triggerall = command = "y"
trigger1 = StateType = C && ctrl

; Crouch Strong Kick
;-------------------
[State -1, crouch strong kick]
type = ChangeState
value = 330
triggerall = command = "b"
trigger1 = StateType = C && ctrl

;==================
; Standing Attacks
;==================

; Stand Light Punch
;------------------
[State -1, stand light punch]
type = ChangeState
value = 200
triggerall = command = "x"
trigger1 = StateType != A && ctrl

; Stand Light Kick
;-----------------
[State -1, stand light kick]
type = ChangeState
value = 210
triggerall = command = "a"
trigger1 = StateType != A && ctrl

; Stand Strong Punch
;-------------------
[State -1, stand strong punch]
type = ChangeState
value = 220
triggerall = command = "y"
trigger1 = StateType != A && ctrl

; Stand Strong Kick
;------------------
[State -1, stand strong kick]
type = ChangeState
value = 230
triggerall = command = "b"
trigger1 = StateType != A && ctrl

;==================
; Aerial Attacks
;==================

; Air Light Punch
;----------------
[State -1, air light punch]
type = ChangeState
value = 400
triggerall = StateType = A && ctrl
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "a"
trigger4 = command = "b"
