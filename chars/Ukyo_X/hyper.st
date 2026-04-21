;---------------------------------------------------------------------------
; Waza#1:Swallow_Flash
[Statedef 4000]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 0
ctrl = 0
velset = 10,-7,0
anim = 4000

[State 4000, Super A]
type = SuperPause
trigger1 = Time = 0
pos = -25, -45
anim = 101

[State 4000, Super B]
type = PlaySnd
trigger1 = Time = 0
value = 7, 11

[State 4000, Super C]
type = PowerAdd
trigger1 = Time = 0
value = -1000

[State 4000, Super D]
type = AfterImage
trigger1 = AnimElem = 1
time = 2

[State 4000, Super E]
type = AfterImage
trigger1 = AnimElem = 1
Time = 44

[State 4000, Super F]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 12

[State 4000]
type = Explod
trigger1 = time = 0
anim = 22222
id = 22222
pos = -320,0
postype = right
sprpriority = -2
supermove = 1
removetime = 30
bindtime = 30

[State 4000, 4]
type = VarSet
trigger1 = Time = 0
v = 15
value = 4

[State 4000, 5]
type = ChangeState
trigger1 = movehit
value = 4050
ctrl = 0

[State 4000, 6]
type = ChangeState
trigger1 = moveguarded
value = 50
ctrl = 1

[State 4000, 7]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = A, HA
animtype  = Medium
damage    = 0
getpower = 0
givepower = 10
guardflag = MA
hitflag = MAF
pausetime = 3,30
sparkno = 2
sparkxy = -10,-55
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5   
air.velocity = -5, 0
fall.recover = 0

[State 4000, 8]
type = ChangeState
trigger1 = Time >= 300
value = 50
ctrl = 1

; Waza#1_Hit!
[Statedef 4050]
type    = A
movetype= A
physics = A
ctrl = 0
anim = 4060

[State 4050]
type = BGPalFX
trigger1 = Time = 0
mul = 50,50,50
time = 130

[State 4050, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 4050, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 4050, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 7, 3
volume = 200

[State 4050, 2]
type = VelSet
trigger1 = Time >= 0
x = 0
y = 0

[State 4050, 2.5]
type = VarAdd
trigger1 = Time = 0
v = 15
value = -1

[State 4050, 3]
type = AfterImage
trigger1 = Time = 1
time = 15
length = 9
FrameGap = 3
trans = add1

[State 4050, 4]
type = HitDef
trigger1 = AnimElem = 3
attr = A, HA
animtype  = heavy
damage    = 55, 5
getpower = 0
givepower = 10
guardflag = MA
hitflag = MAF
pausetime = 0,18
sparkno = 2
sparkxy = -5,-20
hitsound   = S5,2
guardsound = 6,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5   
air.velocity = -5, 6
fall = 1
palfx.time = 30
palfx.add = 235,60,0
palfx.sinadd = 235,60,0,5
fall.recover = 0

[State 4050, 5]
type = Explod
trigger1 = movehit
anim = 1251
id = 1252
pos = 0,-20
postype = p2
ontop = 1
ownpal = 1
vel = .3,-4
accel = 0,.15
random = 60,60
removetime = 42
ignorehitpause = 1
scale = .5, .5

[State 4050, 5]
type = Explod
trigger1 = numexplod(1252) = 1
trigger1 = time >= 0
anim = 1251
id = 1253
pos = 0,-20
postype = p2
ontop = 1
ownpal = 1
vel = .3,-4
accel = 0,.15
random = 60,60
removetime = 42
ignorehitpause = 1
scale = .5, .5

[State 4050, 3]
type = Explod
trigger1 = Time = 7
trigger2 = Time = 41
triggerall = movehit
triggerall = numexplod(11111) = 0
anim = 11111
id = 11111
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = 1
ontop = 1
ownpal = 1
scale = 1,1
ignorehitpause = 1

[State 4050, 3]
type = Explod
trigger1 = Time = 10
trigger2 = Time = 45
triggerall = movehit
triggerall = numexplod(11112) = 0
anim = 11111
id = 11112
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = 1
ontop = 1
ownpal = 1
scale = 1,1.25
ignorehitpause = 1

[State 4050, 3]
type = Explod
trigger1 = Time = 13
trigger2 = Time = 49
triggerall = movehit
triggerall = numexplod(11113) = 0
anim = 11111
id = 11113
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
vfacing = -1
ontop = 1
ownpal = 1
scale = 1.25,1.25
ignorehitpause = 1

[State 4050, 3]
type = Explod
trigger1 = Time = 16
trigger2 = Time = 53
triggerall = movehit
triggerall = numexplod(11111) = 0
anim = 11111
id = 11111
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = .5,2
ignorehitpause = 1

[State 4050, 5]
type = ChangeState
trigger1 = AnimElem = 7
trigger1 = Var(15) > 0
value = 4050
ctrl = 0

[State 4050, 6]
type = ChangeState
trigger1 = AnimElem = 7
trigger1 = Var(15) = 0
value = 4060
ctrl = 0

[Statedef 4060]
type    = A
movetype= A
physics = A
ctrl = 0
anim = 4060

[State 4060, 2]
type = VelSet
trigger1 = Time < 36
y = 0

[State 4060, 1]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 6
value = 7, 3
volume = 200

[State 4060, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 7, 1

[State 4060, 4]
type = Projectile
trigger1 = AnimElem = 6
projid = 1250
projanim = 1250
projhitanim = 1251
projshadow = -1
projsprpriority = 5
projhits = 1
projmisstime = 1
projremove = 1
offset = 40, -30
velocity = 4, 5
remvelocity = 2, 0
accel = .1, -.35
attr = A, HP
damage    = 50,5
getpower  = 0
givepower = 60
hitflag = MAF
guardflag = MA
pausetime = 10,10
sparkno = 2
sparkxy = 0, 0
hitsound   = S7,4
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5   
fall = 1
airguard.velocity = -3.5   
air.type = High
air.velocity = -5,-3
fall.recover = 0
palfx.time = 30
palfx.add = 235,60,0
palfx.sinadd = 235,60,0,5

[State 4060, 5]
type = HitDef
trigger1 = AnimElem = 3
attr = A, HA
animtype  = heavy
damage    = 55, 5
getpower = 0
givepower = 10
guardflag = 
hitflag = MAF
pausetime = 0,1
sparkno = 2
sparkxy = -5,-20
hitsound   = S5,2
guardsound = 6,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8    
air.velocity = -8, -9
fall = 1
palfx.time = 30
palfx.add = 235,60,0
palfx.sinadd = 235,60,0,5
fall.recover = 0

[State 4060, 5]
type = Explod
trigger1 = movehit
anim = 1251
id = 1254
pos = 0,-20
postype = p2
ontop = 1
ownpal = 1
vel = .3,-4
accel = 0,.15
random = 60,60
removetime = 70
ignorehitpause = 1

[State 4060, 5]
type = Explod
trigger1 = numexplod(1254) = 1
trigger1 = time >= 0
anim = 1251
id = 1255
pos = 0,-20
postype = p2
ontop = 1
ownpal = 1
vel = .3,-4
accel = 0,.15
random = 60,60
removetime = 70
ignorehitpause = 1

[State 4060, 3]
type = Explod
trigger1 = Time = 7
trigger2 = Time = 41
triggerall = movehit
triggerall = numexplod(11111) = 0
anim = 11111
id = 11111
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = 1
ontop = 1
ownpal = 1
scale = 1,1
ignorehitpause = 1

[State 4060, 3]
type = Explod
trigger1 = Time = 10
trigger2 = Time = 45
triggerall = movehit
triggerall = numexplod(11112) = 0
anim = 11111
id = 11112
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = 1
ontop = 1
ownpal = 1
scale = 1,1.25
ignorehitpause = 1

[State 4060, 3]
type = Explod
trigger1 = Time = 13
trigger2 = Time = 49
triggerall = movehit
triggerall = numexplod(11113) = 0
anim = 11111
id = 11113
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
vfacing = -1
ontop = 1
ownpal = 1
scale = 1.25,1.25
ignorehitpause = 1

[State 4060, 3]
type = Explod
trigger1 = Time = 16
trigger2 = Time = 53
triggerall = movehit
triggerall = numexplod(11111) = 0
anim = 11111
id = 11111
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = .5,2
ignorehitpause = 1

[State 4060, 7.5]
type = VarSet
trigger1 = AnimTime = 0
v = 11
value = 0

[State 4060, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; WAZA#2:Flashback_Flash_Blast
[Statedef 4100]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 4100

[State 4100, Super A]
type = SuperPause
trigger1 = Time = 0
pos = 45, -45
anim = 101

[State 4100, Super B]
type = PlaySnd
trigger1 = Time = 0
value = 7, 11

[State 4100, Super C]
type = PowerAdd
trigger1 = Time = 0
value = -1000

[State 4100, Super D]
type = AfterImage
trigger1 = AnimElem = 1
time = 2

[State 4100, Super E]
type = AfterImage
trigger1 = AnimElem = 1
Time = 44

[State 4100, Super F]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 12

[State 4100]
type = Explod
trigger1 = time = 0
anim = 22222
id = 22222
pos = -320,0
postype = right
sprpriority = -2
supermove = 1
removetime = 30
bindtime = 30

[State 4100, 1]
type = VelSet
trigger1 = Time <= 40
x = 6

[State 4100, 1.5]
type = PlaySnd
trigger1 = TimeMod = 29, 1
value = 8, 3

[State 4100, 2]
type = PlaySnd
trigger1 = Time = 2
trigger2 = Time = 32
trigger3 = Time = 64
value = 8, 3

[State 4100, 5]
type = ChangeState
trigger1 = movehit
value = 4150
ctrl = 0

[State 4100, 6]
type = ChangeState
trigger1 = moveguarded
value = 4190
ctrl = 1

[State 4100, 7]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = S, HA
animtype  = Medium
damage    = 0
getpower = 0
givepower = 10
guardflag = MA
hitflag = MAF
pausetime = 0,0
sparkno = 2
sparkxy = -10,-55
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5   
air.velocity = -5, 0
fall.recover = 0

[State 4100, 8]
type = ChangeState
trigger1 = Time >= 50
value = 1520
ctrl = 0

[Statedef 4150]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
anim = 4150

[State 4150, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 4150]
type = BGPalFX
trigger1 = Time = 0
mul = 50,50,50
time = 150

[State 4150, 1]
type = TargetBind
trigger1 = Time = 0
pos = 0,0
time = 30

[State 4150, 2]
type = AfterImage
trigger1 = Time = 1
time = 38
length = 18
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 4150, 3]
type = VelSet
trigger1 = AnimElem = 1
x = 20

[State 4150, 3]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
trigger8 = AnimElem = 17
trigger9 = AnimElem = 19
trigger10 = AnimElem = 21
trigger11 = AnimElem = 23
trigger12 = AnimElem = 25
value = 9, 1

[State 4150, 4]
type = VelSet
trigger1 = AnimElem = 3
trigger2 = AnimElem = 5
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
trigger5 = AnimElem = 11
trigger6 = AnimElem = 13
trigger7 = AnimElem = 15
trigger8 = AnimElem = 17
trigger9 = AnimElem = 19
trigger10 = AnimElem = 21
trigger11 = AnimElem = 23
trigger12 = AnimElem = 25
x = 50

[State 4150, 5]
type = VelSet
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
trigger11 = AnimElem = 22
trigger12 = AnimElem = 24
x = -50

[State 4150, 6]
type = VelSet
trigger1 = AnimElem = 26
x = -10

[State 4150, 7]
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
trigger11 = AnimElem = 22
trigger12 = AnimElem = 24
attr = S, HA
animtype  = heavy
damage    = 28, 5
getpower = 0
givepower = 10
guardflag = 
hitflag = MAF
pausetime = 0,70
sparkno = 2
sparkxy = -10,-40
hitsound   = S5,1
guardsound = 6,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 1, -12     
air.velocity = 1, -12
fall = 1
fall.recover = 0

[State 4150, 8]
type = ChangeState
trigger1 = AnimTime= 0
value = 4160
ctrl = 0

; BRAKE!
[Statedef 4160]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
anim = 1520
VelSet = 10,0,0

[State 4160, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 4160, 3]
type = PlaySnd
trigger1 = Time = 3
value = 9, 5

[State 4160, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 4170
ctrl = 1

; WAIT!
[Statedef 4170]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
anim = 11

[State 4170, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 4170, 3]
type = Explod
trigger1 = Time = 15
trigger2 = Time = 45
trigger3 = Time = 55
trigger4 = Time = 65
anim = 11111
id = 11111
postype = p2
pos = 0,-60
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = 1,1
ignorehitpause = 1

[State 4170, 3]
type = Explod
trigger1 = Time = 25
trigger2 = Time = 50
trigger3 = Time = 60
trigger4 = Time = 70
anim = 11111
id = 11111
postype = p2
pos = 0,-60
sprpriority = 5
bindtime = 10
facing = 1
ontop = 1
ownpal = 1
scale = .8,1.25
ignorehitpause = 1

[State 4170, 3]
type = Explod
trigger1 = Time = 35
trigger2 = Time = 75
anim = 11111
id = 11111
postype = p2
pos = 0,-60
sprpriority = 5
bindtime = 10
facing = 1
ontop = 1
ownpal = 1
scale = .5,5
ignorehitpause = 1

[State 4170, 2]
type = PlaySnd
trigger1 = Time = 15
trigger2 = Time = 45
trigger3 = Time = 55
trigger4 = Time = 65
trigger5 = Time = 35
value = 5, 1

[State 4170, 3]
type = PlaySnd
trigger1 = Time = 25
trigger2 = Time = 50
trigger3 = Time = 60
trigger4 = Time = 70
trigger5 = Time = 75
value = 5, 2

[State 4170, 3.5]
type = VarSet
trigger1 = Time = 125
v = 11
value = 0

[State 4170, 4]
type = ChangeState
trigger1 = Time = 125
value = 11
ctrl = 1

; Guarded
[Statedef 4190]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 0
ctrl = 0
velset = -4,-7,0
anim = 4000

[State 4190, 1]
type = ChangeState
trigger1 = Time = 40
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; WAZA#3:Hyper_Flashback_Flash_Blast
[Statedef 4200]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 4100

[State 4200, Super A]
type = SuperPause
trigger1 = Time = 0
pos = 45, -45
anim = 101

[State 4200, Super B]
type = PlaySnd
trigger1 = Time = 0
value = 7, 11

[State 4200, Super C]
type = PowerAdd
trigger1 = Time = 0
value = -2000

[State 4200, Super D]
type = AfterImage
trigger1 = AnimElem = 1
time = 2

[State 4200, Super E]
type = AfterImage
trigger1 = AnimElem = 1
Time = 44

[State 4200, Super F]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 12

[State 4200]
type = Explod
trigger1 = time = 0
anim = 22222
id = 22222
pos = -320,0
postype = right
sprpriority = -2
supermove = 1
removetime = 30
bindtime = 30

[State 4200, 1]
type = VelSet
trigger1 = Time <= 40
x = 6

[State 4200, 1.5]
type = PlaySnd
trigger1 = TimeMod = 29, 1
value = 8, 3

[State 4200, 2]
type = PlaySnd
trigger1 = Time = 2
trigger2 = Time = 32
trigger3 = Time = 64
value = 8, 3

[State 4200, 5]
type = ChangeState
trigger1 = movehit
value = 4250
ctrl = 0

[State 4200, 6]
type = ChangeState
trigger1 = moveguarded
value = 4190
ctrl = 1

[State 4200, 7]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = S, HA
animtype  = Medium
damage    = 0
getpower = 0
givepower = 10
guardflag = MA
hitflag = MAF
pausetime = 0,0
sparkno = 2
sparkxy = -10,-55
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0   
air.velocity = 0, 0
fall.recover = 0
numhits = 0

[State 4200, 8]
type = ChangeState
trigger1 = Time >= 50
value = 1520
ctrl = 0

[Statedef 4250]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
anim = 4250

[State 4250, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 4250, 1]
type = Playerpush
trigger1 = Time >= 0
value = 0

[State 4250, 2]
type = AfterImage
trigger1 = Time = 1
time = 38
length = 18
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 4250, 3]
type = VelSet
trigger1 = Time = 0
x = 40

[State 4250, 3]
type = PlaySnd
trigger1 = Time = 0
value = 9, 9
volume = 255

[State 4250, 7]
type = HitDef
trigger1 = AnimElem = 1
attr = S, HA
animtype  = heavy
damage    = 0, 0
getpower = 0
givepower = 10
guardflag = 
hitflag = MAF
pausetime = 0,600
sparkno = 2
sparkxy = -10,-40
hitsound   = S5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0    
air.velocity = 0, 0
fall = 0
fall.recover = 0
numhits = 0
p2stateno = 4290

[State 4250]
type = Explod
trigger1 = Time = 0
anim = 33333
id = 33333
pos = -320,0
postype = right
removetime = 128
bindtime = 128
ontop = 1

[State 4250, 8]
type = ChangeState
trigger1 = Vel X <= 0
value = 4270
ctrl = 0

; WAIT!
[Statedef 4270]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
anim = 4251

[State 4270]
type = Explod
trigger1 = Time = 0
anim = 33334
id = 33334
pos = -320,0
postype = right
removetime = 525
bindtime = 525
under = 1

[State 4270]
type = Explod
trigger1 = Time = 150
anim = 33335
id = 33335
pos = -320,0
postype = right
removetime = 320
bindtime = 320
ontop = 1

[State 4270]
type = Explod
trigger1 = Time = 120
trigger2 = Time = 150
trigger3 = Time = 186
trigger4 = Time = 185
trigger5 = Time = 190
trigger6 = Time = 205
trigger7 = Time = 237
trigger8 = Time = 255
trigger9 = Time = 310
trigger10 = Time = 320
trigger11 = Time = 324
trigger12 = Time = 370
trigger13 = Time = 434
trigger14 = Time = 474
trigger15 = Time = 478
anim = 33337
id = 33336
pos = -160,-30
postype = right
removetime = 455
velocity = -.3, 1
random = 320, 0
ontop = 1

[State 4270]
type = Explod
trigger1 = Time = 130
trigger2 = Time = 156
trigger3 = Time = 186
trigger4 = Time = 191
trigger5 = Time = 197
trigger6 = Time = 207
trigger7 = Time = 220
trigger8 = Time = 260
trigger9 = Time = 280
trigger10 = Time = 300
trigger11 = Time = 320
trigger12 = Time = 350
trigger13 = Time = 380
trigger14 = Time = 444
trigger15 = Time = 480
anim = 33337
id = 33337
pos = -160,-30
postype = right
removetime = 455
velocity = -.1, .6
random = 320, 0
scale = .75, .75
ontop = 1

[State 4270, 1]
type = Projectile
trigger1 = Time = 480
projid = 1255
projanim = 1255
projhitanim = 1255
projshadow = -1
offset = 0, -20
postype = p2
velocity = 0, 0
remvelocity = 0, 0
accel = 0, 0
attr = S, HP
damage    = 400,5
getpower  = 0
givepower = 100
hitflag = MAF
guardflag = 
pausetime = 0,38
sparkno = 2
sparkxy = -10, -60
hitsound   = S7,4
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -1, -8   
fall = 1
airguard.velocity = -3.5   
air.type = Low
air.velocity = -1,-8
fall.recover = 0

[State 4270, 1]
type = PlaySnd
trigger1 = Time = 425
value = 7, 11

[State 4270, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 4270, 3]
type = Explod
trigger1 = Time = 475
trigger2 = Time = 485
trigger3 = Time = 495
trigger4 = Time = 505
anim = 11111
id = 11111
postype = p2
pos = 0,-60
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = 1,1
ignorehitpause = 1

[State 4270, 3]
type = Explod
trigger1 = Time = 480
trigger2 = Time = 490
trigger3 = Time = 500
trigger4 = Time = 510
anim = 11111
id = 11111
postype = p2
pos = 0,-60
sprpriority = 5
bindtime = 10
facing = 1
ontop = 1
ownpal = 1
scale = .8,1.25
ignorehitpause = 1

[State 4270, 3]
type = Explod
trigger1 = Time = 470
trigger2 = Time = 515
anim = 11111
id = 11111
postype = p2
pos = 0,-60
sprpriority = 5
bindtime = 10
facing = 1
ontop = 1
ownpal = 1
scale = .5,5
ignorehitpause = 1

[State 4270, 2]
type = PlaySnd
trigger1 = Time = 470
value = 9, 10
volume = 255

[State 4270, 2]
type = PlaySnd
trigger1 = Time = 470
trigger2 = Time = 480
trigger3 = Time = 490
trigger4 = Time = 500
trigger5 = Time = 510
value = 5, 1

[State 4270, 3]
type = PlaySnd
trigger1 = Time = 475
trigger2 = Time = 485
trigger3 = Time = 495
trigger4 = Time = 505
trigger5 = Time = 515
value = 5, 2

[State 4270, 4]
type = ChangeState
trigger1 = Time = 555
value = 11
ctrl = 1

;HIT_BY
[Statedef 4290]
type    = S
movetype= H
physics = N
velset = 0,0,0

[State 4290, 1]
type = ChangeAnim2
Trigger1 = time = 0
value = 4290

[State 4290, 1]
type = NotHitBy
trigger1 = Time < 490
value = SCA
time = 1

[State 6350, 2]
type = selfstate
trigger1 = Time = 490
value = 5000
ctrl = 0

;---------------------------------------------------------------------------
; OLD_WAZA:Super_Combo!
[Statedef 4500]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 10,0,0
anim = 4400

[State 4500, Super A]
type = SuperPause
trigger1 = Time = 0
pos = -25, -45
anim = 100

[State 4500, Super B]
type = PlaySnd
trigger1 = Time = 0
value = 7, 11

[State 4500, Super C]
type = PowerAdd
trigger1 = Time = 0
value = -1000

[State 4500, Super D]
type = AfterImage
trigger1 = AnimElem = 1
time = 2

[State 4500, Super E]
type = AfterImage
trigger1 = AnimElem = 1
Time = 44

[State 4500, Super F]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 12

[State 4500, 1]
type = Explod
trigger1 = time = 0
anim = 22222
id = 22222
pos = -320,0
postype = right
sprpriority = -2
supermove = 1
removetime = 30
bindtime = 30

[State 4500, 2]
type = VarSet
trigger1 = Time = 0
v = 18
value = 4

[State 4500, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 4510
ctrl = 1

; Super_Combo_Strike
[Statedef 4510]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 4410

[State 4510, 1]
type = VelSet
trigger1 = Time > 0
x = 4

[State 4510, 2]
type = VarAdd
trigger1 = Time = 0
v = 18
value = -1

[State 4510, 2.5]
type = PlaySnd
trigger1 = AnimElem = 2
;trigger2 = AnimElem = 4
;trigger3 = AnimElem = 6
trigger2 = AnimElem = 8
;trigger5 = AnimElem = 10
value = 9, 1

[State 4510, 3]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
trigger5 = AnimElem = 10
attr = S, HA
animtype  = Heavy
damage    = 18,1
getpower = 0
givepower = 10
hitflag = MAF
guardflag = MA
pausetime = 0,1
sparkno = 2
sparkxy = -10,-64
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2    
air.velocity = -2, -1
fall = 1
fall.recover = 0

[State 4510, 3]
type = Explod
trigger1 = Time = 3
trigger2 = Time = 19
triggerall = movehit
triggerall = numexplod(11111) = 0
anim = 11111
id = 11111
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = 1
ontop = 1
ownpal = 1
scale = 1,1
ignorehitpause = 1

[State 4510, 3]
type = Explod
trigger1 = Time = 7
triggerall = movehit
triggerall = numexplod(11112) = 0
anim = 11111
id = 11112
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = 1
ontop = 1
ownpal = 1
scale = 1,1.25
ignorehitpause = 1

[State 4510, 3]
type = Explod
trigger1 = Time = 11
triggerall = movehit
triggerall = numexplod(11113) = 0
anim = 11111
id = 11113
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
vfacing = -1
ontop = 1
ownpal = 1
scale = 1.25,1.25
ignorehitpause = 1

[State 4510, 3]
type = Explod
trigger1 = Time = 15
triggerall = movehit
triggerall = numexplod(11111) = 0
anim = 11111
id = 11111
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = .5,2
ignorehitpause = 1

[State 4510, 5]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Var(18) > 0
value = 4510
ctrl = 1

[State 4510, 6]
type = VarSet
trigger1 = AnimTime = 0
trigger1 = Var(18) = 0
v = 11
value = 0

[State 4510, 7]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = Var(18) = 0
value = 1600
ctrl = 1


