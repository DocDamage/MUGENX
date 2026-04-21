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
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;

[Command] 
name = "AquaSpread"
command = F, DF, D, a+b

[Command]
name = "AquaSpread"
command = F, DF, D, b+c

[Command]
name = "WaterJail"
command = D, DB, B, x+y

[Command]
name = "WaterJail"
command = D, DB, B, y+z

[Command]
name = "SeaRage"
command = $B, $D, $F, x+y

[Command]
name = "SeaRage"
command = $B, $D, $F, y+z

[Command]
name = "DarkForce"
command = z+c

[Command]
name = "DirectScissors"
command = ~D, D, x+y

[Command]
name = "DirectScissors"
command = ~D, D, y+z

[Command]
name = "DirectScissors"
command = ~D, D, x+z

;-| Special Motions |------------------------------------------------------
[Command]
name = "ChargeX"
command = ~60$B, F, x

[Command]
name = "ChargeY"
command = ~60$B, F, y

[Command] 
name = "ChargeZ"
command = ~60$B, F, z

[Command]
name = "PoisonA"
command = ~60$B, F, a

[Command]
name = "PoisonB"
command = ~60$B, F, b

[Command]
name = "PoisonC"
command = ~60$B, F, c

[Command]
name = "FtoDP"
command = ~F, DF, D, DB, B, x

[Command]
name = "FtoDP"
command = ~F, DF, D, DB, B, y

[Command]
name = "FtoDP"
command = ~F, DF, D, DB, B, z

[Command]
name = "ESFtoDP"
command = ~F, DF, D, DB, B, x+y

[Command]
name = "ESFtoDP"
command = ~F, DF, D, DB, B, y+z

[Command]
name = "ESFtoDP"
command = ~F, DF, D, DB, B, x+z

[Command]
name = "FtoDK"
command = ~F, DF, D, DB, B, a

[Command]
name = "FtoDK"
command = ~F, DF, D, DB, B, b

[Command]
name = "FtoDK"
command = ~F, DF, D, DB, B, c

[Command]
name = "ESFtoDK"
command = ~F, DF, D, DB, B, a+b

[Command]
name = "ESFtoDK"
command = ~F, DF, D, DB, B, b+c

[Command]
name = "ESFtoDK"
command = ~F, DF, D, DB, B, a+c

[Command]
name = "DP_a"
command = ~F, D, DF, F, a

[Command]
name = "DP_b"
command = ~F, D, DF, F, b

[Command]
name = "DP_c"
command = ~F, D, DF, F, c

[Command]
name = "Release_a"
command = ~a

[Command]
name = "Release_b"
command = ~b

[Command]
name = "Release_c"
command = ~c

[Command]
name = "Pursuit"
command = $U, x

[Command]
name = "Pursuit"
command = $U, y

[Command]
name = "Pursuit"
command = $U, z

[Command]
name = "ESPursuit"
command = $U, x+y

[Command]
name = "ESPursuit"
command = $U, y+z

[Command]
name = "ESPursuit"
command = $U, x+z

;-| ES Specials |----------------------------------------------------------

[Command]
name = "ESSonic"
command = ~60$B, F, y+z

[Command]
name = "ESSonic"
command = ~60$B, F, x+y

[Command]
name = "ESTrick"
command = ~F, D, DF, F, a+b

[Command]
name = "ESTrick"
command = ~F, D, DF, F, b+c

[Command]
name = "HopBackTrick"
command = a+b

[Command]
name = "HopBackTrick"
command = b+c

[Command]
name = "ESPoison"
command = ~60$B, F, a+b

[Command]
name = "ESPoison"
command = ~60$B, F, b+c

;-| Hold Buttons |---------------------------------------------------------
[Command]
name = "HoldY"
command = /y

[Command]
name = "HoldZ"
command = /z

[Command]
name = "HoldX"
command = /x

[Command]
name = "HoldC"
command = /c

[Command]
name = "HoldB"
command = /b

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
v = 11
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
v = 11
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
v = 11
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
v = 11
value = 1

;===========================================================================
; AI Commands

; Use Throws
[State -1, Special Throws]
type = ChangeState
value = ifelse(Random <= 499, 910, 950)
triggerall = var(11)
triggerall = StateType = S || StateType = C
triggerall = var(5) = 0
trigger1 = ctrl
trigger1 = P2BodyDist X <= 5
trigger1 = P2MoveType != H
trigger1 = Random <= 90

[State -1, ES Special Throws]
type = ChangeState
value = ifelse(Random <= 499, 941, 1060)
triggerall = var(11)
triggerall = Power >= 1000
triggerall = StateType = S || StateType = C
triggerall = var(5) = 0
trigger1 = ctrl
trigger1 = P2BodyDist X <= 5
trigger1 = P2MoveType != H
trigger1 = Random <= 40

[State -1, Air Throw]
type = ChangeState
value = 1030
triggerall = var(11)
triggerall = StateType = A
triggerall = var(5) = 0
trigger1 = ctrl
trigger1 = P2BodyDist X <= 5
trigger1 = P2BodyDist Y = [-20,20]
trigger1 = Random <= 300

[State -1, Ground Throw AI]
type = ChangeState
value = 800
triggerall = var(11)
triggerall = StateType = S
triggerall = var(5) = 0
trigger1 = ctrl
trigger1 = P2BodyDist X <= 5
trigger1 = P2StateType = A || P2StateType = C
trigger1 = Random <= 300

; Initiate Combos
[State -1, Initiate with high attack]
type = ChangeState
value = 200
triggerall = var(11)
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = P2BodyDist X <= 60
trigger1 = P2StateType = S || P2StateType = C
trigger1 = Random <= 50

[State -1, Initiate with low attack]
type = ChangeState
value = 430
triggerall = var(11)
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = P2BodyDist X <= 65
trigger1 = P2StateType = S
trigger1 = Random <= 40

[State -1, Second Hit]
type = ChangeState
value = ifelse(Random <= 499, 430, 230)
triggerall = var(11)
trigger1 = StateNo = 200
trigger1 = MoveHit

[State -1, Third Hit (or second)]
type = ChangeState
value = ifelse(Random <= 499, 210, 410)
triggerall = var(11)
trigger1 = StateNo = 430 || StateNo = 230
trigger1 = MoveHit
trigger1 = P2BodyDist X <= 90

[State -1, Fourth Hit]
type = ChangeState
value = ifelse(Random <= 499, 240, 440)
triggerall = var(11)
triggerall = P2BodyDist X <= 90
trigger1 = StateNo = 210 || StateNo = 410
trigger1 = MoveHit

[State -1, Fifth Hit]
type = ChangeState
value = ifelse(Random <= 499, 220, ifelse(Random <= 499, 450, 420))
triggerall = var(11)
triggerall = P2BodyDist X <= 90
trigger1 = StateNo = 240 || StateNo = 440
trigger1 = MoveHit

[State -1, Long-Range Final Hit]
type = ChangeState
value = 250
triggerall = var(11)
triggerall = P2BodyDist X > 90
trigger1 = StateNo = 430 || StateNo = 230
trigger1 = MoveHit
trigger2 = StateNo = 210 || StateNo = 410
trigger2 = MoveHit
trigger3 = StateNo = 240 || StateNo = 440
trigger3 = MoveHit
trigger4 = StateNo = 200 || StateNo = 430
trigger4 = MoveHit

; Other Attacks
[State -1, Poke]
type = ChangeState
value = 250
triggerall = var(11)
triggerall = P2BodyDist X = [10,105]
trigger1 = ctrl
trigger1 = StateType = S || StateType = C
trigger1 = EnemyNear, ctrl = 0
trigger1 = P2StateType != L
trigger1 = Random <= 10

[State -1, Anti-Air]
type = ChangeState
value = 220
triggerall = var(11)
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = P2StateType = A
trigger1 = P2BodyDist X <= 95
trigger1 = EnemyNear, Vel X >= 0
trigger1 = Random <= 20

[State -1, Drill Kick]
type = ChangeState
value = 660
triggerall = var(11)
triggerall = StateType = A
trigger1 = ctrl
trigger1 = P2BodyDist X >= 30
trigger1 = P2BodyDist Y > 0
trigger1 = Random <= 10

; Use Specials
[State -1, Use Sonic Wave]
type = ChangeState
value = ifelse(Power >= 1000 && Random <= 100, 903, 902)
triggerall = var(11)
triggerall = var(12) >= 60
trigger1 = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = P2StateType != L
trigger1 = P2BodyDist X <= 140
trigger1 = Random <= 300

[State -1, Use Poison Breath]
type = ChangeState
value = ifelse(Power >= 1000 && Random <= 100, 895, var(13))
triggerall = var(11)
triggerall = var(12) >= 60
trigger1 = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = P2StateType != L
trigger1 = P2BodyDist X > 30
trigger1 = Random <= 300

[State -1, Use Trick Fish]
type = ChangeState
value = ifelse(Power >= 1000 && Random <= 100, 1026, 1010)
triggerall = var(11)
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = P2StateType = A
trigger1 = P2BodyDist X <= 80
trigger1 = Random <= 5

; Use EX Moves
[State -1, Use Water Jail]
type = ChangeState
value = 2200
triggerall = var(11)
triggerall = StateType = S || StateType = C
triggerall = Power >= 1000
triggerall = NumHelper(93) = 0
trigger1 = ctrl
trigger1 = P2BodyDist X >= 75
trigger1 = Random <= 5

[State -1, Stay Behind Bubble]
type = ChangeState
value = 105
triggerall = var(11)
triggerall = StateType = S || StateType = C
triggerall = P2MoveType != H
trigger1 = ctrl
trigger1 = NumHelper(93) > 0
trigger1 = Helper(93), StateNo != 2230
trigger1 = Helper(93), ParentDist X > 0

[State -1, Use Aqua Spread]
type = ChangeState
value = 2000
triggerall = var(11)
triggerall = StateType = S || StateType = C
triggerall = Power >= 1000
triggerall = NumHelper(92) = 0
trigger1 = ctrl
trigger1 = NumHelper(93) > 0
trigger1 = Helper(93), StateNo = 2230
trigger2 = EnemyNear, ctrl = 0
trigger2 = P2StateType != L
trigger2 = ctrl
trigger2 = P2BodyDist X >= 30
trigger2 = Random <= 8

[State -1, Use Sea Rage]
type = ChangeState
value = 2300
triggerall = var(11)
triggerall = StateType = S || StateType = C
triggerall = Power >= 1000
triggerall = NumHelper(93) = 0 && NumHelper(92) = 0
trigger1 = ctrl
trigger1 = P2BodyDist X >= 60
trigger1 = (Random + (4 * EnemyNear, ctrl)) <= 8

; Pursuit AI
[State -1, Pursuit AI]
type = ChangeState
value = 1080
triggerall = var(11)
trigger1 = P2StateNo = 5110
trigger1 = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = Random <= 400

;-----------------
; Defense - related
[State -1, Pushblock]
type = ChangeState
value = 1150
triggerall = var(11)
triggerall = StateNo = 150 || StateNo = 152
trigger1 = Random <= 12

[State -1, Guard Cancel]
type = ChangeState
value = 1130
triggerall = var(11)
triggerall = StateNo = 150 || StateNo = 152
trigger1 = Random <= 15

[State -1, Roll]
type = ChangeState
value = 1120
triggerall = var(11)
triggerall = StateNo = 5120
triggerall = time = 1
trigger1 = BackEdgeBodyDist <= 30
trigger2 = FrontEdgeBodyDist <= 30

;===========================================================================
; Put specials and supers here

;---------------------------------------------------------------------------
; Direct Scissors
[State -1, Direct Scissors]
type = ChangeState
value = 2340
triggerall = !var(11)
triggerall = command = "DirectScissors"
triggerall = Power >= 3000
trigger1 = ctrl
trigger1 = StateType = S || StateType = C

;---------------------------------------------------------------------------
; ES Cataract Cry
[State -1, ES Cataract Cry]
type = ChangeState
value = 941
triggerall = command = "ESFtoDP"
triggerall = Power >= 1000
triggerall = StateType = S || StateType = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Aqua Spread (Super)
[State -1, Aqua Spread]
type = ChangeState
value = 2000
triggerall = !var(11)
triggerall = command = "AquaSpread"
triggerall = power >= 1000
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger1 = NumHelper(92) = 0

;---------------------------------------------------------------------------
; Water Jail (Super)
[State -1, Water Jail]
type = ChangeState
value = 2200
triggerall = !var(11)
triggerall = command = "WaterJail"
triggerall = power >= 1000
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger1 = NumHelper(93) = 0

;---------------------------------------------------------------------------
; Sea Rage (Super)
[State -1, Sea Rage]
type = ChangeState
value = 2300
triggerall = !var(11)
triggerall = command = "SeaRage"
triggerall = power >= 1000
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger1 = NumHelper = 0

;----------------------------------------------------------------------------
; Dark Force
[State -1, Dark Force]
type = ChangeState
value = 3000
triggerall = command = "DarkForce"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl

;----------------------------------------------------------------------------
; ES Poison Breath
[State -1, Poison Breath ES]
type = ChangeState
value = 895
triggerall = !var(11)
triggerall = command = "ESPoison"
triggerall = p2stateno != 877
trigger1 = NumProjID(10) = 0
trigger1 = ctrl
trigger1 = statetype = S
trigger1 = power >= 1000
trigger2 = StateNo = [200,210]
trigger2 = MoveContact
trigger3 = StateNo = [230,240]
trigger3 = MoveContact
trigger4 = StateNo = [400,410]
trigger4 = MoveContact
trigger5 = StateNo = [430,440]
trigger5 = MoveContact

;---------------------------------------------------------------------------
; Poison Breath (LK)
[State -1, Poison Breath LK]
type = ChangeState
value = 860
triggerall = !var(11)
triggerall = command = "PoisonA"
triggerall = p2stateno != 877
trigger1 = NumProjID(10) = 0
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = StateNo = [200,210]
trigger2 = MoveContact
trigger3 = StateNo = [230,240]
trigger3 = MoveContact
trigger4 = StateNo = [400,410]
trigger4 = MoveContact
trigger5 = StateNo = [430,440]
trigger5 = MoveContact

;---------------------------------------------------------------------------
; Poison Breath (MK)
[State -1, Poison Breath MK]
type = ChangeState
value = 880
triggerall = !var(11)
triggerall = command = "PoisonB"
triggerall = p2stateno != 877
trigger1 = NumProjID(10) = 0
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = StateNo = [200,210]
trigger2 = MoveContact
trigger3 = StateNo = [230,240]
trigger3 = MoveContact
trigger4 = StateNo = [400,410]
trigger4 = MoveContact
trigger5 = StateNo = [430,440]
trigger5 = MoveContact

;---------------------------------------------------------------------------
; Poison Breath (HK)
[State -1, Poison Breath HK]
type = ChangeState
value = 890
triggerall = !var(11)
triggerall = command = "PoisonC"
triggerall = p2stateno != 877
trigger1 = NumProjID(10) = 0
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = StateNo = [200,210]
trigger2 = MoveContact
trigger3 = StateNo = [230,240]
trigger3 = MoveContact
trigger4 = StateNo = [400,410]
trigger4 = MoveContact
trigger5 = StateNo = [430,440]
trigger5 = MoveContact

;---------------------------------------------------------------------------
; ES Sonic Wave
[State -1, ES Sonic Wave]
type = ChangeState
value = 903
triggerall = !var(11)
triggerall = command = "ESSonic"
triggerall = p2stateno != 907
trigger1 = NumProjID(20) = 0
trigger1 = ctrl
trigger1 = Statetype = S
trigger1 = Power >= 1000
trigger2 = StateNo = [200,210]
trigger2 = MoveContact
trigger3 = StateNo = [230,240]
trigger3 = MoveContact
trigger4 = StateNo = [400,410]
trigger4 = MoveContact
trigger5 = StateNo = [430,440]
trigger5 = MoveContact

;---------------------------------------------------------------------------
; Sonic Wave Light
[State -1, Sonic Wave Light]
type = ChangeState
value = 900
triggerall = !var(11)
triggerall = command = "ChargeX"
triggerall = p2stateno != 907
trigger1 = NumProjID(20) = 0
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = StateNo = [200,210]
trigger2 = MoveContact
trigger3 = StateNo = [230,240]
trigger3 = MoveContact
trigger4 = StateNo = [400,410]
trigger4 = MoveContact
trigger5 = StateNo = [430,440]
trigger5 = MoveContact

;---------------------------------------------------------------------------
; Sonic Wave Medium
[State -1, Sonic Wave Med]
type = ChangeState
value = 901
triggerall = !var(11)
triggerall = command = "ChargeY"
triggerall = p2stateno != 907
trigger1 = NumProjID(20) = 0
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = StateNo = [200,210]
trigger2 = MoveContact
trigger3 = StateNo = [230,240]
trigger3 = MoveContact
trigger4 = StateNo = [400,410]
trigger4 = MoveContact
trigger5 = StateNo = [430,440]
trigger5 = MoveContact

;---------------------------------------------------------------------------
; Sonic Wave Hard
[State -1, Sonic Wave Hard]
type = ChangeState
value = 902
triggerall = !var(11)
triggerall = command = "ChargeZ"
triggerall = p2stateno != 907
trigger1 = NumProjID(20) = 0
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = StateNo = [200,210]
trigger2 = MoveContact
trigger3 = StateNo = [230,240]
trigger3 = MoveContact
trigger4 = StateNo = [400,410]
trigger4 = MoveContact
trigger5 = StateNo = [430,440]
trigger5 = MoveContact

;---------------------------------------------------------------------------
; Cataract Cry
[State -1, Cataract Cry]
type = ChangeState
value = 910
triggerall = command = "FtoDP"
triggerall = Power >= 1000
triggerall = StateType = S || StateType = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; ES Gem's Anger
[State -1, ES Gem`s Anger]
type = ChangeState
value = 1060
triggerall = command = "ESFtoDK"
triggerall = StateType = S || StateType = C
triggerall = Power >= 1000
trigger1 = ctrl

;---------------------------------------------------------------------------
; Gem's Anger
[State -1, Gem`s Anger]
type = ChangeState
value = 950
triggerall = command = "FtoDK"
triggerall = StateType = S || StateType = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; ES Trick Fish
[State -1, Trick Fish ES]
type = ChangeState
value = 1026
triggerall = !var(11)
triggerall = command = "ESTrick"
trigger1 = ctrl
trigger1 = statetype = S
trigger1 = power >= 1000
trigger2 = StateNo = [200,210]
trigger2 = MoveContact
trigger3 = StateNo = [230,240]
trigger3 = MoveContact
trigger4 = StateNo = [400,410]
trigger4 = MoveContact
trigger5 = StateNo = [430,440]
trigger5 = MoveContact

;---------------------------------------------------------------------------
; Trick Fish (DP motion), light
[State -1, Trick Fish A]
type = ChangeState
value = 1000
triggerall = !var(11)
triggerall = command = "DP_a"
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = StateNo = [200,210]
trigger2 = MoveContact
trigger3 = StateNo = [230,240]
trigger3 = MoveContact
trigger4 = StateNo = [400,410]
trigger4 = MoveContact
trigger5 = StateNo = [430,440]
trigger5 = MoveContact

;---------------------------------------------------------------------------
; Trick Fish (DP motion), med
[State -1, Trick Fish A]
type = ChangeState
value = 1010
triggerall = !var(11)
triggerall = command = "DP_b"
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = StateNo = [200,210]
trigger2 = MoveContact
trigger3 = StateNo = [230,240]
trigger3 = MoveContact
trigger4 = StateNo = [400,410]
trigger4 = MoveContact
trigger5 = StateNo = [430,440]
trigger5 = MoveContact

;---------------------------------------------------------------------------
; Trick Fish (DP motion), hard
[State -1, Trick Fish A]
type = ChangeState
value = 1020
triggerall = !var(11)
triggerall = command = "DP_c"
trigger1 = ctrl
trigger1 = statetype = S
trigger2 = StateNo = [200,210]
trigger2 = MoveContact
trigger3 = StateNo = [230,240]
trigger3 = MoveContact
trigger4 = StateNo = [400,410]
trigger4 = MoveContact
trigger5 = StateNo = [430,440]
trigger5 = MoveContact

;---------------------------------------------------------------------------
; Guard Cancel
[State -1, Guard Cancel]
type = ChangeState
triggerall = command = "DP_a" || command = "DP_b" || command = "DP_c"
trigger1 = StateNo = 150 || StateNo = 152 
trigger2 = StateNo = 151 || StateNo = 153
trigger2 = time < 10
value = 1130

;---------------------------------------------------------------------------
; Pursuit Attack
[State -1, Pursuit Attack]
type = ChangeState
value = 1080
triggerall = command = "Pursuit"
triggerall = P2StateNo = 5110
trigger1 = StateType = S
trigger1 = ctrl
trigger2 = StateNo = 40

; ES Pursuit Attack
[State -1, ES Pursuit Attack]
type = ChangeState
value = 1080
triggerall = command = "ESPursuit"
triggerall = P2StateNo = 5110
triggerall = Power >= 1000
trigger1 = ctrl
trigger1 = StateType = S
trigger2 = StateNo = 40

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Basic Throw
[State -1, Basic Throw]
type = ChangeState
value = 800
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1, Back Throw]
type = ChangeState
value = 801
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdback"
trigger1 = p2bodydist X < 8
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
; Air Throw
[State -1, Basic Throw]
type = ChangeState
value = 1030
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
; Drill Kick
[State -1, Drill Kick]
type = ChangeState
value = 660
triggerall = statetype = A
triggerall = command = "holddown"
triggerall = ctrl
trigger1 = command = "c"

;---------------------------------------------------------------------------
; Dashing HP
;[State -1, Dash HP]
;type = ChangeState
;value = 670
;triggerall = stateno = 100
;triggerall = ctrl
;trigger1 = command = "z"

;---------------------------------------------------------------------------
; Roll-Getup Back
[State -1, Getup Back]
type = ChangeState
value = 1120
triggerall = StateNo = 5120
trigger1 = Command = "holdback"
trigger1 = time = 1

;---------------------------------------------------------------------------
; Roll-Getup Fwd
[State -1, Getup Forward]
type = ChangeState
value = 1120
triggerall = StateNo = 5120
trigger1 = Command = "holdfwd"
trigger1 = time = 1

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !var(11)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = AnimElemTime(3) > 1

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = !var(11)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact

;---------------------------------------------------------------------------
;Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = !var(11)
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 440
trigger9 = movecontact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !var(11)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact

;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = !var(11)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact 
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact

;---------------------------------------------------------------------------
;Standing Hard Kick
[State -1, Standing Hard Kick]
type = ChangeState
value = 250
triggerall = !var(11)
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 200
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 440
trigger9 = movecontact
 
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
triggerall = !var(11)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger2 = AnimElemTime(3) > 1

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = !var(11)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 430
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact

;---------------------------------------------------------------------------
;Crouching Hard Punch
[State -1, Crouching Hard Punch]
type = ChangeState
value = 420
triggerall = !var(11)
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 410
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 430
trigger4 = movecontact
trigger5 = stateno = 440
trigger5 = movecontact
trigger6 = stateno = 200
trigger6 = movecontact
trigger7 = stateno = 210
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !var(11)
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = movecontact
trigger2 = AnimElemTime(3) > 1
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = !var(11)
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 410
trigger4 = movecontact
trigger5 = stateno = 200
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact

;---------------------------------------------------------------------------
;Crouching Hard Kick
[State -1, Crouching Hard Kick]
type = ChangeState
value = 450
triggerall = !var(11)
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 440
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 430
trigger4 = movecontact
trigger5 = stateno = 440
trigger5 = movecontact
trigger6 = stateno = 200
trigger6 = movecontact
trigger7 = stateno = 210
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = var(3) != 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = var(3) != 3
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movehit
trigger3 = stateno = 630
trigger3 = movehit

;---------------------------------------------------------------------------
;Jump Hard Punch
[State -1, Jump Hard Punch]
type = ChangeState
value = 620
triggerall = command = "z"
triggerall = var(3) != 5
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = movehit
trigger3 = stateno = 640
trigger3 = movehit
trigger4 = stateno = 600
trigger4 = movehit

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = var(3) != 2
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movehit

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = var(3) != 4
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = movehit
trigger3 = stateno = 630
trigger3 = movehit

;---------------------------------------------------------------------------
;Jump Hard Kick
[State -1, Jump Hard Kick]
type = ChangeState
value = 650
triggerall = command = "c"
triggerall = var(3) != 6
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 640
trigger2 = movehit
trigger3 = stateno = 630
trigger3 = movehit
