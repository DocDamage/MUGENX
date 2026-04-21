

;-| Super Motions |--------------------------------------------------------

[Command]
name = "sp07x"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "sp07y"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "sp07z"
command = ~D, DF, F, D, DF, F, z
time = 30

[Command]
name = "sp07c"
command = ~D, DF, F, D, DF, F, c
time = 30

[Command]
name = "sp10x"
command = ~D, DB, B, D, DB, B, x
time = 30

[Command]
name = "sp10y"
command = ~D, DB, B, D, DB, B, y
time = 30

[Command]
name = "sp10z"
command = ~D, DB, B, D, DB, B, z
time = 30

[Command]
name = "sp10c"
command = ~D, DB, B, D, DB, B, c
time = 30

[Command]
name = "sp09x"
command = ~B, F, B, F, x
time = 30

[Command]
name = "sp09y"
command = ~B, F, B, F, y
time = 30

[Command]
name = "sp09z"
command = ~B, F, B, F, z
time = 30

[Command]
name = "sp09c"
command = ~B, F, B, F, c
time = 30

;-| Special Motions |------------------------------------------------------
;-----------------

[Command]
name = "sp01x"
command = ~D, DF, F, x

[Command]
name = "sp01y"
command = ~D, DF, F, y

[Command]
name = "sp01z"
command = ~D, DF, F, z

[Command]
name = "sp02f"
command = ~D, DF, F, c

[Command]
name = "sp08x"
command = ~B, D, DB, x
time = 30

[Command]
name = "sp08y"
command = ~B, D, DB, y
time = 30

[Command]
name = "sp08z"
command = ~B, D, DB, z
time = 30

[Command]
name = "sp03x"
command = ~F, D, DF, x

[Command]
name = "sp03y"
command = ~F, D, DF, y

[Command]
name = "sp03z"
command = ~F, D, DF, z

[Command]
name = "sp05x"
command = ~D, DB, B, x

[Command]
name = "sp05y"
command = ~D, DB, B, y

[Command]
name = "sp05z"
command = ~D, DB, B, z

[Command]
name = "sp02b"
command = ~D, DB, B, c

[Command]
name = "sp06x"
command = ~B, F, x

[Command]
name = "sp06y"
command = ~B, F, y

[Command]
name = "sp06z"
command = ~B, F, z

[Command]
name = "counter1"
command = x+y

[Command]
name = "counter2"
command = y+z

[Command]
name = "counter3"
command = x+z

[Command]
name = "counter4"
command = x+c

[Command]
name = "counter5"
command = y+c

[Command]
name = "counter6"
command = z+c

[Command]
name = "counter7"
command = x+y+z

[Command]
name = "counter8"
command = y+z+c

[Command]
name = "counter9"
command = x+y+c

[Command]
name = "counter10"
command = x+z+c

[Command]
name = "counter11"
command = a+b

[Command]
name = "counter12"
command = a+c

[Command]
name = "counter13"
command = b+c

[Command]
name = "counter14"
command = a+b+c

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

[Command]
name = "2900"
command = /F, x+y

[Command]
name = "bf0"
command = ~B, F, c

[Command]
name = "bf1"
command = ~B, UB, UF, c

[Command]
name = "bf2"
command = ~B, U, UB, c

[Command]
name = "bf3"
command = ~B, UF, UB, c

[Command]
name = "bf4"
command = ~B, U, UF, c

[Command]
name = "bf5"
command = ~UB, UF, U, UB, c

[Command]
name = "bf6"
command = ~UF, UB, U, UF, c

[Command]
name = "bf7"
command = ~DB, UF, DB, UB, c

[Command]
name = "bf8"
command = ~DF, UB, DB, UF, c

[Command]
name = "bf9"
command = ~UB, DF, UB, DB, c

[Command]
name = "bf10"
command = ~UF, DB, UB, DF, c

[Command]
name = "bf11"
command = ~UB, DB, UB, DF, c

[Command]
name = "bf12"
command = ~UF, DB, UF, DF, c

[Command]
name = "bf13"
command = ~UF, DB, UB, DB, c

[Command]
name = "bf14"
command = ~UF, DF, UB, DF, c

[Command]
name = "bf15"
command = ~UF, DB, UF, DB, c

[Command]
name = "bf16"
command = ~UF, UF, UF, DB, c

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

;counter1
[State -1]
type = ChangeState
value = 2200
triggerall = command = "counter1"
triggerall = power >= 500
trigger1 = stateno = 5000
trigger2 = stateno = 5001
trigger3 = stateno = 5010
trigger4 = stateno = 5011
;trigger1 = stateno >= 150
;trigger1 = stateno <= 153

;counter2
[State -1]
type = ChangeState
value = 2200
triggerall = command = "counter2"
triggerall = power >= 500
trigger1 = stateno = 5000
trigger2 = stateno = 5001
trigger3 = stateno = 5010
trigger4 = stateno = 5011

;counter3
[State -1]
type = ChangeState
value = 2200
triggerall = command = "counter3"
triggerall = power >= 500
trigger1 = stateno = 5000
trigger2 = stateno = 5001
trigger3 = stateno = 5010
trigger4 = stateno = 5011

;counter4
[State -1]
type = ChangeState
value = 2200
triggerall = command = "counter4"
triggerall = power >= 500
trigger1 = stateno = 5000
trigger2 = stateno = 5001
trigger3 = stateno = 5010
trigger4 = stateno = 5011

;counter5
[State -1]
type = ChangeState
value = 2200
triggerall = command = "counter5"
triggerall = power >= 500
trigger1 = stateno = 5000
trigger2 = stateno = 5001
trigger3 = stateno = 5010
trigger4 = stateno = 5011

;counter6
[State -1]
type = ChangeState
value = 2200
triggerall = command = "counter6"
triggerall = power >= 500
trigger1 = stateno = 5000
trigger2 = stateno = 5001
trigger3 = stateno = 5010
trigger4 = stateno = 5011

;counter7
[State -1]
type = ChangeState
value = 2200
triggerall = command = "counter7"
triggerall = power >= 500
trigger1 = stateno = 5000
trigger2 = stateno = 5001
trigger3 = stateno = 5010
trigger4 = stateno = 5011

;counter8
[State -1]
type = ChangeState
value = 2200
triggerall = command = "counter8"
triggerall = power >= 500
trigger1 = stateno = 5000
trigger2 = stateno = 5001
trigger3 = stateno = 5010
trigger4 = stateno = 5011

;counter9
[State -1]
type = ChangeState
value = 2200
triggerall = command = "counter9"
triggerall = power >= 500
trigger1 = stateno = 5000
trigger2 = stateno = 5001
trigger3 = stateno = 5010
trigger4 = stateno = 5011

;counter10
[State -1]
type = ChangeState
value = 2200
triggerall = command = "counter10"
triggerall = power >= 500
trigger1 = stateno = 5000
trigger2 = stateno = 5001
trigger3 = stateno = 5010
trigger4 = stateno = 5011

;counter11
[State -1]
type = ChangeState
value = 2200
triggerall = command = "counter11"
triggerall = power >= 500
trigger1 = stateno = 5000
trigger2 = stateno = 5001
trigger3 = stateno = 5010
trigger4 = stateno = 5011

;counter12
[State -1]
type = ChangeState
value = 2200
triggerall = command = "counter12"
triggerall = power >= 500
trigger1 = stateno = 5000
trigger2 = stateno = 5001
trigger3 = stateno = 5010
trigger4 = stateno = 5011

;counter13
[State -1]
type = ChangeState
value = 2200
triggerall = command = "counter13"
triggerall = power >= 500
trigger1 = stateno = 5000
trigger2 = stateno = 5001
trigger3 = stateno = 5010
trigger4 = stateno = 5011

;counter14
[State -1]
type = ChangeState
value = 2200
triggerall = command = "counter14"
triggerall = power >= 500
trigger1 = stateno = 5000
trigger2 = stateno = 5001
trigger3 = stateno = 5010
trigger4 = stateno = 5011

;---------------------------------------------

;air-counter1
[State -1]
type = ChangeState
value = 2300
triggerall = command = "counter1"
trigger1 = statetype = A
triggerall = power >= 500
trigger1 = stateno = 5020
trigger2 = stateno = 5030
trigger3 = stateno = 5035
trigger4 = stateno = 5070

;air-counter2
[State -1]
type = ChangeState
value = 2300
triggerall = command = "counter2"
trigger1 = statetype = A
triggerall = power >= 500
trigger1 = stateno = 5020
trigger2 = stateno = 5030
trigger3 = stateno = 5035
trigger4 = stateno = 5070

;air-counter3
[State -1]
type = ChangeState
value = 2300
triggerall = command = "counter3"
trigger1 = statetype = A
triggerall = power >= 500
trigger1 = stateno = 5020
trigger2 = stateno = 5030
trigger3 = stateno = 5035
trigger4 = stateno = 5070

;air-counter4
[State -1]
type = ChangeState
value = 2300
triggerall = command = "counter4"
trigger1 = statetype = A
triggerall = power >= 500
trigger1 = stateno = 5020
trigger2 = stateno = 5030
trigger3 = stateno = 5035
trigger4 = stateno = 5070

;air-counter5
[State -1]
type = ChangeState
value = 2300
triggerall = command = "counter5"
trigger1 = statetype = A
triggerall = power >= 500
trigger1 = stateno = 5020
trigger2 = stateno = 5030
trigger3 = stateno = 5035
trigger4 = stateno = 5070

;air-counter6
[State -1]
type = ChangeState
value = 2300
triggerall = command = "counter6"
trigger1 = statetype = A
triggerall = power >= 500
trigger1 = stateno = 5020
trigger2 = stateno = 5030
trigger3 = stateno = 5035
trigger4 = stateno = 5070

;air-counter7
[State -1]
type = ChangeState
value = 2300
triggerall = command = "counter7"
trigger1 = statetype = A
triggerall = power >= 500
trigger1 = stateno = 5020
trigger2 = stateno = 5030
trigger3 = stateno = 5035
trigger4 = stateno = 5070

;air-counter8
[State -1]
type = ChangeState
value = 2300
triggerall = command = "counter8"
trigger1 = statetype = A
triggerall = power >= 500
trigger1 = stateno = 5020
trigger2 = stateno = 5030
trigger3 = stateno = 5035
trigger4 = stateno = 5070

;air-counter9
[State -1]
type = ChangeState
value = 2300
triggerall = command = "counter9"
trigger1 = statetype = A
triggerall = power >= 500
trigger1 = stateno = 5020
trigger2 = stateno = 5030
trigger3 = stateno = 5035
trigger4 = stateno = 5070

;air-counter10
[State -1]
type = ChangeState
value = 2300
triggerall = command = "counter10"
trigger1 = statetype = A
triggerall = power >= 500
trigger1 = stateno = 5020
trigger2 = stateno = 5030
trigger3 = stateno = 5035
trigger4 = stateno = 5070

;air-counter11
[State -1]
type = ChangeState
value = 2300
triggerall = command = "counter11"
trigger1 = statetype = A
triggerall = power >= 500
trigger1 = stateno = 5020
trigger2 = stateno = 5030
trigger3 = stateno = 5035
trigger4 = stateno = 5070

;air-counter12
[State -1]
type = ChangeState
value = 2300
triggerall = command = "counter12"
trigger1 = statetype = A
triggerall = power >= 500
trigger1 = stateno = 5020
trigger2 = stateno = 5030
trigger3 = stateno = 5035
trigger4 = stateno = 5070

;air-counter13
[State -1]
type = ChangeState
value = 2300
triggerall = command = "counter13"
trigger1 = statetype = A
triggerall = power >= 500
trigger1 = stateno = 5020
trigger2 = stateno = 5030
trigger3 = stateno = 5035
trigger4 = stateno = 5070

;air-counter14
[State -1]
type = ChangeState
value = 2300
triggerall = command = "counter14"
trigger1 = statetype = A
triggerall = power >= 500
trigger1 = stateno = 5020
trigger2 = stateno = 5030
trigger3 = stateno = 5035
trigger4 = stateno = 5070
;---------------------------------------------
;sp07¤¿­ß¤Q±þ°}x
[State -1]
type = ChangeState
value = 1700
triggerall = command = "sp07x"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact

;sp07¤¿­ß¤Q±þ°}y
[State -1]
type = ChangeState
value = 1700
triggerall = command = "sp07y"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact

;sp07¤¿­ß¤Q±þ°}z
[State -1]
type = ChangeState
value = 1700
triggerall = command = "sp07z"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact

;sp07¤¿­ß¤Q±þ°}c
[State -1]
type = ChangeState
value = 1700
triggerall = command = "sp07c"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact

;-------------------------------------------
;sp10
[State -1]
type = ChangeState
value = 2000
triggerall = command = "sp10x"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact

[State -1]
type = ChangeState
value = 2000
triggerall = command = "sp10y"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact

[State -1]
type = ChangeState
value = 2000
triggerall = command = "sp10z"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact

[State -1]
type = ChangeState
value = 2000
triggerall = command = "sp10c"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact

;------------------------------------------------
;sp08x
[State -1]
type = ChangeState
value = 1800
triggerall = command = "sp08x"
triggerall = numhelper(1800) = 0
triggerall = numhelper(1850) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact

;sp08y
[State -1]
type = ChangeState
value = 1800
triggerall = command = "sp08y"
triggerall = numhelper(1800) = 0
triggerall = numhelper(1850) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact

;sp08z
[State -1]
type = ChangeState
value = 1800
triggerall = command = "sp08z"
triggerall = numhelper(1800) = 0
triggerall = numhelper(1850) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact

;sp08x-air
[State -1]
type = ChangeState
value = 1850
triggerall = command = "sp08x"
triggerall = numhelper(1850) = 0
triggerall = numhelper(1800) = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact
trigger3 = stateno = 310
trigger3 = movecontact
trigger4 = stateno = 410
trigger4 = movecontact
trigger5 = stateno = 510
trigger5 = movecontact

;sp08y-air
[State -1]
type = ChangeState
value = 1850
triggerall = command = "sp08y"
triggerall = numhelper(1850) = 0
triggerall = numhelper(1800) = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact
trigger3 = stateno = 310
trigger3 = movecontact
trigger4 = stateno = 410
trigger4 = movecontact
trigger5 = stateno = 510
trigger5 = movecontact

;sp08y-air
[State -1]
type = ChangeState
value = 1850
triggerall = command = "sp08z"
triggerall = numhelper(1850) = 0
triggerall = numhelper(1800) = 0
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact
trigger3 = stateno = 310
trigger3 = movecontact
trigger4 = stateno = 410
trigger4 = movecontact
trigger5 = stateno = 510
trigger5 = movecontact

;-----------------------------------
;sp09¥ú¤l¬¶x
[State -1]
type = ChangeState
value = 1900
triggerall = command = "sp09x"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact

;sp09¥ú¤l¬¶y
[State -1]
type = ChangeState
value = 1900
triggerall = command = "sp09y"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact

;sp09¥ú¤l¬¶z
[State -1]
type = ChangeState
value = 1900
triggerall = command = "sp09z"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact

;sp09¥ú¤l¬¶c
[State -1]
type = ChangeState
value = 1900
triggerall = command = "sp09c"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact

;------------------------------------------------

;sp03x¤Ñ·Ó«Ê°ÄÎÔx
[State -1]
type = ChangeState
value = 1300
triggerall = command = "sp03x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact

;sp03y¤Ñ·Ó«Ê°ÄÎÔy
[State -1]
type = ChangeState
value = 1310
triggerall = command = "sp03y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact

;sp03z¤Ñ·Ó«Ê°ÄÎÔz
[State -1]
type = ChangeState
value = 1320
triggerall = command = "sp03z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact

;------------------------------------------------

;sp02f³{Å]¨èf
[State -1]
type = ChangeState
value = 1200
triggerall = command = "sp02f"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact
trigger19 = stateno = 150
trigger20 = stateno = 151
trigger21 = stateno = 152
trigger22 = stateno = 153

;---------------------------

;sp02b³{Å]¨èb
[State -1]
type = ChangeState
value = 1250
triggerall = command = "sp02b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact
trigger19 = stateno = 150
trigger20 = stateno = 151
trigger21 = stateno = 152
trigger22 = stateno = 153

;------------------------------------------------
;bf0
[State -1]
type = ChangeState
value = 1200
triggerall = command = "bf0"
trigger1 = stateno >= 150
trigger1 = stateno <= 153

[State -1]
type = ChangeState
value = 1200
triggerall = command = "bf1"
trigger1 = stateno >= 150
trigger1 = stateno <= 153

[State -1]
type = ChangeState
value = 1200
triggerall = command = "bf2"
trigger1 = stateno >= 150
trigger1 = stateno <= 153

[State -1]
type = ChangeState
value = 1200
triggerall = command = "bf3"
trigger1 = stateno >= 150
trigger1 = stateno <= 153

[State -1]
type = ChangeState
value = 1200
triggerall = command = "bf4"
trigger1 = stateno >= 150
trigger1 = stateno <= 153

[State -1]
type = ChangeState
value = 1200
triggerall = command = "bf5"
trigger1 = stateno >= 150
trigger1 = stateno <= 153

[State -1]
type = ChangeState
value = 1200
triggerall = command = "bf6"
trigger1 = stateno >= 150
trigger1 = stateno <= 153

[State -1]
type = ChangeState
value = 1200
triggerall = command = "bf7"
trigger1 = stateno >= 150
trigger1 = stateno <= 153

[State -1]
type = ChangeState
value = 1200
triggerall = command = "bf8"
trigger1 = stateno >= 150
trigger1 = stateno <= 153

[State -1]
type = ChangeState
value = 1200
triggerall = command = "bf9"
trigger1 = stateno >= 150
trigger1 = stateno <= 153

[State -1]
type = ChangeState
value = 1200
triggerall = command = "bf10"
trigger1 = stateno >= 150
trigger1 = stateno <= 153

[State -1]
type = ChangeState
value = 1200
triggerall = command = "bf11"
trigger1 = stateno >= 150
trigger1 = stateno <= 153

[State -1]
type = ChangeState
value = 1200
triggerall = command = "bf12"
trigger1 = stateno >= 150
trigger1 = stateno <= 153

[State -1]
type = ChangeState
value = 1200
triggerall = command = "bf13"
trigger1 = stateno >= 150
trigger1 = stateno <= 153

[State -1]
type = ChangeState
value = 1200
triggerall = command = "bf14"
trigger1 = stateno >= 150
trigger1 = stateno <= 153

[State -1]
type = ChangeState
value = 1200
triggerall = command = "bf15"
trigger1 = stateno >= 150
trigger1 = stateno <= 153

[State -1]
type = ChangeState
value = 1200
triggerall = command = "bf16"
trigger1 = stateno >= 150
trigger1 = stateno <= 153
;------------------------------------------------

;sp05x­°Å]©Û¨Ó¯}x
[State -1]
type = ChangeState
value = 1500
triggerall = command = "sp05x"
triggerall = numhelper(1500) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact

;sp05y­°Å]©Û¨Ó¯}y
[State -1]
type = ChangeState
value = 1501
triggerall = command = "sp05y"
triggerall = numhelper(1500) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact

;sp05z­°Å]©Û¨Ó¯}z
[State -1]
type = ChangeState
value = 1502
triggerall = command = "sp05z"
triggerall = numhelper(1500) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact

;------------------------------------------------

;sp06x¦ºÆF¤bx
[State -1]
type = ChangeState
value = 1600
triggerall = command = "sp06x"
triggerall = numhelper(1600) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact

;sp06y¦ºÆF¤by
[State -1]
type = ChangeState
value = 1600
triggerall = command = "sp06y"
triggerall = numhelper(1600) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact

;sp06z¦ºÆF¤bz
[State -1]
type = ChangeState
value = 1600
triggerall = command = "sp06z"
triggerall = numhelper(1600) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact
;------------------------------------------------

;sp04x¦¼.·tÂà¤J·ÀÇBÇox
[State -1]
type = ChangeState
value = 1400
triggerall = command = "sp01x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact
trigger3 = stateno = 310
trigger3 = movecontact
trigger4 = stateno = 410
trigger4 = movecontact
trigger5 = stateno = 510
trigger5 = movecontact

;sp04y¦¼.·tÂà¤J·ÀÇBÇoy
[State -1]
type = ChangeState
value = 1410
triggerall = command = "sp01y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact
trigger3 = stateno = 310
trigger3 = movecontact
trigger4 = stateno = 410
trigger4 = movecontact
trigger5 = stateno = 510
trigger5 = movecontact

;sp04z¦¼.·tÂà¤J·ÀÇBÇoz
[State -1]
type = ChangeState
value = 1420
triggerall = command = "sp01z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger2 = movecontact
trigger3 = stateno = 310
trigger3 = movecontact
trigger4 = stateno = 410
trigger4 = movecontact
trigger5 = stateno = 510
trigger5 = movecontact


;-----------------------------------------------
;sp01x­ß©²Å]»Ù¼ux
[State -1]
type = ChangeState
value = 1100
triggerall = command = "sp01x"
triggerall = numhelper(1100) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact

;-----------------------------------------------------------

;sp01y­ß©²Å]»Ù¼uy
[State -1]
type = ChangeState
value = 1101
triggerall = command = "sp01y"
triggerall = numhelper(1100) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact

;-----------------------------------------------------------

;sp01z­ß©²Å]»Ù¼uz
[State -1]
type = ChangeState
value = 1102
triggerall = command = "sp01z"
triggerall = numhelper(1100) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 520
trigger11 = movecontact
trigger12 = stateno = 530
trigger12 = movecontact
trigger13 = stateno = 540
trigger13 = movecontact
trigger14 = stateno = 550
trigger14 = movecontact
trigger15 = stateno = 560
trigger15 = movecontact
trigger16 = stateno = 250
trigger16 = movecontact
trigger17 = stateno = 350
trigger17 = movecontact
trigger18 = stateno = 450
trigger18 = movecontact

;-----------------------------------------------------------
;---------------------------------------------
;¦^Çq¤JÇf   
[State -1]
type = ChangeState
value = 2900
triggerall = command = "2900"
triggerall = p2bodydist x <= 30
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 250
trigger11 = movecontact
trigger12 = stateno = 350
trigger12 = movecontact
trigger13 = stateno = 520
trigger13 = movecontact
trigger14 = stateno = 530
trigger14 = movecontact
trigger15 = stateno = 540
trigger15 = movecontact
trigger16 = stateno = 550
trigger16 = movecontact
trigger17 = stateno = 450
trigger17 = movecontact
trigger18 = stateno = 560
trigger18 = movecontact

;----------------------------------------------------------

;Á×Æ÷
[State -1]
type = ChangeState
value = 2800
triggerall = command = "counter1"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = !command = "holddown"
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 240
trigger4 = movecontact
trigger5 = stateno = 320
trigger5 = movecontact
trigger6 = stateno = 330
trigger6 = movecontact
trigger7 = stateno = 340
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact
trigger11 = stateno = 250
trigger11 = movecontact
trigger12 = stateno = 350
trigger12 = movecontact
trigger13 = stateno = 520
trigger13 = movecontact
trigger14 = stateno = 530
trigger14 = movecontact
trigger15 = stateno = 540
trigger15 = movecontact
trigger16 = stateno = 550
trigger16 = movecontact
trigger17 = stateno = 450
trigger17 = movecontact
trigger18 = stateno = 560
trigger18 = movecontact

;Á×Æ÷°{¥´
[State -1]
type = ChangeState
value = 240
triggerall = stateno = 2800
triggerall = time >= 0
trigger1 = command = "x"

[State -1]
type = ChangeState
value = 340
triggerall = stateno = 2800
triggerall = time >= 0
trigger1 = command = "y"

[State -1]
type = ChangeState
value = 430
triggerall = stateno = 2800
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
triggerall = command != "holddown"
trigger1 = stateno = 100
trigger1 = ctrl = 1

;dashy
[State -1]
type = ChangeState
value = 350
triggerall = command = "fwd_y"
triggerall = command != "holddown"
trigger1 = stateno = 100
trigger1 = ctrl = 1

;dashz
[State -1]
type = ChangeState
value = 450
triggerall = command = "fwd_z"
triggerall = command != "holddown"
trigger1 = stateno = 100
trigger1 = ctrl = 1

;dashc
[State -1]
type = ChangeState
value = 560
triggerall = command = "fwd_c"
triggerall = command != "holddown"
trigger1 = stateno = 100
trigger1 = ctrl = 1

;-------------------------------------------------------

; Standing light punch (near)
[State -1]
type = ChangeState
value = 240
triggerall = command = "x"
triggerall = p2bodydist x <= 25
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 250
trigger5 = movecontact
trigger6 = stateno = 350
trigger6 = movecontact
trigger7 = stateno = 450
trigger7 = movecontact
trigger8 = stateno = 560
trigger8 = movecontact

; Standing light punch (far)
[State -1]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 250
trigger4 = movecontact
trigger5 = stateno = 350
trigger5 = movecontact
trigger6 = stateno = 450
trigger6 = movecontact
trigger7 = stateno = 560
trigger7 = movecontact

;-------------------------------------------------

; Standing middle punch (near)
[State -1]
type = ChangeState
value = 340
triggerall = command = "y"
triggerall = p2bodydist x <= 25
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 250
trigger5 = movecontact
trigger6 = stateno = 350
trigger6 = movecontact
trigger7 = stateno = 450
trigger7 = movecontact
trigger8 = stateno = 560
trigger8 = movecontact

; Standing middle punch (far)
[State -1]
type = ChangeState
value = 330
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 230
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 250
trigger4 = movecontact
trigger5 = stateno = 350
trigger5 = movecontact
trigger6 = stateno = 450
trigger6 = movecontact
trigger7 = stateno = 560
trigger7 = movecontact

;-------------------------------------

; Standing stong punch (near)
[State -1]
type = ChangeState
value = 440
triggerall = command = "z"
triggerall = p2bodydist x <= 65
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 320
trigger4 = movecontact
trigger5 = stateno = 340
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 330
trigger7 = movecontact
trigger8 = stateno = 250
trigger8 = movecontact
trigger9 = stateno = 350
trigger9 = movecontact
trigger10 = stateno = 450
trigger10 = movecontact
trigger11 = stateno = 560
trigger11 = movecontact

; Standing stong punch (far)
[State -1]
type = ChangeState
value = 430
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 240
trigger2= movecontact
trigger3 = stateno = 340
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 330
trigger5 = movecontact
trigger6 = stateno = 250
trigger6 = movecontact
trigger7 = stateno = 350
trigger7 = movecontact
trigger8 = stateno = 450
trigger8 = movecontact
trigger9 = stateno = 560
trigger9 = movecontact

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
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 250
trigger5 = movecontact
trigger6 = stateno = 350
trigger6 = movecontact
trigger7 = stateno = 450
trigger7 = movecontact
trigger8 = stateno = 560
trigger8 = movecontact

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
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 250
trigger5 = movecontact
trigger6 = stateno = 350
trigger6 = movecontact
trigger7 = stateno = 450
trigger7 = movecontact
trigger8 = stateno = 560
trigger8 = movecontact

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
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 320
trigger4 = movecontact
trigger5 = stateno = 340
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 330
trigger7 = movecontact
trigger8 = stateno = 250
trigger8 = movecontact
trigger9 = stateno = 350
trigger9 = movecontact
trigger10 = stateno = 450
trigger10 = movecontact
trigger11 = stateno = 560
trigger11 = movecontact

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
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 320
trigger4 = movecontact
trigger5 = stateno = 340
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 330
trigger7 = movecontact
trigger8 = stateno = 250
trigger8 = movecontact
trigger9 = stateno = 350
trigger9 = movecontact
trigger10 = stateno = 450
trigger10 = movecontact
trigger11 = stateno = 560
trigger11 = movecontact

; 2kick
[State -1]
type = ChangeState
value = 530
triggerall = command = "2kick"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 320
trigger4 = movecontact
trigger5 = stateno = 340
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 330
trigger7 = movecontact
trigger8 = stateno = 530
trigger8 = movecontact
trigger9 = stateno = 250
trigger9 = movecontact
trigger10 = stateno = 350
trigger10 = movecontact
trigger11 = stateno = 450
trigger11 = movecontact
trigger12 = stateno = 560
trigger12 = movecontact

; 6kick
[State -1]
type = ChangeState
value = 550
triggerall = command = "6kick"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 320
trigger4 = movecontact
trigger5 = stateno = 340
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 330
trigger7 = movecontact
trigger8 = stateno = 550
trigger8 = movecontact
trigger9 = stateno = 250
trigger9 = movecontact
trigger10 = stateno = 350
trigger10 = movecontact
trigger11 = stateno = 450
trigger11 = movecontact
trigger12 = stateno = 560
trigger12 = movecontact

;5 kick
[State -1]
type = ChangeState
value = 540
triggerall = command = "c"
triggerall = !command = "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 320
trigger4 = movecontact
trigger5 = stateno = 340
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 330
trigger7 = movecontact
trigger8 = stateno = 250
trigger8 = movecontact
trigger9 = stateno = 350
trigger9 = movecontact
trigger10 = stateno = 450
trigger10 = movecontact
trigger11 = stateno = 560
trigger11 = movecontact

;--------------------------------------------------------

