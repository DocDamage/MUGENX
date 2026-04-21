;---------------------------------------------------------------------------
; 常に実行されるステート(statedef -2を使用)
;相手のステートを参照しているときも有効?
;---------------------------------------------------------------------------

[Statedef -2]

;---------------------------------------------------------------------------
[State -2, ForDebug]
type = DisplayToClipboard
trigger1 = 1
text="Value1 is %d,Value2 is %d,Value3 is %d"
params = Var(12),Var(42),Var(45)
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
[State -2, Remove Opp Explod]
type = RemoveExplod
trigger1 = NumExplod(1400)
trigger1 = Anim != 1400
trigger1 = Anim != 1410
trigger1 = Anim != 1420
ID = 1400

;---------------------------------------------------------------------------
[State -2, Initialize Var]
type = VarSet
trigger1 = roundstate = 0
var(49) = 0

;---------------------------------------------------------------------------
[State -2, Set Dead Flag]
type = VarSet
trigger1 = roundstate = 1
trigger2 = roundstate = 4
var(40) = var(42) := 0

;---------------------------------------------------------------------------
[State -2, Timer]
type = VarAdd
trigger1 = roundstate = 3
ignorehitpause = 1
var(42) = 1

;---------------------------------------------------------------------------
[State -2, Set Lose Flag]
type = VarAdd
triggerall = Var(42) = 1
trigger1 = Lose
var(44) = -1
ignorehitpause = 1

;---------------------------------------------------------------------------
[State -2, Set Win Flag]
type = VarAdd
triggerall = Var(42) = 1
trigger1 = Win
var(45) = -1
ignorehitpause = 1

;---------------------------------------------------------------------------
[State -2, K.O.ed voice]
type = PlaySnd
triggerall = !Alive
triggerall = Var(42) = 2
trigger1 = anim != 170
trigger1 = StateNo != [5390,5400]
trigger1 = StateNo != 5150
value = 11,(var(44)=0)+1
ignorehitpause = 1

;---------------------------------------------------------------------------
[State -2, Projectile Flag]
type = VarSet
trigger1 = Var(9)
trigger1 = !NumHelper(1000)
trigger1 = !NumHelper(1100)
var(9) = 0

;---------------------------------------------------------------------------
[State -2, Split_H]
type = VarSet
triggerall = !Alive
triggerall = loseKO
triggerall = var(40) >= 0
triggerall = var(41) = 2
trigger1 = EnemyNear,Name = "Mina"
trigger1 = EnemyNear,AuthorName = "PriPri Man"
trigger1 = EnemyNear,StateNo = 3501
trigger2 = EnemyNear,Name = "Rimururu"
trigger2 = EnemyNear,AuthorName = "PriPri Man"
trigger2 = EnemyNear,StateNo = 220 || EnemyNear,StateNo = 275 || EnemyNear,StateNo = 620 || EnemyNear,StateNo = 3501
trigger3 = EnemyNear,Name = "nakoruruss0"
trigger3 = EnemyNear,AuthorName = "Warusaki3"
trigger3 = EnemyNear,StateNo = 211
trigger4 = EnemyNear,Name = "kusaregedo"
trigger4 = EnemyNear,AuthorName = "H”"
trigger4 = EnemyNear,StateNo = 230 || EnemyNear,StateNo = 310
trigger5 = EnemyNear,Name = "Yumeji Kurokouchi"
trigger5 = EnemyNear,AuthorName = "taruse"
trigger5 = EnemyNear,Anim = 205 || EnemyNear,Anim = 610 || EnemyNear,StateNo = 1505 || EnemyNear,StateNo = 4523
trigger6 = EnemyNear,Name = "Rera"
trigger6 = EnemyNear,AuthorName = "Roque"
trigger6 = EnemyNear,StateNo = 215 || EnemyNear,StateNo = 250 || EnemyNear,StateNo = 260 || EnemyNear,StateNo = 610 || EnemyNear,StateNo = 2100 || EnemyNear,StateNo = 8200 || EnemyNear,StateNo = 8230 || EnemyNear,StateNo = 8250
var(40) = 1
ignorehitpause = 1

;---------------------------------------------------------------------------
[State -2, Split_V]
type = VarSet
triggerall = !Alive
triggerall = loseKO
triggerall = StateType != A
triggerall = var(40) >= 0
triggerall = var(41) = 2
triggerall = StateNo <= 5020
trigger1 = EnemyNear,Name = "Rimururu"
trigger1 = EnemyNear,AuthorName = "PriPri Man"
trigger1 = EnemyNear,StateNo = 245 || EnemyNear,StateNo = 225 || EnemyNear,StateNo = 290 || EnemyNear,StateNo = 630
trigger2 = EnemyNear,Name = "nakoruruss0"
trigger2 = EnemyNear,AuthorName = "Warusaki3"
trigger2 = EnemyNear,StateNo = 220 || EnemyNear,StateNo = 221 || EnemyNear,StateNo = 360 || EnemyNear,StateNo = 370 || EnemyNear,StateNo = 420 || EnemyNear,StateNo = 620
trigger3 = EnemyNear,Name = "kusaregedo"
trigger3 = EnemyNear,AuthorName = "H”"
trigger3 = EnemyNear,StateNo = 220 || EnemyNear,StateNo = 440 || EnemyNear,StateNo = 620
trigger4 = EnemyNear,Name = "Yumeji Kurokouchi"
trigger4 = EnemyNear,AuthorName = "taruse"
trigger4 = EnemyNear,StateNo = 210 || EnemyNear,StateNo = 225 || EnemyNear,StateNo = 230 || EnemyNear,StateNo = 425 || EnemyNear,StateNo = 605 || EnemyNear,StateNo = 620 || EnemyNear,StateNo = 3200
trigger5 = EnemyNear,Name = "Rera"
trigger5 = EnemyNear,AuthorName = "Roque"
trigger5 = EnemyNear,StateNo = 210 || EnemyNear,StateNo = 220 || EnemyNear,StateNo = 225 || EnemyNear,StateNo = 231 || EnemyNear,StateNo = 260 || EnemyNear,StateNo = 420 || EnemyNear,StateNo = 620 || EnemyNear,StateNo = 8210 || EnemyNear,StateNo = 8260
var(40) = 2+(P2bodyDist X > 64)
ignorehitpause = 1

;---------------------------------------------------------------------------
[State -2, Dead]
type = SelfState
triggerall = !Alive
triggerall = loseKO
triggerall = StateNo != 5390
triggerall = StateNo != 5400
triggerall = StateNo != 5150
triggerall = var(40) > 0
trigger1 = Var(42) = 1&&Var(44) = 0
trigger2 = Var(42) = 1&&TeamMode = turns
trigger3 = StateNo = 5450
value = 5400
ignorehitpause = 1

;---------------------------------------------------------------------------
[State -2, Finish]
type = TargetState
triggerall = NumTarget
triggerall = !Target,Alive
triggerall = Target,loseKO
triggerall = Target,Pos Y = 0
triggerall = Target,StateNo != [5390,5450]
triggerall = Target,GetHitVar(chainid) != 0
triggerall = Target,Name != "Rimururu"
triggerall = Target,Name != "mina"
triggerall = Target,Name != "nakoruruss0"
triggerall = Var(42) = 1
trigger1 = var(45) = 0
trigger2 = Target,TeamMode = turns
value = 5450
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = NumTarget
triggerall = !NumHelper(8069)
triggerall = !Target,Alive
triggerall = Target,loseKO
triggerall = Target,StateNo = 5450
trigger1 = Target,HitShakeOver
name = "Fatality"
ID = 8069
pos = Floor(Target,Pos X-Pos X)*Facing+Target,Const(size.ground.back)/2, Floor(Target,Pos Y+Target,Const(size.mid.pos.y)-Pos Y)
stateno = 8069
ownpal = 1
persistent = 0
facing = Facing*Target,Facing

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
[State -2, ParryFlagSet]
type = VarAdd
trigger1 = command = "forward"
trigger2 = command = "down" && StateType != A
trigger3 = Var(7)
ignorehitpause = 1
var(7) = 1

[State -2, ParryFlagReset]
type = VarAdd
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger1 = Var(7) = [1,5]
ignorehitpause = 1
var(7) = 6000000

[State -2, ParryFlagReset]
type = VarSet
trigger1 = command != "forward"
trigger1 = command != "down"
trigger1 = Var(7)%1000 > 23
ignorehitpause = 1
var(7) = 0

[State -2, Parry]
type = HitOverride
triggerall = (Var(7) = [1,5])+(Var(7) = [6000001,6000010])
trigger1 = Ctrl
trigger2 = StateNo = 700
trigger2 = Time > 10
trigger3 = StateNo = [6000, 6001]
attr = SCA,AA
slot = 0
stateno = 6000

[State -2, Parry]
type = HitOverride
triggerall = (Var(7) = [1,5])+(Var(7) = [6000001,6000010])
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
triggerall = !NumTarget
trigger1 = StateNo = 113 && Time = [21,25]
trigger2 = StateNo = 114 && Time = [17,20]
trigger3 = StateNo = 115 && Time = [6,20]
trigger4 = StateNo = 200 && Time >= 5
trigger5 = StateNo = 210 && Time >= 7
trigger6 = StateNo = 220
trigger7 = StateNo = 225
trigger8 = StateNo = 240 && Time >= 28
trigger9 = StateNo = 250 && Time >= 30
trigger10 = StateNo = 260 && Time >= 15
trigger11 = StateNo = 270
trigger11 = Time = [14, 20]
trigger12 = StateNo = 281
trigger12 = Time = [10, 36]
trigger13 = StateNo = 400 && Time >= 5
trigger14 = StateNo = 420
trigger15 = StateNo = 700
trigger15 = Time > 10
trigger16 = Anim = 5129
trigger16 = AnimTime > -1
trigger17 = StateNo = 105
trigger17 = Time = [5,12]
v = 16
value = 1

[State -2, CancelFlagSet]
type = VarSet
triggerall = NumTarget
triggerall = Target,HitShakeOver
trigger1 = StateNo = 113 && Time = [21,25]
trigger2 = StateNo = 114 && Time = [17,20]
trigger3 = StateNo = 115 && Time = [6,20]
trigger4 = StateNo = 200 && Time >= 5
trigger5 = StateNo = 210 && Time >= 7
trigger6 = StateNo = 220
trigger7 = StateNo = 225
trigger8 = StateNo = 240 && Time >= 28
trigger9 = StateNo = 250 && Time >= 30
trigger10 = StateNo = 260 && Time >= 15
trigger11 = StateNo = 270
trigger11 = Time = [14, 20]
trigger12 = StateNo = 281
trigger12 = Time = [10, 36]
trigger13 = StateNo = 400 && Time >= 5
trigger14 = StateNo = 420
trigger15 = StateNo = 700
trigger15 = Time > 10
trigger16 = Anim = 5129
trigger16 = Time >= 5
trigger17 = StateNo = 105
trigger17 = Time = [5,12]
v = 16
value = 1

;---------------------------------------------------------------------------
[State -2, SaveTarget'sDamage]
type = VarSet
trigger1 = NumTarget
v = 33
value = Target,GetHitVar(damage)

;---------------------------------------------------------------------------
[State -2, AngerPow-inc]
type = VarAdd
triggerall = fvar(3) = [0,640)
triggerall = var(30) = 0
triggerall = StateNo != [169, 170]
triggerall = StateNo != [6000, 6001]
trigger1 = var(3)-life > 0
fv = 3
value = Ceil((var(3)-life)*1.25)+10*(StateNo!=[120,160))
;value = Ceil(*1.25)+10*(StateNo!=[120,160))
persistent = 0
ignorehitpause = 1

[State -2, Anger]
type = VarSet
trigger1 = fvar(3) >= 640
trigger1 = var(30) = 0
trigger2 = fvar(3) = 0
trigger2 = var(30) = 24
trigger3 = fvar(3) = -1
trigger3 = var(30) = 40
trigger4 = roundstate = 0
trigger4 = var(30) = 40
var(30) = 24*(fvar(3)>=640)-(var(30)=40)
ignorehitpause = 1

[State -2, AngerPow-Count]
type = VarAdd
triggerall = MoveType != H
triggerall = roundstate >= 2
trigger1 = var(30) = 24
trigger1 = fvar(3) < 0
trigger2 = StateNo != 2000
trigger2 = var(30) = 40
fv = 3
value = 1

[State -2, AngerPow-Set]
type = VarSet
trigger1 = fvar(3) >= 640
trigger1 = var(30) = 24
trigger2 = roundstate = 0
trigger2 = var(30) = 40
fv = 3
value = -1-479*(var(30)=24)
ignorehitpause = 1

[State -2, PalFX when angry] 
type = PalFX
trigger1 = var(30) = [24, 40]
trigger1 = Alive
time = 1
add = Abs(floor(64*sin(pi*GameTime/80))),-Abs(floor(56*sin(pi*GameTime/80))),-Abs(floor(64*sin(pi*GameTime/80)))
ignorehitpause = 1

;---------------------------------------------------------------------------
[State -2, LifePointSave]
type = VarSet
trigger1 = 1
v = 3
value = Life

;---------------------------------------------------------------------------
[State -2, Set SpiritPow]
type = VarSet
trigger1 = roundstate = 0
fvar(1) = 78

[State -2, SpiritPow-inc Falg]
type = VarSet
triggerall = !NumHelper(3100)
trigger1 = StateNo != [100,105]
trigger1 = StateNo != 111
trigger1 = StateNo != [113,120)
trigger1 = StateNo != [200,700)
trigger1 = StateNo != [800, 4000)
trigger2 = MoveType = H
var(28) = 1

[State -2, SpiritPow-inc Falg]
type = VarSet
triggerall = MoveType != H
trigger1 = StateNo = [100,105]
trigger2 = StateNo = 111
trigger3 = StateNo = [113, 120)
trigger4 = StateNo = [200,700)
trigger5 = StateNo = [800, 4000)
trigger6 = NumHelper(3100)
var(28) = 0

[State -2, SpiritPow-inc(1)]
type = VarAdd
triggerall = var(28)
trigger1 = FVar(1) = 0
trigger1 = Var(30) <= 0
trigger2 = FVar(1) = [0,24]
trigger2 = Var(30) = 24
trigger3 = FVar(1) = [0,40]
trigger3 = Var(30) = 40
fvar(1) = 1
ignorehitpause = 1

[State -2, SpiritPow-inc]
type = VarAdd
triggerall = var(28)
trigger1 = FVar(1) = (0,78)
trigger1 = Var(30) <= 0
trigger2 = FVar(1) = (24,102)
trigger2 = Var(30) = 24
trigger3 = FVar(1) = (40,118)
trigger3 = Var(30) = 40
fvar(1) = -0.011*(FVar(1)-(Var(30)>0)*Var(30)) + 0.8757
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
triggerall = !MoveHit
triggerall = MoveType != H
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

[State -2, SpiritPow-dec(Hit)]
type = VarAdd
trigger1 = NumTarget
trigger1 = MoveHit
trigger1 = StateNo != 850
fvar(1) = -Ceil(Target,GetHitVar(damage)/8)
ignorehitpause = 1
persistent = 0

;---------------------------------------------------------------------------
[State -2, AttackMul]
type = VarSet
trigger1 = FVar(1) < 78 && Var(30) <= 0
trigger2 = FVar(1) < 102 && Var(30) = 24
trigger3 = FVar(1) < 118 && Var(30) = 40
fvar(2) = (fvar(1)+66)/139*(1+(fvar(1)>=102)*.25)

[State -2, MaxAttackMul]
type = VarSet
trigger1 = FVar(1) >= 78 && Var(30) <= 0
trigger2 = FVar(1) >= 102 && Var(30) = 24
trigger3 = FVar(1) >= 118 && Var(30) = 40
fvar(2) = 1.4+(FVar(1)>=102)*.6+(FVar(1)>=118)*.2

;---------------------------------------------------------------------------
[State -2, GetHit Voice]
type = PlaySnd
trigger1 = Time = 1
trigger1 = Alive
trigger1 = Random < 720
trigger1 = stateno = 5000 || stateno = 5010 || stateno = 5020 || stateno = 5080|| stateno = 5130 || stateno = 5180
value = 30, Floor(Random/250)
channel = 4
lowpriority = 1
ignorehitpause = 1
persistent = 0

;---------------------------------------------------------------------------
[State -2, Trip Voice]
type = PlaySnd
triggerall = Time = 1
triggerall = Alive
trigger1 = StateNo = 5070
trigger2 = Anim = 5070
value = 30, 4
channel = 4
lowpriority = 1
ignorehitpause = 1
persistent = 0

;---------------------------------------------------------------------------
[State -2, RemoveMeisouEffect]
type = RemoveExplod
trigger1 = StateNo != 110
ID = 109

;---------------------------------------------------------------------------
[State -2, ブリス用]
type = VarSet
trigger1 = StateNo = 2020
trigger1 = MoveType = H
trigger1 = NumEnemy
var(43) = (Enemynear,AuthorName="bad darkness"&&Enemynear,Name="Demitri"&&EnemyNear,NumEnemy=1)

[State -2, ブリス用]
type = ChangeAnim
trigger1 = var(43)
trigger1 = StateNo = [2020,2026]
trigger1 = MoveType = H
trigger1 = NumEnemy
value = 9020
elem = StateNo-2020

;-----------------------------------------------------
;ヒットポーズ用

[State -2, Animfreeze]
type = ChangeAnim
triggerall = Var(13)>0
triggerall = NumTarget
trigger1 = !Target,HitShakeOver
trigger1 = MoveHit
trigger1 = Ceil(Var(12)/100) = StateNo
trigger1 = AnimElemTime(Var(12)-StateNo*100) >= 1
;trigger2 = Ceil(Var(12)/100) != StateNo
value = anim
elem = (Var(12)-StateNo*100-1)*(Ceil(Var(12)/100)=StateNo)+1

[State -2, Freeze]
type = PosFreeze
triggerall = NumTarget
trigger1 = !Target,HitShakeOver
trigger1 = Ceil(Var(12)/100) = StateNo
;trigger1 = AnimElemTime(Var(12)-StateNo*100) >= 1
;trigger2 = Ceil(Var(12)/100) != StateNo

[State -2, VarAdd]
type = VarAdd
triggerall = Var(13)>0
trigger1 = MoveHit
trigger1 = Ceil(Var(12)/100) = StateNo
trigger1 = AnimElemTime(Var(12)-StateNo*100) >= 0
;trigger2 = Ceil(Var(12)/100) != StateNo
var(13) = -1

[State -2, VarSet]
type = VarSet
triggerall = Var(13)>0
trigger1 = !MoveHit
trigger1 = Ceil(Var(12)/100) = StateNo
trigger1 = AnimElemTime(Var(12)-StateNo*100) >= 0
var(13) = -1

[State -2, VelSet]
type = VelSet
triggerall = NumTarget
trigger1 = !Target,HitShakeOver
trigger1 = Ceil(Var(12)/100) = StateNo
x = fvar(11)
y = fvar(12)

[State -2, Save Vel X]
type = VarSet
trigger1 = 1
fvar(11) = Vel X

[State -2, Save Vel Y]
type = VarSet
trigger1 = 1
fvar(12) = Vel Y

;---------------------------------------------------------------------------
[State -2, Mirror_z]
type = VarSet
trigger1 = command = "Mirror_z"
v = 5
value = 3102

[State -2, Mirror_x]
type = VarSet
trigger1 = command = "Mirror_x"
v = 5
value = 3100

[State -2, Mirror_a]
type = VarSet
trigger1 = command = "Mirror_a"
v = 5
value = 3101

[State -2, Mirror_y]
type = VarSet
trigger1 = command = "Mirror_y"
v = 5
value = 3103

[State -2, issen]
type = VarSet
trigger1 = command = "issen"
v = 5
value = 3500

[State -2, Kamui_Emussi]
type = VarSet
trigger1 = command = "Kamui_Emussi"
v = 5
value = 3000

[State -2, AngerBurst]
type = VarSet
trigger1 = command = "burst"
v = 5
value = 2000

[State -2, Qualle_z]
type = VarSet
trigger1 = command = "Qualle_z"
v = 5
value = 1020

[State -2, Qualle_x]
type = VarSet
trigger1 = command = "Qualle_x"
v = 5
value = 1000

[State -2, Qualle_a]
type = VarSet
trigger1 = command = "Qualle_a"
v = 5
value = 1010

[State -2, Nonno_z]
type = VarSet
trigger1 = command = "Nonno_z"
v = 5
value = 1120

[State -2, Nonno_x]
type = VarSet
trigger1 = command = "Nonno_x"
v = 5
value = 1100

[State -2, Nonno_a]
type = VarSet
trigger1 = command = "Nonno_a"
v = 5
value = 1110

[State -2, Memm_z]
type = VarSet
trigger1 = command = "Memm_z"
v = 5
value = 1320

[State -2, Memm_x]
type = VarSet
trigger1 = command = "Memm_x"
v = 5
value = 1300

[State -2, Memm_a]
type = VarSet
trigger1 = command = "Memm_a"
v = 5
value = 1310

[State -2, Opp_z]
type = VarSet
trigger1 = command = "Opp_z"
v = 5
value = 1420

[State -2, Opp_x]
type = VarSet
trigger1 = command = "Opp_x"
v = 5
value = 1400

[State -2, Opp_a]
type = VarSet
trigger1 = command = "Opp_a"
v = 5
value = 1410

[State -2, Additional]
type = VarSet
trigger1 = command = "c"
trigger1 = command = "holdup"
trigger1 = NumTarget
v = 5
value = IfElse((Target,StateNo=21140)*(Target,Pos Y<0),1,(Target,HitFall))*296

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
; 敵にステートを奪われている場合は無効?
;---------------------------------------------------------------------------

[Statedef -3]

;---------------------------------------------------------------------------
[State -3, Attack Voice]
type = PlaySnd
triggerall = Random < 720
trigger1 = stateno = 200 && AnimElemTime(3) = 0
trigger2 = stateno = 205 && AnimElemTime(3) = 0
trigger3 = stateno = 210 && AnimElemTime(2) = 0
trigger4 = stateno = 220 && AnimElemTime(3) = 0
trigger5 = stateno = 225 && AnimElemTime(5) = 0
trigger6 = anim = 240 && AnimElemTime(3) = 0
trigger7 = anim = 245 && AnimElemTime(6) = 0
trigger8 = stateno = 250 && AnimElemTime(4) = 0
trigger9 = stateno = 260 && AnimElemTime(3) = 0
trigger10 = stateno = 290 && AnimElemTime(3) = 0
trigger11 = stateno = 295 && AnimElemTime(5) = 0
trigger12 = stateno = 400 && AnimElemTime(2) = 0
trigger13 = stateno = 405 && AnimElemTime(6) = 0
trigger14 = stateno = 410 && AnimElemTime(3) = 0
trigger15 = stateno = 420 && AnimElemTime(3) = 0
trigger16 = stateno = 425 && AnimElemTime(6) = 0
trigger17 = stateno = 430 && AnimElemTime(3) = 0
trigger18 = stateno = 620 && AnimElemTime(3) = 0
trigger19 = anim = 630 && AnimElemTime(3) = 0
trigger20 = stateno = 631 && AnimElemTime(3) = 0
trigger21 = stateno = 640 && AnimElemTime(6) = 0
trigger22 = anim = 246 && AnimElemTime(4) = 0
trigger23 = stateno = 280 && AnimElemTime(1) = 2
value = 200, Floor(Random/200)
channel = 0
lowpriority = 1
ignorehitpause = 1
persistent = 0

;---------------------------------------------------------------------------
[State -3, HitOperation(KnockDown)]
type    = SelfState
trigger1 = stateno = 5000 || stateno = 5010 || stateno = 5020
trigger1 = GetHitVar(xvel) * facing > 0 && GetHitVar(fall)
trigger2 = stateno = 5000 || stateno = 5010 ||stateno = 5020
trigger2 = Abs(GetHitVar(xvel))*2 < GetHitVar(yvel)
trigger2 = GetHitVar(fall)
value = 5180

;---------------------------------------------------------------------------
[State -3, HitOperation(GetUp)]
type    = SelfState
triggerall = stateno = 5110
triggerall = Anim = [5110,5112]
triggerall = Time > 5
trigger1 = command = "holdfwd" 
trigger2 = command = "holdback"
trigger3 = command = "holdup"
value = 5125

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
value = 200, 5
channel = 0
lowpriority = 1

;---------------------------------------------------------------------------
[State -3, CtrlSet then GetUp]
type = CtrlSet
trigger1 = stateno = 5120
trigger1 = AnimTime = 1
value = 1

;---------------------------------------------------------------------------
[State -3, facep2]
type = turn
trigger1 = stateno = [130,132]
trigger1 = p2dist X < 0

;---------------------------------------------------------------------------
[State -3, kenGe]
type = Helper
triggerall = !NumHelper(7000)
triggerall = NumEnemy
trigger1 = RoundState = 2
name = "Gauge"
id = 7000
pos = 1000, 1000
stateno = 7000
facing = facing * (1-(teamside = 2)*2)
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0
size.height = 0

;---------------------------------------------------------------------------
[State -3, IkaGe]
type = Null;Helper
triggerall = !NumHelper(7200)
triggerall = NumEnemy
triggerall = Var(30) != -1
trigger1 = RoundState = 2
name = "ikariiGauge"
id = 7200
pos = 1000, 1000
stateno = 7200
facing = facing * (1-(teamside = 2)*2)
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0
size.height = 0

;---------------------------------------------------------------------------
[State -3, conl]
type = Helper
trigger1 = !NumHelper(30000)
trigger1 = NumEnemy
name = "conl"
id = 30000
pos = 100*(roundstate=0)*(roundno=1)+36, -40*(roundstate=0)*(roundno=1)-54
postype = back
stateno = 30000+190*(roundstate=0)*(roundno=1)
keyctrl = 0
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0
size.height = 0

;---------------------------------------------------------------------------
[State -3, CPU]
type = null;Helper
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
size.height = 0
