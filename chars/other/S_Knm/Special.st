; Shin Kaname Ameri - cns file No.3
;===========================================================================
; ïKéEãZ
;===========================================================================
;---------------------------------------------------------------------------
;ç|çcâÂåùÅFé„
[Statedef 1000]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 10
ctrl     = 0
anim     = 1000
velset   = 0,0

;***********************************
[State 1000, Width]
type = Width
trigger1 = ((AnimElemTime(1) > 0) && (AnimElemTime(9) < 0))
value = 17,10

[State 1000, Muteki]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 3

[State 1000, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 1000, Speed]
type = VelSet
trigger1 = time = [4,16]
x = 7
y = 0

[State 1000, Speed]
type = VelSet
trigger1 = time >= 17
x = 2.5
y = 0

[State 1000, Zanzou]
type = AfterImage
trigger1 = Time = 1
Time = 21
PalBright   =   0,  0,  0
PalContrast = 255,255,255
Trans = Add
TimeGap  = 2
FrameGap = 1
length = 8

;***********************************
[State 1000, Effect]
type = Explod
trigger1 = time = [5,18]
trigger1 = timemod = 5,0
anim = 1001
scale = 1,1
postype = p1
pos = 102,-60
sprpriority = 3
bindtime = -1
supermove = 1
ownpal = 1

[State 1000, Ring]
type = Explod
trigger1 = time = 5
anim = 4301
scale = 1,1
postype = p1
pos = 20,-60
sprpriority = 5
supermove = 1
ownpal = 1

[State 1000, Shibuki]
type = Explod
trigger1 = time = 4
anim = 4101
scale = 1,1
postype = p1
pos = 0,0
sprpriority = 4
supermove = 1
ownpal = 1

[State 1000, Shibuki]
type = Explod
trigger1 = time = 4
anim = 4100
scale = 1,1
postype = p1
pos = 0,0
sprpriority = -1
supermove = 1
ownpal = 1

;***********************************
[State 1000, Kaname Voice]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,5

[State 1000, SE]
type = PlaySnd
trigger1 = AnimElem = 2
value = s0,2

;***********************************
[State 1000, Hit]
type = HitDef
trigger1 = AnimElem = 3
attr             = S, SA
animtype         = Back
damage           = ceil(100+(GameTime%2*10/2)),10
getpower         = 30,3
guardflag        = MA
priority         = 3
pausetime        = 9,10
sparkno          = s4201
sparkxy          = -10,-58
guard.sparkno    = s4200
hitsound         = s0,9
guardsound       = s0,6
ground.type      = High
ground.slidetime = 9
ground.hittime   = 9
ground.velocity  = -8,-3
air.velocity     = -7,-2.5
fall.yvelocity = -2.5
fall = 1

;***********************************
[State 1000, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 101

;***********************************
[State 1000, Finish SE]
type = PlaySnd
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
value = s1,6
ignorehitpause = 1
removeongethit = 1
persistent = 0

[State 1000, Finish BG Color]
type = BGPalFX ;AllPalFX
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
add = -255,-255,-255
sinadd = 500,500,500,100
time = 40
ignorehitpause = 1
removeongethit = 1
persistent = 0

;---------------------------------------------------------------------------
;ç|çcâÂåùÅFã≠
[Statedef 1010]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 10
ctrl     = 0
anim     = 1000
velset   = 0,0

;***********************************
[State 1010, Width]
type = Width
trigger1 = ((AnimElemTime(1) > 0) && (AnimElemTime(9) < 0))
value = 17,10

[State 1010, Muteki]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 3

[State 1010, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 1010, Speed]
type = VelSet
trigger1 = time = [4,16]
x = 12
y = 0

[State 1010, Speed]
type = VelSet
trigger1 = time >= 17
x = 2.5
y = 0

[State 1010, Zanzou]
type = AfterImage
trigger1 = Time = 1
Time = 21
PalBright   =   0,  0,  0
PalContrast = 255,255,255
Trans = Add
TimeGap  = 2
FrameGap = 1
length = 8

;***********************************
[State 1010, Effect]
type = Explod
trigger1 = time = [5,18]
trigger1 = timemod = 5,0
anim = 1001
scale = 1,1
postype = p1
pos = 102,-60
sprpriority = 3
bindtime = -1
supermove = 1
ownpal = 1

[State 1010, Ring]
type = Explod
trigger1 = time = 5
anim = 4301
scale = 1,1
postype = p1
pos = 20,-60
sprpriority = 5
supermove = 1
ownpal = 1

[State 1010, Shibuki]
type = Explod
trigger1 = time = 4
anim = 4101
scale = 1,1
postype = p1
pos = 0,0
sprpriority = 4
supermove = 1
ownpal = 1

[State 1010, Shibuki]
type = Explod
trigger1 = time = 4
anim = 4100
scale = 1,1
postype = p1
pos = 0,0
sprpriority = -1
supermove = 1
ownpal = 1

;***********************************
[State 1010, Kaname Voice]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,5

[State 1010, SE]
type = PlaySnd
trigger1 = AnimElem = 2
value = s0,2

;***********************************
[State 1010, Hit]
type = HitDef
trigger1 = AnimElem = 3
attr             = S, SA
animtype         = Back
damage           = ceil(105+(GameTime%2*10/2)),10
getpower         = 30,3
guardflag        = MA
priority         = 3
pausetime        = 9,10
sparkno          = s4201
sparkxy          = -10,-58
guard.sparkno    = s4200
hitsound         = s0,9
guardsound       = s0,6
ground.type      = High
ground.slidetime = 9
ground.hittime   = 9
ground.velocity  = -8,-3
air.velocity     = -7,-2.5
fall.yvelocity = -2.5
fall = 1
envshake.time = 3
envshake.ampl = 6
envshake.freq = 100

;***********************************
[State 1010, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 101

;***********************************
[State 1010, Finish SE]
type = PlaySnd
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
value = s1,6
ignorehitpause = 1
removeongethit = 1
persistent = 0

[State 1010, Finish BG Color]
type = BGPalFX
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
add = -255,-255,-255
sinadd = 500,500,500,100
time = 40
ignorehitpause = 1
removeongethit = 1
persistent = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ãÛíÜç|çcâÂåùÅFé„
[Statedef 1020]
type     = A
movetype = A
physics  = A
juggle   = 1
poweradd = 10
ctrl     = 0
anim     = 1010
velset   = 0,0

;***********************************
[State 1020, Muteki]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 3

[State 1020, Speed]
type = VelSet
trigger1 = Time = [0,17]
y = 0

[State 1020, Speed]
type = VelSet
trigger1 = time = [4,16]
x = 7

[State 1020, Zanzou]
type = AfterImage
trigger1 = Time = 1
Time = 21
PalBright   =   0,  0,  0
PalContrast = 255,255,255
Trans = Add
TimeGap  = 2
FrameGap = 1
length = 8

;***********************************
[State 1020, Effect]
type = Explod
trigger1 = time = [5,18]
trigger1 = timemod = 5,0
anim = 1001
scale = 1,1
postype = p1
pos = 102,-60
sprpriority = 3
bindtime = -1
supermove = 1
ownpal = 1

[State 1020, Ring]
type = Explod
trigger1 = time = 5
anim = 4301
scale = 1,1
postype = p1
pos = 20,-60
sprpriority = 5
supermove = 1
ownpal = 1

;***********************************
[State 1020, Kaname Voice]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,5

[State 1020, SE]
type = PlaySnd
trigger1 = AnimElem = 2
value = s0,2

;***********************************
[State 1020, Hit]
type = HitDef
trigger1 = AnimElem = 3
attr             = A, SA
animtype         = Back
damage           = ceil(100+(GameTime%2*10/2)),10
getpower         = 30,3
guardflag        = MA
priority         = 3
pausetime        = 9,10
sparkno          = s4201
sparkxy          = -10,-58
guard.sparkno    = s4200
hitsound         = s0,9
guardsound       = s0,6
ground.type      = High
ground.slidetime = 9
ground.hittime   = 9
ground.velocity  = -8,-3
air.velocity     = -7,-2.5
fall.yvelocity = -2.5
fall = 1

;***********************************
[State 1020, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 10005

;***********************************
[State 1020, Finish SE]
type = PlaySnd
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
value = s1,6
ignorehitpause = 1
removeongethit = 1
persistent = 0

[State 1020, Finish BG Color]
type = BGPalFX
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
add = -255,-255,-255
sinadd = 500,500,500,100
time = 40
ignorehitpause = 1
removeongethit = 1
persistent = 0

;---------------------------------------------------------------------------
;ãÛíÜç|çcâÂåùÅFã≠
[Statedef 1030]
type     = A
movetype = A
physics  = A
juggle   = 1
poweradd = 10
ctrl     = 0
anim     = 1010
velset   = 0,0

;***********************************
[State 1030, Muteki]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 3

[State 1030, Speed]
type = VelSet
trigger1 = Time = [0,17]
y = 0

[State 1030, Speed]
type = VelSet
trigger1 = time = [4,16]
x = 12

[State 1030, Zanzou]
type = AfterImage
trigger1 = Time = 1
Time = 21
PalBright   =   0,  0,  0
PalContrast = 255,255,255
Trans = Add
TimeGap  = 2
FrameGap = 1
length = 8

;***********************************
[State 1030, Effect]
type = Explod
trigger1 = time = [5,18]
trigger1 = timemod = 5,0
anim = 1001
scale = 1,1
postype = p1
pos = 102,-60
sprpriority = 3
bindtime = -1
supermove = 1
ownpal = 1

[State 1030, Ring]
type = Explod
trigger1 = time = 5
anim = 4301
scale = 1,1
postype = p1
pos = 20,-60
sprpriority = 5
supermove = 1
ownpal = 1

;***********************************
[State 1030, Kaname Voice]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,5

[State 1030, SE]
type = PlaySnd
trigger1 = AnimElem = 2
value = s0,2

;***********************************
[State 1030, Hit]
type = HitDef
trigger1 = AnimElem = 3
attr             = A, SA
animtype         = Back
damage           = ceil(105+(GameTime%2*10/2)),10
getpower         = 30,3
guardflag        = MA
priority         = 3
pausetime        = 9,10
sparkno          = s4201
sparkxy          = -10,-58
guard.sparkno    = s4200
hitsound         = s0,9
guardsound       = s0,6
ground.type      = High
ground.slidetime = 9
ground.hittime   = 9
ground.velocity  = -8,-3
air.velocity     = -7,-2.5
fall.yvelocity = -2.5
fall = 1
envshake.time = 3
envshake.ampl = 6
envshake.freq = 100


;***********************************
[State 1030, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 10005

;***********************************
[State 1030, Finish SE]
type = PlaySnd
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
value = s1,6
ignorehitpause = 1
removeongethit = 1
persistent = 0

[State 1030, Finish BG Color]
type = BGPalFX
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
add = -255,-255,-255
sinadd = 500,500,500,100
time = 40
ignorehitpause = 1
removeongethit = 1
persistent = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ãÛíÜéŒÇﬂç|çcâÂåùÅFé„
[Statedef 1040]
type     = A
movetype = A
physics  = N
juggle   = 1
poweradd = 10
ctrl     = 0
anim     = 1020
velset   = 0,0

;***********************************
[State 1040, Speed]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1040, Speed]
type = VelSet
trigger1 = time = 4
x = 3
y = 3

[State 1040, Speed]
type = VelAdd
trigger1 = time > 4
x = .5
y = .5

[State 1040, Zanzou]
type = AfterImage
trigger1 = Time = 1
Time = 21
PalBright   =   0,  0,  0
PalContrast = 255,255,255
Trans = Add
TimeGap  = 2
FrameGap = 1
length = 8

[State 1040, Zanzou]
type = AfterImageTime
trigger1 = StateType != A
Time = 0

;***********************************
[State 1040, Effect]
type = Explod
triggerall = StateNo = 1040
trigger1 = time >= 5
trigger1 = timemod = 5,0
anim = 1021
scale = 1,1
postype = p1
pos = 68,14
sprpriority = 3
bindtime = -1
supermove = 1
ownpal = 1

[State 1040, Ring]
type = Explod
trigger1 = time = 5
anim = 4302
scale = 1,1
postype = p1
pos = 40,-15
sprpriority = 5
supermove = 1
ownpal = 1

;***********************************
[State 1040, Kaname Voice]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,5

[State 1040, SE]
type = PlaySnd
trigger1 = AnimElem = 2
value = s0,2

;***********************************
[State 1040, Hit]
type = HitDef
trigger1 = AnimElem = 3
attr             = A, SA
animtype         = Back
damage           = ceil(60+(GameTime%2*10/2)),6
getpower         = 30,3
guardflag        = MA
priority         = 3
pausetime        = 8,15
sparkno          = s4201
sparkxy          = -10,20
guard.sparkno    = s4200
hitsound         = s0,9
guardsound       = s0,6
ground.type      = High
ground.slidetime = 9
ground.hittime   = 9
ground.velocity  = -8,0
air.velocity     = -7,-2.5
fall.yvelocity = -2.5
fall = 0

;***********************************
[State 1040, Change]
type = ChangeState
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = 52

;***********************************
[State 1040, Finish SE]
type = PlaySnd
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
value = s1,6
ignorehitpause = 1
removeongethit = 1
persistent = 0

[State 1040, Finish BG Color]
type = BGPalFX
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
add = -255,-255,-255
sinadd = 500,500,500,100
time = 40
ignorehitpause = 1
removeongethit = 1
persistent = 0

;---------------------------------------------------------------------------
;ãÛíÜéŒÇﬂç|çcâÂåùÅFã≠
[Statedef 1050]
type     = A
movetype = A
physics  = N
juggle   = 1
poweradd = 10
ctrl     = 0
anim     = 1020
velset   = 0,0

;***********************************
[State 1050, Speed]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1050, Speed]
type = VelSet
trigger1 = time = 4
x = 8
y = 8

[State 1050, Speed]
type = VelAdd
trigger1 = time > 4
x = .4
y = .4

[State 1050, Zanzou]
type = AfterImage
trigger1 = Time = 1
Time = 21
PalBright   =   0,  0,  0
PalContrast = 255,255,255
Trans = Add
TimeGap  = 2
FrameGap = 1
length = 8

[State 1050, Zanzou]
type = AfterImageTime
trigger1 = StateType != A
Time = 0

;***********************************
[State 1050, Effect]
type = Explod
triggerall = StateNo = 1050
trigger1 = time >= 5
trigger1 = timemod = 5,0
anim = 1021
scale = 1,1
postype = p1
pos = 68,14
sprpriority = 3
bindtime = -1
supermove = 1
ownpal = 1

[State 1050, Ring]
type = Explod
trigger1 = time = 5
anim = 4302
scale = 1,1
postype = p1
pos = 40,-15
sprpriority = 5
supermove = 1
ownpal = 1

;***********************************
[State 1050, Kaname Voice]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,5

[State 1050, SE]
type = PlaySnd
trigger1 = AnimElem = 2
value = s0,2

;***********************************
[State 1050, Hit]
type = HitDef
trigger1 = AnimElem = 3
attr             = A, SA
animtype         = Back
damage           = ceil(70+(GameTime%2*10/2)),7
getpower         = 30,3
guardflag        = MA
priority         = 3
pausetime        = 8,15
sparkno          = s4201
sparkxy          = -10,20
guard.sparkno    = s4200
hitsound         = s0,9
guardsound       = s0,6
ground.type      = High
ground.slidetime = 9
ground.hittime   = 9
ground.velocity  = -8,0
air.velocity     = -7,-2.5
fall.yvelocity = -2.5
fall = 0

;***********************************
[State 1050, Change]
type = ChangeState
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = 52

;***********************************
[State 1050, Finish SE]
type = PlaySnd
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
value = s1,6
ignorehitpause = 1
removeongethit = 1
persistent = 0

[State 1050, Finish BG Color]
type = BGPalFX
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
add = -255,-255,-255
sinadd = 500,500,500,100
time = 40
ignorehitpause = 1
removeongethit = 1
persistent = 0

;===========================================================================
;---------------------------------------------------------------------------
;è’îjïóåùÅFé„
[Statedef 1100]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 10
ctrl     = 0
anim     = 1100
velset   = 0,0

;***********************************
[State 1100, Muteki]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 22

[State 1100, Width]
type = Width
trigger1 = ((AnimElemTime(2) > 0) && (AnimElemTime(13) < 0))
value = 15,2

[State 1100, Zanzou]
type = AfterImage
trigger1 = Time = 1
Time = 36
PalBright   =   0,  0,  0
PalContrast = 255,255,255
Trans = Add
TimeGap  = 2
FrameGap = 1
length = 8

;***********************************
[State 1100, Helper]
type = Null ;Helper
trigger1 = AnimElemTime(4) = 0
name = "Shibuki"
stateno = 910
ID = 910
pos = 40,0
keyctrl = 0
postype = p1
ownpal = 1
persistent = 0
size.xscale = 1
size.yscale = 1

;***********************************
[State 1100, Huuatsu]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 4108
scale = 1,1
postype = p1
pos = 130,-70
sprpriority = 5
removetime = 20
supermove = 1
ownpal = 1

[State 1100, Shibuki]
type = Explod
trigger1 = time = 4
anim = 4101
scale = 1,1
postype = p1
pos = 0,0
sprpriority = 4
supermove = 1
ownpal = 1

[State 1100, Shibuki]
type = Explod
trigger1 = time = 4
anim = 4100
scale = 1,1
postype = p1
pos = 0,0
sprpriority = -1
supermove = 1
ownpal = 1

;***********************************
[State 1100, Kaname Voice]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s5,0

[State 1100, SE]
type = PlaySnd
trigger1 = AnimElem = 4
value = s0,3

;***********************************
[State 1100, Force]
type = Projectile
trigger1 = AnimElem = 4
attr             = S, SP
offset           = 100,-70
velocity         = 1.25,0
;accel           = 0,0
damage           = ceil(80+(GameTime%2*10/2)),8
getpower         = 30,3
animtype         = Hard
pausetime        = 0,9
;-----------------------------------
projID           = 1100
projanim         = 1101
projhitanim      = 1102
projremanim      = 1102
projscale        = 1,1
projshadow       = -1,-1,-1
projhits         = 1
projmisstime     = 1
projpriority     = 4
projremovetime   = 16
;-----------------------------------
guardflag        = MA
priority         = 3
sparkno          = s4201
guard.sparkno    = s4200
hitsound         = s0,8
guardsound       = s0,6
ground.type      = High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -8,0
air.velocity     = -1,-5
air.animtype     = Back
air.juggle       = 1

;***********************************
[State 1100, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;***********************************
[State 1100, Finish SE]
type = PlaySnd
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
value = s1,6
ignorehitpause = 1
removeongethit = 1
persistent = 0

[State 1100, Finish BG Color]
type = BGPalFX
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
add = -255,-255,-255
sinadd = 500,500,500,100
time = 40
ignorehitpause = 1
removeongethit = 1
persistent = 0

;---------------------------------------------------------------------------
;è’îjïóåùÅFã≠
[Statedef 1110]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 10
ctrl     = 0
anim     = 1100
velset   = 0,0

;***********************************
[State 1110, Muteki]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 25

[State 1110, Width]
type = Width
trigger1 = ((AnimElemTime(2) > 0) && (AnimElemTime(13) < 0))
value = 15,2

[State 1110, Zanzou]
type = AfterImage
trigger1 = Time = 1
Time = 36
PalBright   =   0,  0,  0
PalContrast = 255,255,255
Trans = Add
TimeGap  = 2
FrameGap = 1
length = 8

;***********************************
[State 1110, Helper]
type = Null ;Helper
trigger1 = AnimElemTime(4) = 0
name = "Shibuki"
stateno = 910
ID = 910
pos = 40,0
keyctrl = 0
postype = p1
ownpal = 1
persistent = 0
size.xscale = 1
size.yscale = 1

;***********************************
[State 1110, Huuatsu]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 4108
scale = 1,1
postype = p1
pos = 130,-70
sprpriority = 5
removetime = 20
supermove = 1
ownpal = 1

[State 1110, Shibuki]
type = Explod
trigger1 = time = 4
anim = 4101
scale = 1,1
postype = p1
pos = 0,0
sprpriority = 4
supermove = 1
ownpal = 1

[State 1110, Shibuki]
type = Explod
trigger1 = time = 4
anim = 4100
scale = 1,1
postype = p1
pos = 0,0
sprpriority = -1
supermove = 1
ownpal = 1

;***********************************
[State 1110, Kaname Voice]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s5,0

[State 1110, SE]
type = PlaySnd
trigger1 = AnimElem = 4
value = s0,3

;***********************************
[State 1110, Force]
type = Projectile
trigger1 = AnimElem = 4
attr             = S, SP
offset           = 100,-70
velocity         = 1.5,0
;accel           = 0,0
damage           = ceil(90+(GameTime%2*10/2)),9
getpower         = 30,3
animtype         = Hard
pausetime        = 0,9
;-----------------------------------
projID           = 1100
projanim         = 1101
projhitanim      = 1102
projremanim      = 1102
projscale        = 1,1
projshadow       = -1,-1,-1
projhits         = 1
projmisstime     = 1
projpriority     = 4
projremovetime   = 16
;-----------------------------------
guardflag        = MA
priority         = 3
sparkno          = s4201
guard.sparkno    = s4200
hitsound         = s0,8
guardsound       = s0,6
ground.type      = High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -8,0
air.velocity     = -1,-5
air.animtype     = Back
air.juggle       = 1

;***********************************
[State 1110, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;***********************************
[State 1110, Finish SE]
type = PlaySnd
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
value = s1,6
ignorehitpause = 1
removeongethit = 1
persistent = 0

[State 1110, Finish BG Color]
type = BGPalFX
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
add = -255,-255,-255
sinadd = 500,500,500,100
time = 40
ignorehitpause = 1
removeongethit = 1
persistent = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ãÛíÜè’îjïóåùÅFé„
[Statedef 1120]
type     = A
movetype = A
physics  = A
juggle   = 1
poweradd = 10
ctrl     = 0
anim     = 1110
velset   = 0,0

;***********************************
[State 1120, Muteki]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 22

[State 1120, Speed]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0.1

[State 1120, Zanzou]
type = AfterImage
trigger1 = Time = 1
Time = 36
PalBright   =   0,  0,  0
PalContrast = 255,255,255
Trans = Add
TimeGap  = 2
FrameGap = 1
length = 8

;***********************************
[State 1120, Huuatsu]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 4108
scale = 1,1
postype = p1
pos = 130,-70
sprpriority = 5
removetime = 20
supermove = 1
ownpal = 1

;***********************************
[State 1120, Kaname Voice]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s5,0

[State 1120, SE]
type = PlaySnd
trigger1 = AnimElem = 4
value = s0,3

;***********************************
[State 1120, Force]
type = Projectile
trigger1 = AnimElem = 4
attr             = A, SP
offset           = 100,-70
velocity         = 1.25,0
;accel           = 0,0
damage           = ceil(80+(GameTime%2*10/2)),8
getpower         = 30,3
animtype         = Hard
pausetime        = 0,9
;-----------------------------------
projID           = 1120
projanim         = 1101
projhitanim      = 1102
projremanim      = 1102
projscale        = 1,1
projshadow       = -1,-1,-1
projhits         = 1
projmisstime     = 1
projpriority     = 4
projremovetime   = 16
;-----------------------------------
guardflag        = MA
priority         = 3
sparkno          = s4201
guard.sparkno    = s4200
hitsound         = s0,8
guardsound       = s0,6
ground.type      = High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -8,0
air.velocity     = -1,-5
air.animtype     = Back
air.juggle       = 1

;***********************************
[State 1120, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 10005

;***********************************
[State 1120, Finish SE]
type = PlaySnd
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
value = s1,6
ignorehitpause = 1
removeongethit = 1
persistent = 0

[State 1120, Finish BG Color]
type = BGPalFX
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
add = -255,-255,-255
sinadd = 500,500,500,100
time = 40
ignorehitpause = 1
removeongethit = 1
persistent = 0

;---------------------------------------------------------------------------
;ãÛíÜè’îjïóåùÅFã≠
[Statedef 1130]
type     = A
movetype = A
physics  = A
juggle   = 1
poweradd = 10
ctrl     = 0
anim     = 1110
velset   = 0,0

;***********************************
[State 1130, Muteki]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 25

[State 1130, Speed]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0.1

[State 1130, Zanzou]
type = AfterImage
trigger1 = Time = 1
Time = 36
PalBright   =   0,  0,  0
PalContrast = 255,255,255
Trans = Add
TimeGap  = 2
FrameGap = 1
length = 8

;***********************************
[State 1130, Huuatsu]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 4108
scale = 1,1
postype = p1
pos = 130,-70
sprpriority = 5
removetime = 20
supermove = 1
ownpal = 1

;***********************************
[State 1130, Kaname Voice]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s5,0

[State 1130, SE]
type = PlaySnd
trigger1 = AnimElem = 4
value = s0,3

;***********************************
[State 1130, Force]
type = Projectile
trigger1 = AnimElem = 4
attr             = A, SP
offset           = 100,-70
velocity         = 1.5,0
;accel           = 0,0
damage           = ceil(90+(GameTime%2*10/2)),9
getpower         = 30,3
animtype         = Hard
pausetime        = 0,9
;-----------------------------------
projID           = 1120
projanim         = 1101
projhitanim      = 1102
projremanim      = 1102
projscale        = 1,1
projshadow       = -1,-1,-1
projhits         = 1
projmisstime     = 1
projpriority     = 4
projremovetime   = 16
;-----------------------------------
guardflag        = MA
priority         = 3
sparkno          = s4201
guard.sparkno    = s4200
hitsound         = s0,8
guardsound       = s0,6
ground.type      = High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -8,0
air.velocity     = -1,-5
air.animtype     = Back
air.juggle       = 1

;***********************************
[State 1130, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 10005

;***********************************
[State 1130, Finish SE]
type = PlaySnd
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
value = s1,6
ignorehitpause = 1
removeongethit = 1
persistent = 0

[State 1130, Finish BG Color]
type = BGPalFX
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
add = -255,-255,-255
sinadd = 500,500,500,100
time = 40
ignorehitpause = 1
removeongethit = 1
persistent = 0

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;===========================================================================
;---------------------------------------------------------------------------
;åÇç”òAé◊
[Statedef 1200]
type     = S
movetype = A
physics  = N
juggle   = 1
poweradd = 0
ctrl     = 0
anim     = 1200
velset   = 0,0

[State 1200, Muteki]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 5

[State 1200, Zanzou]
type = AfterImage
trigger1 = Time = 1
Time = 16
PalBright   =  90,  0,  0
PalContrast = 255,255,255
Trans = Add1
TimeGap  = 2
FrameGap = 1
length = 8

;***********************************
[State 1200, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 1200, Speed]
type = VelSet
trigger1 = time <= 4
x = 0
y = 0

[State 1200, Speed]
type = VelSet
trigger1 = time = 5
x = 7
y = 0

;[State 1200, SpeedAdd]
;type = VelAdd
;triggerall = command = "hold_y"
;trigger1 = time >= 5
;x = 1

;***********************************
[State 1200, Shibuki]
type = Explod
trigger1 = time = 5
anim = 4101
scale = 1,1
postype = p1
pos = 0,0
sprpriority = 4
supermove = 1
ownpal = 1

[State 1200, Shibuki]
type = Explod
trigger1 = time = 5
anim = 4100
scale = 1,1
postype = p1
pos = 0,0
sprpriority = -1
supermove = 1
ownpal = 1

;***********************************
[State 1200, Kaname Voice]
type = PlaySnd
trigger1 = time = 5
value = s3,1

[State 1200, SE]
type = PlaySnd
trigger1 = time = 1
value = s2,2

;***********************************
[State 1200, Hit]
type = HitDef
trigger1 = time = 5
attr             = S, SA
animtype         = Hard
damage           = 30,3
getpower         = 30,3
guardflag        = L
priority         = 3
pausetime        = 15,17
sparkno          = s4201
sparkxy          = -10,-15
guard.sparkno    = s4200
hitsound         = s2,4
guardsound       = s0,6
ground.type      = Low
ground.slidetime = 9
ground.hittime   = 9
ground.velocity  = -3,0
air.velocity     = -3,-3
kill = 0
envshake.time = 5
envshake.ampl = 6
envshake.freq = 100

;***********************************
[State 1200, Change]
type = ChangeState
triggerall = ((var(5) = 0) && (MoveHit))
trigger1 = ((command = "sp_2_low") || (command = "sp_2_high"))
value = 1201

[State 1200, Change]
type = ChangeState
triggerall = ((var(5) = 1) && (MoveHit))
trigger1 = 1
value = 1201

[State 1200, Change]
type = ChangeState
trigger1 = Time = 16
value = 101

;---------------------------------------------------------------------------
;åÇç”òAé◊ÅEÉAÉbÉpÅ[
[Statedef 1201]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 0
ctrl     = 0
anim     = 1201
velset   = 0,0

[State 1201, Zanzou]
type = AfterImage
trigger1 = Time = 1
Time = 38
PalBright   =  90,  0,  0
PalContrast = 255,255,255
Trans = Add1
TimeGap  = 2
FrameGap = 1
length = 8

[State 1201, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

;***********************************
[State 1201, Void Power]
type = Explod
trigger1 = AnimElemTime(1) = 0
anim = 1225
scale = 1,1
postype = p1
pos = 0,0
sprpriority = 7
supermove = 1
ownpal = 1

[State 1201, Shibuki]
type = Explod
trigger1 = time = 1
anim = 4101
scale = 0.7,1.6
facing = -1
postype = p1
pos = 15,0
sprpriority = 4
supermove = 1
ownpal = 1

[State 1201, Shibuki]
type = Explod
trigger1 = time = 1
anim = 4100
scale = 1,1
postype = p1
pos = 0,0
sprpriority = -1
supermove = 1
ownpal = 1

;***********************************
[State 1201, Kaname Voice]
type = PlaySnd
trigger1 = time = 2
value = s3,0

[State 1201, SE]
type = PlaySnd
trigger1 = time = 1
value = s0,1

;***********************************
[State 1201, Hit]
type = HitDef
trigger1 = AnimElemTime(4) = 0
attr             = S, SA
animtype         = Hard
damage           = 30,3
getpower         = 30,3
guardflag        = LA
priority         = 3
pausetime        = 15,17
sparkno          = s4201
sparkxy          = -10,-58
guard.sparkno    = s4200
hitsound         = s1,0
guardsound       = s0,6
ground.type      = High
ground.slidetime = 9
ground.hittime   = 9
ground.velocity  = -3,0
air.velocity     = -3,-3
kill = 0
envshake.time = 5
envshake.ampl = 6
envshake.freq = 100

;***********************************
[State 1201, Change]
type = ChangeState
triggerall = MoveHit
trigger1 = ((command = "sp_2_low") || (command = "sp_2_high"))
value = 1202

[State 1201, Change]
type = ChangeState
triggerall = var(5) = 1
trigger1 = ((Power = [0,999]) && (MoveHit))
trigger2 = ((Power = [1001,1999]) && (MoveHit))
trigger3 = ((Power = [2001,2999]) && (MoveHit))
value = 1202

[State 1201, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;åÇç”òAé◊ÅEÉtÉBÉjÉbÉVÉÖâûãr
[Statedef 1202]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 0
ctrl     = 0
anim     = 800
velset   = 0,0

[State 1202, Width]
type = Width
trigger1 = time = [1,30]
value = -15,25

[State 1202, Zanzou]
type = AfterImage
trigger1 = Time = 1
Time = 35
PalBright   =  90,  0,  0
PalContrast = 255,255,255
Trans = Add1
TimeGap  = 2
FrameGap = 1
length = 8

;***********************************
[State 1202, Speed]
type = VelSet
trigger1 = time >= 0
y = 0

[State 1202, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 1202, Idou]
type = PosAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
x = 15

;***********************************
[State 1202, Shibuki]
type = Explod
trigger1 = time = 4
anim = 4101
scale = 1,1
facing = -1
postype = p1
pos = 10,0
sprpriority = 4
supermove = 1
ownpal = 1

[State 1202, Shibuki]
type = Explod
trigger1 = time = 4
anim = 4100
scale = 1,1
postype = p1
pos = 0,0
sprpriority = -1
supermove = 1
ownpal = 1

;***********************************
[State 1202, Kaname Voice]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s4,9

[State 1202, SE]
type = PlaySnd
trigger1 = AnimElem = 3
value = s0,1

;***********************************
[State 1202, Hit]
type = HitDef
trigger1 = AnimElem = 3
attr             = S, SA
animtype         = Back
damage           = 30,3
getpower         = 30,3
guardflag        = 
priority         = 3
pausetime        = 8,8
sparkno          = s4201
sparkxy          = -10,-60
guard.sparkno    = s4200
hitsound         = s1,2
guardsound       = s0,6
ground.type      = Low
ground.slidetime = 12
ground.hittime   = 15
ground.velocity  = -2,-2
air.velocity     = -2,-2
fall = 1
fall.recover = 0
P2StateNo = 2000
p1facing = 1
p2facing = 1
envshake.time = 10
envshake.ampl = 6
envshake.freq = 100

[State 1202, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;***********************************
[State 1202, Finish SE]
type = PlaySnd
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
value = s1,6
ignorehitpause = 1
removeongethit = 1
persistent = 0

[State 1202, Finish BG Color]
type = BGPalFX
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
add = -255,-255,-255
sinadd = 500,500,500,100
time = 40
ignorehitpause = 1
removeongethit = 1
persistent = 0

;===========================================================================
;---------------------------------------------------------------------------
;ë¬ãÛên
[Statedef 1300]
type     = S
movetype = A
physics  = N
juggle   = 0
poweradd = 10
ctrl     = 0
anim     = 40
velset   = 0,0

[State 1300, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 1300, Speed]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0

;***********************************
[State 1300, Shibuki]
type = Explod
trigger1 = time = 1
anim = 4100
scale = 1.5,1
postype = p1
pos = 0,0
sprpriority = -1
supermove = 1
ownpal = 1

[State 1300, Shibuki]
type = Explod
trigger1 = time = 1
anim = 4104
scale = 1,1
postype = p1
pos = 0,0
sprpriority = 2
supermove = 1
ownpal = 1

[State 1300, Shibuki]
type = Explod
trigger1 = time = 1
anim = 4103
scale = 0.8,1.3
postype = p1
pos = 0,0
sprpriority = 3
supermove = 1
ownpal = 1

;***********************************
[State 1300, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 1301

;--------------------------------------------
;ë¬ãÛênÅEÉWÉÉÉìÉv
[Statedef 1301]
type     = A
movetype = A
physics  = N
juggle   = 0
poweradd = 0
ctrl     = 0
anim     = 1300
velset   = 0,0

[State 1301, Scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 1301, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 13
PalBright   =   0,  0,  0
PalContrast = 255,255,255
Trans = Add
TimeGap  = 2
FrameGap = 1
length = 8

[State 1301, Speed]
type = VelSet
trigger1 = time <= 6
x = 0
y = -12

[State 1301, Speed]
type = VelSet
trigger1 = time >= 7
x = 0
y = 0

;***********************************
[State 1300, SE]
type = PlaySnd
trigger1 = time = 0
value = s0,5

[State 1301, Change]
type = ChangeState
trigger1 = time = 13
value = 1302

;--------------------------------------------
;ë¬ãÛênÅEóéâ∫
[Statedef 1302]
type     = A
movetype = A
physics  = N
juggle   = 1
poweradd = 0
ctrl     = 0
anim     = 1301
velset   = 0,0

[State 1302, Scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 1302, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 35
PalBright   =  90,  0,  0
PalContrast = 255,255,255
Trans = Add1
TimeGap  = 2
FrameGap = 1
length = 8

[State 1302, Pos]
type = PosSet
trigger1 = Time = 0
y = -900

[State 1301, PosAdd]
type = PosAdd
trigger1 = Time = 0
x = ifelse(command="hold_a",ceil(105+time),ifelse(command="hold_b",ceil(170+time),25))

[State 1302, Speed]
type = VelAdd
trigger1 = time >= 0
y = 2.5

;***********************************
[State 1302, Effect]
type = Explod
trigger1 = time >= 0
trigger1 = timemod = 4,0
anim = 1303
scale = 1,1
postype = p1
pos = 0,20
sprpriority = 4
bindtime = -1
supermove = 1
ownpal = 1

;***********************************
[State 1302, Kaname Voice]
type = PlaySnd
trigger1 = time = 0
value = s3,4

[State 1302, SE]
type = PlaySnd
trigger1 = time = 1
value = s0,2

;***********************************
[State 1302, Hit]
type = HitDef
trigger1 = time = 0
attr             = A, SA
animtype         = Back
damage           = ceil(80+(GameTime%2*10/2)),8
getpower         = 30,3
guardflag        = HA
priority         = 3
pausetime        = 7,7
sparkno          = s4201
sparkxy          = 0,0
guard.sparkno    = s4200
hitsound         = s2,4
guardsound       = s0,6
ground.type      = Low
ground.slidetime = 9
ground.hittime   = 9
ground.velocity  = -10,-5
air.velocity     = -10,-4
envshake.time = 7
envshake.ampl = 6
envshake.freq = 100
kill = 0

;***********************************
[State 1302, Change]
type = ChangeState
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = 1303

;***********************************
[State 1302, Finish SE]
type = PlaySnd
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
value = s1,6
ignorehitpause = 1
removeongethit = 1
persistent = 0

[State 1302, Finish BG Color]
type = BGPalFX
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
add = -255,-255,-255
sinadd = 500,500,500,100
time = 40
ignorehitpause = 1
removeongethit = 1
persistent = 0

;--------------------------------------------
;ë¬ãÛênÅEíÖín
[Statedef 1303]
type     = S
movetype = I
physics  = N
ctrl     = 0
anim     = 1302
velset   = 0,0

[State 1303, Shake]
type = EnvShake
trigger1 = time = 0
time  = 10
ampl  = 10
freq  = 100
phase = 100

[State 1303, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 1303, Speed]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0

;***********************************
[State 1303, SE]
type = PlaySnd
trigger1 = Time = 0
value = s2,0

;***********************************
[State 1303, Shibuki]
type = Explod
trigger1 = Time = 0
anim = 4106
scale = 1,1
postype = p1
pos = 0,0
sprpriority = 2
supermove = 1
ownpal = 1

[State 1303, Shibuki]
type = Explod
trigger1 = Time = 0
anim = 4107
scale = 1,1
postype = p1
pos = 0,0
sprpriority = 4
supermove = 1
ownpal = 1

[State 1303, Shibuki]
type = Explod
trigger1 = time = 0
anim = 4100
scale = 1,1
postype = p1
pos = 0,0
sprpriority = -1
supermove = 1
ownpal = 1

;***********************************
[State 1303, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;===========================================================================
;===========================================================================
;===========================================================================
;===========================================================================
; ïKéEãZånÅEÇªÇÃëº
;===========================================================================
;---------------------------------------------------------------------------
;åÇç”òAé◊ÅFâûãrëäéËë§ÅEÉqÉbÉgÉVÉFÉCÉN
[Statedef 2000]
type     = A
movetype = H
physics  = N
velset   = 0,0

[State 2000, P2Anim]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1250

[State 2000, Scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 2000, Pos]
type = PosSet
trigger1 = time = 0
y = -50 - GetHitVar(HitTime)
persistent = 1

[State 2000, Change]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 2001

;--------------------------------------------
;êÖïΩêÅÇ¡îÚÇ—
[Statedef 2001]
type     = A
movetype = H
physics  = N
velset   = 0,0

[State 2001, P2Anim]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1251

[State 2001, Scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 2001, Speed]
type = VelSet
trigger1 = Time = 0
x = -20
y = 0

[State 2001, SpeedAdd]
type = VelAdd
trigger1 = time >= 5
x = -0.5

[State 2001, Life]
type = LifeAdd
trigger1 = BackEdgeDist <= 5
value = -10

[State 2001, Change]
type = ChangeState
trigger1 = BackEdgeDist <= 5
value = 2002

;--------------------------------------------
;ï«í@Ç´ïtÇØ
[Statedef 2002]
type    = A
movetype= H
physics = N

[State 2002, P2Anim]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1252

[State 2002, Scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 2002, Speed]
type = VelSet
trigger1 = Time >= 0
x = 0
y = 0

[State 2002, Shake]
type = EnvShake
trigger1 = time = 0
time  = 15
ampl  = 6
freq  = 100
phase = 100

;***********************************
[State 2002, Shibuki]
type = Explod
trigger1 = time = 0
anim = f72
scale = 1,1
postype = p1
pos = -20,0
sprpriority = 4
supermove = 1
ownpal = 1

;***********************************
[State 2002, SE]
type = PlaySnd
Trigger1 = Time = 0
value = f7,2

[State 2002, Change]
type = ChangeState
trigger1 = Time = 10
value = 2003

;--------------------------------------------
;ï«í@Ç´ïtÇØå„óéâ∫
[Statedef 2003]
type    = A
movetype= H
physics = N

[State 2003, P2Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 1253

;[State 2003, Gravity]
;type = Gravity
;trigger1 = Time >= 0

[State 2003, SpeedAdd]
type = VelAdd
trigger1 = time >= 0
y = 0.6

[State 2003, Change Self]
type = SelfState
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = 5100

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

