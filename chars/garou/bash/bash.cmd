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


;-| Super Motions |--------------------------------------------------------
[Command] 
name = "abuster"
command = ~F, B, D, F, y
time = 35

[Command] 
name = "hurricane"
command = ~D, F, D, B, y
time = 35

[Command] 
name = "fblast"
command = ~F, B, D, F, x
time = 35

;-| Special Motions |------------------------------------------------------
[Command] 
name = "doubleclaw"
command = ~D, DB, B, x
time = 25

[Command] 
name = "wavingblow"
command = ~D, DF, F, y
time = 25

[Command] 
name = "wavingclaw"
command = ~20$DB, F, y
time = 15

[Command] 
name = "Fireball"
command = ~D, DF, F, x
time = 25

[Command] 
name = "Thunder"
command = ~F, D, DF, a
time = 25
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 13

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 13

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = a+b
time = 1

[Command]
name = "rush"
command = y+a
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
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

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
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
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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

;-| Hold Button |--------------------------------------------------------------
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
name = "hold_start"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1



[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1


[Command]
name = "holddownforward";Required (do not remove)
command = /DF
time = 1

[Command]
name = "longjump"
command = D, $U
time = 18
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

;==================================================================
[State -1]
type = ChangeState
value = 3200
triggerall = NumProj = 0
triggerall = command = "abuster"
triggerall =power >= 2000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = MoveContact
trigger2 = stateno = 200 || stateno = 215 || stateno = 400 || stateno =410|| stateno = 411|| stateno = 207 || stateno = 210|| stateno = 221|| stateno = 211|| stateno = 222

[State -1]
type = ChangeState
value = 3100
triggerall = NumProj = 0
triggerall = command = "hurricane"
triggerall =power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = MoveContact
trigger2 = stateno = 200 || stateno = 215 || stateno = 400 || stateno =410|| stateno = 411|| stateno = 207 || stateno = 210|| stateno = 221|| stateno = 211|| stateno = 222

[State -1]
type = ChangeState
value = 3000
triggerall = NumProj = 0
triggerall = command = "fblast"
triggerall =power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = MoveContact
trigger2 = stateno = 200 || stateno = 215 || stateno = 400 || stateno =410|| stateno = 411|| stateno = 207 || stateno = 210|| stateno = 221|| stateno = 211|| stateno = 222
;---------------------------------------------------------------------------
[State -1,]
type = ChangeState
value = 1000
triggerall = NumProj = 0
triggerall = command = "doubleclaw"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = MoveContact
trigger2 = stateno = 200 || stateno = 215 || stateno = 400 || stateno =410|| stateno = 411|| stateno = 207 || stateno = 210|| stateno = 221|| stateno = 211|| stateno = 222;

[State -1, ]
type = ChangeState
value = 1100
triggerall = NumProj = 0
triggerall = command = "wavingclaw"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = MoveContact
trigger2 = stateno = 200 || stateno = 215 || stateno = 400 || stateno =410|| stateno = 411|| stateno = 207 || stateno = 210
trigger3 = stateno = 150|| stateno = 151

[State -1, ]
type = ChangeState
value = 1200
triggerall = command = "Thunder"
triggerall =  statetype = S|| statetype = C
trigger1 = ctrl
trigger2 = MoveContact
trigger2 = stateno = 200 || stateno = 215 || stateno = 400 || stateno =410|| stateno = 411|| stateno = 207 || stateno = 210|| stateno = 221|| stateno = 211|| stateno = 222
trigger3 = stateno = 150|| stateno = 151

[State -1, ]
type = ChangeState
value = 1300
triggerall = NumProj = 0
triggerall = command = "Fireball"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = MoveContact
trigger2 = stateno = 200 || stateno = 215 || stateno = 400 || stateno =410|| stateno = 411|| stateno = 207 || stateno = 210|| stateno = 221|| stateno = 211|| stateno = 222
[State -1]
type = ChangeState
value = 1400
triggerall = NumProj = 0
triggerall = command = "wavingblow"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = MoveContact
trigger2 = stateno = 200 || stateno = 215 || stateno = 400 || stateno =410|| stateno = 411|| stateno = 207 || stateno = 210|| stateno = 221|| stateno = 211|| stateno = 222


; rush
[State -1, ]
type = ChangeState
value = 550
triggerall = command = "rush"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
;===========================================================================
[State -1]
type = ChangeState
value = 3
trigger1 = command = "holddown" && command = "holdfwd"
triggerall = stateno != 3
trigger1 = statetype = C
trigger1 = ctrl
;--------------------------
;recovery attack
[State -1]
type = ChangeState
value = 5666
triggerall = stateno = 5110
triggerall = time <= 99
trigger1 = command = "holdup"
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type =ChangeState
value = 900
triggerall = command = "y" 
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

; Stand Light Punch
[State -1]
type = ChangeState
value = 205
triggerall = Command = "x"
triggerall = Command != "holddown"
triggerall = P2BodyDist X < 25 
trigger1 = (Statetype = S) && ctrl
trigger2 = stateno = 100

;---------------------------------------------------------------------------
; 
[State -1]
type = ChangeState
value = 230
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 210
triggerall = Command = "y"
triggerall = Command != "holddown"
triggerall = P2BodyDist X < 25 
trigger1 = (Statetype = S) && ctrl
trigger2 = stateno = 240
trigger2 = movecontact = 1
trigger3 = stateno = 100

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 220
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
;--------------------
[State -1]
type = ChangeState
value = 225
triggerall = Command = "a"
triggerall = Command != "holddown"
triggerall = P2BodyDist X < 25 
trigger1 = (Statetype = S) && ctrl
trigger2 = stateno = 100

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = null;ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;
[State -1]
type = ChangeState
value = 420
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 620
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Jump Medium Punch]
type = ChangeState
value = 630
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno = 6010
trigger2 = stateno = 6011
trigger3 = stateno = 6012


; Jumping turn
[State -1, Jump turn]
type = ChangeState
value = 680
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl