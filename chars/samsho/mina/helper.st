;gpϐ
;Var(29) :{Q
;Var(30) :{Q(-1: 0:ʏ@24:{ 40:)
;Var(31) :QʒuX
;Var(32) :QʒuY
;Var(33) :^[Qbg̃_[WL^
;FVar(1) :Q
;Fvar(11):px
;Fvar(12):d

;=====================================================
;-----------------------------------------------------
;Q

[StateDef 7000, KenGe(Helper)]
movetype = I
physics = N
sprpriority = 0
anim = 9999
ctrl = 0

[State 7000, gauge]
type = Explod
trigger1 = 1
anim = 7000 + (Parent,Var(30) = 24) + (Parent,Var(30) = 40) * 2
id = 7000
postype = back
pos = 139, 32
ownpal = 1
bindtime = -1
removetime = 1
ignorehitpause = 0
sprpriority = 13
ontop = 0
pausemovetime = 2147483647

[State 7000, bar1-7]
type = Explod
trigger1 = Parent,FVar(1) < 118
trigger1 = Parent,FVar(1) != 78
trigger1 = Parent,FVar(1) != 102
trigger1 = Floor(Parent,FVar(1))%8 >= 1
anim = 7010 + Floor(Parent,FVar(1))%8
id = 7010
postype = back
pos = 139-Floor(Parent,FVar(1)/8)*8, 32
ownpal = 1
bindtime = -1
removetime = 1
ignorehitpause = 0
sprpriority = 14
ontop = 0
pausemovetime = 2147483647

[State 7000, bar8-120]
type = Explod
trigger1 = Parent,FVar(1) < 118
trigger1 = Parent,FVar(1) != 78
trigger1 = Parent,FVar(1) != 102
trigger1 = Floor(Parent,FVar(1) / 8) >= 1
anim = 7100 + Floor(Parent,FVar(1) / 8)
id = 7100
postype = back
pos = 139, 32
ownpal = 1
bindtime = -1
removetime = 1
ignorehitpause = 0
sprpriority = 14
ontop = 0
pausemovetime = 2147483647

[State 7000, barMAX]
type = Explod
triggerall = !NumExplod(7120)
trigger1 = Parent,FVar(1) >= 118
trigger2 = Parent,FVar(1) = 78
trigger3 = Parent,FVar(1) = 102
anim = 7120 + (Parent,FVar(1)= 102) + (Parent,FVar(1) >= 118) * 2
id = 7120
postype = back
pos = 139, 32
ownpal = 1
bindtime = -1
removetime = -1
ignorehitpause = 0
sprpriority = 14
ontop = 0
pausemovetime = 2147483647

[State 7000, barMAXremove]
type = RemoveExplod
triggerall = NumExplod(7120)
trigger1 = Parent,FVar(1) < 118
trigger1 = Parent,FVar(1) != 78
trigger1 = Parent,FVar(1) != 102
ID = 7120

[State 7000,RemoveGauge]
type = DestroySelf
trigger1 = RoundState != [1,5]
trigger2 = !Parent,NumEnemy

;===================================
;()

[Statedef 20000,arrow(helper)common]
type = A
movetype = A
physics = N
hitdefpersist = 1

[State 20000,0]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 20000,1]
type = AngleSet
trigger1 = 1
value = Atan(-vel y/(vel x+0.00001))*180/pi

[State 20000,2]
type = AngleDraw
trigger1 = Anim != 20030
trigger1 = Anim != 20050

[State 20000,4]
type = PlayerPush
trigger1 = 1
value = 0

[State 20000,5]
type = VelAdd
trigger1 = 1
y = FVar(12)

[State 20000,6]
type = PosAdd
triggerall = Time > 0
trigger1 = Anim = 20030
trigger2 = Anim = 20050
x = (Anim=20050)*3*Cos((Time-1)/4)
y = (3+(Anim=20030)*3)*Cos((Time-1)/4)

[State 20000,7]
type = HitOverride
trigger1 = 1
attr = SCA, AP
stateno = 20006
time = -1

[State 20000,8]
type = HitBy
trigger1 = 1
value = SCA, AP

[State 20000,9]
type = VarSet
trigger1 = 1
fv = 11
value = Atan(-vel y/(vel x+0.00001))*180/pi

[State 20000,10]
type = PlaySnd
trigger1 = MoveHit
trigger1 = NumTarget
value = 1, Floor(Random/200)
persistent = 0

[State 20000,11]
type = ChangeState
trigger1 = MoveHit
trigger1 = NumTarget
trigger2 = Vel Y > 0
trigger2 = Pos Y >= -10
value = 20005 + (Vel Y > 0)*(Pos Y >= -10)*3

[State 20000,12]
type = ChangeState
trigger1 = MoveGuarded
trigger2 = MoveHit
trigger2 = !NumTarget
value = 20006

[State 20000,13]
type = ChangeState
triggerall = Vel Y > 0
trigger1 = FVar(12)>.5
trigger1 = PrevStateNo = [20000,20050]
value = PrevStateNo + 2

[State 20000,14]
type = DestroySelf
trigger1 = Time >= 180
trigger2 = FrontEdgeDist <= -100
trigger3 = Time = 0
trigger3 = Parent,Movetype = H

;---------------------------
;(O)

[Statedef 20001,arrow(helper)]
type = A
movetype = I
physics = N
anim = Parent,PrevStateNo
velset = (Parent,vel x),(Parent,vel y - Parent,FVar(12))
sprpriority = 4

[State 20001,0]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 20001,1]
type = AngleSet
trigger1 = 1
value = Atan(-vel y/(vel x+0.00001))*180/pi

[State 20001,2]
type = AngleDraw
trigger1 = Parent,Anim = 20000

[State 20001,3]
type = VelAdd
trigger1 = 1
y = Parent,FVar(12)*1.02

[State 20001,4]
type = VelMul
trigger1 = Parent,StateNo = 20012
x = .92

[State 20001,5]
type = DestroySelf
trigger1 = Time >= 180
trigger2 = FrontEdgeDist <= -100
trigger3 = Parent,StateNo != 20000
trigger3 = Parent,StateNo != 20012
trigger4 = Parent,Vel X = 0
trigger4 = Parent,Vel Y = 0

;---------------------------
;(qbg)

[Statedef 20005,arrow(Hit)]
type = A
movetype = I
physics = N
ainm = 20005

[State 20005,0]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 20005,1]
type = ChangeAnim
trigger1 = Time = 0
value = 20005
ignorehitpause = 1

[State 20005,2]
type = AngleDraw
trigger1 = 1

[State 20005,3]
type = PosSet
trigger1 = Time = 0
trigger1 = NumTarget
x = IfElse((Pos X > Target,Pos X),Pos X,(Target,Pos X)+floor((random-600)*Target,Const(size.ground.front)/1000))
y = Floor(IfElse((Pos Y < Target,Const(size.head.pos.y)+Target,Pos Y),(Target,Const(size.head.pos.y)+Target,Pos Y),Pos Y)/(1+(Target,StateType=C)/2))

[State 20005,4]
type = VelSet
trigger1 = NumTarget
x = 0
y = 0

[State 20005,5]
type = Helper
trigger1 = Time = 0
name = "SlashHitSpark"
ID = 8000
pos = 0,0
stateno = 8000
ownpal = 1

[State 20005,6]
type = Helper
trigger1 = Time = 0
name = "Blood(Simple)"
ID = 8050
pos = 0,0
stateno = 8050
ownpal = 1

[State 20005,7]
type = TargetState
trigger1 = Time = 0
trigger1 = Target,StateNo = 5020
value = 5300

[State 20005,8]
type = ParentVarAdd
trigger1 = Time = 0
trigger1 = NumTarget
fvar(1) = -Ceil(Target,GetHitVar(damage)/8)

[State 20005,9]
type = ChangeState
trigger1 = Target,GetHitvar(HitShakeTime) <= 0
value = 20007

;---------------------------
;(K[h)

[Statedef 20006,arrow(guarded)]
type = A
movetype = I
physics = N
ainm = 20006
velset = -Vel X /4, -Abs(Vel Y /2)

[State 20006,1]
type = Explod
trigger1 = Time = 0
trigger1 = NumTarget
anim = 8100+(Target,GetHitVar(damage)>0)
ID = 8100+(Target,GetHitVar(damage)>0)
pos = 0,0
sprpriority = 3
ownpal = 1

[State 20006,1-1]
type = Explod
trigger1 = Time = 0
trigger1 = NumTarget
anim = 8110+(Target,GetHitVar(damage)>0)
ID = 8110+(Target,GetHitVar(damage)>0)
pos = 0,0
sprpriority = 4
ownpal = 1

[State 20006,1-2]
type = Explod
trigger1 = Time = 0
trigger1 = !NumTarget
anim = 8010
ID = 8010
pos = 0,0
sprpriority = 4
ownpal = 1

[State 20006,2]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 20006,3]
type = ChangeAnim
trigger1 = Time = 0
value = 20006

[State 20006,4]
type = AngleDraw
trigger1 = 1

[State 20006,5]
type = AngleAdd
trigger1 = 1
value = 30

[State 20006,6]
type = VelAdd
trigger1 = 1
y = .52

[State 20006,7]
type = PlaySnd
trigger1 = Time = 0
value = S1, Floor(Random/250)+6

[State 20006,8]
type = ParentVarAdd
trigger1 = Time = 0
trigger1 = NumTarget
fvar(1) = -Ceil(Target,GetHitVar(damage)/8)

[State 20006,9]
type = DestroySelf
trigger1 = Time = 60

;---------------------------
;(qbg)

[Statedef 20007,arrow(hit)]
type = A
movetype = I
physics = N

[State 20007,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
flag2 = invisible

[State 20007,2]
type = DestroySelf
trigger1 = !NumTarget

;---------------------------
;(n)

[Statedef 20008,arrow(ground)]
type = A
movetype = I
physics = N
ainm = 20005
velset = 0,0

[State 20008,0]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 20008,1]
type = ChangeAnim
trigger1 = Time = 0
value = 20005

[State 20008,2]
type = AngleDraw
trigger1 = 1

[State 20008,3]
type = PosSet
trigger1 = 1
y = 0

[State 20008,4]
type = Helper
trigger1 = Time = 0
trigger1 = NumTarget
name = "SlashHitSpark"
ID = 8000
pos = 0,0
stateno = 8000
ownpal = 1

[State 20008,5]
type = Helper
trigger1 = Time = 0
trigger1 = NumTarget
name = "Blood(Simple)"
ID = 8050
pos = 0,0
stateno = 8050
ownpal = 1

[State 20008,6]
type = ParentVarAdd
trigger1 = Time = 0
trigger1 = NumTarget
fvar(1) = -Ceil(Target,GetHitVar(damage)/8)

[State 20008,7]
type = DestroySelf
trigger1 = Time = 10

;---------------------------
;

[Statedef 20010,L_Arrow]
type = A
movetype = A
physics = N
ainm = 20000
sprpriority = 3
juggle = 2
velset = 10-(Parent,StateNo=405)*3.2+(Parent,StateNo=620)*2, -(Parent,StateNo=205)*13-(Parent,StateNo=405)*15.4

[State 20010,1]
type = ChangeAnim
trigger1 = Time = 0
value = 20000

[State 20010,2]
type = HitDef
trigger1 = Time = 0
trigger1 = Parent,StateNo != 620
attr = S, NP
animtype  = Light
damage    = Ceil(Parent,fvar(2)*40)
hitflag = MAF
guardflag = M
pausetime = 0, 8
sparkno = -1
guard.sparkno = -1
ground.type = Low
ground.slidetime = 6
ground.hittime = 10
ground.velocity = -5
guard.velocity = -5
air.velocity = -6,-5
ground.cornerpush.veloff = 0


[State 20010,3]
type = HitDef
trigger1 = Time = 0
trigger1 = Parent,StateNo = 620
attr = S, NP
animtype  = Light
damage    = Ceil(Parent,fvar(2)*40)
hitflag = MAF
guardflag = MA
pausetime = 0, 8
sparkno = -1
guard.sparkno = -1
ground.type = Low
ground.slidetime = 6
ground.hittime = 10
ground.velocity = -5
guard.velocity = -5
air.velocity = -6,-5
ground.cornerpush.veloff = 0


[State 20010, 4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 20010, 5]
type = VarSet
trigger1 = Time = 0
fv = 12
value = .62-(Parent,StateNo=620)*.56

[State 20010, 6]
type = Helper
trigger1 = Time = 0
name = "L_Arrow_Exp"
ID = 20010
pos = 0, 0
stateno = 20001
ownpal = 1

[State 20010,7]
type = ChangeState
trigger1 = Time = 0
value = 20000

;---------------------------
;(~)

[Statedef 20012,arrow(helper)sp]
type = A
movetype = A
physics = N
juggle = 2
sprpriority = 3

[State 20012,0]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 20002,1]
type = AngleSet
trigger1 = 1
value = Atan(-vel y/(vel x+0.00001))*180/pi

[State 20012,2]
type = AngleDraw
trigger1 = 1

[State 20012,4]
type = PlayerPush
trigger1 = 1
value = 0

[State 20012,5]
type = VelAdd
trigger1 = 1
y = FVar(12)

[State 20012,6]
type = HitDef
trigger1 = Time = 0
attr = S, NP
animtype  = Light
damage    = Ceil(Parent,fvar(2)*40)
hitflag = MAF
guardflag = MA
pausetime = 0, 8
sparkno = -1
guard.sparkno = -1
ground.type = Low
ground.slidetime = 6
ground.hittime = 10
ground.velocity = -5
guard.velocity = -5
air.velocity = -6,-5
ground.cornerpush.veloff = 0


[State 20012,7]
type = VelMul
trigger1 = 1
x = .92

[State 20012,8]
type = PlaySnd
trigger1 = MoveHit
trigger1 = NumTarget
value = 1, Floor(Random/200)
persistent = 0

[State 20012,9]
type = ChangeState
trigger1 = MoveHit
trigger1 = NumTarget
trigger2 = Vel Y > 0
trigger2 = Pos Y >= -10
value = 20005 + (Vel Y > 0)*(Pos Y >= -10)*3

[State 20012,10]
type = HitOverride
trigger1 = 1
attr = SCA, AP
stateno = 20006
time = -1

[State 20012,11]
type = HitBy
trigger1 = 1
value = SCA, AP

[State 20012,12]
type = VarSet
trigger1 = 1
fv = 11
value = Atan(-vel y/(vel x+0.00001))*180/pi

[State 20012,13]
type = ChangeState
trigger1 = MoveGuarded
trigger2 = MoveHit
trigger2 = !NumTarget
value = 20006

[State 20012,14]
type = DestroySelf
trigger1 = Time >= 120
trigger2 = FrontEdgeDist <= -100

;---------------------------
;

[Statedef 20020,M_Arrow]
type = A
movetype = A
physics = N
ainm = 20000
juggle = 4
velset = 12, -2
sprpriority = 3

[State 20020,1]
type = ChangeAnim
trigger1 = Time = 0
value = 20000

[State 20020,2]
type = HitDef
trigger1 = Time = 0
attr = S, NP
animtype  = Medium
damage    = Ceil(Parent,fvar(2)*48)
hitflag = MAF
guardflag = M
pausetime = 0, 8
sparkno = -1
guard.sparkno = -1
ground.type = Low
ground.slidetime = 10
ground.hittime = 16
ground.velocity = -5
guard.velocity = -5
air.velocity = -6,-5
ground.cornerpush.veloff = 0


[State 20020,3]
type = NotHitBy
trigger1 = 1
value = SCA

[State 20020, 4]
type = Helper
trigger1 = Time = 0
name = "M_Arrow_Exp"
ID = 20020
pos = 0, 0
stateno = 20001
ownpal = 1

[State 20020, 5]
type = VarSet
trigger1 = Time = 0
fv = 12
value = .05

[State 20020,6]
type = ChangeState
trigger1 = Time = 0
value = 20000

;---------------------------
;

[Statedef 20030,S_Arrow]
type = A
movetype = A
physics = N
ainm = 20030
juggle = 5
velset = 14, 0
sprpriority = 3

[State 20030,1]
type = ChangeAnim
trigger1 = Time = 0
value = 20030

[State 20030,2]
type = HitDef
trigger1 = Time = 0
attr = S, NP
animtype  = Hard
damage    = Ceil(Parent,fvar(2)*140)
hitflag = MAF
guardflag = MA
pausetime = 0, 16
guard.pausetime = 0, 10
sparkno = -1
guard.sparkno = -1
ground.type = Low
ground.slidetime = 16
ground.hittime = 24
ground.velocity = -6,-5
guard.velocity = -5
air.velocity = -6,-5
ground.cornerpush.veloff = 0
fall = 1


[State 20030,3]
type = NotHitBy
trigger1 = 1
value = SCA

[State 20030, 4]
type = VarSet
trigger1 = Time = 0
fv = 12
value = 0

[State 20030,5]
type = ChangeState
trigger1 = Time = 0
value = 20000

;---------------------------
;

[Statedef 20040,C_M_Arrow]
type = A
movetype = A
physics = N
ainm = 20001
juggle = 3
velset = 12, 0

[State 20040,1]
type = ChangeAnim
trigger1 = Time = 0
value = 20001

[State 20040,2]
type = HitDef
trigger1 = Time = 0
attr = S, NP
animtype  = Medium
damage    = Ceil(Parent,fvar(2)*68)
hitflag = MAF
guardflag = L
pausetime = 0, 8
sparkno = -1
guard.sparkno = -1
ground.type = Low
ground.slidetime = 10
ground.hittime = 16
ground.velocity = -5
guard.velocity = -5
air.velocity = -6,-5
ground.cornerpush.veloff = 0


[State 20040,3]
type = NotHitBy
trigger1 = 1
value = SCA

[State 20040, 4]
type = Helper
trigger1 = Time = 0
name = "C_M_Arrow_Exp"
ID = 20040
pos = 0, 0
stateno = 20001
ownpal = 1

[State 20040, 5]
type = VarSet
trigger1 = Time = 0
fv = 12
value = 0

[State 20040,6]
type = ChangeState
trigger1 = Time = 0
value = 20000

;---------------------------
;

[Statedef 20050,C_S_Arrow]
type = A
movetype = A
physics = N
ainm = 20050
juggle = 8
velset = 10, -10
sprpriority = 3

[State 20050,1]
type = ChangeAnim
trigger1 = Time = 0
value = 20050

[State 20050,2]
type = HitDef
trigger1 = Time = 0
attr = S, NP
animtype  = Hard
damage    = Ceil(Parent,fvar(2)*140)
hitflag = MAF
guardflag = M
pausetime = 0, 16
guard.pausetime = 0, 10
sparkno = -1
guard.sparkno = -1
ground.type = Low
ground.slidetime = 16
ground.hittime = 24
ground.velocity = -6,-5
guard.velocity = -5
air.velocity = -6,-5
ground.cornerpush.veloff = 0
fall = 1


[State 20050,3]
type = NotHitBy
trigger1 = 1
value = SCA

[State 20050, 4]
type = VarSet
trigger1 = Time = 0
fv = 12
value = 0

[State 20050,5]
type = ChangeState
trigger1 = Time = 0
value = 20000

;---------------------------
;󒆖

[Statedef 20070,J_M_Arrow]
type = A
movetype = A
physics = N
ainm = 20001
juggle = 3
velset = 9, 7+(Parent,StateNo = 295)*2
sprpriority = 3

[State 20070,1]
type = ChangeAnim
trigger1 = Time = 0
value = 20001

[State 20070,2]
type = HitDef
trigger1 = Time = 0
trigger1 = Parent,StateNo != 295
attr = S, NP
animtype  = Medium
damage    = Ceil(Parent,fvar(2)*84)
hitflag = MAF
guardflag = HA
pausetime = 0, 8
sparkno = -1
guard.sparkno = -1
ground.type = Low
ground.slidetime = 10
ground.hittime = 16
ground.velocity = -5
guard.velocity = -5
air.velocity = -6,-5
ground.cornerpush.veloff = 0

[State 20070,2-1]
type = HitDef
trigger1 = Time = 0
trigger1 = Parent,StateNo = 295
attr = S, NP
animtype  = Hard
damage    = Ceil(Parent,fvar(2)*40)
hitflag = FD
pausetime = 0, 12
sparkno = -1
guard.sparkno = -1
ground.type = Low
ground.slidetime = 16
ground.hittime = 24
ground.velocity = 0
guard.velocity = -3
air.velocity = -2
ground.cornerpush.veloff = 0

[State 20070,3]
type = NotHitBy
trigger1 = 1
value = SCA

[State 20070, 4]
type = Helper
trigger1 = Time = 0
name = "J_M_Arrow_Exp"
ID = 20070
pos = 0, 0
stateno = 20001
ownpal = 1

[State 20070, 5]
type = VarSet
trigger1 = Time = 0
fv = 12
value = 0

[State 20070,6]
type = ChangeState
trigger1 = Time = 0
value = 20000

;---------------------------
;󋭖

[Statedef 20080,J_S_Arrow]
type = A
movetype = A
physics = N
ainm = 20001
juggle = 4
velset = 3, 11 
sprpriority = 3

[State 20080,1]
type = ChangeAnim
trigger1 = Time = 0
value = 20001

[State 20080,2]
type = HitDef
trigger1 = Time = 0
attr = S, NP
animtype  = Hard
damage    = Ceil(Parent,fvar(2)*156)
hitflag = MAF
guardflag = HA
pausetime = 0, 16
sparkno = -1
guard.sparkno = -1
ground.type = Low
ground.slidetime = 16
ground.hittime = 24
ground.velocity = -5
guard.velocity = -5
air.velocity = -6,-5
ground.cornerpush.veloff = 0


[State 20080,3]
type = NotHitBy
trigger1 = 1
value = SCA

[State 20080, 4]
type = Helper
trigger1 = Time = 0
name = "J_S_Arrow_Exp"
ID = 20080
pos = 0, 0
stateno = 20001
ownpal = 1

[State 20080, 5]
type = VarSet
trigger1 = Time = 0
fv = 12
value = 0

[State 20080,6]
type = ChangeState
trigger1 = Time = 0
value = 20000

;---------------------------
;n|S

[Statedef 20100,Chi_Arrow]
type = A
movetype = A
physics = N
ainm = 20101
juggle = 4
velset = 16, 0 
sprpriority = 3

[State 20100,1]
type = ChangeAnim
trigger1 = Time = 0
value = 20101

[State 20100, 2]
type = Explod
trigger1 = Time = 0
anim = 1001
ID = 1001
pos = 8,0
sprpriority = 3
ownpal = 1

[State 20100,3]
type = HitDef
trigger1 = Time = 0
attr = S, SP
animtype  = Light
damage    = Ceil(Parent,fvar(2)*(26+(Parent,StateNo=[1100,1110])*54)),8
hitflag = MAF
guardflag = MA
pausetime = 0, 16
sparkno = -1
guard.sparkno = -1
ground.type = Low
ground.slidetime = 16
ground.hittime = 24
ground.velocity = -5
guard.velocity = -5
air.velocity = -4,-5
ground.cornerpush.veloff = 0


[State 20100,4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 20100, 5]
type = Helper
trigger1 = Time = 0
name = "Chi_Arrow_Exp"
ID = 20100
pos = 0, 0
stateno = 20001
ownpal = 1

[State 20100, 6]
type = VarSet
trigger1 = Time = 0
fv = 12
value = 0

[State 20100,7]
type = ChangeState
trigger1 = Time = 0
value = 20000

;---------------------------
;n|S蓊1
[Statedef 20101,arrow_up1]
type = A
movetype = I
physics = N
ainm = 20006
velset = 0,-18

[State 20101,1]
type = ChangeState
trigger1 = Time = 0
value = 20106

;---------------------------
;n|S蓊2
[Statedef 20102,arrow_up2]
type = A
movetype = I
physics = N
ainm = 20006
velset = 0,-22.9

[State 20102,1]
type = ChangeState
trigger1 = Time = 0
value = 20106

;---------------------------
;n|S蓊3
[Statedef 20103,arrow_up3]
type = A
movetype = I
physics = N
ainm = 20006
velset = 0,-26

[State 20103,1]
type = ChangeState
trigger1 = Time = 0
value = 20106

;---------------------------
;n|S蓊4
[Statedef 20104,arrow_up4]
type = A
movetype = I
physics = N
ainm = 20006
velset = 0,-29.1

[State 20104,1]
type = ChangeState
trigger1 = Time = 0
value = 20106

;---------------------------
;n|S蓊5

[Statedef 20105,arrow_up5]
type = A
movetype = I
physics = N
ainm = 20006
velset = 0,-32.2

[State 20105,1]
type = ChangeState
trigger1 = Time = 0
value = 20106

;---------------------------
;n|S蓊()

[Statedef 20106,arrow_up_common]
type = A
movetype = I
physics = N
ainm = 20006
sprpriority = 0

[State 20102,1]
type = ChangeAnim
trigger1 = Time = 0
value = 20006

[State 20102,2]
type = AngleDraw
trigger1 = 1

[State 20102,3]
type = AngleAdd
trigger1 = Time > 0
value = 300/((PrevStateNo%10)*3+12)

[State 20102,4]
type = Assertspecial
trigger1 = 1
flag = noshadow

[State 20102,5]
type = VelAdd
trigger1 = 1
y = 1.6

[State 20102,6]
type = DestroySelf
trigger1 = Time = 180
trigger2 = Parent,StateNo = [1000,1030]
trigger2 = Vel Y > 0
trigger2 = Pos Y >= Parent,Pos Y-144+(Parent,StateNo=1030)*12

;---------------------------
;V|S

[Statedef 20110,Ten_Arrow]
type = A
movetype = A
physics = N
ainm = 20101
juggle = 4
velset = 12, 12
sprpriority = 3

[State 20110,1]
type = ChangeAnim
trigger1 = Time = 0
value = 20101

[State 20110, 2]
type = Explod
trigger1 = Time = 0
anim = 1031
ID = 1031
pos = 0,0
sprpriority = 3
ownpal = 1

[State 20110,3]
type = HitDef
trigger1 = Time = 0
attr = S, SP
animtype  = Light
damage    = Ceil(Parent,fvar(2)*26),8
hitflag = MAF
guardflag = MA
pausetime = 0, 16
sparkno = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 16
ground.hittime = 24
ground.velocity = -5
guard.velocity = -5
air.velocity = -4,-5
ground.cornerpush.veloff = 0


[State 20110,4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 20110, 5]
type = Helper
trigger1 = Time = 0
name = "Ten_Arrow_Exp"
ID = 20110
pos = 8, 8
stateno = 20001
ownpal = 1

[State 20110, 6]
type = VarSet
trigger1 = Time = 0
fv = 12
value = 0

[State 20110,7]
type = ChangeState
trigger1 = Time = 0
value = 20000

;---------------------------
;V|S蓊1
[Statedef 20111,arrow_up1]
type = A
movetype = I
physics = N
ainm = 20006
velset = 4.8,-24.4

[State 20111,1]
type = ChangeState
trigger1 = Time = 0
value = 20106

;---------------------------
;V|S蓊2
[Statedef 20112,arrow_up2]
type = A
movetype = I
physics = N
ainm = 20006
velset = 3.5,-27.2

[State 20112,1]
type = ChangeState
trigger1 = Time = 0
value = 20106

;---------------------------
;V|S蓊3
[Statedef 20113,arrow_up3]
type = A
movetype = I
physics = N
ainm = 20006
velset = 3,-29

[State 20113,1]
type = ChangeState
trigger1 = Time = 0
value = 20106

;---------------------------
;V|S蓊4
[Statedef 20114,arrow_up4]
type = A
movetype = I
physics = N
ainm = 20006
velset = 2.8,-31.3

[State 20114,1]
type = ChangeState
trigger1 = Time = 0
value = 20106

;---------------------------
;V|S蓊5
[Statedef 20115,arrow_up5]
type = A
movetype = I
physics = N
ainm = 20006
velset = 2.0,-33.4

[State 20115,1]
type = ChangeState
trigger1 = Time = 0
value = 20106

;---------------------------
;_(U)
[Statedef 20150,Sun_Arrow]
type = A
movetype = A
physics = N
ainm = 20000
juggle = 4
velset = 4, -24
sprpriority = 3

[State 20150,1]
type = ChangeAnim
trigger1 = Time = 0
trigger2 = Vel Y > 0
value = 20000 + (Vel Y > 0)*6

[State 20150,2]
type = HitDef
trigger1 = Time = 0
attr = S, SP
animtype  = Hard
damage    = Ceil(Parent,fvar(2)*40),8
hitflag = MAF
guardflag = M
pausetime = 0, 8
sparkno = -1
guard.sparkno = -1
ground.type = Low
ground.slidetime = 10
ground.hittime = 16
ground.velocity = -5
guard.velocity = -5
air.velocity = -4,-5
ground.cornerpush.veloff = 0


[State 20150,3]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 20150,4]
type = AngleSet
trigger1 = 1
value = Atan(-vel y/(vel x+0.00001))*180/pi*(Vel Y<0)+45*(Vel Y>=0)*Time

[State 20150,5]
type = AngleDraw
trigger1 = 1

[State 20150,6]
type = PlayerPush
trigger1 = 1
value = 0

[State 20150,7]
type = VelAdd
trigger1 = 1
y = .6

[State 20150,8]
type = VelSet
trigger1 = Time = 12
trigger1 = Parent,Var(15) >= 4
x = 0
y = 0

[State 20150,9]
type = ParentVarSet
trigger1 = Time = 13
trigger1 = Parent,Var(15) >= 3
v = 15
value = 3

[State 20150,10]
type = HitOverride
trigger1 = 1
attr = SCA, AP
stateno = 20006
time = -1

[State 20150,11]
type = HitBy
trigger1 = 1
value = SCA, AP

[State 20150,12]
type = VarSet
trigger1 = 1
fv = 11
value = Atan(-vel y/(vel x+0.00001))*180/pi

[State 20150,13]
type = PlaySnd
trigger1 = MoveHit
trigger1 = NumTarget
value = 1, Floor(Random/200)
persistent = 0

[State 20150,14]
type = ChangeState
trigger1 = MoveHit
trigger1 = NumTarget
trigger2 = Anim = 20001
trigger2 = Vel Y > 0
trigger2 = Pos Y >= -10
value = 20005 + (Vel Y > 0)*(Pos Y >= -10)*3

[State 20150,15]
type = ChangeState
trigger1 = MoveGuarded
trigger2 = MoveHit
trigger2 = !NumTarget
value = 20006

[State 20150,16]
type = DestroySelf
trigger1 = Time = 12
trigger1 = Parent,Var(15) < 4
trigger2 = Vel Y > 0
trigger2 = Pos Y >= 40

;---------------------------
;_(})
[Statedef 20160,Ten_Arrow]
type = A
movetype = A
physics = N
ainm = 20101
juggle = 4
velset = 0, 20
sprpriority = 3

[State 20160,1]
type = ChangeAnim
trigger1 = Time = 0
value = 20101

[State 20160,2]
type = NotHitBy
trigger1 = 1
value = SCA

[State 20160,3]
type = Helper
trigger1 = Time = 0
name = "Sun_Arrow_Exp"
ID = 20160
pos = 0, 0
stateno = 20001
ownpal = 1

[State 20160,4]
type = VarSet
trigger1 = Time = 0
fv = 12
value = .6

[State 20160,5]
type = HitDef
trigger1 = Time = 0
attr = S, SP
animtype  = Hard
damage    = Ceil(Parent,fvar(2)*40),8
hitflag = MAFD
guardflag = HA
pausetime = 0, 8
sparkno = -1
guard.sparkno = -1
ground.type = Low
ground.slidetime = 10
ground.hittime = 16
ground.velocity = 4
guard.velocity = 4
air.velocity = 2
ground.cornerpush.veloff = 0


[State 20160,6]
type = ChangeState
trigger1 = Time = 0
value = 20000

;---------------------------
;ĂȂ|

[Statedef 21170, Bow]
type = A
movetype = I
physics = N
sprpriority = 3
velset = 2, 2

[State 21170,1]
type = ChangeAnim
trigger1 = Time = 0
value = 3006

[State 21170,1]
type = VelAdd
trigger1 = pos Y < 0
y = .52

[State 21170,2]
type = ChangeAnim
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 3007

[State 21170,3]
type = VelSet
trigger1 = Anim = 3007
x = 0
y = 0

[State 21170,4]
type = PosSet
trigger1 = Anim = 3007
y = 0

[State 21170,8]
type = DestroySelf
trigger1 = Parent,Anim != 170

;---------------------------
;E~`|

[Statedef 23000, Bow]
type = A
movetype = I
physics = N
ainm = 3003
sprpriority = 4
velset = 0, -30

[State 23000,1]
type = ChangeAnim
trigger1 = Time = 0
value = 3003

[State 23000,2]
type = VelAdd
trigger1 = 1
y = 1.1

[State 23000, 3] 
type = PosSet
trigger1 = 1
x = Parent,Pos X

[State 23000,3]
type = DestroySelf
trigger1 = Parent,StateNo != [3000,3002]
trigger2 = Parent,StateNo = 3002
trigger2 = Parent,AnimTime = 0

[State 23000,4]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 23005

;---------------------------
;E~`|(˕Ԃ)

[Statedef 23005, Bow]
type = A
movetype = I
physics = N
sprpriority = 4
velset = 0, -8

[State 23005,1]
type = VelAdd
trigger1 = pos Y < 0
y = .6

[State 23005,2]
type = ChangeAnim
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 3005

[State 23005,3]
type = VelSet
trigger1 = Anim = 3005
y = 0

[State 23005,4]
type = PosSet
trigger1 = Anim = 3005
y = 0

[State 23005,5]
type = Explod
trigger1 = Anim = 3005
anim = 3007
ID = 3007
pos = 0,0
sprpriority = 5
ownpal = 1
time = 1

[State 23005,8]
type = DestroySelf
trigger1 = Parent,StateNo != [3000,3002]
trigger2 = Parent,StateNo = 3002
trigger2 = Parent,AnimTime = 0
