; SLASH CMD file.
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


;-| Humanly impossible motions (useful only to detect the CPU) |-----------
[Command]
name = "AI_1"
command = D, U, B, B, B, U, D
time = 1
        
[Command]
name = "AI_2"
command = D, U, B, B, B, U, U
time = 1
        
[Command]
name = "AI_3"
command = D, U, B, B, B, U, B
time = 1
        
[Command]
name = "AI_4"
command = D, U, B, B, B, U, F
time = 1
        
[Command]
name = "AI_5"
command = D, U, B, B, B, D, D
time = 1
        
[Command]
name = "AI_6"
command = D, U, B, B, B, B, D
time = 1
        
[Command]
name = "AI_7"
command = D, U, B, B, B, F, D
time = 1
        
[Command]
name = "AI_8"
command = D, U, B, B, F, U, D
time = 1
        
[Command]
name = "AI_9"
command = D, U, B, B, U, U, D
time = 1
        
[Command]
name = "AI_10"
command = D, U, B, B, D, U, D
time = 1
        
[Command]
name = "AI_11"
command = D, U, B, F, B, U, D
time = 1
        
[Command]
name = "AI_12"
command = D, U, B, U, B, U, D
time = 1
        
[Command]
name = "AI_13"
command = U, U, B, U, B, U, D
time = 1
        
[Command]
name = "AI_14"
command = U, U, B, U, B, U, D
time = 1
        
[Command]
name = "AI_15"
command = U, U, B, U, B, U, D
time = 1
        
[Command]
name = "AI_16"
command = U, U, B, U, B, U, D
time = 1
        
[Command]
name = "AI_17"
command = U, U, B, U, B, U, D
time = 1
        
[Command]
name = "AI_18"
command = U, U, B, U, B, U, D
time = 1
        
[Command]
name = "AI_19"
command = U, U, B, U, B, U, D
time = 1
        
[Command]
name = "AI_20"
command = U, U, B, U, B, U, D
time = 1
        
;-| Super Motions |--------------------------------------------------------

; Darkness Wind
[Command]
name = "Darkness_Wind"
command = ~D, D,  a+b
time = 15

[Command]
name = "Darkness_Wind"
command = ~D, D,  x+y
time = 15

[Command]
name = "Darkness_Slash"
command = ~F, B, DB, D, DF, F, a+b
time = 25

[Command]
name = "Darkness_Slash"
command = ~F, B, DB, D, F, a+b
time = 25

[Command]
name = "Darkness_Slash"
command = ~F, B, D, DF, F, a+b
time = 25

[Command]
name = "Darkness_Slash"
command = ~F, B, D, F, a+b
time = 25

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "DP_xy"
command = ~F, D, DF, x+y

[Command]
name = "DP_xy"
command = ~F, D, F, x+y

[Command]
name = "super"
command = x+y+a+b
time = 1

[Command]
name = "super"
command = z
time = 1

;-| Special Motions |------------------------------------------------------

; Uppercut
[Command]
name = "DP_a"
command = ~F, D, DF, a

[Command]
name = "DP_b"
command = ~F, D, DF, b

[Command]
name = "DP_c"
command = ~F, D, DF, c

[Command]
name = "DP_x"
command = ~F, D, DF, x

name = "DP_x"
command = ~F, D, F, x

[Command]
name = "DP_y"
command = ~F, D, DF, y

[Command]
name = "DP_y"
command = ~F, D, F, y

[Command]
name = "DP_z"
command = ~F, D, DF, z

;-----------------
; Reverse Uppercut
[Command]
name = "rDP_a"
command = ~B, D, DB, a

[Command]
name = "rDP_b"
command = ~B, D, DB, b

[Command]
name = "rDP_c"
command = ~B, D, DB, c

[Command]
name = "rDP_x"
command = ~B, D, DB, x

[Command]
name = "rDP_y"
command = ~B, D, DB, y

[Command]
name = "rDP_z"
command = ~B, D, DB, z

;-----------------
[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "Slash_Corridor"
command = ~F, DF, D, DB, B, b

[Command]
name = "Slash_Corridor"
command = ~F, DF ,D, B, b

[Command]
name = "Slash_Corridor"
command = ~F, D, DB, B, b

[Command]
name = "Slash_Corridor"
command = ~F, D, B, b

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
name = "strk"
command = a+x
time = 1

[Command]
name = "strk"
command = a+y
time = 1

[Command]
name = "strk"
command = b+x
time = 1

[Command]
name = "strk"
command = b+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
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
name = "back_a"
command = /B, a
time = 1

[Command]
name = "back_b"
command = /B, b
time = 1

[Command]
name = "back_x"
command = /B, x
time = 1

[Command]
name = "back_y"
command = /B, y
time = 1

[Command]
name = "downfwd_a"
command = /DF,a
time = 1

[Command]
name = "downfwd_b"
command = /DF,b
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
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupright"
command = /$UF
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
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;-------------------------------------
; ** DARKNESS WIND - D,D, + A+B/C+D **
;-------------------------------------
[State -1]
type = ChangeState
value = 6000
triggerall = power >= 2000
triggerall = ctrl = 1
triggerall = command =  "Darkness_Wind"
trigger1 = statetype = S
trigger1 = Var(30) = 0
trigger2 = statetype = C
trigger2 = Var(30) = 0

[State -1]
type = ChangeState
value = 6000
triggerall = Random < 25
triggerall = P2BodyDist X >= 210
triggerall = power >= 2000
triggerall = P2StateType = L
triggerall = ctrl = 1
triggerall = statetype != A
triggerall = statetype != L
triggerall = Var(30) = 1
triggerall = RoundState <= 2
trigger1 = P2StateNo != 5110
trigger1 = P2StateNo != 5120

trigger2 = P2StateNo = 5110
trigger2 = EnemyNear, Time <= 5

;-------------------------------------
; ** DARKNESS SLASH - F,B,D,F + A+B **
;-------------------------------------
[State -1]
type = ChangeState
value = 4600
triggerall = power >= 1000
triggerall = ctrl = 1
trigger1 = command =  "Darkness_Slash"
trigger1 = statetype = S
trigger1 = Var(30) = 0
trigger2 = command =  "Darkness_Slash"
trigger2 = statetype = C
trigger2 = Var(30) = 0

; Enemy ahead
[State -1]
type = ChangeState
value = 4600
triggerall = Var(30) = 1
triggerall = power >= 1000
triggerall = Facing = EnemyNear, Facing
triggerall = P2Dist X >= 0
triggerall = ctrl = 1
triggerall = statetype = S
triggerall = P2StateType != L
triggerall = RoundState <= 2
triggerall = EnemyNear, Vel X < 5
; In the air
trigger1 = EnemyNear, Vel Y > 0
trigger1 = EnemyNear, Pos Y < 0
trigger1 = (P2BodyDist X)/(5-(EnemyNear, Vel X)) = [10, 30]
trigger1 = -(EnemyNear, Pos Y)/(EnemyNear, Vel Y) < (P2BodyDist X)/(5-(EnemyNear, Vel X))
; On the ground
trigger2 = EnemyNear, Vel Y = 0
trigger2 = EnemyNear, Pos Y = 0
trigger2 = EnemyNear, Ctrl = 0
trigger2 = (P2BodyDist X)/(5-(EnemyNear, Vel X)) = [0, 30]
trigger2 = -(EnemyNear, AnimTime) > (P2BodyDist X)/(5-(EnemyNear, Vel X))
trigger2 = PrevStateNo != [1300, 1301]
trigger3 = PrevStateNo = [1300, 1301]
trigger3 = EnemyNear, Vel Y = 0
trigger3 = EnemyNear, Pos Y = 0
trigger3 = EnemyNear, Ctrl = 0
trigger3 = (P2BodyDist X)/(5-(EnemyNear, Vel X)) = [0, 30]
trigger3 = -(EnemyNear, AnimTime) > (P2BodyDist X)/(5-(EnemyNear, Vel X))

; Enemy behind
[State -1]
type = ChangeState
value = 4600
triggerall = Var(30) = 1
triggerall = power >= 1000
triggerall = Facing != EnemyNear, Facing
triggerall = P2Dist X < 0
triggerall = ctrl = 1
triggerall = statetype = S
triggerall = P2StateType != L
triggerall = RoundState <= 2
triggerall = EnemyNear, Vel X < 5
; In the air
trigger1 = EnemyNear, Vel Y > 0
trigger1 = EnemyNear, Pos Y < 0
trigger1 = (P2BodyDist X + 40)/(-5 + (EnemyNear, Vel X)) = [10, 30]
trigger1 = -(EnemyNear, Pos Y)/(EnemyNear, Vel Y) < (P2BodyDist X + 40)/(-5 + (EnemyNear, Vel X))
; On the ground
trigger2 = EnemyNear, Vel Y = 0
trigger2 = EnemyNear, Pos Y = 0
trigger2 = EnemyNear, Ctrl = 0
trigger2 = (P2BodyDist X + 40)/(-5 + (EnemyNear, Vel X)) = [0, 30]
trigger2 = -(EnemyNear, AnimTime) > (P2BodyDist X + 40)/(-5 + (EnemyNear, Vel X))
trigger2 = PrevStateNo != [1300, 1301]
trigger3 = PrevStateNo = [1300, 1301]
trigger3 = Life < 500
trigger3 = EnemyNear, Vel Y = 0
trigger3 = EnemyNear, Pos Y = 0
trigger3 = EnemyNear, Ctrl = 0
trigger3 = (P2BodyDist X + 40)/(-5 + (EnemyNear, Vel X)) = [0, 30]
trigger3 = -(EnemyNear, AnimTime) > (P2BodyDist X + 40)/(-5 + (EnemyNear, Vel X))

;---------------------------------------
; ** ES SLASH DYNAMIC - F,D,d/F + X+Y **
;---------------------------------------
[State -1]
type = ChangeState
value = 3200
triggerall = power >= 1000
trigger1 = command =  "DP_xy"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = Var(30) = 0
trigger2 = command =  "DP_xy"
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger2 = Var(30) = 0

trigger3 = StateNo = 1301
trigger3 = StateType = S
trigger3 = P2StateType != L
trigger3 = Var(30) = 1
trigger3 = Ctrl = 1
trigger3 = Random < 200
trigger3 = P2BodyDist X = [-85, 45]
trigger3 = P2BodyDist Y = 0
trigger3 = RoundState <= 2

trigger4 = StateNo = 200
trigger4 = movehit
trigger4 = Time = [9, 14]
trigger4 = Random < 25
trigger4 = Var(30) = 1
trigger4 = P2BodyDist X = [-85, 45]
trigger4 = P2BodyDist Y = 0
trigger4 = RoundState <= 2

;--------------------------------
; ** ES SLASH SHOT - QCF + X+Y **
;--------------------------------
[State -1]
type = ChangeState
value = 3100
triggerall = power >= 1000
trigger1 = command =  "QCF_xy"
trigger1 = statetype = S
trigger1 = ctrl = 1

;-----------------------------------
; ** ES SLASH BARRIER - QCB + X+Y **
;-----------------------------------
[State -1]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = statetype = S
trigger1 = command =  "QCB_xy"
trigger1 = ctrl = 1
trigger1 = Var(30) = 0

trigger2 = StateNo = 1301
trigger2 = Var(30) = 1
trigger2 = P2StateType != L
trigger2 = Ctrl = 1
trigger2 = Random < 300
trigger2 = P2BodyDist X = [-105, 65]
trigger2 = P2BodyDist Y = 0
trigger2 = RoundState <= 2

trigger3 = StateNo = 200
trigger3 = movehit
trigger3 = Time = [9, 14]
trigger3 = Random < 25
trigger3 = Var(30) = 1
trigger3 = P2BodyDist X = [-105, 65]
trigger3 = P2BodyDist Y = 0
trigger3 = RoundState <= 2

;---------------------------------------------------------------------------
; SLASH CORRIDOR - HCB + b
;---------------------------------------------------------------------------

[State -1]
type = ChangeState
value = 2100
triggerall = statetype = S
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = ctrl = 1
triggerall = p2bodydist X = [0, 25]
triggerall = p2movetype != H
trigger1 = command = "Slash_Corridor"
trigger1 = p2statetype = S
trigger2 = command = "Slash_Corridor"
trigger2 = p2statetype = C
trigger3 = Var(30) = 1
trigger3 = Random <= 50
trigger3 = p2bodydist X = [0, 15]
trigger3 = stateno != 5120

;-----------------------------------------
; ** SLASH DYNAMIC (weak) - F,D,d/F + X **
;-----------------------------------------
[State -1]
type = ChangeState
value = 1200
trigger1 = command =  "DP_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = Var(30) = 0
trigger2 = command =  "DP_x"
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger2 = Var(30) = 0

;---------------------------------------------------------
; ** SLASH TELEPORT - B,D,B/D + X/Y/A/B (on the ground) **
;---------------------------------------------------------
; Up-Back
[State -1]
type = ChangeState
value = 1302
triggerall = command =  "rDP_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

; Up
[State -1]
type = ChangeState
value = 1304
triggerall = command =  "rDP_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

; Up-Forward
[State -1]
type = ChangeState
value = 1306
triggerall = command =  "rDP_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

; Forward
[State -1]
type = ChangeState
value = 1300
triggerall = ctrl = 1
triggerall = command =  "rDP_b"
trigger1 = Var(30) = 0
trigger1 = StateType = S
trigger2 = Var(30) = 0
trigger2 = StateType = C
trigger3 = Var(30) = 1
trigger3 = StateType != A
trigger3 = StateType != L

[State -1]
type = ChangeState
value = 1300
trigger1 = Var(30) = 1
trigger1 = ctrl = 1
trigger1 = StateType = S
trigger1 = P2StateType != L
trigger1 = P2Dist X = [0, 85]
trigger1 = P2Dist Y = 0
trigger1 = Random < 150
trigger1 = PrevStateNo != [1300, 1301]
trigger1 = RoundState <= 2

;----------------------------------------------------
; ** SLASH TELEPORT - B,D,B/D + X/Y/A/B (airborne) **
;----------------------------------------------------
; Up-Back
[State -1]
type = ChangeState
value = 1312
triggerall = command =  "rDP_x"
trigger1 = statetype = A
trigger1 = ctrl = 1

; Up
[State -1]
type = ChangeState
value = 1314
triggerall = command =  "rDP_y"
trigger1 = statetype = A
trigger1 = ctrl = 1

; Up-Forward
[State -1]
type = ChangeState
value = 1316
triggerall = command =  "rDP_a"
trigger1 = statetype = A
trigger1 = ctrl = 1

; Forward
[State -1]
type = ChangeState
value = 1310
triggerall = command =  "rDP_b"
trigger1 = statetype = A
trigger1 = ctrl = 1

;-------------------------------------------
; ** SLASH DYNAMIC (strong) - F,D,d/F + Y **
;-------------------------------------------
[State -1]
type = ChangeState
value = 1210
trigger1 = command =  "DP_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = Var(30) = 0
trigger2 = command =  "DP_y"
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger2 = Var(30) = 0
trigger3 = Var(30) = 1
trigger3 = statetype = S
trigger3 = P2Dist X = [10, 80]
trigger3 = P2Dist Y = [-100, -60]
trigger3 = P2StateType != L
trigger3 = Random <= 350
trigger3 = ctrl = 1
trigger3 = RoundState <= 2

trigger4 = Var(30) = 1
trigger4 = statetype = C
trigger4 = P2Dist X = [10, 80]
trigger4 = P2Dist Y = [-100, -60]
trigger4 = P2StateType != L
trigger4 = Random <= 350
trigger4 = ctrl = 1
trigger4 = RoundState <= 2

trigger5 = StateNo = 200
trigger5 = movehit
trigger5 = Time = [9, 14]
trigger5 = Random < 333
trigger5 = Var(30) = 1
trigger5 = P2BodyDist X = [-10, 80]
trigger5 = P2BodyDist Y > -100
trigger5 = RoundState <= 2

;----------------------------------
; ** SLASH SHOT (weak) - QCF + X **
;----------------------------------
[State -1]
type = ChangeState
value = 1100
trigger1 = command =  "QCF_x"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 1100
triggerall = Var(30) = 1
triggerall = P2MoveType = H
triggerall = P2BodyDist X = [0, 72]
triggerall = P2BodyDist Y >= -40
triggerall = Random < 250
triggerall = RoundState <= 2

trigger1 = PrevStateNo = 510
trigger2 = PrevStateNo = 530

;------------------------------------
; ** SLASH SHOT (strong) - QCF + Y **
;------------------------------------
[State -1]
type = ChangeState
value = 1103
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command =  "QCF_y"
trigger1 = Var(30) = 0

[State -1]
type = ChangeState
value = 1103
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = Var(30) = 1
triggerall = P2StateType != L
triggerall = P2StateNo != [51, 53]
triggerall = Random <= 100
triggerall = RoundState <= 2

; Enemy facing player
trigger1 = Facing != (EnemyNear, Facing)
trigger1 = P2Dist X - (EnemyNear, Vel X)*22 = [ 170, 190 ]
trigger1 = (EnemyNear, Vel Y) >= 0
trigger1 = P2Dist Y + (EnemyNear, Vel Y)*22 > -20

; Enemy facing away
trigger2 = Facing = (EnemyNear, Facing)
trigger2 = P2Dist X + (EnemyNear, Vel X)*22 = [ 170, 190 ]
trigger2 = (EnemyNear, Vel Y) >= 0
trigger2 = P2Dist Y + (EnemyNear, Vel Y)*22 > -20

;------------------------------------------
; ** SLASH BARRIER (weak) - QCB + X **
;------------------------------------------
[State -1]
type = ChangeState
value = 1000
trigger1 = command =  "QCB_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = Var(30) = 0

trigger2 = Var(30) = 1
trigger2 = Ctrl = 1
trigger2 = Random < 750
trigger2 = StateType != A
trigger2 = StateType != L
trigger2 = P2StateType != L
trigger2 = P2BodyDist X = [-20, 65]
trigger2 = P2BodyDist Y = [-90, -20]
trigger2 = EnemyNear, Vel Y >= 0
trigger2 = RoundState <= 2

;---------------------------------------------
; ** SLASH BARRIER (strong) - QCB + Y **
;---------------------------------------------
[State -1]
type = ChangeState
value = 1010
trigger1 = command =  "QCB_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = Var(30) = 0

trigger2 = StateNo = 1301
trigger2 = Var(30) = 1
trigger2 = Ctrl = 1
trigger2 = Random < 300
trigger2 = P2StateType != L
trigger2 = P2BodyDist X = [-105, 65]
trigger2 = P2BodyDist Y = 0
trigger2 = RoundState <= 2

trigger3 = StateNo = 200
trigger3 = movehit
trigger3 = Time = [9, 14]
trigger3 = Random < 500
trigger3 = Var(30) = 1
trigger3 = P2BodyDist X = [-105, 65]
trigger3 = P2BodyDist Y > -100
trigger3 = RoundState <= 2

;===========================================================================
;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = command = "FF"

[State -1]
type = ChangeState
value = 100
triggerall = Var(30) = 1
triggerall = ctrl = 1
triggerall = statetype = S
triggerall = command != "holdup"
triggerall = StateNo != 100
triggerall = RoundState <= 2

trigger1 = Power < 2000
trigger1 = P2BodyDist X > 150

trigger2 = Power >= 2000
trigger2 = P2StateType != L
trigger2 = P2BodyDist X > 150

trigger3 = Power >= 2000
trigger3 = P2StateType = L
trigger3 = P2BodyDist X = [151, 209]

;---------------------------------------------------------------------------
;Hop Back
[State -1]
type = ChangeState
value = 105
triggerall = ctrl = 1
trigger1 = command = "BB"
trigger1 = statetype = S

trigger2 = P2StateNo = 5120
trigger2 = (EnemyNear,Time) = [0, 3]
trigger2 = Var(30) = 1
trigger2 = P2BodyDist X <= 30
trigger2 = MoveType != H
trigger2 = StateType != A
trigger2 = statetype != L

;---------------------------------------------------------------------------
; Triangle jump
[State -1]
type = ChangeState
value = 900
trigger1 = command = "holdupright"
trigger1 = StateType = A
trigger1 = BackEdgeBodyDist = 0
trigger1 = Pos Y < -50
trigger1 = StateNo != 905
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; ** Power exploding - SUPER MODE (easy and original motion) **
[State -1]
type = ChangeState
value = 4000
triggerall = Power >= 1000
triggerall = ctrl = 1
triggerall = Var(7) = 0
triggerall = command = "super"
trigger1 = statetype = S
trigger1 = Var(30) = 0
trigger2 = statetype = C
trigger2 = Var(30) = 0
trigger3 = statetype = S
trigger3 = Var(30) = 1
trigger3 = Power >= 2000
trigger4 = statetype = C
trigger4 = Var(30) = 1
trigger4 = Power >= 2000

;---------------------------------------------------------------------------
;SLASH STRIKE
[State -1]
type = ChangeState
value = 2000
triggerall = Ctrl = 1
triggerall = StateType != A
triggerall = StateType != L
trigger1 = Command = "strk"
trigger1 = Var(30) = 0

trigger2 = Var(30) = 1
trigger2 = Random <= 400
trigger2 = P2StateType = C
trigger2 = MoveType != H
trigger2 = StateNo != 5120
trigger2 = P2BodyDist Y = 0
trigger2 = P2BodyDist X = [75, 125]
trigger2 = RoundState <= 2

;---------------------------------------------------------------------------
; AIR KICK TURN THROW - F/B + Y (close in air)
[State -1]
type = ChangeState
value = 1701
triggerall = statetype = A
triggerall = p2statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X = [0, 10]
triggerall = p2bodydist Y <= 18
triggerall = p2bodydist Y >= -18
triggerall = p2movetype != H
trigger1 = command = "fwd_y"
trigger2 = command = "back_y"
trigger3 = Var(30) = 1
trigger3 = Random <= 150

;---------------------------------------------------------------------------
; KICK TURN THROW - F/B + Y (close)
[State -1]
type = ChangeState
value = 1700
triggerall = statetype = S
triggerall = p2statetype != A
triggerall = p2statetype != L
triggerall = ctrl = 1
triggerall = p2bodydist X = [0, 5]
triggerall = p2movetype != H
trigger1 = command = "fwd_y"
trigger1 = p2statetype = S
trigger2 = command = "fwd_y"
trigger2 = p2statetype = C
trigger3 = command = "back_y"
trigger3 = p2statetype = S
trigger4 = command = "back_y"
trigger4 = p2statetype = C

;---------------------------------------------------------------------------
;Stand_X (Alternative)
[State -1, StandX2]
type = ChangeState
value = 300
triggerall = command = "fwd_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = Var(30) = 0

trigger2 = StateType = S
trigger2 = P2StateType != C
trigger2 = P2StateType != L
trigger2 = ctrl = 1
trigger2 = P2BodyDist X = [0, 80]
trigger2 = P2BodyDist Y >= -60
trigger2 = Var(30) = 1

;---------------------------------------------------------------------------
;Stand_Y (Alternative)
[State -1, StandY2]
type = ChangeState
value = 310
triggerall = command = "fwd_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = Var(30) = 0

trigger2 = StateType = S
trigger2 = P2StateType != L
trigger2 = ctrl = 1
trigger2 = P2BodyDist X = [0, 60]
trigger2 = P2BodyDist Y >= 0
trigger2 = Var(30) = 1

;---------------------------------------------------------------------------
;Stand_A (Alternative)
[State -1, StandA2]
type = ChangeState
value = 320
triggerall = command = "fwd_a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = Var(30) = 0

trigger2 = StateType = S
trigger2 = P2StateType != L
trigger2 = ctrl = 1
trigger2 = P2BodyDist X = [0, 70]
trigger2 = P2BodyDist Y >= 0
trigger2 = Var(30) = 1

;---------------------------------------------------------------------------
;Stand_B (Alternative)
[State -1, StandB2]
type = ChangeState
value = 330
triggerall = command = "fwd_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = Var(30) = 0

trigger2 = StateType = S
trigger2 = P2StateType != L
trigger2 = ctrl = 1
trigger2 = P2BodyDist X = [0, 37]
trigger2 = P2BodyDist Y >= -60
trigger2 = Var(30) = 1

;---------------------------------------------------------------------------
;Stand_X
[State -1, StandX]
type = ChangeState
value = 200
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = command = "x"
trigger1 = command != "holddown"
trigger1 = Var(30) = 0

[State -1, StandX]
type = ChangeState
value = 200
triggerall = Var(30) = 1
triggerall = statetype = S
triggerall = P2StateType != L

trigger1 = command = "x"
trigger1 = command != "holddown"
trigger1 = P2BodyDist X = [0, 55]
trigger1 = P2BodyDist Y >= -80
trigger1 = ctrl = 1

trigger2 = P2BodyDist X = [0, 30]
trigger2 = P2BodyDist Y = 0
trigger2 = RoundState <= 2
trigger2 = ctrl = 1
trigger2 = Random < 100

[State -1, StandX]
type = ChangeState
value = 200
triggerall = Var(30) = 1
triggerall = statetype = S
triggerall = P2StateType != L
triggerall = P2MoveType = H
triggerall = P2BodyDist X = [0, 55]
triggerall = P2BodyDist Y >= -80
triggerall = RoundState <= 2

trigger1 = PrevStateNo = 510
trigger2 = PrevStateNo = 530

;---------------------------------------------------------------------------
;Stand_Y
[State -1, StandY]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = Var(30) = 0

trigger2 = StateType = S
trigger2 = P2StateType != L
trigger2 = ctrl = 1
trigger2 = P2BodyDist X = [0, 70]
trigger2 = P2BodyDist Y >= -25
trigger2 = Var(30) = 1

;---------------------------------------------------------------------------
;Stand_A
[State -1, StandA]
type = ChangeState
value = 220
trigger1 = command = "a"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = Var(30) = 0

[State -1, StandA]
type = ChangeState
value = 220
triggerall = StateType != A
triggerall = StateType != L
triggerall = P2StateType != A
triggerall = ctrl = 1
triggerall = P2BodyDist X = [0, 35]
triggerall = P2BodyDist Y = 0
triggerall = Var(30) = 1

trigger1 = command = "a"
trigger1 = command != "holddown"
trigger1 = StateType != C
trigger1 = P2StateType != L

trigger2 = P2StateNo = 5110
trigger2 = Random < 300
trigger2 = PrevStateNo != 220

;---------------------------------------------------------------------------
;Stand_B
[State -1, StandB]
type = ChangeState
value = 230
trigger1 = command = "b"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = Var(30) = 0
trigger2 = StateNo = 220
trigger2 = command = "b"
trigger2 = command != "holddown"
trigger2 = movecontact
trigger2 = Time >= 9
trigger2 = Var(30) = 0

[State -1, StandB]
type = ChangeState
value = 230
triggerall = Var(30) = 1
triggerall = P2BodyDist X = [0, 40]
triggerall = P2StateType != C
triggerall = P2StateType != L
triggerall = P2BodyDist Y >= -80

trigger1 = StateNo = 220
trigger1 = movecontact
trigger1 = Time = [9, 14]

trigger2 = command = "b"
trigger2 = command != "holddown"
trigger2 = statetype = S
trigger2 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_X
[State -1, CrouchX]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger1 = Var(30) = 0

trigger2 = statetype = C
trigger2 = P2StateType != L
trigger2 = ctrl = 1
trigger2 = P2BodyDist X = [0, 65]
trigger2 = P2BodyDist Y >= -40
trigger2 = Var(30) = 1

;---------------------------------------------------------------------------
;Crouch_Y
[State -1, CrouchY]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger1 = Var(30) = 0

trigger2 = statetype = C
trigger2 = P2StateType != L
trigger2 = ctrl = 1
trigger2 = P2BodyDist X = [0, 60]
trigger2 = P2BodyDist Y >= -110
trigger2 = Var(30) = 1

;---------------------------------------------------------------------------
;Crouch_A
[State -1, CrouchA]
type = ChangeState
value = 420
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger1 = Var(30) = 0

[State -1, CrouchA]
type = ChangeState
value = 420
triggerall = Var(30) = 1
triggerall = P2BodyDist X = [0, 40]
triggerall = P2BodyDist Y >= 0

trigger1 = StateNo = 200
trigger1 = movehit
trigger1 = Time = [9, 14]

;trigger2 = command = "a"
;trigger2 = command = "holddown"
trigger2 = statetype = C
trigger2 = P2StateType != L
trigger2 = P2StateType != C
trigger2 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_B
[State -1, CrouchB]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger1 = Var(30) = 0
trigger2 = stateno = 420
trigger2 = movecontact
trigger2 = Time >= 5

[State -1, CrouchB]
type = ChangeState
value = 430
triggerall = Var(30) = 1
triggerall = P2BodyDist X = [0, 80]
triggerall = P2BodyDist Y >= 0

trigger1 = StateNo = 420
trigger1 = movehit
trigger1 = Time = [5, 10]

trigger2 = command = "b"
trigger2 = command = "holddown"
trigger2 = statetype = C
trigger2 = P2StateType != L
trigger2 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_X (Alternative)
[State -1, JumpX2]
type = ChangeState
value = 700
trigger1 = command = "down_x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = Var(30) = 0

;---------------------------------------------------------------------------
;Jump_Y  (Alternative)
[State -1, JumpY2]
type = ChangeState
value = 710
trigger1 = command = "down_y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = Var(30) = 0

;trigger2 = command = "down_y"
trigger2 = statetype = A
trigger2 = P2StateType = A
trigger2 = P2StateType != L
trigger2 = ctrl = 1
trigger2 = P2BodyDist X = [-40, 40]
trigger2 = P2BodyDist Y = [-75, 95]
trigger2 = Var(30) = 1

;---------------------------------------------------------------------------
;Jump_A  (Alternative)
[State -1, JumpA2]
type = ChangeState
value = 720
trigger1 = command = "down_a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = Var(30) = 0

;---------------------------------------------------------------------------
;Jump_B  (Alternative)
[State -1, JumpB2]
type = ChangeState
value = 730
trigger1 = command = "down_b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = Var(30) = 0

;trigger2 = command = "down_b"
trigger2 = statetype = A
trigger2 = P2StateType = A
trigger2 = P2StateType != L
trigger2 = ctrl = 1
trigger2 = P2BodyDist X = [-40, 35]
trigger2 = P2BodyDist Y = [-40, 30]
trigger2 = Var(30) = 1

;---------------------------------------------------------------------------
;Jump_X
[State -1, JumpX]
type = ChangeState
value = 500
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = Var(30) = 0

;---------------------------------------------------------------------------
;Jump_Y
[State -1, JumpY]
type = ChangeState
value = 510
triggerall = ctrl = 1
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = Var(30) = 0

trigger2 = StateNo = 50
trigger2 = Var(30) = 1
trigger2 = Time >= 30
trigger2 = P2StateType != L
trigger2 = EnemyNear, Pos Y = 0
trigger2 = P2BodyDist X = [-55, 45]
trigger2 = Random < 500

;trigger3 = command = "y"
;trigger3 = statetype = A
;trigger3 = Var(30) = 1
;trigger3 = P2StateType != L
;trigger3 = EnemyNear, Pos Y != 0
;trigger3 = P2BodyDist X = [-55, 45]
;trigger3 = P2BodyDist Y = [-100, 80]

;---------------------------------------------------------------------------
;Jump_A
[State -1, JumpA]
type = ChangeState
value = 520
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = Var(30) = 0

;---------------------------------------------------------------------------
;Jump_B
[State -1, JumpB]
type = ChangeState
value = 530
triggerall = ctrl = 1
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = Var(30) = 0

trigger2 = StateNo = 50
trigger2 = Var(30) = 1
trigger2 = Time >= 30
trigger2 = P2StateType != L
trigger2 = EnemyNear, Pos Y = 0
trigger2 = P2BodyDist X = [-30, 40]

;trigger3 = command = "b"
trigger3 = P2StateType = A
trigger3 = statetype = A
trigger3 = P2StateType != L
trigger3 = P2BodyDist X = [-30, 40]
trigger3 = P2BodyDist Y = [5, 60]
trigger3 = Var(30) = 1

;---------------------------------------------------------------------------
;Getup Counterattack
[State -1, GetUpCounter]
type = ChangeState
value = 810
triggerall = stateno = 5120
triggerall = Time = 1
trigger1 = command = "holdup"
trigger1 = Var(30) = 0

trigger2 = Var(30) = 1
trigger2 = P2StateType != L
trigger2 = P2StateType != C
trigger2 = P2BodyDist X = [0, 55]
trigger2 = P2BodyDist Y >= -95
trigger2 = Random < 300
trigger2 = RoundState <= 2
trigger3 = Var(30) = 1
trigger3 = P2StateType != L
trigger3 = P2StateType = C
trigger3 = P2BodyDist X = [0, 55]
trigger3 = P2BodyDist Y >= -95
trigger3 = Random < 950
trigger3 = RoundState <= 2

;---------------------------------------------------------------------------
;Getting Up Recovery Roll Forward
[State -1, RollF]
type = ChangeState
value = 800
triggerall = stateno = 5120
triggerall = Time = 1
trigger1 = command = "holdfwd"
trigger1 = Var(30) = 0

trigger2 = Var(30) = 1
trigger2 = P2Dist X = [0, 105]

;---------------------------------------------------------------------------
;Getting Up Recovery Roll Backwards
[State -1, RollB]
type = ChangeState
value = 805
triggerall = stateno = 5120
triggerall = Time = 1
trigger1 = command = "holdback"
trigger1 = Var(30) = 0

trigger2 = Var(30) = 1
trigger2 = P2Dist X = [-105, 0]

;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 199
triggerall = command = "start"
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = Var(30) = 0

trigger2 = Var(30) = 1
trigger2 = P2BodyDist X = [0, 220]
trigger2 = Random < 50
;trigger2 = P2StateType = L

