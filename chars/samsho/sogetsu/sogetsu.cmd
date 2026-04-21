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
;   Name= "some_name"
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


;-| Super Motions |--------------------------------------------------------
[Command]
Name= "super_a"
command = ~D, DB, B, F, a
time = 20

[Command]
Name= "super_b"
command = ~D, DB, B, F, b
time = 20

[Command]
Name= "super_c"
command = ~D, DB, B, F, c
time = 20

[Command]
Name= "super_x"
command = ~D, DB, B, F, x
time = 20

[Command]
Name= "super_y"
command = ~D, DB, B, F, y
time = 20

[Command]
Name= "super_z"
command = ~D, DB, B, F, z
time = 20

;-| Sho ryu ken move |------------------------------------------------------

[Command]
Name= "DP_a"
command = ~F, D, DF, a
time = 20

[Command]
Name= "DP_b"
command = ~F, D,DF, b
time = 20

[Command]
Name= "DP_c"
command = ~F, D,DF, c
time = 20

[Command]
Name= "DP_x"
command = ~F, D,DF, x
time = 20

[Command]
Name= "DP_y"
command = ~F, D,DF, y
time = 20

[Command]
Name= "DP_z"
command = ~F, D,DF, z
time = 20

;-| Ha Do Ken Move |------------------------------------------------------

[Command]
Name= "QCF_a"
command = ~D, DF, F, a

[Command]
Name= "QCF_b"
command = ~D, DF, F, b

[Command]
Name= "QCF_c"
command = ~D, DF, F, c

[Command]
Name= "QCF_x"
command = ~D, DF, F, x

[Command]
Name= "QCF_y"
command = ~D, DF, F, y

[Command]
Name= "QCF_z"
command = ~D, DF, F, z

;-| Special Motions |------------------------------------------------------


[Command]
Name= "QCB_a"
command = ~D, DB, B, a

[Command]
Name= "QCB_b"
command = ~D, DB, B, b

[Command]
Name= "QCB_c"
command = ~D, DB, B, c

[Command]
Name= "QCB_x"
command = ~D, DB, B, x

[Command]
Name= "QCB_y"
command = ~D, DB, B, y

[Command]
Name= "QCB_z"
command = ~D, DB, B, z

;-| Double Tap |-----------------------------------------------------------
[Command]
Name= "FF";Required (do not remove)
command = F, F
time = 20

[Command]
Name= "BB";Required (do not remove)
command = B, B
time = 20

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
Name= "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
Name= "ab"
command = a+b
time = 1

[Command]
Name= "ax"
command = a+x
time = 1


[Command]
Name= "abc"
command = a+b+c
time = 1

[Command]
Name= "bc"
command = b+c
time = 1

[Command]
Name= "xy"
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
Name= "fwd_a"
command = /F,a
time = 1

[Command]
Name= "fwd_b"
command = /F,b
time = 1

[Command]
Name= "fwd_c"
command = /F,c
time = 1

[Command]
Name= "fwd_x"
command = /F,x
time = 1

[Command]
Name= "fwd_y"
command = /F,y
time = 1

[Command]
Name= "fwd_z"
command = /F,z
time = 1 


[Command]
Name= "up"
command = /U
time = 1

[Command]
Name= "downfwd_a"
command = /DF,a
time = 1

[Command]
Name= "downfwd_b"
command = /DF,b
time = 1

[Command]
Name= "downfwd_z"
command = /DF,z
time = 1

[Command]
Name= "downback_z"
command = /DB,z
time = 1

[Command]
Name= "back_a"
command = /B,a
time = 1

[Command]
Name= "back_b"
command = /B,b
time = 1

[Command]
Name= "back_c"
command = /B,c
time = 1

[Command]
Name= "back_x"
command = /B,x
time = 1

[Command]
Name= "back_y"
command = /B,y
time = 1

[Command]
Name= "back_z"
command = /B,z
time = 1

[Command]
Name= "down_a"
command = /$D,a
time = 1

[Command]
Name= "down_b"
command = /$D,b
time = 1

[Command]
Name= "down_c"
command = /$D,c
time = 1

[Command]
Name= "down"
command = /$D
time = 1

[Command]
Name= "fwd_ab"
command = /F, a+b
time = 1

[Command]
Name= "back_ab"
command = /B, a+b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
Name= "a"
command = a
time = 1

[Command]
Name= "b"
command = b
time = 1

[Command]
Name= "c"
command = c
time = 1

[Command]
Name= "x"
command = x
time = 1

[Command]
Name= "y"
command = y
time = 1

[Command]
Name= "z"
command = z
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
Name= "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
Name= "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
Name= "holdup";Required (do not remove)
command = /$U
time = 1

[Command]
Name= "holddown";Required (do not remove)
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
;   trigger1=command="command_name"
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
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1=command="FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1=command="BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

;***************************************************************************************************************************
;Catching
;***************************************************************************************************************************
;catch2

[State -1]
type = ChangeState
value = 293
triggerall=command="fwd_z"
triggerall = statetype != A
triggerall=command !="holddown"
triggerall = P2BodyDist  X < 30
trigger1 = statetype = S
trigger1 = ctrl = 1

;***************************************************************************************************************************
;Specials moves
;***************************************************************************************************************************

;---------------------------------------------------------------------------------------------------------------------------
;MOON GLOW
;---------------------------------------------------------------------------------------------------------------------------
;MOON GLOW 1
[State -1]
type = ChangeState
value = 1000
triggerall=command="DP_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------------------------------------------------------
;MOON GLOW 2
[State -1]
type = ChangeState
value = 1001
triggerall=command="DP_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------------------------------------------------------
;MOON GLOW 3
[State -1]
type = ChangeState
value = 1002
triggerall=command="DP_z"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------------------------------------------------------
;MOON BEAM BLAST
;---------------------------------------------------------------------------------------------------------------------------
;MOON BEAM BLAST 1
[State -1]
type = ChangeState
value = 1006
triggerall = statetype = A
triggerall = ctrl = 1
trigger1=command="QCF_a"
;---------------------------------------------------------------------------------------------------------------------------
;MOON BEAM BLAST 2
[State -1]
type = ChangeState
value = 1005
triggerall = statetype = A
triggerall = ctrl = 1
trigger1=command="QCF_b"
;---------------------------------------------------------------------------------------------------------------------------
;MOON BEAM BLAST 3
[State -1]
type = ChangeState
value = 1004
triggerall = statetype = A
triggerall = ctrl = 1
trigger1=command="QCF_c"
;---------------------------------------------------------------------------------------------------------------------------
;MOON OF DEATH
;---------------------------------------------------------------------------------------------------------------------------
;MOON OF DEATH
[State -1]
type = ChangeState
value = 1110
triggerall = statetype = A
triggerall = ctrl = 1
trigger1=command="QCF_x"
trigger2=command="QCF_y"
trigger3=command="QCF_z"
;---------------------------------------------------------------------------------------------------------------------------
;MOON BEAM THRUST
;---------------------------------------------------------------------------------------------------------------------------
;MOON BEAM THRUST TYPE 1;
[State -1]
type = ChangeState
value = 1052
triggerall=command="QCF_a"
trigger1 = statetype != A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------------------------------------------------------
;MOON BEAM THRUST TYPE 2;
[State -1]
type = ChangeState
value = 1051
triggerall=command="QCF_b"
trigger1 = statetype != A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------------------------------------------------------
;MOON BEAM THRUST TYPE 3;
[State -1]
type = ChangeState
value = 1050
triggerall=command="QCF_c"
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------------------------------------------------------
;NEW MOON 
;---------------------------------------------------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1400 
triggerall=command="QCB_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------------------------------------------
[State -1]
type = ChangeState
value = 1402 
triggerall=command="QCB_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------------------------------------------
[State -1]
type = ChangeState
value = 1404 
triggerall=command="QCB_c"
trigger1 = statetype = S
trigger1 = ctrl = 1





;---------------------------------------------------------------------------------------------------------------------------
;		SUPER MOVES
;---------------------------------------------------------------------------------------------------------------------------
;GRAND MOON BEAM THRUST
;---------------------------------------------------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 4270
triggerall = statetype != A
triggerall = ctrl = 1
trigger1=command="super_a"
;---------------------------------------------------------------------------------------------------------------------------
;KAZUKI SLASH DESPERATION MOVE
;---------------------------------------------------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1070 
triggerall=command="super_b"
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------------------------------------------------------
;BUST DESPERATION MOVE WATERSPOUT WAVE
;---------------------------------------------------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 4005
trigger1=command="super_c"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------------------------------------------------------
;ORIGINAL DESPERATION MOVE NINJA EXECUTION
;---------------------------------------------------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 4020
trigger1=command="super_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------------------------------------------------------
;SLASH DESPERATION MOVE LUNAR SLASH
;---------------------------------------------------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 4010
triggerall=command="super_y"
triggerall = numhelper = 0
triggerall = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------------------------------------------------------
;LETHAL DESPERATION MOVE LAST SABER
;---------------------------------------------------------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 4000
triggerall=command="super_z"
trigger1 = statetype = S
trigger1 = ctrl = 1


;-------------------------------------------------------------
[State -1]
type = ChangeState
value = 1071 
triggerall=command="back_y"
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------------------------------------------
;MOON RISE TYPE 1
[State -1]
type = ChangeState
value = 1061
triggerall=command="QCF_x"
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------------------------------------------
;MOON RISE TYPE 2
[State -1]
type = ChangeState
value = 1060
triggerall=command="QCF_y"
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;-------------------------------------------------------------
;MOON RISE TYPE 3
[State -1]
type = ChangeState
value = 1062
triggerall=command="QCF_z"
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_A
[State -1]
type = ChangeState
value = 200
triggerall=command="a"
triggerall = statetype != A
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Stand_B
[State -1]
type = ChangeState
value = 210
triggerall=command="b"
triggerall = statetype != A
triggerall=command !="holddown"
triggerall = P2bodyDist X > 50
trigger1 = statetype = S
trigger1 = ctrl = 1
;------------------------------------------------------------------------
;Stand C
[State -1]
type = ChangeState
value = 220
triggerall=command="c"
triggerall = statetype != A
triggerall = P2bodyDist X > 49
triggerall=command !="holddown"
triggerall=command !="holdback"
trigger1 = ctrl = 1
;----------------------------------------------------------------------------
;Stand X
[State -1]
type = ChangeState
value = 250
triggerall=command="x"
triggerall = statetype != A
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Stand Y
[State -1]
type = ChangeState
value = 260
triggerall=command="y"
triggerall = statetype != A
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Stand Z
[State -1]
type = ChangeState
value = 230
triggerall=command="z"
triggerall = statetype != A
triggerall=command !="holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Close Attacks
;---------------------------------------------------------------------------
;Catch
[State -1]
type = ChangeState
value = 290
triggerall=command="fwd_c"
triggerall=command="holdfwd"
triggerall = P2bodyDist X < 10
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Close B
[State -1]
type = ChangeState
value = 215
triggerall=command="b"
triggerall = statetype != A
triggerall=command !="holddown"
triggerall = P2bodyDist X < 50
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Close C
[State -1]
type = ChangeState
value = 225
triggerall=command="c"
triggerall = statetype != A
triggerall=command !="holddown"
triggerall=command !="holdfwd"
triggerall = P2bodyDist X < 10
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;2nd Close C
[State -1]
type = ChangeState
value = 225
triggerall=command="c"
triggerall = statetype != A
triggerall=command !="holddown"
triggerall = P2bodyDist X > 10
triggerall = P2bodyDist X < 50
trigger1 = statetype = S
trigger1 = ctrl = 1
;------------------------------------------------------------------------
;crouch attacks
;------------------------------------------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 400
triggerall=command="a"
triggerall = statetype != A
triggerall=command="holddown"
triggerall = statetype != A
triggerall = statetype = C
trigger1 = ctrl = 1
;------------------------------------------------------------------------
;Crouch_b
[State -1]
type = ChangeState
value = 410
triggerall=command="b"
triggerall=command="holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl = 1
;------------------------------------------------------------------------
;Crouch_c
[State -1]
type = ChangeState
value = 420
triggerall=command="c"
triggerall=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
;------------------------------------------------------------------------
;Crouch_x
[State -1]
type = ChangeState
value = 430
triggerall=command="x"
triggerall=command="holddown"
triggerall = statetype = C
trigger1 = ctrl = 1
;------------------------------------------------------------------------
;Crouch_y
[State -1]
type = ChangeState
value = 440
triggerall=command="y"
trigger1=command="holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger3 = stateno = 99
trigger3 = ctrl = 0
trigger2 = stateno = 299
trigger2 = ctrl = 0
;------------------------------------------------------------------------
;Crouch_z
[State -1]
type = ChangeState
value = 98
triggerall = statetype != A
triggerall = ctrl = 1
trigger1=command="downfwd_z"
trigger2=command="z"
trigger2=command="holddown"
trigger2=command !="downback_z"
;------------------------------------------------------------------------
;Crouch_z 2
[State -1]
triggerall = statetype != A
type = ChangeState
value = 298
triggerall=command="downback_z"
trigger1 = ctrl = 1
;------------------------------------------------------------------------
;jump Attack
;--------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
trigger1=command="a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2=command="a"
trigger2 = stateno = 600 
trigger2 = statetime >= 6
;---------------------------------------------------------------------------
;Jump_B
[State -1]
type = ChangeState
value = 610
trigger1=command="b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2=command="b"
trigger2 = stateno = 600 
;---------------------------------------------------------------------------
;Jump_c
[State -1]
type = ChangeState
value = 620
trigger1=command="c"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_X
[State -1]
type = ChangeState
value = 630
trigger1=command="x"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_Y
[State -1]
type = ChangeState
value = 640
trigger1=command="y"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_z
[State -1]
type = ChangeState
value = 660
trigger1=command="z"
trigger1 = statetype = A
trigger1 = ctrl = 1


;Dodge
;[State -1]
;type = ChangeState
;value = 278
;triggerall=command="y"
;triggerall=command !="holddown"
;triggerall=command !="holdback"
;triggerall=command !="holdfwd"
;trigger1 = stateno = 0




















































































































































