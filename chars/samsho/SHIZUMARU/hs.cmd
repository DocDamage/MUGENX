

;-| Super Motions |--------------------------------------------------------

[Command]
name = "sp2x"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "sp2y"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "sp2z"
command = ~D, DF, F, D, DF, F, z
time = 30

[Command]
name = "sp2c"
command = ~D, DF, F, D, DF, F, c
time = 30

[Command]
name = "sp5x"
command = ~D, DB, B, D, DB, B, x
time = 30

[Command]
name = "sp5y"
command = ~D, DB, B, D, DB, B, y
time = 30

[Command]
name = "sp5z"
command = ~D, DB, B, D, DB, B, z
time = 30

[Command]
name = "sp5c"
command = ~D, DB, B, D, DB, B, c
time = 30

[Command]
name = "sp9x"
command = ~B, F, B, F, x
time = 30

[Command]
name = "sp9y"
command = ~B, F, B, F, y
time = 30

[Command]
name = "sp9z"
command = ~B, F, B, F, z
time = 30

[Command]
name = "sp9c"
command = ~B, F, B, F, c
time = 30

;-| Special Motions |------------------------------------------------------
;-----------------

[Command]
name = "sp1x"
command = ~D, DF, F, x

[Command]
name = "sp1y"
command = ~D, DF, F, y

[Command]
name = "sp1z"
command = ~D, DF, F, z

[Command]
name = "sp3x"
command = ~B, D, DB, x

[Command]
name = "sp3y"
command = ~B, D, DB, y

[Command]
name = "sp3z"
command = ~B, D, DB, z

[Command]
name = "sp4x"
command = ~F, D, DF, x

[Command]
name = "sp4y"
command = ~F, D, DF, y

[Command]
name = "sp4z"
command = ~F, D, DF, z

[Command]
name = "sp6"
command = /$D, c

[Command]
name = "sp6f"
command = /F

[Command]
name = "sp6b"
command = /B

[Command]
name = "sp7"
command = /U, c

[Command]
name = "sp7f"
command = /F

[Command]
name = "sp7b"
command = /B

[Command]
name = "sp7d"
command = /D

[Command]
name = "sp7u"
command = /U, U

[Command]
name = "sp7hf"
command = /F, c

[Command]
name = "sp7hb"
command = /B, c

[Command]
name = "sp8x"
command = ~D, DB, B, x

[Command]
name = "sp8y"
command = ~D, DB, B, y

[Command]
name = "sp8z"
command = ~D, DB, B, z

[Command]
name = "sp10"
command = ~F, D, DF, c

[Command]
name = "sp11"
command = ~D, DB, B, c

[Command]
name = "sp12"
command = /F, x+y

[Command]
name = "sp13"
command = x+y

[Command]
name = "sp14x"
command = ~B, F, x

[Command]
name = "sp14y"
command = ~B, F, y

[Command]
name = "sp14z"
command = ~B, F, z

[Command]
name = "sp14c"
command = ~B, F, c

[Command]
name = "sp14-1"
command = ~B, UB, UF, c

[Command]
name = "sp14-2"
command = ~B, U, UB, c

[Command]
name = "sp14-3"
command = ~B, UF, UB, c

[Command]
name = "sp14-4"
command = ~B, U, UF, c

[Command]
name = "sp14-5"
command = ~UB, UF, U, UB, c

[Command]
name = "sp14-6"
command = ~UF, UB, U, UF, c

[Command]
name = "sp14-7"
command = ~DB, UF, DB, UB, c

[Command]
name = "sp14-8"
command = ~DF, UB, DB, UF, c

[Command]
name = "sp14-9"
command = ~UB, DF, UB, DB, c

[Command]
name = "sp14-10"
command = ~UF, DB, UB, DF, c

[Command]
name = "sp14-11"
command = ~UB, DB, UB, DF, c

[Command]
name = "sp14-12"
command = ~UF, DB, UF, DF, c

[Command]
name = "sp14-13"
command = ~UF, DB, UB, DB, c

[Command]
name = "sp14-14"
command = ~UF, DF, UB, DF, c

[Command]
name = "sp14-15"
command = ~UF, DB, UF, DB, c

[Command]
name = "sp14-16"
command = ~UF, UF, UF, DB, c

[Command]
name = "3kick"
command = /$DF, c

[Command]
name = "2kick"
command = /$D, c

[Command]
name = "6kick"
command = /$F, c
time = 1


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"       ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"       ;Required (do not remove)
command = B, B
time = 10


;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------

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
name = "fwd_c"
command = /F,c
time = 1


;-| Single Button |---------------------------------------------------------

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


;---------------------------------------------------------------

;sp14x?????
[State -1]
type = ChangeState
value = 2400
triggerall = command = "sp14x"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;sp14y?????
[State -1]
type = ChangeState
value = 2400
triggerall = command = "sp14y"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;sp14z?????
[State -1]
type = ChangeState
value = 2400
triggerall = command = "sp14z"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;sp14c?????
[State -1]
type = ChangeState
value = 2400
triggerall = command = "sp14c"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;sp14?????
[State -1]
type = ChangeState
value = 2400
triggerall = command = "sp14-1"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;sp14?????
[State -1]
type = ChangeState
value = 2400
triggerall = command = "sp14-2"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;sp14?????
[State -1]
type = ChangeState
value = 2400
triggerall = command = "sp14-3"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;sp14?????
[State -1]
type = ChangeState
value = 2400
triggerall = command = "sp14-4"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;sp14?????
[State -1]
type = ChangeState
value = 2400
triggerall = command = "sp14-5"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;sp14?????
[State -1]
type = ChangeState
value = 2400
triggerall = command = "sp14-6"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;sp14?????
[State -1]
type = ChangeState
value = 2400
triggerall = command = "sp14-7"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;sp14?????
[State -1]
type = ChangeState
value = 2400
triggerall = command = "sp14-8"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;sp14?????
[State -1]
type = ChangeState
value = 2400
triggerall = command = "sp14-9"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;sp14?????
[State -1]
type = ChangeState
value = 2400
triggerall = command = "sp14-10"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;sp14?????
[State -1]
type = ChangeState
value = 2400
triggerall = command = "sp14-11"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;sp14?????
[State -1]
type = ChangeState
value = 2400
triggerall = command = "sp14-12"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;sp14?????
[State -1]
type = ChangeState
value = 2400
triggerall = command = "sp14-13"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;sp14?????
[State -1]
type = ChangeState
value = 2400
triggerall = command = "sp14-14"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;sp14?????
[State -1]
type = ChangeState
value = 2400
triggerall = command = "sp14-15"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;sp14?????
[State -1]
type = ChangeState
value = 2400
triggerall = command = "sp14-16"
triggerall = power >= 500
trigger1 = stateno >= 150
trigger1 = stateno <= 153

;------------------------------------------------

;sp2xãn¤M¬y¸TÆþ¤â ¼É«B¨g­·±Ù
[State -1]
type = ChangeState
value = 1200
triggerall = command = "sp2x"
triggerall = power >= 1000
triggerall = NumHelper(1500) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger12 = stateno = 350
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1
trigger19 = stateno = 2400
trigger19 = movecontact = 1

;sp2yãn¤M¬y¸TÆþ¤â ¼É«B¨g­·±Ù
[State -1]
type = ChangeState
value = 1200
triggerall = command = "sp2y"
triggerall = power >= 1000
triggerall = NumHelper(1500) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger12 = stateno = 350
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1
trigger19 = stateno = 2400
trigger19 = movecontact = 1

;sp2zãn¤M¬y¸TÆþ¤â ¼É«B¨g­·±Ù
[State -1]
type = ChangeState
value = 1200
triggerall = command = "sp2z"
triggerall = power >= 1000
triggerall = NumHelper(1500) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger12 = stateno = 350
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1
trigger19 = stateno = 2400
trigger19 = movecontact = 1

;sp2cãn¤M¬y¸TÆþ¤â ¼É«B¨g­·±Ù
[State -1]
type = ChangeState
value = 1200
triggerall = command = "sp2c"
triggerall = power >= 1000
triggerall = NumHelper(1500) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger12 = stateno = 350
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1
trigger19 = stateno = 2400
trigger19 = movecontact = 1
;---------------------------------------------------

;sp5xãn¤M¬y¸TÆþ¤â «B¬yµõ±þ¤b
[State -1]
type = ChangeState
value = 1500
triggerall = command = "sp5x"
triggerall = power >= 1000
triggerall = numhelper = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger12 = stateno = 350
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1
trigger19 = stateno = 2400
trigger19 = movecontact = 1

;sp5yãn¤M¬y¸TÆþ¤â «B¬yµõ±þ¤b
[State -1]
type = ChangeState
value = 1500
triggerall = command = "sp5y"
triggerall = power >= 1000
triggerall = numhelper = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger12 = stateno = 350
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1
trigger19 = stateno = 2400
trigger19 = movecontact = 1

;sp5zãn¤M¬y¸TÆþ¤â «B¬yµõ±þ¤b
[State -1]
type = ChangeState
value = 1500
triggerall = command = "sp5z"
triggerall = power >= 1000
triggerall = numhelper = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger12 = stateno = 350
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1
trigger19 = stateno = 2400
trigger19 = movecontact = 1

;sp5cãn¤M¬y¸TÆþ¤â «B¬yµõ±þ¤b
[State -1]
type = ChangeState
value = 1500
triggerall = command = "sp5c"
triggerall = power >= 1000
triggerall = numhelper = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger12 = stateno = 350
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1
trigger19 = stateno = 2400
trigger19 = movecontact = 1
;---------------------------------------------------------
;sp9xãn¤M¬y ¯u«B¬y¨g¸¨±Ù
[State -1]
type = ChangeState
value = 1900
triggerall = command = "sp9x"
triggerall = power >= 1000
triggerall = NumHelper(1500) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger12 = stateno = 350
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1
trigger19 = stateno = 2400
trigger19 = movecontact = 1

;sp9yãn¤M¬y ¯u«B¬y¨g¸¨±Ù
[State -1]
type = ChangeState
value = 1900
triggerall = command = "sp9y"
triggerall = power >= 1000
triggerall = NumHelper(1500) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger12 = stateno = 350
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1
trigger19 = stateno = 2400
trigger19 = movecontact = 1

;sp9zãn¤M¬y ¯u«B¬y¨g¸¨±Ù
[State -1]
type = ChangeState
value = 1900
triggerall = command = "sp9z"
triggerall = power >= 1000
triggerall = NumHelper(1500) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger12 = stateno = 350
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1
trigger19 = stateno = 2400
trigger19 = movecontact = 1

;sp9cãn¤M¬y ¯u«B¬y¨g¸¨±Ù
[State -1]
type = ChangeState
value = 1900
triggerall = command = "sp9c"
triggerall = power >= 1000
triggerall = NumHelper(1500) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger12 = stateno = 350
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1
trigger19 = stateno = 2400
trigger19 = movecontact = 1

;-----------------------------------------------------


;-----------------------------------------------------

;sp10ãn¤M¬y ¦B«BªðÆý
[State -1]
type = ChangeState
value = 2000
triggerall = command = "sp10"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger12 = stateno = 350
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1

;-----------------------------------------------------
;sp11·íÇM¨­
[State -1]
type = ChangeState
value = 2100
triggerall = command = "sp11"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger12 = stateno = 350
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1

;-----------------------------------------------------------

;sp6ãn¤M¬y ®É«B
[State -1]
type = ChangeState
value = 1600
triggerall = command = "sp6"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 310
trigger3 = movecontact = 1
trigger4 = stateno = 410
trigger4 = movecontact = 1

[State -1]
type = ChangeState
value = 1700
triggerall = stateno = 1600
triggerall = time >= 0
trigger1 = command = "sp7"

[State -1]
type = ChangeState
value = 1700
triggerall = stateno = 1630
triggerall = time >= 0
trigger1 = command = "sp7"

;go-f
[State -1]
type = ChangeState
value = 1640
triggerall = command = "sp6f"
trigger1 = stateno = 1630

[State -1]
type = ChangeState
value = 1700
triggerall = stateno = 1640
triggerall = time >= 0
trigger1 = command = "sp7"

;go-b
[State -1]
type = ChangeState
value = 1650
triggerall = command = "sp6b"
trigger1 = stateno = 1630

[State -1]
type = ChangeState
value = 1700
triggerall = stateno = 1650
triggerall = time >= 0
trigger1 = command = "sp7"

;-------------------------------------------------------
;sp7ãn¤M¬y ¤p«B
[State -1]
type = ChangeState
value = 1700
triggerall = command = "sp7"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact = 1
trigger3 = stateno = 310
trigger3 = movecontact = 1
trigger4 = stateno = 410
trigger4 = movecontact = 1
trigger5 = stateno = 510
trigger5 = movecontact = 1

;go-f
[State -1]
type = ChangeState
value = 1710
triggerall = command = "sp7f"
trigger1 = stateno = 1700
trigger2 = stateno = 1720
trigger3 = stateno = 1730
trigger4 = stateno = 1740

;go-b
[State -1]
type = ChangeState
value = 1720
triggerall = command = "sp7b"
trigger1 = stateno = 1700
trigger2 = stateno = 1710
trigger3 = stateno = 1730
trigger4 = stateno = 1740

;go-d
[State -1]
type = ChangeState
value = 1730
triggerall = command = "sp7d"
trigger1 = stateno = 1700
trigger2 = stateno = 1710
trigger3 = stateno = 1720
trigger4 = stateno = 1740

;go-u
[State -1]
type = ChangeState
value = 1740
triggerall = command = "sp7u"
trigger1 = stateno = 1700
trigger2 = stateno = 1710
trigger3 = stateno = 1720
trigger4 = stateno = 1730

;hitf
[State -1]
type = ChangeState
value = 1760
triggerall = command = "sp7hf"
trigger1 = stateno = 1700
trigger2 = stateno = 1710
trigger3 = stateno = 1720
trigger4 = stateno = 1730
trigger5 = stateno = 1740

;hitb
[State -1]
type = ChangeState
value = 1770
triggerall = command = "sp7hb"
trigger1 = stateno = 1700
trigger2 = stateno = 1710
trigger3 = stateno = 1720
trigger4 = stateno = 1730
trigger5 = stateno = 1740

;---------------------------------------------------

;sp4xãn¤M¬y ±ö«B¶ê±þ°}
[State -1]
type = ChangeState
value = 1400
triggerall = command = "sp4x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger12 = stateno = 350
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1

;---------------------------------------------------

;sp4yãn¤M¬y ±ö«B¶ê±þ°}
[State -1]
type = ChangeState
value = 1401
triggerall = command = "sp4y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger12 = stateno = 350
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1

;---------------------------------------------------------

;sp4zãn¤M¬y ±ö«B¶ê±þ°}
[State -1]
type = ChangeState
value = 1402
triggerall = command = "sp4z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger12 = stateno = 350
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1

;---------------------------------------------------------
;sp1xãn¤M¬y Ãú«B¤b¡E»¨«B
[State -1]
type = ChangeState
value = 1100
triggerall = command = "sp1x"
triggerall = numhelper = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 520
trigger11= movecontact = 1
trigger12 = stateno = 530
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1

;-----------------------------------------------------------

;sp1yãn¤M¬y Ãú«B¤b¡E»¨«B
[State -1]
type = ChangeState
value = 1101
triggerall = command = "sp1y"
triggerall = numhelper = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 520
trigger11= movecontact = 1
trigger12 = stateno = 530
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1

;-----------------------------------------------------------

;sp1zãn¤M¬y Ãú«B¤b¡E»¨«B
[State -1]
type = ChangeState
value = 1102
triggerall = command = "sp1z"
triggerall = numhelper = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 520
trigger11= movecontact = 1
trigger12 = stateno = 530
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1

;-------------------------------------------------------

;sp3xãn¤M¬y «B¬y¨g¸¨±Ù
[State -1]
type = ChangeState
value = 1300
triggerall = command = "sp3x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger12 = stateno = 350
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1

;sp3yãn¤M¬y «B¬y¨g¸¨±Ù
[State -1]
type = ChangeState
value = 1301
triggerall = command = "sp3y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger12 = stateno = 350
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1

;sp3zãn¤M¬y «B¬y¨g¸¨±Ù
[State -1]
type = ChangeState
value = 1302
triggerall = command = "sp3z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger12 = stateno = 350
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1

;---------------------------------------------------
;sp8xãn¤M¬y ¤­¤ë«B±ÙÇq
[State -1]
type = ChangeState
value = 1800
triggerall = command = "sp8x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger12 = stateno = 350
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1

;sp8yãn¤M¬y ¤­¤ë«B±ÙÇq
[State -1]
type = ChangeState
value = 1801
triggerall = command = "sp8y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger12 = stateno = 350
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1

;sp8zãn¤M¬y ¤­¤ë«B±ÙÇq
[State -1]
type = ChangeState
value = 1802
triggerall = command = "sp8z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger12 = stateno = 350
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1

;---------------------------------------------
;sp12¦^Çq¤JÇf   
[State -1]
type = ChangeState
value = 2200
triggerall = command = "sp12"
triggerall = p2bodydist x <= 30
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger12 = stateno = 350
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1

;----------------------------------------------------------

;sp13Á×Æ÷
[State -1]
type = ChangeState
value = 2300
triggerall = command = "sp13"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = !command = "holddown"
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1
trigger5 = stateno = 320
trigger5 = movecontact = 1
trigger6 = stateno = 330
trigger6 = movecontact = 1
trigger7 = stateno = 340
trigger7 = movecontact = 1
trigger8 = stateno = 420
trigger8 = movecontact = 1
trigger9 = stateno = 430
trigger9 = movecontact = 1
trigger10 = stateno = 440
trigger10 = movecontact = 1
trigger11 = stateno = 250
trigger11 = movecontact = 1
trigger12 = stateno = 350
trigger12 = movecontact = 1
trigger13 = stateno = 520
trigger13 = movecontact = 1
trigger14 = stateno = 530
trigger14 = movecontact = 1
trigger15 = stateno = 540
trigger15 = movecontact = 1
trigger16 = stateno = 550
trigger16 = movecontact = 1
trigger17 = stateno = 450
trigger17 = movecontact = 1
trigger18 = stateno = 560
trigger18 = movecontact = 1

;sp13Á×Æ÷°{¥´
[State -1]
type = ChangeState
value = 240
triggerall = stateno = 2300
triggerall = time >= 0
trigger1 = command = "x"

[State -1]
type = ChangeState
value = 340
triggerall = stateno = 2300
triggerall = time >= 0
trigger1 = command = "y"

[State -1]
type = ChangeState
value = 440
triggerall = stateno = 2300
triggerall = time >= 0
trigger1 = command = "z"


;-----------------------------------------------------------

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

;---------------------------------------------------------------------------



;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------

;--------------------------------------------------
;dashx
[State -1]
type = ChangeState
value = 250
triggerall = command = "fwd_x"
triggerall = !command = "holddown"
trigger1 = stateno = 100
trigger1 = ctrl = 1

;dashy
[State -1]
type = ChangeState
value = 350
triggerall = command = "fwd_y"
triggerall = !command = "holddown"
trigger1 = stateno = 100
trigger1 = ctrl = 1

;dashz
[State -1]
type = ChangeState
value = 450
triggerall = command = "fwd_z"
triggerall = !command = "holddown"
trigger1 = stateno = 100
trigger1 = ctrl = 1

;dashc
[State -1]
type = ChangeState
value = 560
triggerall = command = "fwd_c"
triggerall = !command = "holddown"
trigger1 = stateno = 100
trigger1 = ctrl = 1

;-------------------------------------------------------

; Standing light punch (near)
[State -1]
type = ChangeState
value = 240
triggerall = command = "x"
triggerall = p2bodydist x <= 25
triggerall = !command = "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 250
trigger5 = movecontact = 1
trigger6 = stateno = 350
trigger6 = movecontact = 1
trigger7 = stateno = 450
trigger7 = movecontact = 1
trigger8 = stateno = 560
trigger8 = movecontact = 1

; Standing light punch (far)
[State -1]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = !command = "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1
trigger4 = stateno = 250
trigger4 = movecontact = 1
trigger5 = stateno = 350
trigger5 = movecontact = 1
trigger6 = stateno = 450
trigger6 = movecontact = 1
trigger7 = stateno = 560
trigger7 = movecontact = 1

;-------------------------------------------------

; Standing middle punch (near)
[State -1]
type = ChangeState
value = 340
triggerall = command = "y"
triggerall = p2bodydist x <= 25
triggerall = !command = "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 250
trigger5 = movecontact = 1
trigger6 = stateno = 350
trigger6 = movecontact = 1
trigger7 = stateno = 450
trigger7 = movecontact = 1
trigger8 = stateno = 560
trigger8 = movecontact = 1

; Standing middle punch (far)
[State -1]
type = ChangeState
value = 330
triggerall = command = "y"
triggerall = !command = "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1
trigger4 = stateno = 250
trigger4 = movecontact = 1
trigger5 = stateno = 350
trigger5 = movecontact = 1
trigger6 = stateno = 450
trigger6 = movecontact = 1
trigger7 = stateno = 560
trigger7 = movecontact = 1

;-----------------------------------------------------------------

; Standing stong punch (near)
[State -1]
type = ChangeState
value = 440
triggerall = command = "z"
triggerall = p2bodydist x <= 60
triggerall = !command = "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1
trigger4 = stateno = 320
trigger4 = movecontact = 1
trigger5 = stateno = 340
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = movecontact = 1
trigger7 = stateno = 330
trigger7 = movecontact = 1
trigger8 = stateno = 250
trigger8 = movecontact = 1
trigger9 = stateno = 350
trigger9 = movecontact = 1
trigger10 = stateno = 450
trigger10 = movecontact = 1
trigger11 = stateno = 560
trigger11 = movecontact = 1

; Standing stong punch (far)
[State -1]
type = ChangeState
value = 430
triggerall = command = "z"
triggerall = !command = "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240
trigger2= movecontact = 1
trigger3 = stateno = 340
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 330
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 350
trigger7 = movecontact = 1
trigger8 = stateno = 450
trigger8 = movecontact = 1
trigger9 = stateno = 560
trigger9 = movecontact = 1

;---------------------------------------------------------------------------

;Crouch light punch
[State -1]
type = ChangeState
value = 220
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 250
trigger5 = movecontact = 1
trigger6 = stateno = 350
trigger6 = movecontact = 1
trigger7 = stateno = 450
trigger7 = movecontact = 1
trigger8 = stateno = 560
trigger8 = movecontact = 1

;---------------------------------------------------------------------------

;Crouch middle punch
[State -1]
type = ChangeState
value = 320
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1
trigger5 = stateno = 250
trigger5 = movecontact = 1
trigger6 = stateno = 350
trigger6 = movecontact = 1
trigger7 = stateno = 450
trigger7 = movecontact = 1
trigger8 = stateno = 560
trigger8 = movecontact = 1

;----------------------------------------------

;Crouch stong punch
[State -1]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1
trigger4 = stateno = 320
trigger4 = movecontact = 1
trigger5 = stateno = 340
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = movecontact = 1
trigger7 = stateno = 330
trigger7 = movecontact = 1
trigger8 = stateno = 250
trigger8 = movecontact = 1
trigger9 = stateno = 350
trigger9 = movecontact = 1
trigger10 = stateno = 450
trigger10 = movecontact = 1
trigger11 = stateno = 560
trigger11 = movecontact = 1

;---------------------------------------------------------------------------
;Jump light punch
[State -1]
type = ChangeState
value = 210
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump middle punch
[State -1]
type = ChangeState
value = 310
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

;--------------------------------------------------

;Jump stong punch
[State -1]
type = ChangeState
value = 410
trigger1 = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1

;-----------------------------------------------------------
; Jump kick
[State -1]
type = ChangeState
value = 510
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1

; 3 kick
[State -1]
type = ChangeState
value = 520
triggerall = command = "3kick"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1
trigger4 = stateno = 320
trigger4 = movecontact = 1
trigger5 = stateno = 340
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = movecontact = 1
trigger7 = stateno = 330
trigger7 = movecontact = 1
trigger8 = stateno = 250
trigger8 = movecontact = 1
trigger9 = stateno = 350
trigger9 = movecontact = 1
trigger10 = stateno = 450
trigger10 = movecontact = 1
trigger11 = stateno = 560
trigger11 = movecontact = 1

; 2 kick
[State -1]
type = ChangeState
value = 530
triggerall = command = "2kick"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1
trigger4 = stateno = 320
trigger4 = movecontact = 1
trigger5 = stateno = 340
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = movecontact = 1
trigger7 = stateno = 330
trigger7 = movecontact = 1
trigger8 = stateno = 530
trigger8 = movecontact = 1
trigger9 = stateno = 250
trigger9 = movecontact = 1
trigger10 = stateno = 350
trigger10 = movecontact = 1
trigger11 = stateno = 450
trigger11 = movecontact = 1
trigger12 = stateno = 560
trigger12 = movecontact = 1

; 6 kick
[State -1]
type = ChangeState
value = 550
triggerall = command = "6kick"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1
trigger4 = stateno = 320
trigger4 = movecontact = 1
trigger5 = stateno = 340
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = movecontact = 1
trigger7 = stateno = 330
trigger7 = movecontact = 1
trigger8 = stateno = 550
trigger8 = movecontact = 1
trigger9 = stateno = 250
trigger9 = movecontact = 1
trigger10 = stateno = 350
trigger10 = movecontact = 1
trigger11 = stateno = 450
trigger11 = movecontact = 1
trigger12 = stateno = 560
trigger12 = movecontact = 1

;5 kick
[State -1]
type = ChangeState
value = 540
triggerall = command = "c"
triggerall = !command = "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact = 1
trigger3 = stateno = 240
trigger3 = movecontact = 1
trigger4 = stateno = 320
trigger4 = movecontact = 1
trigger5 = stateno = 340
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = movecontact = 1
trigger7 = stateno = 330
trigger7 = movecontact = 1
trigger8 = stateno = 250
trigger8 = movecontact = 1
trigger9 = stateno = 350
trigger9 = movecontact = 1
trigger10 = stateno = 450
trigger10 = movecontact = 1
trigger11 = stateno = 560
trigger11 = movecontact = 1

;--------------------------------------------------------
;spspspspspspspspspspspspspspspspspspspspspspspspspspspsp
;---------------------------------------------------------

