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
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+z

[Command]
name = "QCF_xy"
command = ~D, DF, F, y+z

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+z

[Command]
name = "QCB_xy"
command = ~D, DB, B, y+z

;-| Special Motions |------------------------------------------------------
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

[Command]
name = "FF_x"
command = F,D,DF, x
time = 20

[Command]
name = "FF_y"
command = F,D,DF,y
time = 20

[Command]
name = "FF_z"
command = F,D,DF, z
time = 20


[Command]
name = "FF_a"
command = F,D,DF, a
time = 20

[Command]
name = "FF_b"
command = F,D,DF,b
time = 20

[Command]
name = "FF_c"
command = F,D,DF, c
time = 20

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

[Command]
name = "sjump"
command = $D, $U
time = 8

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
;Good Night, Sugah!
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = command = "QCF_xy"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
;Kiss of Death
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3010
triggerall = command = "QCB_xy"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact

;===========================================================================

;---------------------------------------------------------------------------

;Dive Punch (Weak Punch)
[State -1, Repeating Punch]
type = ChangeState
value = ifelse(statetype = A,1023,1020)
triggerall = command = "FF_a"
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact
trigger3 = Var(5) = 4 && Var(6) > 0
trigger3 = hitdefattr = SCA, NA, SA, HA, NP, SP, HP 
trigger3 = movecontact

;---------------------------------------------------------------------------
;Dive Punch (Medium Punch)
[State -1, Repeating Punch]
type = ChangeState
value = ifelse(statetype = A,1023,1021)
triggerall = command = "FF_b"
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact
trigger3 = Var(5) = 4 && Var(6) > 0
trigger3 = hitdefattr = SCA, NA, SA, HA, NP, SP, HP 
trigger3 = movecontact

;---------------------------------------------------------------------------
;Dive Punch(Strong Punch)
[State -1, Repeating Punch]
type = ChangeState
value = ifelse(statetype = A,1023,1022)
triggerall = command = "FF_c"
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact
trigger3 = Var(5) = 4 && Var(6) > 0
trigger3 = hitdefattr = SCA, NA, SA, HA, NP, SP, HP 
trigger3 = movecontact


;Dive Punch (Weak Punch)
[State -1, Repeating Punch]
type = ChangeState
value = 1030
triggerall = command = "FF_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact
trigger3 = Var(5) = 4 && Var(6) > 0
trigger3 = hitdefattr = SCA, NA, SA, HA, NP, SP, HP 
trigger3 = movecontact

;---------------------------------------------------------------------------
;Dive Punch (Medium Punch)
[State -1, Repeating Punch]
type = ChangeState
value = 1031
triggerall = command = "FF_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact
trigger3 = Var(5)= 4 && Var(6) > 0
trigger3 = hitdefattr = SCA, NA, SA, HA, NP, SP, HP 
trigger3 = movecontact

;---------------------------------------------------------------------------
;Dive Punch(Strong Punch)
[State -1, Repeating Punch]
type = ChangeState
value = 1032
triggerall = command = "FF_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact
trigger3 = Var(5) = 4 && Var(6) > 0
trigger3 = hitdefattr = SCA, NA, SA, HA, NP, SP, HP 
trigger3 = movecontact

;Repeating Punch (Weak Punch)
[State -1, Repeating Punch]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
trigger1 = statetype != C
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact
trigger3 = Var(5) = 4 && Var(6) > 0
trigger3 = hitdefattr = SCA, NA, SA, HA, NP, SP, HP 
trigger3 = movecontact

;---------------------------------------------------------------------------
;Repeating Punch (Medium Punch)
[State -1, Repeating Punch]
type = ChangeState
value = 1001
triggerall = command = "QCF_y"
trigger1 = statetype != C
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact
trigger3 = Var(5) = 4 && Var(6) > 0
trigger3 = hitdefattr = SCA, NA, SA, HA, NP, SP, HP 
trigger3 = movecontact

;---------------------------------------------------------------------------
;Repeating Punch (Strong Punch)
[State -1, Repeating Punch]
type = ChangeState
value = 1002
triggerall = command = "QCF_z"
trigger1 = statetype != C
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact
trigger3 = Var(5) = 4 && Var(6) > 0
trigger3 = hitdefattr = SCA, NA, SA, HA, NP, SP, HP 
trigger3 = movecontact

;Special Powers 1
[State -1, Repeating Punch]
type = ChangeState
value = 4000+(Var(54)*10)
triggerall = command = "QCF_a"
triggerall = Var(54) !=0
trigger1 = statetype != C
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact
trigger3 = Var(5) = 4 && Var(6) > 0
trigger3 = hitdefattr = SCA, NA, SA, HA, NP, SP, HP 
trigger3 = movecontact


;---------------------------------------------------------------------------
;Repeating Punch (Medium Punch)
[State -1, Repeating Punch]
type = ChangeState
value = 4003+(Var(54)*10)
triggerall = command = "QCF_b"
triggerall = Var(54) !=0
trigger1 = statetype != C
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact
trigger3 = Var(5) = 4 && Var(6) > 0
trigger3 = hitdefattr = SCA, NA, SA, HA, NP, SP, HP 
trigger3 = movecontact
;---------------------------------------------------------------------------
;Repeating Punch (Strong Punch)
[State -1, Repeating Punch]
type = ChangeState
value = 4006+(Var(54)*10)
triggerall = command = "QCF_c"
triggerall = Var(54) !=0
trigger1 = statetype != C
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact
trigger3 = Var(5) = 4 && Var(6) > 0
trigger3 = hitdefattr = SC, NA, SA
trigger3 = movecontact

;Power Drain
[State -1, Power Drain]
type = ChangeState
value = 1010
triggerall = (command = "QCB_a") || (command = "QCB_b") || (command = "QCB_c") 
trigger1 = statetype != C
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699])
trigger2 = movecontact

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
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


;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100 + (2*(statetype = A))
trigger1 = (command = "FF") && (stateno !=[100,106])
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = (statetype = S) && (stateno !=[100,106])
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,499]) && (Var(5) =4)
trigger2 = movecontact 

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = 400) && MoveContact
trigger5 = (stateno = 430) && MoveContact
trigger6 = (stateno = [200,499]) && (Var(5) =4)
trigger6 = movecontact 

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && MoveContact
trigger3 = (stateno = [230,240]) && MoveContact
trigger4 = (stateno = [400,410]) && MoveContact
trigger5 = (stateno = [430,440]) && MoveContact
trigger6 = (stateno = [200,499]) && (Var(5) =4)
trigger6 = movecontact 
;---------------------------------------------------------------------------
;Stand Light Kick
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 400) && MoveContact
trigger4 = (stateno = [200,499]) && (Var(5) =4)
trigger4 = movecontact 
;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = [400,410]) && MoveContact
trigger5 = (stateno = 430) && MoveContact
trigger6 = (stateno = [200,499]) && (Var(5) =4)
trigger6 = movecontact 
;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200,220]) && MoveContact
trigger3 = (stateno = [230,240]) && MoveContact
trigger4 = (stateno = [400,420]) && MoveContact
trigger5 = (stateno = [430,440]) && MoveContact
trigger6 = (stateno = [200,499]) && (Var(5) =4)
trigger6 = movecontact 
;---------------------------------------------------------------------------
;Taunt
;挑発
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
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = 400) && MoveContact
trigger5 = (stateno = 430) && MoveContact
trigger6 = (stateno = [200,499]) && (Var(5) =4)
trigger6 = movecontact 
;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && MoveContact
trigger3 = (stateno = [230,240]) && MoveContact
trigger4 = (stateno = [400,410]) && MoveContact
trigger5 = (stateno = [430,440]) && MoveContact
trigger6 = (stateno = [200,499]) && (Var(5) =4)
trigger6 = movecontact 

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && MoveContact
trigger3 = (stateno = 400) && MoveContact
trigger4 = (stateno = [200,499]) && (Var(5) =4)
trigger4 = movecontact 

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && MoveContact
trigger3 = (stateno = 230) && MoveContact
trigger4 = (stateno = [400,410]) && MoveContact
trigger5 = (stateno = 430) && MoveContact
trigger6 = (stateno = [200,499]) && (Var(5) =4)
trigger6 = movecontact 
;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200,220]) && MoveContact
trigger3 = (stateno = [230,240]) && MoveContact
trigger4 = (stateno = [400,420]) && MoveContact
trigger5 = (stateno = [430,440]) && MoveContact
trigger6 = (stateno = [200,499]) && (Var(5) =4)
trigger6 = movecontact 
;---------------------------------------------------------------------------

;Jump Light Punch
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699]) && (Var(5) =4)
trigger2 = movecontact 

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 630) && MoveContact
trigger4 = (stateno = [600,699]) && (Var(5) =4)
trigger4 = movecontact 

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 610) && MoveContact
trigger4 = (stateno = 630) && MoveContact
trigger5 = (stateno = 640) && MoveContact
trigger6 = (stateno = [600,699]) && (Var(5) =4)
trigger6 = movecontact 

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = [600,699]) && (Var(5) =4)
trigger3 = movecontact 
;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 610) && MoveContact
trigger4 = (stateno = 630) && MoveContact
trigger5 = (stateno = [600,699]) && (Var(5) =4)
trigger5 = movecontact 
;---------------------------------------------------------------------------
;Dive Kick
[State -1]
type = ChangeState
value = 655
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699]) && (Var(5) =4)
trigger2 = movecontact 

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && MoveContact
trigger3 = (stateno = 610) && MoveContact
trigger4 = (stateno = 630) && MoveContact
trigger5 = (stateno = 640) && MoveContact
trigger6 = (stateno = [600,699]) && (Var(5) =4)
trigger6 = movecontact 


[State -1]
type = ChangeState
value = 260 
trigger1 = command = "sjump"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 250 
trigger2 = (movecontact) && (command = "holdup")
trigger3 = stateno = 420
trigger3 = (movecontact) && (command = "holdup")



