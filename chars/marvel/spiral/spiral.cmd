[Command] 
name = "DU"
command = ~D, $U
time = 5

[Command] 
name = "DU"
command = a+b+c
time = 1

[Command] 
name = "DU_z"
command = ~D, U, z
time = 10

[Command] 
name = "DU_y"
command = ~D, U, y
time = 10

[Command] 
name = "DU_x"
command = ~D, U, x
time = 10

[Command] 
name = "uppercut_z"
command = ~F, D, DF, z

[Command] 
name = "uppercut_y"
command = ~F, D, DF, y

[Command] 
name = "uppercut_x"
command = ~F, D, DF, x

[Command]
name = "QCB_ax"
command = ~D, DB, B, a+x

[Command]
name = "QCB_by"
command = ~D, DB, B, b+y

[Command]
name = "QCB_cz"
command = ~D, DB, B, c+z

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

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "QCB_xz"
command = ~D, DB, B, x+z

[Command]
name = "QCB_yz"
command = ~D, DB, B, y+z

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCF_xz"
command = ~D, DF, F, x+z

[Command]
name = "QCF_yz"
command = ~D, DF, F, z+y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

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
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "QCF_ac"
command = ~D, DF, F, a+c

[Command]
name = "QCF_bc"
command = ~D, DF, F, c+b

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
name = "recovery";Required (do not remove)
command = x+z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = z+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+c
time = 1

[Command]
name = "recovery";Required (do not remove)
command = c+b
time = 1
;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "up_b"
command = /$U,b
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
[Statedef -1]
;---------------------------- AI -------------------------
[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
trigger1 = ctrl = 1 || stateno = 7100
trigger1 = p2bodydist x < 30
trigger1 = p2bodydist y < -30
trigger1 = p2statetype = a
value = 1000
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = statetype != a
trigger1 = ctrl = 1 || stateno = 7100
trigger1 = p2bodydist x < 30
trigger1 = p2statetype != a
trigger1 = p2stateno = 20
trigger1 = numhelper(3999) = 0
trigger2 = ctrl = 1 || stateno = 7100
trigger2 = p2bodydist x < 30
trigger2 = p2statetype != a
trigger2 = p2stateno = 5
trigger2 = numhelper(3999) = 0
value = 800
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = statetype != a
trigger1 = ctrl = 1 || stateno = 7100
trigger1 = p2bodydist x < 40
trigger1 = p2stateno != 20 || p2stateno != 5
trigger1 = numhelper(3999) = 0
value = 200
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = statetype != a
trigger1 = stateno = 200
trigger1 = movecontact = 1
value = 440
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = statetype != a
trigger1 = stateno = 440
trigger1 = movehit = 1
value = 450
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = statetype != a
trigger1 = stateno = 440
trigger1 = moveguarded = 1
trigger1 = numhelper(3999) = 0
value = 420
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = statetype != a
trigger1 = stateno = 450
trigger1 = movehit = 1
value = 8040
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = statetype = a
trigger1 = stateno = 8050
trigger1 = numhelper(3999) = 0
value = 600
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = statetype = a
trigger1 = stateno = 600
trigger1 = movecontact = 1
value = 630
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = statetype = a
trigger1 = stateno = 630
trigger1 = movecontact = 1
trigger1 = numhelper(3999) = 0
value = 610
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = statetype = a
trigger1 = stateno = 610
trigger1 = movecontact = 1
value = 640
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = statetype = a
trigger1 = stateno = 640
trigger1 = movecontact = 1
value = 650
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = statetype = s
trigger1 = ctrl = 1 || stateno = 7100
trigger1 = p2bodydist x < 40
trigger1 = numhelper(3999) = 1
trigger1 = p2statetype != a
trigger1 = p2movetype = i
value = 3001
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = statetype != a
trigger1 = numhelper(4201) = 1 || numhelper(4101) = 1
trigger1 = ctrl = 1
trigger2 = numhelper(3999) = 1 || numhelper(4001) = 1
trigger2 = ctrl = 1
value = 7100
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = power > 999
triggerall = statetype != a
trigger1 = ctrl = 1
trigger1 = numhelper(4001) = 0
trigger1 = var(40) = 5
value = 4000
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = power > 999
triggerall = statetype != a
trigger1 = ctrl = 1
trigger1 = numhelper(4101) = 0
trigger1 = var(40) = 4
value = 4100
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = power > 999
triggerall = statetype != a
trigger1 = ctrl = 1
trigger1 = numhelper(4201) = 0
trigger1 = var(40) = 3
value = 4200
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = power > 999
triggerall = statetype != a
trigger1 = ctrl = 1
trigger1 = numhelper(3999) = 0
trigger1 = var(40) < 3
value = 3000
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = ctrl = 1
triggerall = var(40) = 0
trigger1 = prevstateno != 1500
trigger1 = prevstateno != 1501
trigger1 = prevstateno != 1502
trigger1 = prevstateno != 1503
trigger1 = prevstateno != 1504
trigger1 = prevstateno != 1505
value = 1500
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = ctrl = 1
triggerall = var(40) = 1
trigger1 = prevstateno != 1500
trigger1 = prevstateno != 1501
trigger1 = prevstateno != 1502
trigger1 = prevstateno != 1503
trigger1 = prevstateno != 1504
trigger1 = prevstateno != 1505
value = 1501
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = ctrl = 1
triggerall = var(40) = 2
trigger1 = prevstateno != 1500
trigger1 = prevstateno != 1501
trigger1 = prevstateno != 1502
trigger1 = prevstateno != 1503
trigger1 = prevstateno != 1504
trigger1 = prevstateno != 1505
value = 1502
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = ctrl = 1
triggerall = var(40) = 3
trigger1 = prevstateno != 1500
trigger1 = prevstateno != 1501
trigger1 = prevstateno != 1502
trigger1 = prevstateno != 1503
trigger1 = prevstateno != 1504
trigger1 = prevstateno != 1505
value = 1503
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = ctrl = 1
triggerall = var(40) = 4
trigger1 = prevstateno != 1500
trigger1 = prevstateno != 1501
trigger1 = prevstateno != 1502
trigger1 = prevstateno != 1503
trigger1 = prevstateno != 1504
trigger1 = prevstateno != 1505
value = 1504
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = ctrl = 1
triggerall = var(40) = 5
trigger1 = prevstateno != 1500
trigger1 = prevstateno != 1501
trigger1 = prevstateno != 1502
trigger1 = prevstateno != 1503
trigger1 = prevstateno != 1504
trigger1 = prevstateno != 1505
value = 1505
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = ctrl = 1
triggerall = numhelper(9100) = 0
triggerall = numhelper(9101) = 0
triggerall = numhelper(9102) = 0
triggerall = numhelper(9103) = 0
triggerall = numhelper(9104) = 0
triggerall = numhelper(9105) = 0
trigger1 = prevstateno = 1500
trigger2 = prevstateno = 1501
trigger3 = prevstateno = 1502
trigger4 = prevstateno = 1503
trigger5 = prevstateno = 1504
trigger6 = prevstateno = 1505
value = 1100
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = power > 999
trigger1 = ctrl = 1
trigger1 = prevstateno = 1501
trigger1 = numhelper(9105) = 0
trigger2 = ctrl = 1
trigger2 = prevstateno = 1503
trigger2 = numhelper(9105) = 0
trigger3 = ctrl = 1
trigger3 = prevstateno = 1505
trigger3 = numhelper(9105) = 0
value = 3500
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
trigger1 = ctrl = 1
trigger1 = prevstateno = 1500
trigger1 = numhelper(9105) = 1
trigger2 = prevstateno = 1100
trigger2 = ctrl = 1
value = 1120
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = var(40) = 0 || var(40) = 1
trigger1 = ctrl = 1
trigger1 = prevstateno = 1501
trigger1 = numhelper(9105) = 1
trigger2 = prevstateno = 1100
trigger2 = ctrl = 1
trigger3 = ctrl = 1
trigger3 = prevstateno = 1503
trigger3 = numhelper(9105) = 1
value = 1110
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = var(40) = 3 || var(40) = 2
trigger1 = ctrl = 1
trigger1 = prevstateno = 1501
trigger1 = numhelper(9105) = 1
trigger2 = prevstateno = 1100
trigger2 = ctrl = 1
trigger3 = ctrl = 1
trigger3 = prevstateno = 1503
trigger3 = numhelper(9105) = 1
value = 1111
ctrl = 0

[state -1, AI]
type = changestate
triggerall = ishometeam = 1
triggerall = matchno > 1
triggerall = ishelper = 0
triggerall = roundstate = 2
triggerall = var(40) = 4 || var(40) = 5
trigger1 = ctrl = 1
trigger1 = prevstateno = 1501
trigger1 = numhelper(9105) = 1
trigger2 = prevstateno = 1100
trigger2 = ctrl = 1
trigger3 = ctrl = 1
trigger3 = prevstateno = 1503
trigger3 = numhelper(9105) = 1
value = 1112
ctrl = 0

;============================bugs ========================
[state -1, helper]
type = helper
trigger1 = numhelper(9999) = 0
pos = 0, 0
postype = p1
id = 9999
stateno = 9999
keyctrl = 0
ownpal = 1

[state -1, bug]
type = destroyself
trigger1 = ishelper = 1
trigger1 = stateno < 3501

[State -1,snd]
type = PlaySnd
triggerall = var(40) = 1
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
value = 5000, 1
channel = 4

[State -1, snd]
type = PlaySnd
triggerall = var(40) = 0
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
channel = 4

[state -1, snd dizzy]
type = playsnd
trigger1 = anim = 5300
trigger1 = animelem = 2
value = 5300, 0
channel = 2
volume = 300

[state -1, special paleta]
type = palfx
triggerall = ishelper = 0
trigger1 = numhelper(3999) != 0
trigger1 = helper(3999), animelem = 1
add = 240,0,0
time = 6

[state -1, special paleta]
type = palfx
triggerall = ishelper = 0
trigger1 = numhelper(3999) != 0
trigger1 = helper(3999), animelem = 2
add = 120,0,120
time = 6

[state -1, special paleta]
type = palfx
triggerall = ishelper = 0
trigger1 = numhelper(3999) != 0
trigger1 = helper(3999), animelem = 3
add = 0,0,240
time = 6

[state -1, special paleta]
type = palfx
triggerall = ishelper = 0
trigger1 = numhelper(3999) != 0
trigger1 = helper(3999), animelem = 4
add = 0,120,120
time = 6

[state -1, special paleta]
type = palfx
triggerall = ishelper = 0
trigger1 = numhelper(3999) != 0
trigger1 = helper(3999), animelem = 5
add = 0,240,0
time = 6

[state -1, special paleta]
type = palfx
triggerall = ishelper = 0
trigger1 = numhelper(3999) != 0
trigger1 = helper(3999), animelem = 6
add = 120,120,0
time = 6

[state -1, special paleta]
type = palfx
triggerall = ishelper = 0
trigger1 = numhelper(4101) != 0
trigger1 = helper(4101), animelem = 1
add = 240,240,240
time = 6

[state -1, special paleta]
type = palfx
triggerall = ishelper = 0
triggerall = numhelper(4101) != 0
trigger1 = helper(4101), animelem = 2
trigger2 = helper(4101), animelem = 6
add = 200,200,200
time = 6

[state -1, special paleta]
type = palfx
triggerall = ishelper = 0
triggerall = numhelper(4101) != 0
trigger1 = helper(4101), animelem = 3
trigger2 = helper(4101), animelem = 5
add = 180,180,180
time = 6

[state -1, special paleta]
type = palfx
triggerall = ishelper = 0
trigger1 = numhelper(4101) != 0
trigger1 = helper(4101), animelem = 4
add = 160,160,160
time = 6

[state -1, special paleta]
type = palfx
triggerall = ishelper = 0
trigger1 = numhelper(4001) != 0
trigger1 = helper(4001), animelem = 1
add = 255,0,0
time = 6

[state -1, special paleta]
type = palfx
triggerall = ishelper = 0
triggerall = numhelper(4001) != 0
trigger1 = helper(4001), animelem = 2
trigger2 = helper(4001), animelem = 6
add = 235,0,0
time = 6

[state -1, special paleta]
type = palfx
triggerall = ishelper = 0
triggerall = numhelper(4001) != 0
trigger1 = helper(4001), animelem = 3
trigger2 = helper(4001), animelem = 5
add = 215,0,0
time = 6

[state -1, special paleta]
type = palfx
triggerall = ishelper = 0
trigger1 = numhelper(4001) != 0
trigger1 = helper(4001), animelem = 4
add = 195,0,0
time = 6

[state -1, invisibilidade]
type = assertspecial
trigger1 = numhelper(4201) = 1
flag = invisible

[State 100, Spark 1]
type = Explod
trigger1 = stateno = 100
trigger1 = timemod = 13, 11
anim = 9770
pos = 0, -70
random = 0,30
postype = p1
vel = -0.3
sprpriority = 2
ownpal = 1

[State 100, Spark 1]
type = Explod
trigger1 = stateno = 100
trigger1 = timemod = 20, 11
anim = 9771
pos = 0, -50
random = 0,30
postype = p1
vel = -0.4
sprpriority = -1
ownpal = 1

[State 100, Spark 1]
type = Explod
trigger1 = stateno = 100
trigger1 = timemod = 23, 10
anim = 9772
pos = 0, -30
random = 0,30
postype = p1
vel = -0.6
sprpriority = -2
ownpal = 1

[state -1, animvar]
type = varset
trigger1 = animelem = 1
v = 10
value = 0

[state -1, animvar]
type = varset
trigger1 = animelem = 2
v = 10
value = 1

[state -1, animvar]
type = varset
trigger1 = animelem = 3
v = 10
value = 2

[state -1, animvar]
type = varset
trigger1 = animelem = 4
v = 10
value = 3

[state -1, animvar]
type = varset
trigger1 = animelem = 5
v = 10
value = 4

[state -1, animvar]
type = varset
trigger1 = animelem = 6
v = 10
value = 5

[state -1, animvar]
type = varset
trigger1 = animelem = 7
v = 10
value = 6

[state -1, animvar]
type = varset
trigger1 = animelem = 8
v = 10
value = 7

[state -1, animvar]
type = varset
trigger1 = animelem = 9
v = 10
value = 8

[state -1, animvar]
type = varset
trigger1 = animelem = 10
v = 10
value = 9

[state -1, helpervar]
type = varset
trigger1 = numhelper(4001) = 0
v = 20
value = 0

[state -1, helpervar]
type = varset
trigger1 = numhelper(4001) = 0
fv = 20
value = 1.00

[state -1, helpervar]
type = varset
trigger1 = numhelper(4101) = 0
v = 30
value = 0

[state -1, helpervar]
type = varset
trigger1 = numhelper(4101) = 0
fv = 30
value = 1.00

[state -1, var randomica]
type = varrandom
trigger1 = roundstate = 2
v = 40
range = 0,5
;===========================================================================
[State -1, chamando as facas]
type = ChangeState
value = 1100
triggerall = numhelper(9100) = 0
triggerall = numhelper(9101) = 0
triggerall = numhelper(9102) = 0
triggerall = numhelper(9103) = 0
triggerall = numhelper(9104) = 0
triggerall = numhelper(9105) = 0
triggerall = ctrl
trigger1 = command = "QCB_xy"
trigger2 = command = "QCB_xz"
trigger3 = command = "QCB_yz"

[State -1, special]
type = ChangeState
value = 3000
triggerall = power > 999
triggerall = numhelper(3999) = 0
triggerall = command = "QCF_xy" || command = "QCF_xz" || command = "QCF_yz"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = movecontact = 1
trigger9 = stateno = 440
trigger9 = movecontact = 1
trigger10 = stateno = 220
trigger10 = movecontact = 1
trigger11 = stateno = 600
trigger11 = movecontact = 1
trigger12 = stateno = 630
trigger12 = movecontact = 1
trigger13 = stateno = 610
trigger13 = movecontact = 1
trigger14 = stateno = 615
trigger14 = movecontact = 1
trigger15 = stateno = 640
trigger15 = movecontact = 1
trigger16 = stateno = 645
trigger16 = movecontact = 1
trigger17 = stateno >= 150
trigger17 = stateno < 156

[State -1, special]
type = ChangeState
value = 3500
triggerall = power > 999
triggerall = numhelper(3501) = 0
triggerall = command = "QCF_ab" || command = "QCF_ac" || command = "QCF_bc"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = movecontact = 1
trigger9 = stateno = 440
trigger9 = movecontact = 1
trigger10 = stateno = 220
trigger10 = movecontact = 1
trigger11 = stateno = 600
trigger11 = movecontact = 1
trigger12 = stateno = 630
trigger12 = movecontact = 1
trigger13 = stateno = 610
trigger13 = movecontact = 1
trigger14 = stateno = 615
trigger14 = movecontact = 1
trigger15 = stateno = 640
trigger15 = movecontact = 1
trigger16 = stateno = 645
trigger16 = movecontact = 1
trigger17 = stateno >= 150
trigger17 = stateno < 156

[State -1, habilidade]
type = ChangeState
value = 4000
triggerall = power > 999
triggerall = numhelper(4001) = 0
triggerall = ctrl
trigger1 = command = "QCB_ax"

[State -1, habilidade]
type = ChangeState
value = 4100
triggerall = power > 999
triggerall = numhelper(4101) = 0
triggerall = ctrl
trigger1 = command = "QCB_by"

[State -1, habilidade]
type = ChangeState
value = 4200
triggerall = power > 999
triggerall = numhelper(4201) = 0
triggerall = ctrl
trigger1 = command = "QCB_cz"
;---------------------------------------------------------------------------
[State -1, rolando no chao]
type = ChangeState
value = 169
triggerall = stateno = 5110
trigger1 = alive = 1
trigger1 = command = "recovery"

;---------------------------------------------------------------------------
[State -1, agarrao]
type = ChangeState
value = 1000
triggerall = command = "uppercut_z"
;trigger1 = statetype != A
trigger1 = ctrl

[State -1, agarrao]
type = ChangeState
value = 1010
triggerall = command = "uppercut_y"
;trigger1 = statetype != A
trigger1 = ctrl

[State -1, agarrao]
type = ChangeState
value = 1020
triggerall = command = "uppercut_x"
;trigger1 = statetype != A
trigger1 = ctrl

[State -1, agarrao]
type = ChangeState
value = 1000
triggerall = command = "DU_z"
trigger1 = stateno = 40
trigger2 = stateno = 8040
trigger3 = statetype = a
trigger3 = ctrl = 1

[State -1, agarrao]
type = ChangeState
value = 1010
triggerall = command = "DU_y"
trigger1 = stateno = 40
trigger2 = stateno = 8040
trigger3 = statetype = a
trigger3 = ctrl = 1

[State -1, agarrao]
type = ChangeState
value = 1020
triggerall = command = "DU_x"
trigger1 = stateno = 40
trigger2 = stateno = 8040
trigger3 = statetype = a
trigger3 = ctrl = 1

[State -1, agarrao]
type = ChangeState
value = 8040
triggerall = command = "DU"
trigger1 = stateno = 40

[State -1, atirando as facas em todas as direcoes]
type = ChangeState
value = 1110
triggerall = numhelper(9105) = 1
triggerall = command = "QCF_c"
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = movecontact = 1
trigger9 = stateno = 440
trigger9 = movecontact = 1
trigger10 = stateno = 220
trigger10 = movecontact = 1
trigger11 = stateno = 600
trigger11 = movecontact = 1
trigger12 = stateno = 630
trigger12 = movecontact = 1
trigger13 = stateno = 610
trigger13 = movecontact = 1
trigger14 = stateno = 615
trigger14 = movecontact = 1
trigger15 = stateno = 640
trigger15 = movecontact = 1
trigger16 = stateno = 645
trigger16 = movecontact = 1


[state -1, atirando as facas em todas as direcoes]
type = changestate
value = 1111
triggerall = numhelper(9105) = 1
triggerall = command = "QCF_b"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = movecontact = 1
trigger9 = stateno = 440
trigger9 = movecontact = 1
trigger10 = stateno = 220
trigger10 = movecontact = 1
trigger11 = stateno = 600
trigger11 = movecontact = 1
trigger12 = stateno = 630
trigger12 = movecontact = 1
trigger13 = stateno = 610
trigger13 = movecontact = 1
trigger14 = stateno = 615
trigger14 = movecontact = 1
trigger15 = stateno = 640
trigger15 = movecontact = 1
trigger16 = stateno = 645
trigger16 = movecontact = 1


[State -1, atirando as facas em todas as direcoes]
type = ChangeState
value = 1112
triggerall = numhelper(9105) = 1
triggerall = command = "QCF_a"
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = movecontact = 1
trigger9 = stateno = 440
trigger9 = movecontact = 1
trigger10 = stateno = 220
trigger10 = movecontact = 1
trigger11 = stateno = 600
trigger11 = movecontact = 1
trigger12 = stateno = 630
trigger12 = movecontact = 1
trigger13 = stateno = 610
trigger13 = movecontact = 1
trigger14 = stateno = 615
trigger14 = movecontact = 1
trigger15 = stateno = 640
trigger15 = movecontact = 1
trigger16 = stateno = 645
trigger16 = movecontact = 1

[State -1, atirando as facas em uma direcao]
type = ChangeState
value = 1140
triggerall = command = "QCF_x"
triggerall = numhelper(9105) = 1
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = movecontact = 1
trigger9 = stateno = 440
trigger9 = movecontact = 1
trigger10 = stateno = 220
trigger10 = movecontact = 1
trigger11 = stateno = 600
trigger11 = movecontact = 1
trigger12 = stateno = 630
trigger12 = movecontact = 1
trigger13 = stateno = 610
trigger13 = movecontact = 1
trigger14 = stateno = 615
trigger14 = movecontact = 1
trigger15 = stateno = 640
trigger15 = movecontact = 1
trigger16 = stateno = 645
trigger16 = movecontact = 1

[State -1, atirando as facas em uma direcao]
type = ChangeState
value = 1120
triggerall = command = "QCF_y"
triggerall = numhelper(9105) = 1
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = movecontact = 1
trigger9 = stateno = 440
trigger9 = movecontact = 1
trigger10 = stateno = 220
trigger10 = movecontact = 1
trigger11 = stateno = 600
trigger11 = movecontact = 1
trigger12 = stateno = 630
trigger12 = movecontact = 1
trigger13 = stateno = 610
trigger13 = movecontact = 1
trigger14 = stateno = 615
trigger14 = movecontact = 1
trigger15 = stateno = 640
trigger15 = movecontact = 1
trigger16 = stateno = 645
trigger16 = movecontact = 1

[State -1, atirando as facas em uma direcao]
type = ChangeState
value = 1130
triggerall = command = "QCF_z"
triggerall = numhelper(9105) = 1
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = movecontact = 1
trigger9 = stateno = 440
trigger9 = movecontact = 1
trigger10 = stateno = 220
trigger10 = movecontact = 1
trigger11 = stateno = 600
trigger11 = movecontact = 1
trigger12 = stateno = 630
trigger12 = movecontact = 1
trigger13 = stateno = 610
trigger13 = movecontact = 1
trigger14 = stateno = 615
trigger14 = movecontact = 1
trigger15 = stateno = 640
trigger15 = movecontact = 1
trigger16 = stateno = 645
trigger16 = movecontact = 1

[State -1, teleporte chao 1]
type = ChangeState
value = 1500
triggerall = command = "QCB_a"
trigger1 = ctrl

[State -1, teleporte chao 2]
type = ChangeState
value = 1502
triggerall = command = "QCB_b"
trigger1 = ctrl

[State -1, teleporte chao 3]
type = ChangeState
value = 1504
triggerall = command = "QCB_c"
trigger1 = ctrl

[State -1, teleporte ar 1]
type = ChangeState
value = 1501
triggerall = command = "QCB_x"
trigger1 = ctrl

[State -1, teleporte ar 2]
type = ChangeState
value = 1503
triggerall = command = "QCB_y"
trigger1 = ctrl

[State -1, teleporte ar 3]
type = ChangeState
value = 1505
triggerall = command = "QCB_z"
trigger1 = ctrl
;===========================================================================
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
[State -1, jogada soco forte]
type = ChangeState
value = 820
triggerall = command = "c"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 20
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 20
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, jogada soco forte]
type = ChangeState
value = 800
triggerall = numhelper(3999) = 0
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 20
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 20
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

[State -1, jogada soco forte]
type = ChangeState
triggerall = numhelper(3999) = 0
value = 810
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 20
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 20
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
[State -1, Special]
type = ChangeState
value = 3001
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = numhelper(3999) = 1
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = numhelper(3999) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
[State -1, Special]
type = ChangeState
value = 3021
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = numhelper(3999) = 1
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = numhelper(3999) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 240
trigger5 = movecontact = 1
trigger6 = stateno = 400
trigger6 = movecontact = 1
trigger7 = stateno = 430
trigger7 = movecontact = 1
trigger8 = stateno = 410
trigger8 = movecontact = 1
trigger9 = stateno = 440
trigger9 = movecontact = 1

[State -1, Special]
type = ChangeState
value = 3011
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = numhelper(3999) = 1
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = numhelper(3999) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1

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
trigger4 = stateno = 430
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 430
trigger6 = movecontact = 1
trigger7 = stateno = 410
trigger7 = movecontact = 1
trigger8 = stateno = 440
trigger8 = movecontact = 1

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
trigger4 = stateno = 210
trigger4 = movecontact = 1
trigger5 = stateno = 400
trigger5 = movecontact = 1
trigger6 = stateno = 430
trigger6 = movecontact = 1
trigger7 = stateno = 410
trigger7 = movecontact = 1
trigger8 = stateno = 440
trigger8 = movecontact = 1

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
[State -1, Special]
type = ChangeState
value = 3002
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = numhelper(3999) = 1
trigger1 = statetype = c
trigger1 = ctrl

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = numhelper(3999) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
[State -1, Special]
type = ChangeState
value = 3012
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = numhelper(3999) = 1
trigger1 = statetype = c
trigger1 = ctrl

[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = numhelper(3999) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 430
trigger3 = movecontact = 1
trigger4 = stateno = 200
trigger4 = movecontact = 1
trigger5 = stateno = 230
trigger5 = movecontact = 1

[State -1, Special]
type = ChangeState
value = 3022
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = numhelper(3999) = 1
trigger1 = statetype = c
trigger1 = ctrl

[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = numhelper(3999) = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 430
trigger3 = movecontact = 1
trigger4 = stateno = 410
trigger4 = movecontact = 1
trigger5 = stateno = 440
trigger5 = movecontact = 1
trigger6 = stateno = 200
trigger6 = movecontact = 1
trigger7 = stateno = 230
trigger7 = movecontact = 1
trigger8 = stateno = 210
trigger8 = movecontact = 1
trigger9 = stateno = 240
trigger9 = movecontact = 1
;---------------------------------------------------------------------------
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1

;---------------------------------------------------------------------------
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 430
trigger3 = movecontact = 1
trigger4 = stateno = 410
trigger4 = movecontact = 1
trigger5 = stateno = 200
trigger5 = movecontact = 1
trigger6 = stateno = 230
trigger6 = movecontact = 1
trigger7 = stateno = 210
trigger7 = movecontact = 1

[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 430
trigger3 = movecontact = 1
trigger4 = stateno = 410
trigger4 = movecontact = 1
trigger5 = stateno = 440
trigger5 = movecontact = 1
trigger6 = stateno = 200
trigger6 = movecontact = 1
trigger7 = stateno = 230
trigger7 = movecontact = 1
trigger8 = stateno = 210
trigger8 = movecontact = 1
trigger9 = stateno = 240
trigger9 = movecontact = 1

;---------------------------------------------------------------------------
[State -1, Jump Strong Punch]
type = ChangeState
value = 900
triggerall = numhelper(3999) = 0
triggerall = p2statetype = a
triggerall = p2movetype != h
triggerall = ishelper = 0
triggerall = p2bodydist x < 26
triggerall = p2bodydist y < 30
triggerall = p2bodydist y > -30
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "fwd_z"
trigger2 = command = "back_z"

[State -1, Jump Strong Punch]
type = ChangeState
value = 910
triggerall = numhelper(3999) = 0
triggerall = p2statetype = a
triggerall = p2movetype != h
triggerall = ishelper = 0
triggerall = p2bodydist x < 26
triggerall = p2bodydist y < 30
triggerall = p2bodydist y > -30
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "fwd_y"
trigger2 = command = "back_y"

[State -1, Special]
type = ChangeState
value = 3003
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = numhelper(3999) = 1
trigger1 = statetype = a
trigger1 = ctrl

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = numhelper(3999) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 615
triggerall = numhelper(3999) = 0
triggerall = command = "down_y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 630
trigger3 = movecontact = 1

[State -1, Special]
type = ChangeState
value = 3003
triggerall = command = "y"
triggerall = numhelper(3999) = 1
trigger1 = statetype = a
trigger1 = ctrl

[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = numhelper(3999) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 630
trigger3 = movecontact = 1

[State -1, Jump Strong Punch]
type = ChangeState
value = 625
triggerall = numhelper(3999) = 0
triggerall = command = "down_z"
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
trigger6 = stateno = 640
trigger6 = movecontact = 1
trigger7 = stateno = 645
trigger7 = movecontact = 1

[State -1, Special]
type = ChangeState
value = 3023
triggerall = command = "z"
triggerall = numhelper(3999) = 1
trigger1 = statetype = a
trigger1 = ctrl

[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = numhelper(3999) = 0
triggerall = command = "z"
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
trigger6 = stateno = 640
trigger6 = movecontact = 1
trigger7 = stateno = 645
trigger7 = movecontact = 1
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
value = 645
triggerall = command = "up_b"
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

[State -1, Jump Strong Punch]
type = ChangeState
value = 920
triggerall = p2statetype = a
triggerall = p2movetype != h
triggerall = ishelper = 0
triggerall = p2bodydist x < 26
triggerall = p2bodydist y < 30
triggerall = p2bodydist y > -30
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "fwd_c"
trigger2 = command = "back_c"

[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
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
trigger6 = stateno = 640
trigger6 = movecontact = 1
trigger7 = stateno = 645
trigger7 = movecontact = 1
;-----------------facas---------------------------------
[state -1, facas]
type = changestate
triggerall = ishelper = 1
triggerall = stateno = 9100
trigger1 = parent, anim > 199
trigger1 = parent, anim < 230
trigger1 = parent, animelem = 1
trigger2 = parent, anim > 399
trigger2 = parent, anim < 430
trigger2 = parent, animelem = 1
trigger3 = parent, anim > 599
trigger3 = parent, anim < 630
trigger3 = parent, animelem = 1
trigger4 = parent, anim > 3000
trigger4 = parent, anim < 3999
trigger4 = parent, animelem = 1
trigger5 = parent, anim > 7199
trigger5 = parent, anim < 7230
trigger5 = parent, animelem = 1
trigger6 = parent, anim > 7399
trigger6 = parent, anim < 7430
trigger6 = parent, animelem = 1
trigger7 = parent, anim > 7599
trigger7 = parent, anim < 7630
trigger7 = parent, animelem = 1
value = 9200

[state -1, facas]
type = changestate
triggerall = ishelper = 1
triggerall = stateno = 9101
triggerall = NumHelper(9100) = 0
trigger1 = parent, anim > 199
trigger1 = parent, anim < 230
trigger1 = parent, animelem = 1
trigger2 = parent, anim > 399
trigger2 = parent, anim < 430
trigger2 = parent, animelem = 1
trigger3 = parent, anim > 599
trigger3 = parent, anim < 630
trigger3 = parent, animelem = 1
trigger4 = parent, anim > 3000
trigger4 = parent, anim < 3999
trigger4 = parent, animelem = 1
trigger5 = parent, anim > 7199
trigger5 = parent, anim < 7230
trigger5 = parent, animelem = 1
trigger6 = parent, anim > 7399
trigger6 = parent, anim < 7430
trigger6 = parent, animelem = 1
trigger7 = parent, anim > 7599
trigger7 = parent, anim < 7630
trigger7 = parent, animelem = 1
value = 9201

[state -1, facas]
type = changestate
triggerall = ishelper = 1
triggerall = stateno = 9102
triggerall = NumHelper(9101) = 0
trigger1 = parent, anim > 199
trigger1 = parent, anim < 230
trigger1 = parent, animelem = 1
trigger2 = parent, anim > 399
trigger2 = parent, anim < 430
trigger2 = parent, animelem = 1
trigger3 = parent, anim > 599
trigger3 = parent, anim < 630
trigger3 = parent, animelem = 1
trigger4 = parent, anim > 3000
trigger4 = parent, anim < 3999
trigger4 = parent, animelem = 1
trigger5 = parent, anim > 7199
trigger5 = parent, anim < 7230
trigger5 = parent, animelem = 1
trigger6 = parent, anim > 7399
trigger6 = parent, anim < 7430
trigger6 = parent, animelem = 1
trigger7 = parent, anim > 7599
trigger7 = parent, anim < 7630
trigger7 = parent, animelem = 1
value = 9202

[state -1, facas]
type = changestate
triggerall = ishelper = 1
triggerall = stateno = 9103
triggerall = NumHelper(9102) = 0
trigger1 = parent, anim > 199
trigger1 = parent, anim < 230
trigger1 = parent, animelem = 1
trigger2 = parent, anim > 399
trigger2 = parent, anim < 430
trigger2 = parent, animelem = 1
trigger3 = parent, anim > 599
trigger3 = parent, anim < 630
trigger3 = parent, animelem = 1
trigger4 = parent, anim > 3000
trigger4 = parent, anim < 3999
trigger4 = parent, animelem = 1
trigger5 = parent, anim > 7199
trigger5 = parent, anim < 7230
trigger5 = parent, animelem = 1
trigger6 = parent, anim > 7399
trigger6 = parent, anim < 7430
trigger6 = parent, animelem = 1
trigger7 = parent, anim > 7599
trigger7 = parent, anim < 7630
trigger7 = parent, animelem = 1
value = 9203

[state -1, facas]
type = changestate
triggerall = ishelper = 1
triggerall = stateno = 9104
triggerall = NumHelper(9103) = 0
trigger1 = parent, anim > 199
trigger1 = parent, anim < 230
trigger1 = parent, animelem = 1
trigger2 = parent, anim > 399
trigger2 = parent, anim < 430
trigger2 = parent, animelem = 1
trigger3 = parent, anim > 599
trigger3 = parent, anim < 630
trigger3 = parent, animelem = 1
trigger4 = parent, anim > 3000
trigger4 = parent, anim < 3999
trigger4 = parent, animelem = 1
trigger5 = parent, anim > 7199
trigger5 = parent, anim < 7230
trigger5 = parent, animelem = 1
trigger6 = parent, anim > 7399
trigger6 = parent, anim < 7430
trigger6 = parent, animelem = 1
trigger7 = parent, anim > 7599
trigger7 = parent, anim < 7630
trigger7 = parent, animelem = 1
value = 9204

[state -1, facas]
type = changestate
triggerall = ishelper = 1
triggerall = stateno = 9105
triggerall = NumHelper(9104) = 0
trigger1 = parent, anim > 199
trigger1 = parent, anim < 230
trigger1 = parent, animelem = 1
trigger2 = parent, anim > 399
trigger2 = parent, anim < 430
trigger2 = parent, animelem = 1
trigger3 = parent, anim > 599
trigger3 = parent, anim < 630
trigger3 = parent, animelem = 1
trigger4 = parent, anim > 3000
trigger4 = parent, anim < 3999
trigger4 = parent, animelem = 1
trigger5 = parent, anim > 7199
trigger5 = parent, anim < 7230
trigger5 = parent, animelem = 1
trigger6 = parent, anim > 7399
trigger6 = parent, anim < 7430
trigger6 = parent, animelem = 1
trigger7 = parent, anim > 7599
trigger7 = parent, anim < 7630
trigger7 = parent, animelem = 1
value = 9205
