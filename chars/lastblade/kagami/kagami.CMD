;-| Super Motions |--------------------------------------------------------
[command]
name    = "superfire1"
command = ~D, DF, F, D, DF, F, x
time    = 30

[command]
name    = "superfire1"
command = ~D, DF, F, D, DF, F, y
time    = 30

[command]
name    = "superfire1"
command = ~D, DF, F, D, DF, F, z
time    = 30

[command]
name    = "tensho"
command = ~D, DF, F, D, DF, F, a
time    = 30

[command]
name    = "tensho"
command = ~D, DF, F, D, DF, F, b
time    = 30

[command]
name    = "tensho"
command = ~D, DF, F, D, DF, F, c
time    = 30

[command]
name    = "orochi"
command = ~D, DB, B, D, DB, B, x
time    = 30

[command]
name    = "orochi"
command = ~D, DB, B, D, DB, B, y
time    = 30

[command]
name    = "orochi"
command = ~D, DB, B, D, DB, B, z
time    = 30

;-| Special Motions |------------------------------------------------------
[Command]
name    = "dp1"
command = ~F,D,DF, x
time   = 15

[Command]
name    = "dp2"
command = ~F,D,DF, y
time   = 15

[Command]
name    = "dp3"
command = ~F,D,DF, z
time   = 15

[Command]
name    = "fireball1"
command = ~D,DF,F, x
;time   = 15

[Command]
name    = "fireball2"
command = ~D,DF,F, y
;time   = 15

[Command]
name    = "fireball3"
command = ~D,DF,F, z
;time   = 15

[Command]
name    = "firethrow"
command = z+c

[Command]
name    = "stab"
command = ~D,DB,B, x

[Command]
name    = "stab"
command = ~D,DB,B, y

[Command]
name    = "stab"
command = ~D,DB,B, z

[Command]
name    = "charge"
command = ~D,DB,B, a

[Command]
name    = "charge"
command = ~D,DB,B, b

[Command]
name    = "charge"
command = ~D,DB,B, c

[Command]
name    = "glass"
command = ~D,DF,F, a

[Command]
name    = "glass"
command = ~D,DF,F, b

[Command]
name    = "glass"
command = ~D,DF,F, c

;-| Double Tap |-----------------------------------------------------------
[Command]
name    = "FF"       ;Required (do not remove)
command = F, F
time    = 10

[Command]
name    = "BB"      ;Required (do not remove)
command = B, B
time    = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name    = "recovery" ;Required (do not remove)
command = a+b
time    = 3

name    = "recovery" ;Required (do not remove)
command = b+c
time    = 3

name    = "recovery" ;Required (do not remove)
command = a+c
time    = 3

[Command]
name    = "ab"
command = a+b
time    = 3

[command]
name    = "xy"
command = x+y
time    = 6

[command]
name    = "yz"
command = y+z
time    = 1;6

[command]
name    = "holdyz"
command = /y+z
time    = 6

[command]
name    = "xz"
command = x+z
time    = 6

[command]
name    = "bc"
command = b+c
time    = 6

;-| Dir + Button |---------------------------------------------------------
[Command]
name    = "fwd_x"
command = /F,x
time    = 1

[Command]
name    = "fwd_y"
command = /F,y
time    = 1

[Command]
name    = "fwd_z"
command = /F,z
time    = 1

[Command]
name    = "fwd_a"
command = /F,a
time    = 1

[Command]
name    = "fwd_b"
command = /F,b
time    = 1

[Command]
name    = "fwd_c"
command = /F,c
time    = 1

[Command]
name    = "back_a"
command = /B,a
time    = 1

[Command]
name    = "back_b"
command = /B,b
time    = 1

[Command]
name    = "back_c"
command = /B,c
time    = 1

[Command]
name    = "back_x"
command = /B,x
time    = 1

[Command]
name    = "back_y"
command = /B,y
time    = 1

[Command]
name    = "back_z"
command = /B,z
time    = 1

[Command]
name    = "down_a"
command = /$D,a
time    = 1

[Command]
name    = "down_b"
command = /$D,b
time    = 1

[Command]
name    = "down_c"
command = /$D,c
time    = 1

[Command]
name    = "down_x"
command = /$D,x
time    = 1

[Command]
name    = "down_y"
command = /$D,y
time    = 1

[Command]
name    = "down_z"
command = /$D,z
time    = 1

[Command]
name    = "fwd_ab"
command = /F, a+b
time    = 1

[Command]
name    = "back_ab"
command = /B, a+b
time    = 1

;-| Single Button |---------------------------------------------------------
[Command]
name    = "a"
command = a
time    = 1

[Command]
name    = "b"
command = b
time    = 1

[Command]
name    = "c"
command = c
time    = 1

[Command]
name    = "x"
command = x
time    = 1

[Command]
name    = "y"
command = y
time    = 1

[Command]
name    = "z"
command = z
time    = 1

[Command]
name    = "s"
command = s
time    = 1

;-| Hold Button |-----------------------------------------------------------
[Command]
name    = "hold_x"
command = /x
time    = 1

[Command]
name    = "hold_y"
command = /y
time    = 1

[Command]
name    = "hold_z"
command = /z
time    = 1

[Command]
name    = "hold_a"
command = /a
time    = 1

[Command]
name    = "hold_b"
command = /b
time    = 1

[Command]
name    = "hold_c"
command = /c
time    = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name    = "holdfwd"  ;Required (do not remove)
command = /$F
time    = 1

[Command]
name    = "holdback" ;Required (do not remove)
command = /$B
time    = 1

[Command]
name    = "holdup"   ;Required (do not remove)
command = /$U
time    = 1

[Command]
name    = "holddown" ;Required (do not remove)
command = /$D
time    = 1

[Command]
name    = "holddownback"
command = /$DB
time    = 1

[Command]
name    = "holddownforward"
command = /$DF
time    = 1

[Command]
name    = "longjump"
command = D, $U
time    = 18

[statedef -1]
;---------------------------------------------------------------------------
; Dodge
[state -1]
type = changestate
value = 500
triggerall = var(11) = 0
triggerall = command = "xy" || command = "xz"
trigger1 = ctrl = 1
triggerall = statetype = S
trigger2 = stateno = [120,149]
trigger3 = stateno = [100,101]

; Crouch Repel
[state -1]
type = changestate
value = 370
triggerall = var(11) = 0
triggerall = command = "yz"
trigger1 = ctrl = 1
triggerall = statetype = C
trigger2 = stateno = [120,149]
trigger3 = stateno = [100,101]

[state -1]
type = changestate
value = 480
triggerall = var(11) = 0
triggerall = command = "xy" || command = "xz" || command = "yz"
trigger1 = ctrl = 1
triggerall = statetype = A
trigger2 = stateno = [120,149]

[state -1]
type = changestate
value = 502
triggerall = var(11) = 1
triggerall = command = "xy"
triggerall = movehit
trigger1 = stateno = 501
trigger2 = stateno = 371

; Ura Guren Suzaku Otoshi
[state - 1]
type = changestate
value = 2060
triggerall = statetype != A
triggerall = command = "tensho"
triggerall = power >= 1000
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = movecontact
trigger5 = stateno = 212
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 220
trigger7 = movecontact
trigger8 = stateno = 222
trigger8 = movecontact
trigger9 = stateno = 225
trigger9 = movecontact
trigger10 = stateno = 230
trigger10 = movecontact
trigger11 = stateno = 240
trigger11 = movecontact
trigger12 = stateno = 245
trigger12 = movecontact
trigger13 = stateno = 250
trigger13 = movecontact
trigger14 = stateno = 255
trigger14 = movecontact
trigger15 = stateno = 300
trigger15 = movecontact
trigger16 = stateno = 310
trigger16 = movecontact
trigger17 = stateno = 320
trigger17 = movecontact
trigger18 = stateno = 330
trigger18 = movecontact
trigger19 = stateno = 340
trigger19 = movecontact
trigger20 = stateno = 350
trigger20 = movecontact
trigger21 = stateno = 360
trigger21 = movecontact

; Houou "tensho"
[state - 1]
type = changestate
value = 2050
triggerall = statetype = A
triggerall = command = "tensho"
triggerall = power >= 2000
trigger1 = ctrl = 1
trigger1 = vel y >= -20
trigger2 = var(10) = 1
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = var(10) = 1
trigger3 = stateno = 410
trigger3 = movecontact
trigger4 = var(10) = 1
trigger4 = stateno = 420
trigger4 = movecontact
trigger5 = var(10) = 1
trigger5 = stateno = 430
trigger5 = movecontact
trigger6 = var(10) = 1
trigger6 = stateno = 440
trigger6 = movecontact
trigger7 = var(10) = 1
trigger7 = stateno = 450
trigger7 = movecontact

; Guren Suzaku
[state - 1]
type = changestate
value = 2030
triggerall = statetype = A
triggerall = command = "superfire1"
triggerall = power >= 1000
triggerall = vel y >= -20
trigger1 = ctrl = 1
trigger2 = stateno = 1031
trigger2 = movecontact
trigger3 = stateno = 1041
trigger3 = movecontact
trigger4 = stateno = 1051
trigger4 = movecontact
trigger5 = var(10) = 1
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = var(10) = 1
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = var(10) = 1
trigger7 = stateno = 420
trigger7 = movecontact
trigger8 = var(10) = 1
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = var(10) = 1
trigger9 = stateno = 440
trigger9 = movecontact
trigger10 = var(10) = 1
trigger10 = stateno = 450
trigger10 = movecontact

; Fireball
[state - 1]
type = changestate
value = 2000
triggerall = statetype != A
triggerall = command = "superfire1"
triggerall = power >= 1000
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = movecontact
trigger5 = stateno = 212
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 220
trigger7 = movecontact
trigger8 = stateno = 222
trigger8 = movecontact
trigger9 = stateno = 225
trigger9 = movecontact
trigger10 = stateno = 230
trigger10 = movecontact
trigger11 = stateno = 240
trigger11 = movecontact
trigger12 = stateno = 245
trigger12 = movecontact
trigger13 = stateno = 250
trigger13 = movecontact
trigger14 = stateno = 255
trigger14 = movecontact
trigger15 = stateno = 300
trigger15 = movecontact
trigger16 = stateno = 310
trigger16 = movecontact
trigger17 = stateno = 320
trigger17 = movecontact
trigger18 = stateno = 330
trigger18 = movecontact
trigger19 = stateno = 340
trigger19 = movecontact
trigger20 = stateno = 350
trigger20 = movecontact
trigger21 = stateno = 360
trigger21 = movecontact

; Fireball
[state - 1]
type = changestate
value = 2020
triggerall = statetype != A
triggerall = command = "orochi"
triggerall = power >= 1000
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = movecontact
trigger5 = stateno = 212
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 220
trigger7 = movecontact
trigger8 = stateno = 222
trigger8 = movecontact
trigger9 = stateno = 225
trigger9 = movecontact
trigger10 = stateno = 230
trigger10 = movecontact
trigger11 = stateno = 240
trigger11 = movecontact
trigger12 = stateno = 245
trigger12 = movecontact
trigger13 = stateno = 250
trigger13 = movecontact
trigger14 = stateno = 255
trigger14 = movecontact
trigger15 = stateno = 300
trigger15 = movecontact
trigger16 = stateno = 310
trigger16 = movecontact
trigger17 = stateno = 320
trigger17 = movecontact
trigger18 = stateno = 330
trigger18 = movecontact
trigger19 = stateno = 340
trigger19 = movecontact
trigger20 = stateno = 350
trigger20 = movecontact
trigger21 = stateno = 360
trigger21 = movecontact

; Uppercut
[state - 1]
type = changestate
value = 1060
triggerall = statetype != A
triggerall = command = "glass"
triggerall = life <= 500
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = movecontact
trigger5 = stateno = 212
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 220
trigger7 = movecontact
trigger8 = stateno = 222
trigger8 = movecontact
trigger9 = stateno = 225
trigger9 = movecontact
trigger10 = stateno = 230
trigger10 = movecontact
trigger11 = stateno = 240
trigger11 = movecontact
trigger12 = stateno = 245
trigger12 = movecontact
trigger13 = stateno = 250
trigger13 = movecontact
trigger14 = stateno = 255
trigger14 = movecontact
trigger15 = stateno = 300
trigger15 = movecontact
trigger16 = stateno = 310
trigger16 = movecontact
trigger17 = stateno = 320
trigger17 = movecontact
trigger18 = stateno = 330
trigger18 = movecontact
trigger19 = stateno = 340
trigger19 = movecontact
trigger20 = stateno = 350
trigger20 = movecontact
trigger21 = stateno = 360
trigger21 = movecontact
trigger22 = stateno = 1010
trigger22 = movecontact
trigger23 = stateno = 1011
trigger23 = movecontact

; Uppercut
[state - 1]
type = changestate
value = 1030
triggerall = statetype != A
triggerall = command = "dp1"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = movecontact
trigger5 = stateno = 212
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 220
trigger7 = movecontact
trigger8 = stateno = 222
trigger8 = movecontact
trigger9 = stateno = 225
trigger9 = movecontact
trigger10 = stateno = 230
trigger10 = movecontact
trigger11 = stateno = 240
trigger11 = movecontact
trigger12 = stateno = 245
trigger12 = movecontact
trigger13 = stateno = 250
trigger13 = movecontact
trigger14 = stateno = 255
trigger14 = movecontact
trigger15 = stateno = 300
trigger15 = movecontact
trigger16 = stateno = 310
trigger16 = movecontact
trigger17 = stateno = 320
trigger17 = movecontact
trigger18 = stateno = 330
trigger18 = movecontact
trigger19 = stateno = 340
trigger19 = movecontact
trigger20 = stateno = 350
trigger20 = movecontact
trigger21 = stateno = 360
trigger21 = movecontact
trigger22 = stateno = 1010
trigger22 = movecontact
trigger23 = stateno = 1011
trigger23 = movecontact

; Uppercut
[state - 1]
type = changestate
value = 1040
triggerall = statetype != A
triggerall = command = "dp2"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = movecontact
trigger5 = stateno = 212
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 220
trigger7 = movecontact
trigger8 = stateno = 222
trigger8 = movecontact
trigger9 = stateno = 225
trigger9 = movecontact
trigger10 = stateno = 230
trigger10 = movecontact
trigger11 = stateno = 240
trigger11 = movecontact
trigger12 = stateno = 245
trigger12 = movecontact
trigger13 = stateno = 250
trigger13 = movecontact
trigger14 = stateno = 255
trigger14 = movecontact
trigger15 = stateno = 300
trigger15 = movecontact
trigger16 = stateno = 310
trigger16 = movecontact
trigger17 = stateno = 320
trigger17 = movecontact
trigger18 = stateno = 330
trigger18 = movecontact
trigger19 = stateno = 340
trigger19 = movecontact
trigger20 = stateno = 350
trigger20 = movecontact
trigger21 = stateno = 360
trigger21 = movecontact
trigger22 = stateno = 1010
trigger22 = movecontact
trigger23 = stateno = 1011
trigger23 = movecontact

; Uppercut
[state - 1]
type = changestate
value = 1050
triggerall = statetype != A
triggerall = command = "dp3"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = movecontact
trigger5 = stateno = 212
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 220
trigger7 = movecontact
trigger8 = stateno = 222
trigger8 = movecontact
trigger9 = stateno = 225
trigger9 = movecontact
trigger10 = stateno = 230
trigger10 = movecontact
trigger11 = stateno = 240
trigger11 = movecontact
trigger12 = stateno = 245
trigger12 = movecontact
trigger13 = stateno = 250
trigger13 = movecontact
trigger14 = stateno = 255
trigger14 = movecontact
trigger15 = stateno = 300
trigger15 = movecontact
trigger16 = stateno = 310
trigger16 = movecontact
trigger17 = stateno = 320
trigger17 = movecontact
trigger18 = stateno = 330
trigger18 = movecontact
trigger19 = stateno = 340
trigger19 = movecontact
trigger20 = stateno = 350
trigger20 = movecontact
trigger21 = stateno = 360
trigger21 = movecontact
trigger22 = stateno = 1010
trigger22 = movecontact
trigger23 = stateno = 1011
trigger23 = movecontact

; Throw
[state - 1]
type = changestate
value = 600
trigger1 = statetype = S
trigger1 = command = "firethrow"
trigger1 = ctrl = 1

; Air Throw
[state - 1]
type = changestate
value = 460
trigger1 = statetype = A
trigger1 = command = "firethrow"
trigger1 = ctrl = 1

; Charge
[state - 1]
type = changestate
value = 700
trigger1 = statetype != A
trigger1 = command = "charge"
trigger1 = ctrl = 1

; Stab Throw
[state - 1]
type = changestate
value = 1020
trigger1 = statetype = S
trigger1 = command = "stab"
trigger1 = ctrl = 1

; Fireball
[state - 1]
type = changestate
value = 1010
triggerall = p2bodydist x <= 81
triggerall = statetype != A
triggerall = command = "fireball2"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = movecontact
trigger5 = stateno = 212
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 220
trigger7 = movecontact
trigger8 = stateno = 222
trigger8 = movecontact
trigger9 = stateno = 225
trigger9 = movecontact
trigger10 = stateno = 230
trigger10 = movecontact
trigger11 = stateno = 240
trigger11 = movecontact
trigger12 = stateno = 245
trigger12 = movecontact
trigger13 = stateno = 250
trigger13 = movecontact
trigger14 = stateno = 255
trigger14 = movecontact
trigger15 = stateno = 300
trigger15 = movecontact
trigger16 = stateno = 310
trigger16 = movecontact
trigger17 = stateno = 320
trigger17 = movecontact
trigger18 = stateno = 330
trigger18 = movecontact
trigger19 = stateno = 340
trigger19 = movecontact
trigger20 = stateno = 350
trigger20 = movecontact
trigger21 = stateno = 360
trigger21 = movecontact

; Fireball
[state - 1]
type = changestate
value = 1011
triggerall = p2bodydist x <= 81
triggerall = statetype != A
triggerall = command = "fireball3"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = movecontact
trigger5 = stateno = 212
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 220
trigger7 = movecontact
trigger8 = stateno = 222
trigger8 = movecontact
trigger9 = stateno = 225
trigger9 = movecontact
trigger10 = stateno = 230
trigger10 = movecontact
trigger11 = stateno = 240
trigger11 = movecontact
trigger12 = stateno = 245
trigger12 = movecontact
trigger13 = stateno = 250
trigger13 = movecontact
trigger14 = stateno = 255
trigger14 = movecontact
trigger15 = stateno = 300
trigger15 = movecontact
trigger16 = stateno = 310
trigger16 = movecontact
trigger17 = stateno = 320
trigger17 = movecontact
trigger18 = stateno = 330
trigger18 = movecontact
trigger19 = stateno = 340
trigger19 = movecontact
trigger20 = stateno = 350
trigger20 = movecontact
trigger21 = stateno = 360
trigger21 = movecontact

; Fireball
[state - 1]
type = changestate
value = 1012
triggerall = stateno = 1010
triggerall = command = "fireball2"
triggerall = movecontact
trigger1 = statetype != A
;trigger1 >= animelem = 11

[state - 1]
type = changestate
value = 1013
triggerall = stateno = 1011
triggerall = command = "fireball3"
triggerall = movecontact
trigger1 = statetype != A
;trigger1 = animelem >= 11

[state - 1]
type = changestate
value = 1014
trigger1 = stateno = 1013
trigger1 = command = "fireball3"
trigger1 = movecontact
trigger1 = statetype != A

; Fireball
[state - 1]
type = changestate
value = 1000
trigger1 = numproj = 0
trigger1 = p2bodydist x >= 81
trigger1 = command = "fireball2"
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = numproj = 0
trigger2 = p2bodydist x >= 81
trigger2 = command = "fireball3"
trigger2 = ctrl = 1
trigger2 = statetype != A
trigger3 = numproj = 0
trigger3 = command = "fireball1"
trigger3 = ctrl = 1
trigger3 = statetype != A

; Guard reversal
[State -1]
type = ChangeState
value = 745
triggerall = power >= 1500
triggerall = stateno >= 150
triggerall = stateno <= 153
trigger1 = command = "fireball1"
trigger2 = command = "fireball2"
trigger3 = command = "fireball3"

;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = stateno != [100,109]
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

;Crush A
[state -1]
type = changestate
value = 270
;triggerall = var(11) = 0
triggerall = command = "yz"
trigger1 = ctrl = 1
trigger1 = statetype != A
trigger2 = stateno = 501
trigger2 = movehit
trigger3 = stateno = [100,101]
ignorehitpause = 1

;Crouching High Punch
[State -1]
type = ChangeState
value = 360
triggerall = command = "bc"          ;Place name of command here
;triggerall = command != "holddown"  ;Standing moves should have this line
;triggerall = command = "holdfwd"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 310
trigger3 = movecontact
trigger4 = stateno = 320
trigger4 = movecontact
trigger5 = stateno = 330
trigger5 = movecontact
trigger6 = stateno = 340
trigger6 = movecontact
trigger7 = stateno = 200
trigger7 = movecontact
trigger8 = stateno = 210
trigger8 = movecontact
trigger9 = stateno = 211
trigger9 = movecontact
trigger10 = stateno = 212
trigger10 = movecontact
trigger11 = stateno = 215
trigger11 = movecontact
trigger12 = stateno = 220
trigger12 = movecontact
trigger13 = stateno = 222
trigger13 = movecontact
trigger14 = stateno = 225
trigger14 = movecontact
trigger15 = stateno = 230
trigger15 = movecontact
trigger16 = stateno = 240
trigger16 = movecontact
trigger17 = stateno = 245
trigger17 = movecontact
trigger18 = stateno = 250
trigger18 = movecontact
trigger19 = stateno = [100,101]

;---------------------------------------------------------------------------

; Rushing High Punch
[state - 1]
type = changestate
value = 260
trigger1 = statetype = S
trigger1 = command = "down_z"
trigger1 = ctrl = 1
trigger1 = stateno = 100

;Punch 2
[State -1]
type = ChangeState
value = 212
triggerall = command = "back_y"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
;triggerall = p2bodydist X <= 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact

;Punch 2
[State -1]
type = ChangeState
value = 215
triggerall = command = "fwd_y"          ;Place name of command here
triggerall = statetype != A
triggerall = command != "holddown"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = movecontact
trigger5 = stateno = 212
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 240
trigger7 = movecontact
trigger8 = stateno = 300
trigger8 = movecontact
trigger9 = stateno = 310
trigger9 = movecontact
trigger10 = stateno = 330
trigger10 = movecontact
trigger11 = stateno = 340
trigger11 = movecontact

;Punch 2
[State -1]
type = ChangeState
value = 222
triggerall = command = "back_z"          ;Place name of command here
triggerall = statetype != A
triggerall = command != "holddown"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = movecontact
trigger5 = stateno = 212
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 220
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact
trigger11 = stateno = 300
trigger11 = movecontact
trigger12 = stateno = 310
trigger12 = movecontact
trigger13 = stateno = 330
trigger13 = movecontact
trigger14 = stateno = 340
trigger14 = movecontact

;---------------------------------------------------------------------------
;Kick 2
[State -1]
type = ChangeState
value = 240
triggerall = command = "back_b"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = movecontact
trigger5 = stateno = 212
trigger5 = movecontact
trigger6 = stateno = 230
trigger6 = movecontact
trigger7 = stateno = 245
trigger7 = movecontact

;Kick 3
[State -1]
type = ChangeState
value = 255
triggerall = command = "fwd_c"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = movecontact
trigger5 = stateno = 212
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 220
trigger7 = movecontact
trigger8 = stateno = 222
trigger8 = movecontact
trigger9 = stateno = 230
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 245
trigger11 = movecontact
trigger12 = stateno = 250
trigger12 = movecontact
trigger13 = stateno = 300
trigger13 = movecontact
trigger14 = stateno = 310
trigger14 = movecontact
trigger15 = stateno = 320
trigger15 = movecontact
trigger16 = stateno = 330
trigger16 = movecontact
trigger17 = stateno = 340
trigger17 = movecontact

; Diving Punch
[State -1]
type = ChangeState
value = 415
triggerall = command = "down_y"          ;Place name of command here
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = var(10) = 1
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = var(10) = 1
trigger3 = stateno = 410
trigger3 = movecontact
trigger4 = var(10) = 1
trigger4 = stateno = 420
trigger4 = movecontact
trigger5 = var(10) = 1
trigger5 = stateno = 430
trigger5 = movecontact
trigger6 = var(10) = 1
trigger6 = stateno = 440
trigger6 = movecontact
trigger7 = var(10) = 1
trigger7 = stateno = 450
trigger7 = movecontact

; Diving Kick
[State -1]
type = ChangeState
value = 445
triggerall = command = "down_b"          ;Place name of command here
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = var(10) = 1
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = var(10) = 1
trigger3 = stateno = 410
trigger3 = movecontact
trigger4 = var(10) = 1
trigger4 = stateno = 420
trigger4 = movecontact
trigger5 = var(10) = 1
trigger5 = stateno = 430
trigger5 = movecontact
trigger6 = var(10) = 1
trigger6 = stateno = 440
trigger6 = movecontact
trigger7 = var(10) = 1
trigger7 = stateno = 450
trigger7 = movecontact

;Punch 2
[State -1]
type = ChangeState
value = 225
triggerall = command = "fwd_z"          ;Place name of command here
triggerall = statetype != A
triggerall = command != "holddown"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = movecontact
trigger5 = stateno = 212
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 220
trigger7 = movecontact
trigger8 = stateno = 222
trigger8 = movecontact
trigger9 = stateno = 230
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 245
trigger11 = movecontact
trigger12 = stateno = 300
trigger12 = movecontact
trigger13 = stateno = 310
trigger13 = movecontact
trigger14 = stateno = 320
trigger14 = movecontact
trigger15 = stateno = 330
trigger15 = movecontact
trigger16 = stateno = 340
trigger16 = movecontact

;Punch 1
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Punch 2
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
;triggerall = p2bodydist X >= 20
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact

[State -1]
type = ChangeState
value = 211
triggerall = command = "y"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
triggerall = statetype = S
triggerall = stateno = 210 && movecontact
trigger1 = animelemno(0) = [6,9]

;Punch 3
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = movecontact
trigger5 = stateno = 212
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 222
trigger7 = movecontact
trigger8 = stateno = 230
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
trigger10 = stateno = 245
trigger10 = movecontact

;Kick 1
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact

;Punch 2
[State -1]
type = ChangeState
value = 245
triggerall = command = "b"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = movecontact
trigger5 = stateno = 212
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 240
trigger8 = movecontact

;Kick 3
[State -1]
type = ChangeState
value = 250
triggerall = command = "c"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 211
trigger4 = movecontact
trigger5 = stateno = 212
trigger5 = movecontact
trigger6 = stateno = 215
trigger6 = movecontact
trigger7 = stateno = 220
trigger7 = movecontact
trigger8 = stateno = 222
trigger8 = movecontact
trigger9 = stateno = 230
trigger9 = movecontact
trigger10 = stateno = 240
trigger10 = movecontact
trigger11 = stateno = 245
trigger11 = movecontact

;Crouching Low Punch
[State -1]
type = ChangeState
value = 300
triggerall = command = "x"          ;Place name of command here
triggerall = command = "holddown"  ;Standing moves should have this line
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact

;Crouching Med Punch
[State -1]
type = ChangeState
value = 310
triggerall = command = "y"          ;Place name of command here
triggerall = command = "holddown"  ;Standing moves should have this line
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 330
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 211
trigger6 = movecontact
trigger7 = stateno = 212
trigger7 = movecontact
trigger8 = stateno = 215
trigger8 = movecontact

;Crouching High Punch
[State -1]
type = ChangeState
value = 320
triggerall = command = "z"          ;Place name of command here
triggerall = command = "holddown"  ;Standing moves should have this line
;triggerall = command != "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 310
trigger3 = movecontact
trigger4 = stateno = 330
trigger4 = movecontact
trigger5 = stateno = 340
trigger5 = movecontact
trigger6 = stateno = 200
trigger6 = movecontact
trigger7 = stateno = 210
trigger7 = movecontact
trigger8 = stateno = 211
trigger8 = movecontact
trigger9 = stateno = 212
trigger9 = movecontact
trigger10 = stateno = 215
trigger10 = movecontact
trigger11 = stateno = 230
trigger11 = movecontact
trigger12 = stateno = 240
trigger12 = movecontact
trigger13 = stateno = 245
trigger13 = movecontact

;Crouching Low Kick
[State -1]
type = ChangeState
value = 330
triggerall = command = "a"          ;Place name of command here
triggerall = command = "holddown"  ;Standing moves should have this line
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact

;Crouching Medium Kick
[State -1]
type = ChangeState
value = 340
triggerall = command = "b"          ;Place name of command here
triggerall = command = "holddown"  ;Standing moves should have this line
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 310
trigger3 = movecontact
trigger4 = stateno = 330
trigger4 = movecontact
trigger5 = stateno = 200
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 211
trigger7 = movecontact
trigger8 = stateno = 212
trigger8 = movecontact
trigger9 = stateno = 215
trigger9 = movecontact
trigger10 = stateno = 230
trigger10 = movecontact
trigger11 = stateno = 240
trigger11 = movecontact
trigger12 = stateno = 245
trigger12 = movecontact

;Crouching High Kick
[State -1]
type = ChangeState
value = 350
triggerall = command = "c"          ;Place name of command here
triggerall = command = "holddown"  ;Standing moves should have this line
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 300
trigger2 = movecontact
trigger3 = stateno = 310
trigger3 = movecontact
trigger4 = stateno = 320
trigger4 = movecontact
trigger5 = stateno = 330
trigger5 = movecontact
trigger6 = stateno = 340
trigger6 = movecontact
trigger7 = stateno = 200
trigger7 = movecontact
trigger8 = stateno = 210
trigger8 = movecontact
trigger9 = stateno = 211
trigger9 = movecontact
trigger10 = stateno = 212
trigger10 = movecontact
trigger11 = stateno = 215
trigger11 = movecontact
trigger12 = stateno = 220
trigger12 = movecontact
trigger13 = stateno = 222
trigger13 = movecontact
trigger14 = stateno = 230
trigger14 = movecontact
trigger15 = stateno = 240
trigger15 = movecontact
trigger16 = stateno = 245
trigger16 = movecontact

; Air attacks
[state -1]
type = changestate
value = 400
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Air Med Punch
[state -1]
type = changestate
value = 410
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 430
trigger3 = movecontact

;Air High Punch
[state -1]
type = changestate
value = 420
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 410
trigger3 = movecontact
trigger4 = stateno = 430
trigger4 = movecontact
trigger5 = stateno = 440
trigger5 = movecontact

; Air Low Kick
[state -1]
type = changestate
value = 430
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact

; Air Medium Kick
[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 410
trigger3 = movecontact
trigger4 = stateno = 430
trigger4 = movecontact

; Air High Kick
[State -1]
type = ChangeState
value = 450
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 410
trigger3 = movecontact
trigger4 = stateno = 420
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact
trigger6 = stateno = 440
trigger6 = movecontact

;---------------------------------------------------------------------------

;Taunt
[State -1]
type = ChangeState
value = 1014 ;195
triggerall = command = "s"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------



