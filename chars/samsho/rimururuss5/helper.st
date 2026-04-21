;使用変数
;fvar(3) :怒ゲ量
;Var(30) :怒ゲ状態(-1:消失 0:通常　24:怒り 40:爆発)
;Var(31) :剣ゲ位置X
;Var(32) :剣ゲ位置Y
;Var(33) :ターゲットのダメージを記録
;FVar(1) :剣ゲ量
;Fvar(11):角度
;Fvar(12):重力

;=====================================================
;-----------------------------------------------------
;常駐ヘルパー

[StateDef 7000, Gauge(Helper)]
movetype = I
physics = N
sprpriority = 0
anim = 9999
ctrl = 0

[State 7000, gauge]
type = Explod
trigger1 = Parent,StateNo != [3500,3501]
anim = 7000 + (Parent,Var(30) = 24) + (Parent,Var(30) = 40) * 2
id = 7000
postype = back
pos = (parent,var(35)), (parent,var(36))
bindtime = -1
removetime = 1
sprpriority = 12
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 7000, bar1-7]
type = Explod
triggerall = Parent,StateNo != [3500,3501]
trigger1 = Parent,FVar(1) < 118
trigger1 = Parent,FVar(1) != 78
trigger1 = Parent,FVar(1) != 102
trigger1 = Floor(Parent,FVar(1))%8 >= 1
anim = 7010 + Floor(Parent,FVar(1))%8
id = 7010
postype = back
pos = (parent,var(35))-Floor(Parent,FVar(1)/8)*8, (parent,var(36))
bindtime = -1
removetime = 1
sprpriority = 13
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 7000, bar8-120]
type = Explod
triggerall = Parent,StateNo != [3500,3501]
trigger1 = Parent,FVar(1) < 118
trigger1 = Parent,FVar(1) != 78
trigger1 = Parent,FVar(1) != 102
trigger1 = Floor(Parent,FVar(1) / 8) >= 1
anim = 7100 + Floor(Parent,FVar(1) / 8)
id = 7100
postype = back
pos = (parent,var(35)), (parent,var(36))
bindtime = -1
removetime = 1
sprpriority = 13
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 7000, barMAX]
type = Explod
triggerall = Parent,StateNo != [3500,3501]
trigger1 = Parent,FVar(1) >= 78
trigger1 = Parent,Var(30) <= 0
trigger2 = Parent,FVar(1) >= 102
trigger2 = Parent,Var(30) = 24
trigger3 = Parent,FVar(1) >= 118
trigger3 = Parent,Var(30) = 40
anim = 7120 + (Parent,FVar(1)>= 102)*10 + (Parent,FVar(1) >= 118)*10 + Floor((Gametime%20)/5)
id = 7120
postype = back
pos = (parent,var(35)), (parent,var(36))
bindtime = -1
removetime = 1
sprpriority = 14
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 7000,RemoveGauge]
type = Null;DestroySelf
trigger1 = RoundState != 2
trigger2 = !Parent,NumEnemy

;-----------------------------------------------------
;イカゲ

;[StateDef 7200, IkaGe(Helper)]
;movetype = I
;physics = N
;sprpriority = 0
;anim = 9999
;ctrl = 0

[State 7200, gauge]
type = Explod
trigger1 = Parent,Var(30) = 0
trigger1 = Parent,StateNo != 2000
anim = 7200
id = 7200
postype = back
pos = (parent,var(37))+1, (parent,var(38))
bindtime = -1
removetime = 1
sprpriority = 10
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 7200, icon]
type = Explod
trigger1 = Parent,Var(30) = 0
trigger1 = Parent,StateNo != 2000
anim = 7201
id = 7201
postype = back
pos = (parent,var(37))-70, (parent,var(38))
bindtime = -1
removetime = 1
sprpriority = 12
facing = 1-(teamside=2)*2
ignorehitpause = 1
ontop = 1
ownpal = 1

[State 7200, bar1-9]
type = Explod
trigger1 = Parent,Var(30) = 0
trigger1 = Parent,StateNo != 2000
trigger1 = Floor(Parent,fvar(3)/10)%10 >= 1
anim = 7200 + (Floor(Parent,fvar(3)/10)%10)*10 + floor((GameTime%21)/3)
id = 7200
postype = back
pos = (parent,var(37))-Floor(Parent,fvar(3)/100)*10, (parent,var(38))
bindtime = -1
removetime = 1
sprpriority = 11
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 7200, bar10]
type = Explod
trigger1 = Parent,Var(30) = 0
trigger1 = Parent,StateNo != 2000
trigger1 = Floor(Parent,fvar(3)/100) >= 1
anim = 7300 + floor((GameTime%21)/3)
id = 7301
postype = back
pos = (parent,var(37)), (parent,var(38))
bindtime = -1
removetime = 1
sprpriority = 11
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 7200, bar20]
type = Explod
trigger1 = Parent,Var(30) = 0
trigger1 = Parent,StateNo != 2000
trigger1 = Floor(Parent,fvar(3)/100) >= 2
anim = 7300 + floor((GameTime%21)/3)
id = 7302
postype = back
pos = (parent,var(37))-10, (parent,var(38))
bindtime = -1
removetime = 1
sprpriority = 11
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 7200, bar30]
type = Explod
trigger1 = Parent,Var(30) = 0
trigger1 = Parent,StateNo != 2000
trigger1 = Floor(Parent,fvar(3)/100) >= 3
anim = 7300 + floor((GameTime%21)/3)
id = 7303
postype = back
pos = (parent,var(37))-20, (parent,var(38))
bindtime = -1
removetime = 1
sprpriority = 11
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 7200, bar40]
type = Explod
trigger1 = Parent,Var(30) = 0
trigger1 = Parent,StateNo != 2000
trigger1 = Floor(Parent,fvar(3)/100) >= 4
anim = 7300 + floor((GameTime%21)/3)
id = 7304
postype = back
pos = (parent,var(37))-30, (parent,var(38))
bindtime = -1
removetime = 1
sprpriority = 11
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 7200, bar50]
type = Explod
trigger1 = Parent,Var(30) = 0
trigger1 = Parent,StateNo != 2000
trigger1 = Floor(Parent,fvar(3)/100) >= 5
anim = 7300 + floor((GameTime%21)/3)
id = 7305
postype = back
pos = (parent,var(37))-40, (parent,var(38))
bindtime = -1
removetime = 1
sprpriority = 11
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 7200, bar60]
type = Explod
trigger1 = Parent,Var(30) = 0
trigger1 = Parent,StateNo != 2000
trigger1 = Floor(Parent,fvar(3)/100) >= 6
anim = 7300 + floor((GameTime%21)/3)
id = 7306
postype = back
pos = (parent,var(37))-50, (parent,var(38))
bindtime = -1
removetime = 1
sprpriority = 11
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 7200, barMAX]
type = Explod
trigger1 = Parent,Var(30) = 24
trigger1 = Parent,StateNo != 2000
trigger1 = !NumExplod(7310)
trigger1 = roundstate = 2
anim = 7310
id = 7310
postype = back
pos = (parent,var(37)), (parent,var(38))
bindtime = -1
removetime = -1
sprpriority = 13
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 7200, barMAXremove]
type = RemoveExplod
triggerall = NumExplod(7310)
trigger1 = Parent,Var(30) != 24
trigger2 = roundstate != 2
trigger3 = Parent,StateNo = 2000
ID = 7310

[State 7200,StopTimer]
type = AssertSpecial
trigger1 = Parent,Var(30) = 40
flag = timerfreeze

[State 7200, barBurst]
type = Explod
trigger1 = Parent,StateNo = 2000
trigger1 = Parent,AnimElemTime(10) >= 0
trigger2 = Parent,StateNo != 2000
trigger2 = Parent,Var(30) = 40
anim = 7330
id = 7330
postype = back
pos = (parent,var(37)), (parent,var(38))
bindtime = -1
removetime = 1
sprpriority = 13
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 7200, barMask]
type = Explod
trigger1 = Parent,StateNo = 2000
trigger1 = Parent,AnimElemTime(10) >= 0
trigger2 = Parent,StateNo != 2000
trigger2 = Parent,Var(30) = 40
anim = 7340
id = 7340
postype = back
pos = (parent,var(37))-63+floor(((parent,fvar(3)+720)/.720+252)/500-2)*(teamside=2), (parent,var(38))
bindtime = -1
removetime = 1
sprpriority = 14
facing = -1
scale = (parent,fvar(3)+720)/720
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 7200, issenbar1-7]
type = Explod
trigger1 = Parent,Var(30) = 0
trigger1 = Parent,StateNo != 2000
trigger1 = Floor(Parent,fvar(4)/20)%8 >= 1
anim = 7400 + Floor(Parent,fVar(4)/20)%8
id = 7400
postype = back
pos = (parent,var(37))-Floor(Parent,fvar(4)/160)*8, (parent,var(38))
bindtime = -1
removetime = 1
sprpriority = 12
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 7200, issenbar8-64]
type = Explod
trigger1 = Parent,Var(30) = 0
trigger1 = Parent,StateNo != 2000
trigger1 = Parent,fvar(4) >= 160
anim = 7410 + Floor(Parent,FVar(4)/160)
id = 7410
postype = back
pos = (parent,var(37)), (parent,var(38))
bindtime = -1
removetime = 1
sprpriority = 12
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 7200,RemoveGauge]
type = DestroySelf
trigger1 = RoundState != 2
trigger2 = !Parent,NumEnemy
;trigger3 = Parent,Var(30) = -1

;---------------------------------------------------------------------------
;血飛沫(標準)
[Statedef 8050]
type = A
movetype = I
physics = N
anim = 8050
sprpriority = 2

[State 8050,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8050,2]
type = ChangeAnim
trigger1 = Time = 0
value = 8050

[State 8050,3]
type = Explod
trigger1 = Time = 0
anim = 8050
ID = 8050
random = 8,64
sprpriority = 2

[State 8050,4]
type = ChangeState
trigger1 = Time = 0
value = 8059

;---------------------------------------------------------------------------
;血飛沫(突き)
[Statedef 8051]
type = A
movetype = I
physics = N
anim = 8051
sprpriority = 2

[State 8051,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8051,2]
type = ChangeAnim
trigger1 = Time = 0
value = 8051

[State 8051,3]
type = ChangeState
trigger1 = Time = 0
value = 8059

;---------------------------------------------------------------------------
;血飛沫(水平)
[Statedef 8052]
type = A
movetype = I
physics = N
anim = 8052
sprpriority = 2

[State 8052,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8052,2]
type = ChangeAnim
trigger1 = Time = 0
value = 8052

[State 8052,3]
type = ChangeState
trigger1 = Time = 0
value = 8059

;---------------------------------------------------------------------------
;血飛沫(一閃用)
[Statedef 8056]
type = A
movetype = I
physics = N
anim = 8050+floor(random/200)
sprpriority = 1

[State 8056,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8056,2]
type = ChangeAnim
trigger1 = Time = 0
value = 8050+floor(random/167)

[State 8056,3]
type = VelSet
trigger1 = Anim = [8053, 8055]
x = random/100-2
y = random/100-5

[State 8056,4]
type = VelAdd
trigger1 = 1
y = .25

[State 8056,5]
type = PalFX
trigger1 = Root,Var(41) != [1,2]
time = 1
add = 256,256,256
ignorehitpause = 1

[State 8056,6]
type = PalFX
trigger1 = Root,Var(41) = [1,2]
trigger1 = GameTime%2
time = 1
mul = 128,128,128
ignorehitpause = 1

[State 8056,7]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;血飛沫(特殊やられ用)
[Statedef 8057]
type = A
movetype = I
physics = N
anim = 8050+floor(random/200)
sprpriority = 1

[State 8057,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8057,2]
type = ChangeAnim
trigger1 = Time = 0
value = 8050+floor(random/167)

[State 8057,2-1]
type = ChangeAnim
trigger1 = Anim = 8052
value = 8050

[State 8057,3]
type = VelSet
trigger1 = Anim = [8053, 8055]
x = random/200-5
y = random/125-9

[State 8057,4]
type = VelAdd
trigger1 = 1
trigger1 = Anim = [8053, 8055]
y = .25

[State 8057,5]
type = PalFX
trigger1 = Root,Var(41) != [1,2]
time = 1
add = 256,256,256
ignorehitpause = 1

[State 8057,6]
type = PalFX
trigger1 = Root,Var(41) = [1,2]
trigger1 = GameTime%2
time = 1
mul = 128,128,128
ignorehitpause = 1

[State 8057,7]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;血飛沫(共通処理)
[Statedef 8059]
type = A
movetype = I
physics = N
sprpriority = 2

[State 8059,1]
type = PalFX
trigger1 = Root,Var(41) != [1,2]
time = 1
add = 256,256,256
ignorehitpause = 1

[State 8059,2]
type = PalFX
trigger1 = Root,Var(41) = [1,2]
trigger1 = GameTime%2
time = 1
mul = 128,128,128
ignorehitpause = 1

[State 8059,3]
type = Explod
trigger1 = Time = [0,3]
anim = 8053+random%3
ID = 8059
sprpriority = 2
vel = -random/400-3,-random/150
accel = 0,.5

[State 8059,4]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;縦血飛沫(両断用)
[Statedef 8060]
type = A
movetype = I
physics = N
anim = 8060
sprpriority = 1

[State 8060,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8060,2]
type = ChangeAnim
trigger1 = Time = 0
value = 8060

[State 8060,3]
type = PlaySnd
trigger1 = Time = 0
value = 2, 9

[State 8050,4]
type = PalFX
trigger1 = Root,Var(41) != [1,2]
time = 1
add = 256,256,256
ignorehitpause = 1

[State 8050,5]
type = PalFX
trigger1 = Root,Var(41) = [1,2]
trigger1 = GameTime%2
time = 1
mul = 128,128,128
ignorehitpause = 1

[State 8060,6]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;横血飛沫(一閃用)
[Statedef 8061]
type = A
movetype = I
physics = N
anim = 8061
sprpriority = 1

[State 8061,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8061,2]
type = ChangeAnim
trigger1 = Time = 0
value = 8061

[State 8050,3]
type = PalFX
trigger1 = Root,Var(41) != [1,2]
time = 1
add = 256,256,256
ignorehitpause = 1

[State 8050,4]
type = PalFX
trigger1 = Root,Var(41) = [1,2]
trigger1 = GameTime%2
time = 1
mul = 128,128,128
ignorehitpause = 1

[State 8061,5]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;血飛沫KO演出
[Statedef 8069]
type = A
movetype = I
physics = N
anim = 8069
sprpriority = 1

[State 8069,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8069,2]
type = ChangeAnim
trigger1 = Time = 0
value = 8069

[State 8069,3]
type = PlaySnd
trigger1 = Time = 0
value = 2, 9

[State 8069,4]
type = PalFX
trigger1 = Root,Var(41) != [1,2]
time = 1
add = 256,256,256
ignorehitpause = 1

[State 8069,5]
type = PalFX
trigger1 = Root,Var(41) = [1,2]
trigger1 = GameTime%2
time = 1
mul = 128,128,128
ignorehitpause = 1

[State 8069,5]
type = Explod
trigger1 = Time%8 = 1 && Time =[0,33]
trigger3 = Time =45
trigger4 = Time =70
anim = 8050
ID = 8069
sprpriority = 2
facing = -1

[State 8069,6]
type = Explod
trigger1 = Time%4 = 0 && Time =[0,40]
trigger2 = Time%6 = 2 && Time =[44,50]
trigger3 = Time%8 = 2 && Time =[58,74]
trigger4 = Time =86
trigger4 = Time =110
anim = 8053+random%3
ID = 8069
sprpriority = 2
vel = random/500+1.5,-100/((Time>48)*(Time-48)+10)
accel = 0,.5

[State 8069,7]
type = ChangeAnim
trigger1 = Anim = 8069
trigger1 = AnimTime = 0
value = 9999

[State 8069,8]
type = DestroySelf
trigger1 = Time = 200

;---------------------------------------------------------------------------
;リープきらきら
[Statedef 20060]
type = A
movetype = I
physics = N
anim = 20060
sprpriority = 3

[State 20060,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 20060,2]
type = ChangeAnim
trigger1 = Time = 0
value = 20060

[State 20060,3]
type = BindToParent
trigger1 = Parent,AnimElemTime(4) < 0
trigger2 = Parent,AnimElemTime(7) >= 0
pos = 35, -70

[State 20060,4]
type = BindToParent
trigger1 = Parent,AnimElemTime(4) >= 0
trigger1 = Parent,AnimElemTime(5) < 0
trigger2 = Parent,AnimElemTime(6) >= 0
trigger2 = Parent,AnimElemTime(7) < 0
pos = 43, -62

[State 20060,5]
type = BindToParent
trigger1 = Parent,AnimElemTime(5) >= 0
trigger1 = Parent,AnimElemTime(6) < 0
pos = 51, -54

[State 20060,6]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Parent,StateNo != 270

;---------------------------------------------------------------------------
;リープトゲ
[Statedef 20070]
type = A
movetype = I
physics = N
anim = 20070
sprpriority = 2

[State 20070,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 20070,2]
type = ChangeAnim
trigger1 = Time = 0
value = 20070

[State 20070,3]
type = BindToParent
trigger1 = 1
pos = 51, -54

[State 20070,4]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Parent,StateNo != 270

;---------------------------------------------------------------------------
; 強追い討ち氷
[Statedef 20296]
type    = A
movetype= I
physics = N
velset = 0, 0
ctrl = 0
sprpriority = 1

[State 20296, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 20296, 1-1]
type = HitOverride
trigger1 = 1
attr = SCA
stateno = 21146

[State 20296,2]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 20296, 3]
type = ChangeAnim
trigger1 = Time = 0
trigger2 = Anim = 21200
trigger2 = AnimTime = 0
value = 21200+(Anim = 21200)

[State 20296, 4]
type = PosSet
trigger1 = anim != 21202
x = parent,pos x
y = parent,pos y+8

[State 20296, 5]
type = PalFx
trigger1 = Anim = 21200
trigger1 = AnimElemTime(1) <= 5
time = 1
mul = time*50,time*50,time*50

[State 20296, 6]
type = Explod
trigger1 = Anim = 21200
anim = 21021
ID = 21021
pos = 0,-20
random = 40,40
removetime = 4
sprpriority = 1
ownpal = 1

[State 20296, 7]
type = ChangeState
trigger1 = Anim != 21202
trigger1 = Parent,StateNo != 296
value = 21146

[State 20296, 8]
type = ChangeAnim
trigger1 = Anim = 21201
trigger1 = Parent,AnimElemTime(16) = 20
value = 21202

[State 20296, 9]
type = PalFx
trigger1 = Anim = 21202
trigger1 = AnimElemTime(5) <= 20
time = 1
mul = 256-AnimElemtime(1)*7,256-AnimElemtime(1)*7,256-AnimElemtime(1)*7

[State 296, 2]
type = PlaySnd
trigger1 = Anim = 21202
trigger1 = AnimElemTime(1) = 0
value = 230, 3

[State 20296, 10]
type = DestroySelf
trigger1 = Anim = 21202
trigger1 = AnimElemTime(5) > 20

;---------------------------------------------------------------------------
; 弱クアレ弾
[Statedef 21000]
type    = A
movetype= I
physics = N
juggle  = 4
velset = 1.5,-11;1,-14
ctrl = 0
sprpriority = 2

[State 21000,Projectile Flag]
type = ParentVarAdd
trigger1 = Time = 0
var(9) = 1

[State 21000,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 21000, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 21000

[State 21000, 3]
type = VelAdd
trigger1 = 1
y = .5

[State 21000, 4]
type = Explod
trigger1 = Time%8 = 0
anim = 30001
ID = 21000
pos = 0,0
vel = 0, -random*.001
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 21000, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 21001

;---------------------------------------------------------------------------
;クアレ着弾
[Statedef 21001]
type = A
movetype = A
physics = N
velset = 0,0

[State 21001,NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 21001,0]
type = PosSet
trigger1 = Time = 0
y = -8

[State 21001,1]
type = ChangeAnim
trigger1 = Time = 0
value = 21001

[State 21001,2]
type = PlaySnd
trigger1 = Time = 0
value = 230, 1

[State 21001,3]
type = HitDef
trigger1 = AnimElemTime(3) = 1
attr = S, SP
animtype  = Medium
damage    = Ceil(Parent,fvar(2)*40),16
hitflag = MAF
guardflag = MA
pausetime = 1, 1
sparkno = -1
sparkxy = -Floor(P2Dist X *.5), 0
guard.sparkno = S8111
ground.type = High
hitsound   = S2, Floor(Random/250)
guardsound = S2, Floor(Random/250)
ground.slidetime = 30
ground.hittime = 30
ground.guardtime = 12
guard.ctrltime = 12
ground.velocity = -5
guard.velocity = -5
air.velocity = -.02,-5.5
fall.recover = 0
ground.cornerpush.veloff = 0
p2facing = 1
forcestand = 1

[State 21001, 5]
type = TargetState
trigger1 = MoveHit
trigger1 = NumTarget
ID = 0
value = 21005
ignorehitpause = 1
persistent = 0

[State 21001, 11]
type = Helper
trigger1 = MoveHit
trigger1 = NumEnemy
trigger1 = !NumHelper(21145)
name = "Ice"
ID = 21145
pos = 0,0
stateno = 21145
ownpal = 1
ignorehitpause = 1

[State 21001, 11-2]
type = Helper
trigger1 = MoveHit
trigger1 = NumEnemy >= 2
trigger1 = !NumHelper(21146)
name = "Ice"
ID = 21146
pos = 0,0
stateno = 21145
ownpal = 1
ignorehitpause = 1

[State 21001, 11-3]
type = Helper
trigger1 = MoveHit
trigger1 = NumEnemy >= 3
trigger1 = !NumHelper(21147)
name = "Ice"
ID = 21147
pos = 0,0
stateno = 21145
ownpal = 1
ignorehitpause = 1

[State 21001, 11-4]
type = Helper
trigger1 = MoveHit
trigger1 = NumEnemy >= 4
trigger1 = !NumHelper(21148)
name = "Ice"
ID = 21148
pos = 0,0
stateno = 21145
ownpal = 1
ignorehitpause = 1

[State 21001, 14]
type = ParentVarAdd
trigger1 = NumTarget
trigger1 = MoveHit
fvar(1) = -Ceil(Target,GetHitVar(damage)/8)
ignorehitpause = 1
persistent = 0

[State 21001, 15]
type = HitBy
trigger1 = 1
value = SCA,AP

[State 21001, 16]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 21002
time = -1

[State 21001, 17]
type = ChangeState
trigger1 = MoveContact
trigger2 = Anim = 21001
trigger2 = AnimTime = 0
value = 21002

;--------------------------------------------------------------------------- 
; クアレ消滅
[Statedef 21002] 
type    = A
movetype= I
physics = N
movehitpersist = 1

[State 21002,var]
type = VarSet
trigger1 = NumTarget
trigger1 = Time = 0
var(1) = Target,GetHitVar(hitcount)
ignorehitpause = 1
persistent = 0

[State 21002,detect]
type = VarSet
trigger1 = var(1)
trigger1 = NumTarget
var(2) = var(1) != Target,GetHitVar(hitcount)
ignorehitpause = 1

[State 21002,Projectile Flag]
type = ParentVarAdd
trigger1 = Time = 0
var(9) = -1

[State 21002,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 21002,1]
type = ChangeAnim
trigger1 = Time = 0
value = 21002

[State 21002,2]
type = PalFx
trigger1 = AnimElemTime(5) < 0
time = 1
mul = 255-time*32,255-time*32,255-time*32

[State 21002,3]
type = DestroySelf
triggerall = AnimElemTime(5) >= 0
trigger1 = !NumTarget
trigger2 = Var(2)

;---------------------------------------------------------------------------
; クアレやられ
[Statedef 21005]
type    = S
movetype= H
physics = S
velset = 0,0

[State 21005, 0]
type = SelfState
trigger1 = PrevStateNo = [120,160)
value = PrevStateNo

[State 21005, 0]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) < 0
value = 21140

[State 21005, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 5006

[State 21005, 2]
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 21005, 3]
type = ChangeState
trigger1 = HitShakeOver
value = 21006

[State 21005, 4]
type = PalFX
trigger1 = 1
time = 2
add = 128,128,160
color = 96

[State 21005, FFB Hard]
type = ForceFeedback
trigger1 = 1
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; クアレやられ2
[Statedef 21006]
type    = S
movetype= H
physics = S
ctrl = 0

[State 21006, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 21006, 3]
type = PalFX
trigger1 = 1
time = 2
add = 128,128,160
color = 96

[State 21006, 4]
type = ChangeAnim
trigger1 = GetHitVar(hittime)>10
value = 5006

[State 21006, 5]
type = SelfState
trigger1 = HitOver
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 中クアレ弾
[Statedef 21010]
type    = A
movetype= I
physics = N
juggle  = 4
velset = 3.3,-11;2.2-14
ctrl = 0
sprpriority = 2

[State 21010,Projectile Flag]
type = ParentVarAdd
trigger1 = Time = 0
var(9) = 1

[State 21010,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 21010, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 21000

[State 21010, 3]
type = VelAdd
trigger1 = 1
y = .5

[State 21010, 4]
type = Explod
trigger1 = Time%8 = 0
anim = 30001
ID = 21000
pos = 0,0
vel = 0, -random*.001
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 21010, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 21001

;---------------------------------------------------------------------------
; 強クアレ弾
[Statedef 21020]
type    = C
movetype= A
physics = N
juggle  = 4
velset = 3, 0
ctrl = 0
sprpriority = 2

[State 21020,Projectile Flag]
type = ParentVarAdd
trigger1 = Time = 0
var(9) = 1

[State 21020,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 21020, 16]
type = HitBy
trigger1 = 1
value = SCA, AP

[State 21020, 17]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 21021
time = -1

[State 21020, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 21020

[State 21020, 3]
type = VelAdd
trigger1 = Pos Y < -8
y = .5

[State 21020, 4]
type = VelSet
trigger1 = Pos Y >= -8
y = 0

[State 21020, 5]
type = Explod
trigger1 = Time = 12
anim = 21021
ID = 21021
pos = -20,0
bindtime = -1
removetime = -1
sprpriority = 2
ownpal = 1

[State 21020, 6]
type = Explod
trigger1 = Time%12 = 0
anim = 21101
ID = 21022
pos = 0,0
vel = 0, -random*.001
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 21020,7]
type = HitDef
trigger1 = Time > 3
trigger1 = Pos Y < -8
attr = C, SP
animtype  = Medium
damage    = Ceil(Parent,fvar(2)*40),16
hitflag = MAF
guardflag = MA
pausetime = 1, 1
sparkno = -1
guard.sparkno = -1
ground.type = High
hitsound   = S2, Floor(Random/250)
guardsound = S2, Floor(Random/250)
ground.slidetime = 30
ground.hittime = 30
ground.guardtime = 12
guard.ctrltime = 12
ground.velocity = -5
guard.velocity = -5
air.velocity = -.02,-5.5
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
p2facing = 1
forcestand = 1
persistent = 0

[State 21020,7-2]
type = HitDef
trigger1 = Pos Y >= -8
attr = C, SP
animtype  = Medium
damage    = Ceil(Parent,fvar(2)*40),16
hitflag = MAF
guardflag = LA
pausetime = 1, 1
sparkno = -1
guard.sparkno = -1
ground.type = High
hitsound   = S2, Floor(Random/250)
guardsound = S2, Floor(Random/250)
ground.slidetime = 30
ground.hittime = 30
ground.guardtime = 12
guard.ctrltime = 12
ground.velocity = -5
guard.velocity = -5
air.velocity = -.02,-5.5
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
p2facing = 1
forcestand = 1
persistent = 0

[State 21020, 9]
type = TargetState
trigger1 = MoveHit
trigger1 = NumTarget
ID = 0
value = 21005
ignorehitpause = 1
persistent = 0

[State 21020, 11]
type = Helper
trigger1 = MoveHit
trigger1 = NumEnemy
trigger1 = !NumHelper(21145)
name = "Ice"
ID = 21145
pos = 0,0
stateno = 21145
ownpal = 1
ignorehitpause = 1

[State 21020, 11-2]
type = Helper
trigger1 = MoveHit
trigger1 = NumEnemy >= 2
trigger1 = !NumHelper(21146)
name = "Ice"
ID = 21146
pos = 0,0
stateno = 21145
ownpal = 1
ignorehitpause = 1

[State 21020, 11-3]
type = Helper
trigger1 = MoveHit
trigger1 = NumEnemy >= 3
trigger1 = !NumHelper(21147)
name = "Ice"
ID = 21147
pos = 0,0
stateno = 21145
ownpal = 1
ignorehitpause = 1

[State 21020, 11-4]
type = Helper
trigger1 = MoveHit
trigger1 = NumEnemy >= 4
trigger1 = !NumHelper(21148)
name = "Ice"
ID = 21148
pos = 0,0
stateno = 21145
ownpal = 1
ignorehitpause = 1

[State 21020, 14]
type = ParentVarAdd
trigger1 = NumTarget
trigger1 = MoveHit
fvar(1) = -Ceil(Target,GetHitVar(damage)/8)
ignorehitpause = 1
persistent = 0

[State 21021, 18]
type = RemoveExplod
trigger1 = Time = 180
trigger2 = FrontEdgeDist <= -100
trigger3 = MoveContact
ID = 21021

[State 21021, 19]
type = Explod
trigger1 = MoveGuarded
trigger2 = MoveHit
trigger2 = !NumTarget
anim = 8111
ID = 21022
pos = Ceil(P2Dist X*.5), 0
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 21020, 20]
type = ChangeState
trigger1 = MoveContact
value = 21021

[State 21020, 21]
type = ParentVarSet
trigger1 = Time = 180
trigger2 = FrontEdgeDist <= -100
var(9) = 0

[State 21021, 22]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -8
value = 21021

[State 21021, 23]
type = DestroySelf
trigger1 = Time = 180
trigger2 = FrontEdgeDist <= -100

;--------------------------------------------------------------------------- 
; 強クアレ消滅
[Statedef 21021] 
type    = A
movetype= I
physics = N
velset = 0, 0

[State 21021,var]
type = VarSet
trigger1 = NumTarget
trigger1 = Time = 0
var(1) = Target,GetHitVar(hitcount)
ignorehitpause = 1
persistent = 0

[State 21021,detect]
type = VarSet
trigger1 = var(1)
trigger1 = NumTarget
var(2) = var(1) != Target,GetHitVar(hitcount)
ignorehitpause = 1

[State 21021,Projectile Flag]
type = ParentVarAdd
trigger1 = Time = 0
var(9) = -1

[State 21021, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 0
ID = 21021

[State 21021,0]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 21021,1]
type = ChangeAnim
trigger1 = Time = 0
value = 21001

[State 21021,2]
type = PlaySnd
trigger1 = Time = 0
value = 230, 1

[State 21021,3]
type = ChangeAnim
trigger1 = Anim = 21001
trigger1 = AnimElemTime(7) = 0
value = 21002

[State 21021,4]
type = PalFx
trigger1 = Anim = 21002
trigger1 = AnimElemTime(5) < 0
time = 1
mul = 255-AnimElemtime(1)*32,255-AnimElemtime(1)*32,255-AnimElemtime(1)*32

[State 21021,9]
type = DestroySelf
triggerall = Anim = 21002
triggerall = AnimElemTime(5) >= 0
trigger1 = !NumTarget
trigger2 = Var(2)

;---------------------------------------------------------------------------
;弱ノンノ
[Statedef 21100]
type = A
movetype = A
physics = N
anim = 21100
sprpriority = 2

[State 21100,Projectile Flag]
type = ParentVarAdd
trigger1 = Time = 0
var(9) = 1

[State 21100,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 21100,2]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != 21100
value = 21100

[State 21100,3]
type = VarSet
trigger1 = Time = 0
var(50) = 2

[State 21100,4]
type = AfterImage
trigger1 = AnimElemTime(1) = 0
palbright = 0,0,0
palcontrast = 128,128,128
trans = add
length = 10

[State 21100,5]
type = AfterImageTime
trigger1 = 1
time = 2

[State 21100,6]
type = ChangeState
trigger1 = Time = 0
value = 21121

;---------------------------------------------------------------------------
;中ノンノ
[Statedef 21110]
type = A
movetype = A
physics = N
anim = 21100
sprpriority = 2

[State 21110,Projectile Flag]
type = ParentVarAdd
trigger1 = Time = 0
var(9) = 1

[State 21110,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 21110,2]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != 21100
value = 21100

[State 21110,3]
type = VarSet
trigger1 = Time = 0
var(50) = 4

[State 21110,4]
type = AfterImage
trigger1 = AnimElemTime(1) = 0
palbright = 0,0,0
palcontrast = 128,128,128
trans = add
length = 10

[State 21110,5]
type = AfterImageTime
trigger1 = 1
time = 2

[State 21110,6]
type = ChangeState
trigger1 = Time = 0
value = 21121

;---------------------------------------------------------------------------
;強ノンノ
[Statedef 21120]
type = A
movetype = A
physics = N
anim = 21100
sprpriority = 2

[State 21120,Projectile Flag]
type = ParentVarAdd
trigger1 = Time = 0
var(9) = 1

[State 21120,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 21120,2]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != 21100
value = 21100

[State 21120,3]
type = VarSet
trigger1 = Time = 0
var(50) = 6

[State 21120,4]
type = AfterImage
trigger1 = AnimElemTime(1) = 0
palbright = 0,0,0
palcontrast = 128,128,128
trans = add
length = 10

[State 21120,5]
type = AfterImageTime
trigger1 = 1
time = 2

[State 21120,6]
type = ChangeState
trigger1 = Time = 0
value = 21121

;---------------------------------------------------------------------------
;ノンノ上昇
[Statedef 21121]
type = A
movetype = A
physics = N
hitcountpersist = 1

[State 21121,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 21121,2]
type = AfterImageTime
trigger1 = 1
time = 2

[State 21121, HitBy]
type = HitBy
trigger1 = 1
value = SCA, AP

[State 21121, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 21121
time = -1

[State 21121,3]
type = HitDef
trigger1 = Var(0)%3 = 0
trigger1 = Var(50) > 0
attr = S, SP
animtype  = Up
damage    = Ceil(Parent,fvar(2)*40/(var(51)+1)),3
hitflag = MAF
guardflag = MA
pausetime = 1, 1
sparkno = -1
sparkxy = Floor(Random/50)-10, 0
guard.sparkno = S8111
ground.type = high
hitsound   = S2, Floor(Random/250)
guardsound = S2, Floor(Random/250)
ground.slidetime = 12
ground.hittime = 12
ground.velocity = 0,-5.5
guard.velocity = -5
air.velocity = -.02,-5.5
airguard.velocity = -3,-6
fall.recover = 0
ground.cornerpush.veloff = 0
ID = 1000+Numhelper(1100)*100+Var(0)
ignorehitpause = 1

[State 21121, 6]
type = TargetState
trigger1 = MoveHit
trigger1 = NumTarget
ID = 999+Numhelper(1100)*100+Var(0)
value = 21140
ignorehitpause = 1
persistent = 0

[State 21121,4]
type = VelSet
trigger1 = Anim = 21100
trigger1 = AnimElemTime(10) = 0
y = -4

[State 21121,4-2]
type = VelAdd
trigger1 = Anim = 21100
trigger1 = AnimElemTime(10) >= 0
y = -1

[State 21121, 5]
type = Explod
trigger1 = Anim = 21100
trigger1 = AnimElemTime(10) >= 0
trigger1 = NumExplod(21101) < 6
anim = 21101
ID = 21101
pos = Floor(Random/20)-25,0
sprpriority = 3
ownpal = 1
vel = 0, -random*.001-1.5
ignorehitpause = 1

[State 21121, SpiritPow-dec(Hit)]
type = ParentVarAdd
trigger1 = NumTarget
trigger1 = MoveHit
fvar(1) = -Ceil(Target,GetHitVar(damage)/8)
ignorehitpause = 1
persistent = 0

[State 21122, 8]
type = Helper
trigger1 = MoveHit
trigger1 = NumEnemy
trigger1 = !NumHelper(21145)
name = "Ice"
ID = 21145
pos = 0,0
stateno = 21145
ownpal = 1
ignorehitpause = 1

[State 21122, 9]
type = Helper
trigger1 = MoveHit
trigger1 = NumEnemy >= 2
trigger1 = !NumHelper(21146)
name = "Ice"
ID = 21146
pos = 0,0
stateno = 21145
ownpal = 1
ignorehitpause = 1

[State 21122, 10]
type = Helper
trigger1 = MoveHit
trigger1 = NumEnemy >= 3
trigger1 = !NumHelper(21147)
name = "Ice"
ID = 21147
pos = 0,0
stateno = 21145
ownpal = 1
ignorehitpause = 1

[State 21122, 11]
type = Helper
trigger1 = MoveHit
trigger1 = NumEnemy >= 4
trigger1 = !NumHelper(21148)
name = "Ice"
ID = 21148
pos = 0,0
stateno = 21145
ownpal = 1
ignorehitpause = 1

[State 21122, Timer]
type = VarAdd
trigger1 = Anim = 21100
trigger1 = AnimElemTime(2) >= 0
var(0) = 1
ignorehitpause = 1
persistent = 0

[State 21122, 14]
type = VarAdd
trigger1 = MoveHit
trigger1 = NumTarget
var(51) = 1
ignorehitpause = 1
persistent = 0

[State 21122,16]
type = VarSet
trigger1 = NumTarget
trigger1 = Var(50) = 0
var(1) = Target,GetHitVar(hitcount)
ignorehitpause = 1
persistent = 0

[State 21122,16]
type = VarAdd
trigger1 = MoveContact
trigger1 = Var(50) > 0
var(50) = -1
ignorehitpause = 1
persistent = 0

[State 21122,17]
type = VarSet
trigger1 = NumTarget
trigger1 = Var(1)
var(2) = (var(1) != Target,GetHitVar(hitcount))
ignorehitpause = 1

[State 21121,12]
type = ChangeState
trigger1 = Time = 1
value = 21121
ignorehitpause = 1

[State 21121,9]
type = VelSet
trigger1 = Pos Y <= -480
y = 0

[State 21121,Projectile Flag]
type = ParentVarSet
trigger1 = Pos Y <= -480
var(9) = 0

[State 21121,12]
type = ChangeAnim
trigger1 = Pos Y <= -480
value = 9999

[State 21122,18]
type = DestroySelf
triggerall = Anim = 9999
trigger1 = !NumTarget
trigger2 = NumTarget
trigger2 = Var(2)

;---------------------------------------------------------------------------
; ノンノやられ
[Statedef 21140]
type    = A
movetype= H
physics = N
velset = 0,0

[State 21140, 0]
type = SelfState
trigger1 = PrevStateNo = [120,160)
value = PrevStateNo

[State 21140, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 5016

[State 21140, 2]
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 21140, 3]
type = ChangeState
trigger1 = HitShakeOver
value = 21141

[State 21140, 4]
type = PalFX
trigger1 = 1
time = 2
add = 128,128,160
color = 96

[State 21140, FFB Hard]
type = ForceFeedback
trigger1 = 1
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; ノンノやられ落下
[Statedef 21141]
type    = A
movetype= H
physics = N
ctrl = 0

[State 21141, 1]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 21141, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 21141, 3]
type = PalFX
trigger1 = 1
time = 2
add = 128,128,160
color = 96

[State 21141, 4]
type = ChangeAnim
trigger1 = 1
value = anim

[State 21141, 5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1417

;---------------------------------------------------------------------------
; ノンノ氷
[StateDef 21145]
type = A
movetype = I
physics = N
sprpriority = 2

[State 21145, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 21145, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 9999

[State 21145, 3]
type = VarSet
trigger1 = Time = 0
trigger1 = NumEnemy
trigger1 = IsHelper(21145)
var(1) = (Enemy(0),MoveType=H)*((Enemy(0),StateNo=[21005,21006])+(Enemy(0),StateNo=[21140,21141]))

[State 21145, 3-1]
type = VarSet
trigger1 = Time = 0
trigger1 = NumEnemy
trigger1 = IsHelper(21146)
var(1) = (Enemy(1),MoveType=H)*((Enemy(1),StateNo=[21005,21006])+(Enemy(1),StateNo=[21140,21141]))*2

[State 21145, 3-2]
type = VarSet
trigger1 = Time = 0
trigger1 = NumEnemy >= 2
trigger1 = IsHelper(21147)
var(1) = (Enemy(2),MoveType=H)*((Enemy(2),StateNo=[21005,21006])+(Enemy(2),StateNo=[21140,21141]))*3

[State 21145, 3-3]
type = VarSet
trigger1 = Time = 0
trigger1 = NumEnemy >= 3
trigger1 = IsHelper(21148)
var(1) = (Enemy(3),MoveType=H)*((Enemy(3),StateNo=[21005,21006])+(Enemy(3),StateNo=[21140,21141]))*4

[State 21145, 4]
type = DestroySelf
trigger1 = !var(1)

[State 21145, 5]
type = VarSet
trigger1 = var(1)
trigger1 = Time = 0
var(2) = Enemy(Var(1)-1),GetHitVar(hitcount)

[State 21145, 5-1];エラー回避の苦肉の策
type = VarSet
trigger1 = var(1)
var(3) = (Enemy(Var(1)-1),GetHitVar(hitcount) = Var(2))

[State 21145, 6]
type = PosSet
trigger1 = Var(1)
x = Floor(Enemy(Var(1)-1),pos x)
y = Floor(Enemy(Var(1)-1),pos y)

[State 21145, 7]
type = Helper
trigger1 = Var(3)
name = "NonnoHit"
ID = 21145
pos = Floor(ParentDist X*.5)+Floor(Random/50)-10, Floor(ParentDist Y/2)-24
stateno = 21150
ownpal = 1
ignorehitpause = 1

[State 21145, 8]
type = VarAdd
trigger1 = Var(1)
var(2) = (Enemy(Var(1)-1),GetHitVar(hitcount) = Var(2))

[State -2, ForDebug]
type = DisplayToClipboard
trigger1 = Var(1)
text="Value1 is %d,Value2 is %d,Value3 is %f"
params = (Enemy(Var(1)-1),GetHitVar(hitcount)),GetHitVar(hittime)+Time,1/((GetHitVar(hittime)+Time)+.1)
ignorehitpause = 1

[State 21145, 9]
type = ChangeState
triggerall = var(1)
trigger1 = Enemy(Var(1)-1),StateNo != [21005,21006]
trigger1 = Enemy(Var(1)-1),StateNo != [21140,21141]
value = 21146

[State 21145, 10]
type = Explod
trigger1 = Var(1)
anim = 21145
ID = IsHelper(21145)*21145+IsHelper(21146)*21146+IsHelper(21147)*21147+IsHelper(21148)*21148
pos = 0, 0
removetime = 1
scale = (Enemy(Var(1)-1),Const(size.head.pos.y))*.0075,-(Enemy(Var(1)-1),Const(size.head.pos.y))*.0075
sprpriority = 1
ownpal = 1
ignorehitpause = 1

;------------------------------------------
;ノンノ氷消滅
[StateDef 21146]
type = A
movetype = I
physics = N

[State 21146, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 21146, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 9999

[State 21146, 3]
type = NotHitBy
trigger1 = 1
value = SCA

[State 21146, 4]
type = HitOverride
trigger1 = 1
attr = SCA
stateno = 21146

[State 21146, 5]
type = PlaySnd
trigger1 = Time = 0
value = 230,2

[State 21146, 6]
type = Helper
trigger1 = NumHelper(21149) < 12
name = "broken pieces"
ID = 21149
pos = Floor(Random/20)-25, Floor(Random/20)-50
stateno = 21147
ownpal = 1
ignorehitpause = 1

[State 21146, 7]
type = DestroySelf
trigger1 = Time = 6

;------------------------------------------
;ノンノ氷破片
[StateDef 21147]
type = A
movetype = I
physics = N
anim = 21147
sprpriority = 2
velset = random*.005-2.5,random*.005-10

[State 21147,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 21147,2]
type = ChangeAnim
trigger1 = Time = 0
value = 21147+Floor(Random/500)

[State 21147,3]
type = VelAdd
trigger1 = 1
y = .5

[State 21147,4]
type = PalFx
trigger1 = 1
time = 1
mul = 255-time*4,255-time*4,255-time*4

[State 21147,5]
type = VelSet
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
y = -.5*vel y

[State 21147,6]
type = DestroySelf
trigger1 = Time = 60

;---------------------------------------------------------------------------
;コンルノンノヒットマーク
[Statedef 21150]
type = A
movetype = I
physics = N
anim = 21150
sprpriority = 2

[State 21150,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 21150,2]
type = ChangeAnim
trigger1 = Time = 0
value = 21150

[State 21150, 3]
type = Explod
trigger1 = Time = 16
trigger2 = Time = 18
anim = 21151
ID = 21151
pos = Floor(Random/50)-10,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
vel = 0, random*.001-1.5

[State 21150,4]
type = DestroySelf
trigger1 = AnimElemTime(13) >= 0

;---------------------------------------------------------------------------
; 弱シラル
[Statedef 21200]
type    = A
movetype= I
physics = N
velset = 0, 0
ctrl = 0
sprpriority = 1

[State 21200,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 21200, 2]
type = ChangeAnim
trigger1 = Time = 0
trigger2 = Anim = 21200
trigger2 = AnimTime = 0
value = 21200+(Anim = 21200)

[State 21200,18]
type = PalFx
trigger1 = Anim = 21200
trigger1 = AnimElemTime(1) <= 5
time = 1
mul = time*50,time*50,time*50

[State 21200, 3] 
type = PlaySnd
trigger1 = Time = 0
value = 230, 1

[State 21200, 5]
type = Explod
trigger1 = Anim = 21200
anim = 21021
ID = 21021
pos = 0,-20
random = 40,40
removetime = 4
sprpriority = 1
ownpal = 1

[State 21200, 6]
type = NotHitBy
trigger1 = 1
value = SCA

[State 21200, 7]
type = ChangeAnim
trigger1 = Anim = 21201
trigger1 = AnimElemTime(1) = 4
value = 21202

[State 21200, 8]
type = ChangeState
trigger1 = Anim = 21202
value = 21146

;---------------------------------------------------------------------------
; 中シラル
[Statedef 21210]
type    = A
movetype= A
physics = N
juggle  = 4
velset = 0, 0
ctrl = 0
sprpriority = 1

[State 21210,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 21210, 2]
type = ChangeAnim
trigger1 = Time = 0
trigger2 = Anim = 21200
trigger2 = AnimTime = 0
value = 21200+(Anim = 21200)

[State 21210,18]
type = PalFx
trigger1 = Anim = 21200
time = 1
mul = time*25,time*25,time*25

[State 21210, 3] 
type = PlaySnd
trigger1 = Time = 0
value = 230, 1

[State 21210, 5]
type = Explod
trigger1 = Anim = 21200
anim = 21021
ID = 21021
pos = 0,-20
random = 40,40
removetime = 4
sprpriority = 1
ownpal = 1

[State 21210,7]
type = HitDef
trigger1 = Anim = 21201
trigger1 = AnimElemTime(1) = 1
attr = A, SP
animtype  = Medium
damage = Ceil(Parent,fvar(2)*88),12
priority  = 5
guardflag = HA
pausetime = 8,8
guard.pausetime = 5, 5
sparkno = S8000
sparkxy = Ceil(P2BodyDist X / 2), 0
guard.sparkno = S8111
hitsound   = -1
guardsound = S2, Floor(Random/250)
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -8
air.velocity = -2, -5
yaccel = .5
getpower = 220,110
ground.cornerpush.veloff = 0

[State 21210, 16]
type = HitBy
trigger1 = 1
value = SCA,AP

[State 21210, 17]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 21146
time = -1

[State 21210, HitSnd]
type = PlaySnd
trigger1 = MoveHit
trigger1 = NumTarget
value = 1, Floor(Random/250)+6
persistent = 0
ignorehitpause = 1

[State 21210, Blood]
type = Helper
trigger1 = MoveHit
trigger1 = NumTarget
name = "Blood"
ID = 21210
pos = Ceil(P2Dist X), 0
stateno = 8052
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 21210, SpiritPow-dec(Hit)]
type = ParentVarAdd
trigger1 = NumTarget
trigger1 = MoveHit
fvar(1) = -Ceil(Target,GetHitVar(damage)/8)
ignorehitpause = 1
persistent = 0

[State 21210, 19]
type = ChangeState
triggerall = Anim = 21201
triggerall = AnimElemTime(1) >= 1
trigger1 = MoveContact
trigger2 = Parent,StateNo != [1210,1211]
trigger3 = Time = 50
value = 21221

;---------------------------------------------------------------------------
; 強シラル
[Statedef 21220]
type    = A
movetype= A
physics = N
juggle  = 4
velset = 0, 0
ctrl = 0
sprpriority = 1

[State 21220,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 21220, 2]
type = ChangeAnim
trigger1 = Time = 0
trigger2 = Anim = 21200
trigger2 = AnimTime = 0
value = 21200+(Anim = 21200)

[State 21220,18]
type = PalFx
trigger1 = Anim = 21200
time = 1
mul = time*25,time*25,time*25

[State 21220, 3] 
type = PlaySnd
trigger1 = Time = 0
value = 230, 1

[State 21220, 5]
type = Explod
trigger1 = Anim = 21200
anim = 21021
ID = 21021
pos = 0,-20
random = 40,40
removetime = 4
sprpriority = 1
ownpal = 1

[State 21220,7]
type = HitDef
trigger1 = Anim = 21201
trigger1 = AnimElemTime(1) = 1
attr = A, SP
animtype  = Medium
damage = Ceil(Parent,fvar(2)*96),16
priority  = 5
guardflag = HA
pausetime = 8,8
guard.pausetime = 5, 5
sparkno = S8000
sparkxy = Ceil(P2BodyDist X / 2), 0
guard.sparkno = S8111
hitsound   = -1
guardsound = S2, Floor(Random/250)
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -8
air.velocity = -2, -5
yaccel = .5
getpower = 220,110
ground.cornerpush.veloff = 0

[State 21220, 16]
type = HitBy
trigger1 = 1
value = SCA,AP

[State 21220, 17]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 21146
time = -1

[State 21220, HitSnd]
type = PlaySnd
trigger1 = MoveHit
trigger1 = NumTarget
value = 1, Floor(Random/250)+6
persistent = 0
ignorehitpause = 1

[State 21220, Blood]
type = Helper
trigger1 = MoveHit
trigger1 = NumTarget
name = "Blood"
ID = 21220
pos = Ceil(P2Dist X), 0
stateno = 8052
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 21220, SpiritPow-dec(Hit)]
type = ParentVarAdd
trigger1 = NumTarget
trigger1 = MoveHit
fvar(1) = -Ceil(Target,GetHitVar(damage)/8)
ignorehitpause = 1
persistent = 0

[State 21220, 19]
type = ChangeState
triggerall = Anim = 21201
triggerall = AnimElemTime(1) >= 1
trigger1 = MoveContact
trigger2 = Parent,StateNo != [1220,1221]
trigger3 = Time = 100
value = 21221

;---------------------------------------------------------------------------
; シラル落下
[Statedef 21221]
type    = A
movetype= A
physics = N
juggle  = 4
velset = 0, 0
ctrl = 0
sprpriority = 1
hitdefpersist = 1

[State 21121,var]
type = VarSet
trigger1 = NumTarget
trigger1 = MoveContact
var(1) = Target,GetHitVar(hitcount)
ignorehitpause = 1
persistent = 0

[State 21121,detect]
type = VarSet
trigger1 = var(1)
trigger1 = NumTarget
var(2) = var(1) != Target,GetHitVar(hitcount)
ignorehitpause = 1

[State 21221,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 21221, 2]
type = HitBy
trigger1 = 1
value = SCA,AP

[State 21221, 3]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 21146
time = -1

[State 21221, 4]
type = VelSet
trigger1 = Time <= 40
x = time*Sin(time)*.05*(Time < 40)

[State 21221, 5]
type = VelAdd
trigger1 = Time >= 40
y = .5

[State 21221, HitSnd]
type = PlaySnd
trigger1 = MoveHit
trigger1 = NumTarget
value = 1, Floor(Random/250)+6
persistent = 0
ignorehitpause = 1

[State 21221, 6]
type = Helper
trigger1 = MoveHit
trigger1 = NumTarget
name = "Blood"
ID = 21221
pos = Ceil(P2Dist X), 0
stateno = 8052
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 21221, SpiritPow-dec(Hit)]
type = ParentVarAdd
trigger1 = NumTarget
trigger1 = MoveHit
fvar(1) = -Ceil(Target,GetHitVar(damage)/8)
ignorehitpause = 1
persistent = 0

[State 21221, 8]
type = ChangeAnim
trigger1 = Anim != 21202
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 21202

[State 21221, 9]
type = VelSet
trigger1 = Anim = 21202
y = 0

[State 21146,10]
type = PlaySnd
trigger1 = Anim = 21202
trigger1 = AnimElemTime(1) = 0
value = 230,2

[State 21220,11]
type = PalFx
trigger1 = Anim = 21202
trigger1 = AnimElemTime(5) <= 20
time = 1
mul = 256-AnimElemtime(1)*7,256-AnimElemtime(1)*7,256-AnimElemtime(1)*7

[State 21220,12]
type = AssertSpecial
trigger1 = Anim = 21202
trigger1 = AnimElemTime(5) > 20
flag = Invisible

[State 21220,13]
type = DestroySelf
triggerall = Anim = 21202
triggerall = AnimElemTime(5) > 20
trigger1 = !NumTarget
trigger2 = Var(2)

;---------------------------------------------------------------------------
; 弱メッ(ム)
[Statedef 21300]
type    = C
movetype= A
physics = N
velset = 0, 0
ctrl = 0
sprpriority = -1

[State 21300,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 21300, 2]
type = HitBy
trigger1 = 1
value = SCA,AP

[State 21300, 3]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 21302
time = -1

[State 21300, 4]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != 21300
value = 21300

[State 21300, 5] 
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = 230, 1

[State 21300,6]
type = PalFx
trigger1 = AnimElemTime(1) = [3, 4]
time = 1
add = 255, 255, 255

[State 21300, 7]
type = HitDef
trigger1 = AnimElemTime(2) >= 0
trigger1 = P2MoveType != H
attr = C, SP, ST
animtype  = Medium
damage = 0,16
priority  = 4
guardflag = L
pausetime = 0,12
guard.pausetime = 0,12
sparkno = -1
sparkxy = 0, 0
guard.sparkno = S8110
hitsound   = -1
guardsound = S2, Floor(Random/250)
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -3
air.velocity = -1, -5
getpower = 220,110
fall.recover = 0
ground.cornerpush.veloff = 0
ID = 2000

[State 21300, 8]
type = HitDef
trigger1 = AnimElemTime(2) >= 0
trigger1 = P2MoveType = H
attr = C, SP, ST
animtype  = Medium
damage = 0,16
priority  = 4
guardflag = L
pausetime = 0,12
guard.pausetime = 0,12
sparkno = -1
sparkxy = 0, 0
guard.sparkno = S8110
hitsound   = -1
guardsound = S2, Floor(Random/250)
ground.type = Trip
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -1,-5
air.velocity = -1, -5
yaccel = .5
getpower = 220,110
fall.recover = 0
ground.cornerpush.veloff = 0

[State 21300, 10]
type = ChangeState
trigger1 = MoveContact
trigger2 = AnimTime = 0
value = 21301
ignorehitpause = 1

[State 21300, 10]
type = ChangeState
trigger1 = Time = 1
trigger1 = !MoveContact
trigger1 = AnimTime
value = 21300

;---------------------------------------------------------------------------
; メッ(ム)判定なし
[Statedef 21301]
type    = C
movetype= I
physics = N
velset = 0, 0
ctrl = 0
sprpriority = 0
movehitpersist = 1

[State 21302,var]
type = VarSet
trigger1 = NumTarget
trigger1 = Time = 0
var(1) = Target,GetHitVar(hitcount)
ignorehitpause = 1
persistent = 0

[State 21301,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 21301, 2]
type = NotHitBy
trigger1 = 1
value = SCA

[State 21301, 3]
type = TargetState
trigger1 = MoveHit
trigger1 = NumTarget
trigger1 = Time = 0
ID = 2000
value = 21303
ignorehitpause = 1
persistent = 0

[State 21301, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 21302

;---------------------------------------------------------------------------
; メッ(ム)消滅
[Statedef 21302]
type    = C
movetype= I
physics = N
velset = 0, 0
ctrl = 0
sprpriority = 0
movehitpersist = 1

[State 21302,detect]
type = VarSet
trigger1 = var(1)
trigger1 = NumTarget
var(2) = var(1) != Target,GetHitVar(hitcount)
ignorehitpause = 1

[State 21302, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 21302, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 21302

[State 21302, 2]
type = Explod
trigger1 = Time%2 = 0
trigger1 = AnimElemTime(6) < 0
anim = 21301
ID = 21301
pos = 0, -20
random = 80, 20
sprpriority = -1
ownpal = 1

[State 21303, 4]
type = Destroyself
triggerall = AnimElemTime(7) >= 0
trigger1 = !NumTarget
trigger2 = Var(2)

;---------------------------------------------------------------------------
;メッ(ム)相手

[Statedef 21303]
type    = S
movetype= H
physics = N
velset = 0,0

[State 21303, 0]
type = SelfState
trigger1 = PrevStateNo = [120,160)
value = PrevStateNo

[State 21303, 1]
type = SelfState
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) < 0
value = 5070

[State 21303, 2]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = AuthorName = "PriPri Man" || AuthorName = "Warusaki3" || AuthorName = "H”"
value = 5015+(selfanimexist(5970))*955

[State 21303, 3]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != 5015
trigger1 = Anim != 5970
value = 5015

[State 21303, 4]
type = ChangeAnim
trigger1 = !HitShakeOver
value = anim

[State 21303, 5]
type = ChangeAnim
triggerall = HitShakeOver
trigger1 = Anim = 5015
trigger2 = Anim = 5005
value = 5005

[State 21303, 5]
type = ChangeAnim
trigger1 = GetHitVar(hittime)/(GetHitVar(hittime)+Time+.0001) < .45
trigger1 = Anim = 5005
value = 5006

[State 21303, 6]
type = ChangeAnim
trigger1 = GetHitVar(hittime) > 10
trigger1 = Anim = 5006
value = anim

[State 21303, 7]
type = HitVelSet
trigger1 = HitShakeOver
x = 1
persistent = 0

[State 21303, 8]
type = VelMul
trigger1 = 1
x = .93*(GetHitVar(hittime) > 1)

[State 21303, 9]
type = SelfState
trigger1 = HitOver
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 中メッ(ム)
[Statedef 21310]
type    = C
movetype= A
physics = N
velset = 0, 0
ctrl = 0
sprpriority = -1

[State 21310,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 21310, 2]
type = HitBy
trigger1 = 1
value = SCA,AP

[State 21310, 3]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 21302
time = -1

[State 21310, 4]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != 21310
value = 21310

[State 21310, 5] 
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = 230, 1

[State 21310,6]
type = PalFx
trigger1 = AnimElemTime(1) = [3, 4]
time = 1
add = 255, 255, 255

[State 21310, 7]
type = HitDef
trigger1 = AnimElemTime(2) >= 0
trigger1 = P2MoveType != H
attr = C, SP, ST
animtype  = Medium
damage = 0,16
priority  = 4
guardflag = L
pausetime = 0,18
guard.pausetime = 0,18
sparkno = -1
sparkxy = 0, 0
guard.sparkno = S8110
hitsound   = -1
guardsound = S2, Floor(Random/250)
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3
air.velocity = -1, -5
getpower = 220,110
fall.recover = 0
ground.cornerpush.veloff = 0
ID = 2000

[State 21310, 8]
type = HitDef
trigger1 = AnimElemTime(2) >= 0
trigger1 = P2MoveType = H
attr = C, SP, ST
animtype  = Medium
damage = 0,16
priority  = 4
guardflag = L
pausetime = 0,18
guard.pausetime = 0,18
sparkno = -1
sparkxy = 0, 0
guard.sparkno = S8110
hitsound   = -1
guardsound = S2, Floor(Random/250)
ground.type = Trip
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -1,-5
air.velocity = -1, -5
yaccel = .5
getpower = 220,110
fall.recover = 0
ground.cornerpush.veloff = 0

[State 21310, 10]
type = ChangeState
trigger1 = MoveContact
trigger2 = AnimTime = 0
value = 21301
ignorehitpause = 1

[State 21310, 10]
type = ChangeState
trigger1 = Time = 1
trigger1 = !MoveContact
trigger1 = AnimTime
value = 21310

;---------------------------------------------------------------------------
; 強メッ(ム)
[Statedef 21320]
type    = C
movetype= A
physics = N
velset = 0, 0
ctrl = 0
sprpriority = -1

[State 21320,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 21320, 2]
type = HitBy
trigger1 = 1
value = SCA,AP

[State 21320, 3]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 21302
time = -1

[State 21320, 4]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != 21320
value = 21320

[State 21320, 5] 
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = 230, 1

[State 21320,6]
type = PalFx
trigger1 = AnimElemTime(1) = [3, 4]
time = 1
add = 255, 255, 255

[State 21320, 7]
type = HitDef
trigger1 = AnimElemTime(2) >= 0
trigger1 = P2MoveType != H
attr = C, SP, ST
animtype  = Medium
damage = 0,16
priority  = 4
guardflag = L
pausetime = 0,18
guard.pausetime = 0,18
sparkno = -1
sparkxy = 0, 0
guard.sparkno = S8110
hitsound   = -1
guardsound = S2, Floor(Random/250)
ground.type = High
ground.slidetime = 37
ground.hittime = 37
ground.velocity = -3
air.velocity = -1, -5
getpower = 220,110
fall.recover = 0
ground.cornerpush.veloff = 0
ID = 2000

[State 21320, 8]
type = HitDef
trigger1 = AnimElemTime(2) >= 0
trigger1 = P2MoveType = H
attr = C, SP, ST
animtype  = Medium
damage = 0,16
priority  = 4
guardflag = L
pausetime = 0,12
guard.pausetime = 0,12
sparkno = -1
sparkxy = 0, 0
guard.sparkno = S8110
hitsound   = -1
guardsound = S2, Floor(Random/250)
ground.type = Trip
ground.slidetime = 37
ground.hittime = 37
ground.velocity = -1,-5
air.velocity = -1, -5
yaccel = .5
getpower = 220,110
fall.recover = 0
ground.cornerpush.veloff = 0

[State 21320, 10]
type = ChangeState
trigger1 = MoveContact
trigger2 = AnimTime = 0
value = 21301
ignorehitpause = 1

[State 21320, 10]
type = ChangeState
trigger1 = Time = 1
trigger1 = !MoveContact
trigger1 = AnimTime
value = 21320

;---------------------------------------------------------------------------
;カムイ・エムッ(シ)
[Statedef 23000]
type = S
movetype = A
physics = N
movehitpersist = 1

[State 23000, HitBy]
type = HitBy
trigger1 = 1
value = SCA, AP

[State 23000, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 23000
time = -1

[State 23000,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 23000, 2]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != 23000
value = 23000

[State 23000, 3]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = 230, 1

[State 23000, SaveTarget'sHitCount]
type = VarSet
trigger1 = NumTarget
var(33) = Target,GetHitVar(hitcount)

[State 23000,4]
type = HitDef
trigger1 = Time = 0
trigger1 = !MoveContact
attr = S, SP
animtype  = Up
damage    = Ceil(Parent,fvar(2)*116/(var(33)+1)),8
hitflag = MAF-
guardflag = MA
pausetime = 0, 4
sparkno = -1
sparkxy = 0, Ceil(P2Dist Y*.5)-48
guard.sparkno = S8111
ground.type = High
hitsound   = S2, Floor(Random/250)
guardsound = S2, Floor(Random/250)
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -2,-11-(P2BodyDist X=[-61,57])*((P2BodyDist X+61)/36)
guard.velocity = -2
ground.velocity = -2,-11-(P2BodyDist X=[-61,57])*((P2BodyDist X+61)/36)
fall.recover = 0
ground.cornerpush.veloff = 0
yaccel = .5
ID = 2000 + var(0)

[State 23000, 6]
type = TargetState
trigger1 = MoveHit
trigger1 = NumTarget
ID = 1999 + var(0)
value = 21140
ignorehitpause = 1
persistent = 0

[State 23000, 7] 
type = TargetPowerAdd
trigger1 = Movehit
trigger1 = NumTarget
ID = 1999 + var(0)
value = -99999
ignorehitpause = 1
persistent = 0

[State 23000, Timer]
type = VarAdd
trigger1 = 1
var(0) = 1
ignorehitpause = 1
persistent = 0

[State 23000, 11]
type = Helper
trigger1 = MoveHit
trigger1 = NumEnemy
trigger1 = !NumHelper(21145)
name = "Ice"
ID = 21145
pos = 0,0
stateno = 21145
ownpal = 1
ignorehitpause = 1

[State 23000, 11-2]
type = Helper
trigger1 = MoveHit
trigger1 = NumEnemy >= 2
trigger1 = !NumHelper(21146)
name = "Ice"
ID = 21146
pos = 0,0
stateno = 21145
ownpal = 1
ignorehitpause = 1

[State 23000, 11-3]
type = Helper
trigger1 = MoveHit
trigger1 = NumEnemy >= 3
trigger1 = !NumHelper(21147)
name = "Ice"
ID = 21147
pos = 0,0
stateno = 21145
ownpal = 1
ignorehitpause = 1

[State 23000, 11-4]
type = Helper
trigger1 = MoveHit
trigger1 = NumEnemy >= 4
trigger1 = !NumHelper(21148)
name = "Ice"
ID = 21148
pos = 0,0
stateno = 21145
ownpal = 1
ignorehitpause = 1

[State 23000, SpiritPow-dec(Hit)]
type = ParentVarAdd
trigger1 = NumTarget
trigger1 = MoveContact
fvar(1) = -Ceil(Target,GetHitVar(damage)/8)
ignorehitpause = 1
persistent = 0

[State 23000, 6] 
type = ParentVarSet
trigger1 = Movehit
trigger1 = Parent,Var(30) != 40
trigger1 = NumTarget
fvar(3) = 0
ignorehitpause = 1
persistent = 0

[State 23000,8]
type = ChangeState
trigger1 = Parent,StateNo = 3000
trigger1 = Parent,AnimElemTime(25) = 0
trigger2 = Parent,StateNo != 3000
trigger3 = Time = 1
value = 23000+(Parent,StateNo = 3000)*(Parent,AnimElemTime(25)=0)+(Parent,StateNo!=3000)*2

;---------------------------------------------------------------------------
;カムイ・エムッ(シ)前進
[Statedef 23001]
type = S
movetype = A
physics = N
velset = 8, 0

[State 23001,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 23001, 2]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != 23001
value = 23001

[State 23001, HitBy]
type = HitBy
trigger1 = 1
value = SCA, AP

[State 23001, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 23001
time = -1

[State 23000, SaveTarget'sHitCount]
type = VarSet
trigger1 = NumTarget
var(33) = Target,GetHitVar(hitcount)

[State 23001,3]
type = HitDef
trigger1 = Var(0)%3 = 0
trigger1 = Var(50) < 7
attr = S, SP
animtype  = Back
damage    = Ceil(Parent,fvar(2)*116/(Var(33)+1)),8
hitflag = MAFD
guardflag = MA
pausetime = 6, 6
sparkno = -1
sparkxy = 0, Ceil(P2Dist Y*.5)-48
guard.sparkno = S8111
ground.type = High
hitsound   = S2, Floor(Random/250)
guardsound = S2, Floor(Random/250)
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -8, -1
guard.velocity = -8
air.velocity = -8, -1
fall.recover = 0
ground.cornerpush.veloff = 0
ID = 3000 + Var(0)

[State 23001, 6]
type = TargetState
trigger1 = MoveHit
trigger1 = NumTarget
ID = 2999 + Var(0)
value = 21140
ignorehitpause = 1
persistent = 0

[State 23001, 7] 
type = TargetPowerAdd
trigger1 = Movehit
trigger1 = NumTarget
ID = 2999 + Var(0)
value = -99999
ignorehitpause = 1
persistent = 0

[State 23001, Timer]
type = VarAdd
trigger1 = 1
var(0) = 1
ignorehitpause = 1
persistent = 0

[State 23001, 5]
type = Explod
trigger1 = AnimElemTime(1) = 3
trigger2 = AnimElemTime(1) = [5,6]
anim = 21101
ID = 21101
pos = -56+24*(AnimElemTime(1)=[5,6]),-48-24*(AnimElemTime(1)=5)+24*(AnimElemTime(1)=6)
sprpriority = 3
ownpal = 1
vel = 0, -random*.001-1.5
ignorehitpause = 1

[State 23001, 5-2]
type = Explod
trigger1 = AnimElemTime(1) = [8,11]
anim = 21101
ID = 21101
pos = -12*(AnimElemTime(1)=[8,9])+(AnimElemTime(1)=[10,11]),-68*(AnimElemTime(1)=8)+(AnimElemTime(1)=9)-56*(AnimElemTime(1)=10)-36*(AnimElemTime(1)=11)
sprpriority = 3
ownpal = 1
vel = 0, -random*.001-1.5
ignorehitpause = 1

[State 23001, 11]
type = Helper
trigger1 = MoveHit
trigger1 = NumEnemy
trigger1 = !NumHelper(21145)
name = "Ice"
ID = 21145
pos = 0,0
stateno = 21145
ownpal = 1
ignorehitpause = 1

[State 23001, 11-2]
type = Helper
trigger1 = MoveHit
trigger1 = NumEnemy >= 2
trigger1 = !NumHelper(21146)
name = "Ice"
ID = 21146
pos = 0,0
stateno = 21145
ownpal = 1
ignorehitpause = 1

[State 23001, 11-3]
type = Helper
trigger1 = MoveHit
trigger1 = NumEnemy >= 3
trigger1 = !NumHelper(21147)
name = "Ice"
ID = 21147
pos = 0,0
stateno = 21145
ownpal = 1
ignorehitpause = 1

[State 23001, 11-4]
type = Helper
trigger1 = MoveHit
trigger1 = NumEnemy >= 4
trigger1 = !NumHelper(21148)
name = "Ice"
ID = 21148
pos = 0,0
stateno = 21145
ownpal = 1
ignorehitpause = 1

[State 23001, SpiritPow-dec(Hit)]
type = ParentVarAdd
trigger1 = NumTarget
trigger1 = MoveContact
fvar(1) = -Ceil(Target,GetHitVar(damage)/8)
ignorehitpause = 1
persistent = 0

[State 23001,3]
type = VarAdd
trigger1 = MoveContact
trigger1 = NumTarget
var(50) = 1
ignorehitpause = 1
persistent = 0

[State 23001, 6] 
type = ParentVarSet
trigger1 = Movehit
trigger1 = Parent,Var(30) != 40
trigger1 = NumTarget
fvar(3) = 0
ignorehitpause = 1
persistent = 0

[State 23001, 7] 
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1
persistent = 0

[State 23001, 8]
type = ChangeState
trigger1 = Time = 1
trigger2 = Var(50) = 7
trigger3 = FrontEdgeDist <= -100
value = 23001+((Var(50)=7)||(FrontEdgeDist<=-100))
ignorehitpause = 1

;---------------------------------------------------------------------------
;カムイ・エムッ(シ)消滅
[Statedef 23002]
type = S
movetype = I
physics = N
velset = 0, 0

[State 23002,var]
type = VarSet
trigger1 = NumTarget
trigger1 = Time = 0
var(1) = Target,GetHitVar(hitcount)
ignorehitpause = 1
persistent = 0

[State 23002,detect]
type = VarSet
trigger1 = NumTarget
trigger1 = var(1)
var(2) = var(1) != Target,GetHitVar(hitcount)
ignorehitpause = 1

[State 23002, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 23002, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 23002

[State 23002, 3]
type = PlaySnd
trigger1 = Time = 0
value = 230, 3

[State 23002, 4]
type = PalFx
trigger1 = AnimElemTime(4) < 0
time = 1
mul = 256-Time*20,256-Time*20,256-Time*20

[State 23002, 5]
type = DestroySelf
triggerall = AnimElemTime(4) >= 0
trigger1 = !NumTarget
trigger2 = Var(2)

;---------------------------------------------------------------------------
;カムイ・エムッ(シ)やられ
[Statedef 23003]
type = S
movetype = A
physics = N

[State 23003,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 23003,2]
type = VarAdd
trigger1 = Time = 0
var(50) = 1
ignorehitpause = 1
persistent = 0

[State 23003, 3]
type = ChangeState
trigger1 = Time = 0
trigger2 = Var(50) = 7
trigger3 = FrontEdgeDist <= -100
value = 23001+((Var(50)=7)||(FrontEdgeDist<=-100))
ignorehitpause = 1


;---------------------------------------------------------------------------
; 鏡(放出)
[Statedef 23100]
type    = S
movetype= A
physics = N
velset = 2+(Parent,StateNo = 3101)*6+(Parent,StateNo = 3102)*2+(Parent,StateNo = 3103)*12, -(Parent,StateNo = 3102)*6
ctrl = 0
sprpriority = 2

[State 23100,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 23100, 2]
type = NotHitBy
trigger1 = 1
value = SCA

[State 23100, 4]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != 23100
value = 23100

[State 23100, 5] 
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = 230, 1

[State 23100, 6]
type = ChangeState
trigger1 = AnimElemTime(7) = 0
value = 23101

;---------------------------------------------------------------------------
; 鏡(停止)
[Statedef 23101]
type    = S
movetype= A
physics = N
ctrl = 0
sprpriority = 2
hitcountpersist = 1

[State 23101,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 23101, 2]
type = NotHitBy
trigger1 = 1
value = , AT

[State 23101, 3]
type = HitOverride
trigger1 = 1
attr = SCA, AP
stateno = 23102
time = -1
slot = 0

[State 23101, 4]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AT
stateno = 23103
time = -1
slot = 1

[State 23101, 5]
type = Explod
trigger1 = AnimElemTime(7)%2 = 0
trigger1 = AnimElemTime(7) <= 10
anim = 21151
ID = 21151
pos = Floor(Random/50)-10,-24
sprpriority = 3
ownpal = 1
ignorehitpause = 1
vel = 0, random*.002-2

[State 23101, 6]
type = HitDef
trigger1 = Time = 0
attr = S, HP
animtype  = Medium
damage = Ceil(Parent,fvar(2)*40/(HitCount+1)),6
priority  = 4
guardflag = MA
pausetime = 2, 2
sparkno = S8010
sparkxy = 0, 0
guard.sparkno = S8111
hitsound   = S2, Floor(Random/250)
guardsound = S2, Floor(Random/250)
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5
air.velocity = -3+(pos Y < 40)*(Frontedgedist <40)*6, -3
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0

[State 23101, 7]
type = VarAdd
trigger1 = MoveContact
var(49) = 1
persistent = 0

[State 23101, SpiritPow-dec(Hit)]
type = ParentVarAdd
trigger1 = NumTarget
trigger1 = MoveHit
fvar(1) = -Ceil(Target,GetHitVar(damage)/8)
ignorehitpause = 1
persistent = 0

[State 21301, 8]
type = VelSet
trigger1 = AnimElemTime(7) = 0
x = .3-.6*(P2dist X<0)
y = 0

[State 21301, 9]
type = VelMul
trigger1 = 1
x = .99

[State 21301, 10]
type = ChangeState
trigger1 = Time = 8
trigger2 = AnimTime = 0
trigger3 = var(49) > 5
value = 23104 - (Time=8)*3

;---------------------------------------------------------------------------
; 鏡(トゲ)
[Statedef 23102]
type    = S
movetype= A
physics = N
ctrl = 0
sprpriority = 2
hitcountpersist = 1

[State 23102,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 23102, 2]
type = NotHitBy
trigger1 = 1
value = SCA

[State 23102, 3]
type = VarSet
trigger1 = Time = 0
var(1) = GetHitVar(hitshaketime)

[State 23102, 3]
type = VarSet
trigger1 = Time = 0
var(2) = GetHitVar(hittime)

[State 23102, 3]
type = VarSet
trigger1 = Time = 0
var(3) = GetHitVar(slidetime)

[State 23102, 3]
type = VarSet
trigger1 = Time = 0
var(4) = GetHitVar(ctrltime)

[State 23102, 3]
type = VarSet
trigger1 = Time = 0
var(5) = GetHitVar(damage)

[State 23102, 3]
type = VarSet
trigger1 = Time = 0
var(6) = GetHitVar(fall)

[State 23102, 3]
type = VarSet
trigger1 = Time = 0
var(7) = GetHitVar(fall.damage)

[State 23102, 3]
type = VarSet
trigger1 = Time = 0
var(8) = GetHitVar(fall.recover)

[State 23102, 3]
type = VarSet
trigger1 = Time = 0
var(9) = Ceil(GetHitVar(xvel))*facing

[State 23102, 3]
type = VarSet
trigger1 = Time = 0
var(10) = Ceil(GetHitVar(yvel))

[State 23102, 3]
type = VarSet
trigger1 = Time = 0
fvar(1) = GetHitVar(yaccel)

[State 23102, 4]
type = Helper
trigger1 = Time = 0
name = "Splinter"
ID = 23102
pos = -40, 56
stateno = 23105
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0
size.height = 0

[State 21302, 5]
type = VarAdd
trigger1 = Time = 0
var(49) = 1

[State 23102, 6]
type = ChangeState
trigger1 = Time = 0
value = 23101

;---------------------------------------------------------------------------
; 鏡(くらい)
[Statedef 23103]
type    = S
movetype= A
physics = N
ctrl = 0
sprpriority = 2
hitcountpersist = 1

[State 23103,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 23103, 2]
type = NotHitBy
trigger1 = 1
value = SCA

[State 21303, 3]
type = VarAdd
trigger1 = Time = 0
var(49) = 1

[State 23103, 8]
type = ChangeState
trigger1 = Time = 0
value = 23101

;---------------------------------------------------------------------------
; 鏡(消滅)
[Statedef 23104]
type    = S
movetype= A
physics = N
anim = 23101
ctrl = 0
sprpriority = 2

[State 23104, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 23104, 3]
type = PlaySnd
trigger1 = time = 0
value = 230, 2

[State 23104, 4]
type = DestroySelf
trigger1 = AnimElemTime(7) >= 0
trigger1 = !NumTarget

;---------------------------------------------------------------------------
; トゲ
[Statedef 23105]
type    = S
movetype= A
physics = N
velset = 0, 0
ctrl = 0
sprpriority = 3

[State 23105,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 23105, 2]
type = HitBy
trigger1 = 1
value = SCA, AP

[State 23105, 3]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
stateno = 23106
time = -1
slot = 0

[State 23105, 5]
type = ChangeAnim
trigger1 = Time = 0
value = 23105

[State 23102, 6]
type = HitDef
trigger1 = Time = 0
attr = S, HP
animtype  = Hard
damage = (Parent,var(5)),4
priority  = 4
guardflag = MA
pausetime = (Parent,var(1)), (Parent,var(1))
sparkno = S8000
sparkxy = 0, -40
guard.sparkno = S8111
hitsound   = -1
guardsound = S2, Floor(Random/250)
ground.type = High
ground.hittime = Parent,var(2)
ground.slidetime = Parent,var(3)
guard.ctrltime= Parent,var(4)
ground.velocity = Ifelse(P2Dist X < 0,-(Parent,var(9)),(Parent,var(9))), (Parent,var(10))
yaccel = Parent,fvar(1)
fall = Parent,var(6)
fall.damage = Parent,var(7)
fall.recover = Parent,var(8)
ground.cornerpush.veloff = 0

[State 23105, 4]
type = Turn
trigger1 = Time = 0
trigger1 = P2Dist X < 0

[State 23105, HitSnd]
type = PlaySnd
trigger1 = MoveHit
trigger1 = NumTarget
value = 1, Floor(Random/250)+6
persistent = 0
ignorehitpause = 1

[State 23105, Blood]
type = Helper
trigger1 = MoveHit
trigger1 = NumTarget
name = "Blood"
ID = 23105
pos = Ceil(P2Dist X), -40
stateno = 8052
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 23105, 6]
type = VelAdd
trigger1 = Time >= 4
x = 1

[State 23105, 7] 
type = PlaySnd
trigger1 = Time = 0
value = 230, 0

[State 21305, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 23106

;---------------------------------------------------------------------------
; トゲ消滅
[Statedef 23106]
type    = S
movetype= A
physics = N
velset = 0, 0
ctrl = 0
sprpriority = 3

[State 23106, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 23106, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 23106

[State 21306, 3]
type = DestroySelf
trigger1 = AnimElemTime(4) >= 0
trigger1 = !NumTarget

;===========================================================================
コンル用ステート
;---------------------------------------------------------------------------

; 通常
[Statedef 30000]
type = A
physics = N
sprpriority = -1
anim = 30000
ctrl = 0

[State 30000, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != 30000
value = 30000

[State 30000, 2]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 30000, 3]
type = Turn
trigger1 = Facing != Parent,Facing

[State 30000, 5]
type = VelSet
trigger1 = 1
x = (ParentDist X - 53)*.1
y = (ParentDist Y - 54)*.1

[State 30000, 6]
type = Explod
trigger1 = Time%60 = 0
trigger2 = Time%60 = 3
trigger3 = Time%60 = 6
anim = 30001
ID = 30001
pos = Floor(Random/50)-10, -Floor(Random/200)
sprpriority = 0
ownpal = 1
vel = 0, -random*.001-1.5
ignorehitpause = 1

[State 30000, 7]
type = ChangeState
triggerall = Parent,Time <= 1
triggerall = Parent,MoveType != H
trigger1 = Parent,StateNo = 3000
value = 31320

[State 30000, 8]
type = ChangeState
triggerall = Parent,Time <= 1
triggerall = Parent,MoveType != H
trigger1 = Parent,StateNo = [1000,1020]
trigger2 = Parent,StateNo = [1100,1120]
trigger3 = Parent,StateNo = 1200
trigger4 = Parent,StateNo = 1210
trigger5 = Parent,StateNo = 1220
trigger6 = Parent,StateNo = 1300
trigger7 = Parent,StateNo = 1310
trigger8 = Parent,StateNo = 1320
trigger9 = Parent,StateNo = 1400
trigger10 = Parent,StateNo = 1410
trigger11 = Parent,StateNo = 1420
trigger12 = Parent,StateNo = 181
trigger12 = Parent,Time = 1
trigger13 = Parent,StateNo = 183
trigger14 = Parent,StateNo = 185
value = Parent,StateNo + 30000

;---------------------------------------------------------------------------
; 勝利(エサ食い)
[Statedef 30181]
type = A
physics = N
sprpriority = 1

[State 30181, 0]
type = Turn
trigger1 = Facing != Parent,Facing

[State 30181, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 30181, 2]
type = VelSet
trigger1 = 1
x = (ParentDist X + 108)*.1
y = (ParentDist Y - 72)*.1

[State 30181, 3]
type = ChangeAnim
trigger1 = Time = 48
trigger1 = Anim != 30183
trigger1 = Anim != 30184
value = 30183

[State 30181, 4]
type = ChangeAnim
trigger1 = Time = 100
trigger1 = Anim = 30183
value = 30184

[State 30181, 5]
type = ChangeState
trigger1 = Anim = 30184
trigger1 = Animtime = 0
value = 30000

[State 30181, 6]
type = PlaySnd
triggerall = Anim = 30184
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(6) = 0
trigger3 = AnimElemTime(10) = 0
value = 0, 1

[State 30181, 7]
type = Explod
triggerall = Anim = 30184
trigger1 = AnimElemTime(2) = [0,4]
trigger2 = AnimElemTime(6) = [0,4]
trigger3 = AnimElemTime(10) = [0,4]
anim = 20060
ID = 30183
pos = 0, 0
random = 80, 20
removetime = 6
sprpriority = 2
ownpal = 1

;---------------------------------------------------------------------------
; 勝利(エヘヘ)
[Statedef 30183]
type = A
physics = N
sprpriority = -1

[State 30183, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 30183, 2]
type = Turn
trigger1 = Facing != Parent,Facing

[State 30183, 3]
type = PosSet
trigger1 = Time = 0
x = Parent,Pos X - 53*facing
y = Parent,Pos Y - 54

[State 30183, 4]
type = VelSet
trigger1 = Time = 0
x = 10.56
y = 2.28

[State 30183, 5]
type = VelAdd
trigger1 = Time < 23
x = -.51
y = -.24

[State 30183, 6]
type = VelMul
trigger1 = Time >= 23
x = .96
y = .89

[State 30183, 7]
type = VelSet
trigger1 = Parent,AnimElemTime(4) = 30
trigger2 = Parent,AnimElemTime(5) = 0
x = 0
y = -(Parent,AnimElemTime(5)=0)*1

[State 30183, 8]
type = Explod
trigger1 = Time%60 = 0
trigger2 = Time%60 = 3
trigger3 = Time%60 = 6
anim = 30001
ID = 30001
pos = Floor(Random/50)-10, -Floor(Random/200)
sprpriority = 0
ownpal = 1
vel = 0, -random*.001-1.5
ignorehitpause = 1

;---------------------------------------------------------------------------
; 勝利(って姉さまが言ってた)
[Statedef 30185]
type = A
physics = N
sprpriority = -1
velset = 2.4, 0

[State 30185, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 30185, 2]
type = Turn
trigger1 = Facing != Parent,Facing

[State 30185, 3]
type = PosSet
trigger1 = Time = 0
x = Parent,Pos X - 53*facing
y = Parent,Pos Y - 54

[State 30185, 4]
type = VelSet
trigger1 = Time = 0
x = 2.4

[State 30185, 5]
type = VelMul
trigger1 = 1
x = .95
y = .95

[State 30185, 6]
type = Explod
trigger1 = Time%60 = 0
trigger2 = Time%60 = 3
trigger3 = Time%60 = 6
anim = 30001
ID = 30001
pos = Floor(Random/50)-10, -Floor(Random/200)
sprpriority = 0
ownpal = 1
vel = 0, -random*.001-1.5
ignorehitpause = 1

;---------------------------------------------------------------------------
; イントロ
[Statedef 30190]
type = A
physics = N
sprpriority = -1
velset = 4, -10
ctrl = 0

[State 30190, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != 30000
value = 30000

[State 30190, 2]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 30190, 3]
type = PosSet
trigger1 = ParentDist X = [52,54]
x = Parent,Pos X - 53*Facing

[State 30190, 4]
type = PosSet
trigger1 = ParentDist Y = [53,55]
y = Parent,Pos Y - 54

[State 30190, 5]
type = VelAdd
trigger1 = 1
x = Ifelse(((ParentDist X - 53)>0),.2,-.2)
y = Ifelse(((ParentDist Y - 54)>0),.2,-.2)

[State 30190, 5]
type = VelMul
trigger1 = Abs(ParentDist X - 53) < 100
x = (Abs(ParentDist X - 53)+400)/500*(ParentDist X != 53)

[State 30190, 5]
type = VelMul
trigger1 = Abs(ParentDist Y - 54) < 100
y = (Abs(ParentDist Y - 54)+400)/500*(ParentDist Y != 54)

[State 30190, 4]
type = Turn
trigger1 = Facing != Parent,Facing

[State 30190, 5]
type = Explod
trigger1 = Time%60 = 0
trigger2 = Time%60 = 3
trigger3 = Time%60 = 6
anim = 30001
ID = 30001
pos = Floor(Random/50)-10, -Floor(Random/200)
sprpriority = 0
ownpal = 1
vel = 0, -random*.001-1.5
ignorehitpause = 1

[State 30190, 6]
type = PosSet
trigger1 = Parent,StateNo = 0
x = Parent,Pos X - 53*Facing
y = Parent,Pos Y - 54

[State 30190, 7]
type = ChangeState
trigger1 = roundstate > 1
value = 30000

;---------------------------------------------------------------------------
; 弱ルプシクアレ
[Statedef 31000]
type = A
physics = N
sprpriority = -1
velset = 1, -4

[State 31000, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 31000, 2]
type = PosSet
trigger1 = Time = 0
trigger2 = Time = 13
x = Parent,Pos X - 53*Facing
y = Parent,Pos Y - 54

[State 31000, 3]
type = VelSet
trigger1 = 1
x = (ParentDist X + 51)*.1*(Time < 13)
y = (ParentDist Y - 31)*.1*(Time < 13)

[State 31000, 4]
type = ChangeAnim
trigger1 = Time = 12
value = 30100

[State 31000, 5]
type = AssertSpecial
trigger1 = Time = [12, 35]
flag = Invisible

[State 31000, 6]
type = ChangeState
triggerall = Parent,StateNo != 1000
triggerall = Parent,StateNo != 1010
trigger1 = Time = 47
trigger2 = !NumHelper(1000)
value = 30000

;---------------------------------------------------------------------------
; 中ルプシクアレ
[Statedef 31010]
type = A
physics = N

[State 31010, 1]
type = ChangeState
trigger1 = Time = 0
value = 31000

;---------------------------------------------------------------------------
; 強ルプシクアレ
[Statedef 31020]
type = A
physics = N
velset = 12, -1

[State 31020, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 31020, 2]
type = PosSet
trigger1 = Time = 0
trigger2 = Time = 29
x = Parent,Pos X - 53*Facing
y = Parent,Pos Y - 54

[State 31020, 3]
type = VelAdd
trigger1 = Time > 5
trigger1 = Time < 23
x = 4-6.8*(Time < 15)

[State 31020, 4]
type = VelAdd
trigger1 = Time > 5
trigger1 = Time < 23
y = 2-3.7*(Time < 11)

[State 31020, 5]
type = VelSet
trigger1 = Time = 23
x = 0
y = 0

[State 31020, 6]
type = Explod
trigger1 = Time%2 = 0
trigger1 = Time < 23
anim = 21021
ID = 31000
pos = 0,0
removetime = 2
sprpriority = -1
ownpal = 1

[State 31020, 7]
type = ChangeAnim
trigger1 = Time = 23
value = 30100

[State 31020, 8]
type = AssertSpecial
trigger1 = Time = [28, 35]
flag = Invisible

[State 31020, 9]
type = ChangeState
trigger1 = Time = 47
trigger2 = Parent,StateNo != 1020
trigger2 = !NumHelper(1000)
value = 30000

;---------------------------------------------------------------------------
; 弱ノンノ
[Statedef 31100]
type = A
physics = N
sprpriority = -1
velset = 16, 0

[State 31100, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 31100, 2]
type = PosSet
trigger1 = Time = 0
x = Parent,Pos X - 53*Facing
y = Parent,Pos Y - 54

[State 31100, 3]
type = VelAdd
trigger1 = Time < 3
y = -12

[State 31100, 4]
type = VelSet
trigger1 = Time = 3
trigger2 = Time = 8
x = 0
y = 0

[State 31100, 5]
type = VelSet
trigger1 = Time = 4
x = 16
y = 32

[State 31100, 6]
type = VelAdd
trigger1 = Time = (4, 8)
x = -8

[State 31100, 8]
type = ChangeAnim
trigger1 = Time = 8
value = 30100

[State 31100, 9]
type = AssertSpecial
trigger1 = Time = [18, 32]
flag = Invisible

[State 31100, 10]
type = PosAdd
trigger1 = Time = 20
x = 28
y = -160

[State 31100, 12]
type = ChangeState
trigger1 = Time = 37
trigger2 = Parent,StateNo != 1100
trigger2 = !NumHelper(1100)
value = 30000

;---------------------------------------------------------------------------
; 中ノンノ
[Statedef 31110]
type = A
physics = N
sprpriority = -1
velset = 16, 0

[State 31110, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 31110, 2]
type = PosSet
trigger1 = Time = 0
x = Parent,Pos X - 53*Facing
y = Parent,Pos Y - 54

[State 31110, 3]
type = VelAdd
trigger1 = Time < 4
y = -8

[State 31110, 4]
type = VelSet
trigger1 = Time = 4
trigger2 = Time = 10
x = 0
y = 0

[State 31110, 5]
type = VelSet
trigger1 = Time = 5
x = 15
y = 28

[State 31110, 6]
type = VelAdd
trigger1 = Time = (5, 10)
x = -6

[State 31110, 8]
type = ChangeAnim
trigger1 = Time = 10
value = 30100

[State 31110, 9]
type = AssertSpecial
trigger1 = Time = [20, 47]
flag = Invisible

[State 31110, 10]
type = PosAdd
trigger1 = Time = 22
x = 30
y = -160

[State 31110, 12]
type = ChangeState
trigger1 = Time = 52
trigger2 = Parent,StateNo != 1110
trigger2 = !NumHelper(1100)
value = 30000

;---------------------------------------------------------------------------
; 強ノンノ
[Statedef 31120]
type = A
physics = N
sprpriority = -1
velset = 14, 0

[State 31120, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 31120, 2]
type = PosSet
trigger1 = Time = 0
x = Parent,Pos X - 53*Facing
y = Parent,Pos Y - 54

[State 31120, 3]
type = VelAdd
trigger1 = Time < 5
y = -6

[State 31120, 4]
type = VelSet
trigger1 = Time = 5
trigger2 = Time = 13
x = 0
y = 0

[State 31120, 5]
type = VelSet
trigger1 = Time = 6
x = 14
y = 20

[State 31120, 6]
type = VelAdd
trigger1 = Time = (6, 13)
x = -4

[State 31120, 8]
type = ChangeAnim
trigger1 = Time = 13
value = 30100

[State 31120, 9]
type = AssertSpecial
trigger1 = Time = [23, 52]
flag = Invisible

[State 31120, 10]
type = PosAdd
trigger1 = Time = 24
x = 38
y = -160

[State 31120, 12]
type = ChangeState
trigger1 = Time = 57
trigger2 = Parent,StateNo != 1120
trigger2 = !NumHelper(1100)
value = 30000

;---------------------------------------------------------------------------
; 弱シラル
[Statedef 31200]
type = A
physics = N
sprpriority = -1
velset = 0,0

[State 31200, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 31200, 2]
type = PosSet
trigger1 = Time = 0
x = Parent,Pos X - 53*Facing
y = Parent,Pos Y - 54

[State 31200, 3]
type = VelSet
trigger1 = Parent,Anim = 1200
trigger1 = Parent,AnimElemTime(2) = 0
x = 8
y = -18

[State 31200, 4]
type = VelAdd
trigger1 = Parent,Anim = 1200
trigger1 = Parent,AnimElemTime(2) > 0
trigger1 = Parent,AnimElemTime(7) < 0
x = -7+(ParentDist X > 0)*12
y = 6-(ParentDist Y < 54)*7.6

[State 31200, 5]
type = VelSet
trigger1 = Parent,Anim = 1200
trigger1 = Parent,AnimElemTime(7) = 0
x = 0
y = 0

[State 31200, 12]
type = ChangeState
trigger1 = Parent,AnimElemTime(7) = 0
trigger2 = Parent,StateNo != [1200, 1201]
value = 30000

;---------------------------------------------------------------------------
; 中シラル
[Statedef 31210]
type = A
physics = N
sprpriority = -1
velset = 0,0

[State 31210, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 31210, 2]
type = PosSet
trigger1 = Time = 0
x = Parent,Pos X - 53*Facing
y = Parent,Pos Y - 54

[State 31210, 3]
type = VelSet
trigger1 = Parent,Anim = 1210
trigger1 = Parent,AnimElemTime(2) = 0
x = 7.5
y = -16.5

[State 31210, 4]
type = VelAdd
trigger1 = Parent,Anim = 1210
trigger1 = Parent,AnimElemTime(2) > 0
trigger1 = Parent,AnimElemTime(7) < 0
x = -5+(ParentDist X > 0)*10
y = 5-(ParentDist Y < 54)*7

[State 31210, 5]
type = VelSet
trigger1 = Parent,Anim = 1210
trigger1 = Parent,AnimElemTime(7) = 0
x = 0
y = 0

[State 31210, 8]
type = ChangeAnim
trigger1 = Parent,Anim = 1210
trigger1 = Parent,AnimElemTime(7) = 0
value = 30100

[State 31210, 9]
type = AssertSpecial
trigger1 = Parent,Anim = 1210
trigger1 = Parent,AnimElemTime(8) = [4, 40]
flag = Invisible

[State 31210, 12]
type = ChangeState
trigger1 = Time = 40
trigger2 = Parent,StateNo != [1210, 1211]
value = 30000

;---------------------------------------------------------------------------
; 強シラル
[Statedef 31220]
type = A
physics = N
sprpriority = -1
velset = 0,0

[State 31220, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 31220, 2]
type = PosSet
trigger1 = Time = 0
x = Parent,Pos X - 53*Facing
y = Parent,Pos Y - 54

[State 31220, 3]
type = VelSet
trigger1 = Parent,Anim = 1220
trigger1 = Parent,AnimElemTime(2) = 0
x = 7.5
y = -18

[State 31220, 4]
type = VelAdd
trigger1 = Parent,Anim = 1220
trigger1 = Parent,AnimElemTime(2) > 0
trigger1 = Parent,AnimElemTime(7) < 0
x = -3+(ParentDist X > 0)*7
y = 4-(ParentDist Y < 54)*8

[State 31220, 5]
type = VelSet
trigger1 = Parent,Anim = 1220
trigger1 = Parent,AnimElemTime(7) = 0
x = 0
y = 0

[State 31220, 8]
type = ChangeAnim
trigger1 = Parent,Anim = 1220
trigger1 = Parent,AnimElemTime(7) = 0
value = 30100

[State 31220, 9]
type = AssertSpecial
trigger1 = Parent,Anim = 1220
trigger1 = Parent,AnimElemTime(8) = [4, 100]
flag = Invisible

[State 31220, 12]
type = ChangeState
trigger1 = Time = 100
trigger2 = Parent,StateNo != [1220, 1221]
value = 30000

;---------------------------------------------------------------------------
; 弱メッ(ム)
[Statedef 31300]
type = A
physics = N
sprpriority = -1
velset = 0,0

[State 31300, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 31300, 2]
type = PosSet
trigger1 = Time = 0
x = Parent,Pos X - 53*Facing
y = Parent,Pos Y - 54

[State 31300, 3]
type = VelSet
trigger1 = Parent,Anim = 1300
trigger1 = Parent,AnimElemTime(4) = 0
x = 18
y = -48

[State 31300, 4]
type = VelAdd
trigger1 = Parent,Anim = 1300
trigger1 = Parent,AnimElemTime(4) > 0
trigger1 = Time < 12
x = -3+(ParentDist X > 0)*7
y = 40

[State 31300, 5]
type = VelSet
trigger1 = Time = 12
x = 0
y = 0

[State 31300, 6]
type = ChangeAnim
trigger1 = Time = 12
value = 30100

[State 31300, 7]
type = AssertSpecial
trigger1 = Time = (15, 25)
flag = Invisible

[State 31300, 12]
type = ChangeState
trigger1 = Time = 28
trigger2 = !NumHelper(1300)
trigger2 = Parent,StateNo != 1300
value = 30000

;---------------------------------------------------------------------------
; 中メッ(ム)
[Statedef 31310]
type = A
physics = N
sprpriority = -1
velset = 0,0

[State 31310, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 31310, 2]
type = PosSet
trigger1 = Time = 0
x = Parent,Pos X - 53*Facing
y = Parent,Pos Y - 54

[State 31310, 3]
type = VelSet
trigger1 = Parent,Anim = 1310
trigger1 = Parent,AnimElemTime(1) = 0
trigger2 = Parent,Anim = 1310
trigger2 = Parent,AnimElemTime(5) = 0
trigger3 = Time = 20
x = 18*(Parent,AnimElemTime(1)=0)
y = 0

[State 31310, 4]
type = VelAdd
trigger1 = Parent,Anim = 1310
trigger1 = Parent,AnimElemTime(3) < 0
x = -.4

[State 31310, 3]
type = VelSet
trigger1 = Parent,Anim = 1310
trigger1 = Parent,AnimElemTime(3) = 0
x = -8
y = -34

[State 31310, 4]
type = VelAdd
trigger1 = Parent,Anim = 1310
trigger1 = Parent,AnimElemTime(3) > 0
trigger1 = Parent,AnimElemTime(5) < 0
x = 12-(ParentDist X < 0)*26
y = 14

[State 31310, 3]
type = VelSet
trigger1 = Parent,Anim = 1310
trigger1 = Parent,AnimElemTime(6) = 0
x = 16
y = -63

[State 31310, 4]
type = VelAdd
trigger1 = Parent,Anim = 1310
trigger1 = Parent,AnimElemTime(6) > 0
trigger1 = Parent,AnimElemTime(8) < 0
x = 12-(ParentDist X < 0)*26
y = 50

[State 31310, 6]
type = ChangeAnim
trigger1 = Time = 20
value = 30100

[State 31310, 7]
type = AssertSpecial
trigger1 = Time = (25, 45)
flag = Invisible

[State 31310, 12]
type = ChangeState
trigger1 = Time = 48
trigger2 = !NumHelper(1300)
trigger2 = Parent,StateNo != 1310
value = 30000

;---------------------------------------------------------------------------
; 強メッ(ム)
[Statedef 31320]
type = A
physics = N
sprpriority = -1
velset = 0,0

[State 31320, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 31320, 2]
type = PosSet
trigger1 = Time = 0
x = Parent,Pos X - 53*Facing
y = Parent,Pos Y - 54

[State 31320, 3]
type = VelSet
trigger1 = Parent,Anim = 1320
trigger1 = Parent,AnimElemTime(1) = 0
trigger2 = Parent,Anim = 1320
trigger2 = Parent,AnimElemTime(5) = 0
trigger3 = Parent,Anim = 3000
trigger3 = Parent,AnimElemTime(2) = 18
trigger4 = Parent,Anim = 3000
trigger4 = Parent,AnimElemTime(6) = 0
trigger5 = Parent,Anim = 1320
trigger5 = Time = 27
trigger6 = Parent,Anim = 3000
trigger6 = Time = 33
x = 21*((Parent,AnimElemTime(1)=0)+(Parent,Anim=3000)*(Parent,AnimElemTime(2)=18))
y = 0

[State 31320, 4]
type = VelAdd
trigger1 = Parent,Anim = 1320
trigger1 = Parent,AnimElemTime(3) < 0
trigger2 = Parent,Anim = 3000
trigger2 = Parent,AnimElemTime(4) < 0
x = -.4

[State 31320, 3]
type = VelSet
trigger1 = Parent,Anim = 1320
trigger1 = Parent,AnimElemTime(3) = 0
trigger2 = Parent,Anim = 3000
trigger2 = Parent,AnimElemTime(4) = 0
x = -8
y = -30

[State 31320, 4]
type = VelAdd
trigger1 = Parent,Anim = 1320
trigger1 = Parent,AnimElemTime(3) > 0
trigger1 = Parent,AnimElemTime(5) < 0
trigger2 = Parent,Anim = 3000
trigger2 = Parent,AnimElemTime(4) > 0
trigger2 = Parent,AnimElemTime(6) < 0
x = 4-(ParentDist X < 0)*12
y = 10

[State 31320, 3]
type = VelSet
trigger1 = Parent,Anim = 1320
trigger1 = Parent,AnimElemTime(6) = 0
trigger2 = Parent,Anim = 3000
trigger2 = Parent,AnimElemTime(7) = 0
x = 16
y = -32

[State 31320, 4]
type = VelAdd
trigger1 = Parent,Anim = 1320
trigger1 = Parent,AnimElemTime(6) > 0
trigger1 = Parent,AnimElemTime(9) < 0
trigger2 = Parent,Anim = 3000
trigger2 = Parent,AnimElemTime(7) > 0
trigger2 = Parent,AnimElemTime(10) < 0
x = 4-(ParentDist X < 0)*8
y = 14

[State 31320, 6]
type = ChangeAnim
trigger1 = Parent,Anim = 1320
trigger1 = Time = 27
trigger2 = Time = 33
value = 30100

[State 31320, 7]
type = AssertSpecial
trigger1 = Parent,Anim = 1320
trigger1 = Time = (30, 60)
trigger2 = Time = (56, 86)
flag = Invisible

[State 31320, 12]
type = ChangeState
trigger1 = Parent,Anim = 1320
trigger1 = Time = 63
trigger2 = Time = 90
trigger3 = !NumHelper(1300)
trigger3 = Parent,StateNo != 1320
trigger3 = Parent,StateNo != 3000
value = 30000

;---------------------------------------------------------------------------
; 弱ウプンオッ(プ)
[Statedef 31400]
type = A
physics = N
sprpriority = -1
velset = 21, 0

[State 31400, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 31400, 2]
type = PosSet
trigger1 = Time = 0
x = Parent,Pos X - 53*Facing
y = Parent,Pos Y - 54

[State 31400, 3]
type = VelAdd
trigger1 = 1
x = -2.5

[State 31400, 4]
type = VelSet
trigger1 = Vel X <= 0
x = 0

[State 31400, 5]
type = ChangeState
trigger1 = Parent,StateNo != 1400
value = 30000

;---------------------------------------------------------------------------
; 中ウプンオッ(プ)
[Statedef 31410]
type = A
physics = N
sprpriority = -1
velset = 14.5, 0

[State 31410, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 31410, 2]
type = PosSet
trigger1 = Time = 0
trigger2 = Parent,Anim = 1411
trigger2 = Parent,AnimElemTime(3) >= 0
x = Parent,Pos X + (128*(Parent,Anim = 1411)-53)*Facing
y = Parent,Pos Y - 54

[State 31410, 3]
type = VelAdd
trigger1 = 1
x = -1.25

[State 31410, 4]
type = VelSet
trigger1 = Vel X <= 0
x = 0

[State 31410, 6]
type = ChangeState
trigger1 = Parent,StateNo != [1410, 1411]
trigger2 = Parent,Anim = 1411
trigger2 = Parent,AnimElemTime(12) >= 0
value = 30000

;---------------------------------------------------------------------------
; 強ウプンオッ(プ)
[Statedef 31420]
type = A
physics = N
sprpriority = -1
velset = 11.5, 0

[State 31420, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 31420, 2]
type = PosSet
trigger1 = Time = 0
trigger2 = Parent,Anim = 1421
trigger2 = Parent,AnimElemTime(3) >= 0
x = Parent,Pos X + (128*(Parent,Anim = 1421)-53)*Facing
y = Parent,Pos Y - 54

[State 31420, 3]
type = VelAdd
trigger1 = 1
x = -.75

[State 31420, 4]
type = VelSet
trigger1 = Vel X <= 0
x = 0

[State 31420, 5]
type = ChangeState
trigger1 = Parent,StateNo != [1420, 1421]
trigger2 = Parent,Anim = 1421
trigger2 = Parent,AnimElemTime(16) >= 0
value = 30000
