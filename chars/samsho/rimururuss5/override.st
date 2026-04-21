;---------------------------------------------------------------------------
; 共通ステートの上書き (共通ステートと同じステート番号を定義すればこちらが優先されます。) 
; 別にどこに書いてもいいみたいです。
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; 立ちやられ(ブルブル)
[Statedef 5000]
type    = S
movetype= H
physics = N
velset = 0,0

[State 5000, 1]
type = ChangeState
trigger1 = !Alive
value = 5020

[State 5000, 4]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = IfElse((GetHitVar(xvel) * facing > 0),5130,IfElse((GetHitVar(groundtype) = 1),5000,5010)) + GetHitVar(animtype)

[State 5000, 5]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = IfElse((GetHitVar(xvel) * facing > 0),5180,5030)

[State 5000, 6]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype)

[State 5000, 7]
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 8]
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 && GetHitVar(fall)
trigger2 = Pos Y != 0
type = a

[State 5000, 9]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 5001 + (GetHitVar(xvel) * facing > 0)

[State 5000, 10]
type = ChangeState
trigger1 = HitShakeOver
value = 5030 + (GetHitVar(xvel) * facing > 0) * 150

[State 5000, 11]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5000, 12]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, 13]
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
value = (5005 + (GetHitVar(groundtype)=2)*10) + IfElse(GetHitVar(animtype)<=2,GetHitVar(animtype),2)

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
value = 5135 + IfElse(GetHitVar(animtype)<=2,GetHitVar(animtype),2)

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
trigger1 = GetHitVar(animtype) != [3,5]
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
; 起き上がり
[Statedef 5120]
type    = L
movetype= I
physics = N

[State 5120, 1a]
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5111,5119]
trigger2 = !SelfAnimExist(5120 + (anim % 10))
value = 5120

[State 5120, 1b]
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5111,5119]
trigger1 = SelfAnimExist(5120 + (anim % 10))
value = 5120 + (anim % 10)

[State 5120, 2]
type = VelSet
trigger1 = Time = 0
x = 0

[State 5120, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

[State 5120, 5]
type = NotHitBy
trigger1 = AnimTime = 0
value = , NT,ST,HT
time = 12

[State 5120, 6]
type = NotHitBy
trigger1 = AnimTime = 0
value2 = SCA
time = 3

[State 5120, 7]
type = Turn
trigger1 = AnimTime > -2
trigger1 = P2Dist X < 0

[State 5120, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

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
trigger1 = Time = 0
trigger1 = Anim = [5120,5122]
trigger1 = var(4)
value = Anim+var(4)+4

[State 5125, 4]
type = PlayerPush
trigger1 = Anim = [5125,5128]
value = 0

[State 5125, 5]
type = VelSet
triggerall = Anim = [5125,5128]
trigger1 = Anim = 5126
trigger1 = AnimElemTime(1) = 0
trigger2 = Anim = 5127
trigger2 = AnimElemTime(3) = 0
trigger3 = Anim = 5125 || Anim = 5128
trigger3 = AnimElemTime(4) = 0
x = ((Anim = 5125)+(Anim = 5127))*10 - ((Anim = 5126)+(Anim = 5128))*10

[State 5125, 6]
type = VelMul
trigger1 = Anim = [5125,5129]
x = .95*(Anim!=5129)

[State 5125, 7]
type = ChangeAnim
trigger1 = Anim = [5125,5128]
trigger1 = AnimTime = 0
value = 5129

[State 5125, 8]
type = NotHitBy
trigger1 = Anim = 5129
trigger1 = AnimTime = 0
value = , NT,ST,HT
time = 12

[State 5125, 9]
type = NotHitBy
trigger1 = Anim = 5129
trigger1 = AnimTime = 0
value2 = SCA
time = 3

[State 5125, 10]
type = Turn
trigger1 = Anim = 5129
trigger1 = AnimTime > -2
trigger1 = P2Dist X < 0

[State 5125, 11]
type = ChangeState
trigger1= AnimTime = 0
value = 11
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
triggerall = anim != [5390,5500]
trigger1 = (anim != [5111,5119]) && (anim != [5171,5179])
trigger2 = !SelfAnimExist(5140 + (anim % 10))
value = 5140

[State 5150, 1]
type = ChangeAnim
triggerall = Time = 0
triggerall = SelfAnimExist(5140)
triggerall = PrevStateNo != 170
triggerall = anim != [5390,5500]
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
triggerall = PrevStateNo != 170
trigger1 = MatchOver = 1
trigger1 = Anim = [5140,5149]
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5150, 5]
type = ChangeAnim
triggerall = PrevStateNo != 170
triggerall = Time = 0
triggerall = anim != [5390,5500]
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

[State 5150, 14]
type = ChangeState
trigger1 = Time = 120
trigger1 = Anim = 170
trigger1 = roundstate = 2
value = 193

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
type = SelfState
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

;---------------------------------------------------------------------------
; 特殊やられ待機
[Statedef 5390]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5390, 4]
type = AssertSpecial
trigger1 = 1
flag = nokoslow

[State 5390, 1]
type = ChangeAnim
trigger1 = var(40) > 0
value = 5389+var(40)
ignorehitpause = 1

[State 5390, 3]
type = Pause
trigger1 = 1
time = 1
movetime = 1
ignorehitpause = 1

[State 5390, 4]
type = PosFreeze
trigger1 = 1
time = 1
ignorehitpause = 1

[State 5390, 5]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = Var(40) <= 0
trigger1 = Anim = 5390
trigger2 = Anim = 5391
trigger2 = AnimElemTime(8) = 0
value = 5030 + 120*(Anim = 5391)

[State 5390, 5]
type = ChangeState
trigger1 = MatchOver
trigger1 = Var(40) > 0
value = 5400

[State 5390,6]
type = VarSet
trigger1 = !MatchOver
trigger1 = Time > 8
var(40) = -1

[State 5390,7]
type = PlaySnd
trigger1 = Anim = 5391
trigger1 = AnimElemTime(7) = 0
value = F7,0
persistent = 0

[State 5390,8]
type = GameMakeAnim
trigger1 = Anim = 5391
trigger1 = AnimElemTime(7) = 0
value = 60
pos = 0,0
under = 1
persistent = 0

;---------------------------------------------------------------------------
; 特殊やられ
[Statedef 5400]
type    = A
movetype= H
physics = N
sprpriority = -2

[State 5400, 0]
type = ChangeAnim
trigger1 = Time = 0
value = 5390+var(40)*10
ignorehitpause = 1

[State 5400, 1]
type = PlaySnd
trigger1 = Time = 0
value = 11, 3
ignorehitpause = 1

[State 5400, 2]
type = VelSet
trigger1 = Time = 0
trigger1 = Anim = 5400
x = -4

[State 5400, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5400, 4]
type = Helper
trigger1 = Time = 0
trigger1 = Anim =[5400, 5410]
name = "body"
ID = 5401
pos = 0,0
stateno = 5401
ignorehitpause = 1

[State 5400, 4-2]
type = Helper
trigger1 = Time < 8
trigger1 = Time%2 = 0
trigger1 = Anim = 5400
name = "blood"
ID = 8056
pos = 0,-48
stateno = 8056
ownpal = 1
facing = -1
ignorehitpause = 1

[State 5400, 4-3]
type = Helper
trigger1 = Time = 10
trigger1 = Anim = 5420
name = "blood"
ID = 8060
pos = -4,-48
stateno = 8060
ownpal = 1
ignorehitpause = 1

[State 5401,6]
type = VelAdd
trigger1 = Pos Y < 0
y = .5

[State 5400,7]
type = VarSet
trigger1 = AnimElemTime(16) = 1
trigger1 = Anim = 5400
trigger2 = AnimElemTime(12) = 0
trigger2 = Anim = 5410
trigger3 = AnimElemTime(13) = 0
trigger3 = Anim = 5420
var(40) = -1

[State 5400,9]
type = PlaySnd
triggerall = Vel Y >= 0
triggerall = Pos Y >= 0
trigger1 = AnimElemTime(16) >= 1
trigger1 = Anim = 5400
trigger2 = AnimElemTime(12) = 0
trigger2 = Anim = 5410
trigger3 = AnimElemTime(13) = 0
trigger3 = Anim = 5420
value = F7,0
persistent = 0

[State 5400,10]
type = GameMakeAnim
triggerall = Vel Y >= 0
triggerall = Pos Y >= 0
trigger1 = AnimElemTime(16) >= 1
trigger1 = Anim = 5400
trigger2 = AnimElemTime(12) = 0
trigger2 = Anim = 5410
trigger3 = AnimElemTime(13) = 0
trigger3 = Anim = 5420
value = 60
pos = -40*(Anim = 5410),0
under = 1
persistent = 0

[State 5400,11]
type = VelSet
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
y = 0

[State 5400,12]
type = PosSet
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
y = 0

[State 5400, 13]
type = ChangeAnim
triggerall = Vel Y >= 0
trigger1 = Pos Y = 0
trigger1 = AnimElemTime(16) >= 1
trigger1 = Anim = 5400
trigger2 = Pos Y > 0
trigger2 = Anim = 5400
value = Anim+5

[State 5400, 14]
type = ChangeState
trigger1 = Anim = 5405
trigger2 = AnimElemTime(12) = 0
trigger2 = Anim = 5410
trigger3 = AnimElemTime(13) = 0
trigger3 = Anim = 5420
value = 5150

;---------------------------------------------------------------------------
;特殊やられ(ヘルパー1)
[Statedef 5401]
type = A
movetype = H
physics = N
anim = 5391+Parent,Var(40)*10
sprpriority = (Parent,Var(40)=2)*5

[State 5401,1]
type = ChangeAnim
trigger1 = Time = 0
value = 5391+Parent,Var(40)*10
ignorehitpause = 1

[State 5400, 1-2]
type = Helper
trigger1 = Time < 35
trigger1 = Time%4 = 0
trigger1 = Parent,Anim = 5410
name = "blood"
ID = 8057
pos = -Floor(4+random*.01),-Floor(44+random*.05)
stateno = 8057
ownpal = 1
facing = -1
ignorehitpause = 1

[State 5400, 1-3]
type = PlaySnd
trigger1 = Time = 0
value = 2, 9
ignorehitpause = 1

[State 5401,2]
type = VelAdd
trigger1 = Pos Y < 0
trigger1 = Anim = 5401
y = .5

[State 5401,3]
type = VelSet
trigger1 = Anim = 5401
x = -1.5

[State 5401,4]
type = VelSet
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
y = 0

[State 5401,5]
type = PosSet
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
y = 0

[State 5401,6]
type = ChangeState
triggerall = Vel Y >= 0
triggerall = Pos Y >= 0
trigger1 = Anim = 5401
trigger1 = AnimElemTime(3) >= 4
value = 5405

[State 5401,7]
type = PlaySnd
triggerall = Vel Y >= 0
triggerall = Pos Y >= 0
trigger1 = AnimElemTime(12) = 0
trigger1 = Anim = 5411
value = F7,0
persistent = 0

[State 5401,8]
type = GameMakeAnim
triggerall = Vel Y >= 0
triggerall = Pos Y >= 0
trigger1 = AnimElemTime(12) = 0
trigger1 = Anim = 5411
value = 60
pos = 40,0
under = 1
persistent = 0

;---------------------------------------------------------------------------
;特殊やられ(ヘルパー)着地
[Statedef 5405]
type = A
movetype = H
physics = N
sprpriority = -1

[State 5405,0]
type = ChangeAnim
trigger1 = Time = 0
value = Anim+05

[State 5405,3]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5405,4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5405, 5]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 5405, 6]
type = GameMakeAnim
trigger1 = Time = 0
value = 60
under = 1

[State 5405,7]
type = VelMul
trigger1 = 1
x = .85

;---------------------------------------------------------------------------
; 血飛沫KO
[Statedef 5450]
type    = S
Movetype = H
physics = S
ctrl = 0
velset = 0,0
sprpriority = -1

[State 5450, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 5450

[State 5450,2]
type = PosSet
trigger1 = Pos Y != 0
y = 0

[State 5450,3]
type = PlaySnd
trigger1 = AnimTime = 0
value = F7,2

[State 5450,4]
type = SelfState
trigger1 = AnimTime = 0
value = 5150
anim = 5110