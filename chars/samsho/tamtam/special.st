[Statedef 2000]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= -1000
ctrl = 0
velset = 0,0,0
anim = 2000

[State 2000, 1]
type = Explod
trigger1 = time = 1
anim = 954
ID = 954
pos = -325,-5
sprpriority = -5
postype = right
bindtime = 80
ignorehitpause = 1
removetime = 12

[State 2000, 2]
type = SuperPause
trigger1 = Anim = 2000
trigger1 = animelem = 7
pos = -35, -60
time = 50
unhittable = 1
anim = S912
sound = s4, 23

[State 2000, 3]
type = Changestate
trigger1 = Anim = 2000
trigger1 = AnimElem = 8
value = 2001

[Statedef 2001]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0,0
anim = 2001

[State 6100, 3]
type = BGPalFX
trigger1 = Time = 0
color = 0
time = 120
ignorehitpause = 1

[State 1012, 1]
type = Projectile
trigger1 = time = 9
trigger2 = time = 33
trigger3 = time = 57
trigger4 = time = 81
trigger5 = time = 105
ProjAnim = 950
ProjHitAnim = 962
ProjRemAnim = -1
ProjShadow = -1
offset = 0, 0
velocity = 10, 25
remvelocity = 1, 0
velmul = 1, 0
accel = 0, 0
attr = S, HP
damage    = 30,5
air.juggle = 8
animtype  = Heavy
getpower  = 0
givepower = 55
hitflag = HLF
guardflag = MAf
pausetime = 10
guard.pausetime = 5,5
sparkno = s955
sparkxy = 90, -96
hitsound   = S4, 18
guardsound = s4, 20
guard.sparkno = s955
ground.type = high
p2stateNo = 2010
air.type = high
palfx.time = 15 
palfx.add = 240,50,0 
palfx.mul = 250,224,120 
palfx.sinadd = 110,55,85,10
Palfx.color = 0 
palfx.invertall = 0 
ground.slidetime = 5
ground.hittime = 10
ground.velocity = -1.2, 0
air.velocity = -1.2, 0
guard.velocity = -5
fall = 0
down.hittime = 0
KILL = 0

[State 2007, 7]
type = Projectile
trigger1 = time = 19
trigger2 = time = 43
trigger3 = time = 67
trigger4 = time = 91
projanim = 960
projhitanim = 961
projshadow = 1
;postype = p1
p2stateNo = 2010
offset = 0, 0
velocity = 10,-1.5
accel = 0,0
attr = S, HP
animtype = heavy
damage    = 30,5
getpower  = 0
givepower = 100
hitflag = HLF
guardflag = MAF
pausetime = 10
sparkno = S955
sparkxy = 90, 0
hitsound   = S4,18
guardsound = s4, 20
ground.type = high
guard.sparkno = s955
palfx.time = 15 
palfx.add = 240,50,0 
palfx.mul = 250,224,120 
palfx.sinadd = 110,55,85,10
Palfx.color = 0 
palfx.invertall = 0 
ground.slidetime = 5
ground.hittime = 10
ground.velocity = -1.5, 0
air.velocity = -1.5, 0
fall = 0
fall.recover = 0
KILL = 0

[State 2007, 7]
type = Projectile
trigger1 = time = 115
projanim = 960
projhitanim = 961
projshadow = 1
;postype = p1
offset = 0, 0
velocity = 10,-1.5
accel = 0,0
attr = S, HP
animtype = heavy
damage    = 30,5
getpower  = 0
givepower = 100
hitflag = MAF
guardflag = MAF
pausetime = 10
sparkno = S955
sparkxy = 90, 0
hitsound   = S4,18
guardsound = s4, 20
ground.type = high
guard.sparkno = s955
palfx.time = 15 
palfx.add = 240,50,0 
palfx.mul = 250,224,120 
palfx.sinadd = 110,55,85,10
Palfx.color = 0 
palfx.invertall = 0 
ground.slidetime = 5
ground.hittime = 10
ground.velocity = -3.2, -5
air.velocity = -3.2, -5
fall = 1
fall.recover = 30
KILL = 1

[State 1001, 1]
type = EnvColor 
triggerall = projhit = 1 
Trigger1 = time > 0
time = 2
Value = 250,0,0

[State 1010, 3]
type = Explod
trigger1 = projhit = 1 = 1 
trigger1 = numexplod(970) = 0
anim = 970
id = 970
postype = p2
pos = -0,-0
sprpriority = 5
bindtime = -1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1010, 4]
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 17
value = 4, 24

[State 1010, 4]
type = PlaySnd
trigger1 = animelem = 10
trigger2 = animelem = 23
value = 4, 24

[State 2000, 8]
type = ChangeState
trigger1 = Time = 120
value = 2003
ctrl = 0

[Statedef 2003]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 2003

[State 1010, 3]
type = removeExplod
trigger1 = time = 0

[State 2003, 1]
type = Ctrlset
trigger1 = animtime = 0
value = 1

[State 2003, 2]
type = Changestate
trigger1 = animtime = 0
value = 0

[Statedef 2010]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 502, 0]
type = DestroySelf
Trigger1 = Time = 0

[State 502, 1]
type = ChangeState
Trigger1 = Pos Y !=  0
Value = 503

[State 502, 2]
type = Changeanim2
Trigger1 = Time = 0
Value = 2010

[State 502, 3]
type = SelfState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------------

[Statedef 4010]
type = S
movetype = A
ctrl = 0
velset = 10,0
anim = 4010
poweradd = -1000

[State 4010 , 1]
type = SuperPause
trigger1 = AnimElem = 1
time = 50
pos = 6, -35
anim = -1

[State 6100, 3]
type = BGPalFX
trigger1 = stateno = 4010
color = 0
time = 30
ignorehitpause = 1

[State 4010, 2]
type = Explod
triggerall = stateno = 4010
trigger1 = AnimElem = 1
anim = 912
pos = 6,-35
postype = p1
sprpriority = 2
supermove = 1
bindtime = 50
persistent = 0

[State 4010, 3]
type = explod
trigger1 = time > 3
;trigger1 = vel X > 0
;trigger1 = numexplod(912) = 0
;trigger1 = AnimElem = 1
anim = 913
pos = 0,0
postype = p1
removetime = 20
bindtime = 20
persistent = 0

[State 4010, 4]
type = Playsnd
trigger1 = AnimElem = 1
value = 4,23

[State 4010, 5]
type = Playsnd
trigger1 = AnimElem = 2
value = 20,11

[State 4010, 6]
type = Playsnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
trigger3 = AnimElem = 10
trigger4 = AnimElem = 14
trigger5 = AnimElem = 18
trigger6 = AnimElem = 22
trigger7 = AnimElem = 26
trigger8 = AnimElem = 29
value =  4,21

[State 4010, 7]
type = AfterImage
triggerall = stateno = 4010
trigger1 = AnimElem = 1
time = 28
length = 10
PalContrast = 248,248,144
PalAdd      =  0
TimeGap  = 1
FrameGap = 3

[State 4010,2]
type = HitDef
trigger1 = time = 0
trigger1 = P2movetype != H
trigger2 = time = 0
trigger2 = P2statetype != A
trigger2 = P2movetype = H
attr = S, HA 
damage = 0,0
animtype = Hard 
hitflag = MAF
guardflag = MA 
pausetime = 0,0 
hitsound = S70,3 
guardsound = S6,11
sparkxy = 0,-50 
ground.type = High
ground.slidetime = 14 
ground.hittime = 16 
ground.velocity = -1    
air.animtype = Back 
air.velocity = -1,-2
persistent = 0
fall =1
fall.recover = 0
fall.yvelocity = -5
down.bounce = 2
P1stateno = 4011
P2stateno = 4013

[State 4010, 20]
type = ChangeState
triggerall = Movecontact = 1
trigger1 = MoveGuarded = 1
value = 4012
ctrl = 0

[State 4010, 22]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = MoveHit = 0
value = 4012
ctrl = 0

;----------------------------------------------------------------------------------------------------------------

[Statedef 4011]
type = S
movetype = I
ctrl = 0
velset = 20,0
anim = 4012

[State 4011, 0]
type = PosSet
trigger1 = time = 0
x = 0

[State 4011, 1]
type = PlaySnd
trigger1 = time = 0
value = 20,12

[State 4011, 1]
type = PlaySnd
trigger1 = time = 0
value = 20,6

[State 4011, 2]
type = VelSet
trigger1 = time > 5
x = 0
persistent = 1

[State 4011, 3]
type = Playsnd
trigger1 = time = 50
value = 1,21

[State 4011, 4]
type = Playsnd
trigger1 = time = 80
value = 4,12

[State 4011, 5]
type = Playsnd
trigger1 = time = 0
value = 20,10

[State 4011, 6]
type = Playsnd
trigger1 = time = 0
value = 20,12

[State 4010, 7]
type = Explod
trigger1 = time = 10
anim = 4050
pos = 0,-30
postype = p1
sprpriority = -500
bindtime = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 4013, 7]
type = Explod
trigger1 = time = 7
anim = 4016
pos = 0,-60
postype = p2
sprpriority = 100
bindtime = 30
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 4011,  8]
type = Explod
trigger1 = time = 80
anim = 941
sprpriority = 10
postype = p2
pos = 0,-60
bindtime = 1
removetime = 60
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 4011, 9]
type = PlaySnd
trigger1 = time = 80
value = 20,5

[State 4011, 10]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Missed Animation

[Statedef 4012]
type    = A
physics = A

[State 4012,1]
type = VelSet
trigger1 = time = 0
x = -3
y = -4

[State 4012,2]
type = Playsnd
trigger1 = time = 0
value = 1,23

[State 4012,3]
type = CtrlSet
trigger1 = Time = 0
value = 0

[State 4012,4]
type = ChangeAnim
trigger1 = Time = 0
value = 105

[State 4012,5]
type = CtrlSet
trigger1 = Time = 2
value = 1

[State 4012,6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 4014

;missed end
[Statedef 4014]
type    = S
physics = S

[State 4014,1]
type = CtrlSet
trigger1 = Time = 0
value = 0

[State 4014,2]
type = ChangeAnim
trigger1 = Time = 0
value = 106

[State 4014,3]
type = VelSet
trigger1 = Time = 0
y = 0

[State 4014,4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 4014,5]
type = CtrlSet
trigger1 = Time = 7
value = 1

[State 4014,6]
type = ChangeState
trigger1 = Time = 7
value = 0

;-----------------------------------------------------------------------------------------------------------------------
;hit animation
[Statedef 4013]
type    = A
movetype= H
physics = A
ctrl = 0
anim = 4013

[State -3, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 4013

[State 4013, 2]
type = PosSet
trigger1 = time = 0
x = 0
y = -2

[State 4013, 3]
type = VelSet
trigger1 = time > 0
x = 0
y = 0
persistant = 1

[State 920, 4]
type = LifeAdd
trigger1 = time = 130
value = -300

[State 4013, 20]
type = SelfState
trigger1 = animtime = 0 
value = 5030 
ctrl = 0

;-----------------------------------------------------------------------------------------------
[Statedef 7000]
type = S
movetype = A
ctrl = 0
velset = 0,0
anim = 7000
poweradd = -2000

[State 4010 , 1]
type = SuperPause
trigger1 = AnimElem = 4
time = 60
pos = 0, -120
anim = S912
sound = s4, 23
unhittable = 1

[State 4010 , 1]
type = playsnd
trigger1 = AnimElem = 4
value = 20, 8

[State 4010 , 1]
type = playsnd
trigger1 = AnimElem = 5
value = 20, 11

[State 4010 , 1]
type = playsnd
trigger1 = AnimElem = 5
value = 2, 1

[State 4010 , 1]
type = velset
trigger1 = AnimElem = 5
x = 10

[State 6100, 3]
type = BGPalFX
trigger1 = stateno = 7000
color = 0
time = 30
ignorehitpause = 1

[State 1401, 1]
type = HitDef
triggerall = p2movetype != H
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
trigger6 = AnimElem = 11
trigger7 = AnimElem = 12
trigger7 = AnimElem = 13
trigger8 = AnimElem = 14
trigger9 = AnimElem = 15
trigger10 = AnimElem = 16
trigger11 = AnimElem = 17
trigger12 = AnimElem = 18
trigger13 = AnimElem = 19
trigger14 = AnimElem = 20
trigger15 = AnimElem = 21
trigger16 = AnimElem = 22
trigger17 = AnimElem = 23
trigger18 = AnimElem = 24
trigger19 = AnimElem = 25
trigger20 = AnimElem = 26
trigger21 = AnimElem = 27
attr = S, SA
damage = 0, 10
numhits = 0
animtype = heavy
getpower = 30,15
givepower = 15,8
guardflag = MA
hitflag = MAF
priority = 7, Hit
pausetime = 0,0
;sparkno = s6010
;guard.sparkno = s6040
sparkxy = -10, -76
guardsound = s1,14
ground.type = High
ground.slidetime = 0
ground.hittime  = 60
ground.velocity = -6 
air.velocity = -2,-4
P1stateno = 7010
numhits = 0
persistent = 0

[State 4010, 20]
type = ChangeState
triggerall = Movecontact = 1
trigger1 = MoveGuarded = 1
value = 4012
ctrl = 0

[State 4010, 22]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = MoveHit = 0
value = 4012
ctrl = 0

[Statedef 7010]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0    
anim = 7010

[State 1001, 1]
type = EnvColor 
Triggerall = movehit = 1
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 9
trigger5 = AnimElem = 17
trigger6 = AnimElem = 28
trigger7 = AnimElem = 36
trigger8 = AnimElem = 47
trigger9 = AnimElem = 53
trigger10 = AnimElem = 58
trigger11 = AnimElem = 64
trigger12 = AnimElem = 70
trigger13 = AnimElem = 76
trigger14 = AnimElem = 82
trigger15 = AnimElem = 89
trigger16 = AnimElem = 103
trigger17 = AnimElem = 119
trigger18 = AnimElem = 124
trigger19 = AnimElem = 140
trigger20 = AnimElem = 108
trigger21 = AnimElem = 115
trigger22 = AnimElem = 129
trigger23 = AnimElem = 136
trigger24 = AnimElem = 151
time = 1
Value = 250,0,0

[State 6100, 3]
type = BGPalFX
trigger1 = stateno = 7010
color = 0
time = 1
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 9
attr = S, HA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pausetime = 4
sparkno = s20001
guard.sparkno = S6040
sparkxy = -10, -76
hitsound = s4,18
guardsound = s1,14
ground.type = low
ground.hittime = 30
ground.velocity = 0
air.velocity = 0,0
SNAP = 70, 0
kill = 0

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 17
attr = S, HA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pausetime = 4
sparkno = s20001
guard.sparkno = S6040
sparkxy = -10, -76
hitsound = s4,var(9)
guardsound = s4,18
ground.type = High
ground.hittime = 30
ground.velocity = 0
air.velocity = 0,0
SNAP = 70, 0
kill = 0

[State 400, 3]
type = Explod
trigger1 = AnimElem = 17
anim = 922
id = 922
postype = p2
pos = -10,-76
sprpriority = 5
bindtime = 30
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 400, 3]
type = playsnd
trigger1 = AnimElem = 17
value = 1,0

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 36
trigger2 = AnimElem = 89
attr = S, HA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pausetime = 4
sparkno = s20001
guard.sparkno = S6040
sparkxy = -10, -76
hitsound = s4,var(9)
guardsound = s1,14
ground.type = High
ground.hittime = 30
ground.velocity = 0
air.velocity = 0,0
SNAP = 70, 0
kill = 0

[State 400, 3]
type = Explod
trigger1 = AnimElem = 36
trigger2 = AnimElem = 89
anim = 911
id = 911
postype = p2
pos = -10,-76
sprpriority = 5
bindtime = 30
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 28
attr = S, HA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pausetime = 4
sparkno = s20001
guard.sparkno = S6040
sparkxy = -10, -76
hitsound = s4,var(9)
guardsound = s1,14
ground.type = High
ground.hittime = 30
ground.velocity = 0
air.velocity = 0,0
SNAP = 70, 0
kill = 0

[State 400, 3]
type = Explod
trigger1 = AnimElem = 28
anim = 910
id = 910
postype = p2
pos = -10,-40
sprpriority = 5
bindtime = 30
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 47
trigger2 = AnimElem = 53
attr = S, HA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pausetime = 4
sparkno = s20001
guard.sparkno = S6040
sparkxy = -10, -76
hitsound = s4,var(9)
guardsound = s1,14
ground.type = High
ground.hittime = 30
ground.velocity = 0
air.velocity = 0,0
SNAP = 70, 0
kill = 0


[State 400, 3]
type = Explod
trigger1 = AnimElem = 47
trigger2 = AnimElem = 53
anim = 920
id = 920
postype = p2
pos = -10,-76
sprpriority = 5
bindtime = 30
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 400, 3]
type = Explod
trigger1 = AnimElem = 47
trigger2 = AnimElem = 53
anim = 922
id = 922
postype = p2
pos = -10,-76
sprpriority = 5
bindtime = 30
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 58
trigger2 = AnimElem = 64
trigger3 = AnimElem = 70
trigger4 = AnimElem = 76
trigger5 = AnimElem = 82
attr = S, HA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pausetime = 4
sparkno = s20001
guard.sparkno = S6040
sparkxy = -10, -76
hitsound = s4,var(9)
guardsound = s1,14
ground.type = High
ground.hittime = 30
ground.velocity = 0
air.velocity = 0,0
SNAP = 70, 0
kill = 0

[State 400, 3]
type = Explod
triggerall = movehit = 1
trigger1 = AnimElem = 58
trigger2 = AnimElem = 64
trigger3 = AnimElem = 70
trigger4 = AnimElem = 76
trigger5 = AnimElem = 82
anim = 20001
id = 20001
postype = p2
pos = -10,-96
sprpriority = 5
bindtime = 30
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 400, 3]
type = Explod
trigger1 = AnimElem = 58
trigger2 = AnimElem = 64
trigger3 = AnimElem = 70
trigger4 = AnimElem = 76
trigger5 = AnimElem = 82
anim = 923
id = 923
postype = p2
pos = -10,-76
sprpriority = 5
bindtime = 30
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 400, 3]
type = Explod
triggerall = movehit = 1
trigger1 = AnimElem = 58
trigger2 = AnimElem = 64
trigger3 = AnimElem = 70
trigger4 = AnimElem = 76
trigger5 = AnimElem = 82
anim = 20001
id = 20001
postype = p2
pos = -10,-40
sprpriority = 5
bindtime = 30
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 103
trigger2 = AnimElem = 119
trigger3 = AnimElem = 124
trigger4 = AnimElem = 140
attr = S, HA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pausetime = 4
sparkno = s20001
guard.sparkno = S6040
sparkxy = -10, -96
hitsound = s4,25
guardsound = s1,14
ground.type = High
ground.hittime = 30
ground.velocity = 0
air.velocity = 0,0
SNAP = 80, 0
kill = 0

[State 400, 3]
type = Explod
trigger1 = AnimElem = 103
trigger2 = AnimElem = 119
trigger3 = AnimElem = 124
trigger4 = AnimElem = 140
anim = 923
id = 923
postype = p2
pos = -10,-96
sprpriority = 5
bindtime = 30
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 400, 3]
type = Explod
triggerall = movehit = 1
trigger1 = AnimElem = 103
trigger2 = AnimElem = 119
trigger3 = AnimElem = 124
trigger4 = AnimElem = 140
anim = 985
id = 985
postype = p2
pos = -10,-96
sprpriority = 5
bindtime = 30
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 400, 3]
type = Explod
triggerall = movehit = 1
trigger1 = AnimElem = 103
trigger2 = AnimElem = 119
trigger3 = AnimElem = 124
trigger4 = AnimElem = 140
anim = 955
id = 955
postype = p2
pos = -10,-96
sprpriority = 5
bindtime = 30
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 200, 1]
type = HitDef
triggerall = movehit = 1
trigger1 = AnimElem = 108
trigger2 = AnimElem = 115
trigger3 = AnimElem = 129
trigger4 = AnimElem = 136
attr = S, HA
damage = 20
animtype = Light
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pausetime = 4
sparkno = s20001
guard.sparkno = S6040
sparkxy = -10, -40
hitsound = s4,25
guardsound = s1,14
ground.type = low
ground.hittime = 30
ground.velocity = 0
air.velocity = 0,0
SNAP = 90, 0
kill = 0

[State 400, 3]
type = Explod
trigger1 = AnimElem = 108
trigger2 = AnimElem = 115
trigger3 = AnimElem = 129
trigger4 = AnimElem = 136
anim = 923
id = 923
postype = p2
pos = -10,-40
sprpriority = 5
bindtime = 30
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 400, 3]
type = Explod
trigger1 = movehit = 1
trigger1 = AnimElem = 108
trigger2 = AnimElem = 115
trigger3 = AnimElem = 129
trigger4 = AnimElem = 136
anim = 985
id = 985
postype = p2
pos = -10,-40
sprpriority = 5
bindtime = 30
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 400, 3]
type = Explod
trigger1 = movehit = 1
trigger1 = AnimElem = 108
trigger2 = AnimElem = 115
trigger3 = AnimElem = 129
trigger4 = AnimElem = 136
anim = 955
id = 955
postype = p2
pos = -10,-40
sprpriority = 5
bindtime = 30
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 151
attr = S, HA
damage = 20
animtype = up
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pausetime = 4
sparkno = s20001
guard.sparkno = S6040
sparkxy = -10, -76
hitsound = s20,6
guardsound = s1,14
ground.type = High
ground.hittime = 10
ground.velocity = -8,-5
air.velocity = 8,8
fall = 1
fallrecover = 0
numhits = 2

[State 400, 3]
type = Explod
trigger1 = animelem = 151
anim = 923
id = 923
postype = p2
pos = -10,-76
sprpriority = 5
bindtime = 30
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 400, 3]
type = Explod
trigger1 = movehit = 1
trigger1 = animelem = 151
trigger1 = numexplod(984) = 0
anim = 984
id = 984
postype = p2
pos = -10,-76
sprpriority = 5
bindtime = 30
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 400, 3]
type = Explod
trigger1 = movehit = 1
trigger1 = animelem = 151
trigger1 = numexplod(955) = 0
anim = 955
id = 955
postype = p2
pos = -10,-76
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1044, 1]
type = playsnd
trigger1 = animelem = 151
value = 1,6

[State 1044, 1]
type = playsnd
trigger1 = animelem = 151
value = 4,25
ctrl = 0

[State 1044, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 2003
ctrl = 0

[Statedef 9000]
type = S
movetype = A
physics = S
anim = 9000
poweradd = -2000*(Life > 250)
velset = 0
ctrl = 0

[State 3300, 4]
type = VelSet
trigger1 = time = [16,60]
y = -2.5

[State 3300, 5]
type = Statetypeset
trigger1 = time = 1
Value = A

[State 3300, 6]
type = posfreeze
trigger1 = Time = [34,60]
Value = 1

[State 6100, 3]
type = playsnd
trigger1 = animelem = 1
value = 20, 9

[State 6100, 3]
type = playsnd
trigger1 = animelem = 20
value = 4, 24

[State 2000, 2]
type = SuperPause
trigger1 = Anim = 9000
trigger1 = animelem = 13
pos = 10, -85
time = 50
unhittable = 1
anim = S912
sound = s4, 23

[State 210, 1]
type = Helper
trigger1 = AnimElem = 20
name = "tragate_esto!!!"
ID = 996
postype = p1
pos = 5,-90
facing = 1
stateno = 996
keyctrl = 0
ownpal = 1
ontop = 1
persistent = 0
size.yscale = 1
size.ground.back = 10
size.ground.front = 10
size.air.back = 20
size.air.front = 20
size.height = 100
size.proj.doscale = 1
size.head.pos = 99
size.mid.pos = 50
size.shadowoffset = 0

[State 3300, 16]
type = ChangeState
trigger1 =  animTime = 0
value = 50

[Statedef 9100]
type    = A
movetype= A
physics = S
ctrl = 0
juggle = 4
anim = 1200
velset = 0,0,0

[State 6100, 3]
type = playsnd
trigger1 = animelem = 1
value = 20, 9

[State 6100, 3]
type = playsnd
trigger1 = animelem = 12
value = 4, 24

[State 2000, 2]
type = SuperPause
trigger1 = Anim = 1200
trigger1 = animelem = 7
pos = 10, -85
time = 50
unhittable = 1
anim = S912
sound = s4, 23

[State 210, 1]
type = Helper
trigger1 = AnimElem = 12
name = "INCOMING!!!"
ID = 996
postype = p1
pos = 5,-90
facing = 1
stateno = 996
keyctrl = 0
ownpal = 1
ontop = 1
persistent = 0
size.yscale = 1
size.ground.back = 10
size.ground.front = 10
size.air.back = 20
size.air.front = 20
size.height = 100
size.proj.doscale = 1
size.head.pos = 99
size.mid.pos = 50
size.shadowoffset = 0

[State 1200, 10]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 0

[State 1200, 10]
type = Ctrlset
trigger1 = pos y = 0
value = 1