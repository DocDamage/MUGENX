;===========comandos do AI=============
[command]
name = "ai1"
command = B, F, D, D, B, F, D, a
time = 0

[command]
name = "ai2"
command = B, F, D, D, B, F, D, b
time = 0

[command]
name = "ai3"
command = B, F, D, D, B, F, D, c
time = 0

[command]
name = "ai4"
command = B, F, D, D, B, F, D, x
time = 0

[command]
name = "ai5"
command = B, F, D, D, B, F, D, y
time = 0

[command]
name = "ai6"
command = B, F, D, D, B, F, D, z
time = 0

[command]
name = "ai7"
command = B, B, D, F, B, F, D, a
time = 0

[command]
name = "ai8"
command = B, B, D, F, B, F, D, b
time = 0

[command]
name = "ai9"
command = B, B, D, F, B, F, D, c
time = 0

[command]
name = "ai10"
command = B, B, D, F, B, F, D, x
time = 0

[command]
name = "ai11"
command = B, B, D, F, B, F, D, y
time = 0

[command]
name = "ai12"
command = B, B, D, F, B, F, D, z
time = 0

[command]
name = "ai13"
command = F, D, B, D, F, D, D, a
time = 0

[command]
name = "ai14"
command = F, D, B, D, F, D, D, b
time = 0

[command]
name = "ai15"
command = F, D, B, D, F, D, D, c
time = 0

[command]
name = "ai16"
command = F, D, B, D, F, D, D, x
time = 0

[command]
name = "ai17"
command = F, D, B, D, F, D, D, y
time = 0

[command]
name = "ai18"
command = F, D, B, D, F, D, D, z
time = 0
;-| Super Motions |--------------------------------------------------------
[command]
name = "supera"
command = ~F, B, D, F, x
time = 30

[command]
name = "superb"
command = ~F, B, D, F, y
time = 30

[command]
name = "superc"
command = ~F, B, D, F, x+y
time = 30

[command]
name = "superd"
command = ~D, DB, B, F, a

[command]
name = "supere"
command = ~D, DB, B, F, b

[command]
name = "superf"
command = ~D, DB, B, F, a+b

;-| Special Motions |------------------------------------------------------
[command]
name = "~y"
command = ~y

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_s"
command = ~D, DF, F, s

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_holdy"
command = ~D, DF, F, /y

[command]
name = "FF+y"
command = F, F, y
time = 18

[command]
name = "FF+x"
command = F, F, x
time = 18

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_x"
command = ~D, DB, B, F, x

[Command]
name = "QCB_y"
command = ~D, DB, B, F, y

[Command]
name = "QCB_holdy"
command = ~D, DB, B, F, /y

[Command]
name = "uppercut_x"
command = ~F, D, DF, x

[Command]
name = "uppercut_y"
command = ~F, D, DF, y

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
command = a+b
time = 1

[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "ab"
command = a+b
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
name = "back_z"
command = /B,z
time = 1

[Command]
name = "back_x"
command = /B,x
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

[command]
name = "start"
command = s
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

[Command]
name = "holddiag" ;Required (do not remove)
command = /DF
time = 1

[Statedef -1]
;============================AI========================
[state -1, ai]
type = varset
trigger1 = command = "ai1"
trigger2 = command = "ai2"
trigger3 = command = "ai3"
trigger4 = command = "ai4"
trigger5 = command = "ai5"
trigger6 = command = "ai6"
trigger7 = command = "ai7"
trigger8 = command = "ai8"
trigger9 = command = "ai9"
trigger10 = command = "ai10"
trigger11 = command = "ai11"
trigger12 = command = "ai12"
trigger13 = command = "ai13"
trigger14 = command = "ai14"
trigger15 = command = "ai15"
trigger16 = command = "ai16"
trigger17 = command = "ai17"
trigger18 = command = "ai18"
v = 15
value = 1

[state -1, ai]
type = varrandom
trigger1 = var(15) = 1
v = 13
range = 0,3

[state -1, ai]
type = varset
trigger1 = p2life = 0
v = 15
value = 0

[state -1, ai]
type = changestate
triggerall = ishelper = 0
triggerall = var(15) = 1 
triggerall = stateno != 7020
trigger1 = statetype != a
trigger1 = ctrl = 1
trigger1 = p2movetype = i
value = 7020

[state -1, ai]
type = changestate
triggerall = ishelper = 0
triggerall = var(15) = 1 
triggerall = p2dist x > 150
trigger1 = statetype != a
trigger1 = ctrl = 1 || stateno = 7020
trigger1 = p2movetype != i
triggerall = numprojid(661) = 0
triggerall = numprojid(663) = 0
triggerall = numprojid(665) = 0
value = 1090

[state -1, ai]
type = changestate
triggerall = ishelper = 0
triggerall = var(15) = 1 
triggerall = power < 1000
triggerall = life < 500
triggerall = statetype != a
trigger1 = prevstateno = 1004
trigger1 = p2movetype = h
trigger1 = numhelper(902) = 1
trigger1 = helper(902), stateno = 922
value = 1005

[state -1, ai]
type = changestate
triggerall = ishelper = 0
triggerall = var(15) = 1 
triggerall = power < 1000
triggerall = life > 499
triggerall = statetype != a
trigger1 = prevstateno = 1004
trigger1 = p2movetype = h
trigger1 = numhelper(902) = 1
trigger1 = helper(902), stateno = 922
value = 1501

[state -1, ai]
type = changestate
triggerall = ishelper = 0
triggerall = var(15) = 1 
triggerall = power > 999
triggerall = p2dist x > 150
triggerall = statetype != a
trigger1 = ctrl = 1 || stateno = 7020
trigger1 = p2movetype = a
trigger2 = prevstateno = 1004
trigger2 = p2movetype = h
trigger2 = numhelper(902) = 1
trigger2 = helper(902), stateno = 922
value = 3000

[state -1, ai]
type = changestate
triggerall = ishelper = 0
triggerall = var(15) = 1 
triggerall = power > 1999
triggerall = p2dist x > 150
triggerall = statetype != a
trigger1 = ctrl = 1 || stateno = 7020
trigger1 = p2movetype = a
trigger2 = prevstateno = 1004
trigger2 = p2movetype = h
trigger2 = numhelper(902) = 1
trigger2 = helper(902), stateno = 922
value = 3001

[state -1, ai]
type = changestate
triggerall = ishelper = 0
triggerall = var(15) = 1 
triggerall = var(13) = 3
trigger1 = p2dist x < 50
trigger1 = statetype != a
trigger1 = ctrl = 1 || stateno = 7020
trigger1 = p2movetype = a
trigger2 = p2movetype = a
trigger2 = statetype != a
trigger2 = p2statetype = a
trigger2 = p2dist x < 100 
trigger2 = ctrl = 1 || stateno = 7020
trigger3 = prevstateno = 309
trigger3 = statetype != a
value = 1001

[state -1, ai]
type = changestate
triggerall = ishelper = 0
triggerall = var(15) = 1 
triggerall = time < 36
triggerall = stateno = 1090
trigger1 = p2movetype = a
trigger2 = p2dist x < 151
value = 1091

[state -1, ai]
type = changestate
triggerall = ishelper = 0
triggerall = var(15) = 1 
triggerall = time > 35
triggerall = time < 72
triggerall = stateno = 1090
trigger1 = p2movetype = a
trigger2 = p2dist x < 151
value = 1092

[state -1, ai]
type = changestate
triggerall = ishelper = 0
triggerall = var(15) = 1 
triggerall = time > 71 
triggerall = stateno = 1090
trigger1 = p2movetype = a
trigger2 = p2dist x < 151
value = 1093

[state -1, ai]
type = changestate
triggerall = ishelper = 0
triggerall = var(15) = 1 
triggerall = p2dist x > 49
triggerall = p2dist x < 151
trigger1 = statetype != a
trigger1 = ctrl = 1 || stateno = 7020
trigger1 = p2movetype = a
value = 309

[state -1, ai]
type = changestate
triggerall = ishelper = 0
triggerall = var(15) = 1 
trigger1 = p2dist x < 50
trigger1 = statetype != a
trigger1 = p2statetype != a
trigger1 = ctrl = 1 || stateno = 7020
trigger1 = p2stateno != 20
value = 221

[state -1, ai]
type = changestate
triggerall = ishelper = 0
triggerall = var(15) = 1 
trigger1 = p2bodydist x < 5
trigger1 = statetype != a
trigger1 = p2statetype != a
trigger1 = ctrl = 1 || stateno = 7020
trigger1 = p2movetype != h
trigger1 = p2statetype != l
trigger1 = p2stateno != 5120
value = 800

[state -1, ai]
type = changestate
triggerall = ishelper = 0
triggerall = var(15) = 1 
trigger1 = stateno = 221
trigger1 = movecontact
trigger1 = p2statetype = c
value = 210

[state -1, ai]
type = changestate
triggerall = ishelper = 0
triggerall = var(15) = 1 
trigger1 = stateno = 221
trigger1 = movehit
value = 201

[state -1, ai]
type = changestate
triggerall = ishelper = 0
triggerall = var(15) = 1 
trigger1 = stateno = 221
trigger1 = movecontact
trigger1 = p2statetype != c
value = 400

[state -1, ai]
type = changestate
triggerall = ishelper = 0
triggerall = var(15) = 1 
trigger1 = stateno = 201
trigger1 = movecontact
value = 231

[state -1, ai]
type = changestate
triggerall = ishelper = 0
triggerall = var(15) = 1 
triggerall = var(13) != 2
trigger1 = stateno = 231
trigger1 = movehit
value = 1000

[state -1, ai]
type = changestate
triggerall = ishelper = 0
triggerall = var(15) = 1 
triggerall = var(13) = 2
trigger1 = stateno = 231
trigger1 = movehit
value = 1101

[state -1, ai]
type = changestate
triggerall = ishelper = 0
triggerall = var(15) = 1 
triggerall = power > 999
trigger1 = stateno = 231
trigger1 = movehit
value = 3100

[state -1, ai]
type = changestate
triggerall = ishelper = 0
triggerall = var(15) = 1 
triggerall = power > 1999
trigger1 = stateno = 231
trigger1 = movehit
value = 3200

[state -1, ai]
type = changestate
triggerall = ishelper = 0
triggerall = var(15) = 1 
triggerall = power > 1999
trigger1 = statetype != a
trigger1 = ctrl = 1 || stateno = 7020
trigger1 = p2stateno > 5029 && p2stateno < 5120  
value = 3001

[state -1, ai]
type = changestate
triggerall = ishelper = 0
triggerall = var(15) = 1 
triggerall = power > 999
trigger1 = statetype != a
trigger1 = ctrl = 1 || stateno = 7020
trigger1 = p2stateno > 5029 && p2stateno < 5120  
value = 3000

[state -1, ai]
type = changestate
triggerall = numhelper(902) = 0
triggerall = ishelper = 0
triggerall = var(15) = 1 
triggerall = power < 1000
trigger1 = statetype != a
trigger1 = ctrl = 1 || stateno = 7020
trigger1 = p2stateno > 5029 && p2stateno < 5120  
value = 1004

[state -1, ai]
type = changestate
triggerall = ishelper = 0
triggerall = var(15) = 1 
trigger1 = p2dist x > 150
trigger1 = statetype != a
trigger1 = ctrl = 1 || stateno = 7020
trigger1 = p2statetype = l  
trigger2 = prevstateno = 105
value = 770

[state -1, ai]
type = changestate
triggerall = ishelper = 0
triggerall = var(15) = 1 
triggerall = prevstateno = 1004 || prevstateno = 3000 || prevstateno = 3001
trigger1 = p2dist x < 151
trigger1 = statetype != a
trigger1 = ctrl = 1 || stateno = 7020
trigger1 = p2statetype = l  
value = 105

[state -1, ai]
type = changestate
triggerall = var(15) = 1 
triggerall = p2movetype = a
trigger1 = stateno = 0
trigger1 = prevstateno = 5120
value = 309
;============================FIM DO AI========================

[state 1100, 0]
type = removeexplod
trigger1 = numhelper(991) = 0
id = 982

;===========================================================================
[State 230, 1] ;Uncomment if you want to play a sound
type = Varrandom
trigger1 = stateno = 5000
trigger1 = time = 0
trigger2 = stateno = 5020
trigger2 = time = 0
trigger3 = stateno = 5010
trigger3 = time = 0
trigger4 = stateno = 5070
trigger4 = time = 0
trigger5 = stateno = 5080
trigger5 = time = 0
v = 2
range = 0, 2

[State 230, 1] ;Uncomment if you want to play a sound
type = PlaySnd
triggerall = var(2) = 0
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
value = 9, 1
channel = 2

[State 230, 1] ;Uncomment if you want to play a sound
type = PlaySnd
triggerall = var(2) = 1
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
value = 9, 0
channel = 2

[State 230, 1] ;Uncomment if you want to play a sound
type = PlaySnd
triggerall = var(2) = 2
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
value = 9, 2
channel = 2

[state -1, efeito]
type = Helper
triggerall = numhelper(8989) = 0
trigger1 = projhit = 1
trigger2 = helper(902), movehit
trigger3 = helper(991), movehit
trigger4 = helper(3105), movehit
trigger5 = helper(3201), movehit
pos = 0, 0
ID = 8989 
postype = p2
stateno = 8989
helpertype = normal
keyctrl = 0
ownpal = 1

[state -1, efeito 2]
type = Helper
triggerall = numhelper(8988) = 0
trigger1 = helper(992), movehit
pos = 0, 0
ID = 8988 
postype = p2
stateno = 8988
helpertype = normal
keyctrl = 0
ownpal = 1
;---------------------------------------------------------------------------
[State -1, rolando no chao]
type = ChangeState
value = 169
triggerall = stateno = 5110
triggerall = alive = 1
trigger1 = command = "recovery"

;magia rb2
[state -1]
type = changestate
value = 771
triggerall = command = "QCF_s"
trigger1 = statetype = s
trigger1 = ctrl =1

;magia rb2
[state -1]
type = changestate
value = 770
triggerall = command = "start"
trigger1 = statetype = s
trigger1 = ctrl =1

;magia rb2
[state -1]
type = changestate
value = 3001
triggerall = command = "superc"
triggerall = power >= 2000
trigger1 = statetype = s
trigger1 = ctrl =1

;magia rbs
[state -1]
type = changestate
value = 3000
triggerall = command = "supera" || command = "superb"
triggerall = power >= 1000
trigger1 = statetype = s
trigger1 = ctrl =1

;magia rbs
[state -1]
type = changestate
value = 3200
triggerall = command = "superf"
triggerall = power >= 2000
trigger1 = statetype = s
trigger1 = ctrl =1
trigger2 = stateno = 420
trigger2 = movecontact
trigger3 = stateno = 220
trigger3 = movecontact
trigger4 = stateno = 221
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 200
trigger6 = movecontact
trigger7 = stateno = 201
trigger7 = movecontact
trigger8 = stateno = 231
trigger8 = movecontact  ;If move hits, or is guarded by opponent
TRIGGER9 = STATENO = 430
TRIGGER9 = movecontact

;magia rbs
[state -1]
type = changestate
value = 3100
triggerall = command = "superd" || command = "supere"
triggerall = power >= 1000
trigger1 = statetype = s
trigger1 = ctrl =1
trigger2 = stateno = 420
trigger2 = movecontact
trigger3 = stateno = 220
trigger3 = movecontact
trigger4 = stateno = 221
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 200
trigger6 = movecontact
trigger7 = stateno = 201
trigger7 = movecontact
trigger8 = stateno = 231
trigger8 = movecontact  ;If move hits, or is guarded by opponent
TRIGGER9 = STATENO = 430
TRIGGER9 = movecontact

;teleporte
[state -1]
type = changestate
value = 1500
triggerall = command = "QCB_a"
trigger1 = ctrl =1

;teleporte
[state -1]
type = changestate
value = 1501
triggerall = command = "QCB_b"
trigger1 = ctrl =1

;uper
[state -1]
type = changestate
value = 1001
triggerall = command = "uppercut_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 420
trigger2 = movecontact
trigger3 = stateno = 220
trigger3 = movecontact
trigger4 = stateno = 221
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 200
trigger6 = movecontact
trigger7 = stateno = 201
trigger7 = movecontact
trigger8 = stateno = 231
trigger8 = movecontact  ;If move hits, or is guarded by opponent
TRIGGER9 = STATENO = 430
TRIGGER9 = movecontact

;uper 2
[state -1]
type = changestate
value = 1101
triggerall = command = "uppercut_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 420
trigger2 = movecontact
trigger3 = stateno = 220
trigger3 = movecontact
trigger4 = stateno = 221
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 200
trigger6 = movecontact
trigger7 = stateno = 201
trigger7 = movecontact
trigger8 = stateno = 231
trigger8 = movecontact  ;If move hits, or is guarded by opponent
TRIGGER9 = STATENO = 430
TRIGGER9 = movecontact
;---------------------------------------------------------------------------
;magia rb2
[state -1]
type = changestate
value = 1004
triggerall = command = "QCB_holdy"
triggerall = numhelper(902) = 0
triggerall = numprojid(912) = 0
trigger1 = statetype = s
trigger1 = ctrl =1

;magia rbs
[state -1]
type = changestate
value = 1005
triggerall = command = "QCB_x"
trigger1 = statetype = s
trigger1 = ctrl =1

;magia rbs
[state -1]
type = changestate
value = 1105
triggerall = command = "QCB_y"
trigger1 = statetype = a
trigger1 = ctrl =1

;magia rbs
[state -1]
type = changestate
value = 1105
triggerall = command = "QCB_x"
trigger1 = statetype = a
trigger1 = ctrl =1
;---------------------------------------------------------------------------
;magia rbs
[state -1]
type = changestate
value = 1090
triggerall = command = "QCF_holdy"
triggerall = numprojid(661) = 0
triggerall = numprojid(663) = 0
triggerall = numprojid(665) = 0
trigger1 = statetype = s
trigger1 = ctrl =1

;magia rb2
[state -1]
type = changestate
value = 1002
triggerall = command = "QCF_x" 
triggerall = numprojid(900) = 0
trigger1 = statetype = s
trigger1 = ctrl =1

;magia rb2
[state -1]
type = changestate
value = 1201
triggerall = power >= 500
trigger1 = command = "QCF_x"
trigger1 = stateno >= 150
trigger1 = stateno <= 153
trigger2 = command = "QCF_y"
trigger2 = stateno >= 150
trigger2 = stateno <= 153
;---------------------------------------------------------------------------
;cotov forte
[State -1]
type = ChangeState
value = 1000
triggerall = command = "FF+y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 420
trigger2 = movecontact
trigger3 = stateno = 220
trigger3 = movecontact
trigger4 = stateno = 221
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 200
trigger6 = movecontact
trigger7 = stateno = 201
trigger7 = movecontact
trigger8 = stateno = 231
trigger8 = movecontact  ;If move hits, or is guarded by opponent

;cotov fraco
[State -1]
type = ChangeState
value = 1200
triggerall = command = "FF+x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 420
trigger2 = movecontact
trigger3 = stateno = 220
trigger3 = movecontact
trigger4 = stateno = 221
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 200
trigger6 = movecontact
trigger7 = stateno = 201
trigger7 = movecontact
trigger8 = stateno = 231
trigger8 = movecontact  ;If move hits, or is guarded by opponent
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
;Stand_Throw (close dir+b)
; Complicated? Skip the throws and look at stand_a, etc, first.
; This is disabled right now. Remove the "null;" below when you
; want to use it.
[State -1]
type = ChangeState
value = 800
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 5 ;Near P2
trigger1 = command = "fwd_y"   ;p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_y"   ;p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H

;===========================================================================
;Stand_A
[State -1]
type = ChangeState
value = 201
triggerall = command = "a"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
triggerall = p2bodydist y = 0
triggerall = p2bodydist x < 40
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 221
trigger2 = movecontact  ;If move hits, or is guarded by opponent
;---------------------------------------------------------------------------
;Stand_x
[State -1]
type = ChangeState
value = 221
triggerall = command = "x"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
triggerall = p2bodydist y = 0
triggerall = p2bodydist x < 35
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Stand_y
[State -1]
type = ChangeState
value = 231
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x < 50
triggerall = p2bodydist y = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 420
trigger2 = movecontact
trigger3 = stateno = 220
trigger3 = movecontact
trigger4 = stateno = 221
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 200
trigger6 = movecontact
trigger7 = stateno = 201
trigger7 = movecontact
;---------------------------------------------------------------------------
;stand a
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact  ;If move hits, or is guarded by opponent
;---------------------------------------------------------
;---------------------------------------------------------------------------
;rolltras
[State -1]
type = ChangeState
value = 308
trigger1 = command = "back_z"          ;Place name of command here
trigger1 = statetype != a
trigger1 = ctrl = 1
trigger2 = command = "back_c"          ;Place name of command here
trigger2 = statetype != a
trigger2 = ctrl = 1
;rollfrente
[State -1]
type = ChangeState
value = 309
trigger1 = command = "z"          ;Place name of command here
trigger1 = statetype != a
trigger1 = ctrl = 1
trigger2 = command = "c"          ;Place name of command here
trigger2 = statetype != a
trigger2 = ctrl = 1
;---------------------------------------------------------------------------
;Stand_B
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 420
trigger2 = movecontact
trigger3 = stateno = 220
trigger3 = movecontact
trigger4 = stateno = 221
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 200
trigger6 = movecontact
trigger7 = stateno = 201
trigger7 = movecontact
;---------------------------------------------------------------------------
;Stand_x
[State -1]
type = ChangeState
value = 220
triggerall = command = "x"          ;Place name of command here
triggerall = command != "holddown"  ;Standing moves should have this line
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Stand_y
[State -1]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 420
trigger2 = movecontact
trigger3 = stateno = 220
trigger3 = movecontact
trigger4 = stateno = 221
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 200
trigger6 = movecontact
trigger7 = stateno = 201
trigger7 = movecontact
;---------------------------------------------------------------------------
;andando agachado
[state -1]
type = changestate
value = 13
trigger1 = command = "holddiag"
trigger1 = statetype = c 
trigger1 = ctrl = 1

;Crouch_A
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 420
trigger2 = movecontact
trigger3 = stateno = 220
trigger3 = movecontact
trigger4 = stateno = 221
trigger4 = movecontact
trigger5 = stateno = 200
trigger5 = movecontact
trigger6 = stateno = 201
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = time > 10
;---------------------------------------------------------------------------
;Crouch_B
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 420
trigger2 = movecontact
trigger3 = stateno = 220
trigger3 = movecontact
trigger4 = stateno = 221
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 200
trigger6 = movecontact
trigger7 = stateno = 201
trigger7 = movecontact
trigger8 = stateno = 13
;---------------------------------------------------------------------------
;Crouch_x
[State -1]
type = ChangeState
value = 420
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 220
trigger2 = movecontact
trigger3 = stateno = 221
trigger3 = movecontact
trigger4 = stateno = 420
trigger4 = time > 5
;---------------------------------------------------------------------------
;Crouch_y
[State -1]
type = ChangeState
value = 430
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = stateno = 420
trigger2 = movecontact
trigger3 = stateno = 220
trigger3 = movecontact
trigger4 = stateno = 221
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 200
trigger6 = movecontact
trigger7 = stateno = 201
trigger7 = movecontact
;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 620
trigger2 = movecontact  ;If move hits, or is guarded by opponent
;---------------------------------------------------------------------------
;Jump_B
[State -1]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 620
trigger2 = movecontact  ;If move hits, or is guarded by opponent
trigger3 = stateno = 600
trigger3 = movecontact  ;If move hits, or is guarded by opponent
;---------------------------------------------------------------------------
;Jump_x
[State -1]
type = ChangeState
value = 620
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Jump_y
[State -1]
type = ChangeState
value = 630
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 620
trigger2 = movecontact  ;If move hits, or is guarded by opponent
trigger3 = stateno = 600
trigger3 = movecontact  ;If move hits, or is guarded by opponent

