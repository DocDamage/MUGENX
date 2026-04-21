; Shin Kaname Ameri - cns file No.2
;===========================================================================
; 特殊防御技
;===========================================================================
;---------------------------------------------------------------------------
;ディフェンシヴホールド
[Statedef 700] 
type     = S
movetype = I
physics  = S
juggle   = 0
ctrl     = 0
anim     = 700
poweradd = 0
;velset   = 0,0

[State 700, Hold]
type = ReversalDef
trigger1 = Time = 0
reversal.attr = SCA, NA, SA, HA, NP, SP, HP, AA, AP
pausetime     = 0,15
numhits       = 0
sparkno       = -1
sparkxy       = 0,0
hitsound      = -1,-1
sprpriority   = -1
p1stateno     = 701
p2stateno     =(706 + (p2statetype=A))

[State 700, Hold Armor]
type = HitOverride
trigger1 = Time >= 0
time = 1
attr = SCA, NA, SA, HA, NP, SP, HP, AA, AP
stateno = 701
ignorehitpause = 1

[State 700, Change]
type = ChangeState
trigger1 = Time = 7
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ディフェンシヴホールド・成功
[Statedef 701]
type     = S
movetype = I
physics  = N
anim     = 701
poweradd = 50
velset   = 0,0

[State 701, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 701, Push] 
type = PlayerPush
trigger1 = Time >= 0
value = 1

[State 701, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = 10

[State 701, Ctrl]
type = CtrlSet
trigger1 = time >= 8
value = 1

;*********************************
[State 701, BG Color]
type = EnvColor
trigger1 = Time = 0
value = 255, 255, 255
time = 1

[State 701, BodyColor]
type = PalFX
trigger1 = Time = 0
time = 12
add = 20,70,150
sinadd = 64,32,5,3

[State 701, Spark]
type = Explod
trigger1 = time = 1
anim = 4204
scale = 1,1
postype = p1
pos = 25,-60
sprpriority = 2
supermove = 1
ownpal = 1

[State 701, Kaname Voice]
type = PlaySnd
trigger1 = time = 1
value = s3,1

[State 701, SE]
type = PlaySnd
trigger1 = time = 1
value = s1,8

;*********************************
[State 701, Change]
type = ChangeState
Trigger1 = Time = 12
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;下段ディフェンシヴホールド
[Statedef 702] 
type     = C
movetype = I
physics  = C
juggle   = 0
ctrl     = 0
anim     = 702
poweradd = 0
;velset   = 0,0

[State 702, Hold]
type = ReversalDef
trigger1 = Time = 0
reversal.attr = SCA, NA, SA, HA, NP, SP, HP, AA, AP
pausetime     = 0,15
numhits       = 0
sparkno       = -1
sparkxy       = 0,0
hitsound      = -1,-1
sprpriority   = -1
p1stateno     = 703
p2stateno     =(706 + (p2statetype=A))

[State 702, Hold Armor]
type = HitOverride
trigger1 = Time >= 0
time = 1
attr = SCA, NA, SA, HA, NP, SP, HP, AA, AP
stateno = 703
ignorehitpause = 1

[State 702, Change]
type = ChangeState
trigger1 = Time = 7
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;下段ディフェンシヴホールド・成功
[Statedef 703]
type     = C
movetype = I
physics  = N
anim     = 703
poweradd = 50
velset   = 0,0

[State 703, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 703, Push] 
type = PlayerPush
trigger1 = Time >= 0
value = 1

[State 703, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = 10

[State 703, Ctrl]
type = CtrlSet
trigger1 = time >= 8
value = 1

;*********************************
[State 703, BG Color]
type = EnvColor
trigger1 = Time = 0
value = 255, 255, 255
time = 1

[State 703, BodyColor]
type = PalFX
trigger1 = Time = 0
time = 12
add = 20,70,150
sinadd = 64,32,5,3

[State 703, Spark]
type = Explod
trigger1 = time = 1
anim = 4204
scale = 1,1
postype = p1
pos = 25,-40
sprpriority = 2
supermove = 1
ownpal = 1

[State 703, Kaname Voice]
type = PlaySnd
trigger1 = time = 1
value = s3,1

[State 703, SE]
type = PlaySnd
trigger1 = time = 1
value = s1,8

;*********************************
[State 703, Change]
type = ChangeState
Trigger1 = Time = 12
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;空中ディフェンシヴホールド
[Statedef 704] 
type     = A
movetype = I
physics  = A
juggle   = 0
ctrl     = 0
anim     = 704
poweradd = 0
;velset   = 0,0

[State 704, Hold]
type = ReversalDef
trigger1 = Time = 0
reversal.attr = SCA, NA, SA, HA, NP, SP, HP, AA, AP
pausetime     = 0,15
numhits       = 0
sparkno       = -1
sparkxy       = 0,0
hitsound      = -1,-1
sprpriority   = -1
p1stateno     = 705
p2stateno     =(706 + (p2statetype=A))

[State 704, Hold Armor]
type = HitOverride
trigger1 = Time >= 0
time = 1
attr = SCA, NA, SA, HA, NP, SP, HP, AA, AP
stateno = 705
ignorehitpause = 1

[State 704, Change]
type = ChangeState
trigger1 = Time = 7
value = 10005
ctrl = 1

;---------------------------------------------------------------------------
;空中ディフェンシヴホールド・成功
[Statedef 705]
type     = A
movetype = I
physics  = N
anim     = 705
poweradd = 50
velset   = 0,0

[State 705, Push] 
type = PlayerPush
trigger1 = Time >= 0
value = 1

[State 705, LifeAdd]
type = LifeAdd
trigger1 = time = 0
value = 10

[State 705, Ctrl]
type = CtrlSet
trigger1 = time >= 8
value = 1

;*********************************
[State 705, BG Color]
type = EnvColor
trigger1 = Time = 0
value = 255, 255, 255
time = 1

[State 705, BodyColor]
type = PalFX
trigger1 = Time = 0
time = 12
add = 20,70,150
sinadd = 64,32,5,3

[State 705, Spark]
type = Explod
trigger1 = time = 1
anim = 4204
scale = 1,1
postype = p1
pos = 25,-60
sprpriority = 2
supermove = 1
ownpal = 1

[State 705, Kaname Voice]
type = PlaySnd
trigger1 = time = 1
value = s3,1

[State 705, SE]
type = PlaySnd
trigger1 = time = 1
value = s1,8

;*********************************
[State 705, Change]
type = ChangeState
Trigger1 = Time = 12
value = 10005

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;ディフェンシヴホールド成功：地上相手側
[Statedef 706]
type     = S
movetype = H
physics  = N
ctrl     = 0
velset   = 0,0

[State 706, Speed]
type = VelSet
trigger1 = time = 5
x = -0.5
y = 0

[State 706, Add Speed]
type = VelAdd
trigger1 = time >= 5
x = .01

[State 706, Pos]
type = PosSet
trigger1 = time >= 0
y = 0

[State 706, P2Anim]
type = ChangeAnim2
trigger1 = time = 0
value = 5001

[State 706, P2Change]
type = ChangeState
trigger1 = time = 0
trigger1 = Pos Y < 0
value = 707

[State 706, Return State]
type = SelfState
trigger1 = time = 17
value = 0
ctrl = 1

[State 706, Helper Break]
type = Destroyself
trigger1 = ((Ishelper = 1) && (time = 0))

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;ディフェンシヴホールド成功：空中相手側
[Statedef 707]
type     = A
movetype = H
physics  = N
ctrl     = 0
velset   = 0,0

[State 707, Speed]
type = VelSet
trigger1 = time = 5
x = -0.5
y = -9

[State 707, Add Speed]
type = VelAdd
trigger1 = time >= 5
y = .5

[State 707, P2Anim]
type = ChangeAnim2
trigger1 = time = 0
value = 5030

[State 707, Change Recovery] 
type = SelfState
triggerall = time >= 10
triggerall = alive
trigger1 = Command = "recovery"
value = 5210 

[State 707, Return State]
type = SelfState
trigger1 = ((Vel Y > 0) && (Pos Y >= 0))
value = 5100

[State 707, Helper Break]
type = Destroyself
trigger1 = ((Ishelper = 1) && (time = 0))

;============================================================================
;----------------------------------------------------------------------------
;クイックスタンディング
[Statedef 708]
type     = A
movetype = H
physics  = N
poweradd = 0
ctrl     = 0

[State 708, VelAdd]
type = VelAdd
trigger1 = Time >= 0
y = .39

[State 708, ChangeState]
type = ChangeState
trigger1 = ((Vel Y > 0) && (Pos Y >= 0))
value = 709

;----------------------------------------------------------------------------
;クイックスタンディング：着地
[Statedef 709]
type     = S
movetype = I
physics  = N
anim     = 706
poweradd = 0
velset   = 0,0
ctrl     = 0

[State 709, Muteki]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 709, Defence Default]
type = DefenceMulSet
triggerall = PrevStateNo = 708
trigger1 = AnimTime != 0
value = 1.0

[State 709, Blink Body]
type = Palfx
trigger1 = time = 0
add = 255,255,255
time = 3
ignorehitpause = 1
removeongethit = 1

[State 709, Shibuki]
type = Explod
trigger1 = Time = 0
anim = 4100
postype = p1
pos = 0,0
sprpriority = -1
ownpal = 1

[State 709, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 709, SE]
type = PlaySnd
trigger1 = Time = 0
value = s2,0

[State 709, Change]
type = ChangeState
trigger1 = Time = 1
value = 710

;---------------------------------------------------------------------------
;クイックスタンディング：ダウン回避
[Statedef 710]
type    = S
physics = N
ctrl    = 0
anim    = 707
velset  = 0,0

[State 710, Muteki]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 3

[State 710, Zanzou]
type = AfterImage
trigger1 = time = 0
Time = 12
PalBright   =   0,  0,  0
PalContrast = 255,255,255
Trans = Add
TimeGap  = 2
FrameGap = 1
length = 8

[State 710, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 710, Speed]
type = VelSet
trigger1 = Time = 0
x = -6
y = 0

[State 710, Dash Flag]
type = AssertSpecial
trigger1 = 1
flag = NoWalk
flag2= NoAutoTurn

[State 710, Kaname Voice]
type = PlaySnd
triggerall = Random <= 200
trigger1 = Time = 0
value = s6,4

[State 710, Change]
type = ChangeState
trigger1 = Time = 10
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ガードキャンセル
[Statedef 711]
type     = S
movetype = A
physics  = N
juggle   = 0
poweradd = 0
ctrl     = 0
velset   = 0,0
anim     = 11

[State 711, Muteki]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 711, Speed]
type = VelSet
trigger1 = Time >= 0
x = 0
y = 0

[State 711, Blink Body]
type = Palfx
trigger1 = Time = 0
trigger1 = TimeMod = 2,0
add    = 150,150,150
sinadd =  64, 32,  5, 3
time = 30
ignorehitpause = 1
removeongethit = 1

[State 711, SE]
type = PlaySnd
trigger1 = time = 1
value = s1,7

[State 711, Change]
type = ChangeState
trigger1 = Time = 2
value = 1100

;---------------------------------------------------------------------------
;ガードキャンセル：空中
[Statedef 712]
type     = A
movetype = A
physics  = N
juggle   = 0
poweradd = 0
ctrl     = 0
velset   = 0,0
anim     = 0

[State 712, Muteki]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 712, Speed]
type = VelSet
trigger1 = Time >= 0
x = 0
y = 0

[State 712, Blink Body]
type = Palfx
trigger1 = Time = 0
trigger1 = TimeMod = 2,0
add    = 150,150,150
sinadd =  64, 32,  5, 3
time = 30
ignorehitpause = 1
removeongethit = 1

[State 712, SE]
type = PlaySnd
trigger1 = time = 1
value = s1,7

[State 712, Change]
type = ChangeState
trigger1 = Time = 2
value = 1120

;===========================================================================
;---------------------------------------------------------------------------
;スペリオルダッシュ
[Statedef 720]
type     = S
movetype = I
physics  = N
ctrl     = 0
anim     = 720
velset   = 0,0

;***********************************
[State 720, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1
persistent = 1

[State 720, Muteki]
type = NotHitBy
trigger1 = time >= 0
value = SCA
time = 1

[State 720, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 20
PalBright   =   0,  0,  0
PalContrast = 255,255,255
Trans = Add
TimeGap  = 2
FrameGap = 1
length = 8

[State 720, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

;***********************************
[State 720, Change]
type = ChangeState
triggerall = var(39) = 0
trigger1 = Time = 25
value = 0
ctrl = 1

;***********************************
[State 720, Change-1]
type = ChangeState
triggerall = var(39) = 1
trigger1 = Time = 25
value = 722

[State 720, Change-2]
type = ChangeState
triggerall = var(39) = 2
trigger1 = Time = 25
value = 723

[State 720, Change-3]
type = ChangeState
triggerall = var(39) = 3
trigger1 = Time = 25
value = 724

[State 720, Change-4]
type = ChangeState
triggerall = var(39) = 4
trigger1 = Time = 25
value = 725

;***********************************
[State 720, Change-OhKyaku]
type = ChangeState
triggerall = var(39) = 7
trigger1 = Time = 25
value = 800

;---------------------------------------------------------------------------
;空中スペリオルダッシュ
[Statedef 721]
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 721
velset   = 0,0

;***********************************
[State 721, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1
persistent = 1

[State 721, Muteki]
type = NotHitBy
trigger1 = time >= 0
value = SCA
time = 1

[State 721, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 20
PalBright   =   0,  0,  0
PalContrast = 255,255,255
Trans = Add
TimeGap  = 2
FrameGap = 1
length = 8

[State 721, Speed]
type = VelSet
trigger1 = Time >= 0
x = 0
y = 0

;***********************************
[State 721, Change]
type = ChangeState
triggerall = var(39) = 0
trigger1 = Time = 25
value = 10005

;***********************************
[State 721, Change-1]
type = ChangeState
triggerall = var(39) = 1
trigger1 = Time = 25
value = 722

[State 721, Change-2]
type = ChangeState
triggerall = var(39) = 2
trigger1 = Time = 25
value = 723

[State 721, Change-3]
type = ChangeState
triggerall = var(39) = 3
trigger1 = Time = 25
value = 724

[State 721, Change-4]
type = ChangeState
triggerall = var(39) = 4
trigger1 = Time = 25
value = 725

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;スペリオルダッシュ：地上移動前方
[Statedef 722]
type     = S
movetype = I
physics  = N
ctrl     = 0
anim     = 722
velset   = 0,0

;***********************************
[State 722, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1
persistent = 1

[State 722, Pause]
type = Pause
trigger1 = time = 0
time = 10
movetime = 10
ignorehitpause = 1
persistent = 1

[State 722, Muteki]
type = NotHitBy
trigger1 = time >= 0
value = SCA
time = 1

[State 722, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 10
PalBright   =   0,  0,  0
PalContrast = 255,255,255
Trans = Add
TimeGap  = 2
FrameGap = 1
length = 8

;***********************************
[State 722, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 722, PosAdd-1]
type = PosAdd
triggerall = FrontEdgeDist < 40
trigger1 = Time = 0
x = 10

[State 722, PosAdd-2]
type = PosAdd
triggerall = (FrontEdgeDist >= 40) && (p2dist X <= 59)
trigger1 = Time = 0
x = 70

[State 722, PosAdd-3]
type = PosAdd
triggerall = (FrontEdgeDist >= 40) && (p2dist X >= 60)
trigger1 = Time = 0
x = 150

;***********************************
[State 722, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;スペリオルダッシュ：地上移動後方
[Statedef 723]
type     = S
movetype = I
physics  = N
ctrl     = 0
anim     = 722
velset   = 0,0

;***********************************
[State 723, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1
persistent = 1

[State 723, Pause]
type = Pause
trigger1 = time = 0
time = 10
movetime = 10
ignorehitpause = 1
persistent = 1

[State 723, Muteki]
type = NotHitBy
trigger1 = time >= 0
value = SCA
time = 1

[State 723, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 10
PalBright   =   0,  0,  0
PalContrast = 255,255,255
Trans = Add
TimeGap  = 2
FrameGap = 1
length = 8

;***********************************
[State 723, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 723, PosAdd-1]
type = PosAdd
triggerall = BackEdgeDist < 40
trigger1 = Time = 0
x = -10

[State 723, PosAdd-2]
type = PosAdd
triggerall = BackEdgeDist >= 40
trigger1 = Time = 0
x = -150

;***********************************
[State 723, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;スペリオルダッシュ：空中移動前方
[Statedef 724]
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 723
velset   = 0,0

;***********************************
[State 724, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1
persistent = 1

[State 724, Pause]
type = Pause
trigger1 = time = 0
time = 10
movetime = 10
ignorehitpause = 1
persistent = 1

[State 724, Muteki]
type = NotHitBy
trigger1 = time >= 0
value = SCA
time = 1

[State 724, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 10
PalBright   =   0,  0,  0
PalContrast = 255,255,255
Trans = Add
TimeGap  = 2
FrameGap = 1
length = 8

;***********************************
[State 724, Pos]
type = PosSet
trigger1 = Time >= 0
y = ceil(-80 - ((StateType = A) * time))

[State 724, PosAdd-1]
type = PosAdd
triggerall = FrontEdgeDist < 40
trigger1 = Time = 0
x = 10

[State 724, PosAdd-2]
type = PosAdd
triggerall = (FrontEdgeDist >= 40) && (p2dist X <= 59)
trigger1 = Time = 0
x = 70

[State 724, PosAdd-3]
type = PosAdd
triggerall = (FrontEdgeDist >= 40) && (p2dist X >= 60)
trigger1 = Time = 0
x = 150

;***********************************
[State 724, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 10005

;---------------------------------------------------------------------------
;スペリオルダッシュ：空中移動後方
[Statedef 725]
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 723
velset   = 0,0

;***********************************
[State 725, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1
persistent = 1

[State 725, Pause]
type = Pause
trigger1 = time = 0
time = 10
movetime = 10
ignorehitpause = 1
persistent = 1

[State 725, Muteki]
type = NotHitBy
trigger1 = time >= 0
value = SCA
time = 1

[State 725, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 10
PalBright   =   0,  0,  0
PalContrast = 255,255,255
Trans = Add
TimeGap  = 2
FrameGap = 1
length = 8

;***********************************
[State 725, Pos]
type = PosSet
trigger1 = Time >= 0
y = ceil(-80 - ((StateType = A) * time))

[State 725, PosAdd-1]
type = PosAdd
triggerall = BackEdgeDist < 40
trigger1 = Time = 0
x = -10

[State 725, PosAdd-2]
type = PosAdd
triggerall = BackEdgeDist >= 40
trigger1 = Time = 0
x = -150

;***********************************
[State 725, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 10005

;===========================================================================
;===========================================================================
;===========================================================================
;===========================================================================
;===========================================================================
; 特殊攻撃技
;===========================================================================
;---------------------------------------------------------------------------
;鐘馗の陣・応脚
[Statedef 800]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 0
ctrl     = 0
anim     = 800
velset   = 0,0

[State 800, Kaname Voice]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s5,2

[State 800, SE]
type = PlaySnd
trigger1 = AnimElem = 3
value = s0,1

[State 800, Width]
type = Width
trigger1 = time = [1,30]
value = -15,25

[State 800, Speed]
type = VelSet
trigger1 = time >= 0
y = 0

[State 800, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 800, Idou]
type = PosAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
x = 15

[State 800, Hit]
type = HitDef
trigger1 = AnimElem = 3
attr             = S, NA
animtype         = Back
damage           = 30
getpower         = 0,0
guardflag        = MA
priority         = 4
pausetime        = 9,10
sparkno          = s4201
sparkxy          = -10,-60
guard.sparkno    = s4200
hitsound         = s0,7
guardsound       = s0,6
ground.type      = Low
ground.slidetime = 12
ground.hittime   = 15
ground.velocity  = -2,-2
air.velocity     = -2,-2
fall = 1
fall.recover = 0
P2StateNo = 2000
p1facing = 1
p2facing = 1

[State 800, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;震空の陣・昇踵（エリアルレイヴ開始技）
[Statedef 810]
type     = S
movetype = A
physics  = S
juggle   = 1
poweradd = 0
ctrl     = 0
anim     = 810
;velset   = 0,0

[State 810, Kaname Voice]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = s3,2

[State 810, SE]
type = PlaySnd
trigger1 = AnimElem = 3
value = s0,1

[State 810, Width]
type = Width
trigger1 = ((AnimElemTime(1) > 0) && (AnimElemTime(6) <= 0))
value = 20,-9

[State 810, Speed]
type = VelSet
trigger1 = time >= 0
y = 0

[State 810, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 810, PosAdd]
type = PosAdd
trigger1 = time = 1
x = ifelse(var(6)=1,40,10)

[State 810, Hit]
type = HitDef
trigger1 = AnimElem = 3
attr             = S, NA
animtype         = Up
damage           = 30
getpower         = 0,0
guardflag        = MA
priority         = 4
pausetime        = 9,10
sparkno          = s4201
sparkxy          = -10,-90
guard.sparkno    = s4200
hitsound         = s0,7
guardsound       = s0,6
ground.type      = High
ground.slidetime = 12
ground.hittime   = 15
ground.velocity  = 0,-9
air.velocity     = 0,-9
fall = 1

;*********************************
[State 810, Change]
type = ChangeState
triggerall = ((AnimElemTime(3) >= 0) && (MoveHit))
trigger1 = command = "holdup"
value = 10010

[State 810, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;震空の陣・流勢刃
[Statedef 820]
type     = A
movetype = A
physics  = N
juggle   = 1
poweradd = 0
ctrl     = 0
anim     = 820
velset   = 0,0

[State 820, Scroll]
type = Screenbound
trigger1 = ((p2movetype = H) && (MoveHit))
value = 0

[State 820, Kaname Voice]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = s3,4

[State 820, SE]
type = PlaySnd
trigger1 = Time = 2
value = s0,1

[State 820, Hit]
type = HitDef
trigger1 = AnimElem = 2
attr             = A, NA
animtype         = Hard
damage           = 30
getpower         = 0,0
guardflag        = HA
priority         = 4
pausetime        = 5,6
sparkno          = s4201
sparkxy          = -5,-60
guard.sparkno    = s4200
hitsound         = s0,7
guardsound       = s0,6
ground.type      = High
ground.slidetime = 9
ground.hittime   = 9
ground.velocity  = -20,-5
air.velocity     = -20,-5
fall = 1
fall.recover = 0

[State 820, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 10005

;===========================================================================
;===========================================================================
;===========================================================================
;===========================================================================
;===========================================================================
; 投げ技＆特殊効果
;===========================================================================
;---------------------------------------------------------------------------
;震空の陣・降魔襲 "零式"（投げ技）
[Statedef 900]
type     = S
movetype = A
physics  = S
juggle   = 0
velset   = 0,0
ctrl     = 0
anim     = 900
sprpriority = 2

[State 900, Hit]
type = HitDef
Trigger1 = Time = 0
attr     = S, NT
hitflag  = M-
priority = 1,Miss
hitsound = s1,9
sparkno  = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 901
p2stateno = 905

[State 900, Change]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;降魔襲：モーション
[Statedef 901]
type     = S
movetype = A
physics  = N
anim     = 901
poweradd = 0
ctrl     = 0
velset   = 0,0

[State 901, Tsukami]
type = TargetBind
trigger1 = AnimElem = 1
pos = 25,0

[State 901, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 902

;---------------------------------------------------------------------------
;降魔襲：モーション２
[Statedef 902]
type     = A
movetype = A
physics  = N
anim     = 902
poweradd = 0
ctrl     = 0
velset   = 4,-16

[State 902, Down]
type = VelAdd
trigger1 = time = [0,28]
y = .6

[State 902, Down]
type = VelAdd
trigger1 = time >= 29
y = 2

[State 902, Jump SE]
type = PlaySnd
trigger1 = Time = 1
value = s0,5

[State 902, Zanzou]
type = AfterImage
trigger1 = time = 1
Time = 52
PalBright   =   0,  0,  0
PalContrast = 255,255,255
Trans = Add
TimeGap  = 2
FrameGap = 1
length = 8

;***********************************
[State 902, Tsukami]
type = TargetBind
trigger1 = AnimElem = 1
trigger2 = AnimElem = 5
trigger3 = AnimElem = 9
pos = 25,-80
persistent = 1

[State 902, Tsukami]
type = TargetBind
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
trigger3 = AnimElem = 10
pos = 0,-40
persistent = 1

[State 902, Tsukami]
type = TargetBind
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
pos = -25,-80
persistent = 1

[State 902, Tsukami]
type = TargetBind
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
pos = 0,-100
persistent = 1

[State 902, Tsukami]
type = TargetBind
trigger1 = AnimElem = 11,>=0
pos = -25,-80
persistent = 1

;***********************************
[State 902, TargetChange]
type = TargetState
trigger1 = Time = 0
value = 906

[State 902, Change]
type = ChangeState
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = 903

;---------------------------------------------------------------------------
;降魔襲：モーション３
[Statedef 903]
type     = S
movetype = A
physics  = N
poweradd = 0
velset   = 0,0
ctrl     = 0
anim     = 903

[State 903, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

;***********************************
[State 903, Kaname Voice]
type = PlaySnd
trigger1 = AnimElemTime(1) = 0
value = s3,3

[State 903, Tyakuchi SE]
type = PlaySnd
trigger1 = AnimElem = 1
value = s2,0

[State 903, Void SE]
type = PlaySnd
trigger1 = AnimElem = 1
value = s1,4

[State 903, Shake]
type = EnvShake
trigger1 = AnimElem = 1
time  = 20
ampl  = 10
freq  = 100
phase = 100

[State 903, VoidPower Open]
type = Explod
trigger1 = AnimElem = 1
anim = 4109;4300
scale = 1,1
postype = p1
pos = 0,0
sprpriority = 2
supermove = 1
ownpal = 1

[State 903, Shibuki-F]
type = Explod
trigger1 = AnimElem = 1
anim = 4101
scale = 1.5,1
facing = -1
postype = p1
pos = 25,0
sprpriority = 3
supermove = 1
ownpal = 1

[State 903, Shibuki-B]
type = Explod
trigger1 = AnimElem = 1
anim = 4101
scale = 1.5,1
facing = 1
postype = p1
pos = -25,0
sprpriority = -1
supermove = 1
ownpal = 1

;***********************************
[State 903, Damage]
type = TargetLifeAdd
trigger1 = AnimElem = 1
value = -150

[State 903, TargetChange]
type = TargetState
trigger1 = Time = 0
value = 907

[State 903, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 904
ctrl = 1

;***********************************
[State 903, Finish SE]
type = PlaySnd
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
value = s1,6
ignorehitpause = 1
removeongethit = 1
persistent = 0

[State 903, Finish BG Color]
type = BGPalFX
triggerall = RoundState = 3
trigger1 = p2life <= 0
trigger1 = winko = 1
add = -255,-255,-255
sinadd = 500,500,500,100
time = 40
ignorehitpause = 1
removeongethit = 1
persistent = 0

;---------------------------------------------------------------------------
;降魔襲：モーション４
[Statedef 904]
type     = A
movetype = A
physics  = N
anim     = 904
poweradd = 0
ctrl     = 0
velset   = 2,-10

[State 904, Down]
type = VelAdd
trigger1 = time >= 0
y = .45

[State 904, Zanzou]
type = AfterImage
trigger1 = AnimElem = 1
Time = 45
PalBright   =   0,  0,  0
PalContrast = 255,255,255
Trans = Add
TimeGap  = 2
FrameGap = 1
length = 8

[State 904, Change]
type = ChangeState
trigger1 = ((Time > 0) && (Pos Y >= 0))
value = 52

;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
;降魔襲：相手側
[Statedef 905]
type     = S
movetype = H
physics  = N
velset   = 0,0

[State 905, Anim]
type = ChangeAnim2
Trigger1 = Time = 0
value = 905

;---------------------------------------------------------------------------
;降魔襲：相手側２
[Statedef 906]
type     = A
movetype = H
physics  = N
velset   = 0,0

[State 906, Anim]
type = ChangeAnim2
Trigger1 = Time = 0
value = 906

;---------------------------------------------------------------------------
;降魔襲：相手側３
[Statedef 907]
type     = S
movetype = H
physics  = N
velset   = 0,0
poweradd = 0

[State 907, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 907, Anim]
type = ChangeAnim2
Trigger1 = Time = 0
value = 907

[State 907, Change Self]
type = SelfState
trigger1 = AnimTime = 0
value = 5100

;===========================================================================
;---------------------------------------------------------------------------
;移動風しぶき
[Statedef 910]
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 1111
SprPriority = 7

;***********************************
[State 910, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

[State 910, Armor]
type = HitOverride
trigger1 = time >= 0
attr = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AT, AP
time = -1
stateno = 9999
ignorehitpause = 1

[State 910, Push]
type = PlayerPush
trigger1 = time >= 0
value = 0

;***********************************
[State 910, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 910, Speed]
type = VelSet
trigger1 = Time >= 0
x = 2

;***********************************
[State 910, Change]
type = ChangeState
trigger1 = ((Parent,var(42) = 1) || (Time = 21))
value = 911

;----------------------------------------------
;移動風しぶき消える
[Statedef 911]
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 1112
SprPriority = 7

;***********************************
[State 910, No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
IgnoreHitPause = 1
Persistent = 1

[State 911, Armor]
type = HitOverride
trigger1 = time >= 0
attr = SCA, NA, SA, HA, NP, SP, HP, NT, ST, HT, AA, AT, AP
time = -1
stateno = 9999
ignorehitpause = 1

[State 911, Push]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 911, Color Gradation]
type = Palfx
trigger1 = 1
Mul = ceil(100-(StateTime*2)),ceil(100-(StateTime*2)),ceil(100-(StateTime*2))
time = 1
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State 911, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 911, Speed]
type = VelSet
trigger1 = Time >= 0
x = 1.7

;***********************************
[State 911, Change]
type = DestroySelf
trigger1 = AnimTime = 0

;===========================================================================
;---------------------------------------------------------------------------
;ゲージ溜め
[Statedef 920] 
type     = S
movetype = I
physics  = S
juggle   = 0
ctrl     = 0
anim     = 920
poweradd = 0
velset   = 0,0

[State 920, Power]
type = PowerAdd
trigger1 = Time >= 0
value = 3

;***********************************
[State 920, Shibuki]
type = Explod
trigger1 = ((Time >= 1) && (TimeMod = 19,0))
anim = 4106
scale = 1.2,1
facing = ifelse(Random<=530,1,-1)
postype = p1
pos = 8,0
sprpriority = 2
supermove = 1
ownpal = 1

[State 920, Shibuki]
type = Explod
trigger1 = ((Time >= 1) && (TimeMod = 24,0))
anim = 4101
scale = 1,1
facing = -1
postype = p1
pos = 15,0
sprpriority = 3
supermove = 1
ownpal = 1

[State 920, Shibuki]
type = Explod
trigger1 = ((Time >= 1) && (TimeMod = 24,0))
anim = 4101
scale = 1,1
facing = 1
postype = p1
pos = 0,0
sprpriority = -1
supermove = 1
ownpal = 1

[State 920, Shibuki]
type = Explod
trigger1 = ((Time >= 1) && (TimeMod = 12,0))
anim = 4100
scale = 1.5,1
postype = p1
pos = 8,0
sprpriority = -2
supermove = 1
ownpal = 1

[State 920, Max Effect]
type = Explod
trigger1 = ((StateNo = 920) && (Power = 3001))
anim = 4002
scale = 1.2,1.2
postype = p1
pos = 8,-60
sprpriority = 5
supermove = 1
ownpal = 1
Persistent = 0

;***********************************
[State 920, Kaname Voice]
type = PlaySnd
trigger1 = Time = 1
value = s3,4

[State 920, SE]
type = PlaySnd
triggerall = StateNo = 920
trigger1 = ((Time >= 1) && (TimeMod = 20,0))
value = s0,2

[State 920, Max SE]
type = PlaySnd
trigger1 = ((StateNo = 920) && (Power = 3001))
value = s1,8
Persistent = 0

;***********************************
[State 920, Change]
type = ChangeState
triggerall = ((command != "hold_a") && (power <= 3000)) || ((command != "hold_x") && (power <= 3000))
trigger1 = 1
value = 11
ctrl = 1

[State 920, Change]
type = ChangeState
triggerall = power > 3000
trigger1 = 1
value = 11
ctrl = 1

;===========================================================================
;===========================================================================
;===========================================================================
;===========================================================================
;===========================================================================
;勝利メッセージ画面
[Statedef 20000]
type = S
ctrl = 0
velset = 0,0

[State 20000, Random Flag]
type = VarRandom
trigger1 = Time = 0
v = 2
range = 0,100

[State 20000, begin]
type = AssertSpecial
trigger1 = time = [0,300]
flag = roundnotover

[State 20000, No]
type = AssertSpecial
trigger1 = 1
flag = nomusic
flag2= nobardisplay

[State 20000, BG Color]
type = BGPalFX
triggerall = RoundState = 4
trigger1 = 1
add = -120,-120,-120
time = 10
ignorehitpause = 1
removeongethit = 1
persistent = 1

[State 20000, BGM]
type = PlaySnd
trigger1 = time = 0
value = s2,8

;*********************************************
[State 20000, Back]
type = Explod
trigger1 = time = 1
anim = 20007
pos = 0,0
postype = left
supermove = 1
sprpriority = 4
ownpal = 1
ontop = 1

[State 20000, Kaname Face]
type = Explod
;----- triggerall = var(2) = 0
trigger1 = time = 1
anim = 20000
pos = -25,0
postype = left
supermove = 1
sprpriority = 5
ownpal = 1
ontop = 1

[State 20000, Board]
type = Explod
trigger1 = time = 1
anim = 20001
pos = 0,0
postype = left
supermove = 1
sprpriority = 6
ownpal = 1
ontop = 1

;*********************************************
[State 20000, Message-1]
type = Explod
triggerall = var(2) = [0,20]
trigger1 = time = 1
anim = 20002
pos = 0,0
postype = left
supermove = 1
sprpriority = 7
ownpal = 1
ontop = 1

[State 20000, Message-2]
type = Explod
triggerall = var(2) = [21,40]
trigger1 = time = 1
anim = 20003
pos = 0,0
postype = left
supermove = 1
sprpriority = 7
ownpal = 1
ontop = 1

[State 20000, Message-3]
type = Explod
triggerall = var(2) = [41,60]
trigger1 = time = 1
anim = 20004
pos = 0,0
postype = left
supermove = 1
sprpriority = 7
ownpal = 1
ontop = 1

[State 20000, Message-4]
type = Explod
triggerall = var(2) = [61,80]
trigger1 = time = 1
anim = 20005
pos = 0,0
postype = left
supermove = 1
sprpriority = 7
ownpal = 1
ontop = 1

[State 20000, Message-5]
type = Explod
triggerall = var(2) = [81,100]
trigger1 = time = 1
anim = 20006
pos = 0,0
postype = left
supermove = 1
sprpriority = 7
ownpal = 1
ontop = 1

;===========================================================================
;---------------------------------------------------------------------------
;イントロ３用ヘルパー
[Statedef 20010]
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 707
SprPriority = 2

[State 20010, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 20010, Zanzou]
type = AfterImage
trigger1 = Time = 0
Time = 85
PalBright   =   0,  0,  0
PalContrast = 255,255,255
Trans = Add
TimeGap  = 2
FrameGap = 1
length = 8

;***********************************
[State 20010, Speed]
type = VelSet
trigger1 = time = 0
x = -2
y = 4

[State 20010, SpeedAdd]
type = VelAdd
trigger1 = time > 0
x = -0.5
y = 0.5

;***********************************
[State 20010, Change]
type = ChangeState
trigger1 = ((time > 0) && (Pos Y >= 0))
value = 20011

;---------------------------------------------------------------------------
[Statedef 20011]
type     = S
movetype = I
physics  = N
ctrl     = 0
anim     = 20020
SprPriority = 2
velset   = 0,0

[State 20011, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 20011, Shake]
type = EnvShake
trigger1 = time = 0
time  = 10
ampl  = 10
freq  = 100
phase = 100

;***********************************
[State 20011, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 20011, Speed]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0

;***********************************
[State 20011, Shibuki]
type = Explod
trigger1 = Time = 0
anim = 4106
scale = 1,1
postype = p1
pos = 0,0
sprpriority = 2
supermove = 1
ownpal = 1

[State 20011, Shibuki]
type = Explod
trigger1 = Time = 0
anim = 4107
scale = 1,1
postype = p1
pos = 0,0
sprpriority = 4
supermove = 1
ownpal = 1

[State 20011, Shibuki]
type = Explod
trigger1 = time = 0
anim = 4100
scale = 1,1
postype = p1
pos = 0,0
sprpriority = -1
supermove = 1
ownpal = 1

;***********************************
[State 20011, SE]
type = PlaySnd
trigger1 = Time = 0
value = s2,0

;***********************************
[State 20011, Change]
type = ChangeState
trigger1 = AnimTime = 0
value = 20012

;---------------------------------------------------------------------------
[Statedef 20012]
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = 20021

[State 20012, SprPriority]
type = SprPriority
trigger1 = 1
value = ifelse(time<8,2,7)

[State 20012, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;***********************************
[State 20012, Speed]
type = VelSet
trigger1 = time = 0
x = -3.15
y = -5

[State 20012, SpeedAdd]
type = VelAdd
trigger1 = time > 6
y = 0.4

;***********************************
[State 20012, Change]
type = ChangeState
trigger1 = ((time > 0) && (Pos Y >= 0))
value = 20013

;---------------------------------------------------------------------------
[Statedef 20013]
type     = S
movetype = I
physics  = N
ctrl     = 0
anim     = 20022
SprPriority = 7
velset   = 0,0

;[State 20013, No Shadow]
;type = AssertSpecial
;trigger1 = 1
;flag = NoShadow
;IgnoreHitPause = 1
;Persistent = 1

[State 20013, Bind]
type = BindToParent
trigger1 = 1
pos = 0,0
IgnoreHitPause = 1
Persistent = 1

;***********************************
[State 20013, Pos]
type = PosSet
trigger1 = Time >= 0
y = 0

[State 20013, Speed]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0

;***********************************
[State 20013, Shibuki]
type = Explod
trigger1 = Time = 0
anim = 4100
postype = p1
pos = 0,0
scale = 1.2,1
sprpriority = -1
ownpal = 1

;***********************************
[State 20013, SE]
type = PlaySnd
trigger1 = Time = 0
value = s2,1

;***********************************
[State 20013, Change]
type = ChangeState
trigger1 = time = 8
value = 9999

;===========================================================================
;===========================================================================
;===========================================================================
;===========================================================================
;===========================================================================
[Statedef 9999]
[State 9999, End] 
type = DestroySelf
trigger1 = time = 0
;===========================================================================
;===========================================================================
;===========================================================================
;===========================================================================
;===========================================================================

