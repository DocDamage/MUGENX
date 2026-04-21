;---------------------------------------------------------------------------
;---{Super Attacks}---
;---------------------------
; Maximum Spider
[Statedef 2000]
type    = A
movetype= I
physics = N
velset = backedgedist/-5 * (.35),-10
anim = 2000
ctrl = 0
sprpriority = 2

[State 0, ]
type = ScreenBound
trigger1 = time >= 0

[State 0, ]
type = VelAdd
trigger1 = 1
y = .26

[State 0, ]
type = VelSet
trigger1 = vel x = 0
trigger1 = backedgedist < 10
x = .35

[State 0, ]
type = changestate
trigger1 = pos y < -100
trigger1 = backedgebodydist <= 10
trigger2 = vel y > 1
value = 2001

[State 0, ]
type = Playerpush
trigger1 = 1
value = 0

[State 0, ]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 50

[statedef 2001]
type = A
movetype = I
physics = N
anim = 2001
velset = 0,0
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = time >= 0

[State 0, ]
type = PosFreeze
triggerall = Stateno = 2001
trigger1 = BackEdgeBodyDist < 2

[State 0, ]
type = PlayerPush
trigger1 = Stateno = 2001
value = 0

[State 0, ]
type = VelSet
trigger1 = BackEdgeBodyDist > 1
x = -5

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S3,5

[State 0, ]
type = SuperPause
trigger1 = time = 2
time = 40
sound = S20,0
pos = 5,-70
darken = 1
poweradd = -1000

[State 0, ]
type = Helper
trigger1 = time = 2
name = "Orb"
ID = 8000
pos = 5,-70
postype = p1
stateno = 8000
supermovetime = 40
pausemovetime = 1
size.xscale = .35
size.yscale = .35
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 2
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 2
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 0, ]
type = AfterImage
trigger1 = time = 2
trigger1 = palno != 10
time = 10
length = 32
framegap = 8
trans = add1
ignorehitpause = 0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist x > 80
trigger1 = p2bodydist y > 20
value = 2005

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist x > 80
trigger1 = p2bodydist y < -20
value = 2010

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist y = [-20,20]
value = 2015

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist x <= 80
trigger1 = p2bodydist y < -20
value = 2020

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist x <= 80
trigger1 = p2bodydist y > 20
value = 2025

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

[statedef 2002]
type = A
movetype = I
physics = N
anim = 2001
velset = 0,0
hitcountpersist = 1
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 0, ]
type = Turn
trigger1 = time = 0

[State 0, ]
type = PosFreeze
triggerall = Stateno = 2002
trigger1 = BackEdgeBodyDist < 2

[State 0, ]
type = PlayerPush
trigger1 = Stateno = 2002
value = 0

[State 0, ]
type = VelSet
trigger1 = BackEdgeBodyDist > 1
x = -5

[State 0, ]
type = AfterImageTime
trigger1 = stateno = 2002
trigger1 = palno != 10
time = 5

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist x > 20
trigger1 = p2bodydist y > 20
value = 2005

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist x > 20
trigger1 = p2bodydist y < -20
value = 2010

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist y = [-20,20]
value = 2015

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist x <= 20
trigger1 = p2bodydist y < -20
value = 2020

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist x <= 20
trigger1 = p2bodydist y > 20
value = 2025

[State 0, ]
type = ChangeState
trigger1 = p2statetype = L
value = 50

[statedef 2003]
type = S
movetype = I
physics = S
anim = 2003
velset = 0,0
hitcountpersist = 1

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 0, ]
type = Width
trigger1 = 1
edge = -20,-30
player = -20,-30

[State 0, ]
type = Turn
trigger1 = time = 0
trigger1 = p2dist x < 0

[State 0, ]
type = AfterImageTime
trigger1 = stateno = 2003
trigger1 = palno != 10
time = 10

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist x > 20
trigger1 = p2bodydist y < -20
value = 2010

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist y = [-20,20]
value = 2015

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist x <= 20
trigger1 = p2bodydist y < -20
value = 2020

[State 0, ]
type = ChangeState
trigger1 = p2statetype = L
value = 12

[statedef 2004]
type = A
movetype = I
physics = N
anim = 2004
velset = 0,0
hitcountpersist = 1

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 0, ]
type = Width
trigger1 = 1
edge = -20,-30
player = -20,-30

[State 0, ]
type = Turn
trigger1 = time = 0
trigger1 = p2dist x < 0

[State 0, ]
type = PlayerPush
trigger1 = Stateno = 2004
value = 0

[State 0, ]
type = AfterImageTime
trigger1 = stateno = 2004
trigger1 = palno != 10
time = 10

[State 0, ]
type = VelSet
trigger1 = screenpos y >= 50
y = 0

[State 0, ]
type = VelSet
trigger1 = screenpos y > 50
y = -5

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist x > 150
trigger1 = p2bodydist y > 0
trigger2 = screenpos y < 50 && random > 333
trigger2 = random = 0 && random > 333
value = 2005

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist y = [-20,0]
trigger2 = screenpos y < 50 && random = [333,666]
trigger2 = animtime = 0 && random = [333,666]
value = 2015

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
trigger1 = p2bodydist x <= 150
trigger1 = p2bodydist y > 0
trigger2 = screenpos y < 50 && random < 666
trigger2 = animtime = 0 && random < 666
value = 2025

[State 0, ]
type = ChangeState
trigger1 = p2statetype = L
value = 50

[statedef 2005]
type = A
movetype = A
physics = N
anim = 2005
velset = 13,7
hitcountpersist = 1
ctrl = 0

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = VelAdd
trigger1 = time >= 5
x = .2
y = .2

[State 0, ]
type = ScreenBound
trigger1 = stateno = 2005
value = 1
movecamera = 0,0

[State 0, ]
type = PlayerPush
trigger1 = stateno = 2005
value = 0

[State 0, ]
type = AfterImageTime
trigger1 = stateno = 2005
trigger1 = palno != 10
time = 20

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movehit = 0
attr = A,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = low
air.type = low
priority = 7,Hit
damage = 62,4
pausetime = 5,12
guard.pausetime = 5,5
sparkno = 3
guard.sparkno = 41
sparkxy = 0,-40
hitsound = S5,6
guardsound = S5,8
ground.slidetime = 50
ground.hittime = 50
air.hittime = 100
ground.velocity = -6,-10
guard.velocity = -4
air.velocity = -2.25,-9
airguard.velocity = -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0 
airguard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0

[State 0, ]
type = ChangeState
trigger1 = movehit = 1
trigger1 = hitcount = 5
trigger2 = moveguarded = 1
trigger3 = hitcount = 0
trigger3 = movehit = 0
trigger3 = pos y >= 0
value = 2030

[State 0, ]
type = ChangeState
triggerall = frontedgedist <= 5
trigger1 = movehit = 1
trigger2 = hitcount >= 1
value = 2002

[State 0, ]
type = ChangeState
triggerall = pos y >= 0
trigger1 = movehit = 1
trigger2 = hitcount >= 1
value = 2003

[State 0, ]
type = ChangeState
triggerall = screenpos y >= 225
trigger1 = movehit = 1
trigger2 = hitcount >= 1
value = 2003

[State 0, ]
type = ChangeState
trigger1 = prevstateno != 2001
trigger1 = p2statetype = L
value = 50

[statedef 2010]
type = A
movetype = A
physics = N
anim = 2010
velset = 13,-7
hitcountpersist = 1
ctrl = 0

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = VelAdd
trigger1 = time >= 5
x = .2
y = -0.2

[State 0, ]
type = ScreenBound
trigger1 = stateno = 2010
value = 1
movecamera = 0,0

[State 0, ]
type = PlayerPush
trigger1 = stateno = 2010
value = 0

[State 0, ]
type = AfterImageTime
trigger1 = stateno = 2010
trigger1 = palno != 10
time = 20

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movehit = 0
attr = A,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = low
air.type = low
priority = 7,Hit
damage = 62,4
pausetime = 5,12
guard.pausetime = 5,5
sparkno = 3
guard.sparkno = 41
sparkxy = 0,-105
hitsound = S5,6
guardsound = S5,8
ground.slidetime = 100
ground.hittime = 100
air.hittime = 100
ground.velocity = -0.25,-10
guard.velocity = -4
air.velocity = -2.25,-5
airguard.velocity = -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0 
airguard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0

[State 0, ]
type = ChangeState
trigger1 = movehit = 1
trigger1 = hitcount = 5
trigger2 = moveguarded = 1
value = 2030

[State 0, ]
type = ChangeState
triggerall = frontedgedist <= 5
trigger1 = movehit = 1
trigger2 = hitcount >= 1
value = 2002

[State 0, ]
type = ChangeState
triggerall = screenpos y <= 0
trigger1 = movehit = 1
trigger2 = hitcount >= 1
value = 2004

[State 0, ]
type = ChangeState
triggerall = hitcount = 0
trigger1 = movehit = 0
trigger1 = screenpos y <= 50
trigger2 = p2stateno = 5100
value = 50

[statedef 2015]
type = A
movetype = A
physics = N
anim = 2015
velset = 10,0
hitcountpersist = 1
ctrl = 0

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = VelAdd
trigger1 = time >= 5
x = .2

[State 0, ]
type = ScreenBound
trigger1 = stateno = 2015
value = 1
movecamera = 0,0

[State 0, ]
type = PlayerPush
trigger1 = stateno = 2015
value = 0

[State 0, ]
type = AfterImageTime
trigger1 = stateno = 2015
trigger1 = palno != 10
time = 20

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movehit = 0
attr = A,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = low
air.type = low
priority = 7,Hit
damage = 62,4
pausetime = 5,12
guard.pausetime = 5,5
sparkno = 3
guard.sparkno = 41
sparkxy = 0,-75
hitsound = S5,6
guardsound = S5,8
ground.slidetime = 100
ground.hittime = 100
air.hittime = 100
ground.velocity = -0.25,-10
guard.velocity = -4
air.velocity = -4,-7.5
airguard.velocity = -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0 
airguard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0

[State 0, ]
type = ChangeState
trigger1 = movehit = 1
trigger1 = hitcount = 5
trigger2 = moveguarded = 1
value = 2030

[State 0, ]
type = ChangeState
triggerall = frontedgedist <= 5
trigger1 = movehit = 1
trigger2 = hitcount >= 1
value = 2002

[State 0, ]
type = ChangeState
triggerall = hitcount = 0
trigger1 = movehit = 0
trigger1 = frontedgedist <= 5
trigger2 = p2stateno = 5100
value = 50

[statedef 2020]
type = A
movetype = A
physics = N
anim = 2020
velset = 7,-13
hitcountpersist = 1
ctrl = 0

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = VelSet
trigger1 = time = 0
trigger1 = p2bodydist x <= 0 && p2bodydist y <= -100
x = 0

[State 0, ]
type = VelAdd
trigger1 = time >= 5
x = .2
y = -0.2

[State 0, ]
type = ScreenBound
trigger1 = stateno = 2020
value = 1
movecamera = 0,0

[State 0, ]
type = PlayerPush
trigger1 = stateno = 2020
value = 0

[State 0, ]
type = AfterImageTime
trigger1 = stateno = 2020
trigger1 = palno != 10
time = 20

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movehit = 0
attr = A,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = low
air.type = low
priority = 7,Hit
damage = 62,4
pausetime = 5,12
guard.pausetime = 5,5
sparkno = 3
guard.sparkno = 41
sparkxy = 0,-120
hitsound = S5,6
guardsound = S5,8
ground.slidetime = 100
ground.hittime = 100
air.hittime = 100
ground.velocity = -0.25,-10
guard.velocity = -4
air.velocity = -1.25,-7
airguard.velocity = -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0 
airguard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0

[State 0, ]
type = ChangeState
trigger1 = movehit = 1
trigger1 = hitcount = 5
trigger2 = moveguarded = 1
value = 2030

[State 0, ]
type = ChangeState
triggerall = frontedgedist <= 5
trigger1 = movehit = 1
trigger2 = hitcount >= 1
value = 2002

[State 0, ]
type = ChangeState
triggerall = screenpos y <= 0
trigger1 = movehit = 1
trigger2 = hitcount >= 1
value = 2004

[State 0, ]
type = ChangeState
triggerall = hitcount = 0
trigger1 = movehit = 0
trigger1 = screenpos y >= 50
trigger2 = p2stateno = 5100
value = 50

[statedef 2025]
type = A
movetype = A
physics = N
anim = 2025
velset = 7,13
hitcountpersist = 1
ctrl = 0

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = VelSet
trigger1 = time = 0
trigger1 = p2bodydist x <= 0 && p2bodydist y >= 100
x = 0

[State 0, ]
type = VelAdd
trigger1 = time >= 5
x = .2
y = .2

[State 0, ]
type = ScreenBound
trigger1 = stateno = 2025
value = 1
movecamera = 0,0

[State 0, ]
type = PlayerPush
trigger1 = stateno = 2025
value = 0

[State 0, ]
type = AfterImageTime
trigger1 = stateno = 2025
trigger1 = palno != 10
time = 20

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movehit = 0
attr = A,HA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = low
air.type = low
priority = 7,Hit
damage = 62,4
pausetime = 5,12
guard.pausetime = 5,5
sparkno = 3
guard.sparkno = 41
sparkxy = 0,-10
hitsound = S5,6
guardsound = S5,8
ground.slidetime = 100
ground.hittime = 100
air.hittime = 100
ground.velocity = -0.25,-10
guard.velocity = -4
air.velocity = -1.25,-3
airguard.velocity = -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0 
airguard.cornerpush.veloff = 0
fall = 1
air.fall = 1
fall.recover = 0

[State 0, ]
type = ChangeState
trigger1 = movehit = 1
trigger1 = hitcount = 5
trigger2 = moveguarded = 1
trigger3 = hitcount = 0
trigger3 = movehit = 0
trigger3 = pos y >= 0
value = 2030

[State 0, ]
type = ChangeState
triggerall = frontedgedist <= 5
trigger1 = movehit = 1
trigger2 = hitcount >= 1
value = 2002

[State 0, ]
type = ChangeState
triggerall = pos y >= 0
trigger1 = movehit = 1
trigger2 = hitcount >= 1
value = 2003

[State 0, ]
type = ChangeState
triggerall = screenpos y >= 225
trigger1 = movehit = 1
trigger2 = hitcount >= 1
value = 2003

[State 0, ]
type = ChangeState
trigger1 = prevstateno != 2001
trigger1 = p2statetype = L
value = 50

[statedef 2030]
type = A
movetype = A
physics = N
velset = -3,-8
hitcountpersist = 1
ctrl = 0

[State 0, ]
type = ChangeAnim
trigger1 = time = 0
trigger1 = hitcount = 0
value = 43

[State 0, ]
type = ChangeState
trigger1 = time = 1
value = 50

[statedef 2050]
type = A
movetype = H
physics = A
ctrl = 0

[State 0, ]
type = ChangeState
triggerall = frontedgedist <= 5
trigger1 = movehit = 1
trigger2 = hitcount >= 1
value = 2051

[State 0, ]
type = ChangeState
triggerall = pos y >= 0
trigger1 = movehit = 1
trigger2 = hitcount >= 1
value = 2052

;---------------------------
;Crawler Assult
[statedef 3000]
type = S
movetype = I
physics = S
anim = 3000
velset = 0,0
ctrl = 0

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = SuperPause
trigger1 = animelem = 2
time = 40
sound = S20,0
pos = -25,-43
darken = 1
poweradd = -1000

[State 0, ]
type = AfterImage
trigger1 = animelem = 2
trigger1 = palno != 10
time = 100
length = 32
framegap = 8
trans = add1
removeongethit = 1

[State 0, ]
type = Helper
trigger1 = animelem = 2
name = "Orb"
ID = 8000
pos = -25,-43
postype = p1
stateno = 8000
supermovetime = 40
pausemovetime = 1
size.xscale = .35
size.yscale = .35
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 2
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 2
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 0, ]
type = StateTypeSet
trigger1 = animelem = 3
movetype = A

[State 0, ]
type = VelSet
trigger1 = time >= 11
x = 4.5

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 3,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 10
trigger3 = animelem = 18
trigger4 = animelem = 23
channel = 3
value = 0,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 8
trigger2 = animelem = 15
trigger3 = animelem = 25
channel = 4
value = 0,3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 10
trigger3 = animelem = 18
trigger4 = animelem = 23
channel = 1
value = 1,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 8
trigger2 = animelem = 15
trigger3 = animelem = 25
channel = 2
value = 1,2

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
trigger1 = animelem = 9
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
trigger1 = animelem = 11
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
trigger1 = animelem = 16
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
trigger1 = animelem = 19
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
trigger1 = animelem = 24
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
trigger1 = animelem = 26
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = animelem = 5
trigger2 = animelem = 11
trigger3 = animelem = 19
trigger4 = animelem = 24
attr = S,HA
hitflag = MAFD
guardflag = MA
animtype = hard
air.animtype = hard
ground.type = low
air.type = low
priority = 6,Hit
damage = 40,2
pausetime = 3,7
guard.pausetime = 3,50
sparkno = 2
guard.sparkno = 41
sparkxy = -5,-75
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 30
guard.slidetime = 30
ground.hittime = 30
guard.hittime = 30
air.hittime = 30
ground.velocity = -2,0
guard.velocity = -1
air.velocity = -4,1
airguard.velocity = -1
down.velocity = -2,-6
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
getpower = 0,0
forcestand = 1

[State 0, ]
type = HitDef
trigger1 = animelem = 9
trigger2 = animelem = 16
trigger3 = animelem = 26
attr = S,HA
hitflag = MAFD
guardflag = MA
animtype = hard
air.animtype = hard
ground.type = high
air.type = low
priority = 6,Hit
damage = 35,2
pausetime = 3,7
guard.pausetime = 3,50
sparkno = 2
guard.sparkno = 41
sparkxy = -15,-60
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 30
guard.slidetime = 30
ground.hittime = 30
guard.hittime = 30
air.hittime = 30
ground.velocity = -2,0
guard.velocity = -1
air.velocity = -4,1
airguard.velocity = -1
down.velocity = -4,-6
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
getpower = 0,0
forcestand = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 3005

[statedef 3005]
type = S
movetype = A
physics = S
anim = 3005
velset = 5,0
ctrl = 0

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
trigger1 = palno != 10
time = 5
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = 1,2

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
time = 4
under = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = ScreenBound
trigger1 = movehit = 1
value = 0
ignorehitpause = 1

[State 0, ]
type = VelSet
trigger1 = movecontact = 0
x = 3

[State 0, ]
type = PosAdd
trigger1 = movehit = 1
trigger1 = backedgedist <= -60
x = -100
ignorehitpause = 1

[State 0, ]
type = HitDef
trigger1 = animelem = 3
attr = S,HA
hitflag = MAFD
guardflag = MA
animtype = hard
air.animtype = hard
ground.type = low
air.type = low
fall.animtype = back
priority = 6,Hit
damage = 60,15
pausetime = 35,10
guard.pausetime = 4,3
sparkno = 3
guard.sparkno = 41
sparkxy = -15,-60
hitsound = S5,6
guardsound = S5,8
ground.slidetime = 20
guard.slidetime = 20
ground.hittime = 20
guard.hittime = 20
air.hittime = 20
ground.velocity = -15,-6
guard.velocity = -5
air.velocity = -15,-2
airguard.velocity = -5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 0
getpower = 0,0
forcestand = 1
fall = 1
air.fall = 1
fall.recover = 0

[State 0, ]
type = ChangeState
trigger1 = movehit = 1
trigger1 = animtime = 0
trigger1 = backedgedist <= -60
value = 101

[State 0, ]
type = ChangeState
trigger1 = backedgedist > -60
trigger1 = animtime = 0
value = 50

;---------------------------
; Ultimate-Web-Throw
[Statedef 4000]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 4000
ctrl = 0

[State 0, ]
type = VelSet
trigger1 = animelem = 2
x = -2
y = -9

[State 0, ]
type = StateTypeSet
trigger1 = animelem = 2
statetype = A
physics = A

[State 0, ]
type = ChangeState
trigger1 = time = 21
value = 4001

[Statedef 4001]
type    = A
movetype= A
physics = A
anim = 4001
sprpriority = 4
ctrl = 0

[State 0, ]
type = PosFreeze
trigger1 = time > 13
value = 1

[State 0, ]
type = SuperPause
trigger1 = animelem = 3
time = 40
sound = S20,0
pos = 0,-90
darken = 1
poweradd = -1000

[State 0, ]
type = Helper
trigger1 = animelem = 3
name = "Orb"
ID = 8000
pos = 0,-90
postype = p1
stateno = 8000
supermovetime = 40
pausemovetime = 1
size.xscale = .35
size.yscale = .35
ownpal = 1

[State 0, ]
type = Explod
trigger1 = animelem = 3
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = animelem = 3
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S6,0

[State 0, ]
type = Projectile
trigger1 = animelem = 5
ProjID = 4005
projanim = 4005
projhitanim = 4006
projcancelanim = 4006
projremovetime = 16
projshadow = -1,-1,-1
projhits = 1
attr = A,HT
hitflag = MAF
guardflag = MA 
pausetime = 5,5
guard.pausetime = 5,5
sparkno = 2
sparkxy = 130,0
guard.sparkno = 40
hitsound = S6,1
guardsound = S5,8
ground.slidetime = 20
guard.slidetime = 20
ground.hittime = 20
guard.hittime = 20
air.hittime = 20
fall = 1
air.fall = 1
fall.recover = 0

[State 0, ]
type = ChangeState
trigger1 = projhit = 1
value = 4010

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

[Statedef 4010]
type    = A
movetype= A
physics = N
anim = 4010
velset = 1,-2
sprpriority = 1
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S0,5

[State 0, ]
type = TargetBind
trigger1 = animelem = 1
time = 10
pos = 130,5

[State 0, ]
type = TargetBind
trigger1 = animelem = 2
time = 2
pos = 55,10

[State 0, ]
type = TargetBind
trigger1 = animelem = 3
time = 2
pos = 25,30

[State 0, ]
type = TargetBind
trigger1 = animelem = 4
time = 2
pos = -15,30

[State 0, ]
type = TargetBind
trigger1 = animelem = 5
time = 2
pos = -20,30

[State 0, ]
type = TargetBind
trigger1 = animelem = 6
time = 2
pos = -100,-5

[State 0, ]
type = TargetBind
trigger1 = animelem = 7
time = 2
pos = -115,-40

[State 0, ]
type = TargetBind
trigger1 = animelem = 8
time = 2
pos = -120,-75

[State 0, ]
type = TargetBind
trigger1 = animelem = 9
time = 2
pos = -120,-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 10
time = 2
pos = -80,-165

[State 0, ]
type = TargetBind
trigger1 = animelem = 11
time = 2
pos = -50,-190

[State 0, ]
type = TargetBind
trigger1 = animelem = 12
time = 2
pos = -10,-195

[State 0, ]
type = TargetBind
trigger1 = animelem = 13
time = 2
pos = -5,-195

[State 0, ]
type = TargetBind
trigger1 = animelem = 14
time = 2
pos = 100,-175

[State 0, ]
type = TargetBind
trigger1 = animelem = 15
time = 2
pos = 120,-145

[State 0, ]
type = TargetBind
trigger1 = animelem = 16
time = 2
pos = 130,-105

[State 0, ]
type = TargetBind
trigger1 = animelem = 17
time = 2
pos = 130,-100

[State 0, ]
type = TargetBind
trigger1 = animelem = 18
time = 2
pos = 105,25

[State 0, ]
type = TargetBind
trigger1 = animelem = 19
time = 2
pos = 65,45

[State 0, ]
type = TargetBind
trigger1 = animelem = 20
time = 2
pos = 35,50

[State 0, ]
type = TargetBind
trigger1 = animelem = 21
time = 2
pos = 30,50

[State 0, ]
type = TargetState
trigger1 = animelem = 1
trigger2 = animelem = 18
value = 4020

[State 0, ]
type = TargetState
trigger1 = animelem = 3
value = 4021

[State 0, ]
type = TargetState
trigger1 = animelem = 6
value = 4022

[State 0, ]
type = TargetState
trigger1 = animelem = 8
value = 4023

[State 0, ]
type = TargetState
trigger1 = animelem = 10
value = 4024

[State 0, ]
type = TargetState
trigger1 = animelem = 12
value = 4025

[State 0, ]
type = TargetState
trigger1 = animelem = 14
value = 4026

[State 0, ]
type = TargetState
trigger1 = animelem = 16
value = 4027

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 4015

[Statedef 4015]
type    = A
movetype= A
physics = A
anim = 4015
velset = 1,-1
sprpriority = 1
ctrl = 0

[State 0, ]
type = VarSet
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = S0,5

[State 0, ]
type = PlaySnd
trigger1 = animelem = 7
value = S1,2

[State 0, ]
type = TargetBind
trigger1 = animelem = 1
time = 4
pos = 25,50

[State 0, ]
type = TargetBind
trigger1 = animelem = 2
time = 4
pos = 0,45

[State 0, ]
type = TargetBind
trigger1 = animelem = 3
time = 4
pos = -50,20

[State 0, ]
type = TargetBind
trigger1 = animelem = 4
time = 4
pos = -115,-30

[State 0, ]
type = TargetBind
trigger1 = animelem = 5
time = 2
pos = -30,-160

[State 0, ]
type = TargetBind
trigger1 = animelem = 6
time = 2
pos = 40,-185

[State 0, ]
type = TargetBind
trigger1 = animelem = 7
time = 2
pos = 140,-145

[State 0, ]
type = TargetBind
trigger1 = animelem = 8
time = 2
pos = 130,5

[State 0, ]
type = TargetState
trigger1 = animelem = 1
trigger2 = animelem = 8
value = 4020

[State 0, ]
type = TargetState
trigger1 = animelem = 2
value = 4021

[State 0, ]
type = TargetState
trigger1 = animelem = 3
value = 4022

[State 0, ]
type = TargetState
trigger1 = animelem = 4
value = 4023

[State 0, ]
type = TargetState
trigger1 = animelem = 5
value = 4024

[State 0, ]
type = TargetState
trigger1 = animelem = 6
value = 4025

[State 0, ]
type = TargetState
trigger1 = animelem = 7
value = 4026

[State 0, ]
type = TargetState
trigger1 = animelem = 8,2
value = 4028

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 8
value = -360

[State 0, ]
type = TargetDrop
trigger1 = animelem = 8,2

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

[Statedef 4020]
type    = A
movetype= H
physics = A
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, ]
type = AfterImageTime
triggerall = time = 0
trigger1 = prevstateno = 4020
trigger2 = prevstateno = 4026
trigger3 = prevstateno = 4027
time = 9999

[State 0, ]
type = AfterImage
triggerall = prevstateno != 4020
triggerall = prevstateno != 4026
triggerall = prevstateno != 4027
trigger1 = time = 0 
time = 9999
length = 21
framegap = 5
trans = add1

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4020

[Statedef 4021]
type    = A
movetype= H
physics = A
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 9999

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4021

[Statedef 4022]
type    = A
movetype= H
physics = A
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 9999

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4022

[Statedef 4023]
type    = A
movetype= H
physics = A
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 9999

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4023

[Statedef 4024]
type    = A
movetype= H
physics = A
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 9999

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4024

[Statedef 4025]
type    = A
movetype= H
physics = A
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 9999

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4025

[Statedef 4026]
type    = A
movetype= H
physics = A
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 9999

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4026

[Statedef 4027]
type    = A
movetype= H
physics = A
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 9999

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 4027

[Statedef 4028]
type    = A
movetype= H
physics = A
velset = -5,15
sprpriority = 0
ctrl = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 5050

[State 0, ]
type = SelfState
trigger1 = time >= 1
value = 5050

;---------------------------
; Seperation Anxiety
[Statedef 6000]
type    = S
movetype= A
physics = S
velset = 0,0,0
anim = 6000
ctrl = 0
sprpriority = 2

[State 0, ]
type = SuperPause
trigger1 = animelem = 2
time = 40
sound = S20,0
pos = -5,-45
darken = 1
poweradd = -3000

[State 0, ]
type = Helper
trigger1 = animelem = 2
name = "Orb"
ID = 8000
pos = -5,-45
postype = p1
stateno = 8000
supermovetime = 40
pausemovetime = 1
size.xscale = .35
size.yscale = .35
ownpal = 1

[State 0, ]
type = Explod
trigger1 = animelem = 2
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = animelem = 2
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S6,0

[State 0, ]
type = Projectile
trigger1 = animelem = 3
ProjID = 6005
projanim = 6005
projremovetime = 8
projshadow = -1,-1,-1
projhits = 1
attr = A,HT
hitflag = MAF
guardflag = MA 
pausetime = 15,15
guard.pausetime = 5,5
sparkno = 2
sparkxy = 180,-35
guard.sparkno = 40
hitsound = S6,1
guardsound = S5,8
ground.slidetime = 20
guard.slidetime = 20
ground.hittime = 20
guard.hittime = 20
air.hittime = 20
p2facing = 1
p1stateno = 6010
p2stateno = 6006

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 6006]
type = A
movetype = H
physics = A
ctrl = 0
velset = 0,0,0
anim = 5000
sprpriority = -1

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 6006

[State 0, ]
type = StateTypeSet
trigger1 = pos y >= -5
statetype = S
physics = S

[State 0, ]
type = PosSet
trigger1 = pos y >= -5
y = 0

[State 0, ]
type = VelSet
trigger1 = pos y >= -5
y = 0

[Statedef 6010]
type    = S
movetype= I
physics = S
velset = 0,0,0
anim = 6010
ctrl = 0
sprpriority = 2

[State 0, ]
type = Explod
trigger1 = time = 0
anim = 1007
ID = 1007
pos = 0,0
facing = -1
postype = p2
bindtime = 9999
removetime = -2
sprpriority = 0
shadow = -1,-1,-1
ownpal = 1

[State 0, ]
type = TargetBind
trigger1 = time = 0
time = 1
pos = 180,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S4,0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 6015

[Statedef 6015]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 6015
ctrl = 0
sprpriority = 2

[State 0, ]
type = AfterImage
trigger1 = time = 0
trigger1 = palno != 10
time = 15
length = 20
framegap = 2
palcontrast = 150,150,150
paladd = 0,0,0
palmul = .9,.9,.9
trans = add1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S0,3

[State 0, ]
type = PosAdd
trigger1 = animelem = 3
x = 80

[State 0, ]
type = Explod
trigger1 = animelem = 2
anim = 720
ID = 710
pos = 0,0
bindtime = 1
ontop = 1
shadow = -1,-1,-1
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 6020

[Statedef 6020]
type    = S
movetype= A
physics = S
velset = 5,0
anim = 6020
ctrl = 0
sprpriority = 2

[State 0, ]
type = VelSet
trigger1 = animelem = 4
x = 0

[State 0, ]
type = AfterImageTime
trigger1 = palno != 10
trigger1 = time = 0
time = 30

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S13,3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S5,6

[State 0, ]
type = RemoveExplod
trigger1 = animelem = 5
ID = 1007

[State 0, ]
type = EnvColor
trigger1 = animelem = 5
time = 4

[State 0, ]
type = Explod
trigger1 = animelem = 5
anim = 1008
ID = 1008
pos = 0,0
facing = -1
postype = p2
removetime = -2
sprpriority = 7
shadow = -1,-1,-1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = animelem = 5
anim = F2
pos = 95,-45
postype = p1
removetime = -2
ontop = 1
ownpal = 1

[State 0, ]
type = HitAdd
trigger1 = animelem = 5
value = 1

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 5
value = -20
kill = 0

[State 0, ]
type = TargetState
trigger1 = animelem = 5
value = 6021

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 6030

[Statedef 6021]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 6021

[Statedef 6030]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 6030
ctrl = 0
sprpriority = 2

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
trigger1 = palno != 10
time = 30

[State 0, ]
type = PlaySnd
trigger1 = time = 6
value = S13,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S5,6

[State 0, ]
type = EnvColor
trigger1 = animelem = 2
time = 4

[State 0, ]
type = Explod
trigger1 = animelem = 2
anim = F2
pos = 95,-50
postype = p1
removetime = -2
ontop = 1
ownpal = 1

[State 0, ]
type = HitAdd
trigger1 = animelem = 2
value = 1

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 2
value = -20
kill = 0

[State 0, ]
type = TargetState
trigger1 = animelem = 2
value = 6031

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 6035

[Statedef 6031]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = time >= 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 6031

[State 0, ]
type = StateTypeSet
trigger1 = animelem = 2
statetype = A
physics = A

[State 0, ]
type = VelSet
trigger1 = animelem = 2
x = -0.25
y = -16

[Statedef 6035]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 6035
ctrl = 0
sprpriority = 2

[State 0, ]
type = ScreenBound
trigger1 = time >= 0

[State 0, ]
type = AfterImageTime
trigger1 = palno != 10
trigger1 = time = 0
time = 30

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S13,3

[State 0, ]
type = EnvColor
trigger1 = p2bodydist y >= -115
time = 4

[State 0, ]
type = PlaySnd
trigger1 = p2bodydist y >= -115
value = S5,6
persistent = 0

[State 0, ]
type = Explod
trigger1 = p2bodydist y >= -115
anim = F2
pos = 95,-115
postype = p1
removetime = -2
ontop = 1
ownpal = 1
persistent = 0

[State 0, ]
type = HitAdd
trigger1 = p2bodydist y >= -115
value = 1
persistent = 0

[State 0, ]
type = TargetLifeAdd
trigger1 = p2bodydist y >= -115
value = -20
kill = 0
persistent = 0

[State 0, ]
type = TargetState
trigger1 = p2bodydist y >= -115
value = 6036
persistent = 0

[State 0, ]
type = StateTypeSet
trigger1 = animelem = 3
statetype = A
physics = A

[State 0, ]
type = VelSet
trigger1 = animelem = 3
x = 1
y = -16

[State 0, ]
type = ChangeState
trigger1 = p2bodydist y >= -20
value = 6040

[Statedef 6036]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 5012

[Statedef 6040]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 6040
ctrl = 0
sprpriority = 2

[State 0, ]
type = TargetFacing
trigger1 = frontedgedist <= 75
value = 1

[State 0, ]
type = Turn
trigger1 = frontedgedist <= 75

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
trigger1 = palno != 10
time = 12

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S13,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S5,6
persistent = 0

[State 0, ]
type = EnvColor
trigger1 = animelem = 3
time = 4

[State 0, ]
type = Explod
trigger1 = animelem = 3
anim = F2
pos = 95,-60
postype = p1
removetime = -2
ontop = 1
ownpal = 1
persistent = 0

[State 0, ]
type = HitAdd
trigger1 = animelem = 3
value = 1

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 3
value = -20
kill = 0

[State 0, ]
type = TargetState
trigger1 = animelem = 3
value = 6041
persistent = 0

[State 0, ]
type = TargetBind
trigger1 = time = 0
time = 12
pos = 50,0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 6050

[Statedef 6041]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 5011

[Statedef 6050]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 6050
ctrl = 0
sprpriority = 2

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
trigger1 = palno != 10
time = 10

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S13,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S5,6
persistent = 0

[State 0, ]
type = EnvColor
trigger1 = animelem = 3
time = 4

[State 0, ]
type = Explod
trigger1 = animelem = 3
anim = F2
pos = 60,-100
postype = p1
removetime = -2
ontop = 1
ownpal = 1
persistent = 0

[State 0, ]
type = HitAdd
trigger1 = animelem = 3
value = 1

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 3
value = -20
kill = 0

[State 0, ]
type = TargetState
trigger1 = animelem = 3
value = 6036
persistent = 0

[State 0, ]
type = TargetBind
trigger1 = time = 0
time = 10
pos = 40,0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 6060

[Statedef 6060]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 6060
ctrl = 0
sprpriority = 2

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
trigger1 = palno != 10
time = 12

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S13,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S5,6
persistent = 0

[State 0, ]
type = EnvColor
trigger1 = animelem = 3
time = 4

[State 0, ]
type = Explod
trigger1 = animelem = 3
anim = F2
pos = 60,-85
postype = p1
removetime = -2
ontop = 1
ownpal = 1
persistent = 0

[State 0, ]
type = HitAdd
trigger1 = animelem = 3
value = 1

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 3
value = -20
kill = 0

[State 0, ]
type = TargetState
trigger1 = animelem = 3
value = 6041
persistent = 0

[State 0, ]
type = TargetBind
trigger1 = time = 0
time = 12
pos = 40,0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 6070

[Statedef 6070]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 6070
ctrl = 0
sprpriority = 2

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
trigger1 = palno != 10
time = 40

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S13,3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S5,6
persistent = 0

[State 0, ]
type = EnvColor
trigger1 = animelem = 3
time = 4

[State 0, ]
type = Explod
trigger1 = animelem = 3
anim = F3
pos = 80,-75
postype = p1
removetime = -2
ontop = 1
ownpal = 1
persistent = 0

[State 0, ]
type = HitAdd
trigger1 = animelem = 3
value = 1

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 3
value = -40
kill = 0

[State 0, ]
type = TargetState
trigger1 = animelem = 3
value = 6071
persistent = 0

[State 0, ]
type = TargetBind
trigger1 = time = 0
time = 10
pos = 60,0

[State 0, ]
type = ChangeState
trigger1 = time = 30
value = 6080

[Statedef 6071]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = time >= 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 6071

[State 0, ]
type = Gravity
trigger1 = time >= 5

[Statedef 6080]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 6080
ctrl = 0
sprpriority = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
trigger1 = palno != 10
time = 9999

[State 0, ]
type = Explod
trigger1 = time = 0
anim = 720
ID = 710
pos = -100,0
bindtime = 1
ontop = 1
shadow = -1,-1,-1
ownpal = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S5,9

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3,3
value = S13,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
value = S0,3

[State 0, ]
type = Explod
trigger1 = animelem = 3
anim = F0
pos = 50,-70
postype = p1
removetime = -2
ontop = 1
ownpal = 1
persistent = 0

[State 0, ]
type = HitAdd
trigger1 = animelem = 3
value = 1

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 3
value = -5
kill = 0

[State 0, ]
type = TargetState
trigger1 = animelem = 3
value = 6081
persistent = 0

[State 0, ]
type = TargetState
trigger1 = animelem = 4
value = 6082
persistent = 0

[State 0, ]
type = TargetBind
trigger1 = animelem = 3
time = 40
pos = 50,-70

[State 0, ]
type = TargetBind
trigger1 = animelem = 4
time = 1
pos = 80,-5

[State 0, ]
type = ChangeState
trigger1 = time >= 40
trigger1 = p2bodydist y >= -75
value = 6085

[Statedef 6081]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0
sprpriority = 1

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 6081

[Statedef 6082]
type    = A
movetype= H
physics = A
velset = 0,-15
ctrl = 0
sprpriority = 1

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 6082

[Statedef 6085]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 6085
ctrl = 0
sprpriority = 0

[State 0, ]
type = VarSet
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
trigger1 = palno != 10
time = 12

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S5,6
persistent = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = S13,3

[State 0, ]
type = EnvColor
trigger1 = animelem = 2
time = 10

[State 0, ]
type = Explod
trigger1 = animelem = 2
anim = F3
pos = 90,-55
postype = p1
removetime = -2
ontop = 1
ownpal = 1
persistent = 0

[State 0, ]
type = HitAdd
trigger1 = animelem = 2
value = 1

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 2
value = -555

[State 0, ]
type = TargetState
trigger1 = animelem = 2
value = 6086
persistent = 0

[State 0, ]
type = ChangeState
;trigger1 = Win != 1
trigger1 = animtime = 0
value = 6090
ctrl = 1

[State 0, ]
type = Null;ChangeState
trigger1 = Win = 1
trigger1 = animtime = 0
value = 6095

[Statedef 6086]
type    = A
movetype= H
physics = A
velset = -10,-1
ctrl = 0
sprpriority = 1

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 5030

[State 0, ]
type = SelfState
trigger1 = time >= 1
value = 5050

[Statedef 6090]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 6090
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
trigger1 = palno != 10
time = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 9
value = S3,3

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 6095]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 6095
ctrl = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
trigger1 = palno != 10
time = 0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 180
ctrl = 1

;-------------------------
; EX-Super
[Statedef 7000]
type = S
movetype = A
physics = N
anim = 7000
velset = 0,0
ctrl = 0

[State 0, ]
type = SuperPause
trigger1 = animelem = 6
time = 40
sound = S20,0
pos = -5,-47
darken = 1
poweradd = -1000

[State 0, ]
type = AfterImage
trigger1 = animelem = 6
trigger1 = palno != 10
time = 4
length = 10
framegap = 1
palcontrast = 150,150,150
paladd = 0,0,0
palmul = .9,.9,.9
trans = add1
removeongethit = 1

[State 0, ]
type = Helper
trigger1 = animelem = 6
name = "Orb"
ID = 8000
pos = -5,-47
postype = p1
stateno = 8000
supermovetime = 40
pausemovetime = 1
size.xscale = .35
size.yscale = .35
ownpal = 1

[State 0, ]
type = Explod
trigger1 = animelem = 6
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = animelem = 6
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
value = S4,1

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = palno = 7
value = 7005
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = palno = 8
value = 7100
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = palno = 9
value = 7200
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = palno = 10
value = 7300
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;DASH
[Statedef 7005]
type = A
movetype = A
physics = A
anim = 7005
velset = 24,-3
ctrl = 0

[State 0, ]
type = velset
trigger1 = 1
x = 24

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
trigger1 = palno != 10
time = 16

[State 0, ]
type = Explod
trigger1 = animelem = 2
anim = 720
ID = 710
pos = 0,0
bindtime = 1
ontop = 1
shadow = -1,-1,-1
ownpal = 1

[State 0, ]
type = HitDef
trigger1 = enemynear, statetype != L
trigger1 = animelem = 2
attr = S, HA
animtype = light
damage = 14,0
guardflag = MA
hitflag = MAFD
pausetime = 6,11
sparkno = 0
guard.sparkno = 40
sparkxy = -0,-46
hitsound = S5,1
guardsound = S5,8
ground.type = high
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -2
air.velocity = -2,0
airguard.velocity = -4,-.2
guard.velocity = -4.3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
getpower = 0,0
givepower = 0,0
guard.pausetime = 9,11
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
p2facing = 1
kill = 0
yaccel = .5

[State 0, ]
type = Nothitby
trigger1 = 1
value = , AP

[State 0, ]
type = ChangeState
trigger1 = movehit
trigger1 = palno = 10
value = 7300
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = movehit
value = 7020
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = moveguarded
value = 7010
ctrl = 0

[Statedef 7010]
type = S
movetype = A
physics = S
anim = 7010
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 7020]
type = S
movetype = A
physics = N
anim = 7020
velset = 0,0
juggle = 10
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
trigger1 = palno != 10
time = 110

[State 0, ]
type = targetbind
trigger1 = Time = 0
pos = 55,0
time = 1

[State 0, ]
type = VelAdd
trigger1 = time >= 55
y = .5

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 6
trigger3 = animelem = 13
trigger4 = animelem = 20
trigger5 = animelem = 24
trigger6 = animelem = 27
trigger7 = animelem = 31
trigger8 = animelem = 37
trigger9 = animelem = 43
trigger10 = animelem = 48
value = S1,0
channel = 0
vloume = 50

[State 0, ]
type = EnvColor
trigger1 = animelem = 3
trigger2 = animelem = 7
trigger3 = animelem = 14
trigger4 = animelem = 21
trigger5 = animelem = 25
trigger6 = animelem = 28
trigger7 = animelem = 32
trigger8 = animelem = 38
trigger9 = animelem = 44
trigger10 = animelem = 49
time = 2
under = 1
ignorehitpause = 1

[State 0, ]
type = HitDef
trigger1 = animelem = 3
attr = S, HA
animtype = Hard
damage = 19,5
guardflag = MA
hitflag = MAFD
pausetime = 3,4
sparkno = 0
guard.sparkno = 40
sparkxy = -10,-60
hitsound = S5,1
guardsound = S5,8
ground.type = high
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -0
air.velocity = -0,0
airguard.velocity = -4,-.2
guard.velocity = -4.3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
getpower = 0,0
givepower = 0,0
guard.pausetime = 1,2
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
kill = 0
yaccel = .5

[State 0, ]
type = HitDef
trigger1 = animelem = 7
attr = S, HA
animtype = Hard
damage = 19,5
guardflag = MA
hitflag = MAFD
pausetime = 3,4
sparkno = 2
guard.sparkno = 40
sparkxy = -40,-58
hitsound = S5,3
guardsound = S5,8
ground.type = low
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -0
air.velocity = -0,0
airguard.velocity = -4,-.2
guard.velocity = -4.3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
getpower = 0,0
givepower = 0,0
guard.pausetime = 1,2
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
kill = 0
yaccel = .5

[State 0, ]
type = HitDef
trigger1 = animelem = 14
attr = S, HA
animtype = Hard
damage = 19,5
guardflag = MA
hitflag = MAFD
pausetime = 3,4
sparkno = 2
guard.sparkno = 40
hitsound = S5,3
guardsound = S5,8
guardsound = S200,3
ground.type = high
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -0
air.velocity = -0,0
airguard.velocity = -4,-.2
guard.velocity = -4.3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
getpower = 0,0
givepower = 0,0
guard.pausetime = 1,2
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
kill = 0
yaccel = .5

[State 0, ]
type = HitDef
trigger1 = animelem = 21
attr = S, HA
animtype = Hard
damage = 19,5
guardflag = MA
hitflag = MAFD
pausetime = 2,3
sparkno = 2
guard.sparkno = 40
sparkxy = -30,-55
hitsound = S5,3
guardsound = S5,8
ground.type = low
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -0
air.velocity = -0,0
airguard.velocity = -4,-.2
guard.velocity = -4.3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
getpower = 0,0
givepower = 0,0
guard.pausetime = 1,2
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
kill = 0
yaccel = .5

[State 0, ]
type = HitDef
trigger1 = animelem = 25
attr = S, HA
animtype = Hard
damage = 19,5
guardflag = MA
hitflag = MAFD
pausetime = 2,3
sparkno = 1
guard.sparkno = 40
sparkxy = 10,-20
hitsound = S5,2
guardsound = S5,8
ground.type = high
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -0
air.velocity = -0,0
airguard.velocity = -4,-.2
guard.velocity = -4.3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
getpower = 0,0
givepower = 0,0
guard.pausetime = 1,2
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
kill = 0
yaccel = .5

[State 0, ]
type = HitDef
trigger1 = animelem = 28
attr = S, HA
animtype = Hard
damage = 19,5
guardflag = MA
hitflag = MAFD
pausetime = 2,3
sparkno = 1
guard.sparkno = 40
sparkxy = -10,-42
hitsound = S5,2
guardsound = S5,8
ground.type = low
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -0
air.velocity = -0,0
airguard.velocity = -4,-.2
guard.velocity = -4.3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
getpower = 0,0
givepower = 0,0
guard.pausetime = 1,2
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
kill = 0
yaccel = .5

[State 0, ]
type = HitDef
trigger1 = animelem = 32
attr = S, HA
animtype = Hard
damage = 19,5
guardflag = MA
hitflag = MAFD
pausetime = 1,2
sparkno = 2
guard.sparkno = 40
sparkxy = -10,-61
hitsound = S5,3
guardsound = S5,8
ground.type = high
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -0
air.velocity = -0,0
airguard.velocity = -4,-.2
guard.velocity = -4.3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
getpower = 0,0
givepower = 0,0
guard.pausetime = 1,2
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
kill = 0
yaccel = .5

[State 0, ]
type = HitDef
trigger1 = animelem = 38
attr = S, HA
animtype = Hard
damage = 19,5
guardflag = MA
hitflag = MAFD
pausetime = 1,2
sparkno = 2
guard.sparkno = 40
sparkxy = -10,-68
hitsound = S5,3
guardsound = S5,8
ground.type = low
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -0
air.velocity = -0,0
airguard.velocity = -4,-.2
guard.velocity = -4.3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
getpower = 0,0
givepower = 0,0
guard.pausetime = 1,2
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
kill = 0
yaccel = .5

[State 0, ]
type = HitDef
trigger1 = animelem = 44
attr = S, HA
animtype = Hard
damage = 19,5
guardflag = MA
hitflag = MAFD
pausetime = 1,2
sparkno = 1
guard.sparkno = 40
sparkxy = -10,-83
hitsound = S5,2
guardsound = S5,8
ground.type = high
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -0
air.velocity = -0,0
airguard.velocity = -4,-.2
guard.velocity = -4.3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
getpower = 0,0
givepower = 0,0
guard.pausetime = 1,2
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
kill = 0
yaccel = .5

[State 0, ]
type = HitDef
trigger1 = animelem = 49
attr = S, HA
animtype = Diagup
damage = 34,5
guardflag = MA
hitflag = MAFD
pausetime = 1,2
sparkno = 2
guard.sparkno = 40
sparkxy = -10,-63
hitsound = S5,3
guardsound = S5,8
ground.type = low
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -.1,-7
air.velocity = -.1,-7
airguard.velocity = -4,-.2
guard.velocity = -4.3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
getpower = 0,0
givepower = 0,0
guard.pausetime = 1,2
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
kill = 0
yaccel = .5
fall = 1
fall.recover = 0
fall.envshake.time = 2

[State 0, ]
type = ChangeState
trigger1 = AnimTime = 0
value = 7030
ctrl = 0

[Statedef 7030]
type = S
movetype = A
physics = N
anim = 7030
velset = 0,0
ctrl = 0

[State 0, ]
type = VarRandom
trigger1 = time = 0
v = 2
range = 0,2

[State 0, ]
type = posset
trigger1 = Time = 0
y = 0

[State 0, ]
type = ScreenBound
Trigger1 = 1
value = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 7040+var(2)
ctrl = 0

[Statedef 7040]
type = A
movetype = A
physics = N
anim = 7040
velset = 0,0
ctrl = 0

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = S1,2
channel = 0
vloume = 100

[State 0, ]
type = posadd
trigger1 = Time = 0
y = -50
x = 65

[State 0, ]
type = velset
trigger1 = time > 0 
y = -1.25
x = 1.25

[State 0, ]
type = Explod
trigger1 = time = 0
anim = 720
ID = 710
pos = -25,50
bindtime = 1
ontop = 1
shadow = -1,-1,-1
ownpal = 1

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 2
under = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = AnimElem = 1
attr = S, HA
animtype = hard
ground.type = high
fall.animtype = up
damage = 112,5
guardflag = MA
hitflag = MAFD
pausetime = 1,38
sparkno = 3
guard.sparkno = 40
sparkxy = -8,-62
hitsound = S5,6
guardsound = S5,8
ground.slidetime = 18
ground.hittime = 18
air.hittime = 24
ground.velocity = -.1,-4
air.velocity = -.1,-4
airguard.velocity = -4,-.2
guard.velocity = -4.3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
getpower = 0,0
givepower = 0,0
guard.pausetime = 1,12
guard.slidetime = 15
guard.hittime = 30
guard.ctrltime = 30
fall = 1
fall.recover = 0
yaccel = .5
envshake.time = 30
envshake.freq = 90
envshake.ampl = -3
envshake.phase = -2

[State 0, ]
type = ChangeState
trigger1 = time >= 41
value = 7050
ctrl = 0

[Statedef 7041]
type = A
movetype = A
physics = N
anim = 7041
velset = 0,0
ctrl = 0

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = S1,2
channel = 0
vloume = 100

[State 0, ]
type = posadd
trigger1 = Time = 0
y = -50
x = 65

[State 0, ]
type = velset
trigger1 = time > 0 
y = -2
x = 1

[State 0, ]
type = Explod
trigger1 = time = 0
anim = 710
ID = 710
pos = 0,50
bindtime = 1
ontop = 1
shadow = -1,-1,-1
ownpal = 1

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 2
under = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = AnimElem = 1
attr = S, HA
animtype = hard
ground.type = high
fall.animtype = up
damage = 112,5
guardflag = MA
hitflag = MAFD
pausetime = 1,38
sparkno = 3
guard.sparkno = 40
sparkxy = -8,-62
hitsound = S5,6
guardsound = S5,8
ground.slidetime = 18
ground.hittime = 18
air.hittime = 24
ground.velocity = -.1,-4
air.velocity = -.1,-4
airguard.velocity = -4,-.2
guard.velocity = -4.3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
getpower = 0,0
givepower = 0,0
guard.pausetime = 1,12
guard.slidetime = 15
guard.hittime = 30
guard.ctrltime = 30
fall = 1
fall.recover = 0
yaccel = .5
envshake.time = 30
envshake.freq = 90
envshake.ampl = -3
envshake.phase = -2

[State 0, ]
type = ChangeState
trigger1 = time >= 41
value = 7050
ctrl = 0

[Statedef 7042]
type = A
movetype = A
physics = N
anim = 7042
velset = 0,0
ctrl = 0

[State 0, ]
type = VarSet
trigger1 = movehit =1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 1
value = S1,2
channel = 0
vloume = 100

[State 0, ]
type = posadd
trigger1 = Time = 0
y = -50
x = 65

[State 0, ]
type = velset
trigger1 = time > 0 
y = -3
x = 1

[State 0, ]
type = Explod
trigger1 = time = 0
anim = 710
ID = 710
pos = 0,50
bindtime = 1
ontop = 1
shadow = -1,-1,-1
ownpal = 1

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 2
under = 1
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = AnimElem = 1
attr = S, HA
animtype = hard
ground.type = high
fall.animtype = up
damage = 112,5
guardflag = MA
hitflag = MAFD
pausetime = 1,38
sparkno = 3
guard.sparkno = 40
sparkxy = -8,-62
hitsound = S5,6
guardsound = S5,8
ground.slidetime = 18
ground.hittime = 18
air.hittime = 24
ground.velocity = -.1,-4
air.velocity = -.1,-4
airguard.velocity = -4,-.2
guard.velocity = -4.3
ground.cornerpush.veloff = -0
air.cornerpush.veloff = -0
guard.cornerpush.veloff = -0
getpower = 0,0
givepower = 0,0
guard.pausetime = 1,12
guard.slidetime = 15
guard.hittime = 30
guard.ctrltime = 30
fall = 1
fall.recover = 0
yaccel = .5
envshake.time = 30
envshake.freq = 90
envshake.ampl = -3
envshake.phase = -2

[State 0, ]
type = ChangeState
trigger1 = time >= 41
value = 7050
ctrl = 0

[Statedef 7050]
type = A
movetype = I
physics = A
anim = 45
velset = (vel x)+1,(vel y)-1
ctrl = 0

[State 0, ]
type = Changestate
trigger1 = vel y > 0 && pos y >= -10
value = 52
ctrl = 0

;Shock-Wave
[Statedef 7100]
type = S
movetype = A
physics = N
anim = 7100
velset = 0,0
ctrl = 0

[State 0, ]
type = VarSet
trigger1 = helper(7105),movehit = 1
trigger1 = Win
v =  1
value = 1

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
trigger1 = helper(7105),movehit = 1
value = 0

[State 0, ]
type = Helper
trigger1 = animelem = 3
name = "shockwave"
ID = 7105
pos = 35,-45
stateno = 7105
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = backedgedist <= -50
trigger1 = animtime = 0
value = 100
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = backedgedist > -50
trigger1 = time = 50
value = 0
ctrl = 1

[Statedef 7105]
type = S
movetype = A
physics = N
anim = 7105
velset = 0,0
sprpriority = 2
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 7105
flag = noshadow
ignorehitpause = 1

[State 0, ]
type = Nothitby
trigger1 = stateno = 7105
value = SCA,NA,SA,HA,NT,ST,HT,NP,SP,HP

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

[State 0, ]
type = Helper
trigger1 = animelem = 1
name = "shockwave"
ID = 7110
pos = 0,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .15
size.yscale = .75
ownpal = 1

[State 0, ]
type = Helper
trigger1 = animelem = 1
name = "shockwave"
ID = 7110
pos = 50,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .10
size.yscale = .5
ownpal = 1

[State 0, ]
type = Helper
trigger1 = animelem = 2
name = "shockwave"
ID = 7110
pos = 100,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .10
size.yscale = .5
ownpal = 1

[State 0, ]
type = Helper
trigger1 = animelem = 3
name = "shockwave"
ID = 7110
pos = 150,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .10
size.yscale = .5
ownpal = 1

[State 0, ]
type = Helper
trigger1 = animelem = 4
name = "shockwave"
ID = 7110
pos = 200,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .10
size.yscale = .5
ownpal = 1

[State 0, ]
type = Helper
trigger1 = animelem = 5
name = "shockwave"
ID = 7110
pos = 250,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .10
size.yscale = .5
ownpal = 1

[State 0, ]
type = Helper
trigger1 = animelem = 6
name = "shockwave"
ID = 7110
pos = 300,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .10
size.yscale = .5
ownpal = 1

[State 0, ]
type = Null
trigger1 = movehit = 1
value = 255,255,255
time = 2
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
attr = S,HP
hitflag = MAF
guardflag = MA 
animtype = hard
air.animtype = hard
ground.type = Low
air.type = Low
priority = 7,Hit
damage = 50,15
pausetime = 2,1
guard.pausetime = 4,4
sparkno = 3
guard.sparkno = 41
sparkxy = 0,0
hitsound = -1,0
guardsound = S5,8
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -5,-0.5
guard.velocity = -2
air.velocity = -5,-0.5
airguard.velocity = -2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
sprpriority = 2
fall = 1
numhits = 2
getpower = 0,0
givepower = 0,0
envcolor.time = 2
envcolor.value = 255,255,255
palfx.time = 10
palfx.mul = 256,256,256
palfx.add = 100,100,200

[State 0, ]
type = ChangeState
trigger1 = movehit = 1
trigger1 = animelem = 9
value = 7106

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 7106]
type = S
movetype = A
physics = N
anim = 7106
velset = 0,0
sprpriority = 6
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 7106
flag = noshadow
ignorehitpause = 1

[State 0, ]
type = Nothitby
trigger1 = stateno = 7105
value = SCA,NA,SA,HA,NT,ST,HT,NP,SP,HP

[State 0, ]
type = AfterImage
trigger1 = time = 0
trigger1 = palno != 10
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

[State 0, ]
type = Helper
trigger1 = animelem = 1
name = "shockwave"
ID = 7110
pos = 0,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .15
size.yscale = .75
ownpal = 1

[State 0, ]
type = Helper
trigger1 = animelem = 2
name = "shockwave"
ID = 7110
pos = 350,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .10
size.yscale = .5
ownpal = 1

[State 0, ]
type = Helper
trigger1 = animelem = 3
name = "shockwave"
ID = 7110
pos = 400,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .10
size.yscale = .5
ownpal = 1

[State 0, ]
type = Helper
trigger1 = animelem = 4
name = "shockwave"
ID = 7110
pos = 450,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .10
size.yscale = .5
ownpal = 1

[State 0, ]
type = Helper
trigger1 = animelem = 5
name = "shockwave"
ID = 7110
pos = 500,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .10
size.yscale = .5
ownpal = 1

[State 0, ]
type = Helper
trigger1 = animelem = 6
name = "shockwave"
ID = 7110
pos = 550,0
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .10
size.yscale = .5
ownpal = 1

[State 0, ]
type = Null
trigger1 = movehit = 1
value = 255,255,255
time = 2
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = 1
attr = S,HP
hitflag = MAF
guardflag = MA 
animtype = diagup
air.animtype = diagup
ground.type = Low
air.type = Low
priority = 7,Hit
damage = 50,15
pausetime = 2,0
guard.pausetime = 4,4
sparkno = 3
guard.sparkno = 41
sparkxy = 0,0
hitsound = -1,0
guardsound = S5,8
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -50,-0.5
guard.velocity = -2
air.velocity = -50,-0.5
airguard.velocity = -2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
sprpriority = 2
fall = 1
numhits = 2
getpower = 0,0
givepower = 0,0
envcolor.time = 2
envcolor.value = 255,255,255
palfx.time = 10
palfx.mul = 256,256,256
palfx.add = 100,100,200

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 7110]
type = S
movetype = A
physics = N
anim = 7110
velset = 0,0
sprpriority = -1
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 7110
flag = noshadow
ignorehitpause = 1

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S5,6
channel = 1

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

;Raging-Lightning
[Statedef 7200]
type = S
movetype = A
physics = N
anim = 7200
velset = 0,0
sprpriority = 4
ctrl = 0

[State 0, ]
type = VarSet
triggerall = Win
trigger1 = helper(7205),movehit = 1
v =  1
value = 1

[State 0, ]
type = VarRandom
trigger1 = time >= 0
v = 10
range = 15,55

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
trigger1 = palno != 10
time = 16

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S5,5
channel = 2

[State 0, ]
type = Helper
trigger1 = time = 5
name = "Lightning"
ID = 7205
pos = 40,0
stateno = 7205
ownpal = 1

[State 0, ]
type = Helper
trigger1 = time = 16
name = "Lightning"
ID = 7205
pos = var(10),0
stateno = 7210
ownpal = 1

[State 0, ]
type = Helper
trigger1 = time = 26
name = "Lightning"
ID = 7205
pos = var(10),0
stateno = 7210
ownpal = 1

[State 0, ]
type = Helper
trigger1 = time = 36
name = "Lightning"
ID = 7205
pos = var(10),0
stateno = 7210
ownpal = 1

[State 0, ]
type = Helper
trigger1 = time = 46
name = "Lightning"
ID = 7205
pos = var(10),0
stateno = 7215
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 7205]
type = S
movetype = A
physics = N
anim = 7205
velset = 0,0
sprpriority = 5
juggle = 1
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 7205
flag = noshadow
ignorehitpause = 1

[State 0, ]
type = PosSet
trigger1 = stateno = 7205
y = 0
ignorehitpause = 1

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 5
framegap = 1
palcolor = 38
trans = add

[State 0, ]
type = Helper
trigger1 = animelem = 1
name = "shockwave"
ID = 7110
pos = 0,5
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = 1
size.yscale = .25
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 0
anim = 720
ID = 710
pos = 0,0
bindtime = 1
ontop = 1
shadow = -1,-1,-1
ownpal = 1

[State 0, ]
type = Explod
trigger1 = time = 0
anim = 725
ID = 715
pos = 0,0
bindtime = 1
ontop = 1
shadow = -1,-1,-1
ownpal = 1

[State 0, ]
type = envcolor
trigger1 = movehit = 1
value = 255,255,255
time = 2
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
attr = S,HP
hitflag = MAFD
guardflag = MA 
animtype = up
air.animtype = up
fall.animtype = up
ground.type = Low
air.type = Low
priority = 7,Hit
damage = 100,15
pausetime = 6,3
guard.pausetime = 4,4
sparkno = 3
guard.sparkno = 41
sparkxy = 0,-50+p2bodydist y
hitsound = S5,4
guardsound = S5,4
ground.slidetime = 15
ground.hittime = 15
ground.velocity = 2,-10
guard.velocity = -2
air.velocity = 2,-10
airguard.velocity = -2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
sprpriority = 5
fall = 1
numhits = 4
snap = 0
getpower = 0,0
givepower = 0,0
palfx.time = 10
palfx.mul = 256,256,256
palfx.add = 100,100,200

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 7210]
type = S
movetype = A
physics = N
anim = 7210
velset = 0,0
sprpriority = 5
juggle = 1
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 7210
flag = noshadow
ignorehitpause = 1

[State 0, ]
type = PosSet
trigger1 = stateno = 7210
y = 0
ignorehitpause = 1

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 5
framegap = 1
palcolor = 38
trans = add

[State 0, ]
type = Helper
trigger1 = animelem = 1
name = "shockwave"
ID = 7110
pos = 0,5
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .75
size.yscale = .15
ownpal = 1

[State 0, ]
type = envcolor
trigger1 = movehit = 1
value = 255,255,255
time = 2
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
attr = S,HP
hitflag = MAFD
guardflag = MA 
animtype = up
air.animtype = up
fall.animtype = up
ground.type = Low
air.type = Low
priority = 7,Hit
damage = 50,15
pausetime = 6,3
guard.pausetime = 4,4
sparkno = 3
guard.sparkno = 41
sparkxy = 0,-50+p2bodydist y
hitsound = S5,4
guardsound = S5,4
ground.slidetime = 15
ground.hittime = 15
ground.velocity = 0.5,-10
guard.velocity = -2
air.velocity = 0,-10
airguard.velocity = -2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
sprpriority = 1
fall = 1
numhits = 2
getpower = 0,0
givepower = 0,0
palfx.time = 10
palfx.mul = 256,256,256
palfx.add = 100,100,200

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 7215]
type = S
movetype = A
physics = N
anim = 7210
velset = 0,0
sprpriority = 5
juggle = 10
ctrl = 0

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 7215
flag = noshadow
ignorehitpause = 1

[State 0, ]
type = PosSet
trigger1 = stateno = 7215
y = 0
ignorehitpause = 1

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 5
framegap = 1
palcolor = 38
trans = add

[State 0, ]
type = Helper
trigger1 = animelem = 1
name = "shockwave"
ID = 7110
pos = 0,5
stateno = 7110
supermovetime = 999
pausemovetime = 999
size.xscale = .75
size.yscale = .15
ownpal = 1

[State 0, ]
type = envcolor
trigger1 = movehit = 1
value = 255,255,255
time = 2
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
attr = S,HP
hitflag = MAFD
guardflag = MA 
animtype = diagup
air.animtype = diagup
ground.type = Low
air.type = Low
priority = 7,Hit
damage = 50,15
pausetime = 6,3
guard.pausetime = 4,4
sparkno = 3
guard.sparkno = 41
sparkxy = 0,-50+p2bodydist y
hitsound = S5,4
guardsound = S5,4
yaccel = .6
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -2.5,-10
guard.velocity = -2
air.velocity = -2.5,-10
airguard.velocity = -2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
sprpriority = 1
fall = 1
numhits = 2
getpower = 0,0
givepower = 0,0
palfx.time = 10
palfx.mul = 256,256,256
palfx.add = 100,100,200

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

;--[Super Animations]------------------
[Statedef 8000]
type = S
movetype = I
anim = 8000
sprpriority = 8

[State 0, ]
type = AssertSpecial
trigger1 = stateno = 8000
flag = noshadow

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 7
framegap = 3
palcolor = 38
trans = Add

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0
