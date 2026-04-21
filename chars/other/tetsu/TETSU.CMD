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
[Command] ;Two quarter circles forward + y
name = "2QCF_x"
command = ~D, DF, F, D, DF, F, x
time = 25

[Command] ;Two quarter circles forward + y
name = "2QCF_x"
command = ~D, DF, F, D, DF, F, y
time = 25

[Command] ;Two quarter circles forward + y
name = "2QCF_x"
command = ~D, DF, F, D, DF, F, z
time = 25

[Command] ;Two quarter circles forward + y
name = "Ult1"
command = ~D, DB, B, D, DB, B, x
time = 25

[Command] ;Two quarter circles forward + y
name = "Ult1"
command = ~D, DB, B, D, DB, B, y
time = 25

[Command] ;Two quarter circles forward + y
name = "Ult1"
command = ~D, DB, B, D, DB, B, z
time = 25

[Command] ;Two quarter circles forward + y
name = "Ult2"
command = ~D, DB, B, D, DB, B, a
time = 25

[Command] ;Two quarter circles forward + y
name = "Ult2"
command = ~D, DB, B, D, DB, B, b
time = 25

[Command] ;Two quarter circles forward + y
name = "Ult2"
command = ~D, DB, B, D, DB, B, c
time = 25

[Command] ;Two quarter circles forward + y
name = "2QCF_a"
command = ~D, DF, F, D, DF, F, a
time = 25

[Command] ;Two quarter circles forward + y
name = "2QCF_a"
command = ~D, DF, F, D, DF, F, b
time = 25

[Command] ;Two quarter circles forward + y
name = "2QCF_a"
command = ~D, DF, F, D, DF, F, c
time = 25
[Command]
name = "QCFp_EX"
command = ~D, DF, F, x+y

[Command]
name = "QCFp_EX"
command = ~D, DF, F, y+z

[Command]
name = "QCFp_EX"
command = ~D, DF, F, x+z

[Command]
name = "DPp_EX"
command = ~F, D, DF, x+y

[Command]
name = "DPp_EX"
command = ~F, D, DF, y+z

[Command]
name = "DPp_EX"
command = ~F, D, DF, x+z

[Command]
name = "QCBp_EX"
command = ~D, DB, B, x+y

[Command]
name = "QCBp_EX"
command = ~D, DB, B, y+z

[Command]
name = "QCBp_EX"
command = ~D, DB, B, x+z

[Command]
name = "QCFk_EX"
command = ~D, DF, F, a+b

[Command]
name = "QCFk_EX"
command = ~D, DF, F, a+c

[Command]
name = "QCFk_EX"
command = ~D, DF, F, b+c

[Command]
name = "QCBk_EX"
command = ~D, DB, B, a+b

[Command]
name = "QCBk_EX"
command = ~D, DB, B, a+c

[Command]
name = "QCBk_EX"
command = ~D, DB, B, b+c
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
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "DP_x"
command = ~F, D, DF, x

[Command]
name = "DP_y"
command = ~F, D, DF, y

[Command]
name = "DP_z"
command = ~F, D, DF, z

[Command]
name = "DP_a"
command = ~F, D, DF, a

[Command]
name = "DP_b"
command = ~F, D, DF, b

[Command]
name = "DP_c"
command = ~F, D, DF, c

[Command]
name = "RDP_x"
command = ~B, D, DB, x

[Command]
name = "RDP_y"
command = ~B, D, DB, y

[Command]
name = "RDP_z"
command = ~B, D, DB, z

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
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

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
name = "hparry"
command = F
time = 1

[Command]
name = "lparry"
command = D
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
name = "holdc";Required (do not remove)
command = /c
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


; Shoryureppa
[State -1]
type = ChangeState
value = 3000
triggerall = stateno !=3000
triggerall = power >= 1000
triggerall = command = "2QCF_a"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA, SA, HA 
trigger2 = movecontact
trigger3 = NumHelper = 1
trigger3 = helper, movecontact


; Typhoon Kick
[State -1]
type = ChangeState
value = ifelse(statetype = A,3045,3040)
triggerall = stateno !=[3040,3047]
triggerall = power >= 1000
triggerall = command = "Ult2"
trigger1 = ctrl = 1
trigger2 = hitdefattr = SCA, NA, SA, HA 
trigger2 = movecontact
trigger3 = NumHelper = 1
trigger3 = helper, movecontact

[State -1]
type = ChangeState
value = 3090
triggerall = stateno !=[3090,3093]
triggerall = power >= 1000
triggerall = command = "2QCF_a" 
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = hitdefattr = A, NA, SA, HA
trigger2 = movecontact
trigger3 = NumHelper = 1
trigger3 = helper, movecontact

; Shinkuu Hadoken
[State -1]
type = ChangeState
value = ifelse(statetype=A,3070,3010)
triggerall = stateno !=3070 && stateno !=3010
triggerall = power >= 1000
triggerall = command = "2QCF_x" 
trigger1 = ctrl = 1
trigger2 = hitdefattr = SCA, NA, SA, HA
trigger2 = movecontact
trigger3 = NumHelper = 1
trigger3 = helper, movecontact

; Final Bomber
[State -1]
type = ChangeState
value = 3050
triggerall = stateno !=[3050,3055] 
triggerall = power >= 1000
triggerall = command = "Ult1"
triggerall = statetype !=A 
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, HA
trigger2 = movecontact
trigger3 = NumHelper = 1
trigger3 = helper, movecontact

;Dragon Punch_EX
[State -1]
type = ChangeState
value = 2020
triggerall = power >= 500
triggerall = command = "DPp_EX"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Hadoken_EX
[State -1]
type = ChangeState
value = 2000
triggerall = !NumHelper(11000)
triggerall = power >= 500
triggerall = command = "QCFp_EX"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Cyclone Kick_EX
[State -1]
type = ChangeState
value = ifelse(statetype =A,2080,2010)
triggerall = power >= 500
triggerall = command = "QCBk_EX"
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

;Cyclone Kick_EX
[State -1]
type = ChangeState
value = 2070
triggerall = power >= 500
triggerall = command = "QCBp_EX"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Hadoken_EX
[State -1]
type = ChangeState
value = 1068
triggerall = !NumHelper(11000)
triggerall = power >= 500
triggerall = command = "QCFp_EX"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = [600,699])  
trigger2 = movecontact

;Dive Kick_EX
[State -1]
type = ChangeState
value = 2030
triggerall = power >= 500
triggerall = command = "QCFk_EX"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = [600,699])  
trigger2 = movecontact

;Neo Recovery
[State -1]
type = ChangeState
value = 910
triggerall = power = 3000 && CanRecover = 0
triggerall = command = "QCFp_EX"
triggerall = life > 0
trigger1 = stateno = 5050

;Kikkoken_X
[State -1]
type = ChangeState
value = 1020
triggerall = command = "DP_x"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;---------------------------------------------------------------------------
;Kikkoken_Y
[State -1]
type = ChangeState
value = 1022
triggerall = command = "DP_y"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact



;---------------------------------------------------------------------------
;Kikkoken_Z
[State -1]
type = ChangeState
value = 1024
triggerall = command = "DP_z"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
value = 1040
triggerall = command = "DP_a"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;---------------------------------------------------------------------------
;Kikkoken_Y
[State -1]
type = ChangeState
value = 1041
triggerall = command = "DP_b"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact



;---------------------------------------------------------------------------
;Kikkoken_Z
[State -1]
type = ChangeState
value = 1042
triggerall = command = "DP_c"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
value = 1000
triggerall = !NumHelper(11000)
triggerall = command = "QCF_x"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;---------------------------------------------------------------------------
;Kikkoken_Y
[State -1]
type = ChangeState
value = 1001
triggerall =!NumHelper(11000)
triggerall = command = "QCF_y"
triggerall = numproj = 0
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact



;---------------------------------------------------------------------------
;Kikkoken_Z
[State -1]
type = ChangeState
value = 1002
triggerall = !NumHelper(11000)
triggerall = numproj = 0
triggerall = command = "QCF_z"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
value = 1060
triggerall = !NumHelper(11000)
triggerall = command = "QCF_x"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = [600,699]) 
trigger2 = movecontact

;---------------------------------------------------------------------------
;Kikkoken_Y
[State -1]
type = ChangeState
value = 1061
triggerall =!NumHelper(11000)
triggerall = command = "QCF_y"
triggerall = numproj = 0
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = [600,699])  
trigger2 = movecontact



;---------------------------------------------------------------------------
;Kikkoken_Z
[State -1]
type = ChangeState
value = 1062
triggerall = !NumHelper(11000)
triggerall = numproj = 0
triggerall = command = "QCF_z"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = [600,699])  
trigger2 = movecontact


;Kikkoken_X
[State -1]
type = ChangeState
value = ifelse(statetype = A,1082,1010)
triggerall = command = "QCB_a"
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699]) 
trigger2 = movecontact

;---------------------------------------------------------------------------
;Kikkoken_Y
[State -1]
type = ChangeState
value = ifelse(statetype = A,1083,1012)
triggerall = command = "QCB_b"
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact



;---------------------------------------------------------------------------
;Kikkoken_Z
[State -1]
type = ChangeState
value = ifelse(statetype = A,1084,1014)
triggerall = command = "QCB_c"
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

;Tetsu Rave
[State -1]
type = ChangeState
value = 1070
triggerall = command = "QCB_x" || command = "QCB_y" || command = "QCB_z"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])  
trigger2 = movecontact

;Dive
[State -1]
type = ChangeState
value = 1030
triggerall = command = "QCF_a"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = [600,699]) 
trigger2 = movecontact

;---------------------------------------------------------------------------
;Kikkoken_Y
[State -1]
type = ChangeState
value = 1031
triggerall = command = "QCF_b"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = [600,699]) 
trigger2 = movecontact


;Assasin's Slide
[State -1]
type = ChangeState
value = 1073
triggerall = command = "QCF_a" || command = "QCF_b"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
;---------------------------------------------------------------------------
;Kikkoken_Z
[State -1]
type = ChangeState
value = 1034
triggerall = command = "QCF_c"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = [600,699]) 
trigger2 = movecontact

;Kikkoken_Z
[State -1]
type = ChangeState
value = 1074
triggerall = command = "QCF_c"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------

;Kung Fu Throw
;“Š‚°
[State -1, Kung Fu Throw]
type = ChangeState
value = 800 + (statetype = A)
triggerall = (command = "y") || (command = "z")
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd" && (statetype = S)
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback" && (statetype = S)
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
trigger3 = command = "holdfwd" && (statetype = A)
trigger3 = p2bodydist X < 3
trigger3 = p2statetype = A
trigger4 = command = "holdback" && (statetype = A)
trigger4 = p2bodydist X < 5
trigger4 = p2statetype = A 

;Kung Fu Throw
;“Š‚°
[State -1, Kung Fu Throw]
type = ChangeState
value = 850 
triggerall = (command = "b") || (command = "c")
triggerall = statetype !=A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd" && (statetype = S)
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback" && (statetype = S)
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

; Dash
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = command != "holddown"
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; BackDash
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = stateno != 105
trigger1 = command != "holddown"
trigger1 = ctrl = 1

;Parry
[State -1] 
type = ChangeState 
value = 22
triggerall = command = "hparry"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 99
trigger2 = time = [20,27]
;---------------------------------------------------------------------------
;Parry
[State -1] 
type = ChangeState 
value = 23
triggerall = command = "lparry"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 99
trigger2 = time = [20,27]

;---------------------------------------------------------------------------
;Standing Light Kick
[State -1]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

;Axe Kick 
[State -1]
type = ChangeState
value = 260
triggerall = command = "b"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [400,410]) && movecontact

;Standing Medium Kick 
[State -1]
type = ChangeState
value = 220
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [400,410]) && movecontact


;---------------------------------------------------------------------------
;Standing Heavy Kick
[State -1]
type = ChangeState
value = 240
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [400,410]) && movecontact
trigger4 = (stateno = [220,230]) && movecontact
trigger5 = (stateno = [420,430]) && movecontact
;---------------------------------------------------------------------------
;Standing Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Standing Medium Punch
[State -1]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [400,410]) && movecontact
;---------------------------------------------------------------------------
;Standing Heavy Punch
[State -1]
type = ChangeState
value = 250
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [400,410]) && movecontact
trigger4 = (stateno = [220,230]) && movecontact
trigger5 = (stateno = [420,430]) && movecontact
;-------------------------------------------------------------------------------
;Crouching Light Punch
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1]
type = ChangeState
value = 420
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [400,410]) && movecontact
;---------------------------------------------------------------------------
;Crouching Heavy Punch
[State -1]
type = ChangeState
value = 440
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [400,410]) && movecontact
trigger4 = (stateno = [220,230]) && movecontact
trigger5 = (stateno = [420,430]) && movecontact
;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [400,410]) && movecontact
;---------------------------------------------------------------------------
;Crouching Heavy Kick
[State -1]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = (stateno = [400,410]) && movecontact
trigger4 = (stateno = [220,230]) && movecontact
trigger5 = (stateno = [420,430]) && movecontact
;---------------------------------------------------------------------------
;Jumping Light Kick (neutral)
[State -1]
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jumping Medium Kick (neutral)
[State -1]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = [600,610]) && movecontact
;---------------------------------------------------------------------------
;Jumping Heavy Kick (neutral)
[State -1]
type = ChangeState
value = 670
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = (stateno = [630,640]) && movecontact

;---------------------------------------------------------------------------
;Jumping Light Punch (neutral)
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jumping Medium Punch (neutral)
[State -1]
type = ChangeState
value = 630
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = [600,610]) && movecontact
;---------------------------------------------------------------------------
;Jumping Heavy Punch (neutral)
[State -1]
type = ChangeState
value = 661
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = [600,610]) && movecontact
trigger3 = (stateno = [630,640]) && movecontact

;Taunt
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;-------------------
;MEE Template Files
;   provided by
;  Kitsune Sniper
;       ***
; Thanks, Kitsune!
;-------------------

