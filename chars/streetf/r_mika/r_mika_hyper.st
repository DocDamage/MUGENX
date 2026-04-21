;===========================================================================
;---------------------------------------------------------------------------
; レインボーヒップラッシュ（ＬＶ１）
;---------------------------------------------------------------------------
[Statedef 3000]
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
anim = 3000
ctrl = 0
sprpriority = 2

[State 3000, Width]
type = Width
trigger1 = AnimElem = 2, >= 0
value = 11,0

[State 3000, Super A]
type = SuperPause
trigger1 = AnimElemTime(2) = 0
pos = -33, -82
anim = S8000
sound = S50, 1
poweradd = -1000
time = 50
movetime = 40

[State 3000, 1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 100,4
channel = 0

[State 3000, Super A]
type = Pause
trigger1 = AnimElemTime(5) = 0
time = 1
movetime = 1

[State 3000, Super B]
type = AfterImage
trigger1 = AnimElemTime(4) = 20
time = 2
paladd = 55,35,15
palmul = .55,.55,.85
framegap = 6
length = 25

[State 3000, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(38) < 0
time = 2

[State 3000, Super D]
type = NotHitBy
trigger1 = AnimElemTime(9) < 2
value = , AA, AP, AT
time = 1

[State 3000, 1]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
trigger2 = AnimElemTime(15) = 0
value = 0,2

[State 3000, Voice]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
trigger2 = AnimElemTime(15) = 0
value = 100,0
channel = 0

[State 3000, 1]
type = PlaySnd
trigger1 = AnimElemTime(23) = 0
value = 0,3

[State 3000, Voice]
type = PlaySnd
trigger1 = AnimElemTime(23) = 0
value = 100,3
channel = 0

[State 3000, 3]
type = PosAdd
trigger1 = AnimElemTime(8) = 0
trigger2 = AnimElemTime(15) = 0
x = 14.2

[State 3000, 4]
type = PosAdd
trigger1 = AnimElemTime(10) = 0
trigger2 = AnimElemTime(11) = 0
trigger3 = AnimElemTime(12) = 0
x = 10.0

[State 3000, 4]
type = PosAdd
trigger1 = AnimElemTime(17) = 0
trigger2 = AnimElemTime(18) = 0
trigger3 = AnimElemTime(19) = 0
x = 10.2

[State 3000, 1]
type = VelSet
trigger1 = AnimElemTime(23) = 1
y = -4.8

[State 3000, 1]
type = VelAdd
trigger1 = Pos Y < 0
trigger1 = AnimElemTime(22) > 0  && AnimElemTime(26) < 0
y = 0.81

[State 3000, 1]
type = PosAdd
trigger1 = AnimElemTime(24) = 0
y = -29

[State 3000, 1]
type = PosSet
trigger1 = pos y > 0
trigger2 = AnimElemTime(26) > 0
y = 0

[State 3000, 1]
type = VelSet
trigger1 = AnimElemTime(26) = 0
y = 0

[State 3000, 1]
type = PosAdd
trigger1 = AnimElemTime(23) > 0
trigger1 = AnimElemTime(26) < 0
x = 4.0

[State 3000, 4]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
physics = N

[State 3000, 4]
type = StateTypeSet
trigger1 = Pos Y >= 0
trigger1 = AnimElemTime(26) >= 0
statetype = C
physics = C

[State 3000, 5]
type = HitDef
trigger1 = AnimElem = 9
attr = S, HA
animtype  = Hard
damage    = ifelse(Var(20) = 1,81,72),4
getpower  = 0
priority  = 6
guardflag = M
pausetime = 12,12
sparkno = S7201
sparkxy = -10,-82
guard.sparkno = S7001
hitsound   = S1,3
guardsound = S6,0
ground.type = Low
ground.slidetime = 13
ground.hittime  = 18
ground.velocity = -4.4
air.velocity = -3,-3
air.fall = 1
fall.animtype = Hard
fall.recover = 0

[State 3000, 5]
type = HitDef
trigger1 = AnimElem = 16
attr = S, HA
animtype  = Hard
damage    = ifelse(Var(20) = 1,81,72),4
getpower  = 0
priority  = 6
guardflag = M
pausetime = 12,12
sparkno = S7201
sparkxy = -10,-82
guard.sparkno = S7001
hitsound   = S1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 13
ground.hittime  = 18
ground.velocity = -4.4
air.velocity = -1.8,-3
air.fall = 1
fall.animtype = Hard
fall.recover = 0

[State 3000, 6]
type = HitDef
trigger1 = AnimElem = 24
attr = A, HA
animtype  = Hard
damage    = ifelse(Var(20) = 1,54,48),2
getpower  = 0
priority  = 6
guardflag = M
pausetime = 12,12
sparkno = S7201
sparkxy   = 0,-40
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4.0
guard.velocity = -4.1
air.velocity = -5,-3
fall.animtype = Hard
fall.recover = 0
forcestand = 1

[State 3000, 6]
type = HitDef
trigger1 = AnimElem = 25
attr = A, HA
animtype  = Back
damage    = ifelse(Var(20) = 1,81,72),4
getpower  = 0
priority  = 6
guardflag = M
pausetime = 12,12
sparkno = S7201
sparkxy   = 0,-40
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6.1, -4
guard.velocity = -8.3
air.velocity = -6.0,-4.1
fall.animtype = Hard
fall = 1
fall.recover = 0

[State 3000, 4]
type = StateTypeSet
trigger1 = AnimElemTime(26) = 0
movetype = I

[State 3000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; レインボーヒップラッシュ（ＬＶ２）
;---------------------------------------------------------------------------
[Statedef 3020]
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
anim = 3020
ctrl = 0
sprpriority = 2

[State 3020, Width]
type = Width
trigger1 = AnimElem = 2, >= 0
value = 11,0

[State 3020, Super A]
type = SuperPause
trigger1 = AnimElemTime(2) = 0
pos = -33, -82
anim = S8010
sound = S50, 1
poweradd = -2000
time = 50
movetime = 40

[State 3020, 1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 100,4
channel = 0

[State 3000, Super A]
type = Pause
trigger1 = AnimElemTime(5) = 0
time = 3
movetime = 3

[State 3020, Super B]
type = AfterImage
trigger1 = AnimElemTime(4) = 20
time = 2
paladd = 55,35,15
palmul = .55,.55,.89
framegap = 6
length = 25

[State 3020, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) > 0 && AnimElemTime(50) < 0
time = 2

[State 3020, Super D]
type = NotHitBy
trigger1 = AnimElemTime(9) < 2
value = , AA, AP, AT
time = 1

[State 3020, 1]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
trigger2 = AnimElemTime(15) = 0
value = 0,2

[State 3020, Voice]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
trigger2 = AnimElemTime(15) = 0
value = 100,0
channel = 0

[State 3020, 1]
type = PlaySnd
trigger1 = AnimElemTime(22) = 0
value = 0,1

[State 3020, 1]
type = PlaySnd
trigger1 = AnimElemTime(22) = 0
value = 100,1
channel = 0

[State 3020, 1]
type = PlaySnd
trigger1 = AnimElemTime(29) = 0
trigger2 = AnimElemTime(35) = 0
value = 0,3

[State 3020, 1]
type = PlaySnd
trigger1 = AnimElemTime(29) = 0
trigger2 = AnimElemTime(35) = 0
value = 100,3
channel = 0

[State 3020, 3]
type = PosAdd
trigger1 = AnimElemTime(8) = 0
trigger2 = AnimElemTime(15) = 0
x = 14.2

[State 3020, 4]
type = PosAdd
trigger1 = AnimElemTime(10) = 0
trigger2 = AnimElemTime(11) = 0
trigger3 = AnimElemTime(12) = 0
x = 10.0

[State 3020, 4]
type = PosAdd
trigger1 = AnimElemTime(17) = 0
trigger2 = AnimElemTime(18) = 0
trigger3 = AnimElemTime(19) = 0
x = 10.2

[State 3020, 4]
type = PosAdd
trigger1 = AnimElemTime(20) >= 0
trigger1 = AnimElemTime(27) < 0
x = 2.4

[State 3020, 4]
type = PosAdd
trigger1 = AnimElemTime(32) >= 0
trigger1 = AnimElemTime(34) < 0
x = 5.0

[State 3020, 1]
type = VelSet
trigger1 = AnimElemTime(36) = 1
y = -4.8

[State 3020, 1]
type = VelAdd
trigger1 = Pos Y < 0
trigger1 = AnimElemTime(35) > 0  && AnimElemTime(39) < 0
y = 0.81

[State 3020, 1]
type = PosAdd
trigger1 = AnimElemTime(37) = 0
y = -29

[State 3020, 1]
type = PosSet
trigger1 = pos y > 0
trigger2 = AnimElemTime(39) > 0
y = 0

[State 3020, 1]
type = VelSet
trigger1 = AnimElemTime(39) = 0
y = 0

[State 3020, 1]
type = PosAdd
trigger1 = AnimElemTime(36) > 0
trigger1 = AnimElemTime(39) < 0
x = 4.0

[State 3020, 4]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
physics = N

[State 3020, 4]
type = StateTypeSet
trigger1 = Pos Y >= 0
trigger1 = AnimElemTime(39) >= 0
statetype = C
physics = C

[State 3020, 5]
type = HitDef
trigger1 = AnimElem = 9
attr = S, HA
animtype  = Hard
damage    = ifelse(Var(20) = 1,67,60),3
getpower  = 0
priority  = 6
guardflag = M
pausetime = 12,12
sparkno = S7201
sparkxy = -10,-82
guard.sparkno = S7001
hitsound   = S1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 16
ground.velocity = -4.4
air.velocity = -1.3,-3
air.fall = 1
fall.animtype = Hard
fall.recover = 0

[State 3020, 5]
type = HitDef
trigger1 = AnimElem = 16
attr = S, HA
animtype  = Hard
damage    = ifelse(Var(20) = 1,67,60),3
getpower  = 0
priority  = 6
guardflag = M
pausetime = 12,12
sparkno = S7201
sparkxy = -10,-82
guard.sparkno = S7001
hitsound   = S1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 16
ground.velocity = -4.4
air.velocity = -1.1,-2.5
air.fall = 1
fall.animtype = Hard
fall.recover = 0

[State 3020, 6]
type = HitDef
trigger1 = AnimElem = 23
attr = A, HA
animtype  = Hard
damage    = ifelse(Var(20) = 1,67,60),3
getpower  = 0
priority  = 6
guardflag = M
pausetime = 11,12
sparkno = S7201
sparkxy = -10,-62
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 19
ground.velocity = -4.0
guard.velocity = -4.1
air.velocity = -1.3,-4.1
fall.animtype = Hard
fall.recover = 0
forcestand = 1

[State 3020, 6]
type = HitDef
trigger1 = AnimElem = 31
attr = A, HA
animtype  = Medium
damage    = ifelse(Var(20) = 1,67,60),3
getpower  = 0
priority  = 6
guardflag = M
pausetime = 10,10
sparkno = S7201
sparkxy = -10,-60
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2.7
guard.velocity = -5.3
air.velocity = -1.6,-3.1
fall.animtype = Hard
fall.recover = 0

[State 3020, 6]
type = HitDef
trigger1 = AnimElem = 32
attr = A, HA
animtype  = Back
damage    = ifelse(Var(20) = 1,61,54),2
getpower  = 0
priority  = 6
guardflag = M
pausetime = 12,12
sparkno = S7201
sparkxy = -10,-60
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 13
ground.hittime  = 16
ground.velocity = -1.9
guard.velocity = -3.8
air.velocity = -1.6,-3.1
fall.animtype = Hard
fall.recover = 0

[State 3020, 6]
type = HitDef
trigger1 = AnimElem = 37
attr = A, HA
animtype  = Hard
damage    = ifelse(Var(20) = 1,61,54),2
getpower  = 0
priority  = 6
guardflag = M
pausetime = 12,12
sparkno = S7201
sparkxy = -10,-40
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4.0
guard.velocity = -4.1
air.velocity = -5,-3
fall.animtype = Hard
fall.recover = 0

[State 3020, 6]
type = HitDef
trigger1 = AnimElem = 38
attr = A, HA
animtype  = Back
damage    = ifelse(Var(20) = 1,61,54),2
getpower  = 0
priority  = 6
guardflag = M
pausetime = 12,12
sparkno = S7201
sparkxy = -10,-40
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6.9, -4
guard.velocity = -8.3
air.velocity = -6.8,-4.1
fall.animtype = Hard
fall = 1
fall.recover = 0

[State 3020, 4]
type = StateTypeSet
trigger1 = AnimElemTime(39) = 0
movetype = I

[State 3020, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1




;---------------------------------------------------------------------------
; レインボーヒップラッシュ（ＬＶ３）
;---------------------------------------------------------------------------
[Statedef 3040]
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
anim = 3040
ctrl = 0
sprpriority = 2

[State 3040, Width]
type = Width
trigger1 = AnimElem = 2, >= 0
value = 11,0

[State 3040, Super A]
type = SuperPause
trigger1 = AnimElemTime(2) = 0
pos = -33, -82
anim = S8020
sound = S50, 1
poweradd = -3000
time = 50
movetime = 40

[State 3000, 1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 100,4
channel = 0

[State 3000, Super A]
type = Pause
trigger1 = AnimElemTime(5) = 0
time = 6
movetime = 6

[State 3040, Super B]
type = AfterImage
trigger1 = AnimElemTime(4) = 20
time = 2
paladd = 55,35,15
palmul = .55,.55,.93
framegap = 6
length = 25

[State 3040, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) > 0 && AnimElemTime(51) < 0
time = 2

[State 3040, Super D]
type = NotHitBy
trigger1 = AnimElemTime(9) < 2
value = , AA, AP, AT
time = 1

[State 3040, 1]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
trigger2 = AnimElemTime(15) = 0
trigger3 = AnimElemTime(22) = 0
value = 0, 2

[State 3040, 1]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
trigger2 = AnimElemTime(15) = 0
trigger3 = AnimElemTime(22) = 0
value = 100, 0
channel = 0

[State 3040, 1]
type = PlaySnd
trigger1 = AnimElemTime(29) = 0
value = 0, 1

[State 3040, 1]
type = PlaySnd
trigger1 = AnimElemTime(29) = 0
value = 100,1
channel = 0

[State 3040, 1]
type = PlaySnd
trigger1 = AnimElemTime(35) = 0
trigger2 = AnimElemTime(41) = 0
value = 0, 3

[State 3040, 1]
type = PlaySnd
trigger1 = AnimElemTime(35) = 0
trigger2 = AnimElemTime(41) = 0
value = 100,3
channel = 0

[State 3040, 3]
type = PosAdd
trigger1 = AnimElemTime(8) = 0
trigger2 = AnimElemTime(15) = 0
x = 14.2

[State 3040, 4]
type = PosAdd
trigger1 = AnimElemTime(10) = 0
trigger2 = AnimElemTime(11) = 0
trigger3 = AnimElemTime(12) = 0
x = 10.0

[State 3040, 4]
type = PosAdd
trigger1 = AnimElemTime(17) = 0
trigger2 = AnimElemTime(18) = 0
trigger3 = AnimElemTime(19) = 0
x = 10.2

[State 3040, 4]
type = PosAdd
trigger1 = AnimElemTime(24) = 0
trigger2 = AnimElemTime(25) = 0
trigger3 = AnimElemTime(26) = 0
x = 10.2

[State 3040, 4]
type = PosAdd
trigger1 = AnimElemTime(28) >= 0
trigger1 = AnimElemTime(35) < 0
x = 2.4

[State 3040, 4]
type = PosAdd
trigger1 = AnimElemTime(39) >= 0
trigger1 = AnimElemTime(41) < 0
x = 5.0

[State 3040, 1]
type = VelSet
trigger1 = AnimElemTime(44) = 1
y = -4.8

[State 3040, 1]
type = VelAdd
trigger1 = Pos Y < 0
trigger1 = AnimElemTime(43) > 0  && AnimElemTime(47) < 0
y = 0.81

[State 3040, 1]
type = PosAdd
trigger1 = AnimElemTime(44) = 0
y = -29

[State 3040, 1]
type = PosSet
trigger1 = pos y > 0
trigger2 = AnimElemTime(47) > 0
y = 0

[State 3040, 1]
type = VelSet
trigger1 = AnimElemTime(47) = 0
y = 0

[State 3040, 1]
type = PosAdd
trigger1 = AnimElemTime(44) > 0
trigger1 = AnimElemTime(47) < 0
x = 4.0

[State 3040, 4]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
physics = N

[State 3040, 4]
type = StateTypeSet
trigger1 = Pos Y >= 0
trigger1 = AnimElemTime(47) >= 0
statetype = C
physics = C

[State 3040, 5]
type = HitDef
trigger1 = AnimElem = 9
attr = S, HA
animtype  = Hard
damage    = ifelse(Var(20) = 1,81,72),4
getpower  = 0
priority  = 6
guardflag = M
pausetime = 12,12
sparkno = S7201
sparkxy = -10,-82
guard.sparkno = S7001
hitsound   = S1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 16
ground.velocity = -4.4
air.velocity = -1.3,-3
air.fall = 1
fall.animtype = Hard
fall.recover = 0

[State 3040, 5]
type = HitDef
trigger1 = AnimElem = 16
attr = S, HA
animtype  = Hard
damage    = ifelse(Var(20) = 1,81,72),4
getpower  = 0
priority  = 6
guardflag = M
pausetime = 12,12
sparkno = S7201
sparkxy = -10,-82
guard.sparkno = S7001
hitsound   = S1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 16
ground.velocity = -4.4
air.velocity = -1.1,-2.5
air.fall = 1
fall.animtype = Hard
fall.recover = 0

[State 3040, 5]
type = HitDef
trigger1 = AnimElem = 23
attr = S, HA
animtype  = Hard
damage    = ifelse(Var(20) = 1,81,72),4
getpower  = 0
priority  = 6
guardflag = M
pausetime = 12,12
sparkno = S7201
sparkxy = -10,-82
guard.sparkno = S7001
hitsound   = S1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 16
ground.velocity = -4.4
air.velocity = -1.1,-2.5
air.fall = 1
fall.animtype = Hard
fall.recover = 0

[State 3040, 6]
type = HitDef
trigger1 = AnimElem = 30
attr = A, HA
animtype  = Hard
damage    = ifelse(Var(20) = 1,67,60),3
getpower  = 0
priority  = 6
guardflag = M
pausetime = 11,12
sparkno = S7201
sparkxy = -10,-60
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 19
ground.velocity = -4.0
guard.velocity = -4.1
air.velocity = -1.3,-4.1
fall.animtype = Hard
fall.recover = 0
forcestand = 1

[State 3040, 6]
type = HitDef
trigger1 = AnimElem = 37
attr = A, HA
animtype  = Medium
damage    = ifelse(Var(20) = 1,54,48),2
getpower  = 0
priority  = 6
guardflag = M
pausetime = 10,10
sparkno = S7201
sparkxy = -10,-62
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2.7
guard.velocity = -5.3
air.velocity = -1.6,-3.1
fall.animtype = Hard
fall.recover = 0

[State 3040, 6]
type = HitDef
trigger1 = AnimElem = 38
attr = A, HA
animtype  = hard
damage    = ifelse(Var(20) = 1,54,48),2
getpower  = 0
priority  = 6
guardflag = M
pausetime = 10,10
sparkno = S7201
sparkxy = -10,-60
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2.7
guard.velocity = -5.3
air.velocity = -1.6,-3.1
fall.animtype = Hard
fall.recover = 0

[State 3040, 6]
type = HitDef
trigger1 = AnimElem = 39
attr = A, HA
animtype  = Back
damage    = ifelse(Var(20) = 1,54,48),2
getpower  = 0
priority  = 6
guardflag = M
pausetime = 12,12
sparkno = S7201
sparkxy = -10,-60
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 13
ground.hittime  = 16
ground.velocity = -1.9
guard.velocity = -3.8
air.velocity = -1.1,-2.7
fall.animtype = Hard
fall.recover = 0


[State 3040, 6]
type = HitDef
trigger1 = AnimElem = 43
attr = A, HA
animtype  = Hard
damage    = ifelse(Var(20) = 1,54,48),2
getpower  = 0
priority  = 6
guardflag = M
pausetime = 10,12
sparkno = S7201
sparkxy = -10,-59
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4.0
guard.velocity = -4.1
air.velocity = -5,-3
fall.animtype = Hard
fall.recover = 0

[State 3040, 6]
type = HitDef
trigger1 = AnimElem = 44
attr = A, HA
animtype  = Hard
damage    = ifelse(Var(20) = 1,54,48),2
getpower  = 0
priority  = 6
guardflag = M
pausetime = 10,12
sparkno = S7201
sparkxy = -10,-40
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4.0
guard.velocity = -4.1
air.velocity = -5,-3
fall.animtype = Hard
fall.recover = 0

[State 3040, 6]
type = HitDef
trigger1 = AnimElem = 45
attr = A, HA
animtype  = Back
damage    = ifelse(Var(20) = 1,54,48),2
getpower  = 0
priority  = 6
guardflag = M
pausetime = 10,12
sparkno = S7201
sparkxy = -10,-40
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6.9, -4
guard.velocity = -8.3
air.velocity = -6.8,-4.1
fall.animtype = Hard
fall = 1
fall.recover = 0

[State 3040, 4]
type = StateTypeSet
trigger1 = AnimElemTime(47) = 0
movetype = I

[State 3040, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;===========================================================================
;---------------------------------------------------------------------------
; ヘヴンリーダイナマイト
;---------------------------------------------------------------------------
; 掴みＬＶ１
;---------------------------------------------------------------------------
[Statedef 3070]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 20
velset = 0,0
ctrl = 0
anim = 3099
sprpriority = 2

[State 3070, VarSet]	;LV
type = VarSet
trigger1 = Time = 0
v = 3
value = 1

[State 3070, Super A]
type = SuperPause
trigger1 = AnimElemTime(2) = 0
pos = 36, -62
anim = S8000
sound = S50, 1
poweradd = -1000
time = 50
movetime = 1

[State 3070, Super A]
type = Pause
trigger1 = AnimElemTime(4) = 0
time = 1
movetime = 1

[State 3070, Super B]
type = AfterImage
trigger1 = AnimElemTime(2) = 0
time = 2
paladd = 55,35,15
palmul = .55,.55,.85
framegap = 6
length = 25

[State 3070, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) > 0
time = 2

[State 3070, Super D]
type = NotHitBy
trigger1 = AnimElemTime(4) < 1
value = , AA, AP, AT
time = 1

[State 3070, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, HT
hitflag = M-
priority = 4, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 3100
p2stateno = 850
guard.dist = 0
fall = 1

[State 3070, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; 掴みＬＶ２
;---------------------------------------------------------------------------
[Statedef 3080]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 20
velset = 0,0
ctrl = 0
anim = 3099
sprpriority = 2

[State 3070, VarSet]	;LV
type = VarSet
trigger1 = Time = 0
v = 3
value = 2

[State 3070, Super A]
type = SuperPause
trigger1 = AnimElemTime(2) = 0
pos = 36, -62
anim = S8010
sound = S50, 1
poweradd = -2000
time = 50
movetime = 1

[State 3070, Super A]
type = Pause
trigger1 = AnimElemTime(4) = 0
time = 3
movetime = 3

[State 3070, Super B]
type = AfterImage
trigger1 = AnimElemTime(2) = 0
time = 2
paladd = 55,35,15
palmul = .55,.55,.89
framegap = 6
length = 25

[State 3070, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) > 0
time = 2

[State 3070, Super D]
type = NotHitBy
trigger1 = AnimElemTime(4) < 1
value = , AA, AP, AT
time = 1

[State 3070, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, HT
hitflag = M-
priority = 4, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 3100
p2stateno = 850
guard.dist = 0
fall = 1

[State 3070, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; 掴みＬＶ３
;---------------------------------------------------------------------------
[Statedef 3090]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 20
velset = 0,0
ctrl = 0
anim = 3099
sprpriority = 2

[State 3090, VarSet]	;LV
type = VarSet
trigger1 = Time = 0
v = 3
value = 3

[State 3090, Super A]
type = SuperPause
trigger1 = AnimElemTime(2) = 0
pos = 36, -62
anim = S8020
sound = S50, 1
poweradd = -3000
time = 50
movetime = 1

[State 3090, Super A]
type = Pause
trigger1 = AnimElemTime(4) = 0
time = 6
movetime = 6

[State 3090, Super B]
type = AfterImage
trigger1 = AnimElemTime(2) = 0
time = 2
paladd = 55,35,15
palmul = .55,.55,.93
framegap = 6
length = 25

[State 3090, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) > 0
time = 2

[State 3090, Super D]
type = NotHitBy
trigger1 = AnimElemTime(4) < 1
value = , AA, AP, AT
time = 1

[State 3090, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, HT
hitflag = M-
priority = 4, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 3100
p2stateno = 850
guard.dist = 0
fall = 1

[State 3090, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; 頭突き動作
;---------------------------------------------------------------------------
[Statedef 3100]
type    = S
movetype= A
physics = N
anim = 3100
sprpriority = 3

[State 3100, AfterImage]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3100, VarSet]
type = VarSet
trigger1 = Time = 0
v = 0
value = 58 + (Var(3) * 19)

[State 3100, VarSet]
type = VarSet
trigger1 = 1
v = 1
value = AnimElemNo(1)

[State 3100, VarSet]
type = VarSet
trigger1 = Time = 0
v = 2
value = 0

[State 3100, Grab Sound]
type = PlaySnd
trigger1 = Time = 0
value = 2,0

[State 3100, Width]
type = Width
trigger1 = Time = 0
edge = (Target,Const(size.ground.back)+Target,Const(size.ground.front)) + 52, 0

[State 3100, Bind]
type = TargetBind
trigger1 = Time = 0
pos = (Target,Const(size.ground.front))+8, 0

[State 3100, AnyInput]
type = ChangeAnim
trigger1 = command = "any"
trigger1 = AnimElemNo(1) != 8
trigger1 = AnimElemNo(1) != 19
value = 3100
elem = ifelse(Var(1) = 26, 1, var(1) + 1)

[State 3105, Flash]
type = PalFX
trigger1 = command = "any"
trigger1 = AnimElemNo(1) != 8
trigger1 = AnimElemNo(1) != 19
time = 1
add = 128,128,128
mul = 180,180,180

[State 3100, AnyInput]	;敵のレバガチャ
type = VarAdd
trigger1 = Target,stateno = [853,855]
v = 0
value = ifelse(Var(0) > 2,-2,0)

[State 3101, TargetState]
type = TargetState
triggerall = Target,stateno != 850
triggerall = Target,stateno != 853
trigger1 = AnimElemNo(1) = [1,8]
trigger2 = AnimElemNo(1) = [15,19]
value = 850	;


[State 3101, TargetLifeAdd]
type = TargetLifeAdd
triggerall = Target,stateno != 851
triggerall = Target,stateno != 854
trigger1 = AnimElemNo(1) = [9,11]
value = -18
kill = 0

[State 3101, HitSpark]
type = Explod
triggerall = Target,stateno != 851
triggerall = Target,stateno != 854
trigger1 = AnimElemNo(1) = [9,11]
anim = 7200
id = 7200
postype = p1
pos = (Target,Const(size.ground.front))+11, -79
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
shadow = -1
ownpal = 1
[State 3101, HitVoice]
type = PlaySnd
triggerall = Target,stateno != 851
triggerall = Target,stateno != 854
trigger1 = AnimElemNo(1) = [9,11]
value = 100,15
channel = 0
[State 3101, HitSound]
type = PlaySnd
triggerall = Target,stateno != 851
triggerall = Target,stateno != 854
trigger1 = AnimElemNo(1) = [9,11]
value = 1,0
channel = 13
[State 3101, HitSound]
type = PlaySnd
triggerall = Target,stateno != 851
triggerall = Target,stateno != 854
trigger1 = AnimElemNo(1) = [9,11]
value = 1,1
channel = 14
[State 3101, Head Count]
type = HitAdd
trigger1 = Time = 0
value = -1
[State 3101, Head Count]
type = HitAdd
triggerall = Target,stateno != 851
triggerall = Target,stateno != 854
trigger1 = AnimElemNo(1) = [9,11]
value = 1


[State 3101, Head Count]
type = VarAdd
triggerall = Target,stateno != 851
triggerall = Target,stateno != 854
trigger1 = AnimElemNo(1) = [9,11]
v = 2
value = 1

[State 3101, TargetState]
type = TargetState
triggerall = Target,stateno != 851
triggerall = Target,stateno != 854
trigger1 = AnimElemNo(1) = [9,11]
value = 851	;damage


[State 3101, TargetState]
type = TargetState
triggerall = Target,stateno != 852
triggerall = Target,stateno != 855
trigger1 = AnimElemNo(1) = [12,14]
value = 852	;


;ふっとばし頭突き
;敵共通
[State 3101, TargetState]
type = TargetState
trigger1 = Time >= Var(0)
trigger1 = AnimElemTime(15) = 1
value = 856

;失敗
[State 3100, State End]
type = ChangeState
trigger1 = Time >= Var(0)
trigger1 = AnimElemTime(15) = 1
trigger1 = Var(2) < (Var(3) + 3)
value = 3101

;ＯＫ
[State 3100, State End]
type = ChangeState
trigger1 = Time >= Var(0)
trigger1 = AnimElemTime(15) = 1
trigger1 = Var(2) >= (Var(3) + 3)
value = 3110


;---------------------------------------------------------------------------
; 規定回数に満たなかった（全レベル共通）
;---------------------------------------------------------------------------
[Statedef 3101]
type    = S
movetype= A
physics = N
anim = 841
sprpriority = 3

[State 3100, AfterImage]
type = AfterImageTime
trigger1 = AnimElemTime(14) < 0
time = 2

[State 3101, Bind]
type = TargetBind
trigger1 = Time = 0
pos = (Target,Const(size.ground.front))+26, 0

[State 3101, BackLayer]
type = Explod
trigger1 = Time = 0
anim = 842
postype = p1
pos = 0, 0
facing = 1
bindtime = -1
removetime = -2
sprpriority = 1
removeongethit = 1
shadow = -1

[State 3101, TargetLifeAdd];Last Head
type = TargetLifeAdd
trigger1 = AnimElemTime(5) = 0
value = -48

[State 841, HitSpark]
type = Explod
trigger1 = AnimElemTime(5) = 0
anim = 7201
id = 7201
postype = p1
pos = (Target,Const(size.ground.front))+43, -74
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
shadow = -1
ownpal = 1

[State 841, TargetLifeAdd];Last Head
type = TargetLifeAdd
trigger1 = AnimElemTime(5) = 0
value = ifelse(Var(59)=0,-24,ifelse(Var(59)=1,-28,-22)) + (Var(2) * 2)

[State 3101, HitSound]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 1,2

[State 3101, HitVoice]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 100,11
channel = 0

[State 3101, TargetState]
type = TargetState
trigger1 = AnimElemTime(5) = 0
value = 857

[State 3101, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; フィニッシュに移行（全レベル共通）
;---------------------------------------------------------------------------
[Statedef 3110]
type    = S
movetype= A
physics = N
anim = 3110
sprpriority = 3

[State 3110, AfterImage]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3101, Bind]
type = TargetBind
trigger1 = Time = 0
pos = (Target,Const(size.ground.front))+26, 0

[State 3101, BackLayer]
type = Explod
trigger1 = Time = 0
anim = 842
postype = p1
pos = 0, 0
facing = 1
bindtime = -1
removetime = -2
sprpriority = 1
removeongethit = 1
shadow = -1

[State 3101, HitSound]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 1,2

[State 3101, HitVoice]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 100,11
channel = 0

[State 841, HitSpark]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 7201
id = 7201
postype = p1
pos = (Target,Const(size.ground.front))+43, -74
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
shadow = -1
ownpal = 1

[State 3111, DizzySound]
type = PlaySnd
trigger1 = AnimElemTime(4) >= 2
value = 12,0
channel = 1
lowpriority = 1

[State 3111, DizzySound]
type = PlaySnd
trigger1 = AnimTime = 0
value = 2,0
channel = 1

[State 3111, EnemyDizzyFish]
type = Explod
trigger1 = AnimElemTime(7) = 2
anim = 3111
id = 3111
postype = p2
pos = 0,enemy,const(size.head.pos.y)-15
facing = 1
bindtime = -1
removetime = 31+Var(3)
sprpriority = 5
shadow = -1
ontop = 1

[State 3101, TargetState]
type = TargetState
trigger1 = AnimElemTime(4) = 2
value = 3160

[State 3101, TargetState Lv1]
type = TargetState
trigger1 = AnimTime = 0
trigger1 = Var(3) = 1
value = 1327

[State 3101, TargetState Lv2]
type = TargetState
trigger1 = AnimTime = 0
trigger1 = Var(3) = 2
value = 810

[State 3101, TargetState Lv3]
type = TargetState
trigger1 = AnimTime = 0
trigger1 = Var(3) = 3
value = 3166

[State 3101, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 3110 + (Var(3) * 10)



;---------------------------------------------------------------------------
;ＬＶ１（キャッチ）
;---------------------------------------------------------------------------
[Statedef 3120]
type    = S
movetype= A
physics = N
anim = 1317
sprpriority = 3

[State 3120, AfterImage]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3120, Pos]
type = PosAdd
trigger1 = Time = 0
x = 60

[State 3120, Pos]
type = turn
trigger1 = Time = 0

[State 3120, Bind]
type = TargetBind
trigger1 = AnimElemNo(1) = 1
pos = 18,-81

[State 3120, Bind]
type = TargetBind
trigger1 = AnimElemNo(1) = 2
pos = 13,-84

[State 3120, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 3121


;---------------------------------------------------------------------------
;ＬＶ１（パフォーマンス→滞空中）
;---------------------------------------------------------------------------
[Statedef 3121]
type    = S
movetype= A
physics = N
anim = 1318
sprpriority = 3

[State 3121, Voice]
type = PlaySnd
trigger1 = Time = 0
value = 100,7
channel = 0

[State 3121, AfterImage]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3121, TargetState]
type = TargetState
trigger1 = Time = 0
value = 1328

[State 3121, Bind]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0
trigger1 = AnimElemTime(4) < 0
pos = 14,-71

[State 3121, Bind]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0
trigger1 = AnimElemTime(5) < 0
pos = 24,-67

[State 3121, Bind]
type = TargetBind
trigger1 = AnimElemTime(5) >= 0
trigger1 = AnimElemTime(6) < 0
pos = 11,-66

[State 3121, Bind]
type = TargetBind
trigger1 = AnimElemTime(6) >= 0
trigger1 = AnimElemTime(7) < 0
pos = 14, -71

[State 3121, Bind]
type = TargetBind
trigger1 = AnimElemTime(7) >= 0
trigger1 = AnimElemTime(8) < 0
pos = 0,-56

[State 3121, Bind]
type = TargetBind
trigger1 = AnimElemTime(8) >= 0
pos = -1,-75


[State 3121, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) >= 1
x = 4.78

[State 3121, VelSet]
type = VelSet
trigger1 = AnimElemTime(6) = 1
y = -14.94

[State 3121, VelSet]
type = VelAdd
trigger1 = AnimElemTime(6) >= 1
y = 0.917

[State 3121, State End]
type = ChangeState
trigger1 = AnimElemTime(6) >= 5
trigger1 = Pos Y > 0
value = 3122


;---------------------------------------------------------------------------
;ＬＶ１（着地）
;---------------------------------------------------------------------------
[Statedef 3122]
type    = A
movetype= H
physics = N
velset = 0,0
anim = 3122
sprpriority = 2

[State 3122, HitG Sound]
type = PlaySnd
trigger1 = Time = 0
value = 40,8

[State 3122, Voice]
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
value = 100,11

[State 3122, AfterImage]
type = AfterImageTime
trigger1 = AnimElemTime(5) < 0
time = 2

[State 3122, Bind]
type = TargetBind
trigger1 = Time = 0
pos = -49,0

[State 3122, TargetState]
type = TargetState
trigger1 = Time = 2
value = 1329

[State 3122, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 0
value = -126

[State 3122, Pos]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3122, ShockWave]
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
[State 3122, ShockWave]
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

[State 3122, Shake]
type = EnvShake
trigger1 = Time = 0
time = 21

[State 3122, Turn]
type = Turn
trigger1 = AnimTime = 0

[State 3122, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1




;---------------------------------------------------------------------------
;ＬＶ２（投げっぱなしジャーマン）
;---------------------------------------------------------------------------
[Statedef 3130]
type    = S
movetype= A
physics = N
anim = 800
sprpriority = 3

[State 3100, AfterImage]
type = AfterImageTime
trigger1 = AnimElemTime(12) < 0
time = 2

[State 3100, Voice]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = 100,8
channel = 0

[State 3120, Pos]
type = PosAdd
trigger1 = Time = 0
x = 60

[State 3130, BackLayer]
type = Explod
trigger1 = Time = 0
anim = 801
postype = p1
pos = 0, 0
facing = 1
bindtime = -1
removetime = -2
sprpriority = 1
removeongethit = 1
shadow = -1

;[State 3130, Grab Sound]
;type = PlaySnd
;trigger1 = Time = 0
;value = 2,0

[State 3130, Width]
type = Width
trigger1 = Time = 0
edge = (Target,Const(size.ground.back)+Target,Const(size.ground.front)) + 48, 0

[State 3130, Bind]
type = TargetBind
trigger1 = Time = 0
pos = (Target,Const(size.ground.front)), 0

[State 3130, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(3) = 0
x = (Target,Const(size.ground.back)+Target,Const(size.ground.front)) + 23

[State 3130, LifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 8
value = -156

[State 3130, TargetState]
type = TargetState
trigger1 = AnimElemTime(9) = 0
value = 3162

[State 3130, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1



;---------------------------------------------------------------------------
;ＬＶ３（回りこみ）
;---------------------------------------------------------------------------
[Statedef 3140]
type    = S
movetype= A
physics = N
anim = 1310
sprpriority = 3

[State 3140, AfterImage]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3140, Pos]
type = PosAdd
trigger1 = Time = 0
x = 30

[State 3140, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 3141

;---------------------------------------------------------------------------
;ＬＶ３（キャッチ）
;---------------------------------------------------------------------------
[Statedef 3141]
type    = S
movetype= A
physics = N
anim = 1317
sprpriority = 3

[State 3141, AfterImage]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3141, Pos]
type = PosAdd
trigger1 = Time = 0
x = 30

[State 3141, Pos]
type = turn
trigger1 = Time = 0

[State 3141, Bind]
type = TargetBind
trigger1 = AnimElemNo(1) = 1
pos = 18,-81

[State 3141, Bind]
type = TargetBind
trigger1 = AnimElemNo(1) = 2
pos = 13,-84

[State 3141, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 3142


;---------------------------------------------------------------------------
;ＬＶ３（パフォーマンス→滞空中）
;---------------------------------------------------------------------------
[Statedef 3142]
type    = S
movetype= A
physics = N
anim = 3142
sprpriority = 3

[State 3142, Voice]
type = PlaySnd
trigger1 = Time = 0
value = 100,7
channel = 0

[State 3142, AfterImage]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3142, Screenbind]
type = ScreenBound
trigger1 = 1
value = 0

[State 3142, TargetState]
type = TargetState
trigger1 = Time = 0
value = 3165

[State 3142, Bind]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0
trigger1 = AnimElemTime(4) < 0
pos = 14,-71

[State 3142, Bind]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0
trigger1 = AnimElemTime(5) < 0
pos = 24,-67

[State 3142, Bind]
type = TargetBind
trigger1 = AnimElemTime(5) >= 0
trigger1 = AnimElemTime(6) < 0
pos = 11,-66

[State 3142, Bind]
type = TargetBind
trigger1 = AnimElemTime(6) >= 0
trigger1 = AnimElemTime(7) < 0
pos = 14, -71

[State 3142, Bind]
type = TargetBind
trigger1 = AnimElemTime(7) >= 0
trigger1 = AnimElemTime(8) < 0
pos = 0,-56

[State 3142, Bind]
type = TargetBind
trigger1 = AnimElemTime(8) >= 0
pos = -1,-75



[State 3121, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) >= 1
trigger1 = AnimElemTime(5) < 0
x = 4.78

[State 3121, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) >= 0
x = 9.66

[State 3121, VelSet]
type = VelSet
trigger1 = AnimElemTime(6) = 1
y = -11.56

[State 3121, VelSet]
type = VelAdd
trigger1 = AnimElemTime(6) >= 1
y = 0.55

[State 3101, TargetState Lv3]
type = TargetState
trigger1 = ScreenPos X < -90
trigger2 = ScreenPos X > 410
value = 3163

[State 3121, State End]
type = ChangeState
trigger1 = ScreenPos X < -90
value = 3143	;左側画面外へ

[State 3121, State End]
type = ChangeState
trigger1 = ScreenPos X > 410
value = 3144	;右側画面外へ

;x  43
;y -41


;---------------------------------------------------------------------------
;ＬＶ３（左側から登場）
;---------------------------------------------------------------------------
[Statedef 3143]
type    = S
movetype= A
physics = N
anim = 3143
sprpriority = 3
velset = 0,0

[State 3143, AfterImage]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3121, Screenbind]
type = ScreenBound
trigger1 = 1
value = 0

[State 3121, ScreenBind]
type = Helper
trigger1 = time  = 0
postype = left
pos = -80,0
facing = 1
stateno = 3150
id = 3150
sprpriority = 1

[State 3121, ScreenBind]
type = Helper
trigger1 = time  = 0
postype = right
pos = 80,0
facing = -1
stateno = 3151
id = 3150
sprpriority = 1


[State 3143, PosSet]
type = PosSet
trigger1 = Time = 0
x = -220
y = -41

[State 3144, Ring]
type = Explod
trigger1 = Time = 0
anim = 3152
postype = p1
pos = 0, 41
facing = -1
bindtime = 55
removetime = -2
sprpriority = 1
removeongethit = 1

[State 3143, PosSet]
type = PosAdd
trigger1 = AnimElemTime(1) > 6
trigger1 = AnimElemTime(1) < 29
x = -4.4


[State 3143, Bind]
type = TargetBind
trigger1 = 1
pos = (Target,Const(size.ground.front)), 0

[State 3121, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) >= 1
x = -3.2

[State 3121, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 1
y = -9.94

[State 3121, VelSet]
type = VelAdd
trigger1 = AnimElemTime(4) >= 1
y = 0.88


[State 820, TargetState]
type = TargetState
trigger1 = Pos Y > 0
value = 3164

[State 820, State End]
type = ChangeState
trigger1 = Pos Y > 0
value = 3146


;---------------------------------------------------------------------------
;ＬＶ３（右側から登場）
;---------------------------------------------------------------------------
[Statedef 3144]
type    = S
movetype= A
physics = N
anim = 3143
sprpriority = 3
velset = 0,0

[State 3144, AfterImage]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3121, Screenbind]
type = ScreenBound
trigger1 = 1
value = 0

[State 3121, ScreenBind]
type = Helper
trigger1 = time  = 0
postype = left
pos = -80,0
facing = 1
stateno = 3150
id = 3150
sprpriority = 1

[State 3121, ScreenBind]
type = Helper
trigger1 = time  = 0
postype = right
pos = 80,0
facing = -1
stateno = 3151
id = 3150
sprpriority = 1


[State 3143, PosSet]
type = PosSet
trigger1 = Time = 0
x = 220
y = -41

[State 3144, Ring]
type = Explod
trigger1 = Time = 0
anim = 3152
postype = p1
pos = 0, 41
facing = -1
bindtime = 55
removetime = -2
sprpriority = 1
removeongethit = 1

[State 3143, PosSet]
type = PosAdd
trigger1 = AnimElemTime(1) > 6
trigger1 = AnimElemTime(1) < 29
x = -4.4


[State 3143, Bind]
type = TargetBind
trigger1 = 1
pos = (Target,Const(size.ground.front)), 0

[State 3121, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) >= 1
x = -3.2

[State 3121, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 1
y = -9.94

[State 3121, VelSet]
type = VelAdd
trigger1 = AnimElemTime(4) >= 1
y = 0.88


[State 820, TargetState]
type = TargetState
trigger1 = Pos Y > 0
value = 3164

[State 820, State End]
type = ChangeState
trigger1 = Pos Y > 0
value = 3146

;---------------------------------------------------------------------------
;ＬＶ３（着地）
;---------------------------------------------------------------------------
[Statedef 3146]
type    = A
movetype= H
physics = N
velset = 0,0
anim = 3146
sprpriority = 2

[State 3122, HitG Sound]
type = PlaySnd
trigger1 = Time = 0
value = 40,8

[State 3100, AfterImage]
type = AfterImageTime
trigger1 = AnimElemTime(15) < 0
time = 2

[State 3122, Bind]
type = TargetBind
trigger1 = Time = 0
pos = -49,0

[State 3122, TargetState]
type = TargetState
trigger1 = Time = 0
value = 3164

[State 3122, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 0
value = -192

[State 3122, Pos]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3122, ShockWave]
type = Explod
trigger1 = Time = 0
anim = 7500
id = 7500
postype = p2
pos = (Target,Const(size.ground.back)+Target,Const(size.ground.front)),0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
shadow = -1
ownpal = 1
[State 3122, ShockWave]
type = Explod
trigger1 =Time = 0
anim = 7510
id = 7510
postype = p2
pos = (Target,Const(size.ground.back)+Target,Const(size.ground.front)),0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 0
shadow = -1
ownpal = 1

[State 3122, Shake]
type = EnvShake
trigger1 = Time = 0
time = 24

[State 3122, Turn]
type = Turn
trigger1 = AnimTime = 0

[State 3122, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
;画面固定用ヘルパー
;---------------------------------------------------------------------------
[Statedef 3150]
type    = S
movetype= I
physics = N
sprpriority = 2
anim = 3150

[State 3150, 1]
type = NotHitBy
Trigger1 = 1
value = , AA, AP, AT

[State 3150, 1]
type = ScreenBound
Trigger1 = 1
value = 1
movecamera = -160,0

[State 3150, 1]
type = PlayerPush
Trigger1 = time <= 22
value = 0

[State 3150, 1]
type = PlayerPush
Trigger1 = time > 22
value = 1

[State 3150, 1]
type = DestroySelf
Trigger1 = root,stateno = 3146


[Statedef 3151]
type    = S
movetype= I
physics = N
sprpriority = 2
anim = 3150

[State 3150, 1]
type = NotHitBy
Trigger1 = 1
value = , AA, AP, AT

[State 3150, 1]
type = ScreenBound
Trigger1 = 1
value = 1
movecamera = 160,0

[State 3150, 1]
type = PlayerPush
Trigger1 = time <= 16
value = 0

[State 3150, 1]
type = PlayerPush
Trigger1 = time > 16
value = 1

[State 3150, 1]
type = DestroySelf
Trigger1 = root,stateno = 3146


;---------------------------------------------------------------------------
;演出気絶（食らい側）
;---------------------------------------------------------------------------
[Statedef 3160]
type    = A
movetype= H
physics = N
sprpriority = 2

[State 3160, 1]
type = NotHitBy
Trigger1 = 1
value = , AA, AP, AT

[State 3160, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3160

[State 3160, 1]
type = ChangeAnim
Trigger1 = (Anim = 3160) && (AnimTime = 0)
Trigger1 = AnimExist(5300)
value = 5300

[State 3160, 1]
type = ChangeAnim2
Trigger1 = (Anim = 3160) && (AnimTime = 0)
Trigger1 = !(AnimExist(5300))
value = 3161

[State 3160, PosAdd]
type = PosAdd
trigger1 = time < 2
x = -14.0

[State 3160, PosAdd]
type = PosAdd
trigger1 = time < 1
x = -6.0



;---------------------------------------------------------------------------
;ＬＶ２くらい側１
;---------------------------------------------------------------------------
[Statedef 3162]
type    = A
movetype= H
physics = N
velset = -6.9,-7.8
sprpriority = 2

[State 3160, PosAdd]
type = PosAdd
trigger1 = Time = 0
x = -6
y = -10

[State 810, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 856

[State 811, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 811, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground


;---------------------------------------------------------------------------
;ＬＶ３くらい側２
;---------------------------------------------------------------------------
[Statedef 3163]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 3121, Screenbind]
type = ScreenBound
trigger1 = 1
value = 0

[State 3163, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3163

;---------------------------------------------------------------------------
;ＬＶ３くらい側３
;---------------------------------------------------------------------------
[Statedef 3164]
type    = A
movetype= H
physics = N
velset = 5.4,-5.9
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
;ＬＶ３くらい側１
;---------------------------------------------------------------------------
[Statedef 3165]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 3165, 1]
type = turn
Trigger1 = Time = 0

[State 3165, 1]
type = ScreenBound
Trigger1 = 1
value = 0

[State 3165, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3165

;---------------------------------------------------------------------------
;ＬＶ３くらい側０
;---------------------------------------------------------------------------
[Statedef 3166]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 3165, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3166



;===========================================================================
;---------------------------------------------------------------------------
; サーディンズビーチスペシャル
;---------------------------------------------------------------------------
; ＬＶ１発動
;---------------------------------------------------------------------------
[Statedef 3200]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
velset = 0,0
ctrl = 0
anim = 3300
sprpriority = 2

[State 3200, VarSet]	;LV
type = VarSet
trigger1 = Time = 0
v = 1
value = 1

[State 3200, VarSet]	;Time
type = VarSet
trigger1 = Time = 0
v = 2
value = 84;158;248

[State 3200, Super A]
type = SuperPause
trigger1 = Time = 3
pos = 26, -72
anim = S8000
sound = S50, 1
poweradd = -1000
time = 50
movetime = 0

[State 3200, Sound]
type = PlaySnd
trigger1 = Time = 3
value = 100,7
channel = 0

[State 3200, Super A]
type = Pause
trigger1 = AnimElemTime(2) = 0
time = 1
movetime = 1

[State 3200, Super B]
type = AfterImage
trigger1 = AnimElemTime(2) = 0
time = 2
paladd = 55,35,15
palmul = .55,.55,.85
framegap = 6
length = 25

[State 3200, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) > 0
time = 2

[State 3200, Super D]
type = NotHitBy
trigger1 = Time = 0
value = , AA, AP, AT
time = 13

[State 3200, 2]
type = ChangeState
Trigger1 = AnimElemTime(2) = 2
value = 3300


;---------------------------------------------------------------------------
; ＬＶ２発動
;---------------------------------------------------------------------------
[Statedef 3210]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
velset = 0,0
ctrl = 0
anim = 3300
sprpriority = 2

[State 3200, VarSet]	;LV
type = VarSet
trigger1 = Time = 0
v = 1
value = 2

[State 3200, VarSet]	;Time
type = VarSet
trigger1 = Time = 0
v = 2
value = 158;238

[State 3200, Super A]
type = SuperPause
trigger1 = Time = 3
pos = 26, -72
anim = S8010
sound = S50, 1
poweradd = -2000
time = 50
movetime = 0

[State 3200, Sound]
type = PlaySnd
trigger1 = Time = 3
value = 100,7
channel = 0

[State 3200, Super A]
type = Pause
trigger1 = AnimElemTime(2) = 0
time = 3
movetime = 3

[State 3200, Super B]
type = AfterImage
trigger1 = AnimElemTime(2) = 0
time = 2
paladd = 55,35,15
palmul = .55,.55,.89
framegap = 6
length = 25

[State 3200, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) > 0
time = 2

[State 3200, Super D]
type = NotHitBy
trigger1 = Time = 0
value = , AA, AP, AT
time = 17

[State 3200, 2]
type = ChangeState
Trigger1 = AnimElemTime(2) = 2
value = 3300


;---------------------------------------------------------------------------
; ＬＶ３発動
;---------------------------------------------------------------------------
[Statedef 3220]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
velset = 0,0
ctrl = 0
anim = 3300
sprpriority = 2

[State 3200, VarSet]	;LV
type = VarSet
trigger1 = Time = 0
v = 1
value = 3

[State 3200, VarSet]	;Time
type = VarSet
trigger1 = Time = 0
v = 2
value = 248

[State 3200, Super A]
type = SuperPause
trigger1 = Time = 3
pos = 26, -72
anim = S8020
sound = S50, 1
poweradd = -3000
time = 50
movetime = 0

[State 3200, Sound]
type = PlaySnd
trigger1 = Time = 3
value = 100,7
channel = 0

[State 3200, Super A]
type = Pause
trigger1 = AnimElemTime(2) = 0
time = 7
movetime = 7

[State 3200, Super B]
type = AfterImage
trigger1 = AnimElemTime(2) = 0
time = 2
paladd = 55,35,15
palmul = .55,.55,.93
framegap = 6
length = 25

[State 3200, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) > 0
time = 2

[State 3200, Super D]
type = NotHitBy
trigger1 = Time = 0
value = , AA, AP, AT
time = 21

[State 3200, 2]
type = ChangeState
Trigger1 = AnimElemTime(2) = 2
value = 3300


;---------------------------------------------------------------------------
; Ｘ発動
;---------------------------------------------------------------------------
[Statedef 3222]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
velset = 0,0
ctrl = 0
anim = 3300
sprpriority = 2

[State 3200, VarSet]	;LV
type = VarSet
trigger1 = Time = 0
v = 1
value = 3

[State 3200, VarSet]	;Time
type = VarSet
trigger1 = Time = 0
v = 2
value = 248

[State 3200, FrontLayer]
type = Explod
trigger1 = Time = 3
anim = 8050
postype = p1
pos = 0, 0
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
removeongethit = 1
shadow = 0
supermovetime=1
[State 3200, BackLayer]
type = Explod
trigger1 = Time = 3
anim = 8051
postype = p1
pos = 0, 0
facing = 1
bindtime = -1
removetime = -2
sprpriority = 1
removeongethit = 1
shadow = 0
supermovetime=7
[State 3200, Sound]
type = PlaySnd
trigger1 = Time = 3
value = 50,0
channel = 15

[State 3200, Super A]
type = SuperPause
trigger1 = Time = 3
pos = 26,-72
anim = S8055
;sound = S50, 0
poweradd = -3000
time = 50
movetime = 0

[State 3200, Sound]
type = PlaySnd
trigger1 = Time = 3
value = 100,7
channel = 0

[State 3200, Super A]
type = Pause
trigger1 = AnimElemTime(2) = 0
time = 7
movetime = 7

[State 3200, Super B]
type = AfterImage
trigger1 = AnimElemTime(2) = 0
time = 2
paladd = 55,35,15
palmul = .55,.55,.93
framegap = 6
length = 25

[State 3200, Super C]
type = AfterImageTime
trigger1 = AnimElemTime(2) > 0
time = 2

[State 3200, Super D]
type = NotHitBy
trigger1 = Time = 0
value = , AA, AP, AT
time = 21

[State 3200, Sound]
type = PlaySnd
Trigger1 = AnimElemTime(1) = 4
value = 50,4
channel = 15

[State 3200, 2]
type = ChangeState
Trigger1 = AnimElemTime(2) = 2
value = 3300


;---------------------------------------------------------------------------
; 走り（基本）
;---------------------------------------------------------------------------
[Statedef 3300]
type    = S
movetype= I
physics = N
juggle  = 0
poweradd= 0
velset = 5.85,0
ctrl = 0
anim = 3300
sprpriority = 2

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3300, VarSet]	;TimeMinus
type = VarAdd
trigger1 = 1
v = 2
value = -1

[State 3300, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard

[State 3300, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = nowalk

[State 3300, RideAttempt]
type = ChangeState
Triggerall = time > 5
Trigger1 = (command = "a") || (command = "b") || (command = "c")
Trigger2 = (P2StateType != A) && (P2BodyDist X =[-2, 10])
value = 3350

[State 3300, Attack]
type = ChangeState
Triggerall = time > 1
Trigger1 = command = "x"
value = 3440

[State 3300, Attack]
type = ChangeState
Triggerall = time > 1
Trigger1 = command = "y"
value = 3450

[State 3300, Attack]
type = ChangeState
Triggerall = time > 1
Trigger1 = command = "z"
value = 3460

[State 3300, turn]
type = ChangeState
Trigger1 = time > 2 && BackEdgeDist > 55 && command = "holdback"
Trigger2 = FrontEdgeDist < 33
value = 3310

[State 3300, 2]
type = ChangeState
Trigger1 = Var(2) < 1
value = 3320


;---------------------------------------------------------------------------
; 方向転換
;---------------------------------------------------------------------------
[Statedef 3310]
type    = S
movetype= I
physics = S
juggle  = 0
poweradd= 0
velset = 2.4,0
ctrl = 0
anim = 3310
sprpriority = 2

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3300, VarSet]	;TimeMinus
type = VarAdd
trigger1 = 1
v = 2
value = -1

[State 3300, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard

[State 3300, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = nowalk

[State 3310, 2]
type = turn
Trigger1 = AnimTime = 0

[State 3310, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 3300

;[State 3310, 2]
;type = ChangeState
;Trigger1 = Var(2) < 1
;value = 3320


;---------------------------------------------------------------------------
; 効果時間終了
;---------------------------------------------------------------------------
[Statedef 3320]
type    = S
movetype= I
physics = S
juggle  = 0
poweradd= 0
velset = 6.8,0
ctrl = 0
anim = 3320
sprpriority = 2

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = AnimElemTime(4) < 0
time = 2

[State 3300, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard

[State 3300, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = nowalk

[State 3320, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; 跳び越し準備
;---------------------------------------------------------------------------
[Statedef 3350]
type    = A
movetype= A
physics = N
juggle  = 0
poweradd= 0
velset = 2.0,0
ctrl = 0
anim = 3350
sprpriority = 2

[State 3300, Voice]
type = PlaySnd
trigger1 = Time = 0
value = 100,0
channel = 0

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3350, VarSet]	;TimeMinus
type = VarAdd
trigger1 = 1
v = 2
value = -1

[State 3350, 1]
type = HitDef
Trigger1 = Time = 0
attr = A, HT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 3360
p2stateno = 3365
guard.dist = 0
numhits = 0

[State 3350, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard

[State 3350, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = nowalk

[State 3350, VelSet]
type = VelSet
trigger1 = time = 0
y = -6.19

[State 3350, VelSet]
type = VelAdd
trigger1 = Pos Y < 0
y = 0.45

[State 3350, VelSet]
type = PosSet
trigger1 = Pos Y > 0
y = 0

[State 3350, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 3300



;---------------------------------------------------------------------------
; 跳び越し（頭上～）
;---------------------------------------------------------------------------
[Statedef 3360]
type    = A
movetype= A
physics = N
juggle  = 0
poweradd= 0
velset = 0,0
ctrl = 0
anim = 3360
sprpriority = 2


[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3360, BackLayer]
type = Explod
trigger1 = Time = 0
anim = 3361
postype = p1
pos = 0, 0
facing = 1
bindtime = -1
removetime = -2
sprpriority = 1
removeongethit = 1
shadow = 1
[State 3360, BackLayer]
type = Explod
trigger1 = AnimElemTime(2) = 0
anim = 3362
postype = p1
pos = 0, 0
facing = 1
bindtime = -1
removetime = -2
sprpriority = 1
removeongethit = 1
shadow = 1
[State 3360, BackLayer]
type = Explod
trigger1 = AnimElemTime(3) >= 0
trigger1 = Vel Y < 0
anim = 3363
postype = p1
pos = 0, 0
facing = 1
bindtime = -1
removetime = -2
sprpriority = 1
removeongethit = 1
shadow = 1
[State 3360, BackLayer]
type = Explod
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(5) < 0
trigger1 = Vel Y >= 0
anim = 3364
postype = p1
pos = 0, 0
facing = 1
bindtime = -1
removetime = -2
sprpriority = 1
removeongethit = 1
shadow = 1


[State 3360, VarSet]	;TimeMinus
type = VarAdd
trigger1 = GameTime % 2 = 0
v = 2
value = -1

[State 3360, VarSet]
type = HitAdd
trigger1 = Time  = 0
value = -1

[State 3360, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard

[State 3360, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = nowalk

[State 3360, AssertSpecial]
type = PlayerPush
trigger1 = 1
value = 0


[State 3360, PosSet]
type = PosSet
trigger1 = Time = 0
x = ((Target,Pos X) - (facing * (Target,Const(size.head.pos.x))))
y = ((Target,Pos Y) + (Target,Const(size.head.pos.y)));+99

[State 3360, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 0
x = 2.6
y = -6.19

[State 3360, VelSet]
type = VelAdd
trigger1 = AnimElemTime(3) >= 0
trigger1 = Pos Y < 0
y = 0.56

[State 3360, Anim]
type = ChangeAnim
trigger1 = AnimElemTime(3) >= 0
trigger1 = Vel Y < 0
value = 3360
elem = 3

[State 3360, Anim]
type = ChangeAnim
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(5) < 0
trigger1 = Vel Y >= 0
value = 3360
elem = 4

[State 3360, Anim]
type = ChangeAnim
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(5) < 0
trigger1 = Pos Y >= 0
value = 3360
elem = 5


[State 3360, VelSet]
type = PosSet
trigger1 = Pos Y > 0
y = 0



[State 3360, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 3300


[State 3360, VarSet]
type = VarSet
trigger1 = time = 0
v = 3
value = Target,Const(size.ground.back)

[State 3350, 1]
type = HitDef
Trigger1 = AnimElemTime(3) < 0
Trigger1 = (command = "x") || (command = "y") || (command = "z") || (command = "a") || (command = "b") || (command = "c")
attr = A, HA
hitflag = M
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 3370
p2stateno = 3375
guard.dist = 0



;---------------------------------------------------------------------------
; 跳び越し食らい側（頭上～）
;---------------------------------------------------------------------------
[Statedef 3365]
type    = S
movetype= H
physics = N
juggle  = 0
poweradd= 0
velset = 0,0
ctrl = 0
sprpriority = 2

[State 3365, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard

[State 3365, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = nowalk


[State 3365, Anim]
type = ChangeAnim
Trigger1 = Time = 0
value = 0

[State 3365, Anim]
type = SelfState
Trigger1 = Time = 8
value = 0
ctrl = 1





;---------------------------------------------------------------------------
; 背後取り（空中）
;---------------------------------------------------------------------------
[Statedef 3370]
type    = A
movetype= A
physics = N
juggle  = 0
poweradd= 0
velset = 0,0
ctrl = 0
anim = 3370
sprpriority = 2


[State 3300, Grab Sound]
type = PlaySnd
trigger1 = Time = 0
value = 2,0

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3370, VarSet]	;TimeMinus
type = VarSet
trigger1 = Time = 0
v = 2
value = 0

[State 3370, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard

[State 3370, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = nowalk

[State 3370, AssertSpecial]
type = PlayerPush
trigger1 = 1
value = 0

[State 3370, AssertSpecial]
type = ScreenBound
trigger1 = 1
value = 0


[State 3370, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 0
x = (Var(3) / 18) + 0.1
y = -2.9

[State 3370, VelSet]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
trigger1 = Pos Y < 0
y = 0.51

[State 3370, Anim]
type = ChangeAnim
trigger1 = AnimElemTime(4) >= 0
trigger1 = Vel Y < 0
value = 3370
elem = 4

[State 3370, Anim]
type = ChangeAnim
trigger1 = AnimElemTime(4) >= 0
trigger1 = AnimElemTime(5) < 0
trigger1 = Vel Y >= 0
value = 3370
elem = 5

[State 3370, AssertSpecial]
type = PlayerPush
trigger1 = AnimElemTime(5) >= 0
trigger1 = AnimElemTime(6) < 0
value = 1

[State 3370, Anim]
type = ChangeAnim
trigger1 = AnimElemTime(5) >= 0
trigger1 = AnimElemTime(6) < 0
trigger1 = Pos Y >= 0
value = 3370
elem = 6

[State 3370, AssertSpecial]
type = PosAdd
trigger1 = AnimElemTime(5) >= 4
trigger1 = AnimElemTime(6) < 0
trigger1 = P2Dist X < 10
x = 0.6


[State 3370, PosSet]
type = PosSet
trigger1 = Pos Y > 0
y = 0

[State 3370, VelSet]
type = VelSet
trigger1 = Pos Y >= 0
x = 0
y = 0



[State 3370, turn]
type = turn
Trigger1 = AnimElemTime(6) = 0

[State 3370, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 3380


;---------------------------------------------------------------------------
; 背後取り食らい側
;---------------------------------------------------------------------------
[Statedef 3375]
type    = S
movetype= I
physics = N
juggle  = 0
poweradd= 0
velset = 0,0
ctrl = 0
sprpriority = 2

[State 3375, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard

[State 3375, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = nowalk


[State 3375, Anim]
type = ChangeAnim
Trigger1 = Time = 0
value = 0

[State 3375, Anim]
type = PosAdd
Trigger1 = Time = 36
x = 10

[State 3375, Anim]
type = SelfState
Trigger1 = Time = 100
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; 背後取り後の入力待ち
;---------------------------------------------------------------------------
[Statedef 3380]
type    = A
movetype= A
physics = N
juggle  = 0
poweradd= 0
velset = 0,0
ctrl = 0
anim = 0
sprpriority = 2

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3380, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard

[State 3380, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = nowalk

[State 3370, AssertSpecial]
type = PlayerPush
trigger1 = 1
value = 1

[State 3380, 2]
type = ChangeState
Trigger1 = (command = "x") || (command = "y") || (command = "z")
Trigger1 = (command = "holdfwd") || (command = "holdback")
value = 3420

[State 3380, 2]
type = ChangeState
Trigger1 = (command = "a") || (command = "b") || (command = "c")
Trigger1 = (command = "holdfwd") || (command = "holdback")
value = 3430

[State 3380, 2]
type = ChangeState
Trigger1 = (command = "x") || (command = "y") || (command = "z")
Trigger1 = (command != "holdfwd") && (command != "holdback")
value = 3400

[State 3380, 2]
type = ChangeState
Trigger1 = (command = "a") || (command = "b") || (command = "c")
Trigger1 = (command != "holdfwd") && (command != "holdback")
value = 3410

[State 3380, 2]
type = ChangeState
Trigger1 = Time = 60
value = 0
ctrl = 1



; 延髄ラリアット
;---------------------------------------------------------------------------
[Statedef 3400]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 3400
ctrl = 0
sprpriority = 2

[State 3400, Sound]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 0,3

[State 3400, Voice]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 100,1
channel = 0

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = AnimElemTime(4) < 0
time = 2

[State 3370, AssertSpecial]
type = PlayerPush
trigger1 = 1
value = 0

[State 3400, 1]
type = VelSet
trigger1 = AnimElemTime(4) < 1
x = 4.1

[State 3400, 6]
type = HitDef
trigger1 = time = 1
attr = S, HA
animtype  = Back
damage    = ifelse(var(1)=1,108,ifelse(var(1)=2,204,300)),10
getpower  = 0
priority  = 6
guardflag = 
pausetime = 12,12
sparkno = S7201
sparkxy = -10,-70
guard.sparkno = S7001
hitsound   = S1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4.9,-3.7
guard.hittime  = 12
fall = 1

[State 3400, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


; 延髄ドロップキック
;---------------------------------------------------------------------------
[Statedef 3410]
type    = A
movetype= A
physics = N
juggle  = 0
velset = 0,-4.0
anim = 3410
ctrl = 0
sprpriority = 2

[State 3400, Sound]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 0,3

[State 3400, Voice]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 100,12
channel = 0

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = AnimElemTime(7) < 0
time = 2

[State 3410, 4]
type = StateTypeSet
trigger1 = Pos Y <= 0
statetype = A
physics = N

[State 3410, PosSet]
type = PosSet
trigger1 = Pos Y > 0
y = 0

[State 3410, 1]
type = VelAdd
trigger1 = Pos Y < 0
trigger1 = AnimElemTime(9) < 0
y = 0.49


[State 3410, 6]
type = HitDef
trigger1 = time = 1
attr = S, HA
animtype  = Back
damage    = ifelse(var(1)=1,108,ifelse(var(1)=2,204,300)),10
getpower  = 0
priority  = 6
guardflag = 
pausetime = 12,12
sparkno = S7201
sparkxy = -10,-78
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -9.9,-1.7
guard.hittime  = 12
fall = 1

[State 3410, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;レインボースープレックス
;---------------------------------------------------------------------------
[Statedef 3420]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 20
velset = 0,0
ctrl = 0
anim = 3420
sprpriority = 2

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3420, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, HT
hitflag = M
priority = 7
sparkno = -1
sprpriority = 1
p1facing = -1
p2facing = 1
p1stateno = 3421
p2stateno = 3425
guard.dist = 0
fall = 1

[State 3420, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1


;レインボースープレックス（成功）
;---------------------------------------------------------------------------
[Statedef 3421]
type    = S
movetype= A
physics = N
anim = 3421
sprpriority = 3

[State 3421, Grab Sound]
type = PlaySnd
trigger1 = Time = 0
value = 2,0

[State 3421, Voice]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = 100,12
channel = 0

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = AnimElemTime(12) < 0
time = 2

[State 800, BackLayer]
type = Explod
trigger1 = Time = 0
anim = 3422
postype = p1
pos = 0, 0
facing = -1
bindtime = -1
removetime = -2
sprpriority = 1
removeongethit = 1
shadow = -1

[State 3421, Width]
type = Width
trigger1 = Time = 0
edge = (Target,Const(size.ground.back)+Target,Const(size.ground.front)), 0

[State 3421, Bind]
type = TargetBind
trigger1 = Time = 0
pos = -Target,Const(size.ground.back) - 23, 0

[State 3421, HitG Sound]
type = PlaySnd
trigger1 = AnimElemTime(8) = 1
value = 40,8

[State 3421, ShockWave]
type = Explod
trigger1 = AnimElemTime(8) = 1
anim = 7500
id = 7500
postype = p2
pos = -(Target,Const(size.ground.back)+Target,Const(size.ground.front))-48,0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
shadow = -1
ownpal = 1
[State 3421, ShockWave]
type = Explod
trigger1 = AnimElemTime(8) = 1
anim = 7510
id = 7510
postype = p2
pos = -(Target,Const(size.ground.back)+Target,Const(size.ground.front))-48,0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 0
shadow = -1
ownpal = 1

[State 3421, Shake]
type = EnvShake
trigger1 = AnimElemTime(8) = 1
time = 21

[State 3421, LifeAdd]
type = TargetLifeAdd
trigger1 = Var(59) != 1
trigger1 = AnimElem = 8
value = ifelse(var(1)=1,-90,ifelse(var(1)=2,-162,-234))

[State 3421, LifeAdd]
type = TargetLifeAdd
trigger1 = Var(59) = 1
trigger1 = AnimElem = 8
value = ifelse(var(1)=1,-108,ifelse(var(1)=2,-194,-280))

[State 3421, TargetState]
type = TargetState
trigger1 = AnimElemTime(9) = 0
value = 3426

[State 3421, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;Ｒ．スープレックスくらい側
;---------------------------------------------------------------------------
[Statedef 3425]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 3425, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3425

;Ｒ．スープレックスくらい側２
;---------------------------------------------------------------------------
[Statedef 3426]
type    = A
movetype= H
physics = N
velset = -3.4,-7.7
sprpriority = 2

[State 3426, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(7) = 0
x = -86

[State 3426, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 3426, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground





;デイドリームヘッドロック
;---------------------------------------------------------------------------
[Statedef 3430]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 20
velset = 0,0
ctrl = 0
anim = 3420
sprpriority = 2

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3420, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, HT
hitflag = M
priority = 7
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = -1
p1stateno = 3431
p2stateno = 1327
guard.dist = 0
fall = 1

[State 3420, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;デイドリーム～（成功）
;---------------------------------------------------------------------------
[Statedef 3431]
type    = S
movetype= A
physics = N
anim = 1317
sprpriority = 3

[State 3421, Grab Sound]
type = PlaySnd
trigger1 = Time = 0
value = 2,0

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3431, Bind]
type = TargetBind
trigger1 = AnimElemNo(1) = 1
pos = 18,-81

[State 3431, Bind]
type = TargetBind
trigger1 = AnimElemNo(1) = 2
pos = 13,-84

[State 3431, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 3432

;デイドリーム～（パフォーマンス）
;---------------------------------------------------------------------------
[Statedef 3432]
type    = S
movetype= A
physics = N
anim = 1318
sprpriority = 3

[State 3432, Voice]
type = PlaySnd
trigger1 = Time = 0
value = 100,7
channel = 0

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3431, TargetState]
type = TargetState
trigger1 = Time = 0
value = 1328

[State 3430, Bind]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0
trigger1 = AnimElemTime(4) < 0
pos = 14,-71

[State 3430, Bind]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0
trigger1 = AnimElemTime(5) < 0
pos = 24,-67

[State 3430, Bind]
type = TargetBind
trigger1 = AnimElemTime(5) >= 0
trigger1 = AnimElemTime(6) < 0
pos = 11,-66

[State 3430, Bind]
type = TargetBind
trigger1 = AnimElemTime(6) >= 0
trigger1 = AnimElemTime(7) < 0
pos = 14, -71

[State 3430, Bind]
type = TargetBind
trigger1 = AnimElemTime(7) >= 0
trigger1 = AnimElemTime(8) < 0
pos = 0,-56

[State 3430, Bind]
type = TargetBind
trigger1 = AnimElemTime(8) >= 0
pos = -1,-75


[State 3430, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) >= 1
x = 4.78

[State 3430, VelSet]
type = VelSet
trigger1 = AnimElemTime(6) = 1
y = -12.52

[State 3430, VelSet]
type = VelAdd
trigger1 = AnimElemTime(6) >= 1
y = 0.917

[State 3430, State End]
type = ChangeState
trigger1 = AnimElemTime(6) >= 5
trigger1 = Pos Y > 0
value = 3433


;（着地）
;---------------------------------------------------------------------------
[Statedef 3433]
type    = A
movetype= H
physics = N
velset = 0,0
anim = 1319
sprpriority = 2

[State 3433, HitG Sound]
type = PlaySnd
trigger1 = Time = 0
value = 40,8

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = AnimElemTime(3) < 0
time = 2

[State 3433, Bind]
type = TargetBind
trigger1 = Time = 0
pos = -49,0

[State 3433, TargetState]
type = TargetState
trigger1 = Time = 2
value = 1329

[State 3433, LifeAdd]
type = TargetLifeAdd
trigger1 = Var(59) != 1
trigger1 = Time = 0
value = ifelse(var(1)=1,-90,ifelse(var(1)=2,-162,-234))

[State 3433, LifeAdd]
type = TargetLifeAdd
trigger1 = Var(59) = 1
trigger1 = Time = 0
value = ifelse(var(1)=1,-108,ifelse(var(1)=2,-194,-280))

[State 3433, Pos]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3433, ShockWave]
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
[State 3433, ShockWave]
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

[State 3433, Shake]
type = EnvShake
trigger1 = Time = 0
time = 21

[State 3433, Turn]
type = Turn
trigger1 = AnimTime = 0

[State 3433, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1



;---------------------------------------------------------------------------
; リング出現技各種
;---------------------------------------------------------------------------
; ジャパニーズオーシャンドロップキック
;---------------------------------------------------------------------------
[Statedef 3440]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 3440
ctrl = 0
sprpriority = 2

[State 3400, Sound]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 0,3

[State 3400, Voice]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 100,13
channel = 0

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3400, 1]
type = VelSet
trigger1 = 1
x = 3.08

[State 3400, 6]
type = HitDef
trigger1 = time = 1
attr = S, HA
animtype  = Back
damage    = ifelse(var(1)=1,120,ifelse(var(1)=2,156,192)),ifelse(var(1)=1,12,ifelse(var(1)=2,15,19))
getpower  = 0
priority  = 6
guardflag = M
pausetime = 14,2
sparkno = S7201
sparkxy = -10,-83
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3.9,-0.2
guard.hittime  = 12
fall = 1
;p1stateno = 3470
p2stateno = 3589
fall.recover = 0

[State 3400, 7]
type = ChangeState
trigger1 = movehit
trigger1 = WinKO = 0
value = 3470

[State 3400, 7]
type = VarSet
trigger1 = movehit
trigger1 = WinKO = 1
v = 2
value = 1

[State 3400, 7]
type = ChangeState
trigger1 = movehit
trigger1 = WinKO = 1
trigger1 = AnimTime = 0
;value = 3320
value = 3300

[State 3400, 4]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
movetype = I

[State 3400, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 3300


;---------------------------------------------------------------------------
; ミカ・スライディング
;---------------------------------------------------------------------------
[Statedef 3450]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 3450
ctrl = 0
sprpriority = 2

[State 3400, Sound]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = 0,4

[State 3400, Voice]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = 100,0
channel = 0

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3450, 1]
type = VelSet
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(8) < 0
x = 4.28

[State 3450, 6]
type = HitDef
trigger1 = time = 1
attr = S, HA
animtype  = Back
damage    = ifelse(var(1)=1,120,ifelse(var(1)=2,156,192)),ifelse(var(1)=1,12,ifelse(var(1)=2,15,19))
getpower  = 0
priority  = 6
guardflag = L
pausetime = 12,3
sparkno = S7201
sparkxy = -5,-10
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2.4,-0.2
guard.hittime  = 12
fall = 1
;p1stateno = 3470
p2stateno = 3585
fall.recover = 0

[State 3450, 7]
type = ChangeState
trigger1 = movehit
trigger1 = WinKO = 0
value = 3470

[State 3400, 7]
type = VarSet
trigger1 = movehit
trigger1 = WinKO = 1
v = 2
value = 1

[State 3450, 7]
type = ChangeState
trigger1 = movehit
trigger1 = WinKO = 1
trigger1 = AnimTime = 0
;value = 3320
value = 3300

[State 3450, 4]
type = StateTypeSet
trigger1 = AnimElemTime(6) = 0
movetype = I

[State 3450, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 3300


;---------------------------------------------------------------------------
; ミカ・ラリアット
;---------------------------------------------------------------------------
[Statedef 3460]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 3460
ctrl = 0
sprpriority = 2

[State 3400, Sound]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 0,3

[State 3400, Voice]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 100,1
channel = 0

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3460, 1]
type = VelSet
trigger1 = 1
x = 2.98

[State 3460, 6]
type = HitDef
trigger1 = time = 1
attr = S, HA
animtype  = Back
damage    = ifelse(var(1)=1,120,ifelse(var(1)=2,156,192)),ifelse(var(1)=1,12,ifelse(var(1)=2,15,19))
getpower  = 0
priority  = 6
guardflag = L
pausetime = 12,3
sparkno = S7201
sparkxy = -10,-70
guard.sparkno = S7001
hitsound   = S1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3.5,-0.41
guard.hittime  = 12
fall = 1
;p1stateno = 3470
p2stateno = 3580
fall.recover = 0

[State 3400, 7]
type = ChangeState
trigger1 = movehit
trigger1 = WinKO = 0
value = 3470

[State 3400, 7]
type = VarSet
trigger1 = movehit
trigger1 = WinKO = 1
v = 2
value = 1

[State 3400, 7]
type = ChangeState
trigger1 = movehit
trigger1 = WinKO = 1
trigger1 = AnimTime = 0
;value = 3320
value = 3300

[State 3450, 4]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
movetype = I

[State 3460, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 3300



;---------------------------------------------------------------------------
;攻撃命中
;---------------------------------------------------------------------------
[Statedef 3470]
type    = S
movetype= A
physics = N
sprpriority = 3

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3121, ScreenBind]
type = Helper
trigger1 = time  = 0
postype = left
pos = -80,0
facing = 1
stateno = 3480
id = 3480
sprpriority = 1

[State 3121, ScreenBind]
type = Helper
trigger1 = time  = 0
postype = right
pos = 80,0
facing = -1
stateno = 3481
id = 3480
sprpriority = 1

[State 3470, StateDecider]
type = ChangeState
trigger1 = Pos X < 0
value = 3472

[State 3470, StateDecider]
type = ChangeState
trigger1 = Pos X >= 0
value = 3474


;画面左半分で命中
;---------------------------------------------------------------------------
[Statedef 3472]
type    = S
movetype= A
physics = N
sprpriority = 3

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3472, Ring]
type = Explod
trigger1 = (Anim = 3440) && (AnimElemTime(4) = 2)
trigger2 = (Anim = 3450) && (AnimElemTime(7) = 0)
trigger3 = (Anim = 3460) && (AnimElemTime(6) = 0)
anim = 3470
postype = Right
pos = 0, ceil(ScreenPos Y)
facing = -1
bindtime = 55
removetime = -2
sprpriority = 0
removeongethit = 1


[State 3450, 1]
type = VelSet
trigger1 = Anim = 3450
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(8) < 0
x = 4.28

[State 3450, 1]
type = VelSet
trigger1 = Anim = 3450
trigger1 = AnimElemTime(8) > 0
x = 0

[State 3450, 1]
type = VarSet
trigger1 = time = 0
v = 2
value = 1

[State 3472, State End]
type = turn
trigger1 = AnimTime = 0
trigger1 = facing = -1

[State 3472, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 3500



;画面右半分で命中
;---------------------------------------------------------------------------
[Statedef 3474]
type    = S
movetype= A
physics = N
sprpriority = 3

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3474, Ring]
type = Explod
trigger1 = (Anim = 3440) && (AnimElemTime(4) = 2)
trigger2 = (Anim = 3450) && (AnimElemTime(7) = 0)
trigger3 = (Anim = 3460) && (AnimElemTime(6) = 0)
anim = 3470
postype = Left
pos = 0, ceil(ScreenPos Y)
facing = 1
bindtime = 55
removetime = -2
sprpriority = 0
removeongethit = 1


[State 3450, 1]
type = VelSet
trigger1 = Anim = 3450
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(8) < 0
x = 4.28

[State 3450, 1]
type = VelSet
trigger1 = Anim = 3450
trigger1 = AnimElemTime(8) > 0
x = 0

[State 3450, 1]
type = VarSet
trigger1 = time = 0
v = 2
value = 2

[State 3472, State End]
type = turn
trigger1 = AnimTime = 0
trigger1 = facing = 1

[State 3472, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 3500




;---------------------------------------------------------------------------
;画面固定用ヘルパー
;---------------------------------------------------------------------------
[Statedef 3480]
type    = S
movetype= I
physics = N
sprpriority = 2
anim = 3150

[State 3150, 1]
type = NotHitBy
Trigger1 = 1
value = , AA, AP, AT

[State 3480, 1]
type = ScreenBound
Trigger1 = 1
value = 1
movecamera = -160,0

[State 3480, 1]
type = PlayerPush
Trigger1 = time <= 22
value = 0

[State 3480, 1]
type = PlayerPush
Trigger1 = time > 22
value = 1

[State 3480, 1]
type = DestroySelf
Trigger1 = !(root,stateno = [3300,3999])
Trigger2 = root,stateno = 3565 && AnimElemTime(13) = 6
Trigger3 = root,stateno = 3576
Trigger4 = root,stateno = 3600


[Statedef 3481]
type    = S
movetype= I
physics = N
sprpriority = 2
anim = 3150

[State 3480, 1]
type = NotHitBy
Trigger1 = 1
value = , AA, AP, AT

[State 3480, 1]
type = ScreenBound
Trigger1 = 1
value = 1
movecamera = 160,0

[State 3480, 1]
type = PlayerPush
Trigger1 = time <= 16
value = 0

[State 3480, 1]
type = PlayerPush
Trigger1 = time > 16
value = 1

[State 3480, 1]
type = DestroySelf
Trigger1 = !(root,stateno = [3300,3999])
Trigger2 = root,stateno = 3565 && AnimElemTime(13) = 6
Trigger3 = root,stateno = 3576
Trigger4 = root,stateno = 3600


;---------------------------------------------------------------------------
;リングに跳ぶ
;---------------------------------------------------------------------------
[Statedef 3500]
type    = S
movetype= A
physics = N
sprpriority = 3
anim = 3500

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3500, 1]
type = ScreenBound
Trigger1 = 1
value = 0

[State 3500, VelSet]
type = VelSet
trigger1 = time = 0
x = (FrontEdgeDist - 32.0) / 27
y = -10.64

[State 3500, VelSet]
type = VelAdd
trigger1 = AnimElemTime(12) < 0
y = 0.47

[State 3500, VelSet]
type = VelSet
trigger1 = AnimElemTime(12) = 0
x = 0
y = 0

[State 3500, VelSet]
type = PosSet
trigger1 = AnimElemTime(12) = 0
x = ifelse(Var(2) = 2, -118, 117)
y = -80

[State 3472, State End]	;ウイングレス
type = ChangeState
trigger1 = AnimElemTime(14) = ifelse(100 - (140 - Var(3)) > 4,100 - (140 - Var(3)),4)
trigger1 = (command = "hold_a") || (command = "hold_b") || (command = "hold_c")
trigger1 = (command = "holdfwd") || (command = "holdback")
value = 3570

[State 3472, State End]	;ミサイル
type = ChangeState
trigger1 = AnimElemTime(14) = ifelse(100 - (140 - Var(3)) > 4,100 - (140 - Var(3)),4)
trigger1 = (command = "hold_a") || (command = "hold_b") || (command = "hold_c")
value = 3520

[State 3472, State End]	;パラ
type = ChangeState
trigger1 = AnimElemTime(14) = ifelse(100 - (140 - Var(3)) > 4,100 - (140 - Var(3)),4)
;trigger1 = (command = "hold_x") || (command = "hold_y") || (command = "hold_z")
trigger1 = (command = "holdfwd") || (command = "holdback")
value = 3560

[State 3472, State End]
type = VarSet
trigger1 = AnimElemTime(12) = 0
v = 0
value = ceil(Target,ScreenPos X)

[State 3472, StateTime Decider]
type = VarSet
trigger1 = Time = 0
v = 3
value = ifelse(Target,const(data.liedown.time) <= 100,Target,const(data.liedown.time)+3,103)

[State 3472, State End]	;ムーンサルト
type = ChangeState
trigger1 = AnimElemTime(14) = ifelse(100 - (140 - Var(3)) > 4,100 - (140 - Var(3)),4)
value = 3540



;---------------------------------------------------------------------------
;ミサイルキック
;---------------------------------------------------------------------------
[Statedef 3520]
type    = A
movetype= A
physics = A
juggle  = 0
velset = 0,0
anim = 3520
ctrl = 0
sprpriority = 2

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3520, 1]
type = ScreenBound
Trigger1 = 1
value = 0

[State 3520, 1]
type = turn
Trigger1 = AnimElemTime(2) = 0

[State 3520, VelSet]
type = VelSet
Trigger1 = Time = 0
y = -5.826

[State 3520, VelSet]
type = VelSet
Trigger1 = AnimElemTime(2) = 0
x = abs((Var(0) - ScreenPos X) / 55)


[State 3520, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(13) > 0
y = 0.13

[State 3520, VelMul]
type = VelMul
trigger1 = AnimElemTime(11) = 0
x = 1.23

[State 3400, Voice]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = 100,5
channel = 0

[State 3520, 6]
type = HitDef
trigger1 = movecontact = 0
attr = S, HA
animtype  = Up
damage    = ifelse(var(1)=1,48,ifelse(var(1)=2,144,240)),ifelse(var(1)=1,12,ifelse(var(1)=2,15,19))
getpower  = 0
priority  = 6
guardflag = HA
hitflag = MAF
pausetime = 11,12
sparkno = S7201
sparkxy = -10,-30
guard.sparkno = S7001
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2.8,-6.11
guard.hittime  = 12
fall = 1
fall.recover = 0



;---------------------------------------------------------------------------
;ムーンサルト
;---------------------------------------------------------------------------
[Statedef 3540]
type    = A
movetype= A
physics = N
juggle  = 0
velset = 0,0
anim = 3540
ctrl = 0
sprpriority = 2

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3540, 1]
type = ScreenBound
Trigger1 = 1
value = 0

[State 3540, 1]
type = turn
Trigger1 = Time = 0

[State 3540, VelSet]
type = VelSet
Trigger1 = Time = 0
y = -6.61

[State 3540, VelSet]
type = VelSet
Trigger1 = Time = 0
x = abs((Var(0) - ScreenPos X) / 25)


[State 3400, Voice]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = 100,4
channel = 0

[State 3540, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) <= 0
y = 0.38

[State 3540, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 0
y = 0.56

[State 3540, VelMul]
type = VelMul
trigger1 = AnimElemTime(5) > 0
x = 0.2

[State 3540, 6]
type = HitDef
trigger1 = movecontact = 0
attr = S, HA
animtype  = Up
damage    = ifelse(var(1)=1,48,ifelse(var(1)=2,144,240)),ifelse(var(1)=1,12,ifelse(var(1)=2,15,19))
getpower  = 0
priority  = 6
guardflag = HA
hitflag = MAFD
pausetime = 13,12
sparkno = S7201
sparkxy = -10,-15
guard.sparkno = S7001
hitsound   = S1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4.8,-4.24
guard.hittime  = 12
fall = 1
fall.recover = 0

[State 3540, State End]
type = StateTypeSet
trigger1 = movecontact
type = A
physics = A

[State 3540, State End]
type = ChangeState
trigger1 = pos Y > 0
trigger1 = movecontact = 0
value = 3600


;---------------------------------------------------------------------------
;パラダイスホールド
;---------------------------------------------------------------------------
[Statedef 3560]
type    = A
movetype= A
physics = N
juggle  = 0
velset = 0,0
anim = 3540
ctrl = 0
sprpriority = 2

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3560, 1]
type = ScreenBound
Trigger1 = 1
value = 0

[State 3560, 1]
type = turn
Trigger1 = Time = 0

[State 3560, VelSet]
type = VelSet
Trigger1 = Time = 0
y = -6.61

[State 3560, VelSet]
type = VelSet
Trigger1 = Time = 0
x = abs((Var(0) - ScreenPos X) / 25)


[State 3400, Voice]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = 100,4
channel = 0

[State 3560, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) <= 0
y = 0.38

[State 3560, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 0
y = 0.56

[State 3560, VelMul]
type = VelMul
trigger1 = AnimElemTime(5) > 0
x = 0.2

[State 3560, 1]
type = HitDef
trigger1 = movecontact = 0
attr = A, HT
hitflag = HA-
priority = 7
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 3565
p2stateno = 3568
guard.dist = 0
fall = 1

[State 3540, 6]
type = HitDef
trigger1 = movecontact = 0
;trigger1 = time > 62
trigger1 = time > 36
attr = S, HA
animtype  = Up
damage    = ifelse(var(1)=1,48,ifelse(var(1)=2,144,240)),ifelse(var(1)=1,12,ifelse(var(1)=2,15,19))
getpower  = 0
priority  = 6
guardflag = HA
hitflag = MAFD
pausetime = 13,12
sparkno = S7201
sparkxy = -10,-15
guard.sparkno = S7001
hitsound   = S1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4.8,-4.24
guard.hittime  = 12
fall = 1
fall.recover = 0

[State 3560, State End]
type = StateTypeSet
trigger1 = movecontact
type = A
physics = A

[State 3560, State End]
type = ChangeState
trigger1 = pos Y > 0
trigger1 = movecontact = 0
value = 3600


;---------------------------------------------------------------------------
;パラダイスホールドキャッチ後
;---------------------------------------------------------------------------
[Statedef 3565]
type    = C
movetype= A
physics = N
anim = 3565
sprpriority = 3
velset = 0,0

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = AnimElemTime(18) < 0
time = 2

[State 3565, Grab Sound]
type = PlaySnd
trigger1 = time = 0
value = 2,0

[State 3400, Voice]
type = PlaySnd
trigger1 = time = 0
value = 100,9
channel = 0

[State 3565, HitG Sound]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
trigger2 = AnimElemTime(13) = 0
value = 40,8

[State 3565, PosSet]
type = PosSet
trigger1 = Time = 0
x = (Target,Pos X) + ((Target,facing) * (Target,Const(size.head.pos.x) + 8))
y = (Target,Const(size.head.pos.y)) + 15.0 + Target,Pos Y
;y = (Target,Const(size.head.pos.y)) + 65.0


[State 3565, Width]
type = Width
trigger1 = AnimElemTime(4) = 0
edge = (Target,Const(size.ground.back)+Target,Const(size.ground.front)) + 32, 0

[State 3565, Pos]
type = PosSet
trigger1 = AnimElemTime(4) = 0
y = 0

[State 3565, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(4) = 0
x = (Target,Const(size.ground.front))

[State 3565, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(10) >= 1
trigger1 = AnimElemTime(13) < 0
x = 4.8

[State 3565, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(14) >= 1
trigger1 = AnimElemTime(18) < 0
x = -5.15

[State 3565, Bind]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0
trigger1 = AnimElemTime(9) < 0
pos = -15,-15

[State 3565, Bind]
type = TargetBind
trigger1 = AnimElemTime(9) >= 0
trigger1 = AnimElemTime(10) < 0
pos = -20,-28

[State 3565, Bind]
type = TargetBind
trigger1 = AnimElemTime(10) >= 0
trigger1 = AnimElemTime(11) < 0
pos = -10,-33

[State 3565, Bind]
type = TargetBind
trigger1 = AnimElemTime(11) >= 0
trigger1 = AnimElemTime(12) < 0
pos = 7,-40

[State 3565, Bind]
type = TargetBind
trigger1 = AnimElemTime(12) >= 0
trigger1 = AnimElemTime(13) < 0
pos = 14,-23

[State 3565, Bind]
type = TargetBind
trigger1 = AnimElemTime(13) = 0
pos = 15,-15

[State 3565, LifeAdd]
type = TargetLifeAdd
trigger1 = Var(59) != 1
trigger1 = AnimElemTime(13) = 0
value = - (ifelse(var(1)=1,90,ifelse(var(1)=2,162,234)))

[State 3565, LifeAdd]
type = TargetLifeAdd
trigger1 = Var(59) = 1
trigger1 = AnimElemTime(13) = 0
value = - (ifelse(var(1)=1,108,ifelse(var(1)=2,194,280)))

[State 1245, TargetState]
type = TargetState
trigger1 = AnimElemTime(13) = 6
value = 3569

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

[State 3122, Shake]
type = EnvShake
trigger1 = AnimElemTime(4) = 0
time = 15
[State 3122, Shake]
type = EnvShake
trigger1 = AnimElemTime(13) = 0
time = 21

[State 1245, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
;パラダイスホールドくらい側
;---------------------------------------------------------------------------
[Statedef 3568]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 3568, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3568

;---------------------------------------------------------------------------
;パラダイスホールドくらい側２
;---------------------------------------------------------------------------
[Statedef 3569]
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
;ウイングレスエアプレーン
;---------------------------------------------------------------------------
[Statedef 3570]
type    = A
movetype= A
physics = N
juggle  = 0
velset = 0,0
anim = 3540
ctrl = 0
sprpriority = 2

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3570, 1]
type = ScreenBound
Trigger1 = 1
value = 0

[State 3570, 1]
type = turn
Trigger1 = Time = 0

[State 3570, VelSet]
type = VelSet
Trigger1 = Time = 0
y = -6.598

[State 3570, VelSet]
type = VelSet
Trigger1 = Time = 0
x = abs((Var(0) - ScreenPos X) / 25)


[State 3570, Voice]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = 100,4
channel = 0

[State 3570, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) <= 0
y = 0.38

[State 3570, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 0
y = 0.56

[State 3570, VelMul]
type = VelMul
trigger1 = AnimElemTime(5) > 0
x = 0.2

[State 3570, 1]
type = HitDef
trigger1 = movecontact = 0
attr = A, HT
hitflag = HA-
priority = 7
sparkno = -1
sprpriority = 1
p1facing = -1
p2facing = 1
p1stateno = 3575
p2stateno = 3578
guard.dist = 0
fall = 1

[State 3570, 6]
type = HitDef
trigger1 = movecontact = 0
;trigger1 = time > 62
trigger1 = time > 37
attr = S, HA
animtype  = Up
damage    = ifelse(var(1)=1,48,ifelse(var(1)=2,144,240)),ifelse(var(1)=1,12,ifelse(var(1)=2,15,19))
getpower  = 0
priority  = 6
guardflag = HA
hitflag = MAFD
pausetime = 13,12
sparkno = S7201
sparkxy = -10,-15
guard.sparkno = S7001
hitsound   = S1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4.8,-4.24
guard.hittime  = 12
fall = 1
fall.recover = 0

[State 3570, State End]
type = StateTypeSet
trigger1 = movecontact
type = A
physics = A

[State 3570, State End]
type = ChangeState
trigger1 = pos Y > 0
trigger1 = movecontact = 0
value = 3600


;---------------------------------------------------------------------------
;ウイングレスエアプレーン（キャッチ→着地直前）
;---------------------------------------------------------------------------
[Statedef 3575]
type    = A
movetype= A
physics = N
anim = 3575
velset = 0,0
sprpriority = 3

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3575, Gravity]
type = VelAdd
trigger1 = AnimElemTime(11) > 0
y = 0.44

[State 3575, Grab Sound]
type = PlaySnd
trigger1 = Time = 0
value = 2,0

[State 3575, Voice]
type = PlaySnd
trigger1 = Time = 0
value = 100,8
channel = 0

[State 3575, PosSet]
type = PosSet
trigger1 = Time = 0
x = (Target,Pos X)
y = ((Target,Pos Y) + (Target,Const(size.head.pos.y)))+99

[State 3575, PosSet];低空過ぎる時
type = PosSet
trigger1 = Time = 0
trigger1 = Pos Y > -1
y = -1

[State 3575, Bind]
type = TargetBind
trigger1 = Time >= 0
pos = 0, -99

[State 3575, State End]
type = ChangeState
trigger1 = Pos Y >= 0
value = 3576

;---------------------------------------------------------------------------
;ウイングレスエアプレーン（着地→）
;---------------------------------------------------------------------------
[Statedef 3576]
type    = A
movetype= H
physics = N
velset = 0,0
anim = 3576
sprpriority = 2

[State 3576, HitG Sound]
type = PlaySnd
trigger1 = Time = 3
value = 40,8

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3576, TargetState]
type = TargetState
trigger1 = Time = 0
value = 3579

[State 3576, Bind]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
pos = -36,-84

[State 3576, Bind]
type = TargetBind
trigger1 = AnimElemTime(2) = [0,2]
pos = -43,-9

[State 3576, LifeAdd]
type = TargetLifeAdd
trigger1 = Var(59) != 1
trigger1 = Time = 0
value = - (ifelse(var(1)=1,108,ifelse(var(1)=2,180,252)))

[State 3576, LifeAdd]
type = TargetLifeAdd
trigger1 = Var(59) = 1
trigger1 = Time = 0
value = - (ifelse(var(1)=1,129,ifelse(var(1)=2,216,302)))

[State 3576, Pos]
type = PosSet
trigger1 = Time = 0
y = 0

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

[State 3122, Shake]
type = EnvShake
trigger1 = Time = 3
time = 24

[State 3576, Turn]
type = Turn
trigger1 = AnimTime = 0

[State 3576, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;ウイングレスエアプレーンくらい側
;---------------------------------------------------------------------------
[Statedef 3578]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 3578, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3578

;---------------------------------------------------------------------------
;ウイングレスエアプレーンくらい側２
;---------------------------------------------------------------------------
[Statedef 3579]
type    = A
movetype= H
physics = N
sprpriority = 2

[State 3579, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3579

[State 3579, 1]
type = PosSet
Trigger1 = AnimElemTime(3) = 0
y = -1.0

[State 3579, 1]
type = VelSet
Trigger1 = AnimElemTime(3) = 0
x = 1.9
;y = -7.21
y = -8.82

[State 3579, 1] ;Gravity
type = VelAdd
Trigger1 = AnimElemTime(3) > 0
y = .4

[State 3579, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground



;---------------------------------------------------------------------------
; ミカ・ラリアットくらい側
[Statedef 3580]
type    = A
movetype= H
physics = N

[State 3580, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;GetHitVar
type = VelSet
trigger1 = time = 0
x = -3.5
y = -0.41

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = 0.44

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 3581 ;HIT_BOUNCE


;---------------------------------------------------------------------------
[Statedef 3581]
type    = L
movetype= H
physics = N

[State 3580, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = vel x > 1
x = 1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
;trigger1 = GetHitVar(fall.yvel) = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 3583 ;HIT_LIEDOWN

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
;value = 61
;pos = 0, 0
;under = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 10

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
;value = F7, 0 ;Hit ground
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 3582

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 3582]
type    = L
movetype= H
physics = N

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160

[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 5101, 3]
type = HitFallVel
trigger1 = Time = 0

[State 5101, 4]
type = PosSet
trigger1 = Time = 0
y = 20

[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .4

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = ChangeState
value = 3583

;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 3583]
type    = L
movetype= H
physics = N

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 5110, 11] ;If just died
type = SelfState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 5110, 11]
type = ChangeState
triggerall = alive
trigger1 = Time = 155
value = 3584

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 15]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine


;---------------------------------------------------------------------------
; HIT_GETUP
[Statedef 3584]
type    = L
movetype= I
physics = N

[State 5120, 1a] ;Get up anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5111,5119]
trigger2 = !SelfAnimExist(5120 + (anim % 10))
value = 5120

[State 5120, 1b] ;Get up anim (for hit up/diag-up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5111,5119]
trigger1 = SelfAnimExist(5120 + (anim % 10))
value = 5120 + (anim % 10)

[State 5120, 2]
type = VelSet
trigger1 = Time = 0
x = 0

[State 5120, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

[State 5120, 7]
type = SelfState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; ミカ・スライディング
[Statedef 3585]
type    = A
movetype= H
physics = N

[State 3580, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;GetHitVar
type = VelSet
trigger1 = time = 0
x = -2.4
y = -0.2

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = 0.44

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 3586 ;HIT_BOUNCE


;---------------------------------------------------------------------------
[Statedef 3586]
type    = L
movetype= H
physics = N

[State 3580, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = vel x > 1
x = 1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
;trigger1 = GetHitVar(fall.yvel) = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 3583 ;HIT_LIEDOWN

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
;value = 61
;pos = 0, 0
;under = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 10

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
;value = F7, 0 ;Hit ground
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 3587

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 3587]
type    = L
movetype= H
physics = N

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160

[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 5101, 3]
type = HitFallVel
trigger1 = Time = 0

[State 5101, 4]
type = PosSet
trigger1 = Time = 0
y = 20

[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .4

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = ChangeState
value = 3588

;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 3588]
type    = L
movetype= H
physics = N

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 5110, 11] ;If just died
type = SelfState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 5110, 11]
type = ChangeState
triggerall = alive
trigger1 = Time = const(data.liedown.time)
value = 3584

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 15]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine



;---------------------------------------------------------------------------
; ジャパニーズオーシャンドロップキック
[Statedef 3589]
type    = A
movetype= H
physics = N

[State 3580, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;GetHitVar
type = VelSet
trigger1 = time = 0
x = -3.9
y = -0.2

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = 0.44

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 3586 ;HIT_BOUNCE


;---------------------------------------------------------------------------
;ムーンサルト失敗
;---------------------------------------------------------------------------
[Statedef 3600]
type    = C
movetype= I
physics = N
anim = 3600
velset = 0,-4.2
sprpriority = 3

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3600, HitG Sound]
type = PlaySnd
trigger1 = Time = 0
value = 40,8

[State 3600, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3400, Voice]
type = PlaySnd
trigger1 = Time = 0
value = 10,1
channel = 0

[State 3600, PosSet]
type = VelAdd
trigger1 = 1
y = 0.44

[State 3600, State End]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = time >= 5
value = 3602

;失敗２
;---------------------------------------------------------------------------
[Statedef 3602]
type    = C
movetype= I
physics = N
velset = 0,0
sprpriority = 2

[State 3300, AfterImageTime]
type = AfterImageTime
trigger1 = Time = 0
time = 2

[State 3600, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3600, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


