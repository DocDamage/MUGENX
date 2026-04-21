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


;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
;[Remap]
;x = x
;y = y
;z = z
;a = a
;b = b
;c = c
;s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Hyper Motions |--------------------------------------------------------

[Command]
name = "Thunder Extreme"
command = ~D, D, B, F, B, F, a+b
time = 40

[Command]
name = "cloak destroyer"
command = ~D, DF, F, DF, D, DB, B, x
time = 30

[Command]
name = "cloak destroyer"
command = ~D, DF, F, DF, D, DB, B, y
time = 30

[Command]
name = "hyper circle flames"
command = ~D, DB, B, DB, D, DF, F, x+y
time = 30

[Command]
name = "flames"
command = ~D, DB, B, D, DB, B, a+b
time = 30

[Command]
name = "grey tornado"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "grey tornado"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "sword launch"
command = ~B, F, DF, D, DB, B, x
time = 30

[Command]
name = "sword launch"
command = ~B, F, DF, D, DB, B, y
time = 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "normal circle flames"
command = ~D, DB, B, DB, D, DF, F, x
time = 30

[Command]
name = "normal circle flames"
command = ~D, DB, B, DB, D, DF, F, y
time = 30

[Command]
name = "special throw"
command = ~F, B, D, DB, B, b
time = 30

[Command] 
name = "special throw"
command = ~F, B, D, B, b
time = 30

[Command]
name = "flamed sword"
command = ~F, D, DF, F, x
time = 25

[Command]
name = "powered flamed sword"
command = ~F, D, DF, F, y
time = 25

[Command]
name = "sogoga"
command = ~D, DF, F, a

[Command]
name = "sogoga"
command = ~D, DF, F, b

[Command]
name = "use cloak"
command = ~D, DF, F, x

[Command]
name = "use cloak"
command = ~D, DF, F, y

[Command]
name = "grey"
command = ~30B, F, x

[Command]
name = "grey"
command = ~30B, F, y

[Command]
name = "up_grey"
command = ~30D, a

[Command]
name = "up_grey"
command = ~30D, b

[Command]
name = "teleport_a"
command = ~D, DB, B, a

[Command]
name = "teleport_b"
command = ~D, DB, B, b

[Command]
name = "teleport_x"
command = ~D, DB, B, x

[Command]
name = "teleport_y"
command = ~D, DB, B, y

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
command = x+y+z+a+b+c+s
time = 1

[Command]
name = "b+x"
command = b+x
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
name = "hold c"
command = /c
time = 1

[Command]
name = "hold z"
command = /z
time = 1

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

;-| Press Up |--------------------------------------------------------------

[Command]
name = "Press Up"
command = U
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

;-|AI  Immediate Activation|------------------------------------------------------------------

[State -1, AI Activate immediatly]
type = VarSet
v = 30
value = 1
trigger1 = roundstate = 2 && var(30) = 0

;-|HYPERS/FINALS|-------------------------------------------------------------------

[State -1, Thunder Extreme]
type = ChangeState
value = 3400
triggerall = var(30) = 0
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "Thunder Extreme" && power >= 3000

[State -1, cloak destroyer]
type = ChangeState
value = 3000
triggerall = var(30) = 0
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "cloak destroyer" && p2Life <= 200
trigger1 = p2BodyDist X <= 33

[State -1, hyper circle flames]
type = ChangeState
value = ifelse(var(10)=1,3300,3200)
triggerall = var(30) = 0
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "hyper circle flames" && power >= 1000

[State -1, hell flames]
type = ChangeState
value = 3500
triggerall = var(30) = 0
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "flames" && power >= 2000

[State -1, grey tornado]
type = ChangeState
value = 3100
triggerall = var(30) = 0
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "grey tornado" && power >= 1000

[State -1, sword launch]
type = ChangeState
value = 3700
triggerall = var(30) = 0
triggerall = statetype != A
triggerall = ctrl && command = "sword launch"
trigger1 = var(10) = 0 || var(10) = 1
trigger1 = power >= 1000 || life < 350

;-|SPECIALS|------------------------------------------------------------------------

[State -1, normal circle flames]
type = ChangeState 
value = ifelse(var(10)=1,1170,1160)
triggerall = var(30) = 0
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "normal circle flames"

[State -1, special throw (common)]
type = ChangeState
value = 1100 ;tentativo di presa speciale
triggerall = var(30) = 0
triggerall = command = "special throw"
triggerall = statetype != A
trigger1 = p2bodydist X <= 33
trigger1 = ctrl

[State -1, not enough near to execute special throw]
;played high kick instead
type = ChangeState
value = ifelse(var(10)=1,270,230)
triggerall = var(30) = 0
triggerall = command = "special throw"
triggerall = statetype != A
trigger1 = p2bodydist X > 33
trigger1 = ctrl

[State -1, flamed sword]
type = ChangeState
value = ifelse(var(10)=1,1070,1060)
triggerall = var(30) = 0
triggerall = ctrl
triggerall = statetype != A
trigger1 = command = "flamed sword"
trigger2 = command = "powered flamed sword" && power < 2000

[State -1, powered flamed sword]
type = ChangeState
value = ifelse(var(10)=1,1090,1080)
triggerall = var(30) = 0
triggerall = ctrl
triggerall = statetype != A
trigger1 = command = "powered flamed sword" && power >= 2000

[State -1, sogoga]
type = ChangeState
value = ifelse(var(10)=1,1190,1180)
triggerall = var(30) = 0
triggerall = ctrl 
triggerall = statetype != A
trigger1 = command = "sogoga"

[State -1, use cloak]
type = ChangeState
value = ifelse(var(10)=1,1210,1200)
triggerall = var(30) = 0
triggerall = ctrl
triggerall = statetype != A
trigger1 = command = "use cloak"

[State -1, grey]
type = ChangeState
value = 1000
triggerall = var(30) = 0
triggerall = command = "grey"
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = 120 || stateno = 130 || stateno = 140

[State -1, Up grey]
type = ChangeState
value = 1030
triggerall = var(30) = 0
triggerall = command = "up_grey"
trigger1 = ctrl
trigger1 = statetype != A
trigger2 = stateno = 121 || stateno = 131 || stateno = 141

[State -1, Teleport a]
type = ChangeState
value = 1110
triggerall = var(30) = 0
triggerall = ctrl
triggerall = command = "teleport_a"
trigger1 = statetype = S
trigger2 = statetype = A

[State -1, Teleport b]
type = ChangeState
value = 1120
triggerall = var(30) = 0
triggerall = ctrl
triggerall = command = "teleport_b"
trigger1 = statetype = S
trigger2 = statetype = A

[State -1, Teleport x]
type = ChangeState
value = 1130
triggerall = var(30) = 0
triggerall = ctrl
triggerall = command = "teleport_x"
trigger1 = statetype = S
trigger2 = statetype = A

[State -1, Teleport y]
type = ChangeState
value = 1140
triggerall = var(30) = 0
triggerall = ctrl
triggerall = command = "teleport_y"
trigger1 = statetype = S
trigger2 = statetype = A

;-|BUTTON COMBINATIONS|-------------------------------------------------------------

[State -1, Estrazione spada (standing)]
type = ChangeState
triggerall = var(30) = 0
triggerall = ctrl
triggerall = command = "b+x"
triggerall = var(10) = 0
trigger1 = statetype = S
value = 810
ctrl = 0

[State -1, Ripongo spada (standing)]
type = ChangeState
triggerall = var(30) = 0
triggerall = ctrl
triggerall = command = "b+x"
triggerall = var(10) = 1
trigger1 = statetype = S
value = 811
ctrl = 0

[State -1, Estrazione spada (crouching)]
type = ChangeState
triggerall = var(30) = 0
triggerall = ctrl
triggerall = command = "b+x"
triggerall = var(10) = 0
trigger1 = statetype = C
value = 812
ctrl = 0

[State -1, Ripongo spada (crouching)]
type = ChangeState
triggerall = var(30) = 0
triggerall = ctrl
triggerall = command = "b+x"
triggerall = var(10) = 1
trigger1 = statetype = C
value = 813
ctrl = 0

[State -1, Riprendo Spada da terra]
type = ChangeState
value = 814
triggerall = var(30) = 0
triggerall = ctrl && var(10) = 5
triggerall = command = "b+x" && statetype = C
trigger1 = (helper(10), parentDist X >= -15) && (helper(10), parentDist X <= 15)

;-|NORMAL HIT/COMBOS|---------------------------------------------------------------

[State -1, Presa normale]
type = ChangeState
value = 801 ;tentativo di presa
triggerall = var(30) = 0
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = statetype = S
trigger1 = p2bodydist X <= 27
trigger1 = ctrl

[State -1, Pugno debole (senza spada)]
type = ChangeState
value = 200
triggerall = var(30) = 0
triggerall = command = "x"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
triggerall = var(10) != 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 6
trigger3 = (stateno = 220) && time > 7

[State -1, Pugno forte (senza spada)]
type = ChangeState
value = 210
triggerall = var(30) = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(10) != 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 6
trigger3 = (stateno = 220) && time > 7
trigger4 = (stateno = 210) && var(4) = 1

[State -1, Calcio debole (senza spada)]
type = ChangeState
value = 220
triggerall = var(30) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = var(10) != 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 6
trigger3 = (stateno = 220) && time > 7

[State -1, Calcio forte (senza spada)]
type = ChangeState
value = 230
triggerall = var(30) = 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(10) != 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 6
trigger3 = (stateno = 220) && time > 7
trigger4 = (stateno = 230) && var(4) = 1

[State -1, Pugno debole (con spada)]
type = ChangeState
value = 240
triggerall = var(30) = 0
triggerall = command = "x"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 220) && time > 7

[State -1, Pugno forte (con spada)]
type = ChangeState
value = 250
triggerall = var(30) = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 220) && time > 7
trigger4 = (stateno = 250) && var(4) = 1

[State -1, Calcio debole (con spada)]
type = ChangeState
value = 260
triggerall = var(30) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 260) && time > 7

[State -1, Calcio forte (con spada)]
type = ChangeState
value = 270
triggerall = var(30) = 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 240) && time > 7
trigger3 = (stateno = 260) && time > 7
trigger4 = (stateno = 270) && var(4) = 1

[State -1, FWD Pugno debole (senza spada)]
type = ChangeState
value = 280
triggerall = var(30) = 0
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = var(10) != 1
triggerall = var(4) = 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, FWD Pugno debole (senza spada) addon 1]
type = ChangeState
value = 282
triggerall = var(30) = 0
triggerall = command = "x"
triggerall = var(10) != 1
trigger1 = var(4) > 0  
trigger1 = var(4) <= 2

[State -1, FWD Pugno debole (senza spada) addon 2]
type = ChangeState
value = 285
triggerall = var(30) = 0
triggerall = command = "x"
trigger1 = var(10) != 1
trigger1 = var(4) = 3

[State -1, FWD Calcio debole (senza spada)]
type = ChangeState
value = 290
triggerall = var(30) = 0
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = var(10) != 1
trigger1 = statetype = S
trigger1 = ctrl

[State -1, FWD Pugno debole (con spada)]
type = ChangeState
value = 300
triggerall = var(30) = 0
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = var(10) = 1
triggerall = var(4) = 0
trigger1 = statetype = S
trigger1 = ctrl

[State -1, FWD Pugno debole (con spada) addon 1]
type = ChangeState
value = 302
triggerall = var(30) = 0
triggerall = command = "x"
triggerall = var(10) = 1
trigger1 = var(4) > 0  
trigger1 = var(4) <= 2

[State -1, FWD Pugno debole (senza spada) addon 2]
type = ChangeState
value = 305
triggerall = var(30) = 0
triggerall = command = "x"
trigger1 = var(10) = 1
trigger1 = var(4) = 3

[State -1, FWD Calcio debole (con spada)]
type = ChangeState
value = 310
triggerall = var(30) = 0
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Crouching Light Punch (no swd)]
type = ChangeState
value = 400
triggerall = var(30) = 0
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(10) != 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && time > 7
trigger3 = (stateno = 420) && time > 5

[State -1, Crouching Strong Punch (no swd)]
type = ChangeState
value = 410
triggerall = var(30) = 0
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = var(10) != 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && time > 7
trigger3 = (stateno = 420) && time > 5

[State -1, Crouching Light Kick (no swd)]
type = ChangeState
value = 420
triggerall = var(30) = 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(10) != 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && time > 7
trigger3 = (stateno = 420) && time > 5

[State -1, Crouching High Kick (common)]
type = ChangeState
value = 430
triggerall = var(30) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && time > 7
trigger3 = (stateno = 420) && time > 5
trigger4 = (stateno = 440) && time > 6
trigger5 = (stateno = 460) && time > 6

[State -1, Crouching Light Punch (swd)]
type = ChangeState
value = 440
triggerall = var(30) = 0
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(10) = 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 440) && time > 6
trigger3 = (stateno = 460) && time > 6

[State -1, Crouching High Punch (swd)]
type = ChangeState
value = 450
triggerall = var(30) = 0
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = var(10) = 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 440) && time > 6
trigger3 = (stateno = 460) && time > 6

[State -1, Crouching Light Kick (swd)]
type = ChangeState
value = 460
triggerall = var(30) = 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(10) = 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 440) && time > 6
trigger3 = (stateno = 460) && time > 6

[State -1, Jump Light Punch (no swd)]
type = ChangeState
value = 600
triggerall = var(30) = 0
triggerall = command = "x"
triggerall = var(10) != 1
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 1350 ;Air blocking

[State -1, Jump Strong Punch (no swd)]
type = ChangeState
value = 610
triggerall = var(30) = 0
triggerall = command = "y"
triggerall = var(10) != 1
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 1350 ;Air blocking

[State -1, Jump Light Kick (common)]
type = ChangeState
value = 620
triggerall = var(30) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump High Kick (no swd)]
type = ChangeState
value = 630
triggerall = var(30) = 0
triggerall = command = "b"
triggerall = var(10) != 1
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Light Punch (swd)]
type = ChangeState
value = 640
triggerall = var(30) = 0
triggerall = command = "x"
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Strong Punch (swd)]
type = ChangeState
value = 650
triggerall = var(30) = 0
triggerall = command = "y"
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl

;660 doesn't exist becouse light jump kick is common

[State -1, Jump High Kick (swd)]
type = ChangeState
value = 670
triggerall = var(30) = 0
triggerall = command = "b"
triggerall = var(10) = 1
trigger1 = statetype = A
trigger1 = ctrl

[State -1, power charge]
type = ChangeState
value = 815
triggerall = var(30) = 0
trigger1 = ctrl && statetype = S
trigger1 = command = "hold c" && command = "hold z"
trigger1 = power < 3000

;-|GREY ADDONS|---------------------------------------------------------------------
[State -1, Grey Addon 1 (common)]
type = ChangeState
value = 1040
triggerall = var(30) = 0
triggerall = command = "Press Up"
trigger1 = stateno = 1001
trigger1 = time < 15
trigger2 = stateno = 1031
trigger2 = time < 15

[State -1, Access to Grey Addon 2]
type = VarSet
v = 3
value = 1
triggerall = var(30) = 0
triggerall = var(3) = 0
trigger1 = command = "Press Up" && stateno = 1040

[State -1, Execute Grey Addon 2 (no swd)]
type = ChangeState
value = 1060
triggerall = var(30) = 0
triggerall = var(10) != 1
trigger1 = var(3) = 1 && Pos Y >= 0

[State -1, Execute Grey Addon 2 (no swd)]
type = ChangeState
value = 1070
triggerall = var(30) = 0
triggerall = var(10) = 1
trigger1 = var(3) = 1 && Pos Y >= 0

[State -1, Delay access to Grey Addon 2]
type = VarSet
v = 3
value = 0
triggerall = var(30) = 0
trigger1 = var(3) = 1 && movetype = H

;-----------------------------------------------------------------------------------------
;--------------------------------------------------------------------------------------
; AI MOVEMENTS
;-----------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------

[State -1, AI nessun altro movimento dopo KO]
type = VarSet
v = 30
value = 2
triggerall = var(30) = 1
trigger1 = roundstate > 2

[State -1, AI caduta di correzione]
type = ChangeState
value = 940
trigger1 = statetype = S && pos Y < 0

[State -1, AI Extracting sword]
type = ChangeState
value = 812
triggerall = var(30) = 1
trigger1 = ctrl && var(10) = 0 && statetype = S && random < 50

[State -1, AI grey addon 2]
type = ChangeState
value = ifelse(var(10)=1,1070,1060)
triggerall = var(30) = 1
trigger1 = ctrl && var(3) = 1

[State -1, AI thunder Extreme]
type = ChangeState
value = 3400
triggerall = var(30) = 1
trigger1 = ctrl && power = 3000 && statetype = S

[State -1, AI cloak Destroyer]
type = ChangeState
value = 3000
triggerall = ctrl && var(30) = 1
trigger1 = p2life <= 300 && p2BodyDist X <= 33

[State -1, AI sword launch (type 1)]
type = ChangeState
value = 3700
triggerall = ctrl && var(30) = 1
triggerall = var(10) = 0 || var(10) = 1
triggerall = life < 350 && statetype = S
trigger1 = p2stateno = 20
trigger2 = p2statetype = A && p2Dist Y > -30
trigger3 = p2movetype = A

[State -1, AI sword launch (type 2)]
type = ChangeState
value = 3700
triggerall = ctrl && var(30) = 1
triggerall = var(10) = 0 || var(10) = 1
triggerall = power >= 1000 && statetype = S
trigger1 = p2statetype = A && p2Dist Y > -30
trigger2 = random < ifelse(var(10)=1,50,100)

[State -1, AI recupero spada]
type = ChangeState
value = 814
triggerall = var(30) = 1
triggerall = ctrl && var(10) = 5
trigger1 = (helper(10), parentDist X >= -20) && (helper(10), parentDist X <= 20)

[State -1, AI special throw]
type = ChangeState
value = 1100
triggerall = var(30) = 1
trigger1 = p2BodyDist X <= 33
trigger1 = p2statetype = S || p2statetype = A
trigger1 = p2movetype = I
trigger1 = ctrl && statetype != A

[State -1, AI sogoga]
type = ChangeState
value = ifelse(var(10)=1,1190,1180)
triggerall = var(30) = 1
triggerall = ctrl && statetype != A
trigger1 = p2stateno = 20 || p2stateno = 21
trigger2 = p2movetype !=A && random > 700

[State -1, AI Up grey]
type = ChangeState
value = 1030
triggerall = var(30) = 1
triggerall = ctrl && statetype != A
trigger1 = random < 800
