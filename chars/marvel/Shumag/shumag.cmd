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
;---cpu triggers----------------------------------------------------------------
[command]
name = "CPU1"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU2"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU3"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU4"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU5"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU6"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU7"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU8"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU9"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU10"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU11"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU12"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU13"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU14"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU15"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU16"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU17"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU18"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU19"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU20"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU21"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU22"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU23"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU24"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU25"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU26"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU27"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU28"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU29"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU30"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU31"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU32"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU33"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU34"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU35"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU36"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU37"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU38"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU39"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU40"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU41"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU42"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU43"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU44"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU45"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU46"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU47"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU48"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU49"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU50"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU51"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU52"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU53"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU54"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU55"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU56"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU57"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU58"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU59"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU60"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU61"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU62"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU63"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU64"
command = s, s, s, s, s, s, s, s
time = 1
 

;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[command]
name = "smashx"
command = ~F,D,DF,F,x
time = 20

[command]
name = "smashy"
command = ~F,D,DF,F,y
time = 20

[command]
name = "smashz"
command = ~F,D,DF,F,z
time = 20

[command]
name = "sp_t_x"
command = ~F,DF,D,DB,B,x
time = 20

[command]
name = "sp_t_y"
command = ~F,DF,D,DB,B,y
time = 20

[command]
name = "sp_t_z"
command = ~F,DF,D,DB,B,z
time = 20

[command]
name = "chaos"
command = ~D,DF,F,a+b+c

[command]
name = "ah"
command = ~15a
time = 20

[command]
name = "bh"
command = ~15b
time = 20

[command]
name = "ch"
command = ~15c
time = 20

[command]
name = "gem"
command = ~D,DB,B,a+b+c

[command]
name="super_jump"
command = a+b+c
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
name = "DD"     ;Required (do not remove)
command = D, D
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

[command]
name = "down_c"
command = /$D,c

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[command]
name = "down_z"
command = /$D,z

[command]
name = "f_a"
command = /$F,a

[Command]
name = "f_b"
command = /$F,b

[command]
name = "f_c"
command = /$F,c

[Command]
name = "f_x"
command = /$F,x

[Command]
name = "f_y"
command = /$F,y

[command]
name = "f_z"
command = /$F,z

[command]
name = "ax"
command = a+x

[command]
name = "by"
command = b+y

[command]
name = "cz"
command = cz

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


;------cpu excuter--------------------------------------------------------------
[state -1, cpu]
type = VarSet
var(31) = 1
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
trigger13 = command = "CPU13"
trigger14 = command = "CPU14"
trigger15 = command = "CPU15"
trigger16 = command = "CPU16"
trigger17 = command = "CPU17"
trigger18 = command = "CPU18"
trigger19 = command = "CPU19"
trigger20 = command = "CPU20"
trigger21 = command = "CPU21"
trigger22 = command = "CPU22"
trigger23 = command = "CPU23"
trigger24 = command = "CPU24"
trigger25 = command = "CPU25"
trigger26 = command = "CPU26"
trigger27 = command = "CPU27"
trigger28 = command = "CPU28"
trigger29 = command = "CPU29"
trigger30 = command = "CPU30"
trigger30 = command = "CPU30"
trigger31 = command = "CPU31"
trigger32 = command = "CPU32"
trigger33 = command = "CPU33"
trigger34 = command = "CPU34"
trigger35 = command = "CPU35"
trigger36 = command = "CPU36"
trigger37 = command = "CPU37"
trigger38 = command = "CPU38"
trigger39 = command = "CPU39"
trigger40 = command = "CPU40"
trigger40 = command = "CPU40"
trigger41 = command = "CPU41"
trigger42 = command = "CPU42"
trigger43 = command = "CPU43"
trigger44 = command = "CPU44"
trigger45 = command = "CPU45"
trigger46 = command = "CPU46"
trigger47 = command = "CPU47"
trigger48 = command = "CPU48"
trigger49 = command = "CPU49"
trigger50 = command = "CPU50"
trigger51 = command = "CPU51"
trigger52 = command = "CPU52"
trigger53 = command = "CPU53"
trigger54 = command = "CPU54"
trigger55 = command = "CPU55"
trigger56 = command = "CPU56"
trigger57 = command = "CPU57"
trigger58 = command = "CPU58"
trigger59 = command = "CPU59"
trigger60 = command = "CPU60"
trigger61 = command = "CPU61"
trigger62 = command = "CPU62"
trigger63 = command = "CPU63"
trigger64 = command = "CPU64"

[state -1, run]
type = changestate
trigger1 = command = "FF"
trigger1 = ctrl = 1
trigger1 = statetype = s
value = 100

[state -1, runback]
type = changestate
trigger1 = command = "BB"
trigger1 = ctrl = 1
trigger1 = statetype = s
value = 110

;************gem shifting*******************************************************
[state -1, right~]
type = null;varset
triggerall = ctrl = 1
trigger1 = command ="start" 
var(14) = var(10)

[state -1, right~]
type =null; varset
triggerall = ctrl = 1
trigger1 = command ="start" 
trigger1 = teamside = 1
var(10) = var(12)

[state -1, right~]
type = null;varset
triggerall = ctrl = 1
trigger1 = command ="start" 
trigger1 = teamside = 1
var(12) = var(11)

[state -1, right~]
type = null;varset
triggerall = ctrl = 1
trigger1 = command ="start" 
trigger1 = teamside = 1
var(11) = var(14)
;***************************
[state -1, right~]
type = null;varset
triggerall = ctrl = 1
trigger1 = command ="start"
trigger1 = teamside = 2
var(10) = var(12)

[state -1, right~]
type = null;varset
triggerall = ctrl = 1
trigger1 = command ="start"
trigger1 = teamside = 2
var(11) = var(12)

[state -1, right~]
type = null;varset
triggerall = ctrl = 1
trigger1 = command ="start"
trigger1 = teamside = 2
var(12) = var(14)


[state -1, removerx]
type = null;removeexplod
triggerall = teamside = 1
trigger1 = command = "start"
id = 300

[state -1, removerx]
type = null;removeexplod
triggerall = teamside = 1
trigger1 = command = "start"
id = 310

[state -1, removerx]
type = null;removeexplod
triggerall = teamside = 1
trigger1 = command = "start"
id = 320

[state -1, removerx]
type = null;removeexplod
triggerall = teamside = 2
trigger1 = command = "start"
id = 400 

[state -1, removerx]
type = null;removeexplod
triggerall = teamside = 2
trigger1 = command = "start"
id = 410

[state -1, removerx]
type = null; removeexplod
triggerall = teamside = 2
trigger1 = command = "start"
id = 420

;*******************************************************************************
;**********hyper attack*********************************************************
;*******************************************************************************
;chaos dimension*************************
[state -1, chaos!]
type = changestate
trigger1 = ctrl = 1
trigger1 = command = "chaos"
trigger1 = stateno != 100
trigger1 = statetype = s
trigger1 = power = 3000
value = 2100

[state -1, chaos!]
type = changestate
trigger1 = ctrl = 1
trigger1 = var(7) = 1
trigger1 = statetype = s
trigger1 = command = "b" || command = "c" || command = "y" || command = "z"
value = 2101 

[state -1, chaos!]
type = changestate
trigger1 = ctrl = 1
trigger1 = var(7) = 1
trigger1 = statetype = a
trigger1 = command = "b" || command = "c" || command = "y" || command = "z"
value = 2105

[state -1, chaos!]
type = changestate
trigger1 = ctrl = 1
trigger1 = var(7) = 1
trigger1 = statetype = c
trigger1 = command = "down_b" || command = "down_c" || command = "down_y" || command = "down_z"
value = 2106 

;*******************************************************************************
;*******special attack**********************************************************
;*******************************************************************************
;throw1**********************************
[state -1, throw1]
type = changestate
trigger1 = command = "f_a"
trigger2 = command = "f_b"
trigger3 = command = "f_c"
triggerall = p2dist x < 65
triggerall = p2dist y < 10
triggerall = p2dist x > 0
triggerall = statetype = s
triggerall = ctrl = 1
value = 1002

;mystic smash****************************
[state -1, var]
type = varset
trigger1 = command = "smashx"
var(1) = 1

[state -1, var]
type = varset
trigger1 = command = "smashy"
var(1) = 2

[state -1, var]
type = varset
trigger1 = command = "smashz"
var(1) = 3

[state -1,mystic_smash]
type = changestate
trigger1 = command = "smashx"
trigger2 = command = "smashy"
trigger3 = command = "smashz"
triggerall = ctrl = 1
triggerall = statetype = s
value = 1100 

[state -1,myxtic_smash2]
type = changestate
trigger1 = command = "smashx"
trigger2 = command = "smashy"
trigger3 = command = "smashz"
triggerall = stateno = 52 || stateno = 50
triggerall = pos y > -5
triggerall = var(2) = 1
value = 1101 

[state -1,myxtic_smash3]
type = changestate
trigger1 = command = "smashx"
trigger2 = command = "smashy"
trigger3 = command = "smashz"
triggerall = statetype = a && movetype = a && stateno != 1101 && stateno != 1200 && stateno != 611 && stateno != 1501
;triggerall = pos y > -40
triggerall = var(2) = 1
value = 1101 

;stonize**********************************
[state -1, stonize]
type = changestate
trigger1 = ctrl = 1
triggerall = command = "down_y"
triggerall = statetype = a
trigger2 = stateno = 610
trigger2 = time > 5
trigger2 = movecontact = 1 
trigger2 = p2statetype = a
value = 1200

;mystic stare*****************************
[state -1, ???]
type = varset
triggerall = ctrl = 1
trigger1 = command = "ah"
var(3) = 1

[state -1, ???]
type = varset
triggerall = ctrl = 1
trigger1 = command = "bh"
var(3) = 2

[state -1, ???]
type = varset
triggerall = ctrl = 1
trigger1 = command = "ch"
var(3) = 3

[state -1, ???]
type = changestate
triggerall = ctrl = 1
trigger1 = command = "ah"
trigger2 = command = "bh"
trigger3 = command = "ch"
triggerall = statetype = s
value = 1300

;sp throw********************************
[state -1, spthrow]
type = changestate
triggerall = ctrl = 1
trigger1 = command = "sp_t_x"
trigger2 = command = "sp_t_y"
trigger3 = command = "sp_t_z"
triggerall = statetype = s
value = 1400

;energy drain****************************
[state  -1, energy_drain]
type = changestate
triggerall = ctrl = 1
;triggerall = statetype = s
triggerall = p2dist x < 65
triggerall = p2bodydist y < 2
triggerall = p2dist x > 0
triggerall = p2movetype != h
trigger1 = command = "f_x"
trigger2 = command = "f_y"
trigger3 = command = "f_z"
value = 1500

;gem activation*****************************
[state -1, gem]
type = changestate
triggerall = statetype = s
triggerall = command = "gem"
triggerall = ctrl  = 1
triggerall = var(10) != 0
triggerall = var(16) != 1 
trigger1 = power >= 500
value = 4000 

;super jump**********************************
[state -1, super jump]
type  =changestate
triggerall = statetype = s
trigger1 = command = "super_jump"
triggerall = ctrl = 1
trigger2 = stateno = 40
trigger2 = p2movetype = h
trigger2 = p2statetype = a
trigger2 = time = 0
trigger2 = abs(p2dist x) < 200
trigger2 = p2dist y < -85
value = 1640

;*******************************************************************************
;*******basic attack************************************************************
;*******************************************************************************

;*******standing****************************************************************
;standing low punch
[state -1, SLP]
type = changestate
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger2 = time > 5
trigger2 = prevstateno != 200
trigger3 = stateno = 1103
value = 200

;standing medium punch
[state -1, SMP]
type = changestate
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger2 = time > 3
trigger3 = stateno = 1103
;trigger3 = movecontact = 1
value = 210

;standing strong punch
[state -1, SSP]
type = changestate
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl = 1
value = 220

;standing low kick
[state -1, SLK]
type = changestate
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl = 1
value = 201

;standing medium kick
[state -1, SMK]
type = changestate
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl = 1
value = 211

;standing strong kick
[state -1, SSK]
type = changestate
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl = 1
value = 221

;********crouching**************************************************************
;crouching low punch
[state -1, CLP]
type = changestate
triggerall = command = "down_a" 
trigger1 = statetype = c
trigger1 = ctrl = 1
trigger2 = stateno = 401
trigger2 = time > 4
trigger2 = movecontact = 1
value = 400

;crouching medium punch
[state -1, CMP]
type = changestate
triggerall = command = "down_b" 
trigger1 = statetype = c
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = time > 5
trigger2 = movecontact = 1
value = 410

;crouching strong punch
[state -1, CSP]
type = changestate
triggerall = command = "down_c" 
trigger1 = statetype = c
trigger1 = ctrl = 1
value = 420

;crouching low kick
[state -1, CLK]
type = changestate
triggerall = command = "down_x" 
trigger1 = statetype = c
trigger1 = ctrl = 1
value = 401

;crouching medium kick
[state -1, CMK]
type = changestate
triggerall = command = "down_y" 
trigger1 = statetype = c
trigger1 = ctrl = 1
trigger2 = stateno = 410
trigger2 = time > 14
trigger2 = movecontact = 1
value = 411

;crouching strong kick
[state -1, CSK]
type = changestate
triggerall = command = "down_z" 
trigger1 = statetype = c
trigger1 = ctrl = 1
value = 421

;***********air*****************************************************************
;air low punch
[state -1, ALP]
type = changestate
triggerall = command = "a" 
trigger1 = statetype = a
trigger1 = ctrl = 1
trigger2 = stateno = 601
trigger2 = time > 3
trigger2 = movecontact = 1
value = 600

;air medium punch
[state -1, AMP]
type = changestate
triggerall = command = "b" 
trigger1 = statetype = a
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = time > 3
trigger2 = movecontact = 1
trigger3 = stateno = 601
trigger3 = time > 3
trigger3 = movecontact = 1
value = 610

;air strong punch
[state -1, ASP]
type = changestate
triggerall = command = "c" 
trigger1 = statetype = a
trigger1 = ctrl = 1
trigger2 = stateno = 600 
trigger2 = movecontact = 1
trigger2 = time > 3
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger3 = time > 5
trigger3 = p2statetype = a
trigger4 = stateno = 611
trigger4 = movecontact = 1
trigger4 = time > 6
trigger4 = p2statetype = a
value = 620

;air low kick
[state -1, ALK]
type = changestate
triggerall = command = "x" 
trigger1 = statetype = a
trigger1 = ctrl = 1
trigger2 = time > 3
trigger2 = movecontact = 1
trigger2 = stateno = 600  
value = 601

;air medium kick
[state -1, AMP]
type = changestate
triggerall = command = "y" 
trigger1 = statetype = a
trigger1 = ctrl = 1
trigger2 =  stateno = 600
trigger2 = movecontact = 1
trigger2 = time > 3
trigger3 =  stateno = 610
trigger3 = movecontact = 1
trigger3 = time > 5
trigger4 =  stateno = 601
trigger4 = movecontact = 1
trigger4 = time > 3
value = 611

;air strong kick
[state -1, ASP]
type = changestate
triggerall = command = "z" 
trigger1 = statetype = a
trigger1 = ctrl = 1
trigger2 = stateno = 610
trigger2 = movecontact = 1
trigger2 = time > 5
trigger3 = stateno = 611
trigger3 = movecontact = 1
trigger3 = time> 6
trigger3 = p2statetype = a
value = 621

[state -1, var]
type = null;varset
trigger1 = stateno = 1307
trigger1 = time = 0
var(9) = 2

[state -1, targetstate]
type = changestate
triggerall = stateno = 1301
triggerall = p2movetype !=h
trigger1 = numhelper(1302) = 0
trigger2 = numhelper(1303) = 0
trigger3 = numhelper(1304) = 0
trigger4 = numhelper(1305) = 0
trigger5 = numhelper(1306) = 0
;trigger1 = var(9) = 2
value = 1307

[state -1, targetstate]
type = changestate
triggerall = stateno = 1302
triggerall = p2movetype !=h
trigger1 = numhelper(1301) = 0
trigger2 = numhelper(1303) = 0
trigger3 = numhelper(1304) = 0
trigger4 = numhelper(1305) = 0
trigger5 = numhelper(1306) = 0
;trigger1 = var(9) = 2
value = 1307

;helper!!!
[state -1, targetstate]
type = changestate
triggerall = stateno = 1303
triggerall = p2movetype !=h
trigger1 = numhelper(1301) = 0
trigger2 = numhelper(1302) = 0
trigger3 = numhelper(1304) = 0
trigger4 = numhelper(1305) = 0
trigger5 = numhelper(1306) = 0
;trigger1 = var(9) = 2
value = 1307

[state -1, targetstate]
type = changestate
triggerall = stateno = 1304
triggerall = p2movetype !=h
trigger1 = numhelper(1302) = 0
trigger2 = numhelper(1303) = 0
trigger3 = numhelper(1301) = 0
trigger4 = numhelper(1305) = 0
trigger5 = numhelper(1306) = 0
;trigger1 = var(9) = 2
value = 1307

[state -1, targetstate]
type = changestate
triggerall = stateno = 1305
triggerall = p2movetype !=h
trigger1 = numhelper(1302) = 0
trigger2 = numhelper(1303) = 0
trigger3 = numhelper(1304) = 0
trigger4 = numhelper(1301) = 0
trigger5 = numhelper(1306) = 0
;trigger1 = var(9) = 2
value = 1307

[state -1, targetstate]
type = changestate
triggerall = stateno = 1306
triggerall = p2movetype !=h
trigger1 = numhelper(1302) = 0
trigger2 = numhelper(1303) = 0
trigger3 = numhelper(1304) = 0
trigger4 = numhelper(1305) = 0
trigger5 = numhelper(1301) = 0
;trigger1 = var(9) = 2
value = 1307


