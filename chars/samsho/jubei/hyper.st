;---------------------------------------------------------------------------
; SUPER
[Statedef 6000]
type    = S
movetype= A
physics = S
juggle  = 15
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 6000

[State 6000, Super A]
type = SuperPause
trigger1 = Time = 0
pos = 25, -92
anim = 102
time = 36

[State 6000, Super B]
type = PlaySnd
trigger1 = Time = 0
value = 7, 20

[State 6000, Super B2]
type = PlaySnd
trigger1 = Time = 0
value = 7, 24

[State 6000, Super C]
type = PowerAdd
trigger1 = Time = 0
value = -1000

[State 6000, Super D]
type = AfterImage
trigger1 = AnimElem = 1
time = 2

[State 6000, Super E]
type = AfterImage
trigger1 = AnimElem = 1
Time = 44

[State 6000, WAZA_BLITZ]
type = Explod
trigger1 = Time = 0
anim = 20001
id = 20001
pos = -320,0
postype = right
under = 1
removetime = 36
supermove = 1
ownpal = 1

[State 6000, WAZA_AHORN#3]
type = Explod
trigger1 = Time = 0
anim = 20002
id = 20005
pos = 10,140
postype = right
velocity = -11, 1.5
accel = .25, -.1
under = 1
removetime = 100
supermove = 1
ownpal = 1
scale = .5,.5

[State 6000, WAZA_BACK]
type = Explod
trigger1 = Time = 0
anim = 20000
id = 20000
pos = -320,0
postype = right
under = 1
removetime = 36
supermove = 1
ownpal = 1

[State 6000, WAZA_AHORN#1]
type = Explod
trigger1 = Time = 0
anim = 20002
id = 20003
pos = 10,170
postype = right
velocity = -9.5, 1
accel = .3, -.1
ontop = 1
removetime = 100
supermove = 1
ownpal = 1

[State 6000, WAZA_AHORN#2]
type = Explod
trigger1 = Time = 0
anim = 20002
id = 20004
pos = 10,210
postype = right
velocity = -12, 1
accel = .25, -.1
ontop = 1
removetime = 100
supermove = 1
ownpal = 1
scale = .75,.75
facep2 = 1

[State 6000, 1]
type = SprPriority
trigger1 = time = 0
value = 20

[State 6000, 1]
type = VelSet
trigger1 = time > 0
x = 14

[State 6000, 3]
type = PlaySnd
trigger1 = TimeMod = 29, 0
value = 8, 3

[State 6000, 4]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
attr = S, SA
animtype  = Heavy
damage    = 0
guardflag = MA
hitflag = MAF
pausetime = 2,88
guard.pausetime = 6,8
sparkno = 2
sparkxy = 0,-44
hitsound   = S9,9
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -1, 0   
air.velocity = -1, 0
fall = 0
fall.recover = 0
forcestand = 1
numhits = 0

[State 6000, 5]
type = ChangeState
trigger1 = movehit
trigger1 = 1
value = 6005

[State 6000, 6]
type = ChangeState
trigger1 = time = 40
value = 101

[Statedef 6001]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
anim = 6001

[State 6001, 1]
type = ReversalDef
trigger1 = 1
reversal.attr = SC, NA, SA
pausetime = 8,96
hitsound = S7,18
p1stateno = 6000
p2stateno = 5000

[State 6001, 2]
type = ChangeState
trigger1 = Time = 60
value = 6000

[Statedef 6005]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
anim = 6005

[State 6005, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 6005, 1]
type = Playerpush
trigger1 = Time >= 0
value = 0

[State 6005, 3]
type = VelSet
trigger1 = Time = 0
x = 25

[State 6005, 1]
type = NULL ;PosAdd
trigger1 = Vel X <= 0
x = 70

[State 6005, 8]
type = ChangeState
trigger1 = Vel X <= 0
value = 6010
ctrl = 0

[Statedef 6010]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
anim = 6010

[State 6010, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 6010, left]
type = Explod
trigger1 = time = 0
anim = 30000
id = 30000
pos = -320,0
postype = right
velocity = 8, 0
ontop = 1
removetime = 20
ownpal = 1

[State 6010, right]
type = Explod
trigger1 = time = 0
anim = 30010
id = 30010
pos = 0,0
postype = right
velocity = -8, 0
ontop = 1
removetime = 20
ownpal = 1

[State 6010, leftopak]
type = Explod
trigger1 = time = 20
anim = 30000
id = 30000
pos = -160,0
postype = right
under = 1
bindtime = 150
removetime = 150
ownpal = 1

[State 6010, rightopak]
type = Explod
trigger1 = time = 20
anim = 30010
id = 30010
pos = -160,0
postype = right
under = 1
bindtime = 150
removetime = 150
ownpal = 1

[State 6010, leftrans]
type = Explod
trigger1 = time = 20
anim = 30001
id = 30001
pos = -160,0
postype = right
ontop = 1
bindtime = 150
removetime = 150
ownpal = 1

[State 6010, rightrans]
type = Explod
trigger1 = time = 20
anim = 30011
id = 30011
pos = -160,0
postype = right
ontop = 1
bindtime = 150
removetime = 150
ownpal = 1

[State 6010, 1]
type = Projectile
trigger1 = Time = 19
ProjAnim = 6009
ProjHitAnim = 6009
ProjRemAnim = -1
ProjShadow = -1
projid = 1510
offset = 0, 0
postype = p2
velocity = 0, 0
remvelocity = 0, 0
velmul = 0, 0
accel = 0, 0
attr = S, HP
damage    = 0,0
air.juggle = 0
animtype  = Heavy
getpower  = 0
givepower = 55
guardflag = MA
pausetime = 0,200
guard.pausetime = 5,5
sparkno = -1
sparkxy = 0, 0
hitsound   = -1
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5, 0 
air.velocity = -1.2,0
guard.velocity = -5
fall = 0
fall.recover = 0
palfx.time = 147
palfx.add = -255,-255,-255
numhits = 0

[State 6010, 5]
type = PalFX
trigger1 = Time = 19
add = -255,-255,-255
time = 147

[State 6010, 5]
type = ChangeState
trigger1 = Time = 50
value = 6020
ctrl = 0

[Statedef 6020]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
anim = 1000
facep2 = 1

[State 6020, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 6020, 1]
type = VelSet
trigger1 = 1
x = 8

[State 6020, 4]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
attr = S, SA
animtype  = Heavy
damage    = 0
guardflag = MA
hitflag = MAF
pausetime = 0,90
guard.pausetime = 6,8
sparkno = -1
sparkxy = -10,-44
hitsound   = S9,9
guardsound = 6,0
ground.type = Trip
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -1, 0   
air.velocity = -1, 0
fall = 0
fall.recover = 0
numhits = 0

[State 6020, 5]
type = ChangeState
trigger1 = movehit
trigger1 = 1
value = 6030

[State 6020, 6]
type = ChangeState
trigger1 = time = 40
value = 101

[Statedef 6030]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
anim = 6015
facep2 = 1

[State 6030, 1]
type = Projectile
trigger1 = Time = 25
ProjAnim = 6009
ProjHitAnim = 6009
ProjRemAnim = -1
ProjShadow = -1
projid = 1510
offset = 0, 0
postype = p2
velocity = 0, 0
remvelocity = 0, 0
velmul = 0, 0
accel = 0, 0
attr = S, HP
damage    = 450,5
air.juggle = 0
animtype  = Heavy
getpower  = 0
givepower = 55
guardflag = MA
pausetime = 0,70
guard.pausetime = 5,5
sparkno = -1
sparkxy = 0, 0
hitsound   = -1
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5, 0 
air.velocity = -1.2,0
guard.velocity = -5
fall = 1
fall.recover = 0
numhits = 0

[State 6030, GONG]
type = PlaySnd
trigger1 = Time = 0
value = 7,8

[State 6030, PAUSE]
type = Pause
trigger1 = Time = 0
trigger2 = Time = 5
trigger3 = Time = 10
trigger4 = Time = 14
trigger5 = Time = 17
trigger6 = Time = 19
trigger7 = Time = 20
time = 10

[State 6030, BLOOD]
type = Explod
trigger1 = time = 40
anim = 30020
id = 30020
pos = -320,0
postype = right
sprpriority = 12
bindtime = 80
removetime = 80
ownpal = 1

[State 6030, BLOD_SOUND]
type = PlaySnd
trigger1 = Time = 40
value = 9, 11

[State 6030, left]
type = Explod
trigger1 = time = 115
anim = 30007
id = 30001
pos = -161,0
postype = right
velocity = 0, 0 ;-12
accel = 0, -1
ontop = 1
removetime = 100
ownpal = 1

[State 6030, right]
type = Explod
trigger1 = time = 115
anim = 30008
id = 30011
pos = -160,0
postype = right
velocity = 0, 0 ;12
accel = 0, 1
ontop = 1
removetime = 100
ownpal = 1

[State 6030, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 6030, 1]
type = PlayerPush
trigger1 = 1
value = 0

[State 6030, 1]
type = VelSet
trigger1 = time = 0
x = 35

[State 6030, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;WAZA_SLASH
[Statedef 6500]
type    = S
movetype= A
physics = S
ctrl = 0
juggle = 15
anim = 6500
velset = 0,0,0
poweradd = 0

[State 6500, Super A]
type = SuperPause
trigger1 = AnimElem = 2
pos = -50, -115
anim = 101
time = 36

[State 6500, Super B]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 20

[State 6500, Super B2]
type = PlaySnd
trigger1 = Time = 0
value = 7, 24

[State 6500, Super C]
type = PowerAdd
trigger1 = AnimElem = 2
value = -1000

[State 6500]
type = PlaySnd
trigger1 = AnimElem = 5
value = 9, 6
volume = 200

[State 6500]
type = PlaySnd
trigger1 = Time = 25
value = 9, 7

[State 6500]
type = PlaySnd
trigger1 = Time = 72
value = 9, 8

[State 6500]
type = SprPriority
trigger1 = time = 0
value = 20

[State 6000, WAZA_BLITZ]
type = Explod
trigger1 = AnimElem = 2
anim = 20001
id = 20001
pos = -320,0
postype = right
under = 1
removetime = 36
supermove = 1
ownpal = 1

[State 6000, WAZA_AHORN#3]
type = Explod
trigger1 = AnimElem = 2
anim = 20002
id = 20005
pos = 10,140
postype = right
velocity = -11, 1.5
accel = .25, -.1
under = 1
removetime = 100
supermove = 1
ownpal = 1
scale = .5,.5

[State 6000, WAZA_BACK]
type = Explod
trigger1 = AnimElem = 2
anim = 20000
id = 20000
pos = -320,0
postype = right
under = 1
removetime = 36
supermove = 1
ownpal = 1

[State 6000, WAZA_AHORN#1]
type = Explod
trigger1 = AnimElem = 2
anim = 20002
id = 20003
pos = 10,170
postype = right
velocity = -9.5, 1
accel = .3, -.1
ontop = 1
removetime = 100
supermove = 1
ownpal = 1

[State 6000, WAZA_AHORN#2]
type = Explod
trigger1 = AnimElem = 2
anim = 20002
id = 20004
pos = 10,210
postype = right
velocity = -12, 1
accel = .25, -.1
ontop = 1
removetime = 100
supermove = 1
ownpal = 1
scale = .75,.75

[State 6500, 1]
type = Projectile
trigger1 = Time = 25
ProjAnim = 6510
ProjHitAnim = -1
ProjRemAnim = -1
ProjShadow = -1
projremovetime = 52
projid = 6510
offset = 125, 0
velocity = 0, 0
remvelocity = 0, 0
velmul = 0, 0
accel = 0, 0
attr = S, SP

[State 6500, 2]
type = Projectile
trigger1 = Time = 77
ProjAnim = 6515
ProjHitAnim = 6520
ProjRemAnim = 6520
ProjShadow = -1
projremovetime = 132
projid = 6515
offset = 125, 0
velocity = 0, 0
remvelocity = 0, 0
velmul = 0, 0
accel = 0, 0
attr = S, HP
damage    = 50,5
air.juggle = 8
animtype  = Heavy
getpower  = 0
givepower = 55
guardflag = MA
pausetime = 15,5
guard.pausetime = 5,20
sparkno = 1
sparkxy = 0, 0
hitsound   = S9,9
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0, -7  
air.velocity = 0,-7
guard.velocity = -5
fall = 1
fall.recover = 0
palfx.time = 40
palfx.add = 128,128,255
palfx.sinadd = 255,255,255,5
down.hittime = 600
projhits = 8
ignorehitpause = 1
projedgebound = 350

[State 6500, 3]
type = Explod
trigger1 = Time >= 25
anim = 6590
id = 6590
pos = 125,0
postype = p1
ontop = 1
ownpal = 1
vel = 0,0
accel = 0,-.15
random = 125,0
removetime = 70
ignorehitpause = 1

[State 6500, 4]
type = Explod
trigger1 = projhittime(6515) = 1
triggerall = numexplod(23234) = 0
anim = 23234
id = 23234
pos = 0,-60
postype = p2
sprpriority = 20
ownpal = 1
removetime = 240
ignorehitpause = 1
bindtime = 240

[State 6500, 5]
type = RemoveExplod
trigger1 = AnimTime = 0

[State 6500, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; WAZA:BUST
[Statedef 6600]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 2000

[State 6600, Super A]
type = SuperPause
trigger1 = Time = 0
pos = -35, -115
anim = 102
time = 36

[State 6600, Super B]
type = PlaySnd
trigger1 = Time = 0
value = 7, 20

[State 6600, Super B2]
type = PlaySnd
trigger1 = Time = 0
value = 7, 24

[State 6600, Super C]
type = PowerAdd
trigger1 = Time = 0
value = -1000

[State 6600, Super D]
type = AfterImage
trigger1 = AnimElem = 1
time = 2

[State 6600, Super E]
type = AfterImage
trigger1 = AnimElem = 1
Time = 44

[State 6000, WAZA_BLITZ]
type = Explod
trigger1 = Time = 0
anim = 20001
id = 20001
pos = -320,0
postype = right
under = 1
removetime = 36
supermove = 1
ownpal = 1

[State 6000, WAZA_AHORN#3]
type = Explod
trigger1 = Time = 0
anim = 20002
id = 20005
pos = 10,140
postype = right
velocity = -11, 1.5
accel = .25, -.1
under = 1
removetime = 100
supermove = 1
ownpal = 1
scale = .5,.5

[State 6000, WAZA_BACK]
type = Explod
trigger1 = Time = 0
anim = 20000
id = 20000
pos = -320,0
postype = right
under = 1
removetime = 36
supermove = 1
ownpal = 1

[State 6000, WAZA_AHORN#1]
type = Explod
trigger1 = Time = 0
anim = 20002
id = 20003
pos = 10,170
postype = right
velocity = -9.5, 1
accel = .3, -.1
ontop = 1
removetime = 100
supermove = 1
ownpal = 1

[State 6000, WAZA_AHORN#2]
type = Explod
trigger1 = Time = 0
anim = 20002
id = 20004
pos = 10,210
postype = right
velocity = -12, 1
accel = .25, -.1
ontop = 1
removetime = 100
supermove = 1
ownpal = 1
scale = .75,.75

[State 6600]
type = VarSet
trigger1 = Time = 0
v = 4
value = 0

[State 6600, 1]
type = SprPriority
trigger1 = 1
value = 20

[State 6600]
type = PlaySnd
trigger1 = AnimTime = 0
value = 7, 9

[State 6600, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 6610
ctrl = 0

[Statedef 6610]
type    = S
movetype= A
physics = S
juggle  = 15
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 2010

[State 6610, 1]
type = SprPriority
trigger1 = 1
value = 20

[State 6610, 6]
type = VarAdd
trigger1 = Time = 0
v = 4
value = 1

[State 6610, 1]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
trigger3 = AnimElem = 13
trigger4 = AnimElem = 17
trigger5 = AnimElem = 23
trigger6 = AnimElem = 29
value = 9,1

[State 6610, 2]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 18
attr = S, SA
animtype  = Heavy
damage    = 5
getpower = 0
givepower = 5
guardflag = MA
hitflag = MAF
pausetime = 8,12
guard.pausetime = 6,32
sparkno = 2
sparkxy = -10,-94
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -4   
air.velocity = -4, -2
fall.recover = 0
forcestand = 1

[State 6610, 2]
type = HitDef
trigger1 = AnimElem = 8
trigger2 = AnimElem = 24
attr = S, SA
animtype  = Heavy
damage    = 5
getpower = 0
givepower = 5
guardflag = MA
hitflag = MAF
pausetime = 8,12
guard.pausetime = 6,32
sparkno = 2
sparkxy = -10,-40
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -4   
air.velocity = -4, -2
fall.recover = 0
forcestand = 1

[State 6610, 2]
type = HitDef
trigger1 = AnimElem = 14
trigger2 = AnimElem = 30
attr = S, SA
animtype  = Heavy
damage    = 5
getpower = 0
givepower = 5
guardflag = MA
hitflag = MAF
pausetime = 8,12
guard.pausetime = 6,32
sparkno = 2
sparkxy = -10,-64
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -4   
air.velocity = -4, -2
fall.recover = 0
forcestand = 1

[State 6610, 1]
type = Projectile
trigger1 = AnimElem = 4
trigger2 = AnimElem = 18
trigger3 = AnimElem = 30
ProjAnim = 6020
ProjHitAnim = 6025
ProjRemAnim = 6025
ProjShadow = -1
projid = 1510
offset = 45, -30
velocity = 8, 0
remvelocity = 1, 0
velmul = 1, 0
accel = 0, 0
attr = S, SP
damage    = 5,5
air.juggle = 2
animtype  = Heavy
getpower = 0
givepower = 5
guardflag = MA
pausetime = 0,58
guard.pausetime = 5,25
sparkno = 1
sparkxy = 0, 0
hitsound   = S8, 4
guardsound = 6,0
ground.type = Low
air.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5   
air.velocity = -1.2,-3
guard.velocity = -5
fall = 0
fall.recover = 0
palfx.time = 40
palfx.add = 128,128,255
palfx.sinadd = 255,255,255,5
down.hittime = 600
forcestand = 1

[State 6610, 1]
type = Projectile
trigger1 = AnimElem = 3
trigger2 = AnimElem = 14
trigger3 = AnimElem = 24
ProjAnim = 6020
ProjHitAnim = 6025
ProjRemAnim = 6025
ProjShadow = -1
projid = 1510
offset = 45, -80
velocity = 8, 0
remvelocity = 1, 0
velmul = 1, 0
accel = 0, 0
attr = S, SP
damage    = 5,5
air.juggle = 2
animtype  = Heavy
getpower = 0
givepower = 5
guardflag = MA
pausetime = 0,58
guard.pausetime = 5,25
sparkno = 1
sparkxy = 0, 0
hitsound   = S8, 4
guardsound = 6,0
ground.type = Low
air.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5   
air.velocity = -1.2,-3
guard.velocity = -5
fall = 0
fall.recover = 0
palfx.time = 40
palfx.add = 128,128,255
palfx.sinadd = 255,255,255,5
down.hittime = 600
forcestand = 1

[State 6610, 6]
type = Explod
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

[State 6610, 7]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = var(4) < 3
value = 6610
ctrl = 0

[State 6610, 7]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = var(4) >= 3
value = 6620
ctrl = 0

[Statedef 6620]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 1000

[State 6620, 1]
type = VelSet
trigger1 = 1
x = 8

[State 6620, 2]
type = Explod
trigger1 = time = 0
anim = 1010
id = 1010
pos = -46,0
postype = p1
ontop = 1
ownpal = 1
bindtime = 40
removetime = 40

[State 6620, 3]
type = PlaySnd
trigger1 = TimeMod = 29, 0
value = 8, 3

[State 6620, 4]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
attr = S, SA
animtype  = Heavy
damage    = 15
getpower = 0
givepower = 5
guardflag = MA
hitflag = MAF
pausetime = 6,18
guard.pausetime = 6,18
sparkno = 2
sparkxy = 10,-44
hitsound   = S7, 13
guardsound = S7, 13
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -1, 0   
air.velocity = -1, 0
fall = 0
fall.recover = 0

[State 6620, 5]
type = ChangeState
trigger1 = movecontact
trigger1 = time = 40
trigger2 = HitCount = 24
value = 6630

[State 6620, 6]
type = ChangeState
trigger1 = time = 40
value = 101

[Statedef 6630]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 6610

[State 6630, 1]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 6630, 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 9, 2

[State 6630, 3]
type = PosAdd
trigger1 = time = 0
x = 20

[State 6630, 4]
type = RemoveExplod
trigger1 = time = 0

[State 6630, 5]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Heavy
damage    = 50
getpower = 0
givepower = 5
guardflag = MA
hitflag = MAF
pausetime = 0, 8
guard.pausetime = 5, 20
sparkno = 2
sparkxy = -10,-60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = 0, -7   
air.velocity = 0, -7
fall = 1
fall.recover = 0

[State 6630, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 6640

[Statedef 6640]
type    = A
movetype= A
physics = A
juggle  = 15
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 1030

[State 6640]
type = PlaySnd
trigger1 = Time = 0
value = 9, 10

[State 6640]
type = PlaySnd
trigger1 = Time = 0
value = 7, 8

[State 6640, 1]
type = PlayerPush
trigger1 = time < 36
value = 0

[State 6640, 1]
type = VelSet
trigger1 = time < 3
y = -12

[State 6640, 2.5]
type = HitDef
trigger1 = Time = 0
trigger2 = Time = 8
trigger3 = Time = 16
trigger4 = Time = 24
trigger5 = Time = 30
trigger6 = Time = 35
attr = S, SA
animtype  = Heavy
damage    = 20
getpower = 0
givepower = 5
guardflag = MA
hitflag = MAF
pausetime = 14,14
guard.pausetime = 6,28
sparkno = 2
sparkxy = -10,-44
hitsound   = S5,2
guardsound = S7,13
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = 0, -13   
air.velocity = -.5, -13
fall = 1
fall.recover = 0

[State 6640, 6]
type = Explod
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

[State 6640, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

