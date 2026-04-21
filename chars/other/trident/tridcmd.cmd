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
name = "abc"
command =  a+b+c
time = 1

[Command]
name = "armadura1"
command = /B, y+z
time = 1


[Command]
name = "armadura2"
command = /B, a+b
time = 1

[Command]
name = "armadura4"
command = /B, c+x
time = 1

[Command]
name = "c_aire"
command = /UF,c
time = 1

[Command]
name = "z_agachado"
command = /DF,z
time = 1

[Command]
name = "x_aire"
command = /UF,x
time = 1

[Command]
name = "ab"
command =  b+y
time = 1

[Command]
name = "xyz"
command = x+y+z
time = 20

;-| Special Motions |------------------------------------------------------


[Command]
name = "ola"
command = ~D, DF, F, b
time = 30

[Command]
name = "ola"
command = ~D, DB, B, b
time = 30


[Command]
name = "QCF_x"
command = ~D, DF, F, x
time = 30

[Command]
name = "QCF_x"
command = ~D, DB, B, x
time = 30

[Command]
name = "QCF_y"
command = ~D, DF, F, y
time = 30

[Command]
name = "QCF_y"
command = ~D, DB, B, y
time = 30

[Command]
name = "QCF_z"
command = ~D, DF, F, z
time = 30

[Command]
name = "QCF_z"
command = ~D, DB, B, z
time = 30

[Command]
name = "QCF_c"
command = ~D, DF, F,  c
time = 30

[Command]
name = "QCF_c"
command = ~D, DB, B, c
time = 30

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y
time = 30

[Command]
name = "QCF_xy"
command = ~D, DB, B, x+y
time = 30

[Command]
name = "QCF_a"
command = ~D, DF, F, a
time = 30

[Command]
name = "QCF_a"
command = ~D, DB, B, a
time = 30

[Command]
name = "QCF_b"
command = ~D, DF, F, b
time = 30

[Command]
name = "QCF_b"
command = ~D, DB, B, b
time = 30

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

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

 [Command]
name = "bx"
command = b+x
time = 1


[Command]
name = "armadura3"
command = /B, b+c
time = 1

[Command]
name = "cerca_x"
command = /F,x
time = 1

[Command]
name = "cerca_y"
command = /F,y
time = 1


[Command]
name = "cerca_z"
command = /F,z
time = 1

[Command]
name = "ayudantes"
command = a+x
time = 1

[Command]
name = "teletransportacion"
command = z+c
time = 1


[Command]
name = "torbellino"
command = ~D, DF, F, a
time = 30

[Command]
name = "torbellino"
command = ~D, DB, B, a
time = 30

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_z"
command = /$z
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

;HOLD BUTTONS 
[Command] 
name = "holda" 
command = /a 
time = 1 
[Command] 
name = "holdb" 
command = /b 
time = 1
[Command] 
name = "holdc" 
command = /c 
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
[State -1]
type = ChangeState
value = 2001
triggerall = command = "teletransportacion"
triggerall = NumProjID(2001) = 0
triggerall = StateNo != [1090, 1098]
trigger1 = statetype = S         
trigger1 = ctrl = 1   
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

[State -1, Crouching Light Punch]
type = ChangeState
value = 444
triggerall = p2bodydist x <=15
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, Jump Light Punch]
type = ChangeState
value = 604
triggerall = command = "x_aire"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7

;---------------------------------------------------------------------------

[State -1, Jump Strong Punch2]
type = ChangeState
value = 650
triggerall = command = "c_aire"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

[State -1, pu cecano]
type = ChangeState
value = 234
triggerall = p2bodydist X < 20
triggerall = command = "cerca_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, pu cecano2]
type = ChangeState
value = 214
triggerall = P2BodyDist x = [9,26]
triggerall = command = "cerca_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, pu cecano]
type = ChangeState
value = 224
triggerall = P2BodyDist x = [9,23]
triggerall = command = "cerca_z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = NumExplod(3700)!=1
triggerall = NumExplod(3300)!=1
triggerall = NumExplod(3400)!=1
triggerall = power >=1000
triggerall = command = "armadura1"
triggerall = NumExplod(3300) != 1
triggerall = NumExplod(3200) = 0
triggerall = NumExplod(3201) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
value = 3200

[State -1]
type = ChangeState
triggerall = NumExplod(3300)!=1
triggerall = NumExplod(3400)!=1
triggerall = power >=1000
triggerall = command = "armadura4"
triggerall = NumExplod(3300) != 1
triggerall = NumExplod(3200) = 0
triggerall = NumExplod(3201) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
value = 3700


[State -1]
type = ChangeState
triggerall = NumExplod(3700)!=1
triggerall = NumExplod(3400)!=1
triggerall = power >=1000
triggerall = command = "armadura2"
triggerall = NumExplod(3300) = 0
triggerall = NumExplod(3200) = 0
triggerall = NumExplod(3201) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
value = 3300

[State -1]
type = ChangeState
triggerall = NumExplod(3300)!=1
triggerall = NumExplod(3700)!=1
triggerall = power >=1000
triggerall = command = "armadura3"
triggerall = NumExplod(3300) != 1
triggerall = NumExplod(3200) = 0
triggerall = NumExplod(3201) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
value = 3400


[State -1]
type = ChangeState
triggerall = command = "ayudantes"
triggerall = NumExplod(3200) = 0
triggerall = NumExplod(3210) = 0
triggerall = NumExplod(3501) != 0
triggerall = NumHelper(3550) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
value = 3510


;===========================================================================
;---------------------------------------------------------------------------
;Kame Flojo
;カンフー突き手（弱）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = NumProjID(11)=0
triggerall = NumProjID(777)=0
triggerall = NumProjID(10)=0
triggerall = command = "QCF_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

[State -1, Light Kung Fu Palm]
type = ChangeState
value = 777
triggerall = NumProjID(11)=0
triggerall = NumProjID(10)=0
triggerall = NumProjID(777)=0
triggerall = command = "ola"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

[State -1, Light Kung Fu Palm]
type = ChangeState
value = 779
triggerall = command = "torbellino"
trigger1 = statetype != A
trigger1 = ctrl



[State -1, desmagneti]
type = ChangeState
value = 3001
triggerall = command = "ab"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kame Medio
;カンフー突き手（強）
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = NumProjID(10)=0
triggerall = NumProjID(777)=0
triggerall = NumProjID(11)=0
triggerall = command = "QCF_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
;---------------------------------------------------------------------------
;Kame Fuerte
;カンフー突き手（強）
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1015
triggerall = command = "QCF_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact

;---------------------------------------------------------------------------
;Spin roll
;カンフー突き手（強）
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 3900
triggerall = command = "QCF_c"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact


;--------------------------------------------------------------------------- 
;Taladro
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1100
triggerall = command = "xyz"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
;===========================================================================
;--------------------------------------------------------------------------- 
;Taladro por debajo
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 2700
triggerall = command = "abc"
triggerall = power >= 2000
trigger1 = statetype != A
trigger1 = ctrl 
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
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

[State -1, Kung Fu Throw]
type = ChangeState
value = 880
triggerall = command = "y"
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
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = statetype != A
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Stand High Punch
;-ｧち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 8
;---------------------------------------------------------------------------

;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Standing High Kick
;-ｧち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 8

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
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 420
triggerall = p2bodydist x >=16
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching High Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)


;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump High Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
;---------------------------------------------------------------------------
;Jump high kick
[State -1, Jump Strong Punch]
type = ChangeState
value = 634
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

