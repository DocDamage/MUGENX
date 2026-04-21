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

[Command] ;Tap x rapidly
name = "5x"
command = x, x, x
time = 45

[Command] ;Tap y rapidly
name = "5y"
command = y, y, y, y
time = 45

[Command] ;Tap x rapidly
name = "5z"
command = z, z, z, z, z
time = 45

[Command] ;Tap x rapidly
name = "5x"
command = ~F,D,DF, x

[Command] ;Tap y rapidly
name = "5x"
command = ~F,D,DF, y

[Command] ;Tap x rapidly
name = "5x"
command = ~F,D,DF, z

[Command] ;Quarter circle forward + x
name = "qcf_x"
command = ~D, DF, F, x

[Command] ;Quarter circle forward + y
name = "qcf_y"
command = ~D, DF, F, y

[Command] ;Quarter circle forward + z
name = "qcf_z"
command = ~D, DF, F, z

[Command] ;Quarter circle forward + a
name = "qcf_a"
command = ~D, DF, F, a

[Command] ;Quarter circle forward + b
name = "qcf_b"
command = ~D, DF, F, b

[Command] ;Quarter circle forward + c
name = "qcf_c"
command = ~D, DF, F, c

[Command] ;Hyper1
name = "qcb_2p"
command = ~D, DB, B, x+y

[Command] ;Hyper1
name = "qcb_2p"
command = ~D, DB, B, x+z

[Command] ;Hyper1
name = "qcb_2p"
command = ~D, DB, B, y+z

[Command] ;Hyper2
name = "qcf_2p"
command = ~D, DF, F, D, DF, x
time = 21

[Command] ;Hyper2
name = "qcb_2k"
command = ~D, DF, F, D, DF, y
time = 21

[Command] ;Hyper2
name = "2qcfhp"
command = ~D, DF, F, D, DF, z
time = 21


[Command] ;Hyper3
name = "qcf_2k"
command = ~D, DF, F, a+b

[Command] ;Hyper3
name = "qcf_2k"
command = ~D, DF, F, a+c

[Command] ;Hyper3
name = "qcf_2k"
command = ~D, DF, F, b+c

[Command]
name = "SuperJump"
command = D, U

[Command]
name = "SuperJump"     ;Required (do not remove)
command = a+b
time = 1

[Command]
name = "SuperJump"  
command = b+c
time = 1

[Command]
name = "SuperJump"  
command = a+c
time = 1

[Command]
name = "holdfwd2";Required (do not remove)
command = F
time = 1

[Command]
name = "holdback2";Required (do not remove)
command = B
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

[Command]
name = "holdup2";Required (do not remove)
command = ~U
time = 1

[Command]
name = "holddown2";Required (do not remove)
command = ~D
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

;Recovery - Roll
[State -1]
type = VarSet
trigger1 = (Var(2) = 0) && (MoveType = H) && (command = "holdback")
v = 2
value = 1

;Recovery - Roll
[State -1]
type = VarSet
trigger1 = (Var(2) = 0) && (MoveType = H) && (command = "holdfwd")
v = 2
value = 1 

[State -1]
type = VarSet
trigger1 = ((Var(2) = 1) && (MoveType != H)) || (Lose)
v = 2
value = 0

;Glacial Spike
[State -1, Standing Strong]
type = ChangeState
value = 3300
triggerall = (PrevStateno != [1000, 1032]) && PrevStateno != 3000 
triggerall = Power >= 1000
triggerall = command = "qcb_2k"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = movecontact

:inferno Spiral
[State -1, Standing Strong]
type = ChangeState
value = 3400
triggerall = (PrevStateno != [1000, 1032]) && PrevStateno != 3000
triggerall = Power >= 1000
triggerall = command = "2qcfhp"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = movecontact

:Raimenken
[State -1, Standing Strong]
type = ChangeState
value = 3100
triggerall = (PrevStateno != [1000, 1032]) && PrevStateno != 3000
triggerall = Power >= 1000
triggerall = command = "qcf_2p"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = movecontact

;Hyper Attacks
[State -1, Standing Strong]
type = ChangeState
value = 3000
triggerall = (PrevStateno != [1000, 1032]) && PrevStateno != 3000
triggerall = Power >= 1000
triggerall = command = "qcb_2p"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = movecontact

;Hyper Attacks
[State -1, Standing Strong]
type = ChangeState
value = 3050
triggerall = (PrevStateno != [1000, 1032]) && PrevStateno != 3000
triggerall = Power >= 1000
triggerall = command = "qcb_2p"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = [600,650])
trigger2 = movecontact 
trigger3 = StateNo = 250
trigger3 = time >10


:Raimenken
[State -1, Standing Strong]
type = ChangeState
value = 3200
triggerall = (PrevStateno != [1000, 1032]) && PrevStateno != 3000
triggerall = Power >= 1000
triggerall = command = "qcf_2k"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = movecontact

;Special Attacks
[State -1, YAAYAA]
type = ChangeState
value = 1100
triggerall = command = "5x"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = [200,650]) && StateNo != 210 && StateNo != 200
trigger2 = movecontact 

;Special Attacks
[State -1, Standing Strong]
type = ChangeState
value = 1100
triggerall = command = "5y"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = [200,650]) && StateNo != 210 && StateNo != 200
trigger2 = movecontact 

;Special Attacks
[State -1, Standing Strong]
type = ChangeState
value = 1100
triggerall = command = "5z"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = [200,650]) && StateNo != 210 && StateNo != 200
trigger2 = movecontact 

;Special Attacks
[State -1, Standing Strong]
type = ChangeState
value = 1200
triggerall = command = "qcf_a" || command ="qcf_b" || command = "qcf_c"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = [200,650]) && StateNo != 210 && StateNo != 200
trigger2 = movecontact 

;Special Attacks
[State -1, Standing Strong]
type = ChangeState
value = 1210
triggerall = command = "qcf_a" || command ="qcf_b" || command = "qcf_c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = [200,650]) && StateNo != 210 && StateNo != 200
trigger2 = movecontact 

;Special Attacks
[State -1, Standing Strong]
type = ChangeState
value = 1000
triggerall = command = "qcf_x"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = [200,250])
trigger2 = movecontact 

;Special Attacks
[State -1, Standing Strong]
type = ChangeState
value = 1010
triggerall = command = "qcf_y"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = [200,250])
trigger2 = movecontact 

;Special Attacks
[State -1, Standing Strong]
type = ChangeState
value = 1020
triggerall = command = "qcf_z"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = (StateNo = [200,250])
trigger2 = movecontact 

;Special Attacks
[State -1, Standing Strong]
type = ChangeState
value = 1030
triggerall = command = "qcf_x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = [600,650])
trigger2 = movecontact 
trigger3 = StateNo = 250
trigger3 = time >10

;Special Attacks
[State -1, Standing Strong]
type = ChangeState
value = 1031
triggerall = command = "qcf_y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = [600,650])
trigger2 = movecontact 
trigger3 = StateNo = 250
trigger3 = time >10

;Special Attacks
[State -1, Standing Strong]
type = ChangeState
value = 1032
triggerall = command = "qcf_z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = (StateNo = [600,650])
trigger2 = movecontact 
trigger3 = StateNo = 250
trigger3 = time >10


; Basic Throw
[State -1, Basic Throw]
type = ChangeState
value = 800
triggerall = command = "z" 
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

; Basic Throw
[State -1, Basic Throw]
type = ChangeState
value = 810
triggerall = command = "c" 
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H

; Superjump 
[State -1, Superjump]
type = ChangeState
value = 9000
triggerall = statetype = S || statetype = C
triggerall = ctrl
trigger1 = command = "SuperJump"

;Run Fwd�
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = command = "FF"
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = command = "BB"
triggerall = statetype = S
trigger1 = ctrl

;Taunt
[State -1, Run Fwd]
type = ChangeState
value = 850
trigger1 = command = "start"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Crouching Fierce jump]
type = ChangeState
value = 9000
triggerall = command = "holdup"
trigger1 = stateno = 420
trigger1 = movehit
;===========================================================================
; Basic Attacks

;Standing Jab
;ダッシュ
[State -1, Standing Jab]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = statetype = S
trigger1 = ctrl

;Standing Strong
;ダッシュ
[State -1, Standing Strong]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact


;Standing Fierce
;ダッシュ
[State -1, Standing Fierce]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 440
trigger9 = movecontact


;Standing Short
;ダッシュ
[State -1, Standing Short]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact


;Standing Forward
;ダッシュ
[State -1, Standing Forward]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact 
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact

;Standing Rhouse
;ダッシュ
[State -1, Standing Rhouse]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 440
trigger9 = movecontact

;Crouching Jab
[State -1, Crouching Jab]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact

;Crouching Strong
[State -1, Crouching Strong]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact


;Crouching Fierce
[State -1, Crouching Fierce]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 440
trigger9 = movecontact

;Crouching Short
[State -1, Crouching Short]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 430
trigger4 = movecontact

;Crouching Forward
[State -1, Crouching Forward]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact

;Crouching Rhouse
[State -1, Crouching Rhouse]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 440
trigger9 = movecontact

;Jumping Jab
[State -1, Jumping Jab]
type = ChangeState
value = 600
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;Jumping Strong
[State -1, Jumping Strong]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movehit
trigger3 = stateno = 630
trigger3 = movehit

;Jumping Fierce
[State -1, Jumping Fierce]
type = ChangeState
value = 620
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = movehit
trigger3 = stateno = 640
trigger3 = movehit
trigger4 = stateno = 600
trigger4 = movehit

;Jumping Short
[State -1, Jumping Short]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movehit

;Jumping Forward
[State -1, Jumping Forward]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = movehit
trigger3 = stateno = 630
trigger3 = movehit

;Jumping Rhouse
[State -1, Jumping Rhouse]
type = ChangeState
value = 650
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 620
trigger2 = movehit
trigger3 = stateno = 630
trigger3 = movehit
trigger4 = StateNo = 640
trigger4 = MoveContact


;---------------------------------------------------------------------------

;-------------------
;MEE Template Files
;   provided by
;  Kitsune Sniper
;       ***
; Thanks, Kitsune!
;-------------------