; Shin Kaname Ameri - cns file No.4
;===========================================================================
; ハイパーコンボ系
;===========================================================================
;---------------------------------------------------------------------------
;眠れる獅子
[Statedef 3000]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 0
ctrl     = 0
anim     = 1000
velset   = 0,0

[State 3000, Power]
type = PowerAdd
trigger1 = Time = 0
value = -3000

;***********************************
[State 3000, Anten]
type = SuperPause
trigger1 = Time = 1
pos = -15,-67
anim = s4208 ;s4002
sound = s2,6
darken = 1

[State 3000, Shuuchuu-sen]
type = Explod
trigger1 = time = 1
anim = 4209 ;4004
postype = p1
pos = -15,-67
scale = 1,1
sprpriority = 2
bindtime = -1
supermove = 1
ownpal = 1

[State 3000, Kaname Face]
type = Explod ; Null
trigger1 = time = 1
anim = 4000
postype = back
pos = 0,120
sprpriority = -3
bindtime = -1
removetime = 33
supermove = 1
ownpal = 1

[State 3000, HA Black BG]
type = Explod
trigger1 = time = 1
anim = 4005
pos = 0,0
postype = left
supermove = 1
sprpriority = -4
bindtime = -1
removetime = 33
ownpal = 1

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
[State 3000, HC Shibuki]
type = Explod
trigger1 = time = 1
anim = 4102
scale = 1,1
postype = p1
pos = -20,0
sprpriority = 4
supermove = 1
ownpal = 1

[State 3000, HC Shibuki]
type = Explod
trigger1 = time = 1
anim = 4100
scale = 1.5,1
postype = p1
pos = 0,0
sprpriority = -1
supermove = 1
ownpal = 1

;***********************************
[State 3000, Muteki]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 3000, Width]
type = Width
trigger1 = ((AnimElemTime(1) > 0) && (AnimElemTime(9) < 0))
value = 17,10

[State 3000, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 3000, Speed]
type = VelSet
trigger1 = time = [4,16]
x = 14
y = 0

[State 3000, Speed]
type = VelSet
trigger1 = time >= 17
x = 2.5
y = 0

[State 3000, Zanzou]
type = AfterImage
trigger1 = Time = 2
Time = 21
PalBright   =   0,  0,  0
PalContrast = 255,255,255
Trans = Add
TimeGap  = 2
FrameGap = 1
length = 8

[State 3000, Scroll Off]
type = Screenbound
trigger1 = ((enemy,MoveType = H) && (MoveHit))
value = 0

;***********************************
[State 3000, Helper]
type = Helper
trigger1 = AnimElemTime(3) = 0
name = "Void"
stateno = 4000
ID = 4000
pos = 102,-60
keyctrl = 0
postype = p1
ownpal = 1
persistent = 0

;***********************************
;[State 3000, Effect]
;type = Explod
;trigger1 = time = [5,18]
;trigger1 = timemod = 5,0
;anim = 1001
;scale = 1.3,1.3
;postype = p1
;pos = 102,-60
;sprpriority = 2
;bindtime = -1
;supermove = 1
;ownpal = 1

[State 3000, Shibuki]
type = Explod
trigger1 = time = 4
anim = 4101
scale = 1,1
postype = p1
pos = 0,0
sprpriority = 4
supermove = 1
ownpal = 1

[State 3000, Shibuki]
type = Explod
trigger1 = time = 4
anim = 4100
scale = 1,1
postype = p1
pos = 0,0
sprpriority = -1
supermove = 1
ownpal = 1

[State 3000, YokoShibuki-1]
type = Explod
trigger1 = time = [5,18]
trigger1 = timemod = 4,0
anim = 4304
scale = 1,1.2
vfacing = ifelse(Random>=200,1,-1)
postype = p1
pos = 20,-50
sprpriority = 3
Random = 10,40
supermove = 1
ownpal = 1

[State 3000, Hit Effect]
type = Explod
triggerall = StateNo = 3000
trigger1 = ((enemy,MoveType = H) && (MoveHit) && (TimeMod = 3,0))
anim = 4303 ;4201
scale = 1,1
facing = -1
postype = p2
pos = 0,-70
sprpriority = 2
bindtime = -1
supermove = 1
ownpal = 1
Random = 80,60
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State 3000, Kaname Voice]
type = PlaySnd
trigger1 = time = 1
value = s4,8

[State 3000, SE]
type = PlaySnd
trigger1 = AnimElem = 2
value = s1,4

;***********************************
[State 3000, Hit]
type = HitDef
trigger1 = AnimElem = 3
attr             = S, HA
animtype         = Back
damage           = ceil(800+(GameTime%2*10/2)),80
getpower         = 0,0
guardflag        = MA
priority         = 3
pausetime        = 9,10
sparkno          = s4207
sparkxy          = -10,-58
guard.sparkno    = s4200
hitsound         = s2,5
guardsound       = s0,6
ground.type      = High
ground.slidetime = 9
ground.hittime   = 9
ground.velocity  = -50,-3 ;-8,-3
guard.velocity   = -8
air.velocity     = -50,-3 ;-7,-2.5
fall.yvelocity = -2.5
fall = 1
fall.recover = 0
envshake.time = 20 ;10
envshake.ampl = 7 ;10
envshake.freq = 176 ;100
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
palfx.time = 40
palfx.add = 20,0,100
palfx.mul = 100,100,100
palfx.sinadd = 500,500,500,100

;***********************************
[State 3000, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 101

;***********************************
[State 3000, Finish SE]
type = PlaySnd
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
value = s1,5
ignorehitpause = 1
removeongethit = 1
persistent = 0

[State 3000, HyperCombo Finish]
type = Explod
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
anim = 4003
pos = 0,0
postype = left
supermove = 1
bindtime = -1
sprpriority = -4
ownpal = 1
ignorehitpause = 1
removeongethit = 1
persistent = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;眠れる獅子（空中）
[Statedef 3010]
type     = A
movetype = A
physics  = A
juggle   = 1
poweradd = 0
ctrl     = 0
anim     = 1010
velset   = 0,0

[State 3010, Power]
type = PowerAdd
trigger1 = Time = 0
value = -3000

;***********************************
[State 3010, Anten]
type = SuperPause
trigger1 = Time = 1
pos = -15,-67
anim = s4208 ;s4002
sound = s2,6
darken = 1

[State 3010, Shuuchuu-sen]
type = Explod
trigger1 = time = 1
anim = 4209 ;4004
postype = p1
pos = -15,-67
scale = 1,1
sprpriority = 2
bindtime = -1
supermove = 1
ownpal = 1

[State 3010, Kaname Face]
type = Explod ; Null
trigger1 = time = 1
anim = 4000
postype = back
pos = 0,120
sprpriority = -3
bindtime = -1
removetime = 33
supermove = 1
ownpal = 1

[State 3010, HA Black BG]
type = Explod
trigger1 = time = 1
anim = 4005
pos = 0,0
postype = left
supermove = 1
sprpriority = -4
bindtime = -1
removetime = 33
ownpal = 1

;***********************************
[State 3010, Muteki]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 3010, Speed]
type = VelSet
trigger1 = time = [0,17]
y = 0

[State 3010, Speed]
type = VelSet
trigger1 = time = [4,16]
x = 14

[State 3010, Zanzou]
type = AfterImage
trigger1 = Time = 2
Time = 21
PalBright   =   0,  0,  0
PalContrast = 255,255,255
Trans = Add
TimeGap  = 2
FrameGap = 1
length = 8

[State 3010, Scroll Off]
type = Screenbound
trigger1 = ((enemy,MoveType = H) && (MoveHit))
value = 0

;***********************************
[State 3010, Helper]
type = Helper
trigger1 = AnimElemTime(3) = 0
name = "Void"
stateno = 4000
ID = 4000
pos = 102,-60
keyctrl = 0
postype = p1
ownpal = 1
persistent = 0

;***********************************
;[State 3010, Effect]
;type = Explod
;trigger1 = time = [5,18]
;trigger1 = timemod = 5,0
;anim = 1001
;scale = 1.3,1.3
;postype = p1
;pos = 102,-60
;sprpriority = 2
;bindtime = -1
;supermove = 1
;ownpal = 1

[State 3010, YokoShibuki-1]
type = Explod
trigger1 = time = [5,18]
trigger1 = timemod = 4,0
anim = 4304
scale = 1,1.2
vfacing = ifelse(Random>=200,1,-1)
postype = p1
pos = 20,-50
sprpriority = 3
Random = 10,40
supermove = 1
ownpal = 1

[State 3010, Hit Effect]
type = Explod
triggerall = StateNo = 3010
trigger1 = ((enemy,MoveType = H) && (MoveHit) && (TimeMod = 3,0))
anim = 4303 ;4201
scale = 1,1
facing = -1
postype = p2
pos = 0,-70
sprpriority = 2
bindtime = -1
supermove = 1
ownpal = 1
Random = 80,60
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State 3010, Kaname Voice]
type = PlaySnd
trigger1 = time = 1
value = s4,8

[State 3010, SE]
type = PlaySnd
trigger1 = AnimElem = 2
value = s1,4

;***********************************
[State 3010, Hit]
type = HitDef
trigger1 = AnimElem = 3
attr             = A, HA
animtype         = Back
damage           = ceil(800+(GameTime%2*10/2)),80
getpower         = 0,0
guardflag        = MA
priority         = 3
pausetime        = 9,10
sparkno          = s4207
sparkxy          = -10,-58
guard.sparkno    = s4200
hitsound         = s2,5
guardsound       = s0,6
ground.type      = High
ground.slidetime = 9
ground.hittime   = 9
ground.velocity  = -50,-3
guard.velocity   = -8
air.velocity     = -50,-3
fall.yvelocity = -2.5
fall = 1
fall.recover = 0
envshake.time = 20
envshake.ampl = 7
envshake.freq = 176
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
palfx.time = 40
palfx.add = 20,0,100
palfx.mul = 100,100,100
palfx.sinadd = 500,500,500,100

;***********************************
[State 3010, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 10005

;***********************************
[State 3010, Finish SE]
type = PlaySnd
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
value = s1,5
ignorehitpause = 1
removeongethit = 1
persistent = 0

[State 3010, HyperCombo Finish]
type = Explod
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
anim = 4003
pos = 0,0
postype = left
supermove = 1
bindtime = -1
sprpriority = -4
ownpal = 1
ignorehitpause = 1
removeongethit = 1
persistent = 0

;===========================================================================
;---------------------------------------------------------------------------
;撃滅鋼皇牙拳（空中斜め版のみ）
[Statedef 3020]
type     = A
movetype = A
physics  = N
juggle   = 1
poweradd = 0
ctrl     = 0
anim     = 1020
velset   = 0,0

[State 3020, Power]
type = PowerAdd
trigger1 = Time = 0
value = -1000

;***********************************
[State 3020, Anten]
type = SuperPause
trigger1 = Time = 1
pos = 15,-60
anim = s4002
sound = s1,3
darken = 1

[State 3020, Shuuchuu-sen]
type = Explod
trigger1 = time = 1
anim = 4004
postype = p1
pos = 15,-60
sprpriority = 2
bindtime = -1
supermove = 1
ownpal = 1

;***********************************
[State 3020, Speed]
type = VelSet
trigger1 = time = [0,6]
y = 0

[State 3020, Speed]
type = VelSet
trigger1 = time = 7
x = 12
y = 12

[State 3020, Zanzou]
type = AfterImage
trigger1 = Time = 2
Time = 21
PalBright   =   0,  0,  0
PalContrast = 255,255,255
Trans = Add
TimeGap  = 2
FrameGap = 1
length = 8

;***********************************
[State 3020, Effect]
type = Explod
triggerall = StateNo = 3020
trigger1 = time >= 5
trigger1 = timemod = 5,0
anim = 1021
scale = 1.2,1.2
postype = p1
pos = 68,14
sprpriority = 2
bindtime = -1
supermove = 1
ownpal = 1

[State 3020, Ring]
type = Explod
trigger1 = time >= 5
trigger1 = timemod = 6,0
anim = 4302
scale = 1,1
postype = p1
pos = 40,-15
sprpriority = 3
supermove = 1
ownpal = 1

[State 3020, Hit Effect]
type = Explod
triggerall = StateNo = 3020
trigger1 = ((enemy,MoveType = H) && (MoveHit) && (TimeMod = 3,0))
anim = 4303
scale = 1,1
facing = -1
postype = p2
pos = 0,-70
sprpriority = 1
bindtime = -1
supermove = 1
ownpal = 1
Random = 80,60
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State 3020, Kaname Voice]
type = PlaySnd
trigger1 = time = 1
value = s4,8

[State 3020, SE]
type = PlaySnd
trigger1 = AnimElem = 2
value = s1,4

;***********************************
[State 3020, Hit]
type = HitDef
trigger1 = AnimElem = 3
attr             = A, HA
animtype         = Back
damage           = ceil(250+(GameTime%2*10/2)),25
getpower         = 0,0
guardflag        = MA
priority         = 3
pausetime        = 9,10
sparkno          = s4203
sparkxy          = -10,14
guard.sparkno    = s4200
hitsound         = s1,1
guardsound       = s0,6
ground.type      = High
ground.slidetime = 9
ground.hittime   = 9
ground.velocity  = -8,-2
guard.velocity   = -8
air.velocity     = -8,-2
fall.yvelocity = -2.5
fall = 1
fall.recover = 0
envshake.time = 20
envshake.ampl = 7
envshake.freq = 176
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

;***********************************
[State 3020, Change]
type = ChangeState
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = 3021

;***********************************
[State 3020, Finish SE]
type = PlaySnd
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
value = s1,5
ignorehitpause = 1
removeongethit = 1
persistent = 0

[State 3020, HyperCombo Finish]
type = Explod
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
anim = 4003
pos = 0,0
postype = left
supermove = 1
bindtime = -1
sprpriority = -4
ownpal = 1
ignorehitpause = 1
removeongethit = 1
persistent = 0

;---------------------------------------------------------------------------
;撃滅鋼皇牙拳（空中斜め版のみ）の着地モーション
[Statedef 3021]
type     = S
movetype = I
physics  = N
juggle   = 0
poweradd = 0
ctrl     = 0
anim     = 1022
velset   = 0,0

[State 3021, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 3021, Speed]
type = VelSet
trigger1 = time = [0,6]
x = 0
y = 0

[State 3021, Speed]
type = VelSet
trigger1 = time >= 7
x = 6

[State 3021, Shake]
type = EnvShake
trigger1 = time = 1
time  = 10
ampl  = 10
freq  = 100
phase = 100

;***********************************
[State 3021, Shibuki]
type = Explod
trigger1 = Time = 1
anim = 4106
scale = 1,1
postype = p1
pos = 0,0
sprpriority = 2
supermove = 1
ownpal = 1

[State 3021, Shibuki]
type = Explod
trigger1 = Time = 1
anim = 4107
scale = 1,1
postype = p1
pos = 0,0
sprpriority = 4
supermove = 1
ownpal = 1

;***********************************
[State 3021, SE]
type = PlaySnd
trigger1 = Time = 1
value = s2,0

;***********************************
[State 3021, Change]
type = ChangeState
trigger1 = Time = 14
value = 11
ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;裂鬼衝破
[Statedef 3100]
type     = S
movetype = A
physics  = N
juggle   = 1
poweradd = 0
ctrl     = 0
anim     = 2000
velset   = 0,0

[State 3100, RekkiShouha-Flag]
type = VarSet
triggerall = var(5) = 1
trigger1 = time = [0,52]
v = 39
value = 5
ignorehitpause = 1
Persistent = 1

[State 3100, Power]
type = PowerAdd
trigger1 = Time = 0
value = -1000

;***********************************
[State 3100, Anten]
type = SuperPause
trigger1 = Time = 1
pos = -18,-45
anim = s4002
sound = s1,3
darken = 1

[State 3100, Shuuchuu-sen]
type = Explod
trigger1 = time = 1
anim = 4004
postype = p1
pos = -18,-45
sprpriority = 2
bindtime = -1
supermove = 1
ownpal = 1

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
[State 3100, HC Shibuki]
type = Explod
trigger1 = time = 1
anim = 4102
scale = 1,1
postype = p1
pos = -20,0
sprpriority = 4
supermove = 1
ownpal = 1

[State 3100, HC Shibuki]
type = Explod
trigger1 = time = 1
anim = 4100
scale = 1.5,1
postype = p1
pos = 0,0
sprpriority = -1
supermove = 1
ownpal = 1

;***********************************
[State 3100, Muteki]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 15

[State 3100, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 58
PalBright   =   0,  0,  0
PalContrast = 255,255,255
Trans = Add
TimeGap  = 2
FrameGap = 1
length = 8

[State 3100, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 3100, Speed]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0

;***********************************
[State 3100, Helper]
type = Helper
trigger1 = AnimElemTime(5) = 0
name = "Rasen"
stateno = 4010
ID = 4010
pos = 0,-70
keyctrl = 0
postype = p1
ownpal = 1
persistent = 0
size.xscale = 2
size.yscale = 0.6

;***********************************
[State 3100, Huuatsu]
type = Explod
trigger1 = AnimElemTime(5) = 0
anim = 4108
scale = 1,1
postype = p1
pos = 130,-70
sprpriority = 5
removetime = 40
supermove = 1
ownpal = 1

[State 3100, Shibuki]
type = Explod
trigger1 = time = 6
anim = 4101
scale = 1,1
postype = p1
pos = 0,0
sprpriority = 4
supermove = 1
ownpal = 1

[State 3100, Shibuki]
type = Explod
trigger1 = time = 6
anim = 4100
scale = 1,1
postype = p1
pos = 0,0
sprpriority = -1
supermove = 1
ownpal = 1

;***********************************
[State 3100, Kaname Voice]
type = PlaySnd
trigger1 = time = 1
value = s3,6

[State 3100, Kaname Voice]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = s5,1

[State 3100, SE]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = s1,4

;***********************************
[State 3100, Force]
type = Projectile
trigger1 = AnimElemTime(5) = 0
attr             = S, HP
offset           = 100,-70
velocity         = 11,0
;accel           = 0,0
damage           = ceil(180+(GameTime%2*10/2)),18
getpower         = 0,0
animtype         = Hard
pausetime        = 0,9
;-----------------------------------
projID           = 3100
projanim         = 1101
projhitanim      = 1102
projremanim      = 1102
projscale        = 1,1
projshadow       = -1,-1,-1
projhits         = 1
projmisstime     = 1
projpriority     = 4
projremovetime   = -1
;-----------------------------------
guardflag        = MA
priority         = 3
sparkno          = s4203
guard.sparkno    = s4200
hitsound         = s0,8
guardsound       = s0,6
ground.type      = High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -8,0
air.velocity     = -2,-5
air.animtype     = Back
air.juggle       = 1

;***********************************
[State 3100, Force-Hold]
type = Projectile
triggerall = var(39) = 5 ;((command = "hold_a") || (command = "hold_b") || (command = "hold_c"))
trigger1 = AnimElemTime(7) = 0
trigger2 = AnimElemTime(9) = 0
trigger3 = AnimElemTime(11) = 0
trigger4 = AnimElemTime(13) = 0
attr             = S, HP
offset           = 100,-70
velocity         = 10,0
;accel           = 0,0
damage           = ceil(30+(GameTime%2*10/2)),3
getpower         = 0,0
animtype         = Hard
pausetime        = 0,9
;-----------------------------------
projID           = 3100
projanim         = 1101
projhitanim      = 1102
projremanim      = 1102
projscale        = 1,1
projshadow       = -1,-1,-1
projhits         = 1
projmisstime     = 1
projpriority     = 4
projremovetime   = -1
;-----------------------------------
guardflag        = MA
priority         = 3
sparkno          = s4203
guard.sparkno    = s4200
hitsound         = s0,8
guardsound       = s0,6
ground.type      = High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -8,0
air.velocity     = -2,-5
air.animtype     = Back
air.juggle       = 1

;***********************************
[State 3100, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;***********************************
[State 3100, Finish SE]
type = PlaySnd
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
value = s1,5
ignorehitpause = 1
removeongethit = 1
persistent = 0

[State 3100, HyperCombo Finish]
type = Explod
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
anim = 4003
pos = 0,0
postype = left
supermove = 1
bindtime = -1
sprpriority = -4
ownpal = 1
ignorehitpause = 1
removeongethit = 1
persistent = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;空中裂鬼衝破
[Statedef 3110]
type     = A
movetype = A
physics  = A
juggle   = 1
poweradd = 0
ctrl     = 0
anim     = 2001
velset   = 0,0

[State 3110, RekkiShouha-Flag]
type = VarSet
triggerall = var(5) = 1
trigger1 = time = [0,52]
v = 39
value = 6
ignorehitpause = 1
Persistent = 1

[State 3110, Power]
type = PowerAdd
trigger1 = Time = 0
value = -1000

;***********************************
[State 3110, Anten]
type = SuperPause
trigger1 = Time = 1
pos = -18,-45
anim = s4002
sound = s1,3
darken = 1

[State 3110, Shuuchuu-sen]
type = Explod
trigger1 = time = 1
anim = 4004
postype = p1
pos = -18,-45
sprpriority = 2
bindtime = -1
supermove = 1
ownpal = 1

;***********************************
[State 3110, Muteki]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 15

[State 3110, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 58
PalBright   =   0,  0,  0
PalContrast = 255,255,255
Trans = Add
TimeGap  = 2
FrameGap = 1
length = 8

[State 3110, Speed]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0.1

;***********************************
[State 3110, Helper]
type = Helper
trigger1 = AnimElemTime(5) = 0
name = "Rasen"
stateno = 4010
ID = 4010
pos = 0,-70
keyctrl = 0
postype = p1
ownpal = 1
persistent = 0
size.xscale = 2
size.yscale = 0.6

;***********************************
[State 3110, Huuatsu]
type = Explod
trigger1 = AnimElemTime(5) = 0
anim = 4108
scale = 1,1
postype = p1
pos = 130,-70
sprpriority = 5
removetime = 40
supermove = 1
ownpal = 1

;***********************************
[State 3110, Kaname Voice]
type = PlaySnd
trigger1 = time = 1
value = s3,6

[State 3110, Kaname Voice]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = s5,1

[State 3110, SE]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = s1,4

;***********************************
[State 3110, Force]
type = Projectile
trigger1 = AnimElemTime(5) = 0
attr             = A, HP
offset           = 100,-70
velocity         = 11,0
;accel           = 0,0
damage           = ceil(180+(GameTime%2*10/2)),18
getpower         = 0,0
animtype         = Hard
pausetime        = 0,9
;-----------------------------------
projID           = 3100
projanim         = 1101
projhitanim      = 1102
projremanim      = 1102
projscale        = 1,1
projshadow       = -1,-1,-1
projhits         = 1
projmisstime     = 1
projpriority     = 4
projremovetime   = -1
;-----------------------------------
guardflag        = MA
priority         = 3
sparkno          = s4203
guard.sparkno    = s4200
hitsound         = s0,8
guardsound       = s0,6
ground.type      = High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -8,0
air.velocity     = -2,-5
air.animtype     = Back
air.juggle       = 1

;***********************************
[State 3110, Force-Hold]
type = Projectile
triggerall = var(39) = 6 ;((command = "hold_a") || (command = "hold_b") || (command = "hold_c"))
trigger1 = AnimElemTime(7) = 0
trigger2 = AnimElemTime(9) = 0
trigger3 = AnimElemTime(11) = 0
trigger4 = AnimElemTime(13) = 0
attr             = A, HP
offset           = 100,-70
velocity         = 10,0
;accel           = 0,0
damage           = ceil(30+(GameTime%2*10/2)),3
getpower         = 0,0
animtype         = Hard
pausetime        = 0,9
;-----------------------------------
projID           = 3100
projanim         = 1101
projhitanim      = 1102
projremanim      = 1102
projscale        = 1,1
projshadow       = -1,-1,-1
projhits         = 1
projmisstime     = 1
projpriority     = 4
projremovetime   = -1
;-----------------------------------
guardflag        = MA
priority         = 3
sparkno          = s4203
guard.sparkno    = s4200
hitsound         = s0,8
guardsound       = s0,6
ground.type      = High
ground.slidetime = 14
ground.hittime   = 16
ground.velocity  = -8,0
air.velocity     = -2,-5
air.animtype     = Back
air.juggle       = 1

;***********************************
[State 3110, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 10005

;***********************************
[State 3110, Finish SE]
type = PlaySnd
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
value = s1,5
ignorehitpause = 1
removeongethit = 1
persistent = 0

[State 3110, HyperCombo Finish]
type = Explod
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
anim = 4003
pos = 0,0
postype = left
supermove = 1
bindtime = -1
sprpriority = -4
ownpal = 1
ignorehitpause = 1
removeongethit = 1
persistent = 0

;===========================================================================
;---------------------------------------------------------------------------
;影遊び：開始
[Statedef 3200]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 0
ctrl     = 0
anim     = 2100
velset   = 0,0

[State 3200, Power]
type = PowerAdd
trigger1 = Time = 0
value = -1000

;***********************************
[State 3200, Anten]
type = SuperPause
trigger1 = Time = 1
pos = -22,0
anim = s4002
sound = s1,3
darken = 1

[State 3200, Shuuchuu-sen]
type = Explod
trigger1 = time = 1
anim = 4004
postype = p1
pos = -22,0
sprpriority = 2
bindtime = -1
supermove = 1
ownpal = 1

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
[State 3200, HC Shibuki]
type = Explod
trigger1 = time = 1
anim = 4102
scale = 1,1
postype = p1
pos = -20,0
sprpriority = 4
supermove = 1
ownpal = 1

[State 3200, HC Shibuki]
type = Explod
trigger1 = time = 1
anim = 4100
scale = 1.5,1
postype = p1
pos = 0,0
sprpriority = -1
supermove = 1
ownpal = 1

;***********************************
[State 3200, Width-1]
type = Width
trigger1 = time = [2,17]
value = -15,25

[State 3200, Width-2]
type = Width
trigger1 = time = [21,93]
value = 20,-9

[State 3200, Muteki]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 10

[State 3200, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 76
PalBright   =  90,  0,  0
PalContrast = 255,255,255
Trans = Add1
TimeGap  = 2
FrameGap = 1
length = 8

;***********************************
[State 3200, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 3200, PosAdd-1]
type = PosAdd
trigger1 = AnimElemTime(2) = 0
x = 30

[State 3200, PosAdd-2]
type = PosAdd
trigger1 = AnimElemTime(7) = 0
x = 20

;***********************************
[State 3200, Shibuki]
type = Explod
trigger1 = time = 7
anim = 4101
scale = 1,1
facing = -1
postype = p1
pos = 30,0
sprpriority = 4
supermove = 1
ownpal = 1

[State 3200, Shibuki]
type = Explod
trigger1 = time = 7
anim = 4100
scale = 1,1
postype = p1
pos = 0,0
sprpriority = -1
supermove = 1
ownpal = 1

;***********************************
[State 3200, Kaname Voice]
type = PlaySnd
trigger1 = time = 1
value = s6,6

[State 3200, Kaname Voice]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,4

[State 3200, Kaname Voice]
type = PlaySnd
trigger1 = AnimElemTime(9) = 0
value = s3,5

[State 3200, SE]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
trigger2 = AnimElemTime(9) = 0
value = s0,1

;***********************************
[State 3200, Hit-1]
type = HitDef
trigger1 = AnimElemTime(3) = 0
attr             = S, HA
animtype         = Hard
damage           = 0,0
getpower         = 0,0
guardflag        = HA
priority         = 4
pausetime        = 1,10
sparkno          = s4203
sparkxy          = -10,-60
guard.sparkno    = s4200
hitsound         = s0,8
guardsound       = s0,6
ground.type      = Low
ground.slidetime = 12
ground.hittime   = 15
ground.velocity  = -2,0
air.velocity     = -2,-3

[State 3200, Hit-2]
type = HitDef
trigger1 = AnimElemTime(9) = 0
attr             = S, HA
animtype         = Back
damage           = 0,0
getpower         = 0,0
guardflag        = HA
priority         = 4
pausetime        = 1,10
sparkno          = s4203
sparkxy          = -10,-60
guard.sparkno    = s4200
hitsound         = s0,8
guardsound       = s0,6
ground.type      = High
ground.slidetime = 12
ground.hittime   = 15
ground.velocity  = -2,-3
air.velocity     = -2,-3
fall = 1
fall.recover = 0
P1StateNo = 3201
P2StateNo = 4500
P1Facing = 1
P2Facing = 1

[State 3200, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;影遊び：成功
[Statedef 3201]
type     = U
movetype = A
physics  = U
juggle   = 0
poweradd = 0
ctrl     = 0
anim     = 2101
velset   = 0,0

[State 3201, Muteki]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

;***********************************
[State 3201, Change]
type = ChangeState
triggerall = ((var(5) = 0) && (Time = [30,70]) && (PrevStateNo = 3200))
trigger1 = command = "hyper_2"
value = 3202

[State 3201, Change]
type = ChangeState
triggerall = ((var(5) = 1) && (Time >= 50) && (PrevStateNo = 3200))
trigger1 = 1
value = 3202

[State 3201, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;影遊び：穿弓腿
[Statedef 3202]
type     = S
movetype = A
physics  = N
juggle   = 0
poweradd = 0
ctrl     = 0
anim     = 1200
velset   = 0,0

[State 3202, Muteki]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 3202, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 24
PalBright   =  90,  0,  0
PalContrast = 255,255,255
Trans = Add1
TimeGap  = 2
FrameGap = 1
length = 8

;***********************************
[State 3202, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 3202, Speed]
type = VelSet
trigger1 = time = 5
x = 11
y = 0

;***********************************
[State 3202, SE]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s2,2

;***********************************
[State 3202, Hit]
type = HitDef
trigger1 = time = 5
attr             = S, HA
animtype         = Hard
damage           = 0,0
getpower         = 0,0
guardflag        = 
priority         = 4
pausetime        = 1,5
sparkno          = s4203
sparkxy          = -10,-15
guard.sparkno    = s4200
hitsound         = s1,9
guardsound       = s0,6
ground.type      = Low
ground.slidetime = 9
ground.hittime   = 9
ground.velocity  = -3,0
air.velocity     = -3,-3
P1StateNo = 3203
P2StateNo = 4501
P1Facing = 1
P2Facing = 1

;***********************************
[State 3202, Change]
type = ChangeState
trigger1 = Time = 24
value = 101

;---------------------------------------------------------------------------
;影遊び：穿弓腿成功
[Statedef 3203]
type     = S
movetype = A
physics  = N
juggle   = 0
poweradd = 0
ctrl     = 0
anim     = 2102
velset   = 0,0

[State 3203, Muteki]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 3203, TargetBind]
type = TargetBind
trigger1 = time = 0
pos = 55,0

[State 3203, TargetChange]
type = TargetState
trigger1 = AnimTime = 0
value = 4502

;***********************************
[State 3203, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

;***********************************
[State 3203, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 3204

;---------------------------------------------------------------------------
;影遊び：乱舞
[Statedef 3204]
type     = S
movetype = A
physics  = N
juggle   = 0
poweradd = 0
ctrl     = 0
anim     = 2103
velset   = 0,0

[State 3204, TargetChange]
type = TargetState
trigger1 = AnimTime = 0
value = 4503

;***********************************
[State 3204, Muteki]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 3204, Scroll]
type = ScreenBound
trigger1 = 1
value = 0
MoveCamera = 0,0

[State 3204, HitCount Add]
type = HitAdd
trigger1 = AnimElemTime(4) = 0
trigger2 = AnimElemTime(9) = 0
trigger3 = AnimElemTime(14) = 0
trigger4 = AnimElemTime(19) = 0
trigger5 = AnimElemTime(24) = 0
trigger6 = AnimElemTime(29) = 0
trigger7 = AnimElemTime(35) = 0
trigger8 = AnimElemTime(42) = 0
trigger9 = AnimElemTime(48) = 0
trigger10= AnimElemTime(54) = 0
trigger11= AnimElemTime(60) = 0
trigger12= AnimElemTime(66) = 0
value = 1
IgnoreHitPause = 1
Persistent = 1

[State 3204, EnvColor White]
type = EnvColor
trigger1 = AnimElemTime(4) = 0
trigger2 = AnimElemTime(9) = 0
trigger3 = AnimElemTime(14) = 0
trigger4 = AnimElemTime(19) = 0
trigger5 = AnimElemTime(24) = 0
trigger6 = AnimElemTime(29) = 0
trigger7 = AnimElemTime(35) = 0
trigger8 = AnimElemTime(42) = 0
trigger9 = AnimElemTime(48) = 0
trigger10= AnimElemTime(54) = 0
trigger11= AnimElemTime(60) = 0
trigger12= AnimElemTime(66) = 0
value = 255,255,255
time = 5
under = 1
persistent = 1

;***********************************
[State 3204, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

;***********************************
[State 3204, HitSpark]
type = Explod
trigger1 = AnimElemTime(4) = 0
trigger2 = AnimElemTime(9) = 0
trigger3 = AnimElemTime(14) = 0
trigger4 = AnimElemTime(19) = 0
trigger5 = AnimElemTime(24) = 0
trigger6 = AnimElemTime(29) = 0
trigger7 = AnimElemTime(35) = 0
trigger8 = AnimElemTime(42) = 0
trigger9 = AnimElemTime(48) = 0
trigger10= AnimElemTime(54) = 0
trigger11= AnimElemTime(60) = 0
trigger12= AnimElemTime(66) = 0
anim = 4203
scale = 1,1
facing = ifelse(Random<500,-1,1)
postype = p2
pos = 0,-30
sprpriority = 7
supermove = 1
ownpal = 1
Random = 40,60
OnTop = 1

;***********************************
[State 3204, Kaname Voice]
type = PlaySnd
trigger1 = time = 0
value = s3,8

[State 3204, Hit SE]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
trigger2 = AnimElemTime(9) = 0
trigger3 = AnimElemTime(14) = 0
trigger4 = AnimElemTime(19) = 0
trigger5 = AnimElemTime(24) = 0
trigger6 = AnimElemTime(29) = 0
trigger7 = AnimElemTime(35) = 0
trigger8 = AnimElemTime(42) = 0
trigger9 = AnimElemTime(48) = 0
trigger10= AnimElemTime(54) = 0
trigger11= AnimElemTime(60) = 0
trigger12= AnimElemTime(66) = 0
value = s0,7

;***********************************
[State 3204, Damage]
type = TargetLifeAdd
trigger1 = AnimElemTime(4) = 0
trigger2 = AnimElemTime(9) = 0
trigger3 = AnimElemTime(14) = 0
trigger4 = AnimElemTime(19) = 0
trigger5 = AnimElemTime(24) = 0
trigger6 = AnimElemTime(29) = 0
trigger7 = AnimElemTime(35) = 0
trigger8 = AnimElemTime(42) = 0
trigger9 = AnimElemTime(48) = 0
trigger10= AnimElemTime(54) = 0
trigger11= AnimElemTime(60) = 0
trigger12= AnimElemTime(66) = 0
value = -2
kill = 0

;***********************************
[State 3204, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 3205

;---------------------------------------------------------------------------
;影遊び：フィニッシュ撃砕刃
[Statedef 3205]
type     = S
movetype = A
physics  = S
juggle   = 0
poweradd = 0
ctrl     = 0
anim     = 2104
velset   = 0,0

[State 3205, TargetChange]
type = TargetState
trigger1 = AnimElemTime(4) = 0
value = 4504

[State 3205, Muteki]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 3205, Zanzou]
type = AfterImage
trigger1 = Time = 1
Time = 90;62
PalBright   =  90,  0,  0
PalContrast = 255,255,255
Trans = Add1
TimeGap  = 2
FrameGap = 1
length = 8

[State 3205, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 3205, Shake]
type = EnvShake
trigger1 = AnimElemTime(4) = 0
time = 25
ampl = 7
freq = 176
phase = 100

[State 3205, HitCount Add]
type = HitAdd
trigger1 = AnimElemTime(4) = 0
value = 1
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State 3205, Void Power]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 1225
scale = 1,1
postype = p1
pos = 0,0
sprpriority = 7
supermove = 1
ownpal = 1

[State 3205, Void Power]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 4109
scale = 1,1
postype = p1
pos = 60,0
sprpriority = 6
supermove = 1
ownpal = 1

[State 3205, Shibuki]
type = Explod
trigger1 = time = 31
anim = 4101
scale = 1,1
postype = p1
pos = 0,0
sprpriority = 4
supermove = 1
ownpal = 1

[State 3205, Shibuki]
type = Explod
trigger1 = time = 31
anim = 4100
scale = 1,1
postype = p1
pos = 0,0
sprpriority = -1
supermove = 1
ownpal = 1

[State 3205, Shuuchuu-sen]
type = Explod
trigger1 = time = 2
anim = 4002
postype = p1
pos = -15,-50
scale = 1,1
sprpriority = 2
bindtime = -1
supermove = 1
ownpal = 1

[State 3205, Hit Spark]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 4203
postype = p1
pos = 60,-90
scale = 1,1
sprpriority = 7
bindtime = -1
supermove = 1
ownpal = 1

;***********************************
[State 3205, Kaname Voice]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s4,9

[State 3205, SE]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s1,4

[State 3205, SE]
type = PlaySnd
trigger1 = time = 2
value = s1,3

[State 3205, Hit SE]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = s1,1

;***********************************
[State 3205, Damage]
type = TargetLifeAdd
trigger1 = AnimElemTime(4) = 0
value = ceil(-300-(const(data.attack)/5))

;***********************************
[State 3205, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;***********************************
[State 3205, Finish SE]
type = PlaySnd
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
value = s1,5
ignorehitpause = 1
removeongethit = 1
persistent = 0

[State 3205, HyperCombo Finish]
type = Explod
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
anim = 4003
pos = 0,0
postype = left
supermove = 1
bindtime = -1
sprpriority = -4
ownpal = 1
ignorehitpause = 1
removeongethit = 1
persistent = 0

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
; ハイパーコンボ系・その他
;===========================================================================
;---------------------------------------------------------------------------
;眠れる獅子用ヴォイドパワー
[Statedef 4000] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 4105
SprPriority = 3

[State 4000, Bind]
type = BindToParent
trigger1 = 1
pos = 102,-60
IgnoreHitPause = 1
Persistent = 1

;[State 4000, Zanzou]
;type = AfterImage
;trigger1 = Time = 0
;Time = 20
;PalBright   =   0,  0,  0
;PalContrast =  50, 10,100
;Trans = Add

;***********************************
[State 4000, Effect]
type = Explod
trigger1 = time >= 0
trigger1 = timemod = 4,0
anim = 1011
scale = 1.3,1.3
postype = p1
pos = 20,0
sprpriority = 5
bindtime = -1
supermove = 1
ownpal = 1

;***********************************
[State 4000, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

[State 4000, Push]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 4000, Armor]
type = HitOverride
trigger1 = time >= 0
attr = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AT, AP
time = -1
stateno = 9999
ignorehitpause = 1

[State 4000, Change]
type = ChangeState
trigger1 = (Parent,MoveType != A) || (time = 30)
trigger2 = ((Parent,StateNo = 3000) && (Parent,AnimElemTime(12) >= 0))
trigger3 = ((Parent,StateNo = 3010) && (Parent,AnimElemTime(12) >= 0))
value = 4001

;---------------------------------------------------------------------------
;眠れる獅子用ヴォイドパワー消える
[Statedef 4001] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 1001
SprPriority = 7

[State 4001, Color Gradation]
type = Palfx
trigger1 = 1
Mul = ceil(255-(StateTime*5)),ceil(255-(StateTime*5)),ceil(255-(StateTime*5))
time = 1
IgnoreHitPause = 1
Persistent = 1

[State 4001, Armor]
type = HitOverride
trigger1 = time >= 0
attr = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AT, AP
time = -1
stateno = 9999
ignorehitpause = 1

[State 4001, Change]
type = DestroySelf
trigger1 = AnimTime = 0

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;裂鬼衝破用横螺旋
[Statedef 4010] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 2003
SprPriority = 6

[State 4010, Bind]
type = BindToParent
trigger1 = 1
pos = 0,-70
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State 4010, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

[State 4010, Push]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 4010, Armor]
type = HitOverride
trigger1 = time >= 0
attr = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AT, AP
time = -1
stateno = 9999
ignorehitpause = 1

[State 4010, Color Gradation]
type = Palfx
trigger1 = 1
Mul = ceil(255-(StateTime*5)),ceil(255-(StateTime*5)),ceil(255-(StateTime*5))
time = 1
IgnoreHitPause = 1
Persistent = 1

[State 4010, Change]
type = ChangeState
trigger1 = (Parent,MoveType != A) || (time = 50)
trigger2 = ((Parent,StateNo = 3100) && (Parent,AnimTime = 0))
trigger3 = ((Parent,StateNo = 3110) && (Parent,AnimTime = 0))
value = 4011

;---------------------------------------------------------------------------
;裂鬼衝破用横螺旋消える
[Statedef 4011] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 2004
SprPriority = 6

[State 4011, Armor]
type = HitOverride
trigger1 = time >= 0
attr = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AT, AP
time = -1
stateno = 9999
ignorehitpause = 1

[State 4011, Change]
type = DestroySelf
trigger1 = AnimTime = 0

;===========================================================================
; ハイパーコンボ系・相手側
;===========================================================================
;---------------------------------------------------------------------------
;ほぼ垂直の吹っ飛ばし（「影遊び」に使用中）
[Statedef 4500]
type     = A
movetype = H
physics  = N
ctrl     = 0
;velset   = 0,0

[State 4500, Muteki]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 50

[State 4500, Speed]
type = VelSet
trigger1 = time = 1
x = -0.8
y = -16

[State 4500, Add Speed]
type = VelAdd
trigger1 = time >= 6
y = .6

[State 4500, P2Anim-1]
type = ChangeAnim2
trigger1 = time = 0
value = 5051

[State 4500, P2Anim-2]
type = ChangeAnim2
trigger1 = time = 20
value = 5061

[State 4500, Return State]
type = SelfState
trigger1 = ((Vel Y > 0) && (Pos Y >= 0))
value = 5100

;---------------------------------------------------------------------------
;地上食らい状態に移行させるためのモノ（「影遊び」に使用中）
[Statedef 4501]
type     = S
movetype = H
physics  = N
velset   = 0,0

[State 4501, Anim]
type = ChangeAnim2
Trigger1 = Time = 0
value = 2150

[State 4501, Muteki]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 4501, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 4501, Return State]
type = SelfState
trigger1 = time = 500
value = 5100

;---------------------------------------------------------------------------
;乱舞中の地上食らい状態（「影遊び」に使用中）
[Statedef 4502]
type     = S
movetype = H
physics  = N
velset   = 0,0

[State 4502, Anim]
type = ChangeAnim2
Trigger1 = Time = 0
value = 2151

[State 4502, Muteki]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 4502, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 4502, Return State]
type = SelfState
trigger1 = time = 500
value = 5100

;---------------------------------------------------------------------------
;撃砕刃前の地上食らい状態（「影遊び」に使用中）
[Statedef 4503]
type     = S
movetype = H
physics  = N
velset   = 0,0

[State 4503, Anim]
type = ChangeAnim2
Trigger1 = Time = 0
value = 2152

[State 4503, Muteki]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 4503, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 4503, Return State]
type = SelfState
trigger1 = time = 100
value = 5100

;---------------------------------------------------------------------------
;ほぼ垂直の吹っ飛ばし２（「影遊び」フィニッシュ）
[Statedef 4504]
type     = A
movetype = H
physics  = N
ctrl     = 0
;velset   = 0,0

[State 4504, Muteki]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 50

[State 4504, Speed]
type = VelSet
trigger1 = time = 1
x = -0.8
y = -25

[State 4504, Add Speed]
type = VelAdd
trigger1 = time >= 6
y = .8

[State 4504, BodyColor]
type = PalFX
trigger1 = Time = 0
time = 50
add = 20,0,100
mul = 100,100,100
sinadd = 500,500,500,100

[State 4504, P2Anim-1]
type = ChangeAnim2
trigger1 = time = 0
value = 5051

[State 4504, P2Anim-2]
type = ChangeAnim2
trigger1 = time = 20
value = 5061

[State 4504, Return State]
type = SelfState
trigger1 = ((Vel Y > 0) && (Pos Y >= 0))
value = 5100

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

