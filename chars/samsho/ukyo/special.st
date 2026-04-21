;---------------------------------------------------------------------------
; Haze_Hack_Strong
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 10,0,0
anim = 210

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 9,6

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 9, 2

[State 1000, 1.5]
type = AfterImage
trigger1 = Time = 1
time = 18
length = 18
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 1000, 2]
type = HitDef
trigger1 = AnimElem = 7
attr = S, SA
animtype  = Medium
damage    = 50,5
guardflag = MA
hitflag = MAF
pausetime = 0,10
sparkno = 0
sparkxy = -10,-64
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5   
air.velocity = -3, 0

[State 1000, 3]
type = Explod
trigger1 = Time = 8
trigger1 = movehit
trigger1 = numexplod(11111) = 0
anim = 11111
id = 11111
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = .75,.75
ignorehitpause = 1

[State 1000, 3]
type = ChangeState
trigger1 = AnimElem = 10
value = 1001
ctrl = 0

[Statedef 1001]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 10,0,0
ctrl = 0
anim = 230

[State 1001, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 9, 7

[State 1001, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 9, 2

[State 1001, 1.5]
type = AfterImage
trigger1 = Time = 1
time = 18
length = 18
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 1001, 2]
type = HitDef
trigger1 = AnimElem = 7
attr = S, SA
animtype  = Heavy
damage    = 50,5
guardflag = MA
hitflag = MAF
pausetime = 10,10
sparkno = 2
sparkxy = -10,-60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -8   
air.velocity = -3, -6

[State 1001, 3]
type = Explod
trigger1 = Time = 21
trigger1 = movehit
trigger1 = numexplod(11111) = 0
anim = 11111
id = 11111
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = 1,1.2
ignorehitpause = 1

[State 1001, 3]
type = ChangeState
trigger1 = AnimElem = 12
value = 1002
ctrl = 0

[Statedef 1002]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 10,0,0
ctrl = 0
anim = 220

[State 1002, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 9, 8

[State 1002, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 9, 1

[State 1002, 1.5]
type = AfterImage
trigger1 = Time = 1
time = 18
length = 18
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 1002, 2]
type = HitDef
trigger1 = AnimElem = 7
attr = S, SA
animtype  = Heavy
damage    = 50,5
guardflag = MA
hitflag = MAF
pausetime = 20,20
sparkno = 2
sparkxy = -10,-60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5    
air.velocity = -3, -6
fall = 1

[State 1002, 3]
type = Explod
trigger1 = Time = 15
trigger1 = movehit
trigger1 = numexplod(11111) = 0
anim = 11111
id = 11111
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = 1
ontop = 1
ownpal = 1
scale = 1,1.25
ignorehitpause = 1

[State 1002, 3]
type = Explod
trigger1 = Time = 15
trigger1 = movehit
trigger1 = numexplod(11112) = 0
anim = 11111
id = 11112
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = 1,.75
ignorehitpause = 1

[State 1002, 3]
type = Explod
trigger1 = Time = 15
trigger1 = movehit
trigger1 = numexplod(11113) = 0
anim = 11111
id = 11113
postype = p2
pos = -10,-50
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = .5,5
ignorehitpause = 1

[State 1002, 3]
type = PlaySnd
trigger1 = AnimTime = 0
value = 8, 2

[State 1002, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Haze_Hack_Medium
[Statedef 1050]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 18,0,0
anim = 230

[State 1050, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 7, 0

[State 1050, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 9, 2

[State 1050, 1]
type = PlaySnd
trigger1 = AnimElem = 13
value = 9, 1

[State 1050, 1.5]
type = AfterImage
trigger1 = Time = 1
time = 18
length = 18
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 1050, 1.5]
type = VelSet
trigger1 = AnimElem = 8
x = 10

[State 1050, 1.5]
type = AfterImage
trigger1 = AnimElem = 7
time = 18
length = 18
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 1050, 2]
type = HitDef
trigger1 = AnimElem = 7
attr = S, SA
animtype  = Heavy
damage    = 50,5
guardflag = MA
hitflag = MAF
pausetime = 10,5
sparkno = 2
sparkxy = -10,-60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -2    
air.velocity = -2, -6

[State 1050, 2]
type = HitDef
trigger1 = AnimElem = 14
attr = S, SA
animtype  = Heavy
damage    = 50,5
guardflag = MA
hitflag = MAF
pausetime = 10,10
sparkno = 2
sparkxy = -10,-90
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -2   
air.velocity = -2, 8
fall = 1

[State 1050, 3]
type = Explod
trigger1 = Time = 21
trigger1 = movehit
trigger1 = numexplod(11111) = 0
anim = 11111
id = 11111
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = 1,1.25
ignorehitpause = 1

[State 1050, 3]
type = Explod
trigger1 = Time = 31
trigger1 = movehit
trigger1 = numexplod(11112) = 0
anim = 11111
id = 11112
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
vfacing = -1
ontop = 1
ownpal = 1
scale = 1,1.25
ignorehitpause = 1

[State 1050, 3]
type = PlaySnd
trigger1 = AnimTime = 0
value = 8, 2

[State 1050, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Haze_Hack_Light
[Statedef 1080]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 20,0,0
anim = 210

[State 1080, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 7, 0

[State 1080, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 9, 1

[State 1080, 1.5]
type = AfterImage
trigger1 = Time = 1
time = 18
length = 18
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 1080, 2]
type = HitDef
trigger1 = AnimElem = 7
attr = S, SA
animtype  = Medium
damage    = 75, 5
guardflag = MA
hitflag = MAF
pausetime = 0,10
sparkno = 0
sparkxy = -10,-64
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5    
air.velocity = -3, -2
fall = 1

[State 1080, 3]
type = Explod
trigger1 = Time = 8
trigger1 = movehit
trigger1 = numexplod(11111) = 0
anim = 11111
id = 11111
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = 1,1.25
ignorehitpause = 1

[State 1080, 3]
type = PlaySnd
trigger1 = AnimTime = 0
value = 8, 2

[State 1080, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Snowfall_Slash_Strong
[Statedef 1100]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 1100
facep2 = 1

[State 1100]
type = VarRandom
trigger1 = Time = 0
v = 20

[State 1100, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 9

[State 1100, 1]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 10
trigger3 = AnimElem = 14
trigger4 = AnimElem = 18
trigger5 = AnimElem = 22
trigger6 = AnimElem = 26
trigger7 = AnimElem = 30
trigger8 = AnimElem = 34
value = 9, 1

[State 1100, 3]
type = Explod
trigger1 = Time = 25
trigger2 = Time = 41
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
scale = 1,1
ignorehitpause = 1

[State 1100, 3]
type = Explod
trigger1 = Time = 29
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

[State 1100, 3]
type = Explod
trigger1 = Time = 33
trigger2 = Time = 49
triggerall = movehit
triggerall = numexplod(11113) = 0
anim = 11111
id = 11113
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = 1.25,1.25
ignorehitpause = 1

[State 1100, 3]
type = Explod
trigger1 = Time = 37
trigger2 = Time = 53
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
scale = .5,5
ignorehitpause = 1

[State 1100, 1.5]
type = Projectile
trigger1 = AnimElem = 3
trigger1 = Var(20) > 100
projid = 1101
projanim = 1101
projshadow = -1
offset = 36, -50
velocity = 1.5, -10
remvelocity = 1.5, 6
accel = 0, .4
attr = S, SP

[State 1100, 1.5]
type = Projectile
trigger1 = AnimElem = 3
trigger1 = Var(20) <= 100
projid = 1102
projanim = 1102
projshadow = -1
offset = 36, -50
velocity = 1.5, -10
remvelocity = 1.5, 6
accel = 0, .4
attr = S, SP

[State 1100, 2]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 14
trigger3 = AnimElem = 22
trigger4 = AnimElem = 30
attr = S, SA
animtype  = heavy
damage    = 10, 5
guardflag = MA
hitflag = MAF
pausetime = 4,8
sparkno = 2
sparkxy = -5,-20
hitsound   = S5,2
guardsound = 6,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1    
air.velocity = -1, -1
fall = 1

[State 1100, 2]
type = HitDef
trigger1 = AnimElem = 8
trigger2 = AnimElem = 16
trigger3 = AnimElem = 24
trigger4 = AnimElem = 32
attr = S, SA
animtype  = heavy
damage    = 10, 5
guardflag = MA
hitflag = MAF
pausetime = 4,8
sparkno = 2
sparkxy = -10,-40
hitsound   = S5,2
guardsound = 6,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1    
air.velocity = -1, -1
fall = 1

[State 1100, 2]
type = HitDef
trigger1 = AnimElem = 10
trigger2 = AnimElem = 18
trigger3 = AnimElem = 26
trigger4 = AnimElem = 34
attr = S, SA
animtype  = heavy
damage    = 10, 5
guardflag = MA
hitflag = MAF
pausetime = 4,8
sparkno = 2
sparkxy = -10,-60
hitsound   = S5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1    
air.velocity = -1, -1
fall = 1

[State 1100, 2]
type = HitDef
trigger1 = AnimElem = 12
trigger2 = AnimElem = 20
trigger3 = AnimElem = 28
trigger4 = AnimElem = 36
attr = S, SA
animtype  = heavy
damage    = 10, 5
guardflag = MA
hitflag = MAF
pausetime = 4,8
sparkno = 2
sparkxy = -10,-80
hitsound   = S5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5    
air.velocity = -3, -4
fall = 1

[State 1100, 3]
type = PlaySnd
trigger1 = AnimTime = 0
value = 8, 2

[State 1100, 4]
type = ChangeState
trigger1 = AnimElem = 38
value = 1105
ctrl = 1

[Statedef 1105]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 220

[State 1105, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 9, 1

[State 1105, 2]
type = HitDef
trigger1 = AnimElem = 7
attr = S, NA
animtype  = Medium
damage    = 20
guardflag = MA
hitflag = MAF
pausetime = 8,8
sparkno = 2
sparkxy = -10,-60
hitsound   = S5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5   
air.velocity = -3, -6

[State 1105, 3]
type = Explod
trigger1 = Time = 15
trigger1 = Random > 499
trigger1 = movehit
trigger1 = numexplod(11111) = 0
anim = 11111
id = 11111
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = 1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 1105, 3]
type = Explod
trigger1 = Time = 15
trigger1 = movehit
trigger1 = numexplod(11111) = 0
anim = 11111
id = 11111
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = .5,.5
ignorehitpause = 1

[State 1105, 3]
type = ChangeAnim
trigger1 = AnimElem = 15
trigger1 = Anim = 220
trigger1 = p2life <= 0
value = 187
ctrl = 1

[State 1105, 4]
type = PlaySnd
trigger1 = AnimTime = 0
value = 8, 2

[State 1105, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Snowfall_Slash_Medium
[Statedef 1150]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 20
ctrl = 0
velset = 0,0,0
anim = 1150
facep2 = 1

[State 1150, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 9

[State 1150, 1]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 10
trigger3 = AnimElem = 14
trigger4 = AnimElem = 18
trigger5 = AnimElem = 22
trigger6 = AnimElem = 26
value = 9, 1

[State 1150, 1.5]
type = Projectile
trigger1 = AnimElem = 3
projid = 1101
projanim = 1101
projshadow = -1
offset = 36, -50
velocity = 2, -7
remvelocity = 1.5, 6
accel = 0, .4
attr = S, SP

[State 1150, 2]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 14
trigger3 = AnimElem = 22
attr = S, SA
animtype  = heavy
damage    = 10, 5
guardflag = MA
hitflag = MAF
pausetime = 4,8
sparkno = 2
sparkxy = -10,-20
hitsound   = S5,2
guardsound = 6,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1    
air.velocity = -1, -1
fall = 1

[State 1150, 2]
type = HitDef
trigger1 = AnimElem = 8
trigger2 = AnimElem = 16
trigger3 = AnimElem = 24
attr = S, SA
animtype  = heavy
damage    = 10, 5
guardflag = MA
hitflag = MAF
pausetime = 4,8
sparkno = 2
sparkxy = -10,-40
hitsound   = S5,2
guardsound = 6,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1    
air.velocity = -1, -1
fall = 1

[State 1150, 2]
type = HitDef
trigger1 = AnimElem = 10
trigger2 = AnimElem = 18
trigger3 = AnimElem = 26
attr = S, SA
animtype  = heavy
damage    = 10, 5
guardflag = MA
hitflag = MAF
pausetime = 4,8
sparkno = 2
sparkxy = -10,-60
hitsound   = S5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1    
air.velocity = -1, -1
fall = 1

[State 1150, 2]
type = HitDef
trigger1 = AnimElem = 12
trigger2 = AnimElem = 20
trigger3 = AnimElem = 28
attr = S, SA
animtype  = heavy
damage    = 10, 5
guardflag = MA
hitflag = MAF
pausetime = 4,8
sparkno = 2
sparkxy = -10,-80
hitsound   = S5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5    
air.velocity = -3, -4
fall = 1

[State 1150, 3]
type = Explod
trigger1 = Time = 25
trigger2 = Time = 41
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
scale = 1,1
ignorehitpause = 1

[State 1150, 3]
type = Explod
trigger1 = Time = 29
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

[State 1150, 3]
type = Explod
trigger1 = Time = 33
trigger2 = Time = 49
triggerall = movehit
triggerall = numexplod(11113) = 0
anim = 11111
id = 11113
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = 1.25,1.25
ignorehitpause = 1

[State 1150, 3]
type = Explod
trigger1 = Time = 37
trigger2 = Time = 53
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
scale = .5,2
ignorehitpause = 1

[State 1150, 3]
type = PlaySnd
trigger1 = AnimTime = 0
value = 8, 2

[State 1150, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Snowfall_Slash_Light
[Statedef 1180]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 10
ctrl = 0
velset = 0,0,0
anim = 1180
facep2 = 1

[State 1180, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 9

[State 1180, 1]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 10
trigger3 = AnimElem = 14
value = 9, 1

[State 1180, 1.5]
type = Projectile
trigger1 = AnimElem = 3
projid = 1101
projanim = 1101
projshadow = -1
projremovetime = 20
offset = 36, -50
velocity = 2.5, -6
remvelocity = 2.5, 6
accel = 0, .4
attr = S, SP

[State 1180, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA
animtype  = heavy
damage    = 25, 5
guardflag = MA
hitflag = MAF
pausetime = 3,5
sparkno = 2
sparkxy = -10,-20
hitsound   = S5,2
guardsound = 6,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1    
air.velocity = -1, -1

[State 1180, 2]
type = HitDef
trigger1 = AnimElem = 8
attr = S, SA
animtype  = heavy
damage    = 25, 5
guardflag = MA
hitflag = MAF
pausetime = 3,5
sparkno = 2
sparkxy = -10,-40
hitsound   = S5,2
guardsound = 6,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1    
air.velocity = -1, -1

[State 1180, 2]
type = HitDef
trigger1 = AnimElem = 10
attr = S, SA
animtype  = heavy
damage    = 25, 5
guardflag = MA
hitflag = MAF
pausetime = 3,5
sparkno = 2
sparkxy = -10,-60
hitsound   = S5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1    
air.velocity = -1, -1

[State 1180, 2]
type = HitDef
trigger1 = AnimElem = 12
attr = S, SA
animtype  = heavy
damage    = 25, 5
guardflag = MA
hitflag = MAF
pausetime = 3,5
sparkno = 2
sparkxy = -10,-80
hitsound   = S5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5    
air.velocity = -3, -4

[State 1180, 3]
type = Explod
trigger1 = Time = 25
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
scale = .7,1
ignorehitpause = 1

[State 1180, 3]
type = Explod
trigger1 = Time = 29
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
scale = 1,1
ignorehitpause = 1

[State 1180, 3]
type = Explod
trigger1 = Time = 33
triggerall = movehit
triggerall = numexplod(11113) = 0
anim = 11111
id = 11113
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = .25,.25
ignorehitpause = 1

[State 1180, 3]
type = Explod
trigger1 = Time = 37
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
scale = .5,.5
ignorehitpause = 1

[State 1180, 3]
type = PlaySnd
trigger1 = AnimTime = 0
value = 8, 2

[State 1180, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Swallow_Swipe_Slash
[Statedef 1200]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 30
ctrl = 0
anim = 1200

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 7, 1

[State 1200, 1.5]
type = VelSet
trigger1 = Time >= 0
trigger1 = movehit
trigger1 = power >= 3000
x = 0
y = 0

[State 1200, 2]
type = VelSet
trigger1 = Time = 0
trigger2 = Pos Y >= -6
trigger2 = Time < 36
y = 0

[State 1200, 3]
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

[State 1200, 5]
type = HitDef
trigger1 = power < 3000
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
attr = A, SA
animtype  = heavy
damage    = 40, 5
guardflag = MA
hitflag = MAF
pausetime = 2,2
sparkno = 2
sparkxy = -5,-20
hitsound   = S5,2
guardsound = 6,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5   
air.velocity = -3, -3
fall = 1
palfx.time = 30
palfx.add = 235,60,0
palfx.sinadd = 235,60,0,5

[State 1200, 5]
type = HitDef
trigger1 = power >= 3000
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
attr = A, SA
animtype  = heavy
damage    = 25, 5
guardflag = MA
hitflag = MAF
pausetime = 2,14
sparkno = 2
sparkxy = -5,-20
hitsound   = S5,2
guardsound = 6,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5   
air.velocity = -3, -3
fall = 1
palfx.time = 30
palfx.add = 235,60,0
palfx.sinadd = 235,60,0,5

[State 1200, 5]
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

[State 1200, 5]
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

[State 1200, 3]
type = Explod
trigger1 = Time = 7
trigger2 = Time = 10
trigger3 = Time = 13
trigger4 = Time = 16
triggerall = movehit
triggerall = numexplod(11111) = 0
anim = 11111
id = 11111
postype = p2
pos = -10,-70
sprpriority = 5
bindtime = 10
vfacing = -1
ontop = 1
ownpal = 1
scale = 1,1
ignorehitpause = 1

[State 1200, 6]
type = ChangeState
trigger1 = AnimElem = 8
trigger1 = movehit
trigger1 = power >= 3000
value = 1201
ctrl = 0

[State 1200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

[Statedef 1201]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 0
ctrl = 0
anim = 1200

[State 1201, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 7, 1

[State 1201, 2]
type = VelSet
trigger1 = Time < 27
x = 0
y = 0

[State 1201, 3]
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

[State 1201, 5]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
attr = A, SA
animtype  = heavy
damage    = 20, 5
guardflag = MA
hitflag = MAF
pausetime = 4,14
sparkno = 2
sparkxy = -5,-20
hitsound   = S5,2
guardsound = 6,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5   
air.velocity = -3, -3
fall = 1
palfx.time = 30
palfx.add = 235,60,0
palfx.sinadd = 235,60,0,5

[State 1201, 5]
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

[State 1201, 5]
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

[State 1201, 3]
type = Explod
trigger1 = Time = 7
trigger2 = Time = 10
trigger3 = Time = 13
trigger4 = Time = 16
triggerall = movehit
triggerall = numexplod(11111) = 0
anim = 11111
id = 11111
postype = p2
pos = -10,-70
sprpriority = 5
bindtime = 10
vfacing = -1
ontop = 1
ownpal = 1
scale = 1,1
ignorehitpause = 1

[State 1201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Swallow_Swipe_Bust
[Statedef 1250]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 30
ctrl = 0
anim = 1200

[State 1250, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 7, 1

[State 1250, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 7, 3

[State 1250, 2]
type = VelSet
trigger1 = Time = 0
trigger2 = Pos Y >= -6
trigger2 = Time < 36
y = 0

[State 1250, 3]
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

[State 1250, 4]
type = Projectile
trigger1 = AnimElem = 5
projid = 1250
projanim = 1250
projhitanim = 1251
projshadow = -1
projsprpriority = 5
offset = 40, -30
velocity = 4, 5
remvelocity = 2, 0
accel = .1, -.35
attr = S, SP
damage    = 85,5
getpower  = 50
givepower = 30
hitflag = MAF
guardflag = MA
pausetime = 0,10
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
air.velocity = -3,-3
fall.recover = 0
palfx.time = 30
palfx.add = 235,60,0
palfx.sinadd = 235,60,0,5

[State 1250, 5]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
attr = A, SA
animtype  = heavy
damage    = 10, 5
guardflag = MA
hitflag = MAF
pausetime = 2,16
sparkno = 2
sparkxy = -10,-20
hitsound   = S5,2
guardsound = 6,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5   
air.velocity = -3, -3
fall = 1
palfx.time = 30
palfx.add = 235,60,0
palfx.sinadd = 235,60,0,5

[State 1250, 5]
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

[State 1250, 5]
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

[State 1250, 3]
type = Explod
trigger1 = Time = 7
trigger2 = Time = 10
trigger3 = Time = 13
trigger4 = Time = 16
triggerall = movehit
triggerall = numexplod(11112) = 0
anim = 11111
id = 11112
postype = p2
pos = -10,-70
sprpriority = 5
bindtime = 10
vfacing = -1
ontop = 1
ownpal = 1
scale = 1,1
ignorehitpause = 1

[State 1250, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Solar_Blast
[Statedef 1300]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 1300

[State 1300, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 7, 3

; --- SOLAR ---
[State 1300, 3]
type = Explod
trigger1 = AnimElem = 4
anim = 22223
postype = p1
pos = -30,-60
sprpriority = 5
bindtime = 18

[State 1300, 4]
type = Projectile
trigger1 = AnimElem = 5
projid = 1250
projanim = 1250
projhitanim = 1251
projshadow = -1
projsprpriority = 5
offset = 40, -30
velocity = 6, 0
remvelocity = 2, 0
accel = .1, -.1
attr = S, SP
damage    = 115,5
getpower  = 50
givepower = 30
hitflag = MAF
guardflag = MA
pausetime = 8,12
sparkno = 2
sparkxy = 0, 0
hitsound   = S7,4
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -6   
fall = 1
airguard.velocity = -3.5   
air.type = High
air.velocity = -3,-6
palfx.time = 30
palfx.add = 235,60,0
palfx.sinadd = 235,60,0,5

[State 1300, 5]
type = PlaySnd
trigger1 = AnimTime = 0
value = 8, 2

[State 1300, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Solar_Blast_Follow_Up
[Statedef 1310]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 1300

[State 1310, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 7, 3

; --- SOLAR ---
[State 1310, 3]
type = Explod
trigger1 = AnimElem = 4
anim = 22223
postype = p1
pos = -30,-60
sprpriority = 5
bindtime = 18

[State 1310, 4]
type = Projectile
trigger1 = AnimElem = 5
projid = 1250
projanim = 1250
projhitanim = 1251
projshadow = -1
projsprpriority = 5
offset = 40, -30
velocity = 6, 0
remvelocity = 2, 0
accel = .1, -.1
attr = S, SP
damage    = 35,5
getpower  = 0
givepower = 30
hitflag = MAFD
guardflag = MA
pausetime = 8,12
sparkno = 2
sparkxy = 0, 0
hitsound   = S7,4
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -6   
fall = 1
airguard.velocity = -3.5   
air.type = High
air.velocity = -3,-6
palfx.time = 30
palfx.add = 235,60,0
palfx.sinadd = 235,60,0,5

[State 1310, 5]
type = PlaySnd
trigger1 = AnimTime = 0
value = 8, 2

[State 1310, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stance_Pull
[Statedef 1400]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 1400

[State 1400, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1410
ctrl = 1

; Stance_Wait
[Statedef 1410]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 1410

[State 1410, 1]
type = VarSet
trigger1 = Time = 0
v = 27
value = 10

[State 1410, 2]
type = VarAdd
trigger1 = Time = 30
trigger2 = Time = 60
trigger3 = Time = 90
v = 27
value = 8

[State 1410, 3] ;Blink white
type = PalFX
trigger1 = Time = 30
trigger2 = Time = 60
trigger3 = Time = 90
time = 3
add = 156,156,156

[State 1410, 4]
type = ChangeState
trigger1 = command != "pounce"
trigger1 = Time > 6
value = 1530; 1420
ctrl = 0

[State 1410, 5]
type = ChangeState
trigger1 = Time > 100
value = 1420
ctrl = 0

; Stance_Sheat
[Statedef 1420]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 1420

[State 1420, 2]
type = PlaySnd
trigger1 = AnimTime = 0
value = 8, 2

[State 1420, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Reversal
[Statedef 1430]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 1430

[State 1430, 1] ;Blink white
type = PalFX
trigger1 = AnimElem = 6
time = 4
add = 156,156,156

[State 1430, 2]
type = PlaySnd
trigger1 = AnimElem = 5
value = 9, 2

[State 1430, 3]
type = ReversalDef
trigger1 = AnimElem = 6
reversal.attr = SC, NA, SA
pausetime = 20,46
hitsound = S7,14
p1stateno = 1435
p2stateno = 5000

[State 1430, 4]
type = PlaySnd
trigger1 = AnimTime = 0
value = 8, 2

[State 1430, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1435]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 260

[State 1435, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 9, 5

[State 1435, 2]
type = VelSet
trigger1 = Time < 10
x = 10

[State 1435, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = C, NA
animtype  = Heavy
damage    = 60
guardflag = MA
hitflag = MAF
pausetime = 9,7
sparkno = 2
sparkxy = -10,-10
hitsound   = S5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -2, -5    
air.velocity = -2, -5
fall = 1
fall.recover = 0

[State 1435, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1440
ctrl = 0

[Statedef 1440]
type    = C
movetype= A
physics = C
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 435

[State 1440, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 9, 2

[State 1440, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 7, 7

[State 1440, 1.5]
type = VelSet
trigger1 = AnimElem = 3
x = 10

[State 1440, 1.5]
type = VelSet
trigger1 = AnimElem = 8
x = 10

[State 1440, 2]
type = AfterImage
trigger1 = AnimElem = 1
Time = 24

[State 1440, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = C, NA
animtype  = Heavy
damage    = 115
guardflag = MA
hitflag = MAF
pausetime = 10,10
sparkno = 2
sparkxy = -10,-44
hitsound   = S5,2
guardsound = 6,0
ground.type = Trip
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -8   
air.velocity = -3, 0
;fall = 0
fall.recover = 0

[State 1440, 3]
type = Explod
trigger1 = Time = 11
trigger1 = Random > 499
trigger1 = movehit
trigger1 = numexplod(11111) = 0
anim = 11111
id = 11111
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 1440, 3]
type = Explod
trigger1 = Time = 11
trigger1 = movehit
trigger1 = numexplod(11111) = 0
anim = 11111
id = 11111
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 30
facing = -1
ontop = 1
ownpal = 1
scale = .5,.5
ignorehitpause = 1

[State 1440, 3]
type = PlaySnd
trigger1 = AnimElem = 10
value = 8, 2

[State 1440, 4]
type = ChangeState
trigger1 = AnimElem = 7
value = 1445
ctrl = 0

[Statedef 1445]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 1300

[State 1445, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 7, 3

; --- SOLAR ---
[State 1445, 3]
type = Explod
trigger1 = AnimElem = 4
anim = 22223
postype = p1
pos = -30,-60
sprpriority = 5
bindtime = 18

[State 1445, 4]
type = Projectile
trigger1 = AnimElem = 5
projid = 1250
projanim = 1250
projhitanim = 1251
projshadow = -1
projsprpriority = 5
offset = 40, -30
velocity = 6, 0
remvelocity = 2, 0
accel = .1, -.1
attr = S, SP
damage    = 35,5
getpower  = 0
givepower = 30
hitflag = MAFD
guardflag = MA
pausetime = 8,12
sparkno = 2
sparkxy = 0, 0
hitsound   = S7,4
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -6   
fall = 1
airguard.velocity = -3.5   
air.type = High
air.velocity = -3,-6
palfx.time = 30
palfx.add = 235,60,0
palfx.sinadd = 235,60,0,5

[State 1445, 5]
type = PowerAdd
trigger1 = projhittime(1250) = 1
value = 2000

[State 1445, 6]
type = PlaySnd
trigger1 = AnimTime = 0
value = 8, 2

[State 1445, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Piercing_Moon_Pounce_Run
[Statedef 1500]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 1500

[State 1500, 2]
type = VelSet
trigger1 = Time <= 40
x = 6

[State 1500, 3]
type = PlaySnd
trigger1 = TimeMod = 29, 0
value = 8, 3

[State 1500, 4]
type = ChangeState
trigger1 = command != "pounce"
value = 1510
ctrl = 0

[State 1500, 5]
type = ChangeState
trigger1 = Time >= 50
value = 1520
ctrl = 0

; Piercing_Moon_Pounce_Strike!
[Statedef 1510]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
anim = 1510
velset = 20,0,0

[State 1510, 1]
type = ChangeState
trigger1 = P2BodyDist X > 65
value = 1520
ctrl = 0

[State 1510, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 1510, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 7, 7

[State 1510, 3]
type = PlaySnd
trigger1 = AnimElem = 6
value = 9, 2

[State 1510, 5]
type = EnvColor
trigger1 = movehit
persistent = 0
value = 255,0,0
ignorehitpause = 1
time = 4

[State 1510, 6]
type = HitDef
trigger1 = AnimElem = 7
attr = S, NA
animtype  = Heavy
damage    = 135
guardflag = MA
hitflag = MAF
pausetime = 8,70
guard.pausetime = 32,6
sparkno = 2
sparkxy = -10,-60
hitsound   = S5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 5    
air.velocity = 3, -6
fall = 1
fall.recover = 0

[State 1510, 3]
type = Explod
trigger1 = Time = 60
trigger1 = movehit
trigger1 = numexplod(11113) = 0
anim = 11113
id = 11113
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = -1
vfacing = -1
ontop = 1
ownpal = 1
scale = 1,1
ignorehitpause = 1

[State 1510, 3]
type = Explod
trigger1 = Time = 40
trigger1 = movehit
trigger1 = numexplod(11114) = 0
anim = 11113
id = 11114
postype = p2
pos = 10,-60
sprpriority = -5
bindtime = 10
facing = 1
vfacing = 1
ownpal = 1
scale = 1,1
ignorehitpause = 1

[State 1510, 8]
type = PlaySnd
trigger1 = movehit
trigger1 = Time = 40
value = 5, 1

[State 1510, 8]
type = PlaySnd
trigger1 = movehit
trigger1 = Time = 60
value = 5, 2

[State 1510, 8]
type = PlaySnd
trigger1 = AnimTime = 0
value = 8, 2

[State 1510, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Piercing_Moon_Pounce_Brake
[Statedef 1520]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
anim = 1520
VelSet = 10,0,0

[State 1520, 1]
type = PlaySnd
trigger1 = Time = 0
value = 8, 2

[State 1520, 2]
type = PlaySnd
trigger1 = Time = 3
value = 9, 5

[State 1520, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Piercing_Moon_Pounce_Run_New
[Statedef 1530]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 1500

[State 1530, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 1530, 2]
type = VelSet
trigger1 = Time >= 0
x = 8

[State 1530, 3]
type = PlaySnd
trigger1 = TimeMod = 29, 0
value = 8, 3

[State 1530, 4]
type = VarAdd
trigger1 = Time >= 0
v = 27
value = -1

[State 1530, 5]
type = ChangeState
trigger1 = movehit
value = 1510
ctrl = 0

[State 1530, 5]
type = ChangeState
trigger1 = moveguarded
value = 1520
ctrl = 1

[State 1530, 5]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
attr = S, HA
animtype  = Medium
damage    = 0
getpower = 0
givepower = 10
guardflag = MA
hitflag = MAF
pausetime = 0,20
sparkno = -1
sparkxy = -10,-55
hitsound   = -1
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 0   
air.velocity = 0, 0
fall.recover = 0

[State 1530, 6]
type = ChangeState
trigger1 = var(27) < 0
value = 1520
ctrl = 0

;---------------------------------------------------------------------------
; Ground_Stab_Jump
[Statedef 1600]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 30
ctrl = 0
velset = 5,-6,0
anim = 1600

[State 1600, 2]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y > -6
value = 1610
ctrl = 1

; Ground_Stab_Land
[Statedef 1610]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 1610

[State 1610, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1610, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1610, 3]
type = HitDef
trigger1 = p2stateno > 5000
trigger1 = p2stateno < 5150
trigger1 = AnimElem = 2
attr = S, SA
animtype  = Medium
damage    = 40,1
hitflag = MAFD
pausetime = 30,30
sparkno = 0
sparkxy = -10,-64
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1   
air.velocity = -1, 0

[State 1610, 3]
type = Explod
trigger1 = Time = 4
trigger1 = movehit
trigger1 = numexplod(11111) = 0
anim = 11111
id = 11111
postype = p2
pos = -10,0
sprpriority = 5
bindtime = 10
facing = 1
ontop = 1
ownpal = 1
scale = 1,1
ignorehitpause = 1

[State 1620, 4]
type = PlaySnd
trigger1 = AnimTime = 0
value = 8, 2

[State 1610, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Ground_Stab_quick
[Statedef 1650]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 30
ctrl = 0
velset = 2,-6,0
anim = 1600

[State 1650, 2]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y > -6
value = 1610
ctrl = 1

;---------------------------------------------------------------------------
; Crouch_Guard_Breaker
[Statedef 1700]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 1700

[State 1700, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 9, 2

[State 1700, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 7, 7

[State 1700, 1.5]
type = VelSet
trigger1 = Time < 15
y = -2

[State 1700, 1.5]
type = VelSet
trigger1 = AnimElem = 3
x = 1

[State 1700, 1.5]
type = VelSet
trigger1 = AnimElem = 8
x = 1

[State 1700, 2]
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

[State 1700, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
animtype  = Heavy
damage    = 75
guardflag = HA
hitflag = MAF
pausetime = 10,10
sparkno = 2
sparkxy = -10,-44
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -1   
air.velocity = -1, 5
fall = 1
fall.recover = 0

[State 1700, 3]
type = PlaySnd
trigger1 = AnimElem = 10
value = 8, 2

[State 1700, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; EVADE
[Statedef 290]
type = S
movetype = A
physics = S
anim = 290
velset = 0,0,0
ctrl = 0

[State 290, 1]
type = SprPriority
trigger1 = Time = 0
value = -1

[State 290, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 7, 6

[State 290, 3]
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

[State 290, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; PUSH!
[Statedef 900]
type = S
movetype = A
physics = S
anim = 900
velset = 0,0,0
ctrl = 0

[State 900, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 7, 6

[State 900, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NT
animtype  = Heavy
damage    = 0
guardflag = 
hitflag = MAF
pausetime = 8,41
sparkno = -1
hitsound   = -1
guardsound = 6,0
ground.type = high
ground.slidetime = 24
ground.hittime  = 24
ground.velocity = -7  
air.velocity =-7, 0
;fall = 1
fall.recover = 0
fall.damage = 70

[State 900, 2]
type = TargetBind
trigger1 = AnimElem = 1
pos = 30,0
time = 25

[State 900, 3]
type = TargetBind
trigger1 = AnimElem = 2
pos = 20,0
time = 25

[State 900, 4]
type = TargetBind
trigger1 = AnimElem = 3
pos = 10,0
time = 25

[State 900, 5]
type = TargetBind
trigger1 = AnimElem = 4
pos = 60,0
time = 6

[State 900, 6]
type = TargetBind
trigger1 = AnimElem = 5
pos = 70,0
time = 1

[State 900, 7]
type = CtrlSet
trigger1 = Time >= 35
value = 1

[State 900, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ROLL_FWD
[Statedef 7000]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 7000

[State 7000, 1]
type = VelSet
trigger1 = Time > 0
x = 4

[State 7000, 2]
type = AfterImage
trigger1 = AnimElem = 1
time = 8
length = 8
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 7000, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

; ROLL_BWD
[Statedef 7100]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 7000

[State 7100, 1]
type = VelSet
trigger1 = Time > 0
x = -4

[State 7100, 2]
type = AfterImage
trigger1 = AnimElem = 1
time = 8
length = 8
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 7100, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Snowfall_Slash_Fake
[Statedef 1101]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 1100
facep2 = 1

[State 1101]
type = VarRandom
trigger1 = Time = 0
v = 20

[State 1101, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 9

[State 1101, 3]
type = PlaySnd
trigger1 = AnimTime = 0
value = 8, 2

[State 1101, 4]
type = Projectile
trigger1 = AnimElem = 3
trigger1 = Var(20) > 100
projid = 1104
projanim = 1101
projshadow = -1
offset = 36, -50
velocity = 1.5, -12
remvelocity = 1.5, 6
accel = 0, .4
attr = S, SP

[State 1101, 5]
type = Projectile
trigger1 = AnimElem = 3
trigger1 = Var(20) <= 100
projid = 1104
projanim = 1102
projshadow = -1
offset = 36, -50
velocity = 1.5, -12
remvelocity = 1.5, 6
accel = 0, .4
attr = S, SP

[State 1101, 6]
type = ChangeState
trigger1 = AnimElem = 4
value = 0
ctrl = 1

