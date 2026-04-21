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

[Command]
name = "SoulGem"
command = D, DB, B, D, DB, B, b
time = 30

[Command]
name = "TimeGem"
command = D, DB, B, D, DB, B, a
time = 30

[Command]
name = "SpaceGem"
command = D, DB, B, D, DB, B, y
time = 30

[Command]
name = "RealityGem"
command = D, DB, B, D, DB, B, x
time = 30

[Command]
name = "PowerGem"
command = D, DB, B, D, DB, B, z
time = 30

[Command]
name = "MindGem"
command = D, DB, B, D, DB, B, c
time = 30

[Command]
name = "HellsFire"
command = D, DF, F, D, DF, F, x
time = 30

[Command]
name = "HellsFire"
command = D, DF, F, D, DF, F, y
time = 30

[Command]
name = "HellsFire"
command = D, DF, F, D, DF, F, z
time = 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "InfinityDrop"
command = D, c

[Command]
name = "TitanicRushx"
command = $B, $D, $F, x

[Command]
name = "TitanicRushy"
command = $B, $D, $F, y

[Command]
name = "TitanicRushz"
command = $B, $D, $F, z

[Command]
name = "DeathSpherea"
command = D, DF, F, a

[Command]
name = "DeathSphereb"
command = D, DF, F, b

[Command]
name = "DeathSpherec"
command = D, DF, F, c

[Command]
name = "RecoveryRoll"
command = B, DB, D, a

[Command]
name = "RecoveryRoll"
command = B, DB, D, b

[Command]
name = "RecoveryRoll"
command = B, DB, D, c

[Command]
name = "RecoveryRoll"
command = B, DB, D, x

[Command]
name = "RecoveryRoll"
command = B, DB, D, y

[Command]
name = "RecoveryRoll"
command = B, DB, D, z

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
; Soul Gem
[State -1, Soul Gem]
type = ChangeState
value = 2000
triggerall = command = "SoulGem"
triggerall = StateType = S || StateType = C
triggerall = Power >= 1000
trigger1 = ctrl
trigger1 = NumHelper(27) = 0

;---------------------------------------------------------------------------
; Time Gem
[State -1, Time Gem]
type = ChangeState
value = 2060
triggerall = command = "TimeGem"
triggerall = StateType = S || StateType = C
triggerall = Power >= 1000
trigger1 = ctrl
trigger1 = var(15) = 0
trigger1 = NumHelper(27) = 0

;---------------------------------------------------------------------------
; Space Gem
[State -1, Space Gem]
type = ChangeState
value = 2070
triggerall = command = "SpaceGem"
triggerall = StateType = S || StateType = C
triggerall = Power >= 1000
triggerall = NumHelper(135) = 0
triggerall = NumHelper(144) = 0
trigger1 = ctrl
trigger1 = NumHelper(27) = 0

;---------------------------------------------------------------------------
; Reality Gem
[State -1, Reality Gem]
type = ChangeState
value = 2120
triggerall = command = "RealityGem"
triggerall = StateType = S || StateType = C
triggerall = Power >= 1000
trigger1 = ctrl
trigger1 = NumHelper(27) = 0

;---------------------------------------------------------------------------
; Power Gem
[State -1, Power Gem]
type = ChangeState
value = 2150
triggerall = command = "PowerGem"
triggerall = StateType = S || StateType = C
triggerall = Power >= 1000
trigger1 = ctrl
trigger1 = NumHelper(27) = 0
trigger2 = StateNo = 240
trigger2 = MoveContact

;---------------------------------------------------------------------------
; Mind Gem
[State -1, Mind Gem]
type = ChangeState
value = 2170
triggerall = command = "MindGem"
triggerall = StateType = S || StateType = C
triggerall = Power >= 2000
triggerall = !(enemy(0), name = "Thanos" && enemy(0), StateNo = 2170)
triggerall = !(enemy(1), name = "Thanos" && enemy(1), StateNo = 2170)
trigger1 = ctrl
trigger1 = NumHelper(27) = 0

;---------------------------------------------------------------------------
; Hell's Fire
[State -1, Hell's Fire]
type = ChangeState
value = 2210
triggerall = command = "HellsFire"
triggerall = StateType = S || StateType = C
triggerall = Power >= 2000
trigger1 = ctrl
trigger1 = NumHelper(27) = 0

;---------------------------------------------------------------------------
; Titanic Rush X
[State -1, Titanic Rush X]
type = ChangeState
value = 1000
triggerall = command = "TitanicRushx"
trigger1 = ctrl
trigger2 = StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 240
trigger3 = MoveContact
trigger4 = StateNo = 600
trigger4 = MoveContact
trigger5 = StateNo = 610
trigger5 = MoveContact
trigger6 = StateNo = 630
trigger6 = MoveContact
trigger7 = StateNo = 640
trigger7 = MoveContact

;---------------------------------------------------------------------------
; Titanic Rush Y
[State -1, Titanic Rush Y]
type = ChangeState
value = 1010
triggerall = command = "TitanicRushy"
trigger1 = ctrl
trigger2 = StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 240
trigger3 = MoveContact
trigger4 = StateNo = 600
trigger4 = MoveContact
trigger5 = StateNo = 610
trigger5 = MoveContact
trigger6 = StateNo = 630
trigger6 = MoveContact
trigger7 = StateNo = 640
trigger7 = MoveContact

;---------------------------------------------------------------------------
; Titanic Rush Z
[State -1, Titanic Rush Z]
type = ChangeState
value = 1020
triggerall = command = "TitanicRushz"
trigger1 = ctrl
trigger2 = StateNo = 210
trigger2 = MoveContact
trigger3 = StateNo = 240
trigger3 = MoveContact
trigger4 = StateNo = 600
trigger4 = MoveContact
trigger5 = StateNo = 610
trigger5 = MoveContact
trigger6 = StateNo = 630
trigger6 = MoveContact
trigger7 = StateNo = 640
trigger7 = MoveContact

;---------------------------------------------------------------------------
; Infinity Drop
[State -1, Infinity Drop]
type = ChangeState
value = 1030
triggerall = command = "InfinityDrop"
triggerall = StateType = A
trigger1 = ctrl
trigger1 = Pos Y <= -60
trigger2 = StateNo = 600
trigger2 = MoveContact
trigger3 = StateNo = 610
trigger3 = MoveContact
trigger4 = StateNo = 630
trigger4 = MoveContact
trigger5 = StateNo = 640
trigger5 = MoveContact

;---------------------------------------------------------------------------
; Death Sphere LK
[State -1, Death Sphere LK]
type = ChangeState
value = 1040
triggerall = command = "DeathSpherea"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 230
trigger4 = MoveContact
trigger5 = StateNo = 240 
trigger5 = MoveContact
trigger6 = StateNo = 400
trigger6 = MoveContact
trigger7 = StateNo = 430
trigger7 = MoveContact
trigger8 = StateNo = 410
trigger8 = MoveContact
trigger9 = StateNo = 440
trigger9 = MoveContact

;---------------------------------------------------------------------------
; Death Sphere MK
[State -1, Death Sphere MK]
type = ChangeState
value = 1060
triggerall = command = "DeathSphereb"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 230
trigger4 = MoveContact
trigger5 = StateNo = 240 
trigger5 = MoveContact
trigger6 = StateNo = 400
trigger6 = MoveContact
trigger7 = StateNo = 430
trigger7 = MoveContact
trigger8 = StateNo = 410
trigger8 = MoveContact
trigger9 = StateNo = 440
trigger9 = MoveContact

;---------------------------------------------------------------------------
; Death Sphere HK
[State -1, Death Sphere HK]
type = ChangeState
value = 1070
triggerall = command = "DeathSpherec"
triggerall = StateType = S || StateType = C
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 230
trigger4 = MoveContact
trigger5 = StateNo = 240 
trigger5 = MoveContact
trigger6 = StateNo = 400
trigger6 = MoveContact
trigger7 = StateNo = 430
trigger7 = MoveContact
trigger8 = StateNo = 410
trigger8 = MoveContact
trigger9 = StateNo = 440
trigger9 = MoveContact

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = StateNo != 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = StateNo != 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Superjump Up
[State -1, Superjump Up]
type = ChangeState
value = 690
trigger1 = command = "SuperJumpUp"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl

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
; Psychic Throw
[State -1, Psychic Throw]
type = ChangeState
value = 800
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

;---------------------------------------------------------------------------
; Rock Slam Throw
[State -1, Rock Slam Throw]
type = ChangeState
value = 830
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

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = Movecontact
trigger3 = StateNo = 230
trigger3 = MoveContact
trigger4 = StateNo = 430
trigger4 = MoveContact
trigger5 = StateNo = 400
trigger5 = MoveContact

;---------------------------------------------------------------------------
; Stand Hard Punch
[State -1, Stand Hard Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = ctrl
trigger2 = StateNo = 200
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 230
trigger4 = MoveContact
trigger5 = StateNo = 240 
trigger5 = MoveContact
trigger6 = StateNo = 400
trigger6 = MoveContact
trigger7 = StateNo = 430
trigger7 = MoveContact
trigger8 = StateNo = 410
trigger8 = MoveContact
trigger9 = StateNo = 440
trigger9 = MoveContact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
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
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 230
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 400
trigger4 = MoveContact
trigger5 = StateNo = 410
trigger5 = MoveContact
trigger6 = StateNo = 200
trigger6 = MoveContact

;---------------------------------------------------------------------------
; Stand Hard Kick
[State -1, Stand Hard Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = StateType = S
trigger1 = ctrl
trigger2 = StateNo = 230
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 400
trigger4 = MoveContact
trigger5 = StateNo = 410
trigger5 = MoveContact
trigger6 = StateNo = 200
trigger6 = MoveContact 
trigger7 = StateNo = 240
trigger7 = MoveContact

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
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
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

; Launcher followup jump
[State -1, Launcher followup]
type = ChangeState
value = 415
triggerall = command = "holdup" 
trigger1 = StateNo = 410
trigger1 = MoveContact

;---------------------------------------------------------------------------
; Crouching Hard Punch
[State -1, Crouching Hard Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 400
trigger2 = MoveContact
trigger3 = StateNo = 410
trigger3 = MoveContact
trigger4 = StateNo = 430
trigger4 = MoveContact
trigger5 = StateNo = 440
trigger5 = MoveContact
trigger6 = StateNo = 200
trigger6 = MoveContact
trigger7 = StateNo = 210
trigger7 = MoveContact
trigger8 = StateNo = 230
trigger8 = MoveContact
trigger9 = StateNo = 240
trigger9 = MoveContact

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 400
trigger2 = MoveContact
trigger3 = StateNo = 200
trigger3 = MoveContact

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
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
; Crouching Hard Kick
[State -1, Crouching Hard Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = NumHelper(003) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 230
trigger2 = MoveContact
trigger3 = StateNo = 210
trigger3 = MoveContact
trigger4 = StateNo = 400
trigger4 = MoveContact
trigger5 = StateNo = 410
trigger5 = MoveContact
trigger6 = StateNo = 200
trigger6 = MoveContact 
trigger7 = StateNo = 240
trigger7 = MoveContact
trigger8 = StateNo = 440
trigger8 = MoveContact

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
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
triggerall = command = "z"
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
triggerall = command = "b"
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
triggerall = command = "c"
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














