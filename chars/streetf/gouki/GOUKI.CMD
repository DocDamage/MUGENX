; The CMD file. Written by V.K 1999
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

;-| Super Motions |--------------------------------------------------------

; SHUNGOKUSATSU
[Command]
name = "shungoku"
command = x, x, F, a, z
time = 35

; SHIN SHUNGOKUSATSU
[Command]
name = "sshinshun"
command = x, x, F, a, c
time = 35

; SHIN SHUNGOKUSATSU
;[Command]
;name = "sshinshun"
;command =  ~D, DB, B, x+y
;time = 35

; MESSATSU GOU SHO RYU
[Command]
name = "QCF2_x"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "QCF2_y"
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "QCF2_z"
command = ~D, DF, F, D, DF, F, z
time = 20

; MESSATSU GOU SHINKUU HA
[Command]
name = "QCB2_x"
command = ~D, DB, B, D, DB, B, x
time = 22

[Command]
name = "QCB2_y"
command = ~D, DB, B, D, DB, B, y
time = 22

[Command]
name = "QCB2_z"
command = ~D, DB, B, D, DB, B, z
time = 22

; MESSATSU GOU RASSEN
[Command]
name = "QCB2_a"
command = ~D, DB, B, D, DB, B, a
time = 22

[Command]
name = "QCB2_b"
command = ~D, DB, B, D, DB, B, b
time = 22

[Command]
name = "QCB2_c"
command = ~D, DB, B, D, DB, B, c
time = 22

;-| Special Motions |------------------------------------------------------
;-----------------
; Asura Senkuu Forward
[Command]
name = "asuraf_a"
command = ~F, D, DF, a+b

[Command]
name = "asuraf_b"
command = ~F, D, DF, b+c

[Command]
name = "asuraf_c"
command = ~F, D, DF, a+c

[Command]
name = "asuraf_x"
command = ~F, D, DF, x+y

[Command]
name = "asuraf_y"
command = ~F, D, DF, y+z

[Command]
name = "asuraf_z"
command = ~F, D, DF, x+z

;-----------------
; Asura Senkuu Backward
[Command]
name = "asurab_a"
command = ~B, D, DB, a+b

[Command]
name = "asurab_b"
command = ~B, D, DB, b+c

[Command]
name = "asurab_c"
command = ~B, D, DB, a+c

[Command]
name = "asurab_x"
command = ~B, D, DB, x+y

[Command]
name = "asurab_y"
command = ~B, D, DB, y+z

[Command]
name = "asurab_z"
command = ~B, D, DB, x+z

;-----------------
; QCF
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
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

;-----------------
; QCB
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
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

;-----------------
; QCD
[Command]
name = "QCD_a"
command = ~B, DB, D, a

[Command]
name = "QCD_b"
command = ~B, DB, D, b

[Command]
name = "QCD_c"
command = ~B, DB, D, c

[Command]
name = "QCD_x"
command = ~B, DB, D, x

[Command]
name = "QCD_y"
command = ~B, DB, D, y

[Command]
name = "QCD_z"
command = ~B, DB, D, z

;-----------------
; Hyakki Shuu
[Command]
name = "hyak_a"
command = ~F, D, DF, a

[Command]
name = "hyak_b"
command = ~F, D, DF, b

[Command]
name = "hyak_c"
command = ~F, D, DF, c

;-----------------
; Uppercut
[Command]
name = "uppercut_a"
command = ~F, D, DF, a

[Command]
name = "uppercut_b"
command = ~F, D, DF, b

[Command]
name = "uppercut_c"
command = ~F, D, DF, c

[Command]
name = "uppercut_x"
command = ~F, D, DF, x

[Command]
name = "uppercut_y"
command = ~F, D, DF, y

[Command]
name = "uppercut_z"
command = ~F, D, DF, z

;--------------------
;Charge_Down_up
[Command]
name = "chargedownup_a"
command = ~60$D, U, a
time = 10

[Command]
name = "chargedownup_b"
command = ~60$D, U, b
time = 10

[Command]
name = "chargedownup_c"
command = ~60$D, U, c
time = 10

[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10

;--------------------
;Charge_Back_fwd
[Command]
name = "chargebackfwd_a"
command = ~60$B, F, a
time = 10

[Command]
name = "chargebackfwd_b"
command = ~60$B, F, b
time = 10

[Command]
name = "chargedownup_c"
command = ~60$D, U, c
time = 10

[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10

;--------------------
; Shakunetsu Hadoken
[Command]
name = "HCB_x"
command = ~F, DF, D, DB, B, x

[Command]
name = "HCB_y"
command = ~F, DF, D, DB, B, y

[Command]
name = "HCB_z"
command = ~F, DF, D, DB, B, z

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"       ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"       ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "ff_a"
command = F, F, a
time = 15

[Command]
name = "ff_b"
command = F, F, b
time = 15

[Command]
name = "ff_c"
command = F, F, c
time = 15

[Command]
name = "ff_x"
command = F, F, x
time = 15

[Command]
name = "ff_y"
command = F, F, y
time = 15

[Command]
name = "ff_z"
command = F, F, z
time = 15
 
;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "xz"
command = x+z
time = 1

[Command]
name = "yz"
command = y+z
time = 1

[Command]
name = "ac"
command = a+c
time = 1

[Command]
name = "bc"
command = b+c
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
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
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
name = "hold_z""
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
; Shin Shun Goku Satsu (Level 3)
[State -1]
type = ChangeState
value = 4950
triggerall = command = "sshinshun"
triggerall = power >= 3000 ;Level 3
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno = 201
trigger4 = stateno = 202
trigger5 = stateno = 203
trigger6 = stateno = 204
trigger7 = stateno = 205
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = stateno = 301
trigger17 = stateno = 302
trigger18 = stateno = 304
trigger19 = stateno = 305
trigger20 = stateno = 306
trigger21 = stateno = 500
trigger22 = stateno = 550
trigger23 = movecontact
trigger23 = stateno = 1100
trigger24 = movecontact
trigger24 = stateno = 1110
trigger25 = movecontact
trigger25 = stateno = 1120
trigger26 = movecontact
trigger26 = stateno = 1050
trigger27 = movecontact
trigger27 = stateno = 1060
trigger28 = movecontact
trigger28 = stateno = 1070
trigger29 = projcontact = 1
trigger29 = stateno = 3000
trigger30 = projcontact = 1
trigger30 = stateno = 3010
trigger31 = projcontact = 1
trigger31 = stateno = 3020
trigger32 = projcontact = 1
trigger32 = stateno = 1010
trigger33 = projcontact = 1
trigger33 = stateno = 1011
trigger34 = projcontact = 1
trigger34 = stateno = 1012
trigger35 = projcontact = 1
trigger35 = stateno = 1000
trigger36 = projcontact = 1
trigger36 = stateno = 1001
trigger37 = projcontact = 1
trigger37 = stateno = 1002
trigger38 = movecontact
trigger38 = stateno = 900
trigger39 = movecontact
trigger39 = stateno = 910
trigger40 = movecontact
trigger40 = stateno = 920
trigger41 = movecontact
trigger41 = stateno = 945
trigger42 = stateno = 100
trigger43 = stateno = 950
trigger44 = stateno = 951
trigger45 = stateno = 952

;---------------------------------------------------------------------------
; Shun Goku Satsu (Level 1)
[State -1]
type = ChangeState
value = 4900
triggerall = command = "shungoku"
triggerall = power >= 1000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno = 201
trigger4 = stateno = 202
trigger5 = stateno = 203
trigger6 = stateno = 204
trigger7 = stateno = 205
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = stateno = 301
trigger17 = stateno = 302
trigger18 = stateno = 304
trigger19 = stateno = 305
trigger20 = stateno = 306
trigger21 = stateno = 500
trigger22 = stateno = 550
trigger23 = movecontact
trigger23 = stateno = 1100
trigger24 = movecontact
trigger24 = stateno = 1110
trigger25 = movecontact
trigger25 = stateno = 1120
trigger26 = movecontact
trigger26 = stateno = 1050
trigger27 = movecontact
trigger27 = stateno = 1060
trigger28 = movecontact
trigger28 = stateno = 1070
trigger29 = movecontact
trigger29 = stateno = 3000
trigger30 = movecontact
trigger30 = stateno = 3010
trigger31 = movecontact
trigger31 = stateno = 3020
trigger32 = projcontact = 1
trigger32 = stateno = 1010
trigger33 = projcontact = 1
trigger33 = stateno = 1011
trigger34 = projcontact = 1
trigger34 = stateno = 1012
trigger35 = projcontact = 1
trigger35 = stateno = 1000
trigger36 = projcontact = 1
trigger36 = stateno = 1001
trigger37 = projcontact = 1
trigger37 = stateno = 1002
trigger38 = movecontact
trigger38 = stateno = 900
trigger39 = movecontact
trigger39 = stateno = 910
trigger40 = movecontact
trigger40 = stateno = 920
trigger41 = movecontact
trigger41 = stateno = 945
trigger42 = stateno = 100
trigger43 = stateno = 950
trigger44 = stateno = 951
trigger45 = stateno = 952

;===========================================================================
;---------------------------------------------------------------------------
; Tenma Gou Zankuu X
[State -1]
type = ChangeState
value = 2500
triggerall = command = "QCF2_x"
triggerall = power >= 1000 ;Level 1
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 601
trigger4 = movecontact
trigger4 = stateno = 602
trigger5 = movecontact
trigger5 = stateno = 604
trigger6 = movecontact
trigger6 = stateno = 605
trigger7 = movecontact
trigger7 = stateno = 606
trigger8 = movecontact
trigger8 = stateno = 704
trigger9 = movecontact
trigger9 = stateno = 705
trigger10 = stateno = 1350
trigger10 = time >= 39
trigger11 = stateno = 1360
trigger11 = time >= 39
trigger12 = stateno = 1370
trigger12 = time >= 39
trigger13 = stateno = 2500
trigger13 = time >= 131
trigger14 = stateno = 2600
trigger14 = time >= 131
trigger15 = stateno = 2700
trigger15 = time >= 131
trigger16 = movecontact
trigger16 = stateno = 706
trigger17 = stateno = 550
trigger18 = stateno = 800
trigger19 = movecontact
trigger19 = stateno = 850
trigger20 = movecontact
trigger20 = stateno = 3030
trigger21 = movecontact
trigger21 = stateno = 3040
trigger22 = movecontact
trigger22 = stateno = 3050
trigger23 = projcontact = 1
trigger23 = stateno = 1350
trigger24 = projcontact = 1
trigger24 = stateno = 1360
trigger25 = projcontact = 1
trigger25 = stateno = 1370
trigger26 = projcontact = 1
trigger26 = stateno = 1300
trigger27 = projcontact = 1
trigger27 = stateno = 1301
trigger28 = projcontact = 1
trigger28 = stateno = 1302
trigger29 = movecontact
trigger29 = stateno = 3520

;---------------------------------------------------------------------------
; Tenma Gou Zankuu X (Y)
[State -1]
type = ChangeState
value = 2500
triggerall = command = "QCF2_y"
triggerall = power < 2000 ;Level 1
triggerall = power >= 1000 ;Level 1
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 601
trigger4 = movecontact
trigger4 = stateno = 602
trigger5 = movecontact
trigger5 = stateno = 604
trigger6 = movecontact
trigger6 = stateno = 605
trigger7 = movecontact
trigger7 = stateno = 606
trigger8 = movecontact
trigger8 = stateno = 704
trigger9 = movecontact
trigger9 = stateno = 705
trigger10 = stateno = 1350
trigger10 = time >= 39
trigger11 = stateno = 1360
trigger11 = time >= 39
trigger12 = stateno = 1370
trigger12 = time >= 39
trigger13 = stateno = 2500
trigger13 = time >= 131
trigger14 = stateno = 2600
trigger14 = time >= 131
trigger15 = stateno = 2700
trigger15 = time >= 131
trigger16 = movecontact
trigger16 = stateno = 706
trigger17 = stateno = 550
trigger18 = stateno = 800
trigger19 = movecontact
trigger19 = stateno = 850
trigger20 = movecontact
trigger20 = stateno = 3030
trigger21 = movecontact
trigger21 = stateno = 3040
trigger22 = movecontact
trigger22 = stateno = 3050
trigger23 = projcontact = 1
trigger23 = stateno = 1350
trigger24 = projcontact = 1
trigger24 = stateno = 1360
trigger25 = projcontact = 1
trigger25 = stateno = 1370
trigger26 = projcontact = 1
trigger26 = stateno = 1300
trigger27 = projcontact = 1
trigger27 = stateno = 1301
trigger28 = projcontact = 1
trigger28 = stateno = 1302
trigger29 = movecontact
trigger29 = stateno = 3520

;---------------------------------------------------------------------------
; Tenma Gou Zankuu X (Z)
[State -1]
type = ChangeState
value = 2500
triggerall = command = "QCF2_z"
triggerall = power < 2000 ;Level 1
triggerall = power >= 1000 ;Level 1
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 601
trigger4 = movecontact
trigger4 = stateno = 602
trigger5 = movecontact
trigger5 = stateno = 604
trigger6 = movecontact
trigger6 = stateno = 605
trigger7 = movecontact
trigger7 = stateno = 606
trigger8 = movecontact
trigger8 = stateno = 704
trigger9 = movecontact
trigger9 = stateno = 705
trigger10 = stateno = 1350
trigger10 = time >= 39
trigger11 = stateno = 1360
trigger11 = time >= 39
trigger12 = stateno = 1370
trigger12 = time >= 39
trigger13 = stateno = 2500
trigger13 = time >= 131
trigger14 = stateno = 2600
trigger14 = time >= 131
trigger15 = stateno = 2700
trigger15 = time >= 131
trigger16 = movecontact
trigger16 = stateno = 706
trigger17 = stateno = 550
trigger18 = stateno = 800
trigger19 = movecontact
trigger19 = stateno = 850
trigger20 = movecontact
trigger20 = stateno = 3030
trigger21 = movecontact
trigger21 = stateno = 3040
trigger22 = movecontact
trigger22 = stateno = 3050
trigger23 = projcontact = 1
trigger23 = stateno = 1350
trigger24 = projcontact = 1
trigger24 = stateno = 1360
trigger25 = projcontact = 1
trigger25 = stateno = 1370
trigger26 = projcontact = 1
trigger26 = stateno = 1300
trigger27 = projcontact = 1
trigger27 = stateno = 1301
trigger28 = projcontact = 1
trigger28 = stateno = 1302
trigger29 = movecontact
trigger29 = stateno = 3520

;---------------------------------------------------------------------------
; Tenma Gou Zankuu Y
[State -1]
type = ChangeState
value = 2600
triggerall = command = "QCF2_y"
triggerall = power >= 2000 ;Level 2
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 601
trigger4 = movecontact
trigger4 = stateno = 602
trigger5 = movecontact
trigger5 = stateno = 604
trigger6 = movecontact
trigger6 = stateno = 605
trigger7 = movecontact
trigger7 = stateno = 606
trigger8 = movecontact
trigger8 = stateno = 704
trigger9 = movecontact
trigger9 = stateno = 705
trigger10 = stateno = 1350
trigger10 = time >= 39
trigger11 = stateno = 1360
trigger11 = time >= 39
trigger12 = stateno = 1370
trigger12 = time >= 39
trigger13 = stateno = 2500
trigger13 = time >= 131
trigger14 = stateno = 2600
trigger14 = time >= 131
trigger15 = stateno = 2700
trigger15 = time >= 131
trigger16 = movecontact
trigger16 = stateno = 706
trigger17 = stateno = 550
trigger18 = stateno = 800
trigger19 = movecontact
trigger19 = stateno = 850
trigger20 = movecontact
trigger20 = stateno = 3030
trigger21 = movecontact
trigger21 = stateno = 3040
trigger22 = movecontact
trigger22 = stateno = 3050
trigger23 = projcontact = 1
trigger23 = stateno = 1350
trigger24 = projcontact = 1
trigger24 = stateno = 1360
trigger25 = projcontact = 1
trigger25 = stateno = 1370
trigger26 = projcontact = 1
trigger26 = stateno = 1300
trigger27 = projcontact = 1
trigger27 = stateno = 1301
trigger28 = projcontact = 1
trigger28 = stateno = 1302
trigger29 = movecontact
trigger29 = stateno = 3520

;---------------------------------------------------------------------------
; Tenma Gou Zankuu Y (Z)
[State -1]
type = ChangeState
value = 2600
triggerall = command = "QCF2_z"
triggerall = power < 3000 ;Level 2
triggerall = power >= 2000 ;Level 2
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 601
trigger4 = movecontact
trigger4 = stateno = 602
trigger5 = movecontact
trigger5 = stateno = 604
trigger6 = movecontact
trigger6 = stateno = 605
trigger7 = movecontact
trigger7 = stateno = 606
trigger8 = movecontact
trigger8 = stateno = 704
trigger9 = movecontact
trigger9 = stateno = 705
trigger10 = stateno = 1350
trigger10 = time >= 39
trigger11 = stateno = 1360
trigger11 = time >= 39
trigger12 = stateno = 1370
trigger12 = time >= 39
trigger13 = stateno = 2500
trigger13 = time >= 131
trigger14 = stateno = 2600
trigger14 = time >= 131
trigger15 = stateno = 2700
trigger15 = time >= 131
trigger16 = movecontact
trigger16 = stateno = 706
trigger17 = stateno = 550
trigger18 = stateno = 800
trigger19 = movecontact
trigger19 = stateno = 850
trigger20 = movecontact
trigger20 = stateno = 3030
trigger21 = movecontact
trigger21 = stateno = 3040
trigger22 = movecontact
trigger22 = stateno = 3050
trigger23 = projcontact = 1
trigger23 = stateno = 1350
trigger24 = projcontact = 1
trigger24 = stateno = 1360
trigger25 = projcontact = 1
trigger25 = stateno = 1370
trigger26 = projcontact = 1
trigger26 = stateno = 1300
trigger27 = projcontact = 1
trigger27 = stateno = 1301
trigger28 = projcontact = 1
trigger28 = stateno = 1302
trigger29 = movecontact
trigger29 = stateno = 3520

;---------------------------------------------------------------------------
; Tenma Gou Zankuu Z
[State -1]
type = ChangeState
value = 2700
triggerall = command = "QCF2_z"
triggerall = power >= 3000 ;Level 3
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 601
trigger4 = movecontact
trigger4 = stateno = 602
trigger5 = movecontact
trigger5 = stateno = 604
trigger6 = movecontact
trigger6 = stateno = 605
trigger7 = movecontact
trigger7 = stateno = 606
trigger8 = movecontact
trigger8 = stateno = 704
trigger9 = movecontact
trigger9 = stateno = 705
trigger10 = stateno = 1350
trigger10 = time >= 39
trigger11 = stateno = 1360
trigger11 = time >= 39
trigger12 = stateno = 1370
trigger12 = time >= 39
trigger13 = stateno = 2500
trigger13 = time >= 131
trigger14 = stateno = 2600
trigger14 = time >= 131
trigger15 = stateno = 2700
trigger15 = time >= 131
trigger16 = movecontact
trigger16 = stateno = 706
trigger17 = stateno = 550
trigger18 = stateno = 800
trigger19 = movecontact
trigger19 = stateno = 850
trigger20 = movecontact
trigger20 = stateno = 3030
trigger21 = movecontact
trigger21 = stateno = 3040
trigger22 = movecontact
trigger22 = stateno = 3050
trigger23 = projcontact = 1
trigger23 = stateno = 1350
trigger24 = projcontact = 1
trigger24 = stateno = 1360
trigger25 = projcontact = 1
trigger25 = stateno = 1370
trigger26 = projcontact = 1
trigger26 = stateno = 1300
trigger27 = projcontact = 1
trigger27 = stateno = 1301
trigger28 = projcontact = 1
trigger28 = stateno = 1302
trigger29 = movecontact
trigger29 = stateno = 3520

;===========================================================================
;---------------------------------------------------------------------------
; Messatsu Gou Shinkuu Ha X
[State -1]
type = ChangeState
value = 2000
triggerall = command = "QCB2_x"
triggerall = power >= 1000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550
trigger25 = movecontact
trigger25 = stateno = 1100
trigger26 = movecontact
trigger26 = stateno = 1110
trigger27 = movecontact
trigger27 = stateno = 1120
trigger28 = movecontact
trigger28 = stateno = 1050
trigger29 = movecontact
trigger29 = stateno = 1060
trigger30 = movecontact
trigger30 = stateno = 1070
trigger31 = projcontact = 1
trigger31 = stateno = 3000
trigger32 = projcontact = 1
trigger32 = stateno = 3010
trigger33 = projcontact = 1
trigger33 = stateno = 3020
trigger34 = projcontact = 1
trigger34 = stateno = 1010
trigger35 = projcontact = 1
trigger35 = stateno = 1011
trigger36 = projcontact = 1
trigger36 = stateno = 1012
trigger37 = projcontact = 1
trigger37 = stateno = 1000
trigger38 = projcontact = 1
trigger38 = stateno = 1001
trigger39 = projcontact = 1
trigger39 = stateno = 1002
trigger40 = movecontact
trigger40 = stateno = 900
trigger41 = movecontact
trigger41 = stateno = 910
trigger42 = movecontact
trigger42 = stateno = 920
trigger43 = movecontact
trigger43 = stateno = 945
trigger44 = stateno = 950
trigger45 = stateno = 951
trigger46 = stateno = 952

;---------------------------------------------------------------------------
; Messatsu Gou Shinkuu Ha X (Y)
[State -1]
type = ChangeState
value = 2000
triggerall = command = "QCB2_y"
triggerall = power < 2000 ;Level 1
triggerall = power >= 1000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550
trigger25 = movecontact
trigger25 = stateno = 1100
trigger26 = movecontact
trigger26 = stateno = 1110
trigger27 = movecontact
trigger27 = stateno = 1120
trigger28 = movecontact
trigger28 = stateno = 1050
trigger29 = movecontact
trigger29 = stateno = 1060
trigger30 = movecontact
trigger30 = stateno = 1070
trigger31 = projcontact = 1
trigger31 = stateno = 3000
trigger32 = projcontact = 1
trigger32 = stateno = 3010
trigger33 = projcontact = 1
trigger33 = stateno = 3020
trigger34 = projcontact = 1
trigger34 = stateno = 1010
trigger35 = projcontact = 1
trigger35 = stateno = 1011
trigger36 = projcontact = 1
trigger36 = stateno = 1012
trigger37 = projcontact = 1
trigger37 = stateno = 1000
trigger38 = projcontact = 1
trigger38 = stateno = 1001
trigger39 = projcontact = 1
trigger39 = stateno = 1002
trigger40 = movecontact
trigger40 = stateno = 900
trigger41 = movecontact
trigger41 = stateno = 910
trigger42 = movecontact
trigger42 = stateno = 920
trigger43 = movecontact
trigger43 = stateno = 945
trigger44 = stateno = 950
trigger45 = stateno = 951
trigger46 = stateno = 952

;---------------------------------------------------------------------------
; Messatsu Gou Shinkuu Ha X (Z)
[State -1]
type = ChangeState
value = 2000
triggerall = command = "QCB2_z"
triggerall = power < 2000 ;Level 1
triggerall = power >= 1000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550
trigger25 = movecontact
trigger25 = stateno = 1100
trigger26 = movecontact
trigger26 = stateno = 1110
trigger27 = movecontact
trigger27 = stateno = 1120
trigger28 = movecontact
trigger28 = stateno = 1050
trigger29 = movecontact
trigger29 = stateno = 1060
trigger30 = movecontact
trigger30 = stateno = 1070
trigger31 = projcontact = 1
trigger31 = stateno = 3000
trigger32 = projcontact = 1
trigger32 = stateno = 3010
trigger33 = projcontact = 1
trigger33 = stateno = 3020
trigger34 = projcontact = 1
trigger34 = stateno = 1010
trigger35 = projcontact = 1
trigger35 = stateno = 1011
trigger36 = projcontact = 1
trigger36 = stateno = 1012
trigger37 = projcontact = 1
trigger37 = stateno = 1000
trigger38 = projcontact = 1
trigger38 = stateno = 1001
trigger39 = projcontact = 1
trigger39 = stateno = 1002
trigger40 = movecontact
trigger40 = stateno = 900
trigger41 = movecontact
trigger41 = stateno = 910
trigger42 = movecontact
trigger42 = stateno = 920
trigger43 = movecontact
trigger43 = stateno = 945
trigger44 = stateno = 950
trigger45 = stateno = 951
trigger46 = stateno = 952

;---------------------------------------------------------------------------
; Messatsu Gou Shinkuu Ha Y
[State -1]
type = ChangeState
value = 2010
triggerall = command = "QCB2_y"
triggerall = power >= 2000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550
trigger25 = movecontact
trigger25 = stateno = 1100
trigger26 = movecontact
trigger26 = stateno = 1110
trigger27 = movecontact
trigger27 = stateno = 1120
trigger28 = movecontact
trigger28 = stateno = 1050
trigger29 = movecontact
trigger29 = stateno = 1060
trigger30 = movecontact
trigger30 = stateno = 1070
trigger31 = projcontact = 1
trigger31 = stateno = 3000
trigger32 = projcontact = 1
trigger32 = stateno = 3010
trigger33 = projcontact = 1
trigger33 = stateno = 3020
trigger34 = projcontact = 1
trigger34 = stateno = 1010
trigger35 = projcontact = 1
trigger35 = stateno = 1011
trigger36 = projcontact = 1
trigger36 = stateno = 1012
trigger37 = projcontact = 1
trigger37 = stateno = 1000
trigger38 = projcontact = 1
trigger38 = stateno = 1001
trigger39 = projcontact = 1
trigger39 = stateno = 1002
trigger40 = movecontact
trigger40 = stateno = 900
trigger41 = movecontact
trigger41 = stateno = 910
trigger42 = movecontact
trigger42 = stateno = 920
trigger43 = movecontact
trigger43 = stateno = 945
trigger44 = stateno = 950
trigger45 = stateno = 951
trigger46 = stateno = 952

;---------------------------------------------------------------------------
; Messatsu Gou Shinkuu Ha Y (Z)
[State -1]
type = ChangeState
value = 2010
triggerall = command = "QCB2_z"
triggerall = power < 3000 ;Level 3
triggerall = power >= 2000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550
trigger25 = movecontact
trigger25 = stateno = 1100
trigger26 = movecontact
trigger26 = stateno = 1110
trigger27 = movecontact
trigger27 = stateno = 1120
trigger28 = movecontact
trigger28 = stateno = 1050
trigger29 = movecontact
trigger29 = stateno = 1060
trigger30 = movecontact
trigger30 = stateno = 1070
trigger31 = projcontact = 1
trigger31 = stateno = 3000
trigger32 = projcontact = 1
trigger32 = stateno = 3010
trigger33 = projcontact = 1
trigger33 = stateno = 3020
trigger34 = projcontact = 1
trigger34 = stateno = 1010
trigger35 = projcontact = 1
trigger35 = stateno = 1011
trigger36 = projcontact = 1
trigger36 = stateno = 1012
trigger37 = projcontact = 1
trigger37 = stateno = 1000
trigger38 = projcontact = 1
trigger38 = stateno = 1001
trigger39 = projcontact = 1
trigger39 = stateno = 1002
trigger40 = movecontact
trigger40 = stateno = 900
trigger41 = movecontact
trigger41 = stateno = 910
trigger42 = movecontact
trigger42 = stateno = 920
trigger43 = movecontact
trigger43 = stateno = 945
trigger44 = stateno = 950
trigger45 = stateno = 951
trigger46 = stateno = 952

;---------------------------------------------------------------------------
; Messatsu Gou Shinkuu Ha Z
[State -1]
type = ChangeState
value = 2020
triggerall = command = "QCB2_z"
triggerall = power >= 3000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550
trigger25 = movecontact
trigger25 = stateno = 1100
trigger26 = movecontact
trigger26 = stateno = 1110
trigger27 = movecontact
trigger27 = stateno = 1120
trigger28 = movecontact
trigger28 = stateno = 1050
trigger29 = movecontact
trigger29 = stateno = 1060
trigger30 = movecontact
trigger30 = stateno = 1070
trigger31 = projcontact = 1
trigger31 = stateno = 3000
trigger32 = projcontact = 1
trigger32 = stateno = 3010
trigger33 = projcontact = 1
trigger33 = stateno = 3020
trigger34 = projcontact = 1
trigger34 = stateno = 1010
trigger35 = projcontact = 1
trigger35 = stateno = 1011
trigger36 = projcontact = 1
trigger36 = stateno = 1012
trigger37 = projcontact = 1
trigger37 = stateno = 1000
trigger38 = projcontact = 1
trigger38 = stateno = 1001
trigger39 = projcontact = 1
trigger39 = stateno = 1002
trigger40 = movecontact
trigger40 = stateno = 900
trigger41 = movecontact
trigger41 = stateno = 910
trigger42 = movecontact
trigger42 = stateno = 920
trigger43 = movecontact
trigger43 = stateno = 945
trigger44 = stateno = 950
trigger45 = stateno = 951
trigger46 = stateno = 952

;===========================================================================
;---------------------------------------------------------------------------
; Asura Senkuu Forward X
[State -1]
type = ChangeState
value = 960
triggerall = command = "asuraf_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 100
trigger4 = stateno = 950
trigger5 = stateno = 951
trigger6 = stateno = 952

;---------------------------------------------------------------------------
; Asura Senkuu Forward Y
[State -1]
type = ChangeState
value = 960
triggerall = command = "asuraf_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 100
trigger4 = stateno = 950
trigger5 = stateno = 951
trigger6 = stateno = 952

;---------------------------------------------------------------------------
; Asura Senkuu Forward Z
[State -1]
type = ChangeState
value = 960
triggerall = command = "asuraf_z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 100
trigger4 = stateno = 950
trigger5 = stateno = 951
trigger6 = stateno = 952

;---------------------------------------------------------------------------
; Asura Senkuu Forward A
[State -1]
type = ChangeState
value = 970
triggerall = command = "asuraf_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 100
trigger4 = stateno = 950
trigger5 = stateno = 951
trigger6 = stateno = 952

;---------------------------------------------------------------------------
; Asura Senkuu Forward B
[State -1]
type = ChangeState
value = 970
triggerall = command = "asuraf_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 100
trigger4 = stateno = 950
trigger5 = stateno = 951
trigger6 = stateno = 952

;---------------------------------------------------------------------------
; Asura Senkuu Forward C
[State -1]
type = ChangeState
value = 970
triggerall = command = "asuraf_c"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 100
trigger4 = stateno = 950
trigger5 = stateno = 951
trigger6 = stateno = 952

;===========================================================================
;---------------------------------------------------------------------------
; Asura Senkuu Backward X
[State -1]
type = ChangeState
value = 980
triggerall = command = "asurab_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 100

;---------------------------------------------------------------------------
; Asura Senkuu Backward Y
[State -1]
type = ChangeState
value = 980
triggerall = command = "asurab_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 100

;---------------------------------------------------------------------------
; Asura Senkuu Backward Z
[State -1]
type = ChangeState
value = 980
triggerall = command = "asurab_z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 100

;---------------------------------------------------------------------------
; Asura Senkuu Backward A
[State -1]
type = ChangeState
value = 990
triggerall = command = "asurab_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 100

;---------------------------------------------------------------------------
; Asura Senkuu Backward B
[State -1]
type = ChangeState
value = 990
triggerall = command = "asurab_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 100

;---------------------------------------------------------------------------
; Asura Senkuu Backward C
[State -1]
type = ChangeState
value = 990
triggerall = command = "asurab_c"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = statetype = C
trigger2 = ctrl = 1
trigger3 = stateno = 100

;===========================================================================
;---------------------------------------------------------------------------
; Messatsu Gou Rassen A
[State -1]
type = ChangeState
value = 4500
triggerall = command = "QCB2_a"
triggerall = power >= 1000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = projcontact = 1
trigger24 = stateno = 550
trigger25 = movecontact
trigger25 = stateno = 1100
trigger26 = movecontact
trigger26 = stateno = 1110
trigger27 = movecontact
trigger27 = stateno = 1120
trigger28 = movecontact
trigger28 = stateno = 1050
trigger29 = movecontact
trigger29 = stateno = 1060
trigger30 = movecontact
trigger30 = stateno = 1070
trigger31 = projcontact = 1
trigger31 = stateno = 3000
trigger32 = projcontact = 1
trigger32 = stateno = 3010
trigger33 = projcontact = 1
trigger33 = stateno = 3020
trigger34 = projcontact = 1
trigger34 = stateno = 1010
trigger35 = projcontact = 1
trigger35 = stateno = 1011
trigger36 = projcontact = 1
trigger36 = stateno = 1012
trigger37 = projcontact = 1
trigger37 = stateno = 1000
trigger38 = projcontact = 1
trigger38 = stateno = 1001
trigger39 = projcontact = 1
trigger39 = stateno = 1002
trigger40 = movecontact
trigger40 = stateno = 900
trigger41 = movecontact
trigger41 = stateno = 910
trigger42 = movecontact
trigger42 = stateno = 920
trigger43 = movecontact
trigger43 = stateno = 945
trigger44 = stateno = 950
trigger45 = stateno = 951
trigger46 = stateno = 952

;---------------------------------------------------------------------------
; Messatsu Gou Rassen A (B)
[State -1]
type = ChangeState
value = 4500
triggerall = command = "QCB2_b"
triggerall = power < 2000 ;Level 1
triggerall = power >= 1000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = projcontact = 1
trigger24 = stateno = 550
trigger25 = movecontact
trigger25 = stateno = 1100
trigger26 = movecontact
trigger26 = stateno = 1110
trigger27 = movecontact
trigger27 = stateno = 1120
trigger28 = movecontact
trigger28 = stateno = 1050
trigger29 = movecontact
trigger29 = stateno = 1060
trigger30 = movecontact
trigger30 = stateno = 1070
trigger31 = projcontact = 1
trigger31 = stateno = 3000
trigger32 = projcontact = 1
trigger32 = stateno = 3010
trigger33 = projcontact = 1
trigger33 = stateno = 3020
trigger34 = projcontact = 1
trigger34 = stateno = 1010
trigger35 = projcontact = 1
trigger35 = stateno = 1011
trigger36 = projcontact = 1
trigger36 = stateno = 1012
trigger37 = projcontact = 1
trigger37 = stateno = 1000
trigger38 = projcontact = 1
trigger38 = stateno = 1001
trigger39 = projcontact = 1
trigger39 = stateno = 1002
trigger40 = movecontact
trigger40 = stateno = 900
trigger41 = movecontact
trigger41 = stateno = 910
trigger42 = movecontact
trigger42 = stateno = 920
trigger43 = movecontact
trigger43 = stateno = 945
trigger44 = stateno = 950
trigger45 = stateno = 951
trigger46 = stateno = 952

;---------------------------------------------------------------------------
; Messatsu Gou Rassen A (C)
[State -1]
type = ChangeState
value = 4500
triggerall = command = "QCB2_c"
triggerall = power < 2000 ;Level 1
triggerall = power >= 1000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = projcontact = 1
trigger24 = stateno = 550
trigger25 = movecontact
trigger25 = stateno = 1100
trigger26 = movecontact
trigger26 = stateno = 1110
trigger27 = movecontact
trigger27 = stateno = 1120
trigger28 = movecontact
trigger28 = stateno = 1050
trigger29 = movecontact
trigger29 = stateno = 1060
trigger30 = movecontact
trigger30 = stateno = 1070
trigger31 = projcontact = 1
trigger31 = stateno = 3000
trigger32 = projcontact = 1
trigger32 = stateno = 3010
trigger33 = projcontact = 1
trigger33 = stateno = 3020
trigger34 = projcontact = 1
trigger34 = stateno = 1010
trigger35 = projcontact = 1
trigger35 = stateno = 1011
trigger36 = projcontact = 1
trigger36 = stateno = 1012
trigger37 = projcontact = 1
trigger37 = stateno = 1000
trigger38 = projcontact = 1
trigger38 = stateno = 1001
trigger39 = projcontact = 1
trigger39 = stateno = 1002
trigger40 = movecontact
trigger40 = stateno = 900
trigger41 = movecontact
trigger41 = stateno = 910
trigger42 = movecontact
trigger42 = stateno = 920
trigger43 = movecontact
trigger43 = stateno = 945
trigger44 = stateno = 950
trigger45 = stateno = 951
trigger46 = stateno = 952

;---------------------------------------------------------------------------
; Messatsu Gou Rassen B
[State -1]
type = ChangeState
value = 4510
triggerall = command = "QCB2_b"
triggerall = power >= 2000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = projcontact = 1
trigger24 = stateno = 550
trigger25 = movecontact
trigger25 = stateno = 1100
trigger26 = movecontact
trigger26 = stateno = 1110
trigger27 = movecontact
trigger27 = stateno = 1120
trigger28 = movecontact
trigger28 = stateno = 1050
trigger29 = movecontact
trigger29 = stateno = 1060
trigger30 = movecontact
trigger30 = stateno = 1070
trigger31 = projcontact = 1
trigger31 = stateno = 3000
trigger32 = projcontact = 1
trigger32 = stateno = 3010
trigger33 = projcontact = 1
trigger33 = stateno = 3020
trigger34 = projcontact = 1
trigger34 = stateno = 1010
trigger35 = projcontact = 1
trigger35 = stateno = 1011
trigger36 = projcontact = 1
trigger36 = stateno = 1012
trigger37 = projcontact = 1
trigger37 = stateno = 1000
trigger38 = projcontact = 1
trigger38 = stateno = 1001
trigger39 = projcontact = 1
trigger39 = stateno = 1002
trigger40 = movecontact
trigger40 = stateno = 900
trigger41 = movecontact
trigger41 = stateno = 910
trigger42 = movecontact
trigger42 = stateno = 920
trigger43 = movecontact
trigger43 = stateno = 945
trigger44 = stateno = 950
trigger45 = stateno = 951
trigger46 = stateno = 952

;---------------------------------------------------------------------------
; Messatsu Gou Rassen B (C)
[State -1]
type = ChangeState
value = 4510
triggerall = command = "QCB2_c"
triggerall = power < 3000 ;Level 1
triggerall = power >= 2000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = projcontact = 1
trigger24 = stateno = 550
trigger25 = movecontact
trigger25 = stateno = 1100
trigger26 = movecontact
trigger26 = stateno = 1110
trigger27 = movecontact
trigger27 = stateno = 1120
trigger28 = movecontact
trigger28 = stateno = 1050
trigger29 = movecontact
trigger29 = stateno = 1060
trigger30 = movecontact
trigger30 = stateno = 1070
trigger31 = projcontact = 1
trigger31 = stateno = 3000
trigger32 = projcontact = 1
trigger32 = stateno = 3010
trigger33 = projcontact = 1
trigger33 = stateno = 3020
trigger34 = projcontact = 1
trigger34 = stateno = 1010
trigger35 = projcontact = 1
trigger35 = stateno = 1011
trigger36 = projcontact = 1
trigger36 = stateno = 1012
trigger37 = projcontact = 1
trigger37 = stateno = 1000
trigger38 = projcontact = 1
trigger38 = stateno = 1001
trigger39 = projcontact = 1
trigger39 = stateno = 1002
trigger40 = movecontact
trigger40 = stateno = 900
trigger41 = movecontact
trigger41 = stateno = 910
trigger42 = movecontact
trigger42 = stateno = 920
trigger43 = movecontact
trigger43 = stateno = 945
trigger44 = stateno = 950
trigger45 = stateno = 951
trigger46 = stateno = 952

;---------------------------------------------------------------------------
; Messatsu Gou Rassen C
[State -1]
type = ChangeState
value = 4520
triggerall = command = "QCB2_c"
triggerall = power >= 3000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = projcontact = 1
trigger24 = stateno = 550
trigger25 = movecontact
trigger25 = stateno = 1100
trigger26 = movecontact
trigger26 = stateno = 1110
trigger27 = movecontact
trigger27 = stateno = 1120
trigger28 = movecontact
trigger28 = stateno = 1050
trigger29 = movecontact
trigger29 = stateno = 1060
trigger30 = movecontact
trigger30 = stateno = 1070
trigger31 = projcontact = 1
trigger31 = stateno = 3000
trigger32 = projcontact = 1
trigger32 = stateno = 3010
trigger33 = projcontact = 1
trigger33 = stateno = 3020
trigger34 = projcontact = 1
trigger34 = stateno = 1010
trigger35 = projcontact = 1
trigger35 = stateno = 1011
trigger36 = projcontact = 1
trigger36 = stateno = 1012
trigger37 = projcontact = 1
trigger37 = stateno = 1000
trigger38 = projcontact = 1
trigger38 = stateno = 1001
trigger39 = projcontact = 1
trigger39 = stateno = 1002
trigger40 = movecontact
trigger40 = stateno = 900
trigger41 = movecontact
trigger41 = stateno = 910
trigger42 = movecontact
trigger42 = stateno = 920
trigger43 = movecontact
trigger43 = stateno = 945
trigger44 = stateno = 950
trigger45 = stateno = 951
trigger46 = stateno = 952

;===========================================================================
;---------------------------------------------------------------------------
; Messatsu Gou Sho Ryu X
[State -1]
type = ChangeState
value = 1150
triggerall = command = "QCF2_x"
triggerall = power >= 1000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550
trigger25 = movecontact
trigger25 = stateno = 1100
trigger26 = movecontact
trigger26 = stateno = 1110
trigger27 = movecontact
trigger27 = stateno = 1120
trigger28 = movecontact
trigger28 = stateno = 1050
trigger29 = movecontact
trigger29 = stateno = 1060
trigger30 = movecontact
trigger30 = stateno = 1070
trigger31 = projcontact = 1
trigger31 = stateno = 3000
trigger32 = projcontact = 1
trigger32 = stateno = 3010
trigger33 = projcontact = 1
trigger33 = stateno = 3020
trigger34 = projcontact = 1
trigger34 = stateno = 1010
trigger35 = projcontact = 1
trigger35 = stateno = 1011
trigger36 = projcontact = 1
trigger36 = stateno = 1012
trigger37 = projcontact = 1
trigger37 = stateno = 1000
trigger38 = projcontact = 1
trigger38 = stateno = 1001
trigger39 = projcontact = 1
trigger39 = stateno = 1002
trigger40 = movecontact
trigger40 = stateno = 900
trigger41 = movecontact
trigger41 = stateno = 910
trigger42 = movecontact
trigger42 = stateno = 920
trigger43 = movecontact
trigger43 = stateno = 945
trigger44 = stateno = 950
trigger45 = stateno = 951
trigger46 = stateno = 952

;---------------------------------------------------------------------------
; Messatsu Gou Sho Ryu X (Y)
[State -1]
type = ChangeState
value = 1150
triggerall = command = "QCF2_y"
triggerall = power < 2000 ;Level 1
triggerall = power >= 1000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550
trigger25 = movecontact
trigger25 = stateno = 1100
trigger26 = movecontact
trigger26 = stateno = 1110
trigger27 = movecontact
trigger27 = stateno = 1120
trigger28 = movecontact
trigger28 = stateno = 1050
trigger29 = movecontact
trigger29 = stateno = 1060
trigger30 = movecontact
trigger30 = stateno = 1070
trigger31 = projcontact = 1
trigger31 = stateno = 3000
trigger32 = projcontact = 1
trigger32 = stateno = 3010
trigger33 = projcontact = 1
trigger33 = stateno = 3020
trigger34 = projcontact = 1
trigger34 = stateno = 1010
trigger35 = projcontact = 1
trigger35 = stateno = 1011
trigger36 = projcontact = 1
trigger36 = stateno = 1012
trigger37 = projcontact = 1
trigger37 = stateno = 1000
trigger38 = projcontact = 1
trigger38 = stateno = 1001
trigger39 = projcontact = 1
trigger39 = stateno = 1002
trigger40 = movecontact
trigger40 = stateno = 900
trigger41 = movecontact
trigger41 = stateno = 910
trigger42 = movecontact
trigger42 = stateno = 920
trigger43 = movecontact
trigger43 = stateno = 945
trigger44 = stateno = 950
trigger45 = stateno = 951
trigger46 = stateno = 952

;---------------------------------------------------------------------------
; Messatsu Gou Sho Ryu X (Z)
[State -1]
type = ChangeState
value = 1150
triggerall = command = "QCF2_z"
triggerall = power < 2000 ;Level 1
triggerall = power >= 1000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550
trigger25 = movecontact
trigger25 = stateno = 1100
trigger26 = movecontact
trigger26 = stateno = 1110
trigger27 = movecontact
trigger27 = stateno = 1120
trigger28 = movecontact
trigger28 = stateno = 1050
trigger29 = movecontact
trigger29 = stateno = 1060
trigger30 = movecontact
trigger30 = stateno = 1070
trigger31 = projcontact = 1
trigger31 = stateno = 3000
trigger32 = projcontact = 1
trigger32 = stateno = 3010
trigger33 = projcontact = 1
trigger33 = stateno = 3020
trigger34 = projcontact = 1
trigger34 = stateno = 1010
trigger35 = projcontact = 1
trigger35 = stateno = 1011
trigger36 = projcontact = 1
trigger36 = stateno = 1012
trigger37 = projcontact = 1
trigger37 = stateno = 1000
trigger38 = projcontact = 1
trigger38 = stateno = 1001
trigger39 = projcontact = 1
trigger39 = stateno = 1002
trigger40 = movecontact
trigger40 = stateno = 900
trigger41 = movecontact
trigger41 = stateno = 910
trigger42 = movecontact
trigger42 = stateno = 920
trigger43 = movecontact
trigger43 = stateno = 945
trigger44 = stateno = 950
trigger45 = stateno = 951
trigger46 = stateno = 952

;---------------------------------------------------------------------------
; Messatsu Gou Sho Ryu Y
[State -1]
type = ChangeState
value = 1160
triggerall = command = "QCF2_y"
triggerall = power >= 2000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550
trigger25 = movecontact
trigger25 = stateno = 1100
trigger26 = movecontact
trigger26 = stateno = 1110
trigger27 = movecontact
trigger27 = stateno = 1120
trigger28 = movecontact
trigger28 = stateno = 1050
trigger29 = movecontact
trigger29 = stateno = 1060
trigger30 = movecontact
trigger30 = stateno = 1070
trigger31 = projcontact = 1
trigger31 = stateno = 3000
trigger32 = projcontact = 1
trigger32 = stateno = 3010
trigger33 = projcontact = 1
trigger33 = stateno = 3020
trigger34 = projcontact = 1
trigger34 = stateno = 1010
trigger35 = projcontact = 1
trigger35 = stateno = 1011
trigger36 = projcontact = 1
trigger36 = stateno = 1012
trigger37 = projcontact = 1
trigger37 = stateno = 1000
trigger38 = projcontact = 1
trigger38 = stateno = 1001
trigger39 = projcontact = 1
trigger39 = stateno = 1002
trigger40 = movecontact
trigger40 = stateno = 900
trigger41 = movecontact
trigger41 = stateno = 910
trigger42 = movecontact
trigger42 = stateno = 920
trigger43 = movecontact
trigger43 = stateno = 945
trigger44 = stateno = 950
trigger45 = stateno = 951
trigger46 = stateno = 952

;---------------------------------------------------------------------------
; Messatsu Gou Sho Ryu Y (Z)
[State -1]
type = ChangeState
value = 1160
triggerall = command = "QCF2_z"
triggerall = power < 3000 ;Level 1
triggerall = power >= 2000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550
trigger25 = movecontact
trigger25 = stateno = 1100
trigger26 = movecontact
trigger26 = stateno = 1110
trigger27 = movecontact
trigger27 = stateno = 1120
trigger28 = movecontact
trigger28 = stateno = 1050
trigger29 = movecontact
trigger29 = stateno = 1060
trigger30 = movecontact
trigger30 = stateno = 1070
trigger31 = projcontact = 1
trigger31 = stateno = 3000
trigger32 = projcontact = 1
trigger32 = stateno = 3010
trigger33 = projcontact = 1
trigger33 = stateno = 3020
trigger34 = projcontact = 1
trigger34 = stateno = 1010
trigger35 = projcontact = 1
trigger35 = stateno = 1011
trigger36 = projcontact = 1
trigger36 = stateno = 1012
trigger37 = projcontact = 1
trigger37 = stateno = 1000
trigger38 = projcontact = 1
trigger38 = stateno = 1001
trigger39 = projcontact = 1
trigger39 = stateno = 1002
trigger40 = movecontact
trigger40 = stateno = 900
trigger41 = movecontact
trigger41 = stateno = 910
trigger42 = movecontact
trigger42 = stateno = 920
trigger43 = movecontact
trigger43 = stateno = 945
trigger44 = stateno = 950
trigger45 = stateno = 951
trigger46 = stateno = 952

;---------------------------------------------------------------------------
; Messatsu Gou Sho Ryu Z
[State -1]
type = ChangeState
value = 1170
triggerall = command = "QCF2_z"
triggerall = power >= 3000 ;Level 3
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550
trigger25 = movecontact
trigger25 = stateno = 1100
trigger26 = movecontact
trigger26 = stateno = 1110
trigger27 = movecontact
trigger27 = stateno = 1120
trigger28 = movecontact
trigger28 = stateno = 1050
trigger29 = movecontact
trigger29 = stateno = 1060
trigger30 = movecontact
trigger30 = stateno = 1070
trigger31 = projcontact = 1
trigger31 = stateno = 3000
trigger32 = projcontact = 1
trigger32 = stateno = 3010
trigger33 = projcontact = 1
trigger33 = stateno = 3020
trigger34 = projcontact = 1
trigger34 = stateno = 1010
trigger35 = projcontact = 1
trigger35 = stateno = 1011
trigger36 = projcontact = 1
trigger36 = stateno = 1012
trigger37 = projcontact = 1
trigger37 = stateno = 1000
trigger38 = projcontact = 1
trigger38 = stateno = 1001
trigger39 = projcontact = 1
trigger39 = stateno = 1002
trigger40 = movecontact
trigger40 = stateno = 900
trigger41 = movecontact
trigger41 = stateno = 910
trigger42 = movecontact
trigger42 = stateno = 920
trigger43 = movecontact
trigger43 = stateno = 945
trigger44 = stateno = 950
trigger45 = stateno = 951
trigger46 = stateno = 952

;===========================================================================
;---------------------------------------------------------------------------
; Tenma Gou Kuu Jin Kyaku A
[State -1]
type = ChangeState
value = 850
triggerall = command = "QCF_a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 601
trigger4 = movecontact
trigger4 = stateno = 602
trigger5 = movecontact
trigger5 = stateno = 604
trigger6 = movecontact
trigger6 = stateno = 605
trigger7 = movecontact
trigger7 = stateno = 606
trigger8 = movecontact
trigger8 = stateno = 704
trigger9 = movecontact
trigger9 = stateno = 705
trigger10 = movecontact
trigger10 = stateno = 706
trigger11 = stateno = 550
trigger12 = stateno = 800

;---------------------------------------------------------------------------
; Tenma Gou Kuu Jin Kyaku B
[State -1]
type = ChangeState
value = 850
triggerall = command = "QCF_b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 601
trigger4 = movecontact
trigger4 = stateno = 602
trigger5 = movecontact
trigger5 = stateno = 604
trigger6 = movecontact
trigger6 = stateno = 605
trigger7 = movecontact
trigger7 = stateno = 606
trigger8 = movecontact
trigger8 = stateno = 704
trigger9 = movecontact
trigger9 = stateno = 705
trigger10 = movecontact
trigger10 = stateno = 706
trigger11 = stateno = 550
trigger12 = stateno = 800

;---------------------------------------------------------------------------
; Tenma Gou Kuu Jin Kyaku C
[State -1]
type = ChangeState
value = 850
triggerall = command = "QCF_c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 601
trigger4 = movecontact
trigger4 = stateno = 602
trigger5 = movecontact
trigger5 = stateno = 604
trigger6 = movecontact
trigger6 = stateno = 605
trigger7 = movecontact
trigger7 = stateno = 606
trigger8 = movecontact
trigger8 = stateno = 704
trigger9 = movecontact
trigger9 = stateno = 705
trigger10 = movecontact
trigger10 = stateno = 706
trigger11 = stateno = 550
trigger12 = stateno = 800

;===========================================================================
;---------------------------------------------------------------------------
; Kuuchuu Tatsu Maki Zankuu Kyaku A 
[State -1]
type = ChangeState
value = 3030
triggerall = command = "QCB_a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 601
trigger4 = movecontact
trigger4 = stateno = 602
trigger5 = movecontact
trigger5 = stateno = 604
trigger6 = movecontact
trigger6 = stateno = 605
trigger7 = movecontact
trigger7 = stateno = 606
trigger8 = movecontact
trigger8 = stateno = 704
trigger9 = movecontact
trigger9 = stateno = 705
trigger10 = stateno = 1350
trigger10 = time >= 39
trigger11 = stateno = 1360
trigger11 = time >= 39
trigger12 = stateno = 1370
trigger12 = time >= 39
trigger13 = stateno = 2500
trigger13 = time >= 131
trigger14 = stateno = 2600
trigger14 = time >= 131
trigger15 = stateno = 2700
trigger15 = time >= 131
trigger16 = movecontact
trigger16 = stateno = 706
trigger17 = stateno = 550
trigger18 = stateno = 800
trigger19 = movecontact
trigger19 = stateno = 3520

;---------------------------------------------------------------------------
; Kuuchuu Tatsu Maki Zankuu Kyaku B
[State -1]
type = ChangeState
value = 3040
triggerall = command = "QCB_b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 601
trigger4 = movecontact
trigger4 = stateno = 602
trigger5 = movecontact
trigger5 = stateno = 604
trigger6 = movecontact
trigger6 = stateno = 605
trigger7 = movecontact
trigger7 = stateno = 606
trigger8 = movecontact
trigger8 = stateno = 704
trigger9 = movecontact
trigger9 = stateno = 705
trigger10 = stateno = 1350
trigger10 = time >= 39
trigger11 = stateno = 1360
trigger11 = time >= 39
trigger12 = stateno = 1370
trigger12 = time >= 39
trigger13 = stateno = 2500
trigger13 = time >= 131
trigger14 = stateno = 2600
trigger14 = time >= 131
trigger15 = stateno = 2700
trigger15 = time >= 131
trigger16 = movecontact
trigger16 = stateno = 706
trigger17 = stateno = 550
trigger18 = stateno = 800
trigger19 = movecontact
trigger19 = stateno = 3520

;---------------------------------------------------------------------------
; Kuuchuu Tatsu Maki Zankuu Kyaku C
[State -1]
type = ChangeState
value = 3050
triggerall = command = "QCB_c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 601
trigger4 = movecontact
trigger4 = stateno = 602
trigger5 = movecontact
trigger5 = stateno = 604
trigger6 = movecontact
trigger6 = stateno = 605
trigger7 = movecontact
trigger7 = stateno = 606
trigger8 = movecontact
trigger8 = stateno = 704
trigger9 = movecontact
trigger9 = stateno = 705
trigger10 = stateno = 1350
trigger10 = time >= 39
trigger11 = stateno = 1360
trigger11 = time >= 39
trigger12 = stateno = 1370
trigger12 = time >= 39
trigger13 = stateno = 2500
trigger13 = time >= 131
trigger14 = stateno = 2600
trigger14 = time >= 131
trigger15 = stateno = 2700
trigger15 = time >= 131
trigger16 = movecontact
trigger16 = stateno = 706
trigger17 = stateno = 550
trigger18 = stateno = 800
trigger19 = movecontact
trigger19 = stateno = 3520

;===========================================================================
;---------------------------------------------------------------------------
; Kuuchuu Shakunetsu Hado Ken X
[State -1]
type = ChangeState
value = 1350
triggerall = command = "HCB_x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 601
trigger4 = movecontact
trigger4 = stateno = 602
trigger5 = movecontact
trigger5 = stateno = 604
trigger6 = movecontact
trigger6 = stateno = 605
trigger7 = movecontact
trigger7 = stateno = 606
trigger8 = movecontact
trigger8 = stateno = 704
trigger9 = movecontact
trigger9 = stateno = 705
trigger10 = stateno = 1350
trigger10 = time >= 39
trigger11 = stateno = 1360
trigger11 = time >= 39
trigger12 = stateno = 1370
trigger12 = time >= 39
trigger13 = stateno = 2500
trigger13 = time >= 131
trigger14 = stateno = 2600
trigger14 = time >= 131
trigger15 = stateno = 2700
trigger15 = time >= 131
trigger16 = movecontact
trigger16 = stateno = 706
trigger17 = stateno = 550
trigger18 = stateno = 800
trigger19 = movecontact
trigger19 = stateno = 3520

;---------------------------------------------------------------------------
; Kuuchuu Shakunetsu Hado Ken Y
[State -1]
type = ChangeState
value = 1360
triggerall = command = "HCB_y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 601
trigger4 = movecontact
trigger4 = stateno = 602
trigger5 = movecontact
trigger5 = stateno = 604
trigger6 = movecontact
trigger6 = stateno = 605
trigger7 = movecontact
trigger7 = stateno = 606
trigger8 = movecontact
trigger8 = stateno = 704
trigger9 = movecontact
trigger9 = stateno = 705
trigger10 = stateno = 1350
trigger10 = time >= 39
trigger11 = stateno = 1360
trigger11 = time >= 39
trigger12 = stateno = 1370
trigger12 = time >= 39
trigger13 = stateno = 2500
trigger13 = time >= 131
trigger14 = stateno = 2600
trigger14 = time >= 131
trigger15 = stateno = 2700
trigger15 = time >= 131
trigger16 = movecontact
trigger16 = stateno = 706
trigger17 = stateno = 550
trigger18 = stateno = 800
trigger19 = movecontact
trigger19 = stateno = 3520

;---------------------------------------------------------------------------
; Kuuchuu Shakunetsu Hado Ken Z
[State -1]
type = ChangeState
value = 1370
triggerall = command = "HCB_z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 601
trigger4 = movecontact
trigger4 = stateno = 602
trigger5 = movecontact
trigger5 = stateno = 604
trigger6 = movecontact
trigger6 = stateno = 605
trigger7 = movecontact
trigger7 = stateno = 606
trigger8 = movecontact
trigger8 = stateno = 704
trigger9 = movecontact
trigger9 = stateno = 705
trigger10 = stateno = 1350
trigger10 = time >= 39
trigger11 = stateno = 1360
trigger11 = time >= 39
trigger12 = stateno = 1370
trigger12 = time >= 39
trigger13 = stateno = 2500
trigger13 = time >= 131
trigger14 = stateno = 2600
trigger14 = time >= 131
trigger15 = stateno = 2700
trigger15 = time >= 131
trigger16 = movecontact
trigger16 = stateno = 706
trigger17 = stateno = 550
trigger18 = stateno = 800
trigger19 = movecontact
trigger19 = stateno = 3520

;===========================================================================
;---------------------------------------------------------------------------
; Zankuu Hado Ken X
[State -1]
type = ChangeState
value = 1300
triggerall = command = "QCF_x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 601
trigger4 = movecontact
trigger4 = stateno = 602
trigger5 = movecontact
trigger5 = stateno = 604
trigger6 = movecontact
trigger6 = stateno = 605
trigger7 = movecontact
trigger7 = stateno = 606
trigger8 = movecontact
trigger8 = stateno = 704
trigger9 = movecontact
trigger9 = stateno = 705
trigger10 = movecontact
trigger10 = stateno = 706
trigger11 = stateno = 550
trigger12 = stateno = 800
trigger13 = movecontact
trigger13 = stateno = 3520

;---------------------------------------------------------------------------
; Zankuu Hado Ken Y
[State -1]
type = ChangeState
value = 1301
triggerall = command = "QCF_y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 601
trigger4 = movecontact
trigger4 = stateno = 602
trigger5 = movecontact
trigger5 = stateno = 604
trigger6 = movecontact
trigger6 = stateno = 605
trigger7 = movecontact
trigger7 = stateno = 606
trigger8 = movecontact
trigger8 = stateno = 704
trigger9 = movecontact
trigger9 = stateno = 705
trigger10 = movecontact
trigger10 = stateno = 706
trigger11 = stateno = 550
trigger12 = stateno = 800
trigger13 = movecontact
trigger13 = stateno = 3520

;---------------------------------------------------------------------------
; Zankuu Hado Ken Z
[State -1]
type = ChangeState
value = 1302
triggerall = command = "QCF_z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = movecontact
trigger3 = stateno = 601
trigger4 = movecontact
trigger4 = stateno = 602
trigger5 = movecontact
trigger5 = stateno = 604
trigger6 = movecontact
trigger6 = stateno = 605
trigger7 = movecontact
trigger7 = stateno = 606
trigger8 = movecontact
trigger8 = stateno = 704
trigger9 = movecontact
trigger9 = stateno = 705
trigger10 = movecontact
trigger10 = stateno = 706
trigger11 = stateno = 550
trigger12 = stateno = 800
trigger13 = movecontact
trigger13 = stateno = 3520

;===========================================================================
;---------------------------------------------------------------------------
; Hyakki Shuu A
[State -1]
type = ChangeState
value = 3500
triggerall = command = "hyak_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550
trigger25 = stateno = 950
trigger26 = stateno = 951
trigger27 = stateno = 952

;---------------------------------------------------------------------------
; Hyakki Shuu B
[State -1]
type = ChangeState
value = 3501
triggerall = command = "hyak_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550
trigger25 = stateno = 950
trigger26 = stateno = 951
trigger27 = stateno = 952

;---------------------------------------------------------------------------
; Hyakki Shuu C
[State -1]
type = ChangeState
value = 3502
triggerall = command = "hyak_c"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550
trigger25 = stateno = 950
trigger26 = stateno = 951
trigger27 = stateno = 952

;---------------------------------------------------------------------------
; Hyakki Gou Sai
[State -1]
type = ChangeState
value = 3540
triggerall = time >= 12
triggerall = p2bodydist x <= 0
triggerall = p2bodydist x >= -35
trigger1 = command = "x"
trigger1 = command = "holdfwd"
trigger1 = stateno = 3500
trigger2 = command = "x"
trigger2 = command = "holdfwd"
trigger2 = stateno = 3501
trigger3 = command = "x"
trigger3 = command = "holdfwd"
trigger3 = stateno = 3502
trigger4 = command = "y"
trigger4 = command = "holdfwd"
trigger4 = stateno = 3500
trigger5 = command = "y"
trigger5 = command = "holdfwd"
trigger5 = stateno = 3501
trigger6 = command = "y"
trigger6 = command = "holdfwd"
trigger6 = stateno = 3502
trigger7 = command = "z"
trigger7 = command = "holdfwd"
trigger7 = stateno = 3500
trigger8 = command = "z"
trigger8 = command = "holdfwd"
trigger8 = stateno = 3501
trigger9 = command = "z"
trigger9 = command = "holdfwd"
trigger9 = stateno = 3502
trigger10 = command = "x"
trigger10 = command = "holdback"
trigger10 = stateno = 3500
trigger11 = command = "x"
trigger11 = command = "holdback"
trigger11 = stateno = 3501
trigger12 = command = "x"
trigger12 = command = "holdback"
trigger12 = stateno = 3502
trigger13 = command = "y"
trigger13 = command = "holdback"
trigger13 = stateno = 3500
trigger14 = command = "y"
trigger14 = command = "holdback"
trigger14 = stateno = 3501
trigger15 = command = "y"
trigger15 = command = "holdback"
trigger15 = stateno = 3502
trigger16 = command = "z"
trigger16 = command = "holdback"
trigger16 = stateno = 3500
trigger17 = command = "z"
trigger17 = command = "holdback"
trigger17 = stateno = 3501
trigger18 = command = "z"
trigger18 = command = "holdback"
trigger18 = stateno = 3502

;---------------------------------------------------------------------------
; Hyakki Gou Tsui A
[State -1]
type = ChangeState
value = 3550
triggerall = time >= 12
triggerall = p2bodydist x < 8
trigger1 = command = "a"
trigger1 = command = "holdfwd"
trigger1 = stateno = 3500
trigger2 = command = "a"
trigger2 = command = "holdfwd"
trigger2 = stateno = 3501
trigger3 = command = "a"
trigger3 = command = "holdfwd"
trigger3 = stateno = 3502
trigger4 = command = "b"
trigger4 = command = "holdfwd"
trigger4 = stateno = 3500
trigger5 = command = "b"
trigger5 = command = "holdfwd"
trigger5 = stateno = 3501
trigger6 = command = "b"
trigger6 = command = "holdfwd"
trigger6 = stateno = 3502
trigger7 = command = "c"
trigger7 = command = "holdfwd"
trigger7 = stateno = 3500
trigger8 = command = "c"
trigger8 = command = "holdfwd"
trigger8 = stateno = 3501
trigger9 = command = "c"
trigger9 = command = "holdfwd"
trigger9 = stateno = 3502

;---------------------------------------------------------------------------
; Hyakki Gou Tsui B
[State -1]
type = ChangeState
value = 3555
triggerall = time >= 12
triggerall = p2bodydist x < 8
trigger1 = command = "a"
trigger1 = command = "holdback"
trigger1 = stateno = 3500
trigger2 = command = "a"
trigger2 = command = "holdback"
trigger2 = stateno = 3501
trigger3 = command = "a"
trigger3 = command = "holdback"
trigger3 = stateno = 3502
trigger4 = command = "b"
trigger4 = command = "holdback"
trigger4 = stateno = 3500
trigger5 = command = "b"
trigger5 = command = "holdback"
trigger5 = stateno = 3501
trigger6 = command = "b"
trigger6 = command = "holdback"
trigger6 = stateno = 3502
trigger7 = command = "c"
trigger7 = command = "holdback"
trigger7 = stateno = 3500
trigger8 = command = "c"
trigger8 = command = "holdback"
trigger8 = stateno = 3501
trigger9 = command = "c"
trigger9 = command = "holdback"
trigger9 = stateno = 3502

;---------------------------------------------------------------------------
; Hyakki Gou Shou
[State -1]
type = ChangeState
value = 3520
triggerall = time >= 12
trigger1 = command = "x"
trigger1 = stateno = 3500
trigger2 = command = "x"
trigger2 = stateno = 3501
trigger3 = command = "x"
trigger3 = stateno = 3502
trigger4 = command = "y"
trigger4 = stateno = 3500
trigger5 = command = "y"
trigger5 = stateno = 3501
trigger6 = command = "y"
trigger6 = stateno = 3502
trigger7 = command = "z"
trigger7 = stateno = 3500
trigger8 = command = "z"
trigger8 = stateno = 3501
trigger9 = command = "z"
trigger9 = stateno = 3502

;---------------------------------------------------------------------------
; Hyakki Gou Sen
[State -1]
type = ChangeState
value = 3530
triggerall = time >= 12
trigger1 = command = "a"
trigger1 = stateno = 3500
trigger2 = command = "a"
trigger2 = stateno = 3501
trigger3 = command = "a"
trigger3 = stateno = 3502
trigger4 = command = "b"
trigger4 = stateno = 3500
trigger5 = command = "b"
trigger5 = stateno = 3501
trigger6 = command = "b"
trigger6 = stateno = 3502
trigger7 = command = "c"
trigger7 = stateno = 3500
trigger8 = command = "c"
trigger8 = stateno = 3501
trigger9 = command = "c"
trigger9 = stateno = 3502

;===========================================================================
;---------------------------------------------------------------------------
; Gou Sho Ryu X
[State -1]
type = ChangeState
value = 1100
triggerall = command = "uppercut_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550

;---------------------------------------------------------------------------
; Gou Sho Ryu Y
[State -1]
type = ChangeState
value = 1110
triggerall = command = "uppercut_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550

;---------------------------------------------------------------------------
; Gou Sho Ryu Z
[State -1]
type = ChangeState
value = 1120
triggerall = command = "uppercut_z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550

;===========================================================================
;---------------------------------------------------------------------------
; Shakunetsu Hado Ken X
[State -1]
type = ChangeState
value = 1050
triggerall = command = "HCB_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550

;---------------------------------------------------------------------------
; Shakunetsu Hado Ken Y
[State -1]
type = ChangeState
value = 1060
triggerall = command = "HCB_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550

;---------------------------------------------------------------------------
; Shakunetsu Hado Ken Z
[State -1]
type = ChangeState
value = 1070
triggerall = command = "HCB_z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550

;===========================================================================
;---------------------------------------------------------------------------
; Zenpou Tenshin X
[State -1]
type = ChangeState
value = 950
triggerall = command = "QCB_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550

;---------------------------------------------------------------------------
; Zenpou Tenshin Y
[State -1]
type = ChangeState
value = 951
triggerall = command = "QCB_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550

;---------------------------------------------------------------------------
; Zenpou Tenshin Z
[State -1]
type = ChangeState
value = 952
triggerall = command = "QCB_z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550

;===========================================================================
;---------------------------------------------------------------------------
; Tatsu Maki Zankuu Kyaku A 
[State -1]
type = ChangeState
value = 3000
triggerall = command = "QCB_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550

;---------------------------------------------------------------------------
; Tatsu Maki Zankuu Kyaku B 
[State -1]
type = ChangeState
value = 3010
triggerall = command = "QCB_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550

;---------------------------------------------------------------------------
; Tatsu Maki Zankuu Kyaku C
[State -1]
type = ChangeState
value = 3020
triggerall = command = "QCB_c"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550

;===========================================================================
;---------------------------------------------------------------------------
; Gou Hado Ken X (close)
[State -1]
type = ChangeState
value = 1010
triggerall = command = "QCF_x"
triggerall = P2bodydist X < 55
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550

;---------------------------------------------------------------------------
; Gou Hado Ken Y (close)
[State -1]
type = ChangeState
value = 1011
triggerall = command = "QCF_y"
triggerall = P2bodydist X < 55
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550

;---------------------------------------------------------------------------
; Gou Hado Ken Z (close)
[State -1]
type = ChangeState
value = 1012
triggerall = command = "QCF_z"
triggerall = P2bodydist X < 55
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550

;---------------------------------------------------------------------------
; Gou Hado Ken X
[State -1]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550

;---------------------------------------------------------------------------
; Gou Hado Ken Y
[State -1]
type = ChangeState
value = 1001
triggerall = command = "QCF_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550

;---------------------------------------------------------------------------
; Gou Hado Ken Z
[State -1]
type = ChangeState
value = 1002
triggerall = command = "QCF_z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = statetype = C
trigger21 = ctrl = 1
trigger22 = movecontact
trigger22 = stateno = 306
trigger23 = movecontact
trigger23 = stateno = 500
trigger24 = movecontact
trigger24 = stateno = 550

;===========================================================================
;---------------------------------------------------------------------------
;Punch Throw (Forward)
[State -1]
type = ChangeState
value = 4000
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = command = "holdfwd"
trigger1 = command = "xy"
trigger1 = p2movetype != H
trigger2 = command = "xz"
trigger2 = p2movetype != H
trigger3 = command = "yz"
trigger3 = p2movetype != H
trigger4 = command = "xy"
trigger4 = p2movetype != H
trigger5 = command = "xz"
trigger5 = p2movetype != H
trigger6 = command = "yz"
trigger6 = p2movetype != H

;---------------------------------------------------------------------------
;Punch Throw (Backward)
[State -1]
type = ChangeState
value = 4005
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = command = "holdback"
trigger1 = command = "xy"
trigger2 = command = "xz"
trigger3 = command = "yz"
trigger4 = command = "xy"
trigger5 = command = "xz"
trigger6 = command = "yz"

;---------------------------------------------------------------------------
;Kick Throw (Forward)
[State -1]
type = ChangeState
value = 4010
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = command = "holdfwd"
trigger1 = command = "ab"
trigger2 = command = "ac"
trigger3 = command = "bc"
trigger4 = command = "ab"
trigger5 = command = "ac"
trigger6 = command = "bc"

;---------------------------------------------------------------------------
;Kick Throw (Backward)
[State -1]
type = ChangeState
value = 4015
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = command = "holdback"
trigger1 = command = "ab"
trigger2 = command = "ac"
trigger3 = command = "bc"
trigger4 = command = "ab"
trigger5 = command = "ac"
trigger6 = command = "bc"
       
;---------------------------------------------------------------------------
;Air Throw (Forward)
[State -1]
type = ChangeState
value = 4030
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = command = "holdfwd"
trigger1 = command = "ab"
trigger2 = command = "ac"
trigger3 = command = "bc"

;---------------------------------------------------------------------------
;Air Throw (Backward)
[State -1]
type = ChangeState
value = 4030
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = command = "holdback"
trigger1 = command = "ab"
trigger2 = command = "ac"
trigger3 = command = "bc"

;===========================================================================
;---------------------------------------------------------------------------
;Zugai Hassatsu
[State -1]
type = ChangeState
value = 500
triggerall = command = "fwd_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = movecontact
trigger21 = stateno = 306

;===========================================================================
;---------------------------------------------------------------------------
;Senpuu Kyaku
[State -1]
type = ChangeState
value = 550
triggerall = command = "fwd_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 202
trigger5 = movecontact
trigger5 = stateno = 203
trigger6 = movecontact
trigger6 = stateno = 204
trigger7 = movecontact
trigger7 = stateno = 205
trigger8 = movecontact
trigger8 = stateno = 206
trigger9 = movecontact
trigger9 = stateno = 400
trigger10 = movecontact
trigger10 = stateno = 401
trigger11 = movecontact
trigger11 = stateno = 402
trigger12 = movecontact
trigger12 = stateno = 403
trigger13 = movecontact
trigger13 = stateno = 404
trigger14 = movecontact
trigger14 = stateno = 405
trigger15 = movecontact
trigger15 = stateno = 406
trigger16 = movecontact
trigger16 = stateno = 301
trigger17 = movecontact
trigger17 = stateno = 302
trigger18 = movecontact
trigger18 = stateno = 304
trigger19 = movecontact
trigger19 = stateno = 305
trigger20 = stateno = 100
trigger21 = movecontact
trigger21 = stateno = 306

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

;===========================================================================
;---------------------------------------------------------------------------
;Stand X
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = time >= 5
trigger2 = stateno = 200
trigger3 = stateno = 100

;---------------------------------------------------------------------------
;Stand Y
[State -1]
type = ChangeState
value = 201
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X >= 30
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 204
trigger4 = movecontact
trigger4 = stateno = 400
trigger5 = movecontact
trigger5 = stateno = 404
trigger6 = stateno = 100
trigger7 = movecontact
trigger7 = stateno = 304

;---------------------------------------------------------------------------
;Stand Z
[State -1]
type = ChangeState
value = 202
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = P2bodydist X >= 10
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 204
trigger5 = movecontact
trigger5 = stateno = 205
trigger6 = movecontact
trigger6 = stateno = 301
trigger7 = movecontact
trigger7 = stateno = 304
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 401
trigger10 = movecontact
trigger10 = stateno = 404
trigger11 = movecontact
trigger11 = stateno = 405
trigger12 = movecontact
trigger12 = stateno = 210
trigger13 = stateno = 100
trigger14 = movecontact
trigger14 = stateno = 305

;---------------------------------------------------------------------------
;Stand A
[State -1]
type = ChangeState
value = 204
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X >= 30
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = stateno = 100
trigger5 = movecontact
trigger5 = stateno = 204
trigger6 = movecontact
trigger6 = stateno = 304

;---------------------------------------------------------------------------
;Stand B
[State -1]
type = ChangeState
value = 205
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X >= 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 204
trigger5 = movecontact
trigger5 = stateno = 301
trigger6 = movecontact
trigger6 = stateno = 400
trigger7 = movecontact
trigger7 = stateno = 401
trigger8 = movecontact
trigger8 = stateno = 404
trigger9 = movecontact
trigger9 = stateno = 304
trigger10 = stateno = 100

;---------------------------------------------------------------------------
;Stand C
[State -1]
type = ChangeState
value = 206
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = P2bodydist X >= 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 204
trigger5 = movecontact
trigger5 = stateno = 205
trigger6 = movecontact
trigger6 = stateno = 301
trigger7 = movecontact
trigger7 = stateno = 304
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 401
trigger10 = movecontact
trigger10 = stateno = 404
trigger11 = movecontact
trigger11 = stateno = 405
trigger12 = movecontact
trigger12 = stateno = 305
trigger13 = stateno = 100

;---------------------------------------------------------------------------
;CLose Y
[State -1]
type = ChangeState
value = 301
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 30
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 204
trigger4 = movecontact
trigger4 = stateno = 400
trigger5 = movecontact
trigger5 = stateno = 404
trigger6 = stateno = 100
trigger7 = movecontact
trigger7 = stateno = 304

;---------------------------------------------------------------------------
;Close Z
[State -1]
type = ChangeState
value = 302
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 10
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 204
trigger5 = movecontact
trigger5 = stateno = 205
trigger6 = movecontact
trigger6 = stateno = 301
trigger7 = movecontact
trigger7 = stateno = 304
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 401
trigger10 = movecontact
trigger10 = stateno = 404
trigger11 = movecontact
trigger11 = stateno = 405
trigger12 = movecontact
trigger12 = stateno = 210
trigger13 = stateno = 100
trigger14 = movecontact
trigger14 = stateno = 305

;---------------------------------------------------------------------------
;Close A
[State -1]
type = ChangeState
value = 304
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 30
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 400
trigger4 = stateno = 100
trigger5 = movecontact
trigger5 = stateno = 304

;---------------------------------------------------------------------------
;Close B
[State -1]
type = ChangeState
value = 305
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 204
trigger5 = movecontact
trigger5 = stateno = 301
trigger6 = movecontact
trigger6 = stateno = 400
trigger7 = movecontact
trigger7 = stateno = 401
trigger8 = movecontact
trigger8 = stateno = 404
trigger9 = movecontact
trigger9 = stateno = 304
trigger10 = stateno = 100

;---------------------------------------------------------------------------
;Close C
[State -1]
type = ChangeState
value = 306
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 201
trigger4 = movecontact
trigger4 = stateno = 204
trigger5 = movecontact
trigger5 = stateno = 205
trigger6 = movecontact
trigger6 = stateno = 301
trigger7 = movecontact
trigger7 = stateno = 304
trigger8 = movecontact
trigger8 = stateno = 400
trigger9 = movecontact
trigger9 = stateno = 401
trigger10 = movecontact
trigger10 = stateno = 404
trigger11 = movecontact
trigger11 = stateno = 405
trigger12 = movecontact
trigger12 = stateno = 305
trigger13 = stateno = 100

;---------------------------------------------------------------------------
;Crouch X
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 100
trigger3 = time >= 5
trigger3 = stateno = 400
trigger4 = time >= 5
trigger4 = stateno = 200

;---------------------------------------------------------------------------
;Crouch Y
[State -1]
type = ChangeState
value = 401
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 400
trigger3 = movecontact
trigger3 = stateno = 404
trigger4 = movecontact
trigger4 = stateno = 200
trigger5 = movecontact
trigger5 = stateno = 204
trigger6 = movecontact
trigger6 = stateno = 207
trigger7 = stateno = 100
trigger8 = movecontact
trigger8 = stateno = 304

;---------------------------------------------------------------------------
;Crouch Z
[State -1]
type = ChangeState
value = 402
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 400
trigger3 = movecontact
trigger3 = stateno = 401
trigger4 = movecontact
trigger4 = stateno = 404
trigger5 = movecontact
trigger5 = stateno = 405
trigger6 = movecontact
trigger6 = stateno = 200
trigger7 = movecontact
trigger7 = stateno = 201
trigger8 = movecontact
trigger8 = stateno = 204
trigger9 = movecontact
trigger9 = stateno = 205
trigger10 = movecontact
trigger10 = stateno = 207
trigger11 = movecontact
trigger11 = stateno = 208
trigger12 = stateno = 100
trigger13 = movecontact
trigger13 = stateno = 304
trigger14 = movecontact
trigger14 = stateno = 301
trigger15 = movecontact
trigger15 = stateno = 305

;---------------------------------------------------------------------------
;Aerial Rave Jump
[State -1]
type = ChangeState
value = 40
triggerall = command = "holdup"
trigger1 = movecontact
trigger1 = stateno = 402

;---------------------------------------------------------------------------
;Crouch A
[State -1]
type = ChangeState
value = 404
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = time >= 5
trigger2 = stateno = 400
trigger3 = movecontact
trigger3 = stateno = 204
trigger4 = time >= 5
trigger4 = stateno = 404
trigger5 = time >= 5
trigger5 = stateno = 200
trigger6 = time >= 5
trigger6 = stateno = 304
trigger7 = movecontact
trigger7 = stateno = 400
trigger8 = stateno = 100

;---------------------------------------------------------------------------
;Crouch B
[State -1]
type = ChangeState
value = 405
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 400
trigger3 = movecontact
trigger3 = stateno = 401
trigger4 = movecontact
trigger4 = stateno = 404
trigger5 = movecontact
trigger5 = stateno = 200
trigger6 = movecontact
trigger6 = stateno = 201
trigger7 = movecontact
trigger7 = stateno = 204
trigger8 = movecontact
trigger8 = stateno = 207
trigger9 = movecontact
trigger9 = stateno = 208
trigger10 = movecontact
trigger10 = stateno = 304
trigger11 = stateno = 100

;---------------------------------------------------------------------------
;Crouch C
[State -1]
type = ChangeState
value = 406
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = 400
trigger3 = movecontact
trigger3 = stateno = 401
trigger4 = movecontact
trigger4 = stateno = 404
trigger5 = movecontact
trigger5 = stateno = 200
trigger6 = movecontact
trigger6 = stateno = 201
trigger7 = movecontact
trigger7 = stateno = 204
trigger8 = movecontact
trigger8 = stateno = 207
trigger9 = movecontact
trigger9 = stateno = 208
trigger10 = movecontact
trigger10 = stateno = 205
trigger11 = movecontact
trigger11 = stateno = 405
trigger12 = movecontact
trigger12 = stateno = 304
trigger13 = stateno = 100

;---------------------------------------------------------------------------
;Jump X
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump Y
[State -1]
type = ChangeState
value = 601
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = p2statetype = A
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = p2statetype = A
trigger3 = movecontact
trigger3 = stateno = 604
trigger4 = p2statetype = A
trigger4 = movecontact
trigger4 = stateno = 704

;---------------------------------------------------------------------------
;Jump Z
[State -1]
type = ChangeState
value = 602
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = p2statetype = A
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = p2statetype = A
trigger3 = movecontact
trigger3 = stateno = 601
trigger4 = p2statetype = A
trigger4 = movecontact
trigger4 = stateno = 604
trigger5 = p2statetype = A
trigger5 = movecontact
trigger5 = stateno = 605
trigger6 = p2statetype = A
trigger6 = movecontact
trigger6 = stateno = 704
trigger7 = p2statetype = A
trigger7 = movecontact
trigger7 = stateno = 705

;---------------------------------------------------------------------------
;Tenma Kuu Jin Kyaku
[State -1]
type = ChangeState
value = 800
triggerall = command = "holddown"
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = stateno = 50
trigger1 = time >= 14
trigger1 = vel x >= 0.5
trigger2 = statetype = A
trigger2 = ctrl = 1
trigger2 = stateno = 51
trigger2 = time <= 10
trigger2 = vel x >= 0.5

;---------------------------------------------------------------------------
;Jump C (spinning roundhouse)
[State -1]
type = ChangeState
value = 706
triggerall = command = "holdup"
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = p2statetype = A
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = p2statetype = A
trigger3 = movecontact
trigger3 = stateno = 601
trigger4 = p2statetype = A
trigger4 = movecontact
trigger4 = stateno = 604
trigger5 = p2statetype = A
trigger5 = movecontact
trigger5 = stateno = 605
trigger6 = p2statetype = A
trigger6 = movecontact
trigger6 = stateno = 704
trigger7 = p2statetype = A
trigger7 = movecontact
trigger7 = stateno = 705

;---------------------------------------------------------------------------
;Jump Up A
[State -1]
type = ChangeState
value = 704
triggerall = vel X = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = p2statetype = A
trigger2 = movecontact
trigger2 = stateno = 600

;---------------------------------------------------------------------------
;Jump Up B
[State -1]
type = ChangeState
value = 705
triggerall = vel X = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = p2statetype = A
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = p2statetype = A
trigger3 = movecontact
trigger3 = stateno = 601
trigger4 = p2statetype = A
trigger4 = movecontact
trigger4 = stateno = 602
trigger5 = p2statetype = A
trigger5 = movecontact
trigger5 = stateno = 604
trigger6 = p2statetype = A
trigger6 = movecontact
trigger6 = stateno = 704

;---------------------------------------------------------------------------
;Jump Up C
[State -1]
type = ChangeState
value = 706
triggerall = vel X = 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = p2statetype = A
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = p2statetype = A
trigger3 = movecontact
trigger3 = stateno = 601
trigger4 = p2statetype = A
trigger4 = movecontact
trigger4 = stateno = 604
trigger5 = p2statetype = A
trigger5 = movecontact
trigger5 = stateno = 605
trigger6 = p2statetype = A
trigger6 = movecontact
trigger6 = stateno = 704
trigger7 = p2statetype = A
trigger7 = movecontact
trigger7 = stateno = 705

;---------------------------------------------------------------------------
;Jump A
[State -1]
type = ChangeState
value = 604
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = p2statetype = A
trigger2 = movecontact
trigger2 = stateno = 600

;---------------------------------------------------------------------------
;Jump B
[State -1]
type = ChangeState
value = 605
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = p2statetype = A
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = p2statetype = A
trigger3 = movecontact
trigger3 = stateno = 601
trigger4 = p2statetype = A
trigger4 = movecontact
trigger4 = stateno = 602
trigger5 = p2statetype = A
trigger5 = movecontact
trigger5 = stateno = 604
trigger6 = p2statetype = A
trigger6 = movecontact
trigger6 = stateno = 704

;---------------------------------------------------------------------------
;Jump C
[State -1]
type = ChangeState
value = 606
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = p2statetype = A
trigger2 = movecontact
trigger2 = stateno = 600
trigger3 = p2statetype = A
trigger3 = movecontact
trigger3 = stateno = 601
trigger4 = p2statetype = A
trigger4 = movecontact
trigger4 = stateno = 604
trigger5 = p2statetype = A
trigger5 = movecontact
trigger5 = stateno = 605
trigger6 = p2statetype = A
trigger6 = movecontact
trigger6 = stateno = 704
trigger7 = p2statetype = A
trigger7 = movecontact
trigger7 = stateno = 705

;---------------------------------------------------------------------------
;Taunt A
[State -1]
type = ChangeState
value = 197
triggerall = command = "s"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Taunt B
[State -1]
type = ChangeState
value = 196
triggerall = command = "s"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 100

;---------------------------------------------------------------------------
;Taunt C
[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Zero/Alpha Counter X
[State -1]
type = ChangeState
value = 900
triggerall = command = "QCD_x"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;---------------------------------------------------------------------------
; Zero/Alpha Counter X
[State -1]
type = ChangeState
value = 900
triggerall = command = "ff_x"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;---------------------------------------------------------------------------
; Zero/Alpha Counter Y
[State -1]
type = ChangeState
value = 910
triggerall = command = "QCD_y"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;---------------------------------------------------------------------------
; Zero/Alpha Counter Y
[State -1]
type = ChangeState
value = 910
triggerall = command = "ff_y"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;---------------------------------------------------------------------------
; Zero/Alpha Counter Z
[State -1]
type = ChangeState
value = 920
triggerall = command = "QCD_z"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;---------------------------------------------------------------------------
; Zero/Alpha Counter Z
[State -1]
type = ChangeState
value = 920
triggerall = command = "ff_z"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;---------------------------------------------------------------------------
; Zero/Alpha Counter A
[State -1]
type = ChangeState
value = 945
triggerall = command = "QCD_a"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;---------------------------------------------------------------------------
; Zero/Alpha Counter A
[State -1]
type = ChangeState
value = 945
triggerall = command = "ff_a"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;---------------------------------------------------------------------------
; Zero/Alpha Counter B
[State -1]
type = ChangeState
value = 945
triggerall = command = "QCD_b"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;---------------------------------------------------------------------------
; Zero/Alpha Counter B
[State -1]
type = ChangeState
value = 945
triggerall = command = "ff_b"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;---------------------------------------------------------------------------
; Zero/Alpha Counter C
[State -1]
type = ChangeState
value = 945
triggerall = command = "QCD_c"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;---------------------------------------------------------------------------
; Zero/Alpha Counter C
[State -1]
type = ChangeState
value = 945
triggerall = command = "ff_c"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;---------------------------------------------------------------------------
; Recovery Roll X
[State -1]
type = ChangeState
value = 930
triggerall = command = "QCD_x"
triggerall = alive = 1
trigger1 = stateno = 5050
trigger2 = stateno = 5071

;---------------------------------------------------------------------------
; Recovery Roll Y
[State -1]
type = ChangeState
value = 932
triggerall = command = "QCD_y"
triggerall = alive = 1
trigger1 = stateno = 5050
trigger2 = stateno = 5071

;---------------------------------------------------------------------------
; Recovery Roll Z
[State -1]
type = ChangeState
value = 934
triggerall = command = "QCD_z"
triggerall = alive = 1
trigger1 = stateno = 5050
trigger2 = stateno = 5071

;---------------------------------------------------------------------------
; Recovery Roll A
[State -1]
type = ChangeState
value = 936
triggerall = command = "QCD_a"
triggerall = alive = 1
trigger1 = stateno = 5050
trigger2 = stateno = 5071

;---------------------------------------------------------------------------
; Recovery Roll B
[State -1]
type = ChangeState
value = 938
triggerall = command = "QCD_b"
triggerall = alive = 1
trigger1 = stateno = 5050
trigger2 = stateno = 5071

;---------------------------------------------------------------------------
; Recovery Roll C
[State -1]
type = ChangeState
value = 940
triggerall = command = "QCD_c"
triggerall = alive = 1
trigger1 = stateno = 5050
trigger2 = stateno = 5071


