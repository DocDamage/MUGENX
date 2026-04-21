;---------------------------------------------------------------------------
; Format:
; [Statedef STATENO]
; type = ?      S/C/A/L  stand/crouch/air/liedown
; movetype = ?  I/A/H    idle/attack/gethit
; physics = ?   S/C/A/N  stand/crouch/air/none
; juggle = ?             air juggle points move requires
;
; [State STATENO, ?]     ? - any number you choose
; type = ?
; ...

[statedef 100]
type = S
movetype = I
physics = N
anim = 100
velset = const(velocity.run.fwd.x),const(velocity.run.back.y)
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 100
flag = nowalk

[State 0, ]
type = VelAdd
trigger1 = time >= 0
y = 0.35

[State 0, ]
type = CtrlSet
trigger1 = time = 1
value = 1

[State 0, ]
type = explod
trigger1 = time = 0
anim = 101
postype = p1
pos = 30,0
bindtime = 1
sprpriority = 2
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 52
ctrl = 1

[statedef 101]
type = A
movetype = I
physics = N
anim = 100
velset = const(velocity.run.fwd.x)*2,const(velocity.run.back.y)
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = stateno = 101
value = 0

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 101
flag = nowalk

[State 0, ]
type = Gravity
trigger1 = backedgedist >= -25

[State 0, ]
type = VelSet
trigger1 = backedgedist < -25
trigger1 = time >= 5
x = const(velocity.run.fwd.x)*2
y = 0

[State 0, ]
type = VelSet
trigger1 = backedgedist >= -25
x = const(velocity.run.fwd.x)
persistent = 0


[State 0, ]
type = ChangeState
trigger1 = backedgedist >= -25
trigger1 = pos y >= 0
value = 52

;---Win--------
[statedef 180]
type = S
movetype = I
physics = S
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = time = 0
trigger1 = var(1) = 2
value = 184

[State 0, ]
type = ChangeState
trigger1 = time = 0
trigger1 = var(1) = 1
value = 182

[State 0, ]
type = ChangeState
trigger1 = time = 0
value = 181

; Come On!
[statedef 181]
type = S
movetype = I
physics = S
anim = 181
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = time = 25
flag = roundnotover

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S4,1

; J.J!
[statedef 182]
type = S
movetype = I
physics = S
anim = 182
sprpriority = -8
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = time = 65
flag = roundnotover

[State 0, ]
type = VelSet
trigger1 = time = [13,30]
x = 7

[State 0, ]
type = VelSet
trigger1 = animelem = 11
x = 0

[State 0, ]
type = Explod
trigger1 = animelem = 7
anim = 183
ID = 183
sprpriority = -7
removetime = -1

[State 0, ]
type = EnvColor
trigger1 = animelem = 13
time = 3
under = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 8
value = S3,4

[State 0, ]
type = PlaySnd
trigger1 = animelem = 11
value = S5,10

[State 0, ]
type = PlaySnd
trigger1 = animelem = 13
value = S12,0

;Symbiote
[statedef 184]
type = S
movetype = I
physics = S
anim = 184
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 184
flag = roundnotover

[State 0, ]
type = VelSet
trigger1 = time >= 5
x = 15

[State 0, ]
type = EnvColor
trigger1 = time >= 10
trigger1 = p2bodydist x <= 0
value = 0,0,0
time = 40
under = 0
persistent = 0

[State 0, ]
type = ChangeState
trigger1 = frontedgedist <= 60
value = 186

[statedef 186]
type = S
movetype = I
physics = S
anim = 186
velset = 0,0,0
ctrl = 0

[State 0, ]
type = TargetState
trigger1 = time = 0
value = 1009

[State 0, ]
type = Explod
trigger1 = time = 0
anim = 185
pos = 0,0
postype = p1
facing = -1

[State 0, ]
type = Turn
trigger1 = time = 0

;---Intro-----
[statedef 190]
type = S
movetype = I
physics = S
anim = 190
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 190
flag = intro

[State 0, ]
type = ChangeState
trigger1 = time = 0
trigger1 = random > 500
value = 193

[State 0, ]
type = Explod
trigger1 = time = 1
anim = 191
ID = 191
pos = backedgedist+15,0
postype = back
removetime = 38
scale = 1, 1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 40
anim = 191
ID = 191
pos = backedgedist+15,0
postype = back
removetime = 5
scale = .8, 1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 45
anim = 191
ID = 191
pos = backedgedist+15,0
postype = back
removetime = 5
scale = .6, 1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 50
anim = 191
ID = 191
pos = backedgedist+15,0
postype = back
removetime = 5
scale = .4, 1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 55
anim = 191
ID = 191
pos = backedgedist+15,0
postype = back
removetime = 5
scale = .2, 1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = animelem = 30
anim = 192
ID = 192
pos = backedgedist,0
postype = back
removetime = 2
scale = 1, 1
ownpal = 1

[State 0, ]
type = PalFX
trigger1 = time = 0
time = 72
add = -200,-200,-200
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 8
time = 2
add = -190,-190,-190
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 9
time = 2
add = -180,-180,-180
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 10
time = 2
add = -170,-170,-170
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 11
time = 2
add = -160,-160,-160
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 12
time = 2
add = -150,-150,-150
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 13
time = 2
add = -140,-140,-140
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 14
time = 2
add = -120,-120,-120
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 15
time = 2
add = -100,-100,-100
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 16
time = 2
add = -90,-90,-90
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 17
time = 2
add = -80,-80,-80
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 18
time = 2
add = -70,-70,-70
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 19
time = 2
add = -60,-60,-60
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 20
time = 2
add = -50,-50,-50
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 21
time = 2
add = -40,-40,-40
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 22
time = 2
add = -30,-30,-30
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 23
time = 2
add = -20,-20,-20
mul = 256,256,256

[State 0, ]
type = PalFX
trigger1 = animelem = 24
time = 2
add = -10,-10,-10
mul = 256,256,256

[State 0, ]
type = PlaySnd
trigger1 = animelem = 24
value = S3,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 35
value = S5,10

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 0

[statedef 193]
type = S
movetype = I
physics = S
anim = 193
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 193
flag = intro

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S3,0

[State 0, ]
type = BGPalFX
trigger1 = animelem = 2
trigger2 = animelem = 4
time = 20
mul = 100,100,100
invertall = 1

[State 0, ]
type = Explod
trigger1 = animelem = 2
anim = 194
pos = -10,-105
removetime = 20
sprpriority = 2

[State 0, ]
type = Explod
trigger1 = animelem = 4
anim = 194
pos = 5,-67
removetime = 20
sprpriority = 2

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 0

[statedef 195]
type = S
movetype = I
physics = S
ctrl = 1

[State 0, ]
type = VarRandom
trigger1 = time = 0
v = 9
range = 1,2

[State 0, ]
type = ChangeAnim
triggerall = facing = 1
trigger1 = time = 0
value = 195

[State 0, ]
type = ChangeAnim
triggerall = facing = -1
trigger1 = time = 0
value = 196

[State 0, ]
type = ChangeAnim
triggerall = facing = 1
trigger1 = var(9) = 1
trigger1 = animelem = 5,10
trigger2 = var(9) = 2
trigger2 = animelem = 6,10
trigger3 = var(9) = 3
trigger3 = animelem = 7,10
value = 195
elem = 8

[State 0, ]
type = ChangeAnim
triggerall = facing = 1
trigger1 = var(9) = 2
trigger1 = animelem = 4,3
value = 195
elem = 6

[State 0, ]
type = ChangeAnim
triggerall = facing = 1
trigger1 = var(9) = 3
trigger1 = animelem = 4,3
value = 195
elem = 7

[State 0, ]
type = ChangeAnim
triggerall = facing = -1
trigger1 = var(9) = 1
trigger1 = animelem = 5,10
trigger2 = var(9) = 2
trigger2 = animelem = 6,10
trigger3 = var(9) = 3
trigger3 = animelem = 7,10
value = 196
elem = 8

[State 0, ]
type = ChangeAnim
triggerall = facing = -1
trigger1 = var(9) = 2
trigger1 = animelem = 4,3
value = 196
elem = 6

[State 0, ]
type = ChangeAnim
triggerall = facing = -1
trigger1 = var(9) = 3
trigger1 = animelem = 4,3
value = 196
elem = 7

[State 0, ]
type = PlaySnd
trigger1 = var(9) = 1
trigger1 = time = 12
value = S4,0
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = var(9) = 2
trigger1 = time = 12
value = S4,1
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = var(9) = 3
trigger1 = time = 12
value = S4,2
channel = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---{Standing Attacks}---
;Punch (light)
[statedef 200]
type = S
movetype = A
physics = S
anim = 200
juggle = 1
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 500
trigger1 = animelem = 2
value = 1,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,1

[State 0, ]
type = HitDef
trigger1 = animelem = 3
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Light
air.animtype = Light
fall.animtype = Back
ground.type = high
air.type = low
damage = 15,5
pausetime = 2,3
guard.pausetime = 3,2
sparkno = 0
guard.sparkno = 40
sparkxy = 5,-60
hitsound = S5,1
guardsound = S5,8
ground.slidetime = 5
guard.slidetime = 5
ground.hittime = 5
guard.hittime = 5
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -2,0
airguard.velocity = -3,-1
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -1
getpower = 25,5
givepower = 5,5

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Punch (medium)
[statedef 210]
type = S
movetype = A
physics = S
anim = 210
juggle = 2
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 250
trigger1 = animelem = 2
value = 1,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,2

[State 0, ]
type = HitDef
trigger1 = movehit = 0
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = low
air.type = low
hitflag = MAF
guardflag = MA
damage = 30,10
pausetime = 6,8
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-55
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 500
ground.hittime = 500
air.hittime = 35
ground.velocity = -0.25,-13
guard.velocity = -3
air.velocity = -0.25,-12
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower = 35,5
givepower = 5,5
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
trigger1 = animelem = 3
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 30,10
pausetime = 4,5
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-110
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -0.25,-10
guard.velocity = -3
air.velocity = -0.25,-9
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower = 35,5
givepower = 5,5

[State 0, ]
type = ChangeState
trigger1 = command = "holdup"
trigger1 = movehit = 1
value = 700

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Punch (fierce)
[statedef 220]
type = S
movetype = A
physics = S
anim = 220
juggle = 3
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 1,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 7
value = 5,10
volume = 20

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 0,3

[State 0, ]
type = HitDef
trigger1 = animelem = 3
attr = S,NA
animtype = back
air.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 65,15
pausetime = 5,6
guard.pausetime = 6,5
sparkno = 2
guard.sparkno = 41
sparkxy = -5,-55
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 25
ground.velocity = -6,-2
guard.velocity = -3
air.velocity = -5,1
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -4
getpower = 35,5
givepower = 5,5
fall = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Kick (light)
[statedef 230]
type = S
movetype = A
physics = S
anim = 230
juggle = 1
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 500
trigger1 = animelem = 2
value = 1,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,1

[State 0, ]
type = HitDef
trigger1 = animelem = 2
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Light
air.animtype = Light
fall.animtype = Back
ground.type = low
air.type = low
damage = 15,5
pausetime = 2,4
guard.pausetime = 3,2
sparkno = 0
guard.sparkno = 40
sparkxy = 5,-60
hitsound = S5,1
guardsound = S5,8
ground.slidetime = 7
guard.slidetime = 7
ground.hittime = 7
guard.hittime = 7
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -2,0
airguard.velocity = -3,-1
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -1
getpower = 25,5
givepower = 5,5

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Kick (medium)
[statedef 240]
type = S
movetype = A
physics = S
anim = 240
juggle = 2
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 250
trigger1 = animelem = 3
value = 1,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 7
value = 5,10
volume = 20

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,2

[State 0, ]
type = HitDef
trigger1 = movehit = 0
attr = S,NA
animtype = medium
air.animtype = medium
fall.animtype = Back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 30,10
pausetime = 4,6
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-95
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -3
guard.velocity = -3
air.velocity = -4
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower = 35,5
givepower = 5,5
air.fall = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
trigger1 = animelem = 4
attr = S,NA
animtype = medium
air.animtype = medium
fall.animtype = Back
ground.type = low
air.type = low
hitflag = MAF
guardflag = MA
damage = 30,10
pausetime = 4,6
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-50
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -3
guard.velocity = -3
air.velocity = -4
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower = 35,5
givepower = 5,5
air.fall = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Kick (fierce)
[statedef 250]
type = S
movetype = A
physics = S
anim = 250
juggle = 3
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 1,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 8
value = 5,10
volume = 20

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3

[State 0, ]
type = HitDef
triggerall = animelem = 3
trigger1 = prevstateno = 410
trigger2 = prevstateno = 440
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 65,15
pausetime = 5,6
guard.pausetime = 6,5
sparkno = 2
guard.sparkno = 41
sparkxy = -5,-55
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 35
ground.hittime = 35
air.hittime = 35
ground.velocity = -0.25,-11
guard.velocity = -3
air.velocity = -0.25,-12
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -5
getpower = 35,5
givepower = 5,5

[State 0, ]
type = HitDef
trigger1 = prevstateno != 410
trigger1 = prevstateno != 440
trigger1 = animelem = 3
attr = S,NA
animtype = hard
air.animtype = up
fall.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 65,15
pausetime = 5,6
guard.pausetime = 6,5
sparkno = 2
guard.sparkno = 41
sparkxy = -5,-55
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -6
guard.velocity = -3
air.velocity = -5,-4
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -5
getpower = 35,5
givepower = 5,5

[State 0, ]
type = ChangeState
triggerall = command = "holdup"
triggerall = movehit = 1
trigger1 = prevstateno = 410
trigger2 = prevstateno = 440
value = 700

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---{Crouching Attacks}---
;Punch (light)
[statedef 400]
type = C
movetype = A
physics = S
anim = 400
ctrl = 0
juggle = 1

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 500
trigger1 = animelem = 2
value = 1,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,1

[State 0, ]
type = HitDef
trigger1 = animelem = 2
attr = C,NA
hitflag = MAF
guardflag = LA
animtype = light
air.animtype = light
fall.animtype = back
ground.type = low
air.type = low
damage = 10,5
pausetime = 2,4
guard.pausetime = 3,2
sparkno = 0
guard.sparkno = 40
sparkxy = 0,-5
hitsound = S5,1
guardsound = S5,8
ground.slidetime = 5
guard.slidetime = 5
ground.hittime = 5
guard.hittime = 5
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -2,0
airguard.velocity = -3,-1
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -1
getpower = 25,5
givepower = 5,5

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;Punch (medium)
[statedef 410]
type = C
movetype = A
physics = S
anim = 410
ctrl = 0
juggle = 2

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 250
trigger1 = animelem = 2
value = 1,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,2

[State 0, ]
type = HitDef
trigger1 = movehit = 0
attr = C,NA
animtype = medium
air.animtype = medium
fall.animtype = up
ground.type = low
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,10
pausetime = 4,5
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-20
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -2,-2
guard.velocity = -3
air.velocity = -0.25,-3
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower = 35,5
givepower = 5,5
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
trigger1 = animelem = 3
attr = C,NA
animtype = medium
air.animtype = medium
fall.animtype = up
ground.type = low
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,10
pausetime = 4,5
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-65
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -2,-2
guard.velocity = -3
air.velocity = -0.25,-5
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower = 35,5
givepower = 5,5

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;Punch (fierce)
[statedef 420]
type = C
movetype = A
physics = S
anim = 420
ctrl = 0
juggle = 3

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 1,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3

[State 0, ]
type = HitDef
trigger1 = animelem = 4
attr = C,NA
animtype = hard
air.animtype = hard
ground.type = low
air.type = low
hitflag = MAF
guardflag = LA
damage = 65,15
pausetime = 6,8
guard.pausetime = 6,5
sparkno = 2
guard.sparkno = 41
sparkxy = -5,-40
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 18
ground.hittime  = 18
air.hittime = 20
ground.velocity = -10,0
guard.velocity = -3
air.velocity = -5,-1
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -4
getpower = 35,5
givepower = 5,5

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;Kick (light)
[statedef 430]
type = C
movetype = A
physics = S
anim = 430
ctrl = 0
juggle = 1

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 500
trigger1 = animelem = 1
value = 1,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,1

[State 0, ]
type = HitDef
trigger1 = animelem = 2
attr = C,NA
hitflag = MAF
guardflag = LA
animtype = light
air.animtype = light
fall.animtype = back
ground.type = low
air.type = low
damage = 10,5
pausetime = 2,4
guard.pausetime = 3,2
sparkno = 0
guard.sparkno = 40
sparkxy = 0,-10
hitsound = S5,1
guardsound = S5,8
ground.slidetime = 7
guard.slidetime = 7
ground.hittime = 7
guard.hittime = 7
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -2,0
airguard.velocity = -3,-1
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -1
getpower = 25,5
givepower = 5,5

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;Kick (medium)
[statedef 440]
type = C
movetype = A
physics = S
anim = 440
ctrl = 0
juggle = 2

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 250
trigger1 = animelem = 2
value = 1,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 0,2

[State 0, ]
type = HitDef
trigger1 = animelem = 3
attr = C,NA
animtype = medium
air.animtype = medium
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,10
pausetime = 4,5
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-65
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 15
guard.slidetime = 15
ground.hittime = 15
guard.hittime = 15
air.hittime = 20
ground.velocity = -3
guard.velocity = -3
air.velocity = -0.25,-5
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower = 35,5
givepower = 5,5

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;Kick (fierce)
[statedef 450]
type = C
movetype = A
physics = S
anim = 450
ctrl = 0
juggle = 3

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = VelSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 1,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
value = 0,3

[State 0, ]
type = HitDef
trigger1 = animelem = 4
attr = C,NA
animtype = hard
air.animtype = hard
fall.animtype = back
ground.type = trip
air.type = trip
hitflag = MAF
guardflag = LA
damage = 65,15
pausetime = 6,8
guard.pausetime = 6,5
sparkno = 2
guard.sparkno = 41
sparkxy = -10,-15
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -3,-1
guard.velocity = -3
air.velocity = -2,-1
airguard.velocity = -2,-1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -4
getpower = 35,5
givepower = 5,5

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 11
ctrl = 1

;---{Jumping Attacks}---
;Punch (light)
[statedef 600]
type = A
movetype = A
physics = A
anim = 600
juggle = 1
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 500
trigger1 = animelem = 2
value = 1,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = 0,1

[State 0, ]
type = HitDef
trigger1 = animelem = 2
attr = A,NA
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = light
fall.animtype = back
ground.type = high
air.type = high
damage = 15,5
pausetime = 10,11
guard.pausetime = 3,2
sparkno = 0
guard.sparkno = 40
sparkxy = 7,-30
hitsound = S5,1
guardsound = S5,8
ground.slidetime = 5
guard.slidetime = 5
ground.hittime = 5
guard.hittime = 5
air.hittime = 20
ground.velocity = -3
guard.velocity = -3
air.velocity = -2,-4
airguard.velocity = -3,1
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -1
getpower = 25,5
givepower = 5,5

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

;Punch (medium)
[statedef 610]
type = A
movetype = A
physics = A
anim = 610
juggle = 1
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 250
trigger1 = animelem = 2
value = 1,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,2

[State 0, ]
type = HitDef
trigger1 = movehit = 0
attr = A,NA
animtype = medium
air.animtype = hard
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,10
pausetime = 11,12
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = 5,-65
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3
airguard.velocity = -2,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 35,5
givepower = 5,5
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
trigger1 = animelem = 3
attr = A,NA
animtype = medium
air.animtype = medium
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,10
pausetime = 4,5
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-100
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -2,-3
airguard.velocity = -2,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 35,5
givepower = 5,5

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

;Punch (fierce)
[statedef 620]
type = A
movetype = A
physics = A
anim = 620
juggle = 1
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 1,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3

[State 0, ]
type = HitDef
trigger1 = movehit = 0
attr = A,NA
animtype = hard
air.animtype = hard
fall.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,10
pausetime = 11,13
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-95
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,15
airguard.velocity = -2,1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 35,5
givepower = 5,5
persistent = 0
air.fall = 1

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
trigger1 = animelem = 3
attr = A,NA
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,10
pausetime = 4,5
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = -15,-90
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -2,5
airguard.velocity = -2,1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 35,5
givepower = 5,5
air.fall = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

;Kick (light)
[statedef 630]
type = A
movetype = A
physics = A
anim = 630
juggle = 1
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 500
trigger1 = animelem = 2
value = 1,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = 0,1

[State 0, ]
type = HitDef
trigger1 = animelem = 2
attr = A,NA
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = medium
fall.animtype = back
ground.type = high
air.type = low
damage = 15,5
pausetime = 10,11
guard.pausetime = 3,2
sparkno = 0
guard.sparkno = 40
sparkxy = 0,-45
hitsound = S5,1
guardsound = S5,8
ground.slidetime = 5
guard.slidetime = 5
ground.hittime = 5
guard.hittime = 5
air.hittime = 20
ground.velocity = -3
guard.velocity = -3
air.velocity = -2,-2
airguard.velocity = -3,1
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -1
getpower = 25,5
givepower = 5,5

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

;Kick (medium)
[statedef 640]
type = A
movetype = A
physics = A
anim = 640
juggle = 1
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = random >= 250
trigger1 = animelem = 2
value = 1,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 0,2

[State 0, ]
type = HitDef
trigger1 = animelem = 3
attr = A,NA
animtype = medium
air.animtype = medium
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 30,10
pausetime = 11,12
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = -5,-85
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -2,-3
airguard.velocity = -2,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 35,5
givepower = 5,5

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

;Kick (fierce)
[statedef 650]
type = A
movetype = A
physics = A
anim = 650
juggle = 1
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 1,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 0,3

[State 0, ]
type = HitDef
trigger1 = animelem = 3
attr = A,NA
animtype = hard
air.animtype = hard
fall.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,10
pausetime = 12,13
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = -5,-20
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -4,17
airguard.velocity = -2,1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 35,5
givepower = 5,5
air.fall = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

;---{Super Jump}---
[Statedef 700]
type = A
movetype = I
physics = N
anim = 40
velset = 0,0
ctrl = 0

[State 0, ]
type = Playsnd
trigger1 = time = 0
persistent = 0
value = S0,4

[State 0, ]
type = Explod
trigger1 = time = 0
anim = 720
ID = 710
pos = 0,0
bindtime = 1
ontop = 1
shadow = -1,-1,-1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 0
anim = 725
ID = 715
pos = 0,0
bindtime = 1
ontop = 1
shadow = -1,-1,-1
ownpal = 1

[State 0, ]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 0, ]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 0, ]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 0, ]
type = VelSet
trigger1 = animtime = 0
trigger1 = palno != 11
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)*1.5

[State 0, ]
type = VelSet
trigger1 = animtime = 0
trigger1 = palno = 11
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)*1.15

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 1  

;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]
[State 0, ]
type = PosSet
trigger1 = prevstateno = 100
y = 0

[State 0, ]
type = VelSet
trigger1 = prevstateno = 100
y = 0

[State 0, ]
type = PlaySnd
triggerall = anim = 47
trigger1 = time = 1
value = 5,10
ignorehitpause = 1
persistent = 0

[State 0, ]
type = Explod
trigger1 = stateno = 140
trigger1 = statetype = S
trigger1 = time = 0
anim = 143
bindtime = 1
sprpriority = 2
shadow = -1,-1,-1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = stateno = 140
trigger1 = statetype = C
trigger1 = time = 0
anim = 144
bindtime = 1
sprpriority = 2
shadow = -1,-1,-1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = stateno = 140
trigger1 = statetype = A
trigger1 = time = 0
anim = 145
bindtime = 1
sprpriority = 2
shadow = -1,-1,-1
ownpal = 1

[State 0, ]
type = Explod
triggerall = palno = 7
trigger1 = TeamSide = 1
anim = 20000
ID = 20000
pos = 70,35
postype = left
bindtime = -1
removetime = 1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
persistent = 1

[State 0, ]
type = Explod
triggerall = palno = 7
trigger1 = TeamSide = 2
anim = 20000
ID = 20000
pos = -70,35
postype = right
bindtime = -1
removetime = 1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
persistent = 1

[State 0, ]
type = Explod
triggerall = palno = 8
trigger1 = TeamSide = 1
anim = 20001
ID = 20001
pos = 70,35
postype = left
bindtime = -1
removetime = 1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
persistent = 1

[State 0, ]
type = Explod
triggerall = palno = 8
trigger1 = TeamSide = 2
anim = 20001
ID = 20001
pos = -70,35
postype = right
bindtime = -1
removetime = 1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
persistent = 1

[State 0, ]
type = Explod
triggerall = palno = 9
trigger1 = TeamSide = 1
anim = 20002
ID = 20002
pos = 70,35
postype = left
bindtime = -1
removetime = 1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
persistent = 1

[State 0, ]
type = Explod
triggerall = palno = 9
trigger1 = TeamSide = 2
anim = 20002
ID = 20002
pos = -70,35
postype = right
bindtime = -1
removetime = 1
sprpriority = -10
ontop = 0
ownpal = 1
ignorehitpause = 1
persistent = 1

[State 0, ]
type = AssertSpecial
trigger1 = palno = 10
flag = invisible

[State 0, ]
type = AfterImage
trigger1 = palno = 10
trigger1 = time = 0
time = 9999
length = 17
framegap = 4
palcontrast = 150,150,150
paladd = 0,0,0
palmul = .9,.9,.9
trans = add1
ignorehitpause = 0
persistent = 0

[State 0, ]
type = DefenceMulSet
trigger1 = palno = 11
value = .75
ignorehitpause = 0
persistent = 0

[State 0, ]
type = EnvShake
triggerall = palno = 11
trigger1 = anim = 47
trigger2 = stateno = 52
trigger3 = stateno = 5100
freq = 100
ampl = -10
time = 10

[State 0, ]
type = velset
triggerall = palno = 11
triggerall = time = 1
trigger1 = anim = 47
trigger2 = stateno = 52
trigger3 = stateno = 5110
x = 0
y = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = Explod
triggerall = palno = 11
triggerall = stateno = 20
trigger1 = animelem = 2
anim = 7110
pos = 10,0
supermove = 999
pausemovetime = 999
scale = .25, .05
ownpal = 1

[State 0, ]
type = Explod
triggerall = palno = 11
triggerall = stateno = 20
trigger1 = animelem = 4
anim = 7110
pos = 7,7
supermove = 999
pausemovetime = 999
scale = .25, .05
ownpal = 1

[State 0, ]
type = Helper
triggerall = palno = 11
triggerall = time = 1
trigger1 = anim = 47
trigger2 = stateno = 52
trigger3 = stateno = 5100
trigger4 = stateno = 5110
name = "shockwave"
ID = 7110
pos = 0,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .75
size.yscale = .15
ownpal = 1

[State 0, ]
type = LifeAdd
triggerall = life > 0
trigger1 = palno = 12
trigger1 = movetype = I
value = 1


;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

;[Statedef -3]



;-------------------
;MEE Template Files
;   provided by
;  Kitsune Sniper
;       ***
; Thanks, Kitsune!
;-------------------
