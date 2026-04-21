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

[Command]
name = "Retsu"     ;Required (do not remove)
command = ~F, B, D, F, a
time = 20

[Command]
name = "Retsu"     ;Required (do not remove)
command = ~F, B, D, F, b
time = 20

[Command]
name = "Retsu"     ;Required (do not remove)
command = ~F, B, D, F, c
time = 20


[Command]
name = "EX1"     ;Required (do not remove)
command = ~D, DF, F, a+b

[Command]
name = "EX1"     ;Required (do not remove)
command = ~D, DF, F, c


[Command]
name = "EX1"     ;Required (do not remove)
command = ~D, DF, F, D, DF, F, b
time = 20

[Command]
name = "EX1"     ;Required (do not remove)
command = ~D, DF, F, D, DF, F, a
time = 20


[Command]
name = "EX2"     ;Required (do not remove)
command = ~D, DB, B, a+b

[Command]
name = "EX2"     ;Required (do not remove)
command = ~D, DB, B, c

[Command]
name = "EX2"     ;Required (do not remove)
command = ~D, DB, B, D, DB, B, b
time = 20

[Command]
name = "EX2"     ;Required (do not remove)
command = ~D, DB, B, D, DB, B, a
time = 20

[Command]
name = "EX3"     ;Required (do not remove)
command = ~D, DB, B, x+y

[Command]
name = "EX3"     ;Required (do not remove)
command = ~D, DB, B, z

[Command]
name = "EX3"     ;Required (do not remove)
command = ~D, DB, B, D, DB, B, x
time = 20

[Command]
name = "EX3"     ;Required (do not remove)
command = ~D, DB, B, D, DB, B, y
time = 20


[Command]
name = "DPk"     ;Required (do not remove)
command = ~F, D, DF, a

[Command]
name = "DPk"     ;Required (do not remove)
command = ~F, D, DF, b
;
[Command]
name = "QCFa"     ;Required (do not remove)
command = ~D, DF, F, a

[Command]
name = "QCFb"     ;Required (do not remove)
command = ~D, DF, F, b

[Command]
name = "QCBx"     ;Required (do not remove)
command = ~D, DB, B, x

[Command]
name = "QCBy"     ;Required (do not remove)
command = ~D, DB, B, y


[Command]
name = "QCBa"     ;Required (do not remove)
command = ~D, DB, B, a

[Command]
name = "QCBb"     ;Required (do not remove)
command = ~D, DB, B, b

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
name = "bounceback"     ;Required (do not remove)
command = D, D
time = 7



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

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
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

;Kikkoken_X
[State -1]
type = ChangeState
value = 3000
triggerall = command = "Retsu"
triggerall = Statetype !=A && power >=2000
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
value = 2000
triggerall = !NumHelper(11000)
triggerall = command = "EX1"
triggerall = Statetype !=A && power >=1000
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
value = 2040
triggerall = !NumHelper(11000)
triggerall = command = "EX1"
triggerall = Statetype =A && palno = 12 && Power >= 1000
trigger1 = ctrl = 1
trigger2 = (stateno = [600,699]) || stateno = 220
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
value = 2030
triggerall = command = "EX3"
triggerall = Statetype !=A && power >=1000 && palno = 12
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact
trigger3 = stateno = 241


;Kikkoken_X
[State -1]
type = VarSet
var(0) = 1
triggerall = command = "EX1"
triggerall = power >=1000
trigger1 = stateno = 240 && time > 12



;Kikkoken_X
[State -1]
type = ChangeState
value = 2010
triggerall = command = "EX2"
triggerall = Statetype !=A && power >=1000
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact
trigger3 = stateno = 241

;Kikkoken_X
[State -1]
type = VarSet
var(0) = 2
triggerall = command = "EX2"
triggerall = power >=1000
trigger1 = stateno = 240 && time > 12

;Kikkoken_X
[State -1]
type = VarSet
var(0) = 7
triggerall = command = "EX3" && palno = 12
triggerall = power >=1000
trigger1 = stateno = 240 && time > 12


;Kikkoken_X
[State -1]
type = ChangeState
value = 1020
triggerall = p2bodydist X < 15
triggerall = command = "DPk"
triggerall = Statetype !=A
trigger1 = ctrl = 1


;Kikkoken_X
[State -1]
type = ChangeState
value = 1000
triggerall = !NumHelper(11000)
triggerall = command = "QCFa"
triggerall = Statetype !=A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) || (stateno = [600,699]) 
trigger2 = movecontact
trigger3 = stateno = 241

;Kikkoken_X
[State -1]
type = ChangeState
value = 1040
triggerall = !NumHelper(11000)
triggerall = command = "QCFa"
triggerall = Statetype =A && palno = 12
trigger1 = ctrl = 1
trigger2 = (stateno = [600,699]) || stateno = 220
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = VarSet
var(0) = 3
triggerall = command = "QCFa" && command != "EX1"
trigger1 = stateno = 240 && time > 12

;Kikkoken_X
[State -1]
type = ChangeState
value = 1041
triggerall = !NumHelper(11000)
triggerall = command = "QCFb"
triggerall = Statetype =A && palno = 12
trigger1 = ctrl = 1
trigger2 = (stateno = [600,699]) || stateno = 220
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = ChangeState
value = 1001
triggerall = !NumHelper(11000)
triggerall = command = "QCFb"
triggerall = Statetype !=A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact
trigger3 = stateno = 241

;Kikkoken_X
[State -1]
type = VarSet
var(0) = 4
triggerall = command = "QCFb" && command != "EX1"
trigger1 = stateno = 240 && time > 12

;Kikkoken_X
[State -1]
type = ChangeState
value = 1010
triggerall = command = "QCBa" 
triggerall = Statetype !=A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact

;Kikkoken_X
[State -1]
type = VarSet
var(0) = 5
triggerall = command = "QCBa" && command != "EX2"
trigger1 = stateno = 240 && time > 12

;Kikkoken_X
[State -1]
type = ChangeState
value = 1012
triggerall = command = "QCBb" 
triggerall = Statetype !=A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact
 
;Kikkoken_X
[State -1]
type = ChangeState
value = 1030
triggerall = palno =12
triggerall = command = "QCBx" 
triggerall = Statetype !=A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact


;Kikkoken_X
[State -1]
type = ChangeState
value = 1033
triggerall = palno =12
triggerall = command = "QCBy" 
triggerall = Statetype !=A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499]) 
trigger2 = movecontact


;Kikkoken_X
[State -1]
type = VarSet
var(0) = 6
triggerall = command = "QCBb" && command != "EX2"
trigger1 = stateno = 240 && time > 12

;Kikkoken_X
[State -1]
type = VarSet
var(0) = 8
triggerall = palno =12
triggerall = command = "QCBx" && command != "EX3"
trigger1 = stateno = 240 && time > 12

;Kikkoken_X
[State -1]
type = VarSet
var(0) = 9
triggerall = palno =12
triggerall = command = "QCBy" && command != "EX3"
trigger1 = stateno = 240 && time > 12

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = stateno !=100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = stateno !=100
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 5100
trigger2 = Command = "bounceback"
trigger2 = (Time >= 1) && (Alive = 1)
trigger2 = PrevStateNo = 5050



;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
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

;Counter Strike A
[State -1, Counter]
type = ChangeState
value = 200
triggerall = (command = "down_x") && (power >= 333)
trigger1 = stateno = [150,153]

;Counter Strike B
[State -1, Counter]
type = ChangeState
value = 220
triggerall = (command = "down_a") && (power >= 333)
trigger1 = stateno = [150,153]

;Counter Strike C
[State -1, Counter]
type = ChangeState
value = 1000
triggerall = (command = "down_y") && (power >= 333)
trigger1 = stateno = [150,153]

;Counter Strike D
[State -1, Counter]
type = ChangeState
value = 1010
triggerall = (command = "down_b") && (power >= 333)
trigger1 = stateno = [150,153]


;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = stateno !=100
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown" && command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 4
trigger3 = (stateno = 230) && time > 8

;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "y" && command = "holdfwd"
triggerall = command != "holddown" 
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 241) 
trigger3 = (stateno = 400) && time > 4

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = stateno !=100
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 4


;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = stateno !=100
triggerall = command = "b"
triggerall = command != "holddown" && command != "holdfwd" && command !="holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 4
trigger3 = (stateno = 210) && time > 12
trigger4 = (stateno = 230) && time > 8

;Standing Strong Kick
;-ｧち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = stateno !=100
triggerall = command = "b" && command = "holdback"
triggerall = command != "holddown"  
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 241) 
trigger3 = (stateno = 400) && time > 4


;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 255
triggerall = stateno !=100
triggerall = command = "b" && command = "holdfwd"
triggerall = command != "holddown"  
trigger1 = statetype = S
trigger1 = ctrl


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
trigger2 = (stateno = 430)
trigger2 = (time > 9) 

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
trigger2 = (stateno = 400) 
trigger2 = (time > 4) 

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

;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl


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
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 
trigger2 = movecontact

;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 
trigger2 = movecontact
;-------------------
;MEE Template Files
;   provided by
;  Kitsune Sniper
;       ***
; Thanks, Kitsune!
;-------------------
