; The CMD file.
; Written by Baby Bonnie Hood (bbhood21@yahoo.com)
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
;               command = /F, a    ;hold fwd while you press a
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

;-| AI Activation Commands |-----------------------------------------------
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
name = "blah"
command = ~F, DF, D, DF, F, B, DB, D, DB, B, F, B, F, s
time = 75

[Command]
name = "feh"
command = c, y, a, D, x, b, z, a, c, y, y, U, s
time = 75

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
name = "cruel"
command = ~D, DF, F, x+y+z

[Command]
name = "memory"
command = ~D, DF, F, a+b+c

[Command]
name = "darkforce"
command = ~D, DF, F, z+c

[Command]
name = "bazooka"
command = ~D, DB, B, x+y+z

[Command]
name = "apple"
command = ~D, DB, B, a+b+c

[Command]
name = "heal"
command = ~D, D, x+y+z

[Command]
name = "toy"
command = ~D, D, a+b+c

[Command]
name = "es_hi_missile"
command = ~30$B, F, x+y
time = 10

[Command]
name = "es_hi_missile"
command = ~30$B, F, y+z
time = 10

[Command]
name = "es_hi_missile"
command = ~30$B, F, x+z
time = 10

[Command]
name = "es_lo_missile"
command = ~30$B, F, a+b
time = 10

[Command]
name = "es_lo_missile"
command = ~30$B, F, b+c
time = 10

[Command]
name = "es_lo_missile"
command = ~30$B, F, a+c
time = 10

[Command]
name = "es_vert_missile"
command = ~30$D, U, x+y
time = 10

[Command]
name = "es_vert_missile"
command = ~30$D, U, y+z
time = 10

[Command]
name = "es_vert_missile"
command = ~30$D, U, x+z
time = 10

[Command]
name = "es_fire_a"
command = ~F, D, F, x+y

[Command]
name = "es_fire_b"
command = ~F, D, F, y+z

[Command]
name = "es_fire_a"
command = ~F, D, F, x+z

[Command]
name = "es_s_typhoon"
command = ~B, D, B, y+z

[Command]
name = "es_gc"
command = ~B, D, B, a+b

[Command]
name = "es_gc"
command = ~B, D, B, b+c

[Command]
name = "es_gc"
command = ~B, D, B, a+c

[Command]
name = "es_basket"
command = ~D, DB, B, x+y

[Command]
name = "es_basket"
command = ~D, DB, B, y+z

[Command]
name = "es_basket"
command = ~D, DB, B, x+z

;-| Special Motions |------------------------------------------------------
[Command]
name = "missile_x"
command = ~30$B, F, x
time = 10

[Command]
name = "missile_y"
command = ~30$B, F, y
time = 10

[Command]
name = "missile_z"
command = ~30$B, F, z
time = 10

[Command]
name = "missile_a"
command = ~30$B, F, a
time = 10

[Command]
name = "missile_b"
command = ~30$B, F, b
time = 10

[Command]
name = "missile_c"
command = ~30$B, F, c
time = 10

[Command]
name = "vert_missile_x"
command = ~30$D, U, x
time = 10

[Command]
name = "vert_missile_y"
command = ~30$D, U, y
time = 10

[Command]
name = "vert_missile_z"
command = ~30$D, U, z
time = 10

[Command]
name = "fire_x"
command = ~F, D, F, x

[Command]
name = "fire_y"
command = ~F, D, F, y

[Command]
name = "fire_z"
command = ~F, D, F, z

[Command]
name = "s_typhoon"
command = ~B, D, B, y

[Command]
name = "s_typhoon"
command = ~B, D, B, z

[Command]
name = "gc_a"
command = ~B, D, B, a

[Command]
name = "gc_b"
command = ~B, D, B, b

[Command]
name = "gc_c"
command = ~B, D, B, c

[Command]
name = "basket_x"
command = ~D, DB, B, x

[Command]
name = "basket_y"
command = ~D, DB, B, y

[Command]
name = "basket_z"
command = ~D, DB, B, z

[Command]
name = "slide"
command = /$D,a+b+c
time = 1

[Command]
name = "longjump"
command = D, $U
time = 18

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"       ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"       ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery" ;Required (do not remove)
command = y+z
time = 1

[Command]
name = "recovery" ;Required (do not remove)
command = x+z
time = 1

[Command]
name = "abc"
command = a+b+c
time = 1

[Command]
name = "xyz"
command = x+y+z
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
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
name = "s"
command = s
time = 1

;-| Hold Button |-----------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"  ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup"   ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1


;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1]                  ;Don't change this
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
v = 21
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
v = 21
value = 2

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
v = 21
value = 3

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
v = 21
value = 4

[State -1]
type = VarSet
trigger1 = roundstate != 2
v = 21
value = 0

;AI Ground Combo 1
[State -1]
type = ChangeState
value = 400
triggerall = var(30) = 0
triggerall = var(21) = 1
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = P2BodyDist X <= 50
trigger1 = random < 300

[State -1]
type = ChangeState
value = 410
triggerall = var(30) = 0
triggerall = var(21) = 1
trigger1 = stateno = 400
trigger1 = movecontact

[State -1]
type = ChangeState
value = 240
triggerall = var(30) = 0
triggerall = var(21) = 1
triggerall = random < 250
trigger1 = stateno = 410
trigger1 = movecontact

[State -1]
type = ChangeState
value = 440
triggerall = var(30) = 0
triggerall = var(21) = 1
triggerall = random = [250,500]
trigger1 = stateno = 410
trigger1 = movecontact

[State -1]
type = ChangeState
value = 870
triggerall = var(30) = 0
triggerall = var(21) = 1
triggerall = random = [500,750]
trigger1 = stateno = 410
trigger1 = movecontact

[State -1]
type = ChangeState
value = 920
triggerall = var(30) = 0
triggerall = var(21) = 1
triggerall = power >= 500
triggerall = random > 750
trigger1 = stateno = 410
trigger1 = movecontact

;AI Ground Combo 2
[State -1]
type = ChangeState
value = 400
triggerall = var(30) = 0
triggerall = var(21) = 2
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = P2BodyDist X <= 50
trigger1 = random = [0,150]

[State -1]
type = ChangeState
value = 410
triggerall = var(30) = 0
triggerall = var(21) = 2
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = P2BodyDist X <= 50
trigger1 = random = [150,300]

[State -1]
type = ChangeState
value = 420
triggerall = var(30) = 0
triggerall = var(21) = 2
triggerall = random < 500
trigger1 = stateno = 400
trigger1 = movecontact
trigger2 = stateno = 410
trigger2 = movecontact

[State -1]
type = ChangeState
value = 430
triggerall = var(30) = 0
triggerall = var(21) = 2
triggerall = random >= 500
trigger1 = stateno = 400
trigger1 = movecontact
trigger2 = stateno = 410
trigger2 = movecontact

[State -1]
type = ChangeState
value = 450
triggerall = var(30) = 0
triggerall = var(21) = 2
trigger1 = stateno = 420
trigger1 = movecontact
trigger2 = stateno = 430
trigger2 = movecontact

[State -1]
type = ChangeState
value = 800
triggerall = var(21) = 2
trigger1 = stateno = 450
trigger1 = movehit
trigger1 = random < 300

;AI Ground Combo 3
[State -1]
type = ChangeState
value = 200
triggerall = var(30) = 0
triggerall = var(21) = 3
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = P2BodyDist X <= 50
trigger1 = random < 300

[State -1]
type = ChangeState
value = 220
triggerall = var(30) = 0
triggerall = var(21) = 3
trigger1 = stateno = 200
trigger1 = movecontact

[State -1]
type = ChangeState
value = 225
triggerall = var(30) = 0
triggerall = var(21) = 3
trigger1 = stateno = 220
trigger1 = movecontact

[State -1]
type = ChangeState
value = 841
triggerall = var(30) = 0
triggerall = var(21) = 3
triggerall = random < 333
trigger1 = P2BodyDist X <= 35
trigger1 = stateno = 225
trigger1 = movehit

[State -1]
type = ChangeState
value = 3100
triggerall = var(30) = 0
triggerall = var(21) = 3
triggerall = random = [333,666]
triggerall = power >= 1000
trigger1 = P2BodyDist X <= 35
trigger1 = stateno = 225
trigger1 = movehit

[State -1]
type = ChangeState
value = 3400
triggerall = var(30) = 0
triggerall = var(21) = 3
triggerall = random > 666
triggerall = power >= 1000
trigger1 = P2BodyDist X <= 35
trigger1 = stateno = 225
trigger1 = movehit

[State -1]
type = ChangeState
value = 250
triggerall = var(30) = 0
triggerall = var(21) = 3
triggerall = random < 200
trigger1 = stateno = 225
trigger1 = movecontact

[State -1]
type = ChangeState
value = 455
triggerall = var(30) = 0
triggerall = var(21) = 3
triggerall = random = [200,400]
trigger1 = stateno = 225
trigger1 = movecontact

[State -1]
type = ChangeState
value = 3400
triggerall = var(30) = 0
triggerall = var(21) = 3
triggerall = random = [400,600]
triggerall = power >= 1000
trigger1 = stateno = 225
trigger1 = movecontact

[State -1]
type = ChangeState
value = 870
triggerall = var(30) = 0
triggerall = var(21) = 3
triggerall = random = [600,800]
trigger1 = stateno = 225
trigger1 = movecontact

[State -1]
type = ChangeState
value = 920
triggerall = var(30) = 0
triggerall = var(21) = 3
triggerall = power >= 500
triggerall = random > 800
trigger1 = stateno = 225
trigger1 = movecontact

;AI Ground Combo 4
[State -1]
type = ChangeState
value = 210
triggerall = var(30) = 0
triggerall = var(21) = 4
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = P2BodyDist X <= 50
trigger1 = random < 300

[State -1]
type = ChangeState
value = 230
triggerall = var(30) = 0
triggerall = var(21) = 4
trigger1 = stateno = 210
trigger1 = movecontact

[State -1]
type = ChangeState
value = 235
triggerall = var(30) = 0
triggerall = var(21) = 4
trigger1 = stateno = 230
trigger1 = movecontact

[State -1]
type = ChangeState
value = 40
triggerall = var(21) = 4
triggerall = random < 250
trigger1 = stateno = 235
trigger1 = movehit
ctrl = 1

[State -1]
type = ChangeState
value = 871
triggerall = var(30) = 0
triggerall = var(21) = 4
triggerall = random = [250,500]
trigger1 = stateno = 235
trigger1 = movehit

[State -1]
type = ChangeState
value = 872
triggerall = var(30) = 0
triggerall = var(21) = 4
triggerall = random = [500,750]
trigger1 = stateno = 235
trigger1 = movehit

[State -1]
type = ChangeState
value = 925
triggerall = var(30) = 0
triggerall = var(21) = 4
triggerall = power >= 500
triggerall = random > 750
trigger1 = stateno = 235
trigger1 = movehit

;AI Air Combo 1
[State -1]
type = ChangeState
value = 600
triggerall = var(30) = 0
triggerall = var(21) = 1
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger1 = P2BodyDist X <= 50
trigger1 = random < 300

[State -1]
type = ChangeState
value = 625
triggerall = var(30) = 0
triggerall = var(21) = 1
trigger1 = stateno = 600
trigger1 = movecontact

[State -1]
type = ChangeState
value = 640
triggerall = var(30) = 0
triggerall = var(21) = 1
trigger1 = stateno = 625
trigger1 = movecontact

;AI Air Combo 2
[State -1]
type = ChangeState
value = 620
triggerall = var(30) = 0
triggerall = var(21) = 2
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger1 = P2BodyDist X <= 50
trigger1 = random < 300

[State -1]
type = ChangeState
value = 635
triggerall = var(30) = 0
triggerall = var(21) = 2
trigger1 = stateno = 620
trigger1 = movecontact

;AI Air Combo 3
[State -1]
type = ChangeState
value = 610
triggerall = var(30) = 0
triggerall = var(21) = 3
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger1 = P2BodyDist X <= 50
trigger1 = random < 300

[State -1]
type = ChangeState
value = 630
triggerall = var(30) = 0
triggerall = var(21) = 3
trigger1 = stateno = 610
trigger1 = movecontact

[State -1]
type = ChangeState
value = 650
triggerall = var(30) = 0
triggerall = var(21) = 3
trigger1 = stateno = 630
trigger1 = movecontact

;AI Air Combo 4
[State -1]
type = ChangeState
value = 600
triggerall = var(30) = 0
triggerall = var(21) = 4
trigger1 = P2Movetype != A
trigger1 = ctrl = 1
trigger1 = statetype = A
trigger1 = P2BodyDist X <= 50
trigger1 = random < 300

[State -1]
type = ChangeState
value = 610
triggerall = var(30) = 0
triggerall = var(21) = 4
trigger1 = stateno = 600
trigger1 = movecontact

[State -1]
type = ChangeState
value = 620
triggerall = var(30) = 0
triggerall = var(21) = 4
trigger1 = stateno = 610
trigger1 = movecontact

[State -1]
type = ChangeState
value = 635
triggerall = var(30) = 0
triggerall = var(21) = 4
trigger1 = stateno = 620
trigger1 = movecontact

[State -1]
type = ChangeState
value = 645
triggerall = var(30) = 0
triggerall = var(21) = 4
triggerall = random < 250
trigger1 = stateno = 635
trigger1 = movecontact

[State -1]
type = ChangeState
value = 650
triggerall = var(30) = 0
triggerall = var(21) = 4
triggerall = random = [250,500]
trigger1 = stateno = 635
trigger1 = movecontact

[State -1]
type = ChangeState
value = 862
triggerall = var(30) = 0
triggerall = var(21) = 4
triggerall = random = [500,750]
triggerall = numprojID(820) = 0
trigger1 = stateno = 635
trigger1 = movecontact

[State -1]
type = ChangeState
value = 901
triggerall = var(30) = 0
triggerall = var(21) = 4
triggerall = power >= 500
triggerall = random > 750
triggerall = numprojID(820) = 0
trigger1 = stateno = 635
trigger1 = movecontact

[State -1]
type = ChangeState
value = 7300
triggerall = command = "blah"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 7302
triggerall = command = "feh"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;AI Shyness & Strike cancels
[State -1]
type = ChangeState
value = 3000
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = power >= 1000
triggerall = FrontEdgeDist > 100
triggerall = random < 333
trigger1 = stateno = 840
trigger1 = movehit
trigger2 = stateno = 841
trigger2 = movehit
trigger3 = stateno = 842
trigger3 = movehit
trigger4 = stateno = 910
trigger4 = movehit

[State -1]
type = ChangeState
value = 3200
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = power >= 1000
triggerall = FrontEdgeDist > 100
triggerall = random = [333,666]
trigger1 = stateno = 840
trigger1 = movehit
trigger2 = stateno = 841
trigger2 = movehit
trigger3 = stateno = 842
trigger3 = movehit
trigger4 = stateno = 910
trigger4 = movehit

[State -1]
type = ChangeState
value = 3600
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = power >= 1000
triggerall = FrontEdgeDist > 100
triggerall = random > 666
trigger1 = stateno = 840
trigger1 = movehit
trigger2 = stateno = 841
trigger2 = movehit
trigger3 = stateno = 842
trigger3 = movehit
trigger4 = stateno = 910
trigger4 = movehit

[State -1]
type = ChangeState
value = 3100
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = power >= 1000
triggerall = FrontEdgeDist <= 100
trigger1 = stateno = 840
trigger1 = movehit
trigger2 = stateno = 841
trigger2 = movehit
trigger3 = stateno = 842
trigger3 = movehit
trigger4 = stateno = 910
trigger4 = movehit

;AI Smile & Missile
[State -1]
type = ChangeState
value = 820
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = numprojID(820) = 0
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2BodyDist X > 130
triggerall = stateno != 100
trigger1 = ctrl = 1
trigger1 = random < 10

[State -1]
type = ChangeState
value = 821
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = numprojID(820) = 0
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2BodyDist X > 130
triggerall = stateno != 100
trigger1 = ctrl = 1
trigger1 = random = [10,20]

[State -1]
type = ChangeState
value = 822
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = numprojID(820) = 0
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2BodyDist X > 130
triggerall = stateno != 100
trigger1 = ctrl = 1
trigger1 = random = [20,30]

[State -1]
type = ChangeState
value = 880
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = power >= 500
triggerall = numprojID(820) = 0
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2BodyDist X > 130
triggerall = stateno != 100
trigger1 = ctrl = 1
trigger1 = random = [30,40]

[State -1]
type = ChangeState
value = 830
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = numprojID(820) = 0
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2BodyDist X > 130
triggerall = stateno != 100
trigger1 = ctrl = 1
trigger1 = random = [40,50]

[State -1]
type = ChangeState
value = 831
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = numprojID(820) = 0
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2BodyDist X > 130
triggerall = stateno != 100
trigger1 = ctrl = 1
trigger1 = random = [50,60]

[State -1]
type = ChangeState
value = 832
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = numprojID(820) = 0
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2BodyDist X > 130
triggerall = stateno != 100
trigger1 = ctrl = 1
trigger1 = random = [60,70]

[State -1]
type = ChangeState
value = 890
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = power >= 500
triggerall = numprojID(820) = 0
triggerall = StateType != A
triggerall = Movetype != H
triggerall = P2BodyDist X > 130
triggerall = stateno != 100
trigger1 = ctrl = 1
trigger1 = random = [70,80]

[State -1]
type = ChangeState
value = 860
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = numprojID(820) = 0
triggerall = StateType = A
triggerall = Movetype != H
triggerall = P2BodyDist X > 80
trigger1 = ctrl = 1
trigger1 = random < 10

[State -1]
type = ChangeState
value = 861
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = numprojID(820) = 0
triggerall = StateType = A
triggerall = Movetype != H
triggerall = P2BodyDist X > 80
trigger1 = ctrl = 1
trigger1 = random = [10,20]

[State -1]
type = ChangeState
value = 862
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = numprojID(820) = 0
triggerall = StateType = A
triggerall = Movetype != H
triggerall = P2BodyDist X > 80
trigger1 = ctrl = 1
trigger1 = random = [20,30]

[State -1]
type = ChangeState
value = 901
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = power >= 500
triggerall = numprojID(820) = 0
triggerall = StateType = A
triggerall = Movetype != H
triggerall = P2BodyDist X > 80
trigger1 = ctrl = 1
trigger1 = random = [30,40]

;AI Cruel Hunting cancel from Smile & Missile
[State -1]
type = ChangeState
value = 3000
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = power >= 1000
triggerall = P2BodyDist X > 130
triggerall = Time >= 12
triggerall = random < 25
trigger1 = stateno = 820
trigger2 = stateno = 821
trigger3 = stateno = 822
trigger4 = stateno = 830
trigger5 = stateno = 831
trigger6 = stateno = 832
trigger7 = stateno = 880
trigger8 = stateno = 890

;AI Delightful Shower cancel from Smile & Missile
[State -1]
type = ChangeState
value = 3200
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = power >= 1000
triggerall = P2BodyDist X > 80
triggerall = Time >= 12
triggerall = random = [25,50]
trigger1 = stateno = 820
trigger2 = stateno = 821
trigger3 = stateno = 822
trigger4 = stateno = 830
trigger5 = stateno = 831
trigger6 = stateno = 832
trigger7 = stateno = 880
trigger8 = stateno = 890

[State -1]
type = ChangeState
value = 3200
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = power >= 1000
triggerall = Time >= 18
triggerall = random < 50
trigger1 = stateno = 860
trigger2 = stateno = 861
trigger3 = stateno = 862
trigger4 = stateno = 901

;AI Malice Toy cancel from Smile & Missile
[State -1]
type = ChangeState
value = 3300
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = power >= 1000
triggerall = P2BodyDist X > 130
triggerall = Time >= 12
triggerall = random = [50,75]
trigger1 = stateno = 820
trigger2 = stateno = 821
trigger3 = stateno = 822
trigger4 = stateno = 830
trigger5 = stateno = 831
trigger6 = stateno = 832
trigger7 = stateno = 880
trigger8 = stateno = 890

;AI Bazooka Ransha cancel from Smile & Missile
[State -1]
type = ChangeState
value = 3600
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = power >= 1000
triggerall = P2BodyDist X > 130
triggerall = Time >= 12
triggerall = random = [75,100]
trigger1 = stateno = 820
trigger2 = stateno = 821
trigger3 = stateno = 822
trigger4 = stateno = 830
trigger5 = stateno = 831
trigger6 = stateno = 832
trigger7 = stateno = 880
trigger8 = stateno = 890

;AI Bazooka Ransha
[State -1]
type = ChangeState
value = 3620
triggerall = var(30) = 1
triggerall = var(31) < 400
triggerall = var(21) > 0
triggerall = P2BodyDist X > 0
triggerall = random < 166
trigger1 = StateType != A && ctrl = 1
trigger2 = stateno = 3620 && AnimElemTime(9) > 0
trigger3 = stateno = 3621 && AnimElemTime(9) > 0
trigger4 = stateno = 3622 && AnimElemTime(9) > 0
trigger5 = stateno = 3623 && AnimElemTime(9) > 0
trigger6 = stateno = 3624 && AnimElemTime(9) > 0
trigger7 = stateno = 3625 && AnimElemTime(9) > 0

[State -1]
type = ChangeState
value = 3621
triggerall = var(30) = 1
triggerall = var(31) < 400
triggerall = var(21) > 0
triggerall = P2BodyDist X > 0
triggerall = random = [166,333]
trigger1 = StateType != A && ctrl = 1
trigger2 = stateno = 3620 && AnimElemTime(9) > 0
trigger3 = stateno = 3621 && AnimElemTime(9) > 0
trigger4 = stateno = 3622 && AnimElemTime(9) > 0
trigger5 = stateno = 3623 && AnimElemTime(9) > 0
trigger6 = stateno = 3624 && AnimElemTime(9) > 0
trigger7 = stateno = 3625 && AnimElemTime(9) > 0

[State -1]
type = ChangeState
value = 3622
triggerall = var(30) = 1
triggerall = var(31) < 400
triggerall = var(21) > 0
triggerall = P2BodyDist X > 0
triggerall = random = [333,500]
trigger1 = StateType != A && ctrl = 1
trigger2 = stateno = 3620 && AnimElemTime(9) > 0
trigger3 = stateno = 3621 && AnimElemTime(9) > 0
trigger4 = stateno = 3622 && AnimElemTime(9) > 0
trigger5 = stateno = 3623 && AnimElemTime(9) > 0
trigger6 = stateno = 3624 && AnimElemTime(9) > 0
trigger7 = stateno = 3625 && AnimElemTime(9) > 0

[State -1]
type = ChangeState
value = 3623
triggerall = var(30) = 1
triggerall = var(31) < 400
triggerall = var(21) > 0
triggerall = P2BodyDist X > 0
triggerall = random = [500,666]
trigger1 = StateType != A && ctrl = 1
trigger2 = stateno = 3620 && AnimElemTime(9) > 0
trigger3 = stateno = 3621 && AnimElemTime(9) > 0
trigger4 = stateno = 3622 && AnimElemTime(9) > 0
trigger5 = stateno = 3623 && AnimElemTime(9) > 0
trigger6 = stateno = 3624 && AnimElemTime(9) > 0
trigger7 = stateno = 3625 && AnimElemTime(9) > 0

[State -1]
type = ChangeState
value = 3624
triggerall = var(30) = 1
triggerall = var(31) < 400
triggerall = var(21) > 0
triggerall = P2BodyDist X > 0
triggerall = random = [666,833]
trigger1 = StateType != A && ctrl = 1
trigger2 = stateno = 3620 && AnimElemTime(9) > 0
trigger3 = stateno = 3621 && AnimElemTime(9) > 0
trigger4 = stateno = 3622 && AnimElemTime(9) > 0
trigger5 = stateno = 3623 && AnimElemTime(9) > 0
trigger6 = stateno = 3624 && AnimElemTime(9) > 0
trigger7 = stateno = 3625 && AnimElemTime(9) > 0

[State -1]
type = ChangeState
value = 3625
triggerall = var(30) = 1
triggerall = var(31) < 400
triggerall = var(21) > 0
triggerall = P2BodyDist X > 0
triggerall = random > 833
trigger1 = StateType != A && ctrl = 1
trigger2 = stateno = 3620 && AnimElemTime(9) > 0
trigger3 = stateno = 3621 && AnimElemTime(9) > 0
trigger4 = stateno = 3622 && AnimElemTime(9) > 0
trigger5 = stateno = 3623 && AnimElemTime(9) > 0
trigger6 = stateno = 3624 && AnimElemTime(9) > 0
trigger7 = stateno = 3625 && AnimElemTime(9) > 0

;AI Dash
[State -1]
type = ChangeState
triggerall = var(21) > 0
triggerall = StateType != A
triggerall = Movetype != H
triggerall = stateno != 100
triggerall = (P2Movetype != A) && (enemy, NumProj = 0)
trigger1 = ctrl = 1
trigger1 = random < 100
value = 100
ctrl = 1

;AI Dash after Smile & Missile/Cruel Hunting/Malice Toy
[State -1]
type = ChangeState
triggerall = var(21) > 0
triggerall = StateType != A
triggerall = Movetype != H
triggerall = (P2Movetype != A) && (enemy, NumProj = 0)
trigger1 = stateno = 820
trigger1 = animtime = 0
trigger2 = stateno = 821
trigger2 = animtime = 0
trigger3 = stateno = 822
trigger3 = animtime = 0
trigger4 = stateno = 830
trigger4 = animtime = 0
trigger5 = stateno = 831
trigger5 = animtime = 0
trigger6 = stateno = 832
trigger6 = animtime = 0
trigger7 = stateno = 880
trigger7 = animtime = 0
trigger8 = stateno = 890
trigger8 = animtime = 0
trigger9 = stateno = 3000
trigger9 = animtime = 0
trigger10 = stateno = 3300
trigger10 = animtime = 0
value = 100
ctrl = 1

;AI Tell Me Why
[State -1]
type = ChangeState
value = 800
triggerall = var(21) > 0
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger1 = P2BodyDist X <= 130
trigger1 = random < 25

;AI Embrace & Bomb
[State -1]
type = ChangeState
value = 2000
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno != 100
triggerall = stateno != 105
trigger1 = random < 50
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1]
type = ChangeState
value = 2010
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 9
triggerall = p2bodydist Y > -22
triggerall = p2bodydist Y < 22
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = random < 50

;AI Catch & Cut
[State -1]
type = ChangeState
value = 2020
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno != 100
triggerall = stateno != 105
trigger1 = random = [50,100]
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1]
type = ChangeState
value = 2025
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 9
triggerall = p2bodydist Y > -22
triggerall = p2bodydist Y < 22
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = random = [50,100]

;AI Roar of the Bullet
[State -1]
type = ChangeState
value = 2030
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno != 100
triggerall = stateno != 105
trigger1 = random = [100,150]
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1]
type = ChangeState
value = 2035
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 9
triggerall = p2bodydist Y > -22
triggerall = p2bodydist Y < 22
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = random = [100,150]

;AI Sentimental Typhoon
[State -1]
type = ChangeState
value = 2100
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno != 100
triggerall = stateno != 105
trigger1 = random < 25
trigger1 = p2bodydist X < 20
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

[State -1]
type = ChangeState
value = 2110
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = power >= 500
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno != 100
triggerall = stateno != 105
trigger1 = random = [25,50]
trigger1 = p2bodydist X < 20
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

;AI Get-up Attack
[State -1]
type = ChangeState
value = 6002
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = random < 750
triggerall = P2BodyDist X = [-50,50]
trigger1 = stateno = 5120
trigger1 = Time = 1

;AI Cheer & Fire
[State -1]
type = ChangeState
value = 872
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = P2BodyDist X <= 20
trigger1 = statetype != A
trigger1 = p2statetype = A
trigger1 = ctrl = 1
trigger1 = random < 100

[State -1]
type = ChangeState
value = 871
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = P2BodyDist X <= 40
trigger1 = statetype != A
trigger1 = p2statetype = A
trigger1 = ctrl = 1
trigger1 = random < 50

[State -1]
type = ChangeState
value = 925
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = power >= 500
triggerall = P2BodyDist X <= 40
trigger1 = statetype != A
trigger1 = p2statetype = A
trigger1 = ctrl = 1
trigger1 = random = [50,100]

[State -1]
type = ChangeState
value = 870
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = P2BodyDist X <= 60
trigger1 = statetype != A
trigger1 = p2statetype = A
trigger1 = ctrl = 1
trigger1 = random < 50

[State -1]
type = ChangeState
value = 920
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = power >= 500
triggerall = P2BodyDist X <= 60
trigger1 = statetype != A
trigger1 = p2statetype = A
trigger1 = ctrl = 1
trigger1 = random = [50,100]

;AI Jealousy & Fake
[State -1]
type = ChangeState
value = 930
triggerall = var(21) > 0
trigger1 = stateno = [150,153]
trigger1 = Anim != 6650 && Anim != 6651
trigger1 = random < 10

[State -1]
type = ChangeState
value = 931
triggerall = var(21) > 0
trigger1 = stateno = [150,153]
trigger1 = Anim != 6650 && Anim != 6651
trigger1 = random = [10,20]

[State -1]
type = ChangeState
value = 932
triggerall = var(21) > 0
trigger1 = stateno = [150,153]
trigger1 = Anim != 6650 && Anim != 6651
trigger1 = random = [20,30]

[State -1]
type = ChangeState
value = 940
triggerall = var(21) > 0
triggerall = power >= 500
trigger1 = stateno = [150,153]
trigger1 = Anim != 6650 && Anim != 6651
trigger1 = random = [30,40]

;AI Attack after Jealousy & Fake
[State -1]
type = ChangeState
value = 400
triggerall = var(30) = 0
triggerall = var(21) = 1
triggerall = P2BodyDist X <= 50
trigger1 = stateno = 930
trigger1 = animtime = 0
trigger2 = stateno = 931
trigger2 = animtime = 0
trigger3 = stateno = 932
trigger3 = animtime = 0
trigger4 = stateno = 940
trigger4 = animtime = 0

[State -1]
type = ChangeState
value = 400
triggerall = var(30) = 0
triggerall = var(21) = 2
triggerall = P2BodyDist X <= 50
triggerall = random < 500
trigger1 = stateno = 930
trigger1 = animtime = 0
trigger2 = stateno = 931
trigger2 = animtime = 0
trigger3 = stateno = 932
trigger3 = animtime = 0
trigger4 = stateno = 940
trigger4 = animtime = 0

[State -1]
type = ChangeState
value = 410
triggerall = var(30) = 0
triggerall = var(21) = 2
triggerall = P2BodyDist X <= 50
triggerall = random >= 500
trigger1 = stateno = 930
trigger1 = animtime = 0
trigger2 = stateno = 931
trigger2 = animtime = 0
trigger3 = stateno = 932
trigger3 = animtime = 0
trigger4 = stateno = 940
trigger4 = animtime = 0

[State -1]
type = ChangeState
value = 200
triggerall = var(30) = 0
triggerall = var(21) = 3
triggerall = P2BodyDist X <= 50
trigger1 = stateno = 930
trigger1 = animtime = 0
trigger2 = stateno = 931
trigger2 = animtime = 0
trigger3 = stateno = 932
trigger3 = animtime = 0
trigger4 = stateno = 940
trigger4 = animtime = 0

[State -1]
type = ChangeState
value = 210
triggerall = var(30) = 0
triggerall = var(21) = 4
triggerall = P2BodyDist X <= 50
trigger1 = stateno = 930
trigger1 = animtime = 0
trigger2 = stateno = 931
trigger2 = animtime = 0
trigger3 = stateno = 932
trigger3 = animtime = 0
trigger4 = stateno = 940
trigger4 = animtime = 0

[State -1]
type = ChangeState
value = 820
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = numprojID(820) = 0
triggerall = P2BodyDist X > 130
triggerall = random < 125
trigger1 = stateno = 930
trigger1 = animtime = 0
trigger2 = stateno = 931
trigger2 = animtime = 0
trigger3 = stateno = 932
trigger3 = animtime = 0
trigger4 = stateno = 940
trigger4 = animtime = 0

[State -1]
type = ChangeState
value = 821
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = numprojID(820) = 0
triggerall = P2BodyDist X > 130
triggerall = random = [125,250]
trigger1 = stateno = 930
trigger1 = animtime = 0
trigger2 = stateno = 931
trigger2 = animtime = 0
trigger3 = stateno = 932
trigger3 = animtime = 0
trigger4 = stateno = 940
trigger4 = animtime = 0

[State -1]
type = ChangeState
value = 822
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = numprojID(820) = 0
triggerall = P2BodyDist X > 130
triggerall = random = [250,375]
trigger1 = stateno = 930
trigger1 = animtime = 0
trigger2 = stateno = 931
trigger2 = animtime = 0
trigger3 = stateno = 932
trigger3 = animtime = 0
trigger4 = stateno = 940
trigger4 = animtime = 0

[State -1]
type = ChangeState
value = 880
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = power >= 500
triggerall = numprojID(820) = 0
triggerall = P2BodyDist X > 130
triggerall = random = [375,500]
trigger1 = stateno = 930
trigger1 = animtime = 0
trigger2 = stateno = 931
trigger2 = animtime = 0
trigger3 = stateno = 932
trigger3 = animtime = 0
trigger4 = stateno = 940
trigger4 = animtime = 0

[State -1]
type = ChangeState
value = 830
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = numprojID(820) = 0
triggerall = P2BodyDist X > 130
triggerall = random = [500,625]
trigger1 = stateno = 930
trigger1 = animtime = 0
trigger2 = stateno = 931
trigger2 = animtime = 0
trigger3 = stateno = 932
trigger3 = animtime = 0
trigger4 = stateno = 940
trigger4 = animtime = 0

[State -1]
type = ChangeState
value = 831
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = numprojID(820) = 0
triggerall = P2BodyDist X > 130
triggerall = random = [625,750]
trigger1 = stateno = 930
trigger1 = animtime = 0
trigger2 = stateno = 931
trigger2 = animtime = 0
trigger3 = stateno = 932
trigger3 = animtime = 0
trigger4 = stateno = 940
trigger4 = animtime = 0

[State -1]
type = ChangeState
value = 832
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = numprojID(820) = 0
triggerall = P2BodyDist X > 130
triggerall = random = [750,875]
trigger1 = stateno = 930
trigger1 = animtime = 0
trigger2 = stateno = 931
trigger2 = animtime = 0
trigger3 = stateno = 932
trigger3 = animtime = 0
trigger4 = stateno = 940
trigger4 = animtime = 0

[State -1]
type = ChangeState
value = 890
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = power >= 500
triggerall = numprojID(820) = 0
triggerall = P2BodyDist X > 130
triggerall = random > 875
trigger1 = stateno = 930
trigger1 = animtime = 0
trigger2 = stateno = 931
trigger2 = animtime = 0
trigger3 = stateno = 932
trigger3 = animtime = 0
trigger4 = stateno = 940
trigger4 = animtime = 0

;AI Advancing Guard
[State -1]
type = ChangeState
value = 6650
triggerall = var(21) > 0
triggerall = random < 50
trigger1 = stateno = [150,151]
trigger1 = Anim != 6650 && Anim != 6651

[State -1]
type = ChangeState
value = 6651
triggerall = var(21) > 0
triggerall = random < 50
trigger1 = stateno = [152,153]
trigger1 = Anim != 6650 && Anim != 6651

[State -1]
type = ChangeState
value = 6652
triggerall = var(21) > 0
triggerall = random < 50
trigger1 = stateno = 154 && Anim != 6652
trigger2 = stateno = 155 && Time <= 10 && Anim != 6652

;AI Guard Cancel
[State -1]
type = ChangeState
value = 6900
triggerall = var(21) > 0
triggerall = power >= 500
triggerall = random < 50
trigger1 = stateno = [150,151]
trigger1 = Anim != 6650 && Anim != 6651

[State -1]
type = ChangeState
value = 6901
triggerall = var(21) > 0
triggerall = power >= 500
triggerall = random < 50
trigger1 = stateno = [152,153]
trigger1 = Anim != 6650 && Anim != 6651

[State -1]
type = ChangeState
value = 6902
triggerall = var(21) > 0
triggerall = power >= 500
triggerall = random < 50
trigger1 = stateno = 154 && Anim != 6652
trigger2 = stateno = 155 && Time <= 10 && Anim != 6652

;AI Attack after Guard Cancel
[State -1]
type = ChangeState
value = 822
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = numprojID(820) = 0
triggerall = random < 100
trigger1 = stateno = 6900 || stateno = 6901
trigger1 = time >= 25

[State -1]
type = ChangeState
value = 880
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = power >= 500
triggerall = numprojID(820) = 0
triggerall = random = [100,200]
trigger1 = stateno = 6900 || stateno = 6901
trigger1 = time >= 25

[State -1]
type = ChangeState
value = 832
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = numprojID(820) = 0
triggerall = random = [200,300]
trigger1 = stateno = 6900 || stateno = 6901
trigger1 = time >= 25

[State -1]
type = ChangeState
value = 890
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = power >= 500
triggerall = numprojID(820) = 0
triggerall = random = [300,400]
trigger1 = stateno = 6900 || stateno = 6901
trigger1 = time >= 25

[State -1]
type = ChangeState
value = 840
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = random = [400,500]
trigger1 = stateno = 6900 || stateno = 6901
trigger1 = time >= 25

[State -1]
type = ChangeState
value = 870
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = random = [500,600]
trigger1 = stateno = 6900 || stateno = 6901
trigger1 = time >= 25

[State -1]
type = ChangeState
value = 920
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = power >= 500
triggerall = random = [600,700]
trigger1 = stateno = 6900 || stateno = 6901
trigger1 = time >= 25

[State -1]
type = ChangeState
value = 2100
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = p2bodydist X < 20
triggerall = random = [700,800]
trigger1 = stateno = 6900 || stateno = 6901
trigger1 = time >= 25

[State -1]
type = ChangeState
value = 2110
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = power >= 500
triggerall = p2bodydist X < 20
triggerall = random = [800,900]
trigger1 = stateno = 6900 || stateno = 6901
trigger1 = time >= 25

[State -1]
type = ChangeState
value = 800
triggerall = var(21) > 0
triggerall = random > 900
trigger1 = stateno = 6900 || stateno = 6901
trigger1 = time >= 25

[State -1]
type = ChangeState
value = 860
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = numprojID(820) = 0
triggerall = random < 250
trigger1 = stateno = 6902
trigger1 = time >= 25

[State -1]
type = ChangeState
value = 861
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = numprojID(820) = 0
triggerall = random = [250,500]
trigger1 = stateno = 6902
trigger1 = time >= 25

[State -1]
type = ChangeState
value = 862
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = numprojID(820) = 0
triggerall = random = [500,750]
trigger1 = stateno = 6902
trigger1 = time >= 25

[State -1]
type = ChangeState
value = 901
triggerall = var(30) = 0
triggerall = var(21) > 0
triggerall = power >= 500
triggerall = numprojID(820) = 0
triggerall = random > 750
trigger1 = stateno = 6902
trigger1 = time >= 25

;AI Taunt
[State -1]
type = ChangeState
value = 195
triggerall = var(21) > 0
triggerall = P2BodyDist X >= 50
triggerall = random < 500
triggerall = statetype = S
triggerall = ctrl = 1
trigger1 = p2stateno = 5050
trigger2 = p2stateno = 5100
trigger3 = p2stateno = 5101
trigger4 = p2stateno = 5110
trigger5 = p2stateno = 5020
trigger6 = p2stateno = 5030

;AI Guard
[State -1, Stand guard]
type = ChangeState
triggerall = var(21) > 0
triggerall = StateType != A
triggerall = P2statetype != C
triggerall = (P2Movetype = A) || (enemy, NumProj > 0)
trigger1 = ctrl = 1
value = 130

[State -1, S-to-C guard]
type = ChangeState
triggerall = var(21) > 0
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = (P2Movetype = A) || (enemy, NumProj > 0)
trigger1 = stateno = 150
value = 152

[State -1, Crouch guard]
type = ChangeState
triggerall = var(21) > 0
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = (P2Movetype = A) || (enemy, NumProj > 0)
trigger1 = ctrl = 1
value = 131

[State -1, C-to-S guard]
type = ChangeState
triggerall = var(21) > 0
triggerall = StateType != A
triggerall = P2statetype != C
triggerall = (P2Movetype = A) || (enemy, NumProj > 0)
trigger1 = stateno = 152
value = 150

[State -1, Air guard]
type = ChangeState
triggerall = var(21) > 0
triggerall = StateType = A
triggerall = (P2Movetype = A) || (enemy, NumProj > 0)
trigger1 = ctrl = 1
value = 132

;===========================================================================
;---------------------------------------------------------------------------
;Cruel Hunting
[State -1]
type = ChangeState
value = 3000
triggerall = var(30) = 0
triggerall = command = "cruel"
triggerall = power >= 1000 ;Level 1 super
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA, SA

;Beautiful Memory
[State -1]
type = ChangeState
value = 3100
triggerall = var(30) = 0
triggerall = command = "memory"
triggerall = power >= 1000
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA, SA

;Bazooka Ransha
[State -1]
type = ChangeState
value = 3600
triggerall = var(30) = 0
triggerall = command = "darkforce"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = hitdefattr = SC, NA, SA

[State -1]
type = ChangeState
value = 3601
triggerall = var(30) = 1
triggerall = var(31) < 400
triggerall = command = "darkforce"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1

[State -1]
type = ChangeState
value = 3620
triggerall = var(30) = 1
triggerall = var(31) < 400
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA, SA

[State -1]
type = ChangeState
value = 3621
triggerall = var(30) = 1
triggerall = var(31) < 400
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA, SA

[State -1]
type = ChangeState
value = 3622
triggerall = var(30) = 1
triggerall = var(31) < 400
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA, SA

[State -1]
type = ChangeState
value = 3623
triggerall = var(30) = 1
triggerall = var(31) < 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA, SA

[State -1]
type = ChangeState
value = 3624
triggerall = var(30) = 1
triggerall = var(31) < 400
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA, SA

[State -1]
type = ChangeState
value = 3625
triggerall = var(30) = 1
triggerall = var(31) < 400
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA, SA

[State -1]
type = ChangeState
value = 3626
triggerall = var(30) = 1
triggerall = var(31) < 400
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = hitdefattr = A, NA, SA

[State -1]
type = ChangeState
value = 3627
triggerall = var(30) = 1
triggerall = var(31) < 400
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = hitdefattr = A, NA, SA

[State -1]
type = ChangeState
value = 3628
triggerall = var(30) = 1
triggerall = var(31) < 400
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = hitdefattr = A, NA, SA

;Delightful Shower
[State -1]
type = ChangeState
value = 3200
triggerall = var(30) = 0
triggerall = command = "bazooka"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = A
trigger2 = ctrl = 1
trigger3 = hitdefattr = SCA, NA, SA

;Apple for You
[State -1]
type = ChangeState
value = 3400
triggerall = var(30) = 0
triggerall = command = "apple"
triggerall = power >= 1000
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA, SA

;Sweet Apple
[State -1]
type = ChangeState
value = 3500
triggerall = var(30) = 0
triggerall = command = "heal"
triggerall = power >= 1000
triggerall = NumPartner > 0
triggerall = partner, alive = 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = hitdefattr = SC, NA, SA

;Malice Toy
[State -1]
type = ChangeState
value = 3300
triggerall = var(30) = 0
triggerall = command = "toy"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = hitdefattr = SC, NA, SA

;ES Smile & Missile (high)
[State -1]
type = ChangeState
value = 880
triggerall = var(30) = 0
triggerall = numprojID(820) = 0
triggerall = command = "es_hi_missile"
triggerall = power >= 500
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA

;ES Smile & Missile (low)
[State -1]
type = ChangeState
value = 890
triggerall = var(30) = 0
triggerall = numprojID(820) = 0
triggerall = command = "es_lo_missile"
triggerall = power >= 500
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA

;ES Smile & Missile (vertical)
[State -1]
type = ChangeState
value = 900
triggerall = var(30) = 0
triggerall = numprojID(820) = 0
triggerall = command = "es_vert_missile"
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 40
trigger3 = hitdefattr = SC, NA

;ES Smile & Missile (aerial)
[State -1]
type = ChangeState
value = 901
triggerall = var(30) = 0
triggerall = numprojID(820) = 0
triggerall = command = "es_hi_missile"
triggerall = power >= 500
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = hitdefattr = A, NA

;ES Cheer & Fire (forwards)
[State -1]
type = ChangeState
value = 920
triggerall = var(30) = 0
triggerall = command = "es_fire_a"
triggerall = power >= 500
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA

;ES Cheer & Fire (upwards)
[State -1]
type = ChangeState
value = 925
triggerall = var(30) = 0
triggerall = command = "es_fire_b"
triggerall = power >= 500
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA

;ES Sentimental Typhoon (throw)
[State -1]
type = ChangeState
value = 2110
triggerall = var(30) = 0
triggerall = command = "es_s_typhoon"
triggerall = power >= 500
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA

;ES Jealousy & Fake
[State -1]
type = ChangeState
value = 940
triggerall = command = "es_gc"
triggerall = power >= 500
trigger1 = stateno = [150,153]
trigger1 = Anim != 6650 && Anim != 6651

;ES Shyness & Strike
[State -1]
type = ChangeState
value = 910
triggerall = var(30) = 0
triggerall = command = "es_basket"
triggerall = power >= 500
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA

;===========================================================================
;---------------------------------------------------------------------------
;Smile & Missile (high; light)
[State -1]
type = ChangeState
value = 820
triggerall = var(30) = 0
triggerall = numprojID(820) = 0
triggerall = command = "missile_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA

;Smile & Missile (high; middle)
[State -1]
type = ChangeState
value = 821
triggerall = var(30) = 0
triggerall = numprojID(820) = 0
triggerall = command = "missile_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA

;Smile & Missile (high; heavy)
[State -1]
type = ChangeState
value = 822
triggerall = var(30) = 0
triggerall = numprojID(820) = 0
triggerall = command = "missile_z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA

;Smile & Missile (low; light)
[State -1]
type = ChangeState
value = 830
triggerall = var(30) = 0
triggerall = numprojID(820) = 0
triggerall = command = "missile_a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA

;Smile & Missile (low; middle)
[State -1]
type = ChangeState
value = 831
triggerall = var(30) = 0
triggerall = numprojID(820) = 0
triggerall = command = "missile_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA

;Smile & Missile (low; heavy)
[State -1]
type = ChangeState
value = 832
triggerall = var(30) = 0
triggerall = numprojID(820) = 0
triggerall = command = "missile_c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA

;Smile & Missile (vertical; light)
[State -1]
type = ChangeState
value = 850
triggerall = var(30) = 0
triggerall = numprojID(820) = 0
triggerall = command = "vert_missile_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 40      ;Jumpstart
trigger3 = hitdefattr = SC, NA

;Smile & Missile (vertical; middle)
[State -1]
type = ChangeState
value = 851
triggerall = var(30) = 0
triggerall = numprojID(820) = 0
triggerall = command = "vert_missile_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 40
trigger3 = hitdefattr = SC, NA

;Smile & Missile (vertical; heavy)
[State -1]
type = ChangeState
value = 852
triggerall = var(30) = 0
triggerall = numprojID(820) = 0
triggerall = command = "vert_missile_z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 40
trigger3 = hitdefattr = SC, NA

;Smile & Missile (aerial; light)
[State -1]
type = ChangeState
value = 860
triggerall = var(30) = 0
triggerall = numprojID(820) = 0
triggerall = command = "missile_x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = hitdefattr = A, NA

;Smile & Missile (aerial; middle)
[State -1]
type = ChangeState
value = 861
triggerall = var(30) = 0
triggerall = numprojID(820) = 0
triggerall = command = "missile_y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = hitdefattr = A, NA

;Smile & Missile (aerial; heavy)
[State -1]
type = ChangeState
value = 862
triggerall = var(30) = 0
triggerall = numprojID(820) = 0
triggerall = command = "missile_z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = hitdefattr = A, NA

;Cheer & Fire (forwards)
[State -1]
type = ChangeState
value = 870
triggerall = var(30) = 0
triggerall = command = "fire_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA

;Cheer & Fire (diagonal)
[State -1]
type = ChangeState
value = 871
triggerall = var(30) = 0
triggerall = command = "fire_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA

;Cheer & Fire (upwards)
[State -1]
type = ChangeState
value = 872
triggerall = var(30) = 0
triggerall = command = "fire_z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA

;Sentimental Typhoon (throw)
[State -1]
type = ChangeState
value = 2100
triggerall = var(30) = 0
triggerall = command = "s_typhoon"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA

;Jealousy & Fake (left)
[State -1]
type = ChangeState
value = 930
triggerall = command = "gc_a"
trigger1 = stateno = [150,153]
trigger1 = Anim != 6650 && Anim != 6651

;Jealousy & Fake (center)
[State -1]
type = ChangeState
value = 931
triggerall = command = "gc_b"
trigger1 = stateno = [150,153]
trigger1 = Anim != 6650 && Anim != 6651

;Jealousy & Fake (right)
[State -1]
type = ChangeState
value = 932
triggerall = command = "gc_c"
trigger1 = stateno = [150,153]
trigger1 = Anim != 6650 && Anim != 6651

;Shyness & Strike (light)
[State -1]
type = ChangeState
value = 840
triggerall = var(30) = 0
triggerall = command = "basket_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA

;Shyness & Strike (middle)
[State -1]
type = ChangeState
value = 841
triggerall = var(30) = 0
triggerall = command = "basket_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA

;Shyness & Strike (heavy)
[State -1]
type = ChangeState
value = 842
triggerall = var(30) = 0
triggerall = command = "basket_z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA

;===========================================================================
;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Embrace & Bomb (throw)
[State -1]
type = ChangeState
value = 2000
triggerall = var(30) = 0
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno != 100
triggerall = stateno != 105
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;Embrace & Bomb (aerial; throw)
[State -1]
type = ChangeState
value = 2010
triggerall = var(30) = 0
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 9
triggerall = p2bodydist Y > -22
triggerall = p2bodydist Y < 22
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = command = "fwd_y"
trigger2 = command = "back_y"

;---------------------------------------------------------------------------
;Catch & Cut (throw)
[State -1]
type = ChangeState
value = 2020
triggerall = var(30) = 0
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno != 100
triggerall = stateno != 105
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;Catch & Cut (aerial; throw)
[State -1]
type = ChangeState
value = 2025
triggerall = var(30) = 0
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 9
triggerall = p2bodydist Y > -22
triggerall = p2bodydist Y < 22
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = command = "fwd_z"
trigger2 = command = "back_z"

;---------------------------------------------------------------------------
;Roar of the Bullet (throw)
[State -1]
type = ChangeState
value = 2030
triggerall = var(30) = 0
triggerall = (command = "b") || (command = "c")
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno != 100
triggerall = stateno != 105
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;Roar of the Bullet (aerial; throw)
[State -1]
type = ChangeState
value = 2035
triggerall = var(30) = 0
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 9
triggerall = p2bodydist Y > -22
triggerall = p2bodydist Y < 22
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = command = "fwd_b"
trigger2 = command = "back_b"
trigger3 = command = "fwd_c"
trigger4 = command = "back_c"

;===========================================================================
;---------------------------------------------------------------------------
;Advancing Guard (standing)
[State -1]
type = ChangeState
value = 6650
triggerall = command = "xyz"
trigger1 = stateno = [150,151]
trigger1 = Anim != 6650 && Anim != 6651

;Advancing Guard (crouching)
[State -1]
type = ChangeState
value = 6651
triggerall = command = "xyz"
trigger1 = stateno = [152,153]
trigger1 = Anim != 6650 && Anim != 6651

;Advancing Guard (aerial)
[State -1]
type = ChangeState
value = 6652
triggerall = command = "xyz"
trigger1 = stateno = 154 && Anim != 6652
trigger2 = stateno = 155 && Time <= 10 && Anim != 6652

;---------------------------------------------------------------------------
;Guard Cancel (standing)
[State -1]
type = ChangeState
value = 6900
triggerall = power >= 500
triggerall = command = "abc"
trigger1 = stateno = [150,151]
trigger1 = Anim != 6650 && Anim != 6651

;Guard Cancel (crouching)
[State -1]
type = ChangeState
value = 6901
triggerall = power >= 500
triggerall = command = "abc"
trigger1 = stateno = [152,153]
trigger1 = Anim != 6650 && Anim != 6651

;Guard Cancel (aerial)
[State -1]
type = ChangeState
value = 6902
triggerall = power >= 500
triggerall = command = "abc"
trigger1 = stateno = 154 && Anim != 6652
trigger2 = stateno = 155 && Time <= 10 && Anim != 6652

;---------------------------------------------------------------------------
;Tell Me Why (slide)
[State -1]
type = ChangeState
value = 800
triggerall = command = "slide"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA

;---------------------------------------------------------------------------
;Stumble & Blade
[State -1]
type = ChangeState
value = 810
triggerall = var(30) = 0
triggerall = (command = "fwd_y") || (command = "back_y")
triggerall = command != "holddown"
trigger1 = stateno = 100
trigger1 = ctrl = 1
trigger2 = stateno = 105
trigger2 = ctrl = 1

;---------------------------------------------------------------------------
;Hop_MP (fwd)
[State -1]
type = ChangeState
value = 225
triggerall = var(30) = 0
triggerall = command = "fwd_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact

;---------------------------------------------------------------------------
;Hop_MP (back)
[State -1]
type = ChangeState
value = 226
triggerall = var(30) = 0
triggerall = command = "back_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact

;---------------------------------------------------------------------------
;Hop_MK
[State -1]
type = ChangeState
value = 235
triggerall = var(30) = 0
triggerall = (command = "fwd_b") || (command = "back_b")
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact

;---------------------------------------------------------------------------
;Run_HP
[State -1]
type = ChangeState
value = 245
triggerall = var(30) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = stateno = 100
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_LP
[State -1]
type = ChangeState
value = 200
triggerall = var(30) = 0
triggerall = command = "x"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
 ;The following is true if Player is in stand state, and has control
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_LK
[State -1]
type = ChangeState
value = 210
triggerall = var(30) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact  ;If move hits, or is guarded by opponent
trigger3 = stateno = 400
trigger3 = movecontact

;---------------------------------------------------------------------------
;Stand_MP
[State -1]
type = ChangeState
value = 220
triggerall = var(30) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact

;---------------------------------------------------------------------------
;Stand_MK
[State -1]
type = ChangeState
value = 230
triggerall = var(30) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact

;---------------------------------------------------------------------------
;Stand_HP
[State -1]
type = ChangeState
value = 240
triggerall = var(30) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 225
trigger10 = movecontact
trigger11 = stateno = 226
trigger11 = movecontact
trigger12 = stateno = 235
trigger12 = movecontact

;---------------------------------------------------------------------------
;Stand_HK
[State -1]
type = ChangeState
value = 250
triggerall = var(30) = 0
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 420
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact
trigger12 = stateno = 225
trigger12 = movecontact
trigger13 = stateno = 226
trigger13 = movecontact
trigger14 = stateno = 235
trigger14 = movecontact

;---------------------------------------------------------------------------
;Crouch_LP
[State -1]
type = ChangeState
value = 400
triggerall = var(30) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_LK
[State -1]
type = ChangeState
value = 410
triggerall = var(30) = 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact

;---------------------------------------------------------------------------
;Crouch_MP
[State -1]
type = ChangeState
value = 420
triggerall = var(30) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact

;---------------------------------------------------------------------------
;Crouch_MK
[State -1]
type = ChangeState
value = 430
triggerall = var(30) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 420
trigger7 = movecontact

;---------------------------------------------------------------------------
;Crouch_HP
[State -1]
type = ChangeState
value = 440
triggerall = var(30) = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 225
trigger10 = movecontact
trigger11 = stateno = 226
trigger11 = movecontact
trigger12 = stateno = 235
trigger12 = movecontact

;---------------------------------------------------------------------------
;Crouch_HK_2
[State -1]
type = ChangeState
value = 455
triggerall = var(30) = 0
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 420
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact
trigger12 = stateno = 225
trigger12 = movecontact
trigger13 = stateno = 226
trigger13 = movecontact
trigger14 = stateno = 235
trigger14 = movecontact

;---------------------------------------------------------------------------
;Crouch_HK
[State -1]
type = ChangeState
value = 450
triggerall = var(30) = 0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 420
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact
trigger12 = stateno = 225
trigger12 = movecontact
trigger13 = stateno = 226
trigger13 = movecontact
trigger14 = stateno = 235
trigger14 = movecontact

;---------------------------------------------------------------------------
;Jump_LP
[State -1]
type = ChangeState
value = 600
triggerall = var(30) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_LK
[State -1]
type = ChangeState
value = 610
triggerall = var(30) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump_MP_2
[State -1]
type = ChangeState
value = 625
triggerall = var(30) = 0
triggerall = command = "y"
triggerall = command = "holdup"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact

;---------------------------------------------------------------------------
;Jump_MP
[State -1]
type = ChangeState
value = 620
triggerall = var(30) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact

;---------------------------------------------------------------------------
;Jump_MK_2
[State -1]
type = ChangeState
value = 630
triggerall = var(30) = 0
triggerall = command = "b"
triggerall = command = "holdup"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 625
trigger5 = movecontact

;---------------------------------------------------------------------------
;Jump_MK
[State -1]
type = ChangeState
value = 635
triggerall = var(30) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 625
trigger5 = movecontact

;---------------------------------------------------------------------------
;Jump_HP_2
[State -1]
type = ChangeState
value = 640
triggerall = var(30) = 0
triggerall = command = "z"
triggerall = command = "holdup"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 625
trigger5 = movecontact
trigger6 = stateno = 630
trigger6 = movecontact
trigger7 = stateno = 635
trigger7 = movecontact

;---------------------------------------------------------------------------
;Jump_HP
[State -1]
type = ChangeState
value = 645
triggerall = var(30) = 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 625
trigger5 = movecontact
trigger6 = stateno = 630
trigger6 = movecontact
trigger7 = stateno = 635
trigger7 = movecontact

;---------------------------------------------------------------------------
;Jump_HK
[State -1]
type = ChangeState
value = 650
triggerall = var(30) = 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 625
trigger5 = movecontact
trigger6 = stateno = 630
trigger6 = movecontact
trigger7 = stateno = 635
trigger7 = movecontact
trigger8 = stateno = 640
trigger8 = movecontact
trigger9 = stateno = 645
trigger9 = movecontact

;---------------------------------------------------------------------------
;Moving Get-up (forwards)
[State -1]
type = ChangeState
value = 6000
trigger1 = command = "holdfwd"
trigger1 = stateno = 5120
trigger1 = Time = 1

;---------------------------------------------------------------------------
;Moving Get-up (backwards)
[State -1]
type = ChangeState
value = 6001
trigger1 = command = "holdback"
trigger1 = stateno = 5120
trigger1 = Time = 1

;---------------------------------------------------------------------------
;Get-up Attack
[State -1]
type = ChangeState
value = 6002
triggerall = var(30) = 0
trigger1 = command = "holdup"
trigger1 = stateno = 5120
trigger1 = Time = 1

;---------------------------------------------------------------------------
;Taunt
[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

