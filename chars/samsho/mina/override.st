;---------------------------------------------------------------------------
; 共通ステートの上書き (共通ステートと同じステート番号を定義すればこちらが優先されます。) 
; 別にどこに書いてもいいみたいです。
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; 防御開始
[Statedef 120]
type = U
physics = U
facep2 = 1

[State 120, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 120 + (statetype = C) + (statetype = A)*2

[State 120, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 120, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 120, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

[State 120, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 130 + (statetype = C) + (statetype = A)*2

;---------------------------------------------------------------------------
; 立ち防御(防御中)
[Statedef 130]
type    = S
physics = S
facep2 = 1

[State 130, 1]
type = ChangeAnim
trigger1 = Anim != 130
value = 130

;---------------------------------------------------------------------------
; しゃがみ防御(防御中)
[Statedef 131]
type    = C
physics = C
facep2 = 1

[State 131, 1]
type = ChangeAnim
trigger1 = Anim != 131
value = 131

;---------------------------------------------------------------------------
; 空中防御(防御中)
[Statedef 132]
type    = A
physics = N
facep2 = 1

[State 132, 1]
type = ChangeAnim
trigger1 = Anim != 132
value = 132

[State 132, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 132, 3]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 132, 4]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 132, 5]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 132, 6]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = command != "holdback"
value = 52

[State 132, 7]
type = ChangeState
trigger1 = sysvar(0)
value = 130

;---------------------------------------------------------------------------
; 立ちやられ(ブルブル)
[Statedef 5000]
type    = S
movetype= H
physics = N
velset = 0,0

[State 5000, 0]
type = ChangeState
trigger1 = !Alive
value = 5020

[State 5000, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = IfElse((GetHitVar(xvel) * facing > 0),5130,IfElse((GetHitVar(groundtype) = 1),5000,5010)) + GetHitVar(animtype)

[State 5000, 2]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = IfElse((GetHitVar(xvel) * facing > 0),5180,5030)

[State 5000, 3]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype)

[State 5000, 4]
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5]
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 && GetHitVar(fall)
trigger2 = Pos Y != 0
type = a

[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 5001 + (GetHitVar(xvel) * facing > 0)

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030 + (GetHitVar(xvel) * facing > 0) * 150

[State 5000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; 立ちやられ(スライド)
[Statedef 5001]
type    = S
movetype= H
physics = S

[State 5001, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5001, 2]
type = ChangeAnim
trigger1 = Time >= Ceil((GetHitVar(HitTime) + Time) / ((GetHitVar(AnimType) + 1) * 2 + 1)) 
trigger1 = Anim != 5005 + GetHitVar(animtype) + (GetHitVar(groundtype)=2)*10
value = (5005 + (GetHitVar(groundtype)=2)*10) + GetHitVar(animtype)

[State 5001, 2-2]
type = ChangeAnim
trigger1 = GetHitVar(animtype) <= 2
trigger1 = GetHitVar(hittime) + Time > 9
trigger1 = AnimElemTime((GetHitVar(animtype) + 1) * 2) < 0
trigger1 = Anim = 5005 + GetHitVar(animtype) + (GetHitVar(groundtype)=2)*10
value = anim
elem = Ceil(Time * ((GetHitVar(animtype) + 1) * 2 + 1) / (GetHitVar(hittime) + Time))

[State 5001, 3]
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5001, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5001, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5001, 6]
type = ChangeState
trigger1 = HitOver
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 背中立ちやられ(スライド)･･･5001にまとめて書くと計算が狂ってしまうため、分けたもの
[Statedef 5002]
type    = S
movetype= H
physics = S

[State 5002, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5002, 2]
type = ChangeAnim
trigger1 = Time >= Ceil((GetHitVar(HitTime) + Time) / ((GetHitVar(AnimType) + 1) * 2 + 1)) 
trigger1 = Anim != 5135 + GetHitVar(animtype)
value = 5135 + GetHitVar(animtype)

[State 5002, 2-2]
type = ChangeAnim
trigger1 = GetHitVar(animtype) <= 2
trigger1 = GetHitVar(hittime) + Time > 9
trigger1 = AnimElemTime((GetHitVar(animtype) + 1) * 2) < 0
trigger1 = Anim = 5135 + GetHitVar(animtype)
value = anim
elem = Ceil(Time * ((GetHitVar(animtype) + 1) * 2 + 1) / (GetHitVar(hittime) + Time))

[State 5002, 3]
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5002, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5002, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5002, 6]
type = ChangeState
trigger1 = HitOver
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; しゃがみやられ(ブルブル)
[Statedef 5010]
type    = C
movetype= H
physics = C
velset = 0,0

[State 5010, 0]
type = ChangeState
trigger1 = !Alive
value = 5020

[State 5010, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = 5020 + GetHitVar(animtype)

[State 5010, 2]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5010, 3]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5010, 4]
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5010, 5]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 5011

[State 5010, 6]
type = ChangeState
trigger1 = HitShakeOver
value = 5030 + (GetHitVar(xvel) * facing > 0) * 150

[State 5010, FFB Light]
type = ForceFeedback
trigger1 = anim = 5020
persistent = 0
time = 6
waveform = square

[State 5010, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5021
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5010, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5022
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; しゃがみやられ(スライド)
[Statedef 5011]
type    = C
movetype= H
physics = C

[State 5011, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5011, 2]
type = ChangeAnim
trigger1 = Time >= Ceil((GetHitVar(HitTime) + Time) / (GetHitVar(AnimType) + 4))
trigger1 = Anim != 5025 + GetHitVar(animtype)
value = 5025 + GetHitVar(animtype)

[State 5011, 2-2]
type = ChangeAnim
trigger1 = Anim = 5025 + GetHitVar(animtype)
trigger1 = GetHitVar(animtype) <= 2
trigger1 = GetHitVar(hittime) + Time > 9
trigger1 = AnimElemNo(0) < GetHitVar(animtype) + 3
value = anim
elem = Ceil(Time * (GetHitVar(animtype) + 3) / (GetHitVar(hittime) + Time))

[State 5011, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5011, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5011, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5011, 6]
type = ChangeState
trigger1 = HitOver
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; 吹き飛ばしやられ(ブルブル)
[Statedef 5014]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5014, 1] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = 5014

[State 5014, 2]
type = PlaySnd
trigger1 = Time = 0
value = 30,4

[State 5014, 3]
type = ChangeState
trigger1 = HitShakeOver
value = 5015

[State 5014, 4]
type = ForceFeedback
trigger1 = Time = 0
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; 吹き飛ばしやられ
[Statedef 5015]
type    = A
movetype= H
physics = N

[State 5015, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5015, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5011, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5103

;---------------------------------------------------------------------------
; 空中やられ
[Statedef 5030]
type    = A
movetype= H
physics = N
ctrl = 0

[State 5030, 1]
type = ChangeState
trigger1 = PrevStateNo = 196
value = 170

[State 5030, 1]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 3]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0
trigger2 = Pos Y >= 10
value = 5040

[State 5030, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0
trigger2 = Pos Y >= 10
value = 5050

;---------------------------------------------------------------------------
; 空中立ち直り
[Statedef 5040]
type    = A
movetype= H
physics = N

[State 5040, 1]
type = ChangeState
trigger1 = !Alive
value = 5050

[State 5040, 2]
type = ChangeAnim
triggerall = Anim != 5040
trigger1 = AnimTime = 0
trigger2 = Time = 0
trigger2 = Anim != 5035
value = 5040

[State 5040, 3]
type = CtrlSet
trigger1 = HitOver
value = 1

[State 5040, 4]
type = StateTypeSet
trigger1 = HitOver
movetype = I

[State 5040, 5]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5040, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;JUMPLAND

;---------------------------------------------------------------------------
; HITA_FALL (knocked up, falling)
[Statedef 5050]
type    = A
movetype= H
physics = N

[State 5050, 1]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090
value = 5050 - (Anim=5030)*15

[State 5050, 2]
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 4]
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200

[State 5050, 5]
type = ChangeState
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;---------------------------------------------------------------------------
; 足払いやられ (ヒットストップ)
[Statedef 5070]
type    = A
movetype= H
physics = N
velset = 0,0
anim = 5070 + (GetHitVar(xvel) * facing >= 0) * 110 + (GetHitVar(yvel) + GetHitVar(yaccel) * 5 >= Abs(Pos Y))

[State 5070, 1]
type = ChangeAnim
trigger1 = 1
value = anim
elem = 1 + (GetHitVar(xvel) * facing >= 0)

[State 5070, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 5071

[State 5070, 3]
type = ForceFeedback
trigger1 = time = 0
time = 12
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; 足払いやられ (ヒットストップ後)
[Statedef 5071]
type    = A
movetype= H
physics = N

[State 5071, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, 2]
type = ChangeAnim
trigger1 = Vel Y <= -2.5
value = anim
elem = 1 + (GetHitVar(xvel) * facing >= 0)

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5071, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
type = ChangeState
value = 5100

;---------------------------------------------------------------------------
; 地面に激突
[Statedef 5100]
type    = L
movetype= H
physics = N

[State 5100, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var]
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 5100, 2]
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim = [5180,5181]) * 2

[State 5100, 3]
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

[State 5100, 6]
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 10

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 5101

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; ぶっ飛びバウンド
[Statedef 5103]
type    = L
movetype= H
physics = N
anim = 5103

[State 5103, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5103, 1-1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5103, 2]
type = FallEnvShake
trigger1 = Time = 0

[State 5103, 3]
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 5103, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5103, 5]
type = PosAdd
trigger1 = Time = 0
x = -20

[State 5103, 6]
type = VelMul
trigger1 = 1
x = 0.9

[State 5103, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110

[State 5103, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 10

[State 5103, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5103, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5103, 11]
type = ChangeAnim
trigger1 = AnimElemTime(2) >= 0
trigger1 = Abs(Vel X) > 1
value = Anim
elem = 2

[State 5103, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 5110

[State 5103, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; バタンと倒れる(ブルブル)
[Statedef 5180]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5180, 1] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = 5180

[State 5180, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 5181

[State 5180, 3]
type = ForceFeedback
trigger1 = Time = 0
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; 移動起き上がり
[Statedef 5125]
type    = L
movetype= I
physics = N
velset = 0,0
anim = anim + 10

[State 5125, 1]
type = VarSet
trigger1 = Time = 0
trigger1 = (command = "holdfwd")*(command = "holdback")= 0
var(4) = (command = "holdfwd")+(command = "holdback")*2

[State 5125, 2]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5125, 3]
type = ChangeAnim
trigger1 = Anim = [5120,5122]
trigger1 = AnimElemTime(5) < 0
trigger1 = var(4)
value = 5124+var(4)

[State 5125, 4]
type = PlayerPush
trigger1 = Anim = [5125,5126]
value = 0

[State 5125, 5]
type = VelSet
trigger1 = Anim = [5125,5126]
trigger1 = AnimElemTime(1) = 0
x = (Anim = 5125)*10 - (Anim = 5126)*10

[State 5125, 6]
type = VelMul
trigger1 = Anim = [5125,5126]
x = .95*(AnimElemTime(5) < 0)

[State 5125, 7]
type = ChangeState
triggerall= AnimTime = 0
trigger1 = Anim = [5120,5122]
trigger2 = Anim = [5125,5126]
value = 12 - (command = "holddown")
ctrl = 1


;---------------------------------------------------------------------------
; 死亡
[Statedef 5150]
type    = L
movetype= H
physics = N
sprpriority = 2-5*(PrevStateNo != 170)

[State 5150, 1]
type = ChangeAnim
triggerall = Time = 0
triggerall = SelfAnimExist(5140)
triggerall = PrevStateNo != 170
trigger1 = (anim != [5111,5119]) && (anim != [5171,5179])
trigger2 = !SelfAnimExist(5140 + (anim % 10))
value = 5140

[State 5150, 3]
type = ChangeAnim
triggerall = PrevStateNo != 170
trigger1 = Time = 0
trigger1 = (anim = [5111,5119]) || (anim = [5171,5179])
trigger1 = SelfAnimExist(5140 + (anim % 10))
value = 5140 + (anim % 10)

[State 5150, 4]
type = ChangeAnim
persistent = 0
triggerall = PrevStateNo != 170
trigger1 = MatchOver = 1
trigger1 = Anim = [5140,5149]
trigger1 = SelfAnimExist(anim+10)
value = anim+10

[State 5150, 5]
type = ChangeAnim
triggerall = PrevStateNo != 170
trigger1 = Time = 0
trigger1 = Anim != [5140,5159]
trigger1 = Anim != [5110,5119]
value = 5110

[State 5150, 7]
type = VelMul
trigger1 = 1
x = 0.85

[State 5150, 8]
type = VelSet
trigger1 = Vel x < .05
persistent = 0
x = 0

[State 5150, 9]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; バタンと倒れる (ヒットストップ後)
[Statedef 5181]
type    = A
movetype= H
physics = N

[State 5181, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5181, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) >= 0
trigger1 = GetHitVar(yaccel) > 0
trigger1 = GetHitVar(yvel) + GetHitVar(yaccel) * 5 >= Abs(Pos Y)
value = 5181

[State 5181, 2]
type = PosAdd
trigger1 = Time = 0
trigger1 = Anim = 5181
y = -1

[State 5181, 3]
type = PosFreeze
trigger1 = Time <= 5
trigger1 = Anim = 5181

[State 5181, 4]
type = VelAdd
trigger1 = Time > 5
trigger1 = Anim = 5181
trigger2 = Anim != 5181
y = GetHitVar(yaccel)

[State 5181, 5]
type = ChangeAnim
trigger1 = Vel Y <= -2.5
value = 5180

[State 5181, 6]
type = ChangeState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0
trigger2 = Pos Y >= 10
value = 5040

[State 5181, 7]
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200

[State 5181, 8]
type = ChangeState
triggerall = Vel Y > -1
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210

[State 5181, 9]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100
;---------------------------------------------------------------------------
; CUSTOM_HITA_SHAKE
[Statedef 5300]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5300, 2]
type = ChangeAnim
trigger1 = Time > 0
value = 5030

[State 5301, 3]
type = SelfState
trigger1 = !Alive
value = 5020

[State 5300, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 5301

[State 5300, FFB Light]
type = ForceFeedback
trigger1 = GetHitVar(animtype) = 0
persistent = 0
time = 6
waveform = square

[State 5300, FFB Medium]
type = ForceFeedback
trigger1 = GetHitVar(animtype) = 1
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5300, FFB Hard]
type = ForceFeedback
trigger1 = GetHitVar(animtype) >= 2
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; CUSTOM_HITA_UP (initial going up)
[Statedef 5301]
type    = A
movetype= H
physics = N
ctrl = 0

[State 5301, 1]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5301, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5301, 3]
type = ChangeAnim
triggerall = AnimTime = 0
triggerall = !HitFall
trigger1 = Anim = 5030
trigger2 = Anim = 5035
value = Anim+SelfAnimExist(5035)*5+!SelfAnimExist(5035)*10

[State 5301, 4]
type = ChangeAnim
triggerall = AnimTime = 0
triggerall = HitFall
trigger1 = Anim = 5030
trigger2 = Anim = 5035
value = Anim+SelfAnimExist(5035)*5+!SelfAnimExist(5035)*20+(Anim = 5035)*10

[State 5301, 5]
type = NotHitBy
trigger1 = HitOver
value = SCA
time = 4

[State 5301, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 + HitFall * 5048
