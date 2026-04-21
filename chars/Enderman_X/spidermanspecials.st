;---------------------------------------------------------------------------
;---{Special Attacks}---
;---------------------------
;Standinig Web-Shot (light)
[statedef 1000]
type = S
movetype = I
physics = S
anim = 1000
poweradd = 25
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 6,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = 7,0

[State 0, ]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "web-ball"
ID = 1005
pos = 40,-40
postype = p1
facing = 1
stateno = 1005
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1005]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1005
velset = 5,0
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1005
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1005
value = SCA,NP,SP,HP
time = 10

[State 0, ]
type = HitOverride
trigger1 = stateno = 1005
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1005
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1005
x = 4
y = 0

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

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
trigger1 = stateno = 1005
attr = S,SA
hitflag = MAFP
guardflag = MA 
animtype = light
ground.type = low
air.type = low
priority = 5,Hit
damage = 40,3
pausetime = 0,8
guard.pausetime = 4,3
sparkno = 0
guard.sparkno = 40
sparkxy = 15,0
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
p2stateno = 1009

[State 0, ]
type = Helper
trigger1 = movehit = 1
helpertype = normal
name = "web-ball"
ID = 1005
pos = 0,0
postype = p2
facing = 1
stateno = 1007
size.xscale = ifelse (enemy, const(size.ground.back)+enemy, const(size.ground.front)+enemy, const(size.air.back)+enemy, const(size.air.front) <= 99,1,1.2)
size.yscale = ifelse (enemy, const(size.ground.back)+enemy, const(size.ground.front)+enemy, const(size.air.back)+enemy, const(size.air.front) <= 99,1,1.2)

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -15

[State 0, ]
type = Changestate
trigger1 = movehit = 1
trigger2 = movecontact = 1
value = 1006

[Statedef 1006]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1006
velset = 0,0
sprpriority = 5

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 12

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 1007]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1007
velset = 0,0,0
sprpriority = 5

[State 0, ]
type = Gravity
trigger1 = target,statetype = A

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 0

[State 0, ]
type = StateTypeSet
trigger1 = time = 0
trigger1 = pos y >= 0
statetype = S
physics = S

[State 0, ]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 0, ]
type = BindToTarget
trigger1 = time >= 0
time = 1
pos = 0,0,foot

[State 0, ]
type = ChangeState
trigger1 = statetype = S
trigger1 = time = 20
trigger2 = p2stateno != 1009
trigger3 = statetype = A
trigger3 = pos y >= -5
value = 1008

[Statedef 1008]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1008
sprpriority = 5

[State 0, ]
type = PosSet
trigger1 = stateno = 1008
y = 0

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

[Statedef 1009]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0,0
anim = 5000
sprpriority = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 1009

[State 0, ]
type = StateTypeSet
trigger1 = time = 0
trigger1 = pos y >= 0
statetype = S
physics = S

[State 0, ]
type = PosSet
trigger1 = time >= 0
trigger1 = statetype = S
y = 0

[State 0, ]
type = selfstate
trigger1 = Time >= 20
trigger1 = Life <= 0
trigger2 = HitCount = 1
value = 5000
ctrl = 0

[State 0, ]
type = selfstate
triggerall = Life > 0
trigger1 = Time >= 20
trigger1 = Pos Y = 0
trigger2 = statetype = A
trigger2 = pos y >= -5
anim = 5200
value = 5200
ctrl = 1

[State 0, ]
type = selfstate
trigger1 = Time >= 20
trigger1 = Life > 0
trigger1 = Pos Y <= 0
value = 51
ctrl = 1

;Standinig Web-Shot (medium)
[statedef 1010]
type = S
movetype = I
physics = S
anim = 1000
poweradd = 50
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 6,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = 7,0

[State 0, ]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "web-ball"
ID = 1005
pos = 40,-40
postype = p1
facing = 1
stateno = 1015
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1015]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1005
velset = 7,0
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1015
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1015
value = SCA,NP,SP,HP
time = 1

[State 0, ]
type = HitOverride
trigger1 = stateno = 1015
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1015
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1015
x = 5.5
y = 0

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

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
trigger1 = stateno = 1015
attr = S,SP
hitflag = MAF
guardflag = MA 
animtype = light
ground.type = low
air.type = low
priority = 5,Hit
damage = 50,5
pausetime = 0,8
guard.pausetime = 4,3
sparkno = 0
guard.sparkno = 40
sparkxy = 15,0
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
p2stateno = 1019

[State 0, ]
type = Helper
trigger1 = movehit = 1
helpertype = normal
name = "web-ball"
ID = 1005
pos = 0,0
postype = p2
facing = 1
stateno = 1017
size.xscale = ifelse (enemy, const(size.ground.back)+enemy, const(size.ground.front)+enemy, const(size.air.back)+enemy, const(size.air.front) <= 99,1,1.2)
size.yscale = ifelse (enemy, const(size.ground.back)+enemy, const(size.ground.front)+enemy, const(size.air.back)+enemy, const(size.air.front) <= 99,1,1.2)

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -15

[State 0, ]
type = Changestate
trigger1 = movehit = 1
trigger2 = movecontact = 1
value = 1006

[Statedef 1017]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1007
velset = 0,0
sprpriority = 5

[State 0, ]
type = Gravity
trigger1 = target,statetype = A
trigger1 = pos y <= 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 0

[State 0, ]
type = StateTypeSet
trigger1 = time = 0
trigger1 = pos y >= 0
statetype = S
physics = S

[State 0, ]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 0, ]
type = BindToTarget
trigger1 = time >= 0
time = 1
pos = 0,0,foot

[State 0, ]
type = ChangeState
trigger1 = time = 40
trigger2 = p2stateno != 1019
trigger3 = statetype = A
trigger3 = pos y >= -5
value = 1008

[Statedef 1019]
type = A
movetype = H
physics = A
ctrl = 0
velset = 0,0
anim = 5000
sprpriority = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 1009

[State 0, ]
type = StateTypeSet
trigger1 = time = 0
trigger1 = pos y >= 0
statetype = S
physics = S

[State 0, ]
type = PosSet
trigger1 = time >= 0
trigger1 = statetype = S
y = 0

[State 0, ]
type = selfstate
trigger1 = Time >= 40
trigger1 = Life <= 0
trigger2 = HitCount = 1
value = 5000
ctrl = 0

[State 0, ]
type = selfstate
triggerall = Life > 0
trigger1 = Time >= 40
trigger1 = Pos Y = 0
trigger2 = statetype = A
trigger2 = pos y >= -5
anim = 5200
value = 5200
ctrl = 1

[State 0, ]
type = selfstate
trigger1 = Time >= 40
trigger1 = Life > 0
trigger1 = Pos Y < 0
value = 51
ctrl = 1

;Standinig Web-Shot (fierce)
[statedef 1020]
type = S
movetype = I
physics = S
anim = 1000
poweradd = 75
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 6,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = 7,0

[State 0, ]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "web-ball"
ID = 1005
pos = 40,-40
postype = p1
facing = 1
stateno = 1025
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1025]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1005
velset = 8,0
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1025
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1025
value = SCA,NP,SP,HP
time = 1

[State 0, ]
type = HitOverride
trigger1 = stateno = 1025
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1025
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1025
x = 7.5
y = 0

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

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
trigger1 = stateno = 1025
attr = S,SP
hitflag = MAF
guardflag = MA 
animtype = light
ground.type = low
air.type = low
priority = 5,Hit
damage = 75,5
pausetime = 0,8
guard.pausetime = 4,3
sparkno = 0
guard.sparkno = 40
sparkxy = 15,0
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
p2stateno = 1029

[State 0, ]
type = Helper
trigger1 = movehit = 1
helpertype = normal
name = "web-ball"
ID = 1005
pos = 0,0
postype = p2
facing = 1
stateno = 1027
size.xscale = ifelse (enemy, const(size.ground.back)+enemy, const(size.ground.front)+enemy, const(size.air.back)+enemy, const(size.air.front) <= 99,1,1.2)
size.yscale = ifelse (enemy, const(size.ground.back)+enemy, const(size.ground.front)+enemy, const(size.air.back)+enemy, const(size.air.front) <= 99,1,1.2)

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -15

[State 0, ]
type = Changestate
trigger1 = movehit = 1
trigger2 = movecontact = 1
value = 1006

[Statedef 1027]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1007
velset = 0,0
sprpriority = 5

[State 0, ]
type = Gravity
trigger1 = target,statetype = A
trigger1 = pos y <= 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 0

[State 0, ]
type = StateTypeSet
trigger1 = time = 0
trigger1 = pos y >= 0
statetype = S
physics = S

[State 0, ]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 0, ]
type = BindToTarget
trigger1 = time >= 0
time = 1
pos = 0,0,foot

[State 0, ]
type = ChangeState
trigger1 = time = 60
trigger2 = p2stateno != 1029
trigger3 = statetype = A
trigger3 = pos y >= -5
value = 1008

[Statedef 1029]
type = A
movetype = H
physics = A
ctrl = 0
velset = 0,0
anim = 5000
sprpriority = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 1009

[State 0, ]
type = StateTypeSet
trigger1 = time = 0
trigger1 = pos y >= 0
statetype = S
physics = S

[State 0, ]
type = PosSet
trigger1 = time >= 0
trigger1 = statetype = S
y = 0

[State 0, ]
type = selfstate
trigger1 = Time >= 60
trigger1 = Life <= 0
trigger2 = HitCount = 1
value = 5000
ctrl = 0

[State 0, ]
type = selfstate
triggerall = Life > 0
trigger1 = Time >= 60
trigger1 = Pos Y = 0
trigger2 = statetype = A
trigger2 = pos y >= -5
anim = 5200
value = 5200
ctrl = 1

[State 0, ]
type = selfstate
trigger1 = Time >= 60
trigger1 = Life > 0
trigger1 = Pos Y < 0
value = 51
ctrl = 1

;-----------------------------------
;Jumping Web-Shot (light)
[statedef 1100]
type = A
movetype = I
physics = A
anim = 1100
poweradd = 25
velset = -1,-3
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 6,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = 7,0

[State 0, ]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "web-ball"
ID = 1005
pos = 80,-40
postype = p1
facing = 1
stateno = 1105
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

[Statedef 1105]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1105
velset = 4,4
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1105
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1105
value = SCA,NP,SP,HP
time = 1

[State 0, ]
type = HitOverride
trigger1 = stateno = 1105
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1105
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1105
x = 2
y = 2

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

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
trigger1 = stateno = 1105
attr = S,SP
hitflag = MAF
guardflag = MA 
animtype = light
ground.type = low
air.type = low
priority = 5,Hit
damage = 40,3
pausetime = 0,8
guard.pausetime = 4,3
sparkno = 0
guard.sparkno = 40
sparkxy = 15,-5
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
p2stateno = 1009

[State 0, ]
type = Helper
trigger1 = movehit = 1
helpertype = normal
name = "web-ball"
ID = 1005
pos = 0,0
postype = p2
facing = 1
stateno = 1007
size.xscale = ifelse (enemy, const(size.ground.back)+enemy, const(size.ground.front)+enemy, const(size.air.back)+enemy, const(size.air.front) <= 99,1,1.2)
size.yscale = ifelse (enemy, const(size.ground.back)+enemy, const(size.ground.front)+enemy, const(size.air.back)+enemy, const(size.air.front) <= 99,1,1.2)

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -15

[State 0, ]
type = Changestate
trigger1 = pos y >= 0
value = 1106

[State 0, ]
type = Changestate
trigger1 = movehit = 1
trigger2 = movecontact = 1
value = 1006

[Statedef 1106]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1106
velset = 0,0
sprpriority = 5

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S6,1

[State 0, ]
type = PosSet
trigger1 = time >= 0
y = 0

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 12

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

;Jumping Web-Shot (medium)
[statedef 1110]
type = A
movetype = I
physics = A
anim = 1100
poweradd = 50
velset = -1,-4
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 6,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = 7,0

[State 0, ]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "web-ball"
ID = 1005
pos = 80,-40
postype = p1
facing = 1
stateno = 1115
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

[Statedef 1115]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1105
velset = 5,5
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1115
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1115
value = SCA,NP,SP,HP
time = 1

[State 0, ]
type = HitOverride
trigger1 = stateno = 1115
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1115
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1115
x = 3.5
y = 3.5

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

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
trigger1 = stateno = 1115
attr = S,SP
hitflag = MAF
guardflag = MA 
animtype = light
ground.type = low
air.type = low
priority = 5,Hit
damage = 50,3
pausetime = 0,8
guard.pausetime = 4,3
sparkno = 0
guard.sparkno = 40
sparkxy = 15,-5
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
p2stateno = 1019

[State 0, ]
type = Helper
trigger1 = movehit = 1
helpertype = normal
name = "web-ball"
ID = 1005
pos = 0,0
postype = p2
facing = 1
stateno = 1017
size.xscale = ifelse (enemy, const(size.ground.back)+enemy, const(size.ground.front)+enemy, const(size.air.back)+enemy, const(size.air.front) <= 99,1,1.2)
size.yscale = ifelse (enemy, const(size.ground.back)+enemy, const(size.ground.front)+enemy, const(size.air.back)+enemy, const(size.air.front) <= 99,1,1.2)

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -15

[State 0, ]
type = Changestate
trigger1 = pos y >= 0
value = 1106

[State 0, ]
type = Changestate
trigger1 = movehit = 1
trigger2 = movecontact = 1
value = 1006

;Jumping Web-Shot (medium)
[statedef 1120]
type = A
movetype = I
physics = A
anim = 1100
poweradd = 75
velset = -1,-5
ctrl = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 6,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = 7,0

[State 0, ]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "web-ball"
ID = 1005
pos = 80,-40
postype = p1
facing = 1
stateno = 1125
ownpal = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50

[Statedef 1125]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1105
velset = 7,7
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1125
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1125
value = SCA,NP,SP,HP
time = 1

[State 0, ]
type = HitOverride
trigger1 = stateno = 1125
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1125
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1125
x = 5.5
y = 5.5

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

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
trigger1 = stateno = 1125
attr = S,SP
hitflag = MAF
guardflag = MA 
animtype = light
ground.type = low
air.type = low
priority = 5,Hit
damage = 50,3
pausetime = 0,8
guard.pausetime = 4,3
sparkno = 0
guard.sparkno = 40
sparkxy = 15,-5
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
p2stateno = 1029

[State 0, ]
type = Helper
trigger1 = movehit = 1
helpertype = normal
name = "web-ball"
ID = 1005
pos = 0,0
postype = p2
facing = 1
stateno = 1027
size.xscale = ifelse (enemy, const(size.ground.back)+enemy, const(size.ground.front)+enemy, const(size.air.back)+enemy, const(size.air.front) <= 99,1,1.2)
size.yscale = ifelse (enemy, const(size.ground.back)+enemy, const(size.ground.front)+enemy, const(size.air.back)+enemy, const(size.air.front) <= 99,1,1.2)

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -15

[State 0, ]
type = Changestate
trigger1 = pos y >= 0
value = 1106

[State 0, ]
type = Changestate
trigger1 = movehit = 1
trigger2 = movecontact = 1
value = 1006

;-----------------------------------
;Wall Cling (back)
[statedef 1200]
type = A
movetype = I
physics = A
anim = 1200
velset = 0,0
ctrl = 0

[State 0, ]
type = PosFreeze
triggerall = Stateno = 1200
trigger1 = BackEdgeBodyDist < 2
trigger1 = palno != 11

[State 0, ]
type = VelSet
trigger1 = palno = 11
y = .2

[State 0, ]
type = PlayerPush
trigger1 = Stateno = 1200
value = 0

[State 0, ]
type = VelSet
trigger1 = BackEdgeBodyDist > 1
x = -5

[State 0, ]
type = ScreenBound
trigger1 = Stateno = 1200
trigger1 = Pos Y > -180
movecamera = 1,0

[State 0, ]
type = ChangeState
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
value = 1205

[State 0, ]
type = ChangeState
triggerall = palno <= 6
trigger1 = command != "holdfwd"
trigger2 = command = "holdback"
trigger2 = command != "holdfwd"
trigger3 = time >= 10
value = 1201

[State 0, ]
type = ChangeState
triggerall = palno >= 7
trigger1 = command != "holdfwd"
trigger2 = command = "holdback"
trigger2 = command != "holdfwd"
trigger3 = animtime = 0
value = 1201

[Statedef 1201] 
type    = A
movetype= I
physics = A
anim = 1201
velset = 3,-8
ctrl = 1

[State 0, ]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 0, ]
type = ChangeState
trigger1 = Pos Y >= 0
value = 52

;Web-Shot (wall)
[Statedef 1205]
type    = A
movetype= A
physics = N
poweradd= 25
anim = 1205
velset = 0,0,0
ctrl = 0

[State 0,0]
type = PosFreeze
triggerall = Stateno = 1205
trigger1 = BackEdgeBodyDist < 2
trigger1 = palno != 11

[State 0, ]
type = VelSet
trigger1 = palno = 11
y = .2

[State 0, ]
type = PlayerPush
trigger1 = Stateno = 1205
value = 0

[State 0, ]
type = ScreenBound
trigger1 = Stateno = 1205
trigger1 = Pos Y > -180
movecamera = 1,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S7,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S6,1

[State 0, ]
type = Helper
trigger1 = animelem = 3
helpertype = normal
name = "web-ball"
ID = 1005
pos = 30,-10
postype = p1
facing = 1
stateno = 1206
ownpal = 1

[State 0, ]
type = VelSet
trigger1 = BackEdgeBodyDist > 1
x = -5

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1209

[Statedef 1206]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1206
velset = 4,4
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1206
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1206
value = SCA,NP,SP,HP
time = 1

[State 0, ]
type = HitOverride
trigger1 = stateno = 1206
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1206
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1206
x = 2
y = 2

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

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
trigger1 = stateno = 1206
attr = S,SP
hitflag = MAF
guardflag = MA 
animtype = light
ground.type = low
air.type = low
priority = 5,Hit
damage = 40,3
pausetime = 0,8
guard.pausetime = 4,3
sparkno = 0
guard.sparkno = 40
sparkxy = 15,-5
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1
p1stateno = 1007
p2stateno = 1009

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -15

[State 0, ]
type = Changestate
trigger1 = pos y >= 0
value = 1106

[State 0, ]
type = Changestate
trigger1 = movehit = 1
trigger2 = movecontact = 1
value = 1006

[Statedef 1209]
type    = A
movetype= I
physics = A
anim = 1209
velset = 0,0,0
ctrl = 0

[State 0,]
type = PosFreeze
triggerall = Stateno = 1209
trigger1 = BackEdgeBodyDist < 2
trigger1 = palno != 11

[State 0, ]
type = VelSet
trigger1 = palno = 11
y = .2

[State 0, ]
type = PlayerPush
trigger1 = Stateno = 1209
value = 0

[State 0, ]
type = VelSet
trigger1 = BackEdgeBodyDist > 1
x = -5

[State 0, ]
type = ScreenBound
trigger1 = Stateno = 1209
trigger1 = Pos Y > -180
movecamera = 1,0

[State 0, ]
type = ChangeState
triggerall = palno <= 6
trigger1 = command != "holdfwd"
trigger2 = command = "holdback"
trigger2 = command != "holdfwd"
trigger3 = time >= 10
value = 1201

[State 0, ]
type = ChangeState
triggerall = palno >= 7
trigger1 = command != "holdfwd"
trigger2 = command = "holdback"
trigger2 = command != "holdfwd"
trigger3 = animtime = 0
value = 1201

; Wall Cling (front)
[Statedef 1210]
type = A
movetype = I
physics = N
anim = 1200
velset = 0,0
ctrl = 0

[State 0, ]
type = Turn
trigger1 = time = 0

[State 0, ]
type = PosFreeze
triggerall = Stateno = 1210
trigger1 = BackEdgeBodyDist < 2
trigger1 = palno != 11

[State 0, ]
type = VelSet
trigger1 = palno = 11
y = .2

[State 0, ]
type = PlayerPush
trigger1 = Stateno = 1210
value = 0

[State 0, ]
type = VelSet
trigger1 = BackEdgeBodyDist > 1
x = -5

[State 0, ]
type = ScreenBound
trigger1 = Stateno = 1210
trigger1 = Pos Y > -180
movecamera = 1,0

[State 0, ]
type = ChangeState
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
value = 1205

[State 0, ]
type = ChangeState
triggerall = time >= 1
triggerall = palno <= 6
trigger1 = command != "holdfwd"
trigger2 = command = "holdback"
trigger2 = command != "holdfwd"
trigger3 = time >= 10
value = 1201

[State 0, ]
type = ChangeState
triggerall = time >= 1
triggerall = palno >= 7
trigger1 = command != "holdfwd"
trigger2 = command = "holdback"
trigger2 = command != "holdfwd"
trigger3 = animtime = 0
value = 1201

;-----------------------------------
;Web-Swing (light)
[statedef 1300]
type = A
movetype = A
physics = A
anim = 1300
poweradd = 25
velset = 1,-1
ctrl = 0

[State 0, ]
type = Width
trigger1 = time = [12,48]
edge = 0,10
player = 60,10

[State 0, ]
type = PosFreeze
trigger1 = time <= 54
value = 1

[State 0, ]
type = PlayerPush
trigger1 = time <= 54
value = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
value = S7,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 8
value = S0,5

[State 0, ]
type = PosAdd
trigger1 = time = 0
y = -5

[State 0, ]
type = PosAdd
trigger1 = animelem = 8
x = 3

[State 0, ]
type = PosAdd
trigger1 = animelem = 9
trigger2 = animelem = 10
trigger3 = animelem = 11
x = 5

[State 0, ]
type = PosAdd
trigger1 = animelem = 12
trigger2 = animelem = 20
trigger3 = animelem = 21
trigger4 = animelem = 24
x = 10

[State 0, ]
type = PosAdd
trigger1 = animelem = 13
trigger2 = animelem = 26
x = 8

[State 0, ]
type = PosAdd
trigger1 = animelem = 14
trigger2 = animelem = 15
x = 9

[State 0, ]
type = PosAdd
trigger1 = animelem = 16
trigger2 = animelem = 17
trigger3 = animelem = 18
trigger4 = animelem = 19
trigger5 = animelem = 22
trigger6 = animelem = 23
trigger7 = animelem = 25
x = 12

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
trigger1 = movecontact = 0
attr = A,SA
hitflag = MAFD
guardflag =MA 
animtype = medium
air.animtype = medium
fall.animtype = back
ground.type = low
air.type = low
priority = 5,Hit
damage = 125,0
pausetime = 10,10
guard.pausetime = 8,7
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-30
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 25
guard.slidetime = 15
ground.hittime = 25
guard.hittime = 15
air.hittime = 25
ground.velocity = -6,-5
guard.velocity = -4
air.velocity = -1,-3
airguard.velocity = -3
down.velocity = 0,0
down.hittime = 20
down.bounce = 0
fall = 1
air.fall = 1
fall.recover = 0

[State 0, ]
type = Explod
trigger1 = animelem = 28
anim = 1301

[State 0, ]
type = VelSet
trigger1 = animelem = 28
x = 3
y = -3

[State 0, ]
type = ChangeState
trigger1 = frontedgedist <= 0
trigger2 = animtime = 0
value = 1305

[statedef 1305]
type = A
movetype = A
physics = A
anim = 46
velset = 2,-5
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = pos y >= 0
value = 52

;Web-Swing (medium)
[statedef 1310]
type = A
movetype = A
physics = A
anim = 1310
poweradd = 50
velset = 2,-2
ctrl = 0

[State 0, ]
type = Width
trigger1 = time = [22,58]
edge = 0,10
player = 60,10

[State 0, ]
type = PosFreeze
trigger1 = time <= 60
value = 1

[State 0, ]
type = PlayerPush
trigger1 = time <= 60
value = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 6
value = S7,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 11
value = S0,5

[State 0, ]
type = PosAdd
trigger1 = time = 0
y = -5

[State 0, ]
type = PosAdd
trigger1 = animelem = 9
trigger2 = animelem = 13
trigger3 = animelem = 14
trigger4 = animelem = 29
x = 4

[State 0, ]
type = PosAdd
trigger1 = animelem = 10
x = 3

[State 0, ]
type = PosAdd
trigger1 = animelem = 11
trigger2 = animelem = 12
x = 5

[State 0, ]
type = PosAdd
trigger1 = animelem = 15
trigger2 = animelem = 16
x = 7

[State 0, ]
type = PosAdd
trigger1 = animelem = 17
x = 9

[State 0, ]
type = PosAdd
trigger1 = animelem = 18
x = 24

[State 0, ]
type = PosAdd
trigger1 = animelem = 19
x = 16

[State 0, ]
type = PosAdd
trigger1 = animelem = 20
trigger2 = animelem = 22
trigger3 = animelem = 24
trigger4 = animelem = 25
x = 12

[State 0, ]
type = PosAdd
trigger1 = animelem = 21
x = 14

[State 0, ]
type = PosAdd
trigger1 = animelem = 23
x = 10

[State 0, ]
type = PosAdd
trigger1 = animelem = 26
x = 35

[State 0, ]
type = PosAdd
trigger1 = animelem = 27
x = 6

[State 0, ]
type = PosAdd
trigger1 = animelem = 28
x = 8

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
trigger1 = movecontact = 0
attr = A,SA
hitflag = MAFD
guardflag =MA 
animtype = medium
air.animtype = medium
fall.animtype = back
ground.type = low
air.type = low
priority = 5,Hit
damage = 150,0
pausetime = 13,13
guard.pausetime = 8,7
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-30
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 25
guard.slidetime = 15
ground.hittime = 25
guard.hittime = 15
air.hittime = 25
ground.velocity = -8,-5
guard.velocity = -4
air.velocity = -1,-4
airguard.velocity = -3
down.velocity = 0,0
down.hittime = 25
down.bounce = 0
fall = 1
air.fall = 1
fall.recover = 0

[State 0, ]
type = Explod
trigger1 = animelem = 31
anim = 1311

[State 0, ]
type = VelSet
trigger1 = animelem = 31
x = 3
y = -7

[State 0, ]
type = ChangeState
trigger1 = frontedgedist <= 0
trigger2 = animtime = 0
value = 1315

[statedef 1315]
type = A
movetype = A
physics = A
anim = 46
velset = 3,-5
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = pos y >= 0
value = 52

;Web-Swing (fierce)
[statedef 1320]
type = A
movetype = A
physics = A
anim = 1320
poweradd = 75
velset = 3,-3
ctrl = 0

[State 0, ]
type = Width
trigger1 = time = [18,60]
edge = 0,10
player = 60,10

[State 0, ]
type = PosFreeze
trigger1 = time <= 62
value = 1

[State 0, ]
type = PlayerPush
trigger1 = time <= 62
value = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 7
value = S7,1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 9
value = S0,5

[State 0, ]
type = PosAdd
trigger1 = time = 0
y = -5

[State 0, ]
type = PosAdd
trigger1 = animelem = 8
trigger2 = animelem = 13
trigger3 = animelem = 28
trigger4 = animelem = 30
x = 6

[State 0, ]
type = PosAdd
trigger1 = animelem = 9
x = 10

[State 0, ]
type = PosAdd
trigger1 = animelem = 10
trigger2 = animelem = 11
x = 4

[State 0, ]
type = PosAdd
trigger1 = animelem = 12
x = 7

[State 0, ]
type = PosAdd
trigger1 = animelem = 14
trigger2 = animelem = 15
trigger3 = animelem = 20
trigger4 = animelem = 21
trigger5 = animelem = 23
trigger6 = animelem = 26
x = 12

[State 0, ]
type = PosAdd
trigger1 = animelem = 16
x = 11

[State 0, ]
type = PosAdd
trigger1 = animelem = 17
trigger2 = animelem = 18
x = 16

[State 0, ]
type = PosAdd
trigger1 = animelem = 19
trigger2 = animelem = 22
x = 14

[State 0, ]
type = PosAdd
trigger1 = animelem = 24
x = 18

[State 0, ]
type = PosAdd
trigger1 = animelem = 25
trigger2 = animelem = 27
x = 9

[State 0, ]
type = PosAdd
trigger1 = animelem = 29
x = 8

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
trigger1 = movecontact = 0
attr = A,SA
hitflag = MAFD
guardflag =MA 
animtype = hard
air.animtype = hard
fall.animtype = back
ground.type = low
air.type = low
priority = 5,Hit
damage = 175,0
pausetime = 14,14
guard.pausetime = 8,7
sparkno = 3
guard.sparkno = 40
sparkxy = 0,-35
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 25
guard.slidetime = 15
ground.hittime = 25
guard.hittime = 15
air.hittime = 25
ground.velocity = -9,-5
guard.velocity = -4
air.velocity = -1,-5
airguard.velocity = -3
down.velocity = 0,0
down.hittime = 30
down.bounce = 0
fall = 1
air.fall = 1
fall.recover = 0

[State 0, ]
type = Explod
trigger1 = animelem = 32
anim = 1321

[State 0, ]
type = VelSet
trigger1 = animelem = 32
x = 3
y = -9

[State 0, ]
type = ChangeState
trigger1 = frontedgedist <= 0
trigger2 = animtime = 0
value = 1325

[statedef 1325]
type = A
movetype = A
physics = A
anim = 46
velset = 4,-5
ctrl = 0

[State 0, ]
type = ChangeState
trigger1 = pos y >= 0
value = 52

;-----------------------------------
;Spider-Sting (light)
[statedef 1400]
type = S
movetype = A
physics = S
anim = 1400
poweradd = 25
juggle = 5
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S0,3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S7,3

[State 0, ]
type = VelSet
trigger1 = animelem = 3
x = 2
y = -5.5

[State 0, ]
type = StateTypeSet
trigger1 = animelem = 3
statetype = A
movetype = A
physics = A

[State 0, ]
type = VelAdd
trigger1 = time = [16,25]
x = -0.15

[State 0, ]
type = VelSet
trigger1 = animelem = 8
x = 0

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
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = low
air.type = low
hitflag = MAF
guardflag = MA
damage = 90,10
pausetime = 7,8
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-55
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -0.25,-10
guard.velocity = -3
air.velocity = -0.25,-9
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower = 35,5
givepower = 5,5
persistent = 0
fall = 1
air.fall = 1

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
trigger1 = animelem = 3
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 90,10
pausetime = 7,8
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-120
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -0.25,-10
guard.velocity = -3
air.velocity = -0.25,-9
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower = 35,5
givepower = 5,5
fall = 1
air.fall = 1

;Spider-Sting (medium)
[statedef 1410]
type = S
movetype = A
physics = S
anim = 1400
poweradd = 50
juggle = 5
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S0,3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S7,3

[State 0, ]
type = VelSet
trigger1 = animelem = 3
x = 3
y = -7.5

[State 0, ]
type = StateTypeSet
trigger1 = animelem = 3
statetype = A
movetype = A
physics = A

[State 0, ]
type = VelAdd
trigger1 = time = [16,26]
x = -0.25

[State 0, ]
type = VelSet
trigger1 = animelem = 8
x = 0

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
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = low
air.type = low
hitflag = MAF
guardflag = MA
damage = 110,10
pausetime = 8,9
guard.pausetime = 5,4
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-55
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -0.25,-10
guard.velocity = -3
air.velocity = -0.25,-9
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower = 35,5
givepower = 5,5
persistent = 0
fall = 1
air.fall = 1

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
trigger1 = animelem = 3
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 110,10
pausetime = 8,9
guard.pausetime = 5,4
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-120
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -0.25,-10
guard.velocity = -3
air.velocity = -0.25,-9
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower = 35,5
givepower = 5,5
fall = 1
air.fall = 1

;Spider-Sting (fierce)
[statedef 1420]
type = S
movetype = A
physics = S
anim = 1400
poweradd = 75
juggle = 5
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S0,3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S7,3

[State 0, ]
type = VelSet
trigger1 = animelem = 3
x = 4
y = -10.5

[State 0, ]
type = StateTypeSet
trigger1 = animelem = 3
statetype = A
movetype = A
physics = A

[State 0, ]
type = VelAdd
trigger1 = time = [16,26]
x = -0.35

[State 0, ]
type = VelSet
trigger1 = animelem = 8
x = 0

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
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = low
air.type = low
hitflag = MAF
guardflag = MA
damage = 110,10
pausetime = 8,9
guard.pausetime = 5,4
sparkno = 3
guard.sparkno = 40
sparkxy = 0,-55
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -0.25,-8
guard.velocity = -3
air.velocity = -0.25,-7
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower = 35,5
givepower = 5,5
persistent = 0
fall = 1
air.fall = 1

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
trigger1 = animelem = 3
attr = S,NA
animtype = up
air.animtype = up
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 110,10
pausetime = 8,9
guard.pausetime = 5,4
sparkno = 3
guard.sparkno = 40
sparkxy = 0,-120
hitsound = S5,3
guardsound = S5,8
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -0.25,-8
guard.velocity = -3
air.velocity = -0.25,-7
airguard.velocity = -2,-2
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -2
getpower = 35,5
givepower = 5,5
fall = 1
air.fall = 1

[State 0, ]
type = ChangeState
triggerall = movehit = 1
triggerall = time = [16,22]
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
value = 1425

[statedef 1425]
type = A
movetype = A
physics = A
anim = 1405
velset = 0,-1
ctrl = 0

[State 0, ]
type = PosFreeze
trigger1 = time <= 12
value = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 0,3

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
attr = A,NA
animtype = hard
air.animtype = hard
fall.animtype = back
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,10
pausetime = 10,11
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-95
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,15
airguard.velocity = -2,1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 35,5
givepower = 5,5
persistent = 0
air.fall = 1

[State 0, ]
type = HitDef
trigger1 = movecontact = 0
trigger1 = animelem = 4
attr = A,NA
animtype = hard
air.animtype = hard
fall.animtype = up
ground.type = high
air.type = low
hitflag = MAF
guardflag = MA
damage = 25,10
pausetime = 10,11
guard.pausetime = 5,4
sparkno = 1
guard.sparkno = 40
sparkxy = -15,-90
hitsound = S5,2
guardsound = S5,8
ground.slidetime = 10
guard.slidetime = 10
ground.hittime = 10
guard.hittime = 10
air.hittime = 20
ground.velocity = -2
guard.velocity = -3
air.velocity = -2,15
airguard.velocity = -2,1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
getpower = 35,5
givepower = 5,5
air.fall = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 0

;---------------------------
;Web-Throw (light)
[statedef 1500]
type = S
movetype = A
physics = S
anim = 1500
poweradd = 25
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 7,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
value = 6,0

[State 0, ]
type = HitDef
trigger1 = animelem = 4
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-55
sparkno = 1
hitsound = S6,1
guard.sparkno = S1507
p1stateno = 1501
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 5
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-55
sparkno = 1
guard.sparkno = S1507
hitsound = S6,1
p1stateno = 1502
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 6
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-55
sparkno = 1
guard.sparkno = S1507
hitsound = S6,1
guard.dist = 200
p1stateno = 1503
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 7
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-55
sparkno = 1
guard.sparkno = S1507
hitsound = S6,1
guard.dist = 230
p1stateno = 1504
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 8
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-55
sparkno = 1
guard.sparkno = S1507
hitsound = S6,1
guard.dist = 250
p1stateno = 1505
p2stateno = 1508

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = Helper
trigger1 = animelem = 9
trigger1 = moveguarded = 0
helpertype = normal
name = "web-line"
ID = 1005
pos = 230,-52
postype = p1
facing = 1
stateno = 1506
ownpal = 1

[State 0, ]
type = ChangeAnim
trigger1 = moveguarded = 1
value = 1500
elem = 9
ignorehitpause = 1
persistent = 0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 1501]
type = S
movetype = A
physics = S
anim = 1501
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1501
time = 1
pos = 115,-55

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1502

[statedef 1502]
type = S
movetype = A
physics = S
anim = 1502
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1502
time = 1
pos = 175,-55

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1503

[statedef 1503]
type = S
movetype = A
physics = S
anim = 1503
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1503
time = 1
pos = 215,-55

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1504

[statedef 1504]
type = S
movetype = A
physics = S
anim = 1504
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1504
time = 1
pos = 230,-55

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1505

[statedef 1505]
type = S
movetype = A
physics = S
anim = 1505
velset = 0,0
sprpriority = -1
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 1,1
ignorehitpause = 1
persistent = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S0,3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 12
value = S0,5

[State 0, ]
type = PlaySnd
trigger1 = animelem = 13
value = 1,2

[State 0, ]
type = TargetFacing
trigger1 = animelem = 1
trigger2 = animelem = 11
value = 1

[State 0, ]
type = TargetFacing
trigger1 = animelem = 7
value = -1

[State 0, ]
type = SprPriority
trigger1 = animelem = 9
value = 1

[State 0, ]
type = SprPriority
trigger1 = animelem = 13
value = -1

[State 0, ]
type = TargetBind
trigger1 = animelem = 1
time = 4
pos = 240,-55

[State 0, ]
type = TargetBind
trigger1 = animelem = 2
time = 4
pos = 220,-60

[State 0, ]
type = TargetBind
trigger1 = animelem = 3
time = 4
pos = 195,-75

[State 0, ]
type = TargetBind
trigger1 = animelem = 4
time = 4
pos = 180,-85

[State 0, ]
type = TargetBind
trigger1 = animelem = 5
time = 4
pos = 105,-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 6
time = 4
pos = 25,-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 7
time = 4
pos = -105,-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 8
time = 4
pos = -155,-95

[State 0, ]
type = TargetBind
trigger1 = animelem = 9
time = 4
pos = -110,-110

[State 0, ]
type = TargetBind
trigger1 = animelem = 10
time = 4
pos = -5,-120

[State 0, ]
type = TargetBind
trigger1 = animelem = 11
time = 4
pos = 35,-95

[State 0, ]
type = TargetBind
trigger1 = animelem = 12
time = 4
pos = 140,-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 13
time = 4
pos = 150,-60

[State 0, ]
type = TargetBind
trigger1 = animelem = 14
time = 4
pos = 20,-45

[State 0, ]
type = TargetBind
trigger1 = animelem = 15
time = 4
pos = -140,-45

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 16
value = -175

[State 0, ]
type = TargetState
trigger1 = animelem = 16
value = 1509

[State 0, ]
type = TargetDrop
trigger1 = animelem = 16

[State 0, ]
type = Turn
trigger1 = animelem = 17

[State 0, ]
type = ScreenBound
trigger1 = time >= 64
value = 0

[State 0, ]
type = ChangeState
trigger1 = backedgedist <= -20
trigger1 = animtime = 0
value = 101
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1506]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1506
velset = 7,0
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1506
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1506
value = SCA,NP,SP,HP
time = 10

[State 0, ]
type = HitOverride
trigger1 = stateno = 1506
slot = 1
time = 1
stateno = 1507
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1506
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1506
x = 6
y = 0

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

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
trigger1 = stateno = 1506
attr = S,SA
hitflag = MAF
guardflag = MA 
animtype = light
ground.type = high
air.type = low
priority = 5,Hit
damage = 10,5
pausetime = 0,8
guard.pausetime = 4,3
sparkno = 1
guard.sparkno = 40
sparkxy = 10,0
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -200

[State 0, ]
type = Changestate
trigger1 = movehit = 1
trigger2 = movecontact = 1
trigger3 = time = 30
value = 1507

[Statedef 1507]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1507
velset = 0,0
sprpriority = 5

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 10

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 1508]
type = A
movetype = H
physics = A
ctrl = 0
anim = 5000
velset = 0,0
sprpriority = 0

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1508
value = 0
movecamera = 1,0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 1508

[Statedef 1509]
type = A
movetype = H
physics = A
ctrl = 0
anim = 5030
velset = -10,-1.25
sprpriority = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 5030

[State 0, ]
type = SelfState
trigger1 = time >= 1
value = 5050

;Web-Throw (medium)
[statedef 1510]
type = S
movetype = A
physics = S
anim = 1510
poweradd = 25
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 7,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
value = 6,0

[State 0, ]
type = HitDef
trigger1 = animelem = 4
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-85
sparkno = 1
hitsound = S6,1
guard.sparkno = S1517
p1stateno = 1511
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 5
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-110
sparkno = 1
guard.sparkno = S1517
hitsound = S6,1
p1stateno = 1512
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 6
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-140
sparkno = 1
guard.sparkno = S1517
hitsound = S6,1
guard.dist = 200
p1stateno = 1513
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 7
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-165
sparkno = 1
guard.sparkno = S1517
hitsound = S6,1
guard.dist = 230
p1stateno = 1514
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 8
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-190
sparkno = 1
guard.sparkno = S1517
hitsound = S6,1
guard.dist = 250
p1stateno = 1515
p2stateno = 1508

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = Helper
trigger1 = animelem = 9
trigger1 = moveguarded = 0
helpertype = normal
name = "web-line"
ID = 1005
pos = 190,-190
postype = p1
facing = 1
stateno = 1516
ownpal = 1

[State 0, ]
type = ChangeAnim
trigger1 = moveguarded = 1
value = 1510
elem = 9
ignorehitpause = 1
persistent = 0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 1511]
type = S
movetype = A
physics = S
anim = 1511
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1511
time = 1
pos = 95,-110

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1512

[statedef 1512]
type = S
movetype = A
physics = S
anim = 1512
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1512
time = 1
pos = 130,-140

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1513

[statedef 1513]
type = S
movetype = A
physics = S
anim = 1513
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1513
time = 1
pos = 150,-160

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1514

[statedef 1514]
type = S
movetype = A
physics = S
anim = 1514
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1514
time = 1
pos = 175,-175

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1515

[statedef 1515]
type = S
movetype = A
physics = S
anim = 1515
velset = 0,0
sprpriority = -1
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 1,1
ignorehitpause = 1
persistent = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S0,3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 12
value = S0,5

[State 0, ]
type = PlaySnd
trigger1 = animelem = 13
value = 1,2

[State 0, ]
type = TargetFacing
trigger1 = animelem = 1
trigger2 = animelem = 11
value = 1

[State 0, ]
type = TargetFacing
trigger1 = animelem = 7
value = -1

[State 0, ]
type = SprPriority
trigger1 = animelem = 9
value = 1

[State 0, ]
type = SprPriority
trigger1 = animelem = 13
value = -1

[State 0, ]
type = TargetBind
trigger1 = animelem = 1
time = 4
pos = 175,-170

[State 0, ]
type = TargetBind
trigger1 = animelem = 2
time = 4
pos = 160,-160

[State 0, ]
type = TargetBind
trigger1 = animelem = 3
time = 4
pos = 150,-135

[State 0, ]
type = TargetBind
trigger1 = animelem = 4
time = 4
pos = 145,-120

[State 0, ]
type = TargetBind
trigger1 = animelem = 5
time = 4
pos = 105,-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 6
time = 4
pos = 25,-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 7
time = 4
pos = -105,-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 8
time = 4
pos = -155,-95

[State 0, ]
type = TargetBind
trigger1 = animelem = 9
time = 4
pos = -110,-110

[State 0, ]
type = TargetBind
trigger1 = animelem = 10
time = 4
pos = -5,-120

[State 0, ]
type = TargetBind
trigger1 = animelem = 11
time = 4
pos = 35,-95

[State 0, ]
type = TargetBind
trigger1 = animelem = 12
time = 4
pos = 140,-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 13
time = 4
pos = 150,-60

[State 0, ]
type = TargetBind
trigger1 = animelem = 14
time = 4
pos = 20,-45

[State 0, ]
type = TargetBind
trigger1 = animelem = 15
time = 4
pos = -140,-45

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 16
value = -175

[State 0, ]
type = TargetState
trigger1 = animelem = 16
value = 1509

[State 0, ]
type = TargetDrop
trigger1 = animelem = 16

[State 0, ]
type = Turn
trigger1 = animelem = 17

[State 0, ]
type = ScreenBound
trigger1 = time >= 64
value = 0

[State 0, ]
type = ChangeState
trigger1 = backedgedist <= -20
trigger1 = animtime = 0
value = 101
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1516]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1516
velset = 5,-5
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1516
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1516
value = SCA,NP,SP,HP
time = 10

[State 0, ]
type = HitOverride
trigger1 = stateno = 1516
slot = 1
time = 1
stateno = 1517
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1516
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1516
x = 3.5
y = -3.5

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

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
trigger1 = stateno = 1516
attr = S,SA
hitflag = MAF
guardflag = MA 
animtype = light
ground.type = high
air.type = low
priority = 5,Hit
damage = 10,5
pausetime = 0,8
guard.pausetime = 4,3
sparkno = 1
guard.sparkno = 40
sparkxy = 10,0
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -200

[State 0, ]
type = Changestate
trigger1 = movehit = 1
trigger2 = movecontact = 1
trigger3 = time = 30
value = 1517

[Statedef 1517]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1517
velset = 0,0
sprpriority = 5

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 10

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

;Web-Throw (fierce)
[statedef 1520]
type = S
movetype = A
physics = S
anim = 1520
poweradd = 25
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = 7,2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 4
value = 6,0

[State 0, ]
type = HitDef
trigger1 = animelem = 4
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-85
sparkno = 1
hitsound = S6,1
guard.sparkno = S1527
p1stateno = 1521
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 5
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-110
sparkno = 1
guard.sparkno = S1527
hitsound = S6,1
p1stateno = 1522
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 6
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-140
sparkno = 1
guard.sparkno = S1527
hitsound = S6,1
guard.dist = 200
p1stateno = 1523
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 7
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-165
sparkno = 1
guard.sparkno = S1527
hitsound = S6,1
guard.dist = 230
p1stateno = 1524
p2stateno = 1508

[State 0, ]
type = HitDef
trigger1 = animelem = 8
trigger1 = moveguarded = 0
attr = S,ST
hitflag = MAF
guardflag = MA
sparkxy = 0,-190
sparkno = 1
guard.sparkno = S1527
hitsound = S6,1
guard.dist = 250
p1stateno = 1515
p2stateno = 1508

[State 0, ]
type = EnvColor
trigger1 = movehit = 1
value = 255,255,255
time = 4
under = 0
ignorehitpause = 1
persistent = 0

[State 0, ]
type = Helper
trigger1 = animelem = 9
trigger1 = moveguarded = 0
helpertype = normal
name = "web-line"
ID = 1005
pos = 20,-265
postype = p1
facing = 1
stateno = 1526
ownpal = 1

[State 0, ]
type = ChangeAnim
trigger1 = moveguarded = 1
value = 1520
elem = 9
ignorehitpause = 1
persistent = 0

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 1521]
type = S
movetype = A
physics = S
anim = 1521
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1521
time = 1
pos = 20,-110

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1522

[statedef 1522]
type = S
movetype = A
physics = S
anim = 1522
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1522
time = 1
pos = 20,-145

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1523

[statedef 1523]
type = S
movetype = A
physics = S
anim = 1523
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1523
time = 1
pos = 20,-195

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1524

[statedef 1524]
type = S
movetype = A
physics = S
anim = 1524
sprpriority = -1
velset = 0,0
ctrl = 0

[State 0, ]
type = TargetBind
trigger1 = stateno = 1524
time = 1
pos = 20,-255

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 1515

[Statedef 1526]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1526
velset = 5,-5
sprpriority = 5

[State 0, ]
type = Nothitby
trigger1 = stateno = 1526
value = SCA,NA,SA,HA,NT,ST,HT

[State 0, ]
type = HitBy
trigger1 = stateno = 1526
value = SCA,NP,SP,HP
time = 10

[State 0, ]
type = HitOverride
trigger1 = stateno = 1526
slot = 1
time = 1
stateno = 1517
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, ]
type = ScreenBound
trigger1 = stateno = 1526
value = 0

[State 0, ]
type = VelSet
trigger1 = stateno = 1526
x = 0
y = -6

[State 0, ]
type = AfterImage
trigger1 = time = 0
time = 999
length = 3
framegap = 1
palcolor = 38
trans = Add

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
trigger1 = stateno = 1526
attr = S,SA
hitflag = MAF
guardflag = MA 
animtype = light
ground.type = high
air.type = low
priority = 5,Hit
damage = 10,5
pausetime = 0,8
guard.pausetime = 4,3
sparkno = 1
guard.sparkno = 40
sparkxy = 10,0
hitsound = s6,1
guardsound = s6,1
ground.slidetime = 25
guard.slidetime = 25
ground.hittime = 25
guard.hittime = 25
air.hittime = 25
ground.velocity = -1
guard.velocity = -3
air.velocity = -1

[State 0, ]
type = DestroySelf
trigger1 = frontedgedist <= -200

[State 0, ]
type = Changestate
trigger1 = movehit = 1
trigger2 = movecontact = 1
trigger3 = time = 30
value = 1527

[Statedef 1527]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1527
velset = 0,0
sprpriority = 5

[State 0, ]
type = AfterImageTime
trigger1 = time = 0
time = 10

[State 0, ]
type = DestroySelf
trigger1 = animtime = 0

;---------------------------
;Spider-Sense (light)
[statedef 1600]
type = S
movetype = I
physics = S
anim = 1600
poweradd = 25
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S7,4

[State 0, ]
type = BGPalFX
trigger1 = animelem = 2
time = 20
mul = 100,100,100
invertall = 1

[State 0, ]
type = Explod
trigger1 = animelem = 2
anim = 194
pos = 21,-47
removetime = 20
removeongethit = 1
bindtime = 20
sprpriority = 2

[State 0, ]
type = ReversalDef
trigger1 = animelem = 2
reversal.attr = C,NA,SA
pausetime = 20,20
sparkno = 0
hitsound = S5,8
p1stateno = 1605
p2stateno = 1606

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 1605]
type = S
movetype = A
physics = S
anim = 1605
velset = 0,0
ctrl = 0

[State 0, ]
type = StateTypeSet
trigger1 = animelem = 5
statetype = A
physics = A

[State 0, ]
type = VelSet
trigger1 = animelem = 5
x = 2
y = -4

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S5,9

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S0,5

[State 0, ]
type = PlaySnd
trigger1 = animelem = 7
value = S1,2

[State 0, ]
type = TargetBind
trigger1 = animelem = 1
time = 1
pos = 40,0

[State 0, ]
type = BindToTarget
trigger1 = animelem = 2
time = 28
pos = 0,target,const(size.head.pos.y)

[State 0, ]
type = TargetBind
trigger1 = animelem = 5
time = 5
pos = -40,-20

[State 0, ]
type = TargetBind
trigger1 = animelem = 6
time = 5
pos = -50,-55

[State 0, ]
type = TargetBind
trigger1 = animelem = 7
time = 5
pos = -35,-90

[State 0, ]
type = TargetBind
trigger1 = animelem = 8
time = 1
pos = 50,-65

[State 0, ]
type = TargetState
trigger1 = animelem = 5
value = 1607

[State 0, ]
type = TargetState
trigger1 = animelem = 6
value = 1608

[State 0, ]
type = TargetState
trigger1 = animelem = 8
value = 1609

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 9
value = -120

[State 0, ]
type = TargetDrop
trigger1 = animelem = 9,2

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 0

[Statedef 1606]
type    = S
movetype= H
physics = S
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = animtime = 0
trigger1 = time < 12
value = 11

[State 0, ]
type = ChangeAnim2
trigger1 = time = 12
value = 1606

[Statedef 1607]
type    = S
movetype= H
physics = S
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 1607

[Statedef 1608]
type    = S
movetype= H
physics = S
velset = 0,0
sprpriority = 0
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 1608

[Statedef 1609]
type    = A
movetype= H
physics = A
velset = -8,1
sprpriority = 0
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 5050

[State 0, ]
type = SelfState
trigger1 = time >= 0
value = 5050

;Spider-Sense (medium)
[statedef 1610]
type = S
movetype = I
physics = S
anim = 1610
poweradd = 50
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S7,4

[State 0, ]
type = BGPalFX
trigger1 = animelem = 2
time = 20
mul = 100,100,100
invertall = 1

[State 0, ]
type = Explod
trigger1 = animelem = 2
anim = 194
pos = 6,-68
removetime = 20
removeongethit = 1
bindtime = 20
sprpriority = 2

[State 0, ]
type = ReversalDef
trigger1 = animelem = 2
reversal.attr = S,NA,SA
pausetime = 20,20
sparkno = 0
hitsound = S5,8
p1stateno = 1615
p2stateno = 1606

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 1615]
type = S
movetype = A
physics = S
anim = 1605
velset = 0,0
ctrl = 0

[State 0, ]
type = StateTypeSet
trigger1 = animelem = 5
statetype = A
physics = A

[State 0, ]
type = VelSet
trigger1 = animelem = 5
x = 2
y = -4

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S5,9

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S0,5

[State 0, ]
type = PlaySnd
trigger1 = animelem = 7
value = S1,2

[State 0, ]
type = TargetBind
trigger1 = animelem = 1
time = 1
pos = 40,0

[State 0, ]
type = BindToTarget
trigger1 = animelem = 2
time = 28
pos = 0,target,const(size.head.pos.y)

[State 0, ]
type = TargetBind
trigger1 = animelem = 5
time = 5
pos = -40,-20

[State 0, ]
type = TargetBind
trigger1 = animelem = 6
time = 5
pos = -50,-55

[State 0, ]
type = TargetBind
trigger1 = animelem = 7
time = 5
pos = -35,-90

[State 0, ]
type = TargetBind
trigger1 = animelem = 8
time = 1
pos = 50,-65

[State 0, ]
type = TargetState
trigger1 = animelem = 5
value = 1607

[State 0, ]
type = TargetState
trigger1 = animelem = 6
value = 1608

[State 0, ]
type = TargetState
trigger1 = animelem = 8
value = 1609

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 9
value = -140

[State 0, ]
type = TargetDrop
trigger1 = animelem = 9,2

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 0

;Spider-Sense (Fierce)
[statedef 1620]
type = S
movetype = I
physics = S
anim = 1620
poweradd = 75
velset = 0,0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 2
value = S7,4

[State 0, ]
type = BGPalFX
trigger1 = animelem = 2
time = 20
mul = 100,100,100
invertall = 1

[State 0, ]
type = Explod
trigger1 = animelem = 2
anim = 194
pos = -26,-105
removetime = 20
removeongethit = 1
bindtime = 20
sprpriority = 2

[State 0, ]
type = ReversalDef
trigger1 = animelem = 2
reversal.attr = A,NA,SA
pausetime = 20,20
sparkno = 0
hitsound = S5,8
p1stateno = 1625
p2stateno = 1606

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[statedef 1625]
type = S
movetype = A
physics = S
anim = 1605
velset = 0,0
ctrl = 0

[State 0, ]
type = StateTypeSet
trigger1 = animelem = 5
statetype = A
physics = A

[State 0, ]
type = VelSet
trigger1 = animelem = 5
x = 2
y = -4

[State 0, ]
type = PlaySnd
trigger1 = animelem = 3
value = S5,9

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S0,5

[State 0, ]
type = PlaySnd
trigger1 = animelem = 7
value = S1,2

[State 0, ]
type = TargetBind
trigger1 = animelem = 1
time = 1
pos = 40,0

[State 0, ]
type = BindToTarget
trigger1 = animelem = 2
time = 28
pos = 0,target,const(size.head.pos.y)

[State 0, ]
type = TargetBind
trigger1 = animelem = 5
time = 5
pos = -40,-20

[State 0, ]
type = TargetBind
trigger1 = animelem = 6
time = 5
pos = -50,-55

[State 0, ]
type = TargetBind
trigger1 = animelem = 7
time = 5
pos = -35,-90

[State 0, ]
type = TargetBind
trigger1 = animelem = 8
time = 1
pos = 50,-65

[State 0, ]
type = TargetState
trigger1 = animelem = 5
value = 1607

[State 0, ]
type = TargetState
trigger1 = animelem = 6
value = 1608

[State 0, ]
type = TargetState
trigger1 = animelem = 8
value = 1609

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 9
value = -160

[State 0, ]
type = TargetDrop
trigger1 = animelem = 9,2

[State 0, ]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 0
