; Arcueid Brunestud - cns file No.3
;===========================================================================
; 特殊技
;===========================================================================
;---------------------------------------------------------------------------
;シールド
[Statedef 700] 
type     = S
movetype = I
physics  = S
juggle   = 0
ctrl     = 0
anim     = 700
poweradd = 0
velset   = 0,0

[State 700, Cross Counter - VS.Ciel]
type = VarSet
triggerall = ((EnemyNear,StateType = S) && (P2BodyDist X < 60))
trigger1 = ((P2Name = "CIEL(ELEICIA)") && (Enemy,StateNo = 201))
trigger2 = ((P4Name = "CIEL(ELEICIA)") && (Enemy,StateNo = 201))
v = 5
value = 1
IgnoreHitPause = 1
Persistent = 1

[State 700, Effect]
type = Helper
trigger1 = Time = 1
name = "Enshutsu"
stateno = 706
ID = 700
pos = 0,0
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
IgnoreHitPause = 1
persistent = 0

[State 700, Hold]
type = ReversalDef
trigger1 = Time = 0
reversal.attr = SCA, NA, SA, HA, NP, SP, HP, AA, AP
pausetime     = 0,14
numhits       = 0
sparkno       = -1
sparkxy       = 0,0
hitsound      = s1,ifelse(Random<500,4,5)
P1StateNo = 701

[State 700, Hold Armor]
type = HitOverride
trigger1 = Time >= 0
time = 1
attr = SCA, NA, SA, HA, NP, SP, HP, AA, AP
stateno = 701
IgnoreHitPause = 1

[State 700, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;シールド・成功
[Statedef 701]
type     = S
movetype = I
physics  = N
anim     = 701
poweradd = 100
velset   = 0,0
ctrl = 0

[State 701, Cross Counter - VS.Ciel]
type = VarSet
triggerall = ((var(5) = 1) && (EnemyNear,StateType = S) && (P2BodyDist X < 60))
trigger1 = ((P2Name = "CIEL(ELEICIA)") && (Enemy,StateNo = 202))
trigger2 = ((P4Name = "CIEL(ELEICIA)") && (Enemy,StateNo = 202))
v = 5
value = 2
IgnoreHitPause = 1
Persistent = 1

[State 701, Pause]
type = Pause
triggerall = var(5) < 1
trigger1 = time = 0
time = 15
movetime = 15
IgnoreHitPause = 1
Persistent = 1

[State 701, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 701, Push]
type = PlayerPush
trigger1 = Time >= 0
value = 1

;[State 701, Ctrl]
;type = CtrlSet
;trigger1 = time >= 12
;value = 1

[State 701, Effect]
type = Explod
triggerall = var(5) < 1
trigger1 = Time = 1
anim = 3119
postype = p1
facing = -1
pos = 18,-80
scale = 1,1
sprpriority = 7
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
ontop = 1
ignorehitpause = 1

;*********************************
[State 701, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [1,20]
trigger1 = time = 2
value = s6,3
ignorehitpause = 1
Persistent = 0

[State 701, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [21,40]
trigger1 = time = 2
value = s6,4
ignorehitpause = 1
Persistent = 0

[State 701, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [41,60]
trigger1 = time = 2
value = s6,5
ignorehitpause = 1
Persistent = 0

[State 701, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [61,80]
trigger1 = time = 2
value = s6,6
ignorehitpause = 1
Persistent = 0

;*********************************
[State 701, Change]
type = ChangeState
triggerall = var(5) = 2
Trigger1 = Time > 9
value = 930

[State 701, Change]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;下段シールド
[Statedef 702] 
type     = C
movetype = I
physics  = C
juggle   = 0
ctrl     = 0
anim     = 702
poweradd = 0
velset   = 0,0

[State 702, Effect]
type = Helper
trigger1 = Time = 1
name = "Enshutsu"
stateno = 707
ID = 702
pos = 0,0
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0

[State 702, Hold]
type = ReversalDef
trigger1 = Time = 0
reversal.attr = SCA, NA, SA, HA, NP, SP, HP, AA, AP
pausetime     = 0,14
numhits       = 0
sparkno       = -1
sparkxy       = 0,0
hitsound      = s1,ifelse(Random<500,4,5)
P1StateNo = 703

[State 702, Hold Armor]
type = HitOverride
trigger1 = Time >= 0
time = 1
attr = SCA, NA, SA, HA, NP, SP, HP, AA, AP
stateno = 703
IgnoreHitPause = 1

[State 702, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;シールド・成功
[Statedef 703]
type     = C
movetype = I
physics  = N
anim     = 703
poweradd = 100
velset   = 0,0
ctrl = 0

[State 703, Pause]
type = Pause
trigger1 = time = 0
time = 15
movetime = 15
IgnoreHitPause = 1
Persistent = 1

[State 703, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 703, Push] 
type = PlayerPush
trigger1 = Time >= 0
value = 1

;[State 703, Ctrl]
;type = CtrlSet
;trigger1 = time >= 12
;value = 1

[State 703, Effect]
type = Explod
trigger1 = Time = 1
anim = 3119
postype = p1
facing = -1
pos = 18,-40
scale = 1,1
sprpriority = 7
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
ontop = 1
ignorehitpause = 1

;*********************************
[State 703, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [1,20]
trigger1 = time = 2
value = s6,3
ignorehitpause = 1
Persistent = 0

[State 703, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [21,40]
trigger1 = time = 2
value = s6,4
ignorehitpause = 1
Persistent = 0

[State 703, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [41,60]
trigger1 = time = 2
value = s6,5
ignorehitpause = 1
Persistent = 0

[State 703, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [61,80]
trigger1 = time = 2
value = s6,6
ignorehitpause = 1
Persistent = 0

;*********************************
[State 703, Change]
type = ChangeState
Trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;空中シールド
[Statedef 704] 
type     = A
movetype = I
physics  = A
juggle   = 0
ctrl     = 0
anim     = 704
poweradd = 0

[State 704, Effect]
type = Helper
trigger1 = Time = 1
name = "Enshutsu"
stateno = 708
ID = 704
pos = 0,0
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
persistent = 0

[State 704, Hold]
type = ReversalDef
trigger1 = Time = 0
reversal.attr = SCA, NA, SA, HA, NP, SP, HP, AA, AP
pausetime     = 0,14
numhits       = 0
sparkno       = -1
sparkxy       = 0,0
hitsound      = s1,ifelse(Random<500,4,5)
P1StateNo = 705

[State 704, Hold Armor]
type = HitOverride
trigger1 = Time >= 0
time = 1
attr = SCA, NA, SA, HA, NP, SP, HP, AA, AP
stateno = 705
IgnoreHitPause = 1

;[State 704, Ctrl]
;type = CtrlSet
;trigger1 = ((Enemy,MoveType = A) && (Time >= 6))
;value = 1

[State 704, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 10005

;---------------------------------------------------------------------------
;シールド・成功
[Statedef 705]
type     = A
movetype = I
physics  = N
anim     = 705
poweradd = 100
velset   = 0,0

[State 705, Pause]
type = Pause
trigger1 = time = 0
time = 15
movetime = 15
IgnoreHitPause = 1
Persistent = 1

[State 705, Push] 
type = PlayerPush
trigger1 = Time >= 0
value = 1

;[State 705, Ctrl]
;type = CtrlSet
;trigger1 = time >= 12
;value = 1

[State 705, Effect]
type = Explod
trigger1 = Time = 1
anim = 3119
postype = p1
facing = -1
pos = 26,-52
scale = 1,1
sprpriority = 7
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
ontop = 1
ignorehitpause = 1

;*********************************
[State 705, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [1,20]
trigger1 = time = 2
value = s6,3
ignorehitpause = 1
Persistent = 0

[State 705, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [21,40]
trigger1 = time = 2
value = s6,4
ignorehitpause = 1
Persistent = 0

[State 705, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [41,60]
trigger1 = time = 2
value = s6,5
ignorehitpause = 1
Persistent = 0

[State 705, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [61,80]
trigger1 = time = 2
value = s6,6
ignorehitpause = 1
Persistent = 0

;*********************************
[State 705, Change]
type = ChangeState
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = 52

[State 705, Change]
type = ChangeState
Trigger1 = AnimTime = 0
value = 10005

;===========================================================================
;---------------------------------------------------------------------------
;シールド演出
[Statedef 706] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 20010
SprPriority = 7

[State 706, VarSet]
type = VarSet
trigger1 = StateNo != 706
fv = 37
value = 0
IgnoreHitPause = 1
Persistent = 1

[State 706, VarAdd]
type = VarAdd
trigger1 = 1
fv = 37
value = 0.01
IgnoreHitPause = 1
Persistent = 1

[State 706, Color Gradation]
type = Palfx
trigger1 = 1
add = ceil(-fvar(37)*2000),ceil(-fvar(37)*2000),ceil(-fvar(37)*2000)
time = 1
IgnoreHitPause = 1
RemoveOnGetHit = 1
Persistent = 1

;*********************************
[State 706, Bind]
type = BindToRoot
trigger1 = 1
pos = 0,0
IgnoreHitPause = 1
Persistent = 1

[State 706, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

;*********************************
[State 706, Effect]
type = Explod
trigger1 = 1
anim = 706
postype = p1
pos = 0,0
scale = 1,1
sprpriority = 7
;ownpal = 1
bindtime = -1
IgnoreHitPause = 1
RemoveOnGetHit = 1
supermovetime = 99999999
pausemovetime = 99999999
ID = 706

[State 706, Modify]
type = ModifyExplod
trigger1 = 1
scale = 1+fvar(37),1+fvar(37)
supermovetime = 99999999
pausemovetime = 99999999
ID = 706

[State 706, Remove]
type = RemoveExplod
trigger1 = Time >= 10
ID = 706

;***********************************
[State 706, Change]
type = DestroySelf
trigger1 = Time = 10

;---------------------------------------------------------------------------
;下段シールド演出
[Statedef 707] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 20010
SprPriority = -1

[State 707, VarSet]
type = VarSet
trigger1 = StateNo != 707
fv = 38
value = 0
IgnoreHitPause = 1
Persistent = 1

[State 707, VarAdd]
type = VarAdd
trigger1 = 1
fv = 38
value = 0.01
IgnoreHitPause = 1
Persistent = 1

[State 707, Color Gradation]
type = Palfx
trigger1 = 1
add = ceil(-fvar(38)*2000),ceil(-fvar(38)*2000),ceil(-fvar(38)*2000)
time = 1
IgnoreHitPause = 1
Persistent = 1

;*********************************
[State 707, Bind]
type = BindToRoot
trigger1 = 1
pos = 0,0
IgnoreHitPause = 1
Persistent = 1

[State 707, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

;*********************************
[State 707, Effect]
type = Explod
trigger1 = 1
anim = 707
postype = p1
pos = 0,0
scale = 1,1
sprpriority = 7
;ownpal = 1
bindtime = -1
IgnoreHitPause = 1
RemoveOnGetHit = 1
supermovetime = 99999999
pausemovetime = 99999999
ID = 707

[State 707, Modify]
type = ModifyExplod
trigger1 = 1
scale = 1+fvar(38),1+fvar(38)
supermovetime = 99999999
pausemovetime = 99999999
ID = 707

[State 707, Remove]
type = RemoveExplod
trigger1 = Time >= 10
ID = 707

;***********************************
[State 707, Change]
type = DestroySelf
trigger1 = Time = 10

;---------------------------------------------------------------------------
;空中シールド演出
[Statedef 708] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 20010
SprPriority = -1

[State 708, VarSet]
type = VarSet
trigger1 = StateNo != 708
fv = 39
value = 0
IgnoreHitPause = 1
Persistent = 1

[State 708, VarAdd]
type = VarAdd
trigger1 = 1
fv = 39
value = 0.01
IgnoreHitPause = 1
Persistent = 1

[State 708, Color Gradation]
type = Palfx
trigger1 = 1
add = ceil(-fvar(39)*2000),ceil(-fvar(39)*2000),ceil(-fvar(39)*2000)
time = 1
IgnoreHitPause = 1
Persistent = 1

;*********************************
[State 708, Bind]
type = BindToRoot
trigger1 = 1
pos = 0,0
IgnoreHitPause = 1
Persistent = 1

[State 708, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

;*********************************
[State 708, Effect]
type = Explod
trigger1 = 1
anim = 708
postype = p1
pos = 0,0
scale = 1,1
sprpriority = 7
;ownpal = 1
bindtime = -1
IgnoreHitPause = 1
RemoveOnGetHit = 1
supermovetime = 99999999
pausemovetime = 99999999
ID = 708

[State 708, Modify]
type = ModifyExplod
trigger1 = 1
scale = 1+fvar(39),1+fvar(39)
supermovetime = 99999999
pausemovetime = 99999999
ID = 708

[State 708, Remove]
type = RemoveExplod
trigger1 = Time >= 10
ID = 708

;***********************************
[State 708, Change]
type = DestroySelf
trigger1 = Time = 10

;===========================================================================
;---------------------------------------------------------------------------
;上段避け
[Statedef 710]
type     = S
movetype = I
physics  = S
anim     = 710
velset   = 3,0
ctrl     = 0
sprpriority = -1

[State 710, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA

[State 710, Flag]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn
ignorehitpause = 1

[State 710, Push] 
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 710, PosSet]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 710, CtrlSet]
type = CtrlSet
trigger1 = Time > 14
value = 1

;*********************************
[State 710, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [1,20]
trigger1 = time = 2
value = s6,7
ignorehitpause = 1
Persistent = 0

[State 710, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [21,40]
trigger1 = time = 2
value = s6,8
ignorehitpause = 1
Persistent = 0

[State 710, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [41,60]
trigger1 = time = 2
value = s6,9
ignorehitpause = 1
Persistent = 0

[State 710, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [61,80]
trigger1 = time = 2
value = s7,0
ignorehitpause = 1
Persistent = 0

;*********************************
[State 710, Change]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;下段避け
[Statedef 711]
type     = A
movetype = I
physics  = N
anim     = 711
velset   = 1.8,-6.2
ctrl     = 0
sprpriority = 2

[State 711, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA

[State 711, Flag]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn
ignorehitpause = 1

[State 711, Push] 
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 711, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = 0.45

[State 711, VelSet]
type = VelSet
trigger1 = ((Vel Y > 0) && (Pos Y >= 0))
x = 0

[State 711, CtrlSet]
type = CtrlSet
trigger1 = Time > 14
value = 1

;*********************************
[State 711, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [1,20]
trigger1 = time = 2
value = s6,7
ignorehitpause = 1
Persistent = 0

[State 711, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [21,40]
trigger1 = time = 2
value = s6,8
ignorehitpause = 1
Persistent = 0

[State 711, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [41,60]
trigger1 = time = 2
value = s6,9
ignorehitpause = 1
Persistent = 0

[State 711, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [61,80]
trigger1 = time = 2
value = s7,0
ignorehitpause = 1
Persistent = 0

;*********************************
[State 711, Change]
type = ChangeState
trigger1 = ((Vel Y > 0) && (Pos Y >= 0))
value = 52

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;===========================================================================
; 投げ技
;===========================================================================
;---------------------------------------------------------------------------
;地上投げ
[Statedef 800]
type     = S
movetype = A
physics  = S
juggle   = 0
velset   = 0,0
ctrl     = 0
anim     = 800
sprpriority = 2

;***********************************
[State 800, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [1,25]
trigger1 = time = 10
value = s4,0
ignorehitpause = 1
Persistent = 0

[State 800, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [26,50]
trigger1 = time = 10
value = s4,1
ignorehitpause = 1
Persistent = 0

[State 800, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [51,75]
trigger1 = time = 10
value = s4,2
ignorehitpause = 1
Persistent = 0

;***********************************
[State 800, Throw Hit]
type = HitDef
Trigger1 = Time = 0
attr        = S, NT
hitflag     = M- 
priority    = 1, Miss
hitsound    = s1,1
sparkno     = -1
sprpriority = 1
p1facing    = ifelse(command="holdfwd",-1,ifelse(command="holdback",1,-1))
p2facing    = 1
p1stateno   = 801
p2stateno   = 802

[State 800, Change]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;地上投げ・成功
[Statedef 801]
type     = S
movetype = A
physics  = N
anim     = 801
poweradd = 0
ctrl     = 0
velset   = 0,0

[State 801, Turn]
type = Turn
trigger1 = AnimTime = 0

[State 801, Target Change]
type = TargetState
triggerall = command != "holddown"
trigger1 = AnimElem = 11
value = 804

[State 801, Target Change]
type = TargetState
triggerall = command = "holddown"
trigger1 = AnimElem = 11
value = 803

;***********************************
[State 801, Bind-1]
type = TargetBind
trigger1 = AnimElemTime(1) = 0
pos = 28,-50

[State 801, Bind-2]
type = TargetBind
trigger1 = AnimElemTime(4) = 0
pos = 28,-75

[State 801, Bind-3]
type = TargetBind
trigger1 = AnimElemTime(6) = 0
pos = 20,-80

[State 801, Bind-4]
type = TargetBind
trigger1 = AnimElemTime(7) = 0
pos = 17,-87

[State 801, Bind-5]
type = TargetBind
trigger1 = AnimElemTime(9) = 0
pos = 10,-85

[State 801, Bind-6]
type = TargetBind
trigger1 = AnimElemTime(10) = 0
pos = -5,-80

[State 801, Bind-7]
type = TargetBind
trigger1 = AnimElemTime(11) = 0
pos = -30,-75

;***********************************
[State 801, Target Damage]
type = TargetLifeAdd
trigger1 = AnimElem = 11
value = -100

;***********************************
[State 801, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [1,40]
trigger1 = time = 2
value = s3,8
ignorehitpause = 1
Persistent = 0

[State 801, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [41,80]
trigger1 = time = 2
value = s3,9
ignorehitpause = 1
Persistent = 0

;***********************************
[State 801, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;地上投げ・相手側１
[Statedef 802]
type     = A
movetype = H
physics  = N
velset   = 0,0

[State 802, P2Anim]
type = ChangeAnim2
Trigger1 = Time = 0
value = 802

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;地上投げ・相手側・地面叩き付けタイプ
[Statedef 803]
type     = A
movetype = H
physics  = N
velset   = 0,0

[State 803, P2Anim]
type = ChangeAnim2
Trigger1 = Time = 0
value = 803

[State 803, Speed]
type = VelSet
trigger1 = Time = 0
x = 7
y = 9

[State 803, SpeedAdd]
type = VelAdd
trigger1 = time >= 0
y = 0.45

[State 803, Shake]
type = EnvShake
trigger1 = ((Time > 0) && (Pos Y >= 0))
time  = 15
ampl  = 6
freq  = 100
phase = 100
Persistent = 0

[State 803, Speed]
type = VelSet
trigger1 = ((Time > 0) && (Pos Y >= 0))
x = 0
y = 0

[State 803, SE]
type = PlaySnd
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = f7,2
Persistent = 0

[State 803, Return Self] 
type = SelfState
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = 5100

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;地上投げ・相手側・水平吹っ飛ばし
[Statedef 804]
type     = A
movetype = H
physics  = N
;velset   = 0,0

[State 804, P2Anim]
type = ChangeAnim2
Trigger1 = Time = 0
value = 804

[State 804, Scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 804, P2Speed]
type = VelSet
trigger1 = Time = 0
x = 18
y = 0

[State 804, P2SpeedAdd]
type = VelAdd
trigger1 = time >= 5
x = 0.5

[State 804, Life]
type = LifeAdd
trigger1 = ((FrontEdgeDist <= 5) || (BackEdgeDist <= 5))
value = -10

[State 804, Change]
type = ChangeState
trigger1 = ((FrontEdgeDist <= 5) || (BackEdgeDist <= 5))
value = 805

;--------------------------------------------
;地上投げ・相手側・水平吹っ飛ばし・壁叩き付け
[Statedef 805]
type    = A
movetype= H
physics = N

[State 805, P2Anim]
type = ChangeAnim2
Trigger1 = Time = 0
value = 805

[State 805, Scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 805, Speed]
type = VelSet
trigger1 = Time >= 0
x = 0
y = 0

[State 805, Shake]
type = EnvShake
trigger1 = time = 0
time  = 15
ampl  = 6
freq  = 100
phase = 100

;***********************************
[State 805, Shibuki]
type = Explod
trigger1 = time = 0
anim = f72
scale = 1,1
facing = -1
postype = p1
pos = -20,-28
sprpriority = 4
supermove = 1
ownpal = 1

;***********************************
[State 805, SE]
type = PlaySnd
Trigger1 = Time = 0
value = f7,2

[State 805, Change]
type = ChangeState
trigger1 = Time = 10
value = 806

;--------------------------------------------
;地上投げ・相手側・水平吹っ飛ばし・壁叩き付け後落下
[Statedef 806]
type    = A
movetype= H
physics = N

[State 806, P2Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 806

[State 806, Speed]
type = VelSet
trigger1 = time = 0
x = -1
y = -8

[State 806, SpeedAdd]
type = VelAdd
trigger1 = time >= 0
y = 0.4

[State 806, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 806, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 806, Change Self]
type = SelfState
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = 5100

;===========================================================================
;---------------------------------------------------------------------------
;空中投げ
[Statedef 810]
type     = A
movetype = A
physics  = A
juggle   = 0
ctrl     = 0
anim     = 810
sprpriority = 2

[State 810, Throw Hit]
type = HitDef
Trigger1 = Time = 0
attr        = A, NT
hitflag     = AF ;-
;guardflag   = 
priority    = 2, Miss
hitsound    = s1,1
sparkno     = -1
sprpriority = 1
p1facing    = ifelse(command="holdfwd",1,ifelse(command="holdback",-1,1))
p2facing    = 1
p1stateno   = 811
p2stateno   = 814

[State 810, Change]
type = ChangeState
Trigger1 = AnimTime = 0
value = 10005
ctrl = 1

;---------------------------------------------------------------------------
;空中投げ・成功
[Statedef 811]
type     = A
movetype = A
physics  = N
anim     = 811
poweradd = 0
ctrl     = 0

[State 811, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [1,60]
trigger1 = time = 2
value = s3,7
ignorehitpause = 1
Persistent = 0

[State 811, Speed]
type = VelSet
trigger1 = Time = 0
y = -2

[State 811, Speed]
type = VelSet
trigger1 = Time >= 0
x = 1.5

[State 811, SpeedAdd]
type = VelAdd
trigger1 = Time >= 4
y = 0.45

;***********************************
[State 811, Bind-1]
type = TargetBind
trigger1 = AnimElemTime(1) = 0
pos = 35,-55

[State 811, Bind-2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0
pos = 40,-50

;***********************************
[State 811, Target Damage]
type = TargetLifeAdd
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = -110

[State 811, Target Change]
type = TargetState
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = 815

[State 811, Change]
type = ChangeState
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = 812

;-----------------------------------------
;空中投げ・着地
[Statedef 812]
type     = S
movetype = I
physics  = N
anim     = 812
poweradd = 0
ctrl     = 0
velset   = 0,0

[State 812, Bind]
type = TargetBind
trigger1 = 1
pos = 40,0

[State 812, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 812, Speed]
type = VelSet
trigger1 = Time >= 0
x = 0
y = 0

[State 812, Shibuki]
type = Explod
trigger1 = time = 1
anim = 4010
postype = p1
pos = 0,0
sprpriority = -1
ownpal = 1

[State 812, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 813

;-----------------------------------------
;空中投げ・小ジャンプ
[Statedef 813]
type     = A
movetype = I
physics  = N
anim     = 813
poweradd = 0
ctrl     = 1

[State 813, Push] 
type = PlayerPush
trigger1 = 1
value = 0

[State 813, Speed]
type = VelSet
trigger1 = Time = 0
x = 1
y = -3.6

[State 813, SpeedAdd]
type = VelAdd
trigger1 = Time >= 1
y = 0.2

[State 813, Change]
type = ChangeState
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = 52

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;空中投げ・相手側１
[Statedef 814]
type     = A
movetype = H
physics  = N
velset   = 0,0

[State 814, P2Anim]
type = ChangeAnim2
Trigger1 = Time = 0
value = 814

;空中投げ・相手側２
[Statedef 815]
type     = A
movetype = H
physics  = N
velset   = 0,0

[State 815, P2Anim]
type = ChangeAnim2
Trigger1 = Time = 0
value = 815

[State 815, SE]
type = PlaySnd
Trigger1 = Time = 1
value = f7,2

[State 815, Shake]
type = EnvShake
trigger1 = Time = 0
time  = 15
ampl  = 6
freq  = 100
phase = 100

[State 815, Change Self]
type = SelfState
trigger1 = AnimTime = 0
value = 5100

;===========================================================================
; 特殊技その他
;===========================================================================
;---------------------------------------------------------------------------
;ヴァイスカッツェ：前方
[Statedef 900] 
type     = S
movetype = I
physics  = N
ctrl     = 0
anim     = 900
poweradd = 30
velset   = 0,0

[State 900, Muteki]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 900, Zanzou]
type = AfterImage
trigger1 = Time = 1
Time = 30
;PalBright   =   0,  0,  0
PalContrast = 100,100,100
Trans = Add1
TimeGap  = 2
FrameGap = 1
length = 3 ;8

[State 900, Push]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 900, Pos]
type = PosSet
trigger1 = time >= 0
y = 0

[State 900, Vel]
type = VelSet
;triggerall = var(5) = 0
trigger1 = AnimElemTime(4) = 0
x = ifelse(var(4)=1,10,ifelse(var(4)=2,20,ifelse(var(4)=3,40,10)))

;[State 900, Vel]
;type = VelSet
;triggerall = var(5) = 1
;trigger1 = AnimElemTime(4) = 0
;x = 20

[State 900, Vel]
type = VelSet
trigger1 = AnimElemTime(10) >= 0
x = 0

;***********************************
[State 900, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [1,40]
trigger1 = AnimElemTime(10) = 0
value = s6,8
ignorehitpause = 1
Persistent = 0

[State 900, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [41,80]
trigger1 = AnimElemTime(10) = 0
value = s6,9
ignorehitpause = 1
Persistent = 0

;***********************************
[State 900, Change]
type = ChangeState
triggerall = Time > 6
trigger1 = ((command = "c") && (command = "holdfwd"))
trigger2 = ((command = "c") && (command = "holdback"))
value = 800

[State 900, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ヴァイスカッツェ：後方
[Statedef 901] 
type     = S
movetype = I
physics  = N
ctrl     = 0
anim     = 901
poweradd = 30
velset   = 0,0

[State 901, Muteki]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 901, Zanzou]
type = AfterImage
trigger1 = Time = 1
Time = 35
;PalBright   =   0,  0,  0
PalContrast = 100,100,100
Trans = Add1
TimeGap  = 2
FrameGap = 1
length = 3 ;8

[State 901, Push]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 901, Pos]
type = PosSet
trigger1 = time >= 0
y = 0

[State 901, Vel]
type = VelSet
;triggerall = var(5) = 0
trigger1 = AnimElemTime(6) = 0
x = ifelse(var(4)=4,-5,ifelse(var(4)=5,-15,ifelse(var(4)=6,-35,-5)))

;[State 901, Vel]
;type = VelSet
;triggerall = var(5) = 1
;trigger1 = AnimElemTime(6) = 0
;x = -18

[State 901, Vel]
type = VelSet
trigger1 = AnimElemTime(13) >= 0
x = 0

;***********************************
[State 901, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [1,40]
trigger1 = AnimElemTime(13) = 0
value = s6,8
ignorehitpause = 1
Persistent = 0

[State 901, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [41,80]
trigger1 = AnimElemTime(13) = 0
value = s6,9
ignorehitpause = 1
Persistent = 0

;***********************************
[State 901, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
; 空中キャンセルジャンプ開始
[Statedef 910]
type    = A
physics = N
ctrl    = 0
velset  = 0,0

[State 910, Air jump]
type = VarSet
trigger1 = 1
v = 59
value = 1
IgnoreHitPause = 1

[State 910, 1]
type = ChangeAnim
trigger1 = SelfAnimExist(44)
value = 44

[State 910, 2]
type = ChangeAnim
trigger1 = !SelfAnimExist(44)
value = 41

[State 910, 3]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 910, 4]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 910, 5]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 910, 6]
type = VelSet
trigger1 = Time = 2
x = ifelse(sysvar(1)=0, const(velocity.airjump.neu.x), ifelse(sysvar(1)=1, const(velocity.airjump.fwd.x), const(velocity.airjump.back.x)))
y = const(velocity.airjump.y)

[State 910, AirJump Shibuki]
type = Explod
trigger1 = Time = 1
anim = 3118 ;f61
postype = p1
pos = 0,0
scale = 1,1
sprpriority = -1
ownpal = 1

[State 910, 7]
type = ChangeState
trigger1 = Time = 2
value = 911

;---------------------------------------------------------------------------
; 空中キャンセルジャンプ
[Statedef 911]
type    = A
physics = A
ctrl    = 0

[State 911, Air jump]
type = VarSet
trigger1 = 1
v = 59
value = 1
IgnoreHitPause = 1

[State 911, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 911, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 911, 3]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

[State 911, Jump Speed]
type = VelAdd
triggerall = ((Anim = 41) || (Anim = 44))
trigger1 = time = [15,29]
x = ifelse(command="holdfwd",0.2,ifelse(command="holdback",-0.2,0))

[State 911, Jump Speed]
type = VelAdd
triggerall = ((Anim = 41) && (time = [15,26])) || ((Anim = 44) && (time = [15,26]))
trigger1 = ((command = "holdfwd") || (command = "holdback"))
y = -0.1

;***********************************
[State 911, Change]
type = ChangeState
triggerall = var(6) = 1
trigger1 = command = "jama_low"
value = 1300

[State 911, Change]
type = ChangeState
triggerall = var(6) = 1
trigger1 = command = "jama_middle"
value = 1310

[State 911, Change]
type = ChangeState
triggerall = ((var(6) = 1) && (power >= 1000) && (NumHelper(960) = 0))
trigger1 = command = "jama_high"
value = 3020

;***********************************
[State 911, Change]
type = ChangeState
trigger1 = command = "a"
value = 600

[State 911, Change]
type = ChangeState
trigger1 = ((command = "b") && (Vel Y <= 0))
value = 610

[State 911, Change]
type = ChangeState
trigger1 = ((command = "b") && (Vel Y > 0))
value = 611

[State 911, Change]
type = ChangeState
trigger1 = command = "c"
value = 620

[State 911, Change]
type = ChangeState
trigger1 = ((command = "holddown") && (command = "c"))
value = 621

[State 911, Change]
type = ChangeState
trigger1 = command = "z"
value = 704

[State 911, Change]
type = ChangeState
trigger1 = ((p2bodydist X < 5) && (p2statetype = A) && (command = "holdfwd") && (command = "c"))
trigger2 = ((p2bodydist X < 5) && (p2statetype = A) && (command = "holdback") && (command = "c"))
value = 810

[State 911, Change]
type = ChangeState
trigger1 = ((var(58) = 0) && (command = "FF"))
value = 102

[State 911, Change]
type = ChangeState
trigger1 = command = "BB"
value = 108

[State 911, Change]
type = ChangeState
trigger1 = command = "DD"
value = 10001

;===========================================================================
;--------------------------------------------------------------------------- キャンセル出来ないのは仕様
; 溜めパワーアップ中攻撃
[Statedef 920] 
type     = S
movetype = A
physics  = S
ctrl     = 0
juggle   = 1
poweradd = 30
anim     = 910
velset   = 0,0

[State 920, Anten]
type = SuperPause
trigger1 = Time = 3
pos = -5,-50
anim = s3121
sound = s2,1
time = 10
darken = 0
p2defmul = 1

;***********************************
[State 920, Arcueid Voice]
type = PlaySnd
trigger1 = Time = 3
value = s3,5

[State 920, SE]
type = PlaySnd
trigger1 = Time = 17
value = s0,1

[State 920, Speed]
type = VelSet
trigger1 = ((AnimElemTime(5) > 0) && (AnimElemTime(11) < 0))
x = 0.8

;***********************************
[State 920, Hit]
type = HitDef
trigger1 = AnimElem = 6
attr             = S, NA
animtype         = Medium
damage           = 20
getpower         = 30,10
guardflag        = MA
priority         = 4
pausetime        = 9,15
sparkno          = s20010
sparkxy          = -10,-60
guard.sparkno    = s3112
hitsound         = s0,6
guardsound       = s0,4
ground.type      = High
ground.slidetime = 12
ground.hittime   = 19
ground.velocity  = -2.5
air.velocity     = -2.2,-3.2

[State 920, Hit-2]
type = HitDef
trigger1 = AnimElem = 7
attr             = S, NA
animtype         = Medium
damage           = 20
getpower         = 30,10
guardflag        = MA
priority         = 4
pausetime        = 9,15
sparkno          = s20010
sparkxy          = -10,-35
guard.sparkno    = s3112
hitsound         = s0,6
guardsound       = s0,4
ground.type      = High
ground.slidetime = 12
ground.hittime   = 19
ground.velocity  = -4
air.velocity     = -2.2,-3.2

[State 920, Effect]
type = Explod
trigger1 = AnimElemTime(5) = 0
anim = 3001
scale = 1,1
postype = p1
pos = 0,0
sprpriority = 4
supermove = 1
ownpal = 1
ID = 210

;***********************************
[State 920, HitSpark]
type = Helper
trigger1 = ((HitCount = 1) && (MoveHit))
name = "HitSpark"
stateno = 951
ID = 951
pos = -10,ceil(ifelse(Random<500,-60-Random/70,-60+Random/70));-60
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 920, HitSpark]
type = Helper
trigger1 = ((HitCount = 2) && (MoveHit))
name = "HitSpark"
stateno = 951
ID = 951
pos = -10,ceil(ifelse(Random<500,-35-Random/70,-35+Random/70));-35
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
ignorehitpause = 1
persistent = 0

;***********************************
[State 920, Change]
type = ChangeState
triggerall = command = "b"
trigger1 = ((!MoveContact) && (AnimElemTime(6) > 0) && (AnimElemTime(14) < 0))
trigger2 = MoveContact
value = 211

[State 920, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- キャンセル出来ないのは仕様
; 溜めパワーアップ中ヒット攻撃（エリアルレイヴ開始技）
[Statedef 921]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 30
ctrl     = 0
anim     = 211
velset   = 0,0

[State 921, Anten]
type = SuperPause
trigger1 = Time = 8
pos = -14,-65
anim = s3121 ;100
sound = s2,1
time = 10
darken = 0
p2defmul = 1

;***********************************
[State 921, Arcueid Voice]
type = PlaySnd
trigger1 = AnimElemTime(9) = 0
value = s3,6

[State 921, SE]
type = PlaySnd
trigger1 = Time = 16
value = s0,2

[State 921, Hit]
type = HitDef
trigger1 = AnimElem = 10
attr             = S, NA
animtype         = Up
damage           = 40
getpower         = 30,10
guardflag        = MA
priority         = 3
pausetime        = 20,21
sparkno          = s20010
sparkxy          = -10,-65
guard.sparkno    = s3112
hitsound         = s0,9
guardsound       = s0,4
ground.type      = Low
ground.slidetime = 12
ground.hittime   = 15
ground.velocity  = 0,-10.6
air.velocity     = 0,-8.6
fall = 1
fall.recovertime = 70
envshake.time = 22
envshake.ampl = 7
envshake.freq = 176

[State 921, Effect]
type = Explod
trigger1 = AnimElemTime(7) = 0
anim = 3002
scale = 1,1
postype = p1
pos = 0,0
sprpriority = 4
supermove = 1
ownpal = 1
ID = 211

[State 921, HitSpark]
type = Helper
trigger1 = MoveHit
name = "HitSpark"
stateno = 951
ID = 951
pos = -10,ceil(ifelse(Random<500,-65-Random/70,-65+Random/70));-65
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
ignorehitpause = 1
persistent = 0

;*********************************
[State 921, Change]
type = ChangeState
triggerall = MoveHit
trigger1 = command = "holdup"
value = 40

[State 921, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
; クロスカウンター
[Statedef 930] 
type     = S
movetype = A
physics  = S
ctrl     = 0
juggle   = 0
poweradd = 0
anim     = 920
velset   = 0,0

[State 930, Neko Arc]
type = HitOverride
trigger1 = 1
time = 1
Attr = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AT, AP
stateno = 931
IgnoreHitPause = 1

[State 930, Pos]
type = PosSet
trigger1 = 1
y = 0

[State 930, VelSet]
type = VelSet
trigger1 = time = 5
x = -0.25

[State 930, VelSet]
type = VelSet
trigger1 = time = 17
x = 2

[State 930, SE]
type = PlaySnd
trigger1 = time = 17
value = s0,2

[State 930, Hit]
type = HitDef
trigger1 = AnimElem = 8
attr             = S, NA
animtype         = Hard
damage           = 0
getpower         = 0,0
guardflag        = MA
priority         = 3
pausetime        = 10,10
sparkno          = s20010
sparkxy          = -10,-65
guard.sparkno    = s3112
hitsound         = s0,9
guardsound       = s0,4
ground.type      = High
ground.slidetime = 12
ground.hittime   = 15
ground.velocity  = -2,0
air.velocity     = -2,-3
envshake.time = 22
envshake.ampl = 7
envshake.freq = 176

[State 930, HitSpark]
type = Helper
trigger1 = MoveHit
name = "HitSpark"
stateno = 951
ID = 951
pos = -10,ceil(ifelse(Random<500,-70-Random/70,-70+Random/70));-70
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 930, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 猫アルクだぜ！！
[Statedef 931]
type     = S
movetype = I
physics  = N
ctrl     = 0
anim     = 921
velset   = 0,0
;SprPriority = 5

[State 931, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 931, Width]
type = Width
trigger1 = ((AnimElemTime(1) >= 0) && (AnimElemTime(2) < 0))
value = 13,0

[State 931, Special Cut-In]
type = Helper
trigger1 = Time = 0
name = "CrossCounter"
stateno = 962
ID = 962
pos = 0,0
keyctrl = 0
postype = p1
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 931, HitSpark]
type = Helper
trigger1 = Time = 0
name = "HitSpark"
stateno = 951
ID = 951
pos = -10,ceil(ifelse(Random<500,-70-Random/70,-70+Random/70));-70
keyctrl = 0
postype = p2
supermovetime = 99999999
pausemovetime = 99999999
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 931, Pos]
type = PosSet
trigger1 = 1
y = 0

[State 931, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 931, Arcueid Voice]
type = PlaySnd
triggerall = var(3) = [1,40]
trigger1 = time = 2
value = s5,8
ignorehitpause = 1
Persistent = 0

[State 931, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 932

;---------------------------------------------------------------------------
; 猫アルク後の吹っ飛び
[Statedef 932]
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 922

[State 932, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 932, VelSet]
type = VelSet
trigger1 = time = 0
x = -3
y = -4

[State 932, VelAdd]
type = VelAdd
trigger1 = Time > 12
y = 0.3

[State 932, Change]
type = ChangeState
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = 52

;===========================================================================
;---------------------------------------------------------------------------
; 挑発
[Statedef 940] 
type     = S
movetype = I
physics  = S
ctrl     = 0
poweradd = 50
anim     = 930
velset   = 0,0

[State 940, Arcueid Voice]
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
value = s6,1
IgnoreHitPause = 1
Persistent = 0

[State 940, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ヒットスパーク青（斬撃用）
[Statedef 950] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 3100
SprPriority = 7

[State 950, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

[State 950, Effect]
type = Explod
triggerall = Root,var(46) = 0
trigger1 = Time = 0
anim = 3101
facing = ifelse(Random<500,-1,1)
postype = p1
pos = 0,0
scale = 0.9,0.9
sprpriority = 7
ownpal = 1
OnTop = 1
supermovetime = 99999999
pausemovetime = 99999999
ID = 950

[State 950, Effect]
type = Explod
triggerall = Root,var(46) = 1
trigger1 = Time = 0
anim = 3102
facing = ifelse(Random<500,-1,1)
postype = p1
pos = 0,0
scale = 0.9,0.9
sprpriority = 7
ownpal = 1
OnTop = 1
supermovetime = 99999999
pausemovetime = 99999999
ID = 950

[State 950, Effect]
type = Explod
triggerall = Root,var(46) = 2
trigger1 = Time = 0
anim = 3103
facing = ifelse(Random<500,-1,1)
postype = p1
pos = 0,0
scale = 0.9,0.9
sprpriority = 7
ownpal = 1
OnTop = 1
supermovetime = 99999999
pausemovetime = 99999999
ID = 950

[State 950, Effect]
type = Explod
triggerall = Root,var(46) = 3
trigger1 = Time = 0
anim = 3104
facing = ifelse(Random<500,-1,1)
postype = p1
pos = 0,0
scale = 0.9,0.9
sprpriority = 7
ownpal = 1
OnTop = 1
supermovetime = 99999999
pausemovetime = 99999999
ID = 950

[State 950, Effect]
type = Explod
triggerall = Root,var(46) = 4
trigger1 = Time = 0
anim = 3105
facing = ifelse(Random<500,-1,1)
postype = p1
pos = 0,0
scale = 0.9,0.9
sprpriority = 7
ownpal = 1
OnTop = 1
supermovetime = 99999999
pausemovetime = 99999999
ID = 950

;***********************************
[State 950, Change]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;ヒットスパーク赤（打撃用）
[Statedef 951] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 3106
SprPriority = 7

[State 951, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

[State 951, Effect]
type = Explod
triggerall = Root,var(46) = 0
trigger1 = Time = 0
anim = 3107
facing = ifelse(Random<500,-1,1)
postype = p1
pos = 0,0
scale = 0.7,0.7
sprpriority = 7
ownpal = 1
OnTop = 1
supermovetime = 99999999
pausemovetime = 99999999
ID = 951

[State 951, Effect]
type = Explod
triggerall = Root,var(46) = 1
trigger1 = Time = 0
anim = 3108
facing = ifelse(Random<500,-1,1)
postype = p1
pos = 0,0
scale = 0.7,0.7
sprpriority = 7
ownpal = 1
OnTop = 1
supermovetime = 99999999
pausemovetime = 99999999
ID = 951

[State 951, Effect]
type = Explod
triggerall = Root,var(46) = 2
trigger1 = Time = 0
anim = 3109
facing = ifelse(Random<500,-1,1)
postype = p1
pos = 0,0
scale = 0.7,0.7
sprpriority = 7
ownpal = 1
OnTop = 1
supermovetime = 99999999
pausemovetime = 99999999
ID = 951

[State 951, Effect]
type = Explod
triggerall = Root,var(46) = 3
trigger1 = Time = 0
anim = 3110
facing = ifelse(Random<500,-1,1)
postype = p1
pos = 0,0
scale = 0.7,0.7
sprpriority = 7
ownpal = 1
OnTop = 1
supermovetime = 99999999
pausemovetime = 99999999
ID = 951

[State 951, Effect]
type = Explod
triggerall = Root,var(46) = 4
trigger1 = Time = 0
anim = 3111
facing = ifelse(Random<500,-1,1)
postype = p1
pos = 0,0
scale = 0.7,0.7
sprpriority = 7
ownpal = 1
OnTop = 1
supermovetime = 99999999
pausemovetime = 99999999
ID = 951

;***********************************
[State 951, Change]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;ガードスパーク
[Statedef 952] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 3112 ;20010
SprPriority = 7

[State 952, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

[State 952, Effect]
type = Null ;Explod
trigger1 = Time = 0
anim = f40
postype = p1
pos = 0,0
scale = 1,1
sprpriority = 7
ownpal = 1
OnTop = 1
supermovetime = 99999999
pausemovetime = 99999999
ID = 952

;***********************************
[State 952, Change]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; シールドズームエフェクトの応用
;---------------------------------------------------------------------------
; カットイン（ＥＸ必殺技）
[Statedef 960] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 20010
SprPriority = -1

[State 960, VarSet]
type = VarSet
trigger1 = StateNo != 960
fv = 35
value = 0
IgnoreHitPause = 1
Persistent = 1

[State 960, VarAdd]
type = VarAdd
trigger1 = time >= 35
fv = 35
value = 0.01
IgnoreHitPause = 1
Persistent = 1

[State 960, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

[State 960, Color Gradation]
type = Palfx
trigger1 = time >= 35
add = ceil(-fvar(35)*1000),ceil(-fvar(35)*1000),ceil(-fvar(35)*1000)
time = 1
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State 960, Cut-In]
type = Explod
trigger1 = Time = [0,20]
anim = 20000
postype = back
pos = ceil(-130+(statetime*12)),120
scale = 0.5,0.5
sprpriority = -1
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999
ID = 960

[State 960, Cut-In]
type = Explod
trigger1 = Time = [21,34]
anim = 20000
postype = back
pos = 110,120
scale = 0.5,0.5
sprpriority = -1
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999
ID = 960

[State 960, Cut-In]
type = Explod
trigger1 = Time >= 35
anim = 20001
postype = back
pos = ceil(110+fvar(35)*450),120
scale = 0.5,0.5
sprpriority = -1
supermovetime = 99999999
pausemovetime = 99999999
ID = 960

[State 960, Modify]
type = ModifyExplod
trigger1 = Time >= 35
scale = 0.5+fvar(35),0.5+fvar(35)
supermovetime = 99999999
pausemovetime = 99999999
ID = 960

[State 960, Remove]
type = RemoveExplod
trigger1 = Time >= 65
ID = 960

;***********************************
[State 960, Change]
type = DestroySelf
trigger1 = Time = 66

;---------------------------------------------------------------------------
; カットイン（マーヴルファンタズム）
[Statedef 961] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 20010
SprPriority = -1

[State 961, VarSet]
type = VarSet
trigger1 = StateNo != 961
fv = 36
value = 0
IgnoreHitPause = 1
Persistent = 1

[State 961, VarAdd]
type = VarAdd
trigger1 = time >= 35
fv = 36
value = 0.01
IgnoreHitPause = 1
Persistent = 1

[State 961, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

[State 961, Color Gradation]
type = Palfx
trigger1 = time >= 35
add = ceil(-fvar(36)*1000),ceil(-fvar(36)*1000),ceil(-fvar(36)*1000)
time = 1
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State 961, Cut-In]
type = Explod
trigger1 = Time = [0,20]
anim = 20002
postype = back
pos = ceil(-130+(statetime*12)),120
scale = 0.5,0.5
sprpriority = -1
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999
ID = 961

[State 961, Cut-In]
type = Explod
trigger1 = Time = [21,34]
anim = 20002
postype = back
pos = 110,120
scale = 0.5,0.5
sprpriority = -1
ownpal = 1
supermovetime = 99999999
pausemovetime = 99999999
ID = 961

[State 961, Cut-In]
type = Explod
trigger1 = Time >= 35
anim = 20003
postype = back
pos = ceil(110+fvar(36)*300),120
scale = 0.5,0.5
sprpriority = -1
supermovetime = 99999999
pausemovetime = 99999999
ID = 961

[State 961, Modify]
type = ModifyExplod
trigger1 = Time >= 35
scale = 0.5+fvar(36),0.5+fvar(36)
supermovetime = 99999999
pausemovetime = 99999999
ID = 961

[State 961, Remove]
type = RemoveExplod
trigger1 = Time >= 65
ID = 961

;***********************************
[State 961, Change]
type = DestroySelf
trigger1 = Time = 66

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;クロスカウンター演出
[Statedef 962] 
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 20010
SprPriority = 7

[State 962, VarSet]
type = VarSet
trigger1 = StateNo != 962
fv = 33
value = 0
IgnoreHitPause = 1
Persistent = 1

[State 962, VarAdd]
type = VarAdd
trigger1 = time >= 5
fv = 33
value = 0.01
IgnoreHitPause = 1
Persistent = 1

[State 962, Color Gradation]
type = Palfx
trigger1 = time >= 5
add = ceil(-fvar(33)*200),ceil(-fvar(33)*200),ceil(-fvar(33)*200)
time = 1
IgnoreHitPause = 1
Persistent = 1

[State 962, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State 962, Effect]
type = Explod
trigger1 = 1
anim = 20011
postype = back
pos = 160,140
scale = 1,1
sprpriority = -4
supermovetime = 99999999
pausemovetime = 99999999
ID = 962

[State 962, Modify]
type = ModifyExplod
trigger1 = 1
scale = (1+fvar(33)),(1+fvar(33))
supermovetime = 99999999
pausemovetime = 99999999
ID = 962

[State 962, Remove]
type = RemoveExplod
trigger1 = Time >= 129
ID = 962

;***********************************
[State 962, Change]
type = DestroySelf
trigger1 = Time > 130

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[Statedef 9999]
[State 9999, End] 
type = DestroySelf
trigger1 = time = 0