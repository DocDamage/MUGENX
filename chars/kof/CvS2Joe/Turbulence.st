;---------------------------------------------------------------------------
; Turbulence Upper
[Statedef 2300]
type     = S
movetype = A
physics  = N
anim     = 2300
poweradd = 0
ctrl     = 0
SprPriority = 3
Velset = 0

[State 2000, Wid]
type = Width
trigger1 = 1
edge = 35

[State 3010, 1]
type = NotHitBy
trigger1 = Time < 116
value = SCA

[State 2000, PowAdd]
type = PowerAdd
trigger1 = Time = 2
value = -3000
persistent = 0

[State 2000, turn]
type = posadd
triggerall = p2bodydist X < -25
triggerall = time = 1
trigger1 = prevstateno = 800
trigger2 = prevstateno = 801
persistent = 0
value = 19

[State 2000, turn]
type = turn
triggerall = p2bodydist X < -25
triggerall = time = 1
trigger1 = prevstateno = 800
trigger2 = prevstateno = 801
persistent = 0

[State 2000, 1]
type = SuperPause
trigger1 = Time = 2
time = 40
darken = 0
anim = -1
persistent = 0
movetime = 40

[State 2000, 1]
type = BGPalFX
trigger1 = animelem = 1
time = 42
add = -128,-128,-16 

[state 2000, 1]
type = Helper
trigger1 = Time = 2
ID = 7031
name = "superspark"
pos = 4,-75
stateno = 7031
ownpal = 1
supermovetime = 999
pausemovetime = 999

[state 2100, RedAfterImage]
type = AfterImage
trigger1 = Time = 2
time = 2
timegap = 1
framegap = 10
trans = add1
length = 30
paladd = 0,0,0
palmul = .9,.9,.9
palcontrast = 160,20,20
palpostbright = 0,0,0
[State 2000, AfterImagePersist]
type = AfterImageTime
trigger1 = Time > 2
time = 2

[State 2300, AnimFix]
type = ChangeAnim
trigger1 = Anim = 2300
trigger1 = AnimElem = 12
value = 2300
elem = 13

[State 2500, SuperSFX]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2000,0
channel = 0

[State 2300, Wid]
type = Width
trigger1 = 1
edge = 35

[State 2300, Dash]
type = VelSet
trigger1 = Anim = 2300
trigger1 = AnimElem = 9, = 1
x = 6.5

[State 2300, Friction]
type = VelAdd
trigger1 = AnimElem = 9, > 1
trigger1 = AnimElem = 14, < 2
trigger1 = Vel X >= .25
x = -.25

[State 2300, Stop]
type = VelSet
trigger1 = Anim = 2300
trigger1 = AnimElem = 14, = 2
x = 0
;-----------right hook, Hurricane part 1
[State 210, 1]
type = HitDef
trigger1 = Anim = 2300
trigger1 = AnimElem = 15 || AnimElem = 16
trigger1 = !MoveContact
attr = S, NA
damage = ceil((1+.15*(life<=300)) * 60),5
animtype = Hard
guardflag = M
hitflag = MAF
getpower = 40,160
pausetime = 6,8
sparkno = S(8003+Random%7)
guard.sparkno = S8030
sparkxy = -5, -85
hitsound = S5,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 24
ground.velocity = -5
air.velocity = -4,-3
persistent = 0

[State 1000, Expl]
type = Explod
trigger1 = Anim = 2300
trigger1 = AnimElem = 21
anim = 1050
ID = 1050
bindtime = -1
sprpriority = 3
RemoveOnGetHit = 1

[state 2500, 1]
type = Helper
trigger1 = Anim = 2300
trigger1 = AnimElem = 22
ID = 2010
name = "Hurricane"
pos = 65,0
stateno = 2340
ownpal = 1

[State 2300, Miss]
type = ChangeState
trigger1 = !Movehit
trigger1 = AnimElem = 27
value = 0
ctrl = 1
;-----------Tiger & Heel
[State 2100, PAdd2]
type = PosAdd
triggerall = Anim = 2300
trigger1 = AnimElem = 30
trigger2 = AnimElem = 31
x = 15

[State 1100, VSetTiger]
type = VelSet
triggerall = Anim = 2300
trigger1 = AnimElem = 32
x = 2
y = -9

[State 1100, VAdd]
type = VelAdd
triggerall = Anim = 2300
trigger1 = AnimElem = 32, > 0
y = .35

[State 2100, Air]
type = null;StateTypeSet
triggerall = Anim = 2300
trigger1 = AnimElem = 32
statetype = A
physics = A
[State 2300, GravityFix]
type = Gravity
trigger1 = Anim = 2300
trigger1 = AnimElem = 32, > 0

[State 1100, Dust1]
type = Explod
triggerall = Anim = 2300
trigger1 = AnimElem = 30
anim = 7020
facing = -1
sprpriority = 5
Ownpal = 1
[State 1100, Dust2]
type = Explod
triggerall = Anim = 2300
trigger1 = AnimElem = 31
anim = 7000
ownpal = 1
sprpriority = 5

[State 1500, VelHeel]
type = velset
triggerall = Anim = 2300
trigger1 = AnimElem = 37
x = 3.5
y = -5

[State 1300, SlashFX]
type = Explod
triggerall = Anim = 2300
trigger1 = AnimElem = 39
anim = 1350
ID = 1350
sprpriority = 4
bindtime = -1
persistent = 0
removeongethit = 1

[State 2100, Tigerhit]
type = HitDef
triggerall = Anim = 2300
trigger1 = AnimElem = 32
attr = S, HA
animtype  = Back
damage    = ceil((1+.15*(life<=300)) * 65),5
priority  = 7
hitflag = MAF
guardflag = MA
pausetime = 6,8
sparkno = S(8003+Random%7 + 10*(Random<500))
guard.sparkno = S8030
sparkxy = -25,-75
hitsound   = S5,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 14
ground.velocity = -3, -6
guard.velocity = -5
air.velocity = -3,-5
fall = 1
fall.recover = 0
envshake.time = 10
envshake.ampl = 2

[State 1500, HeelHit]
type = HitDef
trigger1 = Anim = 2300
trigger1 = AnimElem = 41
attr = A, HA
damage = ceil((1+.15*(life<=300)) * 65),5
animtype = Hard
guardflag = HA
hitflag = MAF
getpower = 50,0
pausetime = 6,8
sparkno = S(8013+Random%7 - 10*(Random<500))
guard.sparkno = S8030
sparkxy = -15, -40
hitsound = S5,4
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 20
ground.velocity = 0,8
air.velocity = -4,8
fall = 1
fall.recover = 0
fall.envshake.time = 12
fall.envshake.ampl = -4
guard.velocity = -8
p2stateno = 2310

[State 2100, Land]
type = null;StateTypeSet
trigger1 = Anim = 2300
trigger1 = AnimElem = 40;, > 0
;trigger1 = Vel Y > 0 && Pos Y >= -5
statetype = S
physics = N

[State 2101, Land]
type = ChangeAnim
triggerall = Anim = 2300
trigger1 = AnimElem = 41, > 0
trigger1 = Vel Y > 0 && Pos Y >= -15
value = 2301
;-----------anim 2301
;-----------second Heel
[State 1500, Land1]
type = VelSet
trigger1 = Anim = 2301 && AnimElem = 1
x = 0
y = 0
[State 1500, Land1]
type = PosSet
trigger1 = Anim = 2301 && AnimElem = 1
y = 0
[State 2100, Land]
type = null;StateTypeSet
trigger1 = Anim = 2301 && AnimElem = 1, = 2
;statetype = S
;physics = S

[State 2300, GravityFix]
type = Gravity
trigger1 = Anim = 2301
triggerall = Animelem = 5, > 0

[State 52, SFX]
type = PlaySnd
trigger1 = Anim = 2301 && AnimElem = 1
value = 40,1
channel = 2
persistent = 0
[State 52, Dust]
type = explod
trigger1 = Anim = 2301 && AnimElem = 1
anim = 7010
ID = 7010
sprpriority = -2
postype = p1
ownpal = 1
persistent = 0

[State 1500, VelHeel]
type = velset
triggerall = Anim = 2301
trigger1 = AnimElem = 5
x = 3.5
y = -5

[State 1100, VAdd]
type = null;VelAdd
triggerall = Anim = 2301
trigger1 = AnimElem = 5, > 0
y = .35

[State 1300, SlashFX]
type = Explod
triggerall = Anim = 2301
trigger1 = AnimElem = 7
anim = 1350
ID = 1350
sprpriority = 4
bindtime = -1
persistent = 0
removeongethit = 1

[State 1500, HeelHit]
type = HitDef
trigger1 = Anim = 2301
trigger1 = AnimElem = 9
attr = A, HA
damage = ceil((1+.15*(life<=300)) * 62),5
animtype = Hard
guardflag = HA
hitflag = MAF
getpower = 50,0
pausetime = 6,8
sparkno = S(8013+Random%7 - 10*(Random<500))
guard.sparkno = S8030
sparkxy = -15, -40
hitsound = S5,4
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 20
ground.velocity = 0,8
air.velocity = -4,8
fall = 1
fall.recover = 0
fall.envshake.time = 12
fall.envshake.ampl = -4
guard.velocity = -8
p2stateno = 2310

[State 2101, Land]
type = ChangeAnim
triggerall = Anim = 2301
trigger1 = AnimElem = 11, > 0
trigger1 = Vel Y > 0 && Pos Y >= -15
value = 2302
;-----------anim 2302
;-----------punch, Cyclone
[State 1500, Land1]
type = VelSet
trigger1 = Anim = 2302 && AnimElem = 1
x = 0
y = 0
[State 1500, Land1]
type = PosSet
trigger1 = Anim = 2302 && AnimElem = 1
y = 0
[State 2100, Land]
type = StateTypeSet
trigger1 = Anim = 2302 && AnimElem = 1, = 2
statetype = S
physics = S

[State 52, SFX]
type = PlaySnd
trigger1 = Anim = 2302 && AnimElem = 1
value = 40,1
channel = 2
persistent = 0
[State 52, Dust]
type = explod
trigger1 = Anim = 2302 && AnimElem = 1
anim = 7010
ID = 7010
sprpriority = -2
postype = p1
ownpal = 1
persistent = 0

[State 1500, Punch]
type = HitDef
trigger1 = Anim = 2302
trigger1 = AnimElem = 4
attr = A, HA
damage = ceil((1+.15*(life<=300)) * 60),5
animtype = Up
guardflag = HA
hitflag = MAF
getpower = 50,0
pausetime = 6,8
sparkno = S(8013+Random%7 - 10*(Random<500))
guard.sparkno = S8030
sparkxy = -15, -87
hitsound = S5,4
guardsound = S6,0
ground.type = Low
air.type = Low
ground.slidetime = 12
ground.hittime  = 20
ground.velocity = 1,-2
air.velocity = 1,-2
fall = 1
fall.recover = 0
fall.envshake.time = 12
fall.envshake.ampl = -4
guard.velocity = -8

[State 2300, Snap]
type = TargetBind
trigger1 = Anim = 2302
trigger1 = AnimElem = 4, = 0
pos = 55,-35

[State 1000, Expl]
type = Explod
trigger1 = Anim = 2302
trigger1 = AnimElem = 9
anim = 1050
ID = 1050
bindtime = -1
sprpriority = 3
RemoveOnGetHit = 1

[state 2500, 1]
type = Helper
trigger1 = Anim = 2302
trigger1 = AnimElem = 10
ID = 2010
name = "Hurricane"
pos = 65,0
stateno = 2341
ownpal = 1
;-----------Tiger kick
[State 1100, Air]
type = StateTypeSet
trigger1 = Anim = 2302
trigger1 = AnimElem = 21
statetype = A
physics = A

[State 1100, BurnFX1]
type = Explod
trigger1 = Anim = 2302
trigger1 = AnimElem = 21
pos = 2, 1
anim = 1150
ID = 1150
bindtime = -1
removetime = -1
sprpriority = 4
removeongethit = 1
[State 1100, StopFX]
type = RemoveExplod
trigger1 = Anim = 1101
ID = 1150
[State 1100, BurnFX2]
type = Explod
trigger1 = Anim = 1101
pos = 2, 1
anim = 1151
ID = 1151
bindtime = -1
sprpriority = 4
persistent = 0
removeongethit = 1

[State 1100, Dust1]
type = Explod
trigger1 = Anim = 2302
trigger1 = AnimElem = 20
anim = 7020
facing = -1
sprpriority = 5
Ownpal = 1
[State 1100, Dust2]
type = Explod
trigger1 = Anim = 2302
trigger1 = AnimElem = 20
anim = 7000
ownpal = 1
sprpriority = 5
[State 1100, SFX]
type = PlaySnd
trigger1 = Anim = 2302
trigger1 = AnimElem = 20
value = 40,0
channel = 2

[State 1100, PAdd]
type = PosAdd
trigger1 = Anim = 2302
trigger1 = AnimElem = 19
x = 16

[State 1100, VSet]
type = Velset
trigger1 = Anim = 2302
trigger1 = AnimElem = 21
x = 2.5
y = -13.5

[State 1100, VAdd]
type = VelAdd
trigger1 = Anim = 2302
trigger1 = AnimElem = 21,> 0
trigger2 = Anim = 1101
trigger2 = AnimElem = 1, > 0
y = .5

[State 1100, ChAnim]
type = ChangeAnim
trigger1 = anim = 2302
trigger1 = animElem = 21, > 0
trigger1 = Vel Y >= 0
value = 1101

[State 1100, Tigerhit]
type = HitDef
trigger1 = Anim = 2302
trigger1 = AnimElem = 21
attr = S, SA
animtype  = Back
damage    = ceil((1+.15*(life<=300)) * 62),5
priority  = 7
hitflag = MAF
guardflag = MA
pausetime = 6,8
sparkno = S(8003+Random%7)
guard.sparkno = S8030
sparkxy = -20,-70
hitsound   = S5,1
guardsound = S6,0
ground.type = Low
air.type = Low
ground.slidetime = 12
ground.hittime  = 14
ground.velocity = -3, -6
guard.velocity = -5
air.velocity = -3,-5
fall = 1
fall.recover = 0
envshake.time = 10
envshake.ampl = 2
;-----------land
[State 1100, Land2]
type = StateTypeSet
trigger1 = Anim = 1101
trigger1 = Pos Y >= -10 && Vel Y > 0
statetype = S
physics = N
[State 1100, Land1]
type = ChangeAnim
trigger1 = Anim = 1101
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 47
[State 1100, Land2]
type = StateTypeSet
trigger1 = Anim = 47
statetype = S
physics = S

[State 1105, LandPos]
type = PosSet
trigger1 = Anim = 47
y = 0
[State 1105, LandVel]
type = VelSet
trigger1 = Anim = 47
x = 0
y = 0
[State 1100, SFX]
type = PlaySnd
trigger1 = Anim = 47
value = 40,1
channel = 2
persistent = 0
[State 1500, Dust2]
type = explod
trigger1 = Anim = 47
anim = 7010
ID = 7010
sprpriority = -2
postype = p1
ownpal = 1
persistent = 0

[State 1105, End]
type = ChangeState
trigger1 = Anim = 47
trigger1 = Animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Hit by Turbulence Upper
;---------------------------------------------------------------------------
; smashed down...
[Statedef 2310]
type = S
movetype = H
physics = N
velset = 0,0;-4,8

[State 2300, Wid]
type = Width
trigger1 = 1
edge = 25,-25

[State 2310, Vels]
type = VelSet
trigger1 = !Time
trigger1 = PrevStateNo != 2311
x = -4
y = 8
[State 2310, Vels]
type = VelSet
trigger1 = !Time
trigger1 = PrevStateNo = 2311
x = -2
y = 8

[State 2310, Gethit]
type = ChangeAnim
trigger1 = !Time
value = 5050

[State 2310, Bounce]
type = ChangeState
trigger1 = Pos Y >= -8.1
value = 2311
;---------------------------------------------------------------------------
; ... and bounce
[Statedef 2311]
type = S
movetype = H
physics = N
velset = 0,0

[State 2311, HitGround]
type = PosSet
trigger1 = !Time
y = 0

[State 2311, BounceGround]
type = ChangeAnim2
trigger1 = !Time
value = 5081
[State 2311, BounceUp]
type = VelSet
trigger1 = Anim = 5081 && AnimElemNo(0) = 2
x = -1.5
y = -7.5

[State 2311, FallAgain]
type = VelAdd
trigger1 = Anim = 5081 && AnimElemNo(0) >= 2
trigger2 = Anim = 5061
y = .45
persistent = 1
[State 2311, FallAgain]
type = ChangeAnim
trigger1 = Anim = 5081 && AnimElemNo(0) >= 2 && Vel Y >= -1
trigger1 = SelfAnimExist(5061)
value = 5061
elem = 3
;---------------------------------------------------------------------------
; Turbulence
;---------------------------------------------------------------------------
; Hurricane
[Statedef 2340]
type     = A
movetype = A
physics  = N
anim     = 1060
poweradd = 0
ctrl     = 0
SprPriority = 5
Velset = 6,0

[State 1010, Shad]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1010, HurriSFX]
type = PlaySnd
trigger1 = !Time
value = 1050,0
channel = 2

[State 1010, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP

[State 2010, HOR]
type = HitOverRide
trigger1 = 1
time = -1
attr = SCA
stateno = 1060

;[State 1000, 1]
;getpower = 50,0

[State 1050, Dust]
type = Explod
trigger1 = !NumExplod(1065)
anim = 1065
ID = 1065
pos = -22,0
bindtime = -1
sprpriority = 4
removeongethit = 1

[State 2010, Hit]
type = HitDef
trigger1 = 1
attr = S, SP
damage = 60,7
priority = 7, Hit
animtype = Medium
guardflag = MA
hitflag = MAF;DP
getpower = 0,0
pausetime = 0,6
sparkno = S(8003+Random%7+10*(Random<500))
sparkxy = -10, -65
guard.sparkno = S8030
hitsound = S5,4
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 26
ground.velocity = -1.5, -5
air.velocity = -2,-5
envshake.time = 15
envshake.ampl = -6
ground.cornerpush.veloff = 0.0001
air.cornerpush.veloff = 0.0001
fall = (Parent, AnimElem = 9, > 0)
fall.recover = 0
ID = 2340

[State 1010, End]
type = ChangeState
trigger1 = frontedgedist < -65 || backedgedist < 0
trigger2 = Time = 10
trigger3 = MoveContact
value = 1060
;---------------------------------------------------------------------------
; Cyclone
[Statedef 2341]
type     = A
movetype = A
physics  = N
anim     = 2010
poweradd = 0
ctrl     = 0
SprPriority = 5
Velset = 4,0

[State 1010, Shad]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1010, HurriSFX]
type = PlaySnd
trigger1 = !Time
value = 1050,0
channel = 2

[State 1010, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP

[State 2010, HOR]
type = HitOverRide
trigger1 = 1
time = -1
attr = SCA
stateno = 1060

;[State 1000, 1]
;getpower = 50,0

[State 1050, Dust]
type = Explod
trigger1 = !NumExplod(1065)
anim = 1065
ID = 1065
pos = -22,0
bindtime = -1
sprpriority = 4
removeongethit = 1

[State 2010, Hit]
type = HitDef
trigger1 = 1
attr = S, SP
damage = 65,7
priority = 7, Hit
animtype = Medium
guardflag = MA
hitflag = MAF;DP
getpower = 0,0
pausetime = 0,6
sparkno = S(8003+Random%7+10*(Random<500))
sparkxy = -10, -65
guard.sparkno = S8030
hitsound = S5,4
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 26
ground.velocity = -1, -3
air.velocity = -1,-5
envshake.time = 15
envshake.ampl = -6
ground.cornerpush.veloff = 0.0001
air.cornerpush.veloff = 0.0001
fall = (Parent, AnimElem = 9, > 0)
fall.recover = 0
ID = 2340

[State 1010, End]
type = ChangeState
trigger1 = frontedgedist < -65 || backedgedist < 0
trigger2 = Time = 10
trigger3 = MoveContact
value = 2011

; target states / anim :
; golden heel : st 5020 act 5050=>5030, 5035
; on hit ground, st 5100 anim 5100, bounce 5101/5160
