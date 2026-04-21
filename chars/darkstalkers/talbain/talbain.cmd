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

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

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
name = "DragonCannon"
command = $B, $D, $F, a+b

[Command]
name = "DragonCannon"
command = $B, $D, $F, a+c

[Command]
name = "DragonCannon"
command = $B, $D, $F, b+c

[Command]
name = "DragonCannon"
command = $B, $D, $F, a+b+c

[Command]
name = "MomentSlice"
command = x, y, $F, a, b
time = 45

[Command]
name = "DarkForce"
command = x+a

[Command]
name = "DarkForce"
command = y+b

[Command]
name = "DarkForce"
command = z+c

;-| Special Motions |------------------------------------------------------

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

[Command]
name = "WildCircular"
command = $F, $D, $B, c

[Command]
name = "WildCircular"
command = $F, $D, $B, b

[Command]
name = "WildCircular"
command = $F, $D, $B, a

[Command]
name = "ESWildCircular"
command = $F, $D, $B, a+b

[Command]
name = "ESWildCircular"
command = $F, $D, $B, b+c

[Command]
name = "ESWildCircular"
command = $F, $D, $B, a+c

[Command]
name = "HorizBeastCannon"
command = ~D, DF, F, x

[Command]
name = "HorizBeastCannon"
command = ~D, DF, F, y

[Command]
name = "HorizBeastCannon"
command = ~D, DF, F, z

[Command]
name = "DiagUpBeastCannon"
command = ~F, D, DF, F, x

[Command]
name = "DiagUpBeastCannon"
command = ~F, D, DF, F, y

[Command]
name = "DiagUpBeastCannon"
command = ~F, D, DF, F, z

[Command]
name = "RushFwd"
command = /F, x

[Command]
name = "RushFwd"
command = /F, y

[Command]
name = "RushFwd"
command = /F, z

[Command]
name = "RushUpFwd"
command = /UF, x

[Command]
name = "RushUpFwd"
command = /UF, y

[Command]
name = "RushUpFwd"
command = /UF, z

[Command]
name = "RushDnFwd"
command = /DF, x

[Command]
name = "RushDnFwd"
command = /DF, y

[Command]
name = "RushDnFwd"
command = /DF, z

[Command]
name = "RushUp"
command = /U, x

[Command]
name = "RushUp"
command = /U, y

[Command]
name = "RushUp"
command = /U, z

[Command]
name = "RushDn"
command = /D, x

[Command]
name = "RushDn"
command = /D, y

[Command]
name = "RushDn"
command = /D, z

[Command]
name = "RushBck"
command = /B, x

[Command]
name = "RushBck"
command = /B, y

[Command]
name = "RushBck"
command = /B, z

[Command]
name = "RushUpBck"
command = /UB, x

[Command]
name = "RushUpBck"
command = /UB, y

[Command]
name = "RushUpBck"
command = /UB, z

[Command]
name = "RushDnBck"
command = /DB, x

[Command]
name = "RushDnBck"
command = /DB, y

[Command]
name = "RushDnBck"
command = /DB, z

[Command]
name = "ESHorizBeastCannon"
command = ~D, DF, F, x+y

[Command]
name = "ESHorizBeastCannon"
command = ~D, DF, F, y+z

[Command]
name = "ESHorizBeastCannon"
command = ~D, DF, F, x+z

[Command]
name = "ESDiagBeastCannon"
command = ~F, D, DF, F, x+y

[Command]
name = "ESDiagBeastCannon"
command = ~F, D, DF, F, y+z

[Command]
name = "ESDiagBeastCannon"
command = ~F, D, DF, F, x+z

[Command]
name = "ClimbLaserLK"
command = ~D, $U, a
buffer.time = 15

[Command]
name = "ClimbLaserMK"
command = ~D, $U, b
buffer.time = 15

[Command]
name = "ClimbLaserHK"
command = ~D, $U, c
buffer.time = 15

[Command]
name = "ClimbLaserES"
command = ~D, $U, a+b
buffer.time = 15

[Command]
name = "ClimbLaserES"
command = ~D, $U, b+c
buffer.time = 15

[Command]
name = "ClimbLaserES"
command = ~D, $U, a+c
buffer.time = 15

[Command]
name = "MillionFlickerX"
command = ~D, DB, B, x

[Command]
name = "MillionFlickerY"
command = ~D, DB, B, y

[Command]
name = "MillionFlickerZ"
command = ~D, DB, B, z

[Command]
name = "ESMillionFlicker"
command = ~D, DB, B, x+y

[Command]
name = "ESMillionFlicker"
command = ~D, DB, B, y+z

[Command]
name = "ESMillionFlicker"
command = ~D, DB, B, x+z

[Command]
name = "MillionFlash"
command = ~B, D, DB, B, x

[Command]
name = "MillionFlash"
command = ~B, D, DB, B, y

[Command]
name = "MillionFlash"
command = ~B, D, DB, B, z

[Command]
name = "ESMillionFlash"
command = ~B, D, DB, B, x+y

[Command]
name = "ESMillionFlash"
command = ~B, D, DB, B, y+z

[Command]
name = "ESMillionFlash"
command = ~B, D, DB, B, x+z

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
name = "dwn_kkk"
command = D, a+b+c

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
name = "holdx"
command = /x

[Command]
name = "holdy"
command = /y

[Command]
name = "holdz"
command = /z

[Command]
name = "holda"
command = /a

[Command]
name = "holdb"
command = /b

[Command]
name = "holdc"
command = /c

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
v = 20
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
v = 20
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
v = 20
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
v = 20
value = 1

;===========================================================================
; AI Stuffs

[State -1, Moment Slice AI]
type = ChangeState
value = 2030
triggerall = var(20) > 0
triggerall = random <= 25
triggerall = power >= 1000
triggerall = StateType = S || StateType = C
trigger1 = P2BodyDist X <= 70
trigger1 = ctrl
trigger1 = var(14) = 0
trigger1 = P2StateType = S || P2StateType = C

[State -1, Dragon Cannon AI]
type = ChangeState
value = 2000
triggerall = var(20) > 0
triggerall = random <= 15
triggerall = power >= 1000
triggerall = StateType = S || StateType = C
trigger1 = P2BodyDist X >= 100
trigger1 = ctrl
trigger1 = var(14) = 0

[State -1, Dark Force AI]
type = ChangeState
value = 2100
triggerall = var(20) > 0
triggerall = random <= 5
triggerall = power >= 1000
triggerall = StateType = S || StateType = C
triggerall = var(14) = 0
trigger1 = ctrl

; Juggle Opponent with Beast Cannon
[State -1, Juggle Fwd]
type = VarSet
triggerall = var(20) > 0
triggerall = StateNo = [1000,1140]
triggerall = time > (10 - (var(0) * 5))
triggerall = var(7) > 0
trigger1 = P2BodyDist X = [10,90]
trigger1 = P2BodyDist Y = [-20,40]
v = 8
value = 4

[State -1, Juggle UpFwd]
type = VarSet
triggerall = var(20) > 0
triggerall = StateNo = [1000,1140]
triggerall = time > (10 - (var(0) * 5))
triggerall = var(7) > 0
trigger1 = P2BodyDist X = [10,90]
trigger1 = P2BodyDist Y = [-60,10]
v = 8
value = 3

[State -1, Juggle Up]
type = VarSet
triggerall = var(20) > 0
triggerall = StateNo = [1000,1140]
triggerall = time > (10 - (var(0) * 5))
triggerall = var(7) > 0
trigger1 = P2BodyDist X = [-20,20]
trigger1 = P2BodyDist Y = [-70,5]
v = 8
value = 1

[State -1, Juggle UpBck]
type = VarSet
triggerall = var(20) > 0
triggerall = StateNo = [1000,1140]
triggerall = time > (10 - (var(0) * 5))
triggerall = var(7) > 0
trigger1 = P2BodyDist X = [-90,10]
trigger1 = P2BodyDist Y = [-60,10]
v = 8
value = -1

[State -1, Juggle Bck]
type = VarSet
triggerall = var(20) > 0
triggerall = StateNo = [1000,1140]
triggerall = time > (10 - (var(0) * 5))
triggerall = var(7) > 0
trigger1 = P2BodyDist X = [-90,10]
trigger1 = P2BodyDist Y = [-20,40]
v = 8
value = -2

[State -1, Juggle DnBck]
type = VarSet
triggerall = var(20) > 0
triggerall = StateNo = [1000,1140]
triggerall = time > (10 - (var(0) * 5))
triggerall = var(7) > 0
triggerall = Pos Y != 0
trigger1 = P2BodyDist X = [-90,10]
trigger1 = P2BodyDist Y = [-5,40]
trigger1 = PlayerID(var(21)), Vel Y = [-2,2]
v = 8 
value = -3

[State -1, Juggle Down]
type = VarSet
triggerall = var(20) > 0
triggerall = StateNo = [1000,1140]
triggerall = time > (10 - (var(0) * 5))
triggerall = var(7) > 0
triggerall = Pos Y != 0
trigger1 = P2BodyDist X = [-20,20]
trigger1 = P2BodyDist Y = [-40,5]
v = 8
value = 2

[State -1, Juggle DownFwd]
type = VarSet
triggerall = var(20) > 0
triggerall = StateNo = [1000,1140]
triggerall = time > (10 - (var(0) * 5))
triggerall = var(7) > 0
triggerall = Pos Y != 0
trigger1 = P2BodyDist X = [10,90]
trigger1 = P2BodyDist Y = [-5,50]
v = 8
value = 5

; Ground Combo
[State -1, Attack]
type = ChangeState
value = 200
triggerall = var(20) > 0
triggerall = StateType = S
trigger1 = ctrl
trigger1 = random <= 100
trigger1 = P2BodyDist X <= 60

[State -1, Combo hit 2]
type = ChangeState
value = ifelse(P2BodyDist X <= 20, 235, 230)
triggerall = var(20) > 0
trigger1 = StateNo = 200
trigger1 = MoveHit
trigger1 = var(22) <= 800

[State -1, QuickDash A]
type = ChangeState
value = 660
triggerall = var(20) > 0
trigger1 = StateNo = 200
trigger1 = MoveContact
trigger1 = var(22) > 800

[State -1, Combo hit 3]
type = ChangeState
value = ifelse(P2BodyDist X <= 20, 215, 210)
triggerall = var(20) > 0
trigger1 = StateNo = 235 || StateNo = 230
trigger1 = MoveHit
trigger1 = var(22) <= 800

[State -1, QuickDash B]
type = ChangeState
value = 660
triggerall = var(20) > 0
trigger1 = StateNo = 235 || StateNo = 230
trigger1 = MoveContact
trigger1 = var(22) > 800

[State -1, Combo hit 4]
type = ChangeState
value = 240
triggerall = var(20) > 0
trigger1 = StateNo = 215 || StateNo = 210
trigger1 = MoveHit
trigger1 = var(22) = [0,200]
trigger2 = var(14) = 1
trigger2 = StateNo = 215 || StateNo = 210

[State -1, Beast Cannon A]
type = ChangeState
value = ifelse((Power >= 1000) && (random <= 305), 1170, 1000)
triggerall = var(20) > 0
trigger1 = StateNo = 215 || StateNo = 210
trigger1 = MoveHit
trigger1 = var(22) = [201,400]

[State -1, Million Flicker A]
type = ChangeState
value = ifelse((Power >= 1000) && (random <= 305), 1270, 1250)
triggerall = var(20) > 0
trigger1 = StateNo = 215 || StateNo = 210
trigger1 = MoveHit
trigger1 = var(22) = [401,600] 

[State -1, Million Flash A]
type = ChangeState
value = ifelse((Power >= 1000) && (random <= 250), 1310, 1290)
triggerall = var(20) > 0
trigger1 = StateNo = 215 || StateNo = 210
trigger1 = MoveHit
trigger1 = var(22) = [601,800]

[State -1, QuickDash B]
type = ChangeState
value = 660
triggerall = var(20) > 0
trigger1 = StateNo = 215 || StateNo = 210
trigger1 = MoveContact
trigger1 = var(22) = [801,1000]

[State -1, Combo Hit 4]
type = ChangeState
value = ifelse(P2BodyDist X < 20, 225, 220)
triggerall = var(20) > 0
trigger1 = StateNo = 240
trigger1 = MoveHit
trigger1 = var(22) = [0,300]

[State -1, Fwd+Slash]
type = ChangeState
value = 226
triggerall = var(20) > 0
trigger1 = StateNo = 240
trigger1 = MoveHit
trigger1 = var(22) = [301,600]
trigger2 = var(14) = 1
trigger2 = StateNo = 240

[State -1, Beast Cannon B]
type = ChangeState
value = ifelse((Power >= 1000) && (random <= 305), 1170, 1000)
triggerall = var(20) > 0
trigger1 = StateNo = 240
trigger1 = MoveHit
trigger1 = var(22) = [601,700]

[State -1, Million Flicker B]
type = ChangeState
value = ifelse((Power >= 1000) && (random <= 305), 1270, 1250)
triggerall = var(20) > 0
trigger1 = StateNo = 240
trigger1 = MoveHit
trigger1 = var(22) = [701, 800]

[State -1, Million Flash B]
type = ChangeState
value = ifelse((Power >= 1000) && (random <= 250), 1310, 1290)
triggerall = var(20) > 0
trigger1 = StateNo = 240
trigger1 = MoveHit
trigger1 = var(22) = [801,900]

[State -1, QuickDash C]
type = ChangeState
value = 660
triggerall = var(20) > 0
trigger1 = StateNo = 240
trigger1 = MoveContact
trigger1 = var(22) = [901,1000]

[State -1, Combo Hit 5]
type = ChangeState
value = ifelse(P2BodyDist X < 20, 255, 250)
triggerall = var(20) > 0
trigger1 = StateNo = 225 || StateNo = 220
trigger1 = MoveHit

;----------------------------
; AI crouching combo
[State -1, Crouch Hit A]
type = ChangeState
value = 430
triggerall = var(20) > 0
trigger1 = StateNo = 400
trigger1 = MoveHit

[State -1, Crouch Hit B]
type = ChangeState
value = 410
triggerall = var(20) > 0 
trigger1 = StateNo = 430
trigger1 = MoveHit

[State -1, Crouch Hit C]
type = ChangeState
value = 440
triggerall = var(20) > 0
trigger1 = StateNo = 410
trigger1 = MoveHit
trigger1 = var(22) = [0,700]
trigger2 = var(14) = 1
trigger2 = StateNo = 410

[State -1, Climb Razor A]
type = ChangeState
value = 1200
triggerall = var(20) > 0
trigger1 = StateNo = 410
trigger1 = MoveHit
trigger1 = var(22) = [701,1000]

[State -1, Crouch Hit D]
type = ChangeState
value = 450
triggerall = var(20) > 0
trigger1 = StateNo = 440
trigger1 = MoveHit

;----------------------------
[State -1, Pursuit AI]
type = ChangeState
value = 750
triggerall = var(20) > 0
trigger1 = PlayerID(var(21)), StateNo = 5110
trigger1 = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = Random <= 400

;----------------------------
; Dash
[State -1, Dash fwd AI]
type = ChangeState
value = 100
triggerall = var(20) > 0
triggerall = StateType = S || StateType = C
triggerall = StateNo != 100
trigger1 = ctrl
trigger1 = P2BodyDist X >= 100
trigger1 = Random <= 150

;----------------------------
; Stop Projectiles?
[State -1, Stop Proj]
type = ChangeState
value = 1290
triggerall = var(20) > 0
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = PlayerID(var(21)), NumProj >= 1
trigger1 = P2BodyDist X >= 115
trigger1 = Random <= 600

;----------------------------
; Anti-air
[State -1, Anti-Air Low]
type = ChangeState
value = 1220
triggerall = var(20) > 0
triggerall = StateType = S || StateType = C
triggerall = PlayerID(var(21)), GetHitVar(chainid) != 2600
trigger1 = ctrl
trigger1 = PlayerID(var(21)), StateType = A
trigger1 = PlayerID(var(21)), Vel X >= 0
trigger1 = P2BodyDist X <= 30
trigger1 = Random <= 300

[State -1, Anti-Air ES]
type = ChangeState
value = 1230
triggerall = var(20) > 0
triggerall = StateType = S || StateType = C
triggerall = Power >= 1000
triggerall = PlayerID(var(21)), GetHitVar(chainid) != 2600
trigger1 = ctrl
trigger1 = PlayerID(var(21)), StateType = A
trigger1 = PlayerID(var(21)), Vel X >= 0
trigger1 = P2BodyDist X <= 30
trigger1 = Random <= 200

;--------------------------
; Beast Cannon
[State -1, Beast Cannon AI]
type = ChangeState
value = 1000
triggerall = var(20) > 0
triggerall = StateType = S || StateType = C
triggerall = var(14) = 0
trigger1 = ctrl
trigger1 = random <= 10

[State -1, Air Beast Cannon AI]
type = ChangeState
value = 1060
triggerall = var(20) > 0
triggerall = StateType = A
triggerall = var(14) = 0
trigger1 = ctrl
trigger1 = random <= 70
trigger1 = P2BodyDist X = [30,90]
trigger1 = P2BodyDist Y > 0

;--------------------------
; ES Million Flicker
[State -1, ES Million Flicker AI]
type = ChangeState
value = 1270
triggerall = var(20) > 0
triggerall = var(14) = 0
triggerall = StateType = S || StateType = C
triggerall = Power >= 1000
trigger1 = ctrl
trigger1 = P2BodyDist X = [0, 80]
trigger1 = P2StateType = S || P2StateType = C
trigger1 = FrontEdgeBodyDist < 80
trigger1 = Random < 100

;--------------------------
; Wild Circular
[State -1, Wild Circular AI]
type = ChangeState
value = ifelse((Random <= 300) && (Power >= 1000), 920, 860)
triggerall = var(20) > 0
triggerall = StateType = S || StateType = C
triggerall = var(14) = 0
trigger1 = ctrl
trigger1 = P2BodyDist X <= 5
trigger1 = PlayerID(var(21)), MoveType != H
trigger1 = Random <= 90

;--------------------------
; Air Throw
[State -1, Air Throw AI]
type = ChangeState
value = 830
triggerall = var(20) > 0
triggerall = StateType = A
triggerall = var(14) = 0
trigger1 = ctrl
trigger1 = P2BodyDist X <= 5
trigger1 = P2BodyDist Y = [-20,20]
trigger1 = Random <= 300

;--------------------------
; Ground Throw
[State -1, Ground Throw AI]
type = ChangeState
value = ifelse(random <= 499, 800, 890)
triggerall = var(20) > 0
triggerall = StateType = S
triggerall = var(14) = 0
trigger1 = ctrl
trigger1 = P2BodyDist X <= 5
trigger1 = PlayerID(var(21)), StateType = S
trigger1 = Random <= 300

;-----------------
; Defense - related
[State -1, Pushblock]
type = ChangeState
value = 760
triggerall = var(20) > 0
triggerall = StateNo = 150 || StateNo = 152
trigger1 = Random <= 17

[State -1, Guard Cancel]
type = ChangeState
value = 720
triggerall = var(20) > 0
triggerall = StateNo = 150 || StateNo = 152
trigger1 = Random <= 15

[State -1, Roll Fwd]
type = ChangeState
value = 710
triggerall = var(20) > 0
triggerall = StateNo = 5120
triggerall = time = 1
trigger1 = BackEdgeBodyDist <= 30

[State -1, Roll Back]
type = ChangeState
value = 700
triggerall = var(20) > 0
triggerall = StateNo = 5120
triggerall = time = 1
trigger1 = FrontEdgeBodyDist <= 30

;===========================================================================

;---------------------------------------------------------------------------
; Dark Force
[State -1, Dark Force]
type = ChangeState
value = 2100
triggerall = command = "DarkForce"
triggerall = StateType = S 
triggerall = Power >= 1000
triggerall = var(14) = 0
triggerall = var(20) = 0
trigger1 = ctrl


; Leave Dark Force
[State -1, Leave Dark Force Early]
type = ChangeState
value = 2130
triggerall = var(20) = 0
triggerall = command = "DarkForce"
triggerall = StateType = S || StateType = C
triggerall = var(14) = 1
trigger1 = ctrl

;---------------------------------------------------------------------------
; Moment Slice
[State -1, Moment Slice]
type = ChangeState
value = 2030
triggerall = command = "MomentSlice"
triggerall = Power >= 1000
triggerall = StateType = S
triggerall = var(14) = 0
trigger1 = ctrl
trigger2 = StateNo = 200
trigger3 = StateNo = 215
trigger4 = StateNo = 210
trigger5 = StateNo = 230
trigger6 = StateNo = 235
trigger7 = StateNo = 240

;---------------------------------------------------------------------------
; Dragon Cannon
[State -1, Dragon Cannon]
type = ChangeState
value = 2000
triggerall = command = "DragonCannon"
triggerall = Power >= 1000
triggerall = StateType = S || StateType = C
triggerall = NumHelper(2010) = 0
triggerall = var(14) = 0
triggerall = var(20) = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
; ES Wild Circular
[State -1, ES Wild Circular]
type = ChangeState
value = 920
triggerall = command = "ESWildCircular"
triggerall = Power >= 1000
triggerall = StateType = S || StateType = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Wild Circular
[State -1, Wild Circular]
type = ChangeState
value = 860
triggerall = command = "WildCircular"
triggerall = StateType = S || StateType = C
trigger1 = ctrl

;---------------------------------------------------------------------------
; Climb Laser ES
[State -1, Climb Laser ES]
type = ChangeState
value = 1230
triggerall = command = "ClimbLaserES"
triggerall = Power >= 1000
triggerall = var(14) = 0
trigger1 = ctrl
trigger1 = StateType = S || StateType = C
trigger2 = StateNo = 40
trigger3 = StateNo = 200
trigger3 = MoveContact
trigger4 = StateNo = 210
trigger4 = MoveContact
trigger5 = StateNo = 215
trigger5 = MoveContact
trigger6 = StateNo = 230
trigger6 = MoveContact
trigger7 = StateNo = 235
trigger7 = MoveContact
trigger8 = StateNo = 240
trigger8 = MoveContact
trigger9 = StateNo = 400
trigger9 = MoveContact
trigger10 = StateNo = 410
trigger10 = MoveContact
trigger11 = StateNo = 430
trigger11 = MoveContact
trigger12 = StateNo = 440
trigger12 = MoveContact
trigger13 = StateNo = 50 && time <= 2

;---------------------------------------------------------------------------
; Climb Laser LK
[State -1, Climb Laser LK]
type = ChangeState
value = 1200
triggerall = command = "ClimbLaserLK"
trigger1 = ctrl
trigger1 = StateType = S || StateType = C
trigger2 = StateNo = 40 
trigger3 = StateNo = 200
trigger3 = MoveContact
trigger4 = StateNo = 210
trigger4 = MoveContact
trigger5 = StateNo = 215
trigger5 = MoveContact
trigger6 = StateNo = 230
trigger6 = MoveContact
trigger7 = StateNo = 235
trigger7 = MoveContact
trigger8 = StateNo = 240
trigger8 = MoveContact
trigger9 = StateNo = 400
trigger9 = MoveContact
trigger10 = StateNo = 410
trigger10 = MoveContact
trigger11 = StateNo = 430
trigger11 = MoveContact
trigger12 = StateNo = 440
trigger12 = MoveContact
trigger13 = StateNo = 50 && time <= 2

;---------------------------------------------------------------------------
; Climb Laser MK
[State -1, Climb Laser MK]
type = ChangeState
value = 1210
triggerall = command = "ClimbLaserMK"
trigger1 = ctrl
trigger1 = StateType = S || StateType = C
trigger2 = StateNo = 40
trigger3 = StateNo = 200
trigger3 = MoveContact
trigger4 = StateNo = 210
trigger4 = MoveContact
trigger5 = StateNo = 215
trigger5 = MoveContact
trigger6 = StateNo = 230
trigger6 = MoveContact
trigger7 = StateNo = 235
trigger7 = MoveContact
trigger8 = StateNo = 240
trigger8 = MoveContact
trigger9 = StateNo = 400
trigger9 = MoveContact
trigger10 = StateNo = 410
trigger10 = MoveContact
trigger11 = StateNo = 430
trigger11 = MoveContact
trigger12 = StateNo = 440
trigger12 = MoveContact
trigger13 = StateNo = 50 && time <= 2

;---------------------------------------------------------------------------
; Climb Laser HK
[State -1, Climb Laser HK]
type = ChangeState
value = 1220
triggerall = command = "ClimbLaserHK"
trigger1 = ctrl
trigger1 = StateType = S || StateType = C
trigger2 = StateNo = 40
trigger3 = StateNo = 200
trigger3 = MoveContact
trigger4 = StateNo = 210
trigger4 = MoveContact
trigger5 = StateNo = 215
trigger5 = MoveContact
trigger6 = StateNo = 230
trigger6 = MoveContact
trigger7 = StateNo = 235
trigger7 = MoveContact
trigger8 = StateNo = 240
trigger8 = MoveContact
trigger9 = StateNo = 400
trigger9 = MoveContact
trigger10 = StateNo = 410
trigger10 = MoveContact
trigger11 = StateNo = 430
trigger11 = MoveContact
trigger12 = StateNo = 440
trigger12 = MoveContact
trigger13 = StateNo = 50 && time <= 2

;---------------------------------------------------------------------------
; ES Beast Cannon (DiagUp)
[State -1, DiagUp ES Beast Cannon]
type = ChangeState
value = 1180
triggerall = command = "ESDiagBeastCannon"
triggerall = StateType = S || StateType = C
triggerall = power >= 1000
triggerall = var(14) = 0
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger6 = StateNo = 235
trigger6 = MoveContact
trigger7 = StateNo = 240
trigger7 = MoveContact
trigger8 = StateNo = 400
trigger8 = MoveContact
trigger9 = StateNo = 410
trigger9 = MoveContact
trigger10 = StateNo = 430
trigger10 = MoveContact
trigger11 = StateNo = 440
trigger11 = MoveContact

;---------------------------------------------------------------------------
; ES Beast Cannon (Air)
[State -1, Air ES Beast Cannon]
type = ChangeState
value = 1190
triggerall = command = "ESHorizBeastCannon"
triggerall = StateType = A
triggerall = power >= 1000
triggerall = var(14) = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
; ES Beast Cannon (Horizontal)
[State -1, Horiz ES Beast Cannon]
type = ChangeState
value = 1170
triggerall = command = "ESHorizBeastCannon"
triggerall = StateType = S || StateType = C
triggerall = power >= 1000
triggerall = var(14) = 0
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger6 = StateNo = 235
trigger6 = MoveContact
trigger7 = StateNo = 240
trigger7 = MoveContact
trigger8 = StateNo = 400
trigger8 = MoveContact
trigger9 = StateNo = 410
trigger9 = MoveContact
trigger10 = StateNo = 430
trigger10 = MoveContact
trigger11 = StateNo = 440
trigger11 = MoveContact

;---------------------------------------------------------------------------
; Diagonal Up Beast Cannon
[State -1, Diagonal Up Beast Cannon]
type = ChangeState
value = 1020
triggerall = command = "DiagUpBeastCannon"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger6 = StateNo = 235
trigger6 = MoveContact
trigger7 = StateNo = 240
trigger7 = MoveContact
trigger8 = StateNo = 400
trigger8 = MoveContact
trigger9 = StateNo = 410
trigger9 = MoveContact
trigger10 = StateNo = 430
trigger10 = MoveContact
trigger11 = StateNo = 440
trigger11 = MoveContact

;---------------------------------------------------------------------------
; Air Beast Cannon
[State -1, Air Beast Cannon]
type = ChangeState
value = 1060
triggerall = command = "HorizBeastCannon"
triggerall = StateType = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Horizontal Beast Cannon
[State -1, Horizontal Beast Cannon]
type = ChangeState
value = 1000
triggerall = command = "HorizBeastCannon"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger6 = StateNo = 235
trigger6 = MoveContact
trigger7 = StateNo = 240
trigger7 = MoveContact
trigger8 = StateNo = 400
trigger8 = MoveContact
trigger9 = StateNo = 410
trigger9 = MoveContact
trigger10 = StateNo = 430
trigger10 = MoveContact
trigger11 = StateNo = 440
trigger11 = MoveContact

;---------------------------------------------------------------------------
; ES Million Flash
[State -1, ES Million Flash]
type = ChangeState
value = 1310
triggerall = command = "ESMillionFlash"
triggerall = var(14) = 0
triggerall = power >= 1000
trigger1 = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger6 = StateNo = 235
trigger6 = MoveContact
trigger7 = StateNo = 240
trigger7 = MoveContact
trigger8 = StateNo = 400
trigger8 = MoveContact
trigger9 = StateNo = 410
trigger9 = MoveContact
trigger10 = StateNo = 430
trigger10 = MoveContact
trigger11 = StateNo = 440
trigger11 = MoveContact

;---------------------------------------------------------------------------
; Million Flash
[State -1, Million Flash]
type = ChangeState
value = 1290
triggerall = command = "MillionFlash"
trigger1 = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger6 = StateNo = 235
trigger6 = MoveContact
trigger7 = StateNo = 240
trigger7 = MoveContact
trigger8 = StateNo = 400
trigger8 = MoveContact
trigger9 = StateNo = 410
trigger9 = MoveContact
trigger10 = StateNo = 430
trigger10 = MoveContact
trigger11 = StateNo = 440
trigger11 = MoveContact

;---------------------------------------------------------------------------
; ES Million Flicker 
[State -1, Million Flicker ES]
type = ChangeState
value = 1270
triggerall = command = "ESMillionFlicker"
triggerall = Power >= 1000
triggerall = var(14) = 0
trigger1 = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger6 = StateNo = 235
trigger6 = MoveContact
trigger7 = StateNo = 240
trigger7 = MoveContact
trigger8 = StateNo = 400
trigger8 = MoveContact
trigger9 = StateNo = 410
trigger9 = MoveContact
trigger10 = StateNo = 430
trigger10 = MoveContact
trigger11 = StateNo = 440
trigger11 = MoveContact

;---------------------------------------------------------------------------
; Million Flicker LP
[State -1, Million Flicker LP]
type = ChangeState
value = 1240
triggerall = command = "MillionFlickerX"
trigger1 = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger6 = StateNo = 235
trigger6 = MoveContact
trigger7 = StateNo = 240
trigger7 = MoveContact
trigger8 = StateNo = 400
trigger8 = MoveContact
trigger9 = StateNo = 410
trigger9 = MoveContact
trigger10 = StateNo = 430
trigger10 = MoveContact
trigger11 = StateNo = 440
trigger11 = MoveContact

;---------------------------------------------------------------------------
; Million Flicker MP
[State -1, Million Flicker MP]
type = ChangeState
value = 1250
triggerall = command = "MillionFlickerY"
trigger1 = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger6 = StateNo = 235
trigger6 = MoveContact
trigger7 = StateNo = 240
trigger7 = MoveContact
trigger8 = StateNo = 400
trigger8 = MoveContact
trigger9 = StateNo = 410
trigger9 = MoveContact
trigger10 = StateNo = 430
trigger10 = MoveContact
trigger11 = StateNo = 440
trigger11 = MoveContact

;---------------------------------------------------------------------------
; Million Flicker HP
[State -1, Million Flicker HP]
type = ChangeState
value = 1260
triggerall = command = "MillionFlickerZ"
trigger1 = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger6 = StateNo = 235
trigger6 = MoveContact
trigger7 = StateNo = 240
trigger7 = MoveContact
trigger8 = StateNo = 400
trigger8 = MoveContact
trigger9 = StateNo = 410
trigger9 = MoveContact
trigger10 = StateNo = 430
trigger10 = MoveContact
trigger11 = StateNo = 440
trigger11 = MoveContact

;===========================================================================
;---------------------------------------------------------------------------
; Guard Cancel
[State -1, Guard Cancel]
type = ChangeState
triggerall = command = "DiagUpBeastCannon"
trigger1 = StateNo = 150 || StateNo = 152
value = 720

;---------------------------------------------------------------------------
; Pursuit Attack
[State -1, Pursuit Attack]
type = ChangeState
value = 750
triggerall = command = "Pursuit"
triggerall = P2StateNo = 5110
trigger1 = StateType = S
trigger1 = ctrl
trigger2 = StateNo = 40

; ES Pursuit Attack
[State -1, ES Pursuit Attack]
type = ChangeState
value = 750
triggerall = command = "ESPursuit"
triggerall = P2StateNo = 5110
triggerall = Power >= 1000
trigger1 = ctrl
trigger1 = StateType = S
trigger2 = StateNo = 40

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !IsHelper
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !IsHelper
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Quick-dash
[State -1, Quick-Dash]
type = ChangeState
value = 660
triggerall = command = "dwn_kkk"
trigger1 = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger6 = StateNo = 235
trigger6 = MoveContact
trigger7 = StateNo = 400
trigger7 = MoveContact
trigger8 = StateNo = 410
trigger8 = MoveContact
trigger9 = StateNo = 430
trigger9 = MoveContact
trigger10 = StateNo = 440
trigger10 = MoveContact
trigger11 = StateNo = 240
trigger11 = MoveContact

;---------------------------------------------------------------------------
; Standing Throw
[State -1, Standing Throw]
type = ChangeState
value = 800
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 6
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; Standing Throw
[State -1, Standing Throw]
type = ChangeState
value = 890
triggerall = command = "b" || command = "c"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 6
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; Air Throw
[State -1, Air Throw]
type = ChangeState
value = 830
triggerall = command = "y" || command = "z"
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = p2statetype = A
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = p2statetype = A
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; Roll-Getup Back
[State -1, Getup Back]
type = ChangeState
value = 700
triggerall = StateNo = 5120
trigger1 = Command = "holdback"
trigger1 = time = 1

;---------------------------------------------------------------------------
; Roll-Getup Fwd
[State -1, Getup Forward]
type = ChangeState
value = 710
triggerall = StateNo = 5120
trigger1 = Command = "holdfwd"
trigger1 = time = 1

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !IsHelper
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Close Stand Medium Punch
[State -1, Close Stand Medium Punch]
type = ChangeState
value = 215
triggerall = !IsHelper
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2BodyDist X < 20
trigger1 = ctrl
trigger1 = StateType = S
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 230
trigger3 = MoveContact
trigger4 = StateNo = 400
trigger4 = MoveContact
trigger5 = StateNo = 430
trigger5 = MoveContact
trigger6 = StateNo = 235
trigger6 = MoveContact

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = !IsHelper
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
trigger6 = StateNo = 235
trigger6 = MoveContact

;---------------------------------------------------------------------------
; Fwd + HP
[State -1, Fwd + HP]
type = ChangeState
value = 226
triggerall = !IsHelper
triggerall = command = "fwd_z"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger6 = StateNo = 240
trigger6 = MoveContact
trigger7 = StateNo = 400
trigger7 = MoveContact
trigger8 = StateNo = 410
trigger8 = MoveContact
trigger9 = StateNo = 430
trigger9 = MoveContact
trigger10 = StateNo = 440
trigger10 = MoveContact
trigger11 = StateNo = 235
trigger11 = MoveContact

;---------------------------------------------------------------------------
; Close Stand Hard Punch
[State -1, Close Stand Hard Punch]
type = ChangeState
value = 225
triggerall = !IsHelper
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = P2BodyDist X < 20
trigger1 = ctrl
trigger1 = StateType = S
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger6 = StateNo = 240
trigger6 = MoveContact
trigger7 = StateNo = 400
trigger7 = MoveContact
trigger8 = StateNo = 410
trigger8 = MoveContact
trigger9 = StateNo = 430
trigger9 = MoveContact
trigger10 = StateNo = 440
trigger10 = MoveContact
trigger11 = StateNo = 235
trigger11 = MoveContact

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = !IsHelper
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger6 = StateNo = 240
trigger6 = MoveContact
trigger7 = StateNo = 400
trigger7 = MoveContact
trigger8 = StateNo = 410
trigger8 = MoveContact
trigger9 = StateNo = 430
trigger9 = MoveContact
trigger10 = StateNo = 440
trigger10 = MoveContact
trigger11 = StateNo = 235
trigger11 = MoveContact

;---------------------------------------------------------------------------
;Close Stand Light Kick
[State -1, Close Stand Light Kick]
type = ChangeState
value = 235
triggerall = !IsHelper
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2BodyDist X < 20
trigger1 = ctrl
trigger1 = StateType = S
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = StateNo = 400
trigger3 = MoveContact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !IsHelper
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = StateNo = 400
trigger3 = MoveContact

;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = !IsHelper
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger6 = StateNo = 400
trigger6 = MoveContact
trigger7 = StateNo = 410
trigger7 = MoveContact
trigger8 = StateNo = 430
trigger8 = MoveContact
trigger9 = StateNo = 235
trigger9 = MoveContact

;---------------------------------------------------------------------------
; Close Standing Hard Kick
[State -1, Close Standing Hard Kick]
type = ChangeState
value = 255
triggerall = !IsHelper
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = P2BodyDist X < 20
trigger1 = ctrl
trigger1 = StateType = S
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger6 = StateNo = 240
trigger6 = MoveContact
trigger7 = StateNo = 400
trigger7 = MoveContact
trigger8 = StateNo = 410
trigger8 = MoveContact
trigger9 = StateNo = 430
trigger9 = MoveContact
trigger10 = StateNo = 440
trigger10 = MoveContact
trigger11 = StateNo = 235
trigger11 = MoveContact
trigger12 = StateNo = 220
trigger12 = MoveContact
trigger13 = StateNo = 225
trigger13 = MoveContact

;---------------------------------------------------------------------------
; Standing Hard Kick
[State -1, Standing Hard Kick]
type = ChangeState
value = 250
triggerall = !IsHelper
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger6 = StateNo = 240
trigger6 = MoveContact
trigger7 = StateNo = 400
trigger7 = MoveContact
trigger8 = StateNo = 410
trigger8 = MoveContact
trigger9 = StateNo = 430
trigger9 = MoveContact
trigger10 = StateNo = 440
trigger10 = MoveContact
trigger11 = StateNo = 235
trigger11 = MoveContact
trigger12 = StateNo = 220
trigger12 = MoveContact
trigger13 = StateNo = 225
trigger13 = MoveContact

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !IsHelper
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !IsHelper
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = stateType = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = !IsHelper
triggerall = command = "y"
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
trigger6 = StateNo = 235
trigger6 = MoveContact

;---------------------------------------------------------------------------
; Crouching Hard Punch
[State -1, Crouching Hard Punch]
type = ChangeState
value = 420
triggerall = !IsHelper
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = StateType = C
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger6 = StateNo = 240
trigger6 = MoveContact
trigger7 = StateNo = 400
trigger7 = MoveContact
trigger8 = StateNo = 410
trigger8 = MoveContact
trigger9 = StateNo = 430
trigger9 = MoveContact
trigger10 = StateNo = 440
trigger10 = MoveContact
trigger11 = StateNo = 235
trigger11 = MoveContact

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !IsHelper
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = StateType = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = MoveContact
trigger3 = StateNo = 400
trigger3 = MoveContact

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = !IsHelper
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = StateType = C
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger6 = StateNo = 400
trigger6 = MoveContact
trigger7 = StateNo = 410
trigger7 = MoveContact
trigger8 = StateNo = 430
trigger8 = MoveContact
trigger9 = StateNo = 235
trigger9 = MoveContact

;---------------------------------------------------------------------------
; Crouching Hard Kick
[State -1, Crouching Hard Kick]
type = ChangeState
value = 450
triggerall = !IsHelper
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = StateType = C
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 215
trigger4 = MoveContact
trigger5 = StateNo = 230
trigger5 = MoveContact
trigger6 = StateNo = 240
trigger6 = MoveContact
trigger7 = StateNo = 400
trigger7 = MoveContact
trigger8 = StateNo = 410
trigger8 = MoveContact
trigger9 = StateNo = 430
trigger9 = MoveContact
trigger10 = StateNo = 440
trigger10 = MoveContact
trigger11 = StateNo = 235
trigger11 = MoveContact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(3) != 1
triggerall = !IsHelper
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !IsHelper
triggerall = var(3) != 2
triggerall = command = "y"
triggerall = PrevStateNo != 100
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 630
trigger3 = MoveContact

;---------------------------------------------------------------------------
; Jump Hard Punch
[State -1, Jump Hard Punch]
type = ChangeState
value = 620
triggerall = !IsHelper
triggerall = var(3) != 3
triggerall = command = "z"
triggerall = PrevStateNo != 100
trigger1 = StateType = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 610
trigger3 = MoveContact
trigger4 = StateNo = 630
trigger4 = MoveContact
trigger5 = StateNo = 640
trigger5 = MoveContact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !IsHelper
triggerall = var(3) != 4
triggerall = command = "a"
triggerall = PrevStateNo != 100
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = !IsHelper
triggerall = var(3) != 5
triggerall = command = "b"
triggerall = PrevStateNo != 100
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 610
trigger3 = MoveContact
trigger4 = StateNo = 630
trigger4 = MoveContact

;----------------------------------------------------------------------------
; Jump Hard Kick
[State -1, Jump Hard Kick]
type = ChangeState
value = 650
triggerall = !IsHelper
triggerall = var(3) != 6
triggerall = command = "c"
triggerall = PrevStateNo != 100
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 610
trigger3 = MoveContact
trigger4 = StateNo = 630
trigger4 = MoveContact
trigger5 = StateNo = 640
trigger5 = MoveContact






















