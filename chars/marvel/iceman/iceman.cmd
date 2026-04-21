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

;-| AI Activation Commands |-----------------------------------------------
; From BBH
[Command]
name = "CPU0"
command = U,U,D,D,B,F,B,F,s,s
time = 0

[Command]
name = "CPU1"
command = U,U,D,D,B,F,B,F,a,a
time = 0

[Command]
name = "CPU2"
command = U,U,D,D,B,F,B,F,b,b
time = 0

[Command]
name = "CPU3"
command = U,U,D,D,B,F,B,F,c,c
time = 0

[Command]
name = "CPU4"
command = U,U,D,D,B,F,B,F,x,x
time = 0

[Command]
name = "CPU5"
command = U,U,D,D,B,F,B,F,y,y
time = 0

[Command]
name = "CPU6"
command = U,U,D,D,B,F,B,F,z,z
time = 0

[Command]
name = "CPU7"
command = U,U,D,D,B,F,B,F,a,b
time = 0

[Command]
name = "CPU8"
command = U,U,D,D,B,F,B,F,b,c
time = 0

[Command]
name = "CPU9"
command = U,U,D,D,B,F,B,F,a,c
time = 0

[Command]
name = "CPU10"
command = U,U,D,D,B,F,B,F,x,y
time = 0

[Command]
name = "CPU11"
command = U,U,D,D,B,F,B,F,y,z
time = 0

[Command]
name = "CPU12"
command = U,U,D,D,B,F,B,F,x,z
time = 0

[Command]
name = "CPU13"
command = U,U,D,D,B,F,B,F,a,x
time = 0

[Command]
name = "CPU14"
command = U,U,D,D,B,F,B,F,a,y
time = 0

[Command]
name = "CPU15"
command = U,U,D,D,B,F,B,F,a,z
time = 0

[Command]
name = "CPU16"
command = U,U,D,D,B,F,B,F,b,x
time = 0

[Command]
name = "CPU17"
command = U,U,D,D,B,F,B,F,b,y
time = 0

[Command]
name = "CPU18"
command = U,U,D,D,B,F,B,F,b,z
time = 0

[Command]
name = "CPU19"
command = U,U,D,D,B,F,B,F,c,x
time = 0

[Command]
name = "CPU20"
command = U,U,D,D,B,F,B,F,c,y
time = 0

[Command]
name = "CPU21"
command = U,U,D,D,B,F,B,F,c,z
time = 0

[Command]
name = "CPU22"
command = U,U,D,D,B,F,B,F,x,a
time = 0

[Command]
name = "CPU23"
command = U,U,D,D,B,F,B,F,x,b
time = 0

[Command]
name = "CPU24"
command = U,U,D,D,B,F,B,F,x,c
time = 0

[Command]
name = "CPU25"
command = U,U,D,D,B,F,B,F,y,a
time = 0

[Command]
name = "CPU26"
command = U,U,D,D,B,F,B,F,y,b
time = 0

[Command]
name = "CPU27"
command = U,U,D,D,B,F,B,F,y,c
time = 0

[Command]
name = "CPU28"
command = U,U,D,D,B,F,B,F,z,a
time = 0

[Command]
name = "CPU29"
command = U,U,D,D,B,F,B,F,z,b
time = 0

[Command]
name = "CPU30"
command = U,U,D,D,B,F,B,F,z,c
time = 0

[Command]
name = "CPU31"
command = U,U,D,D,B,F,B,F,s,s,s
time = 0


;-| Super Motions |--------------------------------------------------------

[Command]
name = "ArcticAttack"
command = ~D, DF, F, x+y

[Command]
name = "ArcticAttack"
command = ~D, DF, F, y+z

[Command]
name = "ArcticAttack"
command = ~D, DF, F, x+y+z

[Command]
name = "Avalanche"
command = ~D, DF, F, a+b

[Command]
name = "Avalanche"
command = ~D, DF, F, b+c

[Command]
name = "Avalanche"
command = ~D, DF, F, a+b+c

;-| Special Motions |------------------------------------------------------

[Command]
name = "IceFist"
command = ~D, DB, B, x

[Command]
name = "IceFist"
command = ~D, DB, B, y

[Command]
name = "IceFist"
command = ~D, DB, B, z

[Command]
name = "IceBeamx"
command = ~D, DF, F, x

[Command]
name = "IceBeamy"
command = ~D, DF, F, y

[Command]
name = "IceBeamz"
command = ~D, DF, F, z

[Command]
name = "Boulderxa"
command = x+a

[Command]
name = "Boulderyb"
command = y+b

[Command]
name = "Boulderzc"
command = z+c

[Command]
name = "SuperJump"
command = $D, $U

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, a

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, b

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, c

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, x

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, y

[Command]
name = "RecoveryRoll"
command = ~B, DB, D, z


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
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
;===========================================================================
;---------------------------------------------------------------------------
;AI Activation
[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU0"
trigger2 = command = "CPU1"
trigger3 = command = "CPU2"
trigger4 = command = "CPU3"
trigger5 = command = "CPU4"
trigger6 = command = "CPU5"
trigger7 = command = "CPU6"
trigger8 = command = "CPU7"
v = 17
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU8"
trigger2 = command = "CPU9"
trigger3 = command = "CPU10"
trigger4 = command = "CPU11"
trigger5 = command = "CPU12"
trigger6 = command = "CPU13"
trigger7 = command = "CPU14"
trigger8 = command = "CPU15"
v = 17
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU16"
trigger2 = command = "CPU17"
trigger3 = command = "CPU18"
trigger4 = command = "CPU19"
trigger5 = command = "CPU20"
trigger6 = command = "CPU21"
trigger7 = command = "CPU22"
trigger8 = command = "CPU23"
v = 17
value = 1

[State -1]
type = VarSet
triggerall = roundstate = 2
trigger1 = command = "CPU24"
trigger2 = command = "CPU25"
trigger3 = command = "CPU26"
trigger4 = command = "CPU27"
trigger5 = command = "CPU28"
trigger6 = command = "CPU29"
trigger7 = command = "CPU30"
trigger8 = command = "CPU31"
v = 17
value = 1

;===========================================================================
; AI COMMANDS

;--------------------------------
; Throws
[State -1, Throw When P2 Is Close]
type = ChangeState
value = ifelse(Random <= 499, 800, 830)
triggerall = var(17)
triggerall = !Win
triggerall = StateType = S
trigger1 = ctrl
trigger1 = P2BodyDist X < 4
trigger1 = P2StateType = S || P2StateType = C
trigger1 = Random < 20

; Air Throw
[State -1, Air Throw When P2 Is Close]
type = ChangeState
value = 870
triggerall = var(17)
triggerall = !Win
triggerall = StateType = A
trigger1 = ctrl
trigger1 = P2BodyDist X < 4
trigger1 = P2StateType = A
trigger1 = Random < 50

; Run Forward
[State -1, Attack Aggresively!]
type = ChangeState
value = 100
triggerall = var(17)
triggerall = !Win
triggerall = StateType = S
triggerall = StateNo != 100
trigger1 = ctrl
trigger1 = P2BodyDist X >= 100
trigger1 = Random <= (150 - ifelse(Life < 265, 90, 0))
trigger2 = ctrl
trigger2 = P2MoveType = H
trigger2 = Random <= 300

;--------------------------------
; Air Combos
[State -1, First Hit]
type = ChangeState
value = 600
triggerall = var(17)
triggerall = PrevStateNo = 460 
trigger1 = StateNo = 50
trigger1 = P2BodyDist Y >= -7
trigger1 = P2BodyDist X <= 60

[State -1, Second Hit]
type = ChangeState
value = 630
triggerall = var(17)
trigger1 = StateNo = 600
trigger1 = MoveHit

[State -1, Third Hit]
type = ChangeState
value = 610
triggerall = var(17)
trigger1 = StateNo = 630
trigger1 = MoveHit

[State -1, Fourth Hit]
type = ChangeState
value = 640
triggerall = Var(17)
trigger1 = StateNo = 610
trigger1 = MoveHit

[State -1, Finisher]
type = ChangeState
value = ifelse(Random <= 499, 650, ifelse(Random <= 499, 655, 620))
triggerall = var(17)
trigger1 = StateNo = 640
trigger1 = MoveHit
trigger1 = (Power < 1000) || (Random <= 399)

;-------------------------------------------
; Ground Combos
[State -1, Initiate Combos with standing jab]
type = ChangeState
value = 200
triggerall = var(17)
triggerall = StateType = S || StateType = C
trigger1 = P2BodyDist X <= 60
trigger1 = ctrl
trigger1 = Random <= 25

[State -1, Initiate Combos with crouching short]
type = ChangeState
value = 430
triggerall = var(17)
triggerall = StateType = S || StateType = C
trigger1 = P2BodyDist X <= 60
trigger1 = ctrl
trigger1 = Random <= (10 + ifelse(P2StateType = S, 40, 5))

[State -1, Light Kick]
type = ChangeState
value = ifelse(Random <= 499, 230, 430)
triggerall = var(17)
trigger1 = StateNo = 200
trigger1 = MoveHit
trigger1 = Random <= 499

[State -1, Medium Punch]
type = ChangeState
value = ifelse(Random <= 499, 210, 410)
triggerall = var(17)
trigger1 = StateNo = 200
trigger1 = MoveHit
trigger1 = Random <= 500
trigger2 = StateNo = 430 || StateNo = 230
trigger2 = MoveHit
trigger2 = Random <= 200

[State -1, Medium Kick]
type = ChangeState
value = ifelse(Random <= 499, 240, 440)
triggerall = var(17)
trigger1 = StateNo = 200 || StateNo = 430
trigger1 = MoveHit
trigger1 = Random <= 400
trigger2 = StateNo = 210 || StateNo = 410
trigger2 = MoveHit
trigger2 = Random <= 300

[State -1, Hard Punch]
type = ChangeState
value = ifelse(Random <= 499, 220, 420)
triggerall = var(17)
trigger1 = StateNo = 200 || StateNo = 430
trigger1 = MoveHit
trigger1 = Random <= 100
trigger2 = StateNo = 240 || StateNo = 440
trigger2 = MoveHit
trigger2 = Random <= 499
trigger3 = StateNo = 210 || StateNo = 410
trigger3 = MoveHit
trigger3 = Random <= 125
trigger4 = StateNo = 230 || StateNo = 430
trigger4 = MoveHit
trigger4 = Random <= 125

[State -1, Hard Kick]
type = ChangeState
value = ifelse(P2BodyDist X >= 30, 250, 450)
triggerall = var(17)
trigger1 = StateNo = 200 || StateNo = 430
trigger1 = MoveHit
trigger2 = StateNo = 240 || StateNo = 440
trigger2 = MoveHit
trigger3 = StateNo = 210 || StateNo = 410
trigger3 = MoveHit
trigger4 = StateNo = 230 || StateNo = 430
trigger4 = MoveHit

;-------------------------------------------
; Use Ice Beam
[State -1, Standing Down Icebeam]
type = ChangeState
value = 1000
triggerall = var(17)
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = P2BodyDist X <= 54
trigger1 = P2StateType = L
trigger1 = P2MoveType = H

[State -1, Horizontal Icebeam]
type = ChangeState
value = ifelse(StateType = A, 1040, 1010)
triggerall = var(17)
trigger1 = P2BodyDist X >= 150
trigger1 = ctrl
trigger1 = P2BodyDist Y = [-50,50]
trigger1 = Random <= 20
trigger2 = StateNo = 220 || StateNo = 420
trigger2 = MoveHit
trigger2 = (Power < 1000) || (Random <= 699)

[State -1, Downward Icebeam]
type = ChangeState
value = 1030
triggerall = var(17)
triggerall = StateType = A
triggerall = !var(26)
trigger1 = ctrl
trigger1 = P2Dist X >= 60
trigger1 = (P2Dist Y >= (P2Dist X - 89)) && (P2Dist Y <= (P2Dist X - 29)) 
trigger1 = Random <= 175

[State -1, Upward Icebeam]
type = ChangeState
value = ifelse(StateType = A, 1050, 1020)
triggerall = var(17)
triggerall = !var(26)
trigger1 = ctrl
trigger1 = P2Dist X >= 60
trigger1 = (P2Dist Y >= (-(P2Dist X) - 119)) && (P2Dist Y <= (-(P2Dist X) - 59))
trigger1 = Random <= 175
trigger2 = StateNo = 250
trigger2 = MoveHit
trigger2 = (Power < 1000) || (Random <= 499)

;--------------------------------
; Use Ice Boulder
[State -1, Ice Boulder]
type = ChangeState
value = ifelse(P2BodyDist X <= 177, 1060, ifelse(P2BodyDist X >= 210, 1110, 1100))
triggerall = var(17)
triggerall = !var(26)
trigger1 = ctrl
trigger1 = P2BodyDist X >= 135
trigger1 = Random <= 9

;---------------------------------
; Use Ice Fist
[State -1, Ice Fist]
type = ChangeState
value = 1120
triggerall = var(17)
triggerall = StateType != A
triggerall = !var(19)
trigger1 = ctrl
trigger1 = P2BodyDist X >= 180
trigger1 = P2MoveType != A
trigger1 = Random <= 60
trigger2 = P2MoveType = H
trigger2 = ctrl
trigger2 = Random <= 100

;----------------------------------
; Use Air Ice Projectile
[State -1, Air Projectile]
type = ChangeState
value = 625
triggerall = var(17)
triggerall = !var(26)
triggerall = StateType = A
trigger1 = ctrl
trigger1 = P2BodyDist X = [0,146]
trigger1 = Vel X > 0
trigger1 = Random <= 50

;-----------------------------------
; Use Arctic Attack
[State -1, Arctic Attack]
type = ChangeState
value = 2000
triggerall = var(17)
triggerall = Power >= 1000
trigger1 = StateNo = 640
trigger1 = MoveHit
trigger2 = StateNo = 220 || StateNo = 420
trigger2 = MoveHit
trigger3 = (StateNo = 1060) || (StateNo = 1100) || (StateNo = 1110)
trigger3 = time = 18
trigger3 = Random <= 99
trigger4 = ctrl
trigger4 = Life <= 265
trigger4 = P2BodyDist X >= 210
trigger4 = Random <= 22 

;------------------------------------
; Use Avalanche
[State -1, Avalanche]
type = ChangeState
value = 2010
triggerall = var(17)
triggerall = Power >= 1000
triggerall = StateType != A
trigger1 = StateNo = 250
trigger1 = MoveHit
trigger2 = ctrl
trigger2 = P2BodyDist Y <= -140
trigger2 = P2MoveType = A
trigger2 = Random <= 100

[State -1, Push Block Stand]
type = ChangeState
value = 1230
triggerall = var(17)
trigger1 = stateno = [150,151]
trigger1 = Random <= 4

[State -1, Push Block Crouch]
type = ChangeState
value = 1240
triggerall = var(17)
trigger1 = stateno = [152,153]
trigger1 = Random <= 4

[State -1, Push Block Air]
type = ChangeState
value = 1250
triggerall = var(17)
triggerall = Random <= 4
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

;===========================================================================
;---------------------------------------------------------------------------
; Arctic Attack
[State -1, Arctic Attack]
type = ChangeState
value = 2000
triggerall = !var(17)
triggerall = command = "ArcticAttack"
triggerall = Power >= 1000
triggerall = MoveType != H
trigger1 = Ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]
trigger4 = StateNo = [600,650]
trigger5 = StateNo = 1060
trigger5 = time > 17
trigger6 = StateNo = 1100
trigger6 = time > 17
trigger7 = StateNo = 1110
trigger7 = time > 17
trigger8 = StateNo = [1000,1050]

;---------------------------------------------------------------------------
; Avalanche
[State -1, Avalanche]
type = ChangeState
value = 2010
triggerall = command = "Avalanche"
triggerall = Power >= 1000
triggerall = MoveType != H
triggerall = StateType != A
trigger1 = Ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]
trigger4 = StateNo = [600,650]
trigger5 = StateNo = [1000,1020]

;===========================================================================
;---------------------------------------------------------------------------
; Stand Ice Beam X
[State -1, Stand Ice Beam x]
type = ChangeState
value = 1000
triggerall = !var(17)
triggerall = command = "IceBeamx"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]

;---------------------------------------------------------------------------
; Stand Ice Beam y
[State -1, Stand Ice Beam y]
type = ChangeState
value = 1010
triggerall = !var(17)
triggerall = command = "IceBeamy"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]

;---------------------------------------------------------------------------
; Stand Ice Beam z
[State -1, Stand Ice Beam z]
type = ChangeState
value = 1020
triggerall = !var(17)
triggerall = command = "IceBeamz"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]

;---------------------------------------------------------------------------
; Air Ice Beam x
[State -1, Air Ice Beam x]
type = ChangeState
value = 1030
triggerall = !var(17)
triggerall = command = "IceBeamx"
triggerall = StateType = A
trigger1 = ctrl
trigger2 = StateNo = [600,650]
trigger8 = StateNo = 625
trigger8 = time > 13

;---------------------------------------------------------------------------
; Air Ice Beam y
[State -1, Air Ice Beam y]
type = ChangeState
value = 1040
triggerall = !var(17)
triggerall = command = "IceBeamy"
triggerall = StateType = A
trigger1 = ctrl
trigger2 = StateNo = [600,650]
trigger8 = StateNo = 625
trigger8 = time > 13

;---------------------------------------------------------------------------
; Air Ice Beam z
[State -1, Air Ice Beam z]
type = ChangeState
value = 1050
triggerall = !var(17)
triggerall = command = "IceBeamz"
triggerall = StateType = A
trigger1 = ctrl
trigger2 = StateNo = [600,650]
trigger8 = StateNo = 625
trigger8 = time > 13

;---------------------------------------------------------------------------
; Ice Boulder Towards
[State -1, Ice Boulder Towards]
type = ChangeState
value = 1060
triggerall = !var(17)
triggerall = command = "Boulderxa"
trigger1 = ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]
trigger4 = StateNo = [600,650]

;---------------------------------------------------------------------------
; Ice Boulder Down
[State -1, Ice Boulder Down]
type = ChangeState
value = 1100
triggerall = !var(17)
triggerall = command = "Boulderyb"
trigger1 = ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]
trigger4 = StateNo = [600,650]

;---------------------------------------------------------------------------
; Ice Boulder Away
[State -1, Ice Boulder Away]
type = ChangeState
value = 1110
triggerall = !var(17)
triggerall = command = "Boulderzc"
trigger1 = ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]
trigger4 = StateNo = [600,650]

;---------------------------------------------------------------------------
; Ice Fist
[State -1, Ice Fist]
type = ChangeState
value = 1120
triggerall = !var(17)
triggerall = command = "IceFist"
triggerall = NumHelper(555) = 0
trigger1 = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]

;===========================================================================
;---------------------------------------------------------------------------
; Push Block (Stand)
[State -1]
type = ChangeState
value = 1230
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = [150,151]

;Push Block (crouching)
[State -1]
type = ChangeState
value = 1240
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = [152,153]

;Push Block (aerial)
[State -1]
type = ChangeState
value = 1250
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

;===========================================================================

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "BB"
trigger2 = command = "holdback"
trigger2 = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(17)
triggerall = StateNo != 100
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "FF"
trigger2 = command = "x" && command = "y"
trigger3 = command = "y" && command = "z"
trigger4 = command = "x" && command = "y" && command = "z"

;---------------------------------------------------------------------------
; Super Jump
[State -1, Superjump]
type = ChangeState
value = 660
triggerall = StateType = S || StateType = C
triggerall = ctrl
trigger1 = command = "SuperJump"
trigger2 = command = "a" && command = "b"
trigger3 = command = "b" && command = "c"
trigger4 = command = "a" && command = "b" && command = "c"

;---------------------------------------------------------------------------
; Air Throw
[State -1, Air Throw]
type = ChangeState
value = 870
triggerall = command = "y" || command = "z"
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = A) 
trigger1 = p2movetype != H
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = A)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;Z Throw
[State -1, Z Throw]
type = ChangeState
value = 800
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; Y Throw
[State -1, Y Throw]
type = ChangeState
value = 830
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !var(17)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = !var(17)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 230
trigger3 = MoveContact
trigger4 = StateNo = 400
trigger4 = MoveContact
trigger5 = StateNo = 430
trigger5 = MoveContact

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = !var(17)
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 230
trigger3 = MoveContact
trigger4 = StateNo = 400
trigger4 = MoveContact
trigger5 = StateNo = 430
trigger5 = MoveContact
trigger6 = StateNo = 240
trigger6 = MoveContact
trigger7 = StateNo = 410
trigger7 = MoveContact
trigger8 = StateNo = 440
trigger8 = MoveContact
trigger9 = StateNo = 210
trigger9 = MoveContact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !var(17)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 400
trigger3 = MoveContact

;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = !var(17)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 230
trigger4 = MoveContact
trigger5 = StateNo = 400
trigger5 = MoveContact
trigger6 = StateNo = 410
trigger6 = MoveContact
trigger7 = StateNo = 430
trigger7 = MoveContact

;---------------------------------------------------------------------------
; Standing Hard Kick
[State -1, Standing Hard Kick]
type = ChangeState
value = 250
triggerall = !var(17)
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 230
trigger3 = MoveContact
trigger4 = StateNo = 400
trigger4 = MoveContact
trigger5 = StateNo = 430
trigger5 = MoveContact
trigger6 = StateNo = 240
trigger6 = MoveContact
trigger7 = StateNo = 410
trigger7 = MoveContact
trigger8 = StateNo = 440
trigger8 = MoveContact
trigger9 = StateNo = 210
trigger9 = MoveContact

;---------------------------------------------------------------------------
;Taunt
;’§”­
[State -1, Taunt]
type = Null ;ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !var(17)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = !var(17)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 230
trigger3 = MoveContact
trigger4 = StateNo = 400
trigger4 = MoveContact
trigger5 = StateNo = 430
trigger5 = MoveContact

;---------------------------------------------------------------------------
; Crouching Hard Punch
[State -1, Crouching Hard Punch]
type = ChangeState
value = 420
triggerall = !var(17)
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = StateType = C
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 230
trigger3 = MoveContact
trigger4 = StateNo = 400
trigger4 = MoveContact
trigger5 = StateNo = 430
trigger5 = MoveContact
trigger6 = StateNo = 240
trigger6 = MoveContact
trigger7 = StateNo = 410
trigger7 = MoveContact
trigger8 = StateNo = 440
trigger8 = MoveContact
trigger9 = StateNo = 210
trigger9 = MoveContact

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !var(17)
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 400
trigger3 = MoveContact

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = !var(17)
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 230
trigger4 = MoveContact
trigger5 = StateNo = 400
trigger5 = MoveContact
trigger6 = StateNo = 410
trigger6 = MoveContact
trigger7 = StateNo = 430
trigger7 = MoveContact

;---------------------------------------------------------------------------
; Crouching Hard Kick
[State -1, Crouching Hard Kick]
type = ChangeState
value = 450
triggerall = !var(17)
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = StateType = C
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 230
trigger3 = MoveContact
trigger4 = StateNo = 400
trigger4 = MoveContact
trigger5 = StateNo = 430
trigger5 = MoveContact
trigger6 = StateNo = 240
trigger6 = MoveContact
trigger7 = StateNo = 410
trigger7 = MoveContact
trigger8 = StateNo = 440
trigger8 = MoveContact
trigger9 = StateNo = 210
trigger9 = MoveContact

;-------------------
; Launcher Followup
[State -1, Launcher Followup]
type = ChangeState
value = 460
triggerall = StateNo = 450
triggerall = MoveHit
trigger1 = command = "holdup"
trigger2 = var(17)

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !(var(17) && var(26))
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !(var(17) && var(26))
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 630
trigger3 = MoveContact

;---------------------------------------------------------------------------
; Jump Down + Hard Punch
[State -1, Jump Down + Hard Punch]
type = ChangeState
value = 625
triggerall = !(var(17) && var(26))
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = StateType = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 630
trigger3 = MoveContact
trigger4 = StateNo = 640
trigger4 = MoveContact
trigger5 = StateNo = 610
trigger5 = MoveContact

;---------------------------------------------------------------------------
; Jump Hard Punch
[State -1, Jump Hard Punch]
type = ChangeState
value = 620
triggerall = !(var(17) && var(26))
triggerall = command = "z"
trigger1 = StateType = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 630
trigger3 = MoveContact
trigger4 = StateNo = 640
trigger4 = MoveContact
trigger5 = StateNo = 610
trigger5 = MoveContact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !(var(17) && var(26))
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = !(var(17) && var(26))
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 630
trigger3 = MoveContact
trigger4 = StateNo = 610
trigger4 = MoveContact

;----------------------------------------------------------------------------
; Jump Down + Hard Kick
[State -1, Jump Down + Hard Kick]
type = ChangeState
value = 655
triggerall = !(var(17) && var(26))
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = StateType = A
trigger1 = Ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 630
trigger3 = MoveContact
trigger4 = StateNo = 640
trigger4 = MoveContact
trigger5 = StateNo = 610
trigger5 = MoveContact

;-----------------------------------------------------------------------------
; Jump Hard Kick
[State -1, Jump Hard Kick]
type = ChangeState
value = 650
triggerall = !(var(17) && var(26))
triggerall = command = "c"
trigger1 = StateType = A
trigger1 = Ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 630
trigger3 = MoveContact
trigger4 = StateNo = 640
trigger4 = MoveContact
trigger5 = StateNo = 610
trigger5 = MoveContact


