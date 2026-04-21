

;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;


[Command]
name = "cho_a"
command = ~D, B, D, F, a
time = 25


[Command]
name = "cho_b"
command = ~D, B, D, F, b
time = 25


[Command]
name = "cho_c"
command = ~D, B, D, F, c
time = 25


[Command]
name = "cho_c"
command = ~D, B, D, F, a+b
time = 25



[Command]
name = "cho_x"
command = ~D, F, D, F, x
time = 25


[Command]
name = "cho_y"
command = ~D, F, D, F, y
time = 25


[Command]
name = "cho_z"
command = ~D, F, D, F, x+y
time = 25


[Command]
name = "cho_z"
command = ~D, F, D, F, c
time = 25


[Command]
name = "DBDB_x"
command = ~D, B, D, B, x
time= 25

[Command]
name = "DBDB_y"
command = ~D, B, D, B, y
time= 25


[Command]
name = "DBDB_z"
command = ~D, B, D, B, x+y
time= 25


[Command]
name = "DBDB_z"
command = ~D, B, D, B, c
time= 25



;-| Special Motions |------------------------------------------------------




[Command]
name = "hold_x"
command = ~50$D,$U, x
time = 20


[Command]
name = "hold_y"
command = ~50$D,$U, y
time = 20


[Command]
name = "hold_a"
command = ~50$D,$U, a
time = 20


[Command]
name = "hold_b"
command = ~50$D,$U, b
time = 20


[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y


[Command]
name = "DB_x"
command = ~D, B, x

[Command]
name = "DB_y"
command = ~D, B, y


[Command]
name = "DF_a"
command = ~B, D, F, a
time = 20

[Command]
name = "DF_b"
command = ~B, D, F, b
time = 20


[Command]
name = "DB_a"
command = ~D, B, a

[Command]
name = "DB_b"
command = ~D, B, b


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
name = "HighJump"
command = D, $U
time = 18


[Command]
name = "jump"
command = /F
time = 1

[Command]
name = "groggyrecover"
command = F,B
time = 20


;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "recovery"
command = z
time = 1


[Command]
name = "chargea"
command = /a
time = 1

[Command]
name = "charge1"
command = /b
time = 1

[Command]
name = "chargec"
command = /c
time = 1

[Command]
name = "charge2"
command = /y
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

[State -1];»ï°¢¸ñÇÁ
type = ChangeState
value = 148
Triggerall = backEdgeDist < 5
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = stateno != 148
trigger1 = command = "jump"


[State -1]
type = ChangeState
value = 1600
triggerall = Command = "hold_x"
triggerall = StateType != A
trigger1 = Ctrl = 1
trigger2 = StateNo = 40 && !MoveType = H



[State -1]
type = ChangeState
value = 1650
triggerall = Command = "hold_y"
triggerall = StateType != A
trigger1 = Ctrl = 1
trigger2 = StateNo = 40 && !MoveType = H


; Áø È«ÇÐÀÇ Ãã
[State -1]
type = ChangeState
value = 6150
triggerall =command = "DBDB_z"& power >= 3000
triggerall = StateType = A
trigger1 = Ctrl = 1 
trigger2 = StateNo = 1510 && AnimElemTime(1) >= 0|| StateNo = 1560 && AnimElemTime(1) >= 0
trigger3 = StateNo = 1630 && AnimElemTime(1) >= 0|| StateNo = 1680 && AnimElemTime(1) >= 0
trigger4 = StateNo = 6010 && AnimElemTime(1) >= 0|| StateNo = 6110 && AnimElemTime(1) >= 0|| StateNo = 6160 && AnimElemTime(1) >= 0
trigger5 = (stateno = [600,699])
trigger6 = StateNo = 3010 && AnimElemTime(1) >= 0|| StateNo = 3510 && AnimElemTime(1) >= 0|| StateNo = 3710 && AnimElemTime(1) >= 0
trigger7 = StateNo = 1310 && AnimElemTime(1) >= 0|| StateNo = 1360 && AnimElemTime(1) >= 0
trigger8 = StateNo = 210 && AnimElemTime(1) >= 0|| StateNo = 410 && AnimElemTime(1) >= 0
trigger9 = stateno = 1800 && AnimElemTime(1) >= 0||stateno = 1850 && AnimElemTime(1) >= 10
trigger9 = movecontact = 1


; °­ È«ÇÐÀÇ Ãã
[State -1]
type = ChangeState
value = 6100
triggerall =command = "DBDB_y"& power >= 2000
triggerall = StateType = A
trigger1 = Ctrl = 1 
trigger2 = StateNo = 1510 && AnimElemTime(1) >= 0|| StateNo = 1560 && AnimElemTime(1) >= 0
trigger3 = StateNo = 1630 && AnimElemTime(1) >= 0|| StateNo = 1680 && AnimElemTime(1) >= 0
trigger4 = StateNo = 6010 && AnimElemTime(1) >= 0|| StateNo = 6110 && AnimElemTime(1) >= 0|| StateNo = 6160 && AnimElemTime(1) >= 0
trigger5 = (stateno = [600,699])
trigger6 = StateNo = 3010 && AnimElemTime(1) >= 0|| StateNo = 3510 && AnimElemTime(1) >= 0|| StateNo = 3710 && AnimElemTime(1) >= 0
trigger7 = StateNo = 1310 && AnimElemTime(1) >= 0|| StateNo = 1360 && AnimElemTime(1) >= 0
trigger8 = StateNo = 210 && AnimElemTime(1) >= 0|| StateNo = 410 && AnimElemTime(1) >= 0
trigger9 = stateno = 1800 && AnimElemTime(1) >= 0||stateno = 1850 && AnimElemTime(1) >= 10
trigger9 = movecontact = 1


; ¾à È«ÇÐÀÇ Ãã
[State -1]
type = ChangeState
value = 6000
triggerall =command = "DBDB_x"& power >= 1000
triggerall = StateType = A
trigger1 = Ctrl = 1 
trigger2 = StateNo = 1510 && AnimElemTime(1) >= 0|| StateNo = 1560 && AnimElemTime(1) >= 0
trigger3 = StateNo = 1630 && AnimElemTime(1) >= 0|| StateNo = 1680 && AnimElemTime(1) >= 0
trigger4 = StateNo = 6010 && AnimElemTime(1) >= 0|| StateNo = 6110 && AnimElemTime(1) >= 0|| StateNo = 6160 && AnimElemTime(1) >= 0
trigger5 = (stateno = [600,699])
trigger6 = StateNo = 3010 && AnimElemTime(1) >= 0|| StateNo = 3510 && AnimElemTime(1) >= 0|| StateNo = 3710 && AnimElemTime(1) >= 0
trigger7 = StateNo = 1310 && AnimElemTime(1) >= 0|| StateNo = 1360 && AnimElemTime(1) >= 0
trigger8 = StateNo = 210 && AnimElemTime(1) >= 0|| StateNo = 410 && AnimElemTime(1) >= 0
trigger9 = stateno = 1800 && AnimElemTime(1) >= 0||stateno = 1850 && AnimElemTime(1) >= 10
trigger9 = movecontact = 1

;------------------------------------------------------------------------
;Áø ÃÊÇÊ»ìÀÎºÀÀÌ
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 3700
triggerall = Command = "cho_c"&& power >= 3000
trigger1 = statetype != A && ctrl
trigger2 = StateNo = 1000 && (AnimElemTime(5) >= 0 && AnimElemTime(7) < 0)|| StateNo = 1050 && (AnimElemTime(5) >= 0 && AnimElemTime(7) < 0)
trigger3 = StateNo = 1200 && (AnimElemTime(2) >= 0 && AnimElemTime(6) < 0)|| StateNo = 1250 && (AnimElemTime(2) >= 0 && AnimElemTime(6) < 0)
trigger4 = StateNo = 1700 && (AnimElemTime(4) >= 0 && AnimElemTime(13) < 0)|| StateNo = 1750 && (AnimElemTime(4) >= 0 && AnimElemTime(13) < 0)
trigger5 = StateNo = 3005 || StateNo = 3505 || StateNo = 3705
trigger5 = time >= 0 
trigger6 = StateNo = 4000 && (AnimElemTime(5) >= 0 && AnimElemTime(15) < 0)|| StateNo = 4100 && (AnimElemTime(5) >= 0 && AnimElemTime(15) < 0)|| StateNo = 4200 && (AnimElemTime(5) >= 0 && AnimElemTime(15) < 0)
trigger7 = StateNo = 1300 && AnimElemTime(1) >= 0|| StateNo = 1350 && AnimElemTime(1) >= 0
trigger8 = StateNo = 210 && AnimElemTime(1) >= 0|| StateNo = 410 && AnimElemTime(1) >= 0
trigger9 = stateno = 1800 && AnimElemTime(1) >= 0||stateno = 1850 && AnimElemTime(1) >= 10
trigger9 = movecontact = 1

;------------------------------------------------------------------------
;ÃÊ ÇÊ»ì ÀÎºÀÀÌ
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 3500
triggerall = Command = "cho_b"&& power >= 2000
trigger1 = statetype != A && ctrl
trigger2 = StateNo = 1000 && (AnimElemTime(5) >= 0 && AnimElemTime(7) < 0)|| StateNo = 1050 && (AnimElemTime(5) >= 0 && AnimElemTime(7) < 0)
trigger3 = StateNo = 1200 && (AnimElemTime(2) >= 0 && AnimElemTime(6) < 0)|| StateNo = 1250 && (AnimElemTime(2) >= 0 && AnimElemTime(6) < 0)
trigger4 = StateNo = 1700 && (AnimElemTime(4) >= 0 && AnimElemTime(13) < 0)|| StateNo = 1750 && (AnimElemTime(4) >= 0 && AnimElemTime(13) < 0)
trigger5 = StateNo = 3005 || StateNo = 3505 || StateNo = 3705
trigger5 = time >= 0 
trigger6 = StateNo = 4000 && (AnimElemTime(5) >= 0 && AnimElemTime(15) < 0)|| StateNo = 4100 && (AnimElemTime(5) >= 0 && AnimElemTime(15) < 0)|| StateNo = 4200 && (AnimElemTime(5) >= 0 && AnimElemTime(15) < 0)
trigger7 = StateNo = 1300 && AnimElemTime(1) >= 0|| StateNo = 1350 && AnimElemTime(1) >= 0
trigger8 = StateNo = 210 && AnimElemTime(1) >= 0|| StateNo = 410 && AnimElemTime(1) >= 0
trigger9 = stateno = 1800 && AnimElemTime(1) >= 0||stateno = 1850 && AnimElemTime(1) >= 10
trigger9 = movecontact = 1

;------------------------------------------------------------------------
;ÇÊ»ì ÀÎºÀÀÌ
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = Command = "cho_a"&& power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = StateNo = 1000 && (AnimElemTime(5) >= 0 && AnimElemTime(7) < 0)|| StateNo = 1050 && (AnimElemTime(5) >= 0 && AnimElemTime(7) < 0)
trigger3 = StateNo = 1200 && (AnimElemTime(2) >= 0 && AnimElemTime(6) < 0)|| StateNo = 1250 && (AnimElemTime(2) >= 0 && AnimElemTime(6) < 0)
trigger4 = StateNo = 1700 && (AnimElemTime(4) >= 0 && AnimElemTime(13) < 0)|| StateNo = 1750 && (AnimElemTime(4) >= 0 && AnimElemTime(13) < 0)
trigger5 = StateNo = 3005 || StateNo = 3505 || StateNo = 3705
trigger5 = time >= 0 
trigger6 = StateNo = 4000 && (AnimElemTime(5) >= 0 && AnimElemTime(15) < 0)|| StateNo = 4100 && (AnimElemTime(5) >= 0 && AnimElemTime(15) < 0)|| StateNo = 4200 && (AnimElemTime(5) >= 0 && AnimElemTime(15) < 0)
trigger7 = StateNo = 1300 && AnimElemTime(1) >= 0|| StateNo = 1350 && AnimElemTime(1) >= 0
trigger8 = StateNo = 210 && AnimElemTime(1) >= 0|| StateNo = 410 && AnimElemTime(1) >= 0
trigger9 = stateno = 1800 && AnimElemTime(1) >= 0||stateno = 1850 && AnimElemTime(1) >= 10
trigger9 = movecontact = 1
;------------------------------------------------------------------------
;Áø ¹°»õÀÇ Ãã
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 4200
triggerall = Command = "cho_z"&& power >= 3000
trigger1 = statetype != A && ctrl
trigger2 = StateNo = 1000 && (AnimElemTime(5) >= 0 && AnimElemTime(7) < 0)|| StateNo = 1050 && (AnimElemTime(5) >= 0 && AnimElemTime(7) < 0)
trigger3 = StateNo = 1200 && (AnimElemTime(2) >= 0 && AnimElemTime(6) < 0)|| StateNo = 1250 && (AnimElemTime(2) >= 0 && AnimElemTime(6) < 0)
trigger4 = StateNo = 1700 && (AnimElemTime(4) >= 0 && AnimElemTime(13) < 0)|| StateNo = 1750 && (AnimElemTime(4) >= 0 && AnimElemTime(13) < 0)
trigger5 = StateNo = 3005 || StateNo = 3505 || StateNo = 3705
trigger5 = time >= 0 
trigger6 = StateNo = 4000 && (AnimElemTime(5) >= 0 && AnimElemTime(15) < 0)|| StateNo = 4100 && (AnimElemTime(5) >= 0 && AnimElemTime(15) < 0)|| StateNo = 4200 && (AnimElemTime(5) >= 0 && AnimElemTime(15) < 0)
trigger7 = StateNo = 1300 && AnimElemTime(1) >= 0|| StateNo = 1350 && AnimElemTime(1) >= 0
trigger8 = StateNo = 210 && AnimElemTime(1) >= 0|| StateNo = 410 && AnimElemTime(1) >= 0
trigger9 = stateno = 1800 && AnimElemTime(1) >= 0||stateno = 1850 && AnimElemTime(1) >= 10
trigger9 = movecontact = 1

;------------------------------------------------------------------------
;°­ ¹°»õÀÇ Ãã 
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 4100
triggerall = Command = "cho_y"&& power >= 2000
trigger1 = statetype != A && ctrl
trigger2 = StateNo = 1000 && (AnimElemTime(5) >= 0 && AnimElemTime(7) < 0)|| StateNo = 1050 && (AnimElemTime(5) >= 0 && AnimElemTime(7) < 0)
trigger3 = StateNo = 1200 && (AnimElemTime(2) >= 0 && AnimElemTime(6) < 0)|| StateNo = 1250 && (AnimElemTime(2) >= 0 && AnimElemTime(6) < 0)
trigger4 = StateNo = 1700 && (AnimElemTime(4) >= 0 && AnimElemTime(13) < 0)|| StateNo = 1750 && (AnimElemTime(4) >= 0 && AnimElemTime(13) < 0)
trigger5 = StateNo = 3005 || StateNo = 3505 || StateNo = 3705
trigger5 = time >= 0 
trigger6 = StateNo = 4000 && (AnimElemTime(5) >= 0 && AnimElemTime(15) < 0)|| StateNo = 4100 && (AnimElemTime(5) >= 0 && AnimElemTime(15) < 0)|| StateNo = 4200 && (AnimElemTime(5) >= 0 && AnimElemTime(15) < 0)
trigger7 = StateNo = 1300 && AnimElemTime(1) >= 0|| StateNo = 1350 && AnimElemTime(1) >= 0
trigger8 = StateNo = 210 && AnimElemTime(1) >= 0|| StateNo = 410 && AnimElemTime(1) >= 0
trigger9 = stateno = 1800 && AnimElemTime(1) >= 0||stateno = 1850 && AnimElemTime(1) >= 10
trigger9 = movecontact = 1

;------------------------------------------------------------------------
;¹°»õÀÇ Ãã 
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 4000
triggerall = Command = "cho_x"&& power >= 1000
trigger1 = statetype != A && ctrl
trigger2 = StateNo = 1000 && (AnimElemTime(5) >= 0 && AnimElemTime(7) < 0)|| StateNo = 1050 && (AnimElemTime(5) >= 0 && AnimElemTime(7) < 0)
trigger3 = StateNo = 1200 && (AnimElemTime(2) >= 0 && AnimElemTime(6) < 0)|| StateNo = 1250 && (AnimElemTime(2) >= 0 && AnimElemTime(6) < 0)
trigger4 = StateNo = 1700 && (AnimElemTime(4) >= 0 && AnimElemTime(13) < 0)|| StateNo = 1750 && (AnimElemTime(4) >= 0 && AnimElemTime(13) < 0)
trigger5 = StateNo = 3005 || StateNo = 3505 || StateNo = 3705
trigger5 = time >= 0 
trigger6 = StateNo = 4000 && (AnimElemTime(5) >= 0 && AnimElemTime(15) < 0)|| StateNo = 4100 && (AnimElemTime(5) >= 0 && AnimElemTime(15) < 0)|| StateNo = 4200 && (AnimElemTime(5) >= 0 && AnimElemTime(15) < 0)
trigger7 = StateNo = 1300 && AnimElemTime(1) >= 0|| StateNo = 1350 && AnimElemTime(1) >= 0
trigger8 = StateNo = 210 && AnimElemTime(1) >= 0|| StateNo = 410 && AnimElemTime(1) >= 0
trigger9 = stateno = 1800 && AnimElemTime(1) >= 0||stateno = 1850 && AnimElemTime(1) >= 10
trigger9 = movecontact = 1

;---------------------------------------------------------------------------
; ¾ç¿°¹«
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1700
triggerall = Command = "hold_a"
triggerall = StateType != A
trigger1 = Ctrl = 1
trigger2 = StateNo = 40 && !MoveType = H
trigger3 = StateNo = 210 && AnimElemTime(1) >= 0
trigger4 = StateNo = 210 && AnimElemTime(1) >= 0|| StateNo = 410 && AnimElemTime(1) >= 0

;---------------------------------------------------------------------------
; °­ ¾ç¿°¹«
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1750
triggerall = Command = "hold_b"
triggerall = StateType != A
trigger1 = Ctrl = 1
trigger2 = StateNo = 40 && !MoveType = H
trigger3 = StateNo = 210 && AnimElemTime(1) >= 0
trigger4 = StateNo = 210 && AnimElemTime(1) >= 0|| StateNo = 410 && AnimElemTime(1) >= 0

;---------------------------------------------------------------------------
;È¸ÇÇ
[State -1]
type = ChangeState
value = 870
triggerall = command = "recovery"
trigger1 = statetype = S 
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl

;---------------------------------------------------------------------------
;±â ÀúÃà
[State -1]
type = ChangeState
value = 818
triggerall = Power < 3000 && (command = "charge1" && command = "charge2")
trigger1 = statetype = S
trigger1 = ctrl



;---------------------------------------------------------------------------
;ka chou sen
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = numproj = 0 && command = "QCF_x" && command != "holddown"
trigger1 = statetype != A && ctrl
trigger2 = StateNo = 210 && AnimElemTime(1) >= 0|| StateNo = 410 && AnimElemTime(1) >= 0

;---------------------------------------------------------------------------
;Ka chou sen
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1050
triggerall = numproj = 0 && command = "QCF_y" && command != "holddown"
trigger1 = statetype != A && ctrl
trigger2 = StateNo = 210 && AnimElemTime(1) >= 0|| stateNo = 410 && AnimElemTime(1) >= 0


;---------------------------------------------------------------------------
;¼Ò¾ßÃµÁ¶
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1800
triggerall = numproj = 0 && command = "DB_a" && command != "holddown"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 730
trigger2 = movecontact = 1
trigger2 = stateno = 205
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = StateNo = 210 && AnimElemTime(1) >= 0|| StateNo = 410 && AnimElemTime(1) >= 0
trigger4 = movecontact = 1
trigger5 = stateno = 245
trigger5 = movecontact = 1


;---------------------------------------------------------------------------
;¼Ò¾ßÃµÁ¶
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1850
triggerall = numproj = 0 && command = "DB_b"  && command != "holddown"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 730
trigger2 = movecontact = 1
trigger2 = stateno = 205
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = StateNo = 210 && AnimElemTime(1) >= 0|| StateNo = 410 && AnimElemTime(1) >= 0
trigger4 = movecontact = 1
trigger5 = stateno = 245
trigger5 = movecontact = 1


;---------------------------------------------------------------------------
;¿ë¿°¹«
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1200
triggerall = numproj = 0 && command = "DB_x" && command != "holddown"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 730
trigger2 = movecontact = 1
trigger2 = stateno = 205
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = StateNo = 210 && AnimElemTime(1) >= 0|| StateNo = 410 && AnimElemTime(1) >= 0
trigger4 = movecontact = 1
trigger5 = stateno = 1800 && AnimElemTime(1) >= 10 ||stateno = 1850 && AnimElemTime(1) >= 10
trigger5 = movecontact = 1
;---------------------------------------------------------------------------
;¿ë¿°¹« °­
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1250
triggerall = numproj = 0 && command = "DB_y" && command != "holddown"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 205
trigger2 = movecontact = 1
trigger3 = stateno = 210
trigger3 = movecontact = 1
trigger4 = StateNo = 210 && AnimElemTime(1) >= 0|| StateNo = 410 && AnimElemTime(1) >= 0
trigger4 = movecontact = 1
trigger5 = stateno = 1800 && AnimElemTime(1) >= 10||stateno = 1850 && AnimElemTime(1) >= 10
trigger5 = movecontact = 1
;---------------------------------------------------------------------------
;ÇÊ»ìÀÎºÀÀÌ ¾à
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1300
triggerall = numproj = 0 && command = "DF_a" && command != "holddown"
trigger1 = statetype != A && ctrl
trigger2 = StateNo = 210 && AnimElemTime(1) >= 0|| StateNo = 410 && AnimElemTime(1) >= 0


;---------------------------------------------------------------------------
;ÇÊ»ìÀÎºÀÀÌ °­
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1350
triggerall = numproj = 0 && command = "DF_b" && command != "holddown"
trigger1 = statetype != A && ctrl
trigger2 = StateNo = 210 && AnimElemTime(1) >= 0
trigger3 = StateNo = 410 && AnimElemTime(1) >= 0

;---------------------------------------------------------------------
; ÀÚµ¿ ³¯´Ù¶÷Áã
[State -1]
type = ChangeState
value = 1500
triggerall =command = "DB_x"
triggerall = StateType = A
trigger1 = Ctrl = 1 
trigger2 = StateNo = 210 && AnimElemTime(1) >= 0
trigger3 = StateNo = 410 && AnimElemTime(1) >= 0


;---------------------------------------------------------------------
; ÀÚµ¿ ³¯´Ù¶÷Áã °­
[State -1]
type = ChangeState
value = 1550
triggerall =command = "DB_y"
triggerall = StateType = A
trigger1 = Ctrl = 1 
trigger2 = StateNo = 210 && AnimElemTime(1) >= 0
trigger2 = StateNo = 410 && AnimElemTime(1) >= 0

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;?ƒbƒVƒ…
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;Œã‘Þ?ƒbƒVƒ…
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl



;---------------------------------------------------------------------------
;Kung Fu Throw
;“Š‚°
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 101
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 8
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H




;---------------------------------------------------------------------------
;Kung Fu Throw
;“Š‚°
[State -1, Kung Fu Throw2]
type = ChangeState
value = 840
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 101
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 8
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H





;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;—§‚¿Žãƒpƒ“?
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x >= 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6


;---------------------------------------------------------------------------
;near Stand Light Punch
;—§‚¿Žãƒpƒ“?
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6


;---------------------------------------------------------------------------
;ex Stand Strong Punch
;—§‚¿‹­ƒpƒ“?
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "holdfwd" && Command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;------------------------------------------------------

;Stand Strong Punch
;—§‚¿‹­ƒpƒ“?
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6


;---------------------------------------------------------------------------
;Stand Strong Punch
;—§‚¿‹­ƒpƒ“?
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = stateno = 400
trigger4 = time > 6
trigger5 = stateno = 205
trigger5 = time > 6
trigger6 = stateno = 235
trigger6 = time > 6
trigger7 = stateno = 430
trigger7 = time > 6

;---------------------------------------------------------------------------
;Stand Light Kick
;—§‚¿ŽãƒLƒbƒN
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist x >= 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9


;---------------------------------------------------------------------------
;near Stand Light Kick
;—§‚¿ŽãƒLƒbƒN
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9


;---------------------------------------------------------------------------
;Standing Strong Kick
;—§‚¿‹­ƒLƒbƒN
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist x >= 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = stateno = 430
trigger4 = time > 6

;---------------------------------------------------------------------------
;near Standing Strong Kick
;—§‚¿‹­ƒLƒbƒN
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = stateno = 235
trigger4 = time > 6
trigger5 = stateno = 205
trigger5 = time > 6

;---------------------------------------------------------------------------
;Taunt
;’§”­
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;‚µ‚á‚ª‚ÝŽãƒpƒ“?
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time > 6
trigger3 = stateno = 430
trigger3 = time > 6

;---------------------------------------------------------------------------
;Crouching Strong Punch
;‚µ‚á‚ª‚Ý‹­ƒpƒ“?
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time > 6
trigger3 = stateno = 430
trigger3 = time > 6
;---------------------------------------------------------------------------
;Crouching Light Kick
;‚µ‚á‚ª‚ÝŽãƒLƒbƒN
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
;‚µ‚á‚ª‚Ý‹­ƒLƒbƒN
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
;Jump Light Punch
;‹ó’†Žãƒpƒ“?
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 600
;trigger2 = statetime >= 7

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
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick
;‹ó’†‹­ƒLƒbƒN
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact


