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

;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "QCF_PP"
command = ~D, DF, F, x+y
time = 20

[Command]
name = "QCF_PP"
command = ~D, DF, F, x+z
time = 20

[Command]
name = "QCF_PP"
command = ~D, DF, F, y+z
time = 20

[Command]
name = "QCF_KK"
command = ~D, DF, F, a+b
time = 20

[Command]
name = "QCF_KK"
command = ~D, DF, F, a+c
time = 20

[Command]
name = "QCF_KK"
command = ~D, DF, F, b+c
time = 20

[Command]
name = "QCB_KK"
command = ~D, DB, B, a+b
time = 20

[Command]
name = "QCB_KK"
command = ~D, DB, B, a+c
time = 20

[Command]
name = "QCB_KK"
command = ~D, DB, B, b+c
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_xy"
command = ~F, D, DF, x+y

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "HCF_x"
command = ~B, DB, D, DF, F, x

[Command]
name = "HCF_y"
command = ~B, DB, D, DF, F, y

[Command]
name = "HCF_z"
command = ~B, DB, D, DF, F, z

[Command]
name = "HCF_a"
command = ~B, DB, D, DF, F, a

[Command]
name = "HCF_b"
command = ~B, DB, D, DF, F, b

[Command]
name = "HCF_c"
command = ~B, DB, D, DF, F, c

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "DU"
command = D, $U
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

;-| Multiple Button |---------------------------------------------------------
[Command]
name = "abc"
command = a+b+c
time = 1

[Command]
name = "xyz"
command = x+y+z
time = 1

[Command]
name = "yb"
command = y+b
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

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

;-| AI |--------------------------------------------------------------
[Command]
name = "AI1"
command = U,D,B,F,U,D,B,F,b,b,a,a,s
time = 0

[Command]
name = "AI2"
command = U,D,U,D,U,D,U,D,U,D,U,D,a+b+c+x+y+z
time = 0

[Command]
name = "AI3"
command = U,F,B,D,B,F,U,x,x,x,y,y,y,z,z,z
time = 0

[Command]
name = "AI4"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0

[Command]
name = "AI5"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0

[Command]
name = "AI6"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0

[Command]
name = "AI7"
command = x+y+z,x+y+z,x+y+z,x+y+z,x+y+z,x+y+z,x+y+z
time = 0

[Command]
name = "AI8"
command = a+b+c,a+b+c,a+b+c,a+b+c,a+b+c,a+b+c,a+b+c
time = 0

[Command]
name = "AI9"
command = y,a,B,B,a,D,a,B,B,a
time = 0

[Command]
name = "AI10"
command = c,U,B,B,y,B,U,D,D,y
time = 0

[Command]
name = "AI11"
command = x,x
time = 0

[Command]
name = "AI12"
command = y,y
time = 0

[Command]
name = "AI13"
command = z,z
time = 0

[Command]
name = "AI14"
command = a,a
time = 0

[Command]
name = "AI15"
command = b,b
time = 0

[Command]
name = "AI16"
command = c,c
time = 0

[Command]
name = "AI17"
command = U,x
time = 0

[Command]
name = "AI18"
command = D,x
time = 0

[Command]
name = "AI19"
command = B,x
time = 0

[Command]
name = "AI20"
command = F,x
time = 0

[Command]
name = "KonamiCode"
command = U,U,D,D,B,F,B,F,b,a,s
time = 0

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
;Activate AI
[State -1, Activate AI]
type = VarSet
triggerall = var(59) = 0
trigger1 = IsHomeTeam
trigger1 = TeamSide = 2
trigger2 = command = "KonamiCode"
trigger3 = command = "AI1"
trigger4 = command = "AI2"
trigger5 = command = "AI3"
trigger6 = command = "AI4"
trigger7 = command = "AI5"
trigger8 = command = "AI6"
trigger9 = command = "AI7"
trigger10 = command = "AI8"
trigger11 = command = "AI9"
trigger12 = command = "AI10"
trigger13 = command = "AI11"
trigger14 = command = "AI12"
trigger15 = command = "AI13"
trigger16 = command = "AI14"
trigger17 = command = "AI15"
trigger18 = command = "AI16"
trigger19 = command = "AI17"
trigger20 = command = "AI18"
trigger21 = command = "AI19"
trigger22 = command = "AI20"
v = 59
value = 1

;---------------------------------------------------------------------------
;Activate AI
[State -1, Activate AI]
type = VarSet
trigger1 = var(59) = 2
trigger1 = RoundState != 3
v = 59
value = 1

;---------------------------------------------------------------------------
;Deactivate AI
[State -1, Deactivate AI]
type = VarSet
triggerall = var(59) != 0
trigger1 = RoundState = 3
v = 59
value = 2

;---------------------------------------------------------------------------
;Liedown AI
[State -1, Liedown AI]
type = VarSet
triggerall = var(59) = 1
trigger1 = p2statetype = L
trigger2 = p2stateno = [5050,5079]
v = 59
value = 4

;---------------------------------------------------------------------------
;Liedown AI Off
[State -1, Liedown AI Off]
type = VarSet
triggerall = var(59) = 4
trigger1 = p2statetype != L
trigger1 = p2stateno != [5050,5079]
v = 59
value = 1

;---------------------------------------------------------------------------
;Check Miss AI Begin Attack
[State -1, Check Miss AI Begin Attack]
type = VarSet
triggerall = var(59) != 0
triggerall = var(58) <= 0
trigger1 = movetype = A
v = 58
value = stateno

;---------------------------------------------------------------------------
;Check Miss AI Hit
[State -1, Check Miss AI Hit]
type = VarSet
triggerall = var(59) != 0
triggerall = var(58) != 0
trigger1 = movecontact
trigger2 = movetype = I
trigger2 = random < 10
trigger3 = stateno = [150,159]
v = 58
value = 0

;---------------------------------------------------------------------------
;Check Miss AI End Attack
[State -1, Check Miss AI End Attack]
type = VarSet
triggerall = var(59) != 0
triggerall = var(58) > 0
trigger1 = ctrl = 1
v = 58
value = var(58)*(-1)

;===========================================================================
; AI Rush Drill
;===========================================================================
[State 3101, 5]
type = Explod
trigger1 = var(59) != 0
trigger1 = p2bodydist x > 0
trigger1 = p2bodydist y = 0
trigger1 = stateno = 3101
triggerall = Time > 6
triggerall = Time < 126
triggerall = Vel X < 4
triggerall = Vel X > -4
triggerall = Pos Y >= 0
anim = 3107
bindtime = -1

[State 3101, 6]
type = VelSet
trigger1 = var(59) != 0
trigger1 = p2bodydist x > 0
trigger1 = p2bodydist y = 0
trigger1 = stateno = 3101
triggerall = Time > 6
triggerall = Time < 126
triggerall = Vel X < 4
triggerall = Vel X > -4
triggerall = Pos Y >= 0
x = 8

;===========================================================================
; AI Beat Plane
;===========================================================================
[State -1, Beat Plane Shot]
type = Helper
ID = 3207
trigger1 = var(59) != 0
trigger1 = stateno = 3201
triggerall = Time > 6
triggerall = numhelper(3207) = 0
stateno = 3207

[State -1, Beat Plane Missile]
type = Helper
ID = 3208
trigger1 = var(59) != 0
trigger1 = stateno = 3201
triggerall = Time > 6
triggerall = numhelper(3208) = 0
stateno = 3208

[State -1, Beat Plane Forward]
type = PosAdd
trigger1 = var(59) != 0
trigger1 = stateno = 3201
trigger1 = p2bodydist x > 5
triggerall = Time > 6
x = 3

[State -1, Beat Plane Down]
type = PosAdd
trigger1 = var(59) != 0
trigger1 = stateno = 3201
trigger1 = p2bodydist y > 55
triggerall = Time > 6
triggerall = Pos Y < 0
y = 3

[State 3201, Beat Plane Up]
type = PosAdd
trigger1 = var(59) != 0
trigger1 = stateno = 3201
trigger1 = p2bodydist y < 45
triggerall = Time > 6
y = -3

;===========================================================================
; AI Throw
;===========================================================================
;---------------------------------------------------------------------------
;Throw A
[State -1, Throw A]
type = ChangeState
value = 800
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = ctrl
triggerall = stateno != 100
triggerall = (abs(var(58)) != [800,899])|| (Random < 100)
triggerall = (var(58) != [200,499]) || (Random < 200)
triggerall = (var(58) != [1000,3999]) || (Random < 300)
trigger1 = p2bodydist X = [0,3]
trigger1 = p2statetype != A
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;Air Throw
[State -1, Throw]
type = ChangeState
value = 830
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = ctrl
trigger1 = p2bodydist X = [0,3]
trigger1 = p2statetype = A
trigger1 = p2movetype != H

;===========================================================================
; AI Close Attack (Poke)
;===========================================================================
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = (abs(var(58)) != 430) || (Random < 100)
triggerall = (var(58) != [200,499]) || (Random < 200)
triggerall = (var(58) != [1000,3999]) || (Random < 300)
trigger1 = ctrl
trigger1 = p2bodydist X = [0,30]
trigger1 = p2dist Y = 0
trigger1 = !(p2movetype = A && enemy, vel x >= 4)
trigger1 = p2stateno != [200,210]
trigger1 = p2stateno != [400,410]
trigger1 = p2stateno != 230
trigger1 = p2stateno != 430

;===========================================================================
; AI Guard
;===========================================================================
;---------------------------------------------------------------------------
;Guard (ChangeToCrouching)
[State -1, Guard (ChangeToCrouching)]
type = ChangeState
value = 152
triggerall = var(59) = 1
triggerall = stateno = 150
triggerall = p2statetype = C
trigger1 = p2movetype = A
trigger2 = enemy, NumProj != 0

;---------------------------------------------------------------------------
;Guard (ChangeToStanding)
[State -1, Guard (ChangeToStanding)]
type = ChangeState
value = 150
triggerall = var(59) = 1
triggerall = stateno = 152
triggerall = p2statetype = A
trigger1 = p2movetype = A
trigger2 = enemy, NumProj != 0

;---------------------------------------------------------------------------
;Guard (Crouching)
[State -1, Guard (Crouching)]
type = ChangeState
value = 131
triggerall = var(59) = 1
triggerall = (ctrl && statetype != A) || (stateno = 100) || (stateno = 105)
triggerall = p2statetype != A
trigger1 = p2movetype = A
trigger1 = enemy, MoveGuarded = 0
trigger2 = enemy, NumProj != 0

;---------------------------------------------------------------------------
;Guard (Standing)
[State -1, Guard (Standing)]
type = ChangeState
value = 130
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = (ctrl && statetype != A) || (stateno = 100) || (stateno = 105)
triggerall = p2statetype != C
trigger1 = p2movetype = A
trigger1 = enemy, MoveGuarded = 0
trigger2 = enemy, NumProj != 0

;---------------------------------------------------------------------------
;Guard (Air)
[State -1, Guard (Air)]
type = ChangeState
value = 132
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = ctrl
trigger1 = p2movetype = A
trigger1 = enemy, MoveGuarded = 0
trigger2 = enemy, NumProj != 0

;===========================================================================
; AI Ground Combo
;===========================================================================
;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = (stateno = [200,210]) ||  (stateno = [400,410]) || (stateno = [230,240]) || (stateno = [430,440])
triggerall = movecontact
triggerall = var(59) = 1
trigger1 = p2bodydist x = [12,38]
trigger1 = p2bodydist y = [-30,0]

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
trigger1 = (stateno = 230) || (stateno = 430)
trigger1 = movecontact
trigger1 = var(59) = 1

;---------------------------------------------------------------------------
Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
trigger1 = (stateno = 240) || (stateno = 440)
trigger1 = movecontact
trigger1 = var(59) = 1

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
trigger1 = (stateno = 200) || (stateno = 400)
trigger1 = movecontact
trigger1 = var(59) = 1

;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
trigger1 = (stateno = 210) || (stateno = 410)
trigger1 = movecontact
trigger1 = var(59) = 1

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
trigger1 = (stateno = 240) || (stateno = 440)
trigger1 = movecontact
trigger1 = var(59) = 1

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
trigger1 = (stateno = 230) || (stateno = 430)
trigger1 = movecontact
trigger1 = var(59) = 1

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
trigger1 = (stateno = 240) || (stateno = 440)
trigger1 = movecontact
trigger1 = var(59) = 1

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
trigger1 = (stateno = 200) || (stateno = 400)
trigger1 = movecontact
trigger1 = var(59) = 1

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
trigger1 = (stateno = 210) || (stateno = 410)
trigger1 = movecontact
trigger1 = var(59) = 1

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
trigger1 = (stateno = 240) || (stateno = 440)
trigger1 = movecontact
trigger1 = var(59) = 1

;---------------------------------------------------------------------------
;Buster
[State -1, Buster]
type = ChangeState
value = 1000
triggerall = var(59) = 1
triggerall = numproj = 0
triggerall = statetype != A
triggerall = movecontact
triggerall = random < 200
trigger1 = stateno = 220
trigger2 = stateno = 420

;===========================================================================
; AI Aerial Rave
;===========================================================================
;---------------------------------------------------------------------------
;Aerial Rave On
[State -1, Aerial Rave On]
type = VarSet
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = StateNo = 250
trigger1 = AnimElem = 9, >= 0
trigger1 = AnimElem = 10, < 0
trigger1 = MoveHit
v = 59
value = 3

;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 110
triggerall = var(59) = 3
trigger1 = StateNo = 250
trigger1 = AnimElem = 9, >= 0
trigger1 = AnimElem = 10, < 0
trigger1 = MoveHit

;---------------------------------------------------------------------------
;Super Jump Forwards
[State 110, 3]
type = VelSet 
triggerall = var(59) = 3
trigger1 = StateNo = 111
x = 2.5

;---------------------------------------------------------------------------
;Aerial Rave Over
[State -1, Aerial Rave Over]
type = VarSet
triggerall = var(59) = 3
trigger1 = statetype != A
trigger2 = stateno = 600
v = 59
value = 1

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) = 3
trigger1 = P2BodyDist X = [0,30]
trigger1 = P2Dist Y = [-30,30]
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) = 1
trigger1 = movecontact
trigger1 = stateno = 600

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) = 1
trigger1 = movecontact
trigger1 = stateno = 630

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) = 1
trigger1 = movecontact
trigger1 = stateno = 610

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(59) = 1
trigger1 = movecontact
trigger1 = stateno = 640
trigger1 = random < 333

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = var(59) = 1
trigger1 = movecontact
trigger1 = stateno = 640
trigger1 = random < 500

;---------------------------------------------------------------------------
;Air Buster
[State -1, Air Buster]
type = ChangeState
value = 1010
triggerall = var(59) = 1
triggerall = numproj = 0
trigger1 = movecontact
trigger1 = stateno = 640

;===========================================================================
; AI Super Moves
;===========================================================================
;---------------------------------------------------------------------------
;Hyper Roll
[State -1, Hyper Roll]
type = ChangeState
value = 3000
triggerall = var(59) = 1
triggerall = power >= 1000
triggerall = (numhelper(3011) = 0) &&  (numhelper(3112) = 0) &&  (numhelper(3211) = 0)
triggerall = ctrl
triggerall = p2bodydist x = [-20,30]
triggerall = p2bodydist y = [0,40]
triggerall = p2stateno != [120,160]
trigger1 = random < 600
trigger2 = enemy, ctrl = 0

;---------------------------------------------------------------------------
;Rush Drill
[State -1, Rush Drill]
type = ChangeState
value = 3100
triggerall = var(59) = 1
triggerall = power >= 1000
triggerall = numhelper(3112) = 0
triggerall = ctrl
triggerall = statetype = S
triggerall = p2bodydist x = [0,80]
triggerall = p2bodydist y = [0,5]
triggerall = p2stateno != [120,160]
trigger1 = random < 200
trigger2 = enemy, ctrl = 0

;---------------------------------------------------------------------------
;Beat Plane
[State -1, Beat Plane]
type = ChangeState
value = 3200
triggerall = var(59) = 1
triggerall = power >= 1000
triggerall = numhelper(3211) = 0
triggerall = ctrl
triggerall = p2bodydist x = [0,120]
triggerall = p2bodydist y = [-200,10]
triggerall = p2stateno != [120,160]
trigger1 = random < 100
trigger2 = enemy, ctrl = 0

;===========================================================================
; AI Special Moves
;===========================================================================
;---------------------------------------------------------------------------
;Buster
[State -1, Buster]
type = ChangeState
value = 1000
triggerall = var(59) = 1
triggerall = numproj = 0
triggerall = statetype != A
triggerall = (abs(var(58)) != 1000)|| (Random < 100)
triggerall = (var(58) != [200,499]) || (Random < 200)
triggerall = (var(58) != [1000,3999]) || (Random < 300)
trigger1 = ctrl
trigger1 = p2dist X > 160
trigger1 = p2dist Y = [-40,0]
trigger1 = random < 50

;---------------------------------------------------------------------------
;Air Buster
[State -1, Air Buster]
type = ChangeState
value = 1010
triggerall = var(59) = 1
triggerall = numproj = 0
triggerall = statetype = A
trigger1 = ctrl
trigger1 = p2dist X > 160
trigger1 = p2dist Y = [-30,30]
trigger1 = random < 400
trigger2 = movecontact
trigger2 = stateno = 640

;---------------------------------------------------------------------------
;Throw Bouquet (Short)
[State -1, Throw Bouquet Short]
type = ChangeState
value = ifelse(statetype = A, 1130, 1100)
triggerall = var(59) = 1
triggerall = command = "QCB_x"
triggerall = (abs(var(58)) != [1100,1129])|| (Random < 100)
triggerall = (var(58) != [200,499]) || (Random < 200)
triggerall = (var(58) != [1000,3999]) || (Random < 300)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = [200,699]

;---------------------------------------------------------------------------
;Throw Bouquet (Medium)
[State -1, Throw Bouquet Medium]
type = ChangeState
value = ifelse(statetype = A, 1140, 1110)
triggerall = var(59) = 1
triggerall = command = "QCB_y"
triggerall = (abs(var(58)) != [1100,1129])|| (Random < 100)
triggerall = (var(58) != [200,499]) || (Random < 200)
triggerall = (var(58) != [1000,3999]) || (Random < 300)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = [200,699]

;---------------------------------------------------------------------------
;Throw Bouquet (Long)
[State -1, Throw Bouquet Long]
type = ChangeState
value = ifelse(statetype = A, 1150, 1120)
triggerall = var(59) = 1
triggerall = command = "QCB_z"
triggerall = (abs(var(58)) != [1100,1129])|| (Random < 100)
triggerall = (var(58) != [200,499]) || (Random < 200)
triggerall = (var(58) != [1000,3999]) || (Random < 300)
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = [200,699]

;---------------------------------------------------------------------------
;Rock Ball (Weak Kick)
[State -1, Rock Ball Weak]
type = ChangeState
value = 1200
triggerall = var(59) = 1
triggerall = command = "QCF_a"
triggerall = var(0) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = [200,499]

;---------------------------------------------------------------------------
;Rock Ball (Medium Kick)
[State -1, Rock Ball Medium]
type = ChangeState
value = 1210
triggerall = var(59) = 1
triggerall = command = "QCF_b"
triggerall = var(0) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = [200,499]

;---------------------------------------------------------------------------
;Rock Ball (Strong Kick)
[State -1, Rock Ball Strong]
type = ChangeState
value = 1220
triggerall = var(59) = 1
triggerall = command = "QCF_c"
triggerall = var(0) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = [200,499]

;---------------------------------------------------------------------------
;Tornado Hold (Weak Kick)
[State -1, Tornado Hold Weak]
type = ChangeState
value = 1300
triggerall = var(59) = 1
triggerall = var(0) = 0
triggerall = statetype != A
triggerall = (abs(var(58)) != [1300,1399])|| (Random < 100)
triggerall = (var(58) != [200,499]) || (Random < 200)
triggerall = (var(58) != [1000,3999]) || (Random < 300)
trigger1 = ctrl
trigger1 = p2bodydist x = [35,45]
trigger1 = p2bodydist y = [-60,0]
trigger1 = random < 100
trigger2 = command = "QCF_a"
trigger2 = movecontact
trigger2 = stateno = [200,499]

;---------------------------------------------------------------------------
;Tornado Hold (Medium Kick)
[State -1, Tornado Hold Medium]
type = ChangeState
value = 1310
triggerall = var(59) = 1
triggerall = var(0) = 0
triggerall = statetype != A
triggerall = (abs(var(58)) != [1300,1399])|| (Random < 100)
triggerall = (var(58) != [200,499]) || (Random < 200)
triggerall = (var(58) != [1000,3999]) || (Random < 300)
trigger1 = ctrl
trigger1 = p2bodydist x = [77,83]
trigger1 = p2bodydist y = [-60,0]
trigger1 = random < 150

;---------------------------------------------------------------------------
;Tornado Hold (Strong Kick)
[State -1, Tornado Hold Strong]
type = ChangeState
value = 1320
triggerall = var(59) = 1
triggerall = var(0) = 0
triggerall = statetype != A
triggerall = (abs(var(58)) != [1300,1399])|| (Random < 100)
triggerall = (var(58) != [200,499]) || (Random < 200)
triggerall = (var(58) != [1000,3999]) || (Random < 300)
trigger1 = ctrl
trigger1 = p2bodydist x = [132,138]
trigger1 = p2bodydist y = [-60,0]
trigger1 = random < 150

;---------------------------------------------------------------------------
;Leaf Shield (Weak Kick)
[State -1, Leaf Shield Weak]
type = ChangeState
value = 1400
triggerall = var(59) = 1
triggerall = (command = "QCF_a") || (command = "QCF_b") || (command = "QCF_c")
triggerall = var(0) = 2
triggerall = numhelper(1401) = 0
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = [200,499]

;---------------------------------------------------------------------------
;Leaf Shield Shoot
[State -1, Leaf Shield Weak]
type = ChangeState
value = ifelse(statetype = A, 1413, 1410)
triggerall = var(59) = 1
triggerall = (command = "QCF_a") || (command = "QCF_b") || (command = "QCF_c")
triggerall = var(0) = 2
triggerall = numhelper(1401) = 1
triggerall = helper(1401), stateno = 1401
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = [200,499]

;---------------------------------------------------------------------------
;Summon Rock Ball
[State -1, Summon Rock Ball]
type = ChangeState
value = 1500
triggerall = var(59) = 1
triggerall = var(0) != 1
triggerall = numhelper(1500) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2dist X > 160
trigger1 = enemy, ctrl = 0
trigger1 = random < 10

;---------------------------------------------------------------------------
;Summon Tornado Hold
[State -1, Summon Tornado Hold]
type = ChangeState
value = 1510
triggerall = var(59) = 1
triggerall = var(0) != 0
triggerall = numhelper(1500) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2dist X > 160
trigger1 = enemy, ctrl = 0
trigger1 = random < 10

;---------------------------------------------------------------------------
;Summon Leaf Shield
[State -1, Summon Leaf Shield]
type = ChangeState
value = 1520
triggerall = var(59) = 1
triggerall = var(0) != 2
triggerall = numhelper(1500) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2dist X > 160
trigger1 = enemy, ctrl = 0
trigger1 = random < 10

;---------------------------------------------------------------------------
;Recovery Roll (Short)
[State -1, Recovery Roll (Short)]
type = ChangeState
value = 1600
triggerall = var(59) = 1
triggerall = (stateno = 5101) || (stateno = 5110)
trigger1 = command = "HCF_a"
trigger2 = command = "HCF_x"

;===========================================================================
; AI Normal Moves
;===========================================================================
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) = 1
triggerall = (ctrl && statetype != A) || (stateno = 100) || (stateno = 105)
triggerall = (abs(var(58)) != 430)|| (Random < 100)
triggerall = (var(58) != [200,499]) || (Random < 200)
triggerall = (var(58) != [1000,3999]) || (Random < 300)
trigger1 = (p2statetype = C && Random < 333) || (p2statetype = S && Random < 667)
trigger1 = p2bodydist x = [0,31]
trigger1 = enemy, pos y = 0

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) = 1
triggerall = (ctrl && statetype != A) || (stateno = 100) || (stateno = 105)
triggerall = (abs(var(58)) != 440)|| (Random < 100)
triggerall = (var(58) != [200,499]) || (Random < 200)
triggerall = (var(58) != [1000,3999]) || (Random < 300)
trigger1 = (p2statetype = C && Random < 333) || (p2statetype = S && Random < 667)
trigger1 = p2bodydist x = [0,33]
trigger1 = enemy, pos y = 0

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = var(59) = 1
triggerall = (ctrl && statetype != A) || (stateno = 100) || (stateno = 105)
triggerall = (abs(var(58)) != 450)|| (Random < 100)
triggerall = (var(58) != [200,499]) || (Random < 200)
triggerall = (var(58) != [1000,3999]) || (Random < 300)
trigger1 = (p2statetype = C && Random < 333) || (p2statetype = S && Random < 667)
trigger1 = p2bodydist x = [0,40]
trigger1 = enemy, pos y = 0

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) = 1
triggerall = (ctrl && statetype != A) || (stateno = 100) || (stateno = 105)
triggerall = (abs(var(58)) != 400)|| (Random < 100)
triggerall = (var(58) != [200,499]) || (Random < 200)
triggerall = (var(58) != [1000,3999]) || (Random < 300)
trigger1 = (p2statetype = C && Random < 333) || (p2statetype = S && Random < 667)
trigger1 = p2bodydist x = [0,30]
trigger1 = enemy, pos y = 0

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) = 1
triggerall = (ctrl && statetype != A) || (stateno = 100) || (stateno = 105)
triggerall = (abs(var(58)) != 410)|| (Random < 100)
triggerall = (var(58) != [200,499]) || (Random < 200)
triggerall = (var(58) != [1000,3999]) || (Random < 300)
trigger1 = (p2statetype = C && Random < 333) || (p2statetype = S && Random < 667)
trigger1 = p2bodydist x = [0,32]
trigger1 = enemy, pos y = 0

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = var(59) = 1
triggerall = (ctrl && statetype != A) || (stateno = 100) || (stateno = 105)
triggerall = (abs(var(58)) != 420)|| (Random < 100)
triggerall = (var(58) != [200,499]) || (Random < 200)
triggerall = (var(58) != [1000,3999]) || (Random < 300)
trigger1 = (p2statetype = C && Random < 333) || (p2statetype = S && Random < 667)
trigger1 = p2bodydist x = [0,34]
trigger1 = enemy, pos y = 0

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) = 1
triggerall = (ctrl && statetype != A) || (stateno = 100) || (stateno = 105)
triggerall = (abs(var(58)) != 200)|| (Random < 100)
triggerall = (var(58) != [200,499]) || (Random < 200)
triggerall = (var(58) != [1000,3999]) || (Random < 300)
trigger1 = (p2statetype = C && Random < 667) || (p2statetype = S && Random < 333)
trigger1 = p2bodydist x = [0,30]
trigger1 = enemy, pos y = [-30,0]

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(59) = 1
triggerall = (ctrl && statetype != A) || (stateno = 100) || (stateno = 105)
triggerall = (abs(var(58)) != 210)|| (Random < 100)
triggerall = (var(58) != [200,499]) || (Random < 200)
triggerall = (var(58) != [1000,3999]) || (Random < 300)
trigger1 = (p2statetype = C && Random < 667) || (p2statetype = S && Random < 333)
trigger1 = p2bodydist x = [0,32]
trigger1 = enemy, pos y = [-30,0]

;---------------------------------------------------------------------------
Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59) = 1
triggerall = (ctrl && statetype != A) || (stateno = 100) || (stateno = 105)
triggerall = (abs(var(58)) != 220)|| (Random < 100)
triggerall = (var(58) != [200,499]) || (Random < 200)
triggerall = (var(58) != [1000,3999]) || (Random < 300)
trigger1 = (p2statetype = C && Random < 667) || (p2statetype = S && Random < 333)
trigger1 = p2bodydist x = [0,34]
trigger1 = enemy, pos y = [-30,0]

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) = 1
triggerall = (ctrl && statetype != A) || (stateno = 100) || (stateno = 105)
triggerall = (abs(var(58)) != 230)|| (Random < 100)
triggerall = (var(58) != [200,499]) || (Random < 200)
triggerall = (var(58) != [1000,3999]) || (Random < 300)
trigger1 = (p2statetype = C && Random < 667) || (p2statetype = S && Random < 333)
trigger1 = p2bodydist x = [0,31]
trigger1 = enemy, pos y = [-30,0]

;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) = 1
triggerall = (ctrl && statetype != A) || (stateno = 100) || (stateno = 105)
triggerall = (abs(var(58)) != 240)|| (Random < 100)
triggerall = (var(58) != [200,499]) || (Random < 200)
triggerall = (var(58) != [1000,3999]) || (Random < 300)
trigger1 = (p2statetype = C && Random < 667) || (p2statetype = S && Random < 333)
trigger1 = p2bodydist x = [0,33]
trigger1 = enemy, pos y = [-30,0]

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(59) = 1
triggerall = (ctrl && statetype != A) || (stateno = 100) || (stateno = 105)
triggerall = (abs(var(58)) != 250)|| (Random < 100)
triggerall = (var(58) != [200,499]) || (Random < 200)
triggerall = (var(58) != [1000,3999]) || (Random < 300)
trigger1 = (p2statetype = C && Random < 667) || (p2statetype = S && Random < 333)
trigger1 = p2bodydist x = [0,36]
trigger1 = enemy, pos y = [-30,0]

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = ctrl
trigger1 = p2bodydist x = [0,30]
trigger1 = p2bodydist y = [-50,20]

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = ctrl
trigger1 = p2bodydist x = [0,32]
trigger1 = p2bodydist y = [-50,20]

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = ctrl
trigger1 = p2bodydist x = [0,34]
trigger1 = p2bodydist y = [-50,20]

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = ctrl
trigger1 = p2bodydist x = [0,31]
trigger1 = p2bodydist y = [-50,20]

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = ctrl
trigger1 = p2bodydist x = [0,33]
trigger1 = p2bodydist y = [-50,20]

;---------------------------------------------------------------------------
;Jump Strong Kick Up
[State -1, Jump Strong Kick]
type = ChangeState
value = 655
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = ctrl
trigger1 = p2bodydist x = [0,38]
trigger1 = p2bodydist y = [-50,20]

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = ctrl
trigger1 = p2bodydist x = [0,36]
trigger1 = p2bodydist y = [-50,20]

;===========================================================================
; AI Misc
;===========================================================================
;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 110
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = command = "holdfwd"
trigger1 = ctrl
trigger1 = p2bodydist x > 120
trigger1 = random < 200

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger1 = stateno != 100
trigger1 = stateno != 105
trigger1 = Random < 50

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) = 1
triggerall = statetype = S
trigger1 = ctrl
trigger1 = stateno != 100
trigger1 = stateno != 105
trigger1 = Random < 20

;===========================================================================
; Non-AI Commands
;===========================================================================
;---------------------------------------------------------------------------
;Hyper Roll
[State -1, Hyper Roll]
type = ChangeState
value = 3000
triggerall = command = "QCF_PP"
triggerall = power >= 1000
triggerall = (numhelper(3011) = 0) &&  (numhelper(3112) = 0) &&  (numhelper(3211) = 0)
triggerall = var(59) = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;Rush Drill
[State -1, Rush Drill]
type = ChangeState
value = 3100
triggerall = command = "QCF_KK"
triggerall = power >= 1000
triggerall = numhelper(3112) = 0
triggerall = var(59) = 0
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Beat Plane
[State -1, Beat Plane]
type = ChangeState
value = 3200
triggerall = command = "QCB_KK"
triggerall = power >= 1000
triggerall = numhelper(3211) = 0
triggerall = var(59) = 0
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Buster
[State -1, Buster]
type = ChangeState
value = 1000
triggerall = (command = "QCF_x") || (command = "QCF_y") || (command = "QCF_z")
triggerall = numproj = 0
triggerall = statetype != A
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = [200,499]

;---------------------------------------------------------------------------
;Air Buster
[State -1, Air Buster]
type = ChangeState
value = 1010
triggerall = (command = "QCF_x") || (command = "QCF_y") || (command = "QCF_z")
triggerall = numproj = 0
triggerall = statetype = A
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = [600,699]

;---------------------------------------------------------------------------
;Throw Bouquet (Short)
[State -1, Throw Bouquet Short]
type = ChangeState
value = ifelse(statetype = A, 1130, 1100)
triggerall = command = "QCB_x"
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = [200,699]

;---------------------------------------------------------------------------
;Throw Bouquet (Medium)
[State -1, Throw Bouquet Medium]
type = ChangeState
value = ifelse(statetype = A, 1140, 1110)
triggerall = command = "QCB_y"
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = [200,699]

;---------------------------------------------------------------------------
;Throw Bouquet (Long)
[State -1, Throw Bouquet Long]
type = ChangeState
value = ifelse(statetype = A, 1150, 1120)
triggerall = command = "QCB_z"
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = [200,699]

;---------------------------------------------------------------------------
;Rock Ball (Weak Kick)
[State -1, Rock Ball Weak]
type = ChangeState
value = 1200
triggerall = command = "QCF_a"
triggerall = var(0) = 1
triggerall = statetype != A
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = [200,499]

;---------------------------------------------------------------------------
;Rock Ball (Medium Kick)
[State -1, Rock Ball Medium]
type = ChangeState
value = 1210
triggerall = command = "QCF_b"
triggerall = var(0) = 1
triggerall = statetype != A
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = [200,499]

;---------------------------------------------------------------------------
;Rock Ball (Strong Kick)
[State -1, Rock Ball Strong]
type = ChangeState
value = 1220
triggerall = command = "QCF_c"
triggerall = var(0) = 1
triggerall = statetype != A
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = [200,499]

;---------------------------------------------------------------------------
;Tornado Hold (Weak Kick)
[State -1, Tornado Hold Weak]
type = ChangeState
value = 1300
triggerall = command = "QCF_a"
triggerall = var(0) = 0
triggerall = statetype != A
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = [200,499]

;---------------------------------------------------------------------------
;Tornado Hold (Medium Kick)
[State -1, Tornado Hold Medium]
type = ChangeState
value = 1310
triggerall = command = "QCF_b"
triggerall = var(0) = 0
triggerall = statetype != A
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = [200,499]

;---------------------------------------------------------------------------
;Tornado Hold (Strong Kick)
[State -1, Tornado Hold Strong]
type = ChangeState
value = 1320
triggerall = command = "QCF_c"
triggerall = var(0) = 0
triggerall = statetype != A
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = [200,499]

;---------------------------------------------------------------------------
;Leaf Shield (Weak Kick)
[State -1, Leaf Shield Weak]
type = ChangeState
value = 1400
triggerall = (command = "QCF_a") || (command = "QCF_b") || (command = "QCF_c")
triggerall = var(0) = 2
triggerall = numhelper(1401) = 0
triggerall = statetype != A
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = [200,499]

;---------------------------------------------------------------------------
;Leaf Shield Shoot
[State -1, Leaf Shield Weak]
type = ChangeState
value = ifelse(statetype = A, 1413, 1410)
triggerall = (command = "QCF_a") || (command = "QCF_b") || (command = "QCF_c")
triggerall = var(0) = 2
triggerall = numhelper(1401) = 1
triggerall = helper(1401), stateno = 1401
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = [200,499]

;;---------------------------------------------------------------------------
;;Leaf Shield (Medium Kick)
;[State -1, Leaf Shield Medium]
;type = ChangeState
;value = 1400
;triggerall = var(0) = 2
;triggerall = command = "QCF_b"
;triggerall = var(59) = 0
;trigger1 = statetype != A
;trigger1 = ctrl

;;---------------------------------------------------------------------------
;;Leaf Shield (Strong Kick)
;[State -1, Leaf Shield Strong]
;type = ChangeState
;value = 1400
;triggerall = var(0) = 2
;triggerall = command = "QCF_c"
;triggerall = var(59) = 0
;trigger1 = statetype != A
;trigger1 = ctrl

;---------------------------------------------------------------------------
;Summon Rock Ball
[State -1, Summon Rock Ball]
type = ChangeState
value = 1500
triggerall = command = "QCB_a"
triggerall = numhelper(1500) = 0
triggerall = var(59) = 0
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Summon Tornado Hold
[State -1, Summon Tornado Hold]
type = ChangeState
value = 1510
triggerall = command = "QCB_b"
triggerall = numhelper(1500) = 0
triggerall = var(59) = 0
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Summon Leaf Shield
[State -1, Summon Leaf Shield]
type = ChangeState
value = 1520
triggerall = command = "QCB_c"
triggerall = numhelper(1500) = 0
triggerall = var(59) = 0
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Recovery Roll (Short)
[State -1, Recovery Roll (Short)]
type = ChangeState
value = 1600
triggerall = (stateno = 5101) || (stateno = 5110)
triggerall = var(59) = 0
trigger1 = command = "HCF_a"
trigger2 = command = "HCF_x"

;---------------------------------------------------------------------------
;Recovery Roll (Medium)
[State -1, Recovery Roll (Medium)]
type = ChangeState
value = 1610
triggerall = (stateno = 5101) || (stateno = 5110)
triggerall = var(59) = 0
trigger1 = command = "HCF_b"
trigger2 = command = "HCF_y"

;---------------------------------------------------------------------------
;Recovery Roll (Long)
[State -1, Recovery Roll (Lonn)]
type = ChangeState
value = 1620
triggerall = (stateno = 5101) || (stateno = 5110)
triggerall = var(59) = 0
trigger1 = command = "HCF_c"
trigger2 = command = "HCF_z"

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 110
triggerall = var(59) = 0
trigger1 = command = "DU"
trigger1 = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = command = "holdup"
trigger2 = stateno = 250
trigger2 = AnimElem = 9, >= 0
trigger2 = AnimElem = 10, < 0
trigger2 = MoveHit

;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = (command = "y") || (command = "z")
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = var(59) = 0
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;Air Throw
[State -1, Throw]
type = ChangeState
value = 830
triggerall = (command = "y") || (command = "z")
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = A)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = A)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;Call Striker
[State -1, Call Striker]
type = ChangeState
value = 7376
triggerall = command = "yb"
triggerall = statetype != A
triggerall = numpartner != 0
triggerall = partner, stateno = 8982
triggerall = partner, movetype = I
triggerall = partner, var(17) != 0
triggerall = var(59) = 0
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(59) = 0
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(59) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = 400) && MoveContact
trigger5 = (stateno = 430) && MoveContact

;---------------------------------------------------------------------------
Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = var(59) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = 210) && MoveContact
trigger5 = (stateno = 240) && MoveContact
trigger6 = (stateno = 400) && MoveContact
trigger7 = (stateno = 430) && MoveContact
trigger8 = (stateno = 410) && MoveContact
trigger9 = (stateno = 440) && MoveContact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = var(59) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 400) && MoveContact

;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(59) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = 210) && MoveContact
trigger5 = (stateno = 400) && MoveContact
trigger6 = (stateno = 430) && MoveContact
trigger7 = (stateno = 410) && MoveContact

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = var(59) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = 210) && MoveContact
trigger5 = (stateno = 240) && MoveContact
trigger6 = (stateno = 400) && MoveContact
trigger7 = (stateno = 430) && MoveContact
trigger8 = (stateno = 410) && MoveContact
trigger9 = (stateno = 440) && MoveContact

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = var(59) = 0
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Guard Push (Stand)
[State -1, Guard Push (Stand)]
type = ChangeState
value = 160
triggerall = stateno = 150
triggerall = command = "xyz"
triggerall = command != "holddown"
triggerall = var(59) = 0
trigger1 = statetype = S
ignorehitpause = 1

;---------------------------------------------------------------------------
;Guard Push (Crouch)
[State -1, Guard Push (Crouch)]
type = ChangeState
value = 161
triggerall = stateno = 152
triggerall = command = "xyz"
triggerall = var(59) = 0
trigger1 = statetype = C
ignorehitpause = 1

;---------------------------------------------------------------------------
;Guard Push (Air)
[State -1, Guard Push (Air)]
type = ChangeState
value = 162
triggerall = stateno = 154
triggerall = command = "xyz"
triggerall = var(59) = 0
trigger1 = statetype = A
ignorehitpause = 1

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(59) = 0
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = var(59) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = 400) && MoveContact
trigger5 = (stateno = 430) && MoveContact

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = var(59) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = 210) && MoveContact
trigger5 = (stateno = 240) && MoveContact
trigger6 = (stateno = 400) && MoveContact
trigger7 = (stateno = 430) && MoveContact
trigger8 = (stateno = 410) && MoveContact
trigger9 = (stateno = 440) && MoveContact

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(59) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 400) && MoveContact

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = var(59) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = 210) && MoveContact
trigger5 = (stateno = 400) && MoveContact
trigger6 = (stateno = 430) && MoveContact
trigger7 = (stateno = 410) && MoveContact

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = var(59) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = 210) && MoveContact
trigger5 = (stateno = 240) && MoveContact
trigger6 = (stateno = 400) && MoveContact
trigger7 = (stateno = 430) && MoveContact
trigger8 = (stateno = 410) && MoveContact
trigger9 = (stateno = 440) && MoveContact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = var(59) = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = var(59) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 630) && MoveContact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
triggerall = var(59) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 630) && MoveContact
trigger4 = (stateno = 610) && MoveContact
trigger5 = (stateno = 640) && MoveContact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = var(59) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = var(59) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 630) && MoveContact
trigger4 = (stateno = 610) && MoveContact

;---------------------------------------------------------------------------
;Jump Strong Kick Up
[State -1, Jump Strong Kick]
type = ChangeState
value = 655
triggerall = command = "c"
triggerall = command = "holdup"
triggerall = var(59) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 630) && MoveContact
trigger4 = (stateno = 610) && MoveContact
trigger5 = (stateno = 640) && MoveContact

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
triggerall = var(59) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 630) && MoveContact
trigger4 = (stateno = 610) && MoveContact
trigger5 = (stateno = 640) && MoveContact
