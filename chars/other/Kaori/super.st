; Super Cancel flash
[Statedef 9997]
type = S
ctrl = 0
anim = 9997
velset = 0,0
sprpriority = 4

[State 0, 1]
type = BGPalFX
trigger1 = time = 0
time = 50
sinadd = -128,-128,-64,100
ignorehitpause = 1

[State 192, 2]
type = PlaySnd
trigger1 = time = 0
value = 20, 0
volume = 0

[State 3510, 4]
type = explod
trigger1 = time =0
anim = 8001
pos = -6,-63
postype = p1
sprpriority = 4
supermove = 1
bindtime = 15
removetime = 30
vel = 0,0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, 3]
type = Explod
trigger1 = time = 0
pos = -6, -63
persistent = 0
ignorehitpause = 1
sprpriority = 5
ontop = 1
supermove = 1
bindtime = 40
anim = 8003
ID = 8003
supermovetime = 999
pausemovetime = 999
scale = .5,.5


[State 0, 1]
type = PalFX
trigger1 = Time >= 20
add = ((time-20)*-20)-1,((time-20)*-20)-1,((time-20)*-20)-1
time = 1

[State 7001, 2]
type = DestroySelf
trigger1 = time =30

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

; Super Cancel flash
[Statedef 9998]
type = S
ctrl = 0
anim = 9997
velset = 0,0
sprpriority = 4

[State 0, 1]
type = BGPalFX
trigger1 = time = 0
time = 50
sinadd = -128,-128,-64,100
ignorehitpause = 1

[State 192, 2]
type = PlaySnd
trigger1 = time = 0
value = 20, 0
volume = 0

[State 3510, 4]
type = explod
trigger1 = time =0
anim = 8001
pos = -6,-43
postype = p1
sprpriority = 4
supermove = 1
bindtime = 15
removetime = 30
vel = 0,0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 3510, 4]
type = explod
trigger1 = time =0
anim = 8002
pos = 0,0
postype = p1
sprpriority = 4
supermove = 1
bindtime = 15
vel = 0,0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, 3]
type = Explod
trigger1 = time = 0
pos = -6, -43
persistent = 0
ignorehitpause = 1
sprpriority = 5
ontop = 1
supermove = 1
bindtime = 40
anim = 8003
ID = 8003
supermovetime = 999
pausemovetime = 999
scale = .5,.5

[State 0,1]
type = Explod
trigger1 = time = 0
anim = 8000
ID = 8000
postype =p1
pos =0,0
sprpriority = 1
bindtime = 1
removetime = 30
supermove = 1
ignorehitpause = 1
;removeongethit = 1
pausemovetime = 999
scale =0.0, 0.0

[State 0, 1]
type = ModifyExplod
trigger1 = Time >= 1
anim = 8000
ID = 8000
sprpriority = 1
vel=0,0
scale =0.1 +Time*0.06 , 0.05 +Time*0.0075

[State 0, 1]
type = PalFX
trigger1 = Time >= 20
add = ((time-20)*-20)-1,((time-20)*-20)-1,((time-20)*-20)-1
time = 1

[State 7001, 2]
type = DestroySelf
trigger1 = time =30

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

; Super Cancel flash
[Statedef 9999]
type = S
ctrl = 0
anim = 9997
velset = 0,0
sprpriority = 4

[State 0, 1]
type = BGPalFX
trigger1 = time = 0
time = 78
sinadd = -128,-128,-64,156
ignorehitpause = 1

[State 192, 2]
type = PlaySnd
trigger1 = time = 0
value = 20, 1
volume = 0

[State 3510, 4]
type = explod
trigger1 = time =0
anim = 8001
pos = -6,-43
postype = p1
sprpriority = 4
supermove = 1
bindtime = 15
removetime = 50
vel = 0,0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 3510, 4]
type = explod
trigger1 = time =0
anim = 8002
pos = 0,0
postype = p1
sprpriority = 4
supermove = 1
bindtime = 15
vel = 0,0
ownpal = 1
supermovetime = 999
pausemovetime = 999

[State 0, 3]
type = Explod
trigger1 = time = 5
pos = -6, -43
persistent = 0
ignorehitpause = 1
sprpriority = 5
ontop = 1
supermove = 1
bindtime = 50
anim = 8004
ID = 8003
supermovetime = 999
pausemovetime = 999
scale = 1,1

[State 0,1]
type = Explod
trigger1 = time = 0
anim = 8000
ID = 8004
postype =p1
pos = -6, -43
sprpriority = 5
bindtime = 1
removetime = 50
supermove = 1
ignorehitpause = 1
;removeongethit = 1
pausemovetime = 999
scale =0.0, 0.0

[State 0,1]
type = Explod
trigger1 = time = 0
anim = 8000
ID = 8005
postype =p1
pos = -6, -43
sprpriority = 1
bindtime = 1
removetime = 50
supermove = 1
ignorehitpause = 1
;removeongethit = 1
pausemovetime = 999
scale =0.0, 0.0

[State 0,1]
type = Explod
trigger1 = time = 0
anim = 8000
ID = 8000
postype =p1
pos =0,0
sprpriority = 1
bindtime = 1
removetime = 50
supermove = 1
ignorehitpause = 1
;removeongethit = 1
pausemovetime = 999
scale =0.0, 0.0

[State 0, 1]
type = ModifyExplod
trigger1 = Time >= 1
anim = 8000
ID = 8000
sprpriority = 1
vel=0,0
scale =0.1 +Time*0.04 , 0.05 +Time*0.005

[State 0, 1]
type = ModifyExplod
trigger1 = Time >= 1
anim = 8000
ID = 8004
sprpriority = 1
vel=0,0
scale =0.1 +Time*0.07 , 0.1 +Time*0.07

[State 0, 1]
type = ModifyExplod
trigger1 = Time >= 1
anim = 8000
ID = 8005
sprpriority = 1
vel=0,0
scale =0.1 +Time*0.02 , 0.1 +Time*0.02

[State 0, 1]
type = PalFX
trigger1 = Time >= 30
add = ((time-30)*-12)-1,((time-30)*-12)-1,((time-30)*-12)-1
time = 1

[State 7001, 2]
type = DestroySelf
trigger1 = time =50

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

; EX Ressenshu
[Statedef 2000]
type = S
movetype = A
physics = N
anim = 10
velset = 0,0
ctrl = 0
sprpriority = 2
juggle = 4

[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 2,4
channel = 0

[State 9999, 0]
type = Helper
trigger1 = time = 0 
pos = 0, 0
postype = p1
stateno = 9998
helpertype = normal
name = "Super Trigger"
id = 9999
ownpal = 1
supermovetime = 999999



[State 0, 1]
type = SuperPause
trigger1 = !time
time = 30
anim = -1
pos = 0,0
;movetime = 50
darken = 0
poweradd = -1000
unhittable = 1
ignorehitpause = 1



[State 0, ]
type = ChangeState
trigger1 = time >=1
value = 2001 + (palno = 12)
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

; Ressenshu
[Statedef 2001]
type = U
movetype = A
physics = N
poweradd = 40
velset = 0, 0
ctrl = 0

[State 3000, Super B]
type = AfterImage
trigger1 = !time
time = 6
PalContrast =  255,0,0
PalBright = 10,10,10
trans = add
ignorehitpause = 1
ignorehitpause = 1

[State 3000, Super C]
type = AfterImageTime
trigger1 = AnimTime != 0
time = 6

[State 210, Width]
type = Width
trigger1 = (AnimElemTime (3) >= 0) && (AnimElemTime (7) < 0) 
value = 40,0

[State 0, 1]
type = Explod
trigger1 = !time
anim = 2001
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1

[State 0, 1]
type = Explod
trigger1 = AnimElem = 8
anim = 1015
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1

[State 0, 1]
type = PosAdd
trigger1 = AnimElem = 7
x = 30
;y = 
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = StateTypeSet
trigger1 = AnimElem =8
statetype = A

[State 0, 1]
type = VelSet
trigger1 = AnimElem =8
x= 2.5
y = -4.7

[State 0, 1]
type = Gravity
trigger1 = AnimElemtime(8) > 0


[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 2000
value = 2000

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2,1
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2,2
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 || AnimElem = 8
value = 0,7
volume = 255

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =3
postype = p1
pos = 79,-55
stateno = 2005
bindtime = 1
ownpal = 1
name = "Energy Ball"
ID = 2000

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =9
postype = p1
pos = 79,-65
stateno = 2006
bindtime = 1
ownpal = 1
name = "Energy Ball"
ID = 2000


[State 0, 1]
type = ChangeState
trigger1 = Vel y > 0 && Pos Y >=0
value = 52

; EX Ressenshu (Gold)
[Statedef 2002]
type = U
movetype = A
physics = N
poweradd = 40
velset = 0, 0
ctrl = 0

[State 3000, Super B]
type = AfterImage
trigger1 = !time
time = 6
TimeGap  = 2
FrameGap = 3
PalContrast =  255,0,0
PalBright = 10,10,10
trans = add
ignorehitpause = 1

[State 3000, Super C]
type = AfterImageTime
trigger1 = AnimTime != 0
time = 6

[State 210, Width]
type = Width
trigger1 = (AnimElemTime (3) >= 0) && (AnimElemTime (11) < 0) 
value = 40,0

[State 0, 1]
type = Explod
trigger1 = !time
anim = 2003
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1

[State 0, 1]
type = Explod
trigger1 = AnimElem = 12
anim = 1015
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1

[State 0, 1]
type = Explod
trigger1 = AnimElem = 14
anim = 1015
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1

[State 0, 1]
type = PosAdd
trigger1 = AnimElem = 11
x = 30
;y = 
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = StateTypeSet
trigger1 = AnimElem =12
statetype = A

[State 0, 1]
type = VelSet
trigger1 = AnimElem =12
x= 2.5
y = -5.7

[State 0, 1]
type = Gravity
trigger1 = AnimElemtime(12) > 0


[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 2002
value = 2002

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 9
value = 2,1
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 12 || AnimElem = 14
value = 2,2
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 || AnimElem = 9 || AnimElem = 12 || AnimElem = 14
value = 0,7
volume = 255

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =3 || AnimElem = 13
postype = p1
pos = 79,-55
stateno = 2005
bindtime = 1
ownpal = 1
name = "Energy Ball"
ID = 2000

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =9
postype = p1
pos = 69,-25
stateno = 2005
bindtime = 1
ownpal = 1
name = "Energy Ball"
ID = 2000

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem = 15
postype = p1
pos = 79,-55
stateno = 2006
bindtime = 1
ownpal = 1
name = "Energy Ball"
ID = 2000


[State 0, 1]
type = ChangeState
trigger1 = Vel y > 0 && Pos Y >=0
value = 52


; The Energy Shot
[Statedef 2005]
type = S
movetype = A
physics = N
velset = 7,0
anim = 1005
sprpriority = 2
juggle = 2
ctrl = 0

[State 0, 1]
type = ParentVarAdd
trigger1 = !time
v =  9
value = -100

[State 4001, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0




[State 4001, HitDef]
type = HitDef
trigger1 = UniqHitCount = 0
attr = S, SP
animtype = Medium
damage = 87,5
hitflag = MAFD
guardflag = MA
pausetime = 0, 9
sparkno = 3
sparkxy = 0,0
hitsound = s5,7
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 26
ground.velocity = -12,0
guard.velocity = -6
air.velocity = -6,-4
airguard.velocity = -6,-1
down.velocity = -12,0
getpower = 0
down.hittime = 26
palfx.color = 0
fall.recover = 0
envshake.time = 10
air.fall = 1

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

[State 4001, ChangeState]
type = ChangeState
trigger1 = MoveContact = 1
trigger2 = Pos Y > -10
value = 1006

[State 4001, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -70

; The Energy Shot
[Statedef 2006]
type = S
movetype = A
physics = N
velset = 9,0
anim = 1005
sprpriority = 2
juggle = 2
ctrl = 0

[State 0, 1]
type = ParentVarAdd
trigger1 = !time
v =  9
value = -100

[State 4001, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0




[State 4001, HitDef]
type = HitDef
trigger1 = UniqHitCount = 0
attr = S, SP
animtype = Medium
damage = 87,5
hitflag = MAFD
guardflag = MA
pausetime = 0, 9
sparkno = 3
sparkxy = 0,0
hitsound = s5,7
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 26
ground.velocity = -12,-4
guard.velocity = -6
air.velocity = -6,-4
airguard.velocity = -6,-1
down.velocity = -12,0
down.hittime = 26
palfx.color = 0
getpower = 0
fall.recover = 0
envshake.time = 10
fall = 1

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

[State 4001, ChangeState]
type = ChangeState
trigger1 = MoveContact = 1
trigger2 = Pos Y > -10
value = 1006

[State 4001, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -70

; EX Enkenfu
[Statedef 2010]
type = S
movetype = A
physics = N
anim = 10
velset = 0,0
ctrl = 0
sprpriority = 2
juggle = 4

[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 2,4
channel = 0

[State 9999, 0]
type = Helper
trigger1 = time = 0 
pos = 0, 0
postype = p1
stateno = 9998
helpertype = normal
name = "Super Trigger"
id = 9999
ownpal = 1
supermovetime = 999999



[State 0, 1]
type = SuperPause
trigger1 = !time
time = 30
anim = -1
pos = 0,0
;movetime = 50
darken = 0
poweradd = -1000
unhittable = 1
ignorehitpause = 1



[State 0, ]
type = ChangeState
trigger1 = time >=1
value = 2011
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

; Enkenfu part 1
[Statedef 2011]
type    = S
physics = N
anim = 100
sprpriority = 2
ctrl = 0

[State 3000, Super B]
type = AfterImage
trigger1 = !time
time = 6
PalContrast =  255,0,0
PalBright = 10,10,10
trans = add
ignorehitpause = 1

[State 3000, Super C]
type = AfterImageTime
trigger1 = AnimTime != 0
time = 6


[State 0,1 ]
type = Width
trigger1 = 1
edge = 50,0
player = 50,0
;ignorehitpause = 0
;persistent = 1

[State 191, 3]
type = PlaySnd
trigger1 = Time = 0
value = 55,0

[State 100, 1]
type = VelSet
trigger1 = time = 0
x = 6.6 + ((palno=12)*3)


[State 100, 4]
type = ChangeState
triggerall = time > 1
trigger1 = Time = 15 || P2BodyDist X <= 60
value = 2012

[Statedef 2012]
type = A
movetype = A
physics = N
velset = 1.5,0
ctrl = 0
anim = 1011

[State 3000, Super B]
type = AfterImage
trigger1 = !time
time = 6
PalContrast =  255,0,0
PalBright = 10,10,10
trans = add
ignorehitpause = 1

[State 3000, Super C]
type = AfterImageTime
trigger1 = AnimTime != 0
time = 6
[State 0, ]
type = Width
trigger1 = !time
edge = 60,0
player = 60,0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = PosAdd
trigger1 = !time
x = 30
;y = 
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = Explod
trigger1 = AnimElem = 1
anim = 1015
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0

[State 0, 1]
type = Explod
trigger1 = AnimElem = 3
anim = 1016
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0

[State 0, 1]
type = VelSet
trigger1 = AnimElem =1
x= 2.5
y = -3.7

[State 0, 1]
type = VelAdd
trigger1 = AnimElemtime(1) > 0
y = .2
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 1,5
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
trigger1 = AnimElem = 2 || AnimElem = 4 
value = 0,7

[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 2 || AnimElem = 4
attr = A, SA
damage    = 50, 4
getpower  = 20
givepower = 10
guardflag = MA
pausetime = 6,6
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,5
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.Velocity = -1.2,-4
air.Velocity = -1.2, -4
getpower = 0
envshake.time = 10
fall.envshake.time = 10
fall = 1
fall.recover = 0

[State 0, 1]
type = ChangeState
trigger1 = movecontact && AnimElem = 5, 4
value = 2013


[State 0, 1]
type = ChangeState
trigger1 = Vel y > 0 && Pos Y >=0
value = 52

[Statedef 2013]
type = A
movetype = A
physics = N
velset = 2.5,0
ctrl = 0
anim = 2011


[State 3000, Super B]
type = AfterImage
trigger1 = !time
time = 6
PalContrast =  255,0,0
PalBright = 10,10,10
trans = add
ignorehitpause = 1

[State 3000, Super C]
type = AfterImageTime
trigger1 = AnimTime != 0
time = 6

[State 0, 1]
type = Explod
trigger1 = AnimElem = 1
anim = 1015
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0

[State 0, 1]
type = Explod
trigger1 = AnimElem = 3
anim = 1016
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0

[State 0, 1]
type = Explod
trigger1 = AnimElem = 6
anim = 1017
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0



[State 0, 1]
type = VelAdd
trigger1 = AnimElemtime(7) > 0
y = .2
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 4 || AnimElem = 7
value = 0,7

[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 2 || AnimElem = 4 
attr = A, SA
damage    = 50, 4
getpower  = 20
givepower = 10
guardflag = MA
pausetime = 6,6
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,5
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 15
getpower = 0
ground.Velocity = -1.2,-2
air.Velocity = -1.2, -2
envshake.time = 10
fall.envshake.time = 10
fall = 1
fall.recover = 0


[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 8 
attr = A, SA
damage    = 75, 3
getpower  = 20
givepower = 10
guardflag = MA
pausetime = 20,20
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,4
guardsound = 6,0
getpower = 0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.Velocity = -6,6
air.Velocity = -6, 6
envshake.time = 20
fall.envshake.time = 20
fall = 1
fall.recover = 0



[State 0, 1]
type = ChangeState
trigger1 = Vel y > 0 && Pos Y >=0
value = 52

; EX Varied Assault Gold
[Statedef 2030]
type = S
movetype = A
physics = N
anim = 10
velset = 0,0
ctrl = 0
sprpriority = 2
juggle = 4

[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 2,4
channel = 0

[State 9999, 0]
type = Helper
trigger1 = time = 0 
pos = 0, 0
postype = p1
stateno = 9998
helpertype = normal
name = "Super Trigger"
id = 9999
ownpal = 1
supermovetime = 999999



[State 0, 1]
type = SuperPause
trigger1 = !time
time = 30
anim = -1
pos = 0,0
;movetime = 50
darken = 0
poweradd = -1000
unhittable = 1
ignorehitpause = 1



[State 0, ]
type = ChangeState
trigger1 = time >=1
value = 2031
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

; May Lee super ripoff GO!
[Statedef 2031]
type    = S
physics = N
anim = 100
sprpriority = 2
ctrl = 0

[State 3000, Super B]
type = AfterImage
trigger1 = !time
time = 6
PalContrast =  255,0,0
PalBright = 10,10,10
trans = add
ignorehitpause = 1

[State 3000, Super C]
type = AfterImageTime
trigger1 = AnimTime != 0
time = 6


[State 0,1 ]
type = Width
trigger1 = 1
edge = 50,0
player = 50,0
;ignorehitpause = 0
;persistent = 1

[State 191, 3]
type = PlaySnd
trigger1 = Time = 0
value = 55,0

[State 100, 1]
type = VelSet
trigger1 = time = 0
x = 6.6 + ((palno=12)*3)


[State 100, 4]
type = ChangeState
triggerall = time > 1
trigger1 = Time = 15 || P2BodyDist X <= 60
value = 2032

[Statedef 2032]
type = S
movetype = A
physics = N
velset = 1.5,0
ctrl = 0
anim = 1030
juggle = 6

[State 3000, Super B]
type = AfterImage
trigger1 = !time
time = 6
PalContrast =  255,0,0
PalBright = 10,10,10
trans = add
ignorehitpause = 1

[State 3000, Super C]
type = AfterImageTime
trigger1 = AnimTime != 0
time = 6


[State 1101, 4]
type = VelSet
trigger1 = Animelem = 2
x = 2.5
y = -8.5

[State 1101, 5]
type = VelAdd
trigger1 = Animelemtime(2) >= 0
y = .7


[State 0, ]
type = Width
trigger1 = !time
edge = 60,0
player = 60,0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = StateTypeSet
trigger1 = AnimElem =2
statetype = A




[State 0, 1]
type = PosAdd
trigger1 = !time
x = 30
;y = 
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = Explod
trigger1 = AnimElem = 2
anim = 1017
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0

[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 2,6
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
trigger1 = AnimElem = 3  
value = 0,7

[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 3 
attr = A, SA
hitflag = MA
damage    = 50, 3
getpower  = 20
givepower = 10
guardflag = HA
pausetime = 12,12
sparkxy = -5,-32
sparkno = 3
hitsound   = s5,5
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.Velocity = 6
air.Velocity = -6, -3
envshake.time = 12
fall.envshake.time = 20
air.fall = 1
fall.recover = 0

[State 0, 1]
type = ChangeState
trigger1 = Vel y > 0 && Pos Y >=0 && movehit
value = 2033

[State 0, 1]
type = ChangeState
trigger1 = Vel y > 0 && Pos Y >=0
value = 52

[Statedef 2033]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 2030
juggle = 6

[State 0, 1]
type = Explod
trigger1 = AnimElem = 4
anim = 241
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0


[State 3000, Super B]
type = AfterImage
trigger1 = !time
time = 6
PalContrast =  255,0,0
PalBright = 10,10,10
trans = add
ignorehitpause = 1

[State 3000, Super C]
type = AfterImageTime
trigger1 = AnimTime != 0
time = 6

[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 1 
attr = S, SA
hitflag = MA
damage    = 50, 3
getpower  = 20
givepower = 10
guardflag = MA
pausetime = 0,0
sparkxy = -5,-8
sparkno = 3
hitsound   = s5,2
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.Velocity = 6
air.Velocity = 6, -3
envshake.time = 10
fall.envshake.time = 10


[State 0, ]
type = PosSet
trigger1 = !time
y = 0

[State 0, ]
type = VelSet
trigger1 = AnimElemtime(2)>= 0 && AnimElemtime(4) < 0
x = -10


[State 0, ]
type = VelSet
trigger1 = AnimElem = 4
x = 15



[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 1,6
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
trigger1 = AnimElem = 4 
value = 0,1

[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 4 
attr = S, SA
hitflag = MAFD
damage    = 125, 3
getpower  = 20
givepower = 10
guardflag = L
pausetime = 25,25
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,4
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.Velocity = -15.2,-3
air.Velocity = -15.2, -3
envshake.time = 25
fall.envshake.time = 10
fall = 1
fall.recover = 0
p2stateno = 1078
p2facing = 1



[State 0, 1]
type = ChangeState
trigger1 = !Animtime
value = 0
ctrl = 1


; Wire Attack
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


; EX Ressenshu
[Statedef 2040]
type = A
movetype = A
physics = N
anim = 44
velset = 0,0
ctrl = 0
sprpriority = 2
juggle = 4

[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 2,4
channel = 0

[State 9999, 0]
type = Helper
trigger1 = time = 0 
pos = 0, 0
postype = p1
stateno = 9997
helpertype = normal
name = "Super Trigger"
id = 9999
ownpal = 1
supermovetime = 999999



[State 0, 1]
type = SuperPause
trigger1 = !time
time = 30
anim = -1
pos = 0,0
;movetime = 50
darken = 0
poweradd = -1000
unhittable = 1
ignorehitpause = 1



[State 0, ]
type = ChangeState
trigger1 = time >=1
value = 2041
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

; Ressenshu
[Statedef 2041]
type = A
movetype = A
physics = N
poweradd = 40
velset = 0, 0
ctrl = 0
anim = 1011

[State 3000, Super B]
type = AfterImage
trigger1 = !time
time = 6
PalContrast =  255,0,0
PalBright = 10,10,10
trans = add
ignorehitpause = 1

[State 3000, Super C]
type = AfterImageTime
trigger1 = AnimTime != 0
time = 6

[State 210, Width]
type = Width
trigger1 = (AnimElemTime (3) >= 0) && (AnimElemTime (7) < 0) 
value = 40,0

[State 0, 1]
type = Explod
trigger1 = AnimElem = 1
anim = 1015
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1

[State 0, 1]
type = Explod
trigger1 = AnimElem = 3
anim = 1016
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1

[State 0, 1]
type = VelSet
trigger1 = AnimElem =3
x = -3
y = -5

[State 0, 1]
type = Gravity
trigger1 = AnimElemtime(3) > 0


[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,1
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 4
value = 0,7
volume = 255

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =2
postype = p1
pos = 79,-55
stateno = 2005
bindtime = 1
ownpal = 1
name = "Energy Ball"
ID = 2000

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =4
postype = p1
pos = 79,-55
stateno = 2006
bindtime = 1
ownpal = 1
name = "Energy Ball"
ID = 2000


[State 0, 1]
type = ChangeState
trigger1 = Vel y > 0 && Pos Y >=0
value = 52





; Retsuzandou
[Statedef 3000]
type = S
movetype = A
physics = N
anim = 10
velset = 0,0
ctrl = 0
sprpriority = 2
juggle = 4

[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 2,4
channel = 0

[State 9999, 0]
type = Helper
trigger1 = time = 0 
pos = 0, 0
postype = p1
stateno = 9999
helpertype = normal
name = "Super Trigger"
id = 9999
ownpal = 1
supermovetime = 999999



[State 0, 1]
type = SuperPause
trigger1 = !time
time = 50
anim = -1
pos = 0,0
;movetime = 50
darken = 0
poweradd = -2000
unhittable = 1
ignorehitpause = 1



[State 0, ]
type = ChangeState
trigger1 = time >=1
value = 3001
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1


;Retsuzandou (Running)
[Statedef 3001]
type = S
movetype = A
physics = N
anim = 3000
velset = 0,0
ctrl = 0
sprpriority = 2


[State 191, 3]
type = PlaySnd
trigger1 = Time = 0
value = 55,0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2
volume = 255



[State 0, ]
type = VelSet
trigger1 = time = 0
x = 6.6

[State 3000, Super B]
type = AfterImage
trigger1 = !time
time = 6
PalContrast =  255,0,0
PalBright = 10,10,10
trans = add
ignorehitpause = 1

[State 3000, Super C]
type = AfterImageTime
trigger1 = AnimTime != 0
time = 6


[State 0, 1]
type = HitDef
trigger1 = animelem = 1
attr = S,HA
hitflag = MAF
guardflag = HA
animtype = Hard
priority = 5,Hit
damage = 20,0
pausetime = 10,10
snap = 30,0,0
sparkno = 3
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
ground.velocity = -5
guard.velocity = -6
air.velocity = -3,3
airguard.velocity = -5,-3
getpower = 0
givepower = 10,40
envshake.time = 5
fall.envshake.time = 10
p1stateno = 3002
p2stateno = 3005
kill = 0

[State 1000, ChangeState]
type = ChangeState
trigger1 = time = 25
value = 0
ctrl = 1

;Kicking frenzy
[Statedef 3002]
type    = S
movetype= A
physics = N
anim = 3001
velset= 0,0

[State 3000, Super B]
type = AfterImage
trigger1 = !time
time = 6
PalContrast =  255,0,0
PalBright = 10,10,10
trans = add
ignorehitpause = 1

[State 3000, Super C]
type = AfterImageTime
trigger1 = AnimTime != 0
time = 6

[State 191, 6]
type = PlaySnd
trigger1 = AnimElem = 1 
value = 1,0
volume = 255
channel = 0

[State 0, 1]
type = Explod
trigger1 = AnimElem = 35
anim = 241
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0



[State 0, ]
type = EnvColor
trigger1 = AnimElem = 2 || AnimElem = 5 || AnimElem = 9 || Animelem = 12 || AnimElem = 15
trigger2 = AnimElem = 19 || AnimElem = 26 || AnimElem = 30 || Animelem = 35 
value = 255,255,255
time = 1
under = 0
ignorehitpause = 1
;persistent = 1



[State 810, Throw Sound]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 5 || AnimElem = 9 || Animelem = 12 || AnimElem = 15
trigger2 = AnimElem = 19 || AnimElem = 26 || AnimElem = 30 || Animelem = 35 
value = 5, 0+(random%4)

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElemTime(6) < 0
pos = 50, 0



[State 0, 1]
type = HitAdd
trigger1 = AnimElem = 2 || AnimElem = 5 || AnimElem = 9 || Animelem = 12 || AnimElem = 15
trigger2 = AnimElem = 19 || AnimElem = 26 || AnimElem = 30 || Animelem = 35  
value = 1
;ignorehitpause = 0
;persistent = 1



[State 931, HitSpark]
type = Explod
trigger1 = AnimElem = 2 || AnimElem = 5 || AnimElem = 9 || Animelem = 12 || AnimElem = 15
trigger2 = AnimElem = 19 || AnimElem = 26 || AnimElem = 30 || Animelem = 35 
anim = F2
pos = 0,-40
random = 10,50
postype = p2
sprpriority = 5
ownpal = 1

[State 810, Width 2-11]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(9) < 0
edge = 50,0



[State 810, Hurt 11]
type = TargetLifeAdd
trigger1 = AnimElem = 2 || AnimElem = 5 || AnimElem = 9 || Animelem = 12 || AnimElem = 15
trigger2 = AnimElem = 19 || AnimElem = 26 || AnimElem = 30 || Animelem = 35 
value = -20
kill = 0



[State 810, State End]
type = ChangeState
trigger1 = Animtime = 0
value = 3003

[Statedef 3003]
type    = A
movetype= A
physics = A
poweradd= 65
ctrl = 0
anim = 3002
sprpriority = 2
velset = 3.5, -6

[State 4001, 2]
type = PlayerPush
trigger1 = Time <= 10
value = 0

[State 3000, Super B]
type = AfterImage
trigger1 = !time
time = 6
PalContrast =  255,0,0
PalBright = 10,10,10
trans = add
ignorehitpause = 1

[State 3000, Super C]
type = AfterImageTime
trigger1 = AnimTime != 0
time = 6

[State 640, 3]
type = HitDef
trigger1 = AnimElem = 2 || AnimElem =4 || AnimElem = 6
attr = A, NA
damage    = 20
guardflag = HA
priority = 4
pausetime = 10,10
sparkno = 3
sparkxy = -1,-4
hitsound   = s5,5
guardsound = 6,0
animtype = Med
ground.type = High
getpower = 0
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3,-6
air.velocity = -3,-6
envshake.time = 12
fall = 1
fall.recover = 0
kill = 0

[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 10 
attr = A, SA
damage    = 200, 40
getpower  = 20
givepower = 10
guardflag = MA
pausetime = 25,25
sparkxy = -5,-32
sparkno = 3
hitsound   = s5,4
guardsound = 6,0
ground.type = High
getpower = 0
air.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.Velocity = -6,6
air.Velocity = -6, 6
envshake.time = 25
fall.envshake.time = 20
fall = 1
fall.recover = 0

[State 1]
type = Helper
trigger1 = AnimElem =10 && (movehit) 
name = "Effect"
id = 3009
postype = p2
pos = -5,-32
stateno = 3009
ignorehitpause = 1
ownpal = 1


[State 0, ]
type = VelSet
trigger1 = AnimElem = 3 || AnimElem =5 || AnimElem = 7
x = 3.5
y = -6 
ignorehitpause = 1
;persistent = 1
[State 0, 1]
type = Explod
trigger1 = AnimElem = 8
anim = 1017
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0


[State 600, 3]
type = ChangeState
trigger1 = Animtime = 0
value = 3004

[Statedef 3004]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 5210
sprpriority = 2
velset = -3.5, -5

[State 0, 1]
type = ChangeState
trigger1 = Vel y > 0 && Pos Y >=0
value = 52

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw
; (a custom gethit state)
; Description: This is the state that the opponent changes to after being
;     hit by KFM's throw HitDef. The important thing here is to use a
;     ChangeAnim2 controller. The difference between ChangeAnim2 and
;     ChangeAnim is that ChangeAnim2 changes the player's animation to
;     an action in the AIR file of the attacker (in this case, kfm.air),
;     whereas ChangeAnim always changes the player to an action in his
;     own AIR file. Look at Action 820 in kfm.air for some extra
;     comments.
[Statedef 3005]
type    = S
movetype= H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3005

; Super Cancel flash
[Statedef 3009]
type = S
ctrl = 0
anim = 9997
velset = 0,0
sprpriority = 4

[State 0, 1]
type = BGPalFX
trigger1 = time = 0
time = 20
add = 255,255,255
sinadd = -255,-255,-255,80
ignorehitpause = 1

[State 192, 2]
type = PlaySnd
trigger1 = time = 0
value = 5, 8
volume = 255



[State 0,1]
type = Explod
trigger1 = time = 0
anim = 8000
ID = 8004
postype =p1
pos = -0,0
sprpriority = 5
bindtime = 1
removetime = 50
supermove = 1
ignorehitpause = 1
;removeongethit = 1
pausemovetime = 999
scale =0.0, 0.0

[State 0,1]
type = Explod
trigger1 = time = 0
anim = 8000
ID = 8005
postype =p1
pos = 0,0
sprpriority = 1
bindtime = 1
removetime = 50
supermove = 1
ignorehitpause = 1
;removeongethit = 1
pausemovetime = 999
scale =0.0, 0.0


[State 1]
type = ModifyExplod
trigger1 = Time >= 1
anim = 8000
ID = 8004
sprpriority = 1
vel=0,0
scale =0.1 +Time*0.3, 0.1 +Time*0.3

[State 1]
type = ModifyExplod
trigger1 = Time >= 1
anim = 8000
ID = 8005
sprpriority = 1
vel=0,0
scale =0.1 +Time*0.1 , 0.1 +Time*0.1

[State 1]
type = PalFX
trigger1 = Time >= 30
add = ((time-30)*-12)-1,((time-30)*-12)-1,((time-30)*-12)-1
time = 1

[State 7001, 2]
type = DestroySelf
trigger1 = time =50

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
