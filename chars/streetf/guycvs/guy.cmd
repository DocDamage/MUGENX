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
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
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
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below. 
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
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
name = "HassouKenx"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "HassouKeny"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "HassouKenz"
command = ~D, DF, F, D, DF, F, z
time = 30

[Command]
name = "GouraiKyakua"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "GouraiKyakub"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "GouraiKyakuc"
command = ~D, DF, F, D, DF, F, c
time = 30

[Command]
name = "MusouRenge"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, x
time = 90

[Command]
name = "MusouRenge"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, y
time = 90

[Command]
name = "MusouRenge"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, z
time = 90

;-| Special Motions |------------------------------------------------------

[Command]
name = "SpinKicka"
command = ~D, DB, B, a

[Command]
name = "SpinKickb"
command = ~D, DB, B, b

[Command]
name = "SpinKickc"
command = ~D, DB, B, c

[Command]
name = "ForwardFlipx"
command = ~D, DF, F, x

[Command]
name = "ForwardFlipy"
command = ~D, DF, F, y

[Command]
name = "ForwardFlipz"
command = ~D, DF, F, z

[Command]
name = "TurnPunchx"
command = ~D, DB, B, x

[Command]
name = "TurnPunchy"
command = ~D, DB, B, y

[Command]
name = "TurnPunchz"
command = ~D, DB, B, z

[Command]
name = "Hayagake"
command = ~D, DF, F, a

[Command]
name = "Hayagake"
command = ~D, DF, F, b

[Command]
name = "Hayagake"
command = ~D, DF, F, c

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

; Mashing
[Command]
name = "releasea"
command = ~a

[Command]
name = "releaseb"
command = ~b

[Command]
name = "releasec"
command = ~c

[Command]
name = "releasex"
command = ~x

[Command]
name = "releasey"
command = ~y

[Command]
name = "releasez"
command = ~z

; Holding button
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
name = "holdx"
command = /x

[Command]
name = "holdy"
command = /y

[Command]
name = "holdz"
command = /z

; Releasing direction

[Command]
name = "releaseup"
command = ~$U

[Command]
name = "releasedown"
command = ~$D

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
; AI ENTRIES

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
v = 16
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
v = 16
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
v = 16
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
v = 16
value = 1

;--------------------------
; Set Super Prob. Modifier
[State -1, Clear]
type = VarSet
trigger1 = var(16)
fv = 2
value = 0

[State -1, Level 1]
type = VarSet
triggerall = var(16)
trigger1 = Power = [0,1000]
fv = 2
value = 1

[State -1, Level 2]
type = VarSet
triggerall = var(16)
trigger1 = Power = [1001,2000]
fv = 2
value = 1.2

[State -1, Level 3]
type = VarSet
triggerall = var(16)
trigger1 = Power = [2001,3000]
fv = 2
value = 1.4

[State -1, Additional Prob]
type = VarAdd
triggerall = var(16)
trigger1 = Life <= 250
fv = 2
value = 0.2

[State -1, Additional Prob]
type = VarAdd
triggerall = var(16)
trigger1 = P2Life <= 200
fv = 2
value = 0.1

[State -3, Stop Repeated Rolling]
type = VarAdd
triggerall = var(16)
trigger1 = StateNo = 900
trigger2 = var(17) > 0
v = 17
value = 1

[State -3, Clear Var]
type = VarSet
triggerall = var(16)
trigger1 = var(17) > 90
v = 17
value = 0

;--------------------------
; Air Throw
[State -1, Air Throw AI]
type = ChangeState
value = 560
triggerall = var(16) > 0
triggerall = StateType = A
trigger1 = ctrl
trigger1 = P2BodyDist X <= 5
trigger1 = P2BodyDist Y = [-20,20]
trigger1 = P2StateType = A
trigger1 = Random <= 300

;--------------------------
; Ground Throw
[State -1, Ground Throw AI]
type = ChangeState
value = ifelse(random <= 499, 500, 530)
triggerall = var(16) > 0
triggerall = StateType = S
trigger1 = ctrl
trigger1 = P2BodyDist X <= 5
trigger1 = P2StateType = S || P2StateType = C
trigger1 = Random <= 300

;--------------------------
; Light Punch
[State -1, Light Punch]
type = ChangeState
value = 200
triggerall = var(16)
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger1 = P2BodyDist X = [0,31]
trigger1 = Random <= 25

;--------------------------
; Bushin Gokusa Ken Combo 
[State -1, Bushin Gokusa Ken]
type = ChangeState
value = 205
triggerall = var(16)
triggerall = var(0) = 5
triggerall = MoveContact
trigger1 = StateNo = 200
trigger1 = Random <= 499
ignorehitpause = 1

[State -1, Bushin Gokusa Ken]
type = ChangeState
value = 600
triggerall = var(16)
triggerall = PrevStateNo = 205
triggerall = StateNo = 210
triggerall = MoveContact
trigger1 = var(0) = 7
ignorehitpause = 1

[State -1, Bushin Gokusa Ken]
type = ChangeState
value = 275
triggerall = var(16)
triggerall = StateNo = 600
triggerall = MoveContact
trigger1 = var(0) = 9
ignorehitpause = 1

;--------------------------
; LP -> Close LK
[State -1, LP -> Close LK]
type = ChangeState
value = 265
triggerall = var(16)
triggerall = var(0) = 6
triggerall = MoveContact
trigger1 = StateNo = 200
ignorehitpause = 1

;--------------------------
; Overhead
[State -1, Overhead]
type = ChangeState
value = 280
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = P2BodyDist X = [0,60]
trigger1 = ctrl && P2StateType = C
trigger1 = Random <= 65

;--------------------------
; Medium Punch
[State -1, Medium Punch]
type = ChangeState
value = ifelse(P2BodyDist X <= 17, 255, 210)
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = P2BodyDist X = [0,80]
triggerall = P2StateType = S || P2StateType = C
trigger1 = ctrl
trigger1 = (Random - ((P2BodyDist X <= 17) * 60)) <= 4

;--------------------------
; Hard Punch
[State -1, Hard Punch]
type = ChangeState
value = ifelse(P2BodyDist X <= 55, 260, 220)
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = P2BodyDist X = [0,100]
trigger1 = ctrl
trigger1 = (Random - (EnemyNear, Ctrl * 7)) <= 4

;--------------------------
; Stand LK Poke
[State -1, Poke LK]
type = ChangeState
value = 230
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = P2BodyDist X = [30,100]
triggerall = P2StateType = S
trigger1 = ctrl
trigger1 = Random <= 6

;--------------------------
; Stand MK Poke
[State -1, Poke MK]
type = ChangeState
value = 240
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = P2BodyDist X = [31,140]
triggerall = P2StateType = S || P2StateType = C
trigger1 = ctrl
trigger1 = Random <= 4

;--------------------------
; Close MK
[State -1, Close MK]
type = ChangeState
value = 270
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = P2BodyDist X = [0,30]
triggerall = P2StateType = S || P2StateType = C
trigger1 = ctrl
trigger1 = Random <= 40

;--------------------------
; Hard Kick
[State -1, HK]
type = ChangeState
value = 250
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = P2BodyDist X = [60,115]
triggerall = P2StateType = A
triggerall = EnemyNear, Vel X > 0
triggerall = P2BodyDist Y >= -89
trigger1 = ctrl
trigger1 = Random <= 50

;---------------------------
; Close HK
[State -1, Close HK]
type = ChangeState
value = 275
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = P2BodyDist X <= 60
triggerall = P2StateType = S || P2StateType = C
trigger1 = ctrl
trigger1 = Random <= 4

;---------------------------
; DF HK
[State -1, DF HK]
type = ChangeState
value = 290
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = P2BodyDist X = [0,75]
triggerall = P2StateType = S || P2StateType = C
trigger1 = ctrl
trigger1 = (Random - (EnemyNear, Ctrl * 8)) <= 3

;---------------------------
; Crouch LP
[State -1, Crouch LP]
type = ChangeState
value = 300
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = P2BodyDist X = [0,40]
triggerall = P2StateType = S || P2StateType = C
trigger1 = ctrl
trigger1 = Random <= 4

;----------------------------
; Crouch MP
[State -1, Crouch MP]
type = ChangeState
value = 310
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = P2BodyDist X = [0,75]
triggerall = P2StateType = S || P2StateType = C
triggerall = ctrl
trigger1 = Random <= 4
trigger2 = PrevStateNo = 300
trigger2 = time = 1

;----------------------------
; Crouch HP
[State -1, Crouch HP]
type = ChangeState
value = 320
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = P2StateType = S || P2StateType = C
triggerall = P2BodyDist X = [0,75]
trigger1 = ctrl
trigger1 = Random <= 6

;----------------------------
; Crouch LK
[State -1, Crouch LK]
type = ChangeState
value = 330
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = P2StateType = S
triggerall = P2BodyDist X = [0,80]
trigger1 = ctrl
trigger1 = Random <= 9

;----------------------------
; Crouch MK
[State -1, Crouch MK]
type = ChangeState
value = 340
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = P2StateType = S
triggerall = P2BodyDist X = [0,55]
trigger1 = ctrl
trigger1 = Random <= 8

;-----------------------------
; Crouch HK
[State -1, Crouch HK]
type = ChangeState
value = 350
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = P2StateType = S
triggerall = P2BodyDist X = [0,155]
trigger1 = ctrl
trigger1 = (Random - (EnemyNear, Ctrl * 4)) <= 8

;-----------------------------
; Air MP
[State -1, Air MP]
type = ChangeState
value = 410
triggerall = var(16)
triggerall = StateType = A
triggerall = P2StateType = A
triggerall = P2BodyDist X = [0,40]
triggerall = P2BodyDist Y = [20,80]
trigger1 = ctrl
trigger1 = Random <= 90

;-----------------------------
; Air HP
[State -1, Air HP]
type = ChangeState
value = 420
triggerall = var(16)
triggerall = StateType = A
triggerall = P2StateType = A
triggerall = P2BodyDist X = [0,70]
triggerall = (P2BodyDist Y - EnemyNear, const(size.height)) = [-92,-23]
trigger1 = ctrl
trigger1 = Random <= 100

;-----------------------------
; Air HK
[State -1, Air HK]
type = ChangeState
value = ifelse(P2BodyDist X <= 25, 440, 450)
triggerall = var(16)
triggerall = StateType = A
triggerall = P2StateType = S || P2StateType = C
triggerall = Vel X > 0 && Vel Y >= 0
triggerall = P2BodyDist X = [-10,80]
triggerall = (P2BodyDist Y - EnemyNear, const(size.height)) <= 45
trigger1 = ctrl
trigger1 = Random <= 100

;-----------------------------
; Air LK
[State -1, Air LK]
type = ChangeState
value = 430
triggerall = var(16)
triggerall = StateType = A
triggerall = P2StateType = A
triggerall = Vel X < 0
triggerall = EnemyNear, Vel X > 0
triggerall = P2BodyDist X = [0,80]
trigger1 = ctrl
trigger1 = Random <= 600

;-----------------------------
; Vert HK
[State -1, Vert HK]
type = ChangeState
value = 480
triggerall = var(16)
triggerall = StateType = A
triggerall = Vel X = 0
triggerall = P2BodyDist X = [0,75]
triggerall = P2BodyDist Y >= -10
trigger1 = ctrl
trigger1 = Random <= 90

; Defensive Moves
[State -1, Tech Roll]
type = ChangeState
value = 900
triggerall = var(16)
triggerall = var(17) = 0
triggerall = StateType = S || StateType = C
triggerall = P2BodyDist X = [0,50]
triggerall = ctrl
trigger1 = !(EnemyNear, ctrl)
trigger1 = P2MoveType = A
trigger1 = PrevStateNo != 900
trigger1 = Random <= 150
trigger2 = EnemyNear, HitDefAttr = SC, NT, ST, HT
trigger2 = Random <= 600
trigger3 = BackEdgeBodyDist <= 30
trigger3 = Random <= 10

; Retreat
[State -1, Retreat]
type = ChangeState
value = 105
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = ctrl
trigger1 = P2BodyDist X <= 15
trigger1 = Random <= 3

;-------------------------------------
; Super Usage
[State -1, Level 1 Hassou Ken]
type = ChangeState
value = 2000
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = Power >= 1000
trigger1 = PrevStateNo = 545
trigger1 = ctrl
trigger1 = time = [0,1]
trigger1 = Random <= floor(600 * fvar(2))
trigger2 = P2StateType = A
trigger2 = EnemyNear, Vel X > 0
trigger2 = P2BodyDist X = [20,95]
trigger2 = P2BodyDist Y = [-100,-45]
trigger2 = ctrl
trigger2 = Random <= floor(10 * fvar(2))
trigger3 = StateNo = 255 || StateNo = 260 || StateNo = 270
trigger3 = MoveHit
trigger3 = Random <= floor(100 * fvar(2))

[State -1, Level 2 Hassou Ken]
type = ChangeState
value = 2030
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = Power >= 2000
trigger1 = PrevStateNo = 545
trigger1 = ctrl
trigger1 = time = [0,1]
trigger1 = Random <= floor(600 * fvar(2))
trigger2 = P2StateType = A
trigger2 = EnemyNear, Vel X > 0
trigger2 = P2BodyDist X = [20,95]
trigger2 = P2BodyDist Y = [-100,-45]
trigger2 = ctrl
trigger2 = Random <= floor(13 * fvar(2))
trigger3 = StateNo = 255 || StateNo = 260 || StateNo = 270
trigger3 = MoveHit
trigger3 = Random <= floor(150 * fvar(2))

[State -1, Level 3 Hassou Ken]
type = ChangeState
value = 2050
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = Power >= 3000
trigger1 = PrevStateNo = 545
trigger1 = ctrl
trigger1 = time = [0,1]
trigger1 = Random <= floor(600 * fvar(2))
trigger2 = P2StateType = A
trigger2 = EnemyNear, Vel X > 0
trigger2 = P2BodyDist X = [20,95]
trigger2 = P2BodyDist Y = [-100,-45]
trigger2 = ctrl
trigger2 = Random <= floor(15 * fvar(2))
trigger3 = StateNo = 255 || StateNo = 260 || StateNo = 270
trigger3 = MoveHit
trigger3 = Random <= floor(200 * fvar(2))

[State -1, Level 1 Gourai Kyaku]
type = ChangeState
value = 2070
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = Power >= 1000
trigger1 = StateNo = 255 || StateNo = 260 || StateNo = 270 || StateNo = 265 || StateNo = 310 || StateNo = 330
trigger1 = MoveHit
trigger1 = Random <= floor(250 * fvar(2))

[State -1, Level 2 Gourai Kyaku]
type = ChangeState
value = 2080
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = Power >= 2000
trigger1 = StateNo = 255 || StateNo = 260 || StateNo = 270 || StateNo = 265 || StateNo = 310 || StateNo = 330
trigger1 = MoveHit
trigger1 = Random <= floor(300 * fvar(2))

[State -1, Level 3 Gourai Kyaku]
type = ChangeState
value = 2110
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = Power >= 3000
trigger1 = StateNo = 255 || StateNo = 260 || StateNo = 270 || StateNo = 265 || StateNo = 310 || StateNo = 330
trigger1 = MoveHit
trigger1 = Random <= floor(400 * fvar(2))

[State -1, Musou Renge]
type = ChangeState
value = 2140
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = Power >= 3000
trigger1 = ctrl
trigger1 = P2BodyDist X = [0,45]
trigger1 = P2StateType = S
trigger1 = Random <= 20

;---------------------------------
; Special Usage

[State -1, LP Houzantou]
type = ChangeState
value = 1110
triggerall = var(16)
triggerall = StateType = S || StateType = C
trigger1 = StateNo = 255 || StateNo = 260 || StateNo = 270 || StateNo = 265 || StateNo = 310 || StateNo = 330
trigger1 = MoveHit
trigger1 = Random <= 499

[State -1, HP Houzantou]
type = ChangeState
value = 1130
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = ctrl
trigger1 = P2BodyDist X = [5,130]
trigger1 = P2StateType = S || P2StateType = C
trigger1 = EnemyNear, NumProj > 0

[State -1, HK Spin Kick]
type = ChangeState
value = 1020
triggerall = var(16)
triggerall = StateType = S || StateType = C
trigger1 = P2BodyDist X = [0,12]
trigger1 = StateNo = 255 || StateNo = 260 || StateNo = 270 || StateNo = 265 || StateNo = 310
trigger1 = MoveHit
trigger2 = P2StateType = A
trigger2 = EnemyNear, Vel X > 0
trigger2 = P2BodyDist X = [30,95]
trigger2 = P2BodyDist Y = [-130,-45]
trigger2 = ctrl
trigger2 = Random <= 15

[State -1, LK Spin Kick]
type = ChangeState
value = 1000
triggerall = var(16)
triggerall = StateType = S || StateType = C
trigger1 = StateNo = 255 || StateNo = 260 || StateNo = 270 || StateNo = 265 || StateNo = 310 || StateNo = 330
trigger1 = MoveHit

[State -1, LP Forward Flip]
type = ChangeState
value = 1030
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = ctrl
trigger1 = P2BodyDist X = [80,90]
trigger1 = P2BodyDist Y = [-70,0]
trigger1 = EnemyNear, Vel Y > 0
trigger1 = Random <= 125

[State -1, MP Forward Flip]
type = ChangeState
value = 1090
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = ctrl
trigger1 = P2BodyDist X = [115,125]
trigger1 = P2BodyDist Y = [-70,0]
trigger1 = EnemyNear, Vel Y > 0
trigger1 = Random <= 125

[State -1, HP Forward Flip]
type = ChangeState
value = 1100
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = ctrl
trigger1 = P2BodyDist X = [155,165]
trigger1 = P2BodyDist Y = [-70,0]
trigger1 = EnemyNear, Vel Y > 0
trigger1 = Random <= 125

[State -1, Dash Forward]
type = ChangeState
value = 1140
triggerall = var(16)
triggerall = StateType = S || StateType = C
triggerall = ctrl
trigger1 = P2BodyDist X >= 170
trigger1 = Random <= 40

[State -1, Dash Forward Cancel]
type = ChangeState
value = 1150
triggerall = var(16)
triggerall = StateNo = 1140
trigger1 = P2StateType = A

[State -1, Slide Kick]
type = ChangeState
value = 1160
triggerall = var(16)
triggerall = StateNo = 1140 || (StateNo = 1140 && time <= 7)
trigger1 = P2StateType = S
trigger1 = P2BodyDist X <= 150

[State -1, Overhead Kick]
type = ChangeState
value = 1170
triggerall = var(16)
triggerall = StateNo = 1140 || (StateNo = 1140 && time <= 7)
trigger1 = P2StateType = C
trigger1 = P2BodyDist X <= 90

;===========================================================================

;---------------------------------------------------------------------------
; Bushin Musou Renge
[State -1, Bushin Musou Renge]
type = ChangeState
value = 2140
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "MusouRenge"
triggerall = StateType = S || StateType = C
triggerall = Power >= 3000
trigger1 = ctrl

;---------------------------------------------------------------------------
; Level 3 Bushin Hassou Ken
[State -1, Level 3 Bushin Hassou Ken]
type = ChangeState
value = 2050
triggerall = !var(16)
triggerall = !var(2)
triggerall = var(59) != 2
triggerall = command = "HassouKenz"
triggerall = StateType = S || StateType = C
triggerall = Power >= 3000
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 230 || StateNo = 330
trigger3 = MoveContact
trigger4 = StateNo = [255,270]
trigger4 = MoveContact
trigger5 = StateNo = [300,310]
trigger5 = MoveContact 

;---------------------------------------------------------------------------
; Level 2 Bushin Hassou Ken
[State -1, Level 2 Bushin Hassou Ken]
type = ChangeState
value = 2030
triggerall = !var(16)
triggerall = !var(2)
triggerall = var(59) != [2,3]
triggerall = command = "HassouKeny" || command = "HassouKenz"
triggerall = StateType = S || StateType = C
triggerall = Power >= 2000
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 230 || StateNo = 330
trigger3 = MoveContact
trigger4 = StateNo = [255,270]
trigger4 = MoveContact
trigger5 = StateNo = [300,310]
trigger5 = MoveContact 

;---------------------------------------------------------------------------
; Level 1 Bushin Hassou Ken
[State -1, Level 1 Bushin Hassou Ken]
type = ChangeState
value = 2000
triggerall = !var(16)
triggerall = !var(2)
triggerall = var(59) != 3
triggerall = command = "HassouKenx" || command = "HassouKeny" || command = "HassouKenz"
triggerall = StateType = S || StateType = C
triggerall = Power >= 1000
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 230 || StateNo = 330
trigger3 = MoveContact
trigger4 = StateNo = [255,270]
trigger4 = MoveContact
trigger5 = StateNo = [300,310]
trigger5 = MoveContact 
trigger6 = var(59) = 1
trigger6 = StateNo = [2080,2100] 
trigger6 = StateType = S

;---------------------------------------------------------------------------
; Level 3 Bushin Gourai Kyaku
[State -1, Level 3 Bushin Gourai Kyaku]
type = ChangeState
value = 2110
triggerall = !var(16)
triggerall = !var(2)
triggerall = var(59) != 2
triggerall = command = "GouraiKyakuc"
triggerall = StateType = S || StateType = C
triggerall = Power >= 3000
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 230 || StateNo = 330
trigger3 = MoveContact
trigger4 = StateNo = [255,270]
trigger4 = MoveContact
trigger5 = StateNo = [300,310]
trigger5 = MoveContact 

;---------------------------------------------------------------------------
; Level 2 Bushin Gourai Kyaku
[State -1, Level 2 Bushin Gourai Kyaku]
type = ChangeState
value = 2080
triggerall = !var(16)
triggerall = !var(2)
triggerall = var(59) != [2,3]
triggerall = command = "GouraiKyakub" || command = "GouraiKyakuc"
triggerall = StateType = S || StateType = C
triggerall = Power >= 2000
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 230 || StateNo = 330
trigger3 = MoveContact
trigger4 = StateNo = [255,270]
trigger4 = MoveContact
trigger5 = StateNo = [300,310]
trigger5 = MoveContact 

;---------------------------------------------------------------------------
; Level 1 Bushin Gourai Kyaku
[State -1, Level 1 Bushin Gourai Kyaku]
type = ChangeState
value = 2070
triggerall = !var(16)
triggerall = !var(2)
triggerall = var(59) != 3
triggerall = command = "GouraiKyakua" || command = "GouraiKyakub" || command = "GouraiKyakuc"
triggerall = StateType = S || StateType = C
triggerall = Power >= 1000
trigger1 = ctrl
trigger2 = StateNo = 200 || StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 230 || StateNo = 330
trigger3 = MoveContact
trigger4 = StateNo = [255,270]
trigger4 = MoveContact
trigger5 = StateNo = [300,310]
trigger5 = MoveContact 
trigger6 = Var(59) = 1
trigger6 = StateNo = [2080,2100] 
trigger6 = StateType = S

;===========================================================================
;---------------------------------------------------------------------------
; LK Bushin Senpuu Kyaku 
[State -1, LK Spin Kick]
type = ChangeState
value = 1000
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "SpinKicka"
triggerall = StateType = S || StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 200 || StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 230 || StateNo = 330
trigger3 = MoveContact
trigger4 = StateNo = [255,270]
trigger4 = MoveContact
trigger5 = StateNo = [300,310]
trigger5 = MoveContact
trigger6 = var(59) = 1
trigger6 = StateNo = [2080,2100] 
trigger6 = StateType = S

;---------------------------------------------------------------------------
; MK Bushin Senpuu Kyaku 
[State -1, MK Spin Kick]
type = ChangeState
value = 1010
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "SpinKickb"
triggerall = StateType = S || StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 200 || StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 230 || StateNo = 330
trigger3 = MoveContact
trigger4 = StateNo = [255,270]
trigger4 = MoveContact
trigger5 = StateNo = [300,310]
trigger5 = MoveContact
trigger6 = var(59) = 1
trigger6 = StateNo = [2080,2100] 
trigger6 = StateType = S

;---------------------------------------------------------------------------
; HK Bushin Senpuu Kyaku 
[State -1, HK Spin Kick]
type = ChangeState
value = 1020
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "SpinKickc"
triggerall = StateType = S || StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 200 || StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 230 || StateNo = 330
trigger3 = MoveContact
trigger4 = StateNo = [255,270]
trigger4 = MoveContact
trigger5 = StateNo = [300,310]
trigger5 = MoveContact
trigger6 = var(59) = 1
trigger6 = StateNo = [2080,2100] 
trigger6 = StateType = S

;---------------------------------------------------------------------------
; LP Forward Flip
[State -1, LP Forward Flip]
type = ChangeState
value = 1030
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "ForwardFlipx"
triggerall = StateType = S || StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 200 || StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 230 || StateNo = 330
trigger3 = MoveContact
trigger4 = StateNo = [255,270]
trigger4 = MoveContact
trigger5 = StateNo = [300,310]
trigger5 = MoveContact
trigger6 = var(59) = 1
trigger6 = StateNo = [2080,2100] 
trigger6 = StateType = S

;---------------------------------------------------------------------------
; MP Forward Flip
[State -1, MP Forward Flip]
type = ChangeState
value = 1090
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "ForwardFlipy"
triggerall = StateType = S || StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 200 || StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 230 || StateNo = 330
trigger3 = MoveContact
trigger4 = StateNo = [255,270]
trigger4 = MoveContact
trigger5 = StateNo = [300,310]
trigger5 = MoveContact
trigger6 = var(59) = 1
trigger6 = StateNo = [2080,2100] 
trigger6 = StateType = S

;---------------------------------------------------------------------------
; HP Forward Flip
[State -1, HP Forward Flip]
type = ChangeState
value = 1100
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "ForwardFlipz"
triggerall = StateType = S || StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 200 || StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 230 || StateNo = 330
trigger3 = MoveContact
trigger4 = StateNo = [255,270]
trigger4 = MoveContact
trigger5 = StateNo = [300,310]
trigger5 = MoveContact
trigger6 = var(59) = 1
trigger6 = StateNo = [2080,2100] 
trigger6 = StateType = S

;---------------------------------------------------------------------------
; LP Houzantou
[State -1, LP Houzantou]
type = ChangeState
value = 1110
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "TurnPunchx"
triggerall = StateType = S || StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 200 || StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 230 || StateNo = 330
trigger3 = MoveContact
trigger4 = StateNo = [255,270]
trigger4 = MoveContact
trigger5 = StateNo = [300,310]
trigger5 = MoveContact
trigger6 = var(59) = 1
trigger6 = StateNo = [2080,2100]
trigger6 = StateType = S

;---------------------------------------------------------------------------
; MP Houzantou
[State -1, MP Houzantou]
type = ChangeState
value = 1120
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "TurnPunchy"
triggerall = StateType = S || StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 200 || StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 230 || StateNo = 330
trigger3 = MoveContact
trigger4 = StateNo = [255,270]
trigger4 = MoveContact
trigger5 = StateNo = [300,310]
trigger5 = MoveContact
trigger6 = var(59) = 1
trigger6 = StateNo = [2080,2100] 
trigger6 = StateType = S

;---------------------------------------------------------------------------
; HP Houzantou
[State -1, HP Houzantou]
type = ChangeState
value = 1130
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "TurnPunchz"
triggerall = StateType = S || StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 200 || StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 230 || StateNo = 330
trigger3 = MoveContact
trigger4 = StateNo = [255,270]
trigger4 = MoveContact
trigger5 = StateNo = [300,310]
trigger5 = MoveContact
trigger6 = var(59) = 1
trigger6 = StateNo = [2080,2100] 
trigger6 = StateType = S

;---------------------------------------------------------------------------
; Hayagake
[State -1, Hayagake]
type = ChangeState
value = 1140
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "Hayagake"
triggerall = StateType = S || StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 200 || StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 230 || StateNo = 330
trigger3 = MoveContact
trigger4 = StateNo = [255,270]
trigger4 = MoveContact
trigger5 = StateNo = [300,310]
trigger5 = MoveContact
trigger6 = var(59) = 1
trigger6 = StateNo = [2080,2100] 
trigger6 = StateType = S

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !var(16)
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !var(16)
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Triangle Jump
[State -1, Triangle Jump]
type = ChangeState
value = 295
triggerall = StateType = A
triggerall = Pos Y <= -55
triggerall = Ctrl
triggerall = PrevStateNo != 45
trigger1 = FrontEdgeBodyDist <= 3
trigger1 = Vel X > 0
trigger1 = command = "holdback"
trigger2 = BackEdgeBodyDist <= 3
trigger2 = Vel X < 0
trigger2 = command = "holdfwd"

;---------------------------------------------------------------------------
; Tech Roll
[State -1, Tech Roll]
type = ChangeState
value = 900
triggerall = !var(16)
triggerall = var(59) = [1,2]
triggerall = !var(2)
triggerall = StateType = S
triggerall = command = "x" && command = "a"
trigger1 = ctrl
trigger2 = StateNo = [2080,2100] 
trigger2 = StateType = S

;---------------------------------------------------------------------------
; Counter Attack
[State -1, Counter Attack]
type = ChangeState
value = 910
triggerall = !var(16)
triggerall = !var(2)
triggerall = var(59) = [1,2]
triggerall = Power >= 1000
triggerall = StateType = S || StateType = C
triggerall = command = "y" && command = "b" && command = "holdfwd"
trigger1 = StateNo = 150
trigger2 = StateNo = 151
trigger3 = StateNo = 152
trigger4 = StateNo = 153

;---------------------------------------------------------------------------
; Custom Combo Activate
[State -1, CC Activate]
type = ChangeState
value = ifelse(StateType = A, 940, 930)
triggerall = var(59) = 2
triggerall = !var(2)
triggerall = Power >= 2000
triggerall = command = "z" && command = "c"
trigger1 = ctrl

;---------------------------------------------------------------------------
; Air Throw
[State -1, Air Throw]
type = ChangeState
value = 560
triggerall = !var(16)
triggerall = command = "y" || command = "z"
triggerall = statetype = A
triggerall = ctrl
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = A) 
trigger1 = p2movetype != H
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = A)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; Stand Punch Throw
[State -1, Stand Punch Throw]
type = ChangeState
value = 500
triggerall = !var(16)
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
; Stand Kick Throw
[State -1, Stand Kick Throw]
type = ChangeState
value = 530
triggerall = !var(16)
triggerall = command = "b" || command = "c"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
[State -1, Clear Button Press Var]
type = VarSet
trigger1 = StateNo = 200 || StateNo = 210 || StateNo = 600
trigger1 = time = 1
v = 18
value = 0
ignorehitpause = 1

[State -1, Add To Timer]
type = VarAdd
trigger1 = StateNo = 200 || StateNo = 210 || StateNo = 600
trigger1 = (StateNo = 200 && command = "y") || (StateNo = 210 && command = "z") || (StateNo = 600 && command = "c")
v = 18
value = 1
ignorehitpause = 1

; Bushin Gokusa Ken 
[State -1, Combo Second Hit]
type = ChangeState
value = 205
triggerall = !var(16)
triggerall = StateNo = 200
triggerall = command = "y" ;"releasey"
triggerall = var(18) <= 1
triggerall = MoveContact
trigger1 = var(0) = [5,9]
ignorehitpause = 1

; Third Hit
[State -1, Combo Third Hit]
type = ChangeState
value = 600
triggerall = !var(16)
triggerall = StateNo = 210
triggerall = command = "z" ;"releasez"
triggerall = var(18) <= 1
triggerall = PrevStateNo = 205
triggerall = MoveContact
trigger1 = var(0) = [7,10]
ignorehitpause = 1

; Bushin-ryuu Seoi Nage 
[State -1, Combo Throw]
type = ChangeState
value = 610
triggerall = !var(16)
triggerall = StateNo = 600
triggerall = command = "holddown"
triggerall = command = "c" ;"releasec"
triggerall = var(18) <= 1
triggerall = MoveHit
trigger1 = var(0) = [8,15]
ignorehitpause = 1

; Final Hit
[State -1, Combo Final Hit]
type = ChangeState
value = 275
triggerall = !var(16)
triggerall = StateNo = 600
triggerall = command = "c" ;"releasec"
triggerall = var(18) <= 1
triggerall = MoveContact
trigger1 = var(0) = [7,15]
ignorehitpause = 1

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 265
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Stand Fwd + Medium Punch
[State -1, Stand Fwd + Medium Punch]
type = ChangeState
value = 280
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = StateType = S || StateType = C
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Stand Close Medium Punch
[State -1, Stand Close Medium Punch]
type = ChangeState
value = 255
triggerall = !var(16)
triggerall = !var(2)
triggerall = P2BodyDist X <= 17
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Close Hard Punch
[State -3, Stand Close Hard Punch]
type = ChangeState
value = 260
triggerall = !var(16)
triggerall = !var(2)
triggerall = P2BodyDist X <= 55
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -3, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Stand Close Light Kick
[State -1, Stand Close Light Kick]
type = ChangeState
value = 265
triggerall = !var(16)
triggerall = !var(2)
triggerall = P2BodyDist X <= 40
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing Close Medium Kick
[State -1, Standing Close Medium Kick]
type = ChangeState
value = 270
triggerall = !var(16)
triggerall = !var(2)
triggerall = P2BodyDist X <= 30
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Standing DF + Hard Kick
[State -1, Standing DF + Hard Kick]
type = ChangeState
value = 290
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "c"
triggerall = command = "holddown" && command = "holdfwd"
trigger1 = StateType = S || StateType = C
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Standing Close Hard Kick
[State -1, Standing Close Hard Kick]
type = ChangeState
value = 275
triggerall = !var(16)
triggerall = !var(2)
triggerall = P2BodyDist X <= 60
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Standing Hard Kick
[State -1, Standing Hard Kick]
type = ChangeState
value = 250
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !var(16)
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 300
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 310
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Hard Punch
[State -1, Crouching Hard Punch]
type = ChangeState
value = 320
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 330
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 340
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Hard Kick
[State -1, Crouching Hard Kick]
type = ChangeState
value = 350
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 400
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Down + Medium Punch
[State -1, Jump Down + Medium Punch]
type = ChangeState
value = 460
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 410
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Hard Punch
[State -1, Jump Hard Punch]
type = ChangeState
value = 420
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Vertical Light Kick
[State -1, Jump Vertical Light Kick]
type = ChangeState
value = 470
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "a"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 430
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 440
triggerall = !var(16)
triggerall = !var(16)
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Vertical Hard Kick
[State -1, Jump Vertical Hard Kick]
type = ChangeState
value = 480
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "c"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Hard Kick
[State -1, Jump Hard Kick]
type = ChangeState
value = 450
triggerall = !var(16)
triggerall = !var(2)
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;===========================================================================
; CUSTOM COMBO STATECTRLS

;---------------------------------------------------------------------------
; CC Level 1 Bushin Hassou Ken
[State -1, CC Level 1 Bushin Hassou Ken]
type = ChangeState
value = 2000
triggerall = var(2)
triggerall = command = "HassouKenx" || command = "HassouKeny" || command = "HassouKenz"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC Level 1 Bushin Gourai Kyaku
[State -1, CC Level 1 Bushin Gourai Kyaku]
type = ChangeState
value = 2070
triggerall = var(2)
triggerall = command = "GouraiKyakua" || command = "GouraiKyakub" || command = "GouraiKyakuc"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = var(6)

;===========================================================================
;---------------------------------------------------------------------------
; CC LK Bushin Senpuu Kyaku 
[State -1, CC LK Spin Kick]
type = ChangeState
value = 1000
triggerall = var(2)
triggerall = command = "SpinKicka"
triggerall = StateType = S || StateType = C
trigger1 = Ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC MK Bushin Senpuu Kyaku 
[State -1, CC MK Spin Kick]
type = ChangeState
value = 1010
triggerall = var(2)
triggerall = command = "SpinKickb"
triggerall = StateType = S || StateType = C
trigger1 = Ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC HK Bushin Senpuu Kyaku 
[State -1, CC HK Spin Kick]
type = ChangeState
value = 1020
triggerall = var(2)
triggerall = command = "SpinKickc"
triggerall = StateType = S || StateType = C
trigger1 = Ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC LP Forward Flip
[State -1, CC LP Forward Flip]
type = ChangeState
value = 1030
triggerall = var(2)
triggerall = command = "ForwardFlipx"
triggerall = StateType = S || StateType = C
trigger1 = Ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC MP Forward Flip
[State -1, CC MP Forward Flip]
type = ChangeState
value = 1090
triggerall = var(2)
triggerall = command = "ForwardFlipy"
triggerall = StateType = S || StateType = C
trigger1 = Ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC HP Forward Flip
[State -1, CC HP Forward Flip]
type = ChangeState
value = 1100
triggerall = var(2)
triggerall = command = "ForwardFlipz"
triggerall = StateType = S || StateType = C
trigger1 = Ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC LP Houzantou
[State -1, CC LP Houzantou]
type = ChangeState
value = 1110
triggerall = var(2)
triggerall = command = "TurnPunchx"
triggerall = StateType = S || StateType = C
trigger1 = Ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC MP Houzantou
[State -1, CC MP Houzantou]
type = ChangeState
value = 1120
triggerall = var(2)
triggerall = command = "TurnPunchy"
triggerall = StateType = S || StateType = C
trigger1 = Ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC HP Houzantou
[State -1, CC HP Houzantou]
type = ChangeState
value = 1130
triggerall = var(2)
triggerall = command = "TurnPunchz"
triggerall = StateType = S || StateType = C
trigger1 = Ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC Hayagake
[State -1, CC Hayagake]
type = ChangeState
value = 1140
triggerall = var(2)
triggerall = command = "Hayagake"
triggerall = StateType = S || StateType = C
trigger1 = Ctrl
trigger2 = var(6)

;===========================================================================
;---------------------------------------------------------------------------
; CC Tech Roll
[State -1, CC Tech Roll]
type = ChangeState
value = 900
triggerall = var(2)
triggerall = command = "x" && command = "a"
trigger1 = ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC Stand Light Punch
[State -1, CC Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(2)
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC Stand Fwd + Medium Punch
[State -1, CC Stand Fwd + Medium Punch]
type = ChangeState
value = 280
triggerall = var(2)
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = StateType = S || StateType = C
trigger1 = Ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC Stand Close Medium Punch
[State -1, CC Stand Close Medium Punch]
type = ChangeState
value = 255
triggerall = var(2)
triggerall = P2BodyDist X <= 17
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC Stand Medium Punch
[State -1, CC Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(2)
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC Stand Close Hard Punch
[State -3, CC Stand Close Hard Punch]
type = ChangeState
value = 260
triggerall = var(2)
triggerall = P2BodyDist X <= 55
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC Stand Hard Punch
[State -3, CC Stand Hard Punch]
type = ChangeState
value = 220
triggerall = var(2)
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = Ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC Stand Close Light Kick
[State -1, CC Stand Close Light Kick]
type = ChangeState
value = 265
triggerall = var(2)
triggerall = P2BodyDist X <= 40
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC Stand Light Kick
[State -1, CC Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(2)
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC Standing Close Medium Kick
[State -1, CC Standing Close Medium Kick]
type = ChangeState
value = 270
triggerall = var(2)
triggerall = P2BodyDist X <= 30
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC Standing Medium Kick
[State -1, CC Standing Medium Kick]
type = ChangeState
value = 240
triggerall = var(2)
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC Standing DF + Hard Kick
[State -1, CC Standing DF + Hard Kick]
type = ChangeState
value = 290
triggerall = var(2)
triggerall = command = "c"
triggerall = command = "holddown" && command = "holdfwd"
trigger1 = StateType = S || StateType = C
trigger1 = Ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC Standing Close Hard Kick
[State -1, CC Standing Close Hard Kick]
type = ChangeState
value = 275
triggerall = var(2)
triggerall = P2BodyDist X <= 60
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC Standing Hard Kick
[State -1, CC Standing Hard Kick]
type = ChangeState
value = 250
triggerall = var(2)
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC Crouching Light Punch
[State -1, CC Crouching Light Punch]
type = ChangeState
value = 300
triggerall = var(2)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC Crouching Medium Punch
[State -1, CC Crouching Medium Punch]
type = ChangeState
value = 310
triggerall = var(2)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC Crouching Hard Punch
[State -1, CC Crouching Hard Punch]
type = ChangeState
value = 320
triggerall = var(2)
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC Crouching Light Kick
[State -1, CC Crouching Light Kick]
type = ChangeState
value = 330
triggerall = var(2)
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC Crouching Medium Kick
[State -1, CC Crouching Medium Kick]
type = ChangeState
value = 340
triggerall = var(2)
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC Crouching Hard Kick
[State -1, CC Crouching Hard Kick]
type = ChangeState
value = 350
triggerall = var(2)
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = var(6)

;---------------------------------------------------------------------------
; CC Jump Light Punch
[State -1, CC Jump Light Punch]
type = ChangeState
value = 400
triggerall = var(2)
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(7)

;---------------------------------------------------------------------------
; CC Jump Down + Medium Punch
[State -1, CC Jump Down + Medium Punch]
type = ChangeState
value = 460
triggerall = var(2)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(7)

;---------------------------------------------------------------------------
; CC Jump Medium Punch
[State -1, CC Jump Medium Punch]
type = ChangeState
value = 410
triggerall = var(2)
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(7)

;---------------------------------------------------------------------------
; CC Jump Hard Punch
[State -1, CC Jump Hard Punch]
type = ChangeState
value = 420
triggerall = var(2)
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(7)

;---------------------------------------------------------------------------
; CC Jump Vertical Light Kick
[State -1, CC Jump Vertical Light Kick]
type = ChangeState
value = 470
triggerall = var(2)
triggerall = command = "a"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(7)

;---------------------------------------------------------------------------
; CC Jump Light Kick
[State -1, CC Jump Light Kick]
type = ChangeState
value = 430
triggerall = var(2)
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(7)

;---------------------------------------------------------------------------
; CC Jump Medium Kick
[State -1, CC Jump Medium Kick]
type = ChangeState
value = 440
triggerall = var(2)
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(7)

;---------------------------------------------------------------------------
; CC Jump Vertical Hard Kick
[State -1, CC Jump Vertical Hard Kick]
type = ChangeState
value = 480
triggerall = var(2)
triggerall = command = "c"
triggerall = Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(7)

;---------------------------------------------------------------------------
; CC Jump Hard Kick
[State -1, CC Jump Hard Kick]
type = ChangeState
value = 450
triggerall = var(2)
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(7)


