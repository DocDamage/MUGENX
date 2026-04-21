;  EX Hadoken 
[Statedef 2000]
type = U
movetype = A
physics = N
poweradd = -500
velset = 0, 0
ctrl = 0
anim = 1001

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Time = 10
value = 1,5
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Time = 10
value = 0,4
volume = 255



[State 0, ]
type = PalFX
trigger1 = time%2 = 0
time = 1
add = 180,120,0


[State 1020, Afterimage]
type = AfterImage
trigger1 = time = 0
length = 6
framegap = 2
timegap =2
PalBright   =  30, 30,  0
PalContrast =  140,140,40
;PalAdd      = -10,-10,-10
PalMul      = .85,.85,.5
Trans = add
time = 15

[State 1020, Afterimage]
type = AfterImageTime
trigger1 = Time <= 60
time = 4


[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =6
postype = p1
pos = 60,-60
stateno = 2001
bindtime = 1
ownpal = 1
name = "Hadoken"
ID = 11000

[State 1000, ChangeState]
type = ChangeState
trigger1 = animTime =0
value = 0
ctrl = 1


; EX Fireball
[Statedef 2001]
type = S
movetype = A
physics = N
velset = 7,0
sprpriority = 2
juggle = 2
ctrl = 0



[State 0, 1]
type = ChangeAnim
trigger1 = !time && anim !=1006
value = 1006
;elem = 
;ignorehitpause = 0
;persistent = 1



;[State -10, 1]
;type = AttackMulSet
;trigger1 = 1
;value = parent, fvar(0) 
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = Explod
trigger1 = gametime%3 = 0
anim = 1009
postype = p1
pos = -50,0
sprpriority = 3
supermove = 1
ownpal = 1
random = 0,70
vel = -.5,0


[State 0, 1]
type = Explod
trigger1 = gametime%10 = 0
anim = 1008
scale = 1,1
postype = p1
pos = -10,0
sprpriority = 2
supermove = 1
ownpal = 1
vel = -.75,0

[State 0, 1]
type = VarAdd
trigger1 = !time
v =  1
value = 1
;ignorehitpause = 0
;persistent = 1



[State 4001, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 3031, 1]
type = AfterImage
trigger1 = Time = 0
time = 9999
PalBright   =   0,  0,  0
PalContrast = 120,120,220
PalAdd      =  0,0,0 ;29, 29, 29
PalMul      = .37,.37,.77
trans = add
TimeGap = 2
FrameGap = 2
length = 6

[State 4001, HitDef]
type = HitDef
trigger1 = UniqHitCount < 1
trigger1 = p2stateno != 5070
trigger1 = p2stateno != 5071
attr = S, SP
animtype = Medium
damage = 30,5
hitflag = MAFD
guardflag = MA
pausetime = 4, 5
sparkno = 3
sparkxy = 0,0
hitsound = s5,9
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 26
ground.velocity = -12,0
guard.velocity = -6
air.velocity = -12,-2
airguard.velocity = -6,-1
down.velocity = -12,0
down.hittime = 26
fall = 1
fall.recover = 0
palfx.time = 60
palfx.add = 0,15,75
palfx.color = 0
palfx.invertall = 1
palfx.sinadd= 125,125,125,5

[State 0, 1]
type = Explod
trigger1 = (movehit) && (P2MoveType = H) && (Enemynear, Time = 0) && (NumExplod(1051) < 2)
anim = 1051
ID = 1051
pos = 0,-25
postype = p2
vfacing = -1
bindtime = -1
removetime = 60
sprpriority = 3
ignorehitpause = 1
scale = .75,.75

[State 0, 1]
type = Explod
trigger1 = (movehit) && (P2MoveType = H) && (Enemynear, Time = 0) && (NumExplod(1051) < 2)
anim = 1051
ID = 1051
pos = 0,-65
postype = p2
facing = -1
bindtime = -1
removetime = 60
sprpriority = 3
ignorehitpause = 1
scale=.5,.5

[State 4001, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 4001, HitOverride]
type = HitOverride
trigger1 = Time >= 0 
slot = 1
time = 1
stateno = ifelse(Var(1) < 4,2001,1006)
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 4001, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 2512, Helper Hits Count Too]
type = ParentVarSet ; Only works for helpers.
trigger1 = UniqHitCount != Var(20)
v = 19
value = 1

[State 2512, Helper Hits Count Too]
type = VarSet
trigger1 = UniqHitCount != Var(20)
v = 20
value = UniqHitCount

[State 4001, ChangeState]
type = ChangeState
trigger1 = Movecontact 
trigger2 = Pos Y > -10
value = ifelse(Var(1) < 4,2001,1006)

[State 4001, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -70


; EX Cyclone Kick 
[Statedef 2010]
type = S
movetype = A
physics = S
poweradd = -500
velset = 0, 0
ctrl = 0
anim = 1010

[State 0, ]
type = PalFX
trigger1 = time%2 = 0
time = 1
add = 180,120,0


[State 1020, Afterimage]
type = AfterImage
trigger1 = time = 0
length = 6
framegap = 2
timegap =2
PalBright   =  30, 30,  0
PalContrast =  140,140,40
;PalAdd      = -10,-10,-10
PalMul      = .85,.85,.5
Trans = add
time = 15

[State 1020, Afterimage]
type = AfterImageTime
trigger1 = Time <= 60
time = 4


[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 2011

[Statedef 2011]
type = A
movetype = A
physics = N
velset = 0, -4
ctrl = 0
anim = 1017
juggle = 6

[State 0, ]
type = PalFX
trigger1 = time%2 = 0
time = 1
add = 180,120,0


[State 1020, Afterimage]
type = AfterImage
trigger1 = time = 0
length = 6
framegap = 2
timegap =2
PalBright   =  30, 30,  0
PalContrast =  140,140,40
;PalAdd      = -10,-10,-10
PalMul      = .85,.85,.5
Trans = add
time = 15

[State 1020, Afterimage]
type = AfterImageTime
trigger1 = Animtime !=0
time = 4

[State 0, 1]
type = VelAdd
trigger1 = 1
y = .05
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 1,9
;volume = 0
channel = 0
;lowpriority = 
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan = 0
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 4 || AnimElem = 8 
value = 0,2

[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 2 || AnimElem = 5 || AnimElem = 9
attr = A, SA
damage    = 10, 7
getpower  = 20
givepower = 10
guardflag = MA
pausetime = 3,3
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,6
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.Velocity = 0,-6
air.Velocity = -0, -5.5
envshake.time = 5
fall.envshake.time = 10
fall = 1
fall.recover = 0
yaccel = .5



[State 0, 1]
type = ChangeState
trigger1 = time = 50
value = ifelse(movehit,2012,50)
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

;Finish
[Statedef 2012]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 2012
velset = 0, 0
facep2 = 1

[State 0, ]
type = PalFX
trigger1 = time%2 = 0
time = 1
add = 180,120,0


[State 1020, Afterimage]
type = AfterImage
trigger1 = time = 0
length = 6
framegap = 2
timegap =2
PalBright   =  30, 30,  0
PalContrast =  140,140,40
;PalAdd      = -10,-10,-10
PalMul      = .85,.85,.5
Trans = add
time = 15

[State 1020, Afterimage]
type = AfterImageTime
trigger1 = Animtime !=0
time = 4

[State 0, 1]
type = HitDef
trigger1 = animelem = 2
attr = S,sa
hitflag = MAF
guardflag = HA
;affectteam = E
animtype = Up
;air.animtype = Light
;fall.animtype = Back
priority = 5,Hit
damage = 40,8
pausetime = 0,5
;guard.pausetime = 0,0
sparkno = s1052
;guard.sparkno = 
sparkxy = -10,-40
hitsound = s5,9 
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 30
guard.slidetime = 30
ground.hittime = 30
guard.hittime = 15
air.hittime = 30
;guard.ctrltime = 0
;guard.dist = 
yaccel = 0.4
ground.velocity = -20,-0
guard.velocity = -6
air.velocity = -20,-0
airguard.velocity = -3,-3
fall = 1
fall.recover = 0
getpower = 40,20
givepower = 10,40
envshake.time = 10
fall.envshake.time = 10
palfx.time = 60
palfx.add = 0,15,75
palfx.color = 0
palfx.invertall = 1
palfx.sinadd= 125,125,125,5
p2stateno = 1078
p2facing = 1


[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,2

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2 
value = 2,2
channel = 0


[State 610, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

; EX Dragon Punch 
[Statedef 2020]
type = S
movetype = A
poweradd= -500
anim = 1020
velset = 0,0
ctrl = 0
sprpriority = 2

[State 0, ]
type = PalFX
trigger1 = time%2 = 0
time = 1
add = 180,120,0

[State 1000, Helper]
type = Helper
trigger1 = !time
postype = p1
pos = 0,0
stateno = 2022
bindtime = 1
ownpal = 1
name = "Electricity"
ID = 2022

[State 1020, Afterimage]
type = AfterImage
trigger1 = time = 0
length = 6
framegap = 2
timegap =2
PalBright   =  30, 30,  0
PalContrast =  140,140,40
;PalAdd      = -10,-10,-10
PalMul      = .85,.85,.5
Trans = add
time = 15

[State 1020, Afterimage]
type = AfterImageTime
trigger1 = Animtime !=0
time = 4

[State 1500, 1]
type = NotHitBy
trigger1 = time = 0
value = SCA, NA, SA, AP, AT
time = 13



[State 0, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 1, 6
channel = 0
volume = 255

[State 1700, 3]
type = HitDef
trigger1 = animElem = 4
attr = S, SA
damage = 25, 8
animtype = Medium
getpower=   30
givepower = 15
priority = 5, Hit
hitflag = MA
guardflag = MA
pausetime = 50, 60
sparkxy = 0, -45
sparkno = S8503
hitsound = s55,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 0,-4
air.velocity = 0, -4
fall.animtype = Hard
envshake.time = 10
palfx.time = 60
palfx.add = 0,15,75
palfx.color = 0
palfx.invertall = 1
palfx.sinadd= 125,125,125,5
guard.pausetime = 10,10
snap = 30,0,0
kill = 0



[State 1700, 4]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA
damage = 25, 10
animtype = hard
getpower=   30
givepower = 15
priority = 5, Hit
hitflag = MA
guardflag = MA
pausetime = 10, 10
sparkxy = 0, -60
sparkno = 3
hitsound = s5,9
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -5 ,-8
air.velocity = -5, -8
fall = 1
fall.recover = 0
envshake.time = 10
palfx.time = 60
palfx.add = 0,15,75
palfx.color = 0
palfx.invertall = 1
palfx.sinadd= 125,125,125,5
yaccel = .5

[State 0, 1]
type = Explod
trigger1 = (movehit) && (P2MoveType = H) && (Enemynear, Time = 0) && (NumExplod(1051) < 2)
anim = 1051
ID = 1051
pos = 0,-25
postype = p2
vfacing = -1
bindtime = -1
removetime = 60
sprpriority = 3
ignorehitpause = 1
scale = .75,.75

[State 0, 1]
type = Explod
trigger1 = (movehit) && (P2MoveType = H) && (Enemynear, Time = 0) && (NumExplod(1051) < 2)
anim = 1051
ID = 1051
pos = 0,-65
postype = p2
facing = -1
bindtime = -1
removetime = 60
sprpriority = 3
ignorehitpause = 1
scale=.5,.5

[State 1700, 9]
type = ChangeState
trigger1 = AnimElem = 5 && movehit
value = 2025

[State 1700, 9]
type = ChangeState
trigger1 = AnimElem = 6
value = 2021



;----------------------------------------------------------
; Dragon Punch rising
[Statedef 2021]
type = A
movetype = A
velset = 12, -12
sprpriority = 2
juggle = 8

[State 0, ]
type = PalFX
trigger1 = time%2 = 0
time = 1
add = 180,120,0


[State 1020, Afterimage]
type = AfterImage
trigger1 = time = 0
length = 6
framegap = 2
timegap =2
PalBright   =  30, 30,  0
PalContrast =  140,140,40
;PalAdd      = -10,-10,-10
PalMul      = .85,.85,.5
Trans = add
time = 15

[State 1020, Afterimage]
type = AfterImageTime
trigger1 = Animtime !=0
time = 4


[State 1500, 1]
type = NotHitBy
trigger1 = time < 8 
value = A, NP, SP, HP
time = 1

[State 1710, 2]
type = VelMul
trigger1 = Time >= 0
x = .96

[State 1710, 3] ; Gravity
type = VelAdd
trigger1 = Time >= 0
y = .6

[State 1710, 4]
type = HitDef
trigger1 = AnimElemtime(6)>= 0 
attr = S, SA
damage = 6, 1
animtype = Hard
getpower=   30
givepower = 15
priority = 5, Hit
hitflag = MAF
guardflag = MA
pausetime = 5, 4
sparkxy = 0, -80
sparkno = 3
hitsound = s5,9
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -8, -12
air.velocity = -8, -12
air.hittime = 45
fall = 1
fall.recover = 0
yaccel = .6
envshake.time = 5
fall.envshake.time = 20
palfx.time = 60
palfx.add = 0,15,75
palfx.color = 0
palfx.invertall = 1
palfx.sinadd= 125,125,125,5
yaccel = .6

[State 0, 1]
type = Explod
trigger1 = (movehit) && (P2MoveType = H) && (Enemynear, Time = 0) && (NumExplod(1051) < 2)
anim = 1051
ID = 1051
pos = 0,-25
postype = p2
vfacing = -1
bindtime = -1
removetime = 60
sprpriority = 3
ignorehitpause = 1
scale = .75,.75

[State 0, 1]
type = Explod
trigger1 = (movehit) && (P2MoveType = H) && (Enemynear, Time = 0) && (NumExplod(1051) < 2)
anim = 1051
ID = 1051
pos = 0,-65
postype = p2
facing = -1
bindtime = -1
removetime = 60
sprpriority = 3
ignorehitpause = 1
scale=.5,.5


[State 0, 7]
type = ChangeAnim
trigger1 = vel y > -3
value = 1021
persistent = 0


[State 0, 8]
type = velset
trigger1 = anim = 1021
x = 0
persistent = 0

[State 0, 9] 
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 52

; Electric FX for Missed Shoryuken
[Statedef 2022]
type = S
movetype = A
physics = N
velset = 0,0
anim = 1024
sprpriority = 5
ctrl = 0



[State 0, 1]
type = BindToParent
trigger1 = anim = 1024
time = 1
facing = 0
pos = 0,0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = ChangeAnim
trigger1 = (parent, AnimElemtime(6) < 0) 
trigger1 = (parent, Anim = 1020)
value = 1024
elem = Parent, Animelemno(0)
;ignorehitpause = 0
;persistent = 1


[State 4001, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow



[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 3031, 1]
type = AfterImage
trigger1 = Time = 0
time = 9999
PalBright   =   0,  0,  0
PalContrast = 120,120,220
PalAdd      =  0,0,0 ;29, 29, 29
PalMul      = .37,.37,.77
trans = add
TimeGap = 1
FrameGap = 1



[State 0, 1]
type = ChangeAnim
trigger1 = parent, anim= 1021 && parent, Animelemtime(1) = 0
value = 1025



[State 4001, DestroySelf]
type = DestroySelf
trigger1 = Anim = 1025 && AnimTime = 0
trigger2 = parent, stateno !=[2020,2021]

; EX Dragon Punch part two
[Statedef 2025]
type = S
movetype = A
anim = 1022
velset = 0,0
ctrl = 0
sprpriority = 2

[State 0, ]
type = PalFX
trigger1 = time%2 = 0
time = 1
add = 180,120,0


[State 1020, Afterimage]
type = AfterImage
trigger1 = time = 0
length = 6
framegap = 2
timegap =2
PalBright   =  30, 30,  0
PalContrast =  140,140,40
;PalAdd      = -10,-10,-10
PalMul      = .85,.85,.5
Trans = add
time = 15

[State 1020, Afterimage]
type = AfterImageTime
trigger1 = Animtime !=0
time = 4

[State 1500, 1]
type = NotHitBy
trigger1 = time = 0
value = SCA, NA, SA, AP, AT
time = 13



[State 0, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 2, 0
channel = 0
volume = 255

[State 1700, 3]
type = HitDef
trigger1 = animElem = 2
attr = S, SA
damage = 25, 8
animtype = Medium
getpower=   30
givepower = 15
priority = 5, Hit
hitflag = MA
guardflag = MA
pausetime = 50, 60
sparkxy = 0, -45
sparkno = S8503
hitsound = s55,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 0,-4
air.velocity = 0, -4
fall.animtype = Hard
envshake.time = 10
palfx.time = 60
palfx.add = 0,15,75
palfx.color = 0
palfx.invertall = 1
palfx.sinadd= 125,125,125,5
guard.pausetime = 10,10
kill = 0



[State 1700, 4]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA
damage = 25, 10
animtype = hard
getpower=   30
givepower = 15
priority = 5, Hit
hitflag = MA
guardflag = MA
pausetime = 5, 5
sparkxy = 0, -60
sparkno = S8503
hitsound = s5,2
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -5 ,-8
air.velocity = -5, -8
fall = 1
fall.recover = 0
envshake.time = 10
palfx.time = 60
palfx.add = 0,15,75
palfx.color = 0
palfx.invertall = 1
palfx.sinadd= 125,125,125,5
yaccel = .5
kill = 0

[State 0, 1]
type = Explod
trigger1 = (movehit) && (P2MoveType = H) && (Enemynear, Time = 0) && (NumExplod(1051) < 2)
anim = 1051
ID = 1051
pos = 0,-25
postype = p2
vfacing = -1
bindtime = -1
removetime = 60
sprpriority = 3
ignorehitpause = 1
scale = .75,.75

[State 0, 1]
type = Explod
trigger1 = (movehit) && (P2MoveType = H) && (Enemynear, Time = 0) && (NumExplod(1051) < 2)
anim = 1051
ID = 1051
pos = 0,-65
postype = p2
facing = -1
bindtime = -1
removetime = 60
sprpriority = 3
ignorehitpause = 1
scale=.5,.5

[State 0, ]
type = PosAdd
trigger1 = AnimElem = 6
x = 20

[State 1700, 9]
type = ChangeState
trigger1 = AnimElem = 6
value = 2026



;----------------------------------------------------------
; Dragon Punch rising
[Statedef 2026]
type = A
movetype = A
velset = 1, -16
sprpriority = 2
juggle = 8

[State 0, 1]
type = AllPalFX
trigger1 = !time 
add = 75,255,255
sinadd = -75,-255,-255,38
persistent = 0
time =10
ignorehitpause = 1

[State 0, 1]
type = PlaySnd
trigger1 = !time
value = 1, 12
channel = 0
volume = 255

[State 0, 1]
type = PlaySnd
trigger1 = !time
value = 0, 13
volume = 255



[State 0, 1]
type = Explod
trigger1 = !time 
anim = 1026
ID = 1026
pos = floor(backedgebodydist)+30,240
postype = back
bindtime = -1
supermove = 1
removeongethit = 1
ignorehitpause = 0
sprpriority = 0
ownpal = 1



[State 0, ]
type = PalFX
trigger1 = time%2 = 0
time = 1
add = 180,120,0


[State 1020, Afterimage]
type = AfterImage
trigger1 = time = 0
length = 6
framegap = 2
timegap =2
PalBright   =  30, 30,  0
PalContrast =  140,140,40
;PalAdd      = -10,-10,-10
PalMul      = .85,.85,.5
Trans = add
time = 15

[State 1020, Afterimage]
type = AfterImageTime
trigger1 = Animtime !=0
time = 4


[State 1500, 1]
type = NotHitBy
trigger1 = time < 8 
value = A, NP, SP, HP
time = 1

[State 1710, 2]
type = VelMul
trigger1 = Time >= 0
x = .96

[State 1710, 3] ; Gravity
type = VelAdd
trigger1 = Time >= 0
y = .5

[State 1710, 4]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA
damage = 100, 10
animtype = Hard
getpower=   30
givepower = 15
priority = 5, Hit
hitflag = MAF
guardflag = MA
pausetime = 5, 4
sparkxy = 0, -80
sparkno = S8503
hitsound = s55,1
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -1, -16
air.velocity = -1, -16
air.hittime = 45
fall = 1
fall.recover = 0
yaccel = .6
envshake.time = 5
fall.envshake.time = 20
palfx.time = 60
palfx.add = 0,15,75
palfx.color = 0
palfx.invertall = 1
palfx.sinadd= 125,125,125,5
yaccel = .6

[State 0, 1]
type = Explod
trigger1 = (movehit) && (P2MoveType = H) && (Enemynear, Time = 0) && (NumExplod(1051) < 2)
anim = 1051
ID = 1051
pos = 0,-25
postype = p2
vfacing = -1
bindtime = -1
removetime = 60
sprpriority = 3
ignorehitpause = 1
scale = .75,.75

[State 0, 1]
type = Explod
trigger1 = (movehit) && (P2MoveType = H) && (Enemynear, Time = 0) && (NumExplod(1051) < 2)
anim = 1051
ID = 1051
pos = 0,-65
postype = p2
facing = -1
bindtime = -1
removetime = 60
sprpriority = 3
ignorehitpause = 1
scale=.5,.5


[State 0, 7]
type = ChangeAnim
trigger1 = vel y > -3
value = 1021
persistent = 0


[State 0, 8]
type = velset
trigger1 = anim = 1021
x = 0
persistent = 0

[State 0, 9] 
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 52

;Dive Kick EX
[Statedef 2030]
type = A
movetype = A
physics = N
poweradd = -500
velset = 0, 0
ctrl = 0
anim = 1034
juggle = 4

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Time = 12
value = 2,2
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Time = 12
value = 0,9
volume = 255



[State 0, ]
type = VelSet
trigger1 = AnimElem = 3
x = 9
y = 9
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = HitDef
trigger1 = animelemtime(3) >=0 ;&& time % 2 = 0
attr = a,sa
hitflag = MAF
guardflag = HA
;affectteam = E
animtype = Hard
;air.animtype = Light
;fall.animtype = Back
priority = 5,Hit
damage = 15,0
pausetime = 8,8
;guard.pausetime = 0,0
sparkno = 3
;guard.sparkno = 
sparkxy = -10,-30
hitsound = s5,9 
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 30
guard.slidetime = 30
ground.hittime = 30
guard.hittime = 15
air.hittime = 30
ground.velocity = -5,-7
guard.velocity = -6
air.velocity = -3,-7
airguard.velocity = -5,-3
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 10,40
envshake.time = 8
fall.envshake.time = 10
palfx.time = 60
palfx.add = 0,15,75
palfx.color = 0
palfx.invertall = 1
palfx.sinadd= 125,125,125,5

[State 0, 1]
type = Explod
trigger1 = (movehit) && (P2MoveType = H) && (Enemynear, Time = 0) && (NumExplod(1051) < 2)
anim = 1051
ID = 1051
pos = 0,-25
postype = p2
vfacing = -1
bindtime = -1
removetime = 60
sprpriority = 3
ignorehitpause = 1
scale = .75,.75

[State 0, 1]
type = Explod
trigger1 = (movehit) && (P2MoveType = H) && (Enemynear, Time = 0) && (NumExplod(1051) < 2)
anim = 1051
ID = 1051
pos = 0,-65
postype = p2
facing = -1
bindtime = -1
removetime = 60
sprpriority = 3
ignorehitpause = 1
scale=.5,.5

[State 0, 1]
type = PalFX
trigger1 = time%2 = 0
time = 1
add = 180,120,0


[State 1020, Afterimage]
type = AfterImage
trigger1 = time = 0
length = 6
framegap = 2
timegap =2
PalBright   =  30, 30,  0
PalContrast =  140,140,40
;PalAdd      = -10,-10,-10
PalMul      = .85,.85,.5
Trans = add
time = 15

[State 1020, Afterimage]
type = AfterImageTime
trigger1 = Animtime != 0
time = 4

[State 1000, ChangeState]
type = ChangeState
trigger1 = Pos Y >=0 && Vel Y > 0
value = 52

[State 1000, Helper]
type = Helper
trigger1 = AnimElem = 3
postype = p1
pos = 0,0
stateno = 2031
bindtime = 1
ownpal = 1
name = "Electricity"
ID = 1036


; Fireball
[Statedef 2031]
type = S
movetype = A
physics = N
velset = 0,0
anim = 1035
sprpriority = 3
juggle = 2
ctrl = 0

;[State -10, 1]
;type = AttackMulSet
;trigger1 = 1
;value = parent, fvar(0) 
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = Explod
trigger1 = time%3 = 0
anim = 1009
postype = p1
pos = 33,-25
sprpriority = 3
supermove = 1
ownpal = 1
random = 0,40
vel = -.5,0
accel = 0,.1+((random%2)/10)

[State 0, 1]
type = Explod
trigger1 = time%10 = 0
anim = 1068
scale = .25,.25
postype = p1
pos = 33,-25
sprpriority = 4
supermove = 1
ownpal = 1
vel = -.5,0


[State 0, 1]
type = BindToParent
trigger1 = 1
time = 1
;facing = 0
pos = 0,0
;ignorehitpause = 0
;persistent = 1


[State 4001, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 3031, 1]
type = AfterImage
trigger1 = Time = 0
time = 9999
PalBright   =   0,  0,  0
PalContrast = 120,120,220
PalAdd      =  0,0,0 ;29, 29, 29
PalMul      = .37,.37,.77
trans = add
TimeGap = 1
FrameGap = 1


[State 4001, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno !=2030


;EX Tetsu Rave
[Statedef 2070]
type = S
movetype = A
physics = S
poweradd = -500
velset = 0, 0
ctrl = 0
anim = 1070
juggle = 6

[State 0, 1]
type = PalFX
trigger1 = time%2 = 0
time = 1
add = 180,120,0


[State 1020, Afterimage]
type = AfterImage
trigger1 = time = 0
length = 6
framegap = 2
timegap =2
PalBright   =  30, 30,  0
PalContrast =  140,140,40
;PalAdd      = -10,-10,-10
PalMul      = .85,.85,.5
Trans = add
time = 15

[State 1020, Afterimage]
type = AfterImageTime
trigger1 = Animtime != 0
time = 4

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 2,2
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2
volume = 255



[State 0, ]
type = VelSet
trigger1 = AnimElem = 3
x = 14




[State 0, 1]
type = HitDef
trigger1 = animelem = 5
attr = S,sa
hitflag = MA
guardflag = HA
;affectteam = E
animtype = Hard
;air.animtype = Light
;fall.animtype = Back
priority = 5,Hit
damage = 10,0
pausetime = 10,10
snap = 30,0,0
;guard.pausetime = 0,0
sparkno = 3
;guard.sparkno = 
sparkxy = -10,-60
hitsound = s5,2 
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 30
guard.slidetime = 30
ground.hittime = 30
guard.hittime = 15
air.hittime = 30
;guard.ctrltime = 0
;guard.dist = 
;yaccel = 0
ground.velocity = -5
guard.velocity = -6
air.velocity = -3,3
airguard.velocity = -5,-3
getpower = 0,0
givepower = 10,40
envshake.time = 5
fall.envshake.time = 10
p1stateno = 2071
p2stateno = 1072
kill = 0

[State 1000, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;Tetsu Rave Finisher
[Statedef 2071]
type = S
movetype = A
physics = N
velset = 1, 0
ctrl = 0
anim = 2071

[State 0, 1]
type = PalFX
trigger1 = time%2 = 0
time = 1
add = 180,120,0


[State 1020, Afterimage]
type = AfterImage
trigger1 = time = 0
length = 6
framegap = 2
timegap =2
PalBright   =  30, 30,  0
PalContrast =  140,140,40
;PalAdd      = -10,-10,-10
PalMul      = .85,.85,.5
Trans = add
time = 15

[State 1020, Afterimage]
type = AfterImageTime
trigger1 = Animtime != 0
time = 4

[State 0, 1]
type = TargetBind
trigger1 = AnimElemtime(33) < 0 
time = 1
;ID = -1
pos = 40,0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 0
;persistent = 1



[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 7 || AnimElem = 10 || AnimElem = 13
trigger2 =  AnimElem = 17 || AnimElem = 20 || AnimElem = 25 || AnimElem = 30
value = 2,0
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 38
value = 2,2
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 7 || AnimElem = 10 || AnimElem = 13 || AnimElem = 38
trigger2 =  AnimElem = 17 || AnimElem = 20 || AnimElem = 25 || AnimElem = 30
value = 0,2
volume = 255

[State 0, 1]
type = HitDef
trigger1 =  AnimElem = 3 || AnimElem = 7 || AnimElem = 10 || AnimElem = 13
trigger2 =  AnimElem = 17 || AnimElem = 20 || AnimElem = 25 || AnimElem = 30
attr = S,sa
hitflag = MAF
guardflag = HA
;affectteam = E
animtype = Hard
;air.animtype = Light
;fall.animtype = Back
priority = 5,Hit
damage = 7,3
pausetime = 3,10
;guard.pausetime = 0,0
sparkno = 3
;guard.sparkno = 
sparkxy = -10,-50
hitsound = s5,2 
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 30
guard.slidetime = 30
ground.hittime = 30
guard.hittime = 15
air.hittime = 30
;guard.ctrltime = 0
;guard.dist = 
;yaccel = 0
ground.velocity = -5
guard.velocity = -6
air.velocity = -3,3
airguard.velocity = -5,-3
givepower = 0,0
envshake.time = 5
fall.envshake.time = 10
p2stateno = 1072
kill = 0

[State 0, 1]
type = HitDef
trigger1 = animelem = 38
attr = S,sa
hitflag = MAF
guardflag = HA
;affectteam = E
animtype = Up
;air.animtype = Light
;fall.animtype = Back
priority = 5,Hit
damage = 20,8
pausetime = 10,10
;guard.pausetime = 0,0
sparkno = 3
;guard.sparkno = 
sparkxy = -10,-50
hitsound = s5,6 
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 30
guard.slidetime = 30
ground.hittime = 30
guard.hittime = 15
air.hittime = 30
;guard.ctrltime = 0
;guard.dist = 
yaccel = 0.4
ground.velocity = -20,-0
guard.velocity = -6
air.velocity = -20,-0
airguard.velocity = -3,-3
fall = 1
fall.recover = 0
getpower = 40,20
givepower = 10,40
envshake.time = 10
fall.envshake.time = 10
p2stateno = 1078
p2facing = 1


[State 0, 1]
type = VelSet
trigger1 = AnimElem = 34
x = 0
;y = 
;ignorehitpause = 0
;persistent = 1


[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;EX Aerial Cyclone Kick 
[Statedef 2080]
type = A
movetype = A
physics = N
poweradd = -500
ctrl = 0
anim = 1017
velset = 5,0
juggle = 1

[State 0, 1]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "Electricity"
ID = 0
pos = 0,0
postype = p1
facing = 1
stateno = 2081
ownpal = 1
ignorehitpause = 1
persistent = 0


[State 0, 1]
type = PalFX
trigger1 = time%2 = 0
time = 1
add = 180,120,0



[State 1020, Afterimage]
type = AfterImage
trigger1 = time = 0
length = 6
framegap = 2
timegap =2
PalBright   =  30, 30,  0
PalContrast =  140,140,40
;PalAdd      = -10,-10,-10
PalMul      = .85,.85,.5
Trans = add
time = 15

[State 1020, Afterimage]
type = AfterImageTime
trigger1 = Animtime != 0
time = 4

[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 1,9
channel = 0


[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 4 || AnimElem = 8 
value = 0,2

[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 2 || AnimElem = 5 || AnimElem = 9
attr = A, SA
damage    = 15, 3
getpower  = 20
givepower = 10
guardflag = MA
pausetime = 10,10
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,9
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.Velocity = -2.2,-4
air.Velocity = -2.2, -5
envshake.time = 10
fall.envshake.time = 10
fall = 1
fall.recover = 0
palfx.time = 60
palfx.add = 0,15,75
palfx.color = 0
palfx.invertall = 1
palfx.sinadd= 125,125,125,5
yaccel = .5

[State 0, 1]
type = Explod
trigger1 = (movehit) && (P2MoveType = H) && (Enemynear, Time = 0) && (NumExplod(1051) < 2)
anim = 1051
ID = 1051
pos = 0,-25
postype = p2
vfacing = -1
bindtime = -1
removetime = 60
sprpriority = 3
ignorehitpause = 1
scale = .75,.75

[State 0, 1]
type = Explod
trigger1 = (movehit) && (P2MoveType = H) && (Enemynear, Time = 0) && (NumExplod(1051) < 2)
anim = 1051
ID = 1051
pos = 0,-65
postype = p2
facing = -1
bindtime = -1
removetime = 60
sprpriority = 3
ignorehitpause = 1
scale=.5,.5



[State 0, 1]
type = ChangeState
trigger1 = Vel y > 0 && Pos Y >=0
value = 1019
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = ChangeState
trigger1 = time = 44
value = 50

; Electric Effect
[Statedef 2081]
type = S
movetype = A
physics = N
velset = 0,0
anim = 1018
sprpriority = 5
ctrl = 0



[State 0, 1]
type = PlaySnd
trigger1 = time%10 = 0
value = 0,9
volume =255





[State 0, 1]
type = BindToParent
trigger1 = 1
time = 1
facing = 0
pos = 0,0
;ignorehitpause = 0
;persistent = 1



[State 4001, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow



[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 3031, 1]
type = AfterImage
trigger1 = Time = 0
time = 9999
PalBright   =   0,  0,  0
PalContrast = 120,120,220
PalAdd      =  0,0,0 ;29, 29, 29
PalMul      = .37,.37,.77
trans = add
TimeGap = 1
FrameGap = 1


[State 4001, DestroySelf]
type = DestroySelf
trigger1 = parent, stateno !=2080

