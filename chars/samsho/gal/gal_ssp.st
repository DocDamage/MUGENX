;===========================================================================
;KEZ
;===========================================================================
;state3000-3399
;---------------------------------------------------------------------------
;C
;---------------------------------------------------------------------------
;pb_spesial
[Statedef 3000]
type = S ;@@@@@@@@@@@ʏ
movetype= A ;@@@@@@@@@U
physics = S ;@@@@@@@@@@@ʏ
poweradd= 0 ;@@@@@@@@p[1000炷
juggle  = 3
ctrl = 0
velset = 0
anim = 1000 ;@@@@@@@@@@[Action 1000] Ăяoiair t@C̔g[Vj

[State 3000, 1]
type = SuperPause
trigger1 = AnimElem = 1
pos = 5, -51
anim = S10010

[State 3000, 2]
type = PlaySnd 
trigger1 = Time = 0 
value = 4,6 

[State 3000, 3]
type = PlaySnd ;@@@@@@@@炷
trigger1 = Time = 28 ;@@@Aj[V5ڂ\ꂽ
value = 4,7 ;@@@@@@@@@@@sndt@C 3,0 ɓo^Ă

[State 3000, 4]
type = Projectile ;@@@@@@@@˕
trigger1 = AnimElem = 10
trigger2 = AnimElem = 12
trigger3 = AnimElem = 14 ;@@@Aj[V10.12.14ڂ\ꂽ
projanim = 1010 ;@@@@@@@@˕̃Aj[V̎wi[Action 1010]j
projhitanim = 1011 ;@@@@@@@˕̃Aj[V̎w
offset = 50, -50 ;@@@@@@@@@̎猩˕̎ʒȕʒu
velocity = 5, 0 ;@@@@@@@@@˕̑x
attr = S, HP ;@@@@@@@@@@@U̓uʏAKEZ˕v
damage = 80,30 ;@@@@@@@@_[W̐ݒiqbg36AK[h4j
animtype = Medium ;@@@@@@@qbg̑̂Aj[V̋w
pausetime = 10,10 ;@@@@@@@@@qbg̍dԁi0A9j
;sparkno = 0,1 ;@@@@@@@@@@qbgGtFNgiȗ̏ꍇ̓fBtHgj
sparkxy = 10, 0 ;@@@@@@@@@qbg̃GtFNg\ʒu
hitsound = s5,2 ;@@@@@@@@@qbǧʉ
guardflag = MA ;@@@@@@@@@@LN^[̃K[hԎw
guardsound = s6,1 ;@@@@@@@@@K[hꂽ̌ʉ
ground.type = Low ;@@@@@@@@肪U󂯂̏ԁinɂƂj
ground.slidetime = 14 ;@@@@@@̌ジ莞
ground.hittime = 16 ;@@@@@@@qbgԂێ鎞
ground.velocity = -8 ;@@@@@@@肪U󂯂ɗ^鏉x
air.animtype = Back ;@@@@@@@肪U󂯂̏ԁi󒆂ɂƂj
air.velocity = -2.5,-5 ;@@@@@@@肪U󂯂ɗ^鏉xi󒆂Łj
air.juggle = 3 ;@@@@@@@@@@@@WO|Cg

[State 3000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;===========================================================================
;p
;---------------------------------------------------------------------------
;CgjOXgCN
;qbg
[Statedef 3100]
type = S
movetype = A
physics = S
juggle = 4
poweradd= 0 
velset = 0,0,0
anim = 1800
ctrl = 0

[State 3100, sp]
type = SuperPause
trigger1 = time = 0
pos = 5, -51
anim = S10010

[State 3100, env]
type = bgpalfx 
trigger1 = time = 0 
time = 30
add = -80,-80,-80

[State 3100, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 1,2 

[State 3100, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 34
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

[State 3100, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 3100, 2]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 3100, 4]
type = MakeDust
trigger1 = Time = 1
pos = 0, 0
spacing = 1

[State 3100, 5]
type = MakeDust
trigger1 = AnimElem = 3, >= 0
pos = 0, 0


[State 3100, 6]
type = HitDef
trigger1 = time = 0
attr = S, HT
damage = 80
hitflag = HLA
guardflag = HLA
animtype = Back
priority = 2
numhits = 1
sparkno = S10007
guard.sparkno = S10003
sparkxy = -10,-50
hitsound   = s6,1
guardsound = s6,0
p2facing = 1
p1stateno = 3101
p2stateno = 3121
fall = 1
hit.recover = 0
fall.recover = 0
down.recover = 0
down.hittime = 65
down.bounce = 0
kill = 0

[State 3100, 7]
type = ChangeState
trigger1 = MoveGuarded = 4
value = 105

[State 3100, 7]
type = ChangeState
trigger1 = Time > 26
value = 101

;--------------------------------------------------------------------------
;CgjOXgCN_obNV
[Statedef 3101]
type = A
movetype = A
physics = N
juggle = 0
velset = 0,0,0
anim = 1801
ctrl = 0

[State 3101, env]
type = bgpalfx 
trigger1 = time = 1 
time = 240
add = -80,-80,-80

[State 3101, snd]
type = PlaySnd 
trigger1 = Time = 0 
value = 4,12 

[State 3101, 1]
type = VelSet
trigger1 = Time = 0
y = -7

[State 3101, 2]
type = VelAdd
trigger1 = Time < 15
y = .45

[State 3101, 3]
type = VelSet
trigger1 = Time = 15
y = 0

[State 3101, 4]
type = VelAdd
trigger1 = Time >= 15
y = .45

[State 3101, 5]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = vel Y > 0
value = 3102
ctrl = 0 

;---------------------------------------------------------------------------
;CgjOXgCN_
[Statedef 3102]
type = S 
movetype= A 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 3101

[State 3102, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 3102,2]
type = PosSet
trigger1 = time = 0
y = 0

[State 3102, 3]
type = turn
trigger1 = time = 1

[State 3102, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3103
ctrl = 0

;---------------------------------------------------------------------------
;CgjOXgCN_Ƒ҂
[Statedef 3103]
type = S 
movetype= A 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 34463

[State 3103, 4]
type = ChangeState
trigger1 = Time = 1
value = 3104
ctrl = 0

;---------------------------------------------------------------------------
;CgjOXgCN_[vړ
[Statedef 3104]
type = A 
movetype= A 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 34463

[State 3104, 1]
type = VelSet
trigger1 = Time = 0
x = 30
y = 0

[State 3104, 2]
type = ChangeState
trigger1 = P2StateNo = 3122
trigger1 = FrontEdgeBodyDist <= 10
value = 3105

[State 3104, 3]
type = ChangeState
trigger1 = P2StateNo = 3122
trigger1 = p2BodyDist X <= -50
value = 3105

[State 3104, 4]
type = ChangeState
trigger1 = time = 100
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;CgjOXgCN_[vҋ@
[Statedef 3105]
type = A 
movetype= A 
physics = N 
poweradd= 0 
ctrl = 0
velset = -2.0,0
anim = 34463

[State 3105, 1]
type = ChangeState
trigger1 = p2Dist y <= 20
value = 3106

;---------------------------------------------------------------------------
;CgjOXgCN_o
[Statedef 3106]
type = S 
movetype= A 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 3102

[State 3106, turn]
type = turn
trigger1 = time = 0

[State 3106, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3107
ctrl = 0

;---------------------------------------------------------------------------
; R
[Statedef 3107]
type    = S
movetype= A
physics = S
juggle  = 3
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 3106

[State 3107, 1]
type = HitDef
trigger1 = AnimElem = 5
attr = S, HA
damage = 80
hitflag = MAFD
guardflag = L
sparkno = 0                     
sparkxy = -50,-50
hitsound   = s6,1
guardsound = s6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 10
ground.velocity = -6
air.velocity = -3.5,-9.8
fall.recover = 0
down.velocity = -4,0
down.hittime = 20
down.recover = 0
kill = 0

[State 3107, AfterImage]
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

[State 3107, 2]
type = PlaySnd
trigger1 = time = 8
value = 4, 13

[State 3107, 3]
type = varset
trigger1 = movehit = 1
persistent = 0
v = 20 
value = 1

[State 3107, 4]
type = ChangeState
trigger1 = var(20) = 0
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 3107, 4]
type = ChangeState
trigger1 = var(20) = 1
trigger1 = AnimTime = 0
value = 3108
ctrl = 0

;---------------------------------------------------------------------------
;CgjOXgCN_
[Statedef 3108]
type = S 
movetype= A 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 3101

[State 3108, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3109
ctrl = 0

;---------------------------------------------------------------------------
;CgjOXgCN_Ƒ҂
[Statedef 3109]
type = S 
movetype= A 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 34463

[State 3109, 1]
type = ChangeState
trigger1 = Time = 1
value = 3110
ctrl = 0

;---------------------------------------------------------------------------
;CgjOXgCN_[vړ
[Statedef 3110]
type = A 
movetype= A 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 34463

[State 3110, 1]
type = PosSet
trigger1 = Time = 0
y = -175;-155

[State 3110, 2]
type = VelSet
trigger1 = Time = 0
x = 20
y = 0

[State 3110, 3]
type = ChangeState
trigger1 = p2Dist X < 0
value = 3111

[State 3110, 4]
type = ChangeState
trigger1 = time = 100
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;CgjOXgCN_o
[Statedef 3111]
type = A 
movetype= A 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 3102

[State 3111, 1]
type = varset
trigger1 = Time = 0
v = 21
value = 1

[State 3111, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 3112
ctrl = 0

;---------------------------------------------------------------------------
;CgjOXgCN_
[Statedef 3112]
type = A 
movetype= A 
physics = N 
juggle  = 2
poweradd= 0 
ctrl = 0
velset = 0
anim = 3112

[State 3112, 1]
type = HitDef
trigger1 = AnimElem =1
trigger2 = AnimElem =2
trigger3 = AnimElem =3
trigger4 = AnimElem =4
trigger5 = AnimElem =5
trigger6 = AnimElem =6
trigger7 = AnimElem =7
trigger8 = AnimElem =8
trigger9 = AnimElem =9
trigger10 = AnimElem =10
trigger11 = AnimElem =11
trigger12 = AnimElem =12
attr = A, HA
getpower = 0
givepower = 0
guardflag = HA
priority = 3
numhits = 0
pausetime = 7,8
sparkno = 10                   ;Spark image group and no (Def: set above)
sparkxy = -50,-50
p1stateno = 3113
p2stateno = 3125
hitsound   = s5,0
guardsound = s6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3

[State 3112, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;CgjOXgCN_ƉB
[Statedef 3113]
type = A 
movetype= A 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 3112

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

[State 3113, 1]
type = ChangeState
trigger1 = Time = 16
value = 3114
ctrl = 0

;--------------------------------------------------------------------------
;CgjOXgCN_XgCNփbYL
[Statedef 3114]
type = A
movetype = A
physics = N
juggle = 0
velset = 0,0,0
anim = 1703
ctrl = 0

[State 3114, 2]
type = VelSet
trigger1 = Time = 1
y = 4

[State 3114, ] ;Acceleration
type = VelAdd
trigger1 = Time >= 0
y = .8

[State 3114, AfterImage]
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

[State 3114, 3]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 3115
ctrl = 0

;--------------------------------------------------------------------------
;XgCNփbYn
[Statedef 3115]
type = A
movetype = H
physics = N
anim = 1704
velset = 0,0,0

[State 3115, hit]
type = hitadd 
trigger1 = Time = 0 
value = 1

[State 3115, 1]
type = PlaySnd 
trigger1 = Time = 2 
value = 6,2 

[State 3115, 2]
type = PlaySnd 
trigger1 = Time = 2
value = 4,14

[State 3115,3]
type = EnvShake
trigger1 = time = 0
time = 40

[State 3115, ] 
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

[State 3115, ] 
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

[State 3115, ] 
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

[State 3115, ] 
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

[State 3115, ] 
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

[State 3115,4]
type = PosSet
trigger1 = time = 0
y = 0

[State 3115, push]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 3115, 5]
type = TargetBind
trigger1 = time = 0
pos = 5,15

[State 3115, spr]
type = SprPriority
trigger1 = time = 0
value = 1

[State 3115,6]
type = TargetLifeAdd
trigger1 = time = 0
value = -150 

[State 3115,7]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 3115,8]
type = CtrlSet
trigger1 = time >= 36
value = 1

[State 3115,9]
type = ChangeState
trigger1 = time = 36
value = 3116
ctrl = 0

;Jump back after landing
[Statedef 3116]
type = A
movetype = I
physics = A
ctrl = 0
anim = 43

[State 3116, AfterImage]
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

[State 3116, 1]
type = VelAdd
trigger1 = time = 0
x = -3
y = -9

[State 3116,2]
type = NotHitBy
trigger1 = time >= 0
value = SCA

[State 3116,3]
type = ChangeAnim
trigger1 = AnimElem = 3
value = 46

[State 3116,4]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 0
ctrl = 1

[State 3116, 5]
type = ChangeState
trigger1 = time = 0
value = 51
ctrl = 1

;---------------------------------------------------------------------------
; 葤
[Statedef 3121]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0; 鑤ƓAɓxEĂ܂B

[State 3121, color]
type = PalFX
trigger1 = time = 2
time = 10
add = 0,80,180

[State 3121, 1]
type = Changeanim2 ; 鑤̃Aj[VĂяo܂B
trigger1 = Time = 0
value = 5010

[State 3121,2]
type = PosAdd
trigger1 = time = [0,10]
x = 1.2
y = -4

[State 3121,3]
type = PosAdd
trigger1 = time = [1,10]
x = .01
y = -.01

[State 3121, 4]
type = PosAdd
trigger1 = Time = 0
trigger1 = rootdist X < 5
x = 5

[State 3121, 5]
type = PosAdd
trigger1 = Time = 0
trigger1 = rootdist X < 10
x = 10

[State 3121, 6]
type = PosAdd
trigger1 = Time = 0
trigger1 = rootdist X < 15
x = 15

[State 3121, 7]
type = ChangeState
trigger1 = time =10
value = 3122
ctrl = 1 

;---------------------------------------------------------------------------
; 葤㏸
[Statedef 3122]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0; 鑤ƓAɓxEĂ܂B

[State 3122, color]
type = PalFX
trigger1 = time = 2
time = 80
add = 0,80,180

[State 3122, 1]
type = Changeanim2 ; 鑤̃Aj[VĂяo܂B
trigger1 = Time = 0
value = 5030

[State 3122, 2]
type = VelSet
trigger1 = Time = 1
x = 5.8
y = -4.0

[State 3122, 3]
type = VelAdd
trigger1 = Time > 1
x = .01
y = .18

[State 3122, 4]
type = VelAdd
trigger1 = Time > 20
trigger1 = FrontEdgeBodyDist <= 80
x = -.01

[State 3122, 5]
type = VelAdd
trigger1 = Time > 20
trigger1 = FrontEdgeBodyDist <= 80
y = .04

[State 3122, 6]
type = VelAdd
trigger1 = Time > 20
trigger1 = FrontEdgeBodyDist <= 40
y = .1

[State 3122, 7]
type = VelAdd
trigger1 = Time > 20
trigger1 = FrontEdgeBodyDist <= 15
x = -.02

[State 3122, 8]
type = VelAdd
trigger1 = Time > 0
trigger1 = Time < 20
trigger1 = FrontEdgeBodyDist <= 15
y = .06

[State 3122, 8]
type = VelAdd
trigger1 = Time > 20
trigger1 = FrontEdgeBodyDist <= 15
y = .125

[State 3122, 9]
type = VelAdd
trigger1 = Time > 20
trigger1 = p2dist x >= 30
trigger1 = p2dist y <= 10
x = .06
y =  -.2

[State 3122, 10]
type = posSet
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -30
y = -20

[State 3122, 11]
type = velAdd
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -30
y = -.01

[State 3122, 12]
type = SelfState
trigger1 = Time = 100
value = 5030
ctrl = 1

;---------------------------------------------------------------------------
; 葤_󒆑ҋ@
[Statedef 3124]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0

[State 3125, 0]
type = Posset
trigger1 = var(21) = 1
trigger1 = p2stateno = [5035,5050]
y = -155

;---------------------------------------------------------------------------
; 葤_󒆑ҋ@
[Statedef 3125]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0

[State 3125, color]
type = PalFX
trigger1 = time = 2
time = 10
add = 0,80,180

[State 3125, tb]
type = velset
trigger1 = Time = 0
x = 0
y = 0

[State 3125, 0]
type = Posset
trigger1 = Time = 1
y = -155

[State 3125, 2]
type = PosAdd
trigger1 = Time = 1
trigger1 = p2dist X > 5
x = 5

[State 3125, 3]
type = PosAdd
trigger1 = Time = 2
trigger1 = p2dist X > 10
x = 10

[State 3125, 4]
type = PosAdd
trigger1 = Time = 3
trigger1 = p2dist X > 15
x = 5

[State 3125, 8]
type = Changeanim2
trigger1 = Time = 0
value = 5010

[State 3125, 9]
type = PosAdd
trigger1 = time  = 23
y = -65

[State 3125, 10]
type = ChangeState
trigger1 = time  = 24
value = 3126
ctrl = 1 

;---------------------------------------------------------------------------
; 葤~
[Statedef 3126]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0; 鑤ƓAɓxEĂ܂B

;[State 3126, 2]
;type = Changeanim2 ; 鑤̃Aj[VĂяo܂B
;trigger1 = Time = [0,40]
;value = 5000

[State 3126, 3]
type = AngleDraw
trigger1 = Time >= 0

[State 3126, 4]
type = AngleSet
trigger1 = Time >= 0
value = 180

[State 3126, 5]
type = VelSet
trigger1 = Time = 1
y = 4

[State 3126, 6] ;Acceleration
type = VelAdd
trigger1 = Time >= 1
y = .8

[State 3126, 7] ;Hit ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -70
value = 3127

;---------------------------------------------------------------------------
; 葤n
[Statedef 3127]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0; 鑤ƓAɓxEĂ܂B

[State 3127, color]
type = PalFX
trigger1 = time = 0
time = 60
add = 0,80,180

[State 3127, 1]
type = velSet
trigger1 = Time = 0
y = 0

[State 3127, 2]
type = PosSet
trigger1 = Time = 0
y = -75

;[State 3127, 3]
;type = Changeanim2 ; 鑤̃Aj[VĂяo܂B
;trigger1 = Time = [0,40]
;value = 5012

[State 3127, 4]
type = AngleDraw
trigger1 = Time = [0,40]

[State 3127, 5]
type = AngleSet
trigger1 = Time = [0,40]
value = 180


[State 3127, 6] ;Hit ground
trigger1 = Time = 36
type = SelfState
value = 5100

;===========================================================================
;Cp
;---------------------------------------------------------------------------
;_uKXgCNփbY
;
[Statedef 3200]
type = S
movetype = A
physics = S
juggle = 0
poweradd= 0 
velset = 0,0,0
anim = 3101
ctrl = 0

[State 3200, sp]
type = SuperPause
trigger1 = time = 0
pos = 5, -51
anim = S10010

[State 3200, env]
type = bgpalfx 
trigger1 = time = 0 
time = 100
add = -80,-80,-80

[State 3200, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3201
ctrl = 0

;---------------------------------------------------------------------------
;[vړ
[Statedef 3201]
type = A 
movetype= A 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 34463

[State 3201, 1]
type = PosSet
trigger1 = Time = 0
y = -150

[State 3201, 2]
type = VelSet
trigger1 = Time = 0
x = 20
y = 0

[State 3201, 3]
type = ChangeState
trigger1 = p2BodyDist X <= 30
value = 3199

;---------------------------------------------------------------------------
;ҋ@Ƌ
[Statedef 3199]
type = A 
movetype= A 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 34463

;[State 3199, 1]
;type = VarSet
;trigger1 = Time = 0
;v = 25
;value = 1

[State 3199, 2]
type = ChangeState
trigger1 = Time = 10
value = 3202
ctrl = 0

;---------------------------------------------------------------------------
;o
[Statedef 3202]
type = A 
movetype= A 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 3102

[State 3202, 1] 
type = explod
trigger1 = time = 0
anim = 3102
persistent = 0
pos = 80, 0
postype = p1
facing = -1
ignorehitpause = 0
sprpriority = 6
bindtime = 40

[State 3202, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 3203
ctrl = 0

;---------------------------------------------------------------------------
;
[Statedef 3203]
type = A 
movetype= A 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 44

[State 3203, 1] 
type = explod
trigger1 = time = 0
anim = 3203
persistent = 0
pos = 80, 0
postype = p1
facing = -1
ignorehitpause = 0
sprpriority = 6
bindtime = 20

[State 3203, 1]
type = VelSet
trigger1 = Time = 1
y = 2

[State 3203, ] ;Acceleration
type = VelAdd
trigger1 = Time >= 0
y = .6

[State 3203, 2]
type = ChangeState
trigger1 = Time = 8
value = 3204
ctrl = 1

;---------------------------------------------------------------------------
;ёa
[Statedef 3204]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 0
ctrl = 0
anim = 620

[State 3204, 1]
type = HitDef
trigger1 = Time = 0
attr = A, HA
damage    = 0
getpower  = 0
givepower = 0
guardflag = HA
priority = 3
pausetime = 4,8
sparkno = s9003
guard.sparkno = S10008
sparkxy = -10,-30
p1stateno = 3205
p2stateno = 3250
hitsound   = s5,2
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 30
ground.velocity = 0
forcestand = 1
kill = 0

[State 3204, 2] 
type = explod
trigger1 = movehit = 1
anim = 10004
persistent = 0
pos = -10,-55
postype = p2
facing = -1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 21474836479

[State 3204, 2_guard_main] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10002
persistent = 0
pos = 10,-55
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 1,-2
accel = .02,.1

[State 3204, 2_guard_sub1] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = -10,-65
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = -1,-5
accel = .02,.3

[State 3204, 2_guard_sub2] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 5,-60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = .5,-4.5
accel = .02,.3

[State 3204, 2_guard_sub3] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 20,-55
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 2,-4
accel = .03,.3

[State 3204, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;LŒ
[Statedef 3205]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
anim = 0

;[State 3205, var]
;type = Varadd
;trigger1 = Time = 0
;v = 25
;value = -1

[State 3205, env]
type = bgpalfx 
trigger1 = time = 0 
time = 400
add = -80,-80,-80

[State 3205, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 3205, 2]
type = posSet
trigger1 = Time = 0
y = 0

[State 3205, 3]
type = ChangeState
trigger1 = Time = 3
value = 3206
ctrl = 0

;---------------------------------------------------------------------------
; a(ߋ)
[Statedef 3206]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 3206                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 3206, 0]
type = nothitby
trigger1 = time = 0
value = SCA.NA NP NT SA SP ST HA HP HT
time = 100

[State 3250, bind]
type = targetbind
trigger1 = Time = 0
time = 10
pos = 45,0

[State 3206, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, HA                     ;Attribute: Standing, Normal Attack
damage    = 0                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0                 ;Power to get on hit, on guard
givepower = 0                 ;Power to give opponent on hit, on guard
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s9002            ;Spark image group and no (Def: set above)
sparkxy = -10,-70                ;X-offset for the "hit spark" rel. to p2,
p1stateno = 3207
hitsound = s5,0                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 30             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
forcestand = 1
kill = 0

[State 3206, 2] 
type = explod
trigger1 = movehit = 1
anim = 10004
persistent = 0
pos = -10,-55
postype = p2
facing = -1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 21474836479

[State 3206, 3]
type = PlaySnd
trigger1 = Time = 1
value = 1, 0

[State 3206, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3207
ctrl = 0

;---------------------------------------------------------------------------
; a
[Statedef 3207]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 3207                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 3207, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, HA                     ;Attribute: Standing, Normal Attack
damage    = 0                  ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0                 ;Power to get on hit, on guard
givepower = 0                 ;Power to give opponent on hit, on guard
hitflag = MA                     ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
                                 ;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s9001		;Spark image group and no (Def: set above)
sparkxy = -10,-70                ;X-offset for the "hit spark" rel. to p2,
p1stateno = 3208
                                 ;Y-offset for the spark rel. to p1
hitsound = s5,0                   ;Sound to play on hit
guardsound = s6,0                 ;Sound to play on guard
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 30             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
kill = 0

[State 3207, 2] 
type = explod
trigger1 = movehit = 1
anim = 10005
persistent = 0
pos = -10,-55
postype = p2
facing = -1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 21474836479

[State 3207, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 3208
ctrl = 0

;---------------------------------------------------------------------------
; a(ߋ)
[Statedef 3208]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 3208

[State 3208, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, HA
animtype  = Medium
damage    = 0
guardflag = MA
;hitflag = MA                    ;Flags of conditions that move can hit
pausetime = 11,11
sparkno = S9002
sparkxy = -10,-65
p1stateno = 3209
hitsound   = s5,1
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 30
ground.velocity = 0
kill = 0

[State 3208, 2] 
type = explod
trigger1 = movehit = 1
anim = 10004
persistent = 0
pos = -10,-55
postype = p2
facing = -1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 21474836479

[State 3208, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 3209
ctrl = 1

;---------------------------------------------------------------------------
;a
[Statedef 3209]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 0
ctrl = 0
anim = 3209

[State 3209, 1]
type = HitDef
trigger1 = Time = 1
attr = C, HA
damage    = 0
animtype  = Hard
getpower  = 0
givepower = 0
hitflag = MA
;guardflag = L
pausetime = 10,12
sparkno = s9002                  ;Spark image group and no (Def: set above)
sparkxy = -2,-10
p1stateno = 3210
hitsound   = s5,2
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 40
ground.velocity = 0
kill = 0

[State 3209, 2] 
type = explod
trigger1 = movehit = 1
anim = 10005
persistent = 0
pos = -10,-15
postype = p2
facing = -1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 21474836479

[State 3209, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 3210
value = 0

;---------------------------------------------------------------------------
;ёa
[Statedef 3210]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 0
ctrl = 0
anim = 3210

[State 3210, 1]
type = VelSet
trigger1 = Time = 0
x = -.2
y = -4

[State 3210, 2]
type = VelAdd
trigger1 = Time = 0
y = .02

[State 3210, 3]
type = HitDef
trigger1 = Time = 0
attr = A, HA
damage    = 0
getpower  = 0
givepower = 0
guardflag = HAD
priority = 3
pausetime = 9,10
sparkno = s9003                 ;Spark image group and no (Def: set above)
sparkxy = -10,-51
p1stateno = 3211
hitsound   = s5,2
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 30
ground.velocity = 0
kill = 0

[State 3210, 2] 
type = explod
trigger1 = movehit = 1
anim = 10004
persistent = 0
pos = -10,-35
postype = p2
facing = -1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 21474836479

[State 3210, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3211
ctrl = 0

;---------------------------------------------------------------------------
;ђa
[Statedef 3211]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 0
ctrl = 0
anim = 3211

[State 3211, 1]
type = HitDef
trigger1 = Time = 0
attr = A, HA
damage    = 0
getpower  = 0
givepower = 0
guardflag = HA
priority = 3
pausetime = 9,10
sparkno = s9001                ;Spark image group and no (Def: set above)
sparkxy = -10,-51
p1stateno = 3212
hitsound   = s5,1
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 30
ground.velocity = 0
kill = 0

[State 3211, 2] 
type = explod
trigger1 = movehit = 1
anim = 10005
persistent = 0
pos = -10,-35
postype = p2
facing = -1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 21474836479

[State 3211, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 3212
ctrl = 1

;---------------------------------------------------------------------------
; a(ߋ)
[Statedef 3212]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 3212

[State 3212, 0]
type = nothitby
trigger1 = time = 0
value = SCA.NA NP NT SA SP ST HA HP HT
time = 100

[State 3212, 1]
type = PosSet
trigger1 = time = 0
y = 0

[State 3212, 2]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 3212, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = S, HA
animtype  = Medium
damage    = 0
guardflag = MA
hitflag = MAF                    ;Flags of conditions that move can hit
pausetime = 11,11
sparkno = S9002
sparkxy = -10,-65
hitsound   = s5,1
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 30
ground.velocity = 0
kill = 0

[State 3212, 4] 
type = explod
trigger1 = movehit = 1
anim = 10004
persistent = 0
pos = -10,-35
postype = p2
facing = -1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 21474836479

[State 3212, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 3213
ctrl = 1

;---------------------------------------------------------------------------
;a
[Statedef 3213]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 0
ctrl = 0
anim = 3213

[State 3213, 1]
type = VelSet
trigger1 = Time = 0
x = -1

[State 3213, 2]
type = HitDef
trigger1 = Time = 1
attr = C, HA
damage    = 0
animtype  = Hard
getpower  = 0
givepower = 0
hitflag = MAF
guardflag = L
pausetime = 10,12
sparkno = s9002                  ;Spark image group and no (Def: set above)
sparkxy = -2,-10
p1stateno = 3214
hitsound   = s5,2
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 40
ground.velocity = 0
kill = 0

[State 3213, 3] 
type = explod
trigger1 = movehit = 1
anim = 10005
persistent = 0
pos = -10,-15
postype = p2
facing = -1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 21474836479

[State 3213, 43]
type = ChangeState
trigger1 = AnimTime = 0
value = 3214
ctrl = 0

;---------------------------------------------------------------------------
;ёa
[Statedef 3214]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 0
ctrl = 0
anim = 3214

[State 3214, 1]
type = VelSet
trigger1 = Time = 0
x = -.2
y = -4

[State 3214, 2]
type = VelAdd
trigger1 = Time = 0
y = .01

[State 3214, 3]
type = HitDef
trigger1 = time = 0
attr = A, HA
damage    = 0
getpower  = 0
givepower = 0
guardflag = HAD
priority = 3
pausetime = 9,10
sparkno = s9003                 ;Spark image group and no (Def: set above)
sparkxy = -10,-51
p1stateno = 3215
hitsound   = s5,2
guardsound = s6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 80
ground.velocity = 0
kill = 0

[State 3214, 4] 
type = explod
trigger1 = movehit = 1
anim = 10004
persistent = 0
pos = -10,-35
postype = p2
facing = -1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 21474836479

[State 3214, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;Xp[N
[Statedef 3215]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
anim = 3215

[State 3215, 0]
type = nothitby
trigger1 = time = 0
value = SCA.NA NP NT SA SP ST HA HP HT
time = 100

[State 3215, pos]
type = PosSet
trigger1 = time = 0
y = 0

[State 3215, vel]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 3215, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3216
ctrl = 0

;---------------------------------------------------------------------------
;ivY}t@N^[
[Statedef 3216]
type = S ;@@@@@@@@@@@ʏ
movetype= A ;@@@@@@@@@U
physics = S ;@@@@@@@@@@@ʏ
poweradd= 0 ;@@@@@@@@p[ 60ǉ
ctrl = 0
velset = 0
anim = 3216 ;@@@@@@@@@@

[State 3216, color]
type = PalFX
trigger1 = time = 2
time = 30
add = 0,80,180

[State 3216, 1]
type = HitDef
trigger1 = AnimElem = 8
attr = SC, HA                     ;Attribute: Standing, Normal Attack
damage    = 0                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,0                 ;Power to get on hit, on guard
                                 ;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 0,0                 ;Power to give opponent on hit, on guard
                                 ;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
                                 ;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = 3                   ;Spark image group and no (Def: set above)
sparkxy = -10,-30                ;X-offset for the "hit spark" rel. to p2,
                                 ;Y-offset for the spark rel. to p1
hitsound = s6,1                   ;Sound to play on hit
guardsound = s4,0                 ;Sound to play on guard
ground.type = Low                ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 30             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
kill = 0
palfx.time = 25
palfx.add = 0,80,180
palfx.sinadd = 52,24,20,20
palfx.invertall = 1
palfx.color = 0

[State 3216, 2] 
type = explod
trigger1 = movehit = 1
anim = 1011
persistent = 0
pos = 10,-30
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 3216, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 3220
ctrl = 0

;--------------------------------------------------------------------------
;XgCNփbY_qbg
[Statedef 3220]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0,0
anim = 3220
ctrl = 0

[State 3220, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, HT
hitflag = M-
animtype = Back
priority = 2
sparkno = -1
p2facing = 1
p1stateno = 3221
p2stateno = 3230
fall = 1
numhit = 0
hit.recover = 0
fall.recover = 0
down.recover = 0
down.hittime = 65
down.bounce = 0

[State 3220, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------
;XgCNփbYL㏸O
[Statedef 3221]
type = S
movetype = A
physics = S
juggle = 0
velset = 0,0,0
anim = 1701
ctrl = 0

[State 3221, 2]
type = PosAdd
trigger1 = Time = 0
trigger1 = p2dist X > 5
x = 5

[State 3221, 3]
type = PosAdd
trigger1 = Time = 0
trigger1 = p2dist X > 10
x = 10

[State 3221, 4]
type = PosAdd
trigger1 = Time = 0
trigger1 = p2dist X > 15
x = 5

[State 3221, 5]
type = PosAdd
trigger1 = Time = 0
trigger1 = p2dist X > 20
x = 10

[State 3221, 6]
type = PosAdd
trigger1 = Time = 0
trigger1 = p2dist X > 20
x = 10

[State 3221, 7]
type = PosAdd
trigger1 = Time = 0
trigger1 = p2dist X > 20
x = 10

[State 3221, 8]
type = ChangeState
trigger1 = Time = 4
value = 3222
ctrl = 0

;--------------------------------------------------------------------------
;XgCNփbYL㏸
[Statedef 3222]
type = A
movetype = A
physics = N
juggle = 0
velset = 0,0,0
anim = 1702
ctrl = 0

[State 3222, 1]
type = PlaySnd 
trigger1 = Time = 0 
value = 4,11 

[State 3222, 2]
type = VelSet
trigger1 = Time = 1
y = -18.1

[State 3222, ]
type = VelAdd
trigger1 = Time >= 1
y = .25

[State 3222, 3]
type = PosSet
trigger1 = Time = 60
y = -400

[State 3222, 4]
type = ChangeState
trigger1 = Time = 61
value = 3223
ctrl = 0

;--------------------------------------------------------------------------
;XgCNփbYL
[Statedef 3223]
type = A
movetype = A
physics = N
juggle = 0
velset = 0,0,0
anim = 1703
ctrl = 0

[State 3223, 2]
type = VelSet
trigger1 = Time = 1
y = 7

[State 3223, ] ;Acceleration
type = VelAdd
trigger1 = Time >= 0
y = .45

[State 3223, 3]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 3224
ctrl = 0

;--------------------------------------------------------------------------
;XgCNփbYn
[Statedef 3224]
type = A
movetype = A
physics = N
anim = 1704
velset = 0,0,0

[State 3224, hit]
type = hitadd 
trigger1 = Time = 0 
value = 1

[State 3224, 1]
type = PlaySnd 
trigger1 = Time = 0 
value = 6,2 

[State 3224, 2]
type = PlaySnd 
trigger1 = Time = 0
value = 4,14

[State 3224,3]
type = EnvShake
trigger1 = time = 0
time = 20

[State 3224, spsnd01]
type = PlaySnd 
trigger1 = Time = 5
value = 8,0 

[State 3224, ] 
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

[State 3224, ] 
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

[State 3224, ] 
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

[State 3224, ] 
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

[State 3224, ] 
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

[State 3224,4]
type = PosSet
trigger1 = time = 0
y = 0

[State 3224, push]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 3224, 5]
type = TargetBind
trigger1 = time = 0
pos = 5,15

[State 3224, spr]
type = SprPriority
trigger1 = time = 0
value = 1

[State 3224,6]
type = TargetLifeAdd
trigger1 = time = 0
value = -360 

[State 3224,7]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 3224,8]
type = CtrlSet
trigger1 = time >= 36
value = 1

[State 3224,9]
type = ChangeState
trigger1 = time = 24
value = 3225
ctrl = 0

;Jump back after landing
[Statedef 3225]
type = A
movetype = I
physics = A
ctrl = 0
anim = 43

[State 3225, 1]
type = VelAdd
trigger1 = time = 0
x = -3
y = -9

[State 3225, 4]
type = ChangeState
trigger1 = time = 0
value = 51

[State 3225,2]
type = NotHitBy
trigger1 = time >= 0
value = SCA

[State 3225,2a]
type = ChangeAnim
trigger1 = AnimElem = 3
value = 46

[State 3225,3]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; 葤(z)
[Statedef 3230]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0

[State 3230, 1]
type = Changeanim2
trigger1 = Time = 0
value = 5000

[State 3230, 2]
type = ChangeState
trigger1 = Time = 4
value = 3231
ctrl = 0 

;---------------------------------------------------------------------------
; 葤㏸
[Statedef 3231]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0; 鑤ƓAɓxEĂ܂B

[State 3206, 0]
type = nothitby
trigger1 = time = 0
value = SCA.NA NP NT SA SP ST HA HP HT
time = 100

[State 3231, 1]
type = Changeanim2 ; 鑤̃Aj[VĂяo܂B
trigger1 = Time = 0
value = 5000

[State 3231, 2]
type = VelSet
trigger1 = Time = 1
y = -18.1

[State 3231, ]
type = VelAdd
trigger1 = Time >= 1
y = .25

[State 3231, 3]
type = PosSet
trigger1 = Time = 60
y = -475

[State 3231, 4]
type = ChangeState
trigger1 = Time = 61
value = 3232
ctrl = 0

;---------------------------------------------------------------------------
; 葤~
[Statedef 3232]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0; 鑤ƓAɓxEĂ܂B

;[State 3232, 1]
;type = Changeanim2 ; 鑤̃Aj[VĂяo܂B
;trigger1 = Time = [0,40]
;value = 5000

[State 3232, a]
type = AngleDraw
trigger1 = Time = [0,40]

[State 3232, b]
type = AngleSet
trigger1 = Time = [0,40]
value = 180

[State 3232, 2]
type = VelSet
trigger1 = Time = 1
y = 7

[State 3232, ] ;Acceleration
type = VelAdd
trigger1 = Time >= 0
y = .45

[State 3232, 3] ;Hit ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -70
value = 3233

;---------------------------------------------------------------------------
; 葤n
[Statedef 3233]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0; 鑤ƓAɓxEĂ܂B

[State 3233, color]
type = PalFX
trigger1 = time = 0
time = 60
add = 0,80,180

[State 3233, 1]
type = PosSet
trigger1 = Time = 0
y = -75

;[State 3233, 2]
;type = Changeanim2 ; 鑤̃Aj[VĂяo܂B
;trigger1 = Time = [0,40]
;value = 5012

[State 3233, a]
type = AngleDraw
trigger1 = Time = [0,40]

[State 3233, b]
type = AngleSet
trigger1 = Time = [0,40]
value = 180


[State 3233, 3] ;Hit ground
trigger1 = Time = 24
type = SelfState
value = 5100

;---------------------------------------------------------------------------
;Œ
[Statedef 3250]
type = S 
movetype= H 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0

;[State 3250, 1]
;type = Changeanim2
;trigger1 = Time = 0
;value = 5000

[State 3250, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3250, 3]
type = velSet
trigger1 = Time = 0
x = 0
y = 0

[State 3250, 4]
type = PosAdd
trigger1 = Time = 0
trigger1 = p2dist X > 70
x = 10

[State 3250, 5]
type = PosAdd
trigger1 = Time = 1
trigger1 = p2dist X > 60
x = 10

[State 3250, 6]
type = PosAdd
trigger1 = Time = 2
trigger1 = p2dist X > 50
x = 10

[State 3250, 6]
type = PosAdd
trigger1 = Time = 3
trigger1 = p2dist X > 40
x = 10

[State 3250, 6]
type = Posset
trigger1 = Time = 3
trigger1 = p2dist X < 28
x = 29

[State 3250, 8]
type = SelfState
trigger1 = AnimTime = 0
value = 5000
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;_uKXgCNփbY()
;
[Statedef 3300]
type = S
movetype = A
physics = S
juggle = 0
poweradd= -1000 
velset = 0,0,0
anim = 3101
ctrl = 0

[State 3300, sp]
type = SuperPause
trigger1 = time = 0
pos = 5, -51
anim = S10010

[State 3300, env]
type = bgpalfx 
trigger1 = time = 0 
time = 100
add = -80,-80,-80

[State 3300, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3301
ctrl = 0

;---------------------------------------------------------------------------
;[vړ
[Statedef 3301]
type = A 
movetype= A 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 34463

[State 3301, 1]
type = PosSet
trigger1 = Time = 0
y = -160

[State 3301, 2]
type = VelSet
trigger1 = Time = 0
x = 20
y = 0

[State 3301, 3]
type = ChangeState
trigger1 = p2Dist X <= -30
value = 3302

[State 3301, 4]
type = ChangeState
trigger1 = FrontEdgeDist <= 1
value = 3302

[State 3301, 5]
type = ChangeState
trigger1 = p2Dist X <= 1 
trigger1 = FrontEdgeDist <= 2
value = 3202
;---------------------------------------------------------------------------
;ҋ@
[Statedef 3302]
type = A 
movetype= A 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 34463


[State 3302, 2]
type = ChangeState
trigger1 = Time = 10
value = 3303
ctrl = 0

;---------------------------------------------------------------------------
;o
[Statedef 3303]
type = A 
movetype= A 
physics = N 
poweradd= 0 
ctrl = 0
velset = 0
anim = 3102

[State 3303, 1]
type = turn
trigger1 = time = 0

[State 3303, 2] 
type = explod
trigger1 = time = 0
anim = 3102
persistent = 0
pos = 80, 0
postype = p1
facing = -1
ignorehitpause = 0
sprpriority = 6
bindtime = 40

[State 3303, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 3203
ctrl = 0


;===========================================================================
;{蔚
;---------------------------------------------------------------------------
[Statedef 3500]
type    = s
movetype= A
physics = s
juggle  = 1
velset = 0,0
ctrl = 0
anim = 3500
poweradd = 0

[State 3500, 1]
type = HitDef
trigger1 = AnimElem >= 2
attr = SC, SA
damage    = 0
animtype = Hard
getpower = 0,0
givepower = 15,8
guardflag = L
hitflag = MAF
priority = 3, Hit
pausetime = 7,8
numhits = 1
numhits = 0
hitsound = 5,0
guardsound = s11,0
ground.type = High
ground.slidetime = 60
ground.hittime  = 60
ground.velocity = -6
airguard.velocity = -1.9,-.8
air.velocity = -1.3,-3
ignorehitpause = 1
PauseMoveTime = 21474836479

[State 3500, spsnd00]
type = PlaySnd 
trigger1 = Time = 1
value = 8,1 
ignorehitpause = 1
SuperMoveTime = 999999999
pausemovetime = 999999999

[State 3500, 1]
type = SuperPause
trigger1 = time = 0
time = 130
movetime = 130
anim = -1
darken = -1
ignorehitpause = 1
SuperMoveTime = 999999999
pausemovetime = 999999999

[State 3500, 0]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
flag2 = noFG
ignorehitpause = 1
PauseMoveTime = 21474836479
SuperMoveTime = 999999999

[State 3500, var(25)]
type = varadd
trigger1 = var(25) = 0 || var(25) = 1
var(25) = ifelse(var(25)=0,2,1)
ignorehitpause = 1
SuperMoveTime = 999999999
pausemovetime = 999999999

[State 3500, 2]
type = BGPalfx
trigger1 = time = 0
time = 130
add = -144,-144,-144
ignorehitpause = 1
SuperMoveTime = 999999999
PauseMoveTime = 999999999

[State 3500, spsnd01]
type = PlaySnd 
trigger1 = Time = 70
trigger2 = Time = 88
value = 8,0 
ignorehitpause = 1
SuperMoveTime = 999999999
pausemovetime = 999999999

[State 3500, XbV] 
type = explod
trigger1 = time = 66
anim = 3501
persistent = 0
pos = -40, 18
postype = p1
ignorehitpause = 1
sprpriority = 6
bindtime = 1
SuperMoveTime = 999999999
pausemovetime = 999999999

[State 3500, g] 
type = explod
trigger1 = time = 72
anim = 3502
persistent = 0
pos = -30, 0
postype = p1
ignorehitpause = 1
sprpriority = -6
bindtime = 1
SuperMoveTime = 999999999
pausemovetime = 999999999

[State 3500, Q[W1P] 
type = explod
trigger1 = time = 5
trigger1 = var(10) = 1
anim = 3510
persistent = 0
pos = var(16)-21, var(17)+2
postype = left
ignorehitpause = 1
sprpriority = 6
bindtime = 1
SuperMoveTime = 999999999
pausemovetime = 999999999

[State 3500, Q[W2P] 
type = explod
trigger1 = time = 5
trigger1 = var(10) = 0
anim = 3511
persistent = 0
pos = var(16)-21, var(17)+2
postype = right
ignorehitpause = 1
sprpriority = 6
bindtime = 1
SuperMoveTime = 999999999
pausemovetime = 999999999

[State 3500, W] 
type = explod
trigger1 = time = 5
anim = 3505
persistent = 0
pos = -10, -90
postype = p1
ignorehitpause = 1
sprpriority = 6
bindtime = 1
SuperMoveTime = 999999999
pausemovetime = 999999999

[State 3500, wiFωhelper]
type = Helper
trigger1 = Time = 128
persistent = 0
id = 3550
name = "BGcolor"
pos = 0,0
postype = P1
stateno = 3550
helpertype = normal
keyctrl = 0
facing = 1
supermove =1
ignorehitpause = 1
SuperMoveTime = 999999999
PauseMoveTime = 999999999

[State 3500, 10]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
SuperMoveTime = 999999999

;---------------------------------------------------------------------------
;wiFω
[Statedef 3550]
type    = S
movetype= I
anim = 34463
ctrl = 0

[State 3550, 0]
type = AssertSpecial
trigger1 = 1
flag = timerfreeze
ignorehitpause = 1
PauseMoveTime = 21474836479

[State 3550, 2]
type = BGPalfx
trigger1 = 1
time = 1
add = -144,-144,-144
ignorehitpause = 1
PauseMoveTime = 21474836479

[State 3550, 5]
type = DestroySelf
trigger1 = root,var(25) = 3
trigger2 = root,win = 1 || root,lose = 1
ignorehitpause = 1
PauseMoveTime = 21474836479


;===========================================================================
;M
;---------------------------------------------------------------------------
;M
[Statedef 4500]
type    = s                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = s                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 10,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 4500	                    ;Change animation (Def: no change)
poweradd = 0                   ;Power to add (Def: 0)

[State 4500, bgpal]
type = bgpalfx 
trigger1 = 1
time = 1
add = 255,255,255

[State 4500, 1]
type = Veladd
trigger1 = time = [1,30]
x = 0.8

[State 4500,Afterimage]
type = Afterimage
trigger1 = time = 0
trans = add
TimeGap = 2
FrameGap = 4
length = 30
time = 30
PalAdd = 40,40,0
ignorehitpause = 1
PauseMoveTime = 21474836479

[State 4500, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk
ignorehitpause = 1
PauseMoveTime = 21474836479

[State 4500, 3]
type = HitDef
trigger1 = time = 0
attr = S, HA                     ;Attribute: Standing, Normal Attack
damage = 0                   ;Damage that move inflicts
animtype = Hard                  ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0,0                 ;Power to get on hit, on guard
                                 ;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
givepower = 15,8                 ;Power to give opponent on hit, on guard
                                 ;(Def Hit: 0)  (Def Guard: 1/2 of hit power)
guardflag = H                    ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit
pausetime = 7,7
numhits = 1                      ;Number of hits to count as (Def: 1)
hitsound = 5,0                   ;Sound to play on hit
guardsound = 9,0                 ;Sound to play on guard
sparkxy = -10,-60
guard.sparkno = S9036 		 ;
ground.type = Low                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 0             ;Time that the victim slides back
ground.hittime  = 80             ;Time victim is in hit state
ground.velocity = 0             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -2,-7           ;X-velocity at which victim is pushed,
ignorehitpause = 1
PauseMoveTime = 21474836479

[State 4505, 0]
type = targetLifeAdd
trigger1 = movehit = 1
value = var(45)
ignorehitpause = 1
PauseMoveTime = 21474836479

[State 3015, 4]
type = targetstate
trigger1 = movehit = 1
value = 4510
ignorehitpause = 1
PauseMoveTime = 21474836479

[State 4500, 6]
type = ChangeState
trigger1 = movehit = 1
value = 4505
ignorehitpause = 1
PauseMoveTime = 21474836479

[State 4500, 4]
type = MakeDust
trigger1 = Time = 1
pos = 0, 0
spacing = 1
ignorehitpause = 1
PauseMoveTime = 21474836479

[State 4500, 5]
type = MakeDust
trigger1 = AnimElem = 3, >= 0
pos = 0, 0
ignorehitpause = 1
PauseMoveTime = 21474836479

[State 4500, 6]
type = ChangeState
trigger1 = Time > 35
value = 0
ctrl = 1
ignorehitpause = 1
PauseMoveTime = 21474836479

;---------------------------------------------------------------------------
;Mqbg1P̓
[Statedef 4505]
type    = s                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = s                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 4505	                    ;Change animation (Def: no change)
poweradd = 0                   ;Power to add (Def: 0)


[State 4505, nothitby]
type = nothitby
trigger1 = time = 0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 110

[State 4505,Afterimage]
type = Afterimage
trigger1 = time = 0
trans = add
TimeGap = 2
FrameGap = 4
time = 20
PalAdd = 160,160,0

[State 4505,Afterimagetime]
type = Afterimagetime
trigger1 = time = 0
time = 30

[State 4505, bgpal]
type = bgpalfx 
trigger1 = time = 0 
time = 120
add = 255,255,255

[State 4505, exp_BG] 
type = explod
trigger1 = time = 30
anim = 4510
pos = 0,0
postype = left
sprpriority = -10
bindtime = 45

[State 4505, exp_a] 
type = explod
trigger1 = time = 0
anim = 10005
pos = -10,-60
postype = p2
sprpriority = 6
bindtime = 1

[State 4505, exp_b] 
type = explod
trigger1 = time = 10
anim = 4600
pos = -150,-60
postype = p2
sprpriority = 6
bindtime = 1

[State 4505, exp_c] 
type = explod
trigger1 = time = 30
anim = 4610
pos = -10,-60
postype = p2
sprpriority = 6
bindtime = 1

[State 4505, exp1] 
type = explod
trigger1 = time = 70
anim = 9003
pos = -10,-60
postype = p2
sprpriority = 6
bindtime = 1

[State 4505, exp2] 
type = explod
trigger1 = time = 80
anim = 9003
pos = -10,-70
postype = p2
sprpriority = 6
bindtime = 1

[State 4505, exp3] 
type = explod
trigger1 = time = 85
anim = 9003
pos = -10,-80
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 4505, exp4] 
type = explod
trigger1 = time = 90
anim = 9003
pos = -10,-90
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 4505, exp5] 
type = explod
trigger1 = time = 95
anim = 9003
pos = -10,-100
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 4505, exp6] 
type = explod
trigger1 = time = 100
anim = 9003
pos = -10,-110
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 4505, exp7] 
type = explod
trigger1 = time = 100
anim = 9001
pos = -10,-100
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 4505, exp8] 
type = explod
trigger1 = time = 100
anim = 9002
pos = -10,-100
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1

[State 4505, Snd1]
type = PlaySnd
trigger1 = Time = 0
value = 4, 14

[State 4505, Snd2]
type = PlaySnd
trigger1 = Time = 70
value = 5, 2

[State 4505, Snd3]
type = PlaySnd
trigger1 = Time = 73
value = 5, 2

[State 4505, Snd4]
type = PlaySnd
trigger1 = Time = 76
value = 5, 2

[State 4505, Snd5]
type = PlaySnd
trigger1 = Time = 82
value = 5, 2

[State 4505, Snd6]
type = PlaySnd
trigger1 = Time = 85
value = 5, 2

[State 4505, Snd7]
type = PlaySnd
trigger1 = Time = 88
value = 5, 2

[State 4505, Snd8]
type = PlaySnd
trigger1 = Time = 91
value = 5, 2

[State 4505, Snd9]
type = PlaySnd
trigger1 = Time = 94
value = 5, 2

[State 4505, Snd10]
type = PlaySnd
trigger1 = Time = 97
value = 5, 2

[State 4505, 1]
type = VelSet
trigger1 = time = 0
x = 0

[State 4505, 2]
type = posadd
trigger1 = time = 1
x = 120

[State 4505, 3]
type = VelSet
trigger1 = time = 1
x = 8

[State 4505, 4]
type = changeState
trigger1 = Time = 120
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Mqbg2P̓
[Statedef 4510]
movetype= I
velset = 0,0
ctrl = 0

[State 4510, nothitby]
type = nothitby
trigger1 = time = 0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 100

[State 4510, 1]
type = Changeanim2
trigger1 = Time = 0
value = 5002

[State 4510, 2]
type = posset
trigger1 = statetype = A
trigger1 = Time = 0
y = -50

[State 4510, 3]
type = velset
trigger1 = Time = 0
x = 0
y = 0

[State 4510, 6]
type = SelfState
trigger1 = Time = 110
value = 5050
ctrl = 0
