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

[Command]
name = "QCF_PP"
command = ~D, DF, F, x+z

[Command]
name = "QCF_PP"
command = ~D, DF, F, y+z

[Command]
name = "QCF_KK"
command = ~D, DF, F, a+b

[Command]
name = "QCF_KK"
command = ~D, DF, F, a+c

[Command]
name = "QCF_KK"
command = ~D, DF, F, b+c

[Command]
name = "upper_PP"
command = ~F, D, DF, x+y

[Command]
name = "upper_PP"
command = ~F, D, DF, x+z

[Command]
name = "upper_PP"
command = ~F, D, DF, y+z

;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_z"
command = ~F, D, DF, z

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
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "HCF_a"
command = ~B, DB, D, DF, F, a

[Command]
name = "HCF_b"
command = ~B, DB, D, DF, F, b

[Command]
name = "HCF_c"
command = ~B, DB, D, DF, F, c

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
name = "HCB_x"
command = ~F, DF, D, DB, B, x

[Command]
name = "HCB_y"
command = ~F, DF, D, DB, B, y

[Command]
name = "HCB_z"
command = ~F, DF, D, DB, B, z

[Command]
name = "HCB_xy"
command = ~F, DF, D, DB, B, x+y
time = 30

[Command]
name = "HCB_xz"
command = ~F, DF, D, DB, B, x+z
time = 30

[Command]
name = "HCB_yz"
command = ~F, DF, D, DB, B, y+z
time = 30

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
name = "FFU"
command = ~$F, U+F
time = 3

[Command]
name = "FFD"
command = ~$F, D+F
time = 3

[Command]
name = "DU"
command = $D, $U
time = 3

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

;-| Multiple Buttons |---------------------------------------------------------
[Command]
name = "abc"
command = a+b+c
time = 1

[Command]
name = "xyz"
command = x+y+z
time = 1

[Command]
name = "cz"
command = c+z
time = 1

[Command]
name = "PP"
command = x+y
time = 1

[Command]
name = "PP"
command = y+z
time = 1

[Command]
name = "PP"
command = x+z
time = 1

[Command]
name = "xa"
command = x+a
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

;-| Special |--------------------------------------------------------------
[Command]
name = "slumber"
command = x,b,B,y,c
time = 30

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
command = x,x,x,x
time = 0

[Command]
name = "AI12"
command = y,y,y,y
time = 0

[Command]
name = "AI13"
command = z,z,z,z
time = 0

[Command]
name = "AI14"
command = a,a,a,a
time = 0

[Command]
name = "AI15"
command = b,b,b,b
time = 0

[Command]
name = "AI16"
command = c,c,c,c
time = 0

[Command]
name = "AI17"
command = U,x,U,x
time = 0

[Command]
name = "AI18"
command = D,x,D,x
time = 0

[Command]
name = "AI19"
command = B,x,B,x
time = 0

[Command]
name = "AI20"
command = F,x,F,x
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
[State -1, Helper AssertSpecial]
type = AssertSpecial
trigger1 = isHelper(1000)
flag = noautoturn

[State -1, Helper NotHitBy]
type = NotHitBy
trigger1 = isHelper(1000)
value = SCA

[State -1, VarAdd]
type = VarAdd
triggerall = isHelper(1000)
trigger1 = stateno != [3601,3602]
v = 0
value = -1

[State -1, Helper Disappear]
type = ChangeState
triggerall = isHelper(1000)
triggerall = stateno != [3601,3604]
trigger1 = var(0) <= 0
trigger2 = RoundState = 3
value = 3604

[State -1, Helper Idle State]
type = ChangeState
triggerall = isHelper(1000)
triggerall = stateno != [3601,3602]
trigger1 = parent, stateno = [800,899]
trigger2 = parent, stateno = [1201,1299]
trigger3 = parent, stateno = [3204,3207]
trigger4 = parent, stateno = [3600,3699]
value = 3603

[State -1, Helper PosSet]
type = BindToParent
triggerall = isHelper(1000)
trigger1 = stateno != [3601,3604]
trigger2 = stateno = 3603
pos = (parent, P2Dist X) * 2, 0

[State -1, Helper Turn]
type = Turn
triggerall = isHelper(1000)
triggerall = facing = parent, facing
trigger1 = stateno != [3601,3604]
trigger2 = stateno = 3603

[State -1, Helper Change Anim]
type = ChangeAnim
trigger1 = isHelper(1000)
trigger1 = anim != parent, anim
trigger1 = stateno != [3601,3604]
value = parent, anim
elem = parent, animelemno(0)

[State -1, Helper Change State]
type = ChangeState
trigger1 = isHelper(1000)
trigger1 = stateno != parent, stateno
trigger1 = stateno != [3601,3604]
value = parent, stateno

;===========================================================================
; AI
;===========================================================================
;---------------------------------------------------------------------------
;Activate AI
[State -1, Activate AI]
type = VarSet
triggerall = var(59) = 0
triggerall = !isHelper
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
triggerall = var(59) = 2
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
; Custom AI for Shadow Dio
;===========================================================================
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = p2name = "Shadow DIO"
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2bodydist X = [0,50]
triggerall = ctrl
trigger1 = p2stateno = [2100, 2199]
trigger2 = p2stateno = [3000, 3099]
trigger3 = p2stateno = 1300

;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 110
triggerall = p2name = "Shadow DIO"
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = p2bodydist X != [0,50]
triggerall = ctrl
trigger1 = p2stateno = 2100 && enemy, time >= 40
trigger2 = p2stateno = 2101

;---------------------------------------------------------------------------
;Soul Fist
[State -1, Soul Fist]
type = ChangeState
value = 1000
triggerall = p2name = "Shadow DIO"
triggerall = var(59) = 1
triggerall = palno = [1,6]
triggerall = statetype != A
triggerall = p2bodydist X != [0,50]
triggerall = ctrl
trigger1 = p2stateno = [3000, 3099]
trigger2 = p2stateno = 1300

;---------------------------------------------------------------------------
;Soul Fist
[State -1, Soul Fist]
type = ChangeState
value = 1300
triggerall = p2name = "Shadow DIO"
triggerall = var(59) = 1
triggerall = palno = [10,12]
triggerall = statetype != A
triggerall = p2bodydist X != [0,50]
triggerall = ctrl
trigger1 = p2stateno = [3000, 3099]
trigger2 = p2stateno = 1300

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = p2name = "Shadow DIO"
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = stateno != 100
triggerall = ctrl
trigger1 = p2stateno = 270
trigger2 = p2bodydist X != [0,50]
trigger2 = p2stateno = 2100

;---------------------------------------------------------------------------
;Ctrl Set Off
[State -1, CtrlSet]
type = CtrlSet
triggerall = p2name = "Shadow DIO"
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = stateno = 100
trigger1 = p2stateno = 270
trigger2 = p2bodydist X != [0,50]
trigger2 = p2stateno = 2100
value = 0

;---------------------------------------------------------------------------
;Ctrl Set On
[State -1, CtrlSet]
type = CtrlSet
triggerall = p2name = "Shadow DIO"
triggerall = (var(59) = 1) || (var(59) = 5)
triggerall = statetype != A
triggerall = stateno = 100
trigger1 = Anim = 101
trigger1 = AnimTime = 0
trigger2 = p2bodydist X = [0,50]
trigger2 = p2stateno = 2100
value = 1

;---------------------------------------------------------------------------
;Activate Dodge AI
[State -1, Activate AI]
type = VarSet
triggerall = p2name = "Shadow DIO"
triggerall = var(59) = 1
trigger1 = p2stateno = 1200
trigger2 = p2stateno = 270
v = 59
value = 5

;---------------------------------------------------------------------------
;Deactivate Dodge AI
[State -1, Deactivate AI]
type = VarSet
triggerall = p2name = "Shadow DIO"
triggerall = var(59) = 5
trigger1 = p2stateno != 1200
trigger1 = p2stateno != 270
v = 59
value = 1

;---------------------------------------------------------------------------
;Guard (Crouching)
[State -1, Guard (Crouching)]
type = ChangeState
value = 131
triggerall = p2name = "Shadow DIO"
triggerall = (var(59) = 1) || (var(59) = [4,5])
triggerall = statetype != A
triggerall = ctrl
triggerall = p2statetype != A
trigger1 = p2movetype = A
trigger1 = enemy, MoveGuarded = 0
trigger2 = enemy, NumProj != 0
trigger3 = enemy, NumHelper != 0

;---------------------------------------------------------------------------
;Guard (Standing)
[State -1, Guard (Standing)]
type = ChangeState
value = 130
triggerall = p2name = "Shadow DIO"
triggerall = (var(59) = 1) || (var(59) = [4,5])
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2stateno = [2000, 2099]
trigger2 = p2stateno = [2200, 2299]

;===========================================================================
; Custom AI for Wolverine
;===========================================================================
;---------------------------------------------------------------------------
;Roll (Long)
[State -1, Roll (Lonn)]
type = ChangeState
value = 1520
triggerall = p2name = "Wolverine"
triggerall = var(59) = 1
triggerall = (stateno = 5101) || (stateno = 5110)
trigger1 = p2bodydist X = [0,60]

;---------------------------------------------------------------------------
;Shadow Wave C
[State -1, Shadow Wave C]
type = ChangeState
value = 1120
triggerall = p2name = "Wolverine"
triggerall = var(59) = 1
trigger1 = var(2) = 0
trigger1 = ctrl
trigger1 = p2stateno = 680
trigger1 = p2bodydist X = [30,150]
trigger1 = 2*p2bodydist X + p2bodydist Y = [-40,40]

;;---------------------------------------------------------------------------
;;Guard (Crouching)
;[State -1, Guard (Crouching)]
;type = ChangeState
;value = 131
;triggerall = p2name = "Wolverine"
;triggerall = var(59) = 1
;triggerall = statetype != A
;triggerall = ctrl
;trigger1 = p2stateno = 410

;;---------------------------------------------------------------------------
;;Guard (Standing)
;[State -1, Guard (Standing)]
;type = ChangeState
;value = 130
;triggerall = p2name = "Wolverine"
;triggerall = var(59) = 1
;triggerall = statetype != A
;triggerall = ctrl
;trigger1 = p2stateno = [6600, 6699]
;trigger2 = p2stateno = 200
;trigger3 = p2stateno = 680

;---------------------------------------------------------------------------
;Guard Push (Stand)
[State -1, Guard Push (Stand)]
type = ChangeState
value = 160
triggerall = p2name = "Wolverine"
triggerall = var(59) = 1
trigger1 = p2stateno = [0,999]
trigger1 = stateno = 150
ignorehitpause = 1

;---------------------------------------------------------------------------
;Guard Push (Crouch)
[State -1, Guard Push (Crouch)]
type = ChangeState
value = 161
triggerall = p2name = "Wolverine"
triggerall = var(59) = 1
trigger1 = p2stateno = [0,999]
trigger1 = stateno = 152
ignorehitpause = 1

;---------------------------------------------------------------------------
;Guard Push (Air)
[State -1, Guard Push (Air)]
type = ChangeState
value = 162
triggerall = p2name = "Wolverine"
triggerall = var(59) = 1
trigger1 = p2stateno = [0,999]
trigger1 = stateno = 154
ignorehitpause = 1

;===========================================================================
; Custom AI for Oni Chiduru
;===========================================================================
;---------------------------------------------------------------------------
;Guard (Crouching)
[State -1, Guard (Crouching)]
type = ChangeState
value = 131
triggerall = p2name = "kasiwagi_chiduru"
triggerall = (var(59) = 1) || (var(59) = [4,5])
triggerall = statetype != A
triggerall = ctrl
triggerall = p2statetype != A
trigger1 = p2movetype = A
trigger2 = enemy, NumProj != 0

;---------------------------------------------------------------------------
;Guard (Standing)
[State -1, Guard (Standing)]
type = ChangeState
value = 130
triggerall = p2name = "kasiwagi_chiduru"
triggerall = (var(59) = 1) || (var(59) = [4,5])
triggerall = statetype != A
triggerall = ctrl
triggerall = p2statetype = A
trigger1 = p2movetype = A
trigger2 = enemy, NumProj != 0

;---------------------------------------------------------------------------
;Guard (Air)
[State -1, Guard (Air)]
type = ChangeState
value = 132
triggerall = p2name = "kasiwagi_chiduru"
triggerall = (var(59) = 1) || (var(59) = [4,5])
triggerall = statetype = A
triggerall = ctrl
trigger1 = p2movetype = A
trigger2 = enemy, NumProj != 0

;===========================================================================
; Custom AI for Goro Daimon X
;===========================================================================
;---------------------------------------------------------------------------
;Darkness Illusion
[State -1, Darkness Illusion]
type = ChangeState
value = 3200
triggerall = p2name = "Goro Daimon"
triggerall = var(59) = 1
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger1 = p2stateno = 5300

;---------------------------------------------------------------------------
;Soul Fist Air
[State -1, Soul Fist Air]
type = ChangeState
value = 1010
triggerall = p2name = "Goro Daimon"
triggerall = var(59) = 1
triggerall = palno = [1,6]
triggerall = statetype = A
trigger1 = ctrl
trigger1 = p2dist X - p2dist Y = [-20,20]
trigger1 = p2bodydist X > 0
trigger1 = var(2) = 1

;---------------------------------------------------------------------------
;Soul Fist Air
[State -1, Soul Fist Air]
type = ChangeState
value = 1310
triggerall = p2name = "Goro Daimon"
triggerall = var(59) = 1
triggerall = palno = [10,12]
triggerall = statetype = A
trigger1 = ctrl
trigger1 = p2dist X - p2dist Y = [-20,20]
trigger1 = p2bodydist X > 0
trigger1 = var(2) = 1

;---------------------------------------------------------------------------
;Activate Dodge AI
[State -1, Activate AI]
type = VarSet
triggerall = p2name = "Goro Daimon"
triggerall = var(59) = 1
trigger1 = p2stateno = 1020
v = 59
value = 5

;---------------------------------------------------------------------------
;Deactivate Dodge AI
[State -1, Deactivate AI]
type = VarSet
triggerall = p2name = "Goro Daimon"
triggerall = var(59) = 5
trigger1 = p2stateno != 1020
v = 59
value = 1

;---------------------------------------------------------------------------
;Vector Drain
[State -1, Vector Drain]
type = ChangeState
value = 1200
triggerall = p2name = "Goro Daimon"
triggerall = (var(59) = 1) || (var(59) = 5)
triggerall = statetype != A
triggerall = ctrl
triggerall = p2stateno != [5000,5299]
trigger1 = p2bodydist X = [0,10]
trigger1 = p2bodydist Y = 0
trigger1 = p2movetype != H
trigger1 = !(p2movetype = A && enemy, vel x >= 8)
trigger2 = p2stateno = 3000
trigger2 = p2bodydist X = [0,30]

;---------------------------------------------------------------------------
;Throw A
[State -1, Throw B]
type = ChangeState
value = 800
triggerall = p2name = "Goro Daimon"
triggerall = (var(59) = 1) || (var(59) = 5)
triggerall = statetype != A
triggerall = ctrl
triggerall = p2stateno != [5000,5299]
trigger1 = p2bodydist X = [0,15]
trigger1 = p2bodydist Y = 0
trigger1 = p2movetype != H
trigger1 = Random < 250
trigger1 = !(p2movetype = A && enemy, vel x >= 8)

;---------------------------------------------------------------------------
;Soul Eraser
[State -1, Soul Eraser]
type = ChangeState
value = 3000
triggerall = p2name = "Goro Daimon"
triggerall = palno = [1,6]
triggerall = power >= 1000
triggerall = statetype != A
triggerall = ctrl
trigger1 = var(59) = 1
trigger1 = p2bodydist x > 100
trigger1 = p2bodydist y = [-20,0]
trigger1 = p2movetype = I
trigger1 = p2statetype = A
trigger1 = p2stateno != [1000,1005]
trigger2 = var(59) = 1
trigger2 = p2bodydist x = [80,150]
trigger2 = p2bodydist y = [-20,0]
trigger2 = p2movetype = I
trigger2 = enemy, ctrl = 0 && p2stateno != [120,159]
trigger2 = p2stateno != [1000,1005]
trigger3 = var(59) = 1
trigger3 = p2bodydist x > 200
trigger3 = p2bodydist y = [-20,0]
trigger3 = p2movetype = A
trigger3 = p2stateno != [1000,1005]
trigger4 = var(59) = 5
trigger4 = p2bodydist x > 100
trigger4 = p2bodydist y = [-20,0]

;---------------------------------------------------------------------------
;Brilliant Shower
[State -1, Brilliant Shower]
type = ChangeState
value = 3400
triggerall = p2name = "Goro Daimon"
triggerall = palno = [10,12]
triggerall = power >= 1000
triggerall = statetype != A
triggerall = ctrl
trigger1 = var(59) = 1
trigger1 = p2bodydist x > 100
trigger1 = p2bodydist y = [-20,0]
trigger1 = p2movetype = I
trigger1 = p2statetype = A
trigger1 = p2stateno != [1000,1005]
trigger2 = var(59) = 1
trigger2 = p2bodydist x = [80,150]
trigger2 = p2bodydist y = [-20,0]
trigger2 = p2movetype = I
trigger2 = enemy, ctrl = 0 && p2stateno != [120,159]
trigger2 = p2stateno != [1000,1005]
trigger3 = var(59) = 1
trigger3 = p2bodydist x > 200
trigger3 = p2bodydist y = [-20,0]
trigger3 = p2movetype = A
trigger3 = p2stateno != [1000,1005]
trigger4 = var(59) = 5
trigger4 = p2bodydist x > 100
trigger4 = p2bodydist y = [-20,0]

;---------------------------------------------------------------------------
;Guard (Crouching)
[State -1, Guard (Crouching)]
type = ChangeState
value = 131
triggerall = p2name = "Goro Daimon"
triggerall = (var(59) = 1) || (var(59) = [4,5])
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2stateno = [1000,1005]
trigger2 = p2stateno = 220

;===========================================================================
; AI Miss Move Reaction
;===========================================================================
;===========================================================================
; AI Throw
;===========================================================================
;---------------------------------------------------------------------------
;Vector Drain
[State -1, Vector Drain]
type = ChangeState
value = 1200
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = ctrl
triggerall = p2stateno != [5000,5299]
triggerall = ((abs(var(58)) != [800,899]) && (abs(var(58)) != 1200)) || (Random < 100)
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = p2bodydist X = [0,2]
trigger1 = p2bodydist Y = 0
trigger1 = p2movetype != H
trigger1 = !(p2movetype = A && enemy, vel x >= 8)

;---------------------------------------------------------------------------
;Throw B
[State -1, Throw B]
type = ChangeState
value = 830
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = ctrl
triggerall = p2stateno != [5000,5299]
triggerall = ((abs(var(58)) != [800,899]) && (abs(var(58)) != 1200)) || (Random < 100)
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = p2bodydist X = [0,6]
trigger1 = p2bodydist Y = 0
trigger1 = p2movetype != H
trigger1 = Random < 250
trigger1 = !(p2movetype = A && enemy, vel x >= 8)

;---------------------------------------------------------------------------
;Throw A
[State -1, Throw A]
type = ChangeState
value = 800
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = ctrl
triggerall = p2stateno != [5000,5299]
triggerall = ((abs(var(58)) != [800,899]) && (abs(var(58)) != 1200)) || (Random < 100)
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = p2bodydist X = [0,6]
trigger1 = p2bodydist Y = 0
trigger1 = p2movetype != H
trigger1 = !(p2movetype = A && enemy, vel x >= 8)

;---------------------------------------------------------------------------
;Air Throw
[State -1, Throw]
type = ChangeState
value = 860
triggerall = var(59) = 1
triggerall = statetype = A
triggerall = ctrl
triggerall = p2stateno != [5000,5299]
trigger1 = p2bodydist X < 6
trigger1 = p2bodydist Y = [-6,6]
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
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = ctrl
trigger1 = p2bodydist X = [0,50]
trigger1 = p2dist Y = [-5,0]
trigger1 = !(p2movetype = A && enemy, vel x >= 6)
trigger1 = p2stateno != [200,210]
trigger1 = p2stateno != [400,410]
trigger1 = p2stateno != 230
trigger1 = p2stateno != 430

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) = 1
triggerall = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist X + (vel X)*2 = [0,30]
trigger1 = p2dist Y - (vel Y)*2 = [-40,70]

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) = 1
triggerall = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist X + (vel X)*2 = [0,40]
trigger1 = p2dist Y - (vel Y)*4 = [-40,70]
trigger2 = stateno = 600
trigger2 = movehit

;---------------------------------------------------------------------------
;Darkness Illusion
[State -1, Darkness Illusion]
type = ChangeState
value = 3200
triggerall = var(59) = 1
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger1 = p2dist X = [0,70]
trigger1 = p2dist Y = [-10,0]
trigger1 = p2movetype = I
trigger1 = enemy, ctrl = 0
trigger1 = p2name != "Goro Daimon"

;===========================================================================
; AI Guard
;===========================================================================
;;---------------------------------------------------------------------------
;;Guard (ChangeToCrouching)
;[State -1, Guard (ChangeToCrouching)]
;type = ChangeState
;value = 152
;triggerall = (var(59) = 1) || (var(59) = [4,5])
;triggerall = stateno = 150
;triggerall = p2statetype = C
;trigger1 = p2movetype = A
;trigger2 = enemy, NumProj != 0

;;---------------------------------------------------------------------------
;;Guard (ChangeToStanding)
;[State -1, Guard (ChangeToStanding)]
;type = ChangeState
;value = 150
;triggerall = (var(59) = 1) || (var(59) = [4,5])
;triggerall = stateno = 152
;triggerall = p2statetype = C
;trigger1 = p2movetype = A
;trigger2 = enemy, NumProj != 0

;;---------------------------------------------------------------------------
;;Guard (Crouching)
;[State -1, Guard (Crouching)]
;type = ChangeState
;value = 131
;triggerall = (var(59) = 1) || (var(59) = [4,5])
;triggerall = statetype != A
;triggerall = ctrl
;triggerall = p2statetype = C
;trigger1 = p2movetype = A
;trigger1 = enemy, MoveGuarded = 0
;trigger2 = enemy, NumProj != 0

;;---------------------------------------------------------------------------
;;Guard (Standing)
;[State -1, Guard (Standing)]
;type = ChangeState
;value = 130
;triggerall = var(59) = 1
;triggerall = statetype != A
;triggerall = ctrl
;triggerall = p2statetype != C
;trigger1 = p2movetype = A
;trigger1 = enemy, MoveGuarded = 0
;trigger2 = enemy, NumProj != 0

;;---------------------------------------------------------------------------
;;Guard (Air)
;[State -1, Guard (Air)]
;type = ChangeState
;value = 132
;triggerall = var(59) = 1
;triggerall = statetype = A
;triggerall = ctrl
;trigger1 = p2movetype = A
;trigger1 = enemy, MoveGuarded = 0
;trigger2 = enemy, NumProj != 0

;===========================================================================
; LieDown AI
;===========================================================================
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) = 4
triggerall = statetype != A
triggerall = p2statetype != L
trigger1 = ctrl
trigger1 = p2bodydist X = [0,50]
trigger1 = p2dist Y = [-5,0]
trigger1 = p2stateno = 5120
trigger1 = enemy, animtime = -3

;===========================================================================
; AI Ground Combo
;===========================================================================
;---------------------------------------------------------------------------
;Aerial Rave On
[State -1, Aerial Rave On]
type = VarSet
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = stateno = 420
trigger1 = AnimElem = 5, >= 5;2
trigger1 = AnimElem = 6, < 0
trigger1 = MoveHit
v = 59
value = 3

;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 110
triggerall = var(59) = 3
triggerall = statetype != A
trigger1 = stateno = 420
trigger1 = AnimElem = 5, >= 5;2
trigger1 = AnimElem = 6, < 0
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
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = movehit
trigger1 = (stateno = [200,210]) || (stateno = [230,240]) || (stateno = [400,410]) || (stateno = [430,440])
trigger1 = p2bodydist X = [30,40]
trigger1 = p2dist Y = [-10,0]
trigger2 = (stateno = 240) || (stateno = 440)
trigger2 = movehit
trigger2 = p2bodydist X = [0,40]
trigger2 = p2dist Y = [-10,0]

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
triggerall = p2dist y = 0
triggerall = random < 500
trigger1 = stateno = 230
trigger2 = stateno = 430

;---------------------------------------------------------------------------
;Crouching Strong Punch Forwards
[State -1, Crouching Strong Punch Forwards]
type = ChangeState
value = 425
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
triggerall = p2dist y = 0
triggerall = random < 250
trigger1 = stateno = 240
trigger2 = stateno = 440

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
triggerall = p2dist y = 0
triggerall = random < 500
trigger1 = stateno = 200
trigger2 = stateno = 400

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
triggerall = p2dist y = 0
triggerall = random < 500
trigger1 = stateno = 210
trigger2 = stateno = 410

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
triggerall = p2dist y = 0
triggerall = random < 250
trigger1 = stateno = 240
trigger2 = stateno = 440

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 230
trigger2 = stateno = 430

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
triggerall = random < 500
trigger1 = stateno = 240
trigger2 = stateno = 440

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 200
trigger2 = stateno = 400

;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 210
trigger2 = stateno = 410

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = movecontact
trigger1 = stateno = 240
trigger2 = stateno = 440

;---------------------------------------------------------------------------
;Silhouette Illusion
[State -1, Silhouette Illusion]
type = ChangeState
value = 3100
triggerall = var(59) = 1
triggerall = power >= 1000
triggerall = statetype != A
triggerall = movehit
triggerall = p2dist x = [0,100]
triggerall = p2name != "kasiwagi_chiduru"
trigger1 = stateno = 220
trigger2 = stateno = 250
trigger3 = stateno = 425

;---------------------------------------------------------------------------
;Soul Fist
[State -1, Soul Fist]
type = ChangeState
value = 1000
triggerall = var(59) = 1
triggerall = palno = [1,6]
triggerall = statetype != A
triggerall = movecontact
triggerall = p2name != "kasiwagi_chiduru"
trigger1 = stateno = 220
trigger2 = stateno = 250
trigger3 = stateno = 425

;---------------------------------------------------------------------------
;Soul Fist
[State -1, Soul Fist]
type = ChangeState
value = 1300
triggerall = var(59) = 1
triggerall = palno = [10,12]
triggerall = statetype != A
triggerall = movecontact
triggerall = p2name != "kasiwagi_chiduru"
trigger1 = stateno = 220
trigger2 = stateno = 250
trigger3 = stateno = 425

;===========================================================================
; AI Jump Aerial Rave
;===========================================================================
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = (var(59) = 1) || (var(59) = 3)
triggerall = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist X = [-30,40]
trigger1 = p2dist Y - (vel Y) = [-60,30]

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) = 1
triggerall = statetype = A
trigger1 = stateno = 630
trigger1 = movehit

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) = 1
triggerall = statetype = A
trigger1 = stateno = 600
trigger1 = movehit

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(59) = 1
triggerall = statetype = A
trigger1 = stateno = 610
trigger1 = movehit

;===========================================================================
; AI Super Moves
;===========================================================================
;---------------------------------------------------------------------------
;Silhouette Illusion
[State -1, Silhouette Illusion]
type = ChangeState
value = 3100
triggerall = var(59) = 1
triggerall = palno = [1,6]
triggerall = power >= 1000
triggerall = statetype != A
triggerall = p2name != "kasiwagi_chiduru"
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = (stateno = 220) || (stateno = 250)
trigger1 = movehit
trigger1 = p2dist x = [0,100]

;---------------------------------------------------------------------------
;Silhouette Illusion
[State -1, Silhouette Illusion]
type = ChangeState
value = 3500
triggerall = var(59) = 1
triggerall = palno = [10,12]
triggerall = power >= 1000
triggerall = statetype != A
triggerall = p2name != "kasiwagi_chiduru"
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = (stateno = 220) || (stateno = 250)
trigger1 = movehit
trigger1 = p2dist x = [0,100]

;---------------------------------------------------------------------------
;Soul Eraser
[State -1, Soul Eraser]
type = ChangeState
value = 3000
triggerall = var(59) = 1
triggerall = palno = [1,6]
triggerall = power >= 1000
triggerall = statetype != A
triggerall = (abs(var(58)) != 3000) || (Random < 50)
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = p2bodydist x > 100
trigger1 = p2bodydist y = [-20,0]
trigger1 = p2movetype = I
trigger1 = p2stateno != [120,159]
trigger1 = (enemy, ctrl = 0) || (time = 0 && random < 100)
trigger1 = ctrl
trigger1 = p2name != "Goro Daimon"
trigger2 = p2bodydist x > 200
trigger2 = p2bodydist y = [-20,0]
trigger2 = p2movetype = A
trigger2 = ctrl
trigger2 = p2name != "Goro Daimon"

;---------------------------------------------------------------------------
;Brilliant Shower
[State -1, Soul Eraser]
type = ChangeState
value = 3400
triggerall = var(59) = 1
triggerall = palno = [10,12]
triggerall = power >= 1000
triggerall = statetype != A
triggerall = (abs(var(58)) != 3000) || (Random < 50)
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = p2bodydist x > 100
trigger1 = p2bodydist y = [-20,0]
trigger1 = p2movetype = I
trigger1 = p2stateno != [120,159]
trigger1 = (enemy, ctrl = 0) || (time = 0 && random < 100)
trigger1 = ctrl
trigger1 = p2name != "Goro Daimon"
trigger2 = p2bodydist x > 200
trigger2 = p2bodydist y = [-20,0]
trigger2 = p2movetype = A
trigger2 = ctrl
trigger2 = p2name != "Goro Daimon"

;---------------------------------------------------------------------------
;Darkness Illusion
[State -1, Darkness Illusion]
type = ChangeState
value = 3200
triggerall = var(59) = 1
triggerall = power >= 1000
triggerall = statetype != A
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = ctrl
trigger1 = p2dist X = [0,50]
trigger1 = p2dist Y = [-10,0]
trigger1 = p2movetype = I
trigger1 = enemy, ctrl = 0
trigger1 = p2name != "Goro Daimon"

;---------------------------------------------------------------------------
;Darkness Illusion (Air)
[State -1, Darkness Illusion (Air)]
type = ChangeState
value = 3250
triggerall = var(59) = 1
triggerall = power >= 1000
triggerall = statetype = A
trigger1 = ctrl
trigger1 = p2dist X = [0,50]
trigger1 = p2dist Y = [-10,10]
trigger1 = p2movetype = I
trigger1 = enemy, ctrl = 0

;---------------------------------------------------------------------------
;Eternal Slumber
[State -1, Eternal Slumber]
type = ChangeState
value = 3300
triggerall = var(59) = 1
triggerall = power >= 3000
triggerall = statetype != A
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = ctrl
trigger1 = p2movetype = I
trigger1 = p2dist X = [0,60]
trigger1 = p2dist Y = [0,10]

;===========================================================================
; AI Special Moves
;===========================================================================
;---------------------------------------------------------------------------
;Shadow Wave A
[State -1, Shadow Wave A]
type = ChangeState
value = 1100
triggerall = var(59) = 1
trigger1 = var(2) = 0
trigger1 = ctrl
trigger1 = p2statetype = A
trigger1 = p2dist X = [0,30]
trigger1 = p2bodydist X + p2bodydist Y = [-20,20]
trigger1 = p2stateno != [5050,5080]

;---------------------------------------------------------------------------
;Shadow Wave B
[State -1, Shadow Wave B]
type = ChangeState
value = 1110
triggerall = var(59) = 1
trigger1 = var(2) = 0
trigger1 = ctrl
trigger1 = p2statetype = A
trigger1 = p2dist X = [0,60]
trigger1 = p2bodydist X + p2bodydist Y = [-30,30]
trigger1 = p2stateno != [5050,5080]

;---------------------------------------------------------------------------
;Shadow Wave C
[State -1, Shadow Wave C]
type = ChangeState
value = 1120
triggerall = var(59) = 1
trigger1 = var(2) = 0
trigger1 = ctrl
trigger1 = p2statetype = A
trigger1 = p2dist X = [0,90]
trigger1 = p2bodydist X + p2bodydist Y = [-40,40]
trigger1 = p2stateno != [5050,5080]

;---------------------------------------------------------------------------
;Soul Fist
[State -1, Soul Fist]
type = ChangeState
value = 1000
triggerall = var(59) = 1
triggerall = palno = [1,6]
triggerall = numproj = 0
triggerall = statetype != A
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = ctrl
trigger1 = p2bodydist X > 100
trigger1 = p2bodydist Y = [-20,10]
trigger1 = Random < 25
trigger1 = p2name != "Goro Daimon"

;---------------------------------------------------------------------------
;Soul Fist
[State -1, Soul Fist]
type = ChangeState
value = 1300
triggerall = var(59) = 1
triggerall = palno = [10,12]
triggerall = numproj = 0
triggerall = statetype != A
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = ctrl
trigger1 = p2bodydist X > 100
trigger1 = p2bodydist Y = [-20,10]
trigger1 = Random < 25
trigger1 = p2name != "Goro Daimon"

;---------------------------------------------------------------------------
;Soul Fist Air
[State -1, Soul Fist Air]
type = ChangeState
value = 1010
triggerall = var(59) = 1
triggerall = palno = [1,6]
triggerall = statetype = A
triggerall = Random < 50
trigger1 = ctrl
trigger1 = p2dist X - p2dist Y = [-20,20]
trigger1 = p2bodydist X = [90,160]
trigger1 = vel Y > -9
trigger2 = ctrl
trigger2 = p2dist X - p2dist Y = [-20,20]
trigger2 = p2bodydist X > 160
trigger2 = random < 100
trigger2 = vel Y > -7
trigger2 = ctrl
trigger3 = ctrl
trigger3 = p2dist X - p2dist Y = [-20,20]
trigger3 = vel Y > 5
trigger4 = movehit
trigger4 = stateno = 640

;---------------------------------------------------------------------------
;Soul Fist Air
[State -1, Soul Fist Air]
type = ChangeState
value = 1310
triggerall = var(59) = 1
triggerall = palno = [10,12]
triggerall = statetype = A
triggerall = Random < 50
trigger1 = ctrl
trigger1 = p2dist X - p2dist Y = [-20,20]
trigger1 = p2bodydist X = [90,160]
trigger1 = vel Y > -9
trigger2 = ctrl
trigger2 = p2dist X - p2dist Y = [-20,20]
trigger2 = p2bodydist X > 160
trigger2 = random < 100
trigger2 = vel Y > -7
trigger2 = ctrl
trigger3 = ctrl
trigger3 = p2dist X - p2dist Y = [-20,20]
trigger3 = vel Y > 5
trigger4 = movehit
trigger4 = stateno = 640

;===========================================================================
; AI Normal Moves
;===========================================================================
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = (abs(var(58)) != 430) || (Random < 50)
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = ctrl
trigger1 = p2bodydist X = [0,50]
trigger1 = p2dist Y = [-5,0]

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = (abs(var(58)) != 440) || (Random < 50)
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = ctrl
trigger1 = p2bodydist X = [0,60]
trigger1 = p2dist Y = [-5,0]

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = (abs(var(58)) != 450) || (Random < 50)
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = ctrl
trigger1 = p2bodydist X = [0,70]
trigger1 = p2dist Y = [-5,0]

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = (abs(var(58)) != 499) || (Random < 50)
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = ctrl
trigger1 = p2bodydist X = [0,12]
trigger1 = p2dist Y = [-5,0]

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = (abs(var(58)) != 410) || (Random < 50)
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = ctrl
trigger1 = p2bodydist X = [0,22]
trigger1 = p2dist Y = [-5,0]

;---------------------------------------------------------------------------
;Crouching Strong Punch Forward
[State -1, Crouching Strong Punch]
type = ChangeState
value = 425
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = (abs(var(58)) != 425) || (Random < 50)
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = ctrl
trigger1 = p2bodydist X = [0,75]
trigger1 = p2dist Y = [-5,0]

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = (abs(var(58)) != 420) || (Random < 50)
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = ctrl
trigger1 = p2bodydist X = [0,32]
trigger1 = p2dist Y = [-10,0]

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) = 1
triggerall = statetype = S
triggerall = (abs(var(58)) != 200) || (Random < 50)
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = ctrl
trigger1 = p2bodydist X = [0,20]
trigger1 = p2dist Y = [-5,0]

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(59) = 1
triggerall = statetype = S
triggerall = (abs(var(58)) != 210) || (Random < 50)
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = ctrl
trigger1 = p2bodydist X = [0,25]
trigger1 = p2dist Y = [-10,0]

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59) = 1
triggerall = statetype = S
triggerall = (abs(var(58)) != 220) || (Random < 50)
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = ctrl
trigger1 = p2bodydist X = [0,35]
trigger1 = p2dist Y = [-10,0]

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = (abs(var(58)) != 230) || (Random < 50)
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = ctrl
trigger1 = p2bodydist X = [0,20]
trigger1 = p2dist Y = [-5,0]

;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = (abs(var(58)) != 240) || (Random < 50)
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = ctrl
trigger1 = p2bodydist X = [0,30]
trigger1 = p2dist Y = [-10,0]

;---------------------------------------------------------------------------
;Standing Strong Kick Forward
[State -1, Standing Strong Kick Forward]
type = ChangeState
value = 255
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = (abs(var(58)) != 255) || (Random < 50)
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = ctrl
trigger1 = p2bodydist X = [0,16]
trigger1 = p2dist Y = 0
trigger2 = stateno = 240
trigger2 = movehit

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = (abs(var(58)) != 250) || (Random < 50)
triggerall = (var(58) != [200,499]) || (Random < 10)
triggerall = (var(58) != [1000,3999]) || (Random < 15)
trigger1 = ctrl
trigger1 = p2bodydist X = [0,40]
trigger1 = p2dist Y = [-20,0]

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) = 1
triggerall = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist X = [0,30]
trigger1 = p2dist Y - (vel Y)*4 = [-40,30]

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) = 1
triggerall = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist X + (vel X)*4 = [0,40]
trigger1 = p2dist Y - (vel Y)*4 = [-40,30]

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(59) = 1
triggerall = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist X + (vel X)*6 = [0,80]
trigger1 = p2dist Y - (vel Y)*6 = [-40,30]

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) = 1
triggerall = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist X + (vel X)*4 = [0,35]
trigger1 = p2dist Y - (vel Y)*4 = [-40,30]

;;---------------------------------------------------------------------------
;;Jump Medium Kick Down
;[State -1, Jump Strong Kick Down]
;type = ChangeState
;value = 645
;triggerall = var(59) = 1
;triggerall = statetype = A
;trigger1 = ctrl
;trigger1 = p2bodydist X + (vel X)*4 = [0,45]
;trigger1 = p2dist Y = [0,5]
;trigger2 = stateno = 610
;trigger2 = movehit

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = var(59) = 1
triggerall = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist X + (vel X)*4 = [0,70]
trigger1 = p2dist Y - (vel Y)*4 = [-40,30]

;---------------------------------------------------------------------------
;Jump Strong Kick Down
[State -1, Jump Strong Kick Down]
type = ChangeState
value = 655
triggerall = var(59) = 1
triggerall = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist X = [-8,8]
trigger1 = p2dist Y >= 10
trigger1 = random < 40

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = var(59) = 1
triggerall = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist X = [0,80]
trigger1 = p2dist Y - (vel Y)*4 = [-40,30]

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
triggerall = Random < 100
trigger1 = ctrl
trigger1 = p2bodydist x > 120
trigger1 = p2name != "Goro Daimon"

;;---------------------------------------------------------------------------
;; Jump
;[State -1, Jump]
;type = ChangeState
;value = 50
;triggerall = var(59) = 1
;triggerall = statetype != A
;triggerall = command = "holdfwd"
;trigger1 = ctrl
;trigger1 = p2bodydist x < 120
;trigger1 = p2bodydist x > 80

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

;---------------------------------------------------------------------------
;Air Run Fwd
[State -1, Air Run Fwd]
type = ChangeState
value = 1400
triggerall = var(59) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != [1400, 1499]
trigger1 = p2bodydist x > 120
trigger1 = Random < 20

;---------------------------------------------------------------------------
;Super Jump Fwd
[State -1, Super Jump Fwd]
type = VelAdd
triggerall = (var(59) = 1) || (var(59) = 3)
triggerall = stateno = [110,111]
triggerall = Vel X < 3.5
triggerall = Random < 100
trigger1 = p2bodydist X > 10
x = .2

;---------------------------------------------------------------------------
;Super Jump Back
[State -1, Super Jump Back]
type = VelAdd
triggerall = (var(59) = 1)
triggerall = stateno = [110,111]
triggerall = Vel X > -3.5
triggerall = Random < 100
trigger1 = p2bodydist X < -10
x = -.2

;===========================================================================
; EX Mode Super Moves
;===========================================================================
;---------------------------------------------------------------------------
;Silhouette Illusion [Mix]
[State -1, Silhouette Illusion]
type = ChangeState
value = 3100
triggerall = command = "upper_PP"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(59) = 0
triggerall = palno = [7,9]
triggerall = var(5) = 0
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact

;---------------------------------------------------------------------------
;Soul Eraser [Mix]
[State -1, Soul Eraser]
type = ChangeState
value = 3000
triggerall = command = "QCF_PP"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(59) = 0
triggerall = palno = [7,9]
triggerall = var(5) = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;Eternal Slumber [Mix]
[State -1, Eternal Slumber]
type = ChangeState
value = 3300
triggerall = command = "slumber"
triggerall = power >= 3000
triggerall = var(59) = 0
triggerall = palno = [7,9]
triggerall = var(5) = 0
trigger1 = statetype != A

;---------------------------------------------------------------------------
;Silhouette Illusion [Morrigan]
[State -1, Silhouette Illusion]
type = ChangeState
value = 3100
triggerall = command = "upper_PP"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(59) = 1
triggerall = palno = [7,9]
triggerall = var(5) = 0
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact

;---------------------------------------------------------------------------
;Soul Eraser [Morrigan]
[State -1, Soul Eraser]
type = ChangeState
value = 3000
triggerall = command = "QCF_PP"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(59) = 1
triggerall = palno = [7,9]
triggerall = var(5) = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;Splendor Love [Lilith]
[State -1, Splendor Love]
type = ChangeState
value = 3500
triggerall = command = "upper_PP"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(59) = 0
triggerall = palno = [7,9]
triggerall = var(5) = 2
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact

;---------------------------------------------------------------------------
;Brilliant Shower [Lilith]
[State -1, Brilliant Shower]
type = ChangeState
value = 3400
triggerall = command = "QCF_PP"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(59) = 0
triggerall = palno = [7,9]
triggerall = var(5) = 2
trigger1 = ctrl

;---------------------------------------------------------------------------
;Darkness Illusion
[State -1, Darkness Illusion]
type = ChangeState
value = 3200
triggerall = command = "QCF_KK"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(59) = 0
triggerall = palno = [7,9]
trigger1 = ctrl

;---------------------------------------------------------------------------
;Darkness Illusion (Air)
[State -1, Darkness Illusion (Air)]
type = ChangeState
value = 3250
triggerall = command = "QCF_KK"
triggerall = power >= 1000
triggerall = statetype = A
triggerall = var(59) = 0
triggerall = palno = [7,9]
trigger1 = ctrl

;---------------------------------------------------------------------------
;Dark Force
[State -1, Dark Force]
type = ChangeState
value = 3600
triggerall = command = "cz"
triggerall = power >= 1000
triggerall = statetype = S
triggerall = NumHelper(1000) = 0
triggerall = palno = [7,9]
triggerall = var(59) = 0
trigger1 = ctrl

;===========================================================================
; EX Mode Change Modes
;===========================================================================
;---------------------------------------------------------------------------
;Change to EX Mode
[State -1, Change to EX Mode]
type = ChangeState
value = 7379
triggerall = command = "HCB_xz"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(59) = 0
triggerall = palno = [7,9]
trigger1 = ctrl

;---------------------------------------------------------------------------
;Change to Morrigan Mode
[State -1, Change to Morrigan Mode]
type = ChangeState
value = 7380
triggerall = command = "HCB_xy"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(59) = 0
triggerall = palno = [7,9]
trigger1 = ctrl

;---------------------------------------------------------------------------
;Change to Lilith Mode
[State -1, Change to Lilith Mode]
type = ChangeState
value = 7381
triggerall = command = "HCB_yz"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(59) = 0
triggerall = palno = [7,9]
trigger1 = ctrl

;===========================================================================
; Lilith Mode Super Moves
;===========================================================================
;---------------------------------------------------------------------------
;Splendor Love
[State -1, Splendor Love]
type = ChangeState
value = 3500
triggerall = command = "upper_PP"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(59) = 0
triggerall = palno = [10,12]
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact

;---------------------------------------------------------------------------
;Brilliant Shower
[State -1, Brilliant Shower]
type = ChangeState
value = 3400
triggerall = command = "QCF_PP"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(59) = 0
triggerall = palno = [10,12]
trigger1 = ctrl

;---------------------------------------------------------------------------
;Darkness Illusion
[State -1, Darkness Illusion]
type = ChangeState
value = 3200
triggerall = command = "QCF_KK"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(59) = 0
triggerall = palno = [10,12]
trigger1 = ctrl

;---------------------------------------------------------------------------
;Darkness Illusion (Air)
[State -1, Darkness Illusion (Air)]
type = ChangeState
value = 3250
triggerall = command = "QCF_KK"
triggerall = power >= 1000
triggerall = statetype = A
triggerall = var(59) = 0
triggerall = palno = [10,12]
trigger1 = ctrl

;===========================================================================
; Lilith Mode Special Moves
;===========================================================================
;---------------------------------------------------------------------------
;Soul Fist
[State -1, Soul Fist]
type = ChangeState
value = 1300
triggerall = (command = "QCF_x") || (command = "QCF_y") || (command = "QCF_z")
triggerall = numproj = 0
triggerall = statetype != A
triggerall = var(59) = 0
triggerall = palno = [10,12]
trigger1 = ctrl
trigger2 = stateno = [200,499]

;---------------------------------------------------------------------------
;Soul Fist Air
[State -1, Soul Fist Air]
type = ChangeState
value = 1310
triggerall = (command = "QCF_x") || (command = "QCF_y") || (command = "QCF_z")
triggerall = numproj = 0
triggerall = statetype = A
triggerall = var(59) = 0
triggerall = palno = [10,12]
trigger1 = ctrl
trigger2 = movehit
trigger2 = stateno = [600,699]
trigger2 = statetype = A
trigger3 = stateno = 656

;===========================================================================
; Combined Mode Special Moves
;===========================================================================
;---------------------------------------------------------------------------
;Merry Hurricane
[State -1, Merry Hurricane]
type = ChangeState
value = 1600
triggerall = (command = "QCB_a") || (command = "QCB_b") || (command = "QCB_c")
triggerall = statetype != A
triggerall = var(59) = 0
triggerall = palno = [7,9]
trigger1 = ctrl
trigger2 = stateno = [200,499]

;===========================================================================
; Regular Mode Super Moves
;===========================================================================
;---------------------------------------------------------------------------
;Silhouette Illusion
[State -1, Silhouette Illusion]
type = ChangeState
value = 3100
triggerall = command = "upper_PP"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact

;---------------------------------------------------------------------------
;Soul Eraser
[State -1, Soul Eraser]
type = ChangeState
value = 3000
triggerall = command = "QCF_PP"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(59) = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;Darkness Illusion
[State -1, Darkness Illusion]
type = ChangeState
value = 3200
triggerall = command = "QCF_KK"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(59) = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;Darkness Illusion (Air)
[State -1, Darkness Illusion (Air)]
type = ChangeState
value = 3250
triggerall = command = "QCF_KK"
triggerall = power >= 1000
triggerall = statetype = A
triggerall = var(59) = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;Eternal Slumber
[State -1, Eternal Slumber]
type = ChangeState
value = 3300
triggerall = command = "slumber"
triggerall = power >= 3000
triggerall = var(59) = 0
triggerall = palno = [1,6]
trigger1 = statetype != A

;===========================================================================
; Regular Mode Special Moves
;===========================================================================
;---------------------------------------------------------------------------
;Shadow Wave A
[State -1, Shadow Wave A]
type = ChangeState
value = 1100
triggerall = command = "upper_x"
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = movehit
trigger2 = stateno = [200,499]
trigger2 = statetype != A
trigger3 = movehit
trigger3 = stateno = [600,699]
trigger3 = statetype = A
trigger4 = stateno = 656

;---------------------------------------------------------------------------
;Shadow Wave B
[State -1, Shadow Wave B]
type = ChangeState
value = 1110
triggerall = command = "upper_y"
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = statetype != A
trigger3 = movehit
trigger3 = stateno = [600,699]
trigger3 = statetype = A
trigger4 = stateno = 656

;---------------------------------------------------------------------------
;Shadow Wave C
[State -1, Shadow Wave C]
type = ChangeState
value = 1120
triggerall = command = "upper_z"
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = statetype != A
trigger3 = movehit
trigger3 = stateno = [600,699]
trigger3 = statetype = A
trigger4 = stateno = 656

;---------------------------------------------------------------------------
;Soul Fist
[State -1, Soul Fist]
type = ChangeState
value = 1000
triggerall = (command = "QCF_x") || (command = "QCF_y") || (command = "QCF_z")
triggerall = numproj = 0
triggerall = statetype != A
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = stateno = [200,499]

;---------------------------------------------------------------------------
;Soul Fist Air
[State -1, Soul Fist Air]
type = ChangeState
value = 1010
triggerall = (command = "QCF_x") || (command = "QCF_y") || (command = "QCF_z")
triggerall = statetype = A
triggerall = var(59) = 0
trigger1 = ctrl
trigger2 = movehit
trigger2 = stateno = [600,699]
trigger2 = statetype = A
trigger3 = stateno = 656

;---------------------------------------------------------------------------
;Vector Drain
[State -1, Vector Drain]
type = ChangeState
value = 1200
triggerall = (command = "HCB_x") || (command = "HCB_y") || (command = "HCB_z")
triggerall = var(59) = 0
trigger1 = ctrl
trigger1 = statetype != A

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) = 0
trigger1 = (command = "FF") || (command = "xyz")
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != 100
trigger1 = stateno != 105

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = (command = "BB") || ((command = "xyz") && (command = "holdback"))
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != 100
trigger1 = stateno != 105

;---------------------------------------------------------------------------
;Air Run Fwd
[State -1, Air Run Fwd]
type = ChangeState
value = 1400
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != [1400, 1499]

;---------------------------------------------------------------------------
;Super Jump
[State -1, Super Jump]
type = ChangeState
value = 110
triggerall = var(59) = 0
trigger1 = (command = "DU") || (command = "abc")
trigger1 = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = command = "holdup"
trigger2 = stateno = 420
trigger2 = AnimElem = 5, >= 5;2
trigger2 = AnimElem = 6, < 0
trigger2 = MoveHit

;---------------------------------------------------------------------------
;Guard Push (Stand)
[State -1, Guard Push (Stand)]
type = ChangeState
value = 160
trigger1 = command = "PP"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = stateno = 150
ignorehitpause = 1

;---------------------------------------------------------------------------
;Guard Push (Crouch)
[State -1, Guard Push (Crouch)]
type = ChangeState
value = 161
trigger1 = command = "PP"
trigger1 = statetype = C
trigger1 = stateno = 152
ignorehitpause = 1

;---------------------------------------------------------------------------
;Guard Push (Air)
[State -1, Guard Push (Air)]
type = ChangeState
value = 162
trigger1 = command = "PP"
trigger1 = statetype = A
trigger1 = stateno = 154
ignorehitpause = 1

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
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Throw A
[State -1, Throw A]
type = ChangeState
value = 800
triggerall = (command = "y") || (command = "z")
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger1 = p2statetype != A
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;Throw B
[State -1, Throw B]
type = ChangeState
value = 830
triggerall = (command = "b") || (command = "c")
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger1 = p2statetype != A
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;Air Throw
[State -1, Throw]
type = ChangeState
value = 860
triggerall = (command = "y") || (command = "z")
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

;===========================================================================
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
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = (command = "xa")
triggerall = var(59) = 0
trigger1 = statetype != A
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
;Stand Strong Punch
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
;Standing Strong Kick Forward
[State -1, Standing Strong Kick Forward]
type = ChangeState
value = 255
triggerall = command = "holdfwd"
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
;Crouching Strong Punch Forward
[State -1, Crouching Strong Punch]
type = ChangeState
value = 425
triggerall = command = "z"
triggerall = command = "holdfwd"
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
trigger6 = (stateno = 645) && MoveContact

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
;Jump Medium Kick Down
[State -1, Jump Strong Kick Down]
type = ChangeState
value = 645
triggerall = command = "holddown"
triggerall = command = "b"
triggerall = var(59) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 630) && MoveContact
trigger4 = (stateno = 610) && MoveContact

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Strong Kick]
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
;Jump Strong Kick Down
[State -1, Jump Strong Kick Down]
type = ChangeState
value = 655
triggerall = command = "holddown"
triggerall = command = "c"
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
trigger6 = (stateno = 645) && MoveContact

;===========================================================================
;---------------------------------------------------------------------------
;Roll (Short)
[State -1, Roll (Short)]
type = ChangeState
value = 1500
triggerall = (stateno = 5101) || (stateno = 5110)
trigger1 = command = "HCF_a"
trigger2 = command = "HCF_x"

;---------------------------------------------------------------------------
;Roll (Medium)
[State -1, Roll (Medium)]
type = ChangeState
value = 1510
triggerall = (stateno = 5101) || (stateno = 5110)
trigger1 = command = "HCF_b"
trigger2 = command = "HCF_y"

;---------------------------------------------------------------------------
;Roll (Long)
[State -1, Roll (Lonn)]
type = ChangeState
value = 1520
triggerall = (stateno = 5101) || (stateno = 5110)
trigger1 = command = "HCF_c"
trigger2 = command = "HCF_z"

