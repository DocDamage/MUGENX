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
[Command]
name = "DP_2p"
command = ~F, D, DF, x+y

[Command]
name = "DP_2p"
command = ~F, D, DF, x+z

[Command]
name = "DP_2p"
command = ~F, D, DF, y+z

[Command]
name = "QCF_2p"
command = ~D, F, x+y

[Command]
name = "QCF_2p"
command = ~D, F, x+z

[Command]
name = "QCF_2p"
command = ~D, F, y+z

[Command]
name = "QCB_2k"
command = ~D, B, a+b

[Command]
name = "QCB_2k"
command = ~D, B, a+c

[Command]
name = "QCB_2k"
command = ~D, B, b+c


;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command] 
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 20

;-| Special Motions |------------------------------------------------------

[Command]
name = "HCB_x"
command = ~F, D, B, x
time=30

[Command]
name = "HCB_y"
command = ~F, D, B, y
time=30

[Command]
name = "HCB_z"
command = ~F, D, B, z
time=30

[Command]
name = "HCB_a"
command = ~D, B, a

[Command]
name = "HCB_b"
command = ~D, B, b

[Command]
name = "HCB_c"
command = ~D, B, c

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
command = ~D, DF, F, a

[Command]
name = "QCB_b"
command = ~D, DF, F, b

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

[Command]
name = "holdp"
command = /$x
time = 1

[Command]
name = "holdp"
command = /$y
time = 1

[Command]
name = "holdp"
command = /$z
time = 1

[Command]
name = "holdk"
command = /$a
time = 1

[Command]
name = "holdk"
command = /$b
time = 1

[Command]
name = "holdk"
command = /$c
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
;Ground Throw
[State -1, Throw]
type = ChangeState
value = 600
triggerall = command = "z" && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 15 && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger2 = command = "holdback" && p2bodydist X < 15 && p2movetype != H
trigger2 = (p2statetype = S) || (p2statetype = C)
;---------------------------------------------------------------------------
;HEAVILY ARMED BIRDIE
[State -1, WPX]
type = ChangeState
value = 2000
triggerall = numhelper(0) = 0 && power >= 1000
triggerall = command = "QCB_2k" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && movecontact = 1
trigger3 = stateno  = 201 && movecontact = 1
trigger4 = stateno  = 202 && movecontact = 1
trigger5 = stateno  = 203 && movecontact = 1
trigger6 = stateno  = 204 && movecontact = 1
trigger7 = stateno  = 205 && movecontact = 1
trigger8 = stateno  = 300 && movecontact = 1
trigger9 = stateno  = 301 && movecontact = 1
trigger10 = stateno = 302 && movecontact = 1
trigger11 = stateno = 303 && movecontact = 1
trigger12 = stateno = 304 && movecontact = 1
trigger13 = stateno = 305 && movecontact = 1
;---------------------------------------------------------------------------
;WEAPON X
[State -1, WPX]
type = ChangeState
value = 1000
triggerall = command = "DP_2p" && command != "holddown" && power >= 1000
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && movecontact = 1
trigger3 = stateno  = 201 && movecontact = 1
trigger4 = stateno  = 202 && movecontact = 1
trigger5 = stateno  = 203 && movecontact = 1
trigger6 = stateno  = 204 && movecontact = 1
trigger7 = stateno  = 205 && movecontact = 1
trigger8 = stateno  = 300 && movecontact = 1
trigger9 = stateno  = 301 && movecontact = 1
trigger10 = stateno = 302 && movecontact = 1
trigger11 = stateno = 303 && movecontact = 1
trigger12 = stateno = 304 && movecontact = 1
trigger13 = stateno = 305 && movecontact = 1
;---------------------------------------------------------------------------
;BERSERKER CLAW X
[State -1, BCX]
type = ChangeState
value = 3000
triggerall = command = "QCF_2p" && command != "holddown" && power >= 1000
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && movecontact = 1
trigger3 = stateno  = 201 && movecontact = 1
trigger4 = stateno  = 202 && movecontact = 1
trigger5 = stateno  = 203 && movecontact = 1
trigger6 = stateno  = 204 && movecontact = 1
trigger7 = stateno  = 205 && movecontact = 1
trigger8 = stateno  = 300 && movecontact = 1
trigger9 = stateno  = 301 && movecontact = 1
trigger10 = stateno = 302 && movecontact = 1
trigger11 = stateno = 303 && movecontact = 1
trigger12 = stateno = 304 && movecontact = 1
trigger13 = stateno = 305 && movecontact = 1
;---------------------------------------------------------------------------
;Short Birdie Call
[State -1, SBC]
type = ChangeState
value = 892
triggerall = numhelper(0) = 0
triggerall = command = "HCB_a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && movecontact = 1
trigger3 = stateno  = 201 && movecontact = 1
trigger4 = stateno  = 202 && movecontact = 1
trigger5 = stateno  = 203 && movecontact = 1
trigger6 = stateno  = 204 && movecontact = 1
trigger7 = stateno  = 205 && movecontact = 1
trigger8 = stateno  = 300 && movecontact = 1
trigger9 = stateno  = 301 && movecontact = 1
trigger10 = stateno = 302 && movecontact = 1
trigger11 = stateno = 303 && movecontact = 1
trigger12 = stateno = 304 && movecontact = 1
trigger13 = stateno = 305 && movecontact = 1
;---------------------------------------------------------------------------
;Forward Birdie Call
[State -1, FBC]
type = ChangeState
value = 890
triggerall = numhelper(0) = 0
triggerall = command = "HCB_b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && movecontact = 1
trigger3 = stateno  = 201 && movecontact = 1
trigger4 = stateno  = 202 && movecontact = 1
trigger5 = stateno  = 203 && movecontact = 1
trigger6 = stateno  = 204 && movecontact = 1
trigger7 = stateno  = 205 && movecontact = 1
trigger8 = stateno  = 300 && movecontact = 1
trigger9 = stateno  = 301 && movecontact = 1
trigger10 = stateno = 302 && movecontact = 1
trigger11 = stateno = 303 && movecontact = 1
trigger12 = stateno = 304 && movecontact = 1
trigger13 = stateno = 305 && movecontact = 1
;---------------------------------------------------------------------------
;Roundhouse Birdie Call
[State -1, RBC]
type = ChangeState
value = 891
triggerall = numhelper(0) = 0
triggerall = command = "HCB_c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && movecontact = 1
trigger3 = stateno  = 201 && movecontact = 1
trigger4 = stateno  = 202 && movecontact = 1
trigger5 = stateno  = 203 && movecontact = 1
trigger6 = stateno  = 204 && movecontact = 1
trigger7 = stateno  = 205 && movecontact = 1
trigger8 = stateno  = 300 && movecontact = 1
trigger9 = stateno  = 301 && movecontact = 1
trigger10 = stateno = 302 && movecontact = 1
trigger11 = stateno = 303 && movecontact = 1
trigger12 = stateno = 304 && movecontact = 1
trigger13 = stateno = 305 && movecontact = 1
;---------------------------------------------------------------------------
;Jab Wild Fang
[State -1, JWF]
type = ChangeState
value = 800
triggerall = command = "HCB_x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && movecontact = 1
trigger3 = stateno  = 201 && movecontact = 1
trigger4 = stateno  = 202 && movecontact = 1
trigger5 = stateno  = 203 && movecontact = 1
trigger6 = stateno  = 204 && movecontact = 1
trigger7 = stateno  = 205 && movecontact = 1
trigger8 = stateno  = 300 && movecontact = 1
trigger9 = stateno  = 301 && movecontact = 1
trigger10 = stateno = 302 && movecontact = 1
trigger11 = stateno = 303 && movecontact = 1
trigger12 = stateno = 304 && movecontact = 1
trigger13 = stateno = 305 && movecontact = 1
;---------------------------------------------------------------------------
;Strong Wild Fang
[State -1, SWF]
type = ChangeState
value = 801
triggerall = command = "HCB_y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && movecontact = 1
trigger3 = stateno  = 201 && movecontact = 1
trigger4 = stateno  = 202 && movecontact = 1
trigger5 = stateno  = 203 && movecontact = 1
trigger6 = stateno  = 204 && movecontact = 1
trigger7 = stateno  = 205 && movecontact = 1
trigger8 = stateno  = 300 && movecontact = 1
trigger9 = stateno  = 301 && movecontact = 1
trigger10 = stateno = 302 && movecontact = 1
trigger11 = stateno = 303 && movecontact = 1
trigger12 = stateno = 304 && movecontact = 1
trigger13 = stateno = 305 && movecontact = 1
;---------------------------------------------------------------------------
;Fierce Wild Fang
[State -1, FWF]
type = ChangeState
value = 802
triggerall = command = "HCB_z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && movecontact = 1
trigger3 = stateno  = 201 && movecontact = 1
trigger4 = stateno  = 202 && movecontact = 1
trigger5 = stateno  = 203 && movecontact = 1
trigger6 = stateno  = 204 && movecontact = 1
trigger7 = stateno  = 205 && movecontact = 1
trigger8 = stateno  = 300 && movecontact = 1
trigger9 = stateno  = 301 && movecontact = 1
trigger10 = stateno = 302 && movecontact = 1
trigger11 = stateno = 303 && movecontact = 1
trigger12 = stateno = 304 && movecontact = 1
trigger13 = stateno = 305 && movecontact = 1
;---------------------------------------------------------------------------
;Jab Berserker Claw
[State -1, JBC]
type = ChangeState
value = 700
triggerall = command = "QCF_x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && movecontact = 1
trigger3 = stateno  = 201 && movecontact = 1
trigger4 = stateno  = 202 && movecontact = 1
trigger5 = stateno  = 203 && movecontact = 1
trigger6 = stateno  = 204 && movecontact = 1
trigger7 = stateno  = 205 && movecontact = 1
trigger8 = stateno  = 300 && movecontact = 1
trigger9 = stateno  = 301 && movecontact = 1
trigger10 = stateno = 302 && movecontact = 1
trigger11 = stateno = 303 && movecontact = 1
trigger12 = stateno = 304 && movecontact = 1
trigger13 = stateno = 305 && movecontact = 1
;---------------------------------------------------------------------------
;Strong Berserker Claw
[State -1, SBC]
type = ChangeState
value = 701
triggerall = command = "QCF_y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && movecontact = 1
trigger3 = stateno  = 201 && movecontact = 1
trigger4 = stateno  = 202 && movecontact = 1
trigger5 = stateno  = 203 && movecontact = 1
trigger6 = stateno  = 204 && movecontact = 1
trigger7 = stateno  = 205 && movecontact = 1
trigger8 = stateno  = 300 && movecontact = 1
trigger9 = stateno  = 301 && movecontact = 1
trigger10 = stateno = 302 && movecontact = 1
trigger11 = stateno = 303 && movecontact = 1
trigger12 = stateno = 304 && movecontact = 1
trigger13 = stateno = 305 && movecontact = 1
;---------------------------------------------------------------------------
;Fierce Berserker Claw
[State -1, FBC]
type = ChangeState
value = 702
triggerall = command = "QCF_z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno  = 200 && movecontact = 1
trigger3 = stateno  = 201 && movecontact = 1
trigger4 = stateno  = 202 && movecontact = 1
trigger5 = stateno  = 203 && movecontact = 1
trigger6 = stateno  = 204 && movecontact = 1
trigger7 = stateno  = 205 && movecontact = 1
trigger8 = stateno  = 300 && movecontact = 1
trigger9 = stateno  = 301 && movecontact = 1
trigger10 = stateno = 302 && movecontact = 1
trigger11 = stateno = 303 && movecontact = 1
trigger12 = stateno = 304 && movecontact = 1
trigger13 = stateno = 305 && movecontact = 1
;---------------------------------------------------------------------------
;Stand Jab Punch
[State -1, Stand Jab Punch]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 201
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 203 && movecontact = 1
trigger4 = stateno = 300 && movecontact = 1
trigger5 = stateno = 303 && movecontact = 1
;---------------------------------------------------------------------------
;Stand Fierce Punch
[State -1, Stand Fierce Punch]
type = ChangeState
value = 202
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 203 && movecontact = 1
trigger4 = stateno = 300 && movecontact = 1
trigger5 = stateno = 303 && movecontact = 1
trigger6 = stateno = 204 && movecontact = 1
;---------------------------------------------------------------------------
;Stand Short Kick
[State -1, Stand Short Kick]
type = ChangeState
value = 203
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
;---------------------------------------------------------------------------
;Stand Forward Kick
[State -1, Stand Forward Kick]
type = ChangeState
value = 204
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 203 && movecontact = 1
trigger4 = stateno = 300 && movecontact = 1
trigger5 = stateno = 303 && movecontact = 1
;---------------------------------------------------------------------------
;Stand Roundhouse Kick
[State -1, Stand Roundhouse Kick]
type = ChangeState
value = 205
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 203 && movecontact = 1
trigger4 = stateno = 300 && movecontact = 1
trigger5 = stateno = 303 && movecontact = 1
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A && ctrl
;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching jab Punch]
type = ChangeState
value = 300
triggerall = command = "x" && command = "holddown"
trigger1 = statetype = C && ctrl
;---------------------------------------------------------------------------
;Crouching strong Punch
[State -1, Crouching strong Punch]
type = ChangeState
value = 301
triggerall = command = "y" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 203 && movecontact = 1
trigger4 = stateno = 300 && movecontact = 1
trigger5 = stateno = 303 && movecontact = 1
;---------------------------------------------------------------------------
;Crouching fierce Punch
[State -1, Crouching fierce Punch]
type = ChangeState
value = 302
triggerall = command = "z" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 203 && movecontact = 1
trigger4 = stateno = 300 && movecontact = 1
trigger5 = stateno = 303 && movecontact = 1
trigger6 = stateno = 204 && movecontact = 1
;---------------------------------------------------------------------------
;Crouching short Kick
[State -1, Crouching short kick]
type = ChangeState
value = 303
triggerall = command = "a" && command = "holddown"
trigger1 = statetype = C && ctrl
;---------------------------------------------------------------------------
;Crouching forward kick
[State -1, Crouching forward kick]
type = ChangeState
value = 304
triggerall = command = "b" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 203 && movecontact = 1
trigger4 = stateno = 300 && movecontact = 1
trigger5 = stateno = 303 && movecontact = 1
;---------------------------------------------------------------------------
;Crouching Roundhouse Kick
[State -1, Crouching Roundhouse Kick]
type = ChangeState
value = 305
triggerall = command = "c" && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 && movecontact = 1
trigger3 = stateno = 203 && movecontact = 1
trigger4 = stateno = 300 && movecontact = 1
trigger5 = stateno = 303 && movecontact = 1
trigger6 = stateno = 204 && movecontact = 1
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Jab Punch]
type = ChangeState
value = 400
triggerall = command = "x"
trigger1 = ctrl && statetype = A
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 401
triggerall = command = "y"
trigger1 = ctrl && statetype = A
trigger2 = stateno = 400 && movecontact = 1
trigger3 = stateno = 403 && movecontact = 1
;---------------------------------------------------------------------------
;Jump Fierce Punch
[State -1, Jump Fierce Punch]
type = ChangeState
value = 402
triggerall = command = "z"
trigger1 = ctrl && statetype = A
trigger2 = stateno = 400 && movecontact = 1
trigger3 = stateno = 403 && movecontact = 1
trigger4 = stateno = 401 && movecontact = 1
trigger5 = stateno = 404 && movecontact = 1
;---------------------------------------------------------------------------
;Jump Short Kick
[State -1, Jump Short Kick]
type = ChangeState
value = 403
triggerall = command = "a"
trigger1 = ctrl && statetype = A
trigger2 = stateno = 400 && movecontact = 1
;---------------------------------------------------------------------------
;Jump Forward Kick
[State -1, Jump forward kick]
type = ChangeState
value = 404
triggerall = command = "b"
trigger1 = ctrl && statetype = A
trigger2 = stateno = 400 && movecontact = 1
trigger3 = stateno = 403 && movecontact = 1
trigger4 = stateno = 401 && movecontact = 1
;---------------------------------------------------------------------------
;Jump Roundhouse kick
[State -1, Jump roundhouse kick]
type = ChangeState
value = 405
triggerall = command = "c"
trigger1 = ctrl && statetype = A
trigger2 = stateno = 400 && movecontact = 1
trigger3 = stateno = 403 && movecontact = 1
trigger4 = stateno = 401 && movecontact = 1
trigger5 = stateno = 404 && movecontact = 1
trigger6 = stateno = 402 && movecontact = 1
;---------------------------------------------------------------------------
;super Jump
[State -1]
type = ChangeState
value = 10023
triggerall = command = "sjump"
triggerall = var(34) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
;---------------------------------------------------------------------------

