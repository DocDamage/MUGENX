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
name = "tenhax"
command = ~F, DF, D, DB, B, F, x
time = 30

[Command]
name = "tenhay"
command = ~F, DF, D, DB, B, F, y
time = 30

[Command]
name = "tenhaz"
command = ~F, DF, D, DB, B, F, z
time = 30

[Command]
name = "fujinx"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "fujiny"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "fujinz"
command = ~D, DF, F, D, DF, F, z
time = 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "kogetsux"
command = ~F, D, DF, x

[Command]
name = "kogetsuy"
command = ~F, D, DF, y

[Command]
name = "kogetsuz"
command = ~F, D, DF, z

[Command]
name = "sempux"
command = ~D, DF, F, x

[Command]
name = "sempuy"
command = ~D, DF, F, y

[Command]
name = "sempuz"
command = ~D, DF, F, z

[Command]
name = "sempua"
command = ~D, DF, F, a

[Command]
name = "sempub"
command = ~D, DF, F, b

[Command]
name = "sempuc"
command = ~D, DF, F, c

[Command]
name = "resshinx"
command = ~B, D, DB, x
time = 20

[Command]
name = "resshiny"
command = ~B, D, DB, y
time = 20

[Command]
name = "resshinz"
command = ~B, D, DB, z
time = 20

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

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
name = "DU"
command = D, U
time = 10

[Command]
name = "DU1"
command = DB, UF
time = 10

[Command]
name = "DU2"
command = DF, UB
time = 10

[Command]
name = "DU3"
command = DF, UF
time = 10

[Command]
name = "DU4"
command = DB, UB
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "evade"
command = a+x
time = 1

[Command]
name = "charge"
command = /$b+y
time = 1

[Command]
name = "burst"
command = c+z
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
name = "up"
command = U
time = 1

[Command]
name = "up"
command = UB
time = 1

[Command]
name = "up"
command = UF
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
;---------------------------------------------------------------------------
;Tenha Danku Retsu Zan
[State -1, Tenha Danku Retsu Zan]
type = ChangeState
value = 3000
triggerall = command = "tenhax" || command = "tenhay" || command = "tenhaz"
trigger1 = Power = 3000
trigger1 = Pos Y >= 0
trigger1 = ctrl
trigger2 = Var(1) = 25 && Power >= 1000
trigger2 = Pos Y >= 0
trigger2 = ctrl
trigger3 = Power = 3000
trigger3 = Stateno = 220 && Movehit
trigger3 = Pos Y >= 0
trigger4 = Var(1) = 25 && Power >= 1000
trigger4 = Stateno = 220 && Movehit
trigger4 = Pos Y >= 0
trigger5 = Power = 3000
trigger5 = Stateno = 220 && Movehit
trigger5 = Pos Y >= 0
trigger6 = Var(1) = 25 && Power >= 1000
trigger6 = Stateno = 210 && Movehit
trigger6 = Pos Y >= 0
trigger7 = Var(1) = 25 && Power >= 1000
trigger7 = Stateno = 200 && Movehit
trigger7 = Pos Y >= 0
trigger8 = Var(1) = 25 && Power >= 1000
trigger8 = Stateno = 230 && Movehit
trigger8 = Pos Y >= 0

;---------------------------------------------------------------------------
;Hiougi Tenha Fujin Zan - lv1
[State -1, Lv1 Hiougi Tenha Fujin Zan]
type = ChangeState
value = 3010
triggerall = command = "fujinx" || IfElse (Power < 2000, command = "fujiny" || command = "fujinz", command = "fujinx")
triggerall = var(12) = 0
trigger1 = Power >= 1000 && Var(1) !=25
trigger1 = Pos Y >= 0
trigger1 = ctrl
trigger2 = Power >= 1000 && Var(1) !=25
trigger2 = Stateno = 200 || Stateno = 210 || Stateno = 220 || Stateno = 230 || Stateno = 280 || Stateno = 300 || Stateno = 1040 || Stateno = 1050 || Stateno = 1060
trigger2 = Movehit
trigger2 = Pos Y >= 0

;---------------------------------------------------------------------------
;Hiougi Tenha Fujin Zan - lv2
[State -1, Lv2 Hiougi Tenha Fujin Zan]
type = ChangeState
value = 3015
triggerall = command = "fujiny"  || IfElse (Power < 3000, command = "fujinz", command = "fujiny")
triggerall = var(12) = 0
trigger1 = Power >= 2000 && Var(1) !=25
trigger1 = Pos Y >= 0
trigger1 = ctrl
trigger2 = Power >= 2000 && Var(1) !=25
trigger2 = Stateno = 200 || Stateno = 210 || Stateno = 220 || Stateno = 230 || Stateno = 280 || Stateno = 300 || Stateno = 1040 || Stateno = 1050 || Stateno = 1060
trigger2 = Movehit
trigger2 = Pos Y >= 0

;---------------------------------------------------------------------------
;Hiougi Tenha Fujin Zan - lv3
[State -1, Lv3 Hiougi Tenha Fujin Zan]
type = ChangeState
value = 3020
triggerall = var(12) = 0
trigger1 = command = "fujinz"
trigger1 = Var(1)!= 25 && Power = 3000
trigger1 = Pos Y >= 0
trigger1 = ctrl
trigger2 = command = "fujinx" || command = "fujiny" || command = "fujinz"
trigger2 = Var(1)= 25 && Power >= 1000
trigger2 = Pos Y >= 0
trigger2 = ctrl
trigger3 = command = "fujinz"
trigger3 = Var(1) !=25 && Power = 3000 
trigger3 = Stateno = 200 || Stateno = 210 || Stateno = 220 || Stateno = 1040 || Stateno = 1050 || Stateno = 1060
trigger3 = Movehit
trigger3 = Pos Y >= 0
trigger4 = command = "fujinx" || command = "fujiny" || command = "fujinz"
trigger4 = Var(1) =25 && Power >= 1000 
trigger4 = Stateno = 200 || Stateno = 210 || Stateno = 220 || Stateno = 1040 || Stateno = 1050 || Stateno = 1060
trigger4 = Movehit
trigger4 = Pos Y >= 0

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Nagi Aiba Forte
[State -1, Strong Nagi Aiba]
type = ChangeState
value = 1095
triggerall = command = "kogetsuz" && Var(12) = 1
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Nagi Aiba Médio
[State -1, Medium Nagi Aiba]
type = ChangeState
value = 1090
triggerall = command = "kogetsuy" && Var(12) = 1
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Nagi Aiba Fraco
[State -1, Weak Nagi Aiba]
type = ChangeState
value = 1085
triggerall = command = "kogetsux" && Var(12) = 1
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Sempuu Ha Forte
[State -1, Strong Sempuu Ha]
type = ChangeState
value = 1104
triggerall = command = "sempuc" && Var(12) = 1
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Sempuu Ha Médio
[State -1, Medium Sempuu Ha]
type = ChangeState
value = 1102
triggerall = command = "sempub" && Var(12) = 1
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Sempuu Ha Fraco
[State -1, Weak Sempuu Ha]
type = ChangeState
value = 1100
triggerall = command = "sempua" && Var(12) = 1
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Resshin Zan Fraco
[State -1, Weak Resshin Zan]
type = ChangeState
value = 1070
triggerall = command = "resshinx"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = Stateno = 270 && MoveHit
trigger3 = Stateno = 280 && MoveHit
trigger4 = Stateno = 200 && MoveHit
trigger5 = Stateno = 230 && MoveHit

;---------------------------------------------------------------------------
;Resshin Zan Médio
[State -1, Medium Resshin Zan]
type = ChangeState
value = 1075
triggerall = command = "resshiny"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = Stateno = 220 && MoveHit

;---------------------------------------------------------------------------
;Resshin Zan Forte
[State -1, Strong Resshin Zan]
type = ChangeState
value = 1080
triggerall = command = "resshinz"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kogetsu Zan Fraco
[State -1, Weak Kogetsu Zan]
type = ChangeState
value = 1040
triggerall = command = "kogetsux" && var(12) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveHit
trigger3 = stateno = 230 && MoveHit
trigger4 = Stateno = 400 && MoveHit
trigger5 = Stateno = 410 && MoveHit
trigger6 = Stateno = 430 && MoveHit
trigger7 = Stateno = 440 && MoveHit
trigger8 = stateno = 210 && MoveHit
trigger9 = Stateno = 300 && MoveHit


;---------------------------------------------------------------------------
;Kogetsu Zan Médio
[State -1, Medium Kogetsu Zan]
type = ChangeState
value = 1050
triggerall = command = "kogetsuy" && var(12) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveHit
trigger3 = stateno = 210 && MoveHit
trigger4 = Stateno = 400 && MoveHit
trigger5 = Stateno = 410 && MoveHit
trigger6 = Stateno = 430 && MoveHit
trigger7 = Stateno = 440 && MoveHit
trigger8 = Stateno = 260 && MoveHit
trigger9 = Stateno = 300 && MoveHit
trigger10 = stateno = 230 && MoveHit

;---------------------------------------------------------------------------
;Kogetsu Zan Forte
[State -1, Strong Kogetsu Zan]
type = ChangeState
value = 1060
triggerall = command = "kogetsuz" && var(12) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveHit
trigger3 = stateno = 210 && MoveHit
trigger4 = stateno = 220 && MoveHit
trigger5 = Stateno = 400 && MoveHit
trigger6 = Stateno = 410 && MoveHit
trigger7 = Stateno = 430 && MoveHit
trigger8 = Stateno = 440 && MoveHit
trigger9 = Stateno = 270 && MoveHit
trigger10 = Stateno = 280 && MoveHit
trigger11 = Stateno = 420 && MoveHit
trigger12 = stateno = 230 && MoveHit

;---------------------------------------------------------------------------
;Sempuu Retsu Zan Fraco
[State -1, Weak Sempuu Retsu Zan]
type = ChangeState
value = 1000
triggerall = command = "sempux"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveHit
trigger3 = stateno = 230 && MoveHit
trigger4 = Stateno = 400 && MoveHit
trigger5 = Stateno = 410 && MoveHit
trigger6 = Stateno = 430 && MoveHit
trigger7 = Stateno = 440 && MoveHit

;---------------------------------------------------------------------------
;Sempuu Retsu Zan Médio
[State -1, Medium Sempuu Retsu Zan]
type = ChangeState
value = 1010
triggerall = command = "sempuy"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveHit
trigger3 = stateno = 210 && MoveHit
trigger4 = Stateno = 400 && MoveHit
trigger5 = Stateno = 410 && MoveHit
trigger6 = Stateno = 430 && MoveHit
trigger7 = Stateno = 440 && MoveHit
trigger8 = Stateno = 260 && MoveHit
trigger9 = Stateno = 300 && MoveHit

;---------------------------------------------------------------------------
;Sempuu Retsu Zan Forte
[State -1, Strong Sempuu Retsu Zan]
type = ChangeState
value = 1020
triggerall = command = "sempuz"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && MoveHit
trigger3 = stateno = 210 && MoveHit
trigger4 = stateno = 220 && MoveHit
trigger5 = Stateno = 400 && MoveHit
trigger6 = Stateno = 410 && MoveHit
trigger7 = Stateno = 430 && MoveHit
trigger8 = Stateno = 440 && MoveHit
trigger9 = Stateno = 270 && MoveHit
trigger10 = Stateno = 280 && MoveHit

;---------------------------------------------------------------------------
;Sempuu Retsu Zan Falso
[State -1, Fake Sempuu Retsu Zan]
type = ChangeState
value = 1030
triggerall = var(12) = 0
triggerall = command = "sempua" || command = "sempub" || command = "sempuc"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Evade
[State -1, Evade]
type = ChangeState
value = 700
triggerall = command = "evade"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Burst
[State -1, Burst]
type = ChangeState
value = 705
triggerall = command = "burst" && Power >=1000 && Var(1) != 25
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Pulo Alto
[State -1, High Jump]
type = ChangeState
value = 710
triggerall = command = "DU" || command = "DU1" || command = "DU2" || command = "DU3" || command = "DU4"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Punch Throw
[State -1, Punch Throw]
type = ChangeState
value = 800
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

;---------------------------------------------------------------------------
;Kick Throw
[State -1, Kick Throw]
type = ChangeState
value = 810
triggerall = command = "c"
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
;Stand Light Sword
[State -1, Stand Light Sword]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230 && MoveHit && PrevStateNo !=200

;---------------------------------------------------------------------------
;Stand Medium Sword
[State -1, Stand Medium Sword]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x > 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7

;---------------------------------------------------------------------------
;Stand Strong Sword
[State -1, Stand Strong Sword]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = p2bodydist x >= 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Stateno = 210 && Movehit

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && MoveHit && PrevStateNo !=230

;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist x >= 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && Movehit
trigger3 = (stateno = 260) && Movehit

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = p2bodydist x >= 20
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Near Kick
[State -1, Stand Near Kick]
type = ChangeState
value = 260
triggerall = command = "b"
trigger1 = p2bodydist x < 45
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Near Strong Kick
[State -1, Stand Near Strong Kick]
type = ChangeState
value = 270
triggerall = command = "c"
trigger1 = p2bodydist x < 45
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Near Strong Sword
[State -1, Stand Near Strong Sword]
type = ChangeState
value = 280
triggerall = command = "z"
trigger1 = p2bodydist x < 45
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Near Sword
[State -1, Stand Near Sword]
type = ChangeState
value = 300
triggerall = command = "y"
trigger1 = p2bodydist x < 45
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Charge
;[State -1, Charge]
;type = ChangeState
;value = 6145
;triggerall = command = "charge"
;trigger1 = statetype != A
;trigger1 = ctrl && command != "b"
;trigger2 = statetype != A
;trigger2 = ctrl && command != "y"

;---------------------------------------------------------------------------
;Crouching Light Sword
[State -1, Crouching Light Sword]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Stateno = 430 && MoveHit && Prevstateno != 400

;---------------------------------------------------------------------------
;Crouching Medium Sword
[State -1, Crouching Medium Sword]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 440)
trigger2 = Movehit

;---------------------------------------------------------------------------
;Crouching Strong Sword
[State -1, Crouching Strong Sword]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = Stateno = 400 && MoveHit && Prevstateno != 430

;---------------------------------------------------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 410) && Movehit

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Sword
[State -1, Jump Light Sword]
type = ChangeState
value = 600
triggerall = command = "x" && stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630 && MoveHit

;---------------------------------------------------------------------------
;Jump Medium Sword
[State -1, Jump Medium Sword]
type = ChangeState
value = 610
triggerall = command = "y" && stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Sword
[State -1, Jump Strong Sword]
type = ChangeState
value = 620
triggerall = command = "z" && stateno != 105
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a" && stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = Stateno = 600 && MoveHit

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b" && stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c" && stateno != 105
trigger1 = statetype = A
trigger1 = ctrl
