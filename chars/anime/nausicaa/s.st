
;必殺技関連

;######################################################################
;メーヴェ強襲
;Shoohken (land on ground)
[Statedef 1002]
type    = S
movetype= A
physics = S
anim = 44
velset = 0,0

[State 1002, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1002, 2]
type = ChangeState
;trigger1 = animTime = 0
trigger1 = Time = 1

value = 0
ctrl = 1

;-------------------------------------------------------------------------
;Shoohken Y
[Statedef 1003]
type    = S
movetype= A
physics = N
juggle  = 1
poweradd= 140
velset = 0,0,0
ctrl = 0
anim = 1003

[state 1003, 0]
type = playsnd
trigger1 = Time = 0
value = 2,34

[State 1003, 1]
type = PlaySnd
trigger1 = Time = 0
value = S0,28

[State 1003, 2]
type = Velset
trigger1 = Time = 0
x = 6

[State 1003, 3]
type = VelMul
trigger1 = Time >= 0
x = 1 ;.93

[State 1003, 4]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = animelem = 4
trigger3 = animelem = 5
attr = S, SA
animtype  = Hard
damage    = 39,2
getpower  = 25
priority = 5
guardflag = MA
pausetime = 6,6
sparkno = 1
sparkxy = -5,-50
hitsound   = S0,2
guardsound = 6,0                 ;ガードしたときの効果音
ground.type = Low
ground.slidetime = 10
ground.hittime  = 5
ground.velocity = -3,-7
air.velocity = -3, -7

;givepower = 15
;hitflag = MAF
;fall = 1
;p2stateno = 1025
;air.fall = 1

[State 1003, 6]
type = ChangeState
trigger1 = Animtime = 0
value = 1004

[Statedef 1004]
type   = A
movetype = A
velset = 2.90,-10
anim = 1004

[State 1004, 0]
type = VelMul
trigger1 = Time >= 0
x = 1 ;.75

[State 1004, 1]
type = PlaySnd
trigger1 = Time = 1
value = S0,9

[State 1004, 2]
type = HitDef
trigger1 = time = 1
trigger2 = time = 2
getpower  = 0
;givepower = 30
priority  = 6
hitflag = MAF
attr = A, SA
animtype = Back
damage    = 40, 8
priority  = 5
guardflag = MA
pausetime = 6,6
sparkxy = -5,-50
sparkno = 2
hitsound = S0,2
guardsound = 6,0                 ;ガードしたときの効果音
ground.type = Low
ground.slidetime = 1
ground.hittime  = 1
ground.velocity = -4.3,-7
air.velocity = -4.3,-7
forcestand = 1
fall.animtype = Hard
fall = 1
air.fall = 1

[State 1004, 3]
type = Projectile
;trigger1 = animelem = 12
trigger1 = Time = 13
ProjAnim = 1005         ;Action id 1005 is Shinobu's fireball animation
ProjHitAnim = 1005      ;Action id when fireball hits
ProjRemAnim = 1005      ;Action id when fireball is deleted
;ProjPriority = 10
;ProjStageBound = 40
;ProjEdgeBound = 40
;ProjHeightBound = -240, 1
offset = 0, -56        ;Creation offset from player (x,y) 25
velocity = 6, -4       ;Speed fireball moves (x,y) (optional)
;remvelocity = 2.9, 0     ;Speed fireball moves when being removed (x,y) (opt)
projremovetime = 160
;velmul = 1.005, 1       ;Speed multiplier (opt)
accel = 0, 0            ;Acceleration (opt)
; HitDef part of projectile info
attr = S, SP
damage    = 91,4
animtype  = Hard
getpower  = 50
givepower = 30
guardflag = MA
pausetime = 0,12
;numhits = 2
sparkno = 3
sparkxy = 0, 0
hitsound   = S0,2
guardsound = 6,0                 ;ガードしたときの効果音
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -8
airguard.velocity = -3.5,-2.75
air.type = Low
air.velocity = -2.5,-5.5
air.juggle = 3


[State 1004, 4] ;Gravity
type = VelAdd
trigger1 = Time >= 0
x = -.061
y = .60

[State 1004, 5]
trigger1 = AnimTime = 0
type = ChangeAnim
value = 1002

[State 1004, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
type = ChangeState
value = 1005

;Shoohken (land on ground)
[Statedef 1005]
type    = S
movetype= A
physics = S
anim = 47
velset = 0,0

[State 1005, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1005, 2]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1



;######################################################################
;ピックルアタック
;------------------------------------------------------------
;Special_B y QCF+P
[Statedef 1020]
type    = S
movetype= A
physics = N
juggle  = 5
poweradd= 100
velset = 0,0
ctrl = 0
anim = 1020

[State 1020, 1]
type = velset
trigger1 = animelem = 2
x = 3

[State 1020, 2]
type = posset
trigger1 = time = 0
y = 0

[State 1020, 3]
type = velmul
trigger1 = animelem = 6,>=10
x = 0.80

[State 1020, 4]
type = explod
trigger1 = animelem = 6
id = 7020
removetime = -1
anim = 7020
pos = 68,-111
postype = P1
sprpriority = 2
ownpal = 1
bindtime = -1
supermove = 1

[State 1020, 5]
type = removeexplod
trigger1 = animelem = 7
id = 7020

[State 1020, 6]
type = MakeDust
trigger1 = animelem = 5, >=2
pos = -10,0
spacing = 3

[State 1020, 7]
type = PlaySnd
trigger1 = animelem = 2
value = 2, 25

[State 1020, 8]
type = PlaySnd
trigger1 = animelem = 5
value = s4, 17

[State 1020, 9]
type = PlaySnd
trigger1 = Time = 3
value = s6, 1

[State 1020, 10]
type = HitDef
trigger1 = animelem = 6
animtype  = hard
attr = S, SA
hitflag = MAFD
guardflag = HA
damage    = 55,12
getpower  = 100
givepower = 25
priority = 6
pausetime = 18,30
sparkxy = -30,-50
palfx.time = 6
palfx.add = 220, 130,10
hitsound = 5,0
guardsound = 6,0                 ;ガードしたときの効果音
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -4,0
fall = 0
fall.recover = 0

[State 1020, 11]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;Special_B x QCF+P
[Statedef 1021]
type    = S
movetype= A
physics = N
juggle  = 5
poweradd= 100
velset = 0,0
ctrl = 0
anim = 1021

[State 1021, 1]
type = velset
trigger1 = animelem = 2
x = 1.5

[State 1021, 2]
type = posset
trigger1 = time = 0
y = 0

[State 1021, 3]
type = velmul
trigger1 = animelem = 6,>=6
x = 0.80

[State 1021, 4]
type = explod
trigger1 = animelem = 6
id = 7020
removetime = -1
anim = 7020
pos = 68,-111
postype = P1
sprpriority = 2
ownpal = 1
bindtime = -1
supermove = 1

[State 1021, 5]
type = removeexplod
trigger1 = animelem = 7
id = 7020

[State 1021, 6]
type = MakeDust
trigger1 = animelem = 5, >=2
pos = -10,0
spacing = 3

[State 1021, 7]
type = PlaySnd
trigger1 = animelem = 2
value = 2, 24

[State 1021, 8]
type = PlaySnd
trigger1 = animelem = 5
value = s4, 17
volume = 80

[State 1021, 9]
type = PlaySnd
trigger1 = Time = 3
value = s6, 1

[State 1021, 10]
type = HitDef
trigger1 = animelem = 6
animtype  = hard
attr = S, SA
hitflag = MAFD
guardflag = HA
damage    = 57,12
getpower  = 100
givepower = 25
priority = 6
pausetime = 18,30
sparkxy = -30,-50
palfx.time = 6
palfx.add = 220, 130,10
hitsound = 5,0
guardsound = 6,0                 ;ガードしたときの効果音
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -4,0
air.velocity = -3,0
fall = 0
fall.recover = 0

[State 1021, 11]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;######################################################################
;ピックルアタック２段目
;------------------------------------------------------------
;Special_B y QCF+P
[Statedef 1022]
type    = S
movetype= A
physics = N
juggle  = 5
poweradd= 100
velset = 0,0
ctrl = 0
anim = 1022

[State 1022, 1]
type = velset
trigger1 = animelem = 2
x = 5

[State 1022, 2]
type = posset
trigger1 = time = 0
y = 0

[State 1022, 3]
type = velmul
trigger1 = animelem = 6,>=10
x = 0.80

[State 1022, 4]
type = explod
trigger1 = animelem = 6
id = 7020
removetime = -1
anim = 7020
pos = 68,-111
postype = P1
sprpriority = 2
ownpal = 1
bindtime = -1
supermove = 1

[State 1022, 5]
type = removeexplod
trigger1 = animelem = 7
id = 7020

[State 1022, 6]
type = MakeDust
trigger1 = animelem = 5, >=2
pos = -10,0
spacing = 3

[State 1022, 7]
type = PlaySnd
trigger1 = animelem = 2
value = 2, 24

[State 1022, 8]
type = PlaySnd
trigger1 = animelem = 5
value = s4, 17

[State 1022, 9]
type = PlaySnd
trigger1 = Time = 3
value = s6, 1

[State 1022, 10]
type = HitDef
trigger1 = animelem = 6
animtype  = hard
attr = S, SA
hitflag = MAFD
guardflag = HA
damage    = 73,12
getpower  = 100
givepower = 25
priority = 6
pausetime = 18,30
sparkxy = -30,-50
palfx.time = 6
palfx.add = 220, 130,10
hitsound   = 5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -4,0
fall = 0
fall.recover = 0

[State 1022, 11]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;Special_B x QCF+P
[Statedef 1023]
type    = S
movetype= A
physics = N
juggle  = 5
poweradd= 100
velset = 0,0
ctrl = 0
anim = 1023

[State 1023, 1]
type = velset
trigger1 = animelem = 2
x = 3.5

[State 1023, 2]
type = posset
trigger1 = time = 0
y = 0

[State 1023, 3]
type = velmul
trigger1 = animelem = 6,>=6
x = 0.80

[State 1023, 4]
type = explod
trigger1 = animelem = 6
id = 7020
removetime = -1
anim = 7020
pos = 68,-111
postype = P1
sprpriority = 2
ownpal = 1
bindtime = -1
supermove = 1

[State 1023, 5]
type = removeexplod
trigger1 = animelem = 7
id = 7020

[State 1023, 6]
type = MakeDust
trigger1 = animelem = 5, >=2
pos = -10,0
spacing = 3

[State 1023, 7]
type = PlaySnd
trigger1 = animelem = 2
value = 2, 25

[State 1023, 8]
type = PlaySnd
trigger1 = animelem = 5
value = s4, 17
volume = 80

[State 1023, 9]
type = PlaySnd
trigger1 = Time = 3
value = s6, 1

[State 1023, 10]
type = HitDef
trigger1 = animelem = 6
animtype  = hard
attr = S, SA
hitflag = MAFD
guardflag = HA
damage    = 75,12
getpower  = 100
givepower = 25
priority = 6
pausetime = 18,30
sparkxy = -30,-50
palfx.time = 6
palfx.add = 220, 130,10
hitsound   = 5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -4,0
air.velocity = -3,0
fall = 0
fall.recover = 0

[State 1021, 11]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;######################################################################
;ピックルアタック３段目
;------------------------------------------------------------
;Special_B y QCF+P
[Statedef 1024]
type    = S
movetype= A
physics = N
juggle  = 5
poweradd= 100
velset = 0,0
ctrl = 0
anim = 1024

[State 1024, 1]
type = velset
trigger1 = animelem = 3
x = 5

[State 1024, 2]
type = posset
trigger1 = time = 0
y = 0

[State 1024, 3]
type = velmul
trigger1 = animelem = 4
x = 0.80

[State 1024, 4]
type = explod
trigger1 = animelem = 6
id = 7020
removetime = -1
anim = 7020
pos = 68,-111
postype = P1
sprpriority = 2
ownpal = 1
bindtime = -1
supermove = 1

[State 1024, 5]
type = removeexplod
trigger1 = animelem = 7
id = 7020

[State 1024, 6]
type = MakeDust
trigger1 = animelem = 5, >=2
pos = -10,0
spacing = 3

[State 1024, 7]
type = PlaySnd
trigger1 = animelem = 2
value = 2, 26

[State 1024, 8]
type = PlaySnd
trigger1 = animelem = 5
value = s4, 17

[State 1024, 9]
type = PlaySnd
trigger1 = Time = 3
value = s6, 1

[State 1024, 10]
type = HitDef
trigger1 = animelem = 2
animtype  = hard
attr = S, SA
hitflag = MAFD
guardflag = HA
damage    = 78,22
getpower  = 100
givepower = 25
priority = 6
pausetime = 18,30
sparkxy = -10,-85
palfx.time = 6
palfx.add = 220, 130,10
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5,0
air.velocity = -4,0
fall = 0
fall.recover = 0

[State 1024, 11]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;######################################################################
;お願いミト
[Statedef 1200]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 320
velset = 0,0,0
anim = 1200 
ctrl = 0

[State -2, EX_-1]
type = Varadd
trigger1 = time = 1
v = 23
value = -1

;ナウシカカットイン奥へ
;[State 1200, 0]
;type = SprPriority;スプライトを描画する優先度
;trigger1 = Time = 0
;value = -5;大きい数値の方が優先度が高い（0が普通）

;ナウシカカットイン出現
[State 1200, 1]
type = explod
trigger1 = animelem = 1
vel = 3.2,0
accel = -0.15,0
;persistent = 0
;facing = -1
removetime = 150
anim = 9010
pos = -40,200
postype = left
sprpriority = -5
ownpal = 1
bindtime = 1
supermove = 1


[State 1200, Super A]
type = SuperPause
trigger1 = Time = 0
pos = 20, -35
anim = 31
time = 30
;movetime = 40

[State 1200, Super B]
type = PlaySnd
trigger1 = Time = 0
value = F20, 0 



[State 1200, 2]
type = PlaySnd
trigger1 = Time = 0
value = 2, 27

[State 1200, 1]
type = PlaySnd
trigger1 = Time = 5
value = 2, 32


;[State 1200, 1]
;type = PlaySnd
;trigger1 = AnimElem = 3
;value = 1000, 2

;バルカンヘルパー
[State 1200, 3]
type = Helper
trigger1 = Time = 10
id = (1201)
name = "QCF_c"
pos = 100, 0
postype = back
stateno = 1201
helpertype = normal
keyctrl = 0
ownpal = 0

[State 1200, 4]
type = Helper
trigger1 = Time = 15
id = (1201)
name = "QCF_c"
pos = 150, 0
postype = back
stateno = 1201
helpertype = normal
keyctrl = 0
ownpal = 0


[State 1200, 5]
type = Helper
trigger1 = Time = 20
id = (1201)
name = "QCF_c"
pos = 200, 0
postype = back
stateno = 1201
helpertype = normal
keyctrl = 0
ownpal = 0

[State 1200, 6]
type = Helper
trigger1 = Time = 25
id = (1201)
name = "QCF_c"
pos = 250, 0
postype = back
stateno = 1201
helpertype = normal
keyctrl = 0
ownpal = 0

[State 1200, 7]
type = Helper
trigger1 = Time = 30
id = (1201)
name = "QCF_c"
pos = 300, 0
postype = back
stateno = 1201
helpertype = normal
keyctrl = 0
ownpal = 0

;バルカンヘルパー下
[State 1200, 8]
type = Helper
trigger1 = Time = 10
id = (1201)
name = "QCF_c"
pos = 90, 15
postype = back
stateno = 1201
helpertype = normal
keyctrl = 0
ownpal = 0

[State 1200, 9]
type = Helper
trigger1 = Time = 15
id = (1201)
name = "QCF_c"
pos = 140, 15
postype = back
stateno = 1201
helpertype = normal
keyctrl = 0
ownpal = 0

[State 1200, 10]
type = Helper
trigger1 = Time = 20
id = (1201)
name = "QCF_c"
pos = 190, 15
postype = back
stateno = 1201
helpertype = normal
keyctrl = 0
ownpal = 0

[State 1200, 11]
type = Helper
trigger1 = Time = 25
id = (1201)
name = "QCF_c"
pos = 240, 15
postype = back
stateno = 1201
helpertype = normal
keyctrl = 0
ownpal = 0

[State 1200, 12]
type = Helper
trigger1 = Time = 30
id = (1201)
name = "QCF_c"
pos = 290, 15
postype = back
stateno = 1201
helpertype = normal
keyctrl = 0
ownpal = 0


[State 1200, 13]
type = SprPriority;スプライトを描画する優先度
trigger1 = Time = 10
value = -1;大きい数値の方が優先度が高い（0が普通）

;ミトの顔
[State 1200, 14]
type = Projectile
trigger1 = Time = 10
;damage = 9999,40
attr = S, HA
hitflag = MAFP
guardflag = M
projid = 1200
projanim = 9993
projshadow = -1
projheightbound = -250,100
projedgebound = 20000
projstagebound = 20000
projhitanim = 9993
projremanim = 9993
projmisstime = 0
projpriority = 99999
remvelocity = 20,0
givepower = 3000,100
getpower = 0,0
projhits = 9
pausetime = 5,10
velocity = 12,0 ;このオブジェクトのすぴーど
offset = -60,-167;オブジェクトの始めの出現位置
sparkxy = 30,-90
hitsound   = S20,2
guardsound = S20,6
ground.type = Low;
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -20,-10
airguard.velocity = -20,-10
air.type = Low
air.velocity = -20,-10
air.juggle = 0
air.fall = 1
down.hittime = 30
fall.recover = 0
fall = 1
fall.animtype = Hard


;ガンシップエンジン２
[State 1200, 15]
type = Projectile
trigger1 = Time = 10
damage = 9999,40
attr = S, HA
hitflag = MAFP
guardflag = M
projid = 1200
projanim = 9992
projshadow = -1
projheightbound = -250,100
projedgebound = 20000
projstagebound = 20000
projhitanim = 1210
projremanim = 1210
projmisstime = 0
projpriority = 99999
remvelocity = 20,0
givepower = 3000,100
getpower = 0,0
projhits = 9
pausetime = 5,10
velocity = 12,0 ;このオブジェクトのすぴーど
offset = -260,-120;オブジェクトの始めの出現位置
sparkxy = 30,-90
hitsound   = S20,2
guardsound = S20,6
ground.type = Low
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -20,-10
airguard.velocity = -20,-10
air.type = Low
air.velocity = -20,-10
air.juggle = 0
air.fall = 1
down.hittime = 30
fall.recover = 0
fall = 1
fall.animtype = Hard




[State 1200, 16]
type = SprPriority;スプライトを描画する優先度
trigger1 = Time = 10
value = -3;大きい数値の方が優先度が高い（0が普通）

;ガンシップ本体
[State 1200, 17]
type = Projectile
trigger1 = Time = 10
damage = 9999,40
attr = S, HA
hitflag = MAFP
guardflag = M
projid = 1200
projanim = 1210
projshadow = -1
projheightbound = -250,100
projedgebound = 20000
projstagebound = 20000
projhitanim = 1210
projremanim = 1210
projmisstime = 0
projpriority = 99999
remvelocity = 20,0
givepower = 3000,100
getpower = 0,0
projhits = 9
pausetime = 5,10
velocity = 12,0 ;このオブジェクトのすぴーど
offset = -200,-150;オブジェクトの始めの出現位置
sparkxy = 30,-90
hitsound   = S20,2
guardsound = S20,6
ground.type = Low
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -20,-10
airguard.velocity = -20,-10
air.type = Low
air.velocity = -20,-10
air.juggle = 0
air.fall = 1
down.hittime = 30
fall.recover = 0
fall = 1
fall.animtype = Hard


[State 1200, 18]
type = SprPriority;スプライトを描画する優先度
trigger1 = Time = 10
value = -1;大きい数値の方が優先度が高い（0が普通）

;ガンシップエンジン１
[State 1200, 19]
type = Projectile
trigger1 = Time = 10
damage = 9999,40
attr = S, HA
hitflag = MAFP
guardflag = M
projid = 1200
projanim = 9992
projshadow = -1
projheightbound = -250,100
projedgebound = 20000
projstagebound = 20000
projhitanim = 1210
projremanim = 1210
projmisstime = 0
projpriority = 99999
remvelocity = 20,0
givepower = 3000,100
getpower = 0,0
projhits = 9
pausetime = 5,10
velocity = 12,0 ;このオブジェクトのすぴーど
offset = -250,-100;オブジェクトの始めの出現位置
sparkxy = 30,-90
hitsound   = S20,2
guardsound = S20,6
ground.type = Low
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -20,-10
airguard.velocity = -20,-10
air.type = Low
air.velocity = -20,-10
air.juggle = 0
air.fall = 1
down.hittime = 30
fall.recover = 0
fall = 1
fall.animtype = Hard




[State 1200, 20]
type = PlaySnd
trigger1 = Time = 8
value = 2, 33

[State 1200, 21]
type = PlaySnd
trigger1 = Time = 13
value = 2, 28

;ガンシップ主砲
[State 1200, 22]
type = Helper
trigger1 = Time = 35
id = 1201
name = "QCF_c"
pos = 200, 0
postype = back
stateno = 1202
helpertype = normal
keyctrl = 0
ownpal = 0

;ガンシップ主砲
[State 1200, 23]
type = Helper
trigger1 = Time = 38
id = 1201
name = "QCF_c"
pos = 260, 0
postype = back
stateno = 1202
helpertype = normal
keyctrl = 0
ownpal = 0

;ガンシップ主砲
[State 1200, 24]
type = Helper
trigger1 = Time = 41
id = 1201
name = "QCF_c"
pos = 310, 0
postype = back
stateno = 1202
helpertype = normal
keyctrl = 0
ownpal = 0


[State 1200, 25]
type = ChangeState
trigger1 = Time = 50
value = 0
ctrl = 1



[Statedef 1201]
type = A
movetype = A
velset = 0.0,0
anim = 9995

;バルカン奥
[State 1201, 0]
type = Hitdef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 3
trigger3 = AnimElem = 5
trigger4 = AnimElem = 7
attr = A,NA
damage    = 10,5
;animtype  = Hard
getpower =  30
givepower = 30
hitflag = MAFD
guardflag = MA
pausetime = 6,10
sparkno = 7
sparkxy =  0,-7
;hitsound   = s1,4
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -4,-4
air.animtype = Back
airguard.velocity = -2,-5
air.velocity = -2,-6
air.juggle = 2
fall = 1
palfx.time = 5
palfx.add = 220, 230,220


[State 1201, 1]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 1580

[State 1201, 2]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Time = 300



[Statedef 1202]
type = A
movetype = A
velset = 0.0,0
anim = 9996

;ガンシップ主砲ヘルパー
[State 1202, 0]
type = Hitdef
;trigger1 = Time = 30
trigger1 = AnimElem = 1
;trigger2 = AnimElem = 3
;trigger3 = AnimElem = 5
;trigger4 = AnimElem = 7
damage = 75,30
attr = S, HA
hitflag = MAFP
guardflag = M
projid = 1200
projanim = 9996
projshadow = -1
scale = 2, 2
projheightbound = -250,100
projedgebound = 20000
projstagebound = 20000
projhitanim = 9996
projremanim = 9996
projmisstime = 0
projpriority = 99999
remvelocity = 20,0
givepower = 3000,100
getpower = 0,0
projhits = 1
pausetime = 5,10
velocity = 0,0 ;このオブジェクトのすぴーど
offset = 0,0;オブジェクトの始めの出現位置
sparkxy = 30,-90
hitsound   = S20,2
guardsound = S20,6
ground.type = Low
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -20,-10
airguard.velocity = -20,-10
air.type = Low
air.velocity = -20,-10
air.juggle = 0
air.fall = 1
down.hittime = 30
fall.recover = 0
fall = 1
fall.animtype = Hard

[State 1202, 1]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 1580

[State 1202, 2]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Time = 300


;######################################################################
;王蟲大地の怒り
[Statedef 1300]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 320
velset = 0,0,0
anim = 1200 
ctrl = 0

[State -2, EX_-1]
type = Varadd
trigger1 = time = 1
v = 23
value = -1

[State 1300, Super A]
type = SuperPause
trigger1 = Time = 0
pos = 25, -50
anim = 31 ;超必発動時のフラッシュの指定
;Movetime = 40
time = 50

[State 1300, Super B]
type = PlaySnd
trigger1 = Time = 0
value = F20, 0 

;王蟲本体１
[State 1300, 0]
type = Helper
trigger1 = Time = 0
id = 9990
name = "QCB_c"
pos = -200, -5
postype = back
stateno = 1302
helpertype = normal
keyctrl = 0
ownpal = 0

[State 1200, 0]
type = PlaySnd
trigger1 = Time = 2
value = 2, 29


[State 1300, 5]
type = ChangeState
trigger1 = Time = 50
value = 0
ctrl = 1

;王蟲脚
[Statedef 1301]
type = A
movetype = A
velset = 7,0 ;この物体の移動方向
anim = 9991

[State 1301, 0]
type = SprPriority;スプライトを描画する優先度
trigger1 = Time = 0
value = -13;大きい数値の方が優先度が高い（0が普通）

[State 1301, 1]
type = VarSet
trigger1 = Time = 0
v = 9
value = 1

[State 1301,2];回転するスピード
type = AngleAdd
trigger1 = Time >= 0
value = 10  ;マイナスだと右回り　プラスだと左回り　数値が高いほど速く回る 　

[State 1301, 3];この命令で回る
type = AngleDraw 
trigger1 = Time >= 0

;!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
[State 1301, 4]
type = MakeDust
trigger1 = Time = 0
pos = 0,-5
spacing = 2

[State 1020, 5]
type = MakeDust
trigger1 = animelem = 5, >=2
pos = -10,0
spacing = 3


[State 1301, 6]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 1580

[State 1301, 7]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Time = 170



;王蟲ヘルパー
[Statedef 1302]
type = A
;physics = S
movetype = A
velset = 7,0 ;この物体の移動方向
;ctrl = 0
;poweradd = 200
anim = 9990

[State 1302, 0]
type = SprPriority;スプライトを描画する優先度
trigger1 = Time = 0
value = -10;大きい数値の方が優先度が高い（0が普通）


[State 1302, 1]
type = EnvShake
trigger1 = Time = 0
persistent = 0
time = 150
ampl = -5
freq = 100
phase = 5


;王蟲1
[State 1302, 2]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 3
trigger3 = AnimElem = 5
trigger4 = AnimElem = 7
trigger5 = AnimElem = 9
trigger6 = AnimElem = 11
trigger7 = AnimElem = 13
trigger8 = AnimElem = 15
trigger9 = AnimElem = 17
trigger10 = AnimElem = 19
trigger11 = AnimElem = 21
trigger12 = AnimElem = 23
trigger13 = AnimElem = 25
;trigger14 = AnimElem = 27
;trigger15 = AnimElem = 29
;attr = S, HP
;damage   = 32,12
;animtype = heavy
;guardflag = MA
;hitflag = MAFDP
;priority = 3, Hit                
;pausetime = 0,3.5
;sparkxy =  -20,-84
;sparkno = 0
;hitsound = 5,4
;guardsound = 6,0
;ground.type = High
;ground.slidetime = 25
;ground.hittime  = 25
;ground.velocity = -10
;air.type = High 
;air.velocity = -10,-2
;air.juggle = 3
;air.fall = 1
;air.hittime = 12                 

;projanim = 3005
;projhitanim = 3006
;projhits = 18
;projmisstime = 4
;projremanim = 3006
;projshadow = -1
;projpriority = 30
;projremovetime = 85
;projheightbound = -240, 100
;projedgebound = 100
;projscreenbound = 100
;projid = 3000
;velocity = 0.001,0.001
;offset = 34,-37
;hitspark = S3007
;air.animtype = Back
;down.velocity = -10
;down.hittime = 30
;down.bounce = 1

attr = S, NA
animtype  = Medium
damage    = 42,27
guardflag = MA
pausetime = 0,3
sparkno = 1
sparkxy = -10,-70
hitsound   = 5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5.5
;air.velocity = -2.5,-4
air.animtype = Back
air.velocity = -10,-2
air.juggle = 3
air.fall = 1


;[State 1302, 3]
;type = HitDef
;trigger1 = AnimElem = 15
;attr = S, HA
;damage   = 75,20
;hitflag = MAFP
;guardflag = M
;projid = 4000
;projanim = 4000
;projshadow = -1
;projheightbound = -250,100
;projedgebound = 20000
;projstagebound = 20000
;projhitanim = 4005
;projremanim = 4005
;projmisstime = 0
;projpriority = 99999
;remvelocity = 20,0
;;givepower = 3000,100
;getpower = 0,0
;projhits = 9
;pausetime = 0,10
;velocity = 20,0
;offset = -200,0
;sparkxy = 30,-90
;hitsound   = S20,2
;guardsound = S20,6
;ground.type = Low
;ground.slidetime = 0
;ground.hittime  = 20
;ground.velocity = -20,-10
;airguard.velocity = -20,-10
;air.type = Low
;air.velocity = -20,-10
;air.juggle = 0
;air.fall = 1
;down.hittime = 30
;fall.recover = 0
;fall = 1
;fall.animtype = Hard

[State 1302, 4]
type = VarSet
trigger1 = Time = 0
v = 9
value = 1

;王蟲脚-1ヘルパー呼び出し
[State 1302, 5]
type = Helper
trigger1 = Time = 0
id = 9991
name = "QCB_c"
pos = -350, -30
postype = back
stateno = 1301
helpertype = normal
keyctrl = 0
ownpal = 0

;王蟲脚0ヘルパー呼び出し
[State 1302, 6]
type = Helper
trigger1 = Time = 0
id = 9991
name = "QCB_c"
pos = -300, -30
postype = back
stateno = 1301
helpertype = normal
keyctrl = 0
ownpal = 0

;王蟲脚1ヘルパー呼び出し
[State 1302, 7]
type = Helper
trigger1 = Time = 0
id = 9991
name = "QCB_c"
pos = -250, -30
postype = back
stateno = 1301
helpertype = normal
keyctrl = 0
ownpal = 0

;王蟲脚2ヘルパー呼び出し
[State 1302, 8]
type = Helper
trigger1 = Time = 0
id = 9991
name = "QCB_c"
pos = -200, -30
postype = back
stateno = 1301
helpertype = normal
keyctrl = 0
ownpal = 0

;王蟲脚3ヘルパー呼び出し
[State 1302, 9]
type = Helper
trigger1 = Time = 0
id = 9991
name = "QCB_c"
pos = -150, -30
postype = back
stateno = 1301
helpertype = normal
keyctrl = 0
ownpal = 0

;王蟲脚4ヘルパー呼び出し
[State 1302, 10]
type = Helper
trigger1 = Time = 0
id = 9991
name = "QCB_c"
pos = -100, -30
postype = back
stateno = 1301
helpertype = normal
keyctrl = 0
ownpal = 0

[State 1302, 11]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 1580

[State 1302, 12]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Time = 170

