; Super Cancel flash
[Statedef 9998]
type = S
ctrl = 0
anim = 9997
velset = 0,0
sprpriority = 4

[State 192, 2]
type = PlaySnd
trigger1 = time = 0
value = 20, 1
volume = 0

[State 3510, 4]
type = explod
trigger1 = time =0
anim = 8510
pos = 0,0
postype = p1
sprpriority = -2
supermove = 1
bindtime = 15
removetime = 50
vel = 0,0


[State 0, 3]
type = Explod
trigger1 = time = 0
pos = 0, 0
persistent = 0
ignorehitpause = 1
sprpriority = 5
ownpal = 1
ontop = 1
supermove = 1
bindtime = 50
anim = 8503
ID = 8503

[State 2090, 7]
type = ModifyExplod
trigger1 = Time >= 0
ID = 8503
scale = .025*time, .025*time

[State 0, 1]
type = Explod
trigger1 = time <= 30
trigger1 = timemod =6, 0
trigger1 = NumExplod(8502) <= 20
pos = 0, -120
ignorehitpause = 1
sprpriority = 6
ownpal = 1
ontop = 1
removetime = 15
random = 30,30
vel = 0,8
supermove = 1
bindtime = 1
anim = 8502
ID = 8502
scale = .5,.5

[State 0, 2]
type = Explod
trigger1 = time <= 30
trigger1 = timemod =6, 0
trigger1 = NumExplod(8502) <= 20
pos = 0, 120
;persistent = 0
ignorehitpause = 1
sprpriority = 6
ownpal = 1
ontop = 1
Removetime = 15
Random = 30,30
Vel = 0,-8
supermove = 1
bindtime = 1
anim = 8502
ID = 8502
scale = .5,.5

[State 0, 3]
type = Explod
trigger1 = time <= 30
trigger1 = timemod =6, 0
trigger1 = NumExplod(8502) <= 20
pos = 120, 0
ignorehitpause = 1
sprpriority = 6
ownpal = 1
ontop = 1
Removetime = 15
Random = 30,30
Vel = -8,0
supermovetime = 2147483647
supermove = 1
bindtime = 1
anim = 8502
ID = 8502
scale = .5,.5


[State 0, 4]
type = Explod
trigger1 = time <= 30
trigger1 = timemod =6, 0
trigger1 = NumExplod(8502) <= 20
pos = -120, 0
;persistent = 0
ignorehitpause = 1
sprpriority = 6
ownpal = 1
ontop = 1
Removetime = 15
Random = 30,30
Vel = 8,0
supermove = 1
bindtime = 1
anim = 8502
ID = 8502
scale = .5,.5

[State 0, 5]
type = Explod
trigger1 = time <= 30
trigger1 = timemod =6, 0
trigger1 = NumExplod(8502) <= 20
pos = 120, -120
;persistent = 0
ignorehitpause = 1
sprpriority =6 
ownpal = 1
ontop = 1
Removetime = 15
Random = 30,30
Vel = -8,8
supermove = 1
bindtime = 1
anim = 8502
ID = 8502
scale = .5,.5

[State 0, 6]
type = Explod
trigger1 = time <= 30
trigger1 = timemod =6, 0
trigger1 = NumExplod(8502) <= 20
pos = -120, -120
;persistent = 0
ignorehitpause = 1
sprpriority = 6
ownpal = 1
ontop = 1
Removetime = 15
Random = 30,30
Vel = 8,8
supermove = 1
bindtime = 1
anim = 8502
ID = 8502
scale = .5,.5

[State 0, 7]
type = Explod
trigger1 = time <= 30
trigger1 = timemod =6, 0
trigger1 = NumExplod(8502) <= 20
pos = 120, 120
ignorehitpause = 1
sprpriority = 6
ownpal = 1
ontop = 1
Removetime = 15
Random = 30,30
Vel = -8,-8
supermove = 1
bindtime = 1
anim = 8502
ID = 8502
scale = .5,.5

[State 0, 8]
type = Explod
trigger1 = time <= 30
trigger1 = timemod =6, 0
trigger1 = NumExplod(8502) <= 20
pos = -120, 120
;persistent = 0
ignorehitpause = 1
sprpriority = 6
ownpal = 1
ontop = 1
Removetime = 15
Random = 30,30
Vel = 8,-8
supermove = 1
bindtime = 1
anim = 8502
ID = 8502
scale = .5,.5

[State 7001, 2]
type = DestroySelf
trigger1 = time =50

[State 9999, 1]
type = AssertSpecial
trigger1 = 1
ignorehitpause = 1
flag = NoFG
flag2 = NoBG
flag3 = NoBarDisplay

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1


[State 2601, Fade In]
type = AllPalFX
trigger1 = !time 
mul =600,600,600
invertall = 1
time = 2


; Super flash
[Statedef 9999]
type = S
ctrl = 0
anim = 9997
velset = 0,0
sprpriority = 4


[State 192, 2]
type = PlaySnd
trigger1 = time = 0
value = 20, 0
volume = 0

[State 3510, 4]
type = explod
trigger1 = time =0
anim = 8500
pos = 0,0
postype = back
sprpriority = -2
supermove = 1
bindtime = 15
removetime = 50
vel = -0.2,0
scale = 2.2,2.2
ID = 9999

[State 3510, 4]
type = explod
trigger1 = time =0
anim = 8504
pos = 0,0
postype = back
sprpriority = -1
supermove = 1
bindtime = 50
removetime = 50
ownpal =1

[State 3510, 4]
type = explod
trigger1 = time =0
anim = 8504
pos = 0,240
postype = back
sprpriority = -1
supermove = 1
bindtime = 50
removetime = 50
ownpal = 1
vfacing = -1

[State 0, 3]
type = Explod
trigger1 = time = 0
pos = 0, 0
persistent = 0
ignorehitpause = 1
sprpriority = 5
ownpal = 1
ontop = 1
supermove = 1
bindtime = 50
anim = 8503
ID = 8503

[State 2090, 7]
type = ModifyExplod
trigger1 = Time >= 0
ID = 8503
scale = .025*time, .025*time

[State 0, 1]
type = Explod
trigger1 = time <= 30
trigger1 = timemod =6, 0
trigger1 = NumExplod(8502) <= 20
pos = 0, -120
ignorehitpause = 1
sprpriority = 6
ownpal = 1
ontop = 1
removetime = 15
random = 30,30
vel = 0,8
supermove = 1
bindtime = 1
anim = 8502
ID = 8502
scale = .5,.5

[State 0, 2]
type = Explod
trigger1 = time <= 30
trigger1 = timemod =6, 0
trigger1 = NumExplod(8502) <= 20
pos = 0, 120
;persistent = 0
ignorehitpause = 1
sprpriority = 6
ownpal = 1
ontop = 1
Removetime = 15
Random = 30,30
Vel = 0,-8
supermove = 1
bindtime = 1
anim = 8502
ID = 8502
scale = .5,.5

[State 0, 3]
type = Explod
trigger1 = time <= 30
trigger1 = timemod =6, 0
trigger1 = NumExplod(8502) <= 20
pos = 120, 0
ignorehitpause = 1
sprpriority = 6
ownpal = 1
ontop = 1
Removetime = 15
Random = 30,30
Vel = -8,0
supermovetime = 2147483647
supermove = 1
bindtime = 1
anim = 8502
ID = 8502
scale = .5,.5


[State 0, 4]
type = Explod
trigger1 = time <= 30
trigger1 = timemod =6, 0
trigger1 = NumExplod(8502) <= 20
pos = -120, 0
;persistent = 0
ignorehitpause = 1
sprpriority = 6
ownpal = 1
ontop = 1
Removetime = 15
Random = 30,30
Vel = 8,0
supermove = 1
bindtime = 1
anim = 8502
ID = 8502
scale = .5,.5

[State 0, 5]
type = Explod
trigger1 = time <= 30
trigger1 = timemod =6, 0
trigger1 = NumExplod(8502) <= 20
pos = 120, -120
;persistent = 0
ignorehitpause = 1
sprpriority =6 
ownpal = 1
ontop = 1
Removetime = 15
Random = 30,30
Vel = -8,8
supermove = 1
bindtime = 1
anim = 8502
ID = 8502
scale = .5,.5

[State 0, 6]
type = Explod
trigger1 = time <= 30
trigger1 = timemod =6, 0
trigger1 = NumExplod(8502) <= 20
pos = -120, -120
;persistent = 0
ignorehitpause = 1
sprpriority = 6
ownpal = 1
ontop = 1
Removetime = 15
Random = 30,30
Vel = 8,8
supermove = 1
bindtime = 1
anim = 8502
ID = 8502
scale = .5,.5

[State 0, 7]
type = Explod
trigger1 = time <= 30
trigger1 = timemod =6, 0
trigger1 = NumExplod(8502) <= 20
pos = 120, 120
ignorehitpause = 1
sprpriority = 6
ownpal = 1
ontop = 1
Removetime = 15
Random = 30,30
Vel = -8,-8
supermove = 1
bindtime = 1
anim = 8502
ID = 8502
scale = .5,.5

[State 0, 8]
type = Explod
trigger1 = time <= 30
trigger1 = timemod =6, 0
trigger1 = NumExplod(8502) <= 20
pos = -120, 120
;persistent = 0
ignorehitpause = 1
sprpriority = 6
ownpal = 1
ontop = 1
Removetime = 15
Random = 30,30
Vel = 8,-8
supermove = 1
bindtime = 1
anim = 8502
ID = 8502
scale = .5,.5

[State 7001, 2]
type = DestroySelf
trigger1 = time =50

[State 9999,0]
type = ModifyExplod
trigger1 = time = [0,10]
ID = 9999
scale = 2.0 - (.1*time), 2.0 - (.1*time)

[State 9999, 1]
type = AssertSpecial
trigger1 = 1
ignorehitpause = 1
flag = NoFG
flag2 = NoBG
flag3 = NoBarDisplay

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 2601, Fade In]
type = PalFX
trigger1 = time = [0,10]
mul =((StateTime)*25),((StateTime)*25),((StateTime)*25)
time = 1

[State 2601, Fade In]
type = PalFX
trigger1 = time = [12,50]
add = 255,0,0
invertall = 1
color = 0
time = 5

[State 2601, Fade In]
type = AllPalFX
trigger1 = time = 10
mul =600,600,600
invertall = 1
time = 2

; ShoryuReppa
[Statedef 3000]
type = S
movetype = A
physics = N
anim = 3000
velset = 0,0
ctrl = 0
sprpriority = 2
juggle = 4

[State 9999, 0]
type = Helper
trigger1 = time = 0 
pos = 0, -50
postype = p1
stateno = ifelse((prevstateno = [3000,3999]),9998,9999)
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
movetime = 50
darken = 1
;p2defmul = 0
poweradd = -1000
unhittable = 1
ignorehitpause = 1
;persistent = 1




[State 0, ]
type = PosAdd
trigger1 = AnimElem = 6
x = 20
;y = 
;ignorehitpause = 0
;persistent = 1



[State 1500, 1]
type = NotHitBy
trigger1 = time <= 60
value = SCA, NA, SA, AP, AT
time = 13

[State 0, 1]
type = Explod
trigger1 = Animelem = 6
anim = 999
pos = 0,0
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1


[State 0, 1]
type = Explod
trigger1 = Animelem = 6
anim = 999
pos = 0,60
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1

[State 0, 1]
type = Explod
trigger1 = Animelem = 6
anim = 999
pos = 0,120
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1

[State 0, 1]
type = Explod
trigger1 = Animelem = 6
anim = 999
pos = 0,180
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1

[State 0, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 2, 2
channel = 0
volume = 255

[State 0, 1]
type = PlaySnd
trigger1 = animelem = 7
value = 1, 10
channel = 0
volume = 255

[State 3000, 7]
type = VelSet
triggerall = Pos Y = 0
trigger1 = AnimElem = 10
trigger2 = AnimElem = 17
trigger3 = AnimElem = 24
trigger4 = AnimElem = 31
x = 2 

[State 0, 7]
type = VelSet
triggerall = Pos Y = 0
trigger1 = AnimElem = 6
trigger2 = AnimElem = 13
trigger3 = AnimElem = 20
trigger4 = AnimElem = 27
trigger5 = AnimElem = 34
x = 8 


[State 1700, 3]
type = HitDef
trigger1 = animElem = 7 || animelem = 8 || animelem = 9
trigger2 = animElem = 14 || animelem = 15 || animelem = 16
trigger3 = animElem = 21 || animelem = 22 || animelem = 23
trigger4 = animElem = 28 || animelem = 29 || animelem = 30
trigger5 = animElem = 35 
attr = S, HA
damage = 17, 2
animtype = Medium
getpower=   0
givepower = 15
priority = 5, Hit
hitflag = MAF
guardflag = MA
pausetime = 5, 5
sparkxy = 0, -45
sparkno = 2
hitsound = s5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 30
ground.hittime = 30
ground.velocity = -6
air.velocity = -7,-.5
fall.animtype = Hard
envshake.time = 10


[State 1700, 4]
type = HitDef
trigger1 = AnimElem = 36
attr = S, HA
damage = 25, 3
animtype = hard
getpower=   0
givepower = 15
priority = 5, Hit
hitflag = MAF
guardflag = MA
pausetime = 5, 5
sparkxy = 0, -60
sparkno = 2
hitsound = s5,2
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -5 ,-9
air.velocity = -5, -9
fall = 1
fall.recover = 0
envshake.time = 10


[State 1700, 9]
type = ChangeState
trigger1 = AnimElem = 37
value = 3001



;----------------------------------------------------------
; Dragon Punch rising
[Statedef 3001]
type = A
movetype = A
velset = 12, -12
sprpriority = 2
juggle = 2

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
value = 0, 12
volume = 255



[State 0, 1]
type = Explod
trigger1 = !time 
anim = 3001
ID = 3001
pos = floor(backedgebodydist)+60,240
postype = back
bindtime = -1
supermove = 1
removeongethit = 1
ignorehitpause = 0
sprpriority = 0



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
trigger1 = AnimElemtime(37)>= 0 
attr = S, HA
damage = 7, 1
animtype = Hard
getpower=   0
givepower = 15
priority = 5, Hit
hitflag = MAF
guardflag = MA
pausetime = 5, 4
sparkxy = -10, -60
sparkno = 3
hitsound = s5,9
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -8, -10
air.velocity = -8, -10
air.hittime = 45
envshake.time = 5
fall.envshake.time = 20
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
scale = .5,.5

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

[State -10, 1]
type = RemoveExplod
trigger1 = vel y > 0
trigger1 = pos y >= 0
ID =999

[State 0, 9] 
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 101


; Shinkuu Hadoken
[Statedef 3010]
type = U
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 3010

[State 9999, 0]
type = Helper
trigger1 = AnimElem = 4 
pos = 0, -50
postype = p1
stateno = ifelse((prevstateno = [3000,3999]),9998,9999)
helpertype = normal
name = "Super Trigger"
id = 9999
ownpal = 1
supermovetime = 999999



[State 0, 1]
type = SuperPause
trigger1 = AnimElem = 4
time = 50
anim = -1
pos = 0,0
movetime = 50
darken = 1
;p2defmul = 0
poweradd = -1000
unhittable = 1
ignorehitpause = 1
;persistent = 1


[State 1500, 1]
type = HitBy
trigger1 = AnimElemtime(5) >= 0
value = SCA, AA, AT, HP
time = 13

[State 0, 1]
type = Explod
trigger1 = Animelem = 4,51
anim = 999
pos = 0,0
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1


[State 0, 1]
type = Explod
trigger1 = Animelem = 4,51
anim = 999
pos = 0,60
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1

[State 0, 1]
type = Explod
trigger1 = Animelem = 4,51
anim = 999
pos = 0,120
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1

[State 0, 1]
type = Explod
trigger1 = Animelem = 4,51
anim = 999
pos = 0,180
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1

[State 0, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 1, 7
channel = 0
volume = 255

[State 0, 1]
type = PlaySnd
trigger1 = animelem = 6
value = 1, 5
channel = 0
volume = 255

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 0,4
volume = 255
freqmul = .75

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(3012)
trigger1 = AnimElem =6
postype = p1
pos = 60,-60
stateno = 3012
bindtime = 10000
ownpal = 1
name = "RESPECT TEH BEEM!"
ID = 3012
size.yscale = ifelse(name = "Dark Storm EX",2,1)

[State 1510, 5]
type = Varset
trigger1 = Numhelper(3012) = 1
trigger1 = helper(3012), movehit
var(0) = 1

[State 1510, 5]
type = Screenbound
trigger1 = var(0)
movecamera = 0,0


[State 1510, 5]
type = Varset
trigger1 = !animtime && var(0) = 1
var(0) = 0

[State -10, 1]
type = RemoveExplod
trigger1 = animtime = 0
ID =999

[State 1000, ChangeState]
type = ChangeState
trigger1 = animTime =0 && backedgedist < -10
value = 3011


[State 1000, ChangeState]
type = ChangeState
trigger1 = animTime =0 && backedgedist >= -10
value = 0
ctrl = 1

;Silent Streak Back onscreen
[Statedef 3011]
type = S
movetype = I
physics = N
anim = 100
velset = 0,0
ctrl = 0


[State 1510, 5]
type = Screenbound
trigger1 = 1
movecamera = 0,0

[State 1404, Helper];afterimages
type = Helper
trigger1 = (Time%3 = 0) && (backedgedist < 70)
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



[State 0, ]
type = PosSet
trigger1 = !time
y = 0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
;time = 
;ignorehitpause = 0
;persistent = 1



[State 0, 3]
type = SprPriority
trigger1 = Time = 8
value = -1

[State 1000, 4]
type = VelSet
trigger1 = backedgebodydist < 70
x = 15.5

[State 0, 6]
type = VelSet
trigger1 = backedgebodydist >= 70
x = 0

[State 0, 7]
type = PlayerPush
trigger1 = backedgebodydist < 70
value = 0


[State 0, 9]
type = ChangeState
trigger1 = backedgebodydist >= 70
value = 0
ctrl = 1
; Fireball
[Statedef 3012]
type = S
movetype = A
physics = N
velset = 0,0
anim = 3011
sprpriority = 2
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
trigger1 = gametime%3 = 0
anim = 1009
postype = p1
pos = 150,0
sprpriority = 4
supermove = 1
ownpal = 1
random = 200,70
vel = 2,0

[State 0, 1]
type = Explod
trigger1 = gametime%3 = 0
anim = 1009
postype = p1
pos = 350,0
sprpriority = 4
supermove = 1
ownpal = 1
random = 200,70
vel = 2,0

[State 0, 1]
type = Explod
trigger1 = gametime%3 = 0
anim = 1009
postype = p1
pos = 550,0
sprpriority = 4
supermove = 1
ownpal = 1
random = 200,70
vel = 2,0


[State 0, 1]
type = Explod
trigger1 = gametime%2 = 0 && time > 5
anim = 1008
scale = 1,1
postype = p1
pos = 20+((time-5)*30),0
sprpriority = 4
supermove = 1
ownpal = 1
vel = 1,0

[State 0, 1]
type = Explod
trigger1 = parent, stateno = 3010
trigger1 = gametime%3 = 0 && time > 5
anim = 998
scale = 1,1
postype = p1
pos = 40+((time-5)*25),60
sprpriority = 4
supermove = 1
ownpal = 1
vel = 0,0

[State 0, 1]
type = BindToParent
trigger1 = 1
time = 1
;facing = 0
pos = ifelse(parent, stateno = 3070,36,60),ifelse(parent,stateno=3070,-87,-60)
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
length = 4

[State 4001, HitDef]
type = HitDef
trigger1 = time < 30
attr = S, HP
animtype = Hard
damage = 13,2
hitflag = MAF
guardflag = MA
pausetime = 0, 0
sparkno = 3
sparkxy = 0,0
ground.type = High
ground.slidetime = 13
ground.hittime = 26
ground.velocity = -12,-3
guard.velocity = -4
air.velocity = -12,-1
airguard.velocity = -4,-1
down.velocity = -12,-2
down.hittime = 26
getpower = 0
fall = 1
fall.recover = 0
envshake.time = 5
fall.envshake.time = 20
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
scale = .5,.5

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
value = SCA, AA, AP, AT
ignorehitpause = 1

[State 0, 1]
type = PlaySnd
trigger1 = movehit && (Enemynear, Time = 0)
volume = -100
value = 5,9
channel = 2

[State 0, 1]
type = PlaySnd
trigger1 = moveguarded && (Enemynear, Time = 0)
volume = 255
value = F6,0
channel = 2

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

[State 4001, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = parent, stateno !=3010 && parent, stateno !=3070


; Typhoon Kick 
[Statedef 3040]
type = S
movetype = A
physics = S
poweradd = 0
velset = 0, 0
ctrl = 0
anim = 3040

[State 9999, 0]
type = Helper
trigger1 = AnimElem = 2 
pos = 0, -50
postype = p1
stateno = ifelse((prevstateno = [3000,3999]),9998,9999)
helpertype = normal
name = "Super Trigger"
id = 9999
ownpal = 1
supermovetime = 999999



[State 0, 1]
type = SuperPause
trigger1 = AnimElem = 2
time = 50
anim = -1
pos = 0,0
movetime = 50
darken = 1
;p2defmul = 0
poweradd = -1000
unhittable = 1
ignorehitpause = 1
;persistent = 1

[State 0, 1]
type = Explod
trigger1 = AnimTime = 0
anim = 999
pos = 0,0
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1


[State 0, 1]
type = Explod
trigger1 = AnimTime = 0
anim = 999
pos = 0,60
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1

[State 0, 1]
type = Explod
trigger1 = AnimTime = 0
anim = 999
pos = 0,120
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1

[State 0, 1]
type = Explod
trigger1 = AnimTime = 0
anim = 999
pos = 0,180
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1

[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 1,3
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
type = ChangeState
trigger1 = AnimTime = 0
value = 3041

[Statedef 3041]
type = A
movetype = A
physics = N
velset = 0, -2.6
ctrl = 0
anim = 1017

[State 1500, 1]
type = HitBy
trigger1 = time <= 10
value = SCA, HA, HP
time = 1

[State 0, ]
type = PlayerPush
trigger1 = 1
value = 0
;ignorehitpause = 0
;persistent = 1


[State 0, ]
type = Width
trigger1 = 1
edge = 50,50
;player = 0,0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = VelAdd
triggerall = (Vel X <= 2.5) && (Time >= 10)
trigger1 = Command = "holdfwd"
x = 0.35

[State 0, 2]
type = VelAdd
triggerall = (Vel X >= -2.7) && (Time >= 10)
trigger1 = Command = "holdback"
x = -0.35


[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(3043)
trigger1 = time = 0
postype = p1
pos = 0,0
stateno = 3043
bindtime = 10000
ownpal = 1
name = "Typhoon"
ID = 3043


[State 0, 1]
type = VelAdd
trigger1 = 1
y = .03
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 1,13
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
trigger1 = time = 0
value = 0,14

[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 2 || AnimElem = 9
attr = A, SA
damage    = 10, 2
getpower  = 0
givepower = 10
guardflag = MA
pausetime = 5,ifelse(time >96,50,3)
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,6
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = 15,-1
air.velocity = 15,-1
p2facing = 1
snap = 45,-10
envshake.time = 5
fall.envshake.time = 10
fall = 1
fall.recover = 0
yaccel = .5

[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 5 
attr = A, SA
damage    = 10, 2
getpower  = 0
givepower = 10
guardflag = MA
pausetime = 5,ifelse(time >96,50,3)
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,6
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15,-1
air.velocity = -15,-1
p2facing = -1
snap = -45,-10
envshake.time = 5
fall.envshake.time = 10
fall = 1
fall.recover = 0
yaccel = .5

[State -10, 1]
type = RemoveExplod
trigger1 = (time =100) && !movehit
ID =999

[State 0, 1]
type = ChangeState
trigger1 = time = 100
value = ifelse(movehit,3042,50)
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1


;Finish
[Statedef 3042]
type    = A
movetype= A
physics = N
ctrl = 0
anim = 3042
velset = 0, 0
facep2 = 1



[State 0, 1]
type = HitDef
trigger1 = animelem = 4
attr = S,HA
hitflag = MAF
guardflag = HA
animtype = Up
priority = 5,Hit
damage = 40,8
pausetime = 30,30
sparkno = s1052
sparkxy = -10,-60
hitsound = s55,1 
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 30
guard.slidetime = 30
ground.hittime = 30
guard.hittime = 15
air.hittime = 30
ground.velocity = -20,20
guard.velocity = -6
air.velocity = -20,20
airguard.velocity = -3,3
fall = 1
fall.recover = 0
getpower = 0
givepower = 10,40
envshake.time = 30
fall.envshake.time = 20
palfx.time = 60
palfx.add = 0,15,75
palfx.color = 0
palfx.invertall = 1
palfx.sinadd= 125,125,125,5
p2facing = 1
fall.yvel = -5,-5
yaccel = 0.6

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
scale = .5,.5

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
type = Explod
trigger1 = (movehit) && (P2MoveType = H) && (Enemynear, Time = 0) 
anim = 1052
ID = 1052
pos = 0,-60
postype = p2
bindtime = -1
sprpriority = 3
ignorehitpause = 1
persistent = 0

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 4
value = 0,2

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 4 
value = 2,2
channel = 0

[State -10, 1]
type = RemoveExplod
trigger1 = Animtime = 0
ID =999

[State 610, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

; Tornado
[Statedef 3043]
type = S
movetype = A
physics = N
velset = 0,0
anim = 3043
sprpriority = 5
juggle = 2
ctrl = 0

;[State -10, 1]
;type = AttackMulSet
;trigger1 = 1
;value = parent, fvar(0) 
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = BindToParent
trigger1 = 1
time = 1
;facing = 0
pos = 0, -1*(floor(parent, Pos Y))
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


[State 4001, HitDef]
type = HitDef
triggerall = parent, movehit = 0 
trigger1 = time%4 = 0 && Uniqhitcount < 1
attr = S, HP
animtype = Hard
damage = 13
guardflag = MA
pausetime = 0, 5
sparkno = -1
guard.sparkno = -1
sparkxy = 0,(floor(p2dist Y-60))
ground.type = High
ground.slidetime = 13
ground.hittime = 26
ground.velocity = 0,-12
guard.velocity = -4
air.velocity = 1, ifelse(parent, p2dist Y < 0, 6,-12)
airguard.velocity = 0,-1
getpower = 0
fall = 1
fall.recover = 0
envshake.time = 5
fall.envshake.time = 20
sprpriority = 5




[State 4001, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, AA, AP, AT
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

[State 4001, DestroySelf]
type =ChangeState
trigger1 = parent, stateno !=3041 
value = 3044

[Statedef 3044]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 3044
sprpriority = 3



[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 2601, Fade In]
type = PalFX
trigger1 = 1
mul = 255-((StateTime)*7),255-((StateTime)*7),255-((StateTime)*7)
time = 5

[State 0, 1]
type = DestroySelf
trigger1 = Animtime = 0

; Air Typhoon Kick 
[Statedef 3045]
type = A
movetype = A
physics = N
poweradd = 0
velset = 0, 0
ctrl = 0
anim = 3045

[State 9999, 0]
type = Helper
trigger1 = AnimElem = 2 
pos = 0, -50
postype = p1
stateno = ifelse((prevstateno = [3000,3999]),9998,9999)
helpertype = normal
name = "Super Trigger"
id = 9999
ownpal = 1
supermovetime = 999999



[State 0, 1]
type = SuperPause
trigger1 = AnimElem = 2
time = 50
anim = -1
pos = 0,0
movetime = 50
darken = 1
;p2defmul = 0
poweradd = -1000
unhittable = 1
ignorehitpause = 1
;persistent = 1

[State 0, 1]
type = Explod
trigger1 = AnimTime = 0
anim = 999
pos = 0,0
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1


[State 0, 1]
type = Explod
trigger1 = AnimTime = 0
anim = 999
pos = 0,60
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1

[State 0, 1]
type = Explod
trigger1 = AnimTime = 0
anim = 999
pos = 0,120
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1

[State 0, 1]
type = Explod
trigger1 = AnimTime = 0
anim = 999
pos = 0,180
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1

[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 1,11
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
type = ChangeState
trigger1 = AnimTime = 0
value = 3046

[Statedef 3046]
type = A
movetype = A
physics = N
velset = 0, -1.6
ctrl = 0
anim = 1017

[State 1500, 1]
type = HitBy
trigger1 = time <= 10
value = SCA, HA, HP
time = 1

[State 0, ]
type = PlayerPush
trigger1 = 1
value = 0
;ignorehitpause = 0
;persistent = 1


[State 0, ]
type = Width
trigger1 = 1
edge = 50,50
;player = 0,0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = VelAdd
triggerall = (Vel X <= 2.5) && (Time >= 5)
trigger1 = Command = "holdfwd"
x = 0.35

[State 0, 2]
type = VelAdd
triggerall = (Vel X >= -2.7) && (Time >= 5)
trigger1 = Command = "holdback"
x = -0.35

[State 0, 2]
type = VelAdd
triggerall = (Vel Y >= -2.0) && (Time >= 5)
trigger1 = Command = "holdup"
y = -0.35

[State 0, 2]
type = VelAdd
trigger1 = (Pos Y >= 0) && (Time >= 5)
y = 0.17

[State 0, 2]
type = PosSet
trigger1 = Pos Y > 0
y = 0


[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(3047)
trigger1 = time = 0
postype = p1
pos = 0,0
stateno = 3047
bindtime = 10000
ownpal = 1
name = "Typhoon"
ID = 3047


[State 0, 1]
type = VelAdd
trigger1 = 1
y = .03
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 1,13
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
trigger1 = time = 0
value = 0,14

[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 2 || AnimElem = 9
attr = A, SA
damage    = 10, 2
getpower  = 0
givepower = 10
guardflag = MA
pausetime = 5,ifelse(time >96,50,3)
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,6
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = 15,-1
air.velocity = 15,-1
p2facing = 1
snap = 45,-10
envshake.time = 5
fall.envshake.time = 10
fall = 1
fall.recover = 0
yaccel = .5

[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 5 
attr = A, SA
damage    = 10, 2
getpower  = 0
givepower = 10
guardflag = MA
pausetime = 5,ifelse(time >96,50,3)
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,6
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -15,-1
air.velocity = -15,-1
p2facing = -1
snap = -45,-10
envshake.time = 5
fall.envshake.time = 10
fall = 1
fall.recover = 0
yaccel = .5

[State -10, 1]
type = RemoveExplod
trigger1 = (time =100) && !movehit
ID =999

[State 0, 1]
type = ChangeState
trigger1 = time = 100
value = ifelse(movehit,3042,50)
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1



; Tornado
[Statedef 3047]
type = S
movetype = A
physics = N
velset = 0,0
anim = 3047
sprpriority = 5
juggle = 2
ctrl = 0

;[State -10, 1]
;type = AttackMulSet
;trigger1 = 1
;value = parent, fvar(0) 
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = BindToParent
trigger1 = 1
time = 1
;facing = 0
pos = 0, 0
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


[State 4001, HitDef]
type = HitDef
triggerall = parent, movehit = 0 
trigger1 = time%4 = 0 && Uniqhitcount < 1
attr = S, HP
animtype = Hard
damage = 13
guardflag = MA
pausetime = 0, 5
sparkno = -1
guard.sparkno = -1
sparkxy = 0,(floor(p2dist Y-60))
ground.type = High
ground.slidetime = 13
ground.hittime = 26
ground.velocity = 0,-6
guard.velocity = -4
air.velocity = 1, ifelse(p2dist Y < 0, 6,-6)
airguard.velocity = 0,-1
getpower = 0
fall = 1
fall.recover = 0
envshake.time = 5
fall.envshake.time = 20
sprpriority = 5




[State 4001, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, AA, AP, AT
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

[State 4001, DestroySelf]
type =ChangeState
trigger1 = parent, stateno !=3046 
value = 3048

[Statedef 3048]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 3048
sprpriority = 3



[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 2601, Fade In]
type = PalFX
trigger1 = 1
mul = 255-((StateTime)*7),255-((StateTime)*7),255-((StateTime)*7)
time = 5

[State 0, 1]
type = DestroySelf
trigger1 = Animtime = 0


;Final Bomber - Attempt
[Statedef 3050]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 2
anim = 3050

[State 0, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 1, 1
channel = 0
volume = 255

[State 9999, 0]
type = Helper
trigger1 = AnimElem = 1 
pos = 0, -50
postype = p1
stateno = ifelse((prevstateno = [3000,3999]),9998,9999)
helpertype = normal
name = "Super Trigger"
id = 9999
ownpal = 1
supermovetime = 999999



[State 0, 1]
type = SuperPause
trigger1 = AnimElem = 1
time = 50
anim = -1
pos = 0,0
movetime = 50
darken = 1
;p2defmul = 0
poweradd = -1000
unhittable = 1
ignorehitpause = 1
;persistent = 1

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2
anim = 999
pos = 0,0
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1


[State 0, 1]
type = Explod
trigger1 = AnimElem = 2
anim = 999
pos = 0,60
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2
anim = 999
pos = 0,120
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2
anim = 999
pos = 0,180
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1

[State 800, 1]
type = HitDef
Trigger1 = Time = 0 && (prevstateno !=[3000,3999])
attr = S, HT
damage = 30
hitflag = MA-
priority = 5, Miss
sparkno = -1
sprpriority = 1
numhits = 1
p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 3051
p2stateno = 3056
fall = 1
kill = 0

[State 800, 1]
type = HitDef
Trigger1 = Time = 0 && (prevstateno =[3000,3999])
attr = S, HT
damage = 30
hitflag = MAF
guardflag = MA
priority = 5, Miss
sparkxy = 0,-50
sprpriority = 1
numhits = 1
p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 3051
p2stateno = 3056
fall = 1
kill = 0

[State 0, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 3, 1
channel = 0
volume = 255

[State -10, 1]
type = RemoveExplod
trigger1 = Animtime = 0
ID =999

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Grab and Shock
[Statedef 3051]
type    = A
movetype= A
physics = N
anim = 850
sprpriority = 1

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 10


[State 0, ]
type = Explod
trigger1 =Animelemtime(3)%10=0
anim = 186
pos = 28,0
postype = p1
bindtime = -1
sprpriority = 3

[State 0, ]
type = TargetBind
trigger1 = AnimElemTime(3) <0
pos = 30,0
;ignorehitpause = 0
;persistent = 1


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3, >=0
pos = 32, -95
time = 1

[State 0, 1]
type = AllPalFX
trigger1 =Animelemtime(3)=0
add = 75,255,255
sinadd = -75,-255,-255,38
persistent = 0
time =10
ignorehitpause = 1

[State 0, 1]
type = AllPalFX
trigger1 =Animelemtime(3)=20
add = 75,255,255
sinadd = -75,-255,-255,38
persistent = 0
time =10
ignorehitpause = 1

[State 0, 1]
type = allPalFX
trigger1 =Animelemtime(3)=40
add = 75,255,255
sinadd = -75,-255,-255,38
persistent = 0
time =10
ignorehitpause = 1

[State 0, 1]
type = allPalFX
trigger1 =Animelemtime(3)=60
add = 75,255,255
sinadd = -75,-255,-255,38
persistent = 0
time =10
ignorehitpause = 1

[State 0, 1]
type = allPalFX
trigger1 =Animelemtime(3)=80
add = 75,255,255
sinadd = -75,-255,-255,38
persistent = 0
time =10
ignorehitpause = 1

[State 193, 2]
type = PlaySnd
trigger1 =Animelemtime(3)%10=0
value = 0,5
volume = 255



[State 0, 1]
type = HitAdd
trigger1 =Animelemtime(3)%10=0
value = 1
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = TargetLifeAdd
trigger1 =Animelemtime(3)%10=0
value = -10
kill = 0
;absolute = 0
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = Explod
trigger1 =Animelemtime(3)%7=0
facing = ifelse(Random<=600,1,-1)
anim = 1051
scale = .4,.4
postype = p2
pos = 0,50
sprpriority = 2
supermove = 1
ownpal = 1
random = 40,70

[State 810, Width 2-11]
type = Width
trigger1 = 1
edge = 60,40

[State 810, State End]
type = ChangeState
trigger1 = time = 100
value = 3052


;---------------------------------------------------------------------------
;Uppercut into Air
[Statedef 3052]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 440


[State 812, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 42, -86

[State 610, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2, 4

[State 440, 2]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = S, HA
damage   = 21
animtype = Med
guardflag = MA
pausetime = 12,12
sparkno = 3
snap = 42,-10,0
sparkxy = -0,-60
hitsound   = s5,6
guardsound = 6,0
ground.type = Low
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -6    
air.type = High
air.velocity = -1,-12
airguard.velocity = -2.5
yaccel = .55
fall = 1
fall.recover = 0
getpower = 0
givepower = 10,40
envshake.time = 10
fall.envshake.time = 10
palfx.time = 80
palfx.add = 0,15,75
palfx.color = 0
palfx.invertall = 1
palfx.sinadd= 125,125,125,5
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
removetime = 80
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
removetime = 80
sprpriority = 3
ignorehitpause = 1
scale=.5,.5


[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3053

;Jump up and catch
[Statedef 3053]
type    = A
movetype= A
physics = A
juggle  = 0
velset = 1,-13
ctrl = 0
sprpriority = 2
anim = 3051



[State 800, 1]
type = HitDef
Trigger1 = Time = 0 
attr = S, HT
damage = 30
hitflag = MAF
guardflag = MA
priority = 5, Miss
sparkxy = 0,-50
sprpriority = 1
numhits = 1
p1facing = 1
p2facing = 1
p1stateno = 3054
p2stateno = 3057
fall = 1
kill = 0

[State -10, 1]
type = RemoveExplod
trigger1 = Vel Y > 0 && Pos Y > -10
ID =999


;---------------------------------------------------------------------------
;Flipping over
[Statedef 3054]
type    = A
movetype= A
physics = N
anim = 810


[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 10



[State 0, ]
type = BindToTarget
trigger1 = AnimElemTime(3) <0
;time = 1
pos = 0,0,head
;ignorehitpause = 0
;persistent = 1


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = 0, -5
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 4
pos = -29, -14
time = 8

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElemTime(5)>= 0
pos = -48, -97

[State 810, Width 2-11]
type = Width
trigger1 = 1
edge = 60,40


[State 810, VelSet]
type = PosAdd 
trigger1 = AnimElem = 3
y = 5


[State 810, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 2
y = -14 


[State 0, 1]
type = Veladd
trigger1 = AnimElemTime(3) > 2
y = .65

[State 0, 1]
type = Explod
trigger1 =Animelemtime(5)%10=0
facing = 1
anim = 1052
postype = p2
pos = 0,0
sprpriority = 2
supermove = 1
ownpal = 1
random = 40,70
bindtime = -1

[State 193, 2]
type = PlaySnd
trigger1 =Animelemtime(5)%10=0
value = 0,8
volume = 255

[State 810, State End]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 3055


;---------------------------------------------------------------------------
;Slamming
[Statedef 3055]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 811



[State 0, 1]
type = PosSet
trigger1 = !time
y = 0
;ignorehitpause = 0
;persistent = 1


[State 812, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 4, -96


[State 812, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 66, -19


[State 610, 2]
type = PlaySnd
trigger1 = Time = 2
value = 2, 4

[State 1475, 10]
type = TargetState
trigger1 = AnimElem = 2,4
value = 3058

[State 1475, 0.2]
type = PlaySnd
trigger1 = AnimElem = 2,4
value = 5, 6
volume = 255

[State 1950, 5]
type = TargetLifeAdd
trigger1 = animelem = 2,4
value = -195

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(3081)
trigger1 = AnimElem =2,4
postype = p1
pos = 66,-0
stateno = 3082
bindtime = 1
ownpal = 1
name = "Boom!"
ID = 11000

[State -10, 1]
type = RemoveExplod
trigger1 = AnimTime = 0
ID =999

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Thrown by Rising Throw
[Statedef 3056]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2


[State 0, 1]
type = PalFX
trigger1 = time > 8
trigger1 = (time+8)%5=0
time = 5
add = 0,15,75
invertall = 1
color = 0
sinadd= 125,125,125,5

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
;ignorehitpause = 0
;persistent = 1


[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 860

[State 0, 1]
type = PosSet
trigger1 = time >=2 &&  (p2stateno !=[3051,3052])
y = -5
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = SelfState
trigger1 = time >=2 &&  (p2stateno !=[3051,3052])
value = 5010
;anim = 
;ctrl = 
;ignorehitpause = 0
;persistent = 1

;Flipping
[Statedef 3057]
type    = A
movetype= H
physics = N
velset = 0,0

[State 0, 1]
type = PalFX
trigger1 = time > 20
trigger1 = (time+8)%5=0
time = 5
add = 0,15,75
invertall = 1
color = 0
sinadd= 125,125,125,5


[State 0, ]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
;ignorehitpause = 0
;persistent = 1


[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

[State 820, 1]
type = ChangeAnim2
Trigger1 = p2stateno = 3055 && Anim !=821
value = 821

[State 0, 1]
type = SelfState
trigger1 = time >=2 &&  (p2stateno !=[3054,3055])
value = 5010
;anim = 
;ctrl = 
;ignorehitpause = 0
;persistent = 1


; Throw (hit by, into air)
[Statedef 3058]
type    = A
movetype= H ;Get hit
physics = N
velset = -6,-12
ctrl = 0

[State 0, 1]
type = PalFX
trigger1 = time > 8
trigger1 = (time+8)%5=0
time = 5
add = 0,15,75
invertall = 1
color = 0
sinadd= 125,125,125,5

[State 0, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 0, 1]
type = PosSet
trigger1 = time = 0
y = 0

[State 192, 0]
type = GameMakeAnim
trigger1 = time = 0
pos = -5,0
value = 62

[State 1485, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 5100

[State 1485, 1]
type = ChangeAnim
trigger1 = Time = 4
value = 5160

[State 1486, 2] ;Gravity
type = VelAdd
trigger1 = Time > 0
y = .49

[State 1486, 3]
type = EnvShake
trigger1 = time = 0
time = 35
ampl = -3
freq = 90
phase = 90

[State 1486, 5] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground





; Kuchuu Shinkuu Hadoken
[Statedef 3070]
type = A
movetype = A
physics = N
velset = 0, ifelse(statetype = A && Vel Y < 0, -.3,ifelse(statetype = A && Vel Y >0, .3,0))
ctrl = 0
anim = 3070



[State 0, 1]
type = VelSet
trigger1 = Pos Y >= 0
y = 0


[State 9999, 0]
type = Helper
trigger1 = AnimElem = 3 
pos = -15, -83
postype = p1
stateno = ifelse((prevstateno = [3000,3999]),9998,9999)
helpertype = normal
name = "Super Trigger"
id = 9999
ownpal = 1
supermovetime = 999999



[State 0, 1]
type = SuperPause
trigger1 = AnimElem = 3
time = 50
anim = -1
pos = 0,0
movetime = 50
darken = 1
;p2defmul = 0
poweradd = -1000
unhittable = 1
ignorehitpause = 1
;persistent = 1



[State 0, 1]
type = PosFreeze
trigger1 = AnimElemtime(3) >=0 && Animelemtime(5) < 0
value = 1
;ignorehitpause = 0
;persistent = 1



[State 1500, 1]
type = HitBy
trigger1 = AnimElemtime(5) >= 0
value = SCA, AA, AT, HP
time = 13

[State 0, 1]
type = Explod
trigger1 = Animelem = 4
anim = 999
pos = 0,0
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1


[State 0, 1]
type = Explod
trigger1 = Animelem = 4
anim = 999
pos = 0,60
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1

[State 0, 1]
type = Explod
trigger1 = Animelem = 4
anim = 999
pos = 0,120
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1

[State 0, 1]
type = Explod
trigger1 = Animelem = 4
anim = 999
pos = 0,180
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1

[State 0, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 1, 7
channel = 0
volume = 255

[State 0, 1]
type = PlaySnd
trigger1 = animelem = 5
value = 1, 5
channel = 0
volume = 255

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 0,4
volume = 255
freqmul = .75

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(3012)
trigger1 = AnimElem =5
postype = p1
pos = 36,-87
stateno = 3012
bindtime = 10000
ownpal = 1
name = "RESPECT TEH BEEM!"
ID = 3012
size.yscale = ifelse(name = "Dark Storm EX",2,1)

[State 1510, 5]
type = Varset
trigger1 = Numhelper(3012) = 1
trigger1 = helper(3012), movehit
var(0) = 1

[State 1510, 5]
type = Screenbound
trigger1 = var(0)
movecamera = 0,0


[State 1510, 5]
type = Varset
trigger1 = !animtime && var(0) = 1
var(0) = 0

[State -10, 1]
type = RemoveExplod
trigger1 = animtime = 0
ID =999

[State 1000, ChangeState]
type = ChangeState
trigger1 = animTime =0 && backedgedist < -10
value = 3011


[State 1000, ChangeState]
type = ChangeState
trigger1 = animTime =0 && backedgedist >= -10
value = 50
ctrl = 1


; Meteor Impact
[Statedef 3082]
type = A
movetype = A
physics = N
velset = 0,0
anim = 3082
sprpriority = 2
ctrl = 0



[State 0, ]
type = PlaySnd
trigger1 = !time
value = 0,12
;volume = 0
;channel = -1
;lowpriority = 
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan = 0
;ignorehitpause = 0
;persistent = 1



[State 0, ]
type = PosSet
trigger1 = !time = 0
y = 0
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = AllPalFX
trigger1 = time = 0
add = 75,255,255
sinadd = -75,-255,-255,38
persistent = 0
time =10
ignorehitpause = 1

[State 3031, 1]
type = AfterImage
trigger1 = Time = 0
time = 9999
PalBright   =   0,  0,  0
PalContrast = 120,120,220
PalAdd      =  0,0,0 ;29, 29, 29
PalMul      = .77,.77,.77
trans = add
TimeGap = 1
FrameGap = 1
[State 4022, 0]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoShadow

[State 4001, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 4022, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 4001, HitDef]
type = HitDef
trigger1 = time % 4 = 0
attr = S, SP
animtype = Up
damage = 30,5
hitflag = MAFD
guardflag = MA
pausetime = 0, 3
sparkno = 3
sparkxy = 0,0
hitsound = s5,9
guardsound = 6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 26
ground.velocity = -1,-12
guard.velocity = -6
air.velocity = -1,-12
airguard.velocity = -1,-4
down.velocity = -1,-12
down.hittime = 26
fall = 1
fall.recover = 0
palfx.time = 60
palfx.add = 0,15,75
palfx.color = 0
palfx.invertall = 1
palfx.sinadd= 125,125,125,5
yaccel = .5
ground.cornerpush.veloff = 0
getpower = 0


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
scale = .5,.5

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

[State 4022, 2]
type = DestroySelf
trigger1 = AnimTime = 0

; Aerial dance
[Statedef 3090]
type = A
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 3090
juggle = 4

[State 9999, 0]
type = Helper
trigger1 = AnimElem = 2 
pos = -9, -92
postype = p1
stateno = ifelse((prevstateno = [3000,3999]),9998,9999)
helpertype = normal
name = "Super Trigger"
id = 9999
ownpal = 1
supermovetime = 999999



[State 0, 1]
type = SuperPause
trigger1 = AnimElem = 2
time = 50
anim = -1
pos = 0,0
movetime = 50
darken = 1
;p2defmul = 0
poweradd = -1000
unhittable = 1
ignorehitpause = 1
;persistent = 1


[State 1500, 1]
type = NotHitBy
trigger1 = AnimElemtime(2) < 0
value = SCA, AA, AT, HP
time = 13

[State 0, 1]
type = Explod
trigger1 = Animelem = 3
anim = 999
pos = 0,0
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1


[State 0, 1]
type = Explod
trigger1 = Animelem = 3
anim = 999
pos = 0,60
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1

[State 0, 1]
type = Explod
trigger1 = Animelem = 3
anim = 999
pos = 0,120
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1

[State 0, 1]
type = Explod
trigger1 = Animelem = 3
anim = 999
pos = 0,180
postype = back
bindtime = -1
removetime = 950
supermove = 1
sprpriority = -2
ownpal = 1
ID = 999
removeongethit = 1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2,2
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,2
volume = 255



[State 0, ]
type = VelSet
trigger1 = AnimElem = 3
x = 10
y = 9
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
getpower = 0
givepower = 10,40
envshake.time = 5
fall.envshake.time = 10
p1stateno = 3091
p2stateno = 3095
kill = 0

[State 1000, ChangeState]
type = RemoveExplod
trigger1 = Pos Y >=0 && Vel Y > 0
ID = 999

[State 1000, ChangeState]
type = ChangeState
trigger1 = Pos Y >=0 && Vel Y > 0
value = 101

;Aerial Dance Connects
[Statedef 3091]
type = A
movetype = A
physics = N
poweradd = 100
velset = 0, 0
ctrl = 0
anim = 3091
sprpriority = 2



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
trigger2 = animelem = 38 || animelem = 42 || AnimElem = 45 || animelem = 52 || animelem = 59
trigger3 = animelem = 66 || animelem = 69
value = 2,0
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 71
value = 2,4
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = Time%5=0 && time > 4
trigger1 = Animelemtime(37) < 0
trigger2 = animelem = 38 || animelem = 42 || AnimElem = 45 || animelem = 52 || animelem = 59
trigger3 = animelem = 66 || animelem = 69 || animelem = 71
value = 0,2
volume = 255



[State 0, 1]
type = HitDef
trigger1 = animelemtime(2)>= 0 && animelemtime(37) <0 && time%4=0
attr = a,Ha
hitflag = MAF
guardflag = HA
;affectteam = E
animtype = Hard
;air.animtype = Light
;fall.animtype = Back
priority = 5,Hit
damage = 10,1
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
getpower = 0
givepower = 10,40
envshake.time = 5
fall.envshake.time = 10
kill = 0
p2stateno = 3095

[State 0, 1]
type = HitDef
trigger1 = animelem = 38 || animelem = 42 || AnimElem = 45 || animelem = 52 || animelem = 59
trigger2 = animelem = 66 || animelem = 69
attr = a,Ha
hitflag = MAF
guardflag = HA
;affectteam = E
animtype = Hard
;air.animtype = Light
;fall.animtype = Back
priority = 5,Hit
damage = 10,2
pausetime = 12,12
;guard.pausetime = 0,0
sparkno = 3
;guard.sparkno = 
sparkxy = -10,-45
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
;yaccel = 0
ground.velocity = -10,-2
guard.velocity = -6
air.velocity = -10,-2
airguard.velocity = -3,-3
fall = 1
fall.recover = 0
getpower = 0
givepower = 10,40
envshake.time = 10
fall.envshake.time = 10
p2stateno = 3095
kill = 0

[State 0, 1]
type = HitDef
trigger1 = animelem = 71 
attr = a,Ha
hitflag = MAF
guardflag = HA
;affectteam = E
animtype = Up
;air.animtype = Light
;fall.animtype = Back
priority = 5,Hit
damage = 20,5
pausetime = 8,8
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
ground.velocity = -2,-4
guard.velocity = -6
air.velocity = -2,-4
airguard.velocity = -3,-3
fall = 1
fall.recover = 0
getpower = 0
givepower = 10,40
envshake.time = 10
fall.envshake.time = 10
yaccel = 0.1
kill = 0

[State 2601, Fade In]
type = PalFX
trigger1 =  AnimelemTime(75)>= 0
mul = 255-((AnimelemTime(75))*8),255-((AnimelemTime(75))*8),255-((AnimelemTime(75))*8)
time = 5




[State 0, ]
type = PosAdd
trigger1 = Animelemtime(75) = 30
x = (P2dist X)
y = -260
;ignorehitpause = 0
;persistent = 1


[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimelemTime(75) >= 30
value = 3092

;Aerial Dance Connects
[Statedef 3092]
type = A
movetype = A
physics = N
velset = 0, 12
ctrl = 0
anim = 3092
sprpriority = -2



[State 0, 1]
type = VelAdd
trigger1 = 1
y = .49
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = ScreenBound
trigger1 = 1
;value = 1
movecamera = 0,0
;ignorehitpause = 0
;persistent = 1




[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 5
value = 2,2
volume = 255
channel = 0


[State 0, 1]
type = HitDef
trigger1 = !time
attr = a,Ha
hitflag = MAF
guardflag = HA
;affectteam = E
animtype = Hard
;air.animtype = Light
;fall.animtype = Back
priority = 5,Hit
damage = 150,10
pausetime = 0,10
;guard.pausetime = 0,0
sparkno = s3036
;guard.sparkno = 
sparkxy = 0,-20
hitsound = s5,7 
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
air.velocity = 0,13
airguard.velocity = 0,13
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 10,40
envshake.time = 5
fall.envshake.time = 10
palfx.time = 60
palfx.add = 0,15,75
palfx.color = 0
palfx.invertall = 1
palfx.sinadd= 125,125,125,5
yaccel = .5
sprpriority = -2

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
scale = .5,.5

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
trigger1 = 1
mul = 150,150,150
time =1
ignorehitpause = 1

[State 193, 2]
type = PlaySnd
trigger1 = movehit
value = 0,5
volume = 255
persistent = 0
ignorehitpause = 0

[State 0, 1]
type = AllPalFX
trigger1 = movehit
add = 75,255,255
sinadd = -75,-255,-255,38
persistent = 0
time =10
ignorehitpause = 1

[State 0, 1]
type = Explod
trigger1 = movehit
anim = 186
ID = 186
pos = floor(backedgebodydist)+20,210
postype = back
bindtime = -1
supermove = 1
removeongethit = 1
ignorehitpause = 1
sprpriority = 5
persistent = 0
ownpal = 1

[State 0, 1]
type = Explod
trigger1 = movehit
anim = 3034
pos = 0,-50
postype = p2
bindtime = 1
supermove = 1
removeongethit = 1
ignorehitpause = 1
ontop = 1
persistent = 0
ownpal = 1

[State 1000, ChangeState]
type = ChangeState
trigger1 = Pos Y >=0 && Vel Y > 0
value = 3093

[Statedef 3093]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
anim = 3093


[State -3, Landing Sound]
type = PlaySnd
trigger1 = !Time 
value = 0, 11

[State -3, Landing Sound]
type = PlaySnd
trigger1 = Animelem = 5 
value = 1, 0
channel = 0

[State 0, ]
type = PosSet
trigger1 = !time
y = 0
;ignorehitpause = 0
;persistent = 1

[State -3, Landing Sound]
type = GameMakeAnim
trigger1 = !Time 
value = 62
pos = 0,0

[State 0, 1]
type = Explod
trigger1 = !time 
anim = 998
scale = 1,1
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1

[State 0, 1]
type = Explod
trigger1 = !time 
anim = 998
scale = 1,1
postype = p1
pos = 0,0
sprpriority = 2
supermove = 1
ownpal = 1
facing = -1


[State 193, 2]
type = PlaySnd
trigger1 = !time 
value = 0,9

[State 0, 1]
type = PalFX
trigger1 = !time 
add = 125,255,255
sinadd = -125,-255,-255,75
persistent = 0
time =20
ignorehitpause = 1

[State 0, 1]
type = Explod
trigger1 = time = [0,25]
trigger1 = time%7 = 0
facing = ifelse(Random<=600,1,-1)
anim = 1051
scale = .5,.5
postype = p1
pos = 0,-20
sprpriority = 2
supermove = 1
ownpal = 1
random = 40,40

[State 1000, ChangeState]
type = RemoveExplod
trigger1 = animtime = 0
ID = 999
[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl =1


[Statedef 3095]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1072


[State 0, 1]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause = 0
;persistent = 1



[State 0, ]
type = SelfState
trigger1 = time = 85
value = 5050

