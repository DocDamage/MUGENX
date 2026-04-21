[command]
name = "~a"
command = ~a
time = 1

[command]
name = "~b"
command = ~b
time = 1

[Command]
name = "2QCB_x"
command = ~F, D, DB, B, F, D, DB, B, x
time = 25

[Command]
name = "2QCB_y"
command = ~F, D, DB, B, F, D, DB, B, y
time = 25

[Command]
name = "FHCF_a"
command = ~F, B, D, DF, F, /a
time = 20

[Command]
name = "FHCF_b"
command = ~F, B, D, DF, F, /b
time = 20

[Command]
name = "BF_x"
command = ~40$B, F, x
time = 10

[Command]
name = "BF_y"
command = ~40$B, F, y
time = 10

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y
time = 15

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y
time = 15

[Command]
name = "rupper_a"
command = ~B, D, DB, a
time = 15

[Command]
name = "rupper_b"
command = ~B, D, DB, b
time = 15

[Command]
name = "QCF_x"
command = ~D, DB, B, x
time = 15

[Command]
name = "QCF_y"
command = ~D, DB, B, y
time = 15

[Command]
name = "HCB_x"
command = ~F, B, D, F, x
time = 20

[Command]
name = "HCB_y"
command = ~F, B, D, F, y
time = 20

[Command]
name = "DU"
command = D, $U

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
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = D, D
time = 10

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "down_y"
command = /$D,y
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
[Statedef -1]
;--------------------------AI-----------------------------------------------
[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = stateno != 7020
trigger1 = ctrl = 1
trigger1 = stateno = 0
trigger1 = prevstateno != 1310
trigger2 = stateno = 7021
trigger2 = time > 20
value = 7020
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = stateno != 7021
triggerall = stateno = 0
trigger1 = prevstateno = 1310
trigger1 = p2movetype != a
trigger2 = prevstateno = 195
value = 7021
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = stateno != 130
triggerall = stateno = 0 || stateno = 7020 || stateno = 7021
trigger1 = prevstateno = 1310
trigger1 = p2movetype = a
value = 131
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = stateno != 1310
trigger1 = stateno = 7020
trigger1 = p2movetype = a
value = 1310
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = stateno != 200
triggerall = statetype != a
trigger1 = stateno = 7020
trigger1 = p2movetype != a
trigger1 = p2statetype != a 
trigger1 = p2statetype != l
trigger1 = p2stateno != 5120
trigger1 = p2stateno != 169
trigger1 = p2bodydist x < 20
trigger1 = p2stateno != 20
trigger1 = p2stateno != 11
value = 200
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = stateno != 800
triggerall = statetype != a
triggerall = var(20) > 4
trigger1 = stateno = 7020
trigger1 = p2movetype != a
trigger1 = p2statetype != a 
trigger1 = p2bodydist x < 20
trigger1 = p2movetype != h
trigger1 = p2statetype != l
trigger1 = p2stateno != 5120
trigger1 = p2stateno != 169
trigger1 = p2stateno = 20 || p2stateno = 11
trigger1 = power < 2000
value = 800
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = stateno != 800
triggerall = statetype != a
triggerall = var(20) < 5
trigger1 = stateno = 7020
trigger1 = p2movetype != a
trigger1 = p2statetype != a 
trigger1 = p2bodydist x < 20
trigger1 = p2movetype != h
trigger1 = p2statetype != l
trigger1 = p2stateno != 5120
trigger1 = p2stateno != 169
trigger1 = p2stateno = 20 || p2stateno = 11
trigger1 = power < 2000
value = 810
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = stateno != 3199
triggerall = statetype != a
trigger1 = stateno = 7020
trigger1 = p2movetype != a
trigger1 = p2statetype != a 
trigger1 = p2bodydist x < 20
trigger1 = p2movetype != h
trigger1 = p2statetype != l
trigger1 = p2stateno != 5120
trigger1 = p2stateno != 169
trigger1 = p2stateno = 20 || p2stateno = 11
trigger1 = power > 1999
value = 3199
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = statetype != a
trigger1 = stateno = 200
trigger1 = movehit = 1
value = 230
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = statetype != a
trigger1 = stateno = 200
trigger1 = moveguarded = 1
value = 430
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = var(20) < 5
triggerall = statetype != a
trigger1 = stateno = 230
trigger1 = movehit = 1
trigger2 = stateno = 430
trigger2 = movehit = 1
value = 210
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = var(20) < 5
triggerall = statetype != a
trigger1 = stateno = 230
trigger1 = movehit = 1
trigger2 = stateno = 210
trigger2 = movehit = 1
value = 410
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = var(20) > 4
triggerall = stateno != 240
triggerall = statetype != a
trigger1 = p2stateno = 50
trigger1 = p2bodydist x < 30
trigger1 = ctrl = 1 || stateno = 7020 || stateno = 7021
value = 240
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = var(20) > 4
triggerall = stateno != 210
triggerall = statetype != a
trigger1 = stateno = 230
trigger1 = movehit = 1
trigger2 = stateno = 430
trigger2 = movehit = 1
value = 215
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = var(20) > 4
triggerall = stateno != 8040
triggerall = statetype != a
trigger1 = stateno = 215
trigger1 = movehit = 1
value = 8040
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = stateno != 630
triggerall = statetype = a
trigger1 = stateno = 8050
value = 630
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = stateno != 640
triggerall = statetype = a
trigger1 = stateno = 630
trigger1 = movehit = 1
value = 615
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = var(20) > 4
triggerall = stateno != 1200
triggerall = statetype != a
trigger1 = stateno = 410
trigger1 = movehit = 1
trigger2 = stateno = 210
trigger2 = movehit = 1
value = 1200
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = var(20) < 5
triggerall = stateno != 1000
triggerall = statetype != a
trigger1 = stateno = 410
trigger1 = movehit = 1
trigger2 = stateno = 210
trigger2 = movehit = 1
value = 1000
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = var(20) > 4
triggerall = stateno != 1100
triggerall = statetype != a
triggerall = p2statetype != a
trigger1 = stateno = 1310
trigger1 = animelem = 3
trigger2 = stateno = 230
trigger2 = moveguarded = 1
trigger3 = p2movetype = i
trigger3 = p2dist x < 90
trigger3 = ctrl = 1 || stateno = 7020 || stateno = 7021
value = 1100
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = stateno != 195
triggerall = statetype != a
triggerall = var(20) = 5
trigger1 = ctrl = 1 || stateno = 7020 || stateno = 7021
trigger1 = p2stateno = 5110
value = 195
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = var(20) < 5
triggerall = stateno != 1110
triggerall = statetype != a
triggerall = p2statetype != a
trigger1 = stateno = 1310
trigger1 = animelem = 3
trigger2 = stateno = 230
trigger2 = moveguarded = 1
trigger3 = p2movetype = i
trigger3 = p2dist x < 90
trigger3 = ctrl = 1 || stateno = 7020 || stateno = 7021
value = 1110
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = var(20) < 5
triggerall = power > 999
triggerall = stateno != 3000
triggerall = statetype != a
trigger1 = stateno = 210
trigger1 = moveguarded = 1
trigger1 = statetype != a
trigger2 = stateno = 230
trigger2 = moveguarded = 1
trigger3 = stateno = 1310
trigger3 = animelem = 2
trigger4 = p2movetype = a
trigger4 = p2bodydist y > -20 
trigger4 = p2bodydist x > 150
trigger4 = ctrl = 1 || stateno = 7020 || stateno = 7021
value = 3000
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishelper = 0
triggerall = ishometeam = 1
triggerall = roundstate = 2
triggerall = matchno > 1
triggerall = var(20) > 4
triggerall = power > 1999
triggerall = stateno != 3100
triggerall = statetype != a
trigger1 = p2movetype = a
trigger1 = p2bodydist x < 99
trigger1 = ctrl = 1 || stateno = 7020 || stateno = 7021
trigger2 = stateno = 1310
trigger2 = animelem = 2
value = 3100
ctrl = 0
;---------------------Verificacoes necessarias------------------------------
[state -1, afterimage]
type = afterimagetime
trigger1 = stateno < 100
trigger2 = movetype = h
trigger3 = stateno > 106
trigger3 = stateno < 3000
trigger4 = stateno > 4000
trigger4 = stateno < 8050
value = 0

[state -1, Finish]
type = Helper
trigger1 = winko = 1
trigger1 = numhelper(9999) = 0
ignorehitpause = 1
pos = 0, 0
postype = back
ID = 9999
stateno = 9999
helpertype = normal
keyctrl = 1
ownpal = 1
supermovetime = 99999
pausemovetime = 99999
;----------------variaveis------------------
[state -1, var]
type = varset
trigger1 = stateno != 3100
v = 10
value = 0

[state -1, var]
type = varset
trigger1 = stateno = 3100
trigger1 = time = 0
v = 10
value = 1

[State -1, var]
type = Varrandom
trigger1 = roundstate = 2
v = 20
range = 0, 8

[State -1, snd]
type = PlaySnd
triggerall = var(20) > 5
trigger1 = stateno = 5000
trigger1 = time = 1
trigger2 = stateno = 5020
trigger2 = time = 1
trigger3 = stateno = 5010
trigger3 = time = 1
trigger4 = stateno = 5070
trigger4 = time = 1
trigger5 = stateno = 5080
trigger5 = time = 1
value = 5000, 0

[state -1, varcombo]
type = varset
trigger1 = stateno = 8040
trigger1 = prevstateno = 215
v = 30
value = 0

[state -1, varcombo]
type = varset
trigger1 = stateno = 50
trigger2 = stateno = 40
v = 30
value = 2

[state -1, varset1]
type = varset
trigger1 = command = "FHCF_a" || command = "FHCF_b"
trigger2 = command = "2QCB_y"
ignorehitpause = 1
v = 40
value = 1

[state -1, varset2]
type = varset
trigger1 = stateno = 3100
trigger1 = command = "~a" || command = "~b"
trigger2 = command = "2QCB_x"
ignorehitpause = 1
v = 40
value = 0

[state -1]
type = changeanim
value = 3100
triggerall = stateno = 3100
triggerall = anim = 5500
triggerall = var(40) = 0
trigger1 = time > 15

;----------superpulo---------------
[State -1, superpulo]
type = ChangeState
value = 8040
triggerall = command = "DU"
trigger1 = stateno = 40
;=============supers===============
[state -1, special 2]
type = changestate
value = 3199
triggerall = command = "2QCB_x" || command = "2QCB_y" 
triggerall = power > 1999
triggerall = p2stateno != 5120
triggerall = p2statetype != a
triggerall = statetype != A
triggerall = ishelper = 0
triggerall = p2movetype != h
triggerall = p2dist x < 101
trigger1 = ctrl
trigger2 = stateno >= 150
trigger2 = stateno < 154
trigger3 = stateno = 1300 || stateno = 1310
trigger4 = stateno = 1200 
trigger4 = movecontact = 1
trigger4 = p2stateno != 1220
trigger4 = time > 11
trigger5 = stateno = 3000
trigger5 = numhelper(2001) = 1
trigger5 = p2movetype = h
trigger6 = stateno = 1210 
trigger6 = movecontact = 1
trigger6 = p2stateno != 1220
trigger6 = time > 27
;---------------------------------------------------------------------------
[state -1, special 1]
type = changestate
value = 3100
triggerall = command = "FHCF_a" || command = "FHCF_b" 
triggerall = power > 1999
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 210
trigger7 = movecontact = 1
trigger8 = stateno = 250
trigger8 = movecontact = 1
trigger9 = stateno = 1300 || stateno = 1310
trigger10 = stateno = 1200 
trigger10 = movecontact = 1
trigger10 = p2stateno != 1220
trigger10 = time > 11
trigger11 = stateno = 3000
trigger11 = numhelper(2001) = 1
trigger11 = p2movetype = h
trigger12 = stateno = 1210 
trigger12 = movecontact = 1
trigger12 = p2stateno != 1220
trigger12 = time > 27
trigger13 = stateno >= 150
trigger13 = stateno < 154
;---------------------------------------------------------------------------
[state -1, extra 1]
type = changestate
value = 3000
triggerall = command = "QCB_xy"
triggerall = power > 999
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 210
trigger7 = movecontact = 1
trigger8 = stateno = 250
trigger8 = movecontact = 1
trigger9 = stateno = 1300 || stateno = 1310
trigger10 = stateno = 1200 
trigger10 = movecontact = 1
trigger10 = p2stateno != 1220
trigger10 = time > 11
trigger11 = stateno = 1210 
trigger11 = movecontact = 1
trigger11 = p2stateno != 1220
trigger11 = time > 27
trigger12 = stateno >= 150
trigger12 = stateno < 154
;---------------------------------------------------------------------------
[State -1, rolando no chao]
type = ChangeState
value = 169
triggerall = stateno = 5110
triggerall = alive = 1
trigger1 = command = "recovery"
;---------------------------------------------------------------------------
[state -1, special 2]
type = changestate
value = 1100
triggerall = command = "HCB_x"
trigger1 = statetype != a
trigger1 = ctrl
;---------------------------------------------------------------------------
[state -1, special 2]
type = changestate
value = 1110
triggerall = command = "HCB_y"
trigger1 = statetype != a
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, special 1]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 210
trigger7 = movecontact = 1
trigger8 = stateno = 250
trigger8 = movecontact = 1
;---------------------------------------------------------------------------
[State -1, special 1]
type = ChangeState
value = 1010
triggerall = command = "QCF_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 210
trigger7 = movecontact = 1
trigger8 = stateno = 250
trigger8 = movecontact = 1
;---------------------------------------------------------------------------
[State -1, special 3]
type = ChangeState
value = 1200
triggerall = command = "BF_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 210
trigger7 = movecontact = 1
trigger8 = stateno = 250
trigger8 = movecontact = 1
;---------------------------------------------------------------------------
[State -1, special 3]
type = ChangeState
value = 1210
triggerall = command = "BF_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 210
trigger7 = movecontact = 1
trigger8 = stateno = 250
trigger8 = movecontact = 1
;---------------------------------------------------------------------------
[State -1, special 4]
type = ChangeState
value = 1300
triggerall = command = "rupper_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 210
trigger7 = movecontact = 1
trigger8 = stateno = 250
trigger8 = movecontact = 1
;---------------------------------------------------------------------------
[State -1, special 4]
type = ChangeState
value = 1310
triggerall = command = "rupper_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 210
trigger7 = movecontact = 1
trigger8 = stateno = 250
trigger8 = movecontact = 1
;---------------------------------------------------------------------------
;-----------------------ataques normais-------------------------------------
;---------------------------------------------------------------------------
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;--------------------------------------------------------------------------
[State -1, arremesso 1]
type = ChangeState
value = 800
triggerall = p2stateno != 5120
triggerall = p2statetype != a
triggerall = statetype != A
triggerall = ctrl
triggerall = ishelper = 0
triggerall = command = "fwd_y"
triggerall = p2movetype != h
triggerall = stateno != 100
trigger1 = p2bodydist x < 26
;--------------------------------------------------------------------------
[State -1, arremesso 1]
type = ChangeState
value = 820
triggerall = p2stateno != 5120
triggerall = p2statetype != a
triggerall = statetype != A
triggerall = ctrl
triggerall = ishelper = 0
triggerall = command = "back_y"
triggerall = p2movetype != h
triggerall = stateno != 100
trigger1 = p2bodydist x < 26
;--------------------------------------------------------------------------
[State -1, arremesso 2]
type = ChangeState
value = 810
triggerall = p2stateno != 5120
triggerall = p2statetype != a
triggerall = statetype != A
triggerall = ctrl
triggerall = ishelper = 0
triggerall = command = "fwd_b" || command = "back_b"
triggerall = p2movetype != h
triggerall = stateno != 100
trigger1 = p2bodydist x < 26
;---------------------------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "fwd_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1
;---------------------------------------------------------------------------
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1
;---------------------------------------------------------------------------
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 400
trigger3 = movecontact = 1
;---------------------------------------------------------------------------
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = p2bodydist y > -11
triggerall = p2bodydist x < 26
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 410
trigger7 = movecontact = 1
;---------------------------------------------------------------------------
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1
trigger6 = stateno = 210
trigger6 = movecontact = 1
trigger7 = stateno = 410
trigger7 = movecontact = 1
;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1
;---------------------------------------------------------------------------
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 400
trigger3 = movecontact = 1
;---------------------------------------------------------------------------
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 400
trigger4 = movecontact = 1
trigger5 = stateno = 430
trigger5 = movecontact = 1
trigger6 = stateno = 410
trigger6 = movecontact = 1
trigger7 = stateno = 210
trigger7 = movecontact = 1
;---------------------------------------------------------------------------
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Jump Strong Punch]
type = ChangeState
value = 615
triggerall = command = "down_y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 630
trigger3 = movecontact = 1
;---------------------------------------------------------------------------
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 630
trigger3 = movecontact = 1
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
;---------------------------------------------------------------------------
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 630
trigger3 = movecontact = 1
trigger4 = stateno = 610
trigger4 = movecontact = 1
trigger5 = stateno = 615
trigger5 = movecontact = 1
