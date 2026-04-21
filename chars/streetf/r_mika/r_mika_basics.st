;---------------------------------------------------------------------------
; Format:
; [Statedef STATENO]
; type = ?      S/C/A/L  stand/crouch/air/liedown
; movetype = ?  I/A/H    idle/attack/gethit
; physics = ?   S/C/A/N  stand/crouch/air/none
; juggle = ?             air juggle points move requires
;
; [State STATENO, ?]     ? - any number you choose
; type = ?
; ...

;---------------------------------------------------------------------------
; Lose by Time Over
; CNS difficulty: basic
; CNS レベル: 基本
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win state decider
; CNS difficulty: basic
; CNS レベル: 基本
[Statedef 180]
type = S

[State 180, 1]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 1,6

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
trigger1 = command = "hold_x"
value = 181

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
trigger1 = command = "hold_y"
value = 182

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
trigger1 = command = "hold_z"
value = 183

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
trigger1 = command = "hold_a"
value = 184

[State 181, 1]
type = AssertSpecial
trigger1 = 1
flag = RoundNotOver

[State 180, 1]
type = ChangeState
;trigger1 = Time = 1
trigger1 = Time > 0
trigger1 = NumHelper(8230) = 0
trigger1 = NumHelper(8330) = 0
trigger1 = NumHelper(8430) = 0
value = ifelse(Var(1) < 5,Var(1) + 180, 182)

;---------------------------------------------------------------------------
; 勝利１：跳ねるミカ
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0
sprpriority = 2

[State 181, 1]
type = PlaySnd
trigger1 = Time = 1
value = 100, 18

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181, 1]
type = AssertSpecial
trigger1 = time < 128
flag = RoundNotOver

;---------------------------------------------------------------------------
; 勝利２：通りぬける陽子コーチ
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0
sprpriority = 2

[State 182, 1]
type = PlaySnd
trigger1 = Time = 1
value = 100, 18

[State 182, Youko]
type = Helper
trigger1 = time  = 35
pos = 0,ceil(Pos Y)
postype = front
facing = 1
stateno = 187
sprpriority = 1

[State 182, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 182, 1]
type = AssertSpecial
trigger1 = time < 128
flag = RoundNotOver

; 陽子コーチ
[Statedef 187]
type = S
physics = N
ctrl = 0
anim = 187
velset = -6.0,0
sprpriority = 1

[State 182, 1]
type = DestroySelf
trigger1 = (ScreenPos X < -100) || (ScreenPos X > 420)

;---------------------------------------------------------------------------
; 勝利３：うなずく陽子コーチ
[Statedef 183]
type = S
ctrl = 0
anim = 181
velset = 0,0
sprpriority = 2

[State 183, 1]
type = PlaySnd
trigger1 = Time = 1
value = 100, 18

[State 183, turn]
type = turn
trigger1 = time  = 0

[State 183, Youko]
type = Helper
trigger1 = time  = 35
pos = 0,ceil(Pos Y)
postype = front
facing = 1
stateno = 188
sprpriority = 1

[State 183, 1]
type = AssertSpecial
trigger1 = time < 128
flag = RoundNotOver

[State 183, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

; 陽子コーチ
[Statedef 188]
type = S
physics = N
ctrl = 0
anim = 187
velset = -5.0,0
sprpriority = 1

[State 188, 1]
type = VelSet
trigger1 = Abs(root,Pos X - Pos X) < 10
x = 0.0

[State 188, 1]
type = ChangeAnim
trigger1 = Vel X = 0
trigger1 = Anim != 188
value = 188


;---------------------------------------------------------------------------
; 勝利４：タイヤを引いて退場
[Statedef 184]
type = S
ctrl = 0
anim = 183
velset = 0,0
sprpriority = 2

[State 184, 1]
type = PlaySnd
trigger1 = Time = 1
value = 100, 18

[State 184, turn]
type = turn
trigger1 = time  = 0

[State 184, Youko]
type = Helper
trigger1 = time  = 35
pos = 0,ceil(Pos Y)
postype = front
id = 184
facing = 1
stateno = 189
sprpriority = 1

[State 184, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 184, 1]
type = VarAdd
trigger1 = Var(1) != 0
v = 1
value = 1

[State 184, 1]
type = VarSet
trigger1 = time = 0
v = 1
value = 0

[State 184, 1]
type = VarSet
trigger1 = NumHelper(184) = 1
trigger1 = Abs(Pos X - Helper(184),Pos X) < 6
v = 1
value = 1

[State 184, 1]
type = ChangeAnim
trigger1 = Var(1) = 25
value = 186

[State 184, 1]
type = Explod
trigger1 = NumHelper(184) = 1
trigger1 = Abs(Pos X - Helper(184),Pos X) < 6
anim = 180
postype = p1
pos = 0, 0
facing = 1
removetime = -2
bindtime = -1
sprpriority = 2
shadow = -1

[State 184, 1]
type = turn
trigger1 = (Anim = 186) && (AnimElemTime(9) = 0)

[State 184, 1]
type = VelSet
trigger1 = (Anim = 186) && (AnimElemNo(1) = 9)
x = 4.0

[State 184, 1]
type = Explod
trigger1 = (Anim = 186) && (AnimElemTime(9) = 0)
anim = 184
postype = p1
pos = 0, 0
facing = 1
removetime = -1
bindtime = -1
sprpriority = 2
shadow = -1

[State 184, 1]
type = PlayerPush
trigger1 = 1
value = 0

[State 184, 1]
type = ScreenBound
trigger1 = time > 150
value = 0

[State 184, 1]
type = AssertSpecial
trigger1 = !((ScreenPos X < -50) || (ScreenPos X > 370))
flag = roundnotover

; 陽子コーチ
[Statedef 189]
type = S
physics = N
ctrl = 0
anim = 185
velset = -5.0,0
sprpriority = 1

[State 184, 1]
type = ScreenBound
trigger1 = 1
value = 0

[State 185, 1]
type = ChangeAnim
trigger1 = Abs(root,Pos X - Pos X) < 8
trigger1 = Anim != 189
value = 189


;---------------------------------------------------------------------------
; Introduction
; CNS difficulty: basic
; CNS レベル: 基本
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

[State 191, Ring]
type = Explod
trigger1 = RoundState = 1
trigger1 = Var(1) = 0
;trigger1 = time > 30		;+
anim = 194
id = 194
postype = back
pos = 0, ceil(ScreenPos Y)
facing = 1
removetime = 200
sprpriority = 3
shadow = -1

[State 191, Mika1]
type = Explod
trigger1 = RoundState = 1
trigger1 = Var(1) = 0
;trigger1 = time > 30		;+
anim = 191
id = 191
postype = back
pos = 0, ceil(ScreenPos Y)
facing = 1
removetime = 200
sprpriority = 3
shadow = -1

[State 181, 1]
type = PlaySnd
trigger1 = Var(1) = 55
;trigger1 = time > 30		;+
value = 100, 16

[State 191, Ring]
type = VarAdd
trigger1 = RoundState = 1
;trigger1 = time > 30		;+
v = 1
value = 1

[State 191, Ring]
type = Helper
trigger1 = Var(1) = 70
;trigger1 = time > 30		;+
pos = 36,ceil(Pos Y -96)
postype = back
facing = 1
stateno = 192


[Statedef 192]
type    = S
movetype= I
physics = N
ctrl = 0
anim = 192
velset = 1.6,-5.45

[State 192, 1]
type = VelAdd
trigger1 = 1
y = 0.44

[State 192, 1]
type = DestroySelf
trigger1 = AnimTime = 0


;---------------------------------------------------------------------------
; Taunt
; CNS difficulty: easy
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 195, 2]
type = VarSet
trigger1 = Time = 1
v = 6
value = 1

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;===========================================================================
;---------------------------------------------------------------------------
; 立ち弱パンチ
;---------------------------------------------------------------------------
[Statedef 200]
type    = S
movetype= A
physics = S
;juggle  = ifelse(Var(7) = 0,1,0)
velset = 0,0
ctrl = 0
anim = 200
poweradd = 0
sprpriority = 2

[State 200, 2]
type = ChangeState
trigger1 = Time = 1
value = 201

[Statedef 201]
type    = S
movetype= A
physics = S
juggle  = ifelse(Var(7) = 0,3,0)
sprpriority = 2

[State 200, 1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 0,0

[State 200, 1]
type = HitDef
trigger1 = Var(7) = 0
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
attr = S, NA
damage = 36, 0
animtype = Light
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 5,5
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10, -76
hitsound = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 11
guard.hittime  = 10
ground.velocity = -4.6
air.type = High
air.velocity = -2.4,ifelse((enemy,movetype = H),-3.6,-4.9)
airguard.velocity = -1.9,-.8
air.hittime = 12
getpower = 20,20
givepower = 20,0

[State 200, 1]
type = HitDef
trigger1 = Var(7) = 0
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
attr = S, NA
damage = 40, 0
animtype = Medium
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 5,5
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10, -76
hitsound = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 14
guard.hittime  = 13
ground.velocity = -4.6
air.type = High
air.velocity = -2.4,-4.9
airguard.velocity = -1.9,-.8
air.hittime = 12
getpower = 20,20
givepower = 20,0
air.fall = 1

[State 200, 1]
type = HitDef
trigger1 = time  = 1
trigger1 = Var(7) != 0
attr = S, NA
damage = 36, 0
animtype = Light
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 2,2
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10, -76
hitsound = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 11
guard.hittime  = 10
ground.velocity = -4.6
air.type = High
air.velocity = -2.4,-4.9
airguard.velocity = -1.9,-.8
air.hittime = 12
getpower = 0,0
givepower = 20,0
ground.cornerpush.veloff = -9.11


[State 200, 4]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
movetype = I

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 立ち中パンチ
;---------------------------------------------------------------------------
[Statedef 210]
type    = S
movetype= A
physics = S
;juggle  = ifelse(Var(7) = 0,4,0)
poweradd = ifelse(Var(7) = 0,20,0)
ctrl = 0
velset = 0,0
anim = 210
sprpriority = -1

[State 210, 2]
type = ChangeState
trigger1 = Time = 1
value = 211

[Statedef 211]
type    = S
movetype= A
physics = S
juggle  = ifelse(Var(7) = 0,5,0)
sprpriority = 2

[State 210, Width]
type = Width
trigger1 = (AnimElemTime (2) >= 0) && (AnimElemTime (7) < 0)
value = 25,0

[State 210, 1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 0,1

[State 210, 1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 100,0
channel = 0

[State 210, 2]
type = HitDef
trigger1 = AnimElemTime(4) < 0
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = S, NA
animtype  = Medium
damage    = 84
guardflag = M
pausetime = 6,6
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-70
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 14
guard.hittime  = 13
ground.velocity = -5.1
air.velocity = -3.7,ifelse((enemy,movetype = H),-3.6,-5.1)
getpower = 64 + ifelse(Var(59) = 0, 0, 20),32
givepower = 20,0

[State 210, 2]
type = HitDef
trigger1 = AnimElemTime(4) < 0
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = S, NA
animtype  = Heavy
damage    = 95
guardflag = M
pausetime = 6,6
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-70
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 18
guard.hittime  = 17
ground.velocity = -5.1
air.velocity = -3.7,-5.1
getpower = 64 + ifelse(Var(59) = 0, 0, 20),32
givepower = 20,0
air.fall = 1

[State 210, 2]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 1
attr = S, NA
animtype  = Medium
damage    = 84
guardflag = M
pausetime = 3,3
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-70
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 14
guard.hittime  = 13
ground.velocity = -5.1
air.velocity = -3.7,-5.1
getpower = 0,0
givepower = 20,0

[State 210, 2]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = Var(7) = 0
trigger1 = AnimElem = 4
trigger1 = movecontact = 0
attr = S, NA
animtype  = Medium
damage    = 78
guardflag = M
pausetime = 12,12
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-70
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 14
guard.hittime  = 13
ground.velocity = -5.1
air.velocity = -3.7,-5.1
getpower = 64 + ifelse(Var(59) = 0, 0, 20),32
givepower = 20,0

[State 210, 2]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = Var(7) = 0
trigger1 = AnimElem = 4
trigger1 = movecontact = 0
attr = S, NA
animtype  = Heavy
damage    = 87
guardflag = M
pausetime = 12,12
sparkno = S7101
guard.sparkno = S7001
sparkxy = -10,-70
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 18
guard.hittime  = 17
ground.velocity = -5.1
air.velocity = -3.7,-5.1
getpower = 64 + ifelse(Var(59) = 0, 0, 20),32
givepower = 20,0
air.fall = 1

[State 210, 2]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = AnimElem = 4
trigger1 = movecontact = 0
attr = S, NA
animtype  = Medium
damage    = 78
guardflag = M
pausetime = 6,6
sparkno = S7101
guard.sparkno = S7001
sparkxy = -10,-70
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 14
guard.hittime  = 13
ground.velocity = -5.1
air.velocity = -3.7,-5.1
getpower = 0,0
givepower = 20,0

[State 210, 4]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
movetype = I

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; 立ち強パンチ
;---------------------------------------------------------------------------
[Statedef 220]
type    = S
movetype= A
physics = S
;juggle  = ifelse(Var(7) = 0,4,0)
poweradd=  ifelse(Var(7) = 0,20,0)
ctrl = 0
velset = 0,0
anim = 220
sprpriority = -1

[State 220, 2]
type = ChangeState
trigger1 = Time = 1
value = 221

[Statedef 221]
type    = S
movetype= A
physics = S
juggle  = ifelse(Var(7) = 0,7,0)
sprpriority = 2

[State 220, 1]
type = PlaySnd
trigger1 = AnimElemTime(4) = 5
value = 0,2

[State 220, 1]
type = PlaySnd
trigger1 = AnimElemTime(4) = 5
value = 100,0
channel = 0

[State 220, 2]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = S, NA
animtype  = Heavy
damage    = 108
guardflag = M
pausetime = 8,8
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-82
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 18
guard.hittime  = 17
ground.velocity = -7.5
air.velocity = -3.8,ifelse((enemy,movetype = H),-3.6,-7.2)
getpower = 83 + ifelse(Var(59) = 0, 0, 41),41
givepower = 20,0

[State 220, 2]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = S, NA
animtype  = Back
damage    = 120
guardflag = M
pausetime =ifelse((enemy,statetype = A),8,21),ifelse((enemy,statetype = A),8,21)
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-82
hitsound   = S1,ifelse((enemy,statetype = A),3,7)
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 23
guard.hittime  = 22
ground.velocity = -2.6,-7.2
air.velocity = -3.8,-7.2
getpower = 83 + ifelse(Var(59) = 0, 0, 41),41
givepower = 20,0
fall = 1
air.fall = 1

[State 220, 2]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 1
attr = S, NA
animtype  = Heavy
damage    = 108
guardflag = M
pausetime = 4,4
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-82
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 18
guard.hittime  = 17
ground.velocity = -7.5
air.velocity = -3.8,-7.2
getpower = 0,0
givepower = 20,0

;まず12ドット
;その後10ドット
;その後8ドット
;さらに24ドット
;さらに2ドット
;また2ドット
;ラスト2ドット

[State 220, 5]
type = PosAdd
trigger1 = AnimElemTime(1) = 0
x = 12.0

[State 220, 5]
type = PosAdd
trigger1 = AnimElemTime(2) = 0
x = 10.0

[State 220, 5]
type = PosAdd
trigger1 = AnimElemTime(3) = 0
x = 8.0

[State 220, 5]
type = PosAdd
trigger1 = AnimElemTime(4) = 0
x = 24.0

[State 220, 5]
type = PosAdd
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(7) = 0
trigger3 = AnimElemTime(8) = 0
x = 2.0

[State 220, 4]
type = StateTypeSet
trigger1 = AnimElemTime(6) = 0
movetype = I

[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
; 立ち弱キック
;---------------------------------------------------------------------------
[Statedef 230]
type    = S
movetype= A
physics = S
;juggle  = ifelse(Var(7) = 0,4,0)
poweradd= 0
ctrl = 0
velset = 0,0
anim = 230
sprpriority = 2

[State 230, 2]
type = ChangeState
trigger1 = Time = 1
value = 231

[Statedef 231]
type    = S
movetype= A
physics = S
juggle  = ifelse(Var(7) = 0,4,0)
sprpriority = 2

[State 230, 1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 0,0

[State 230, 1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 100,1
channel = 0

[State 230, 2]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = S, NA
animtype  = Light
damage    = 36
guardflag = M
pausetime = 5,5
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10, -20
hitsound   = S1,10
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -4
air.velocity = -2.4,-3.5
getpower = 20,20
givepower = 20,0

[State 230, 2]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = S, NA
animtype  = Medium
damage    = 40
guardflag = M
pausetime = 5,5
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10, -20
hitsound   = S1,11
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 14
guard.hittime  = 13
ground.velocity = -4
air.velocity = -2.4,-3.5
getpower = 20,20
givepower = 20,0
air.fall = 1

[State 230, 2]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 0
attr = S, NA
animtype  = Light
damage    = 36
guardflag = M
pausetime = 2,2
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10, -20
hitsound   = S1,10
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -4
air.velocity = -2.4,-3.5
getpower = 0,0
givepower = 20,0

[State 230, 4]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
movetype = I

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 立ち中キック
;---------------------------------------------------------------------------
[Statedef 240]
type    = S
movetype= A
physics = S
;juggle  = ifelse(Var(7) = 0,5,0)
poweradd=  ifelse(Var(7) = 0,20,0)
ctrl = 0
velset = 0,0
anim = 240
sprpriority = 2

[State 240, 2]
type = ChangeState
trigger1 = Time = 1
value = 241

[Statedef 241]
type    = S
movetype= A
physics = S
juggle  = ifelse(Var(7) = 0,5,0)
sprpriority = 2

[State 240, 1]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 0,1

[State 240, 1]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 100,13
channel = 0

[State 240, 2]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = S, NA
animtype  = Medium
damage    = 72
guardflag = M
pausetime = 6,6
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-62
hitsound   = S1,11
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 14
guard.hittime  = 13
ground.velocity = -5.2
air.velocity = -4.0,-4.6
getpower = 64 + ifelse(Var(59) = 0, 0, 20),32
givepower = 20,0

[State 240, 2]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = S, NA
animtype  = Heavy
damage    = 81
guardflag = M
pausetime = 6,6
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-62
hitsound   = S1,12
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 18
guard.hittime  = 17
ground.velocity = -5.2
air.velocity = -4.0,-4.6
getpower = 64 + ifelse(Var(59) = 0, 0, 20),32
givepower = 20,0
air.fall = 1

[State 240, 2]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 72
guardflag = M
pausetime = 3,3
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-62
hitsound   = S1,11
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 14
guard.hittime  = 13
ground.velocity = -5.2
air.velocity = -4.0,-4.6
getpower = 0,0
givepower = 20,0

[State 240, 4]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
movetype = I

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 立ち強キック
;---------------------------------------------------------------------------
[Statedef 250]
type    = S
movetype= A
physics = S
;juggle  = ifelse(Var(7) = 0,5,0)
poweradd=  ifelse(Var(7) = 0,20,0)
ctrl = 0
velset = 0,0
anim = 250
sprpriority = 2

[State 250, 2]
type = ChangeState
trigger1 = Time = 1
value = 251

[Statedef 251]
type    = S
movetype= A
physics = S
juggle  = ifelse(Var(7) = 0,7,0)
sprpriority = 2

[State 250, 1]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 0,2

[State 250, 1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 100,12
channel = 0

[State 250, 2]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = S, NA
animtype  = Back
damage    = 96
guardflag = M
pausetime = 8,8
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-83
hitsound   = S1,12
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 18
guard.hittime  = 17
ground.velocity = -6.4,-3.9
air.velocity = -6.3,-4.4
getpower = 83 + ifelse(Var(59) = 0, 0, 41),41
givepower = 20,0
fall = 1
air.fall = 1

[State 250, 2]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = S, NA
animtype  = Back
damage    = 108
guardflag = M
pausetime =ifelse((enemy,statetype = A),8,21),ifelse((enemy,statetype = A),8,21)
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-83
hitsound   = S1,ifelse((enemy,statetype = A),13,17)
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 23
guard.hittime  = 22
ground.velocity = -4.2,-5.2
air.velocity = -6.3,-4.4
getpower = 83 + ifelse(Var(59) = 0, 0, 41),41
givepower = 20,0
fall = 1
air.fall = 1

[State 250, 2]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 0
attr = S, NA
animtype  = Back
damage    = 96
guardflag = M
pausetime = 4,4
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-83
hitsound   = S1,12
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 18
guard.hittime  = 17
ground.velocity = -6.4,-3.9
air.velocity = -6.3,-4.4
getpower = 0,0
givepower = 20,0
fall = 1
air.fall = 1

[State 250, 4]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
movetype = I

[State 250, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
; レバー入れ中キック（→）
;---------------------------------------------------------------------------
[Statedef 300]
type    = S
movetype= A
physics = S
;juggle  = ifelse(Var(7) = 0,5,0)
poweradd=  ifelse(Var(7) = 0,20,0)
ctrl = 0
velset = 0,0
anim = 300
sprpriority = 2

[State 300, 2]
type = ChangeState
trigger1 = Time = 1
value = 301

[Statedef 301]
type    = S
movetype= A
physics = S
juggle  = ifelse(Var(7) = 0,5,0)
sprpriority = 2

[State 300, 1]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 0,1

[State 300, 1]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 100,11
channel = 0

[State 300, 2]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = S, NA
animtype  = Medium
damage    = 66
guardflag = M
pausetime = 6,6
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-62
hitsound   = S1,11
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 14
guard.hittime  = 13
ground.velocity = -4.5
air.velocity = -4.0,-4.6
getpower = 64 + ifelse(Var(59) = 0, 0, 20),32
givepower = 20,0

[State 300, 2]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = S, NA
animtype  = Heavy
damage    = 74
guardflag = M
pausetime = 19,19
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-62
hitsound   = S1,12
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 18
guard.hittime  = 17
ground.velocity = -4.0
air.velocity = -4.0,-4.6
getpower = 64 + ifelse(Var(59) = 0, 0, 20),32
givepower = 20,0
air.fall = 1


[State 300, 2]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 66
guardflag = M
pausetime = 3,3
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-62
hitsound   = S1,11
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 14
guard.hittime  = 13
ground.velocity = -4.5
air.velocity = -4.0,-4.6
getpower = 0,0
givepower = 20,0

[State 300, 5]
type = PosAdd
trigger1 = AnimElemTime(2) >= 1
trigger1 = AnimElemTime(7) < 0
x = 2.0

[State 300, 5]
type = PosAdd
trigger1 = AnimElem(3) = 1
trigger2 = AnimElem(4) = 3
trigger3 = AnimElem(6) = 1
x = 2.0


; +2+2+2+2,+4+2+2,+2+2+4,+2+2+2,+4+2,0

[State 300, 4]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
movetype = I

[State 300, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
; レバー入れ中キック（←・Ｘ専用）
;---------------------------------------------------------------------------
[Statedef 310]
type    = S
movetype= A
physics = S
;juggle  = ifelse(Var(7) = 0,5,0)
poweradd=  ifelse(Var(7) = 0,20,0)
ctrl = 0
velset = 0,0
anim = 300
sprpriority = 2

[State 310, 2]
type = ChangeState
trigger1 = Time = 1
value = 311

[Statedef 311]
type    = S
movetype= A
physics = S
juggle  = ifelse(Var(7) = 0,5,0)
sprpriority = 2

[State 310, 1]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 0,1

[State 310, 1]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 100,11
channel = 0

[State 310, 2]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = S, NA
animtype  = Medium
damage    = 66
guardflag = MA
pausetime = 6,6
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-62
hitsound   = S1,11
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 14
guard.hittime  = 13
ground.velocity = -4.4
air.velocity = -3.9,-4.5
getpower = 64 + ifelse(Var(59) = 0, 0, 20),32
givepower = 20,0

[State 310, 2]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = S, NA
animtype  = Heavy
damage    = 74
guardflag = M
pausetime = 19,19
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-62
hitsound   = S1,12
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 18
guard.hittime  = 17
ground.velocity = -4.4
air.velocity = -3.9,-4.5
getpower = 64 + ifelse(Var(59) = 0, 0, 20),32
givepower = 20,0
air.fall = 1

[State 310, 2]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 66
guardflag = MA
pausetime = 3,3
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-62
hitsound   = S1,11
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 14
guard.hittime  = 13
ground.velocity = -4.4
air.velocity = -3.9,-4.5
getpower = 0,0
givepower = 20,0

[State 310, 5]
type = PosAdd
trigger1 = AnimElemTime(2) >= 1
trigger1 = AnimElemTime(7) < 0
x = -1.0

[State 310, 5]
type = PosAdd
trigger1 = AnimElem(3) = 1
trigger2 = AnimElem(4) = 3
trigger3 = AnimElem(6) = 1
x = -1.0


[State 310, 4]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
movetype = I

[State 310, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
; しゃがみ弱パンチ
;---------------------------------------------------------------------------
[Statedef 400]
type    = C
movetype= A
physics = C
;juggle  = ifelse(Var(7) = 0,5,0)
poweradd= 0
ctrl = 0
anim = 400
sprpriority = 2

[State 400, 2]
type = ChangeState
trigger1 = Time = 1
value = 401

[Statedef 401]
type    = C
movetype= A
physics = C
juggle  = ifelse(Var(7) = 0,5,0)
sprpriority = 2

[State 400, 1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 0,0

[State 400, 2]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = C, NA
damage    = 30
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 5,5
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10,-48
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 4
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -4.4
air.velocity = -2.0,-4.0
getpower = 20,20
givepower = 20,0

[State 400, 2]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = C, NA
damage    = 33
priority  = 3
animtype  = Medium
hitflag = MAF
guardflag = L
pausetime = 5,5
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10,-48
hitsound   = S1,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 4
ground.hittime = 14
guard.hittime  = 13
ground.velocity = -4.4
air.velocity = -2.0,-4.2
getpower = 20,20
givepower = 20,0
air.fall = 1

[State 400, 2]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 0
attr = C, NA
damage    = 30
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 2,2
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10,-48
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 4
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -4.4
air.velocity = -2.0,-4.0
getpower = 0,0
givepower = 20,0

[State 400, 4]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
movetype = I

[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; しゃがみ中パンチ
;---------------------------------------------------------------------------
[Statedef 410]
type    = C
movetype= A
physics = C
;juggle  = ifelse(Var(7) = 0,4,0)
poweradd=  ifelse(Var(7) = 0,20,0)
ctrl = 0
anim = 410
sprpriority = 2

[State 410, 2]
type = ChangeState
trigger1 = Time = 1
value = 411

[Statedef 411]
type    = C
movetype= A
physics = C
juggle  = ifelse(Var(7) = 0,4,0)
sprpriority = 2

[State 410, 1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 0,1

[State 410, 1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 100,0
channel = 0

[State 410, 2]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = C, NA
damage    = 78
animtype  = Medium
hitflag = MAF
guardflag = M
pausetime = 6,6
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-91
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 14
guard.hittime  = 13
ground.velocity = -4.7
air.velocity = -2.1,-6.4
getpower = 64 + ifelse(Var(59) = 0, 0, 20),32
givepower = 20,0

[State 410, 2]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = C, NA
damage    = 87
animtype  = Heavy
hitflag = MAF
guardflag = M
pausetime = 6,6
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-91
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 18
guard.hittime  = 17
ground.velocity = -4.7
air.velocity = -2.1,-6.5
getpower = 64 + ifelse(Var(59) = 0, 0, 20),32
givepower = 20,0
air.fall = 1

[State 410, 2]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 1
attr = C, NA
damage    = 78
animtype  = Medium
hitflag = MAF
guardflag = M
pausetime = 3,3
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-91
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 14
guard.hittime  = 13
ground.velocity = -4.7
air.velocity = -2.1,-6.4
getpower = 0,0
givepower = 20,0

[State 410, 4]
type = StateTypeSet
trigger1 = AnimElemTime(3) = 1
statetype = A
physics = N

[State 410, 4]
type = StateTypeSet
trigger1 = AnimElemTime(8) = 0
statetype = C
physics = C

[State 410, 4]
type = PosAdd
trigger1 = AnimElemTime(4) >= 1
trigger1 = AnimElemTime(7) < 0
x = 4.0

[State 410, 4]
type = PosAdd
trigger1 = AnimElemTime(4) = 2
trigger2 = AnimElemTime(5) = 2
trigger3 = AnimElemTime(7) = 1
trigger4 = AnimElemTime(8) = 1
x = 4.0

[State 410, 4]
type = PosAdd
trigger1 = AnimElemTime(4) = 1
y = -3.0

[State 410, 4]
type = PosAdd
trigger1 = AnimElemTime(4) = 2
y = -6.0

[State 410, 4]
type = PosAdd
trigger1 = AnimElemTime(4) = 3
trigger2 = AnimElemTime(5) = 1
y = -2.0

[State 410, 4]
type = PosAdd
trigger1 = AnimElemTime(4) = 4
trigger2 = AnimElemTime(5) = 2
y = -1.0

[State 410, 4]
type = PosAdd
trigger1 = AnimElemTime(5) = 3
trigger2 = AnimElemTime(6) = 2
y = 1.0

[State 410, 4]
type = PosAdd
trigger1 = AnimElemTime(6) = 1
trigger2 = AnimElemTime(7) = 1
trigger3 = AnimElemTime(7) = 2
y = 3.0

[State 410, 4]
type = PosAdd
trigger1 = AnimElemTime(6) = 3
trigger2 = AnimElemTime(7) = 1
y = 2.0


;Ｘ座標
;(Z)+0,+4+8+4+4,+4+8+4,+4+4+4,+8+4,+4+0,+0
;(X)+0,+4+8+4+4,+4+8+4,+4+4+4,+4+4+8+4+4,+4+0+0,+0
;
;Ｙ座標
;(Z)-0,-3-6-2-1,-2-1+1,+3+1+2,+5+3
;(X)-0,-4-4-3-5,-2-1-0,+2+1+2,+ +2+7+4+4
;(X)-0,-4-4-3-5,-2-1-0,+2+1+2,-2+2+6+4+4

[State 410, 4]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
movetype = I

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; しゃがみ中パンチ（Ｘ－ＩＳＭ）
;---------------------------------------------------------------------------
[Statedef 415]
type    = C
movetype= A
physics = C
;juggle  = ifelse(Var(7) = 0,4,0)
poweradd=  ifelse(Var(7) = 0,20,0)
ctrl = 0
anim = 415
sprpriority = 2

[State 415, 2]
type = ChangeState
trigger1 = Time = 1
value = 416

[Statedef 416]
type    = C
movetype= A
physics = C
juggle  = ifelse(Var(7) = 0,4,0)
sprpriority = 2

[State 415, 1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 0,1

[State 415, 1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 100,0
channel = 0

[State 415, 2]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = C, NA
damage    = 78
animtype  = Medium
hitflag = MAF
guardflag = M
pausetime = 6,6
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-91
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 14
guard.hittime  = 13
ground.velocity = -4.7
air.velocity = -2.1,-6.4
getpower = 64 + ifelse(Var(59) = 0, 0, 20),32
givepower = 20,0

[State 415, 2]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = C, NA
damage    = 87
animtype  = Heavy
hitflag = MAF
guardflag = M
pausetime = 6,6
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-91
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 18
guard.hittime  = 17
ground.velocity = -4.7
air.velocity = -2.1,-6.5
getpower = 64 + ifelse(Var(59) = 0, 0, 20),32
givepower = 20,0
air.fall = 1

[State 415, 2]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 1
attr = C, NA
damage    = 78
animtype  = Medium
hitflag = MAF
guardflag = M
pausetime = 3,3
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-91
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 14
guard.hittime  = 13
ground.velocity = -4.7
air.velocity = -2.1,-6.4
getpower = 0,0
givepower = 20,0

[State 415, 4]
type = StateTypeSet
trigger1 = AnimElemTime(3) = 1
statetype = A
physics = N

[State 415, 4]
type = StateTypeSet
trigger1 = AnimElemTime(8) = 0
statetype = C
physics = C

[State 415, 4]
type = PosAdd
trigger1 = AnimElemTime(4) >= 1
trigger1 = AnimElemTime(7) < 0
x = 4.0

[State 415, 4]
type = PosAdd
trigger1 = AnimElemTime(4) = 2
trigger2 = AnimElemTime(5) = 2
trigger3 = AnimElemTime(7) = 3
trigger4 = AnimElemTime(8) = 1
x = 4.0

[State 415, 4]
type = PosAdd
trigger1 = AnimElemTime(4) = 1
trigger2 = AnimElemTime(4) = 2
trigger3 = AnimElemTime(4) = 3
y = -4.0

[State 415, 4]
type = PosAdd
trigger1 = AnimElemTime(4) = 4
y = -5.0

[State 415, 4]
type = PosAdd
trigger1 = AnimElemTime(5) = 1
y = -3.0

[State 415, 4]
type = PosAdd
trigger1 = AnimElemTime(5) = 2
y = -2.0

[State 415, 4]
type = PosAdd
trigger1 = AnimElemTime(5) = 3
y = -1.0

[State 415, 4]
type = PosAdd
trigger1 = AnimElemTime(7) = 2
y = 3.0

[State 415, 4]
type = PosAdd
trigger1 = AnimElemTime(6) = 1
trigger2 = AnimElemTime(6) = 4
trigger3 = AnimElemTime(7) = 2
y = 2.0

[State 415, 4]
type = PosAdd
trigger1 = AnimElemTime(6) = 3
trigger2 = AnimElemTime(7) = 1
y = 1.0

[State 415, 4]
type = PosAdd
trigger1 = AnimElemTime(7) = 3
trigger2 = AnimElemTime(7) = 4
trigger3 = AnimElemTime(7) = 5
y = 4.0


;Ｘ座標
;(Z)+0,+4+8+4+4,+4+8+4,+4+4+4,+8+4,+4+0,+0
;(X)+0,+4+8+4+4,+4+8+4,+4+4+4,+4+4+8+4+4,+4+0+0,+0
;
;Ｙ座標
;(Z)-0,-3-6-2-1,-2-1+1,+3+1+2,+5+3
;(X)-0,-4-4-3-5,-2-1-0,+2+1+2,+ +2+7+4+4
;(X)-0,-4-4-3-5,-2-1-0,+2+1+1,+3+2+4+2+4

;改訂版(X)-0,-4-4-4-5,-3-2-1,+2+0+1+2,+1+5+4+4+4


[State 415, 4]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
movetype = I

[State 415, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; しゃがみ強パンチ
;---------------------------------------------------------------------------
[Statedef 420]
type    = C
movetype= A
physics = C
;juggle  = ifelse(Var(7) = 0,5,0)
poweradd=  ifelse(Var(7) = 0,20,0)
ctrl = 0
anim = 420
sprpriority = 2

[State 420, 2]
type = ChangeState
trigger1 = Time = 1
value = 421

[Statedef 421]
type    = C
movetype= A
physics = C
juggle  = ifelse(Var(7) = 0,7,0)
sprpriority = 2

[State 420, 1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 0,2

[State 420, 1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 100,15
channel = 0

[State 420, 2]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = C, NA
damage    = 96
priority  = 3
animtype  = Heavy
hitflag = MAF
guardflag = M
pausetime = 8,8
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-42
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 4
ground.hittime = 18
guard.hittime  = 17
ground.velocity = -4.1,-5.9
air.velocity = -4.0,-5.2
getpower = 83 + ifelse(Var(59) = 0, 0, 41),41
givepower = 20,0
fall = 1
air.fall = 1

[State 420, 2]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = C, NA
damage    = 108
priority  = 3
animtype  = Back
hitflag = MAF
guardflag = M
pausetime =ifelse((enemy,statetype = A),8,21),ifelse((enemy,statetype = A),8,21)
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-42
hitsound   = S1,ifelse((enemy,statetype = A),3,7)
guardsound = S6,0
ground.type = Low
ground.slidetime = 4
ground.hittime = 23
guard.hittime  = 22
ground.velocity = -2.7,-6.1
air.velocity = -4.0,-5.3
getpower = 83 + ifelse(Var(59) = 0, 0, 41),41
givepower = 20,0
fall = 1
air.fall = 1

[State 420, 2]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 0
attr = C, NA
damage    = 96
priority  = 3
animtype  = Heavy
hitflag = MAF
guardflag = M
pausetime = 4,4
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-42
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 4
ground.hittime = 18
guard.hittime  = 17
ground.velocity = -4.1,-5.9
air.velocity = -4.0,-5.2
getpower = 0,0
givepower = 20,0
fall = 1
air.fall = 1

[State 420, 4]
type = StateTypeSet
trigger1 = Pos Y < 0
statetype = A
physics = N

[State 420, 4]
type = StateTypeSet
trigger1 = Pos Y >= 0
statetype = C
physics = C

[State 420, 4]
type = ChangeAnim
trigger1 = movecontact
value = 420
elem = 5
persistent = 0

[State 420, 4]
type = PosSet
trigger1 = movecontact
y = 0
persistent = 0

[State 420, 4]
type = PosAdd
trigger1 = AnimElemTime(3) = 2
y = -2.0
[State 420, 4]
type = PosAdd
trigger1 = AnimElemTime(3) = 3
y = -4.0
[State 420, 4]
type = PosAdd
trigger1 = AnimElemTime(3) = 4
y = -1.0
[State 420, 4]
type = PosAdd
trigger1 = AnimElemTime(3) = 7
y = 1.0
[State 420, 4]
type = PosAdd
trigger1 = AnimElemTime(3) = 8
trigger2 = AnimElemTime(3) = 9
trigger3 = AnimElemTime(3) = 10
y = 2.0

[State 420, 4]
type = PosAdd
trigger1 = AnimElemTime(3) = 2
x = 6.0
[State 420, 4]
type = PosAdd
trigger1 = AnimElemTime(3) = 3
x = 10.0
[State 420, 4]
type = PosAdd
trigger1 = AnimElemTime(3) = 4
trigger2 = AnimElemTime(3) = 5
x = 5.0
[State 420, 4]
type = PosAdd
trigger1 = AnimElemTime(3) = 6
x = 4.0
[State 420, 4]
type = PosAdd
trigger1 = AnimElemTime(3) = 7
x = 7.0
[State 420, 4]
type = PosAdd
trigger1 = AnimElemTime(3) = 8
trigger2 = AnimElemTime(3) = 9
trigger3 = AnimElemTime(3) = 12
trigger4 = AnimElemTime(4) = 1
trigger5 = AnimElemTime(5) = 1
trigger6 = AnimElemTime(7) = 1
x = 3.0
[State 420, 4]
type = PosAdd
trigger1 = AnimElemTime(3) = 10
trigger2 = AnimElemTime(3) = 11
trigger3 = AnimElemTime(3) = 14
trigger4 = AnimElemTime(4) = 2
trigger5 = AnimElemTime(4) = 4
trigger6 = AnimElemTime(5) = 3
trigger7 = AnimElemTime(6) = 2
x = 2.0
[State 420, 4]
type = PosAdd
trigger1 = AnimElemTime(3) = 13
trigger2 = AnimElemTime(3) = 15
trigger3 = AnimElemTime(4) = 3
trigger4 = AnimElemTime(5) = 2
trigger5 = AnimElemTime(6) = 1
x = 1.0

[State 420, 4]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
movetype = I

[State 420, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;Ｘ座標
;0+6+10+5+5+4+7+3+3+2+2+3+1+2+1,+3+2+1+2,+3+1+2,+1+2,+3
;
;Ｙ座標
;0-2-4-1-0-0+1+2+2+2+0+0+0+0+0


;===========================================================================
;---------------------------------------------------------------------------
; しゃがみ弱キック
;---------------------------------------------------------------------------
[Statedef 430]
type    = C
movetype= A
physics = C
;juggle  = ifelse(Var(7) = 0,5,0)
poweradd= 0
ctrl = 0
anim = 430
sprpriority = 2

[State 430, 2]
type = ChangeState
trigger1 = Time = 1
value = 431

[Statedef 431]
type    = C
movetype= A
physics = C
juggle  = ifelse(Var(7) = 0,5,0)
sprpriority = 2

[State 430, 1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 0,0

[State 430, 2]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = C, NA
damage    = 24
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 5,5
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10,-32
hitsound   = S1,10
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -4.1
air.velocity = -2.1,-3.8
getpower = 20,20
givepower = 20,0

[State 430, 2]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = C, NA
damage    = 27
animtype  = Medium
hitflag = MAF
guardflag = L
pausetime = 5,5
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10,-32
hitsound   = S1,11
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime = 14
guard.hittime  = 13
ground.velocity = -4.1
air.velocity = -2.1,-3.9
getpower = 20,20
givepower = 20,0
air.fall = 1

[State 430, 2]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 0
attr = C, NA
damage    = 24
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 2,2
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10,-32
hitsound   = S1,10
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -4.1
air.velocity = -2.1,-3.8
getpower = 0,0
givepower = 20,0

[State 430, 4]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
movetype = I

[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; しゃがみ中キック
;---------------------------------------------------------------------------
[Statedef 440]
type    = C
movetype= A
physics = C
;juggle  = ifelse(Var(7) = 0,5,0)
poweradd=  ifelse(Var(7) = 0,40,0)
ctrl = 0
anim = 440
sprpriority = 2

[State 440, 2]
type = ChangeState
trigger1 = Time = 1
value = 441

[Statedef 441]
type    = C
movetype= A
physics = C
juggle  = ifelse(Var(7) = 0,5,0)
sprpriority = 2

[State 440, 2]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 0,1

[State 440, 2]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 100,1
channel = 0

[State 440, 3]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = C, NA
damage    = 66
animtype  = Medium
hitflag = MAF
guardflag = M
pausetime = 6,6
sparkno = S7101
guard.sparkno = S7000
sparkxy = -5,-45
hitsound   = S1,11
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 14
guard.hittime  = 13
ground.velocity = -4.4
air.velocity = -2.3,-3.5
guard.velocity = -5
getpower = 64 + ifelse(Var(59) = 0, 0, 20),32
givepower = 20,0

[State 440, 3]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = C, NA
damage    = 74
animtype  = Heavy
hitflag = MAF
guardflag = M
pausetime = 6,6
sparkno = S7101
guard.sparkno = S7000
sparkxy = -5,-45
hitsound   = S1,12
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 18
guard.hittime  = 17
ground.velocity = -4.4
air.velocity = -2.3,-3.6
guard.velocity = -5
getpower = 64 + ifelse(Var(59) = 0, 0, 20),32
givepower = 20,0
air.fall = 1

[State 440, 3]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 0
attr = C, NA
damage    = 66
hitflag = MAF
guardflag = M
pausetime = 3,3
sparkno = S7101
guard.sparkno = S7000
sparkxy = -5,-45
hitsound   = S1,11
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 14
guard.hittime  = 13
ground.velocity = -4.4
air.velocity = -2.3,-3.5
guard.velocity = -5
getpower = 0,0
givepower = 20,0

[State 440, 4]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
movetype = I

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; しゃがみ強キック
;---------------------------------------------------------------------------
[Statedef 450]
type    = C
movetype= A
physics = C
;juggle  = ifelse(Var(7) = 0,2,0)
poweradd=  ifelse(Var(7) = 0,40,0)
ctrl = 0
anim = 450
sprpriority = 2

[State 450, 2]
type = ChangeState
trigger1 = Time = 1
value = 451

[Statedef 451]
type    = C
movetype= A
physics = C
juggle  = ifelse(Var(7) = 0,2,0)
sprpriority = 2

[State 450, 2]
type = PlaySnd
trigger1 = Time = 1
value = 0,4

[State 450, 2]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 100,0
channel = 0

[State 450, 3]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = C, NA
damage    = 90
hitflag = MAF
guardflag = L
pausetime = 7,9
sparkno = S7102
guard.sparkno = S7000
sparkxy = -5,-10
hitsound   = S1,12
guardsound = S6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime = 18
guard.hittime  = 17
ground.velocity = -1.52,-2
air.velocity = -1.26,-2.4
guard.velocity = -5
fall = 1
air.fall = 1
getpower = 83 + ifelse(Var(59) = 0, 0, 41),41
givepower = 20,0

[State 450, 3]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = C, NA
damage    = 101
hitflag = MAF
guardflag = L
pausetime =ifelse((enemy,statetype = A),7,20),ifelse((enemy,statetype = A),9,22)
sparkno = S7102
guard.sparkno = S7000
sparkxy = -5,-10
hitsound   = S1,ifelse((enemy,statetype = A),13,17)
guardsound = S6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime = 23
guard.hittime  = 22
ground.velocity = -1.52,-2.6
air.velocity = -1.26,-2.8
guard.velocity = -5
fall = 1
air.fall = 1
getpower = 83 + ifelse(Var(59) = 0, 0, 41),41
givepower = 20,0

[State 450, 3]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 0
attr = C, NA
damage    = 90
hitflag = MAF
guardflag = L
pausetime = 4,4
sparkno = S7102
guard.sparkno = S7000
sparkxy = -5,-10
hitsound   = S1,12
guardsound = S6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime = 18
guard.hittime  = 17
ground.velocity = -1.52,-2
air.velocity = -1.26,-2.4
guard.velocity = -5
fall = 1
getpower = 0,0
givepower = 20,0

[State 450, 4]
type = PosAdd
trigger1 = AnimElemTime(2) = [1,2]
x = 9.0

[State 450, 4]
type = PosAdd
trigger1 = AnimElemTime(3) = [1,2]
trigger2 = AnimElemTime(4) = 1
trigger3 = AnimElemTime(5) = 1
trigger4 = AnimElemTime(7) = 1
x = 7.0

[State 450, 4]
type = PosAdd
trigger1 = AnimElemTime(3) = 1
trigger2 = AnimElemTime(5) = 1
trigger3 = AnimElemTime(8) = 3
x = 1.0

[State 450, 4]
type = PosAdd
trigger1 = AnimElemTime(5) = [1,2]
trigger2 = AnimElemTime(6) = [1,2]
x = 5.0

[State 450, 4]
type = PosAdd
trigger1 = AnimElemTime(7) = [2,3]
x = 3.0

[State 450, 4]
type = PosAdd
trigger1 = AnimElemTime(8) = [1,2]
x = 2.0


;+9+9,+8+7,+7,+13+5,+5+5,+7+3+3,+2+2+1+0+0,

[State 450, 4]
type = StateTypeSet
trigger1 = AnimElemTime(6) = 0
movetype = I

[State 450, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;===========================================================================
;---------------------------------------------------------------------------
; ジャンプ弱パンチ（垂直）
;---------------------------------------------------------------------------
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = ifelse(Var(7) = 0,2,0)
poweradd= 0
ctrl = 0
anim = 600
sprpriority = 2

[State 600, 1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 0,0

[State 600, 2]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, NA
damage    = 48
animtype  = Light
guardflag = HA
priority = 3
pausetime = 5,5
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10,-58
hitsound   = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 11
ground.hittime = 13
guard.hittime  = 10
ground.velocity = -3.2
air.velocity = -1.4,-3
getpower = 20,20
givepower = 20,0

[State 600, 2]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, NA
damage    = 54
animtype  = Medium
guardflag = HA
priority = 3
pausetime = 5,5
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10,-58
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 11
ground.hittime = 16
guard.hittime  = 13
ground.velocity = -3.2
air.velocity = -1.4,-3.1
getpower = 20,20
givepower = 20,0
air.fall = 1

[State 600, 2]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 0
attr = A, NA
damage    = 48
animtype  = Light
guardflag = HA
priority = 3
pausetime = 2,2
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10,-58
hitsound   = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 11
ground.hittime = 13
guard.hittime  = 10
ground.velocity = -3.2
air.velocity = -1.4,-3
getpower = 0,0
givepower = 20,0

[State 600, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 602

[Statedef 602]
type    = A
movetype= A
physics = A
ctrl = 0
sprpriority = 2

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50, 3]
type = ChangeAnim
trigger1 = Anim != [44,46]
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

[State 600, 4]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
movetype = I

[State 600, 3]
type = ChangeState
trigger1 = Time = 7
value = 50


;---------------------------------------------------------------------------
; ジャンプ弱パンチ（斜め）
;---------------------------------------------------------------------------
[Statedef 605]
type    = A
movetype= A
physics = A
juggle  = ifelse(Var(7) = 0,2,0)
poweradd= 0
ctrl = 0
anim = 605
sprpriority = 2

[State 605, 1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 0,0

[State 605, 2]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, NA
damage    = 48
animtype  = Light
guardflag = HA
priority = 3
pausetime = 5,5
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10,-58
hitsound   = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 11
ground.hittime = 13
guard.hittime  = 10
ground.velocity = -4.1
air.velocity = -1.4,-3
getpower = 20,20
givepower = 20,0

[State 605, 2]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, NA
damage    = 54
animtype  = Medium
guardflag = HA
priority = 3
pausetime = 5,5
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10,-58
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 11
ground.hittime = 14
guard.hittime  = 13
ground.velocity = -4.1
air.velocity = -1.4,-3.1
getpower = 20,20
givepower = 20,0
air.fall = 1

[State 605, 2]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 0
attr = A, NA
damage    = 48
animtype  = Light
guardflag = HA
priority = 3
pausetime = 2,2
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10,-58
hitsound   = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 11
ground.hittime = 16
guard.hittime  = 10
ground.velocity = -4.1
air.velocity = -1.4,-3
getpower = 0,0
givepower = 20,0

[State 605, 4]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
movetype = I

[State 605, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 607

[Statedef 607]
type    = A
movetype= A
physics = A
ctrl = 0
sprpriority = 2

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50, 3]
type = ChangeAnim
trigger1 = Anim != [44,46]
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

[State 600, 3]
type = ChangeState
trigger1 = Time = 1
value = 50


;---------------------------------------------------------------------------
; ジャンプ中パンチ（垂直）
;---------------------------------------------------------------------------
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = ifelse(Var(7) = 0,3,0)
poweradd= ifelse(Var(7) = 0,20,0)
ctrl = 0
anim = 610
sprpriority = 2

[State 610, 2]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 0,1

[State 610, 3]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, NA
damage = 78
animtype  = Medium
guardflag = HA
priority = 4
pausetime = 6,6
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-55
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 18
ground.hittime = 13
guard.hittime  = 13
ground.velocity = -5
air.velocity = -2,-4.1
getpower = 64 + ifelse(Var(59) = 0, 0, 20),32
givepower = 20,0

[State 610, 3]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, NA
damage = 87
animtype  = Heavy
guardflag = HA
priority = 4
pausetime = 6,6
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-55
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 18
ground.hittime = 16
guard.hittime  = 13
ground.velocity = -5
air.velocity = -2,-4.2
getpower = 64 + ifelse(Var(59) = 0, 0, 20),32
givepower = 20,0
air.fall = 1


[State 610, 3]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 0
attr = A, NA
damage = 78
guardflag = HA
priority = 4
pausetime = 3,3
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-55
hitsound   = S1,1
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 18
ground.hittime = 13
guard.hittime  = 13
ground.velocity = -5
air.velocity = -2,-4.1
getpower = 0,0
givepower = 20,0

[State 610, 4]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
movetype = I

[State 610, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 607


;---------------------------------------------------------------------------
; ジャンプ中パンチ（斜め）
;---------------------------------------------------------------------------
[Statedef 615]
type    = A
movetype= A
physics = A
juggle  = ifelse(Var(7) = 0,3,0)
poweradd= ifelse(Var(7) = 0,20,0)
ctrl = 0
anim = 615
sprpriority = 2

[State 615, 2]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 0,1

[State 615, 3]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, NA
damage = 78
animtype  = Medium
guardflag = HA
priority = 4
pausetime = 6,6
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-55
hitsound   = S1,1
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 18
ground.hittime = 13
guard.hittime  = 13
ground.velocity = -5.2
air.velocity = -2,-4.1
getpower = 64 + ifelse(Var(59) = 0, 0, 20),32
givepower = 20,0

[State 615, 3]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, NA
damage = 87
animtype  = Heavy
guardflag = HA
priority = 4
pausetime = 6,6
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-55
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 18
ground.hittime = 16
guard.hittime  = 13
ground.velocity = -5.2
air.velocity = -2,-4.2
getpower = 64 + ifelse(Var(59) = 0, 0, 20),32
givepower = 20,0
air.fall = 1

[State 615, 3]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 0
attr = A, NA
damage = 78
guardflag = HA
priority = 4
pausetime = 3,3
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-55
hitsound   = S1,1
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 18
ground.hittime = 13
guard.hittime  = 13
ground.velocity = -5.2
air.velocity = -2,-4.1
getpower = 0,0
givepower = 20,0

[State 615, 4]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
movetype = I

[State 615, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 607


;---------------------------------------------------------------------------
; ジャンプ強パンチ（垂直）
;---------------------------------------------------------------------------
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = ifelse(Var(7) = 0,4,0)
poweradd= ifelse(Var(7) = 0,20,0)
ctrl = 0
anim = 620
sprpriority = 2

[State 620, 2]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 0,2

[State 620, 2]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 100,12
channel = 0

[State 620, 3]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, NA
damage = 102
animtype = Heavy
guardflag = HA
priority = 4
pausetime = 10,10
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-25
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 23
ground.hittime = 13
guard.hittime  = 17
ground.velocity = -6.2
air.velocity = -3,-4.5
getpower = 83 + ifelse(Var(59) = 0, 0, 41),41
givepower = 20,0

[State 620, 3]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, NA
damage = 115
animtype = Back
guardflag = HA
priority = 4
pausetime = 10,10
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-25
hitsound   = S1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 23
ground.hittime = 16
guard.hittime  = 17
ground.velocity = -3
air.velocity = -3,-4.5
getpower = 83 + ifelse(Var(59) = 0, 0, 41),41
givepower = 20,0
air.fall = 1


[State 620, 3]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 0
attr = A, NA
damage = 102
guardflag = HA
priority = 4
pausetime = 5,5
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-25
hitsound   = S1,2
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 23
ground.hittime = 13
guard.hittime  = 17
ground.velocity = -6.2
air.velocity = -3,-4.5
getpower = 0,0
givepower = 20,0

[State 620, 4]
type = StateTypeSet
trigger1 = AnimElemTime(6) = 0
movetype = I

[State 620, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 607


;---------------------------------------------------------------------------
; ジャンプ強パンチ（斜め）
;---------------------------------------------------------------------------
[Statedef 625]
type    = A
movetype= A
physics = A
juggle  = ifelse(Var(7) = 0,4,0)
poweradd= ifelse(Var(7) = 0,20,0)
ctrl = 0
anim = 625
sprpriority = 2

[State 625, 2]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 0,2

[State 625, 2]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 100,12
channel = 0

[State 625, 3]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, NA
damage = 102
animtype = Heavy
guardflag = HA
priority = 4
pausetime = 10,10
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-25
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 23
ground.hittime = 13
guard.hittime  = 17
ground.velocity = -6.6
air.velocity = -3,-4.5
getpower = 83 + ifelse(Var(59) = 0, 0, 41),41
givepower = 20,0

[State 625, 3]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, NA
damage = 115
animtype = Back
guardflag = HA
priority = 4
pausetime = 10,10
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-25
hitsound   = S1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 23
ground.hittime = 16
guard.hittime  = 17
ground.velocity = -6.6
air.velocity = -3,-4.6
getpower = 83 + ifelse(Var(59) = 0, 0, 41),41
givepower = 20,0
air.fall = 1

[State 625, 3]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 0
attr = A, NA
damage = 102
guardflag = HA
priority = 4
pausetime = 5,5
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-25
hitsound   = S1,2
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 23
ground.hittime = 13
guard.hittime  = 17
ground.velocity = -6.6
air.velocity = -3,-4.5
getpower = 0,0
givepower = 20,0

[State 625, 4]
type = StateTypeSet
trigger1 = AnimElemTime(6) = 0
movetype = I

[State 625, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 607


;===========================================================================
;---------------------------------------------------------------------------
; ジャンプ弱キック
;---------------------------------------------------------------------------
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = ifelse(Var(7) = 0,2,0)
poweradd= 0
ctrl = 0
anim = 630
sprpriority = 2

[State 630, 1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 0,0

[State 630, 2]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, NA
damage = 36
animtype = Light
guardflag = HA
priority = 3
pausetime = 5,5
sparkno = S7100
guard.sparkno = S7000
sparkxy = -5,-65
hitsound   = S1,10
guardsound = S6,0
ground.type = High
ground.slidetime = 11
ground.hittime = 13
guard.hittime  = 10
ground.velocity = -4.1
air.velocity = -1.4,-3
getpower = 20,20
givepower = 20,0

[State 630, 2]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, NA
damage = 40
animtype = Medium
guardflag = HA
priority = 3
pausetime = 5,5
sparkno = S7100
guard.sparkno = S7000
sparkxy = -5,-65
hitsound   = S1,11
guardsound = S6,0
ground.type = High
ground.slidetime = 11
ground.hittime = 16
guard.hittime  = 10
ground.velocity = -4.1
air.velocity = -1.4,-3.1
getpower = 20,20
givepower = 20,0
air.fall = 1

[State 630, 2]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 0
attr = A, NA
damage = 36
guardflag = HA
priority = 3
pausetime = 2,2
sparkno = S7100
guard.sparkno = S7000
sparkxy = -5,-65
hitsound   = S1,10
guardsound = S6,0
ground.type = High
ground.slidetime = 11
ground.hittime = 13
guard.hittime  = 10
ground.velocity = -4.1
air.velocity = -1.4,-3
getpower = 0,0
givepower = 20,0

[State 630, 4]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
movetype = I

[State 630, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 607


;---------------------------------------------------------------------------
; ジャンプ中キック（垂直）
;---------------------------------------------------------------------------
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = ifelse(Var(7) = 0,3,0)
poweradd= ifelse(Var(7) = 0,20,0)
ctrl = 0
anim = 640
sprpriority = 2

[State 640, 2]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 0,1

[State 640, 2]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 100,13
channel = 0

[State 640, 3]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, NA
damage    = 66
animtype = Medium
guardflag = HA
priority = 4
pausetime = 6,6
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-62
hitsound   = S1,11
guardsound = S6,0
ground.type = High
ground.slidetime = 18
ground.hittime = 13
guard.hittime  = 13
ground.velocity = -5
air.velocity = -2,-4.1
getpower = 64 + ifelse(Var(59) = 0, 0, 20),32
givepower = 20,0

[State 640, 3]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, NA
damage    = 74
animtype = Heavy
guardflag = HA
priority = 4
pausetime = 6,6
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-62
hitsound   = S1,12
guardsound = S6,0
ground.type = High
ground.slidetime = 18
ground.hittime = 16
guard.hittime  = 13
ground.velocity = -5
air.velocity = -2,-4.2
getpower = 64 + ifelse(Var(59) = 0, 0, 20),32
givepower = 20,0
air.fall = 1

[State 640, 3]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 0
attr = A, NA
damage    = 66
guardflag = HA
priority = 4
pausetime = 3,3
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-62
hitsound   = S1,11
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 18
ground.hittime = 13
guard.hittime  = 13
ground.velocity = -5
air.velocity = -2,-4.1
getpower = 0,0
givepower = 20,0

[State 640, 4]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
movetype = I

[State 640, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 607


;---------------------------------------------------------------------------
; ジャンプ中キック（斜め）
;---------------------------------------------------------------------------
[Statedef 645]
type    = A
movetype= A
physics = A
juggle  = ifelse(Var(7) = 0,3,0)
poweradd= ifelse(Var(7) = 0,20,0)
ctrl = 0
anim = 645
sprpriority = 2

[State 645, 2]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 0,1

[State 645, 2]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 100,13
channel = 0

[State 645, 3]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, NA
damage    = 66
guardflag = HA
priority = 4
pausetime = 6,6
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-62
hitsound   = S1,11
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 18
ground.hittime = 13
guard.hittime  = 13
ground.velocity = -5.2
air.velocity = -2,-4.2
getpower = 64 + ifelse(Var(59) = 0, 0, 20),32
givepower = 20,0

[State 645, 3]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, NA
damage    = 74
animtype = Heavy
guardflag = HA
priority = 4
pausetime = 6,6
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-62
hitsound   = S1,12
guardsound = S6,0
ground.type = High
ground.slidetime = 18
ground.hittime = 16
guard.hittime  = 13
ground.velocity = -5.2
air.velocity = -2,-4.3
getpower = 64 + ifelse(Var(59) = 0, 0, 20),32
givepower = 20,0
air.fall = 1

[State 645, 3]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 0
attr = A, NA
damage    = 66
guardflag = HA
priority = 4
pausetime = 3,3
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-62
hitsound   = S1,11
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 18
ground.hittime = 13
guard.hittime  = 13
ground.velocity = -5.2
air.velocity = -2,-4.2
getpower = 0,0
givepower = 20,0

[State 645, 4]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
movetype = I

[State 645, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 607


;---------------------------------------------------------------------------
; ジャンプ強キック（垂直）
;---------------------------------------------------------------------------
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = ifelse(Var(7) = 0,4,0)
poweradd= ifelse(Var(7) = 0,20,0)
ctrl = 0
anim = 650
sprpriority = 2

[State 650, 2]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 0,2

[State 650, 1]
type = PlaySnd
trigger1 = AnimElemTime(1) = 2
value = 100,12
channel = 0

[State 650, 3]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, NA
damage    = 102
guardflag = HA
priority = 4
pausetime = 10,10
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-48
hitsound   = S1,12
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 23
ground.hittime = 13
guard.hittime  = 17
ground.velocity = -6.6
air.velocity = -4.2,-4.5
getpower = 83 + ifelse(Var(59) = 0, 0, 41),41
givepower = 20,0

[State 650, 3]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, NA
damage    = 115
animtype = Heavy
guardflag = HA
priority = 4
pausetime = 10,10
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-48
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 23
ground.hittime = 16
guard.hittime  = 17
ground.velocity = -6.6
air.velocity = -4.2,-4.6
getpower = 83 + ifelse(Var(59) = 0, 0, 41),41
givepower = 20,0
air.fall = 1

[State 650, 3]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 0
attr = A, NA
damage    = 102
guardflag = HA
priority = 4
pausetime = 5,5
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-48
hitsound   = S1,12
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 23
ground.hittime = 13
guard.hittime  = 17
ground.velocity = -6.6
air.velocity = -4.2,-4.5
getpower = 0,0
givepower = 20,0

[State 650, 4]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
movetype = I

[State 650, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 607


;---------------------------------------------------------------------------
; ジャンプ強キック（斜め）
;---------------------------------------------------------------------------
[Statedef 655]
type    = A
movetype= A
physics = A
juggle  = ifelse(Var(7) = 0,4,0)
poweradd= ifelse(Var(7) = 0,20,0)
ctrl = 0
anim = 655
sprpriority = 2

[State 655, 2]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 0,2

[State 655, 2]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 100,1
channel = 0

[State 655, 3]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, NA
damage    = 102
animtype = Heavy
guardflag = HA
priority = 4
pausetime = 10,10
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-30
hitsound   = S1,12
guardsound = S6,0
ground.type = High
ground.slidetime = 23
ground.hittime = 13
guard.hittime  = 17
ground.velocity = -6.3
air.velocity = -3.2,-4.2
getpower = 83 + ifelse(Var(59) = 0, 0, 41),41
givepower = 20,0

[State 655, 3]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, NA
damage    = 115
animtype = Back
guardflag = HA
priority = 4
pausetime = 10,10
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-30
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 23
ground.hittime = 16
guard.hittime  = 17
ground.velocity = -6.3
air.velocity = -3.2,-4.3
getpower = 83 + ifelse(Var(59) = 0, 0, 41),41
givepower = 20,0
air.fall = 1

[State 655, 3]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 0
attr = A, NA
damage    = 102
guardflag = HA
priority = 4
pausetime = 5,5
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-30
hitsound   = S1,12
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 23
ground.hittime = 13
guard.hittime  = 17
ground.velocity = -6.3
air.velocity = -3.2,-4.2
getpower = 0,0
givepower = 20,0

[State 655, 4]
type = StateTypeSet
trigger1 = AnimElemTime(6) = 0
movetype = I

[State 655, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 607


;===========================================================================
;---------------------------------------------------------------------------
; ジャンプレバー下入れ強パンチ（斜め）ボディ
;---------------------------------------------------------------------------
[Statedef 660]
type    = A
movetype= A
physics = A
juggle  = ifelse(Var(7) = 0,4,0)
poweradd= ifelse(Var(7) = 0,20,0)
ctrl = 0
anim = 660
sprpriority = 2

[State 660, 2]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 0,2

[State 660, 1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 100,0
channel = 0

[State 660, 3]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, NA
damage    = 102
animtype = Heavy
guardflag = HA
priority = 4
pausetime = 10,10
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-40
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 23
ground.hittime = 13
guard.hittime  = 17
ground.velocity = -6.1
air.velocity = -3,-4
getpower = 83 + ifelse(Var(59) = 0, 0, 41),41
givepower = 20,0

[State 660, 3]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, NA
damage    = 115
animtype = Back
guardflag = HA
priority = 4
pausetime = 10,10
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-40
hitsound   = S1,3
guardsound = S6,0
ground.type = High
ground.slidetime = 23
ground.hittime = 16
guard.hittime  = 17
ground.velocity = -6.1
air.velocity = -3,-4
getpower = 83 + ifelse(Var(59) = 0, 0, 41),41
givepower = 20,0
air.fall = 1

[State 660, 3]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 0
attr = A, NA
damage    = 102
guardflag = HA
priority = 4
pausetime = 5,5
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-40
hitsound   = S1,2
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 23
ground.hittime = 13
guard.hittime  = 17
ground.velocity = -6.1
air.velocity = -3,-4
getpower = 0,0
givepower = 20,0

[State 660, 4]
type = StateTypeSet
trigger1 = AnimElemTime(7) = 0
movetype = I


;===========================================================================
;---------------------------------------------------------------------------
; ジャンプレバー下弱キック（斜め）ひざ
;---------------------------------------------------------------------------
[Statedef 670]
type    = A
movetype= A
physics = A
juggle  = ifelse(Var(7) = 0,2,0)
poweradd= 0
ctrl = 0
anim = 670
sprpriority = 2

[State 670, 2]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 0,0

[State 670, 3]
type = HitDef
trigger1 = Var(20) = 0
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, NA
damage    = 36
guardflag = HA
priority = 4
pausetime = 5,5
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10,-40
hitsound   = S1,10
guardsound = S6,0
animtype = Light
ground.type = High
ground.slidetime = 11
ground.hittime = 13
guard.hittime  = 10
ground.velocity = -4
air.velocity = -2.3,-3
getpower = 20,20
givepower = 20,0

[State 670, 3]
type = HitDef
trigger1 = Var(20) = 1
trigger1 = movecontact = 0
trigger1 = Var(7) = 0
attr = A, NA
damage    = 40
animtype = Med
guardflag = HA
priority = 4
pausetime = 5,5
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10,-40
hitsound   = S1,11
guardsound = S6,0
ground.type = High
ground.slidetime = 11
ground.hittime = 16
guard.hittime  = 10
ground.velocity = -4
air.velocity = -2.3,-3.1
getpower = 20,20
givepower = 20,0
air.fall = 1

[State 670, 3]
type = HitDef
trigger1 = Var(7) != 0
trigger1 = Time = 0
attr = A, NA
damage    = 36
guardflag = HA
priority = 4
pausetime = 2,2
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10,-40
hitsound   = S1,10
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 11
ground.hittime = 13
guard.hittime  = 10
ground.velocity = -4
air.velocity = -2.3,-3
getpower = 0,0
givepower = 20,0

[State 670, 4]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
movetype = I

[State 670, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 607

;===========================================================================
;---------------------------------------------------------------------------
; 投げ各種
;---------------------------------------------------------------------------
;ジャーマン
;---------------------------------------------------------------------------
[Statedef 780]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= ifelse(Var(7) = 0,20,0)
velset = 0,0
ctrl = 0
anim = 780
sprpriority = 2

[State 780, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 800
p2stateno = 810
guard.dist = 0
fall = 1

[State 780, Miss Voice]
type = PlaySnd
Trigger1 = AnimElemTime(5) = 0
value = 100,2
channel = 0

[State 780, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ブレーンバスター
;---------------------------------------------------------------------------
[Statedef 781]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= ifelse(Var(7) != 0, 0, ifelse(Var(59) = 0, 20, 64))
velset = 0,0
ctrl = 0
anim = 780
sprpriority = 2

[State 781, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 820
p2stateno = 830
guard.dist = 0
fall = 1

[State 781, Miss Voice]
type = PlaySnd
Trigger1 = AnimElemTime(5) = 0
value = 100,2
channel = 0

[State 781, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ヘッドバット
;---------------------------------------------------------------------------
[Statedef 782]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= ifelse(Var(7) != 0, 0, ifelse(Var(59) = 0, 20, 64))
velset = 0,0
ctrl = 0
anim = 780
sprpriority = 2

[State 782, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 840
p2stateno = 850
guard.dist = 0
fall = 1

[State 782, Miss Voice]
type = PlaySnd
Trigger1 = AnimElemTime(5) = 0
value = 100,2
channel = 0

[State 782, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ヒップバスター
;---------------------------------------------------------------------------
[Statedef 785]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= ifelse(Var(7) != 0, 0, ifelse(Var(59) = 0, 20, 64))
ctrl = 0
anim = 785
sprpriority = 2

[State 785, 1]
type = HitDef
Trigger1 = Time = 0
attr = A, NT
;hitflag = A-
hitflag = AF
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = ifelse(Vel X >= 0 ,1,-1)
p2facing = 1
p1stateno = 860
p2stateno = 870
guard.dist = 0
fall = 1

[State 785, Miss Voice]
type = PlaySnd
Trigger1 = AnimElemTime(5) = 0
value = 100,2
channel = 0

;---------------------------------------------------------------------------
;ネックブリーカー
;---------------------------------------------------------------------------
[Statedef 786]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= ifelse(Var(7) != 0, 0, ifelse(Var(59) = 0, 20, 64))
ctrl = 0
anim = 786
sprpriority = 2

[State 786, 1]
type = HitDef
Trigger1 = Time = 0
attr = A, NT
;hitflag = A-
hitflag = AF
priority = 1, Miss
sparkno = -1
sprpriority = 1
p1facing = ifelse(Vel X > 0 ,1,-1)
p2facing = 1
p1stateno = 880
p2stateno = 890
guard.dist = 0
fall = 1

[State 786, Miss Voice]
type = PlaySnd
Trigger1 = AnimElemTime(5) = 0
value = 100,2
channel = 0

;===========================================================================
;---------------------------------------------------------------------------
;立ちパンチ投げ（ジャーマンスープレックス）
;---------------------------------------------------------------------------
[Statedef 800]
type    = S
movetype= A
physics = N
anim = 800
sprpriority = 3

[State 800, BackLayer]
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

[State 800, Voice]
type = PlaySnd
trigger1 = AnimElemTime(5) = 1
value = 100,12
channel = 0

[State 800, Grab Sound]
type = PlaySnd
trigger1 = Time = 0
value = 2,0

[State 800, HitG Sound]
type = PlaySnd
trigger1 = AnimElemTime(10) = 1
value = 40,8

[State 800, ShockWave]
type = Explod
trigger1 = AnimElemTime(10) = 1
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
[State 800, ShockWave]
type = Explod
trigger1 = AnimElemTime(10) = 1
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

[State 800, Shake]
type = EnvShake
trigger1 = AnimElemTime(10) = 1
time = 15

[State 800, Width]
type = Width
trigger1 = Time = 0
edge = (Target,Const(size.ground.back)+Target,Const(size.ground.front)) + 48, 0

[State 800, Bind]
type = TargetBind
trigger1 = Time = 0
pos = (Target,Const(size.ground.front)), 0

[State 800, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(3) = 0
x = (Target,Const(size.ground.back)+Target,Const(size.ground.front)) + 23

[State 800, LifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 10
value = ifelse(Var(59) = 0, -120, ifelse(Var(59) = 1,-144,-96))

[State 800, TargetState]
type = TargetState
trigger1 = AnimElemTime(11) = 0
value = 811

[State 800, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
;ジャーマンくらい側
;---------------------------------------------------------------------------
[Statedef 810]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 810, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 810

;---------------------------------------------------------------------------
;ジャーマンくらい側２
;---------------------------------------------------------------------------
[Statedef 811]
type    = A
movetype= H
physics = N
velset = -2.4,-7.6
sprpriority = 2

[State 811, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(8) = 0
x = -86

[State 811, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 811, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Time > 20
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 811, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Time > 20
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 811, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground


;===========================================================================
;---------------------------------------------------------------------------
;立ちキック投げ（ブレーンバスター）
;---------------------------------------------------------------------------
[Statedef 820]
type    = S
movetype= A
physics = N
anim = 820
sprpriority = 3

[State 820, Voice]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 100,11

[State 820, Grab Sound]
type = PlaySnd
trigger1 = Time = 0
value = 2,0

[State 820, HitG Sound]
type = PlaySnd
trigger1 = AnimElemTime(9) = 0
value = 40,8

[State 831, ShockWave]
type = Explod
trigger1 = AnimElemTime(9) = 1
anim = 7500
id = 7500
postype = p2
pos = (Target,Const(size.ground.back)+Target,Const(size.ground.front))+36,0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
shadow = -1
ownpal = 1
[State 831, ShockWave]
type = Explod
trigger1 = AnimElemTime(9) = 1
anim = 7510
id = 7510
postype = p2
pos = (Target,Const(size.ground.back)+Target,Const(size.ground.front))+36,0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 0
shadow = -1
ownpal = 1

[State 831, Shake]
type = EnvShake
trigger1 = AnimElemTime(9) = 1
time = 15

[State 831, PosAdd]
type = PosAdd
trigger1 = Time = 0
trigger1 = BackEdgeBodyDist < 40
x = 40 - BackEdgeBodyDist

[State 820, Bind]
type = TargetBind
trigger1 = Time = 0
pos = (Target,Const(size.ground.front)), 0

[State 820, LifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 10
value = ifelse(Var(59) = 0, -120, ifelse(Var(59) = 1,-144,-96))

[State 820, TargetState]
type = TargetState
trigger1 = AnimElemTime(11) = 0
value = 831

[State 820, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;ブレーンバスターくらい側
;---------------------------------------------------------------------------
[Statedef 830]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 830, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 830

;---------------------------------------------------------------------------
;ブレーンバスターくらい側２
;---------------------------------------------------------------------------
[Statedef 831]
type    = A
movetype= H
physics = N
velset = 5.0,-6.3
sprpriority = 2

[State 831, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(11) = 0
x = 108

[State 831, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 831, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Time > 50
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 831, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Time > 50
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 831, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground


;===========================================================================
;---------------------------------------------------------------------------
;屈みパンチ投げ（ヘッドバット）
;---------------------------------------------------------------------------
[Statedef 840]
type    = S
movetype= A
physics = N
anim = 840
sprpriority = 3

[State 840, VarSet]
type = VarSet
trigger1 = Time = 0
v = 0
value = 80

[State 840, VarSet]
type = VarSet
trigger1 = 1
v = 1
value = AnimElemNo(1)

[State 840, VarSet]
type = VarSet
trigger1 = Time = 0
v = 2
value = 0

[State 840, Grab Sound]
type = PlaySnd
trigger1 = Time = 0
value = 2,0

[State 840, Width]
type = Width
trigger1 = Time = 0
edge = (Target,Const(size.ground.back)+Target,Const(size.ground.front)) + 52, 0

[State 840, Bind]
type = TargetBind
trigger1 = Time = 0
pos = (Target,Const(size.ground.front))+8, 0

[State 840, AnyInput]
type = ChangeAnim
trigger1 = command = "any"
trigger1 = AnimElemNo(1) != 9
value = 840
elem = ifelse(Var(1) = 26, 1, var(1) + 1)

[State 855, Flash]
type = PalFX
trigger1 = command = "any"
trigger1 = AnimElemNo(1) != 9
time = 1
add = 128,128,128
mul = 180,180,180

[State 840, AnyInput]
type = VarAdd
trigger1 = Target,stateno = [853,855]
v = 0
value = ifelse(Var(0) > 1,-1,0)

[State 841, TargetState]
type = TargetState
triggerall = Target,stateno != 850
triggerall = Target,stateno != 853
trigger1 = AnimElemNo(1) = [1,9]
trigger2 = AnimElemNo(1) = [20,26]
value = 850	;


[State 841, TargetLifeAdd]
type = TargetLifeAdd
triggerall = Target,stateno != 851
triggerall = Target,stateno != 854
trigger1 = AnimElemNo(1) = [10,14]
value = ifelse(Var(2) = 0,ifelse(Var(59)=0,-48,ifelse(Var(59)=1,-58,-38)),ifelse(Var(59)=0,-12,ifelse(Var(59)=1,-14,-9)))

[State 841, HitSpark]
type = Explod
triggerall = Target,stateno != 851
triggerall = Target,stateno != 854
trigger1 = AnimElemNo(1) = [10,14]
anim = 7101
id = 7101
postype = p1
pos = (Target,Const(size.ground.front))+11, -79
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
shadow = -1
ownpal = 1
[State 841, HitVoice]
type = PlaySnd
triggerall = Target,stateno != 851
triggerall = Target,stateno != 854
trigger1 = AnimElemNo(1) = [10,14]
value = 100,15
channel = 0
[State 841, HitSound]
type = PlaySnd
triggerall = Target,stateno != 851
triggerall = Target,stateno != 854
trigger1 = AnimElemNo(1) = [10,14]
value = 1,0
channel = 13
[State 841, HitSound]
type = PlaySnd
triggerall = Target,stateno != 851
triggerall = Target,stateno != 854
trigger1 = AnimElemNo(1) = [10,14]
value = 1,1
channel = 14
[State 841, Head Count]
type = HitAdd
trigger1 = Time = 0
value = -1
[State 841, Head Count]
type = HitAdd
triggerall = Target,stateno != 851
triggerall = Target,stateno != 854
trigger1 = AnimElemNo(1) = [10,14]
value = 1

[State 841, Head Count]
type = VarAdd
triggerall = Target,stateno != 851
triggerall = Target,stateno != 854
trigger1 = AnimElemNo(1) = [10,14]
v = 2
value = 1

[State 841, TargetState]
type = TargetState
triggerall = Target,stateno != 851
triggerall = Target,stateno != 854
trigger1 = AnimElemNo(1) = [10,14]
value = 851	;damage


[State 841, TargetState]
type = TargetState
triggerall = Target,stateno != 852
triggerall = Target,stateno != 855
trigger1 = AnimElemNo(1) = [15,19]
value = 852	;


[State 841, TargetState]
type = TargetState
trigger1 = Time >= Var(0)
trigger1 = AnimElemTime(20) = 1
value = 856

[State 840, State End]
type = ChangeState
trigger1 = Time >= Var(0)
trigger1 = AnimElemTime(20) = 1
value = 841

;---------------------------------------------------------------------------
;（ヘッドバットのフィニッシュ）
;---------------------------------------------------------------------------
[Statedef 841]
type    = S
movetype= A
physics = N
anim = 841
sprpriority = 3

[State 841, Bind]
type = TargetBind
trigger1 = Time = 0
pos = (Target,Const(size.ground.front))+26, 0

[State 841, BackLayer]
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

[State 841, HitVoice]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 100,13
channel = 0

[State 841, HitSound]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 1,2
channel = 14

[State 841, HitSpark]
type = Explod
trigger1 = AnimElemTime(5) = 0
anim = 7102
id = 7102
postype = p1
pos = (Target,Const(size.ground.front))+41, -74
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

[State 841, Shake]
type = EnvShake
trigger1 = AnimElemTime(4) = 1
time = 5

[State 841, TargetState]
type = TargetState
trigger1 = AnimElemTime(5) = 0
value = 857

[State 841, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;ヘッドバットくらい側
;---------------------------------------------------------------------------
[Statedef 850]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 850, AnyInput]
type = ChangeState
trigger1 = command = "any"
value = 853

[State 850, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 850

[Statedef 851]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 851, AnyInput]
type = ChangeState
trigger1 = command = "any"
value = 854

;[State 851, LifeAdd]
;type = LifeAdd
;trigger1 = Time = 0
;value = -20

[State 851, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 851

[Statedef 852]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 852, AnyInput]
type = ChangeState
trigger1 = command = "any"
value = 855

[State 852, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 852

[Statedef 853]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 853, Flash]
type = PalFX
trigger1 = Time = 0
time = 1
add = 128,128,128
mul = 180,180,180

[State 853, Return]
type = ChangeState
trigger1 = time = 1
value = 850

[Statedef 854]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 854, Flash]
type = PalFX
trigger1 = Time = 0
time = 1
add = 128,128,128
mul = 180,180,180

[State 854, Return]
type = ChangeState
trigger1 = time = 1
value = 851

[Statedef 855]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 855, Flash]
type = PalFX
trigger1 = Time = 0
time = 1
add = 128,128,128
mul = 180,180,180

[State 855, Return]
type = ChangeState
trigger1 = time = 1
value = 852

;---------------------------------------------------------------------------
;ヘッドバットくらい側２
;---------------------------------------------------------------------------
[Statedef 856]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 856, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 856

;---------------------------------------------------------------------------
;ヘッドバットくらい側３
;---------------------------------------------------------------------------
[Statedef 857]
type    = A
movetype= H
physics = N
velset = -4.3,-5.78
sprpriority = 2

[State 851, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 851, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Time > 62
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 851, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Time > 62
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 851, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground


;===========================================================================
;---------------------------------------------------------------------------
;ジャンプパンチ投げ（ヒップバスター）
;---------------------------------------------------------------------------
[Statedef 860]
type    = A
movetype= A
physics = N
anim = 860
sprpriority = 3

[State 860, Gravity]
type = VelMul
trigger1 = Vel Y < -2
y = 0.8

[State 860, Gravity]
type = VelAdd
trigger1 = 1
y = 0.44

[State 860, Grab Sound]
type = PlaySnd
trigger1 = Time = 0
value = 2,0

[State 860, Voice]
type = PlaySnd
trigger1 = Time = 0
value = 100,8
channel = 0

[State 860, PosSet]
type = PosSet
trigger1 = Time = 0
x = (Target,Pos X)
y = ((Target,Pos Y) + (Target,Const(size.head.pos.y)))

[State 860, Bind]
type = TargetBind
trigger1 = Time >= 1
pos = -8, -17

[State 860, State End]
type = ChangeState
trigger1 = Pos Y >= 0
value = 861


;---------------------------------------------------------------------------
;ヒップバスター着地
;---------------------------------------------------------------------------
[Statedef 861]
type    = A
movetype= H
physics = N
velset = 0,0
anim = 861
sprpriority = 2

[State 861, TargetState]
type = TargetState
trigger1 = Time = 3
value = 871

[State 861, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 0
value = ifelse(Var(59) = 0, -120, ifelse(Var(59) = 1,-144,-96))

[State 861, HitG Sound]
type = PlaySnd
trigger1 = Time = 0
value = 40,8

[State 861, Pos]
type = PosSet
trigger1 = Time = 0
y = 0

[State 861, ShockWave]
type = Explod
trigger1 = Time = 0
anim = 7500
id = 7500
postype = p1
pos = -26,0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
shadow = -1
ownpal = 1
[State 861, ShockWave]
type = Explod
trigger1 = Time = 0
anim = 7510
id = 7510
postype = p1
pos = -26,0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 0
shadow = -1
ownpal = 1

[State 861, Shake]
type = EnvShake
trigger1 = Time = 0
time = 15

[State 861, Turn]
type = Turn
trigger1 = AnimElemTime(3) = 0

[State 861, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;ヒップバスターくらい側
;---------------------------------------------------------------------------
[Statedef 870]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 870, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 870

;---------------------------------------------------------------------------
;ヒップバスターくらい側２
;---------------------------------------------------------------------------
[Statedef 871]
type    = A
movetype= H
physics = N
velset = 2.7,-7.8
sprpriority = 2

[State 870, 1]
type = PosSet
Trigger1 = Time = 0
y = -1.0

[State 870, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 871

[State 871, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 871, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Time > 18
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 871, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Time > 18
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 871, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground


;===========================================================================
;---------------------------------------------------------------------------
;ジャンプキック投げ（ネックブリーカー）
;---------------------------------------------------------------------------
[Statedef 880]
type    = A
movetype= A
physics = N
anim = 880
sprpriority = 3
velset = 0,0

[State 880, Gravity]
type = VelAdd
trigger1 = AnimElemTime(4) > 0
y = 0.54

[State 880, Gravity]
type = VelSet
trigger1 = AnimElemTime(4) = 0
x = 3.7

[State 880, Grab Sound]
type = PlaySnd
trigger1 = Time = 0
value = 2,0

[State 880, Voice]
type = PlaySnd
trigger1 = Time = 2
value = 100,5
channel = 0

[State 880, Bind]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0
trigger1 = AnimElemTime(2) < 0
pos = 14, -71

[State 880, Bind]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(3) < 0
pos = 0,-56

[State 880, Bind]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0
pos = -1,-75

[State 880, State End]
type = ChangeState
trigger1 = Pos Y >= 0
value = 881


;---------------------------------------------------------------------------
;ネックブリーカー着地
;---------------------------------------------------------------------------
[Statedef 881]
type    = A
movetype= H
physics = N
velset = 0,0
anim = 881
sprpriority = 2

[State 880, Bind]
type = TargetBind
trigger1 = Time = 0
pos = -49,0

[State 880, HitG Sound]
type = PlaySnd
trigger1 = Time = 0
value = 40,8

[State 880, Shake]
type = EnvShake
trigger1 = Time = 0
time = 15

[State 881, TargetState]
type = TargetState
trigger1 = Time = 2
value = 891

[State 881, LifeAdd]
type = TargetLifeAdd
trigger1 = Time = 0
value = ifelse(Var(59) = 0, -120, ifelse(Var(59) = 1,-144,-96))

[State 881, Pos]
type = PosSet
trigger1 = Time = 0
y = 0

[State 881, ShockWave]
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
[State 881, ShockWave]
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

[State 881, Turn]
type = Turn
trigger1 = AnimTime = 0

[State 881, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;ネックブリーカーくらい側
;---------------------------------------------------------------------------
[Statedef 890]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 890, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 890

;---------------------------------------------------------------------------
;ネックブリーカーくらい側２
;---------------------------------------------------------------------------
[Statedef 891]
type    = A
movetype= H
physics = N
velset = 3.7,-6.1
sprpriority = 2

[State 891, 1]
type = PosSet
Trigger1 = Time = 0
y = -1.0

[State 891, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 891

[State 891, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 891, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Time > 18
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 891, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Time > 18
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 891, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground


;---------------------------------------------------------------------------
; 地上受け身（移動起きあがり）
;---------------------------------------------------------------------------
[Statedef 900]
type    = C
movetype= I
physics = C
juggle  = 0
poweradd= 0
ctrl = 0
anim = 900
velset = 0.0,0,0

[State 900, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard

[State 900, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noautoturn
flag2 = nowalk

[State 900, 1]
type = posset
trigger1 = time = 0
y = 0

[State 900, EnemyIsWhere]
type = Turn
trigger1 = (Time = 0) && (P2Dist X < -4)

[State 900, 1]
type = VarSet
trigger1 = time = 0
v = 0
value = 0

[State 900, 1]
type = VarSet
trigger1 = time = 0
v = 5
value = 0

[State 900, 1]
type = VarSet
trigger1 = time < 20
trigger1 = command = "holdfwd"
v = 0
value = 1

[State 900, 1]
type = VarSet
trigger1 = time = [20, 29]
trigger1 = command = "holdfwd"
v = 0
value = 2

[State 900, 2]
type = PlayerPush
trigger1 = 1
value = 0

[State 900, 3]
type = Velset
trigger1 = time > 10
x = 7.2

[State 900, State End]
type = VelSet
triggerall = P2BodyDist X < 0
trigger1 = Time = 20 && Var(0) = 0
trigger2 = Time = 30 && Var(0) = 1
trigger3 = Time = 40 && Var(0) = 2
x = 0.0

[State 900, State End]
type = Turn
triggerall = P2BodyDist X < 0
trigger1 = Time = 20 && Var(0) = 0
trigger2 = Time = 30 && Var(0) = 1
trigger3 = Time = 40 && Var(0) = 2

[State 900, State End]
type = ChangeState
trigger1 = Time = 20 && Var(0) = 0
trigger2 = Time = 30 && Var(0) = 1
trigger3 = Time = 40 && Var(0) = 2
value = 11
ctrl = 1

