
;-|Super Motions |--------------------------------------------------------

[command]
name = "arakuma"
command = ~F, FU, U, UB, B, DB, D, DF, F, a
time = 60

[command]
name = "arakuma"
command = ~F, FU, U, UB, B, DB, D, DF, F, b
time = 60

[command]
name = "arakuma"
command = ~F, FU, U, UB, B, DB, D, DF, F, c
time = 60

[command]
name = "arakuma"
command = ~F, U, B, D, F, a
time = 40

[command]
name = "arakuma"
command = ~F, U, B, D, F, b
time = 40

[command]
name = "arakuma"
command = ~F, U, B, D, F, c
time = 40

[command]
name = "arakuma"
command = ~B, D, F, a
time = 20

[command]
name = "arakuma"
command = ~B, D, F, b
time = 20

[command]
name = "arakuma"
command = ~B, D, F, c
time = 20

[command]
name = "shinguren"
command = ~D, DB, B, D, DB, B, z
time = 40

[command]
name = "shinpi_x"
command = ~D, DF, F, D, DF, F, x
time = 25

[command]
name = "shinpi_y"
command = ~D, DF, F, D, DF, F, y
time = 25

[command]
name = "shinpi_z"
command = ~D, DF, F, D, DF, F, z
time = 25

[command]
name = "kououken_a"
command = ~D, DF, F, D, DF, F, a
time = 25

[command]
name = "kououken_b"
command = ~D, DF, F, D, DF, F, b
time = 25

[command]
name = "kououken_c"
command = ~D, DF, F, D, DF, F, c
time = 25

;-| Special Motions |------------------------------------------------------
[command]
name = "dp_x"
command = ~F, D, DF, x
time = 15

[command]
name = "dp_y"
command = ~F, D, DF, y
time = 15

[command]
name = "dp_z"
command = ~F, D, DF, z
time = 15

[command]
name = "rdp_x"
command = ~B, D, DB, x
time = 15

[command]
name = "rdp_y"
command = ~B, D, DB, y
time = 15

[command]
name = "rdp_z"
command = ~B, D, DB, z
time = 15

[command]
name = "dpk_a"
command = ~F, D, DF, a
time = 15

[command]
name = "dpk_b"
command = ~F, D, DF, b
time = 15

[command]
name = "dpk_c"
command = ~F, D, DF, c
time = 15

[command]
name = "yasha_k"
command = ~D, DB, B, a
time = 25

[command]
name = "yasha_k"
command = ~D, DB, B, b
time = 25

[command]
name = "yasha_k"
command = ~D, DB, B, c
time = 25

[command]
name = "yasha_p"
command = ~D, DB, B, x
time = 25

[command]
name = "yasha_p"
command = ~D, DB, B, y
time = 25

[command]
name = "yasha_p"
command = ~D, DB, B, z
time = 25

[command]
name = "qcf_a"
command = ~D, DF, F, a
time = 25

[command]
name = "qcf_b"
command = ~D, DF, F, b
time = 25

[command]
name = "qcf_c"
command = ~D, DF, F, c
time = 25

[command]
name = "guren_x"
command = ~D, DF, F, x
time = 25

[command]
name = "guren_y"
command = ~D, DF, F, y
time = 25

[command]
name = "guren_z"
command = ~D, DF, F, z
time = 25

[command]
name = "counter"
command = ~B, DB, D, x
time = 25

[command]
name = "counter"
command = ~B, DB, D, y
time = 25

[command]
name = "counter"
command = ~B, DB, D, z
time = 25

[command]
name = "counter"
command = /B, F, z+c
;time = 25

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF"
command = F, F
time = 12

[Command]
name = "BB"
command = B, B
time = 12

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery2";Required (do not remove)
command = y+z
time = 1

[Command]
name = "recovery3";Required (do not remove)
command = x+z
time = 1

;-| Hold Button |-----------------------------------------------------------

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
name = "hold_d"
command = /x
time = 1

[Command]
name = "hold_d"
command = /z
time = 1

[Command]
name = "charge"
command = /zc
time = 2

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holddownforward"
command = /$DF
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "ThrowP"
command = /F, x+y
time = 1

[Command]
name = "ThrowP"
command = /B, x+y
time = 1

[Command]
name = "ThrowP"
command = /F, y+z
time = 1

[Command]
name = "ThrowP"
command = /B, y+z
time = 1

[Command]
name = "ThrowP"
command = /F, x+z
time = 1

[Command]
name = "ThrowP"
command = /B, x+z
time = 1

[Command]
name = "ThrowK"
command = /F, a+b
time = 1

[Command]
name = "ThrowK"
command = /B, a+b
time = 1

[Command]
name = "ThrowK"
command = /F, b+c
time = 1

[Command]
name = "ThrowK"
command = /B, b+c
time = 1

[Command]
name = "ThrowK"
command = /F, a+c
time = 1

[Command]
name = "ThrowK"
command = /B, a+c
time = 1

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
name = "fwd_d"
command = /F,x
time = 1

[Command]
name = "fwd_d"
command = /F,z
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
time = 2

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

[Command]
name = "u"
command = U
time = 1

[Command]
name = "d"
command = D
time = 1

[Command]
name = "l"
command = F
time = 1

[Command]
name = "r"
command = B
time = 1


;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
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
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "longjump"
command = D, $U
time = 18

;---------------------------------------------------------------------------
; Commands
[Statedef -1]

; ShinGurenKen
[State -1]
type = ChangeState
value = 2040
triggerall = var(1) = 1
triggerall = command = "shinguren"
triggerall = statetype != A && power >= 3000
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact

; ShinpiKaibyaku Z
[State -1]
type = ChangeState
value = 2032
triggerall = command = "shinpi_z"
triggerall = statetype != A && power >= 3000
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA || (stateno = [200,250]) || (stateno = [300,350])
trigger2 = movecontact
trigger2 = var(1) = 1

; ShinpiKaibyaku Y
[State -1]
type = ChangeState
value = 2031
triggerall = (command = "shinpi_y" || command = "shinpi_z")
triggerall = statetype != A && power >= 2000
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA || (stateno = [200,250]) || (stateno = [300,350])
trigger2 = movecontact
trigger2 = var(1) = 1

; ShinpiKaibyaku X
[State -1]
type = ChangeState
value = 2030
triggerall = (command = "shinpi_x" || command = "shinpi_y" || command = "shinpi_z")
triggerall = statetype != A && power >= 1000
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA || (stateno = [200,250]) || (stateno = [300,350])
trigger2 = movecontact
trigger2 = var(1) = 1

; Kououken C
[State -1]
type = ChangeState
value = 2020
triggerall = command = "kououken_c"
triggerall = statetype != A && power >= 3000
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger2 = var(1) = 1

; Kououken B
[State -1]
type = ChangeState
value = 2010
triggerall = (command = "kououken_b" || command = "kououken_c")
triggerall = statetype != A && power >= 2000
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger2 = var(1) = 1

; Kououken A
[State -1]
type = ChangeState
value = 2000
triggerall = (command = "kououken_a" || command = "kououken_b" || command = "kououken_c")
triggerall = statetype != A && power >= 1000
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger2 = var(1) = 1

;Throw Punch
[State -1]
type = ChangeState
value = 260
triggerall = command = "ThrowP"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Throw Kick
[State -1]
type = ChangeState
value = 270
triggerall = command = "ThrowK"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Air Throw Punch
[State -1]
type = ChangeState
value = 470
triggerall = command = "ThrowP"
trigger1 = statetype = A
trigger1 = ctrl = 1

;Guard Cancel
[State -1]
type = ChangeState
value = 280
triggerall = command = "counter" && power >= 500 && stateno != 360
triggerall = stateno = [150,153]
trigger1 = statetype != A
ignorehitpause = 1

;Oboetazo counter
[State -1]
type = ChangeState
value = 360
triggerall = stateno = [150,153]
triggerall = var(10) != 0 && var(10) = enemy, anim
triggerall = statetype != A 
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
trigger4 = command = "a"
trigger5 = command = "b"
trigger6 = command = "c"
ignorehitpause = 1

; Arakuma Inashi
[State -1]
type = ChangeState
value = 1080
triggerall = command = "arakuma"
triggerall = statetype != A
trigger1 = ctrl = 1

; Ressen Chou
[State -1]
type = ChangeState
value = 1050
triggerall = command = "rdp_x"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger2 = var(1) = 1

; Ressen Chou
[State -1]
type = ChangeState
value = 1051
triggerall = command = "rdp_y"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger2 = var(1) = 1

; Ressen Chou
[State -1]
type = ChangeState
value = 1052
triggerall = command = "rdp_z"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger2 = var(1) = 1

; MujinKyaku
[State -1]
type = ChangeState
value = 1010
triggerall = command = "dpk_a"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger2 = var(1) = 1

; MujinKyaku
[State -1]
type = ChangeState
value = 1011
triggerall = command = "dpk_b"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger2 = var(1) = 1

; MujinKyaku
[State -1]
type = ChangeState
value = 1012
triggerall = command = "dpk_c"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger2 = var(1) = 1

; Hoppunch
[State -1]
type = ChangeState
value = 1020
triggerall = command = "qcf_a"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger2 = var(1) = 1

; Hoppunch
[State -1]
type = ChangeState
value = 1030
triggerall = command = "qcf_b"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger2 = var(1) = 1

; Hoppunch
[State -1]
type = ChangeState
value = 1040
triggerall = command = "qcf_c"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger2 = var(1) = 1

; HouShou
[State -1]
type = ChangeState
value = 1000
triggerall = command = "dp_x"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger2 = var(1) = 1

; HouShou
[State -1]
type = ChangeState
value = 1001
triggerall = command = "dp_y"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger2 = var(1) = 1

; HouShou
[State -1]
type = ChangeState
value = 1002
triggerall = command = "dp_z"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger2 = var(1) = 1

; Yasha Gaeshi Upper
[State -1]
type = ChangeState
value = 1060
triggerall = command = "yasha_p"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger2 = var(1) = 1
trigger3 = hitdefattr = SC, NA
trigger3 = movecontact
trigger3 = var(1) = 0
trigger3 = stateno != 350

; Yasha Gaeshi Lower
[State -1]
type = ChangeState
value = 1061
triggerall = command = "yasha_k"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger2 = var(1) = 1
trigger3 = hitdefattr = SC, NA
trigger3 = movecontact
trigger3 = var(1) = 0
trigger3 = stateno != 350

; Guren Ken
[State -1]
type = ChangeState
value = 1070
triggerall = command = "guren_x"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger2 = var(1) = 1
trigger3 = stateno = 310
trigger3 = movecontact
trigger3 = var(1) = 0
trigger4 = stateno = 320
trigger4 = movecontact
trigger4 = var(1) = 0

; Guren Ken
[State -1]
type = ChangeState
value = 1071
triggerall = command = "guren_y"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger2 = var(1) = 1
trigger3 = stateno = 310
trigger3 = movecontact
trigger3 = var(1) = 0
trigger4 = stateno = 320
trigger4 = movecontact
trigger4 = var(1) = 0

; Guren Ken
[State -1]
type = ChangeState
value = 1072
triggerall = command = "guren_z"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact
trigger2 = var(1) = 1
trigger3 = stateno = 310
trigger3 = movecontact
trigger3 = var(1) = 0
trigger4 = stateno = 320
trigger4 = movecontact
trigger4 = var(1) = 0

; Overhead Kick
[State -1]
type = ChangeState
value = 245
triggerall = command = "fwd_b"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210 && movecontact
trigger2 = var(1) = 1
trigger3 = stateno = 240 && movecontact
trigger3 = var(1) = 1

;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = command = "FF"
triggerall = var(1) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunB
[State -1]
type = ChangeState
value = 105
triggerall = command = "BB"
triggerall = var(1) = 1
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Standing Low Punch
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = statetype = S
triggerall = command != "holddown"
trigger1 = ctrl = 1
trigger2 = stateno = 200 && animelemno(0) >= 2

; Standing Medium Punch
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
trigger1 = statetype = S
triggerall = command != "holddown"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = var(1) = 1
trigger3 = stateno = 230
trigger3 = movecontact
trigger3 = var(1) = 1
trigger4 = stateno = 300
trigger4 = movecontact
trigger4 = var(1) = 1
trigger5 = stateno = 330
trigger5 = movecontact
trigger5 = var(1) = 1

; Standing High Punch
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
trigger1 = statetype = S
triggerall = command != "holddown"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = var(1) = 1
trigger3 = stateno = 210
trigger3 = movecontact
trigger3 = var(1) = 1
trigger4 = stateno = 230
trigger4 = movecontact
trigger4 = var(1) = 1
trigger5 = stateno = 240
trigger5 = movecontact
trigger5 = var(1) = 1
trigger6 = stateno = 300
trigger6 = movecontact
trigger6 = var(1) = 1
trigger7 = stateno = 310
trigger7 = movecontact
trigger7 = var(1) = 1
trigger8 = stateno = 330
trigger8 = movecontact
trigger8 = var(1) = 1
trigger9 = stateno = 340
trigger9 = movecontact
trigger9 = var(1) = 1

; Standing Low Kick
[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = var(1) = 1
trigger3 = stateno = 300
trigger3 = movecontact
trigger3 = var(1) = 1

; Standing Medium Kick
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
trigger1 = statetype = S
triggerall = command != "holddown"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = var(1) = 1
trigger3 = stateno = 210
trigger3 = movecontact
trigger3 = var(1) = 1
trigger4 = stateno = 230
trigger4 = movecontact
trigger4 = var(1) = 1
trigger5 = stateno = 300
trigger5 = movecontact
trigger5 = var(1) = 1
trigger6 = stateno = 310
trigger6 = movecontact
trigger6 = var(1) = 1
trigger7 = stateno = 330
trigger7 = movecontact
trigger7 = var(1) = 1

; Standing High Kick
[State -1]
type = ChangeState
value = 250
triggerall = command = "c"
trigger1 = statetype = S
triggerall = command != "holddown"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = var(1) = 1
trigger3 = stateno = 210
trigger3 = movecontact
trigger3 = var(1) = 1
trigger4 = stateno = 220
trigger4 = movecontact
trigger4 = var(1) = 1
trigger5 = stateno = 230
trigger5 = movecontact
trigger5 = var(1) = 1
trigger6 = stateno = 240
trigger6 = movecontact
trigger6 = var(1) = 1
trigger7 = stateno = 300
trigger7 = movecontact
trigger7 = var(1) = 1
trigger8 = stateno = 310
trigger8 = movecontact
trigger8 = var(1) = 1
trigger9 = stateno = 320
trigger9 = movecontact
trigger9 = var(1) = 1
trigger10 = stateno = 330
trigger10 = movecontact
trigger10 = var(1) = 1
trigger11 = stateno = 340
trigger11 = movecontact
trigger11 = var(1) = 1

;---------------------------------------------------------------------------

; Crouching Low Punch
[State -1]
type = ChangeState
value = 300
triggerall = command = "x"
trigger1 = statetype = C
triggerall = command = "holddown"
trigger1 = ctrl = 1
trigger2 = stateno = 300 && animelemno(0) >= 2

; Crouching Medium Punch
[State -1]
type = ChangeState
value = 310
triggerall = command = "y"
trigger1 = statetype = C
triggerall = command = "holddown"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = var(1) = 1
trigger3 = stateno = 230
trigger3 = movecontact
trigger3 = var(1) = 1
trigger4 = stateno = 300
trigger4 = movecontact
trigger4 = var(1) = 1
trigger5 = stateno = 330
trigger5 = movecontact
trigger5 = var(1) = 1

; Crouching High Punch
[State -1]
type = ChangeState
value = 320
triggerall = command = "z"
trigger1 = statetype = C
triggerall = command = "holddown"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = var(1) = 1
trigger3 = stateno = 210
trigger3 = movecontact
trigger3 = var(1) = 1
trigger4 = stateno = 230
trigger4 = movecontact
trigger4 = var(1) = 1
trigger5 = stateno = 240
trigger5 = movecontact
trigger5 = var(1) = 1
trigger6 = stateno = 300
trigger6 = movecontact
trigger6 = var(1) = 1
trigger7 = stateno = 310
trigger7 = movecontact
trigger7 = var(1) = 1
trigger8 = stateno = 330
trigger8 = movecontact
trigger8 = var(1) = 1
trigger9 = stateno = 340
trigger9 = movecontact
trigger9 = var(1) = 1

; Crouching Low Kick
[State -1]
type = ChangeState
value = 330
triggerall = command = "a"
trigger1 = statetype = C
triggerall = command = "holddown"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = var(1) = 1
trigger3 = stateno = 330 && animelemno(0) >= 2
trigger4 = stateno = 300
trigger4 = movecontact
trigger4 = var(1) = 1

; Crouching Medium Kick
[State -1]
type = ChangeState
value = 340
triggerall = command = "b"
trigger1 = statetype = C
triggerall = command = "holddown"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = var(1) = 1
trigger3 = stateno = 210
trigger3 = movecontact
trigger3 = var(1) = 1
trigger4 = stateno = 230
trigger4 = movecontact
trigger4 = var(1) = 1
trigger5 = stateno = 300
trigger5 = movecontact
trigger5 = var(1) = 1
trigger6 = stateno = 310
trigger6 = movecontact
trigger6 = var(1) = 1
trigger7 = stateno = 330
trigger7 = movecontact
trigger7 = var(1) = 1

; Crouching High Kick
[State -1]
type = ChangeState
value = 350
triggerall = command = "c"
trigger1 = statetype = C
triggerall = command = "holddown"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger2 = var(1) = 1
trigger3 = stateno = 210
trigger3 = movecontact
trigger3 = var(1) = 1
trigger4 = stateno = 220
trigger4 = movecontact
trigger4 = var(1) = 1
trigger5 = stateno = 230
trigger5 = movecontact
trigger5 = var(1) = 1
trigger6 = stateno = 240
trigger6 = movecontact
trigger6 = var(1) = 1
trigger7 = stateno = 300
trigger7 = movecontact
trigger7 = var(1) = 1
trigger8 = stateno = 310
trigger8 = movecontact
trigger8 = var(1) = 1
trigger9 = stateno = 320
trigger9 = movecontact
trigger9 = var(1) = 1
trigger10 = stateno = 330
trigger10 = movecontact
trigger10 = var(1) = 1
trigger11 = stateno = 340
trigger11 = movecontact
trigger11 = var(1) = 1

;===========================================================================

; Air Low Punch
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl = 1

; Air Medium Punch
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact
trigger2 = var(1) = 1
trigger3 = stateno = 430
trigger3 = movecontact
trigger3 = var(1) = 1

; Air High Punch
[State -1]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact
trigger2 = var(1) = 1
trigger3 = stateno = 410
trigger3 = movecontact
trigger3 = var(1) = 1
trigger4 = stateno = 430
trigger4 = movecontact
trigger4 = var(1) = 1
trigger5 = stateno = 440
trigger5 = movecontact
trigger5 = var(1) = 1

; Air Low Kick
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact
trigger2 = var(1) = 1

; Air Medium Kick
[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact
trigger2 = var(1) = 1
trigger3 = stateno = 410
trigger3 = movecontact
trigger3 = var(1) = 1
trigger4 = stateno = 430
trigger4 = movecontact
trigger4 = var(1) = 1

; Air High Kick
[State -1]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 400
trigger2 = movecontact
trigger2 = var(1) = 1
trigger3 = stateno = 410
trigger3 = movecontact
trigger3 = var(1) = 1
trigger4 = stateno = 420
trigger4 = movecontact
trigger4 = var(1) = 1
trigger5 = stateno = 430
trigger5 = movecontact
trigger5 = var(1) = 1
trigger6 = stateno = 440
trigger6 = movecontact
trigger6 = var(1) = 1

;---------------------------------------------------------------------------
;Taunt
[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
triggerall = stateno != 195
triggerall = var(4) = 0
trigger1 = statetype = S
trigger1 = ctrl = 1

;Taunt
[State -1]
type = ChangeState
value = 500
triggerall = command = "hold_z" && command = "hold_c"
triggerall = var(1) = 1 && power < 3000
trigger1 = statetype = S
trigger1 = ctrl = 1


