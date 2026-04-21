;侍零リムルル　メインステートファイル

;---------------------------------------------------------------------------
; 書式:
; [Statedef ステート番号]
; type = ?      S/C/A/L  stand/crouch/air/liedown ･･条件判断に必要。
; movetype = ?  I/A/H    idle/attack/gethit ･･同上
; physics = ?   S/C/A/N  stand/crouch/air/none ･･物理状態。N以外だと摩擦や重力がかかる。
; 速度を伴うものは、Nにしないと思うように動いてくれません。
; juggle = ?             空中ヒットに必要な値。高いと空中ヒット数が下がります。
;
; [State ステート番号, 連番]･･引数はいずれも任意の数値(文字列)でOKですが、
; この書式にしないとエラー報告で困ります。また、日本語で記述すると文字化けします。
; type = ?               ステートコントローラを記述します。
; ...


;---------------------------------------------------------------------------
; 歩き
[Statedef 20]
type    = S
physics = S
sprpriority = 0

[State 20, 1]
type = VelSet
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, 2]
type = VelSet
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20
value = 20

[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21
value = 21

;---------------------------------------------------------------------------
; ジャンプ開始
[Statedef 40]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 2]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 40, 3]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, 5]
type = Turn
trigger1 = Time = 0
trigger1 = P2Dist X < 0

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; ジャンプ開始(CPU)
[Statedef 41]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State 41, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(p2bodydist x <= 120,const(velocity.jump.neu.x),const(velocity.jump.fwd.x))
y = const(velocity.jump.y)

[State 41, 5]
type = Turn
trigger1 = Time = 0
trigger1 = P2Dist X < 0

[State 41, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;三角跳び
[Statedef 48]
type    = A
physics = N
anim = 48
ctrl = 0

[State 48, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = FrontEdgeBodyDist<=0
x = -const(velocity.jump.fwd.x)

[State 48, 2]
type = Turn
trigger1 = Time = 0
trigger1 = FrontEdgeBodyDist<=0

[State 48, 3]
type = PosFreeze
trigger1 = 1

[State 48, 4]
type = VelSet
trigger1 = AnimTime = 0
x = const(velocity.jump.fwd.x)
y = const(velocity.jump.y)*.75

[State 48, 5]
type = CtrlSet
trigger1 = Time = 3
value = 1

[State 48, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; ジャンプ
[Statedef 50]
type    = A
physics = A

[State 50, 0]
type = PlaySnd
trigger1 = Time = 1
value = 200,0
channel = 0

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 41+(Vel X > 0)+(Vel X < 0)*2

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > -8
trigger1 = Anim = [41,43]
persistent = 0
value = Anim + 3

[State 50, 4]
type = ChangeState
triggerall = Pos Y < -64
triggerall = PrevStateNo != 48
trigger1 = Command = "holdfwd"
trigger1 = BackEdgeBodyDist <= 0
trigger2 = Command = "holdback"
trigger2 = FrontEdgeBodyDist <= 0
persistent = 0
value = 48

;---------------------------------------------------------------------------
; ジャンプ下降
[Statedef 51]
type    = A
physics = A
anim = 41 + (vel x > 0) + (vel x < 0)*2

[State 51, 1]
type = ChangeAnim
trigger1 = Vel y > -8
trigger1 = Anim = [41,43]
persistent = 0
value = Anim + 3

[State 51, 2]
type = ChangeState
triggerall = Pos Y < -64
triggerall = PrevStateNo != 48
trigger1 = Command = "holdfwd"
trigger1 = BackEdgeBodyDist <= 0
trigger2 = Command = "holdback"
trigger2 = FrontEdgeBodyDist <= 0
persistent = 0
value = 48

;---------------------------------------------------------------------------
;ジャンプ着地
[Statedef 52]
type    = S
physics = S
ctrl = 0
anim = 47

[State 52, 0]
type = RemoveExplod
trigger1 = Time = 0
ID = 600

[State 52, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 3]
type = CtrlSet
triggerall = Time >= 1
trigger1 = command != "holdup"
value = 1

[State 52, 4]
type = PlaySnd
trigger1 = Time = 0
value = 52, 0

[State 52, 5]
type = PlaySnd
trigger1 = Time = 3
value = 52, 0

[State 52, 6]
type = ChangeState
trigger1 = Time = 18
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;  踏み込み
[Statedef 100]
type    = S
physics = N
sprpriority = 1
ctrl = 0

[State 100, 0]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != 101
value = 100

[State 100, 1]
type = VelSet
trigger1 = anim = 100
x = const(velocity.run.fwd.x)

[State 100, 2]
type = PlaySnd
trigger1 = Time = 0
triggerall = Anim = 100
value = 20, 1
channel = 1

[State 100, 3]
type = ChangeAnim
triggerall = Time >= 3
triggerall = Anim != 101
trigger1 = command = "holdback"
trigger2 = P2Bodydist X < 10
trigger2 = EnemyNear,StateType != A
trigger3 = Var(20)&&(P2MoveType = A)
value = 101

[State 100, 4]
type = ChangeState
triggerall = Time >= 3
triggerall = Anim != 101
triggerall = !Var(20)
trigger1 = command != "holdfwd"
trigger1 = command != "holdback"
trigger1 = command != "holdup"
trigger1 = command != "holddown"
trigger2 = command = "down"
value = 101 + (command = "down")

[State 100, 5]
type = VelMul
trigger1 = Anim = 101
x = .90

[State 100, 6]
type = PlaySnd
trigger1 = Anim = 101
trigger1 = AnimElemTime(1) = 0
value = 20, 2
channel = 1

[State 100, 7]
type = MakeDust
trigger1 = Anim = 101
trigger1 = AnimElemTime(1) = 2
pos = -10, 0
spacing = 1

[State 100, 8]
type = CtrlSet
trigger1 = Time >= 3
trigger1 = command = "holdup"
value = 1

[State 100, 9]
type = ChangeState
triggerall = Anim = 101
trigger1 = AnimElemTime(1) >= 9
trigger2 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 踏み込み停止(ニュートラル)
[Statedef 101]
type    = S
physics = N
ctrl = 0
anim = 101

[State 101, 1]
type = VelMul
trigger1 = Vel X > 0
x = .90

[State 101, 2]
type = PlaySnd
trigger1 = AnimElemTime(1) = 1
value = 20, 2
channel = 1

[State 101, 3]
type = MakeDust
trigger1 = AnimElemTime(1) = 2
pos = -10, 0
spacing = 1

[State 101, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 踏み込み停止(後ろ)
[Statedef 102]
type    = S
physics = N
ctrl = 0
anim = 101

[State 102, 1]
type = VelMul
trigger1 = Vel X > 0
x = .90

[State 102, 2]
type = PlaySnd
trigger1 = AnimElemTime(1) = 1
value = 20, 2
channel = 1

[State 102, 3]
type = MakeDust
trigger1 = AnimElemTime(1) = 2
pos = -10, 0
spacing = 1

[State 102, 4]
type = ChangeState
trigger1 = command = "holdback"
trigger2 = P2Bodydist X < 10
trigger2 = EnemyNear,StateType != A
trigger3 = AnimTime = 0
value = 100 * (AnimTime != 0)
ctrl = (AnimTime = 0)

;---------------------------------------------------------------------------
; バックステップ
[Statedef 105]
type    = A
physics = N
ctrl = 0
velset = -5.9,-4
anim = 105
sprpriority = 1

[State 105, 1]
type = PlaySnd
trigger1 = time = 0
value = 20, 0

[State 105, 2]
type = PlaySnd
trigger1 = Time = 0
value = 200, 5
channel = 0
lowpriority = 1

[State 100, 3]
type = VelAdd
trigger1 = 1
y = .5

[State 100, 4]
type = NotHitBy
trigger1 = Time < 5
value = SCA

[State 105,5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 106

;---------------------------------------------------------------------------
; バックステップ着地
[Statedef 106]
type    = S
physics = S
ctrl = 0
anim = 106
velset = 0,0

[State 106, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 106, 2]
type = PlaySnd
trigger1 = Time = 1
value = 40, 0

[State 106, 3]
type = MakeDust
trigger1 = Time = 2
pos = -5,-2
spacing = 1

[State 106, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; スキ大着地
[Statedef 107]
type    = S
physics = S
ctrl = 0
anim = 107
velset = 0,0

[State 107, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 107, 2]
type = PlaySnd
trigger1 = Time = 1
value = 40, 0

[State 107, 3]
type = MakeDust
trigger1 = Time = 2
pos = -5,-2
spacing = 1

[State 107, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;  瞑想

[Statedef 110]
type    = S
physics = S
ctrl = 0
anim = 110
sprpriority = 1

[State 110, 1]
type = Explod
trigger1 = Time = 0
anim = 109
ID = 109
removetime = -1
sprpriority = 2
ownpal = 1

[State 110, 2]
type = CtrlSet
trigger1 = Time = 12
value = 1

[State 110, 3]
type = ChangeState
triggerall = Time >= 10
trigger1 = Command != "charge_b"
trigger2 = Command = "holdfwd"
trigger3 = Command = "holdback"
trigger4 = Command = "holdup"
trigger5 = Command = "holddown"
trigger6 = Var(30) != 0
trigger7 = FVar(3) = 0
value = 12
ctrl = 1

[State 110, 4]
type = VarAdd
trigger1 = Time >= 10
fvar(3) = -5

[State 110, 5]
type = VarSet
trigger1 = fvar(3) < 0
fvar(3) = 0

[State 110, 6]
type = VarAdd
triggerall = Time >= 10
trigger1 = fvar(4) < 1281
fvar(4) = 1.2;.8

;---------------------------------------------------------------------------
;  飛び込み

[Statedef 111]
type    = A
physics = N
ctrl = 0
anim = 111
sprpriority = -1

[State 113, 1]
type = VelSet
trigger1 = Time = 0
x = 6
y = -6.2

[State 113, 2]
type = PlayerPush
trigger1 = 1
value = 0

[State 113, 3]
type = PlaySnd
trigger1 = time = 1
value = 20, 0
channel = 1

[State 113, 4]
type = VelAdd
trigger1 = 1
y = .6

[State 113,5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 107

;---------------------------------------------------------------------------
;  足元すかし

[Statedef 112]
type    = A
physics = N
anim = 112
sprpriority = 1
ctrl = 0

[State 112, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = -7.2

[State 112, 2]
type = PlayerPush
trigger1 = 1
value = 0

[State 112, 3]
type = PlaySnd
trigger1 = time = 1
value = 20, 0
channel = 1

[State 112, 4]
type = VelAdd
trigger1 = 1
y = .68

[State 112, 5]
type = NotHitBy
trigger1 = AnimElemTime(1) < 6
value = SCA

[State 112,6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 107

;---------------------------------------------------------------------------
;  伏せ

[Statedef 113]
type    = C
physics = C
anim = 113
sprpriority = 1
velset = 0,0
ctrl = 0

[State 113, 1]
type = null;CtrlSet
trigger1 = Time = 12
value = 1

[State 113, 2]
type = null;AssertSpecial
trigger1 = 1
flag = NoWalk

[State 113, 3]
type = StopSnd
trigger1 = time = 0
channel = 1

[State 113, 4]
type = null;NotHitBy
trigger1 = Time < 6
value = SCA

[State 113, 5]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
value = SCA, AT

[State 113, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;  前転

[Statedef 114]
type    = C
physics = N
anim = 114
sprpriority = 1
velset = 0,0
ctrl = 0

[State 114, 1]
type = VelSet
trigger1 = AnimElemTime(2) = 0
x = 10.5

[State 114, 2]
type = StopSnd
trigger1 = time = 0
channel = 1

[State 114, 3]
type = NotHitBy
trigger1 = Time < 6
value = SCA

[State 115, 4]
type = NotHitBy
trigger1 = Time < 12
value = SCA, AT

[State 115, 5]
type = VelMul
trigger1 = 1
x = .94 * (AnimElemTime(10) < 0)

[State 114, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;  後転

[Statedef 115]
type    = C
physics = N
anim = 115
sprpriority = 1
velset = 0,0
ctrl = 0

[State 115, 1]
type = VelSet
trigger1 = Time = 0
x = -8.5

[State 115, 2]
type = StopSnd
trigger1 = time = 0
channel = 1

[State 115, 3]
type = NotHitBy
trigger1 = Time < 6
value = SCA

[State 116, 4]
type = NotHitBy
trigger1 = Time < 12
value = SCA, AT

[State 115, 5]
type = VelMul
trigger1 = 1
x = .94 * (AnimElemTime(7) < 0)

[State 115, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 体力負け
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

[State 170, 2]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 11, 1

;---------------------------------------------------------------------------
; 時間切れ
[Statedef 175]
type = S
ctrl = 0
anim = 175
velset = 0,0

[State 175, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; 勝ち
[Statedef 180]
type = S

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
trigger1 = !NumEnemy
value = 181

[State 180, 2]
type = ChangeState
trigger1 = Time = 0
trigger1 = MatchOver
trigger1 = Random < 500
value = 185+Floor(random/650)

[State 180, 3]
type = ChangeState
trigger1 = Time = 0
value = 181+Floor(Random/250)

;---------------------------------------------------------------------------
; 勝ち1(コンルにエサ)
[Statedef 181]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 181, 1]
type = AssertSpecial
trigger1 = Time < 480
flag = RoundNotOver

[State 181, 2]
type = ChangeState
trigger1 = Time = 0
trigger1 = FrontEdgeBodyDist < 120
value = 182+Floor(Random/334)

[State 181, 3]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 20183
ID = 183
pos = 16, -48
vel = 2.7, -4
accel = 0, .2
sprpriority = 2
ownpal = 1

[State 181, 4]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = 220,6
channel = 0

;---------------------------------------------------------------------------
; 勝ち2(お仕置きだあ～)
[Statedef 182]
type = S
ctrl = 0
anim = 180
velset = 0,0

[State 182, 1]
type = AssertSpecial
trigger1 = Time < 240
flag = RoundNotOver

[State 182, 2]
type = ChangeState
trigger1 = Time = 0
trigger1 = BackEdgeBodyDist < 56
value = 183+Floor(Random/500)

[State 182, 3]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = 220,1
channel = 0

;---------------------------------------------------------------------------
; 勝ち3(えへへへへ)
[Statedef 183]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 183, 1]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

[State 183, 2]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = 220,5
channel = 0

;---------------------------------------------------------------------------
; 勝ち4(ゴメンネ)
[Statedef 184]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 184, 1]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

[State 184, 2]
type = PlaySnd
trigger1 = AnimElemTime(8) = 2
value = 220,4
channel = 0

;---------------------------------------------------------------------------
; 勝ち5(って、姉さまが言ってた)
[Statedef 185]
type = S
ctrl = 0
anim = 184
velset = 0,0

[State 185, 1]
type = ChangeState
trigger1 = Time = 0
trigger1 = BackEdgeBodyDist < 56
value = 186

[State 185, 2]
type = AssertSpecial
trigger1 = Time < 360
flag = RoundNotOver

[State 185, 3]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = 220,2
channel = 0

;---------------------------------------------------------------------------
; 勝ち6(走り去る)
[Statedef 186]
type = S
ctrl = 0
anim = 185
velset = 0,0

[State 186, 1]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

[State 186, 2]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 220,6
channel = 0

[State 186, 4]
type = PlaySnd
trigger1 = AnimElemTime(14) = 0
value = 100, 4
channel = 0

[State 186, 5]
type = PlaySnd
trigger1 = AnimElemTime(14) = 0
value = 20,1

[State 186, 6]
type = PosAdd
trigger1 = AnimElemTime(14) = 0
trigger2 = AnimElemTime(15) = 0
trigger3 = AnimElemTime(16) = 0
trigger4 = AnimElemTime(17) = 0
trigger5 = AnimElemTime(14) = 20
x = 28

[State 186, 7]
type = ScreenBound
trigger1 = AnimElemTime(14) >= 0
value = 0
movecamera = 0,0

;---------------------------------------------------------------------------
; プリイントロ
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 0

[State 190, 2]
type = ChangeState
trigger1 = Time = 0
value = 191+floor(random/500)

;---------------------------------------------------------------------------
;試合開始(私、がんばるよ)
[Statedef 191]
type = S
ctrl = 0
velset = 0,0
anim = 190

[State 191, 1]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 2]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 100, (random%2)*2
channel = 0

[State 191, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
;試合開始2(こける)
[Statedef 192]
type = S
ctrl = 0
velset = 0,0
anim = 191

[State 192, 1]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 192, 2]
type = PosAdd
trigger1 = Time = 0
x = -126

[State 192, 3]
type = PosAdd
trigger1 = AnimElemTime(3) = 0
trigger2 = AnimElemTime(4) = 0
trigger3 = AnimElemTime(5) = 0
trigger4 = AnimElemTime(6) = 0
trigger5 = AnimElemTime(7) = 0
trigger6 = AnimElemTime(8) = 0
trigger7 = AnimElemTime(9) = 0
trigger8 = AnimElemTime(10) = 0
trigger9 = AnimElemTime(11) = 0
x = 14

[State 192, 4]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, 5]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 20, 1

[State 192, 5]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = 30, 4

[State 192, 6]
type = PlaySnd
trigger1 = AnimElemTime(20) = 0
value = 100, 6
channel = 0

[State 192, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; 挑発
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 195, 1]
type = CtrlSet
trigger1 = Time = 40
value = 1

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 試合放棄
[Statedef 196]
type = S
ctrl = 0
velset = 0,0

[State 196, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 196, 2]
type = AssertSpecial
trigger1 = 1
flag = nokosnd
flag2 = nokoslow

[State 196, 2]
type = VarSet
trigger1 = Time = 0
trigger1 = var(30) = 0
var(30) = 1

[State 196, 3]
type = LifeAdd
trigger1 = Time = 0
value = -10000

[State 196, 4]
type = ChangeState
trigger1 = Time = 1
trigger1 = Alive
value = 170

;---------------------------------------------------------------------------
; 近立ち弱斬り
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 200
sprpriority = 2

[State 200, 1]
type = HitDef
trigger1 = AnimElemTime(3) = 1
attr = S, NA
damage = Ceil(fvar(2)*10)
animtype = Light
air.animtype = back
fall.animtype = back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 5
sparkno = S8010
sparkxy = 12, -62
guard.sparkno = S8110
hitsound = S2, Floor(Random/250)
guardsound = S2, Floor(Random/250)
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -3.6
guard.velocity = -3.6
air.velocity = -2,-4
air.type = High
getpower = 24,12

[State 200, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 3

[State 200, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 遠立ち弱斬り
[Statedef 205]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 40
ctrl = 0
velset = 0,0
anim = 205
sprpriority = 1

[State 205, 1]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 0, 0

[State 205, 2]
type = Explod
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(7) < 0
anim = 20000+AnimElemNo(-(HitPauseTime>0))
ID = 205
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 205, 3]
type = HitDef
trigger1 = AnimElemTime(4) = 1
attr = S, NA
damage = Ceil(fvar(2)*28)
animtype = Light
air.animtype = back
fall.animtype = back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 5
guard.pausetime = 2, 2
sparkno = S8000
sparkxy = 0, -56
guard.sparkno = S8110
hitsound = S1, Floor(Random/250)
guardsound = S2, Floor(Random/250)
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
guard.ctrltime = 6
ground.velocity = -3.6
guard.velocity = -3.6
air.velocity = -2,-4
air.type = High
getpower = 24,12
ID = 200

[State 205, Blood]
type = Helper
trigger1 = MoveHit
trigger1 = NumTarget
name = "Blood"
ID = 205
pos = Ceil(P2Dist X), -56
stateno = 8052
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 205, 4]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = MoveGuarded
value = MoveGuarded * 206
ctrl = !MoveGuarded
ignorehitpause = 1

;---------------------------------------------------------------------------
; 弾かれ
[Statedef 206]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0
anim = 206
sprpriority = 2

[State 206,1]
type = VarAdd;-6,-10,-20
trigger1 = Time = 0
fvar(1) = -3
ignorehitpause = 1
persistent = 0

[State 206, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 立ちキック
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 40
ctrl = 0
velset = 0,0
anim = 210
sprpriority = 1

[State 210, 1]
type = PlaySnd
trigger1 = Time = 3
value = 0, 5

[State 210, 2]
type = HitDef
trigger1 = AnimElemTime(3) = 1
attr = S, NA
animtype  = Light
damage = Ceil(fvar(2)*20)
guardflag = MA
pausetime = 8, 8
sparkno = S8010
sparkxy = 0,-24
guard.sparkno = S8110
hitsound   = S2, Floor(Random/250)
guardsound = S2, Floor(Random/250)
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -5.4
guard.velocity = -5.4
air.velocity = -2,-4
getpower = 200,100

[State 210, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 近中斬り
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 40
ctrl = 0
velset = 0,0
anim = 220

[State 220, 1]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 0, 1

[State 220, 2]
type = Explod
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(6) < 0
anim = 20009+AnimElemNo(-(HitPauseTime>0))
ID = 220
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 220, 3]
type = HitDef
trigger1 = AnimElemTime(3) = 1
attr = S, NA
animtype  = Medium
air.animtype = back
fall.animtype = back
damage = Ceil(fvar(2)*50)
guardflag = MA
pausetime = 10,10
guard.pausetime = 2, 2
sparkno = S8000
guard.sparkno = S8110
sparkxy = 0,-48
hitsound = S1, Floor(Random/167)
guardsound = S2, Floor(Random/250)
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
guard.ctrltime = 10
ground.velocity = -5.4
guard.velocity = -5.4
air.velocity = -2,-4.5
getpower = 20,10
ID = 200

[State 220, Blood]
type = Helper
trigger1 = MoveHit
trigger1 = NumTarget
name = "Blood"
ID = 220
pos = Ceil(P2Dist X), -48
stateno = 8052
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = MoveGuarded
value = MoveGuarded * 221
ctrl = !MoveGuarded
ignorehitpause = 1

;---------------------------------------------------------------------------
; 弾かれ
[Statedef 221]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0
anim = 221
sprpriority = 2

[State 221,1]
type = VarAdd;-6,-10,-20
trigger1 = Time = 0
fvar(1) = -5
ignorehitpause = 1
persistent = 0

[State 221, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 遠中斬り
[Statedef 225]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 40
ctrl = 0
velset = 0,0
anim = 225
sprpriority = 1

[State 225, 1]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 0, 1

[State 225, 2]
type = Explod
trigger1 = AnimElemTime(4) >= 0
trigger1 = AnimElemTime(8) < 0
anim = 20020+AnimElemNo(-(HitPauseTime>0))
ID = 225
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 225, 3]
type = HitDef
trigger1 = AnimElemTime(5) = 1
attr = S, NA
animtype  = Medium
air.animtype = back
fall.animtype = back
damage = Ceil(fvar(2)*80)
guardflag = MA
pausetime = 0,(Var(13):=10)+(Var(12):=22507)-22507
guard.pausetime = 2, 2
sparkno = S8000
guard.sparkno = S8110
sparkxy = 0,-56
hitsound = S1, Floor(Random/167)
guardsound = S2, Floor(Random/250)
ground.type = High
ground.slidetime = 20
ground.hittime = 20
guard.ctrltime = 10
ground.velocity = -5.4
guard.velocity = -5.4
air.velocity = -2,-4.5
getpower = 20,10
ID = 200

[State 225, Blood]
type = Helper
trigger1 = MoveHit
trigger1 = NumTarget
name = "Blood"
ID = 225
pos = Ceil(P2Dist X), -56
stateno = 8050
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 225, 4]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = MoveGuarded
value = MoveGuarded * 700
ctrl = !MoveGuarded
ignorehitpause = 1

;---------------------------------------------------------------------------
; 弾かれ
[Statedef 226]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0
anim = 226
sprpriority = 2

[State 226,1]
type = VarAdd;-6,-10,-20
trigger1 = Time = 0
fvar(1) = -5
ignorehitpause = 1
persistent = 0

[State 226, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 近強斬り
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 45
ctrl = 0
velset = 0,0
anim = 240
sprpriority = 1

[State 240, 1]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 0, 2

[State 240, 2]
type = Explod
trigger1 = AnimElemTime(4) >= 0
trigger1 = AnimElemTime(11) < 0
anim = 20026+AnimElemNo(-(HitPauseTime>0))
ID = 240
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 240, 3]
type = HitDef
trigger1 = AnimElemTime(7) = 1
attr = S, SA
animtype  = Hard
damage = Ceil(fvar(2)*87)
priority  = 5
guardflag = M
pausetime = 0,(Var(13):=18)+(Var(12):=24008)-24008
guard.pausetime = 2, 2
sparkno = S8000
sparkxy = 0,Ceil(P2Dist Y/2) - 56
guard.sparkno = S8110
hitsound   = S1, Floor(Random/250)+6
guardsound = S2, Floor(Random/250)
ground.type = High
ground.slidetime = 37
ground.hittime = 37
guard.ctrltime = 18
ground.velocity = -12+10*(NumTarget>0), -5*(NumTarget>0)
guard.velocity = -5.4
air.velocity = -2, -5
yaccel = .5
getpower = 220,110
fall = (NumTarget>0)
fall.recover = 0
ID = 240

[State 240, 3-1]
type = HitDef
trigger1 = AnimElemTime(8) = 0
trigger1 = !MoveContact
attr = S, SA
animtype  = Hard
damage = Ceil(fvar(2)*87)
priority  = 5
guardflag = M
pausetime = 18,18
guard.pausetime = 2, 2
sparkno = S8000
sparkxy = 0,Ceil(P2Dist Y/2) - 72
guard.sparkno = S8110
hitsound   = S1, Floor(Random/250)+6
guardsound = S2, Floor(Random/250)
ground.type = High
ground.slidetime = 37
ground.hittime = 37
guard.ctrltime = 18
ground.velocity = -12+10*(NumTarget>0), -5*(NumTarget>0)
guard.velocity = -5.4
air.velocity = -2, -5
yaccel = .5
getpower = 220,110
fall = (NumTarget>0)
fall.recover = 0
ID = 240
NoChainID = 240

[State 240, Blood]
type = Helper
trigger1 = MoveHit
trigger1 = NumTarget
name = "Blood"
ID = 240
pos = Ceil(P2Dist X), Ceil(P2Dist Y) - 56
stateno = 8050
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = MoveGuarded
value = MoveGuarded * 241
ctrl = !MoveGuarded
ignorehitpause = 1

;---------------------------------------------------------------------------
; 弾かれ
[Statedef 241]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0
anim = 241
sprpriority = 2

[State 241,1]
type = VarAdd;-6,-10,-20
trigger1 = Time = 0
fvar(1) = -10
ignorehitpause = 1
persistent = 0

[State 241, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 遠立ち強斬りA
[Statedef 245]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 45
ctrl = 0
velset = 0,0
anim = 245
sprpriority = 1

[State 245, 1]
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
value = 0, 2

[State 245, 2]
type = Explod
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(11) < 0
anim = 20037+AnimElemNo(-(HitPauseTime>0))
ID = 245
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 245, 3]
type = HitDef
trigger1 = AnimElemTime(8) = 1
attr = S, SA
animtype  = Hard
damage = Ceil(fvar(2)*174)
priority  = 5
guardflag = MA
pausetime = 0,(Var(13):=18)+(Var(12):=24509)-24509
guard.pausetime = 2, 2
sparkno = S8000
sparkxy = 0,Ceil(P2Dist Y/2) - 36
guard.sparkno = S8110
hitsound   = S1, Floor(Random/250)+6
guardsound = S2, Floor(Random/250)
ground.type = High
ground.slidetime = 37
ground.hittime = 37
ground.velocity = -12+10*(NumTarget>0), -5*(NumTarget>0)
guard.velocity = -5.4
guard.ctrltime = 18
air.velocity = -2, -5
yaccel = .5
getpower = 220,110
fall = (NumTarget>0)
fall.recover = 0
ID = 245

[State 245, 3-1]
type = HitDef
trigger1 = AnimElemTime(9) = 0
trigger1 = !MoveContact
attr = S, SA
animtype  = Hard
damage = Ceil(fvar(2)*174)
priority  = 5
guardflag = MA
pausetime = 18,18
guard.pausetime = 2, 2
sparkno = S8000
sparkxy = 0,Ceil(P2Dist Y/2) - 36
guard.sparkno = S8110
hitsound   = S1, Floor(Random/250)+6
guardsound = S2, Floor(Random/250)
ground.type = High
ground.slidetime = 37
ground.hittime = 37
ground.velocity = -12+10*(NumTarget>0), -5*(NumTarget>0)
guard.velocity = -5.4
guard.ctrltime = 18
air.velocity = -2, -5
yaccel = .5
getpower = 220,110
fall = (NumTarget>0)
fall.recover = 0
ID = 245
NoChainID = 245

[State 245, Blood]
type = Helper
trigger1 = MoveHit
trigger1 = NumTarget
name = "Blood"
ID = 245
pos = Ceil(P2Dist X), Ceil(P2Dist Y) - 36
stateno = 8050
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 245, 4]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = MoveGuarded
value = MoveGuarded * 247
ctrl = !MoveGuarded
ignorehitpause = 1

;---------------------------------------------------------------------------
; 遠立ち強斬りB
[Statedef 246]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 45
ctrl = 0
velset = 0,0
anim = 246
sprpriority = 1

[State 246, 1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 0, 2

[State 246, 2]
type = Explod
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(7) < 0
anim = 20048+AnimElemNo(-(HitPauseTime>0))
ID = 246
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 246, 3]
type = HitDef
trigger1 = AnimElemTime(4) = 1
attr = S, SA
animtype  = Hard
damage = Ceil(fvar(2)*174)
priority  = 5
guardflag = MA
pausetime = 18,18
guard.pausetime = 2, 2
sparkno = S8000
sparkxy = 0,Ceil(P2Dist Y/2) - 36
guard.sparkno = S8110
hitsound   = S1, Floor(Random/250)+6
guardsound = S2, Floor(Random/250)
ground.type = High
ground.slidetime = 37
ground.hittime = 37
guard.ctrltime = 18
ground.velocity = -12+10*(NumTarget>0), -5*(NumTarget>0)
guard.velocity = -5.4
air.velocity = -2, -5
yaccel = .5
getpower = 220,110
fall = (NumTarget>0)
fall.recover = 0
ID = 200

[State 246, Blood]
type = Helper
trigger1 = MoveHit
trigger1 = NumTarget
name = "Blood"
ID = 240
pos = Ceil(P2Dist X), Ceil(P2Dist Y) - 36
stateno = 8051
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 246, 4]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = MoveGuarded
value = MoveGuarded * 248
ctrl = !MoveGuarded
ignorehitpause = 1

;---------------------------------------------------------------------------
; A弾かれ
[Statedef 247]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0
anim = 247
sprpriority = 2

[State 247,1]
type = VarAdd;-6,-10,-20
trigger1 = Time = 0
fvar(1) = -10
ignorehitpause = 1
persistent = 0

[State 247, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; B弾かれ
[Statedef 248]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0
anim = 248
sprpriority = 2

[State 248,1]
type = VarAdd;-6,-10,-20
trigger1 = Time = 0
fvar(1) = -10
ignorehitpause = 1
persistent = 0

[State 248, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ６キック
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 40
ctrl = 0
velset = 0,0
anim = 250
sprpriority = 1

[State 250, 1]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 0, 5

[State 250, 2]
type = VelSet
trigger1 = AnimElemTime(3) = 0
trigger2 = AnimElemTime(4) = 0
x = 4.3
y = -4.8*(AnimElemTime(3)=0)

[State 250, 3]
type = StateTypeSet
trigger1 = AnimElemTime(3) = 0
statetype = A
physics = N

[State 250, 4]
type = VelAdd
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(4) < 0
y = .5

[State 250, 5]
type = PosSet
trigger1 = AnimElemTime(4) = 0
y = 0

[State 250, 6]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
statetype = S
physics = S

[State 250, 7]
type = HitDef
trigger1 = AnimElemTime(5) = 1
attr = S, NA
animtype  = Light
damage = Ceil(fvar(2)*40)
guardflag = MA
pausetime = 8, 8
sparkno = S8010
sparkxy = 0,-36
guard.sparkno = S8110
hitsound   = S2, Floor(Random/250)
guardsound = S2, Floor(Random/250)
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -3.6
guard.velocity = -3.6
air.velocity = -2,-4
getpower = 200,100

[State 250, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 天破脚
[Statedef 260]
type    = C
movetype= A
physics = N
juggle  = 2
poweradd= 40
ctrl = 0
anim = 260

[State 260, 1]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 0, 4

[State 260, 2]
type = HitDef
trigger1 = AnimElemTime(4) = 1
attr = S, NA
animtype  = back
air.animtype = back
fall.animtype = back
damage = Ceil(fvar(2)*25)
guardflag = LA
pausetime = 5,5
sparkno = S8010
guard.sparkno = S8110
sparkxy = 0,-32
hitsound   = S2, Floor(Random/250)
guardsound = S2, Floor(Random/250)
ground.type = Trip
ground.slidetime = 37
ground.hittime = 37
ground.velocity = -2,-5
guard.velocity = -5
air.velocity = -2,-5
fall = 1
fall.recover = 0
getpower = 20,10

[State 260, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; リープアタック
[Statedef 270]
type    = A
movetype= I
physics = N
juggle  = 2
poweradd= 40
ctrl = 0
velset = -.2,-3.2
anim = 270

[State 270, 1]
type = Helper
trigger1 = AnimElemTime(3) = 0
name = "Particle"
ID = 270
pos = 35, -70
stateno = 20060
ownpal = 1

[State 270, 2]
type = Helper
trigger1 = AnimElemTime(4) = 3
name = "Icicle"
ID = 271
pos = 35, -70
stateno = 20070
ownpal = 1

[State 270, 3]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 230, 1

[State 270, 4]
type = HitDef
trigger1 = AnimElemTime(5) = 3
attr = A, NA
animtype  = hard
air.animtype = back
fall.animtype = back
damage = Ceil(fvar(2)*62)
guardflag = HA
pausetime = 10, 10
sparkno = S8000
sparkxy = 0,-24
guard.sparkno = S8110
hitsound = S1, Floor(Random/250)
guardsound = S2, Floor(Random/250)
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -5.4
guard.velocity = -5.4
air.velocity = -2,-4.5
getpower = 20,10
ID = 600

[State 270, 5]
type = VelAdd
trigger1 = 1
y = .18

[State 270, Blood]
type = Helper
trigger1 = MoveHit
trigger1 = NumTarget
name = "Blood"
ID = 270
pos = Ceil(P2Dist X), -24
stateno = 8051
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 270, 7]
type = VarAdd
trigger1 = !MoveHit
trigger1 = Time = 18
fvar(1) = -10

[State 270, 8]
type = StateTypeSet
trigger1 = AnimElemTime(3) = 0
movetype = A

[State 270, 9]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 271

;---------------------------------------------------------------------------
; リープ着地
[Statedef 271]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 271
velset = 0,0

[State 271, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 271, 2]
type = PlaySnd
trigger1 = Time = 1
value = 40, 0

[State 271, 3]
type = MakeDust
trigger1 = Time = 2
pos = -5,-2
spacing = 1

[State 271, 4]
type = CtrlSet
trigger1 = Time = 7
value = 1

[State 271, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ダッシュ弱斬り
[Statedef 275]
type    = S
movetype= A
physics = N
juggle  = 2
poweradd= 40
ctrl = 0
anim = 275

[State 275, 1]
type = VelMul
trigger1 = 1
x = .9

[State 275, 2]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 0, 0

[State 275, 3]
type = Explod
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(7) < 0
anim = 20000+AnimElemNo(-(HitPauseTime>0))
ID = 275
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 275, 4]
type = HitDef
trigger1 = AnimElemTime(4) = 1
attr = S, NA
damage = Ceil(fvar(2)*28)
animtype = Light
air.animtype = back
fall.animtype = back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 5, 5
sparkno = S8000
sparkxy = 0, -56
guard.sparkno = S8110
hitsound = S1, Floor(Random/250)
guardsound = S2, Floor(Random/250)
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -3.6
guard.velocity = -3.6
air.velocity = -2,-4
air.type = High
getpower = 24,12
ID = 200

[State 275, Blood]
type = Helper
trigger1 = MoveHit
trigger1 = NumTarget
name = "Blood"
ID = 275
pos = Ceil(P2Dist X), -56
stateno = 8052
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 275, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ダッシュキック
[Statedef 280]
type    = S
movetype= A
physics = N
juggle  = 2
poweradd= 40
ctrl = 0
anim = 280

[State 280, 1]
type = VelMul
trigger1 = AnimElemTime(2) > 0
x = .9

[State 280, 2]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
trigger2 = AnimElemTime(7) = 0
value = 0, 4

[State 280, 3]
type = HitDef
trigger1 = AnimElemTime(3) = 1
attr = C, NA
damage    = 8
animtype  = Hard
air.animtype = back
fall.animtype = back
guardflag = L
pausetime = 4, 4
sparkno = S8010
guard.sparkno = S8110
sparkxy = 0,-8
hitsound   = S2, Floor(Random/250)
guardsound = S2, Floor(Random/250)
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -5.4
guard.velocity = -5.4
air.velocity = -2,-4
getpower = 20,10

[State 280, 5]
type = ChangeState
trigger1 = AnimElemTime(7) = 0
value = 281

;---------------------------------------------------------------------------
; ダッシュキック(2段目)
[Statedef 281]
type    = S
movetype= A
physics = N
juggle  = 2
ctrl = 0
hitcountpersist = 1

[State 280, 1]
type = VelMul
trigger1 = AnimElemTime(10) < 0
x = .9

[State 280, 2]
type = HitDef
trigger1 = AnimElemTime(8) = 1
trigger1 = HitCount > 0
attr = C, NA
damage    = 8
animtype  = Hard
air.animtype = back
fall.animtype = back
guardflag = L
pausetime = 4, 4
sparkno = S8010
guard.sparkno = S8110
sparkxy = 0,-32
hitsound   = S2, Floor(Random/250)
guardsound = S2, Floor(Random/250)
ground.type = Trip
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3,-5
guard.velocity = -5.4
air.velocity = -2,-5
getpower = 20,10
fall = 1
fall.recover = 0

[State 280, 3]
type = HitDef
trigger1 = AnimElemTime(8) = 1
trigger1 = HitCount = 0
attr = C, NA
damage    = 8
animtype  = Hard
air.animtype = back
fall.animtype = back
guardflag = L
pausetime = 4, 4
sparkno = S8010
guard.sparkno = S8110
sparkxy = 0,-32
hitsound   = S2, Floor(Random/250)
guardsound = S2, Floor(Random/250)
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -5.4
guard.velocity = -5.4
air.velocity = -2,-5
getpower = 20,10

[State 280, 5]
type = StateTypeSet
trigger1 = AnimElemTime(10) = 0
statetype = A
movetype = I

[State 280, 6]
type = VelSet
trigger1 = AnimElemTime(10) = 0
x = -3
y = -8

[State 280, 7]
type = VelAdd
trigger1 = StateType = A
y = .5

[State 280, 8]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52
ctrl = 1

;---------------------------------------------------------------------------
; ダッシュ中斬り
[Statedef 285]
type    = S
movetype= A
physics = N
juggle  = 2
poweradd= 40
ctrl = 0
anim = 285

[State 285, 0]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 0, 5

[State 285, 1]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 220, 4
channel = 4

[State 285, 2]
type = HitDef
trigger1 = AnimElemTime(3) = 1
attr = S, NA
animtype  = Hard
air.animtype = back
fall.animtype = back
damage = Ceil(fvar(2)*23)
guardflag = MA
pausetime = 4,4
sparkno = S8010
guard.sparkno = S8110
sparkxy = 0,-40
hitsound   = S2, Floor(Random/250)
guardsound = S2, Floor(Random/250)
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -3
guard.velocity = -5
air.velocity = -2,-4.5
getpower = 20,10
p2facing = 1
forcestand = 1

[State 285, 3]
type = VelMul
trigger1 = 1
x = .9

[State 285, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ダッシュ強斬り
[Statedef 290]
type    = S
movetype= A
physics = N
juggle  = 2
poweradd= 45
ctrl = 0
anim = 290
sprpriority = 1

[State 290, 1]
type = VelMul
trigger1 = 1
x = .9

[State 290, 2]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 0, 2

[State 290, 3]
type = Explod
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(10) < 0
anim = 20027+AnimElemNo(-(HitPauseTime>0))
ID = 290
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 290, 4]
type = HitDef
trigger1 = AnimElemTime(6) = 1
attr = S, SA
animtype  = Hard
damage = Ceil(fvar(2)*88)
priority  = 5
guardflag = M
pausetime = 0,(Var(13):=18)+(Var(12):=29007)-29007
guard.pausetime = 0, 10
sparkno = S8000
sparkxy = 0,Ceil(P2Dist Y/2) - 56
guard.sparkno = S8110
hitsound   = S1, Floor(Random/250)+6
guardsound = S2, Floor(Random/250)
ground.type = High
ground.slidetime = 37
ground.hittime = 37
guard.ctrltime = 18
ground.velocity = -4, -6
air.velocity = -4, -6
yaccel = .5
getpower = 220,110
fall = 1
fall.recover = 0
ID = 290

[State 290, 4-1]
type = HitDef
trigger1 = AnimElemTime(7) = 0
trigger1 = !Movehit
attr = S, SA
animtype  = Hard
damage = Ceil(fvar(2)*88)
priority  = 5
guardflag = M
pausetime = 18,18
guard.pausetime = 0, 10
sparkno = S8000
sparkxy = 0,Ceil(P2Dist Y/2) - 56
guard.sparkno = S8110
hitsound   = S1, Floor(Random/250)+6
guardsound = S2, Floor(Random/250)
ground.type = High
ground.slidetime = 37
ground.hittime = 37
guard.ctrltime = 18
ground.velocity = -4, -6
air.velocity = -4, -6
yaccel = .5
getpower = 220,110
fall = 1
fall.recover = 0
ID = 290
NoChainID = 290

[State 290, Blood]
type = Helper
trigger1 = MoveHit
trigger1 = NumTarget
name = "Blood"
ID = 290
pos = Ceil(P2Dist X), Ceil(P2Dist Y) - 56
stateno = 8050
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 290, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ダウン追い討ち
[Statedef 295]
type    = S
movetype= A
physics = S
poweradd= 40
ctrl = 0
velset = 0,0
anim = 295
sprpriority = 1

[State 295, 1]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = 0, 0

[State 295, 2]
type = HitDef
trigger1 = AnimElemTime(6) = 1
attr = S, NA
animtype  = Hard
damage = Ceil(fvar(2)*24)
priority  = 5
hitflag = FD
guardflag = MA
pausetime = 0, 8
guard.pausetime = 10, 10
sparkno = S8000
sparkxy = 0, 0
guard.sparkno = S8110
hitsound   = S1, Floor(Random/250)+6
guardsound = S2, Floor(Random/250)
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
down.hittime = 20
guard.ctrltime = 10
ground.velocity = 0
air.velocity = 0
getpower = 24, 12
fall = 1
fall.recover = 0

[State 295, 3]
type = Helper
trigger1 = MoveHit
trigger1 = NumTarget
name = "Blood"
ID = 205
pos = 40, 0
stateno = 8052
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 295, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 強ダウン追い討ち
[Statedef 296]
type    = A
movetype= A
physics = N
poweradd= 45
ctrl = 0
velset = (P2Dist X/64 > 0)*P2Dist X/64-(P2Dist X/64 > 3)*(P2Dist X/64-3),-16
anim = 296
sprpriority = 1

[State 296, 0]
type = PlayerPush
trigger1 = 1
value = 0

[State 296, 1]
type = VelAdd
trigger1 = Pos Y < 0
y = .8

[State 296, 2]
type = PlaySnd
trigger1 = AnimElemTime(12) = 0
value = 230, 1

[State 296, 3]
type = Helper
trigger1 = AnimElemTime(12) = 0
name = "Additional"
ID = 296
pos = 0, 48
stateno = 20296
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0
size.height = 0

[State 296, 6]
type = HitDef
trigger1 = Vel Y > 0
trigger1 = Vel Y >= 0
attr = A, NA
animtype  = Hard
damage = Ceil(fvar(2)*48)
priority  = 5
hitflag = FD
guardflag = MA
pausetime = 0, 10;20
guard.pausetime = 10, 10
sparkno = S8000
sparkxy = 0, 0
guard.sparkno = S8110
hitsound   = S1, Floor(Random/250)+6
guardsound = S2, Floor(Random/250)
ground.type = Low
ground.slidetime = 37
ground.hittime = 37
down.hittime = 37
guard.ctrltime = 18
ground.velocity = 0
air.velocity = 0
getpower = 50, 25
fall = 1
fall.recover = 0
persistent = 0

[State 296, 8]
type = EnvShake
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
time = 20
ampl = -10
phase = 20
persistent = 0

[State 296, 9]
type = PosSet
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
y = 0

[State 296, 10]
type = VelSet
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
x = 0
y = 0

[State 296, 11]
type = Helper
trigger1 = MoveHit
trigger1 = NumTarget
name = "Blood"
ID = 205
pos = 0, 0
stateno = 8052
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 296, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ヒット操作
[Statedef 300]
type    = U
movetype= U
physics = U
movehitpersist = 1

[State 300, 1]
type = ChangeState
trigger1 = !NumTarget
ignorehitpause = 1
value = 301

[State 300, 2]
type = TargetState
trigger1 = Time = 0
trigger1 = Target,StateType = A
trigger1 = Target,StateNo != [5300,5305]
ignorehitpause = 1
value = 5300

[State 300, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = (StateType = C)*11 + (StateType = A)*699
ctrl = 1

;---------------------------------------------------------------------------
;ヒット操作2
[Statedef 301]
type    = U
movetype= U
physics = U
movehitpersist = 1

[State 301, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = (StateType = C)*11 + (StateType = A)*699
ctrl = 1

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[Statedef 400]
type    = C
movetype= A
physics = C
ctrl = 0
juggle  = 1
anim = 400
sprpriority = 2

[State 400, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 3

[State 400, 2]
type = HitDef
trigger1 = AnimElemTime(2) = 1
attr = C, NA
damage = Ceil(fvar(2)*12)
animtype  = Light
air.animtype = back
fall.animtype = back
guardflag = MA
pausetime = 4, 4
sparkno = S8010
guard.sparkno = S8110
sparkxy = 0,-32
hitsound   = S2, Floor(Random/250)
guardsound = S2, Floor(Random/250)
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -3.6
guard.velocity = -3.6
air.velocity = -2,-4
getpower = 20,10

[State 400, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;しゃがみ弱キック
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 1
poweradd= 10
ctrl = 0
anim = 410
sprpriority = 2

[State 410, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 5

[State 410, 2]
type = HitDef
trigger1 = AnimElemTime(3) = 1
attr = C, NA
damage    = 8
animtype  = Light
air.animtype = back
fall.animtype = back
guardflag = L
pausetime = 4, 4
sparkno = S8010
guard.sparkno = S8110
sparkxy = 0,-8
hitsound   = S2, Floor(Random/250)
guardsound = S2, Floor(Random/250)
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -3.6
guard.velocity = -3.6
air.velocity = -2,-4
getpower = 20,10

[State 410, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;しゃがみ中斬り
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 2
poweradd= 40
ctrl = 0
velset = 0,0
anim = 420

[State 420, 1]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 0, 1

[State 420, 2]
type = Explod
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(6) < 0
anim = 20097+AnimElemNo(-(HitPauseTime>0))
ID = 420
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 420, 3]
type = HitDef
trigger1 = AnimElemTime(3) = 1
attr = S, NA
animtype  = Medium
air.animtype = back
fall.animtype = back
damage = Ceil(fvar(2)*68)
guardflag = MA
pausetime = 10,10
guard.pausetime = 2, 2
sparkno = S8000
guard.sparkno = S8110
sparkxy = 0,-16
hitsound = S1, Floor(Random/167)
guardsound = S2, Floor(Random/250)
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
guard.ctrltime = 10
ground.velocity = -5.4
guard.velocity = -5.4
air.velocity = -2,-4.5
getpower = 20,10
ID = 400

[State 420, Blood]
type = Helper
trigger1 = MoveHit
trigger1 = NumTarget
name = "Blood"
ID = 220
pos = Ceil(P2Dist X), -16
stateno = 8052
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 420, 5]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = MoveGuarded
value = 11+MoveGuarded * 410
ctrl = !MoveGuarded
ignorehitpause = 1

;---------------------------------------------------------------------------
; 弾かれ
[Statedef 421]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0
anim = 421
sprpriority = 2

[State 421,1]
type = VarAdd
trigger1 = Time = 0
fvar(1) = -5
ignorehitpause = 1
persistent = 0

[State 421, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; しゃがみ強斬り
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 2
poweradd= 40
ctrl = 0
velset = 0,0
anim = 430
sprpriority = 1

[State 430, 1]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 0, 2

[State 430, 2]
type = Explod
trigger1 = AnimElemTime(4) >= 0
trigger1 = AnimElemTime(8) < 0
anim = 20106+AnimElemNo(-(HitPauseTime>0))
ID = 430
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 430, 3]
type = HitDef
trigger1 = AnimElemTime(5) = 1
attr = S, NA
animtype  = Hard
damage = Ceil(fvar(2)*174)
guardflag = LA
pausetime = 18,18
guard.pausetime = 2, 2
sparkno = S8000
guard.sparkno = S8110
sparkxy = 0,-16
hitsound   = S1, Floor(Random/250)+6
guardsound = S2, Floor(Random/250)
ground.type = Trip
ground.slidetime = 37
ground.hittime = 37
guard.ctrltime = 18
ground.velocity = -2,-4.5
guard.velocity = -5.4
air.velocity = -2,-4.5
fall = 1
fall.recover = 0
getpower = 20,10

[State 430, Blood]
type = Helper
trigger1 = MoveHit
trigger1 = NumTarget
name = "Blood"
ID = 430
pos = Ceil(P2Dist X), -16
stateno = 8052
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 430, 5]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = MoveGuarded
value = 11+MoveGuarded * 420
ctrl = !MoveGuarded
ignorehitpause = 1

;---------------------------------------------------------------------------
; 弾かれ
[Statedef 431]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0
anim = 431
sprpriority = 2

[State 431,1]
type = VarAdd
trigger1 = Time = 0
fvar(1) = -10
ignorehitpause = 1
persistent = 0

[State 431, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
ジャンプ弱斬り
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 40
ctrl = 0
anim = 600

[State 600, 1]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 0, 1

[State 600, 2]
type = Explod
trigger1 = Pos Y < 0
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(6) < 0
anim = 20137+AnimElemNo(-(HitPauseTime>0))
ID = 600
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 600, 3]
type = HitDef
trigger1 = P2Dist X > 4
trigger1 = AnimElemTime(3) = 0
attr = S, NA
animtype  = Medium
air.animtype = back
fall.animtype = back
damage = Ceil(fvar(2)*48)
guardflag = HA
pausetime = 10,10
guard.pausetime = 5, 5
sparkno = S8000
guard.sparkno = S8110
sparkxy = 0,-48
hitsound = S1, Floor(Random/200)
guardsound = S2, Floor(Random/250)
ground.type = High
ground.hittime = 8+(Pos Y>=-20)*12
ground.slidetime = 20
guard.ctrltime = 10
ground.velocity = -5.4
guard.velocity = -5.4
air.hittime = 32
air.velocity = -2,-4
getpower = 20,10
ID = 600

[State 600, Blood]
type = Helper
trigger1 = MoveHit
trigger1 = NumTarget
name = "Blood"
ID = 620
pos = Ceil(P2Dist X), -48
stateno = 8050
ownpal = 1
persistent = 0
ignorehitpause = 1

;---------------------------------------------------------------------------
;ジャンプキック
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 10
ctrl = 0
anim = 610
sprpriority = 2

[State 610, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 4

[State 610, 3]
type = HitDef
trigger1 = AnimElemTime(3) = 1
trigger1 = P2Dist X > 4
attr = A, NA
damage = Ceil(fvar(2)*10)
guardflag = HA
priority = 4
animtype = Medium
air.animtype = back
fall.animtype = back
pausetime = 10,10
guard.pausetime = 5, 5
sparkno = S8010
guard.sparkno = S8110
sparkxy = 0,-32
hitsound   = S2, Floor(Random/250)
guardsound = S2, Floor(Random/250)
ground.type = High
ground.slidetime = 37
ground.hittime = 10+(Pos Y>=-20)*27
air.hittime = 32
ground.velocity = -5
guard.velocity = -5
air.velocity =  -2, -4
getpower = 60,30

;---------------------------------------------------------------------------
;ジャンプ中斬り
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 40
ctrl = 0
anim = 620

[State 620, 1]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 0, 1

[State 620, 2]
type = Explod
trigger1 = Pos Y < 0
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(6) < 0
anim = 20147+AnimElemNo(-(HitPauseTime>0))
ID = 600
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 620, 3]
type = HitDef
trigger1 = P2Dist X > 4
trigger1 = AnimElemTime(3) = 0
attr = S, NA
animtype  = Medium
air.animtype = back
fall.animtype = back
damage = Ceil(fvar(2)*64)
guardflag = HA
pausetime = 10,10
guard.pausetime = 5, 5
sparkno = S8000
guard.sparkno = S8110
sparkxy = 0,-48
hitsound = S1, Floor(Random/167)
guardsound = S2, Floor(Random/250)
ground.type = High
ground.slidetime = 20
ground.hittime = 8+(Pos Y>=-20)*12
guard.ctrltime = 10
ground.velocity = -5.4
guard.velocity = -5.4
air.hittime = 32
air.velocity = -2,-4.5
getpower = 20,10
ID = 600

[State 620, Blood]
type = Helper
trigger1 = MoveHit
trigger1 = NumTarget
name = "Blood"
ID = 620
pos = Ceil(P2Dist X), -48
stateno = 8052
ownpal = 1
persistent = 0
ignorehitpause = 1

;---------------------------------------------------------------------------
;ジャンプ強斬り
[Statedef 630]
type    = A
movetype= A
physics = A
ctrl = 0
sprpriority = 1

[State 630, 0]
type = ChangeAnim
trigger1 = Anim != 630
value = 630

[State 630, 0-1]
type = PowerAdd
trigger1 = AnimElemTime(1) = 0
value = 40

[State 630, 1]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 0, 2
channel = 0
lowprioryty = 1

[State 630, 2]
type = Explod
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(7) < 0
anim = 20158+AnimElemNo(-(HitPauseTime>0))
ID = 600
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 630, 3]
type = HitDef
trigger1 = P2Dist X > 4
trigger1 = AnimElemTime(3) >= 1
trigger1 = Vel Y < 0
trigger1 = !MoveContact
attr = S, NA
animtype  = Hard
air.animtype = back
fall.animtype = back
damage = Ceil(fvar(2)*87)
guardflag = H
pausetime = 18*(AnimElemTime(4)>=0),(Var(13):=18)+(Var(12):=63004)-63004
guard.pausetime = 5, 5
sparkno = S8000
guard.sparkno = S8110
sparkxy = 0,-48
hitsound   = S1, Floor(Random/250)+6
guardsound = S2, Floor(Random/250)
ground.type = High
ground.slidetime = 37
ground.hittime = 37
guard.ctrltime = 18
ground.velocity = -12+10*(NumTarget>0), -5*(NumTarget>0)
guard.velocity = -5.4
air.hittime = 32
air.velocity = -2,-5
getpower = 20,10
fall = (NumTarget>0)
ID = 600

[State 630, 4]
type = HitDef
trigger1 = P2Dist X > 4
trigger1 = AnimElemTime(3) >= 1
trigger1 = Vel Y >= 0
trigger1 = !MoveContact
attr = S, NA
animtype  = Hard
air.animtype = back
fall.animtype = back
damage = Ceil(fvar(2)*87)
guardflag = HA
pausetime = 18*(AnimElemTime(4)>=0),(Var(13):=18)+(Var(12):=63004)-63004
guard.pausetime = 5, 5
sparkno = S8000
guard.sparkno = S8110
sparkxy = 0,-48
hitsound   = S1, Floor(Random/250)+6
guardsound = S2, Floor(Random/250)
ground.type = High
ground.slidetime = 37
ground.hittime = 10+(Pos Y>=-20)*27
guard.ctrltime = 18
ground.velocity = -12+10*(NumTarget>0), -5*(NumTarget>0)
guard.velocity = -5.4
air.hittime = 32
air.velocity = -2,-5
getpower = 20,10
fall = (NumTarget>0)
ID = 600

[State 630, Blood]
type = Helper
trigger1 = MoveHit
trigger1 = NumTarget
name = "Blood"
ID = 630
pos = Ceil(P2Dist X), -48
stateno = 8050
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 630, 5]
type = ChangeState
trigger1 = !MoveContact
trigger1 = Time = 1
value = 630

;---------------------------------------------------------------------------
;自由落下
[Statedef 699]
type    = A
movetype= I
physics = A
ctrl = 1

[State 699, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 44
elem = 5

;---------------------------------------------------------------------------
; 弾かれ
[Statedef 700]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0
anim = 700 + (PrevStateNo = 225) + (PrevStateNo = 240) * 2
sprpriority = 2

[State 700,1]
type = VarAdd
trigger1 = Time = 0
fvar(1) = -3-2*(PrevStateNo = 225)-5*(PrevStateNo = 240)
ignorehitpause = 1
persistent = 0

[State 700, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 前投げ
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 800
sprpriority = -1

[State 800, 0]
type = SprPriority
trigger1 = AnimElemTime(2) = 0
value = 1

[State 800, 1]
type = HitDef
trigger1 = AnimElemTime(2) = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
animtype = hard
sparkno = -1
p2facing = 1
ground.hittime = 24
ground.velocity = -4,-4
guard.dist = 0
numhit = 0

[State 800, 2]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
movetype = I

[State 800, 3]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = MoveHit
trigger2 = NumTarget
value = (MoveHit>0)*(NumTarget>0)*810
ctrl = (AnimTime = 0)

;---------------------------------------------------------------------------
; 後ろ投げ
[Statedef 801]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 800
sprpriority = -1

[State 801, 0]
type = SprPriority
trigger1 = AnimElemTime(2) = 0
value = 1

[State 801, 1]
type = HitDef
trigger1 = AnimElemTime(2) = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
animtype = hard
sparkno = -1
p2facing = 1
ground.hittime = 24
ground.velocity = -4,-4
guard.dist = 0
numhit = 0

[State 801, 2]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
movetype = I

[State 801, 3]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = MoveHit
trigger2 = NumTarget
value = (MoveHit>0)*(NumTarget>0)*820
ctrl = (AnimTime = 0)

;---------------------------------------------------------------------------
; 前崩し
[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810
sprpriority = 1

[State 810, 1]
type = TargetState
trigger1 = Time = 0
value = 811

[State 810, 2]
type = PlaySnd
trigger1 = Time = 0
value = 20, 3

[State 810, 3]
type = Width
trigger1 = AnimElemTime(2) < 0 
edge = 40,0

[State 810, 4]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
pos = 40, 0

[State 810, 5]
type = SprPriority
trigger1 = AnimElemTime(2) = 0
value = -1

[State 810, 6]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
pos = 0, 0

[State 810, 7]
type = SprPriority
trigger1 = AnimElemTime(4) = 0
value = 1

[State 810, 8]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 10
pos = 40, 0

[State 810, 9]
type = Explod
trigger1 = AnimElemTime(5) = 0
anim = 8020
ID = 810
pos = 48,-48
sprpriority = 3
ownpal = 1

[State 810, 10]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = 2, 3

[State 810, 11]
type = ChangeState
triggerall = AnimElemTime(5) > 5
triggerall = NumTarget
trigger1 = command = "a" || command = "x" || command = "z"
trigger2 = Var(20)
trigger2 = target,Life > 200
value = 850

[State 810, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;前崩し相手の設定

[Statedef 811]
type    = A
movetype= H
physics = N

[State 811, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 811

[State 811, 2]
type = ChangeAnim
Trigger1 = Anim = 811
Trigger1 = AnimTime = 0
trigger1 = AuthorName = "PriPri Man" || AuthorName = "Warusaki3" || AuthorName = "H”"
value = 5002+(selfanimexist(5970))*968

[State 811, 2]
type = ChangeAnim
Trigger1 = Anim = 811
Trigger1 = AnimTime = 0
Trigger2 = Anim = 5002
Trigger2 = AnimTime = 0
Trigger3 = Anim = 5007
Trigger3 = Time < 56
value = 5007-(Anim=811)*5

[State 811, 3]
type = VelSet
trigger1 = Time = 34
x = -4

[State 811, 4]
type = VelMul
trigger1 = 1
x = .93*(Time<61)

[State 811, 5]
type = VelSet
trigger1 = Time > 71
x = 0

[State 811, 7]
type = SelfState
trigger1 = Time > 75
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 後ろ崩し
[Statedef 820]
type    = S
movetype= A
physics = N
anim = 820
sprpriority = 1

[State 820, 1]
type = TargetState
trigger1 = Time = 0
value = 821

[State 820, 2]
type = PlaySnd
trigger1 = Time = 0
value = 20, 3

[State 820, 3]
type = Width
trigger1 = 1
edge = 40,0

[State 820, 4]
type = TargetBind
trigger1 = AnimElemTime(2) < 0 
pos = 40, 0

[State 820, 5]
type = SprPriority
trigger1 = AnimElemTime(2) = 0
value = -1

[State 820, 6]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
pos = 0, 0

[State 820, 7]
type = TargetBind
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = -10, 0

[State 820, 8]
type = Turn
trigger1 = AnimElemTime(5) = 0

[State 820, 10]
type = TargetBind
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = 20, 0

[State 810, 11]
type = ChangeState
triggerall = AnimElemTime(6) > 1
triggerall = NumTarget
trigger1 = command = "a" || command = "x" || command = "z"
trigger2 = Var(20)
trigger2 = target,Life > 200
value = 850

[State 820, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;後ろ崩し相手の設定

[Statedef 821]
type    = A
movetype= H
physics = N

[State 821, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 821

[State 821, 2]
type = ChangeAnim
Trigger1 = Anim = 821
Trigger1 = AnimTime = 0
trigger1 = AuthorName = "PriPri Man" || AuthorName = "Warusaki3" || AuthorName = "H”"
value = 5002+(selfanimexist(5970))*968+(selfanimexist(5971))

[State 821, 2]
type = ChangeAnim
Trigger1 = Anim = 821
Trigger1 = AnimTime = 0
Trigger2 = Anim = 5002
Trigger2 = AnimTime = 0
Trigger3 = Anim = 5007
Trigger3 = Time < 76
value = 5007-(Anim=821)*5

[State 821, 3]
type = VelSet
trigger1 = Time = 50
x = 4

[State 821, 4]
type = VelMul
trigger1 = 1
x = .93*(Time<81)

[State 821, 5]
type = VelSet
trigger1 = Time > 86
x = 0

[State 821, 7]
type = SelfState
trigger1 = Time > 91
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 崩し斬り
[Statedef 850]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 45
ctrl = 0
velset = 0,0
anim = IfElse(P2BodyDist X < 16,240,245+random%2)
sprpriority = 1

[State 850, 1]
type = PlaySnd
trigger1 = Anim = 240
trigger1 = AnimElemTime(3) = 0
trigger2 = Anim = 245
trigger2 = AnimElemTime(7) = 0
trigger3 = Anim = 246
trigger3 = AnimElemTime(2) = 0
value = 0, 2

[State 850, 2]
type = Explod
trigger1 = Anim = 240
trigger1 = AnimElemTime(4) >= 0
trigger1 = AnimElemTime(11) < 0
trigger2 = Anim = 245
trigger2 = AnimElemTime(3) >= 0
trigger2 = AnimElemTime(11) < 0
trigger3 = Anim = 246
trigger3 = AnimElemTime(2) >= 0
trigger3 = AnimElemTime(7) < 0
anim = 20026+AnimElemNo(-(HitPauseTime>0))+(Anim=245)*11+(Anim=246)*22
ID = 850
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 850, 3]
type = HitDef
trigger1 = Anim = 240
trigger1 = AnimElemTime(7) = 1
trigger2 = Anim = 245
trigger2 = AnimElemTime(8) = 1
trigger3 = Anim = 246
trigger3 = AnimElemTime(4) = 1
attr = S, SA
animtype  = Hard
damage = 96
priority  = 5
guardflag = M
pausetime = 16,16
guard.pausetime = 0, 10
sparkno = S8000
sparkxy = 0,Ceil(P2Dist Y/2) - 36
guard.sparkno = S8110
hitsound   = S1, Floor(Random/250)+2
guardsound = S2, Floor(Random/250)
ground.type = High
ground.slidetime = 37
ground.hittime = 37
ground.velocity = -3, -5
air.velocity = -3, -5
yaccel = .5
getpower = 60,30
fall = 1
fall.recover = 0

[State 850, Blood]
type = Helper
trigger1 = MoveHit
trigger1 = NumTarget
name = "Blood"
ID = 850
pos = Ceil(P2Dist X), Ceil(P2Dist Y) - 36
stateno = 8050
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 850, 4]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = MoveGuarded
value = MoveGuarded * ((anim=240)*241+(anim=245)*247+(anim=246)*248)
ctrl = !MoveGuarded
ignorehitpause = 1

;--------------------------------------------------------------------------- 
; 弱ルプッ(シ)・クアレ
[Statedef 1000] 
type    = S 
movetype= A
physics = S 
poweradd= 45 
velset = 0,0 
anim = 1000 
ctrl = 0 

[State 1000, 1] 
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 210, 0
channel = 0

[State 1000, 2] 
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 230, 0

[State 1000, 3]
type = Helper
trigger1 = AnimElemTime(4) = 0
name = "Qualle"
ID = 1000
pos = 51,-31
stateno = 21000
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0
size.height = 0

[State 1000, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- 
; 中ルプッ(シ)・クアレ
[Statedef 1010] 
type    = S 
movetype= A
physics = S 
poweradd= 45 
velset = 0,0 
anim = 1010 
ctrl = 0 

[State 1010, 1] 
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 210, 0
channel = 0

[State 1010, 2] 
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 230, 0

[State 1010, 3]
type = Helper
trigger1 = AnimElemTime(4) = 0
name = "Qualle"
ID = 1000
pos = 51,-31
stateno = 21010
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0
size.height = 0

[State 1010, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- 
; 強ルプッ(シ)・クアレ
[Statedef 1020] 
type    = S 
movetype= A
physics = S 
poweradd= 45 
velset = 0,0 
anim = 1020 
ctrl = 0 

[State 1020, 1] 
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 210, 0
channel = 0

[State 1020, 2] 
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 230, 0

[State 1020, 3]
type = Helper
trigger1 = AnimElemTime(4) = 0
name = "Qualle"
ID = 1000
pos = 51,-31
stateno = 21020
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0
size.height = 0

[State 1020, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- 
; 弱コンルノンノ
[Statedef 1100] 
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 45 
velset = 0,0 
anim = 1100 
ctrl = 0 
sprpriority = 1

[State 1100, 1] 
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
statetype = C
movetype = A

[State 1100, 2] 
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = 210, 1
channel = 0

[State 1100, 3] 
type = EnvShake
trigger1 = AnimElemTime(6) = 0
time = 25

[State 1100, 4] 
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
value = 230, 0

[State 1100, 4-1] 
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
value = 230, 1

[State 1100, 8]
type = Helper
trigger1 = AnimElemTime(7) = 0
name = "ConlNonno"
ID = 1100
pos = 32,0
stateno = 21100
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0
size.height = 0

[State 1100, 9]
type = NotHitBy
trigger1 = Time < 6
value = SCA

[State 1100, 10]
type = StateTypeSet
trigger1 = AnimElemTime(16) = 0
statetype = S
movetype = I

[State 1100, 11]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- 
; 中コンルノンノ
[Statedef 1110] 
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 45 
velset = 0,0 
anim = 1110 
ctrl = 0 
sprpriority = 1

[State 1110, 1] 
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
statetype = C
movetype = A

[State 1110, 2] 
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = 210, 1
channel = 0

[State 1110, 3] 
type = EnvShake
trigger1 = AnimElemTime(6) = 0
time = 25

[State 1110, 4] 
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
value = 230, 0

[State 1110, 5] 
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
value = 230, 1

[State 1110, 8]
type = Helper
trigger1 = AnimElemTime(7) = 0
name = "ConlNonno"
ID = 1100
pos = 48,0
stateno = 21110
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0
size.height = 0

[State 1110, 9]
type = NotHitBy
trigger1 = Time < 6
value = SCA

[State 1110, 10]
type = StateTypeSet
trigger1 = AnimElemTime(16) = 0
statetype = S
movetype = I

[State 1110, 11]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- 
; 強コンルノンノ
[Statedef 1120] 
type    = S
movetype= I
physics = S
juggle  = 4
poweradd= 45 
velset = 0,0 
anim = 1120 
ctrl = 0 
sprpriority = 1

[State 1120, 1] 
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
statetype = C
movetype = A

[State 1120, 2] 
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = 210, 1
channel = 0

[State 1120, 3] 
type = EnvShake
trigger1 = AnimElemTime(6) = 0
time = 25

[State 1120, 4] 
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
value = 230, 0

[State 1120, 5] 
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
value = 230, 1

[State 1120, 8]
type = Helper
trigger1 = AnimElemTime(7) = 0
name = "ConlNonno"
ID = 1100
pos = 64,0
stateno = 21120
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0
size.height = 0

[State 1120, 9]
type = NotHitBy
trigger1 = Time < 6
value = SCA

[State 1120, 10]
type = StateTypeSet
trigger1 = AnimElemTime(16) = 0
statetype = S
movetype = I

[State 1120, 11]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- 
; 弱コンルシラル
[Statedef 1200] 
type    = A
movetype= I
physics = N
juggle  = 4
poweradd= 45 
velset = 0,0 
anim = 1200 
ctrl = 0 
sprpriority = 2

[State 1200, 1] 
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 210, 3
channel = 0

[State 1200, 2] 
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 230, 0

[State 1200, 8]
type = Helper
trigger1 = AnimElemTime(7) = 3
name = "ConlShiraru"
ID = 1200
pos = 0,38
stateno = 21200
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0
size.height = 0

[State 1200, 11]
type = ChangeState
trigger1 = AnimElemTime(7) = 3
trigger2 = AnimTime = 0
value = 1201

;--------------------------------------------------------------------------- 
; 弱コンルシラル2
[Statedef 1201] 
type    = A
movetype= I
physics = N
juggle  = 4
velset = 0,0 

[State 1201, 2]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = !Var(20)
x = const(velocity.jump.fwd.x)*(Command = "holdfwd")+const(velocity.jump.back.x)*(Command = "holdback")

[State 1201, 2-1]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = Var(20)
x = const(velocity.jump.fwd.x)*(P2BodyDist X>140)+const(velocity.jump.back.x)*(P2BodyDist X<-40)

[State 1201, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;--------------------------------------------------------------------------- 
; 中コンルシラル
[Statedef 1210] 
type    = A
movetype= A
physics = N
juggle  = 4
poweradd= 45 
velset = 0,0 
anim = 1210 
ctrl = 0 
sprpriority = 2

[State 1210, 1] 
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 210, 3
channel = 0

[State 1210, 2] 
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 230, 0

[State 1210, 8]
type = Helper
trigger1 = AnimElemTime(7) = 3
name = "ConlShiraru"
ID = 1200
pos = 0,38
stateno = 21210
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0
size.height = 0

[State 1210, 11]
type = ChangeState
trigger1 = AnimElemTime(7) = 3
trigger2 = AnimTime = 0
value = 1211

;--------------------------------------------------------------------------- 
; 中コンルシラル2
[Statedef 1211] 
type    = A
movetype= A
physics = N
juggle  = 4
velset = 0,0 

[State 1211, 1] 
type = StateTypeSet
trigger1 = AnimElemTime(8) = 10
movetype = I

[State 1211, 2]
type = VelSet
trigger1 = AnimElemTime(8) >= 2
trigger1 = Command = "holdup"
trigger1 = !Var(20)
x = const(velocity.jump.fwd.x)*(Command = "holdfwd")+const(velocity.jump.back.x)*(Command = "holdback")
y = const(velocity.jump.y)

[State 1201, 2-2]
type = VelSet
trigger1 = AnimElemTime(8) >= 2
trigger1 = Var(20)
x = const(velocity.jump.fwd.x)*(P2BodyDist X>140)+const(velocity.jump.back.x)*(P2BodyDist X<-40)

[State 1211, 3]
type = ChangeState
triggerall = AnimElemTime(8) >= 2
trigger1 = Command = "holdup"
trigger2 = Var(20)
value = 50
ctrl = 1

[State 1211, 4]
type = ChangeState
trigger1 = Helper(1200),StateNo != 21210
trigger2 = AnimTime = 0
value = 1212

;--------------------------------------------------------------------------- 
; コンルシラル(ダウン)
[Statedef 1212] 
type    = A
movetype= I
physics = N
velset = 0,0 
anim = 1221 
ctrl = 0 
sprpriority = 2

[State 1212, 1] 
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 30, 1
channel = 0

[State 1212, 2] 
type = Gravity
trigger1 = AnimElemTime(9) >= 0

[State 1212, 3] 
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 20
value = 1213

;--------------------------------------------------------------------------- 
; コンルシラル(バウンド)
[Statedef 1213] 
type    = A
movetype= I
physics = N
velset = 0, 0
anim = 5100
ctrl = 0 
sprpriority = 0

[State 1213, 1] 
type = PosSet
trigger1 = Time = 0
y = 0

[State 1213, 2] 
type = EnvShake
trigger1 = Time = 0
time = 15

[State 1213, 3] 
type = PlaySnd
trigger1 = Time = 0
value = F7, 2 

[State 1213, 4] 
type = GameMakeAnim
trigger1 = Time = 0
value = 62
pos = 0, 0
under = 1

[State 1213, 5] 
type = ChangeAnim
trigger1 = Time = 6
value = 5061

[State 1213, 6] 
type = VelSet
trigger1 = Anim = 5061
trigger1 = AnimElemTime(1) = 0
y = -5

[State 1213, 7] 
type = Gravity
trigger1 = Anim = 5061

[State 1213, 8] 
type = ChangeState
trigger1 = Anim = 5061
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 20
value = 1214

;--------------------------------------------------------------------------- 
; コンルシラル(バウンド2回目)
[Statedef 1214] 
type    = A
movetype= I
physics = N
velset = 0, 0
anim = 5100
ctrl = 0 
sprpriority = 0

[State 1214, 1] 
type = PosSet
trigger1 = Time = 0
y = 0

[State 1214, 2] 
type = PlaySnd
trigger1 = Time = 0
value = F7, 1

[State 1214, 3] 
type = GameMakeAnim
trigger1 = Time = 0
value = 61
pos = 0, 0
under = 1

[State 1214, 4] 
type = ChangeAnim
trigger1 = Time = 6
value = 5160

[State 1214, 5] 
type = VelSet
trigger1 = Anim = 5160
trigger1 = AnimElemTime(1) = 0
y = -2

[State 1214, 6] 
type = Gravity
trigger1 = Anim = 5160

[State 1214, 7] 
type = ChangeState
trigger1 = Anim = 5160
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 20
value = 1215

;--------------------------------------------------------------------------- 
; コンルシラル(起き上がり)
[Statedef 1215] 
type    = C
movetype= I
physics = C
velset = 0, 0
anim = 5170
ctrl = 0
sprpriority = 0

[State 1215, 1] 
type = PosSet
trigger1 = Time = 0
y = 0

[State 1215, 2] 
type = PlaySnd
trigger1 = Time = 0
value = F7, 0

[State 1215, 3] 
type = GameMakeAnim
trigger1 = Time = 0
value = 60
pos = 0, 0
under = 1

[State 1215, 4] 
type = ChangeAnim
trigger1 = Anim = 5170
trigger1 = AnimTime = 0
value = 5120

[State 1215, 5] 
type = ChangeState
trigger1 = Anim = 5120
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- 
; 強コンルシラル
[Statedef 1220] 
type    = A
movetype= A
physics = N
juggle  = 4
poweradd= 45 
velset = 0,0 
anim = 1220 
ctrl = 0 
sprpriority = 2

[State 1220, 1] 
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 210, 3
channel = 0

[State 1220, 2] 
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 230, 0

[State 1220, 8]
type = Helper
trigger1 = AnimElemTime(7) = 3
name = "ConlShiraru"
ID = 1200
pos = 0,38
stateno = 21220
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0
size.height = 0

[State 1220, 11]
type = ChangeState
trigger1 = AnimElemTime(7) = 3
trigger2 = AnimTime = 0
value = 1221

;--------------------------------------------------------------------------- 
; 強コンルシラル2
[Statedef 1221] 
type    = A
movetype= A
physics = N
juggle  = 4
velset = 0,0 

[State 1221, 1] 
type = StateTypeSet
trigger1 = AnimElemTime(8) = 10
movetype = I

[State 1221, 2]
type = VelSet
trigger1 = AnimElemTime(8) >= 2
trigger1 = Command = "holdup"
x = const(velocity.jump.fwd.x)*(Command = "holdfwd")+const(velocity.jump.back.x)*(Command = "holdback")
y = const(velocity.jump.y)

[State 1221, 3]
type = ChangeState
trigger1 = AnimElemTime(8) >= 2
trigger1 = Command = "holdup"
value = 50
ctrl = 1

[State 1221, 4]
type = ChangeState
trigger1 = Helper(1200),StateNo != 21220
trigger2 = AnimTime = 0
value = 1222

;--------------------------------------------------------------------------- 
; コンルシラル(ダウン)
[Statedef 1222] 
type    = A
movetype= I
physics = N
velset = 0,0 
anim = 1221 
ctrl = 0 
sprpriority = 2

[State 1222, 1] 
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 30, 1
channel = 0

[State 1222, 2] 
type = Gravity
trigger1 = AnimElemTime(9) >= 0

[State 1222, 3] 
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 20
value = 1223

;--------------------------------------------------------------------------- 
; コンルシラル(バウンド)
[Statedef 1223] 
type    = A
movetype= I
physics = N
velset = 0, 0
anim = 5100
ctrl = 0 
sprpriority = 0

[State 1223, 1] 
type = PosSet
trigger1 = Time = 0
y = 0

[State 1223, 2] 
type = EnvShake
trigger1 = Time = 0
time = 15

[State 1223, 3] 
type = PlaySnd
trigger1 = Time = 0
value = F7, 2 

[State 1223, 4] 
type = GameMakeAnim
trigger1 = Time = 0
value = 62
pos = 0, 0
under = 1

[State 1223, 5] 
type = ChangeAnim
trigger1 = Time = 6
value = 5061

[State 1223, 6] 
type = VelSet
trigger1 = Anim = 5061
trigger1 = AnimElemTime(1) = 0
y = -5

[State 1223, 7] 
type = Gravity
trigger1 = Anim = 5061

[State 1223, 8] 
type = ChangeState
trigger1 = Anim = 5061
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 20
value = 1224

;--------------------------------------------------------------------------- 
; コンルシラル(バウンド2回目)
[Statedef 1224] 
type    = A
movetype= I
physics = N
velset = 0, 0
anim = 5100
ctrl = 0 
sprpriority = 0

[State 1224, 1] 
type = PosSet
trigger1 = Time = 0
y = 0

[State 1224, 2] 
type = PlaySnd
trigger1 = Time = 0
value = F7, 1

[State 1224, 3] 
type = GameMakeAnim
trigger1 = Time = 0
value = 61
pos = 0, 0
under = 1

[State 1224, 4] 
type = ChangeAnim
trigger1 = Time = 6
value = 5160

[State 1224, 5] 
type = VelSet
trigger1 = Anim = 5160
trigger1 = AnimElemTime(1) = 0
y = -2

[State 1224, 6] 
type = Gravity
trigger1 = Anim = 5160

[State 1224, 7] 
type = ChangeState
trigger1 = Anim = 5160
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1225

;--------------------------------------------------------------------------- 
; コンルシラル(起き上がり)
[Statedef 1225] 
type    = C
movetype= I
physics = C
velset = 0, 0
anim = 5170
ctrl = 0
sprpriority = 0

[State 1225, 1] 
type = PosSet
trigger1 = Time = 0
y = 0

[State 1225, 2] 
type = PlaySnd
trigger1 = Time = 0
value = F7, 0

[State 1225, 3] 
type = GameMakeAnim
trigger1 = Time = 0
value = 60
pos = 0, 0
under = 1

[State 1225, 4] 
type = ChangeAnim
trigger1 = Anim = 5170
trigger1 = AnimTime = 0
value = 1225

[State 1225, 5] 
type = ChangeState
trigger1 = Anim = 1225
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- 
; 弱コンルメッ(ム)
[Statedef 1300] 
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 45 
velset = 0,0 
anim = 1300 
ctrl = 0 
sprpriority = 1

[State 1300, 1] 
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = 200, 2
channel = 0

[State 1300, 3]
type = Helper
trigger1 = AnimElemTime(5) = 0
name = "ConlMemm"
ID = 1300
pos = 40,0
stateno = 21300
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0
size.height = 0

[State 1300, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- 
; 中コンルメッ(ム)
[Statedef 1310] 
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 45 
velset = 0,0 
anim = 1310 
ctrl = 0 
sprpriority = 1

[State 1310, 1] 
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 210, 2
channel = 0

[State 1310, 3]
type = Helper
trigger1 = AnimElemTime(8) = 0
name = "ConlMemm"
ID = 1300
pos = 52,0
stateno = 21310
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0
size.height = 0

[State 1310, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- 
; 強コンルメッ(ム)
[Statedef 1320] 
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 45 
velset = 0,0 
anim = 1320 
ctrl = 0 
sprpriority = 1

[State 1320, 1] 
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 210, 2
channel = 0

[State 1320, 3]
type = Helper
trigger1 = AnimElemTime(9) = 0
name = "ConlMemm"
ID = 1300
pos = 64,0
stateno = 21320
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0
size.height = 0

[State 1320, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- 
; 弱ウプンオッ(プ)
[Statedef 1400] 
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 45 
velset = 0,0 
anim = 1400 
ctrl = 0 
sprpriority = 1

[State 1400, 0]
type = PlaySnd
trigger1 = Anim = 1400
trigger1 = AnimElemTime(4) = 0
value = 210, 4
channel = 0

[State 1400, 1]
type = PlaySnd
trigger1 = Anim = 1400
trigger1 = AnimElemTime(5) >= 0
trigger1 = AnimElemTime(5)%3 = 0
value = 230, 4

[State 1400, 2]
type = Explod
trigger1 = Anim = 1400
trigger1 = AnimElemTime(5) = 0
trigger1 = !NumExplod(1400)
anim = 21400
ID = 1400
bindtime = -1
removetime = -1
sprpriority = 2
ownpal = 1

[State 1400, 3]
type = HitDef
trigger1 = Anim = 1400
trigger1 = AnimElemTime(5)%3 = 0
attr = S, SA
animtype  = Medium
air.animtype = back
fall.animtype = back
damage = Ceil(fvar(2)*8),4
guardflag = MA
pausetime = 4, 4
guard.pausetime = 4, 4
sparkno = S8000
guard.sparkno = S8111
sparkxy = 0,-Floor(Random/12)
hitsound = S1, Floor(Random/167)
guardsound = S2, Floor(Random/250)
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
guard.ctrltime = 10
ground.velocity = -5.4
guard.velocity = -5.4
air.velocity = -2,-4.5
getpower = 1, 0
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4

[State 1400, Blood]
type = Helper
trigger1 = MoveHit
trigger1 = NumTarget
trigger1 = EnemyNear,Time = 0
name = "Blood"
pos = Ceil(P2Dist X), -Floor(Random/12)
stateno = 8050+random%3
ownpal = 1
ignorehitpause = 1

[State 1400, 5]
type = ChangeAnim
trigger1 = Anim = 1400
trigger1 = AnimTime = 0
value = 1401

[State 1400, 6]
type = ChangeState
trigger1 = Anim = 1401
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- 
; 中ウプンオッ(プ)
[Statedef 1410] 
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 45 
velset = 0,0 
anim = 1410 
ctrl = 0 
sprpriority = 1

[State 1410, 0]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 210, 4
channel = 0

[State 1410, 1]
type = PlaySnd
trigger1 = AnimElemTime(5) >= 0
trigger1 = AnimElemTime(5)%3 = 0
value = 230, 4

[State 1410, 2]
type = Explod
trigger1 = AnimElemTime(5) = 0
trigger1 = !NumExplod(1400)
anim = 21400
ID = 1400
bindtime = -1
removetime = -1
sprpriority = 2
ownpal = 1

[State 1410, 3]
type = HitDef
trigger1 = AnimElemTime(5)%3 = 0
attr = S, SA
animtype  = Medium
air.animtype = back
fall.animtype = back
damage = Ceil(fvar(2)*8),4
guardflag = MA
pausetime = 4, 4
guard.pausetime = 4, 4
sparkno = S8000
guard.sparkno = S8111
sparkxy = 0,-Floor(Random/12)
hitsound = S1, Floor(Random/167)
guardsound = S2, Floor(Random/250)
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
guard.ctrltime = 10
ground.velocity = -5.4
guard.velocity = -5.4
air.velocity = -2,-4.5
getpower = 1, 0
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4

[State 1410, Blood]
type = Helper
trigger1 = MoveHit
trigger1 = NumTarget
trigger1 = EnemyNear,Time = 0
name = "Blood"
pos = Ceil(P2Dist X), -Floor(Random/12)
stateno = 8050+random%3
ownpal = 1
ignorehitpause = 1

[State 1410, 5]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = AnimElemTime(12) >= 0
trigger2 = P2BodyDist X > 40
value = 1411

;--------------------------------------------------------------------------- 
; 中ウプンオッ(プ)とどめ
[Statedef 1411] 
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0 
anim = 1411 
ctrl = 0 
sprpriority = 1

[State 1411, 1]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 230, 1

[State 1411, 2]
type = Explod
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(10) < 0
anim = 21407+AnimElemNo(-(HitPauseTime>0))
ID = 1411
bindtime = -1
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 1411, 3]
type = Explod
trigger1 = AnimElemTime(10) = 0
anim = 21425
ID = 1411
bindtime = -1
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 1411, 7]
type = HitDef
trigger1 = AnimElemTime(4) < 11
trigger1 = AnimElemTime(4)%4 = 0
attr = S, SP
animtype  = Back
damage = Ceil(fvar(2)*56),8
priority  = 5
guardflag = MA
pausetime = 12,12
sparkno = S8000
sparkxy = 0,-56
guard.sparkno = S8111
hitsound   = S1, Floor(Random/250)+6
guardsound = S2, Floor(Random/250)
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3, -5
guard.velocity = -12
air.velocity = -3, -5
yaccel = .5
getpower = 50, 16
ground.cornerpush.veloff = -16
air.cornerpush.veloff = -16
fall = 1
fall.recover = 0

[State 1411, Blood]
type = Helper
trigger1 = MoveHit
trigger1 = NumTarget
name = "Blood"
pos = Ceil(P2Dist X), -56
stateno = 8052
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1411, SpiritPow-dec(Hit)]
type = VarAdd
trigger1 = NumTarget
trigger1 = MoveHit
fvar(1) = -Ceil(Target,GetHitVar(damage)/8)
ignorehitpause = 1
persistent = 0

[State 1411, 11]
type = TargetState
trigger1 = MoveHit
trigger1 = NumTarget
ID = 0
value = 1415
ignorehitpause = 1
persistent = 0

[State 1411, 12]
type = Explod
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(8) < 0
anim = 21429
ID = 1412
pos = 64+(AnimElemNo(0)-3)**2 , -54
vel = 0, -random*.001
sprpriority = 1
ownpal = 1

[State 1411, 13]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- 
; 強ウプンオッ(プ)
[Statedef 1420] 
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 45 
velset = 0,0 
anim = 1420 
ctrl = 0 
sprpriority = 1

[State 1420, 0]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 210, 4
channel = 0

[State 1420, 1]
type = PlaySnd
trigger1 = AnimElemTime(5) >= 0
trigger1 = AnimElemTime(5)%3 = 0
value = 230, 4

[State 1420, 2]
type = Explod
trigger1 = AnimElemTime(5) = 0
trigger1 = !NumExplod(1400)
anim = 21400
ID = 1400
bindtime = -1
removetime = -1
sprpriority = 2
ownpal = 1

[State 1420, 3]
type = HitDef
trigger1 = AnimElemTime(5)%2 = 0
attr = S, SA
animtype  = Medium
air.animtype = back
fall.animtype = back
damage = Ceil(fvar(2)*8),4
guardflag = MA
pausetime = 4, 4
guard.pausetime = 4, 4
sparkno = S8000
guard.sparkno = S8111
sparkxy = 0,-Floor(Random/12)
hitsound = S1, Floor(Random/167)
guardsound = S2, Floor(Random/250)
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
guard.ctrltime = 10
ground.velocity = -5.4
guard.velocity = -5.4
air.velocity = -2,-4.5
getpower = 1, 0
ground.cornerpush.veloff = -3
air.cornerpush.veloff = -3

[State 1420, Blood]
type = Helper
trigger1 = MoveHit
trigger1 = NumTarget
trigger1 = EnemyNear,Time = 0
name = "Blood"
pos = Ceil(P2Dist X), -Floor(Random/12)
stateno = 8050+random%3
ownpal = 1
ignorehitpause = 1

[State 1420, 5]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = AnimElemTime(12) >= 0
trigger2 = P2BodyDist X > 40
value = 1421

;--------------------------------------------------------------------------- 
; 強ウプンオッ(プ)とどめ
[Statedef 1421] 
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0 
anim = 1421 
ctrl = 0 
sprpriority = 1

[State 1421, 1]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 230, 1

[State 1421, 2]
type = Explod
trigger1 = AnimElemTime(3) >= 0
trigger1 = AnimElemTime(15) <= 0
anim = 21407+AnimElemNo(-(HitPauseTime>0))
ID = 1411
bindtime = -1
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 1421, 7]
type = HitDef
trigger1 = AnimElemTime(4) < 13
trigger1 = AnimElemTime(4)%4 = 0
attr = S, SP
animtype  = Back
damage = Ceil(fvar(2)*56),8
priority  = 5
guardflag = MA
pausetime = 12,12
sparkno = S8000
sparkxy = 0,-50
guard.sparkno = S8111
hitsound   = S1, Floor(Random/250)+6
guardsound = S2, Floor(Random/250)
ground.type = Low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -3, -5
guard.velocity = -12
air.velocity = -3, -5
yaccel = .5
getpower = 50, 8
ground.cornerpush.veloff = -16
air.cornerpush.veloff = -16
fall = 1
fall.recover = 0

[State 1421, Blood]
type = Helper
trigger1 = MoveHit
trigger1 = NumTarget
name = "Blood"
pos = Ceil(P2Dist X), -56
stateno = 8052
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1421, SpiritPow-dec(Hit)]
type = VarAdd
trigger1 = NumTarget
trigger1 = MoveHit
fvar(1) = -Ceil(Target,GetHitVar(damage)/8)
ignorehitpause = 1
persistent = 0

[State 1421, 11]
type = TargetState
trigger1 = MoveHit
trigger1 = NumTarget
ID = 0
value = 1415
ignorehitpause = 1
persistent = 0

[State 1421, 12]
type = Explod
trigger1 = AnimElemTime(5) >= 0
trigger1 = AnimElemTime(11) < 0
anim = 21429
ID = 1412
pos = 80+(AnimElemNo(0)-3)**2 , -54
vel = 0, -random*.001
sprpriority = 1
ownpal = 1

[State 1421, 13]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ウプンオッ(プ)やられ
[Statedef 1415]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1415, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1415, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 5030

[State 1415, 4]
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 1415, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 1416

[State 1415, FFB Hard]
type = ForceFeedback
trigger1 = Time = 0
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; ウプンオッ(プ)やられ2
[Statedef  1416]
type    = A
movetype= H
physics = N
ctrl = 0

[State 1416, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1416, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 1416, 3]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 1416, 4]
type = ChangeAnim
trigger1 = Anim = 5030
trigger1 = AnimTime = 0
trigger1 = SelfAnimExist(5035)
value = 5035

[State 1416, 5]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0
trigger2 = Anim != 5035
value = 5050

[State 1416, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 25
value = 1417

;---------------------------------------------------------------------------
; ウプンオッ(プ)やられ3
[Statedef 1417]
type    = L
movetype= H
physics = N

[State 1417, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1417, 2]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 1417, 3]
type = FallEnvShake
trigger1 = Time = 0

[State 1417, 4]
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 1417, 5]
type = ChangeAnim
trigger1 = time = 0
value = 5100

[State 1417, 6]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1417, 7]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1417, 8]
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 1417, 10]
type = SelfState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110

[State 1417, 11]
type = GameMakeAnim
trigger1 = Time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 1417, 12]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 1417, 13]
type = PosFreeze
trigger1 = 1

[State 1417, 14]
type = ChangeState
trigger1 = AnimTime = 0
value = 1418

[State 1417, 15]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; バウンド
[Statedef 1418]
type    = L
movetype= H
physics = N

[State 1418, 1]
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160

[State 1418, 2]
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 1418, 3]
type = HitFallSet
trigger1 = Time = 0
value = 1

[State 1418, 4]
type = VelSet
trigger1 = Time = 0
x= 1-(hitvel x<0)*2
y = -6

[State 1418, 5]
type = PosSet
trigger1 = Time = 0
y = 20

[State 1418, 6]
type = VelAdd
trigger1 = 1
y = .5

[State 1418, 7]
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = ChangeState
value = 1419

;---------------------------------------------------------------------------
; ダウン
[Statedef 1419]
type    = L
movetype= H
physics = N

[State 1419, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 1419, 1]
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 1419, 2]
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119]
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 1419, 3]
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119]
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 1419, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1419, Var]
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 1419, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 1419, 7]
type = GameMakeAnim
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 1419, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1419, 9]
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0)
value = 5110 + (anim % 10)

[State 1419, 10]
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0)
value = 5110

[State 1419, 11]
type = SelfState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0)
trigger3 = Anim = [5110,5119]
value = 5150

[State 1419, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 1419, 13]
type = VelMul
trigger1 = 1
x = 0.85

[State 1419, 14]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 1419, 15]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

[State 1419, 11]
type = SelfState
trigger1 = Time = 25
value = 5120

;---------------------------------------------------------------------------
; 怒り爆発
[Statedef 2000]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0
anim = 2000
sprpriority = 1

[State 2000, 0]
type = ChangeState
trigger1 = !Alive
value = 5020

[State 2000, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2000, 2]
type = SuperPause
trigger1 = Time = 0
time = 30
movetime = 30
anim = -1
darken = 0

[State 2000, 3]
type = EnvShake 
trigger1 = Time = 1
time = 4
freq = 60
ampl = -40

[State 2000, 4]
type = EnvShake 
trigger1 = Time = 29
time = 20
freq = 60
ampl = -10

[State 2000, 5]
type = PlaySnd
trigger1 = Time = 29
value = 2, 3

[State 2000, 5-1]
type = PlaySnd
trigger1 = Time = 32
value = 2, 4

[State 2000, 6]
type = PlaySnd
trigger1 = Time = 29
value = 210, 8
channel = 0

[State 2000, 7]
type = Explod
trigger1 = Time = 3
anim = 2100
ID = 2100
pos = 0, 0
sprpriority = 2
ownpal = 1
supermovetime = 30

[State 2000, 8]
type = Explod
trigger1 = Time = 29
anim = 2101
ID = 2101
pos = 0, 0
sprpriority = -1
ownpal = 1
supermovetime = 30

[State 2000, 9]
type = Explod
trigger1 = Time = 45
anim = 2102
ID = 2102
pos = 64, 0
sprpriority = 0
ownpal = 1
supermovetime = 30

[State 2000, 10]
type = Explod
trigger1 = Time = 45
anim = 2102
ID = 2102
pos = -64, 0
sprpriority = 0
ownpal = 1
supermovetime = 30
facing = -1

[State 2000, 11]
type = VarSet
trigger1 = Time = 2
trigger2 = fvar(3) < -720
fvar(3) = -720*(fvar(3)<-720)

[State 2000, 12]
type = VarSet
trigger1 = Time = 2
var(30) = 40

[State 2000, 12-1]
type = VarAdd
trigger1 = Time >= 40
trigger1 = var(30) = 40
trigger1 = fvar(3) > -720
fvar(3) = -60

[State 2000, 13]
type = HitDef
trigger1 = AnimElemTime(3) = 1
attr = S, HP
hitflag = MA
priority = 7
animtype = hard
sparkno = -1
ground.type = low
ground.hittime = 32
ground.slidetime = 32
ground.velocity = -4
guard.dist = 0
numhit = 0

[State 2000, 14]
type = HitDef
trigger1 = AnimElemTime(3) = 1
attr = S, HT
hitflag = MA
priority = 7
animtype = hard
sparkno = -1
ground.type = low
ground.hittime = 32
ground.slidetime = 32
ground.velocity = -4
guard.dist = 0
numhit = 0

[State 2000, 15]
type = TargetVelSet
trigger1 = Numtarget
trigger1 = Time < 50
x = -4

[State 2000, 16]
type = VarSet
trigger1 = var(30) = 40
fvar(1) = 118

[State 2000, 17]
type = Explod
trigger1 = Time = 2
trigger1 = !NumExplod(7320)
anim = 7320
id = 7320
postype = left
pos = (var(37)-64)*(teamside=1)+(384-var(37))*(teamside=2), var(38)
ownpal = 1
ontop = 1
bindtime = -1
sprpriority = 15
pausemovetime = 99999
supermovetime = 99999
ignorehitpause = 1

[State 2000, 19]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- 
;ルプッ(シ)・カムイ・エムッ(シ)
[Statedef 3000] 
type    = S 
movetype= A 
physics = S 
velset = 0,0 
anim = 3000 
ctrl = 0 

[State 3000, 1] 
type = NotHitBy
trigger1 = Time < 5
value = SCA

[State 3000, 2]
type = SuperPause
trigger1 = Time = 4
time = 15
movetime = 15
anim = S3004
pos = 12,-64
sound = S2,5
;poweradd = -1000

[State 3000, 3]
type = PlaySnd
trigger1 = Time = 16
value = 210, 6+Floor(Random/500)
channel = 0

[State 3000, 4]
type = Helper
trigger1 = AnimElemTime(10) = 1
name = "Big"
ID = 3000
pos = 80, 0
stateno = 23000
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0
size.height = 0
supermovetime = 99999
pausemovetime = 99999

[State 3000, 5]
type = Explod
trigger1 = AnimElemTime(25) = 0
anim = 8020
ID = 3000
pos = 40,-64
sprpriority = 3
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 3000, 6]
type = PlaySnd
trigger1 = AnimElemTime(25) = 0
value = 2, 3

[State 3000, 7]
type = EnvShake
trigger1 = AnimElemTime(25) = 0
time = 80
ampl = -20
phase = 32
ignorehitpause = 1

[State 3000, 8] 
type = ChangeState 
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- 
; 弱カムイ・シトゥキ
[Statedef 3100] 
type    = S
movetype= A
physics = S
velset = 0,0 
anim = 3100 
ctrl = 0 
sprpriority = 1

[State 3100, 1] 
type = NotHitBy 
trigger1 = Time <= 42
value = SCA

[State 3100, 2] 
type = SuperPause 
trigger1 = Time = 4
time = 50
movetime = 50
anim = S3004
pos = 12,-64
sound = S2,5
poweradd = -1000
unhittable = 0

[State 3100, 3] 
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = 210, 5
channel = 0

[State 3100, 4]
type = Helper
trigger1 = AnimElemTime(12) = 0
name = "Mirror"
ID = 3100
pos = 24,-56
stateno = 23100
ownpal = 1
supermovetime = 12
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0
size.height = 0

[State 3100, 5] 
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- 
; 中カムイ・シトゥキ
[Statedef 3101] 
type    = S
movetype= A
physics = S
velset = 0,0 
anim = 3100 
ctrl = 0 
sprpriority = 1

[State 3101, 1] 
type = NotHitBy 
trigger1 = Time <= 42
value = SCA

[State 3101, 2] 
type = SuperPause 
trigger1 = Time = 4
time = 50
movetime = 50
anim = S3004
pos = 12,-64
sound = S2,5
poweradd = -1000
unhittable = 0

[State 3101, 3] 
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = 210, 5
channel = 0

[State 3101, 4]
type = Helper
trigger1 = AnimElemTime(12) = 0
name = "Mirror"
ID = 3100
pos = 24,-56
stateno = 23100
ownpal = 1
supermovetime = 12
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0
size.height = 0

[State 3101, 5] 
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- 
; 強カムイ・シトゥキ
[Statedef 3102] 
type    = S
movetype= A
physics = S
velset = 0,0 
anim = 3100 
ctrl = 0 
sprpriority = 1

[State 3102, 1] 
type = NotHitBy 
trigger1 = Time <= 42
value = SCA

[State 3102, 2] 
type = SuperPause 
trigger1 = Time = 1
time = 55
movetime = 55
anim = S3004
pos = 12,-64
sound = S2,5
poweradd = -1000
unhittable = 0

[State 3102, 3] 
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = 210, 5
channel = 0

[State 3102, 4]
type = Helper
trigger1 = AnimElemTime(12) = 0
name = "Mirror"
ID = 3100
pos = 24,-56
stateno = 23100
ownpal = 1
supermovetime = 13
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0
size.height = 0

[State 3102, 5] 
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- 
; カムイ・シトゥキ(蹴り)
[Statedef 3103] 
type    = S
movetype= A
physics = S
velset = 0,0 
anim = 3100 
ctrl = 0 
sprpriority = 1

[State 3103, 1] 
type = NotHitBy 
trigger1 = Time <= 42
value = SCA

[State 3103, 2] 
type = SuperPause 
trigger1 = Time = 4
time = 50
movetime = 50
anim = S3004
pos = 12,-64
sound = S2,5
poweradd = -1000
unhittable = 0

[State 3103, 3] 
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = 210, 5
channel = 0

[State 3103, 4]
type = Helper
trigger1 = AnimElemTime(12) = 0
name = "Mirror"
ID = 3100
pos = 24,-56
stateno = 23100
ownpal = 1
supermovetime = 12
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0
size.height = 0

[State 3103, 5] 
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 一閃
[Statedef 3500]
type    = S
movetype= A
physics = N
juggle  = 2
ctrl = 0
velset = 0,0
anim = 3500

[State 3500, 0]
type = VarSet
trigger1 = Time = 0
var(30) = -1

[State 3500, 0]
type = NotHitBy
trigger1 = Time < 70+Floor(fvar(4)/50)
value = SCA

[State 3500, 1]
type = AssertSpecial
trigger1 = Time > 1
flag = nobardisplay
flag2 = noFG

[State 3500, 2] 
type = SuperPause 
trigger1 = Time = 4
time = 65+Floor(fvar(4)/40)
movetime = 65+Floor(fvar(4)/40)
anim = -1
sound = S220,0

[State 3500, 3]
type = Explod
trigger1 = Time = [4, 99]
anim = 3510
ID = 3510
pos = ifelse(time<25,time*4,100)-90,40
postype = back
sprpriority = 4
ontop = 1
ownpal = 1
removetime = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 3500, 4]
type = Explod
trigger1 = Time = 25
anim = 3505
ID = 3505
pos = 100,64
postype = back
sprpriority = 3
ontop = 1
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 3500, 5]
type = BGPalFX
trigger1 = Time > 92
time = 1
add = (Time-92)*20,(Time-92)*20,(Time-92)*20

[State 3500, 6] 
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 0, 5

[State 3500, 7]
type = Explod
trigger1 = AnimElemTime(4) >= 0
anim = 3506
ID = 3506
pos = 0,0
sprpriority = 2
removetime = 1
ownpal = 1
ignorehitpause = 1
supermovetime = 99999
pausemovetime = 99999

[State 3500, 8] 
type = VelSet
trigger1 = AnimElemTime(4) = 0
x = 3+fvar(4)/100

[State 3500, 9]
type = AfterImage
trigger1 = AnimElemTime(4) = 0
palcolor = 0
palbright = 255,255,0
palcontrast = 255,255,160
palpostbright = 0,0,0
paladd = 25,25,10
palmul = .75,.75,.65

[State 3500, 10]
type = AfterImageTime
trigger1 = 1
time = 2

[State 3500, 11]
type = HitDef
trigger1 = AnimElemTime(6) = 0
attr = S, NA
animtype  = Hard
air.animtype = back
fall.animtype = back
damage = 0
guardflag = M
pausetime = 0,20
guard.pausetime = 0,10
sparkno = S8000
guard.sparkno = S8110
sparkxy = -12,-64
hitsound   = -1
guardsound = S2, Floor(Random/250)
ground.type = Low
ground.slidetime = 12
ground.hittime = 20
ground.velocity = 0
guard.velocity = -5
sprpriority = -1
p2facing = 1
fall = 1
fall.recover = 0
ID = 3500

[State 3500, 11-1]
type = HitDef
trigger1 = AnimElemTime(6) = 0
attr = S, NP
animtype  = Hard
air.animtype = back
fall.animtype = back
damage = 0
guardflag = M
pausetime = 0,30
guard.pausetime = 0,10
sparkno = -1
guard.sparkno = -1
hitsound   = -1
guardsound = S2, Floor(Random/250)
ground.type = Low
ground.slidetime = 12
ground.hittime = 20
ground.velocity = 0
guard.velocity = -5
sprpriority = -1
p2facing = 1
fall = 1
fall.recover = 0
numhits = 0
ID = 3500

[State 3500, 13]
type = ChangeState
trigger1 = AnimElemTime(6) = 20
trigger2 = MoveHit
trigger2 = NumTarget
trigger3 = MoveGuarded
value = 101+(MoveHit>=1)*3400+(MoveGuarded>=1)*3401
ignorehitpause = 1

;---------------------------------------------------------------------------
; 一閃ヒット
[Statedef 3501]
type    = S
movetype= A
physics = N
juggle  = 2
velset = 5, 0
ctrl = 0
sprpriority = -1
anim = 3501

[State 3501, 0]
type = ChangeState
trigger1 = Time = 0
trigger1 = !NumTarget
trigger2 = AnimTime = 0
value = (AnimTime!=0)*3502
ctrl = 1

[State 3501, 1]
type = TargetState
trigger1 = NumTarget(3500)
trigger1 = Time = 0
ID = 3500
value = 3503

[State 3501, 2]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG

[State 3501, 3]
type = BGPalFX
trigger1 = 1
time = 1
add = 256-(time>135)*(time-135)*10,256-(time>135)*(time-135)*10,256-(time>135)*(time-135)*10

[State 3501, 4]
type = AfterImageTime
trigger1 = AnimElemTime(5) < 0
time = 2

[State 3501, 5]
type = PlaySnd
trigger1 = Time = 0
value = 2,2

[State 3501, 5-1]
type = PlaySnd
trigger1 = Time = 0
value = 250,0

[State 3501, 6]
type = Explod
trigger1 = Time = 0
anim = 8000
ID = 8000
pos = 0,-60
postype = p2
sprpriority = 8
bindtime = -1
facing = -1
ownpal = 1
ignorehitpause = 1

[State 3501, 6]
type = Explod
trigger1 = Time = 0
anim = 3508
ID = 3508
postype = Left
sprpriority = 8
bindtime = -1
ownpal = 1
ignorehitpause = 1

[State 3501, 7]
type = Explod
trigger1 = Time = 5
anim = 3507
ID = 3507
pos = 0, floor(ScreenPos Y-60)
postype = back
bindtime = -1
sprpriority = 1
ownpal = 1
ignorehitpause = 1

[State 3501, 8]
type = Explod
trigger1 = Time = 15
anim = 3509
ID = 3509
pos = 0, 0
postype = back
bindtime = -1
sprpriority = -3
ownpal = 1
scale = 1.5,1.1
ignorehitpause = 1

[State 3501, 9]
type = VelMul
trigger1 = AnimElemTime(5) >= 0
x = .94

[State 3501, 10]
type = Helper
trigger1 = AnimElemTime(5) = 0
name = "issen_blood_H"
ID = 8061
pos = 0,-60
postype = P2
facing = -1
stateno = 8061
ownpal = 1
ignorehitpause = 1

[State 3501, 11]
type = TargetLifeAdd
trigger1 = NumTarget
trigger1 = AnimElemTime(5) = 0
value = -200-Ceil(fvar(4)/1.5)

[State 3501, 12]
type = Helper
trigger1 = NumTarget
trigger1 = AnimElemTime(5) = [0,60]
trigger1 = Time%2 = 0
name = "issen_blood"
ID = 8056
pos = Floor(random*(Target,Const(size.ground.front)+Target,Const(size.ground.back))*.0008)-Target,Const(size.ground.back),-60
postype = P2
stateno = 8056
ownpal = 1
ignorehitpause = 1

[State 3501, 13]
type = PlaySnd
trigger1 = AnimElemTime(5) = 0
value = 2, 9

[State 3501, 14]
type = TargetVelSet
trigger1 = NumTarget
trigger1 = FrontEdgeBodyDist = 0
x = Vel X

;---------------------------------------------------------------------------
; 一閃ガード
[Statedef 3502]
type    = A
physics = N
ctrl = 0
velset = -5.5,-5.5
anim = 105
sprpriority = 1

[State 3502, 1]
type = VelAdd
trigger1 = 1
y = .5

[State 3502, 2]
type = BGPalFX
trigger1 = Time < 25
time = 1
add = 256-time*10,256-time*10,256-time*10

[State 3502,3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 106

;---------------------------------------------------------------------------
; 一閃(相手)
[Statedef 3503]
type    = S
Movetype = H
physics = S
ctrl = 0
velset = 0,0
sprpriority = -1

[State 3503, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 3503

[State 3503,2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3503,3]
type = SelfState
trigger1 = AnimTime = 0
value = 5110

;---------------------------------------------------------------------------
;弾ッキング
[Statedef 6000]
type    = U
movetype= I
physics = N
poweradd= 30
ctrl = 0
sprpriority = -1
facep2 = 1

[State 6000, 0]
type = StateTypeSet
trigger1 = Time = 0
trigger1 = Pos Y < 0
value = A

[State 6000, 1]
type = StateTypeSet
trigger1 = Time = 0
trigger1 = Pos Y = 0
trigger1 = command = "forward"
value = S

[State 6000, 2]
type = StateTypeSet
trigger1 = Time = 0
trigger1 = Pos Y = 0
trigger1 = command = "down"
value = C

[State 6000, 3]
type = ChangeAnim
trigger1 = Time = 0
value = 6000 + (StateType = C)*10 + (StateType = A)*20

[State 6000, 4]
type = ChangeState
triggerall = Time = 0
triggerall = StateType = S
trigger1 = GetHitVar(groundtype) = 3
trigger2 = EnemyNear,StateType = C
trigger2 = GetHitVar(groundtype) = 2
trigger2 = GetHitVar(animtype) <= 1
value = 5000 + (GetHitVar(groundtype) = 3)*70

[State 6000, 4-1]
type = ChangeState
triggerall = Time = 0
triggerall = StateType = C
triggerall = GetHitVar(groundtype) != 3
trigger1 = EnemyNear,StateType = S
trigger2 = EnemyNear,StateType = A
value = 5010

[State 6000, 4-2]
type = ChangeState
trigger1 = Time = 0
trigger1 = StateType = A
trigger1 = command != "forward"
value = 5020

[State 6000, 5]
type = VelSet
trigger1 = Time = 0
trigger1 = StateType != A
x = 0
y = 0

[State 6000, 5-1]
type = PosFreeze
trigger1 = Anim = 6020
trigger1 = Time < 15

[State 6000, 6]
type = HitBy
trigger1 = AnimElemTime(3) < 0
value = SCA,AT

[State 6000, 7]
type = ChangeAnim
trigger1 = AnimElemTime(3) >= 0
trigger1 = Time < 15
value = 6000 + (StateType = C)*10 + (StateType = A)*20
elem = 3

[State 6000, 8]
type = Pause
trigger1 = Time < 15
trigger1 = EnemyNear,HitPauseTime <= 1
Time = 15 - Time
movetime = 15 - Time

[State 6000, 9]
type = PlaySnd
trigger1 = Time = 0
value = 6, 6

[State 6000, 10]
type = PlaySnd
trigger1 = Time = 0
value = 200, 5
channel = 0

[State 6000, 11]
type = PalFX
trigger1 = Time < 10
time = 1
add = abs(ceil(64*sin(2*pi*time/6))),abs(ceil(64*sin(2*pi*time/6))),abs(ceil(192*sin(2*pi*time/6)))
ignorehitpause = 1

[State 6000, 12]
type = SprPriority
trigger1 = 1
value = 3-(AnimElemTime(3)>0)*3

[State 6000, 13]
type = CtrlSet
trigger1 = Time >= 15
value = 1

[State 6000, 13-1]
type = StateTypeSet
trigger1 = Time = 15
trigger1 = Anim = 6020
physics = A

[State 6000, 13-2]
type = VelSet
trigger1 = Time = 15
trigger1 = Anim = 6020
y = -3

[State 6000, 14]
type = Assertspecial
trigger1 = 1
flag = nowalk

[State 6000, 15]
type = VarSet
trigger1 = Time <= 5
ignorehitpause = 1
var(7) = 1 + 23*(Time=5)

[State 6000, 16]
type = ChangeState
trigger1 = AnimTime = 0
value = 0 + (Anim = 6010)*11 + (Anim = 6020)*699
ctrl = 1

;---------------------------------------------------------------------------
;弾ッキング(飛び道具)
[Statedef 6001]
type    = U
movetype= I
physics = N
poweradd= 30
ctrl = 0
sprpriority = -1
facep2 = 1

[State 6001, 0]
type = StateTypeSet
trigger1 = Time = 0
trigger1 = Pos Y < 0
value = A

[State 6001, 1]
type = StateTypeSet
trigger1 = Time = 0
trigger1 = Pos Y = 0
trigger1 = command = "forward"
value = S

[State 6001, 2]
type = StateTypeSet
trigger1 = Time = 0
trigger1 = Pos Y = 0
trigger1 = command = "down"
value = C

[State 6001, 3]
type = ChangeAnim
trigger1 = Time = 0
value = 6000 + (StateType = C)*10 + (StateType = A)*20

[State 6001, 4]
type = ChangeState
trigger1 = Time = 0
trigger1 = StateType = C
trigger1 = GetHitVar(groundtype) != 3
value = 5010

[State 6001, 4-1]
type = ChangeState
trigger1 = Time = 0
trigger1 = StateType = A
trigger1 = command != "forward"
value = 5020

[State 6001, 5]
type = VelSet
trigger1 = Time = 0
trigger1 = StateType != A
x = 0
y = 0

[State 6001, 5-1]
type = PosFreeze
trigger1 = Anim = 6020
trigger1 = Time < 15

[State 6001, 6]
type = HitBy
trigger1 = AnimElemTime(3) < 0
value = SCA,AT

[State 6001, 7]
type = ChangeAnim
trigger1 = AnimElemTime(3) >= 0
trigger1 = Time < 15
value = 6000 + (StateType = C)*10 + (StateType = A)*20
elem = 3

[State 6001, 8]
type = Pause
trigger1 = Time = 0
Time = 15
movetime = 15

[State 6001, 9]
type = PlaySnd
trigger1 = Time = 0
value = 6, 6

[State 6001, 10]
type = PlaySnd
trigger1 = Time = 0
value = 200, 5
channel = 0

[State 6001, 11]
type = PalFX
trigger1 = Time < 10
time = 1
add = abs(ceil(64*sin(2*pi*time/6))),abs(ceil(64*sin(2*pi*time/6))),abs(ceil(192*sin(2*pi*time/6)))
ignorehitpause = 1

[State 6001, 12]
type = SprPriority
trigger1 = 1
value = 3-(AnimElemTime(3)>0)*3

[State 6001, 13]
type = CtrlSet
trigger1 = Time >= 15
value = 1

[State 6001, 13-1]
type = StateTypeSet
trigger1 = Time = 15
trigger1 = Anim = 6020
physics = A

[State 6001, 13-2]
type = VelSet
trigger1 = Time = 15
trigger1 = Anim = 6020
y = -3

[State 6001, 14]
type = Assertspecial
trigger1 = 1
flag = nowalk

[State 6001, 15]
type = VarSet
trigger1 = Time <= 5
ignorehitpause = 1
var(7) = 1 + 23*(Time=5)

[State 6001, 16]
type = ChangeState
trigger1 = AnimTime = 0
value = 0 + (Anim = 6010)*11 + (Anim = 6020)*699
ctrl = 1

;---------------------------------------------------------------------------
;ヒットマーク(矢)
[Statedef 8000]
type = A
movetype = I
physics = N
anim = 8000
sprpriority = 2

[State 8000,1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8000,2]
type = AngleSet
trigger1 = Time = 0
value = Parent,FVar(11)

[State 8000,3]
type = AngleDraw
trigger1 = 1

[State 8000,4]
type = ChangeAnim
trigger1 = Time = 0
value = 8000

[State 8000,5]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;CPU操作を検出
[Statedef 9999]
anim = 9999
ctrl = 0

[State 9999, 1]                        
type = ParentVarSet               
triggerall = RoundState = 2
trigger1 = Parent, Command = "x"           
trigger2 = Parent, Command = "y" 
trigger3 = Parent, Command = "z"
trigger4 = Parent, Command = "a"
trigger5 = Parent, Command = "b"
trigger6 = Parent, Command = "c"
trigger7 = Parent, Command = "start"
trigger8 = Parent, Command = "holdfwd"
trigger9 = Parent, Command = "holdback"
v = 20
value = 1
persistent = 0

[State 9999, 2]
type = ParentVarSet
triggerall = RoundState = 2
trigger1 = (Command = "x" && Parent, Command = "x")
trigger2 = (Command = "y" && Parent, Command = "y") 
trigger3 = (Command = "z" && Parent, Command = "z")
trigger4 = (Command = "a" && Parent, Command = "a")
trigger5 = (Command = "b" && Parent, Command = "b")
trigger6 = (Command = "c" && Parent, Command = "c")
trigger7 = (Command = "start" && Parent, Command = "start")
trigger8 = (Command = "holdfwd" && Parent, Command = "holdfwd")
trigger9 = (Command = "holdback" && Parent, Command = "holdback")
v = 20
value = 0
;CPUはHelperにキーコントロールを送らないらしい。
;でもそれって不具合なんじゃ････

[State 9999, 3]                  
type = DestroySelf 
trigger1 = RoundState != 2
trigger2 = Enemy, Alive = 0
