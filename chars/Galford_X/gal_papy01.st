;===========================================================================
;パピー設定
;===========================================================================
;state6000-6099
;---------------------------------------------------------------------------
; papy
[Statedef 6000]
type = S
movetype = I
anim = 6000
velset = 0

[State 6000, 1]
type = ChangeState
trigger1 = RootDist X > 80
value = 6020

[State 6000, 2]
type = ChangeState
trigger1 = RootDist X < 75
value = 6021

[State 6000, 3]
type = ChangeState
trigger1 = RootDist X > 100
value = 6022

[State 6000, 4]
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -5

[State 6000, rash_dog_a]
type = ChangeState
triggerall = root, AnimElem = 6
trigger1 = root, stateno = 6050
value = 6051

[State 6000, rash_dog_b]
type = ChangeState
triggerall = root, AnimElem = 6
trigger1 = root, stateno = 6060
value = 6061

[State 6000, rash_dog_c]
type = ChangeState
triggerall = root, AnimElem = 6
trigger1 = root, stateno = 6070
value = 6071

[State 6000, rash_dog_d]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 6080
value = 6082

[State 6000, 5]
type = ChangeState
triggerall = root, AnimElem = 3
trigger1 = root, stateno = 2910
trigger2 = root, var(50) = 1
value = 6090

[State 6000, 6]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 3200
value = 3400

[State 6000, 7]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 3300
value = 3450

[State 6000, 8END]
type = ChangeState
trigger1 = AnimTime = 0
value = 6000

;---------------------------------------------------------------------------
; papy(Moving Forward)
[Statedef 6020]
type = S
movetype = I
anim = 6001
velset = 2.3,0
;facep2 = 1

[State 6020, 1]
type = ChangeState
trigger1 = RootDist X < 80
value = 6000

[State 6020, 2]
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -5

[State 6020, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 6020

[State 6020, rash_dog_a]
type = ChangeState
triggerall = root, AnimElem = 6
trigger1 = root, stateno = 6050
value = 6051

[State 6020, rash_dog_b]
type = ChangeState
triggerall = root, AnimElem = 6
trigger1 = root, stateno = 6060
value = 6061

[State 6020, rash_dog_c]
type = ChangeState
triggerall = root, AnimElem = 6
trigger1 = root, stateno = 6070
value = 6071

[State 6020, rash_dog_d]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 6080
value = 6082

[State 6020, 4]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 3200
value = 3400

[State 6020, 5]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 3300
value = 3450

[State 6020, 6]
type = ChangeState
triggerall = root, AnimElem = 3
trigger1 = root, stateno = 2910
trigger2 = root, var(50) = 1
value = 6090

;---------------------------------------------------------------------------
; papy(Moving Backward)
[Statedef 6021]
type = S
movetype = I
anim = 6002
velset = -2.0, 0
;facep2 = 1

[State 6021, 1]
type = ChangeState
trigger1 = RootDist X > 75
value = 6000

[State 6021, 2]
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -5

[State 6021, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 6021

[State 6021, rash_dog_a]
type = ChangeState
triggerall = root, AnimElem = 6
trigger1 = root, stateno = 6050
value = 6051

[State 6021, rash_dog_b]
type = ChangeState
triggerall = root, AnimElem = 6
trigger1 = root, stateno = 6060
value = 6061

[State 6021, rash_dog_c]
type = ChangeState
triggerall = root, AnimElem = 6
trigger1 = root, stateno = 6070
value = 6071

[State 6021, rash_dog_d]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 6080
value = 6082

[State 6021, 4]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 3200
value = 3400

[State 6021, 5]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 3300
value = 3450

[State 6021, 6]
type = ChangeState
triggerall = root, AnimElem = 3
trigger1 = root, stateno = 2910
trigger2 = root, var(50) = 1
value = 6090

;---------------------------------------------------------------------------
; papy(Moving Backward_Far)
[Statedef 6022]
type = S
movetype = I
anim = 6002
velset = -3.0, 0
;facep2 = 1

[State 6022, 1]
type = ChangeState
trigger1 = RootDist X < 100
value = 6000

[State 6022, 2]
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -5

[State 6022, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 6022

[State 6022, rash_dog_a]
type = ChangeState
triggerall = root, AnimElem = 6
trigger1 = root, stateno = 6050
value = 6051

[State 6022, rash_dog_b]
type = ChangeState
triggerall = root, AnimElem = 6
trigger1 = root, stateno = 6060
value = 6061

[State 6022, rash_dog_c]
type = ChangeState
triggerall = root, AnimElem = 6
trigger1 = root, stateno = 6070
value = 6071

[State 6022, rash_dog_d]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 6080
value = 6082

[State 6022, 4]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 3200
value = 3400

[State 6022, 5]
type = ChangeState
triggerall = root, AnimElem = 1
trigger1 = root, stateno = 3300
value = 3450

[State 6022, 6]
type = ChangeState
triggerall = root, AnimElem = 3
trigger1 = root, stateno = 2910
value = 6090

;---------------------------------------------------------------------------
;パピィー_バックステップ
[Statedef 6025]
type    = A
movetype = I
physics = N
anim = 6008
sprpriority = 3

[State 6025, 1]
type = VelSet
trigger1 = Time = 0
x = -6.6
y = -4.9

[State 6025, 2]
type = Veladd
trigger1 = Time >= 3
y = .33


[State 6025, 4]
type = PosSet
trigger1 = Time >= 3
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -3
y = 0

[State 6025, 5]
type = ChangeState
trigger1 = Time >= 3
trigger1 = Pos Y >= -1
value = 6000

;---------------------------------------------------------------------------
;パピィー_バックステップ(パピーが反対側に回り込んだとき)
[Statedef 6026]
type    = A
movetype = I
physics = N
anim = 6008
sprpriority = 3

[State 6026, 1]
type = VelSet
trigger1 = Time = 0
x = 7.8
y = -5.2

[State 6026, 2]
type = Veladd
trigger1 = Time >= 3
y = .33

[State 6026, 4]
type = PosSet
trigger1 = Time >= 3
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -3
y = 0

[State 6026, 5]
type = ChangeState
trigger1 = Time >= 3
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -1
value = 6000

;==================================================================
; ラッシュドッグ
[Statedef 6050]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 6050
PowerAdd = 0

[State 5900, ランダム]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 6050, 1]
type = PlaySnd
trigger1 = Time = 0
value = 4, 0

[State 6050, 2]
type = PlaySnd
trigger1 = Time = 17
value = 4, 1

[State 6050, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; papie attack
[Statedef 6051]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 6051                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 6051, 1]
type = HitDef
trigger1 = AnimElem >= 1
attr = C, NA                     ;Attribute: Standing, Normal Attack
damage    = 80                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0
givepower = 0
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
                                 ;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = S10007
guard.sparkno = S10008
sparkxy = -10,-10                ;X-offset for the "hit spark" rel. to p2,
                                 ;Y-offset for the spark rel. to p1
hitsound = s6,1                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 22             ;Time that the victim slides back
ground.hittime  = 22             ;Time victim is in hit state
ground.velocity = -4             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,
                                 ;Y-velocity at which victim is pushed

[State 6051, 2] 
type = explod
trigger1 = movehit = 1
anim = 9004
persistent = 0
pos = 10,-30
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 6051, 3]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = movehit = 1
trigger3 = moveguarded = 1
value = 6025

;==================================================================
;マシンガンドッグ
[Statedef 6060]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 6050
PowerAdd = 0

[State 5900, ランダム]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 6060, 1]
type = PlaySnd
trigger1 = Time = 0
value = 4, 4

[State 6060, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; papie attack
[Statedef 6061]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 6061                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)


[State 6061, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NT
guardflag = MA
hitcount = 0
priority = 2, Miss
sparkno = -1
guard.sparkno = S10008
sprpriority = 3
p1stateno = 6065 ; 技がヒット（投げが成功した時のステイト）
p2stateno = 6066 ; 投げられる相手のステイト

[State 6061, 3]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = moveguarded = 4
value = 6025

;---------------------------------------------------------------------------
; 噛みつき成功（モーション）
[Statedef 6065]
type = S
movetype = A
physics = N
anim = 6065 
velset = 0,0 

[State 6065, 0]
type = VelSet ; その後、改めて加速度を指定しています。
trigger1 = Time = 1 ; 加速が加わるタイミングを指示しています。
x = 1.2

[State 6065, 1]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 3
trigger3 = AnimElem = 6
attr = C, NA                     ;Attribute: Standing, Normal Attack
damage    = 30                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0
givepower = 0
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
                                 ;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = S9002                   ;Spark image group and no (Def: set above)
guard.sparkno = S10008
sparkxy = -10,-30                ;X-offset for the "hit spark" rel. to p2,
                                 ;Y-offset for the spark rel. to p1
hitsound = s6,1                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0            ;Time that the victim slides back
ground.hittime  = 11             ;Time victim is in hit state
ground.velocity = 0			;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,
                                 ;Y-velocity at which victim is pushed

[State 6065, 2]
type = HitDef
trigger1 = AnimElem = 8
attr = S, NA
animtype  = Back
damage    = 50
guardflag = MAF
pausetime = 12,12
getpower = 0
sparkno = S9003
guard.sparkno = S10008
sparkxy = -10,-30
hitsound   = s6,2
guardsound = s6,0
ground.type = High
ground.slidetime = 13
ground.hittime  = 26
ground.velocity = -3,-6
;air.velocity = -3,-6
fall = 1
;fall.xvelocity = 0
fall.yvelocity = -4.0
fall.recover = 0

;[State 6055, 2] 
;type = explod
;trigger1 = movehit = 1
;anim = 9004
;persistent = 0
;pos = 10,-30
;postype = p2
;ignorehitpause = 0
;sprpriority = 6
;bindtime = 1

[State 6065, 3]
type = Changestate
trigger1 = animtime = 0
value = 6025

;---------------------------------------------------------------------------
; 相手側
[Statedef 6066]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0

[State 6066, 2]
type = Changeanim2
trigger1 = Time = 0
value = 5000

[State 6066, 1]
type = velset
trigger1 = Time = 1
x = 0
y = 0

[State 6066, 3]
type = SelfState
trigger1 = Time = 3
value = 0
ctrl = 1


;==================================================================
;レプリカドッグ
[Statedef 6070]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 6050
PowerAdd = 0

[State 5900, ランダム]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 6070, 1]
type = PlaySnd
trigger1 = Time = 0
value = 4, 0

[State 6070, 2]
type = PlaySnd
trigger1 = Time = 17
value = 4, 1

[State 6070, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; パピー消える
[Statedef 6071]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                     ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 6071                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 6071, 1]
type = PosSet
trigger1 = AnimTime = 0
y = -250

[State 6071, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 6072

;---------------------------------------------------------------------------
; パピー頭上移動
[Statedef 6072]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 34463                     ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 6072, 1]
type = ChangeState
trigger1 = p2BodyDist X <= 0
value = 6075


[State 6072, 2]
type = ChangeState
trigger1 = Time = 30
value = 6075

;---------------------------------------------------------------------------
; パピー落下
[Statedef 6075]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 6075                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 6075, 1]
type = VelSet
trigger1 = Time = 1
y = 4

[State 6075, 2]
type = VelSet
trigger1 = Time = 4
y = 8

[State 6075, 3]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 6
attr = C, NA                     ;Attribute: Standing, Normal Attack
damage = 70                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0                 ;Power to get on hit, on guard
givepower = 0                ;Power to give opponent on hit, on guard
guardflag = HA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = S10007
guard.sparkno = S10008
sparkxy = -10,-10                ;X-offset for the "hit spark" rel. to p2,
hitsound = s6,1                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime  = 11             ;Time victim is in hit state
ground.velocity = -4             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,
                                 ;Y-velocity at which victim is pushed

[State 6075, 4]
type = PosSet
trigger1 = AnimTime = 0
y = -1

[State 6075, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 6025

;==================================================================
;オーバーヘッドクラッシュ
[Statedef 6080]
type    = A
movetype= I
physics = S
ctrl = 0
anim = 41
PowerAdd = 0

[State 5900, ランダム]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 6080, 1]
type = VelSet
trigger1 = Time = 0
y = -3

[State 6080, 2]
type = PosSet
trigger1 = Time = 8
y = -100

[State 6080, 3]
type = ChangeState
trigger1 = Time = 9
value = 6081
ctrl = 0

;---------------------------------------------------------------------------
; ガルフォードキック
[Statedef 6081]
type    = A
movetype= I
physics = S
ctrl = 0
anim = 6080
PowerAdd = 0

[State 6081, 1]
type = PlaySnd
trigger1 = Time = 0
value = 4, 2

[State 6081, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 0

;---------------------------------------------------------------------------
; パピー消える
[Statedef 6082]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                     ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 6071                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 6082, 1]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = RootDist X <= 0
value = 6083

[State 6082, 2]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = RootDist X > 0
value = 6084

;---------------------------------------------------------------------------
; パピー定位置移動
[Statedef 6083]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                     ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 34463                      ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 6083, 1]
type = VelSet
trigger1 = Time = 0
x = -10

[State 6083, 2]
type = PosSet
trigger1 = Time = 0
y = -140

[State 6083, 3]
type = ChangeState
trigger1 = RootDist X > 0
value = 6085

[State 6083, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 6000

;---------------------------------------------------------------------------
; パピー定位置移動
[Statedef 6084]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                     ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 34463                    ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 6084, 1]
type = VelSet
trigger1 = Time = 0
x = 10

[State 6084, 2]
type = PosSet
trigger1 = Time = 0
y = -140

[State 6084, 3]
type = ChangeState
trigger1 = RootDist X < 0
value = 6085

[State 6084, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 6000

;---------------------------------------------------------------------------
; papie attack
[Statedef 6085]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 6075                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 6080, 1]
type = VelSet
trigger1 = Time = 0
x = 10
y = 4

[State 6085, 1]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 6
attr = C, NA                     ;Attribute: Standing, Normal Attack
damage    = 40                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0                 ;Power to get on hit, on guard
givepower = 0                 ;Power to give opponent on hit, on guard
guardflag = HA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = S10007
guard.sparkno = S10008
sparkxy = -10,-10                ;X-offset for the "hit spark" rel. to p2,
hitsound = s6,2              ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime  = 11             ;Time victim is in hit state
ground.velocity = -4             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,
                                 ;Y-velocity at which victim is pushed

[State 6085, 2] 
type = explod
trigger1 = movehit = 1
anim = 9004
persistent = 0
pos = 10,-30
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 6085, 3]
type = PosSet
trigger1 = AnimTime = 0
y = -1

[State 6085, 4]
type = ChangeState
triggerall = AnimTime = 0
trigger1 =root,facing = 1 && facing = 1
trigger2 =root,facing = -1 && facing = -1
value = 6025

[State 6085, 4]
type = ChangeState
triggerall = AnimTime = 0
trigger1 =root,facing = 1 && facing = -1
trigger2 =root,facing = -1 && facing = 1
value = 6026

;============================================================================
;修羅・羅刹チェンジの時
;---------------------------------------------------------------------------
; パピー消える
[Statedef 6090]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 6071                      ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 6090, 1]
type = ChangeState
triggerall = root, AnimElem = 3
trigger1 = root, stateno = 2920
value = 6093
ctrl = 0

[State 6090, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 6091
ctrl = 0

;---------------------------------------------------------------------------
; パピーちょっと待つ
[Statedef 6091]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 34463                     ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 6091, 1]
type = ChangeState
triggerall = root, AnimElem = 3
trigger1 = root, stateno = 2920
value = 6093
ctrl = 0

[State 6091, 2]
type = ChangeState
trigger1 = Time = 20
value = 6092
ctrl = 0

;---------------------------------------------------------------------------
; パピー消えたまま
[Statedef 6092]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= I                     ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 34463                     ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 6092, 1]
type = ChangeState
triggerall = root, AnimElem = 3
trigger1 = root, stateno = 2920
value = 6093
ctrl = 0

[State 6092, 2]
type = ChangeState
trigger1 = Time = 10
value = 6092
ctrl = 0

;---------------------------------------------------------------------------
; パピー復活
[Statedef 6093]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                     ;Move-type: A-attack, I-idle, H-gethit
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 6092                      ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 6093, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 6000

