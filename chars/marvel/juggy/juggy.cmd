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
name = "HeadCrush"
command = ~D, DF, F, x+y

[Command]
name = "HeadCrush"
command = ~D, DF, F, y+z

[Command]
name = "HeadCrush"
command = ~D, DF, F, x+y+z

;-| Special Motions |------------------------------------------------------

[Command]
name = "PowerUp"
command = ~F, D, DF, F, x+y

[Command]
name = "PowerUp"
command = ~F, D, DF, F, y+z

[Command]
name = "PowerUp"
command = ~F, D, DF, F, x+z

[Command]
name = "JuggernautPunchx"
command = ~$B, $D, $F, x

[Command]
name = "JuggernautPunchy"
command = ~$B, $D, $F, y

[Command]
name = "JuggernautPunchz"
command = ~$B, $D, $F, z

[Command]
name = "Earthquakex"
command = ~F, DF, D, x

[Command]
name = "Earthquakey"
command = ~F, DF, D, y

[Command]
name = "Earthquakez"
command = ~F, DF, D, z

[Command]
name = "Splasha"
command = ~$B, $D, $F, a

[Command]
name = "Splashb"
command = ~$B, $D, $F, b

[Command]
name = "Splashc"
command = ~$B, $D, $F, c

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

[Command]
name = "SuperJumpUp"
command = D, U

[Command]
name = "SuperJumpFwd"
command = D, UF

[Command]
name = "SuperJumpBck"
command = D, UB


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
name = "fwd_z"
command = /F,z
time = 1

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
v = 58
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
v = 58
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
v = 58
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
v = 58
value = 1

;===========================================================================
; AI Routines

; Use Power-Up
[State -1, Use Power-Up]
type = ChangeState
value = 1130
triggerall = var(58)
triggerall = !Win
triggerall = !var(14)
triggerall = P2BodyDist X >= 140
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = Random <= 30

; Throw
[State -1, Throw When P2 Is Close]
type = ChangeState
value = ifelse(Random <= 499, 800, 830)
triggerall = var(58)
triggerall = !Win
triggerall = StateType = S
trigger1 = ctrl
trigger1 = P2BodyDist X < 4
trigger1 = P2StateType = S || P2StateType = C
trigger1 = Random < 20

; Air Throw
[State -1, Air Throw When P2 Is Close]
type = ChangeState
value = 860
triggerall = var(58)
triggerall = !Win
triggerall = StateType = A
trigger1 = ctrl
trigger1 = P2BodyDist X < 4
trigger1 = P2StateType = A
trigger1 = Random < 50

; Run Forward
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(58)
triggerall = !Win
triggerall = StateType = S
triggerall = StateNo != 100
trigger1 = ctrl
trigger1 = P2BodyDist X >= 100
trigger1 = Random <= 150

;------------------
; Air Combo stuff
[State -1, Jump Up]
type = ChangeState
value = 225
triggerall = var(58)
triggerall = !Win
trigger1 = StateNo = 420
trigger1 = MoveHit

[State -1, First Hit]
type = ChangeState
value = 600
triggerall = var(58)
triggerall = var(3)
trigger1 = StateNo = 50
trigger1 = time > 10
trigger1 = P2BodyDist Y = [-35,20]

[State -1, Second Hit]
type = ChangeState
value = 630
triggerall = var(58)
triggerall = var(3)
trigger1 = StateNo = 600
trigger1 = MoveHit

[State -1, Third Hit]
type = ChangeState
value = 610
triggerall = var(58)
triggerall = var(3)
trigger1 = StateNo = 630
trigger1 = MoveHit

[State -1, Fourth Hit]
type = ChangeState
value = 640
triggerall = var(58)
triggerall = var(3)
trigger1 = StateNo = 610
trigger1 = MoveHit

[State -1, Fifth Hit]
type = ChangeState
value = ifelse(Random < 500, 650, 620)
triggerall = var(58)
triggerall = var(3)
trigger1 = StateNo = 640
trigger1 = MoveHit

;--------------------------
; Initiate ground combos
[State -1, Light Attacks]
type = ChangeState
value = ifelse(Random < 500, 200, 230)
triggerall = var(58)
triggerall = !Win
trigger1 = StateType = S
trigger1 = ctrl
trigger1 = P2BodyDist X <= 90
trigger1 = P2BodyDist Y >= -35
trigger1 = P2StateType != L
trigger1 = Random <= 90

[State -1, Light Attacks]
type = ChangeState
value = ifelse(Random < 500, 400, 430)
triggerall = var(58)
triggerall = !Win
trigger1 = StateType = C
trigger1 = ctrl
trigger1 = P2BodyDist X <= 90
trigger1 = P2BodyDist Y = 0
trigger1 = P2StateType != L
trigger1 = Random <= 80

[State -1, Use Launcher]
type = ChangeState
value = 420
triggerall = var(58)
triggerall = !Win
triggerall = P2BodyDist X <= 80
triggerall = var(21) < 300
trigger1 = StateNo = 200
trigger1 = MoveHit
trigger2 = StateNo = 230
trigger2 = MoveHit
trigger3 = StateNo = 400
trigger3 = MoveHit
trigger4 = StateNo = 430
trigger4 = MoveHit

[State -1, Use Middle Punches]
type = ChangeState
value = ifelse(Random <= 499, 210, 410)
triggerall = var(58)
triggerall = !Win
triggerall = ((P2BodyDist X > 80) && (Var(21) < 300)) || (var(21) = [300,499])
trigger1 = StateNo = 200
trigger1 = MoveHit
trigger2 = StateNo = 230
trigger2 = MoveHit
trigger3 = StateNo = 400
trigger3 = MoveHit
trigger4 = StateNo = 430
trigger4 = MoveHit

[State -1, Use Trip]
type = ChangeState
value = 440
triggerall = var(58)
triggerall = !Win
triggerall = var(21) = [500,749]
trigger1 = StateNo = 200
trigger1 = MoveHit
trigger2 = StateNo = 230
trigger2 = MoveHit
trigger3 = StateNo = 400
trigger3 = MoveHit
trigger4 = StateNo = 430
trigger4 = MoveHit

[State -1, Use Lunge]
type = ChangeState
value = 226
triggerall = var(58)
triggerall = !Win
triggerall = var(21) >= 750
trigger1 = StateNo = 200
trigger1 = MoveHit
trigger2 = StateNo = 230
trigger2 = MoveHit
trigger3 = StateNo = 400
trigger3 = MoveHit
trigger4 = StateNo = 430
trigger4 = MoveHit

;---------------------------
; Combo into Headcrush
[State -1, Headcrush]
type = ChangeState
value = 2000
triggerall = var(58)
triggerall = !Win
triggerall = NumHelper(451) = 0
triggerall = (Power >= 1000) && (var(21) <= 499)
trigger1 = StateNo = 210
trigger1 = MoveHit
trigger2 = StateNo = 410
trigger2 = MoveHit

[State -1, Punch Combo]
type = ChangeState
value = 1000
triggerall = var(58)
triggerall = !Win
triggerall = (Power < 1000) || (var(21) >= 500)
trigger1 = StateNo = 210
trigger1 = MoveHit
trigger2 = StateNo = 410
trigger2 = MoveHit

;---------------------------------
; Use moves in non-combos

[State -1, Anti-Air]
type = ChangeState
value = 220
triggerall = var(58)
triggerall = !Win
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = P2StateType = A
trigger1 = EnemyNear, Vel X > 0
trigger1 = P2BodyDist X <= 75
trigger1 = P2BodyDist Y >= 190
trigger1 = Random <= 300

[State -1, Use Lunge]
type = ChangeState
value = 226
triggerall = var(58)
triggerall = !Win
triggerall = P2BodyDist X <= 170
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = Random <= 8
trigger2 = ctrl
trigger2 = EnemyNear, ctrl = 0
trigger2 = P2StateType = S || P2StateType = C
trigger2 = Random <= 24

[State -1, Use Earthquake]
type = ChangeState
value = ifelse(Random <= 500, 1060, ifelse(Random <= 500, 1040, 1070))
triggerall = var(58)
triggerall = !Win
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = Random <= 3
trigger2 = StateNo = 220
trigger2 = !MoveHit
trigger2 = AnimElemNo(0) > 2
trigger2 = Random <= 70
trigger3 = StateNo = 226
trigger3 = !MoveHit
trigger3 = AnimElemNo(0) > 4
trigger3 = Random <= 100
trigger4 = StateNo = 250
trigger4 = !MoveHit
trigger4 = AnimElemNo(0) > 3
trigger4 = Random <= 80
trigger5 = StateNo = 420
trigger5 = !MoveHit
trigger5 = AnimElemNo(0) > 4
trigger5 = Random <= 130
trigger6 = !MoveHit
trigger6 = StateNo = 450
trigger6 = AnimElemNo(0) > 3
trigger6 = Random <= 50

[State -1, Use HeadCrush]
type = ChangeState
value = 2000
triggerall = var(58)
triggerall = !Win
triggerall = NumHelper(451) = 0
triggerall = Power >= 1000
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = Random <= 2
trigger2 = ctrl
trigger2 = EnemyNear, ctrl = 0
trigger2 = P2MoveType = A || P2MoveType = H
trigger2 = (P2StateType = S) || (P2StateType = C)
trigger2 = Random <= 25

[State -1, Use Light Splash]
type = ChangeState
value = 1080
triggerall = var(58)
triggerall = !Win
triggerall = StateType = A
trigger1 = !var(3)
trigger1 = P2BodyDist X <= 100
trigger1 = ctrl
trigger1 = Random <= 30

[State -1, Use Medium and Hard Splash]
type = ChangeState
value = ifelse(Random <= 499, 1110, 1120)
triggerall = var(58)
triggerall = !Win
triggerall = P2BodyDist X <= 170
triggerall = !var(3)
trigger1 = ctrl
trigger1 = EnemyNear, ctrl = 0
trigger1 = Random <= 20
trigger2 = Ctrl
trigger2 = StateType = A
trigger2 = P2BodyDist X <= 130
trigger2 = Random <= 50

[State -1, Use Light Punch]
type = ChangeState
value = 1000
triggerall = var(58)
triggerall = !Win
triggerall = P2BodyDist X <= 145
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = EnemyNear, ctrl = 0
trigger1 = P2MoveType = A || P2MoveType = H
trigger1 = (P2StateType = S) || (P2StateType = C)
trigger1 = Random <= 40

[State -1, Use Medium Punch]
type = ChangeState
value = 1020
triggerall = var(58)
triggerall = !Win
triggerall = P2BodyDist X = [146,190]
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = EnemyNear, ctrl = 0
trigger1 = P2MoveType = A || P2MoveType = H
trigger1 = (P2StateType = S) || (P2StateType = C)
trigger1 = Random <= 55

[State -1, Use Hard Punch]
type = ChangeState
value = 1030
triggerall = var(58)
triggerall = !Win
triggerall = P2BodyDist X > 190
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = EnemyNear, ctrl = 0
trigger1 = P2MoveType = A || P2MoveType = H
trigger1 = (P2StateType = S) || (P2StateType = C)
trigger1 = Random <= 65

;---------------------------------------
;AI Push Block (Thanks to BB Hood!)
[State -1]
type = ChangeState
value = 900
triggerall = var(58) = 1
triggerall = random < 50
trigger1 = stateno = [150,151]

[State -1]
type = ChangeState
value = 910
triggerall = var(58) = 1
triggerall = random < 50
trigger1 = stateno = [152,153]

[State -1]
type = ChangeState
value = 920
triggerall = var(58) = 1
triggerall = random < 50
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

;===========================================================================

;---------------------------------------------------------------------------
; Cytorrak Power Up
[State -1, Cytorrak Power Up]
type = ChangeState
value = 1130
triggerall = !var(58)
triggerall = command = "PowerUp"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]

;---------------------------------------------------------------------------
; Juggernaut HeadCrush
[State -1, Juggernaut Headcrush]
type = ChangeState
value = 2000
triggerall = !WinKO
triggerall = !var(58)
triggerall = NumHelper(451) = 0
triggerall = command = "HeadCrush"
triggerall = Power >= 1000
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]
trigger4 = StateNo = 1010
trigger4 = !MoveContact
trigger5 = StateNo = 1000 || StateNo = [1020,1030]
trigger6 = StateNo = 1040 || StateNo = [1060,1070]
trigger6 = time <= 28

;===========================================================================

;---------------------------------------------------------------------------
; Light Juggernaut Punch
[State -1, Light Juggernaut Punch]
type = ChangeState
value = 1000
triggerall = !WinKO
triggerall = !var(58)
triggerall = command = "JuggernautPunchx"
triggerall = StateType != A
trigger1 = ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]

;---------------------------------------------------------------------------
; Medium Juggernaut Punch
[State -1, Medium Juggernaut Punch]
type = ChangeState
value = 1020
triggerall = !WinKO
triggerall = !var(58)
triggerall = command = "JuggernautPunchy"
triggerall = StateType != A
trigger1 = ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]

;---------------------------------------------------------------------------
; Hard Juggernaut Punch
[State -1, Hard Juggernaut Punch]
type = ChangeState
value = 1030
triggerall = !WinKO
triggerall = !var(58)
triggerall = command = "JuggernautPunchz"
triggerall = StateType != A
trigger1 = ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]

;---------------------------------------------------------------------------
; Light Earthquake
[State -1, Light Earthquake]
type = ChangeState
value = 1040
triggerall = !WinKO
triggerall = !var(58)
triggerall = command = "Earthquakex"
triggerall = StateType != A
trigger1 = ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]

;---------------------------------------------------------------------------
; Medium Earthquake
[State -1, Medium Earthquake]
type = ChangeState
value = 1060
triggerall = !WinKO
triggerall = !var(58)
triggerall = command = "Earthquakey"
triggerall = StateType != A
trigger1 = ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]

;---------------------------------------------------------------------------
; Hard Earthquake
[State -1, Hard Earthquake]
type = ChangeState
value = 1070
triggerall = !WinKO
triggerall = !var(58)
triggerall = command = "Earthquakez"
triggerall = StateType != A
trigger1 = ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]

;---------------------------------------------------------------------------
; Light Juggernaut Splash
[State -1, Light Juggernaut Splash]
type = ChangeState
value = 1080
triggerall = !WinKO
triggerall = !var(58) 
triggerall = command = "Splasha"
trigger1 = ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]
trigger4 = StateNo = [600,650]

;---------------------------------------------------------------------------
; Medium Juggernaut Splash
[State -1, Medium Juggernaut Splash]
type = ChangeState
value = 1110
triggerall = !WinKO
triggerall = !var(58)
triggerall = command = "Splashb"
trigger1 = ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]
trigger4 = StateNo = [600,650]

;---------------------------------------------------------------------------
; Hard Juggernaut Splash
[State -1, Hard Juggernaut Splash]
type = ChangeState
value = 1120
triggerall = !WinKO
triggerall = !var(58)
triggerall = command = "Splashc"
trigger1 = ctrl
trigger2 = StateNo = [200,250]
trigger3 = StateNo = [400,450]
trigger4 = StateNo = [600,650]

;===========================================================================

;---------------------------------------------------------------------------
; Push Block (Stand)
[State -1]
type = ChangeState
value = 900
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = [150,151]

;Push Block (crouching)
[State -1]
type = ChangeState
value = 910
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = [152,153]

;Push Block (aerial)
[State -1]
type = ChangeState
value = 920
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" && command = "y" && command = "z")
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = StateNo != 105
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
triggerall = statetype = S
triggerall = ctrl
triggerall = StateNo != 100
trigger1 = command = "FF"
trigger2 = command = "x" && command = "y"
trigger3 = command = "y" && command = "z"
trigger4 = command = "x" && command = "y" && command = "z"

;---------------------------------------------------------------------------
; Superjump Up
[State -1, Superjump Up]
type = ChangeState
value = 690
triggerall = ctrl
triggerall = statetype = S || statetype = C
trigger1 = command = "SuperJumpUp"
trigger2 = command = "a" && command = "b"
trigger3 = command = "b" && command = "c"
trigger4 = command = "a" && command = "b" && command = "c"

;---------------------------------------------------------------------------
; Superjump Fwd
[State -1, Superjump Fwd]
type = ChangeState
value = 700
trigger1 = command = "SuperJumpFwd"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Superjump Back
[State -1, Superjump Back]
type = ChangeState
value = 710
trigger1 = command = "SuperJumpBck"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Air Throw
[State -1, Air Throw]
type = ChangeState
value = 860
triggerall = command = "z" || command = "y"
triggerall = StateType = A
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2BodyDist X < 3
trigger1 = p2MoveType != H
trigger1 = p2StateType = A
trigger2 = command = "holdback"
trigger2 = p2BodyDist X < 5
trigger2 = p2MoveType != H
trigger2 = p2StateType = A

;---------------------------------------------------------------------------
; Hard Punch Throw
[State -1, Hard Punch Throw]
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
; Medium Punch Throw
[State -1, Medium Punch Throw]
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
triggerall = !WinKO
triggerall = !(var(58) && var(14))
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; Stand Light Punch - Second Punch
[State -1, 2nd Stand Light Punch]
type = ChangeState
value = 205
triggerall = !WinKO
triggerall = !(var(58) && var(14))
triggerall = StateNo = 200
trigger1 = AnimElemNo(0) = 4
trigger1 = var(0) ;StateType = S
trigger2 = AnimElem = 3 > 5
trigger2 = StateType = S
trigger2 = command = "x"
trigger2 = command != "holddown"

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = !WinKO
triggerall = !(var(58) && var(14))
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 205 
trigger2 = MoveContact
trigger3 = StateNo = 230
trigger3 = MoveContact
trigger4 = StateNo = 400
trigger4 = MoveContact
trigger5 = StateNo = 430
trigger5 = MoveContact

;---------------------------------------------------------------------------
; Lunge Punch
[State -1, Lunge Punch]
type = ChangeState
value = 226
triggerall = !WinKO
triggerall = !var(58)
triggerall = command = "fwd_z"
trigger1 = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = 200 || StateNo = 205
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
triggerall = !WinKO
triggerall = !(var(58) && var(14))
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 205
trigger2 = MoveContact
trigger3 = StateNo = 400
trigger3 = MoveContact
trigger4 = StateNo = 430
trigger4 = MoveContact

; Launcher followup jump
[State -1, Launcher followup]
type = ChangeState
value = 225
triggerall = command = "holdup" 
trigger1 = StateNo = 220
trigger1 = Movehit 
trigger2 = StateNo = 420
trigger2 = Movehit

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !WinKO
triggerall = !(var(58) && var(14))
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = !WinKO
triggerall = !(var(58) && var(14))
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 230
trigger2 = MoveContact
trigger3 = StateNo = 200
trigger3 = MoveContact
trigger4 = StateNo = 230
trigger4 = MoveContact
trigger5 = StateNo = 400
trigger5 = MoveContact
trigger6 = StateNo = 430
trigger6 = MoveContact

;---------------------------------------------------------------------------
;Standing Hard Kick
[State -1, Standing Hard Kick]
type = ChangeState
value = 250
triggerall = !WinKO
triggerall = !(var(58) && var(14))
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 230
trigger2 = MoveContact
trigger3 = StateNo = 200
trigger3 = MoveContact
trigger4 = StateNo = 400
trigger4 = MoveContact
trigger5 = StateNo = 430
trigger5 = MoveContact

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !WinKO
triggerall = !(var(58) && var(14))
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = !WinKO
triggerall = !(var(58) && var(14))
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 400
trigger2 = MoveContact
trigger3 = StateNo = 430
trigger3 = MoveContact
trigger4 = StateNo = 200
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact

;---------------------------------------------------------------------------
;Crouching Hard Punch
[State -1, Crouching Hard Punch]
type = ChangeState
value = 420
triggerall = !WinKO
triggerall = !(var(58) && var(14))
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 400
trigger2 = MoveContact
trigger3 = StateNo = 430
trigger3 = MoveContact
trigger4 = StateNo = 200
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !WinKO
triggerall = !(var(58) && var(14))
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = !WinKO
triggerall = !(var(58) && var(14))
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 430
trigger2 = MoveContact
trigger3 = StateNo = 400
trigger3 = MoveContact
trigger4 = StateNo = 200
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact

;---------------------------------------------------------------------------
;Crouching Hard Kick
[State -1, Crouching Hard Kick]
type = ChangeState
value = 450
triggerall = !WinKO
triggerall = !(var(58) && var(14))
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 430
trigger2 = MoveContact
trigger3 = StateNo = 400
trigger3 = MoveContact
trigger4 = StateNo = 200
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !WinKO
triggerall = !(var(58) && var(3))
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !WinKO
triggerall = !(var(58) && var(3))
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 630
trigger3 = MoveContact
trigger3 = Var(3) = 1

;---------------------------------------------------------------------------
;Jump Hard Punch
[State -1, Jump Hard Punch]
type = ChangeState
value = 620
triggerall = !WinKO
triggerall = !(var(58) && var(3))
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 630
trigger3 = MoveContact
trigger3 = Var(3) = 1
trigger4 = StateNo = 610
trigger4 = MoveContact
trigger4 = Var(3) = 1
trigger5 = StateNo = 640
trigger5 = MoveContact
trigger5 = Var(3) = 1

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !WinKO
triggerall = !(var(58) && var(3))
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger2 = Var(3) = 1

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = !WinKO
triggerall = !(var(58) && var(3))
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger2 = Var(3) = 1
trigger3 = StateNo = 630
trigger3 = Movecontact
trigger4 = StateNo = 610
trigger4 = Movecontact
trigger4 = Var(3) = 1

;---------------------------------------------------------------------------
;Jump Hard Kick
[State -1, Jump Hard Kick]
type = ChangeState
value = 650
triggerall = !WinKO
triggerall = !(var(58) && var(3))
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger2 = Var(3) = 1
trigger3 = StateNo = 630
trigger3 = Movecontact
trigger4 = StateNo = 610
trigger4 = Movecontact
trigger4 = Var(3) = 1
trigger5 = StateNo = 640
trigger5 = Movecontact
trigger5 = Var(3) = 1


