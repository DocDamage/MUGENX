;===========================================================================
;ガルフォード	必殺技設定
;===========================================================================
;state1000-2899
;---------------------------------------------------------------------------
;修羅
;---------------------------------------------------------------------------
;プラズマブレイドa
[Statedef 1000]
type = S 
movetype= A 
physics = S 
poweradd= 0 
juggle  = 5
ctrl = 0
velset = 0
anim = 1000 

[State 5900, ランダム]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 1000, 1]
type = PlaySnd 
trigger1 = Time = 0 
value = 4,6 

[State 1000, 2]
type = PlaySnd 
trigger1 = Time = 25
value = 4,7 

[State 1000, 3]
type = Projectile 
trigger1 = AnimElem = 14 
projanim = 1010
projhitanim = 1011
offset = 50, -50 
velocity = 4, 0 
attr = S, SP
damage = 72,10
getpower = 0
givepower = 0
animtype = Medium
pausetime = 0,9
sparkxy = 10, 0
hitsound = s6,1
guardflag = MA
guardsound = s6,0
ground.type = Low
ground.slidetime = 14
ground.hittime = 16
ground.velocity = -8
air.animtype = Back 
air.velocity = -2.5,-5
air.juggle = 3

[State 1000, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;プラズマブレイドb
[Statedef 1001]
type = S ;　　　　　　　　　　　通常
movetype= A ;　　　　　　　　　攻撃
physics = S ;　　　　　　　　　　　通常
poweradd= 0 ;　　　　　　　　パワー に60追加
juggle  = 5
ctrl = 0
velset = 0
anim = 1000 ;　　　　　　　　　　[Action 1000] を呼び出す（air ファイルの波動拳モーション）

[State 5900, ランダム]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 1001, 1]
type = PlaySnd 
trigger1 = Time = 0 
value = 4,6 

[State 1001, 2]
type = PlaySnd 
trigger1 = Time = 25
value = 4,7 

[State 1001, 3]
type = Projectile ;　　　　　　　　発射物
trigger1 = AnimElem = 14 ;　　　アニメーションの14枚目が表示された時に
projanim = 1010 ;　　　　　　　　発射物のアニメーションの指定（[Action 1010]）
projhitanim = 1011 ;　　　　　　　発射物が当たった時のアニメーションの指定
offset = 50, -50 ;　　　　　　　　　自分の軸から見た発射物の軸位置の初期位置
velocity = 6, 0 ;　　　　　　　　　発射物の速度
attr = S, SP ;　　　　　　　　　　　攻撃の特質「通常、必殺技発射物」
damage = 72,10
getpower = 0
givepower = 0
animtype = Medium ;　　　　　　　ヒット時の相手のやられアニメーションの強さ指定
pausetime = 0,9 ;　　　　　　　　　ヒット時の硬直時間（自分は0、相手は9）
sparkxy = 10, 0 ;　　　　　　　　　ヒット時のエフェクト表示位置
hitsound = s6,1;　　　　　　　　　ヒット時の効果音
guardflag = MA ;　　　　　　　　　　相手キャラクターのガード状態指定
guardsound = s6,0 ;　　　　　　　　　ガードされた時の効果音
ground.type = Low ;　　　　　　　　相手が攻撃を受けた時の状態（地上にいるとき）
ground.slidetime = 14 ;　　　　　　相手の後ずさり時間
ground.hittime = 16 ;　　　　　　　ヒット状態を維持させる時間
ground.velocity = -8 ;　　　　　　　相手が攻撃を受けた時に与える初速度
air.animtype = Back ;　　　　　　　相手が攻撃を受けた時の状態（空中にいるとき）
air.velocity = -2.5,-5 ;　　　　　　　相手が攻撃を受けた時に与える初速度（空中で）
air.juggle = 3 ;　　　　　　　　　　　　ジャグルポイント

[State 1001, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;プラズマブレイドc
[Statedef 1002]
type = S ;　　　　　　　　　　　通常
movetype= A ;　　　　　　　　　攻撃
physics = S ;　　　　　　　　　　　通常
poweradd= 0 ;　　　　　　　　パワー に60追加
juggle  = 5
ctrl = 0
velset = 0
anim = 1000 ;　　　　　　　　　　[Action 1000] を呼び出す（air ファイルの波動拳モーション）

[State 5900, ランダム]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 1002, 1]
type = PlaySnd 
trigger1 = Time = 0 
value = 4,6 

[State 1002, 2]
type = PlaySnd 
trigger1 = Time = 25
value = 4,7 

[State 1002, 3]
type = Projectile ;　　　　　　　　発射物
trigger1 = AnimElem = 14 ;　　　アニメーションの14枚目が表示された時に
projanim = 1010 ;　　　　　　　　発射物のアニメーションの指定（[Action 1010]）
projhitanim = 1011 ;　　　　　　　発射物が当たった時のアニメーションの指定
offset = 50, -50 ;　　　　　　　　　自分の軸から見た発射物の軸位置の初期位置
velocity = 8, 0 ;　　　　　　　　　発射物の速度
attr = S, SP ;　　　　　　　　　　　攻撃の特質「通常、必殺技発射物」
damage = 72,10 ;　　　　　　　　ダメージの設定（ヒット時36、ガード時4）
getpower = 0
givepower = 0
animtype = Medium ;　　　　　　　ヒット時の相手のやられアニメーションの強さ指定
pausetime = 0,9 ;　　　　　　　　　ヒット時の硬直時間（自分は0、相手は9）
;sparkno = 0,1 ;　　　　　　　　　　ヒット時エフェクト（省略の場合はディフォルト）
sparkxy = 10, 0 ;　　　　　　　　　ヒット時のエフェクト表示位置
hitsound = s6,1 ;　　　　　　　　　ヒット時の効果音
guardflag = MA ;　　　　　　　　　　相手キャラクターのガード状態指定
guardsound = s6,0 ;　　　　　　　　　ガードされた時の効果音
ground.type = Low ;　　　　　　　　相手が攻撃を受けた時の状態（地上にいるとき）
ground.slidetime = 14 ;　　　　　　相手の後ずさり時間
ground.hittime = 16 ;　　　　　　　ヒット状態を維持させる時間
ground.velocity = -8 ;　　　　　　　相手が攻撃を受けた時に与える初速度
air.animtype = Back ;　　　　　　　相手が攻撃を受けた時の状態（空中にいるとき）
air.velocity = -2.5,-5 ;　　　　　　　相手が攻撃を受けた時に与える初速度（空中で）
air.juggle = 3 ;　　　　　　　　　　　　ジャグルポイント

[State 1002, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;パピー使用必殺技はgal_papy01.stに記述
;---------------------------------------------------------------------------
;羅刹
;---------------------------------------------------------------------------
;上段プラズマファクター
[Statedef 1500]
type = S ;　　　　　　　　　　　通常
movetype= A ;　　　　　　　　　攻撃
physics = S ;　　　　　　　　　　　通常
poweradd= 0 ;　　　　　　　　パワー に60追加
ctrl = 0
velset = 0
juggle  = 5
anim = 1500 ;　　　　　　　　　　

[State 5900, ランダム]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

;[State 1500, color]
;type = PalFX
;trigger1 = time = 2
;time = 30
;add = 0,80,180

[State 1500, 1]
type = PlaySnd 
trigger1 = Time = 5
value = 4,5 

[State 1500, spsnd01]
type = PlaySnd 
trigger1 = Time = 15
value = 8,0 

[State 1500, 3]
type = VelSet
trigger1 = Time = 1
x = 6

[State 1500, 4]
type = HitDef
trigger1 = AnimElem = 10
attr = SC, SA                     ;Attribute: Standing, Normal Attack
damage    = 128                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0
givepower = 0
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
                                 ;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = S1011
guard.sparkno = S10003           ;Spark image group and no (Def: set above)
sparkxy = -10,-30                ;X-offset for the "hit spark" rel. to p2,
                                 ;Y-offset for the spark rel. to p1
hitsound = s8,0                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime  = 11             ;Time victim is in hit state
ground.velocity = -4             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-6           ;X-velocity at which victim is pushed,
palfx.time = 30
palfx.add = 0,80,180
palfx.sinadd = 52,24,20,20
palfx.invertall = 1
palfx.color = 0
fall = 1
air.fall = 1

;[State 1500, 5] 
;type = explod
;trigger1 = moveguarded = 1
;anim = 1011
;persistent = 0
;pos = 10,-30
;postype = p2
;ignorehitpause = 0
;sprpriority = 6
;bindtime = 1

[State 1500, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;下段プラズマファクター
[Statedef 1550]
type = S ;　　　　　　　　　　　通常
movetype= A ;　　　　　　　　　攻撃
physics = S ;　　　　　　　　　　　通常
poweradd= 0 ;　　　　　　　　パワー に60追加
ctrl = 0
velset = 0
juggle  = 5
anim = 1550 ;　

[State 5900, ランダム]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

;[State 1550, color]
;type = PalFX
;trigger1 = time = 2
;time = 30
;add = 0,80,180

[State 1550, light] 
type = explod
trigger1 = Time = 3
anim = 9005
persistent = 0
pos = 62,0
postype = p1
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 1550, PF] 
type = PosFreeze
trigger1 = time = 0
value = 20

[State 1550, spsnd01]
type = PlaySnd 
trigger1 = Time = 15
value = 8,0 

[State 1550, 2]
type = PlaySnd 
trigger1 = Time = 5
value = 4,8 

[State 1550, 3]
type = VelSet
trigger1 = Time = 1
x = 6

[State 1550, 4]
type = HitDef
trigger1 = AnimElem = 6
attr = SC, SA
damage    = 70
animtype  = Hard
getpower = 0
givepower = 0
hitflag = MAF
guardflag = L
pausetime = 10,12
sparkno = S1011
guard.sparkno = S10003
sparkxy = -2,-10
hitsound   = s8,0
guardsound = s6,0
palfx.time = 30
palfx.add = 0,80,180
palfx.sinadd = 52,24,20,20
palfx.invertall = 1
palfx.color = 0
fall = 1
air.fall = 1


[State 1550, 5]
type = HitDef
trigger1 = AnimElem = 9
attr = SC, SA
damage    = 50
animtype  = Hard
getpower = 0
givepower = 0
hitflag = MAF
guardflag = L
pausetime = 10,12
sparkno = S1011
guard.sparkno = S10003
sparkxy = -2,-10
hitsound   = s8,0
guardsound = s6,0
ground.type = Trip
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -4
air.velocity = -1.3,-6
down.velocity = -4,0
down.hittime = 20
palfx.time = 30
palfx.add = 0,80,180
palfx.sinadd = 52,24,20,20
palfx.invertall = 1
palfx.color = 0
fall = 1
air.fall = 1

[State 1550, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;プラズマブレイク
[Statedef 1600]
type = S ;　　　　　　　　　　　通常
movetype= A ;　　　　　　　　　攻撃
physics = S ;　　　　　　　　　　　通常
poweradd= 0 ;　　　　　　　　
ctrl = 0
velset = 0
juggle  = 4
anim = 1600 ;　　　　　　　　　　

[State 5900, ランダム]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 1600, color]
type = PalFX
trigger1 = time = 2
time = 30
add = 0,80,180

[State 1600, 1]
type = PlaySnd 
trigger1 = Time = 0 
value = 4,6 

[State 1600, spsnd01]
type = PlaySnd 
trigger1 = Time = 01
value = 8,0 

[State 1600, 2]
type = PlaySnd 
trigger1 = Time = 25
value = 4,9 

[State 1600, 3]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
trigger5 = AnimElem = 10
attr = SC, SA                     ;Attribute: Standing, Normal Attack
damage    = 27               ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0
givepower = 0
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
                                 ;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
;sparkno = 2                   ;Spark image group and no (Def: set above)
sparkxy = -10,-30                ;X-offset for the "hit spark" rel. to p2,
                                 ;Y-offset for the spark rel. to p1
hitsound = s8,0                   ;Sound to play on hit
guardsound = s4,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime  = 11             ;Time victim is in hit state
ground.velocity = -4             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,
fall = 1
air.fall = 1

[State 1600, 4] 
type = explod
trigger1 = movehit = 1
anim = 1011
persistent = 0
pos = 10,-30
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 1600, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------
;ストライクへッズ_ヒット判定
[Statedef 1700]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0,0
anim = 1700
ctrl = 0

[State 5900, ランダム]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 1700, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, ST
hitflag = M-
animtype = Back
priority = 2
sparkno = -1
p2facing = 1
p1stateno = 1701
p2stateno = 1710
fall = 1
hit.recover = 0
fall.recover = 0
down.recover = 0
down.hittime = 65
down.bounce = 0
forcestand = 1

[State 1700, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 1720

;--------------------------------------------------------------------------
;ストライクへッズ自キャラ上昇前
[Statedef 1701]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0,0
anim = 1701
ctrl = 0

[State 1701, 0]
type = PlayerPush
trigger1 = 1
value = 0

[State 1701, 0]
type = posadd
trigger1 = time = 1
x = 2

[State 1701, snd]
type = PlaySnd
trigger1 = Time = 0
value = 10, 0

[State 1701, 1]
type = ChangeState
trigger1 = Time = 36
value = 1702
ctrl = 0

;--------------------------------------------------------------------------
;ストライクへッズ自キャラ上昇
[Statedef 1702]
type = A
movetype = H
physics = N
juggle = 0
velset = 0,0,0
anim = 1702
ctrl = 0

[State 1702, 0]
type = PlayerPush
trigger1 = 1
value = 0

[State 1702, 0]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1702, 1]
type = PlaySnd 
trigger1 = Time = 0 
value = 4,11 

[State 1702, 2]
type = VelSet
trigger1 = Time = 1
y = -18.1

[State 1702, 加速]
type = VelAdd
trigger1 = Time >= 1
y = .25

[State 1801, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 60
trans = add
length   = 10
timegap  = 5
framegap = 1
PalBright = 1 , 0 , 30
PalContrast = 70 , 70 , 220
PalAdd = 0 , 0 , 0
PalMul = .6 , .6 , .8
IgnoreHitPause = 1
Persistent = 1

[State 1702, 3]
type = PosSet
trigger1 = Time = 60
y = -400

[State 1702, 4]
type = ChangeState
trigger1 = Time = 61
value = 1703
ctrl = 0

;--------------------------------------------------------------------------
;ストライクへッズ自キャラ落下
[Statedef 1703]
type = A
movetype = A
physics = N
juggle = 0
velset = 0,0,0
anim = 1703
ctrl = 0

[State 1703, 0]
type = PlayerPush
trigger1 = 1
value = 0

[State 1703, 0]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1703, 2]
type = VelSet
trigger1 = Time = 1
y = 7

[State 1703, 加速] ;Acceleration
type = VelAdd
trigger1 = Time >= 0
y = .45

[State 1703, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 100
trans = add
length   = 10
timegap  = 5
framegap = 1
PalBright = 1 , 0 , 30
PalContrast = 70 , 70 , 220
PalAdd = 0 , 0 , 0
PalMul = .6 , .6 , .8
IgnoreHitPause = 1
Persistent = 1

[State 1703, 3]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 1704
ctrl = 0

;--------------------------------------------------------------------------
;ストライクへッズ着地後
[Statedef 1704]
type = A
movetype = H
physics = N
anim = 1704
velset = 0,0,0

[State 1704, 0]
type = PlayerPush
trigger1 = 1
value = 0

[State 1704, 1]
type = PlaySnd 
trigger1 = Time = 0 
value = 6,2 

[State 1704, 2]
type = PlaySnd 
trigger1 = Time = 0
value = 4,14

[State 1704,3]
type = EnvShake
trigger1 = time = 0
time = 20

[State 1704, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 48
trans = add
length   = 10
timegap  = 5
framegap = 1
PalBright = 1 , 0 , 30
PalContrast = 70 , 70 , 220
PalAdd = 0 , 0 , 0
PalMul = .6 , .6 , .8
IgnoreHitPause = 1
Persistent = 1

[State 1704, spsnd01]
type = PlaySnd 
trigger1 = Time = 5
value = 8,0 

[State 1704, 落雷] 
type = explod
trigger1 = Time = 1
anim = 1750
persistent = 0
pos = 20, 70
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ontop = 0

[State 1704, 落雷] 
type = explod
trigger1 = Time = 11
anim = 1750
persistent = 0
pos = -30, 70
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ontop = 0

[State 1704, 落雷] 
type = explod
trigger1 = Time = 11
anim = 1750
persistent = 0
pos = 70,70
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ontop = 0

[State 1704, 落雷] 
type = explod
trigger1 = Time = 22
anim = 1750
persistent = 0
pos = -80,70
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ontop = 0

[State 1704, 落雷] 
type = explod
trigger1 = Time = 22
anim = 1750
persistent = 0
pos = 120,70
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
ontop = 0

[State 1704,4]
type = PosSet
trigger1 = time = 0
y = 0

[State 1704, push]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 1704, 5]
type = TargetBind
trigger1 = time = 0
pos = 5,15

[State 1704, spr]
type = SprPriority
trigger1 = time = 0
value = 1

[State 1704,6]
type = TargetLifeAdd
trigger1 = time = 0
value = -190 

[State 1704,7]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 1704,8]
type = CtrlSet
trigger1 = time >= 36
value = 1

[State 1704,9]
type = ChangeState
trigger1 = time = 24
value = 1705
ctrl = 0

;Jump back after landing
[Statedef 1705]
type = A
movetype = I
physics = A
ctrl = 0
anim = 43

[State 1705, 1]
type = VelAdd
trigger1 = time = 0
x = -3
y = -9

[State 1705, 4]
type = ChangeState
trigger1 = time = 0
value = 51

[State 1705,2]
type = NotHitBy
trigger1 = time >= 0
value = SCA

[State 1705,2a]
type = ChangeAnim
trigger1 = AnimElem = 3
value = 46

[State 1705,3]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; 相手側(相手を吸い込む)
[Statedef 1710]
movetype = H
physics = N
ctrl = 0
velset = 0

[State 1710, 0]
type = nothitby
trigger1 = time = 0
value = SCA.NA NP NT SA SP ST HA HP HT
time = 100

[State 1710, 1]
type = Changeanim2
trigger1 = Time = [0,36]
value = 5000

[State 1710, 2]
type = PosAdd
trigger1 = Time = 1
x = ifelse(p2dist X > 3 && p2dist X <= 6 ,3,ifelse(p2dist X > 6 && p2dist X <= 9 ,6,ifelse(p2dist X > 9,9,0)))

[State 1711, 0]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1711, 1]
type = Changeanim2 ; 投げられる側のアニメーションを呼び出します。
trigger1 = Time = 36
value = 5000

[State 1711, 2]
type = VelSet
trigger1 = Time = 37
y = -18.1

[State 1711, 加速]
type = VelAdd
trigger1 = Time >= 37
y = .25

[State 1711, 3]
type = PosSet
trigger1 = Time = 96
y = -475

[State 1711, 4]
type = ChangeState
trigger1 = Time >= 97
value = 1712
ctrl = 0

;---------------------------------------------------------------------------
; 相手側下降時
[Statedef 1712]
movetype = H
physics = N
ctrl = 0
velset = 0; 投げる側と同じく、動作に入ったら加速度を殺しています。

[State 1712, 0]
type = nothitby
trigger1 = time = 0
value = SCA.NA NP NT SA SP ST HA HP HT
time = 100

[State 1712, 0]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1712, a]
type = AngleDraw
trigger1 = Time >= 1

[State 1712, b]
type = AngleSet
trigger1 = Time >= 1
value = 180

[State 1712, 2]
type = VelSet
trigger1 = Time = 1
y = 7

[State 1712, 加速] ;Acceleration
type = VelAdd
trigger1 = Time >= 0
y = .45

[State 1712, 3] ;Hit ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -70
value = 1713
ctrl = 0

;---------------------------------------------------------------------------
; 相手側着地時
[Statedef 1713]
movetype = H
physics = N
ctrl = 0
velset = 0; 投げる側と同じく、動作に入ったら加速度を殺しています。

[State 1713, color]
type = PalFX
trigger1 = time = 0
time = 60
add = 0,80,180

[State 1713, 1]
type = PosSet
trigger1 = Time = 0
y = -75

[State 1713, a]
type = AngleDraw
trigger1 = Time >= 1

[State 1713, b]
type = AngleSet
trigger1 = Time >= 1
value = 180

[State 1713, 3] ;Hit ground
type = SelfState
trigger1 = Time = 24
value = 5100
ctrl = 0

;---------------------------------------------------------------------------
; 防御崩し(すかり状態）
[Statedef 1720]
type = S
movetype = A
physics = S
ctrl = 0
anim = 910

[State 1720, 1]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------
;ライトニングスラッシュ
;ヒット判定
[Statedef 1800]
type = S
movetype = A
physics = S
juggle  = 5
velset = 0,0,0
anim = 1800
ctrl = 0

[State 5900, ランダム]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 1800, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 1,2 

[State 1800, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 48
trans = add
length   = 10
timegap  = 5
framegap = 1
PalBright = 1 , 0 , 30
PalContrast = 70 , 70 , 220
PalAdd = 0 , 0 , 0
PalMul = .6 , .6 , .8
IgnoreHitPause = 1
Persistent = 1

[State 1800, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 1800, 2]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 1800, 4]
type = MakeDust
trigger1 = Time = 1
pos = 0, 0
spacing = 1

[State 1800, 5]
type = MakeDust
trigger1 = AnimElem = 3, >= 0
pos = 0, 0


[State 1800, 6]
type = HitDef
trigger1 = time = 0
attr = S, ST
guardflag = MA
hitflag = MAF
animtype = Back
priority = 2
hitsound   = s6,1
guardsound = s6,0
sparkno = S10007
guard.sparkno = S10003
sparkxy = -10,-50
p2facing = 1
p1stateno = 1801
p2stateno = 1811
fall = 1
hit.recover = 0
fall.recover = 0
down.recover = 0
down.hittime = 65
down.bounce = 0

[State 1800, 7]
type = ChangeState
trigger1 = MoveGuarded = 4
value = 105

[State 1800, 8]
type = ChangeState
trigger1 = Time > 26
value = 101
;--------------------------------------------------------------------------
;ライトニングスラッシュ_バック天
[Statedef 1801]
type = A
movetype = H
physics = N
juggle = 0
velset = 0,0,0
anim = 1801
ctrl = 0

[State 1801, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 48
trans = add
length   = 10
timegap  = 5
framegap = 1
PalBright = 1 , 0 , 30
PalContrast = 70 , 70 , 220
PalAdd = 0 , 0 , 0
PalMul = .6 , .6 , .8
IgnoreHitPause = 1
Persistent = 1

[State 1801, 1]
type = VelSet
trigger1 = Time = 0
y = -7

[State 1801, 2]
type = VelAdd
trigger1 = Time < 15
y = .45

[State 1801, 3]
type = VelSet
trigger1 = Time = 15
y = 0

[State 1801, 4]
type = VelAdd
trigger1 = Time >= 15
y = .45

[State 1801, 5]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = vel Y > 0
value = 1802
ctrl = 0 

;---------------------------------------------------------------------------
;ライトニングスラッシュ_待ち
[Statedef 1802]
type = S 
movetype= H 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 1802

[State 1802, 0]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 1802,1]
type = PosSet
trigger1 = time = 0
y = 0

[State 1802, 2]
type = turn
trigger1 = time = 1

[State 1802, 3]
type = ChangeState
trigger1 = Time = 10
value = 1803
ctrl = 0

;---------------------------------------------------------------------------
;ライトニングスラッシュ_ファクター
[Statedef 1803]
type = A 
movetype= H 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 1803

[State 1803, snd]
type = PlaySnd 
trigger1 = Time = 1 
value = 4,10 

[State 1803, spsnd01]
type = PlaySnd 
trigger1 = Time = 15
value = 8,0 

[State 1801, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 38
trans = add
length   = 10
timegap  = 5
framegap = 1
PalBright = 1 , 0 , 30
PalContrast = 70 , 70 , 220
PalAdd = 0 , 0 , 0
PalMul = .6 , .6 , .8
IgnoreHitPause = 1
Persistent = 1

[State 1803, 1]
type = VelSet
trigger1 = Time = 1
x = 5

[State 1803, 2]
type = HitDef
trigger1 = AnimElem = 8
attr = SC, SA                     ;Attribute: Standing, Normal Attack
damage    = 160                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0
givepower = 0
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
                                 ;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                   ;Number of hits to count as (Def: 1)
sparkno = s1011			;Spark image group and no (Def: set above)
sparkxy = -10,-30                ;X-offset for the "hit spark" rel. to p2,
                                 ;Y-offset for the spark rel. to p1
hitsound = s6,2                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime  = 11             ;Time victim is in hit state
ground.velocity = -4             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,
                                 ;Y-velocity at which victim is pushed
[State 1803, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 相手側
[Statedef 1811]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0; 投げる側と同じく、動作に入ったら加速度を殺しています。

[State 1811, color]
type = PalFX
trigger1 = time = 2
time = 10
add = 0,80,180

[State 1811,0]
type = PosAdd
trigger1 = time = 0
x = 2

[State 1811, 1]
type = Changeanim2 ; 投げられる側のアニメーションを呼び出します。
trigger1 = Time = 0
value = 5010

[State 1811, 2]
type = ChangeState
trigger1 = Time = 10
value = 1812
ctrl = 0 

;---------------------------------------------------------------------------
; 相手側上昇時
[Statedef 1812]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0; 投げる側と同じく、動作に入ったら加速度を殺しています。

[State 1812, 1]
type = Changeanim2 ; 投げられる側のアニメーションを呼び出します。
trigger1 = Time = 0
value = 5030

[State 1812, color]
type = PalFX
trigger1 = time = 2
time = 80
add = 0,80,180

[State 1812, 2]
type = VelSet
trigger1 = Time = 1
x = 3.5
y = -6

[State 1812, 加速]
type = VelAdd
trigger1 = Time > 1
y = .25

[State 1812, 加速]
type = VelAdd
trigger1 = Time > 1
x = .05

[State 1812, 4]
type = SelfState
trigger1 = Time = 50
value = 5030
ctrl = 1

;===========================================================================
;属性チェンジ
;---------------------------------------------------------------------------
; 修羅･羅刹チェンジ
[Statedef 2900]
type = S
movetype = A
physics = S
ctrl = 0
anim = 2900

[State 2900, snd]
type = PlaySnd
trigger1 = Time = 0
value = 4, 17

[State 2900, 1]
type = ChangeState
trigger1 = time > 2
trigger1 = var(50) = 0
value = 2910

[State 2900, 2]
type = ChangeState
trigger1 = time > 2
trigger1 = var(50) = 1
value = 2920

;---------------------------------------------------------------------------
; 羅刹チェンジ
[Statedef 2910]
type = S
movetype = A
physics = S
ctrl = 0
anim = 2900

[State 2910, color]
type = PalFX
trigger1 = time = 0
time = 20
add = 0,80,180

[State 2910,地鳴り]
type = EnvShake
trigger1 = time = 1
time = 20

[State 2910, SuperPause]
type = SuperPause
trigger1 = AnimElem = 2
pos = 5, -51
anim = 100

[State 2910, 1]
type = Varadd
trigger1 = Time = 1
v = 50
value = 1

[State 2910, 2]
type = Varadd
trigger1 = Time = 1
trigger1 = var(6) = 1
trigger1 = helper, stateno = [6091,6092]
v = 50
value = 2

[State 2910, 3]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 修羅チェンジ
[Statedef 2920]
type = S
movetype = A
physics = S
ctrl = 0
anim = 2900

[State 2920, color]
type = PalFX
trigger1 = time = 0
time = 20
add = 180,80,0

[State 2920,地鳴り]
type = EnvShake
trigger1 = time = 1
time = 20

[State 2920, SuperPause]
type = SuperPause
trigger1 = AnimElem = 2
pos = 5, -51
anim = 100

[State 2920, 1]
type = VarAdd
trigger1 = Time = 1
v = 50
value = -1

[State 2920, 2]
type = Varadd
trigger1 = Time = 1
trigger1 = var(6) = 1
trigger1 = helper, stateno != [6091,6092]
v = 50
value = -2

[State 2920, 3]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1


