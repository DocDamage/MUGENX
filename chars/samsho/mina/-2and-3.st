;---------------------------------------------------------------------------
; 常に実行されるステート(statedef -2を使用)
;相手のステートを参照しているときは無効。
;---------------------------------------------------------------------------

[Statedef -2]

;---------------------------------------------------------------------------
[State -2, ForDebug]
type = DisplayToClipboard
trigger1 = 1
text="Value1 is %f,Value2 is %d,Value3 is %f"
params = FVar(2), gethitvar(hitcount), fvar(1)
;persistent = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
[State -2, Can't be thrown right after GetHit] ;ヒット、ガード直後は投げられない
type = NotHitBy
triggerall = HitOver
trigger1 = stateno = 150 || stateno = 152 || stateno = 154 ; ガードヒット
trigger2 = stateno = 5001 || stateno = 5011 ; ヒット
value = ,AT
time = 10

;---------------------------------------------------------------------------
[State -2, LifePointSave]
type = VarSet
trigger1 = Alive
v = 3
value = Life

;---------------------------------------------------------------------------
[State -2, DamageFlagSet]
type = VarSet
trigger1 = NumTarget
v = 10
value = Target,GetHitVar(hitcount)

[State -2, DamageFlagReset]
type = VarRangeSet
trigger1 = !NumTarget
first = 10
last = 11
value = 0

;---------------------------------------------------------------------------
[State -2, BlockingFlagSet]
type = VarAdd
trigger1 = command = "forward"
;trigger2 = command = "down" && StateType != A
ignorehitpause = 1
v = 7
value = 1

[State -2, BlockingFlagReset]
type = VarSet
trigger1 = command != "forward"
;trigger1 = command != "down"
ignorehitpause = 1
v = 7
value = 0

[State -2, Blocking]
type = HitOverride
triggerall = Var(7) = (0,8]
trigger1 = Ctrl
trigger2 = StateNo = 700
trigger2 = Time > 10
trigger3 = StateNo = [6000, 6001]
attr = SCA,AA
slot = 0
stateno = 6000

[State -2, Blocking]
type = HitOverride
triggerall = Var(7) = (0,8]
trigger1 = Ctrl
trigger2 = StateNo = [6000, 6001]
attr = SCA,AP
slot = 1
stateno = 6001

;---------------------------------------------------------------------------
[State -2, CancelFlagReSet]
type = VarSet
trigger1 = 1
v = 16
value = 0

[State -2, CancelFlagSet]
type = VarSet
trigger1 = StateNo = 113 && Time = [21,25]
trigger2 = StateNo = 114 && AnimElemNo(0)=5
trigger3 = StateNo = 115 && AnimElemNo(0)=[3,6]
trigger4 = StateNo = 210 && Time <= 10
trigger5 = StateNo = 245 && Time <= 6
trigger6 = StateNo = 260 && Time <= 4
trigger7 = StateNo = 271
trigger8 = StateNo = 430 && Time <= 6
trigger9 = StateNo = 700
trigger9 = Time > 10
trigger10 = Anim = [5125,5126]
trigger10 = AnimElemTime(5) >= 0
v = 16
value = 1

;---------------------------------------------------------------------------
[State -2, SaveTarget'sDamage]
type = VarSet
trigger1 = NumTarget
v = 33
value = Target,GetHitVar(damage)

;---------------------------------------------------------------------------
[State -2, Set SpiritPow]
type = VarSet
trigger1 = roundstate = 0
fvar(1) = 78

[State -2, SpiritPow-inc]
type = VarAdd
triggerall = StateNo != [100,120)
triggerall = StateNo != [200,700)
triggerall = StateNo != [800, 4000)
trigger1 = FVar(1) < 78 && Var(30) <= 0
trigger2 = FVar(1) < 102 && Var(30) = 24
trigger3 = FVar(1) < 118 && Var(30) = 40
fvar(1) = (-0.011*FVar(1) + 0.8757) * (FVar(1) > (Var(30) * (Var(30) > 0))) + (FVar(1) <= (Var(30) * (Var(30) > 0)))
ignorehitpause = 1

[State -2, SpiritPow Ceiling]
type = VarSet
trigger1 = FVar(1) > 78 && Var(30) <= 0
trigger2 = FVar(1) > 102 && Var(30) = 24
trigger3 = FVar(1) > 118 && Var(30) = 40
trigger4 = FVar(1) < 0
fvar(1) = (78 + (Var(30) > 0) * Var(30))*(FVar(1) > 0)
ignorehitpause = 1

[State -2, SpiritPow-dec(NotHit)]
type = VarAdd
triggerall = !MoveContact
trigger1 = StateNo = 200 && Time = 25
trigger2 = StateNo = 220 && Time = 25
trigger3 = StateNo = 240 && Time = 31
trigger4 = StateNo = 280 && Time = 14
trigger5 = StateNo = 285 && Time = 14
trigger6 = StateNo = 286 && Time = 14
trigger7 = StateNo = 290 && Time = 28
trigger8 = StateNo = 400 && Time = 17
trigger9 = StateNo = 420 && Time = 18
fvar(1) = -6-4*(StateNo = 220 || StateNo = 420)-10*(StateNo = 240 || StateNo = 290)
ignorehitpause = 1

[State -2, SpiritPow-dec(Guarded)]
type = null;VarAdd
triggerall = MoveGuarded
trigger1 = StateNo = 200
trigger2 = StateNo = 220
trigger3 = StateNo = 240
trigger4 = StateNo = 280
trigger5 = StateNo = 285
trigger6 = StateNo = 286
trigger7 = StateNo = 290
trigger8 = StateNo = 400
trigger9 = StateNo = 420
fvar(1) = -6-4*(StateNo = 220 || StateNo = 420)-10*(StateNo = 240 || StateNo = 290)
ignorehitpause = 1
persistent = 0

[State -2, SpiritPow-dec(Hit)]
type = null;VarAdd
trigger1 = NumTarget
trigger1 = MoveHit
fvar(1) = -Target,GetHitVar(damage)
ignorehitpause = 1
persistent = 0

;---------------------------------------------------------------------------
[State -2, AttackMul]
type = VarSet
trigger1 = FVar(1) < 78 && Var(30) <= 0
trigger2 = FVar(1) < 102 && Var(30) = 24
trigger3 = FVar(1) < 118 && Var(30) = 40
fvar(2) = (fvar(1)+48)/87

[State -2, MaxAttackMul]
type = VarSet
trigger1 = FVar(1) >= 78 && Var(30) <= 0
trigger2 = FVar(1) >= 102 && Var(30) = 24
trigger3 = FVar(1) >= 118 && Var(30) = 40
fvar(2) = 2

;---------------------------------------------------------------------------
[State -2, Attack Voice]
type = PlaySnd
triggerall = Random < 720
trigger1 = stateno = 200 && AnimElemTime(4) = 0
trigger2 = stateno = 205 && AnimElemTime(3) = 0
trigger3 = stateno = 210 && AnimElemTime(2) = 0
trigger4 = stateno = 220 && AnimElemTime(3) = 0
trigger5 = stateno = 225 && AnimElemTime(5) = 0
trigger6 = stateno = 240 && AnimElemTime(3) = 0
trigger7 = stateno = 245 && AnimElemTime(10) = 0
trigger8 = stateno = 250 && AnimElemTime(4) = 0
trigger9 = stateno = 260 && AnimElemTime(3) = 0
trigger10 = stateno = 290 && AnimElemTime(3) = 0
trigger11 = stateno = 295 && AnimElemTime(5) = 0
trigger12 = stateno = 400 && AnimElemTime(2) = 0
trigger13 = stateno = 405 && AnimElemTime(6) = 0
trigger14 = stateno = 410 && AnimElemTime(2) = 0
trigger15 = stateno = 420 && AnimElemTime(3) = 0
trigger16 = stateno = 425 && AnimElemTime(6) = 0
trigger17 = stateno = 430 && AnimElemTime(8) = 0
trigger18 = stateno = 620 && AnimElemTime(3) = 0
trigger19 = stateno = 630 && AnimElemTime(4) = 0
trigger20 = stateno = 640 && AnimElemTime(6) = 0
value = 200, Floor(Random/200)
channel = 4
lowpriority = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
[State -2, GetHit Voice]
type = PlaySnd
trigger1 = Time = 1
trigger1 = Alive
trigger1 = Random < 720
trigger1 = stateno = 5000 || stateno = 5010 || stateno = 5020 || stateno = 5130 || stateno = 5180
value = 30, Floor(Random/250)
channel = 4
lowpriority = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
[State -2, Trip Voice]
type = PlaySnd
trigger1 = Time = 1
trigger1 = Alive
trigger1 = Anim = 5070
value = 30, 4
channel = 4
lowpriority = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
[State -2, HitOperation(Back)]
type    = ChangeState
trigger1 = stateno = 5000 || stateno = 5010 ||stateno = 5020 ||stateno = 5070
trigger1 = GetHitVar(yvel) >= -4 && GetHitVar(yvel) < -1
trigger1 = GetHitVar(fall) && GetHitVar(fall.recover) = 0
trigger1 = GetHitVar(xvel) * facing <= -5
value = 5014

;---------------------------------------------------------------------------
[State -2, HitOperation(KnockDown)]
type    = ChangeState
trigger1 = stateno = 5000 || stateno = 5010 || stateno = 5020
trigger1 = GetHitVar(xvel) * facing > 0 && GetHitVar(fall)
trigger2 = stateno = 5000 || stateno = 5010 ||stateno = 5020
trigger2 = Abs(GetHitVar(xvel))*2 < GetHitVar(yvel)
trigger2 = GetHitVar(fall)
value = 5180

;---------------------------------------------------------------------------
[State -2, HitOperation(GetUp)]
type    = ChangeState
triggerall = stateno = 5110
triggerall = Anim = [5110,5112]
triggerall = Time > 5
trigger1 = command = "holdfwd" 
trigger2 = command = "holdback"
trigger3 = command = "holdup"
value = 5125

;---------------------------------------------------------------------------
[State -2, RemoveBow]
type = RemoveExplod
trigger1 = Anim != 170
ID = 3005

;---------------------------------------------------------------------------
[State -2, Umitimun]
type = VarSet
trigger1 = command = "Umichimun"
v = 5
value = 3000

[State -2, Chikyuushin_z]
type = VarSet
trigger1 = command = "Chikyuushin_z"
v = 5
value = 1020

[State -2, Chikyuushin_x]
type = VarSet
trigger1 = command = "Chikyuushin_x"
v = 5
value = 1000

[State -2, Chikyuushin_a]
type = VarSet
trigger1 = command = "Chikyuushin_a"
v = 5
value = 1010

[State -2, Tenkyuushin]
type = VarSet
trigger1 = command = "Tenkyuushin"
v = 5
value = 1030

[State -2, Nageki_z]
type = VarSet
trigger1 = command = "Nageki_z"
v = 5
value = 1120

[State -2, Nageki_x]
type = VarSet
trigger1 = command = "Nageki_x"
v = 5
value = 1100

[State -2, Nageki_a]
type = VarSet
trigger1 = command = "Nageki_a"
v = 5
value = 1110

[State -2, SunGan_x]
type = VarSet
trigger1 = command = "SunGan_x"
v = 5
value = 1200

[State -2, SunGan_a]
type = VarSet
trigger1 = command = "SunGan_a"
v = 5
value = 1210

[State -2, TimeSet]
type = VarSet
trigger1 = Var(5)
trigger1 = !Var(6)
v = 6
value = GameTime

[State -2, Var(5)]
type = VarRangeSet
trigger1 = Var(5)
trigger1 = Var(6) = [1, Gametime - 4]
first = 5
last = 6
value = 0

;---------------------------------------------------------------------------
; 特定のステート内で常に実行されるステート (statedef -3を使用)
;---------------------------------------------------------------------------

[Statedef -3]

;---------------------------------------------------------------------------
[State -3, FallingAnim(up)]
type = ChangeAnim
triggerall = Vel Y <= -3
triggerall = AnimElemTime(2) >= 0
trigger1 = Anim = 5051 || Anim = 5052
value = Anim -1 + (Vel Y <= -4.5) + (Vel Y = (-4.5,-3])*11
elem = (Vel Y <= -4.5)*2 + (Vel Y = (-4.5,-3])

;---------------------------------------------------------------------------
[State -3, FallingAnim(down)]
type = ChangeAnim
triggerall = Vel Y > -3
triggerall = AnimElemTime(2) >= 0
trigger1 = Anim = 5051 || Anim = 5052
value = Anim + 10

;---------------------------------------------------------------------------
[State -3, Can't Jump over enemy]
type = Width
trigger1 = Vel X > 0
trigger1 = MoveType != H
edge = 2,0

;---------------------------------------------------------------------------
[State -3, Landing Sound]
type = PlaySnd
trigger1 = Time = 1
trigger1 = stateno = 52 ;着地
value = 40, 0

;---------------------------------------------------------------------------
[State -3, Recovery Voice]
type = PlaySnd
trigger1 = Time = 1
trigger1 = PrevStateNo != [5200,5210]
trigger1 = stateno = [5200,5210] ;受身
value = 210, 0
channel = 0
lowpriority = 1

;---------------------------------------------------------------------------
[State -3, CtrlSet then GetUp]
type = CtrlSet
trigger1 = stateno = 5120
trigger1 = AnimTime = 1
value = 1

;---------------------------------------------------------------------------
[State -3, kenGe]
type = Helper
triggerall = !NumHelper(7000)
triggerall = NumEnemy
trigger1 = RoundState = [1,5]
name = "kenkiGauge"
id = 7000
pos = 1000, 1000
stateno = 7000
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0

;---------------------------------------------------------------------------
[State -3, CPU]
type = Helper
trigger1 = !NumHelper(9999)
trigger1 = RoundState = 2
name = "CPU"
id = 9999
pos = 1000,1000
stateno = 9999
keyctrl = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0
