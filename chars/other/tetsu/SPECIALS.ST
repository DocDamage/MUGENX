; Hadoken Weak
[Statedef 1000]
type = S
movetype = A
physics = S
poweradd = 100
velset = 0, 0
ctrl = 0
anim = 1000

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

[State 0, 1]
type = Explod
trigger1 = Animelem = 6
anim = 998
scale = 1,1
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =6
postype = p1
pos = 60,-60
stateno = 1005
bindtime = 1
ownpal = 1
name = "Hadoken"
ID = 11000

[State 1000, ChangeState]
type = ChangeState
trigger1 = animTime =0
value = 0
ctrl = 1

; Hadoken Med
[Statedef 1001]
type = U
movetype = A
physics = N
poweradd = 100
velset = 0, 0
ctrl = 0
anim = 1000

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

[State 0, 1]
type = Explod
trigger1 = animelem = 6
anim = 998
scale = 1,1
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =6
postype = p1
pos = 60,-60
stateno = 1005
bindtime = 1
ownpal = 1
name = "Hadoken"
ID = 11000

[State 1000, ChangeState]
type = ChangeState
trigger1 = animTime =0
value = 0
ctrl = 1



; Hadoken Strong
[Statedef 1002]
type = U
movetype = A
physics = N
poweradd = 100
velset = 0, 0
ctrl = 0
anim = 1000


[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Time = 10
value = 1,5
volume = 255
channel = 0

[State 0, 1]
type = Explod
trigger1 = animelem = 6
anim = 998
scale = 1,1
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Time = 10
value = 0,4
volume = 255

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =6
postype = p1
pos = 60,-60
stateno = 1005
bindtime = 1
ownpal = 1
name = "Hadoken"
ID = 11000

[State 1000, ChangeState]
type = ChangeState
trigger1 = animTime =0
value = 0
ctrl = 1


; Fireball
[Statedef 1005]
type = S
movetype = A
physics = N
velset = ifelse(parent, stateno =1000,3.5,ifelse(parent,stateno=1001,4.5,5.5)),0
anim = 1005
sprpriority = 2
juggle = 2
ctrl = 0

;[State -10, 1]
;type = AttackMulSet
;trigger1 = 1
;value = parent, fvar(0) 
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
trigger1 = UniqHitCount = 0
trigger1 = p2stateno != 5070
trigger1 = p2stateno != 5071
attr = S, SP
animtype = Medium
damage = 87,5
hitflag = MAF
guardflag = MA
pausetime = 0, 9
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
fall = (time < 5)
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
stateno = 1006
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



[State 0, 1]
type = Explod
trigger1 = time%5 = 0
anim = 1009
postype = p1
pos = -50,0
sprpriority = 3
supermove = 1
ownpal = 1
random = 0,50
vel = -.5,0


[State 0, 1]
type = Explod
trigger1 = time%15 = 0
anim = 1008
scale = .5,.5
postype = p1
pos = -10,0
sprpriority = 4
supermove = 1
ownpal = 1
vel = -.5,0


[State 4001, ChangeState]
type = ChangeState
trigger1 = movecontact
trigger2 = Pos Y > -10
value = 1006

[State 4001, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -70

; Hadoken Hits
[Statedef 1006]
type = S
movetype = A
physics = N
velset = 1,0
anim = ifelse(prevstateno = 2001,1007,1004)
sprpriority = 2
ctrl = 0


[State 4022, 0]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoShadow

[State 4022, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 4022, 2]
type = DestroySelf
trigger1 = AnimTime = 0


; Typhoon Kick Weak
[Statedef 1010]
type = S
movetype = A
physics = S
poweradd = 100
velset = 0, 0
ctrl = 0
anim = 1010



[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 1011

[Statedef 1011]
type = A
movetype = A
physics = N
velset = 2.5, -1.7
ctrl = 0
anim = 1011
juggle = 6


[State 0, 1]
type = VelAdd
trigger1 = 1
y = .1
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
damage    = 12, 3
getpower  = 20
givepower = 10
guardflag = MA
pausetime = 12,12
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,6
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



[State 0, 1]
type = ChangeState
trigger1 = Vel y > 0 && Pos Y >=0
value = 1019
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

; Typhoon Kick Weak
[Statedef 1012]
type = S
movetype = A
physics = S
poweradd = 100
velset = 0, 0
ctrl = 0
anim = 1010



[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 1013

[Statedef 1013]
type = A
movetype = A
physics = N
velset = 4, -1.6
ctrl = 0
anim = 1011
juggle = 7

[State 0, 1]
type = VelAdd
trigger1 = 1
y = .075
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
damage    = 12, 3
getpower  = 20
givepower = 10
guardflag = MA
pausetime = 12,12
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,6
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



[State 0, 1]
type = ChangeState
trigger1 = Vel y > 0 && Pos Y >=0
value = 1019
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

; Typhoon Kick Weak
[Statedef 1014]
type = S
movetype = A
physics = S
poweradd = 100
velset = 0, 0
ctrl = 0
anim = 1010




[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 1015

[Statedef 1015]
type = A
movetype = A
physics = N
velset = 5.5, -1.5
ctrl = 0
anim = 1011
juggle = 8

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
damage    = 12, 3
getpower  = 20
givepower = 10
guardflag = MA
pausetime = 12,12
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,6
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



[State 0, 1]
type = ChangeState
trigger1 = Vel y > 0 && Pos Y >=0
value = 1019
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

[Statedef 1019]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
anim = 1012

[State -3, Landing Sound]
type = PlaySnd
trigger1 = !Time 
value = 55, 2

[State -3, Landing Sound]
type = GameMakeAnim
trigger1 = !Time 
value = 60
pos = 0,0

[State 0, ]
type = PosSet
trigger1 = !time
y = 0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl =1


; Dragon Punch weak
[Statedef 1020]
type = S
movetype = A
poweradd= 120
anim = 1020
velset = 0,0
ctrl = 0
sprpriority = 2
juggle = 2

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
damage = 40, 8
animtype = Medium
getpower=   30
givepower = 15
priority = 5, Hit
hitflag = MA
guardflag = MA
pausetime = 10, 10
sparkxy = 0, -45
sparkno = 3
hitsound = s5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 0,-4
air.velocity = 0, -4
fall.animtype = Hard
envshake.time = 10


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
hitsound = s5,2
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3 ,-9
air.velocity = -3, -9
fall = 1
fall.recover = 0
envshake.time = 10


[State 1700, 9]
type = ChangeState
trigger1 = AnimElem = 6
value = 1021



;----------------------------------------------------------
; Dragon Punch rising
[Statedef 1021]
type = A
movetype = A
velset = 7, -7
sprpriority = 2
juggle = 6

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
y = .45

[State 1710, 4]
type = HitDef
trigger1 = AnimElemtime(6)>= 0 && time %4=0
attr = S, SA
damage = 10, 10
animtype = Hard
getpower=   30
givepower = 15
priority = 5, Hit
hitflag = MAF
guardflag = MA
pausetime = 5, 5
sparkxy = 0, -80
sparkno = 3
hitsound = s5,2
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -4, -5
air.velocity = -4, -5
air.hittime = 45
fall = 1
fall.recover = 0
yaccel = .5
envshake.time = 5
fall.envshake.time = 20



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

; Dragon Punch weak
[Statedef 1022]
type = S
movetype = A
poweradd= 120
anim = 1020
velset = 0,0
ctrl = 0
sprpriority = 2
juggle = 2

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
damage = 40, 8
animtype = Medium
getpower=   30
givepower = 15
priority = 5, Hit
hitflag = MA
guardflag = MA
pausetime = 10, 10
sparkxy = 0, -45
sparkno = 3
hitsound = s5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 0,-4
air.velocity = 0, -4
fall.animtype = Hard
envshake.time = 10


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
hitsound = s5,2
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -4 ,-9
air.velocity = -4, -9
fall = 1
fall.recover = 0
envshake.time = 10


[State 1700, 9]
type = ChangeState
trigger1 = AnimElem = 6
value = 1023



;----------------------------------------------------------
; Dragon Punch rising
[Statedef 1023]
type = A
movetype = A
velset = 9, -9
sprpriority = 2
juggle = 7


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
trigger1 = AnimElemtime(6)>= 0 && time %3=0
attr = S, SA
damage = 8, 2
animtype = Hard
getpower=   30
givepower = 15
priority = 5, Hit
hitflag = MAF
guardflag = MA
pausetime = 5, 5
sparkxy = 0, -80
sparkno = 3
hitsound = s5,2
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -4, -10
air.velocity = -4, -10
air.hittime = 45
fall = 1
fall.recover = 0
yaccel = .6
envshake.time = 5
fall.envshake.time = 20

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

; Dragon Punch weak
[Statedef 1024]
type = S
movetype = A
poweradd= 120
anim = 1020
velset = 0,0
ctrl = 0
sprpriority = 2
juggle = 2

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
damage = 40, 8
animtype = Medium
getpower=   30
givepower = 15
priority = 5, Hit
hitflag = MA
guardflag = MA
pausetime = 10, 10
sparkxy = 0, -45
sparkno = 3
hitsound = s5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 0,-4
air.velocity = 0, -4
fall.animtype = Hard
envshake.time = 10


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


[State 1700, 9]
type = ChangeState
trigger1 = AnimElem = 6
value = 1025



;----------------------------------------------------------
; Dragon Punch rising
[Statedef 1025]
type = A
movetype = A
velset = 12, -12
sprpriority = 2
juggle = 8


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
trigger1 = AnimElemtime(6)>= 0 && time %2=0
attr = S, SA
damage = 7, 1
animtype = Hard
getpower=   30
givepower = 15
priority = 5, Hit
hitflag = MAF
guardflag = MA
pausetime = 5, 5
sparkxy = 0, -80
sparkno = 3
hitsound = s5,2
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

;Diving Kick
[Statedef 1030]
type = A
movetype = A
physics = N
poweradd = 100
velset = 0, 0
ctrl = 0
anim = 1030
juggle = 6

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Time = 6
value = 2,2
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Time = 6
value = 0,2
volume = 255



[State 0, ]
type = VelSet
trigger1 = AnimElem = 3
x = 4
y = 9
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = HitDef
trigger1 = animelemtime(3) >=0 && time % 3 = 0
attr = a,sa
hitflag = MAF
guardflag = HA
;affectteam = E
animtype = Hard
;air.animtype = Light
;fall.animtype = Back
priority = 5,Hit
damage = 20,0
pausetime = 5,5
;guard.pausetime = 0,0
sparkno = 3
;guard.sparkno = 
sparkxy = -10,-30
hitsound = s5,2 
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 20
guard.slidetime = 20
ground.hittime = 20
guard.hittime = 15
air.hittime = 20
;guard.ctrltime = 0
;guard.dist = 
;yaccel = 0
ground.velocity = -5
guard.velocity = -6
air.velocity = -3,3
airguard.velocity = -5,-3
air.fall = 1
fall.recover = 0
getpower = 40,20
givepower = 10,40
envshake.time = 5
fall.envshake.time = 10

[State 1000, ChangeState]
type = ChangeState
trigger1 = Pos Y >=0 && Vel Y > 0
value = 52


[Statedef 1031]
type = A
movetype = A
physics = N
poweradd = 100
velset = 0, 0
ctrl = 0
anim = 1031
juggle = 4

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Time = 8
value = 2,2
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Time = 8
value = 0,2
volume = 255



[State 0, ]
type = VelSet
trigger1 = AnimElem = 3
x = 5
y = 8
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = HitDef
trigger1 = animelem = 3
attr = a,sa
hitflag = MAF
guardflag = HA
;affectteam = E
animtype = Hard
;air.animtype = Light
;fall.animtype = Back
priority = 5,Hit
damage = 20,0
pausetime = 5,15
;guard.pausetime = 0,0
sparkno = 3
;guard.sparkno = 
sparkxy = -10,-30
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
fall = 1
fall.recover = 0
getpower = 40,20
givepower = 10,40
envshake.time = 5
fall.envshake.time = 10
p1stateno = 1032
kill = 0

[State 1000, ChangeState]
type = ChangeState
trigger1 = Pos Y >=0 && Vel Y > 0
value = 52

;Med Dive Finisher
[Statedef 1032]
type = A
movetype = A
physics = N
poweradd = 100
velset = 0, 0
ctrl = 0
anim = 1032



[State 0, 1]
type = TargetBind
trigger1 = !time 
time = 1
;ID = -1
pos = 10,0
;ignorehitpause = 0
;persistent = 1


[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Time%5=0 && time > 4
trigger1 = Animelemtime(27) < 0
value = 2,0
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Time%5=0 && time > 4
trigger1 = Animelemtime(27) < 0
value = 0,2
volume = 255



[State 0, ]
type = VelSet
trigger1 = AnimTime = 0
x = -5
y = -6
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = HitDef
trigger1 = animelemtime(2)>= 0 && animelemtime(26) <0 && time%4=0
attr = a,sa
hitflag = MAF
guardflag = HA
;affectteam = E
animtype = Hard
;air.animtype = Light
;fall.animtype = Back
priority = 5,Hit
damage = 8,0
pausetime = 3,10
;guard.pausetime = 0,0
sparkno = 3
;guard.sparkno = 
sparkxy = -10,-30
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
air.fall = 1
fall.recover = 0
getpower = 20,40
givepower = 10,40
envshake.time = 5
fall.envshake.time = 10
kill = 0

[State 0, 1]
type = HitDef
trigger1 = animelem = 27
attr = a,sa
hitflag = MAF
guardflag = HA
;affectteam = E
animtype = Hard
;air.animtype = Light
;fall.animtype = Back
priority = 5,Hit
damage = 8,0
pausetime = 10,10
;guard.pausetime = 0,0
sparkno = 3
;guard.sparkno = 
sparkxy = -10,-45
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
;yaccel = 0
ground.velocity = -10,10
guard.velocity = -6
air.velocity = -10,10
airguard.velocity = -3,-3
fall = 1
fall.recover = 0
getpower = 40,20
givepower = 10,40
envshake.time = 10
fall.envshake.time = 10


[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

[Statedef 1034]
type = A
movetype = A
physics = N
poweradd = 100
velset = 0, 0
ctrl = 0
anim = 1034
juggle = 6

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Time = 12
value = 2,2
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Time = 12
value = 0,2
volume = 255



[State 0, ]
type = VelSet
trigger1 = AnimElem = 3
x = 11
y = 11
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = HitDef
trigger1 = animelem = 3
attr = a,sa
hitflag = MAF
guardflag = HA
;affectteam = E
animtype = DiagUp
;air.animtype = Light
;fall.animtype = Back
priority = 5,Hit
damage = 90,0
pausetime = 10,10
;guard.pausetime = 0,0
sparkno = 3
;guard.sparkno = 
sparkxy = -10,-30
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
ground.velocity = -5,-7
guard.velocity = -6
air.velocity = -12,12
airguard.velocity = -5,-3
fall = 1
fall.recover = 0
getpower = 40,20
givepower = 10,40
envshake.time = 5
fall.envshake.time = 10

[State 1000, ChangeState]
type = ChangeState
trigger1 = Pos Y >=0 && Vel Y > 0
value = 52



;Quick Rush
[Statedef 1040]
type = S
movetype = I
physics = N
anim = 100
poweradd = 60
velset = 0,0
ctrl = 0

[State 1404, Helper];afterimages
type = Helper
trigger1 = (Time%3 = 0) && (Time < 20)
name = "after image helper"
id = 1045
postype = P1
pos = 0,0
stateno = 1045
ownpal = 1

[State 0, 1]
type = PlaySnd
trigger1 = time =7
volume = 255
value = 0,7

[State 0, 1]
type = PlaySnd
trigger1 = time = 10
volume = 70
value = 2,5
channel = 0



[State 0, 1]
type = HitBy
trigger1 = time = [3,20]
value = SCA, SA, HA, AT
;time = 
;ignorehitpause = 0
;persistent = 1



[State 0, 3]
type = SprPriority
trigger1 = Time = 8
value = -1

[State 1000, 4]
type = VelSet
trigger1 = time = [3,20]
x = 10.5

[State 0, 1]
type = Explod
trigger1 = !time 
anim = 998
scale = 1,1
postype = p1
pos = 40,0
sprpriority = 5
supermove = 1
ownpal = 1

[State 0, 6]
type = VelSet
trigger1 = time >20
x = 0

[State 0, 7]
type = PlayerPush
trigger1 = Time = [3,20]
value = 0

[State 0, 8]
type = Ctrlset
trigger1 = time = 20
value = 1

[State 0, 9]
type = ChangeState
trigger1 = Time = 27
value = 0
ctrl = 1

;Quick Rush
[Statedef 1041]
type = S
movetype = I
physics = N
anim = 100
poweradd = 60
velset = 0,0
ctrl = 0

[State 1404, Helper];afterimages
type = Helper
trigger1 = (Time%3 = 0) && (Time < 20)
name = "after image helper"
id = 1045
postype = P1
pos = 0,0
stateno = 1045
ownpal = 1

[State 0, 1]
type = PlaySnd
trigger1 = time =7
volume = 255
value = 0,7

[State 0, 1]
type = PlaySnd
trigger1 = time = 10
volume = 70
value = 2,5
channel = 0



[State 0, 1]
type = HitBy
trigger1 = time = [3,20]
value = SCA, SA, HA, AT
;time = 
;ignorehitpause = 0
;persistent = 1



[State 0, 3]
type = SprPriority
trigger1 = Time = 8
value = -1

[State 1000, 4]
type = VelSet
trigger1 = time = [3,20]
x = 15.5

[State 0, 1]
type = Explod
trigger1 = !time 
anim = 998
scale = 1,1
postype = p1
pos = 40,0
sprpriority = 5
supermove = 1
ownpal = 1

[State 0, 6]
type = VelSet
trigger1 = time > 20
x = 0

[State 0, 7]
type = PlayerPush
trigger1 = Time = [3,20]
value = 0

[State 0, 8]
type = Ctrlset
trigger1 = time = 20
value = 1

[State 0, 9]
type = ChangeState
trigger1 = Time = 27
value = 0
ctrl = 1

;Quick Rush
[Statedef 1042]
type = S
movetype = I
physics = N
anim = 100
poweradd = 60
velset = 0,0
ctrl = 0

[State 1404, Helper];afterimages
type = Helper
trigger1 = (Time%3 = 0) && (Time < 20)
name = "after image helper"
id = 1045
postype = P1
pos = 0,0
stateno = 1045
ownpal = 1

[State 0, 1]
type = PlaySnd
trigger1 = time =7
volume = 255
value = 0,7

[State 0, 1]
type = PlaySnd
trigger1 = time = 10
volume = 70
value = 2,5
channel = 0

[State 0, 1]
type = Explod
trigger1 = !time 
anim = 998
scale = 1,1
postype = p1
pos = 40,0
sprpriority = 5
supermove = 1
ownpal = 1


[State 0, 1]
type = HitBy
trigger1 = time = [3,20]
value = SCA, SA, HA, AT
;time = 
;ignorehitpause = 0
;persistent = 1



[State 0, 3]
type = SprPriority
trigger1 = Time = 8
value = -1

[State 1000, 4]
type = VelSet
trigger1 = time = [3,20]
x = 20.5

[State 0, 6]
type = VelSet
trigger1 = time >20
x = 0

[State 0, 7]
type = PlayerPush
trigger1 = Time = [3,20]
value = 0

[State 0, 8]
type = Ctrlset
trigger1 = time = 20
value = 1

[State 0, 9]
type = ChangeState
trigger1 = Time = 27
value = 0
ctrl = 1

;The Shadows
[Statedef 1045]
type    = S
movetype= I
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, 1]
type = ChangeAnim
trigger1 = Time = 0
value = parent, Anim
elem = parent, animelemno(0)

[State 0, 1]
type = ChangeAnim
trigger1 = Time >= 1
value = Anim
elem = animelemno(0)

[State 0, 2]
type = SprPriority
trigger1 = Time = 3
value = -2

[State 0, 2]
type = SprPriority
trigger1 = Time = 6
value = -3

[State 0, 3]
type = SprPriority
trigger1 = parent, StateNo != [1040,1042]
value = -4

[State 0, 4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 0, 1]
type = AssertSpecial
trigger1 = time%2=0
flag = invisible

[State 0, 1]
type = DestroySelf
trigger1 = (Time = 8) 


; Hadoken Weak
[Statedef 1060]
type = A
movetype = A
physics = N
poweradd = 100
velset = 0, 0
ctrl = 0
anim = 1060

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem =5
value = 1,5
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Time = 10
value = 0,4
volume = 255

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =5
postype = p1
pos = 50,-59
stateno = 1065
bindtime = 1
ownpal = 1
name = "Hadoken"
ID = 11000



[State 0, 1]
type = VelSet
trigger1 = AnimElem = 5
x = -4
y = -4
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = Gravity
trigger1 = AnimElemtime(5) > 0
;ignorehitpause = 0
;persistent = 1

[State 1000, ChangeState]
type = ChangeState
trigger1 = animTime =0
value = 50

[State 0, 1]
type = ChangeState
trigger1 = vel Y > 0 && pos Y >= 0
value = 52


; Kikoken Med
[Statedef 1061]
type = A
movetype = A
physics = N
poweradd = 100
velset = 0, ifelse(statetype = A && Vel Y < 0, -.5,ifelse(statetype = A && Vel Y >0, .5,0))
ctrl = 0
anim = 1060

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

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =5
postype = p1
pos = 50,-59
stateno = 1065
bindtime = 1
ownpal = 1
name = "Hadoken"
ID = 11000

[State 0, 1]
type = VelSet
trigger1 = vel Y > 0 && pos Y >= 0
y = 0


[State 0, 1]
type = VelSet
trigger1 = animtime = 0
x = ifelse(command = "holdfwd",2.55,ifelse(command = "holdback",-2.4,0))



[State 1000, ChangeState]
type = ChangeState
trigger1 = animTime =0
value = 50
ctrl = 1



; Kikoken Strong
[Statedef 1062]
type = A
movetype = A
physics = A
poweradd = 100
ctrl = 0
anim = 1060

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

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =5
postype = p1
pos = 50,-59
stateno = 1065
bindtime = 1
ownpal = 1
name = "Hadoken"
ID = 11000

[State 1000, ChangeState]
type = ChangeState
trigger1 = animTime =0
value = 50
ctrl = 1


; Fireball
[Statedef 1065]
type = S
movetype = A
physics = N
velset = 5.5,4
anim = 1065
sprpriority = 2
juggle = 2
ctrl = 0

;[State -10, 1]
;type = AttackMulSet
;trigger1 = 1
;value = parent, fvar(0) 
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
trigger1 = time = 0
trigger1 = p2stateno != 5070
trigger1 = p2stateno != 5071
attr = S, SP
animtype = Medium
damage = ifelse(parent,stateno=1068,35,87),5
hitflag = MAFD
guardflag = MA
pausetime = 0, 9
sparkno = 3
sparkxy = 0,0
hitsound = s5,9
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 26
ground.velocity = -12,0
guard.velocity = -6
air.velocity = -12,12
airguard.velocity = -6,-1
down.velocity = -12,0
down.hittime = 26
air.fall = 1
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
stateno = 1066
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
trigger1 = movecontact
trigger2 = Pos Y > -10
value = 1066

[State 0, 1]
type = Explod
trigger1 = time%3 = 0
anim = 1009
postype = p1
pos = -30,-30
sprpriority = 3
supermove = 1
ownpal = 1
random = 0,40
vel = -.5,0
accel = 0,.1+((random%2)/10)

[State 0, 1]
type = Explod
trigger1 = time%15 = 0
anim = 1068
scale = .5,.5
postype = p1
pos = 0,0
sprpriority = 4
supermove = 1
ownpal = 1
vel = -.5,-.5

[State 4001, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -70

; Hadoken Hits
[Statedef 1066]
type = A
movetype = A
physics = N
velset = 1,1
anim = 1067
sprpriority = 2
ctrl = 0


[State 4022, 0]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoShadow

[State 4022, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 4022, 2]
type = DestroySelf
trigger1 = AnimTime = 0

;  EX Hadoken 
[Statedef 1068]
type = A
movetype = A
physics = N
poweradd = -500
velset = 0, 0
ctrl = 0
anim = 1061

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem =5 || AnimElem = 7 || AnimElem = 9
value = 2,2
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem =5 || AnimElem = 7 || AnimElem = 9
value = 0,4
volume = 255



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
trigger1 = Time <= 60
time = 4


[State 1000, Helper]
type = Helper
trigger1 = AnimElem =5 || AnimElem = 7 || AnimElem = 9
postype = p1
pos = 50,-63
stateno = 1065
bindtime = 1
ownpal = 1
name = "Hadoken"
ID = 11000

[State 1000, ChangeState]
type = ChangeState
trigger1 = animTime =0
value = 50

;Tetsu Rave
[Statedef 1070]
type = S
movetype = A
physics = S
poweradd = 100
velset = 0, 0
ctrl = 0
anim = 1070
juggle = 4

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
x = 9




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
damage = 20,0
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
getpower = 40,20
givepower = 10,40
envshake.time = 5
fall.envshake.time = 10
p1stateno = 1071
p2stateno = 1072
kill = 0

[State 1000, ChangeState]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;Tetsu Rave Finisher
[Statedef 1071]
type = S
movetype = A
physics = N
poweradd = 50
velset = 1, 0
ctrl = 0
anim = 1071



[State 0, 1]
type = TargetBind
trigger1 = AnimElemtime(14) < 0 
time = 1
;ID = -1
pos = 30,0
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
value = 2,0
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 17 
value = 2,2
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 7 || AnimElem = 10 || AnimElem = 13 || AnimElem = 17
value = 0,2
volume = 255

[State 0, 1]
type = HitDef
trigger1 =  AnimElem = 3 || AnimElem = 7 || AnimElem = 10 || AnimElem = 13
attr = S,sa
hitflag = MAF
guardflag = HA
;affectteam = E
animtype = Hard
;air.animtype = Light
;fall.animtype = Back
priority = 5,Hit
damage = 10,3
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
givepower = 20,10
envshake.time = 5
fall.envshake.time = 10
p2stateno = 1072
kill = 0

[State 0, 1]
type = HitDef
trigger1 = animelem = 17 || Animelem = 18
attr = S,sa
hitflag = MAF
guardflag = HA
;affectteam = E
animtype = Up
;air.animtype = Light
;fall.animtype = Back
priority = 5,Hit
damage = 8,0
pausetime = 10,10
;guard.pausetime = 0,0
sparkno = 3
;guard.sparkno = 
sparkxy = -10,-60
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
ground.velocity = -1,-10
guard.velocity = -6
air.velocity = -1,-10
airguard.velocity = -3,-3
fall = 1
fall.recover = 0
getpower = 40,20
givepower = 10,40
envshake.time = 10
fall.envshake.time = 10



[State 0, 1]
type = VelSet
trigger1 = AnimElem = 17
x = 0
;y = 
;ignorehitpause = 0
;persistent = 1


[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Grounder-(Grounds opponent if hit in air)
[Statedef 1072]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 0, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 1072

[State 0, 2]
type = posset
trigger1 = 1
y = 0

[State 0, 2]
type = velset
trigger1 = Time = 0
y = 0

[State 0, 2]
type = HitFallSet
trigger1 = Time = 0
value = 0

[State 0, 3]
type = SelfState
trigger1 = time >= 40
value = 5000

;Assassin Slide
[Statedef 1073]
type = C
movetype = A
physics = C
velset = 0
ctrl = 0
anim = 1073
poweradd = 0
juggle = 7



[State 0, 1]
type = PlayerPush
trigger1 = AnimElemTime(3) >=0 && AnimElemTime(5) < 0
value = 0
;ignorehitpause = 0
;persistent = 1


[State 210, 1]
type = PlaySnd
trigger1 = Time = 8
value = 0, 10

[State 210, 1]
type = PlaySnd
trigger1 = Time = 8
value = 2, 4

[State 100, 1]
type = MakeDust
trigger1 = AnimElemTime(3) >=0 && AnimElemTime(5) < 0
pos = 0, 0
spacing = 1

[State 410, 1]
type = VelSet
trigger1 = AnimElemTime(3) >=0 && AnimElemTime(4) < 2
x = 19

[State 430, 1]
type = HitDef
trigger1 = Time = 0
attr = C, SA
damage    = 78,9
animtype = Hard
getpower = 90
givepower = 30
guardflag = L
hitflag = MAFD
hitsound = s5,9
guardsound = 6,0
pausetime = 10,10
sparkno = 3
sparkxy = -5,-20
ground.type = Trip
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -2.5,-9.4
air.velocity = -2.5,-9.4
guard.velocity = -7
envshake.time = 10
fall.envshake.time = 10
fall = 1
air.fall = 1
fall.recover = 0
yaccel = 0.7
palfx.time = 60
palfx.add = 0,15,75
palfx.color = 0
palfx.invertall = 1
palfx.sinadd= 125,125,125,5

;[State 410, 1]
;type = VelSet
;trigger1 = AnimElem=5
;x = 2


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

[State 430, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

; Power Kick - Charging
[Statedef 1074]
type = S
movetype = A
physics = S
anim = 1074
ctrl = 0
poweradd = 50
velset = 0,0

[State 195, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 2, 2
channel = 0

[State 0, 1]
type = PalFX
trigger1 = AnimElemtime(4) >=50 && AnimElemtime(4) < 120
trigger1 = time%5=0
add = 62,127,127
sinadd = 62,127,127,5
time =4
ignorehitpause = 1

[State 0, 1]
type = PalFX
trigger1 = AnimElemtime(4) >=120 
trigger1 = time%5=0
add = 127,62,62
sinadd = 127,62,62,5
time =4
ignorehitpause = 1

[State 0, 1]
type = Explod
trigger1 = AnimElemtime(2) >=0 && AnimElemtime(4) < 120
trigger1 = time%7 = 0
facing = ifelse(Random<=600,1,-1)
anim = 1051
scale = .5,.5
postype = p1
pos = 0,-30
sprpriority = 2
supermove = 1
ownpal = 1
random = 40,70
bindtime = -1

[State 0, ]
type = Explod
trigger1 = AnimElemtime(4) >= 120 
trigger1 = time% 6 = 0
anim = 186
pos = 0,0
postype = p1
bindtime = -1
random = 60,0
sprpriority = 3
ownpal = 1



[State 0, ]
type = EnvShake
trigger1 = AnimElemtime(4) >= 120 
trigger1 = time% 10 = 0
time = 10
;freq = 60
;ampl = -4
;phase = 
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = PlaySnd
trigger1 = AnimElemtime(2) >=0 && AnimElemtime(4) < 120
trigger1 = time%20 = 0
value = 0,9
volume = 255

[State 0, 1]
type = PlaySnd
trigger1 = AnimElemtime(4) =120 
value = 0,5
volume = 255

[State 0, 1]
type = PlaySnd
trigger1 = AnimElemtime(4) >=121
trigger1 = time%20 = 0
value = 0,8
volume = 255

[State 195, 2]
type = ChangeState
triggerall = command != "holdc"
trigger1 = AnimElemtime(4) > 0 
trigger1 = AnimElemtime(4) < 50 
value = 1075

[State 195, 2]
type = ChangeState
triggerall = command != "holdc"
trigger1 = Time > 15
trigger1 = AnimElemtime(4) >=50 && AnimElemtime(4) < 120
value = 1076

[State 195, 2]
type = ChangeState
triggerall = command != "holdc" || time >= 390
trigger1 = Time > 15
trigger1 = AnimElemtime(4) >=120  
value = 1077

; Power Kick - Level 1
[Statedef 1075]
type = S
movetype = A
physics = S
anim = 1075
ctrl = 0
poweradd = 50
velset = 0,0
juggle = 4

[State 195, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2, 0
channel = 0

[State 195, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, 2

[State 0, 1]
type = HitDef
trigger1 = animelem = 3
attr = S,sa
hitflag = MAF
guardflag = HA
;affectteam = E
animtype = Up
;air.animtype = Light
;fall.animtype = Back
priority = 5,Hit
damage = 80,10
pausetime = 10,10
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
ground.velocity = -1,-10
guard.velocity = -6
air.velocity = -1,-10
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

;[State 410, 1]
;type = VelSet
;trigger1 = AnimElem=5
;x = 2


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



[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
; Power Kick - Level 2
[Statedef 1076]
type = S
movetype = A
physics = S
anim = 1076
ctrl = 0
poweradd = 100
velset = 0,0
juggle = 5

[State 195, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2, 0
channel = 0

[State 195, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, 2

[State 0, 1]
type = HitDef
trigger1 = animelem = 3
attr = S,sa
hitflag = MAF
guardflag = HA
;affectteam = E
animtype = Up
;air.animtype = Light
;fall.animtype = Back
priority = 5,Hit
damage = 80,10
pausetime = 10,10
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

;[State 410, 1]
;type = VelSet
;trigger1 = AnimElem=5
;x = 2


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



[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Power Kick - Level 3
[Statedef 1077]
type = S
movetype = A
physics = S
anim = 1076
ctrl = 0
poweradd = 300
velset = 0,0
juggle = 5

[State 195, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2, 0
channel = 0

[State 195, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, 2

[State 0, 1]
type = HitDef
trigger1 = animelem = 3
attr = S,sa
hitflag = MAF
guardflag = 
;affectteam = E
animtype = Back
;air.animtype = Light
;fall.animtype = Back
priority = 5,Hit
damage = 200,10
pausetime = 20,20
;guard.pausetime = 0,0
sparkno = s1052
;guard.sparkno = 
sparkxy = -10,-40
hitsound = s55,1 
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
ground.velocity = -21,-4
guard.velocity = -6
air.velocity = -21,-4
airguard.velocity = -3,-3
fall = 1
fall.recover = 0
getpower = 40,20
givepower = 10,40
envshake.time = 20
fall.envshake.time = 20
palfx.time = 60
palfx.add = 0,15,75
palfx.color = 0
palfx.invertall = 1
palfx.sinadd= 125,125,125,5

;[State 410, 1]
;type = VelSet
;trigger1 = AnimElem=5
;x = 2


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



[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Wira Attack
[Statedef 1078]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1025, Anim] ;Custom animation
type = ChangeAnim
trigger1 = 1
value = 5012

[State 1025, State]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 1079

;------------------
; Hit by Fast Kung Fu Palm - flying through the air
; (a custom gethit state)
[Statedef 1079]
type    = A
movetype= H
physics = N

[State 1026, Velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1



[State 1026, No scroll]
type = ScreenBound
trigger1 = BackEdgeBodyDist < 65
trigger2 = FrontEdgeBodyDist < 65
value = 1
movecamera = 0,1

[State 1026, Hit wall]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 20
trigger2 = FrontEdgeBodyDist <= 20
value = 1080

[State 1026, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;------------------
; Hit by Fast Kung Fu Palm - hit wall
; (a custom gethit state)
[Statedef 1080]
type    = A
movetype= H
physics = N

[State 1027, Turn]
type = Turn
trigger1 = (Time = 0) && (FrontEdgeBodyDist <= 30)

[State 1027, Pos]
type = PosAdd
trigger1 = Time = 0
x = 15 - BackEdgeBodyDist

[State 1027, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1027, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1027, Spark]
type = Explod
trigger1 = Time = 0
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3

[State 1027, Anim]
type = ChangeAnim
trigger1 = Time = 0
value = 5030

[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F5,4

[State 1027, State]
type = ChangeState
trigger1 = AnimTime = 0 || time >= 5
value = 1081

;------------------
; Hit by Fast Kung Fu Palm - bounce off wall
; (a custom gethit state)
[Statedef 1081]
type    = A
movetype= H
physics = N

[State 1028, Vel Y]
type = VelSet
trigger1 = Time = 0
y = -10

[State 1028, Vel X]
type = VelSet
trigger1 = Time = 0
x = 3.6

[State 1028, Turn]
type = Turn
trigger1 = (Time = 0) && (BackEdgeDist < 30)


[State 0, 2]
type = Gravity
trigger1 = 1
;ignorehitpause = 0
;persistent = 1



[State 1028, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 1028, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 1028, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 1028, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 1028, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;Aerial Cyclone Kick 1 
[Statedef 1082]
type = A
movetype = A
physics = A
poweradd = 75
ctrl = 0
anim = 1011
juggle = 3


[State 0, 1]
type = VelAdd
trigger1 = 1
y = -.23
;ignorehitpause = 0
;persistent = 1

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
damage    = 12, 3
getpower  = 20
givepower = 10
guardflag = MA
pausetime = 12,12
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,6
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


;Aerial Cyclone Kick 2
[Statedef 1083]
type = A
movetype = A
physics = N
poweradd = 75
ctrl = 0
anim = 1011
velset = ifelse(vel X <0,-4,4),0
juggle = 4

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
damage    = 12, 3
getpower  = 20
givepower = 10
guardflag = MA
pausetime = 12,12
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,6
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

;Aerial Cyclone Kick 3 
[Statedef 1084]
type = A
movetype = A
physics = N
poweradd = 75
ctrl = 0
anim = 1011
velset = ifelse(vel X <0,-4,4),-4
juggle = 4

[State 0, 1]
type = VelAdd
trigger1 = time > 20
y = .15
;ignorehitpause = 0
;persistent = 1

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
damage    = 12, 3
getpower  = 20
givepower = 10
guardflag = MA
pausetime = 12,12
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,6
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.Velocity = -2.2,-5
air.Velocity = -2.2, -6
envshake.time = 10
fall.envshake.time = 10
fall = 1
fall.recover = 0



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

