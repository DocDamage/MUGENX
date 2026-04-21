;===========================================================================
;---------------------------------------------------------------------------
; フライングピーチ（弱）
;---------------------------------------------------------------------------
[Statedef 1000]
type    = S
movetype= A
physics = N
;juggle  = ifelse(Var(7) = 0,4,0)
poweradd= ifelse(Var(7) != 0, 0, ifelse(Var(59) = 0, 64, 84))
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2

[State 1000, 7]
type = ChangeState
trigger1 = Time = 1
value = 1001

[Statedef 1001]
type    = S
movetype= A
physics = N
juggle  = ifelse(Var(7) = 0,4,0)
ctrl = 0
sprpriority = 2

;10 6 1.2
;3 2 2 1 1 1

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
value = 0,3

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
value = 100,3
channel = 0

[State 1000, 1]
type = PosSet
trigger1 = pos y > 0
trigger2 = AnimElemTime(5) = 0
trigger3 = AnimElemTime(11) = 0
y = 0

[State 1000, 1]
type = VelSet
trigger1 = AnimElemTime(2) = 1
y = -3.36

[State 1000, 1]
type = VelAdd
trigger1 = Pos Y < 0
trigger1 = AnimElemTime(8) < 0
y = 0.66

[State 1000, 1]
type = VelSet
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(11) = 0
y = 0


[State 1000, 1]
type = VelSet
trigger1 = AnimElemTime(8) = 1
y = -4.8

[State 1000, 1]
type = VelAdd
trigger1 = Pos Y < 0
trigger1 = AnimElemTime(7) > 0  && AnimElemTime(11) < 0
y = 0.81

[State 1000, 1]
type = PosAdd
trigger1 = AnimElemTime(9) = 0
y = -29

;45,time=17

[State 1000, 1]
type = PosAdd
trigger1 = AnimElemTime(2) > 0
trigger1 = AnimElemTime(5) < 0
x = 1.27

[State 1000, 1]
type = PosAdd
trigger1 = AnimElemTime(8) > 0
trigger1 = AnimElemTime(11) < 0
x = 4.0

[State 1000, 6]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, SA
animtype  = Back
damage    = 96, 12
priority  = 5
guardflag = MA
pausetime = 12,12
sparkxy = 0,-40
sparkno = S7200
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4.9,-3.7
air.velocity = -5.0,-2.7
guard.hittime  = 12
fall = 1
air.fall = 1
getpower = 60 + ifelse(Var(59) = 0, 0, 20),30
givepower = 20,0

[State 1000, 6]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, SA
animtype  = Back
damage    = 108, 12
priority  = 5
guardflag = MA
pausetime = 12,12
sparkno = S7200
sparkxy = 0,-40
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 17
ground.velocity = -4.9,-3.7
air.velocity = -5.0,-2.7
guard.hittime  = 12
fall = 1
air.fall = 1
getpower = 60 + ifelse(Var(59) = 0, 0, 20),30
givepower = 20,0

[State 1000, 6]
type = HitDef
trigger1 = time = 1
trigger1 = Var(7) != 0
attr = A, SA
animtype  = Back
damage    = 96, 12
priority  = 5
guardflag = MA
pausetime = 6,6
sparkno = S7200
sparkxy = 0,-40
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2.45,-4.7
air.velocity = -2.5,-3.7
guard.hittime  = 12
fall = 1
air.fall = 1
getpower = 0,0
givepower = 20,0


[State 1000, BackLayer]
type = Explod
trigger1 = Var(7) = 0
trigger1 = NumExplod(7220) = 0
trigger1 = movehit
anim = 7220
id = 7220
postype = p2
pos = floor(enemy,const(size.mid.pos.x)),floor(enemy,const(size.mid.pos.y)-14.0)
facing = -1
bindtime = -1
removetime = -2
sprpriority = -1
shadow = -1
ignorehitpause = 1
ownpal = 1

[State 1000, 4]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
physics = N

[State 1000, 4]
type = StateTypeSet
trigger1 = Pos Y >= 0
statetype = C
physics = C

[State 1000, 4]
type = StateTypeSet
trigger1 = AnimElemTime(10) = 0
movetype = I

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; フライングピーチ（中）
;---------------------------------------------------------------------------
[Statedef 1010]
type    = S
movetype= A
physics = N
;juggle  = ifelse(Var(7) = 0,4,0)
poweradd= ifelse(Var(7) != 0, 0, ifelse(Var(59) = 0, 84, 128))
velset = 0,0
anim = 1010
ctrl = 0
sprpriority = 2

[State 1000, 7]
type = ChangeState
trigger1 = Time = 1
value = 1011

[Statedef 1011]
type    = S
movetype= A
physics = N
juggle  = ifelse(Var(7) = 0,4,0)
ctrl = 0
sprpriority = 2

[State 1010, 1]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = 0,3

[State 1010, 1]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = 100,3
channel = 0

[State 1010, 1]
type = PosSet
trigger1 = pos y > 0
trigger2 = AnimElemTime(5) = 0
trigger3 = AnimElemTime(11) = 0
y = 0

[State 1010, 1]
type = VelSet
trigger1 = AnimElemTime(2) = 1
y = -4.08

[State 1010, 1]
type = VelAdd
trigger1 = Pos Y < 0
trigger1 = AnimElemTime(8) < 0
y = 0.677

[State 1010, 1]
type = VelSet
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(11) = 0
y = 0


[State 1010, 1]
type = VelSet
trigger1 = AnimElemTime(8) = 1
y = -6.12

[State 1010, 1]
type = VelAdd
trigger1 = Pos Y < 0
trigger1 = AnimElemTime(7) > 0  && AnimElemTime(11) < 0
y = 0.85

[State 1010, 1]
type = PosAdd
trigger1 = AnimElemTime(9) = 0
y = -29

;54,time=18


[State 1010, 1]
type = PosAdd
trigger1 = AnimElemTime(2) > 0
trigger1 = AnimElemTime(5) < 0
x = 1.4

[State 1010, 1]
type = PosAdd
trigger1 = AnimElemTime(8) > 0
trigger1 = AnimElemTime(11) < 0
x = 4.56

[State 1010, 7]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, SA
animtype  = Back
damage    = 102, 13
priority  = 5
guardflag = MA
pausetime = 12,12
sparkno = S7200
sparkxy = 0,-40
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.0,-3.7
air.velocity = -5.1,-2.7
guard.hittime  = 13
fall = 1
air.fall = 1
getpower = 60 + ifelse(Var(59) = 0, 0, 20),30
givepower = 20,0

[State 1010, 7]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, SA
animtype  = Back
damage    = 115, 13
priority  = 5
guardflag = MA
pausetime = 12,12
sparkno = S7200
sparkxy = 0,-40
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 17
ground.velocity = -5.0,-3.7
air.velocity = -5.1,-2.7
guard.hittime  = 13
fall = 1
air.fall = 1
getpower = 60 + ifelse(Var(59) = 0, 0, 20),30
givepower = 20,0

[State 1010, 7]
type = HitDef
trigger1 = time = 0
trigger1 = Var(7) != 0
attr = A, SA
animtype  = Back
damage    = 102, 13
priority  = 5
guardflag = MA
pausetime = 6,6
sparkno = S7200
sparkxy = 0,-40
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2.5,-4.7
air.velocity = -2.55,-3.7
guard.hittime  = 13
fall = 1
air.fall = 1
getpower = 0,0
givepower = 20,0

[State 1000, BackLayer]
type = Explod
trigger1 = Var(7) = 0
trigger1 = NumExplod(7220) = 0
trigger1 = movehit
anim = 7220
id = 7220
postype = p2
pos = floor(enemy,const(size.mid.pos.x)),floor(enemy,const(size.mid.pos.y)-14.0)
facing = -1
bindtime = -1
removetime = -2
sprpriority = -1
shadow = -1
ignorehitpause = 1
ownpal = 1

[State 1010, 4]
type = StateTypeSet
trigger1 = AnimElemTime(11) = 0
movetype = I

[State 1010, 4]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
physics = N

[State 1010, 4]
type = StateTypeSet
trigger1 = Pos Y >= 0
statetype = C
physics = C

[State 1010, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; フライングピーチ（強）
;---------------------------------------------------------------------------
[Statedef 1020]
type    = S
movetype= A
physics = N
;juggle  = ifelse(Var(7) = 0,4,0)
velset = 0,0
anim = 1020
poweradd= ifelse(Var(7) != 0, 0, ifelse(Var(59) = 0, 84, 156))
ctrl = 0
sprpriority = 2

[State 1020, 7]
type = ChangeState
trigger1 = Time = 1
value = 1021

[Statedef 1021]
type    = S
movetype= A
physics = N
juggle  = ifelse(Var(7) = 0,4,0)
ctrl = 0
sprpriority = 2

[State 1020, 1]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = 0,3

[State 1020, 1]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = 100,3
channel = 0

[State 1020, 1]
type = PosSet
trigger1 = pos y > 0
trigger2 = AnimElemTime(5) = 0
trigger3 = AnimElemTime(11) = 0
y = 0

[State 1020, 1]
type = VelSet
trigger1 = AnimElemTime(2) = 1
y = -4.51

[State 1020, 1]
type = VelAdd
trigger1 = Pos Y < 0
trigger1 = AnimElemTime(8) < 0
y = 0.64

[State 1020, 1]
type = VelSet
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(11) = 0
y = 0


[State 1000, 1]
type = VelSet
trigger1 = AnimElemTime(8) = 1
y = -7.92

[State 1020, 1]
type = VelAdd
trigger1 = Pos Y < 0
trigger1 = AnimElemTime(7) > 0  && AnimElemTime(11) < 0
y = 0.97

[State 1020, 1]
type = PosAdd
trigger1 = AnimElemTime(9) = 0
y = -29

;65,time=20



[State 1020, 1]
type = PosAdd
trigger1 = AnimElemTime(2) > 0
trigger1 = AnimElemTime(5) < 0
x = 1.49

[State 1020, 1]
type = PosAdd
trigger1 = AnimElemTime(8) > 0
trigger1 = AnimElemTime(11) < 0
x = 4.71

[State 1020, 6]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, SA
animtype  = Back
damage    = 108, 14
priority  = 5
guardflag = MA
pausetime = 12,12
sparkno = S7200
sparkxy = 0,-40
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.1,-3.7
air.velocity = -5.2,-2.7
guard.hittime  = 13
fall = 1
air.fall = 1
getpower = 60 + ifelse(Var(59) = 0, 0, 20),30
givepower = 20,0

[State 1020, 6]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, SA
animtype  = Back
damage    = 121, 14
priority  = 5
guardflag = MA
pausetime = 12,12
sparkno = S7200
sparkxy = 0,-40
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 17
ground.velocity = -5.1,-3.7
air.velocity = -5.2,-2.7
guard.hittime  = 13
fall = 1
air.fall = 1
getpower = 60 + ifelse(Var(59) = 0, 0, 20),30
givepower = 20,0

[State 1020, 6]
type = HitDef
trigger1 = time = 0
trigger1 = Var(7) != 0
attr = A, SA
animtype  = Back
damage    = 108, 14
priority  = 5
guardflag = MA
pausetime = 6,6
sparkno = S7200
sparkxy = 0,-40
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2.55,-4.7
air.velocity = -2.6,-3.7
guard.hittime  = 13
fall = 1
air.fall = 1
getpower = 0,0
givepower = 20,0

[State 1000, BackLayer]
type = Explod
trigger1 = Var(7) = 0
trigger1 = NumExplod(7220) = 0
trigger1 = movehit
anim = 7220
id = 7220
postype = p2
pos = floor(enemy,const(size.mid.pos.x)),floor(enemy,const(size.mid.pos.y)-14.0)
facing = -1
bindtime = -1
removetime = -2
sprpriority = -1
shadow = -1
ignorehitpause = 1
ownpal = 1

[State 1020, 4]
type = StateTypeSet
trigger1 = AnimElemTime(11) = 0
movetype = I

[State 1020, 4]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
physics = N

[State 1020, 4]
type = StateTypeSet
trigger1 = Pos Y >= 0
statetype = C
physics = C

[State 1020, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
; シューティングピーチ（弱）
;---------------------------------------------------------------------------
[Statedef 1050]
type    = S
movetype= A
physics = N
;juggle  = ifelse(Var(7) = 0,4,0)
poweradd= ifelse(Var(7) != 0, 0, ifelse(Var(59) = 0, 64, 84))
velset = 0,0
anim = 1050
ctrl = 0
sprpriority = 2

;10 6 1.2
;3 2 2 1 1 1

[State 1050, 7]
type = ChangeState
trigger1 = Time = 1
value = 1051

[Statedef 1051]
type    = S
movetype= A
physics = N
juggle  = ifelse(Var(7) = 0,4,0)
ctrl = 0
sprpriority = 2

[State 1050, 1]
type = PlaySnd
trigger1 = Time = 0
value = 0,3

[State 1050, 1]
type = PlaySnd
trigger1 = Time = 1
value = 100,3
channel = 0

[State 1050, 1]
type = PosSet
trigger1 = pos y > 0
trigger2 = AnimElemTime(5) > 0
y = 0

[State 1050, 1]
type = VelSet
trigger1 = AnimElemTime(5) = 0
y = 0


[State 1050, 1]
type = VelSet
trigger1 = AnimElemTime(2) = 1
y = -4.8

[State 1050, 1]
type = VelAdd
trigger1 = Pos Y < 0
trigger1 = AnimElemTime(1) > 0  && AnimElemTime(5) < 0
y = 0.81

[State 1050, 1]
type = PosAdd
trigger1 = AnimElemTime(3) = 0
y = -29

;45,time=17

[State 1050, 1]
type = PosAdd
trigger1 = AnimElemTime(2) > 0
trigger1 = AnimElemTime(5) < 0
x = 4.0

[State 1050, 6]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, SA
animtype  = Back
damage    = 96, 12
priority  = 5
guardflag = MA
pausetime = 12,12
sparkno = S7200
sparkxy = 0,-40
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4.9,-3.7
air.velocity = -5.0,-2.7
guard.hittime  = 12
fall = 1
air.fall = 1
getpower = 60 + ifelse(Var(59) = 0, 0, 20),30
givepower = 20,0

[State 1050, 6]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, SA
animtype  = Back
damage    = 108, 12
priority  = 5
guardflag = MA
pausetime = 12,12
sparkno = S7200
sparkxy = 0,-40
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 17
ground.velocity = -4.9,-3.7
air.velocity = -5.0,-2.7
guard.hittime  = 12
fall = 1
air.fall = 1
getpower = 60 + ifelse(Var(59) = 0, 0, 20),30
givepower = 20,0

[State 1050, 6]
type = HitDef
trigger1 = time = 1
trigger1 = Var(7) != 0
attr = A, SA
animtype  = Back
damage    = 96, 12
priority  = 5
guardflag = MA
pausetime = 6,6
sparkno = S7200
sparkxy = 0,-40
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2.45,-4.7
air.velocity = -2.3,-3.7
guard.hittime  = 12
fall = 1
air.fall = 1
getpower = 0,0
givepower = 20,0

[State 1000, BackLayer]
type = Explod
trigger1 = Var(7) = 0
trigger1 = NumExplod(7220) = 0
trigger1 = movehit
anim = 7220
id = 7220
postype = p2
pos = floor(enemy,const(size.mid.pos.x)),floor(enemy,const(size.mid.pos.y)-14.0)
facing = -1
bindtime = -1
removetime = -2
sprpriority = -1
shadow = -1
ignorehitpause = 1
ownpal = 1

[State 1050, 4]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
movetype = I

[State 1050, 4]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
physics = N

[State 1050, 4]
type = StateTypeSet
trigger1 = Pos Y >= 0
statetype = C
physics = C

[State 1050, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; シューティングピーチ（中）
;---------------------------------------------------------------------------
[Statedef 1060]
type    = S
movetype= A
physics = S
;juggle  = ifelse(Var(7) = 0,4,0)
poweradd= ifelse(Var(7) != 0, 0, ifelse(Var(59) = 0, 84, 128))
velset = 0,0
anim = 1060
ctrl = 0
sprpriority = 2

[State 1060, 7]
type = ChangeState
trigger1 = Time = 1
value = 1061

[Statedef 1061]
type    = S
movetype= A
physics = N
juggle  = ifelse(Var(7) = 0,4,0)
ctrl = 0
sprpriority = 2

[State 1060, 1]
type = PlaySnd
trigger1 = Time = 0
value = 0,3

[State 1060, 1]
type = PlaySnd
trigger1 = Time = 1
value = 100,3
channel = 0



[State 1060, 1]
type = PosSet
trigger1 = pos y > 0
trigger2 = AnimElemTime(5) > 0
y = 0

[State 1060, 1]
type = VelSet
trigger1 = AnimElemTime(5) = 0
y = 0


[State 1060, 1]
type = VelSet
trigger1 = AnimElemTime(2) = 1
y = -6.12

[State 1060, 1]
type = VelAdd
trigger1 = Pos Y < 0
trigger1 = AnimElemTime(1) > 0  && AnimElemTime(5) < 0
y = 0.85

[State 1060, 1]
type = PosAdd
trigger1 = AnimElemTime(3) = 0
y = -29

;54,time=18


[State 1060, 1]
type = PosAdd
trigger1 = AnimElemTime(2) > 0
trigger1 = AnimElemTime(5) < 0
x = 4.56

[State 1060, 7]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, SA
animtype  = Back
damage    = 102, 13
priority  = 5
guardflag = MA
pausetime = 12,12
sparkno = S7200
sparkxy = 0,-40
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.0,-3.7
air.velocity = -5.1,-2.7
guard.hittime  = 13
fall = 1
air.fall = 1
getpower = 60 + ifelse(Var(59) = 0, 0, 20),30
givepower = 20,0

[State 1060, 7]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, SA
animtype  = Back
damage    = 115, 13
priority  = 5
guardflag = MA
pausetime = 12,12
sparkno = S7200
sparkxy = 0,-40
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 17
ground.velocity = -5.0,-3.7
air.velocity = -5.1,-2.7
guard.hittime  = 13
fall = 1
air.fall = 1
getpower = 60 + ifelse(Var(59) = 0, 0, 20),30
givepower = 20,0

[State 1060, 7]
type = HitDef
trigger1 = time = 0
trigger1 = Var(7) != 0
attr = A, SA
animtype  = Back
damage    = 102, 13
priority  = 5
guardflag = MA
pausetime = 6,6
sparkno = S7200
sparkxy = 0,-40
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2.5,-4.7
air.velocity = -2.35,-3.7
guard.hittime  = 13
fall = 1
air.fall = 1
getpower = 0,0
givepower = 20,0

[State 1000, BackLayer]
type = Explod
trigger1 = Var(7) = 0
trigger1 = NumExplod(7220) = 0
trigger1 = movehit
anim = 7220
id = 7220
postype = p2
pos = floor(enemy,const(size.mid.pos.x)),floor(enemy,const(size.mid.pos.y)-14.0)
facing = -1
bindtime = -1
removetime = -2
sprpriority = -1
shadow = -1
ignorehitpause = 1
ownpal = 1

[State 1060, 4]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
movetype = I

[State 1060, 4]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
physics = N

[State 1060, 4]
type = StateTypeSet
trigger1 = Pos Y >= 0
statetype = C
physics = C

[State 1060, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; シューティングピーチ（強）
;---------------------------------------------------------------------------
[Statedef 1070]
type    = S
movetype= A
physics = N
;juggle  = ifelse(Var(7) = 0,4,0)
poweradd= ifelse(Var(7) != 0, 0, ifelse(Var(59) = 0, 84, 156))
velset = 0,0
anim = 1070
ctrl = 0
sprpriority = 2

[State 1070, 7]
type = ChangeState
trigger1 = Time = 1
value = 1071

[Statedef 1071]
type    = S
movetype= A
physics = N
juggle  = ifelse(Var(7) = 0,4,0)
ctrl = 0
sprpriority = 2

[State 1070, 1]
type = PlaySnd
trigger1 = Time = 0
value = 0,3

[State 1070, 1]
type = PlaySnd
trigger1 = Time = 1
value = 100,3
channel = 0


[State 1070, 1]
type = PosSet
trigger1 = pos y > 0
trigger2 = AnimElemTime(5) > 0
y = 0

[State 1070, 1]
type = VelSet
trigger1 = AnimElemTime(5) = 0
y = 0


[State 1070, 1]
type = VelSet
trigger1 = AnimElemTime(2) = 1
y = -7.92

[State 1070, 1]
type = VelAdd
trigger1 = Pos Y < 0
trigger1 = AnimElemTime(1) > 0  && AnimElemTime(5) < 0
y = 0.97

[State 1070, 1]
type = PosAdd
trigger1 = AnimElemTime(3) = 0
y = -29

;65,time=20



[State 1070, 1]
type = PosAdd
trigger1 = AnimElemTime(2) > 0
trigger1 = AnimElemTime(5) < 0
x = 4.71

[State 1070, 6]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, SA
animtype  = Back
damage    = 108, 14
priority  = 5
guardflag = MA
pausetime = 12,12
sparkno = S7200
sparkxy = 0,-40
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.1,-3.7
air.velocity = -5.2,-2.7
guard.hittime  = 13
fall = 1
air.fall = 1
getpower = 60 + ifelse(Var(59) = 0, 0, 20),30
givepower = 20,0

[State 1070, 6]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, SA
animtype  = Back
damage    = 121, 14
priority  = 5
guardflag = MA
pausetime = 12,12
sparkno = S7200
sparkxy = 0,-40
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 17
ground.velocity = -5.1,-3.7
air.velocity = -5.2,-2.7
guard.hittime  = 13
fall = 1
air.fall = 1
getpower = 60 + ifelse(Var(59) = 0, 0, 20),30
givepower = 20,0

[State 1070, 6]
type = HitDef
trigger1 = time = 0
trigger1 = Var(7) != 0
attr = A, SA
animtype  = Back
damage    = 108, 14
priority  = 5
guardflag = MA
pausetime = 6,6
sparkno = S7200
sparkxy = 0,-40
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2.55,-4.7
air.velocity = -2.4,-3.7
guard.hittime  = 13
fall = 1
air.fall = 1
getpower = 0,0
givepower = 20,0

[State 1000, BackLayer]
type = Explod
trigger1 = Var(7) = 0
trigger1 = NumExplod(7220) = 0
trigger1 = movehit
anim = 7220
id = 7220
postype = p2
pos = floor(enemy,const(size.mid.pos.x)),floor(enemy,const(size.mid.pos.y)-14.0)
facing = -1
bindtime = -1
removetime = -2
sprpriority = -1
shadow = -1
ignorehitpause = 1
ownpal = 1

[State 1070, 4]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
movetype = I

[State 1070, 4]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
physics = N

[State 1070, 4]
type = StateTypeSet
trigger1 = Pos Y >= 0
statetype = C
physics = C

[State 1070, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;===========================================================================
;---------------------------------------------------------------------------
; ウイングレスエアプレーン（掴み）
;---------------------------------------------------------------------------
[Statedef 1100]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= ifelse(Var(7) != 0, 0, ifelse(Var(59) = 0, 20, 64))
ctrl = 0
anim = 1100
sprpriority = 2

[State 1100, 1]
type = HitDef
Trigger1 = Time = 0
attr = A, ST
hitflag = A-
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 1110
p2stateno = 1120
guard.dist = 0
fall = 1

[State 1050, 1]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 100,2
channel = 0

;---------------------------------------------------------------------------
;ウイングレスエアプレーン（キャッチ→着地直前）
;---------------------------------------------------------------------------
[Statedef 1110]
type    = A
movetype= A
physics = N
anim = 1110
velset = 0,0
sprpriority = 3

[State 1110, Gravity]
type = VelAdd
trigger1 = AnimElemTime(6) > 0
y = 0.44

[State 1110, Grab Sound]
type = PlaySnd
trigger1 = Time = 0
value = 2,0

[State 1110, 1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 4
value = 100,9
channel = 0

[State 1110, PosSet]
type = PosSet
trigger1 = Time = 0
x = (Target,Pos X)
y = ((Target,Pos Y) + (Target,Const(size.head.pos.y)))+99

[State 1110, PosSet];低空過ぎる時
type = PosSet
trigger1 = Time = 0
trigger1 = Pos Y > -15
y = -18

[State 1110, Bind]
type = TargetBind
trigger1 = Time >= 0
pos = 0, -99

[State 1110, State End]
type = ChangeState
trigger1 = Pos Y >= 0
value = 1111

;---------------------------------------------------------------------------
;ウイングレスエアプレーン（着地→）
;---------------------------------------------------------------------------
[Statedef 1111]
type    = A
movetype= H
physics = N
velset = 0,0
anim = 1115
sprpriority = 2

[State 881, TargetState]
type = TargetState
trigger1 = Time = 0
value = 1121

[State 1111, HitG Sound]
type = PlaySnd
trigger1 = Time = 3
value = 40,8

[State 1111, ShockWave]
type = Explod
trigger1 = Time = 3
anim = 7500
id = 7500
postype = p1
pos = -76,0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
shadow = -1
ownpal = 1
[State 1111, ShockWave]
type = Explod
trigger1 = Time = 3
anim = 7510
id = 7510
postype = p1
pos = -76,0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 0
shadow = -1
ownpal = 1

[State 1111, Shake]
type = EnvShake
trigger1 = Time = 3
time = 21

[State 1111, Bind]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
pos = -36,-84

[State 1111, Bind]
type = TargetBind
trigger1 = AnimElemTime(2) = [0,2]
pos = -43,-9

[State 1111, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 0
value = ifelse(Var(59)=0,-132,ifelse(Var(59)=1,-158,-106))

[State 1111, Pos]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1111, Turn]
type = Turn
trigger1 = AnimTime = 0

[State 1111, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;ウイングレスエアプレーンくらい側
;---------------------------------------------------------------------------
[Statedef 1120]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 870, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1120

;---------------------------------------------------------------------------
;ウイングレスエアプレーンくらい側２
;---------------------------------------------------------------------------
[Statedef 1121]
type    = A
movetype= H
physics = N
sprpriority = 2

[State 1125, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1125

[State 1125, 1]
type = PosSet
Trigger1 = AnimElemTime(3) = 0
y = -1.0

[State 1125, 1]
type = VelSet
Trigger1 = AnimElemTime(3) = 0
x = 4.2
y = -6.3

[State 1125, 1] ;Gravity
type = VelAdd
Trigger1 = AnimElemTime(3) > 0
y = .4

[State 1125, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Time > 31
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 1125, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Time > 31
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 1125, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground



;===========================================================================
;---------------------------------------------------------------------------
; パラダイスホールド（弱）
;---------------------------------------------------------------------------
[Statedef 1200]
type    = S
movetype= A
physics = N
juggle  = ifelse(Var(7) = 0,4,0)
poweradd= ifelse(Var(7) = 0,20,0)
velset = 0,0
anim = 1200
ctrl = 0
sprpriority = 3


[State 1200, BackLayer]
type = Explod
trigger1 = Time = 0
anim = 1201
id = 1200
postype = p1
pos = 0, 0
facing = 1
bindtime = -1
removetime = -2
sprpriority = 1
removeongethit = 1
shadow = 1


[State 1200, 4]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
physics = N

[State 1200, 4]
type = StateTypeSet
trigger1 = Pos Y >= 0
statetype = S
physics = S


[State 1200, 1]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 1200, 1]
type = VelSet
trigger1 = AnimElemTime(1) = 2
y = -3.86

[State 1200, 1]
type = VelAdd
trigger1 = Pos Y < 0
trigger1 = AnimElemTime(1) > 1
trigger1 = AnimElemTime(4) < 3
y = 0.62

[State 1200, 1]
type = VelSet
trigger1 = AnimElemTime(4) = 3
trigger2 = AnimElemTime(9) = 0
y = 0


[State 1200, 1]
type = VelSet
trigger1 = AnimElemTime(6) = 0
y = -6.24

[State 1200, 1]
type = VelAdd
trigger1 = Pos Y < 0
trigger1 = AnimElemTime(6) > 0  && AnimElemTime(9) < 0
y = 0.599

;35,time=22

[State 1200, 1]
type = PosAdd
trigger1 = AnimElemTime(1) > 1
trigger1 = AnimElemTime(4) < 3
x = 1.79
;x = 4.57

[State 1200, 1]
type = PosAdd
trigger1 = AnimElemTime(6) > 0
trigger1 = AnimElemTime(10) < 1
x = 1.935

[State 1200, 1]
type = HitDef
Trigger1 = Time = 0
trigger1 = Var(7) = 0
attr = S, ST
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 1210
p2stateno = 1220
guard.dist = 0
fall = 1

[State 1200, 1]
type = HitDef
Trigger1 = Time = 0
trigger1 = Var(7) != 0
attr = S, ST
hitflag = MFD
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 1210
p2stateno = 1220
guard.dist = 0
fall = 1

[State 1200, 4]
type = StateTypeSet
trigger1 = AnimElemTime(6) = 0
movetype = I

[State 1200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;パラダイスホールドキャッチ後（弱）
;---------------------------------------------------------------------------
[Statedef 1210]
type    = C
movetype= A
physics = N
anim = 1210
sprpriority = 3
velset = 0,0

[State 1210, BackLayerRemove]
type = RemoveExplod
trigger1 = Time = 0
id = 1200

[State 1210, BackLayer]
type = Explod
trigger1 = Time = 0
anim = 1211
postype = p1
pos = 0, 0
facing = 1
bindtime = -1
removetime = -2
sprpriority = 1
removeongethit = 1
shadow = 1

[State 1210, Grab Sound]
type = PlaySnd
trigger1 = time = 1
value = 2,0

[State 1210, PosSet]
type = PosSet
trigger1 = Time = 0
x = (Target,Pos X) + ((Target,facing) * (Target,Const(size.head.pos.x)))
y = (Target,Const(size.head.pos.y)) + 65.0

[State 1210, Width]
type = Width
trigger1 = AnimElemTime(4) = 0
edge = (Target,Const(size.ground.back)+Target,Const(size.ground.front)) + 20, 0

[State 1210, HitG Sound]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
trigger2 = AnimElemTime(13) = 0
value = 40,8

[State 1210, Voice]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 100,13
channel = 0

[State 1210, Voice]
type = PlaySnd
trigger1 = AnimElemTime(13) = 0
value = 100,12
channel = 0

[State 1210, Pos]
type = PosSet
trigger1 = AnimElemTime(4) = 0
y = 0

[State 1210, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(4) = 0
x = (Target,Const(size.ground.front))

[State 1210, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(10) >= 1
trigger1 = AnimElemTime(13) < 0
x = 2.4

[State 1210, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(14) >= 1
trigger1 = AnimElemTime(18) < 0
x = -2.76

[State 1210, Bind]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0
trigger1 = AnimElemTime(9) < 0
pos = -15,-15

[State 1210, Bind]
type = TargetBind
trigger1 = AnimElemTime(9) >= 0
trigger1 = AnimElemTime(10) < 0
pos = -20,-28

[State 1210, Bind]
type = TargetBind
trigger1 = AnimElemTime(10) >= 0
trigger1 = AnimElemTime(11) < 0
pos = -10,-33

[State 1210, Bind]
type = TargetBind
trigger1 = AnimElemTime(11) >= 0
trigger1 = AnimElemTime(12) < 0
pos = 7,-40

[State 1210, Bind]
type = TargetBind
trigger1 = AnimElemTime(12) >= 0
trigger1 = AnimElemTime(13) < 0
pos = 14,-23

[State 1210, Bind]
type = TargetBind
trigger1 = AnimElemTime(13) = 0
pos = 15,-15

[State 1210, LifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(13) = 0
value = ifelse(Var(59) = 0, -120, ifelse(Var(59) = 1,-144,-96))

[State 1210, ShockWave]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 7500
id = 7500
postype = p1
pos = -15,0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
shadow = -1
ownpal = 1
[State 1210, ShockWave]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 7510
id = 7510
postype = p1
pos = -15,0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 0
shadow = -1
ownpal = 1

[State 1210, ShockWave]
type = Explod
trigger1 = AnimElemTime(13) = 0
anim = 7500
id = 7500
postype = p1
pos = 30,0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
shadow = -1
ownpal = 1
[State 1210, ShockWave]
type = Explod
trigger1 = AnimElemTime(13) = 0
anim = 7510
id = 7510
postype = p1
pos = 30,0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 0
shadow = -1
ownpal = 1

[State 861, Shake]
type = EnvShake
trigger1 = AnimElemTime(4) = 0
time = 15
[State 861, Shake]
type = EnvShake
trigger1 = AnimElemTime(13) = 0
time = 21


[State 861, TargetState]
type = TargetState
trigger1 = AnimElemTime(13) = 6
value = 1225

[State 1210, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
;パラダイスホールドくらい側
;---------------------------------------------------------------------------
[Statedef 1220]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 1220, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1220

;---------------------------------------------------------------------------
;パラダイスホールドくらい側２
;---------------------------------------------------------------------------
[Statedef 1225]
type    = A
movetype= H
physics = N
sprpriority = 2

[State 1225, 1]
type = PosSet
Trigger1 = Time = 0
y = -1.0

[State 1225, 1]
type = turn
Trigger1 = AnimElemTime(14) = 0

[State 1225, 1]
type = PosAdd
Trigger1 = AnimElemTime(14) = 0
x = 12.0

[State 1225, 1]
type = VelSet
Trigger1 = AnimElemTime(14) = 0
x = 6.4
y = -4.5

[State 1225, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 1225, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground


;---------------------------------------------------------------------------
; パラダイスホールド（中）
;---------------------------------------------------------------------------
[Statedef 1230]
type    = S
movetype= A
physics = N
juggle  = ifelse(Var(7) = 0,4,0)
poweradd= ifelse(Var(7) = 0,20,0)
velset = 0,0
anim = 1200
ctrl = 0
sprpriority = 3


[State 1230, BackLayer]
type = Explod
trigger1 = Time = 0
anim = 1201
id = 1200
postype = p1
pos = 0, 0
facing = 1
bindtime = -1
removetime = -2
sprpriority = 1
removeongethit = 1
shadow = 1


[State 1230, 4]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
physics = N

[State 1230, 4]
type = StateTypeSet
trigger1 = Pos Y >= 0
statetype = S
physics = S


[State 1230, 1]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 1230, 1]
type = VelSet
trigger1 = AnimElemTime(1) = 2
y = -3.86

[State 1230, 1]
type = VelAdd
trigger1 = Pos Y < 0
trigger1 = AnimElemTime(1) > 1
trigger1 = AnimElemTime(4) < 3
y = 0.62

[State 1230, 1]
type = VelSet
trigger1 = AnimElemTime(4) = 3
trigger2 = AnimElemTime(9) = 0
y = 0


[State 1230, 1]
type = VelSet
trigger1 = AnimElemTime(6) = 0
y = -6.24

[State 1230, 1]
type = VelAdd
trigger1 = Pos Y < 0
trigger1 = AnimElemTime(6) > 0  && AnimElemTime(9) < 0
y = 0.599

;35,time=22

[State 1230, 1]
type = PosAdd
trigger1 = AnimElemTime(1) > 1
trigger1 = AnimElemTime(4) < 3
x = 2.94
;x = 4.57

[State 1230, 1]
type = PosAdd
trigger1 = AnimElemTime(6) > 0
trigger1 = AnimElemTime(10) < 1
x = 3.152

[State 1230, 1]
type = HitDef
Trigger1 = Time = 0
trigger1 = Var(7) = 0
attr = S, ST
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 1235
p2stateno = 1220
guard.dist = 0
fall = 1

[State 1230, 1]
type = HitDef
Trigger1 = Time = 0
trigger1 = Var(7) != 0
attr = S, ST
hitflag = MFD
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 1235
p2stateno = 1220
guard.dist = 0
fall = 1

[State 1230, 4]
type = StateTypeSet
trigger1 = AnimElemTime(6) = 0
movetype = I

[State 1230, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;パラダイスホールドキャッチ後（中）
;---------------------------------------------------------------------------
[Statedef 1235]
type    = C
movetype= A
physics = N
anim = 1210
sprpriority = 3
velset = 0,0

[State 1235, BackLayerRemove]
type = RemoveExplod
trigger1 = Time = 0
id = 1200

[State 1235, BackLayer]
type = Explod
trigger1 = Time = 0
anim = 1211
postype = p1
pos = 0, 0
facing = 1
bindtime = -1
removetime = -2
sprpriority = 1
removeongethit = 1
shadow = 1

[State 1235, Grab Sound]
type = PlaySnd
trigger1 = time = 1
value = 2,0

[State 1235, PosSet]
type = PosSet
trigger1 = Time = 0
x = (Target,Pos X) + ((Target,facing) * (Target,Const(size.head.pos.x)))
y = (Target,Const(size.head.pos.y)) + 65.0

[State 1235, Width]
type = Width
trigger1 = AnimElemTime(4) = 0
edge = (Target,Const(size.ground.back)+Target,Const(size.ground.front)) + 26, 0

[State 1235, Pos]
type = PosSet
trigger1 = AnimElemTime(4) = 0
y = 0

[State 1235, HitG Sound]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
trigger2 = AnimElemTime(13) = 0
value = 40,8

[State 1210, Voice]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 100,13
channel = 0

[State 1210, Voice]
type = PlaySnd
trigger1 = AnimElemTime(13) = 0
value = 100,12
channel = 0

[State 1235, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(4) = 0
x = (Target,Const(size.ground.front))

[State 1235, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(10) >= 1
trigger1 = AnimElemTime(13) < 0
x = 3.6

[State 1235, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(14) >= 1
trigger1 = AnimElemTime(18) < 0
x = -3.95

[State 1235, Bind]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0
trigger1 = AnimElemTime(9) < 0
pos = -15,-15

[State 1235, Bind]
type = TargetBind
trigger1 = AnimElemTime(9) >= 0
trigger1 = AnimElemTime(10) < 0
pos = -20,-28

[State 1235, Bind]
type = TargetBind
trigger1 = AnimElemTime(10) >= 0
trigger1 = AnimElemTime(11) < 0
pos = -10,-33

[State 1235, Bind]
type = TargetBind
trigger1 = AnimElemTime(11) >= 0
trigger1 = AnimElemTime(12) < 0
pos = 7,-40

[State 1235, Bind]
type = TargetBind
trigger1 = AnimElemTime(12) >= 0
trigger1 = AnimElemTime(13) < 0
pos = 14,-23

[State 1235, Bind]
type = TargetBind
trigger1 = AnimElemTime(13) = 0
pos = 15,-15

[State 1235, LifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(13) = 0
value = ifelse(Var(59) = 0, -132, ifelse(Var(59) = 1,-158,-106))

[State 1235, TargetState]
type = TargetState
trigger1 = AnimElemTime(13) = 6
value = 1225

[State 1210, ShockWave]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 7500
id = 7500
postype = p1
pos = -15,0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
shadow = -1
ownpal = 1
[State 1210, ShockWave]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 7510
id = 7510
postype = p1
pos = -15,0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 0
shadow = -1
ownpal = 1

[State 1210, ShockWave]
type = Explod
trigger1 = AnimElemTime(13) = 0
anim = 7500
id = 7500
postype = p1
pos = 32,0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
shadow = -1
ownpal = 1
[State 1210, ShockWave]
type = Explod
trigger1 = AnimElemTime(13) = 0
anim = 7510
id = 7510
postype = p1
pos = 32,0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 0
shadow = -1
ownpal = 1

[State 861, Shake]
type = EnvShake
trigger1 = AnimElemTime(4) = 0
time = 15
[State 861, Shake]
type = EnvShake
trigger1 = AnimElemTime(13) = 0
time = 21

[State 1235, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; パラダイスホールド（強）
;---------------------------------------------------------------------------
[Statedef 1240]
type    = S
movetype= A
physics = N
juggle  = ifelse(Var(7) = 0,4,0)
poweradd= ifelse(Var(7) = 0,20,0)
velset = 0,0
anim = 1200
ctrl = 0
sprpriority = 3


[State 1240, BackLayer]
type = Explod
trigger1 = Time = 0
anim = 1201
id = 1200
postype = p1
pos = 0, 0
facing = 1
bindtime = -1
removetime = -2
sprpriority = 1
removeongethit = 1
shadow = 1


[State 1240, 4]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
physics = N

[State 1240, 4]
type = StateTypeSet
trigger1 = Pos Y >= 0
statetype = S
physics = S


[State 1240, 1]
type = PosSet
trigger1 = pos y > 0
y = 0

[State 1240, 1]
type = VelSet
trigger1 = AnimElemTime(1) = 2
y = -3.86

[State 1240, 1]
type = VelAdd
trigger1 = Pos Y < 0
trigger1 = AnimElemTime(1) > 1
trigger1 = AnimElemTime(4) < 3
y = 0.62

[State 1240, 1]
type = VelSet
trigger1 = AnimElemTime(4) = 3
trigger2 = AnimElemTime(9) = 0
y = 0


[State 1240, 1]
type = VelSet
trigger1 = AnimElemTime(6) = 0
y = -6.24

[State 1240, 1]
type = VelAdd
trigger1 = Pos Y < 0
trigger1 = AnimElemTime(6) > 0  && AnimElemTime(9) < 0
y = 0.599

;35,time=22

[State 1240, 1]
type = PosAdd
trigger1 = AnimElemTime(1) > 1
trigger1 = AnimElemTime(4) < 3
x = 4.07

[State 1240, 1]
type = PosAdd
trigger1 = AnimElemTime(6) > 0
trigger1 = AnimElemTime(10) < 1
x = 4.271

[State 1240, 1]
type = HitDef
Trigger1 = Time = 0
trigger1 = Var(7) = 0
attr = S, ST
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 1245
p2stateno = 1220
guard.dist = 0
fall = 1

[State 1240, 1]
type = HitDef
Trigger1 = Time = 0
trigger1 = Var(7) != 0
attr = S, ST
hitflag = MFD
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 1245
p2stateno = 1220
guard.dist = 0
fall = 1

[State 1240, 4]
type = StateTypeSet
trigger1 = AnimElemTime(6) = 0
movetype = I

[State 1240, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;パラダイスホールドキャッチ後（強）
;---------------------------------------------------------------------------
[Statedef 1245]
type    = C
movetype= A
physics = N
anim = 1210
sprpriority = 3
velset = 0,0

[State 1245, BackLayerRemove]
type = RemoveExplod
trigger1 = Time = 0
id = 1200

[State 1245, BackLayer]
type = Explod
trigger1 = Time = 0
anim = 1211
postype = p1
pos = 0, 0
facing = 1
bindtime = -1
removetime = -2
sprpriority = 1
removeongethit = 1
shadow = 1

[State 1245, Grab Sound]
type = PlaySnd
trigger1 = time = 1
value = 2,0

[State 1245, PosSet]
type = PosSet
trigger1 = Time = 0
x = (Target,Pos X) + ((Target,facing) * (Target,Const(size.head.pos.x)))
y = (Target,Const(size.head.pos.y)) + 65.0

[State 1245, Width]
type = Width
trigger1 = AnimElemTime(4) = 0
edge = (Target,Const(size.ground.back)+Target,Const(size.ground.front)) + 32, 0

[State 1245, Pos]
type = PosSet
trigger1 = AnimElemTime(4) = 0
y = 0

[State 1245, HitG Sound]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
trigger2 = AnimElemTime(13) = 0
value = 40,8

[State 1210, Voice]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 100,13
channel = 0

[State 1210, Voice]
type = PlaySnd
trigger1 = AnimElemTime(13) = 0
value = 100,12
channel = 0

[State 1245, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(4) = 0
x = (Target,Const(size.ground.front))

[State 1245, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(10) >= 1
trigger1 = AnimElemTime(13) < 0
x = 4.8

[State 1245, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(14) >= 1
trigger1 = AnimElemTime(18) < 0
x = -5.15

[State 1245, Bind]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0
trigger1 = AnimElemTime(9) < 0
pos = -15,-15

[State 1245, Bind]
type = TargetBind
trigger1 = AnimElemTime(9) >= 0
trigger1 = AnimElemTime(10) < 0
pos = -20,-28

[State 1245, Bind]
type = TargetBind
trigger1 = AnimElemTime(10) >= 0
trigger1 = AnimElemTime(11) < 0
pos = -10,-33

[State 1245, Bind]
type = TargetBind
trigger1 = AnimElemTime(11) >= 0
trigger1 = AnimElemTime(12) < 0
pos = 7,-40

[State 1245, Bind]
type = TargetBind
trigger1 = AnimElemTime(12) >= 0
trigger1 = AnimElemTime(13) < 0
pos = 14,-23

[State 1245, Bind]
type = TargetBind
trigger1 = AnimElemTime(13) = 0
pos = 15,-15

[State 1245, LifeAdd]
type = TargetLifeAdd
trigger1 = AnimElemTime(13) = 0
value = ifelse(Var(59) = 0, -144, ifelse(Var(59) = 1,-172,-116))

[State 1245, TargetState]
type = TargetState
trigger1 = AnimElemTime(13) = 6
value = 1225

[State 1210, ShockWave]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 7500
id = 7500
postype = p1
pos = -15,0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
shadow = -1
ownpal = 1
[State 1210, ShockWave]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 7510
id = 7510
postype = p1
pos = -15,0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 0
shadow = -1
ownpal = 1

[State 1210, ShockWave]
type = Explod
trigger1 = AnimElemTime(13) = 0
anim = 7500
id = 7500
postype = p1
pos = 35,0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
shadow = -1
ownpal = 1
[State 1210, ShockWave]
type = Explod
trigger1 = AnimElemTime(13) = 0
anim = 7510
id = 7510
postype = p1
pos = 35,0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 0
shadow = -1
ownpal = 1

[State 861, Shake]
type = EnvShake
trigger1 = AnimElemTime(4) = 0
time = 15
[State 861, Shake]
type = EnvShake
trigger1 = AnimElemTime(13) = 0
time = 21

[State 1245, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1



;===========================================================================
;---------------------------------------------------------------------------
; デイドリームヘッドロック
;---------------------------------------------------------------------------
;弱掴み
;---------------------------------------------------------------------------
[Statedef 1300]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= ifelse(Var(7) != 0, 0, ifelse(Var(59) = 0, 20, 64))
velset = 0,0
ctrl = 0
anim = 1300
sprpriority = 2

[State 1300, 1]
type = HitDef
Trigger1 = Time = 0
trigger1 = Var(7) = 0
attr = S, ST
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 1310
p2stateno = 1320
guard.dist = 0
fall = 1

[State 1300, 1]
type = HitDef
Trigger1 = Time = 0
trigger1 = Var(7) != 0
attr = S, ST
hitflag = MFD
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 1310
p2stateno = 1320
guard.dist = 0
fall = 1

[State 1300, Miss Voice]
type = PlaySnd
Trigger1 = AnimElemTime(5) = 0
value = 100,2
channel = 0

[State 1300, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;中掴み
;---------------------------------------------------------------------------
[Statedef 1302]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= ifelse(Var(7) != 0, 0, ifelse(Var(59) = 0, 20, 64))
velset = 0,0
ctrl = 0
anim = 1300
sprpriority = 2

[State 1300, 1]
type = HitDef
Trigger1 = Time = 0
trigger1 = Var(7) = 0
attr = S, ST
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 1330
p2stateno = 1320
guard.dist = 0
fall = 1

[State 1300, 1]
type = HitDef
Trigger1 = Time = 0
trigger1 = Var(7) != 0
attr = S, ST
hitflag = MFD
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 1330
p2stateno = 1320
guard.dist = 0
fall = 1

[State 1302, Miss Voice]
type = PlaySnd
Trigger1 = AnimElemTime(5) = 0
value = 100,2
channel = 0

[State 1302, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;強掴み
;---------------------------------------------------------------------------
[Statedef 1304]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= ifelse(Var(7) != 0, 0, ifelse(Var(59) = 0, 20, 64))
velset = 0,0
ctrl = 0
anim = 1300
sprpriority = 2

[State 1304, 1]
type = HitDef
Trigger1 = Time = 0
trigger1 = Var(7) = 0
attr = S, ST
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 1340
p2stateno = 1320
guard.dist = 0
fall = 1

[State 1304, 1]
type = HitDef
Trigger1 = Time = 0
trigger1 = Var(7) != 0
attr = S, ST
hitflag = MFD
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 1340
p2stateno = 1320
guard.dist = 0
fall = 1

[State 1304, Miss Voice]
type = PlaySnd
Trigger1 = AnimElemTime(5) = 0
value = 100,2
channel = 0

[State 1304, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; デイドリーム	ヘッドロック（弱キャッチ後）
;---------------------------------------------------------------------------
[Statedef 1310]
type    = S
movetype= A
physics = N
anim = 1310
sprpriority = 3
velse = 0,0

[State 1310, NotHitBy]
type = NotHitBy
trigger1 = 1
time = 1
value = ,AA,AT,AP

[State 1310, Bind]
type = TargetBind
trigger1 = Time = 0
pos = (Target,Const(size.ground.front)), 0

[State 1310, Grab Sound]
type = PlaySnd
trigger1 = time = 1
value = 2,0

[State 1310, VarSet]
type = VarSet
trigger1 = Time = 0
v = 0
value = 80

[State 1310, Bind]
type = TargetBind
trigger1 = Time = 0
pos = (Target,Const(size.ground.front)), 0

[State 1310, Width]
type = Width
trigger1 = Time = 0
edge = (Target,Const(size.ground.back)+Target,Const(size.ground.front)) + 40, 0

[State 1310, TargetState]
type = TargetState
trigger1 = AnimTime = 0
value = 1321

[State 1310, PosAdd]
type = PosAdd
trigger1 = AnimTime = 0
x = (Target,Const(size.ground.back)+Target,Const(size.ground.front)) + 23

[State 1310, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1311

;---------------------------------------------------------------------------
;デイドリームヘッドロック（絞め）
;---------------------------------------------------------------------------
[Statedef 1311]
type    = S
movetype= A
physics = N
anim = 1311
sprpriority = 3

[State 1310, NotHitBy]
type = NotHitBy
trigger1 = 1
time = 1
value = ,AA,AT,AP

[State 1311, VarSet]
type = turn
trigger1 = Time = 0

[State 1311, VarSet]	;elem
type = VarSet
trigger1 = 1
v = 1
value = AnimElemNo(1)

[State 1311, AnyInput]
type = ChangeAnim
trigger1 = command = "any"
trigger1 = AnimElemNo(1) != 28
value = 1311
elem = ifelse(Var(1) = 26, 1, var(1) + 1)

[State 1311, Flash]
type = PalFX
trigger1 = command = "any"
trigger1 = AnimElemNo(1) != 28
time = 1
add = 128,128,128
mul = 180,180,180

[State 1311, AnyInput]	;敵のレバガチャ
type = VarAdd
trigger1 = Target,stateno = [1324,1326]
v = 0
value = ifelse(Var(0) > 1,-1,0)

[State 1311, Bind]
type = TargetBind
trigger1 = AnimElemNo(1) = [1,7]
pos = 12,-84

[State 1311, Bind]
type = TargetBind
trigger1 = AnimElemNo(1) = [8,11]
pos = 17,-81

[State 1311, Bind]
type = TargetBind
trigger1 = AnimElemNo(1) = [14,28]
pos = 16,-80

[State 1311, TargetState]
type = TargetState
triggerall = Target,stateno != 1321
triggerall = Target,stateno != 1324
trigger1 = AnimElemNo(1) = [1,7]
value = 1321

[State 1311, TargetState]
type = TargetState
triggerall = Target,stateno != 1322
triggerall = Target,stateno != 1325
trigger1 = AnimElemNo(1) = [8,11]
value = 1322

[State 1311, TargetLifeAdd]
type = TargetLifeAdd
triggerall = Target,stateno != 1323
triggerall = Target,stateno != 1326
trigger1 = AnimElemNo(1) = [14,28]
value = ifelse(Var(59) = 0, -18, ifelse(Var(59) = 1,-20,-16))
kill = 0

[State 1311, BackLayer]
type = Explod
triggerall = Target,stateno != 1323
triggerall = Target,stateno != 1326
trigger1 = AnimElemNo(1) = [14,28]
anim = 7220
id = 7220
postype = p1
pos = 16,-80
facing = -1
bindtime = -1
removetime = -2
sprpriority = -1
shadow = -1
ignorehitpause = 1
ownpal = 1

[State 1311, HitSound]
type = PlaySnd
triggerall = Target,stateno != 1323
triggerall = Target,stateno != 1326
trigger1 = AnimElemNo(1) = [14,28]
trigger1 = HitCount != -1
value = 100,15
channel = 0

[State 1311, HitSpark]
type = Explod
triggerall = Target,stateno != 1323
triggerall = Target,stateno != 1326
trigger1 = AnimElemNo(1) = [14,28]
anim = 7200
id = 7200
postype = p1
pos = 20, -82
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
shadow = -1
ownpal = 1

[State 1311, HitSound]
type = PlaySnd
triggerall = Target,stateno != 1323
triggerall = Target,stateno != 1326
trigger1 = AnimElemNo(1) = [14,28]
value = 2,2
[State 1311, HitCount]
type = HitAdd
trigger1 = Time = 0
value = -1
[State 1311, HitCount]
type = HitAdd
triggerall = Target,stateno != 1323
triggerall = Target,stateno != 1326
trigger1 = AnimElemNo(1) = [14,28]
value = 1


[State 1311, TargetState]
type = TargetState
triggerall = Target,stateno != 1323
triggerall = Target,stateno != 1326
trigger1 = AnimElemNo(1) = [14,28]
value = 1323


[State 1311, TargetState]
type = TargetState
trigger1 = Time >= Var(0)
trigger1 = AnimElemNo(1) = [14,28]
value = 1327

[State 1311, State End]
type = ChangeState
trigger1 = Time >= Var(0)
trigger1 = AnimElemNo(1) = [14,28]
value = 1317


;---------------------------------------------------------------------------
;デイドリームヘッドロック（絞め終わり）
;---------------------------------------------------------------------------
[Statedef 1317]
type    = S
movetype= A
physics = N
anim = 1317
sprpriority = 3

[State 1310, NotHitBy]
type = NotHitBy
trigger1 = 1
time = 1
value = ,AA,AT,AP

[State 1317, Bind]
type = TargetBind
trigger1 = AnimElemNo(1) = 1
pos = 18,-81

[State 1317, Bind]
type = TargetBind
trigger1 = AnimElemNo(1) = 2
pos = 13,-84

[State 1317, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1318

;---------------------------------------------------------------------------
;デイドリームヘッドロック（パフォーマンス→滞空中）
;---------------------------------------------------------------------------
[Statedef 1318]
type    = S
movetype= A
physics = N
anim = 1318
sprpriority = 3

[State 1310, Voice]
type = PlaySnd
trigger1 = Time = 0
value = 100,7
channel = 0

[State 1310, NotHitBy]
type = NotHitBy
trigger1 = 1
time = 1
value = ,AA,AT,AP

[State 1319, TargetState]
type = TargetState
trigger1 = Time = 0
value = 1328

[State 1318, Bind]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0
trigger1 = AnimElemTime(4) < 0
pos = 14,-71

[State 1318, Bind]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0
trigger1 = AnimElemTime(5) < 0
pos = 24,-67

[State 1318, Bind]
type = TargetBind
trigger1 = AnimElemTime(5) >= 0
trigger1 = AnimElemTime(6) < 0
pos = 11,-66

[State 1318, Bind]
type = TargetBind
trigger1 = AnimElemTime(6) >= 0
trigger1 = AnimElemTime(7) < 0
pos = 14, -71

[State 1318, Bind]
type = TargetBind
trigger1 = AnimElemTime(7) >= 0
trigger1 = AnimElemTime(8) < 0
pos = 0,-56

[State 1318, Bind]
type = TargetBind
trigger1 = AnimElemTime(8) >= 0
pos = -1,-75


[State 1318, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) >= 1
;x = 4.1
x = ifelse(Var(0) > 137,5.6,ifelse(Var(0) > 109,4.9,3.7))

[State 1318, VelSet]
type = VelSet
trigger1 = AnimElemTime(6) = 1
;y = -12.52
y = ifelse(Var(0) > 137,-12.52,ifelse(Var(0) > 109,-11.16,-10.1))

[State 1318, VelSet]
type = VelAdd
trigger1 = AnimElemTime(6) >= 1
y = 0.917

[State 1318, State End]
type = ChangeState
trigger1 = AnimElemTime(6) >= 5
trigger1 = Pos Y > 0
value = 1319


;---------------------------------------------------------------------------
;デイドリームヘッドロック着地
;---------------------------------------------------------------------------
[Statedef 1319]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 1319
sprpriority = 2

[State 1310, NotHitBy]
type = NotHitBy
trigger1 = 1
time = 1
value = ,AA,AT,AP

[State 1319, HitCount]
type = HitAdd
trigger1 = Time = 0
value = 1
[State 1310, HitG Sound]
type = PlaySnd
trigger1 = Time = 0
value = 40,8

[State 1319, Bind]
type = TargetBind
trigger1 = Time = 0
pos = -49,0

[State 1319, TargetState]
type = TargetState
trigger1 = Time = 2
value = 1329

[State 1319, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 0
value = ifelse(Var(59) = 0, -60, ifelse(Var(59) = 1,-72,-48))

[State 1319, Pos]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1319, ShockWave]
type = Explod
trigger1 = Time = 0
anim = 7500
id = 7500
postype = p1
pos = -36,0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
shadow = -1
ownpal = 1
[State 1319, ShockWave]
type = Explod
trigger1 = Time = 0
anim = 7510
id = 7510
postype = p1
pos = -36,0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 0
shadow = -1
ownpal = 1

[State 1319, Shake]
type = EnvShake
trigger1 = Time = 0
time = 18

[State 1319, Turn]
type = Turn
trigger1 = AnimTime = 0

[State 1319, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;デイドリームヘッドロックくらい側１
;---------------------------------------------------------------------------
[Statedef 1320]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 1320, 1]
type = PosSet
Trigger1 = Time = 0
y = 0

[State 1320, 1]
type = ScreenBound
Trigger1 = 1
value = 0

[State 1320, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1320

;---------------------------------------------------------------------------
;デイドリームヘッドロックくらい側２～
;---------------------------------------------------------------------------
[Statedef 1321]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 1321, 1]
type = ScreenBound
Trigger1 = 1
value = 0

[State 1321, AnyInput]
type = ChangeState
trigger1 = command = "any"
value = 1324

[State 1321, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1321

[Statedef 1322]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 1322, 1]
type = ScreenBound
Trigger1 = 1
value = 0

[State 1322, AnyInput]
type = ChangeState
trigger1 = command = "any"
value = 1325

[State 1322, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1322

[Statedef 1323]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 1323, 1]
type = ScreenBound
Trigger1 = 1
value = 0

[State 1323, AnyInput]
type = ChangeState
trigger1 = command = "any"
value = 1326

[State 1323, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1323

[Statedef 1324]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 1324, 1]
type = ScreenBound
Trigger1 = 1
value = 0

[State 1324, Flash]
type = PalFX
trigger1 = Time = 0
time = 1
add = 128,128,128
mul = 180,180,180

[State 1324, Return]
type = ChangeState
trigger1 = time = 1
value = 1321

[Statedef 1325]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 1325, 1]
type = ScreenBound
Trigger1 = 1
value = 0

[State 1325, Flash]
type = PalFX
trigger1 = Time = 0
time = 1
add = 128,128,128
mul = 180,180,180

[State 1325, Return]
type = ChangeState
trigger1 = time = 1
value = 1322

[Statedef 1326]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 1326, 1]
type = ScreenBound
Trigger1 = 1
value = 0

[State 1326, Flash]
type = PalFX
trigger1 = Time = 0
time = 1
add = 128,128,128
mul = 180,180,180

[State 1326, Return]
type = ChangeState
trigger1 = time = 1
value = 1323

;---------------------------------------------------------------------------
;デイドリームヘッドロックくらい側３
;---------------------------------------------------------------------------
[Statedef 1327]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 1327, 1]
type = ScreenBound
Trigger1 = 1
value = 0

[State 1327, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1327

;---------------------------------------------------------------------------
;デイドリームヘッドロックくらい側４
;---------------------------------------------------------------------------
[Statedef 1328]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 1328, 1]
type = turn
Trigger1 = Time = 0

[State 1328, 1]
type = ScreenBound
Trigger1 = 1
value = 0

[State 1328, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1328

;---------------------------------------------------------------------------
;デイドリームヘッドロックくらい側５
;---------------------------------------------------------------------------
[Statedef 1329]
type    = A
movetype= H
physics = N
velset = 4.8,-5.7
sprpriority = 2

[State 1329, 1]
type = PosSet
Trigger1 = Time = 0
y = -1.0

[State 1329, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1329

[State 1329, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .48

[State 1329, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground


;---------------------------------------------------------------------------
; デイドリームヘッドロック（中キャッチ後）
;---------------------------------------------------------------------------
[Statedef 1330]
type    = S
movetype= A
physics = N
anim = 1310
sprpriority = 3
velse = 0,0

[State 1310, NotHitBy]
type = NotHitBy
trigger1 = 1
time = 1
value = ,AA,AT,AP

[State 1330, Bind]
type = TargetBind
trigger1 = Time = 0
pos = (Target,Const(size.ground.front)), 0

[State 1330, Grab Sound]
type = PlaySnd
trigger1 = time = 1
value = 2,0

[State 1330, VarSet]
type = VarSet
trigger1 = Time = 0
v = 0
value = 110

[State 1330, Width]
type = Width
trigger1 = Time = 0
edge = (Target,Const(size.ground.back)+Target,Const(size.ground.front)) + 40, 0

[State 1330, TargetState]
type = TargetState
trigger1 = AnimTime = 0
value = 1321

[State 1330, PosAdd]
type = PosAdd
trigger1 = AnimTime = 0
x = (Target,Const(size.ground.back)+Target,Const(size.ground.front)) + 23

[State 1330, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1311


;---------------------------------------------------------------------------
; デイドリームヘッドロック（強キャッチ後）
;---------------------------------------------------------------------------
[Statedef 1340]
type    = S
movetype= A
physics = N
anim = 1310
sprpriority = 3
velse = 0,0

[State 1310, NotHitBy]
type = NotHitBy
trigger1 = 1
time = 1
value = ,AA,AT,AP

[State 1340, Grab Sound]
type = PlaySnd
trigger1 = time = 1
value = 2,0

[State 1340, Bind]
type = TargetBind
trigger1 = Time = 0
pos = (Target,Const(size.ground.front)), 0

[State 1340, VarSet]
type = VarSet
trigger1 = Time = 0
v = 0
value = 138

[State 1340, Width]
type = Width
trigger1 = Time = 0
edge = (Target,Const(size.ground.back)+Target,Const(size.ground.front)) + 40, 0

[State 1340, TargetState]
type = TargetState
trigger1 = AnimTime = 0
value = 1321

[State 1340, PosAdd]
type = PosAdd
trigger1 = AnimTime = 0
x = (Target,Const(size.ground.back)+Target,Const(size.ground.front)) + 23

[State 1340, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 1311


;---------------------------------------------------------------------------
; ゼロカウンター
;---------------------------------------------------------------------------
; Ｚ－ＩＳＭ
;---------------------------------------------------------------------------
[Statedef 1400]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 1400
sprpriority = 4

[State 1400, 1]
type = PlaySnd
trigger1 = Time = 1
value = 6,1

[State 1400, 1]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = 0,2

[State 1400, FrontLayer]
type = Explod
trigger1 = Time = 0
anim = 7300
postype = left
pos = 160 + floor(pos X) + (facing * 29),0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 7
ontop = 1
shadow = -1
ownpal = 1
supermovetime = 30
pausemovetime = 30

[State 1400, BackLayer]
type = Explod
trigger1 = Time = 0
anim = 7310
postype = p1
pos = 29,-79
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
shadow = -1
ownpal = 1
supermovetime = 30
pausemovetime = 30

[State 1400, EnemyEffect]
type = Explod
trigger1 = movehit
trigger1 = NumExplod(7320) = 0
anim = 7320
id = 7320
postype = p2
pos = 0,0
facing = 1
bindtime = -1
removetime = 58
sprpriority = 6
shadow = -1
ownpal = 1
supermovetime = 30
pausemovetime = 30
ignorehitpause = 1

[State 1400, 1]
type = Pause
trigger1 = Time = 0
time = 23
movetime = 23

[State 1400, Voice]
type = PlaySnd
trigger1 = Time = 25
value = 100,0
channel = 0

[State 1400, 1]
type = NotHitBy
trigger1 = Time = 0
time = 25
value = ,AA,AT,AP

[State 1400, 2]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
attr = S, NA
animtype  = Medium
damage    = 24 + ifelse(Var(55) = 1,120,0)
guardflag = MA
pausetime = 6,6
sparkno = 1
sparkxy = -10,-82
guard.sparkno = S7000
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 14
guard.hittime  = 13
ground.velocity = -5.1
air.velocity = -3.7,-5.1
getpower = 0,0
givepower = 20,0
p2stateno = 1430

[State 1400, 2]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
attr = S, NA
animtype  = Medium
damage    = 27 + ifelse(Var(55) = 1,134,0)
guardflag = MA
pausetime = 7,7
sparkno = 1
sparkxy = -10,-82
guard.sparkno = S7000
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 14
guard.hittime  = 13
ground.velocity = -5.1
air.velocity = -3.7,-5.1
getpower = 0,0
givepower = 20,0
p2stateno = 1430

[State 1400, 4]
type = StateTypeSet
trigger1 = AnimElemTime(8) = 0
movetype = I

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Ｖ－ＩＳＭ
;---------------------------------------------------------------------------
[Statedef 1410]
type    = C
movetype= A
physics = C
juggle  = 0
poweradd= -1500
ctrl = 0
velset = 0,0
anim = 1410
sprpriority = 4

[State 1400, 1]
type = PlaySnd
trigger1 = Time = 1
value = 6,1

[State 1410, 1]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 0,4

[State 1400, FrontLayer]
type = Explod
trigger1 = Time = 0
anim = 7300
postype = left
pos = 160 + floor(pos X) + (facing * 29),0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 7
ontop = 1
shadow = -1
ownpal = 1
supermovetime = 30
pausemovetime = 30

[State 1400, BackLayer]
type = Explod
trigger1 = Time = 0
anim = 7310
postype = p1
pos = 29,-79
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
shadow = -1
ownpal = 1
supermovetime = 30
pausemovetime = 30

[State 1400, EnemyEffect]
type = Explod
trigger1 = movehit
trigger1 = NumExplod(7320) = 0
anim = 7320
id = 7320
postype = p2
pos = 0,0
facing = 1
bindtime = -1
removetime = 58
sprpriority = 6
shadow = -1
ownpal = 1
supermovetime = 30
pausemovetime = 30
ignorehitpause = 1

[State 1410, 1]
type = Pause
trigger1 = Time = 0
time = 19
movetime = 19

[State 1400, Voice]
type = PlaySnd
trigger1 = Time = 9
value = 100,0
channel = 0

[State 1410, 1]
type = NotHitBy
trigger1 = Time = 0
time = 22
value = ,AA,AT,AP

[State 1410, 2]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
attr = S, NA
animtype  = Medium
damage    = 24 + ifelse(Var(55) = 1,132,0)
guardflag = MA
pausetime = 6,6
sparkno = 1
sparkxy = -5,-10
guard.sparkno = S7000
hitsound   = S1,12
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 14
guard.hittime  = 13
ground.velocity = -5.1
air.velocity = -3.7,-5.1
getpower = 0,0
givepower = 20,0
p2stateno = 1430

[State 1410, 2]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
attr = S, NA
animtype  = Medium
damage    = 27 + ifelse(Var(55) = 1,146,0)
guardflag = MA
pausetime = 7,7
sparkno = 1
sparkxy = -5,-10
guard.sparkno = S7000
hitsound   = S1,12
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 14
guard.hittime  = 13
ground.velocity = -5.1
air.velocity = -3.7,-5.1
getpower = 0,0
givepower = 20,0
p2stateno = 1430


[State 1410, 4]
type = PosAdd
trigger1 = AnimElemTime(5) = [1,2]
x = 9.0

[State 1410, 4]
type = PosAdd
trigger1 = AnimElemTime(6) = [1,2]
trigger2 = AnimElemTime(7) = 1
trigger3 = AnimElemTime(8) = 1
trigger4 = AnimElemTime(10) = 1
x = 7.0

[State 1410, 4]
type = PosAdd
trigger1 = AnimElemTime(6) = 1
trigger2 = AnimElemTime(8) = 1
trigger3 = AnimElemTime(11) = 3
x = 1.0

[State 1410, 4]
type = PosAdd
trigger1 = AnimElemTime(8) = [1,2]
trigger2 = AnimElemTime(9) = [1,2]
x = 5.0

[State 1410, 4]
type = PosAdd
trigger1 = AnimElemTime(10) = [2,3]
x = 3.0

[State 1410, 4]
type = PosAdd
trigger1 = AnimElemTime(11) = [1,2]
x = 2.0


[State 1410, 4]
type = StateTypeSet
trigger1 = AnimElemTime(9) = 0
movetype = I

[State 1410, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1







;---------------------------------------------------------------------------
; 食らい側
;---------------------------------------------------------------------------
[Statedef 1430]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0
poweradd = 20

[State 1430, Anim]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1430

[State 1430, Pos]
type = PosSet
trigger1 = Time = 0
trigger1 = Pos Y > -30
y = -30

[State 1430, 1]
type = NotHitBy
trigger1 = 1
time = 1
value = ,AA,AT,AP

[State 1430, 2]	;振動
type = PosAdd
trigger1 = AnimElem = 1
x = ifelse(Time % 2 = 0, -1, 1)

[State 819, 5]
type = VelSet
trigger1 = AnimElemTime(2) = 0
x = -3.1
y = -10.3

[State 1430, 6]
type = VelAdd
trigger1 = AnimElemTime(2) > 0
y = 0.48

[State 1430, StateEnd]
type = SelfState
trigger1 = Pos Y >= -14
value = 5100









;---------------------------------------------------------------------------
; ＩＳＭＰＬＵＳ
;---------------------------------------------------------------------------
; 攻撃避け
;---------------------------------------------------------------------------
[Statedef 1500]
type    = S
movetype= I
physics = S
juggle  = 0
ctrl = 0
velset = 0,0
anim = 1500
sprpriority = -2

[State 1500, Voice]
type = PlaySnd
trigger1 = Time = 2
value = 100,1
channel = 0

[State 1500, 1]
type = NotHitBy
trigger1 = 1
time = 1
value = ,AA,AP

[State 1500, 1]
type = PlayerPush
trigger1 = 1
value = 0

[State 210, 5]
type = ChangeState
trigger1 = AnimElemTime(4) > 0
trigger1 = (command = "a") || (command = "b") || (command = "c")
value = 240

[State 210, 5]
type = ChangeState
trigger1 = AnimElemTime(4) > 0
trigger1 = (command = "x") || (command = "y") || (command = "z")
value = 220

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; 回りこみ（緊急回避動作）
;---------------------------------------------------------------------------
[Statedef 1520]
type    = C
movetype= I
physics = S
juggle  = 0
ctrl = 0
velset = 0,0
anim = 1520
sprpriority = -2

[State 1520, Voice]
type = PlaySnd
trigger1 = Time = 2
value = 100,1
channel = 0

[State 1520, Voice]
type = VelSet
trigger1 =  AnimElemTime(2) < 0
x = 3.9

[State 1520, Voice]
type = VelSet
trigger1 =  AnimElemTime(2) > 0
trigger1 =  AnimElemTime(7) < 0
x = 4.6

[State 1520, 1]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
time = 1
value = ,AA,AP

[State 1500, 1]
type = PlayerPush
trigger1 = 1
value = 0

[State 210, 5]
type = Turn
trigger1 = AnimTime = 0
trigger1 = p2dist X < -10

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1






