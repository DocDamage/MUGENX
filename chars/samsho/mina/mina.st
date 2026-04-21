;真鏡名　ミナ　メインステートファイル

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
y = const(velocity.jump.y)/2

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
channel = 1

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 41

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > -8
trigger1 = Anim = 41
persistent = 0
value = 44

[State 50, 4]
type = ChangeState
triggerall = Pos Y < -100
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
triggerall = Time >= 4
triggerall = Anim != 101
trigger1 = command = "holdback"
trigger2 = P2Bodydist X < 10
trigger2 = EnemyNear,StateType != A
value = 101

[State 100, 4]
type = ChangeState
triggerall = Time >= 4
triggerall = Anim != 101
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
trigger1 = Time >= 4
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
velset = -6.3,-4.5
anim = 105
sprpriority = 1

[State 105, 1]
type = PlaySnd
trigger1 = time = 1
value = 20, 0

[State 100, 3]
type = VelAdd
trigger1 = 1
y = .5

[State 100, 4]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
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
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;  瞑想

[Statedef 110]
type    = A
physics = N
ctrl = 0
anim = 110
sprpriority = 1

[State 113, 1]
type = null
trigger1 = Time = 0
x = 5.88
y = -3.57

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
x = 4
y = -3.57

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
y = .255

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
y = -5

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
y = .5

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
type = NotHitBy
trigger1 = Time < 6
value = SCA

[State 113, 5]
type = NotHitBy
trigger1 = Time < 12
value = SCA, AT

[State 113, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = (command = "holddown") * 11
ctrl = 1

;---------------------------------------------------------------------------
;  前転

[Statedef 114]
type    = C
physics = C
anim = 114
sprpriority = 1
velset = 0,0
ctrl = 0

[State 114, 1]
type = VelSet
trigger1 = 1
x = 5.5 * (AnimElemTime(6) < 0)

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

[State 114, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 12 - (command = "holddown")
ctrl = 1

;---------------------------------------------------------------------------
;  後転

[Statedef 115]
type    = C
physics = C
anim = 115
sprpriority = 1
velset = 0,0
ctrl = 0

[State 115, 1]
type = VelSet
trigger1 = AnimElemTime(2) >= 0
x = -3.2 * (AnimElemTime(7) < 0)

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

[State 115, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 12 - (command = "holddown")
ctrl = 1

;---------------------------------------------------------------------------
; 体力負け
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 0]
type = LifeSet
trigger1 = Time = 0
value = var(3)

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 170, 2]
type = PlaySnd
trigger1 = Time = 0
value = 100,8

[State 170, 3]
type = Explod
trigger1 = AnimElemTime(2) = 0
name = "GiveUp_Bow"
anim = 3005
ID = 3005
pos = 0, 0
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 170, 4]
type = Helper
trigger1 = AnimElemTime(7) = 0
name = "GiveUp_Bow"
ID = 21170
pos = 20,-48
stateno = 21170
ownpal = 1

[State 115, 3]
type = ChangeState
trigger1 = Time = 120
trigger1 = PrevStateNo = 5030
value = 5150

;---------------------------------------------------------------------------
; 時間切れ
[Statedef 175]
type = S
ctrl = 0
anim = 175
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 170, 2]
type = PlaySnd
trigger1 = Time = 20
value = 30,3

;---------------------------------------------------------------------------
; 勝ち
[Statedef 180]
type = S

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
trigger1 = !NumEnemy
value = 185

[State 180, 2]
type = ChangeState
trigger1 = Time = 0
trigger1 = MatchOver
trigger1 = Random < 500
value = 184

[State 180, 3]
type = ChangeState
trigger1 = Time = 0
value = 181+Floor(Random/334)

;---------------------------------------------------------------------------
; 勝ち1(私のことはほっといて)
[Statedef 181]
type = S
ctrl = 0
anim = 180
velset = 0,0

[State 181, 1]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = RoundNotOver

[State 181, 2]
type = PlaySnd
trigger1 = Time = 44
value = 100,7

[State 181, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; 勝ち2(また、一人ぼっちね)
[Statedef 182]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 182, 1]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = RoundNotOver

[State 182, 2]
type = PlaySnd
trigger1 = Time = 20
value = 220,7

[State 182, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; 勝ち3(横笛)
[Statedef 183]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 183, 1]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = RoundNotOver

[State 183, 2]
type = PlaySnd
trigger1 = Time = 5
value = 100,6

[State 183, 5]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; 勝ち4(走り去る)
[Statedef 184]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 184, 1]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = RoundNotOver

[State 184, 2]
type = PlaySnd
trigger1 = AnimElemTime(14) = 0
value = 100,4

[State 184, 3]
type = PlaySnd
trigger1 = AnimElemTime(14) = 8
value = 20,1

[State 184, 4]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 184, 5]
type = PosAdd
trigger1 = AnimElemTime(15) = 0
trigger2 = AnimElemTime(16) = 0
trigger3 = AnimElemTime(17) = 0
trigger4 = AnimElemTime(18) = 0
trigger5 = AnimElemTime(19) = 0
trigger6 = AnimElemTime(20) = 0
x = 40

[State 184, 6]
type = ScreenBound
trigger1 = AnimElemTime(15) > 0
value = 0
movecamera = 0,0

;---------------------------------------------------------------------------
; 勝ち5(最後)
[Statedef 185]
type = S
ctrl = 0
anim = 184
velset = 0,0

[State 185, 1]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = RoundNotOver

[State 185, 2]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

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
trigger1 = MatchNo = 1
value = 191+floor(random/500)

[State 190, 2]
type = ChangeState
trigger1 = Time = 0
trigger1 = MatchNo != 1
value = 192+floor(random/500)

;---------------------------------------------------------------------------
;試合開始(私でいいの)
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
trigger1 = time = 10
value = 100, 9

[State 191, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
;試合開始2(着物)
[Statedef 192]
type = S
ctrl = 0
velset = 0,0
anim = 191

[State 192, 1]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, 2]
type = PlaySnd
trigger1 = time = 4
value = 100, 4

[State 192, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
;試合開始3(弓拾い)
[Statedef 193]
type = S
ctrl = 0
velset = 0,0
anim = 192
sprpriorioty = 0

[State 193, 1]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 193, 2];bow
type = Explod
trigger1 = AnimElemTime(10) < 0
anim = 3008
ID = 3008
pos = 0,2
removetime = 1
sprpriority = -1
ownpal = 1

[State 193, 3];arrow
type = Explod
trigger1 = AnimElemTime(10) < 0
anim = 3007
ID = 3007
pos = 0,2
removetime = 1
sprpriority = 1
ownpal = 1

[State 193, 4]
type = SprPriority
trigger1 = AnimElemTime(7) = 0
value = 2

[State 193, 5]
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
anim = 170
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 196, 2]
type = AssertSpecial
trigger1 = 1
flag = nokosnd
flag2 = nokoslow

[State 196, 3]
type = LifeAdd
trigger1 = Time = 0
value = -10000

;---------------------------------------------------------------------------
; 近立ち弱斬り
[Statedef 200]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 200                       ;Change animation (Def: no change)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 200, 1]
type = HitDef
trigger1 = AnimElemTime(4) = 1
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = Ceil(fvar(2)*20)        ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
air.animtype = back
fall.animtype = back
guardflag = M                    ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 5, 5                 ;Time attacker pauses, time opponent shakes
sparkno = S8010                  ;Spark anim no (Def: set above)
sparkxy = 12, -72               ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
guard.sparkno = S8110
hitsound = S1, Floor(Random/250)+6;Sound to play on hit
guardsound = S1, Floor(Random/250)+6;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 4             ;Time that the opponent slides back
ground.hittime  = 5              ;Time opponent is in hit state
ground.velocity = -2             ;Velocity at which opponent is pushed
guard.velocity = -4
air.velocity = -4,-6             ;X-velocity at which opponent is pushed,
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
;Y-velocity at which opponent is pushed
getpower = 24,12

[State 200, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 200, 2]
type = Explod
trigger1 = MoveGuarded
anim = 8100
ID = 8100
pos = Ceil(P2Dist X)-12,-72
sprpriority = 2
ownpal = 1
persistent = 0
ignorehitpause = 1

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
value = 0, 1

[State 205, 2]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 406
ID = 406
pos = 20,-100
sprpriority = 3
ownpal = 1

[State 205, 4]
type = Helper
trigger1 = AnimElemTime(4) = 0
name = "L_Arrow"
ID = 205
pos = 20,-100
stateno = 20010
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0

[State 205, 5]
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
trigger1 = Time = 2
value = 0, 5

[State 210, 2]
type = HitDef
trigger1 = AnimElemTime(4) = 1
attr = S, NA
animtype  = Light
damage = Ceil(fvar(2)*28)
guardflag = MA
pausetime = 8, 8
sparkno = S8010
sparkxy = 0,-50
guard.sparkno = S8110
hitsound   = S1, Floor(Random/250)+6
guardsound = S1, Floor(Random/250)+6
ground.type = Low
ground.slidetime = 9
ground.hittime = 17
ground.velocity = -3
guard.velocity = -5
air.velocity = -6,-5
getpower = 200,100

[State 210, 2]
type = Explod
trigger1 = MoveGuarded
anim = 8100
ID = 8100
pos = Ceil(P2Dist X),-50
sprpriority = 2
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 210, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 近立ち中斬り
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
trigger1 = Time = 2
value = 0, 0

[State 220, 2]
type = HitDef
trigger1 = AnimElemTime(4) = 1
attr = S, NA
animtype  = Medium
air.animtype = back
fall.animtype = back
damage = Ceil(fvar(2)*48)
guardflag = M
pausetime = 10,10
guard.pausetime = 0,10
sparkno = S8010
guard.sparkno = S8110
sparkxy = -12,-72
hitsound   = S1, Floor(Random/250)+6
guardsound = S1, Floor(Random/250)+6
ground.type = High
ground.slidetime = 12
ground.hittime = 20
ground.velocity = -3
guard.velocity = -5
air.velocity = -6,-5
getpower = 20,10

[State 220, 3]
type = Explod
trigger1 = MoveGuarded
anim = 8100
ID = 8100
pos = Ceil(P2Dist X)+12,-72
sprpriority = 2
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = MoveGuarded
value = MoveGuarded * 700
ctrl = !MoveGuarded
ignorehitpause = 1

;---------------------------------------------------------------------------
; 遠立ち中斬り
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
trigger1 = AnimElemTime(5) = 0
value = 0, 0

[State 225, 2]
type = Explod
trigger1 = AnimElemTime(5) = 0
anim = 226
ID = 226
pos = 20,-88
sprpriority = 3
ownpal = 1

[State 225, 4]
type = Helper
trigger1 = AnimElemTime(5) = 0
name = "M_Arrow"
ID = 225
pos = 20,-88
stateno = 20020
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0

[State 225, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 近立ち強斬り
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 45
ctrl = 0
velset = 0,0
anim = 240
sprpriority = 2

[State 240, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 240, 2]
type = HitDef
trigger1 = AnimElemTime(5) = 0
attr = S, SA
animtype  = Hard
damage = Ceil(fvar(2)*124)
priority  = 5
guardflag = M
pausetime = 18,18
guard.pausetime = 0, 10
sparkno = S8020
sparkxy = 0,-50
guard.sparkno = S8110
hitsound   = S1, Floor(Random/250)+6
guardsound = S1, Floor(Random/250)+6
ground.type = High
ground.slidetime = 37
ground.hittime = 37
ground.velocity = -6
air.velocity = -6, -5
yaccel = .5
getpower = 220,110

[State 240, 3]
type = Width
trigger1 = P2Dist X >= 0
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(10) < 0
trigger1 = AnimElemTime(2)
trigger1 = AnimElemTime(3)
trigger1 = AnimElemTime(4)
player = 10 + 12 * (AnimElemTime(2) > 0) + 7 * (AnimElemTime(3) > 0) + 7 * (AnimElemTime(4) > 0) + 26 * (AnimElemTime(5) > 0), 0

[State 240, 4]
type = Explod
trigger1 = MoveGuarded
anim = 8100
ID = 8100
pos = Ceil(P2Dist X),-50
sprpriority = 2
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 240, 6]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = MoveGuarded
value = MoveGuarded * 700
ctrl = !MoveGuarded
ignorehitpause = 1

;---------------------------------------------------------------------------
; 遠立ち強斬り
[Statedef 245]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 40
ctrl = 0
velset = 0,0
anim = 245
sprpriority = 1

[State 245, 1]
type = PlaySnd
trigger1 = AnimElemTime(10) = 0
value = 0, 2

[State 245, 2]
type = Explod
trigger1 = AnimElemTime(10) = 0
anim = 246
ID = 246
pos = 20,-78
sprpriority = 3
ownpal = 1

[State 245, 4]
type = Helper
trigger1 = AnimElemTime(10) = 0
name = "S_Arrow"
ID = 225
pos = 20,-84
stateno = 20030
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0

[State 245, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ６キック
[Statedef 250]
type    = C
movetype= A
physics = C
juggle  = 2
poweradd= 40
ctrl = 0
velset = 0,0
anim = 250

[State 250, 1]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 0, 5

[State 250, 2]
type = HitDef
trigger1 = AnimElemTime(4) = 1
attr = S, NA
animtype  = back
air.animtype = back
fall.animtype = back
damage = Ceil(fvar(2)*20)
guardflag = LA
pausetime = 5,5
sparkno = S8010
guard.sparkno = S8110
sparkxy = 0,-56
hitsound   = S1, Floor(Random/250)+6
guardsound = S1, Floor(Random/250)+6
ground.type = High
ground.slidetime = 12
ground.hittime = 20
ground.velocity = -3,-5
guard.velocity = -5
air.velocity = -3,-5
fall = 1
fall.recover = 0
getpower = 20,10

[State 250, 3]
type = VelSet
trigger1 = AnimElemTime(6) >= 0
x = -6.25*(AnimElemTime(10) < 0)

[State 250, 4]
type = Explod
trigger1 = MoveGuarded
anim = 8100
ID = 8100
pos = Ceil(P2Dist X),-56
sprpriority = 2
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 250, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; ３キック
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
trigger1 = Time = 2
value = 0, 5

[State 260, 2]
type = HitDef
trigger1 = AnimElemTime(4) = 1
attr = S, NA
animtype  = back
air.animtype = back
fall.animtype = back
damage = Ceil(fvar(2)*60)
guardflag = LA
pausetime = 5,5
sparkno = S8010
guard.sparkno = S8110
sparkxy = 0,-10
hitsound   = S1, Floor(Random/250)+6
guardsound = S1, Floor(Random/250)+6
ground.type = Trip
ground.slidetime = 12
ground.hittime = 20
ground.velocity = -3,-3
guard.velocity = -5
air.velocity = -3,-3
fall = 1
fall.recover = 0
getpower = 20,10

[State 260, 3]
type = VelSet
trigger1 = Time = 0
trigger1 = PrevStateNo != 100
trigger2 = AnimElemTime(3) = 0
trigger3 = AnimElemTime(13) = 0
x = const(velocity.run.fwd.x)*(AnimElemTime(13) < 0)*(Time != 0)

[State 260, 4]
type = VelMul
trigger1 = AnimElemTime(3) >= 0
x = .9

[State 260, 5]
type = Explod
trigger1 = MoveGuarded
anim = 8100
ID = 8100
pos = Ceil(P2Dist X),-10
sprpriority = 2
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 260, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; リープアタック
[Statedef 270]
type    = A
movetype= A
physics = N
juggle  = 2
poweradd= 40
ctrl = 0
velset = -50/22,-4
anim = 270

[State 270, 1]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 0, 0

[State 270, 2]
type = HitDef
trigger1 = AnimElemTime(5) = 1
attr = A, NA
animtype  = hard
air.animtype = back
fall.animtype = back
damage = Ceil(fvar(2)*44)
guardflag = HA
pausetime = 4+(P2Statetype = C)*6,4+(P2Statetype = C)*6
sparkno = S8010
guard.sparkno = S8110
sparkxy = 0,-60
hitsound   = S1, Floor(Random/250)+6
guardsound = S1, Floor(Random/250)+6
ground.type = High
ground.slidetime = 4+(P2Statetype = C)*8
ground.hittime = 4+(P2Statetype = C)*16
ground.velocity = -4
guard.velocity = -5
air.velocity = -4,-4
getpower = 20,10

[State 270, 3]
type = VelAdd
trigger1 = 1
y = .34

[State 270, 4]
type = Explod
trigger1 = MoveGuarded
anim = 8100
ID = 8100
pos = Ceil(P2Dist X),-60
sprpriority = 2
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 270, 5]
type = VarAdd
trigger1 = !MoveHit
trigger1 = Time = 18
fvar(1) = -10

[State 270, 7]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 271
ctrl = 0

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
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 11

;---------------------------------------------------------------------------
; 裏拳
[Statedef 280]
type    = S
movetype= A
physics = N
juggle  = 2
poweradd= 40
ctrl = 0
anim = 280

[State 280, 1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 0, 5

[State 280, 2]
type = HitDef
trigger1 = AnimElemTime(2) = 1
attr = S, NA
animtype  = Medium
air.animtype = back
fall.animtype = back
damage = Ceil(fvar(2)*16)
guardflag = MA
pausetime = 2,2
sparkno = S8010
guard.sparkno = S8110
sparkxy = 0,-60
hitsound   = S1, Floor(Random/250)+6
guardsound = S1, Floor(Random/250)+6
ground.type = High
ground.slidetime = 12
ground.hittime = 17
ground.velocity = -3
guard.velocity = -5
air.velocity = -3,-3
getpower = 20,10

[State 270, 3]
type = VelMul
trigger1 = 1
x = .9

[State 280, 4]
type = Width
trigger1 = P2Dist X >= 0
trigger1 = AnimElemTime(1) > 0
trigger1 = AnimElemTime(5) < 0
trigger1 = AnimElemTime(1)
trigger1 = AnimElemTime(2)
trigger1 = AnimElemTime(3)
player = 10 + 12 * (AnimElemTime(1) > 0) + 7 * (AnimElemTime(2) > 0) + 7 * (AnimElemTime(3) > 0), 0

[State 280, 5]
type = Explod
trigger1 = MoveGuarded
anim = 8100
ID = 8100
pos = Ceil(P2Dist X),-60
sprpriority = 2
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 280, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ２回転裏拳
[Statedef 285]
type    = S
movetype= A
physics = N
juggle  = 2
poweradd= 40
ctrl = 0
anim = 285

[State 285, 1]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 0, 5

[State 285, 2]
type = HitDef
trigger1 = AnimElemTime(2) = 1
attr = S, NA
animtype  = Hard
air.animtype = back
fall.animtype = back
damage = Ceil(fvar(2)*16)
guardflag = MA
pausetime = 4,4
sparkno = S8010
guard.sparkno = S8110
sparkxy = 0,-60
hitsound   = S1, Floor(Random/250)+6
guardsound = S1, Floor(Random/250)+6
ground.type = High
ground.slidetime = 16
ground.hittime = 32
ground.velocity = -3
guard.velocity = -5
air.velocity = -3,-3
getpower = 20,10

[State 285, 3]
type = VelMul
trigger1 = 1
x = .95

[State 285, 4]
type = Width
trigger1 = P2Dist X >= 0
trigger1 = AnimElemTime(1) > 0
trigger1 = AnimElemTime(5) < 0
trigger1 = AnimElemTime(1)
trigger1 = AnimElemTime(2)
trigger1 = AnimElemTime(3)
player = 10 + 12 * (AnimElemTime(1) > 0) + 7 * (AnimElemTime(2) > 0) + 7 * (AnimElemTime(3) > 0), 0

[State 285, 5]
type = Width
trigger1 = P2Dist X >= 0
trigger1 = AnimElemTime(5) > 0
trigger1 = AnimElemTime(9) < 0
trigger1 = AnimElemTime(5)
trigger1 = AnimElemTime(6)
trigger1 = AnimElemTime(7)
player = 10 + 12 * (AnimElemTime(5) > 0) + 7 * (AnimElemTime(6) > 0) + 7 * (AnimElemTime(7) > 0), 0

[State 285, 6]
type = Explod
trigger1 = MoveGuarded
anim = 8100
ID = 8100
pos = Ceil(P2Dist X),-60
sprpriority = 2
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 285, 8]
type = ChangeState
trigger1 = AnimElemTime(5) = 0
value = 286

;---------------------------------------------------------------------------
; ２回転裏拳(２段目)
[Statedef 286]
type    = S
movetype= A
physics = N
juggle  = 2
movehitpersist = 1

[State 286, 1]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = 0, 5

[State 286, 2]
type = HitDef
trigger1 = AnimElemTime(7) = 1
attr = S, NA
animtype  = Hard
air.animtype = back
fall.animtype = back
damage = Ceil(fvar(2)*24)
guardflag = MA
pausetime = 4,4
sparkno = S8010
guard.sparkno = S8110
sparkxy = 0,-60
hitsound   = S1, Floor(Random/250)+6
guardsound = S1, Floor(Random/250)+6
ground.type = High
ground.slidetime = 16
ground.hittime = 32
ground.velocity = -3,-5 * MoveHit
guard.velocity = -5
air.velocity = -3,-5
fall = MoveHit
fall.recover = 0
getpower = 20,10

[State 286, 3]
type = VelMul
trigger1 = 1
x = .95

[State 286, 4]
type = Width
trigger1 = P2Dist X >= 0
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(10) < 0
trigger1 = AnimElemTime(2)
trigger1 = AnimElemTime(3)
trigger1 = AnimElemTime(4)
player = 10 + 12 * (AnimElemTime(2) > 0) + 7 * (AnimElemTime(3) > 0) + 7 * (AnimElemTime(4) > 0) + 26 * (AnimElemTime(5) > 0), 0

[State 286, 5]
type = Explod
trigger1 = MoveGuarded
anim = 8100
ID = 8100
pos = Ceil(P2Dist X),-60
sprpriority = 2
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 286, 7]
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
sprpriority = 2

[State 290, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 290, 2]
type = HitDef
trigger1 = AnimElemTime(5) = 0
attr = S, SA
animtype  = Hard
damage = Ceil(fvar(2)*80)
priority  = 5
guardflag = M
pausetime = 5,5
guard.pausetime = 0, 10
sparkno = S8020
guard.sparkno = S8110
sparkxy = 10,-50
hitsound   = S1, Floor(Random/250)+6
guardsound = S1, Floor(Random/250)+6
ground.type = High
ground.slidetime = 16
ground.hittime = 32
ground.velocity = -3,-5
guard.velocity = -5
air.velocity = -3, -5
fall = 1
fall.recover = 0
getpower = 220,110

[State 290, 3]
type = Width
trigger1 = P2Dist X >= 0
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(10) < 0
trigger1 = AnimElemTime(2)
trigger1 = AnimElemTime(3)
trigger1 = AnimElemTime(4)
player = 10 + 12 * (AnimElemTime(2) > 0) + 7 * (AnimElemTime(3) > 0) + 7 * (AnimElemTime(4) > 0) + 26 * (AnimElemTime(5) > 0), 0

[State 290, 4]
type = VelMul
trigger1 = 1
x = .9

[State 290, 5]
type = Explod
trigger1 = MoveGuarded
anim = 8100
ID = 8100
pos = Ceil(P2Dist X)-10,-50
sprpriority = 2
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
juggle  = 1
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
type = Explod
trigger1 = AnimElemTime(5) = 0
anim = 631
ID = 295
pos = 32,-36
sprpriority = 3
ownpal = 1

[State 295, 4]
type = Helper
trigger1 = AnimElemTime(5) = 0
name = "Add_Arrow"
ID = 295
pos = 32,-36
stateno = 20070
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0

[State 295, 5]
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
trigger1 = AnimElemTime(3) = 1
attr = C, NA
damage = Ceil(fvar(2)*16)
animtype  = Light
air.animtype = back
fall.animtype = back
guardflag = MA
pausetime = 4, 4
sparkno = S8010
guard.sparkno = S8110
sparkxy = 10,-32
hitsound   = S1, Floor(Random/250)+6
guardsound = S1, Floor(Random/250)+6
ground.type = Low
ground.slidetime = 4
ground.hittime = 9
ground.velocity = -3
guard.velocity = -5
air.velocity = -3,-4
getpower = 20,10

[State 400, 3]
type = Explod
trigger1 = MoveGuarded
anim = 8100
ID = 8100
pos = Ceil(P2Dist X)-10,-32
sprpriority = 2
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 400, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; 遠しゃがみ弱斬り
[Statedef 405]
type    = C
movetype= A
physics = C
juggle  = 1
poweradd= 40
ctrl = 0
velset = 0,0
anim = 405
sprpriority = 1

[State 405, 1]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = 0, 1

[State 405, 2]
type = Explod
trigger1 = AnimElemTime(6) = 0
anim = 406
ID = 406
pos = 42,-80
sprpriority = 3
ownpal = 1

[State 405, 4]
type = Helper
trigger1 = AnimElemTime(6) = 0
name = "C_L_Arrow"
ID = 405
pos = 42,-80
stateno = 20010
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0

[State 405, 5]
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
value = 0, 4

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
hitsound   = S1, Floor(Random/250)+6
guardsound = S1, Floor(Random/250)+6
ground.type = Low
ground.slidetime = 5
ground.hittime = 5
ground.velocity = -3
guard.velocity = -5
air.velocity = -3,-4
getpower = 20,10

[State 410, 3]
type = Explod
trigger1 = MoveGuarded
anim = 8100
ID = 8100
pos = Ceil(P2Dist X),-8
sprpriority = 2
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 410, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;近しゃがみ中斬り
[Statedef 420]
type    = C
movetype= A
physics = C
poweradd= 30
ctrl = 0
juggle  = 2
anim = 420
sprpriority = 2

[State 420, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 420, 2]
type = HitDef
trigger1 = AnimElemTime(4) = 1
attr = C, NA
damage = Ceil(fvar(2)*68)
guardflag = L
pausetime = 10,10
sparkno = S8010
guard.sparkno = S8110
sparkxy = -16,-10
hitsound   = S1, Floor(Random/250)+6
guardsound = S1, Floor(Random/250)+6
ground.type = Trip
ground.slidetime = 9
ground.hittime = 34
ground.velocity = -2,-2.5
guard.hittime = 17
guard.velocity = -2.5
air.velocity = -2.5
fall = 1
fall.recover = 0
getpower = 20,10

[State 420, 3]
type = Explod
trigger1 = MoveGuarded
anim = 8100
ID = 8100
pos = Ceil(P2Dist X)+16,-10
sprpriority = 2
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 420, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;遠しゃがみ中斬り
[Statedef 425]
type    = C
movetype= A
physics = C
juggle  = 1
poweradd= 40
ctrl = 0
velset = 0,0
anim = 425
sprpriority = 1

[State 425, 1]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = 0, 0

[State 425, 2]
type = Explod
trigger1 = AnimElemTime(6) = 0
anim = 426
ID = 426
pos = 80,-1
sprpriority = 3
ownpal = 1

[State 425, 4]
type = Helper
trigger1 = AnimElemTime(6) = 0
name = "C_M_Arrow"
ID = 425
pos = 60,-1
stateno = 20040
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0

[State 425, 5]
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
juggle  = 8
poweradd= 40
ctrl = 0
velset = 0,0
anim = 430
sprpriority = 1

[State 430, 1]
type = PlaySnd
trigger1 = AnimElemTime(8) = 0
value = 0, 2

[State 430, 2]
type = Explod
trigger1 = AnimElemTime(8) = 0
anim = 431
ID = 431
pos = 42,-80
sprpriority = 3
ownpal = 1

[State 430, 4]
type = Helper
trigger1 = AnimElemTime(8) = 0
name = "C_S_Arrow"
ID = 430
pos = 42,-80
stateno = 20050
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0

[State 430, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
ジャンプ弱パンチ
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 10
ctrl = 0
anim = 600
sprpriority = 2

[State 600, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 600, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 30
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = 0
sparkxy = 0,-30
hitsound   = 5,0
guardsound = 6,0
air.animtype = back
fall.animtype = back
ground.type = High
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -2
guard.hittime = 20
guard.ctrltime = 9
air.velocity = -1.3,-3
getpower = 30,15

;---------------------------------------------------------------------------
;ジャンプキック
[Statedef 610]
type    = A
movetype= A
physics = N
juggle  = 1
poweradd= 10
ctrl = 0
anim = 610
sprpriority = 2

[State 610, 1]
type = Gravity
trigger1 = 1

[State 610, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 4

[State 610, 3]
type = HitDef
trigger1 = AnimElemTime(2) = 1
trigger1 = p2dist  x > 4
attr = A, NA
damage = Ceil(fvar(2)*40)
guardflag = HA
priority = 4
pausetime = 10,10
sparkno = S8010
guard.sparkno = S8110
sparkxy = 0,-32
hitsound   = S1, Floor(Random/250)+6
guardsound = S1, Floor(Random/250)+6
animtype = Medium
air.animtype = back
fall.animtype = back
ground.type = High
ground.slidetime = 7
ground.hittime = 12
air.hittime = 12
ground.velocity = -4
guard.velocity = -4
air.velocity =  -4, -5
getpower = 60,30

[State 610, 4]
type = Explod
trigger1 = MoveGuarded
anim = 8100
ID = 8100
pos = Ceil(P2Dist X),-32
sprpriority = 2
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 610, 5]
type = ChangeState
triggerall = Vel Y > 0
trigger1 = Pos Y >= -30
trigger1 = !HitCount
trigger2 = Pos Y >= 0
value = 52+559*(Pos Y >= -30)

;---------------------------------------------------------------------------
;ジャンプキック(着地間際)
[Statedef 611]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
sprpriority = 2

[State 611, 1]
type = Gravity
trigger1 = 1

[State 611, 2]
type = HitDef
trigger1 = AnimElemTime(2) = 1
trigger1 = p2dist  x > 4
attr = A, NA
damage = Ceil(fvar(2)*40)
guardflag = HA
priority = 4
pausetime = 10,10
sparkno = S8010
guard.sparkno = S8110
sparkxy = 0,-32
hitsound   = S1, Floor(Random/250)+6
guardsound = S1, Floor(Random/250)+6
animtype = Hard
air.animtype = back
fall.animtype = back
ground.type = High
ground.slidetime = 24
ground.hittime = 40
air.hittime = 40
ground.velocity = -12
guard.velocity = -4
air.velocity =  -4, -5
getpower = 60,30

[State 611, 3]
type = Explod
trigger1 = MoveGuarded
anim = 8100
ID = 8100
pos = Ceil(P2Dist X),-32
sprpriority = 2
ownpal = 1
persistent = 0
ignorehitpause = 1

;---------------------------------------------------------------------------
;ジャンプ弱射
[Statedef 620]
type    = A
movetype= A
physics = N
poweradd= 40
ctrl = 0
velset = 0,0
anim = 620
sprpriority = 1

[State 620, 1]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 0, 1

[State 620, 2]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 621
ID = 621
pos = 40,-86
sprpriority = 3
ownpal = 1

[State 620, 4]
type = Helper
trigger1 = AnimElemTime(3) = 0
name = "J_L_Arrow"
ID = 620
pos = 40,-86
stateno = 20010
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0

[State 620, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 660

;---------------------------------------------------------------------------
;ジャンプ中射
[Statedef 630]
type    = A
movetype= A
physics = N
poweradd= 40
ctrl = 0
velset = 0,0
anim = 630
sprpriority = 1

[State 630, 1]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 0, 0

[State 630, 2]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 631
ID = 631
pos = 22,-64
sprpriority = 3
ownpal = 1

[State 630, 4]
type = Helper
trigger1 = AnimElemTime(4) = 0
name = "J_M_Arrow"
ID = 630
pos = 22,-64
stateno = 20070
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0

[State 630, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 660

;---------------------------------------------------------------------------
;ジャンプ強射
[Statedef 640]
type    = A
movetype= A
physics = N
poweradd= 40
ctrl = 0
velset = 0,0
anim = 640
sprpriority = 1

[State 640, 1]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = 0, 2

[State 640, 2]
type = Explod
trigger1 = AnimElemTime(6) = 0
anim = 641
ID = 641
pos = 16,-48
sprpriority = 3
ownpal = 1

[State 640, 4]
type = Helper
trigger1 = AnimElemTime(6) = 0
name = "J_S_Arrow"
ID = 640
pos = 20,-48
stateno = 20080
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0

[State 640, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 660

;---------------------------------------------------------------------------
;ジャンプ斬り技後
[Statedef 660]
type    = A
movetype= I
physics = N
ctrl = 0
anim = 660
velset = -3,-7

[State 660, 1]
type = PlaySnd
trigger1 = Time = 0
value = 20, 0

[State 660, 2]
type = VelAdd
trigger1 = 1
y = .56

[State 660, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 690
ctrl = 0

;---------------------------------------------------------------------------
;カジフチ
[Statedef 680]
type    = A
movetype= A
physics = N
juggle  = 1
poweradd= 40
velset = 0,0
ctrl = 0
anim = 680
sprpriority = 2

[State 680, 1]
type = PlaySnd
trigger1 = Time = 10
value = 0, 4

[State 680, 2]
type = Null;PlaySnd
trigger1 = Time = 10
value = 0, 4

[State 680, 3]
type = VelSet
trigger1 = Time = 10
x = 4
y = 5

[State 680, 4]
type = HitDef
trigger1 = AnimElemTime(4) = 1
attr = A, NA
damage = 16
guardflag = HA
priority = 4
pausetime = 25,25
sparkno = S8010
guard.sparkno = S8110
sparkxy = 0,-32
hitsound   = S1, Floor(Random/250)+6
guardsound = S1, Floor(Random/250)+6
animtype = Medium
air.animtype = back
fall.animtype = back
ground.type = High
ground.slidetime = 4
ground.hittime = 4
air.hittime = 12
ground.velocity = -4
guard.velocity = -4
air.velocity =  -4, -5
getpower = 60,30

[State 680,5]
type = ChangeState
trigger1 = AnimElemTime(4) = 5
value = 681

[State 680, 6]
type = Explod
trigger1 = MoveGuarded
anim = 8100
ID = 8100
pos = Ceil(P2Dist X),-32
sprpriority = 2
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 680,8]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 690
ctrl = 1

;---------------------------------------------------------------------------
;カジフチ(ループ)
[Statedef 681]
type    = A
movetype= A
physics = N
juggle  = 1

[State 681, 1]
type = HitDef
trigger1 = AnimElemTime(4) = 1
trigger2 = AnimElemTime(6) = 1
attr = A, NA
damage = 42
guardflag = HA
priority = 4
pausetime = 25,25
sparkno = S8010
guard.sparkno = S8110
sparkxy = 0,-32
hitsound   = S1, Floor(Random/250)+6
guardsound = S1, Floor(Random/250)+6
animtype = Medium
air.animtype = back
fall.animtype = back
ground.type = High
ground.slidetime = 4
ground.hittime = 4
air.hittime = 12
ground.velocity = -4
guard.velocity = -4
air.velocity =  -4, -5
getpower = 60,30

[State 681,2]
type = ChangeState
triggerall = Time > 0
trigger1 = AnimElemTime(4) = 5
trigger2= AnimElemTime(6) = 5
value = 681

[State 681, 3]
type = Explod
trigger1 = MoveGuarded
anim = 8100
ID = 8100
pos = Ceil(P2Dist X),-32
sprpriority = 2
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 681,5]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 690
ctrl = 1

;---------------------------------------------------------------------------
;ジャンプ攻撃着地
[Statedef 690]
type    = C
movetype= I
physics = C
anim = 690

[State 690, 1]
type = PlaySnd
trigger1 = Time = 0
value = 40, 0

[State 690, 2]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 690, 3]
type = PosSet
trigger1 = Time = 0
y = 0

[State 690, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

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
value = 41
elem = 6

;---------------------------------------------------------------------------
; 弾かれ
[Statedef 700]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0
anim = 700 + (PrevStateNo = 220) + (PrevStateNo = 240) * 2
sprpriority = 2

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
sprpriority = 1

[State 800, 1]
type = HitDef
trigger1 = AnimElemTime(3) = 1
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
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = MoveHit
trigger2 = NumTarget
value = (MoveHit)*(NumTarget>0)*810
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
sprpriority = 1

[State 801, 1]
type = HitDef
trigger1 = AnimElemTime(3) = 1
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
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = MoveHit
trigger2 = NumTarget
value = (MoveHit)*(NumTarget>0)*820
ctrl = (AnimTime = 0)

;---------------------------------------------------------------------------
; 前崩し
[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810
poweradd = 100
sprpriority = 1

[State 810, 1]
type = TargetState
trigger1 = Time = 0
value = 811

[State 810, 2]
type = PlaySnd
trigger1 = Time = 0
value = 20, 0

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
value = 1, 9

[State 810, 11]
type = ChangeState
trigger1 = AnimElemTime(5) > 5
trigger1 = command = "a" || command = "x" || command = "z"
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
Trigger1 = Time = 34
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
trigger1 = Time > 71
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 後ろ崩し
[Statedef 820]
type    = S
movetype= A
physics = N
anim = 820
poweradd = 100
sprpriority = 1

[State 820, 1]
type = TargetState
trigger1 = Time = 0
value = 821

[State 820, 2]
type = PlaySnd
trigger1 = Time = 0
value = 20, 0

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

[State 820, 11]
type = TargetBind
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 40, 0

[State 810, 12]
type = ChangeState
trigger1 = AnimElemTime(6) > 1
trigger1 = command = "a" || command = "x" || command = "z"
value = 850

[State 820, 13]
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
Trigger1 = Time = 50
x = 4

[State 821, 4]
type = VelMul
trigger1 = 1
x = .93*(Time<81)

[State 821, 5]
type = VelSet
trigger1 = Time > 91
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
physics = N
juggle  = 2
poweradd= 45
ctrl = 0
anim = 290
sprpriority = 2

[State 850, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 850, 2]
type = HitDef
trigger1 = AnimElemTime(5) = 0
attr = S, SA
animtype  = Hard
damage    = 96
priority  = 5
guardflag = M
pausetime = 16,16
guard.pausetime = 10, 10
sparkno = S8020
guard.sparkno = S8100
sparkxy = 10,-50
hitsound   = S1, Floor(Random/250)+6
guardsound = S1, Floor(Random/250)+6
ground.type = High
ground.slidetime = 16
ground.hittime = 32
ground.velocity = -3,-5
guard.velocity = -5
air.velocity = -3, -5
fall = 1
fall.recover = 0
getpower = 220,110

[State 850, 3]
type = Width
trigger1 = P2Dist X >= 0
trigger1 = AnimElemTime(2) >= 0
trigger1 = AnimElemTime(10) < 0
trigger1 = AnimElemTime(2)
trigger1 = AnimElemTime(3)
trigger1 = AnimElemTime(4)
player = 10 + 12 * (AnimElemTime(2) > 0) + 7 * (AnimElemTime(3) > 0) + 7 * (AnimElemTime(4) > 0) + 26 * (AnimElemTime(5) > 0), 0

[State 850, 4]
type = Explod
trigger1 = MoveGuarded
anim = 8100
ID = 8100
pos = Ceil(P2Dist X)-10,-50
sprpriority = 2
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 850, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- 
; 弱地弓心 
[Statedef 1000] 
type    = S 
movetype= A 
physics = S 
poweradd= 45 
velset = 0,0 
anim = 1000 
ctrl = 0 
sprpriority = 1

[State 1000, 1]
type = ChangeState
trigger1 = Anim = 1000
value = 1001

;--------------------------------------------------------------------------- 
; 地弓心(共通)
[Statedef 1001] 
type    = S 
movetype= A 
physics = S 
sprpriority = 1

[State 1001, 1-1]
type = Helper
trigger1 = AnimElemTime(8) = 0
name = "Chi_Arrow_Up_1"
ID = 1001
pos = 0,-112
stateno = 20101
ownpal = 1

[State 1001, 1-2]
type = Helper
trigger1 = AnimElemTime(8) = 0
name = "Chi_Arrow_Up_2"
ID = 1002
pos = 2,-112
stateno = 20102
ownpal = 1

[State 1001, 1-3]
type = Helper
trigger1 = AnimElemTime(8) = 0
name = "Chi_Arrow_Up_3"
ID = 1003
pos = -2,-112
stateno = 20103
ownpal = 1

[State 1001, 1-4]
type = Helper
triggerall = AnimElemTime(8) = 0
trigger1 = Anim = 1010
trigger2 = Anim = 1020
name = "Chi_Arrow_Up_4"
ID = 1004
pos = 1,-112
stateno = 20104
ownpal = 1

[State 1001, 1-5]
type = Helper
trigger1 = AnimElemTime(8) = 0
trigger1 = Anim = 1020
name = "Chi_Arrow_Up_5"
ID = 1005
pos = -1,-112
stateno = 20105
ownpal = 1

[State 1001, 2] 
type = PlaySnd 
trigger1 = AnimElem = 16
value = 210, 1 

[State 1001, 3] 
type = PlaySnd 
trigger1 = AnimElem = 17
trigger2 = AnimElem = 21
trigger3 = AnimElem = 25
trigger4 = AnimElem = 29 && Anim = [1010,1020]
trigger5 = AnimElem = 33 && Anim = 1020
value = 0, 1 

[State 1001, 4]
type = Helper
trigger1 = AnimElem = 17
trigger2 = AnimElem = 21
trigger3 = AnimElem = 25
trigger4 = AnimElem = 29 && Anim = [1010,1020]
trigger5 = AnimElem = 33 && Anim = 1020
name = "Chi_Arrow"
ID = 1000
pos = 32,-94+floor(random/20)
stateno = 20100
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0

[State 1001, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- 
; 中地弓心 
[Statedef 1010] 
type    = S 
movetype= A 
physics = S 
poweradd= 45 
velset = 0,0 
anim = 1010 
ctrl = 0 
sprpriority = 1

[State 1010, 1]
type = ChangeState
trigger1 = Anim = 1010
value = 1001

;--------------------------------------------------------------------------- 
; 強地弓心 
[Statedef 1020] 
type    = S 
movetype= A 
physics = S 
poweradd= 45 
velset = 0,0 
anim = 1020 
ctrl = 0 
sprpriority = 1

[State 1020, 1]
type = ChangeState
trigger1 = Anim = 1020
value = 1001

;--------------------------------------------------------------------------- 
; 天弓心 
[Statedef 1030] 
type    = S
movetype= A
physics = S
poweradd= 45
velset = 0,0
anim = 1030
ctrl = 0 
sprpriority = 1

[State 1030, 1-1]
type = Helper
trigger1 = AnimElemTime(8) = 0
name = "Ten_Arrow_Up_1"
ID = 1031
pos = 0,-112
stateno = 20111
ownpal = 1

[State 1030, 1-2]
type = Helper
trigger1 = AnimElemTime(8) = 0
name = "Ten_Arrow_Up_2"
ID = 1032
pos = 2,-112
stateno = 20112
ownpal = 1

[State 1030, 1-3]
type = Helper
trigger1 = AnimElemTime(8) = 0
name = "Ten_Arrow_Up_3"
ID = 1033
pos = -2,-112
stateno = 20113
ownpal = 1

[State 1030, 1-4]
type = Helper
trigger1 = AnimElemTime(8) = 0
name = "Ten_Arrow_Up_4"
ID = 1034
pos = 1,-112
stateno = 20114
ownpal = 1

[State 1030, 1-5]
type = Helper
trigger1 = AnimElemTime(8) = 0
name = "Ten_Arrow_Up_5"
ID = 1035
pos = -1,-112
stateno = 20115
ownpal = 1

[State 1030, 2] 
type = StateTypeSet
trigger1 = AnimElemTime(8) = 0
statetype = A
physics = N

[State 1030, 3] 
type = VelSet
trigger1 = AnimElemTime(8) = 0
x = 4
y = -19.2

[State 1030, 4] 
type = VelAdd
trigger1 = AnimElemTime(8) >= 0
y = 1.2 - (AnimElemTime(10)>=0)*.67

[State 1030, 5] 
type = PlaySnd
trigger1 = AnimElemTime(10) = 0
value = 210, 2

[State 1030, 6] 
type = VelSet
trigger1 = AnimElemTime(14) = 0
trigger2 = AnimElemTime(33) = 0
x = -2 + (AnimElemTime(33) = 0)*1.8
y = -1 + (AnimElemTime(33) = 0)

[State 1030, 7]
type = PlaySnd
trigger1 = AnimElem = 14
trigger2 = AnimElem = 18
trigger3 = AnimElem = 22
trigger4 = AnimElem = 26
trigger5 = AnimElem = 30
value = 0, 1

[State 1030, 8]
type = Helper
trigger1 = AnimElem = 14
trigger2 = AnimElem = 18
trigger3 = AnimElem = 22
trigger4 = AnimElem = 26
trigger5 = AnimElem = 30
name = "Ten_Arrow"
ID = 1030
pos = 22,-64
stateno = 20110
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0

[State 1030, 9]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1032

;---------------------------------------------------------------------------
;天弓心着地
[Statedef 1032]
type    = C
movetype= I
physics = C
anim = 1032

[State 1032, 1]
type = PlaySnd
trigger1 = Time = 0
value = 40, 0

[State 1032, 2]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 1032, 3]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1032, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;--------------------------------------------------------------------------- 
; 弱シニマブイの嘆き 
[Statedef 1100] 
type    = C 
movetype= A 
physics = C 
juggle  = 4 
poweradd= 45 
velset = 0,0 
anim = 1100 
ctrl = 0 
sprpriority = 2 

[State 1100, 1] 
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
statetype = A
physics = N

[State 1100, 2] 
type = VelSet
trigger1 = AnimElemTime(4) = 0
x = 7
y = -23

[State 1100, 3] 
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = 1.8

[State 1100, 4] 
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 210, 0

[State 1100, 5] 
type = VelSet
trigger1 = AnimElemTime(27) = 0
x = 1
y = 0

[State 1100, 6] 
type = Turn
trigger1 = AnimElemTime(27) = 0

[State 1100, 7]
type = PlaySnd
trigger1 = AnimElem = 29
value = 0, 0

[State 1100, 8]
type = Helper
trigger1 = AnimElem = 29
name = "Sini_Arrow"
ID = 1110
pos = 20,-24
stateno = 20100
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0

[State 1100, 9]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA

[State 1100, 10]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1101

;---------------------------------------------------------------------------
;シニマブイの嘆き着地(弱)
[Statedef 1101]
type    = C
movetype= I
physics = N
anim = 1101

[State 1101, 0]
type = Turn
trigger1 = Time = 0

[State 1101, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1101, 2]
type = VelSet
trigger1 = Time = 0
x = 4
y = 0

[State 1101, 3]
type = VelMul
trigger1 = 1
x = .9

[State 1101, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;--------------------------------------------------------------------------- 
; 中シニマブイの嘆き 
[Statedef 1110] 
type    = C 
movetype= A 
physics = C 
juggle  = 4 
poweradd= 45 
velset = 0,0 
anim = 1110 + (Anim = 1120)*10
ctrl = 0 
sprpriority = 2 

[State 1110, 1] 
type = StateTypeSet
trigger1 = AnimElemTime(6) = 0
statetype = A
physics = N

[State 1110, 2] 
type = VelSet
trigger1 = AnimElemTime(6) = 0
x = 10
y = -24

[State 1110, 3] 
type = VelAdd
trigger1 = AnimElemTime(6) >= 0
y = 1.2

[State 1110, 4] 
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = 210, (P2BodyDist X < 60)*8

[State 1110, 5] 
type = VelSet
trigger1 = Vel Y > 10
trigger1 = Pos Y >= -24
x = Vel X / 10
y = 0

[State 1110, 6] 
type = Turn
trigger1 = Anim = 1110 && AnimElemTime(25) = 0
trigger2 = Anim = 1120 && AnimElemTime(21) = 0

[State 1110, 7]
type = PlaySnd
trigger1 = Anim = 1110 && AnimElem = 27
trigger2 = Anim = 1120 && AnimElem = 23
value = 0, 0

[State 1110, 8]
type = Helper
trigger1 = Anim = 1110 && AnimElem = 27
trigger2 = Anim = 1120 && AnimElem = 23
name = "Sini_Arrow"
ID = 1110
pos = 20,-24
stateno = 20100
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0

[State 1110, 9]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA

[State 1110, 10]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1111

;---------------------------------------------------------------------------
;シニマブイの嘆き着地(中)
[Statedef 1111]
type    = C
movetype= I
physics = N
anim = 1111

[State 1111, 0]
type = Turn
trigger1 = Time = 0

[State 1111, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1111, 2]
type = VelSet
trigger1 = Time = 0
x = 4
y = 0

[State 1111, 3]
type = VelMul
trigger1 = 1
x = .9

[State 1111, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;--------------------------------------------------------------------------- 
; 強シニマブイの嘆き 
[Statedef 1120] 
type    = C 
movetype= A 
physics = C 
juggle  = 4 
velset = 0,0 
anim = 1120
ctrl = 0 
sprpriority = 2 

[State 1120, 1] 
type = ChangeState 
trigger1 = Time = 0 
value = 1110 

;--------------------------------------------------------------------------- 
; スンガンの誘い 
[Statedef 1200] 
type    = S
movetype= I
physics = S
juggle  = 1
poweradd= 45
ctrl = 0
velset = 0,0
anim = 1200
sprpriority = 1

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElemTime(9) = 0
value = 200, 5

[State 1200, 2]
type = PlaySnd
trigger1 = AnimElemTime(9) = 0
value = 0, 6

[State 1200, 3]
type = Helper
trigger1 = AnimElemTime(9) = 0
name = "Sun_Arrow"
ID = 1200+Numhelper(1200)+Numhelper(1201)+Numhelper(1202)
pos = -12,-120
stateno = 20150
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0

[State 1200, 4]
type = VarAdd
trigger1 = AnimElemTime(9) = 0
trigger1 = var(15) <= 3
v = 15
value = 1

[State 1200, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- 
; スンガンの迎え 
[Statedef 1210] 
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 45
ctrl = 0
velset = 0,0
anim = 1210
sprpriority = 1

[State 1210, 1]
type = Helper
trigger1 = AnimTime = 0
trigger1 = var(15) = [1,3]
name = "Sun_Arrow_down"
ID = 1210+Numhelper(1210)+Numhelper(1211)
pos = -4,-320
postype = p2
stateno = 20160
ownpal = 1
size.ground.back = 0
size.ground.front = 0
size.air.back = 0
size.air.front = 0

[State 1210, 2]
type = VarAdd
trigger1 = AnimTime = 0
trigger1 = var(15) > 0
v = 15
value = -1

[State 1210, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- 
; チャンプルこっちおいで 
[Statedef 1300] 
type    = S 
movetype= A 
physics = S 
poweradd= 45 
velset = 0,0 
anim = 1300 
ctrl = 0 
sprpriority = 2 

[State 1300, 1] 
type = PlaySnd 
trigger1 = AnimElem = 5 
value = 220, 0 

[State 1300, 2] 
type = PosAdd 
trigger1 = AnimElem = 5 
x = 8 

[State 1300, 3] 
type = PosAdd 
trigger1 = AnimElem = 6 
x = 4 

[State 1300, 4] 
type = PosAdd 
trigger1 = AnimElem = 7 
x = 2 

[State 1300, 14] 
type = ChangeState 
trigger1 = AnimTime = 0 
value = 0 
ctrl = 1 

;--------------------------------------------------------------------------- 
; チャンプルおやすみ 
[Statedef 1310] 
type    = S 
movetype= A 
physics = S 
poweradd= 45 
velset = 0,0 
anim = 1310 
ctrl = 0 
sprpriority = 2 

[State 1310, 1] 
type = PlaySnd 
trigger1 = AnimElem = 5 
value = 220, 0 

[State 1310, 2] 
type = PosAdd 
trigger1 = AnimElem = 5 
x = 8 

[State 1310, 3] 
type = PosAdd 
trigger1 = AnimElem = 6 
x = 4 

[State 1310, 4] 
type = PosAdd 
trigger1 = AnimElem = 7 
x = 2 

[State 1310, 14] 
type = ChangeState 
trigger1 = AnimTime = 0 
value = 0 
ctrl = 1 

;--------------------------------------------------------------------------- 
; ウミチムンの怒り(上昇)
[Statedef 3000] 
type    = S 
movetype= A 
physics = S 
velset = 0,0 
anim = 3000 
ctrl = 0 
sprpriority = 2 

[State 3000, 0] 
type = SuperPause 
trigger1 = Time = 2
time = 35
movetime = 35
anim = S3004
pos = 12,-64
sound = 20,0
poweradd = -1000

[State 3000, 1] 
type = PlaySnd
trigger1 = Time = 2
value = 210, 0

[State 3000, 2] 
type = StateTypeSet
trigger1 = AnimElemTime(6) = 0
statetype = A
physics = N

[State 3000, 3] 
type = VelSet
trigger1 = AnimElemTime(6) = 0
y = -32

[State 3000, 4] 
type = VelAdd
trigger1 = AnimElemTime(6) >= 0
y = 1.6

[State 3000, 5] 
type = PlayerPush
trigger1 = AnimElemTime(6) >= 0
value = 0

[State 3000, 6]
type = HitDef
trigger1 = AnimElemTime(6) = 0
attr = A, HA
damage = Ceil(fvar(2)*60)
guardflag = MA
priority = 4
pausetime = 10,10
sparkno = S8020
guard.sparkno = S8101
sparkxy = floor(P2Dist X-8),-64
hitsound   = S1, Floor(Random/250)+6
guardsound = S1, Floor(Random/250)+6
animtype = up
ground.type = High
ground.slidetime = 16
ground.hittime = 20
air.hittime = 24
ground.velocity = -4,-8
air.velocity = -4,-8
guard.velocity = -4
fall = 1
fall.recover = 0

[State 3000, 7]
type = Helper
trigger1 = AnimElemTime(6) = 0
name = "Bow"
ID = 3000
pos = 0, -60
stateno = 23000
ownpal = 1

[State 3000, 8] 
type = VelSet
trigger1 = AnimElemTime(7) = 0
x = 14

[State 3000, 9] 
type = VelAdd
trigger1 = AnimElemTime(7) >= 0
trigger1 = (Command = "holdfwd")*(Command = "holdback")=0
x = ((Command = "holdfwd")-(Command = "holdback"))*.8

[State 3000, 10] 
type = ScreenBound
trigger1 = AnimElemTime(6) >= 8
value = 1
movecamera = 1,0

[State 3000, 11]
type = Explod
trigger1 = MoveGuarded
anim = 8101
ID = 8101
pos = Ceil(P2Dist X)+8,-64
sprpriority = 2
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 3000, 13] 
type = ChangeState 
trigger1 = AnimTime = 0 
value = 3001 

;--------------------------------------------------------------------------- 
; ウミチムンの怒り(下降)
[Statedef 3001] 
type    = A 
movetype= A 
physics = N 
velset = 0, Vel Y
anim = 3001 
ctrl = 0 
sprpriority = 2 

[State 3001, 1] 
type = VelAdd
trigger1 = 1
y = 2

[State 3001, 2] 
type = PlayerPush
trigger1 = 1
value = 0

[State 3001, 3] 
type = HitDef 
trigger1 = Time = 0 
attr = A, HA
damage = Ceil(fvar(2)*120)
guardflag = HA
priority = 4
pausetime = 20,20
sparkno = S8020
guard.sparkno = S8101
sparkxy = floor(P2Dist X-8),-24
hitsound   = S2, 2
guardsound = S1, Floor(Random/250)+6
animtype = Hard
ground.type = Low
ground.slidetime = 16
ground.hittime = 20
air.hittime = 24
ground.velocity = -2,8
air.velocity = -2,8
guard.velocity = -4
fall = 1
fall.recover = 0

[State 3001, 4] 
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 3001, 5]
type = Explod
trigger1 = MoveGuarded
anim = 8101
ID = 8101
pos = Ceil(P2Dist X)+8,-24
sprpriority = 2
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 3001, 7] 
type = ChangeState 
trigger1 = Vel Y > 0 
trigger1 = Pos Y >= 0 
value = 3002 

;--------------------------------------------------------------------------- 
; ウミチムンの怒り着地 
[Statedef 3002] 
type    = C 
movetype= I 
physics = C 
velset = 0, 0 
anim = 3002 
ctrl = 0 
sprpriority = 2 

[State 3002, 1] 
type = VelSet 
trigger1 = Time = 0
x = 0 
y = 0 

[State 3002, 2] 
type = PosSet 
trigger1 = Time = 0 
y = 0 

[State 3002, 3] 
type = ChangeState 
trigger1 = AnimTime = 0 
value = 0 
ctrl = 1

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
type = Null;StateTypeSet
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
type = Null;StateTypeSet
trigger1 = Time = 0
trigger1 = Pos Y = 0
trigger1 = command = "down"
value = C

[State 6000, 3]
type = ChangeAnim
trigger1 = Time = 0
value = 6000; + (StateType = C)*10 + (StateType = A)*20

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
trigger1 = AnimElemTime(2) < 0
value = SCA,AT

[State 6000, 7]
type = ChangeAnim
trigger1 = AnimElemTime(2) >= 0
trigger1 = Time < 15
value = 6000; + (StateType = C)*10 + (StateType = A)*20
elem = 2

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
value = 200, 1

[State 6000, 11]
type = PalFX
trigger1 = Time < 10
time = 1
add = ceil(128*sin(2*pi*time/3)),ceil(128*sin(2*pi*time/3)),ceil(16*sin(2*pi*time/3))

[State 6000, 12]
type = SprPriority
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
value = (AnimElem = 2)*3-(AnimElem = 3)

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
type = ChangeState
trigger1 = AnimTime = 0
value = 0;(Anim = 6010)*11 + (Anim = 6020)*699
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
type = Null;StateTypeSet
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
type = Null;StateTypeSet
trigger1 = Time = 0
trigger1 = Pos Y = 0
trigger1 = command = "down"
value = C

[State 6001, 3]
type = ChangeAnim
trigger1 = Time = 0
value = 6000; + (StateType = C)*10 + (StateType = A)*20

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
trigger1 = AnimElemTime(2) < 0
value = SCA,AT

[State 6001, 7]
type = ChangeAnim
trigger1 = AnimElemTime(2) >= 0
trigger1 = Time < 15
value = 6000; + (StateType = C)*10 + (StateType = A)*20
elem = 2

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
value = 200, 1

[State 6001, 11]
type = PalFX
trigger1 = Time < 10
time = 1
add = ceil(128*sin(2*pi*time/3)),ceil(128*sin(2*pi*time/3)),ceil(16*sin(2*pi*time/3))

[State 6001, 12]
type = SprPriority
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
value = (AnimElem = 2)*3-(AnimElem = 3)

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
type = ChangeState
trigger1 = AnimTime = 0
value = 0;(Anim = 6010)*11 + (Anim = 6020)*699
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
;血飛沫(シンプル)
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
type = PalFX
trigger1 = GameTime%2
time = 1
mul = 128,128,128
ignorehitpause = 1

[State 8050,4]
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
