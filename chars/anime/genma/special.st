;---------------------------------------------------------------------------
; RUNNING_SHOULDER_RAM
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 55
ctrl = 0
velset = 0,0,0
anim = 1000

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 7, 1 ;EFFECT2

[State 1000, 2]
type = PlaySnd
trigger1 = Time = 1
value = 7, 6 ;ATTACK!

[State 1000, 3]
type = PosAdd
trigger1 = Time > 14
x=9

[State 1000, 3.5]
type = AfterImage
trigger1 = Time = 1
time = 15
length = 9
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 1000, 4]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Heavy
damage    = 125, 5
getpower = 0
givepower = 55
guardflag = MA
pausetime = 5,5
sparkno = 2
sparkxy = -25,-40
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -9,-3.2   
air.velocity = -9,-3.2
fall = 1

[State 1000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; LEAPING_HEADBUTT_PRE
[Statedef 1100]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 55
ctrl = 0
velset = 0,0,0
anim = 1100

[State 1100, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 7, 1 ;EFFECT2

[State 1100, 2]
type = PlaySnd
trigger1 = Time = 1
value = 7, 6 ;ATTACK!

[State 1100, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1110
ctrl = 1

; LEAPING_HEADBUTT_GO!
[Statedef 1110]
type    = A
movetype= A
physics = A
ctrl = 0
velset = 0,0,0
anim = 1110

[State 1110, 2]
type = PlaySnd
trigger1 = Time = 1
value = 7, 3 ;WHOOSH!

[State 1110, 3]
type = PosAdd
trigger1 = Time >= 0
x=2
y=-11

[State 1110, 3.5]
type = AfterImage
trigger1 = Time = 1
time = 15
length = 9
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 1110, 4]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
attr = A, SA
animtype  = Heavy
damage    = 30, 5
getpower = 0
givepower = 55
guardflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = -18,-70
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1,-10    
air.velocity = -1,-10
fall = 1

[State 1110, 4]
type = HitDef
trigger1 = AnimElem = 3
attr = A, SA
animtype  = Heavy
damage    = 55, 5
getpower = 0
givepower = 55
guardflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = -18,-70
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4,-2   
air.velocity = -4,-2
fall = 1

[State 1110, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1120
ctrl = 1

; LEAPING_HEADBUTT_DOWN
[Statedef 1120]
type    = A
movetype= A
physics = A
ctrl = 0
velset = 2,0,0

[State 1120, 5]
type = ChangeState
trigger1 = Time = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; CHARGE
[Statedef 1200]
type    = S
physics = N
ctrl = 0
velset = 0,0,0

[State 1200, 0]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0
z = 0

[State 1200, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 1200

[State 1200, 2]
type = poweradd
trigger1 = Time = [0, 999999]
value = 2

[State 1200, 3]
type = poweradd
trigger1 = Time = [30, 999999]
value = 2

[State 1200, 4]
type = poweradd
trigger1 = Time = [90, 999999]
value = 2

[State 1200, 5]
type = poweradd
trigger1 = Time = [120, 999999]
value = 2

[State 1200, 6]
type = GameMakeAnim
trigger1 = TimeMod = 9, 0
value = 130
pos = 13, 0

[State 1200, 6]
type = PlaySnd
trigger1 = TimeMod = 28, 0
value = F20, 0 ;7, 9
volume = -70

[State 1200, 7]
type = ChangeState
trigger1 = power >= 3000
value = 50

[State 1200, 8]
type = ChangeState
trigger1 = command != "charge"
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;!!!RAGE_EXPLOSION!!!
[Statedef 1210]
type    = S
movetype= A
physics = S
juggle  = 6
ctrl = 0
anim = 1210

[State 1210, 1]
type = VarSet
trigger1 = Time = 0
v = 2
value = 2

[State 1210, 1]
type = Explod
trigger1 = time = 1
anim = 12222
pos = -320,0
postype = right
sprpriority = -2
supermove = 1
ownpal = 1
removetime = 20
bindtime = 20

;EXPLO_LEFT
[State 1210, 1]
type = Explod
triggerall = time = 0
trigger1 = var(30) = 1
anim = 22223
postype = right
pos = -320, 90
ontop = 1
supermove = 1
ownpal = 1
bindtime = 50

;EXPLO_RIGHT
[State 1210, 1]
type = Explod
triggerall = time = 0
trigger1 = var(30) = 2
anim = 22224
postype = right
pos = 0, 90
ontop = 1
supermove = 1
ownpal = 1
bindtime = 50

[State 1210, 1.5]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
time = 3

[State 1210, 2]
type = EnvShake
trigger1 = time = 0
trigger2 = time = 6
trigger3 = time = 12
trigger4 = time = 16
time = 15

[State 1210, 3]
type = PlaySnd
trigger1 = time = 0
value = 8,4
volume = 100

[State 1210, 5]
type = Projectile
trigger1 = Time = 0
projid = 1810
projanim = 1810
projhitanim = 1810
ProjRemoveTime = 18
;postype = back
offset = 12, 0        ;Creation offset from player (x,y)
velocity = 0, 0       ;Speed fireball moves (x,y) (optional)
remvelocity = 0, 0     ;Speed fireball moves when being removed (x,y) (opt)
accel = 0, 0            ;Acceleration (opt)
projremove = 1
attr = S, NP
animtype  = Heavy
damage    = 0
getpower  = 50
givepower = 30
hitflag = MAF
guardflag = MA
pausetime = 30,30
sparkno = 1
sparkxy = 0, 0
hitsound   = S5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5,-5   
fall = 1
airguard.velocity = -3.5   
air.type = High
air.velocity = -5,-5
fall.recover = 0

[State 1210, 6]
type = Projectile
trigger1 = Time = 6
projid = 1810
projanim = 1810
projhitanim = 1810
ProjRemoveTime = 18
;postype = back
offset = -20, 0        ;Creation offset from player (x,y)
velocity = 0, 0       ;Speed fireball moves (x,y) (optional)
remvelocity = 0, 0     ;Speed fireball moves when being removed (x,y) (opt)
accel = 0, 0            ;Acceleration (opt)
projremove = 1
attr = S, NP
animtype  = Heavy
damage    = 0
getpower  = 50
givepower = 30
hitflag = MAF
guardflag = MA
pausetime = 30,30
sparkno = 1
sparkxy = 0, 0
hitsound   = S5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5,-5   
fall = 1
airguard.velocity = -3.5   
air.type = High
air.velocity = -5,-5
fall.recover = 0

[State 1210, 7]
type = Projectile
trigger1 = Time = 12
projid = 1810
projanim = 1810
projhitanim = 1810
ProjRemoveTime = 18
;postype = back
offset = 20, 0        ;Creation offset from player (x,y)
velocity = 0, 0       ;Speed fireball moves (x,y) (optional)
remvelocity = 0, 0     ;Speed fireball moves when being removed (x,y) (opt)
accel = 0, 0            ;Acceleration (opt)
projremove = 1
attr = S, NP
animtype  = Heavy
damage    = 0
getpower  = 50
givepower = 30
hitflag = MAF
guardflag = MA
pausetime = 30,30
sparkno = 1
sparkxy = 0, 0
hitsound   = S5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5,-5   
fall = 1
airguard.velocity = -3.5   
air.type = High
air.velocity = -5,-5
fall.recover = 0

[State 1210, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; GRAB
[Statedef 1300]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 55
ctrl = 0
velset = 0,0,0
anim = 1300

[State 1300, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 7, 1 ;EFFECT2

[State 1300, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 10 ;ATTACK2!

[State 1300, 1.5]
type = AfterImage
trigger1 = Time = 1
time = 15
length = 9
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 1300, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NT
animtype  = Heavy
damage    = 0
getpower = 0
givepower = 55
fall.damage = 70
guardflag = 
pausetime = 10,10
sparkno = 0
sparkxy = -25,-40
hitsound   = S5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 3,-4   
air.velocity = 3,-4
fall = 1
fall.recover = 0

[State 1300, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; LEAPING_ROUNDHOUSE
[Statedef 1400]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 55
ctrl = 0
velset = 0,0,0
anim = 1100

[State 1400, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 7, 1 ;EFFECT2

[State 1400, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 7, 10 ;ATTACK2!

[State 1400, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1410
ctrl = 1

[Statedef 1410]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 230

[State 1410, .5]
type = AfterImage
trigger1 = Time = 1
time = 15
length = 9
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 1410, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 3 ;WHOOSH!

[State 1410, 1]
type = VelAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
x = 2
y = -4

[State 1410, 1]
type = VelAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
x = 1
y = -1

[State 1410, 1]
type = VelAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
x = .5
y = -.5

[State 1410, 2]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = A, SA
animtype  = Heavy
damage    = 35, 1
getpower = 0
givepower = 55
guardflag = MA
pausetime = 10,10
sparkno = 2
sparkxy = -25,-40
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5   
air.velocity = -5,-5

[State 1410, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = A, SA
animtype  = Heavy
getpower = 0
givepower = 55
damage    = 135, 5
guardflag = MA
pausetime = 15,15
sparkno = 2
sparkxy = -25,-40
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8,-5   
air.velocity = -8,-5
fall = 1

[State 1410, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

; ADDITIONAL_LEAPING_ROUNDHOUSE
[Statedef 1420]
type    = A
movetype= A
physics = A
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 230

[State 1420, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 3 ;WHOOSH!

[State 1420, 1]
type = VelAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
x = 2
y = -2

[State 1420, 1]
type = VelAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
x = 1
y = -1

[State 1420, 1]
type = VelAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
x = .5
y = -.5

[State 1420, 1.5]
type = AfterImage
trigger1 = Time = 1
time = 15
length = 9
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 1420, 2]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = A, SA
animtype  = Heavy
damage    = 35, 1
getpower = 0
givepower = 55
guardflag = MA
pausetime = 17,17
sparkno = 2
sparkxy = -25,-40
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5   
air.velocity = -5,-5

[State 1420, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = A, SA
animtype  = Heavy
damage    = 75, 5
getpower = 0
givepower = 55
guardflag = MA
pausetime = 20,8
sparkno = 2
sparkxy = -25,-40
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8,-5   
air.velocity = -8,-5
fall = 1

[State 1420, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; PANDA_RAGE
[Statedef 1500]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 55
ctrl = 0
velset = 0,0,0
anim = 1510

[State 1500, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 1510
ctrl = 1

[Statedef 1510]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
anim = 1500

[State 1510, .5]
type = AfterImage
trigger1 = Time = 1
time = 15
length = 9
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 1510, 1]
type = PlaySnd
trigger1 = Time = 1
value = 7, 10 ;ATTACK2!

[State 1510, 1]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
trigger6 = AnimElem = 13
trigger7 = AnimElem = 14
value = 7, 1 ;EFFECT2

[State 1510, 1]
type = VelAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 9
trigger6 = AnimElem = 10
trigger7 = AnimElem = 13
trigger8 = AnimElem = 14
x = 1

[State 1510, 1]
type = VelAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
trigger5 = AnimElem = 11
trigger6 = AnimElem = 12
trigger7 = AnimElem = 15
trigger8 = AnimElem = 16
x = .7

[State 1510, 1]
type = VelAdd
trigger1 = AnimElem = 17
trigger2 = AnimElem = 18
x = .5

[State 1510, 2]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
trigger5 = AnimElem = 10
trigger6 = AnimElem = 12
trigger7 = AnimElem = 14
trigger8 = AnimElem = 16
trigger9 = AnimElem = 18
trigger10 = AnimElem = 20
attr = S, HA
animtype  = Heavy
damage    = 11,1
getpower = 0
givepower = 55
guardflag = MA
pausetime = 3,3
sparkno = 1
sparkxy = -25,-46
hitsound   = S5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1   
air.velocity = -1,-1
airguard.velocity = -3.5   
guard.velocity = -3.5

[State 1510, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; VERBAL_ATTACK
[Statedef 1600]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 1610

[State 1600, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 7 ;FLY

[State 1600, 1]
type = PlaySnd
trigger1 = Time = 1
value = 7, 10 ;ATTACK2!

[State 1600, 1.5]
type = AfterImage
trigger1 = Time = 1
time = 15
length = 9
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 1600, 2]
type = Projectile
trigger1 = AnimElem = 3
projid = 1600
projanim = 1600
projhitanim = 1601
projshadow = -1
offset = 15, -60        ;Creation offset from player (x,y)
velocity = 5.5, -3       ;Speed fireball moves (x,y) (optional)
remvelocity = 1, -2     ;Speed fireball moves when being removed (x,y) (opt)
accel = 0, .2            ;Acceleration (opt)
projhits = 1
projmisstime = 1
projremove = 1
attr = S, SP
damage    = 55,5
getpower  = 50
givepower = 30
hitflag = MAF
guardflag = MA
pausetime = 3,3
sparkno = 1
sparkxy = 0, 0
hitsound   = S5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5,-5   
fall = 1
airguard.velocity = -3.5   
air.type = High
air.velocity = -1,-5
fall.recover = 0

[State 1600, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;SUPERSONIC_PUNCH
[Statedef 1700]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 25
ctrl = 0
anim = 1700

[State 1700, 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 1 ;EFFECT2

[State 1700, 1]
type = PosAdd
trigger1 = Time > 7
x = 10 ;6.5

[State 1700, 1.5]
type = AfterImage
trigger1 = Time = 1
time = 25
length = 9
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 1700, 1.7]
type = ChangeState
trigger1 = AnimElem = 4
trigger1 = command = "holdy"
value = 1510
ctrl = 1

[State 1700, 2]
type = AfterImage
trigger1 = AnimElem = 4
time = 15
length = 9
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 1700, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = C, NA
damage    = 75
getpower  = 0
givepower = 55
hitflag = MAF
guardflag = MA
pausetime = 8,8
sparkxy = -24,-28
sparkno = 1
hitsound   = S5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 15
ground.velocity = -5,-7   
air.velocity = -5,-7
guard.velocity = -5   
fall = 1

[State 1700, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; COMBO_BREAKER
[Statedef 2100]
type    = A
movetype= A
physics = A
ctrl = 0
velset = 0,0,0
anim = 1110

[State 2100, 2]
type = PlaySnd
trigger1 = Time = 1
value = 7, 4 ;BREAKER!
volume = 100

[State 2100, 3]
type = PosAdd
trigger1 = Time >= 0
x=2
y=-11

[State 2100, 3.5]
type = AfterImage
trigger1 = Time = 1
time = 15
length = 9
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 2100, 4]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
attr = A, SA
animtype  = Heavy
damage    = 30, 5
getpower = 0
givepower = 55
guardflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = -18,-70
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1,-10   
air.velocity = -1,-10
fall = 1

[State 2100, 4]
type = HitDef
trigger1 = AnimElem = 3
attr = A, SA
animtype  = Heavy
damage    = 55, 5
getpower = 0
givepower = 55
guardflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = -18,-70
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4,-2   
air.velocity = -4,-2
fall = 1

[State 2100, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 2110
ctrl = 1

[Statedef 2110]
type    = A
movetype= A
physics = A
ctrl = 0
velset = 2,0,0

[State 2110, 5]
type = ChangeState
trigger1 = Time = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; EVADE
[Statedef 2200]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 2200

[State 2200, 1]
type = AfterImage
trigger1 = Time = 1
time = 35
length = 9
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 2200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; HELPER
[Statedef 3000]
type    = L
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 3000,1]
type = PlaySnd
trigger1 = Time = 0
value = 8, 3

[State 3000,2]
type = PowerAdd
trigger1 = Time = 0
value = -1000

[State 3000,3]
type = PlaySnd
trigger1 = Time = 6
value = 8, 5 ;RANMA
volume = 30

[State 3000,4]
type = Projectile
trigger1 = Time = 1
projid = 2000
projanim = 2000
projhitanim = 2001
projshadow = -1
postype = back
offset = -20, -50        ;Creation offset from player (x,y)
velocity = 9.5, -2       ;Speed fireball moves (x,y) (optional)
remvelocity = 5, -5     ;Speed fireball moves when being removed (x,y) (opt)
accel = 0, .3            ;Acceleration (opt)
projhits = 1
projmisstime = 1
projremove = 1
attr = S, SP
damage    = 75,5
givepower = 30
hitflag = MAF
guardflag = MA
pausetime = 15,15
sparkno = 2
sparkxy = 25, -60
hitsound   = S5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -6,-6   
fall = 1
airguard.velocity = -3.5   
air.type = High
air.velocity = -6,-6
fall.recover = 0

[State 3000, 5]
type = ChangeState
trigger1 = Time = 50
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; TAUNT
[Statedef 2500]
type    = S
movetype= A
physics = S
velset = 0,0,0
ctrl = 0

[State 2500, 2]
type = VarRandom
trigger1 = Time = 0
v = 8

[State 2500, 3]
type = ChangeState
triggerall = Time = 1
trigger1 = var(8) >=500
value = 2505
ctrl = 1

[State 2500, 4]
type = ChangeState
triggerall = Time = 1
trigger1 = var(8) < 500
value = 2510
ctrl = 1

; TAUNT#1
[Statedef 2505]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 2500

[State 2505, 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 11 ;GRRR!

[State 2505, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; TAUNT#2
[Statedef 2510]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 2510

[State 2510, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 11 ;GRRR!

[State 2510, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
