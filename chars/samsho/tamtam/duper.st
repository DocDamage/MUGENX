[Statedef 975]
type    = A
movetype= A
physics = N
ctrl = 0
juggle = 4
anim = 975
velset = 0,0,0
poweradd = 0

[State 170, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 160

[State 191, 2]
type = playerpush
trigger1 = time = [0, 120]
value = 0

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 701, 1]
type = Sprpriority
Trigger1 = 1
value = 10

[State 410, 0]
type = Velset
trigger1 = 1
x = 2.3
y = 5

[State 195, 2]
type = Changestate
trigger1 = Pos Y = 0
trigger2 = Pos Y = -1
trigger3 = Pos Y = -2
trigger4 = Pos Y = -3
trigger5 = Pos Y = -4
value = 977

[Statedef 977]
type    = A
movetype= A
physics = N
ctrl = 0
juggle = 4
anim = 977
velset = 0,0,0
poweradd = 0

[State 170, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 160

[State 191, 2]
type = playerpush
trigger1 = time = [0, 120]
value = 0

[State 400, 2]
type = playsnd
trigger1 = animelem = 1
value = 4, 25

[State 400, 2]
type = HitDef
trigger1 = time > 1
attr = C, SP
damage    = 100
priority  = 11
animtype  = up
hitflag = MAF
guardflag = MAF
pausetime = 0
sparkno = s1000000000
sparkxy = 0,0
hitsound   = s4,26
guardsound = s4,27
guard.sparkno = s20000
ground.type = Low
palfx.time = 80 
palfx.add = 240,50,0 
palfx.mul = 250,224,120 
palfx.sinadd = 110,55,85,10
Palfx.color = 0 
palfx.invertall = 0 
ground.slidetime = 5
ground.hittime = 10
ground.velocity = -3, -5
air.velocity = -3, -4
guard.velocity = -5
fall = 1
down.hittime = 0
KILL = 0
PERSISTENT = 0
SHADOW = 0

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 701, 1]
type = Sprpriority
Trigger1 = 1
value = 10

[State 410, 0]
type = Velset
trigger1 = 1
x = 0
y = -10

[State 1200, 1]
type = Explod
trigger1 = numexplod(976) = 0
anim = 976
id = 976
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = 0, 30
sprpriority = 5
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
REMOVETIME = 21
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20004) = 0
anim = 20004
id = 20004
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = -20,0
sprpriority = 3
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20003) = 0
anim = 20003
id = 20003
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = 20, 0
sprpriority = 3
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20000) = 0
trigger1 = movehit = 1
anim = 20000
id = 20000
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = 0, 30
sprpriority = 3
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20002) = 0
trigger1 = movehit = 1
anim = 20002
id = 20002
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = 0, 30
sprpriority = 11
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20002) = 1
trigger1 = movehit = 1
anim = 20004
id = 20004
VEL = 0,0
ACCEL = 0,0
postype = P2
pos = 0, -20
sprpriority = 11
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20004) = 0
trigger1 = movehit = 1
anim = 20004
id = 20004
VEL = 0,0
ACCEL = 0,0
postype = P2
pos = 0, 30
sprpriority = 11
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[state 1200, 2]
type = destroyself
trigger1 = time = 160

;--------------------------------------------medio

[Statedef 985]
type    = A
movetype= A
physics = N
ctrl = 0
juggle = 4
anim = 975
velset = 0,0,0
poweradd = 0

[State 170, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA

[State 191, 2]
type = playerpush
trigger1 = time = [0, 120]
value = 0

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 701, 1]
type = Sprpriority
Trigger1 = 1
value = 10

[State 410, 0]
type = Velset
trigger1 = 1
x = 3.5
y = 5

[State 195, 2]
type = Changestate
trigger1 = Pos Y = 0
trigger2 = Pos Y = -1
trigger3 = Pos Y = -2
trigger4 = Pos Y = -3
trigger5 = Pos Y = -4
value = 987

[Statedef 987]
type    = A
movetype= A
physics = N
ctrl = 0
juggle = 4
anim = 977
velset = 0,0,0
poweradd = 0

[State 170, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 160

[State 191, 2]
type = playerpush
trigger1 = time = [0, 120]
value = 0

[State 400, 2]
type = playsnd
trigger1 = animelem = 1
value = 4, 25

[State 400, 2]
type = HitDef
trigger1 = time > 1
attr = C, SP
damage    = 225
priority  = 11
animtype  = back
hitflag = MAF
guardflag = MAF
pausetime = 0
sparkno = s20001
sparkxy = 0,0
hitsound   = s4,26
guardsound = s4,27
guard.sparkno = s20000
ground.type = Low
palfx.time = 80 
palfx.add = 240,50,0 
palfx.mul = 250,224,120 
palfx.sinadd = 110,55,85,10
Palfx.color = 0 
palfx.invertall = 0 
ground.slidetime = 5
ground.hittime = 10
ground.velocity = -3, -5
air.velocity = -3, -4
guard.velocity = -5
fall = 1
down.hittime = 0
PERSISTENT = 0
SHADOW = 0

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 701, 1]
type = Sprpriority
Trigger1 = 1
value = 5

[State 410, 0]
type = Velset
trigger1 = 1
x = 0
y = -10

[State 1200, 1]
type = Explod
trigger1 = numexplod(976) = 0
anim = 976
id = 976
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = 0, 30
sprpriority = 5
bindtime = 1
facing = -1
ontop = 1
REMOVETIME = 21
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20004) = 0
anim = 20004
id = 20004
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = -20,0
sprpriority = 3
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20003) = 0
anim = 20003
id = 20003
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = 20, 0
sprpriority = 3
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20005) = 0
anim = 20005
id = 20005
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = -20,0
sprpriority = 3
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20006) = 0
anim = 20006
id = 20006
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = 20, 0
sprpriority = 3
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20000) = 0
trigger1 = movehit = 1
anim = 20000
id = 20000
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = 0, 0
sprpriority = 3
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20002) = 0
trigger1 = movehit = 1
anim = 20002
id = 20002
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = 0, 30
sprpriority = 11
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20002) = 1
trigger1 = movehit = 1
anim = 20004
id = 20004
VEL = 0,0
ACCEL = 0,0
postype = P2
pos = 0, -20
sprpriority = 11
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20004) = 0
trigger1 = movehit = 1
anim = 20004
id = 20004
VEL = 0,0
ACCEL = 0,0
postype = P2
pos = 0, -30
sprpriority = 11
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[state 1200, 2]
type = destroyself
trigger1 = time = 160

;-----------------------------------------------fuerte

[Statedef 995]
type    = A
movetype= A
physics = N
ctrl = 0
juggle = 4
anim = 975
velset = 0,0,0
poweradd = 0

[State 170, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA

[State 191, 2]
type = playerpush
trigger1 = time = [0, 120]
value = 0

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 701, 1]
type = Sprpriority
Trigger1 = 1
value = 5

[State 410, 0]
type = Velset
trigger1 = 1
x = 12
y = 10

[State 195, 2]
type = Changestate
trigger1 = Pos Y = 0
trigger2 = Pos Y = -1
trigger3 = Pos Y = -2
trigger4 = Pos Y = -3
trigger5 = Pos Y = -4
trigger6 = Pos Y = -5
trigger7 = Pos Y = -6
trigger8 = Pos Y = -7
trigger9 = Pos Y = -8
trigger10 = Pos Y = -9
trigger11 = Pos Y = -10
trigger12 = Pos Y = -11
trigger13 = Pos Y = -12
value = 988

[Statedef 988]
type    = A
movetype= A
physics = N
ctrl = 0
juggle = 4
anim = 978
velset = 0,0,0
poweradd = 0

[State 170, 1]
type = posset
trigger1 = Time >= 0
y = 238
persistent = 0

[State 170, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 160

[State 191, 2]
type = playerpush
trigger1 = time = [0, 220]
trigger2 = 1
value = 0

[State 400, 2]
type = playsnd
trigger1 = animelem = 1
value = 4, 25

[State 400, 2]
type = HitDef
trigger1 = time > 1
attr = C, SP
damage    = 30
priority  = 11
animtype  = up
hitflag = MAF
guardflag = MAF
pausetime = 0
sparkno = s20001
sparkxy = 10,-76
hitsound   = s4,26
guardsound = s4,27
guard.sparkno = s955
ground.type = Low
palfx.time = 80 
palfx.add = 240,50,0 
palfx.mul = 250,224,120 
palfx.sinadd = 110,55,85,10
Palfx.color = 0 
palfx.invertall = 0 
ground.slidetime = 2
ground.hittime = 60
ground.velocity = -6, -6
air.velocity = -6, -6
guard.velocity = -5
fall = 1
down.hittime = 0
PERSISTENT = 8

[State 1200, 1]
type = Explod
trigger1 = movehit = 1
trigger1 = P2movetype = H
trigger1 = numexplod(980) = 1
anim = 970
id = 970
VEL = 0, -12
ACCEL = 0,0
postype = P2
pos = 0 , 0
sprpriority = 3
bindtime = 51
removetime = 51
facing = -1
ontop = 0
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 400, 2]
type = HitDef
triggerall = P2StateType != S
trigger1 = time > 1
attr = C, SP
damage    = 30
priority  = 11
animtype  = up
hitflag = MAF
guardflag = MAF
pausetime = 0
sparkno = s20001
sparkxy = 10,-76
hitsound   = s4,26
guardsound = s4,27
guard.sparkno = s20000
ground.type = Low
palfx.time = 80 
palfx.add = 240,50,0 
palfx.mul = 250,224,120 
palfx.sinadd = 110,55,85,10
Palfx.color = 0 
palfx.invertall = 0 
ground.slidetime = 2
ground.hittime = 60
ground.velocity = -3, -3
air.velocity = -3, -3
guard.velocity = -5
fall = 1
down.hittime = 0
PERSISTENT = 0  

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 701, 1]
type = Sprpriority
Trigger1 = 1
value = 5

[State 410, 0]
type = Velset
trigger1 = 1
x = 0
y = -12

[State 1200, 1]
type = Explod
trigger1 = numexplod(980) = 0
anim = 980
id = 980
VEL = 0, -12
ACCEL = 0,0
postype = P1
pos = 0 , 0
sprpriority = 5
bindtime = 1
removetime = 180
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(979) = 0
anim = 979
id = 979
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = 0, -208
sprpriority = 5
bindtime = 1
removetime = 21
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20004) = 0
anim = 20004
id = 20004
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = -50,-248
sprpriority = 3
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20003) = 0
anim = 20003
id = 20003
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = 50, -248
sprpriority = 3
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20004) = 1
anim = 20004
id = 20004
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = -50,-228
sprpriority = 3
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20003) = 1
anim = 20003
id = 20003
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = 50, -228
sprpriority = 3
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

;-----------------------------------------rojo

[State 1200, 1]
type = Explod
trigger1 = numexplod(20005) = 0
anim = 20005
id = 20005
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = -20,-258
sprpriority = 3
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20006) = 0
anim = 20006
id = 20006
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = 20, -258
sprpriority = 3
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20005) = 1
anim = 20005
id = 20005
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = -20, -228
sprpriority = 3
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20006) = 1
anim = 20006
id = 20006
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = 20, -228
sprpriority = 3
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

;-----------------------movehit

[State 1200, 1]
type = Explod
;trigger1 = numexplod(20000) = 0
trigger1 = movehit = 1
anim = 20000
id = 20000
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = 0, -168
sprpriority = 3
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = movehit = 1
anim = 20002
id = 20002
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = 0, -180
sprpriority = 3
bindtime = 1
facing = -1
;ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
;trigger1 = numexplod(20004) = 0
trigger1 = movehit = 1
anim = 20004
id = 20004
VEL = 0,0
ACCEL = 0,0
postype = P2
pos = 0, -20
sprpriority = 11
bindtime = 10
facing = -1
ontop = 0
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = movehit = 1
anim = 20004
id = 20004
VEL = 0,0
ACCEL = 0,0
postype = P2
pos = 0, -30
sprpriority = 11
bindtime = 1
facing = -1
ontop = 0
ownpal = 1
ignorehitpause = 1
persistent = 0

[state 1200, 2]
type = destroyself
trigger1 = time = 160

;especial de flama

;-------------helper-------------------------------------
[Statedef 996]
type    = A
movetype= A
physics = N
ctrl = 0
juggle = 4
anim = 986
velset = 0,0
poweradd = 0

[State 170, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA

[State 191, 2]
type = playerpush
trigger1 = time = [0, 120]
value = 0

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 701, 1]
type = Sprpriority
Trigger1 = 1
value = 5

[State 410, 0]
type = Velset
trigger1 = anim = 986
x = 10
y = 8

[State 195, 2]
type = Changestate
trigger1 = Pos Y = 0
trigger2 = Pos Y = -1
trigger3 = Pos Y = -2
trigger4 = Pos Y = -3
trigger5 = Pos Y = -4
trigger6 = Pos Y = -5
trigger7 = Pos Y = -6
trigger8 = Pos Y = -7
trigger9 = Pos Y = -8
trigger10 = Pos Y = -9
trigger11 = Pos Y = -10
trigger12 = Pos Y = -11
trigger13 = Pos Y = -12
value = 997
persistent = 0

[Statedef 997]
type    = A
movetype= A
physics = N
ctrl = 0
juggle = 4
anim = 990
velset = 0,0,0
poweradd = 0

[State 6100, 3]
type = BGPalFX
trigger1 = Time = 0
color = 0
time = 60
ignorehitpause = 1

[State 6100, 3]
type = BGPalFX
trigger1 = Time = 58
trigger1 = MOVEhit = 1 
color = 0
time = 60
ignorehitpause = 1

[State 1001, 1]
type = EnvColor 
trigger1 = MOVEhit = 1 
trigger1 = time < 65 
time = 1
Value = 250,0,0
PERSISTENT = 3

[State 1001, 1]
type = EnvColor 
trigger1 = MOVEhit = 1 
trigger1 = time < 65 
time = 1
Value = 0,0,0
PERSISTENT = 4

[State 6100, 3]
type = playsnd
trigger1 = movehit = 1
trigger1 = time = 66
value = 20, 6

[State 6100, 3]
type = playsnd
trigger1 = animelem = 1
value = 20, 14

;[State 170, 1]
;type = posset
;trigger1 = Time >= 0
;y = 238
;persistent = 0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 160

[State 191, 2]
type = playerpush
trigger1 = 1
value = 0

[State 400, 2]
type = playsnd
trigger1 = animelem = 1
value = 4, 25

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 701, 1]
type = Sprpriority
Trigger1 = 1
value = 5

[State 410, 0]
type = Velset
trigger1 = time = 19
x = 0
y = -10

[State 1200, 1]
type = Explod
trigger1 = animelem = 1
anim = 987
id = 987
VEL = 0, -10
ACCEL = 0,100
postype = P1
pos = 0 , 300
sprpriority = 5
bindtime = 1
removetime = 180
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(987) = 1
anim = 987
id = 987
VEL = 0, -8
ACCEL = 0,0
postype = P1
pos = 0 , 220
sprpriority = 0
bindtime = 1
removetime = 180
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = animelem = 1
anim = 988
id = 988
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = 0, 0
sprpriority = 5
bindtime = 1
removetime = 32
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 400, 2]
type = HitDef
trigger1 = time > 1
attr = C, SP
damage    = 40
priority  = 11
animtype  = BACK
hitflag = MAF
guardflag = MAF
pausetime = 0
sparkno = s20001
sparkxy = 10,-76
hitsound   = s4,26
guardsound = s4,27
guard.sparkno = s955
ground.type = high
palfx.time = 80 
palfx.add = 240,50,0 
palfx.mul = 250,224,120 
palfx.sinadd = 110,55,85,10
Palfx.color = 0 
palfx.invertall = 1 
ground.slidetime = 0
ground.hittime = 60
ground.velocity = -0, -0
air.velocity = -0, -0
guard.velocity = -5
fall = 1
fall.recover = 0
down.hittime = 60
PERSISTENT = 4
snap = 20, -2

[State 1200, 1]
type = Explod
trigger1 = numexplod(20005) = 0
anim = 20005
id = 20005
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = -50,-0
sprpriority = 3
bindtime = 1
facing = 1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20006) = 0
anim = 20006
id = 20006
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = 50, -0
sprpriority = 3
bindtime = 1
facing = 1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20005) = 1
anim = 20005
id = 20005
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = -50, -0
sprpriority = 3
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20006) = 1
anim = 20006
id = 20006
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = 50, -0
sprpriority = 3
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20004) = 0
anim = 20004
id = 20004
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = -80,-30
sprpriority = 3
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20003) = 0
anim = 20003
id = 20003
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = 80, -30
sprpriority = 3
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20004) = 1
anim = 20004
id = 20004
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = -80,-0
sprpriority = 3
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = numexplod(20003) = 1
anim = 20003
id = 20003
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = 80, -0
sprpriority = 3
bindtime = 1
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

;MOVEHIT------------------------------------------------------

[State 1200, 1]
type = Explod
triggerALL = movehit = 1
trigger1 = tIME = 25
trigger2 = tIME = 30
trigger3 = tIME = 35
trigger4 = tIME = 40
trigger5 = tIME = 45
trigger6 = tIME = 50
trigger7 = tIME = 55
trigger8 = tIME = 60
trigger9 = tIME = 65
trigger10 = tIME = 70
trigger11 = tIME = 75
trigger12 = tIME = 80
trigger13 = tIME = 85
trigger14 = tIME = 90
trigger15 = tIME = 95
trigger15 = tIME = 20
trigger15 = tIME = 15
trigger15 = tIME = 5
trigger15 = tIME = 10
anim = 20002
id = 20002
VEL = 0,0
ACCEL = 0,0
postype = P1
pos = 0, 40
sprpriority = 1
bindtime = 1
REMOVEtime = 80
Facing = -1
ontop = 0
ownpal = 1
ignorehitpause = 1

[State 1200, 1]
type = Explod
;trigger1 = numexplod(20004) = 0
trigger1 = movehit = 1
anim = 20004
id = 20004
VEL = 0,0
ACCEL = 0,0
postype = P2
pos = 0, -20
sprpriority = 5
bindtime = 10
facing = -1
ontop = 0
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Explod
trigger1 = movehit = 1
anim = 20004
id = 20004
VEL = 0,0
ACCEL = 0,0
postype = P2
pos = 0, -30
sprpriority = 5
bindtime = 1
facing = -1
ontop = 0
ownpal = 1
ignorehitpause = 1
persistent = 0

[state 1200, 2]
type = destroyself
trigger1 = time = 160
