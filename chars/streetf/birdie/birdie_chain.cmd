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
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands are given below. Delete, add, or modify as you wish.


;-| Super Motions |--------------------------------------------------------

[command]
name = "supercharge1"
command = ~60$B, F, B, F, x
time = 30

[command]
name = "supercharge2"
command = ~60$B, F, B, F, y
time = 30

[command]
name = "supercharge3"
command = ~60$B, F, B, F, z
time = 30

[command]
name = "2qcfp1"
command = ~D, F, ~D, F, x
time = 30

[command]
name = "2qcfp2"
command = ~D, F, ~D, F, y
time = 30

[command]
name = "2qcfp3"
command = ~D, F, ~D, F, z
time = 30

[command]
name = "2qcfk1"
command = ~D, F, ~D, F, a
time = 30

[command]
name = "2qcfk2"
command = ~D, F, ~D, F, b
time = 30

[command]
name = "2qcfk3"
command = ~D, F, ~D, F, c
time = 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "esbandit"
command = ~B, D, F, a+b
time = 20

[Command]
name = "esbandit"
command = ~B, D, F, b+c
time = 20

[Command]
name = "esbandit"
command = ~B, D, F, a+c
time = 20

[Command]
name = "esbandit"
command = ~F, D, B, a+b
time = 20

[Command]
name = "esbandit"
command = ~F, D, B, b+c
time = 20

[Command]
name = "esbandit"
command = ~F, D, B, a+c
time = 20

[Command]
name = "esmurder"
command = ~B, D, F, x+y
time = 20

[Command]
name = "esmurder"
command = ~B, D, F, y+z
time = 20

[Command]
name = "esmurder"
command = ~B, D, F, x+z
time = 20

[Command]
name = "esmurder"
command = ~F, D, B, x+y
time = 20

[Command]
name = "esmurder"
command = ~F, D, B, y+z
time = 20

[Command]
name = "esmurder"
command = ~F, D, B, x+z
time = 20

[Command]
name = "murderx"
command = ~B, D, F, x
time = 20

[Command]
name = "murdery"
command = ~B, D, F, y
time = 20

[Command]
name = "murderz"
command = ~B, D, F, z
time = 20

[Command]
name = "murderx"
command = ~F, D, B, x
time = 20

[Command]
name = "murdery"
command = ~F, D, B, y
time = 20

[Command]
name = "murderz"
command = ~F, D, B, z
time = 20

[Command]
name = "bandita"
command = ~B, D, F, a
time = 20

[Command]
name = "banditb"
command = ~B, D, F, b
time = 20

[Command]
name = "banditc"
command = ~B, D, F, c
time = 20

[Command]
name = "bandita"
command = ~F, D, B, a
time = 20

[Command]
name = "banditb"
command = ~F, D, B, b
time = 20

[Command]
name = "banditc"
command = ~F, D, B, c
time = 20

[Command]
name = "esbull"
command = ~60$B, x+y
time = 10

[Command]
name = "esbull"
command = ~60$B, x+z
time = 10

[Command]
name = "esbull"
command = ~60$B, y+z
time = 10

[Command]
name = "bull1"
command = ~30$B, F, x
time = 10

[Command]
name = "bull2"
command = ~30$B, F, y
time = 10

[Command]
name = "bull3"
command = ~30$B, F, z
time = 10


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
name = "alpha_counter"
command = /$F, c
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
name = "hold_a"
command = /$a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "rel_x"
command = ~x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "rel_y"
command = ~y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "hold_z"
command = /$z
time = 1

[Command]
name = "rel_z"
command = ~z
time = 1

[command]
name = "level_5"
command = ~960a + ~960b
time = 1

[command]
name = "level_4"
command = ~480a + ~480b
time = 1

[command]
name = "level_3"
command = ~240a + ~240b
time = 1

[command]
name = "level_2"
command = ~120a + ~120b
time = 1

[command]
name = "level_1"
command = ~60a + ~60b
time = 1

[command]
name = "level_5"
command = ~960a + ~960c
time = 1

[command]
name = "level_4"
command = ~480a + ~480c
time = 1

[command]
name = "level_3"
command = ~240a + ~240c
time = 1

[command]
name = "level_2"
command = ~120a + ~120c
time = 1

[command]
name = "level_1"
command = ~60a + ~60c
time = 1

[command]
name = "level_5"
command = ~960b + ~960c
time = 1

[command]
name = "level_4"
command = ~480b + ~480c
time = 1

[command]
name = "level_3"
command = ~240b + ~240c
time = 1

[command]
name = "level_2"
command = ~120b + ~120c
time = 1

[command]
name = "level_1"
command = ~60b + ~60c
time = 1

[command]
name = "level_5"
command = ~960x + ~960y
time = 1

[command]
name = "level_4"
command = ~480x + ~480y
time = 1

[command]
name = "level_3"
command = ~240x + ~240y
time = 1

[command]
name = "level_2"
command = ~120x + ~120y
time = 1

[command]
name = "level_1"
command = ~60x + ~60y
time = 1

[command]
name = "level_5"
command = ~960x + ~960z
time = 1

[command]    
name = "level_4"
command = ~480x + ~480z
time = 1

[command]
name = "level_3"
command = ~240x + ~240z
time = 1

[command]
name = "level_2"
command = ~120x + ~120z
time = 1

[command]
name = "level_1"
command = ~60x + ~60z
time = 1

[command]
name = "level_5"
command = ~960y + ~960z
time = 1

[command]
name = "level_4"
command = ~480y + ~480z
time = 1

[command]
name = "level_3"
command = ~240y + ~240z
time = 1

[command]
name = "level_2"
command = ~120y + ~120z
time = 1

[command]
name = "level_1"
command = ~60y + ~60z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "hold_start"
command = /$s
time = 1

[Command]
name = "sjump"
command = ~D, U
time = 5

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
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF" && statetype = S && ctrl && stateno != 100
;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB" && statetype = S && ctrl
;---------------------------------------------------------------------------
;The Birdie Level 1
[State -1,]
type = ChangeState
value = 1130
triggerall = command = "supercharge1" && command != "holddown" && power >= 1000
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;The Birdie Level 2
[State -1,]
type = ChangeState
value = 1120
triggerall = command = "supercharge2" && command != "holddown" && power >= 2000
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;The Birdie Level 3
[State -1,]
type = ChangeState
value = 1100
triggerall = command = "supercharge3" && command != "holddown" && power >= 3000
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Bull Revenger Close 1
[State -1,]
type = ChangeState
value = 1040
triggerall = command = "2qcfp1" && command != "holddown" && power >= 1000
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Bull Revenger Far 1
[State -1,]
type = ChangeState
value = 1090
triggerall = command = "2qcfk1" && command != "holddown" && power >= 1000
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Bull Revenger Close 2
[State -1,]
type = ChangeState
value = 1020
triggerall = command = "2qcfp2" && command != "holddown" && power >= 2000
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Bull Revenger Far 2
[State -1,]
type = ChangeState
value = 1070
triggerall = command = "2qcfk2" && command != "holddown" && power >= 2000
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Bull Revenger Close 3
[State -1,]
type = ChangeState
value = 1000
triggerall = command = "2qcfp3" && command != "holddown" && power >= 3000
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Bull Revenger Far 3
[State -1,]
type = ChangeState
value = 1050
triggerall = command = "2qcfk3" && command != "holddown" && power >= 3000
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;ES Murderer Chain
[State -1,]
type = ChangeState
value = 1600
triggerall = command = "esmurder" && command != "holddown" && power >= 500
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;ES Bandit Chain
[State -1,]
type = ChangeState
value = 1700
triggerall = command = "esbandit" && command != "holddown" && power >= 500
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Short Bandit Chain
[State -1,]
type = ChangeState
value = 899
triggerall = command = "bandita" && command != "holddown"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Forward Bandit Chain
[State -1,]
type = ChangeState
value = 910
triggerall = command = "banditb" && command != "holddown"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Roundhouse Bandit Chain
[State -1,]
type = ChangeState
value = 920
triggerall = command = "banditc" && command != "holddown"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Jab Murderer Chain
[State -1,]
type = ChangeState
value = 600
triggerall = command = "murderx" && command != "holddown"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Strong Murderer Chain
[State -1,]
type = ChangeState
value = 601
triggerall = command = "murdery" && command != "holddown"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Fierce Murderer Chain
[State -1,]
type = ChangeState
value = 602
triggerall = command = "murderz" && command != "holddown"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;ES Bull Head
[State -1,]
type = ChangeState
value = 1660
triggerall = command = "esbull" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 202
trigger5 = movecontact && stateno = 203
trigger6 = movecontact && stateno = 204
trigger7 = movecontact && stateno = 205
trigger8 = movecontact && stateno = 210
trigger9 = movecontact && stateno = 211
trigger10 = movecontact && stateno = 212
trigger11 = movecontact && stateno = 213
trigger12 = movecontact && stateno = 214
trigger13 = movecontact && stateno = 215
trigger14 = movecontact && stateno = 250
trigger15 = movecontact && stateno = 255
;---------------------------------------------------------------------------
;Jab Bull Head
[State -1,]
type = ChangeState
value = 500
triggerall = command = "bull1" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 202
trigger5 = movecontact && stateno = 203
trigger6 = movecontact && stateno = 204
trigger7 = movecontact && stateno = 205
trigger8 = movecontact && stateno = 210
trigger9 = movecontact && stateno = 211
trigger10 = movecontact && stateno = 212
trigger11 = movecontact && stateno = 213
trigger12 = movecontact && stateno = 214
trigger13 = movecontact && stateno = 215
trigger14 = movecontact && stateno = 250
trigger15 = movecontact && stateno = 255
;---------------------------------------------------------------------------
;Strong Bull Head
[State -1,]
type = ChangeState
value = 501
triggerall = command = "bull2" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 202
trigger5 = movecontact && stateno = 203
trigger6 = movecontact && stateno = 204
trigger7 = movecontact && stateno = 205
trigger8 = movecontact && stateno = 210
trigger9 = movecontact && stateno = 211
trigger10 = movecontact && stateno = 212
trigger11 = movecontact && stateno = 213
trigger12 = movecontact && stateno = 214
trigger13 = movecontact && stateno = 215
trigger14 = movecontact && stateno = 250
trigger15 = movecontact && stateno = 255
;---------------------------------------------------------------------------
;Fierce Bull Head
[State -1,]
type = ChangeState
value = 502
triggerall = command = "bull3" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 201
trigger4 = movecontact && stateno = 202
trigger5 = movecontact && stateno = 203
trigger6 = movecontact && stateno = 204
trigger7 = movecontact && stateno = 205
trigger8 = movecontact && stateno = 210
trigger9 = movecontact && stateno = 211
trigger10 = movecontact && stateno = 212
trigger11 = movecontact && stateno = 213
trigger12 = movecontact && stateno = 214
trigger13 = movecontact && stateno = 215
trigger14 = movecontact && stateno = 250
trigger15 = movecontact && stateno = 255
;---------------------------------------------------------------------------
;Bull Horn 5
[State -1,]
type = ChangeState
value = 820
triggerall = command = "level_5"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Bull Horn 4
[State -1,]
type = ChangeState
value = 815
triggerall = command = "level_4"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Bull Horn 3
[State -1,]
type = ChangeState
value = 810
triggerall = command = "level_3"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Bull Horn 2
[State -1,]
type = ChangeState
value = 805
triggerall = command = "level_2"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Bull Horn 1
[State -1,]
type = ChangeState
value = 800
triggerall = command = "level_1"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Stand Jab
[State -1,]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Stand Strong
[State -1,]
type = ChangeState
value = 201
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
;---------------------------------------------------------------------------
;Bull Spike
[State -1, Throw]
type = ChangeState
value = 870
triggerall = command = "z" && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 15 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback" && p2bodydist X < 15 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype = C)
;---------------------------------------------------------------------------
;Stand Fierce
[State -1,]
type = ChangeState
value = 202
triggerall = command = "z" && command != "holddown" && command != "holdback"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 201 && movecontact
;---------------------------------------------------------------------------
;New Stand Fierce
[State -1,]
type = ChangeState
value = 250
triggerall = command = "z" && command != "holddown" && command = "holdback" && p2dist x >= 15
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 201 && movecontact
;---------------------------------------------------------------------------
;Stand Short
[State -1,]
type = ChangeState
value = 203
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Stand Forward
[State -1,]
type = ChangeState
value = 204
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 203 && movecontact
;---------------------------------------------------------------------------
;Bad Throw
[State -1, Throw]
type = ChangeState
value = 860
triggerall = command = "c" && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 15 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback" && p2bodydist X < 15 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype = C)
;---------------------------------------------------------------------------
;New Stand Roundhouse
[State -1,]
type = ChangeState
value = 255
triggerall = command = "c" && command != "holddown" && command = "holdfwd"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 203 && movecontact
trigger3 = stateno = 204 && movecontact
;---------------------------------------------------------------------------
;Stand Roundhouse
[State -1,]
type = ChangeState
value = 205
triggerall = command = "c" && command != "holddown" && command != "holdfwd"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 203 && movecontact
trigger3 = stateno = 204 && movecontact
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Crouching Jab
[State -1,]
type = ChangeState
value = 210
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
;---------------------------------------------------------------------------
;Crouching Strong
[State -1,]
type = ChangeState
value = 211
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 210 && movecontact
;---------------------------------------------------------------------------
;Crouching Fierce
[State -1,]
type = ChangeState
value = 212
triggerall = command = "z" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 211 && movecontact
;---------------------------------------------------------------------------
;Crouching Short
[State -1,]
type = ChangeState
value = 213
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
;---------------------------------------------------------------------------
;Crouching Forward
[State -1,]
type = ChangeState
value = 214
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 213 && movecontact
;---------------------------------------------------------------------------
;Crouching Roundhouse
[State -1,]
type = ChangeState
value = 215
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 213 && movecontact
trigger3 = stateno = 214 && movecontact
;---------------------------------------------------------------------------
;Jump Jab
[State -1,]
type = ChangeState
value = 220
triggerall = command = "x" && statetype = A && stateno != [100,105]
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Strong
[State -1,]
type = ChangeState
value = 221
triggerall = command = "y" && statetype = A && stateno != [100,105]
trigger1 = ctrl
trigger2 = stateno = 220 && movecontact
trigger3 = stateno = 223 && movecontact
;---------------------------------------------------------------------------
;Fierce Body Splash
[State -1,]
type = ChangeState
value = 260
triggerall = command = "z" && statetype = A && command = "holddown" && stateno != [100,105]
trigger1 = ctrl
trigger2 = stateno = 220 && movecontact
trigger3 = stateno = 221 && movecontact
trigger4 = stateno = 223 && movecontact
trigger5 = stateno = 224 && movecontact
trigger6 = stateno = 226 && movecontact
;---------------------------------------------------------------------------
;Jump Fierce
[State -1,]
type = ChangeState
value = 222
triggerall = command = "z" && statetype = A && command != "holddown" && stateno != [100,105]
trigger1 = ctrl
trigger2 = stateno = 220 && movecontact
trigger3 = stateno = 221 && movecontact
trigger4 = stateno = 223 && movecontact
trigger5 = stateno = 224 && movecontact
trigger6 = stateno = 226 && movecontact
;---------------------------------------------------------------------------
;Jump Short
[State -1,]
type = ChangeState
value = 223
triggerall = command = "a" && statetype = A && stateno != [100,105]
trigger1 = ctrl
trigger2 = stateno = 220 && movecontact
;---------------------------------------------------------------------------
;Jump Forward
[State -1,]
type = ChangeState
value = 224
triggerall = command = "b" && statetype = A && vel x = 0 && stateno != [100,105]
trigger1 = ctrl
trigger2 = stateno = 223 && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 221 && movecontact
;---------------------------------------------------------------------------
;Jump Forward 2
[State -1,]
type = ChangeState
value = 226
triggerall = command = "b" && statetype = A && vel x != 0 && stateno != [100,105]
trigger1 = ctrl
trigger2 = stateno = 223 && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 221 && movecontact
;---------------------------------------------------------------------------
;Jump Roundhouse
[State -1,]
type = ChangeState
value = 225
triggerall = command = "c" && statetype = A && stateno != [100,105]
trigger1 = ctrl
trigger2 = stateno = 223 && movecontact
trigger3 = stateno = 224 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 221 && movecontact
trigger6 = stateno = 226 && movecontact
;---------------------------------------------------------------------------
;Dashing Fierce
[State -1,]
type = ChangeState
value = 222
triggerall = ctrl && statetype = A && stateno = [100,105]
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
;---------------------------------------------------------------------------
;Drop Kick
[State -1,]
type = ChangeState
value = 227
triggerall = ctrl && statetype = A && stateno = [100,105]
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"

