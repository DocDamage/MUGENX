;-|Variables used|-
;1 = Enemy on flames on/off
;2 = Damage Multiplier on Burn!!!


;---------------------------------------------------------------------------
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170,sn ]
type = PlaySnd
trigger1 = time = 0
value = 170,0
volume = 255



[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
[Statedef 180]
type = S
ctrl = 0
velset = 0,0

[State 180,vr ]
type = VarRandom
trigger1 = time = 0
v = 12
range = 0,1

[State 180, 1]
type = changestate
trigger1 = (time = 0) && (var(12) = 0)
value = 181

[State 180, 1]
type = ChangeState
trigger1 = (time = 0) && (var(12) = 1)
value = 182

[Statedef 181]
type = S
ctrl = 0
velset = 0,0
anim = 181

[State 181,p ]
type = PosAdd
trigger1 = animelem = 3
x = 12

[State 181,explos ]
type = Explod
trigger1 = numexplod(181) < 50
anim = 7003
pos = 20,-30
vel = 0,-2
postype = p1
ID = 181
bindtime = 1
random =  50,50
sprpriority = -2
persistent = 1
ownpal = 1


[State 180, 1]
type = assertspecial
trigger1 = time < 220
flag = roundnotover

[Statedef 182]
type = S
ctrl = 0
velset = 0,0
anim = 182

[State 182,ca ]
type = ChangeAnim
trigger1 = (enemy,name = "Megumi Shinigami") && (time = 0)
value = 1822

[State 182,hp ]
type = Helper
trigger1 = (time = 0) && (enemy,name != "Megumi Shinigami")
name = "Megumi"
ID = 182
pos = 0,0
stateno = 1821
ownpal = 1

[State 182, sn]
type = PlaySnd
trigger1 = Animelem = 12
value = 182,0

[State 180, 1]
type = assertspecial
trigger1 = time < 220
flag = roundnotover

[Statedef 1821]
type = S
ctrl = 0
velset = 0,0
anim = 1821
sprpriority = 8

[State 1821,pf ]
type = PalFX
trigger1 = time < 20
time = 1
add = -(200-(10*(time))),-(200-(10*(time))),-(200-(10*(time)))

[State 1821,pf ]
type = PalFX
trigger1 = time > 67
time = 1
add = -(var(1)),-(var(1)),-(var(1))

[State 1821,va ]
type = VarAdd
trigger1 = (timemod = 2,0) && (time > 67)
v =  1
value = 5

[State 1821,ds ]
type = DestroySelf
trigger1 = Time = 90

;---------------------------------------------------------------------------
; Introduction
[Statedef 190]
type = S
ctrl = 0
anim = 0
velset = 0,0

[State 180,v ]
type = VarSet
trigger1 = time = 0
v =  15
value = 3 

[State 180,intro ] ;random intro (not used yet)
type = Varrandom
trigger1 = time = 0
v =  22 
range = 0,1

[State 191, VsRick]
type = ChangeState
trigger1 = p2name = "Rikard Shinigami"
trigger2 = p4name = "Rikard Shinigami"
value = 194

[State 191, VsKDash]
type = ChangeState
trigger1 = p2name = "K'"
trigger2 = p4name = "K'"
value = 192

[State 191, VsMegumi]
type = ChangeState
trigger1 = p2name = "Megumi Shinigami"
trigger2 = p4name = "Megumi Shinigami"
value = 196

[State 191, 1]
type = ChangeState
trigger1 = (time = 0) && (var(22) = 0)
value = 191

[State 191, 1]
type = ChangeState
trigger1 = (time = 0) && (var(22) = 1)
value = 193

[Statedef 191]
type = S
ctrl = 0
velset = 0,0
anim = 191

[State 191,sn ]
type = PlaySnd
trigger1 = Time = 4
value = 191,0
volume = 255

[State 191, PalFX]
type = PalFX
trigger1 = time = 166
time = 14
add = 113,103,-255
mul = 410,276,0
sinadd = 0,0,0,1
color = 1

[State 191, snd]
type = PlaySnd
trigger1 = Time = 165
value = 3000,0
volume = 255


[State 191,ex ]
type = Explod
trigger1 = Time = 165
anim = 3002
sprpriority = 5
ownpal = 1


[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

[Statedef 193]
type = S
ctrl = 0
velset = 0,0
anim = 1931

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192,h ]
type = Helper
trigger1 = time = 0
name = "Jirai"
pos = 30,0
ID = 193
stateno = 4200
ownpal = 1

[State 191, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

[Statedef 4200]
type = S
ctrl = 0
velset = 0,0
anim = 4200
sprpriority = 7

[State 4200,EX ]
type = Explod
trigger1 = animelem =  12
anim = 4201
pos = -5,0
scale = 1.2, 1.2
sprpriority = 8
ownpal = 1

[State 4200,sn ]
type = PlaySnd
trigger1 = animelem = 12
value = 1000,0

[State 4200,aft ]
type = AfterImage
trigger1 = time = 90
time = 6
timegap = 1
framegap = 1
trans = add


[State 4194,des ]
type = DestroySelf
trigger1 = time = 100

;---------------------------------------------------------------------------
; Intro con Igniz (vs KDash)
[Statedef 192]
type = S
ctrl = 0
velset = 0,0
anim = 193

[State 192,h ]
type = Helper
trigger1 = time = 0
name = "Igniz"
pos = -50,0
ID = 192
stateno = 4193
ownpal = 1

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 2]
type = AssertSpecial
trigger1 = helper(192),var(1) = 0
flag = invisible

[State 191, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0


;Igniz states
[Statedef 4193]
type = S
ctrl = 0
velset = 0,0
anim = 4193
sprpriority = 7

[State 4193, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 4194

[State 4193,v ]
type = VarSet
trigger1 = animelem = 16
v =  1
value = 1

[Statedef 4194]
type = S
physics = N
ctrl = 0
velset = -8,-2
anim = 4194
sprpriority = 7

[State 4194,des ]
type = DestroySelf
trigger1 = time = 60



;---------------------------------------------------------------------------
; Intro VS Rick
[Statedef 194]
type = S
ctrl = 0
anim = 192
velset = 0,0

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro


[State 192, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 0

[Statedef 196]
type = S
ctrl = 0
velset = 0,0
anim = 1932
sprpriority = 7

[State 196, ]
type = PosAdd
trigger1 = time = 0
x = p2dist X - 40

[State 192, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 197
ctrl = 0

[Statedef 197]
type = S
physics = N
ctrl = 0
velset = -5.55,-3
anim = 105

[State 197,ps ]
type = PosSet
trigger1 = pos Y >= 0
y = 0

[State 196,cs ]
type = ChangeState
trigger1 = (pos Y >= 0) && (time > 3)
value = 0
ctrl = 0

[State 196 ,g ]
type = Gravity
trigger1 = time > 0

;Taunt
[Statedef 195]
type = S
movetype = I
physics = S
ctrl = 0
anim = 195
velset = 0,0

[State 195,ctrl ]
type = CtrlSet
trigger1 = time = 40
value = 1

[State 195, sn]
type = PlaySnd
trigger1 = AnimElem = 2
value = 195,0
volume = 255

[State 195,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Standing Light punch
[Statedef 200]
type = S
movetype = A
physics = S
ctrl = 0
anim = 200
poweradd = 8
velset = 0,0
juggle = 2

[State 200, snd]
type = PlaySnd
trigger1 = (Time = 0) && (random < 200)
value = 201,1

[State 200, snd]
type = PlaySnd
trigger1 = Time = 0
value = 200,0
volume = 255

[State 200,hit ]
type = HitDef
trigger1 = Time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Light
damage = 40,0
pausetime = 6,6
sparkno = 0
sparkxy = 0,-83
hitsound = 5,1
guardsound = 6,0
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -3.5,0
air.velocity = -3.5,-3
ground.cornerpush.veloff = -7
air.cornerpush.veloff = -4
juggle =2

[State 200,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Standing Strong punch
[Statedef 210]
type = S
movetype = A
physics = S
ctrl = 0
anim = 210
poweradd = 8
velset = 0,0
juggle = 4

[State 200, snd]
type = PlaySnd
trigger1 = (Time = 0) && (random < 400)
value = 201,3

[State 210,hit ]
type = HitDef
trigger1 = Time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Medium
damage = 70,0
pausetime = 12,12
sparkno = 1
sparkxy = 0,-80
hitsound = 5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -7,0
air.velocity = -3.5,-6
ground.cornerpush.veloff = -11
air.cornerpush.veloff = -6
juggle =4

[State 210, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200,1
volume = 255

[State 210,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 215]
type = S
movetype = A
physics = S
ctrl = 0
anim = 215
poweradd = 8
velset = 0,0
juggle = 4

[State 215, p]
type = PosAdd
trigger1 = AnimElem = 4
x = 8
;y = 
;ignorehitpause = 0
;persistent = 1

[State 200, snd]
type = PlaySnd
trigger1 = (Time = 0) && (random < 400)
value = 201,3

[State 210,hit ]
type = HitDef
trigger1 = AnimElem = 3
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Medium
damage = 40,0
pausetime= 11,12
sparkno = 3
sparkxy = 0,-70
hitsound = 5,1
guardsound = 6,0
ground.type = high
ground.slidetime = 17
ground.hittime = 17
ground.velocity = 1,0
air.velocity = -3.5,-6
ground.cornerpush.veloff = -11
air.cornerpush.veloff = -6
juggle =4

[State 210,hit ]
type = HitDef
trigger1 = AnimElem = 5
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Medium
damage = 40,0
pausetime= 11,12
sparkno = 3
sparkxy = 0,-70
hitsound = 5,1
guardsound = 6,0
ground.type = high
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -7,0
air.velocity = -3.5,-6
ground.cornerpush.veloff = -11
air.cornerpush.veloff = -6
juggle =4

[State 210, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200,1
volume = 255

[State 210,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 220]
type = S
movetype = A
physics = S
ctrl = 0
anim = 220
poweradd = 9
velset = 0,0
juggle = 7

[State 200, snd]
type = PlaySnd
trigger1 = (Time = 0) && (random < 600)
value = 201,4

[State 220,ex ]
type = Explod
trigger1 = prevstateno = 150
trigger1 = time = 0
anim = 710
ID = 700
pos = 0,-65
pausemovetime = 6
ontop = 1
ownpal = 1
persistent = 0

[State 220,p]
type = Pause
trigger1 = prevstateno = 150
trigger1 = time = 0
time = 6
movetime = 6
ignorehitpause = 1

[State 220, pow]
type = PowerAdd
trigger1 = prevstateno = 150
trigger1 = time = 0
value = -1000

[State 220, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200,2
volume = 255

[State 220,hit ]
type = HitDef
trigger1 = Time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
damage = 110,0
pausetime = 12,12
sparkno = 2
sparkxy = 0,-80
hitsound = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -7,-1
air.velocity = -6.5,-2
ground.cornerpush.veloff = -18
air.cornerpush.veloff = -6
fall = 1
fall.recover = 0
juggle =7

[State 220,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 230]
type = S
movetype = A
physics = S
ctrl = 0
anim = 230
poweradd = 8
velset = 0,0
juggle = 2

[State 200, snd]
type = PlaySnd
trigger1 = (Time = 0) && (random < 300)
value = 201,2

[State 230, snd]
type = PlaySnd
trigger1 = Time = 0
value = 200,0
volume = 255

[State 230,hit ]
type = HitDef
trigger1 = Time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Light
damage = 35,0
pausetime = 8,8
sparkno = 0
sparkxy = -10,-40
hitsound = 5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -3.5,0
air.velocity = -3.5,-2
ground.cornerpush.veloff = -7
air.cornerpush.veloff = -6
juggle =2

[State 230,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 235]
type = S
movetype = A
physics = S
ctrl = 0
anim = 235
poweradd = 8
velset = 0,0
juggle = 2

[State 200, snd]
type = PlaySnd
trigger1 = (Time = 0) && (random < 400)
value = 201,5

[State 230, snd]
type = PlaySnd
trigger1 = Time = 0
value = 200,0
volume = 255

[State 230,hit ]
type = HitDef
trigger1 = Time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Light
damage = 40,0
pausetime = 8,8
sparkno = 1
sparkxy = -10,-30
hitsound = 5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -3.5,0
air.velocity = -3.5,-2
ground.cornerpush.veloff = -7
air.cornerpush.veloff = -6
juggle =2

[State 230,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 240]
type = S
movetype = A
physics = S
ctrl = 0
anim = 240
poweradd = 8
velset = 0,0
juggle = 4

[State 200, snd]
type = PlaySnd
trigger1 = (Time = 0) && (random < 400)
value = 201,3

[State 240, snd]
type = PlaySnd
trigger1 = Time = 0
value = 200,1
volume = 255


[State 240,hit ]
type = HitDef
trigger1 = Time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Medium
damage = 80,0
pausetime = 12,12
sparkno = 2
sparkxy = 0,-80
hitsound = 5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -6.5,0
air.velocity = -6.5,-2
ground.cornerpush.veloff = -12
air.cornerpush.veloff = -6
juggle =4

[State 240,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 245]
type = S
movetype = A
physics = S
ctrl = 0
anim = 245
poweradd = 8
velset = 0,0
juggle = 4

[State 200, snd]
type = PlaySnd
trigger1 = (Time = 0) && (random < 400)
value = 201,5

[State 240, snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200,1
volume = 255

[State 240,hit ]
type = HitDef
trigger1 = Time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Medium
damage = 80,0
pausetime = 9,9
sparkno = 3
sparkxy = 0,-40
hitsound = 5,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -6.5,0
air.velocity = -6.5,-2
ground.cornerpush.veloff = -12
air.cornerpush.veloff = -6
juggle =4

[State 240,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 400]
type = C
movetype = A
physics = S
ctrl = 0
anim = 400
poweradd = 3
velset = 0,0
juggle = 2

[State 400,snd ]
type = PlaySnd
trigger1 = Time = 0
value = 200,0
volume = 255

[State 400,hit ]
type = HitDef
trigger1 = Time = 0
attr = C,NA
hitflag = MAF
guardflag = MA
animtype = Light
damage = 35,0
pausetime = 8,8
sparkno = 0
sparkxy = 0,-50
hitsound = 5,1
guardsound = 6,0
ground.type = low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -4,0
air.velocity = -3.5,-6
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -6
juggle =2

[State 400,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[Statedef 410]
type = C
movetype = A
physics = S
ctrl = 0
anim = 410
poweradd = 6
velset = 0,0
juggle = 3

[State 410,snd ]
type = PlaySnd
trigger1 = Time = 0
value = 200,1
volume = 255

[State 410,P ]
type = PosAdd
trigger1 = AnimTime = 0
x = 20

[State 410,hit ]
type = HitDef
trigger1 = Time = 0
attr = C,NA
hitflag = MAFD
guardflag = MA
animtype = Light
damage = 70,0
pausetime = 12,12
sparkno = 1
sparkxy = 0,-10
hitsound = 5,2
guardsound = 6,0
ground.type = low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -7,0
air.velocity = -3.5,-6
ground.cornerpush.veloff = -12
air.cornerpush.veloff = -6
juggle =3

[State 400,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[Statedef 430]
type = C
movetype = A
physics = S
ctrl = 0
anim = 430
poweradd = 6
velset = 0,0
juggle = 3

[State 430,snd ]
type = PlaySnd
trigger1 = Time = 0
value = 200,1
volume = 255

[State 430,hit ]
type = HitDef
trigger1 = Time = 0
attr = C,NA
hitflag = MAFD
guardflag = MA
animtype = light
damage = 40,0
pausetime = 8,8
sparkno = 1
sparkxy = 0,-10
hitsound = 5,1
guardsound = 6,0
ground.type = low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -3,0
air.velocity = -3.5,0
ground.cornerpush.veloff = -9
air.cornerpush.veloff = -6

[State 430,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


[Statedef 440]
type = C
movetype = A
physics = S
ctrl = 0
anim = 440
poweradd = 6
velset = 0,0
juggle = 15

[State 440,snd ]
type = PlaySnd
trigger1 = Time = 0
value = 200,1
volume = 255

[State 440,hit ]
type = HitDef
trigger1 = Time = 0
attr = C,NA
hitflag = MAFD
guardflag = MA
animtype = Hard
damage = 80,0
pausetime = 12,12
sparkno = 2
sparkxy = 0,-10
hitsound = 5,2
guardsound = 6,0
ground.type = trip
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -3,-2
air.velocity = -3.5,-2
ground.cornerpush.veloff = -12
air.cornerpush.veloff = -6
fall = 1
fall.recover = 0

[State 440,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[Statedef 600]
type = A
movetype = A
physics = A
ctrl = 0
anim = 600
poweradd = 3
juggle = 2

[State 600,snd ]
type = PlaySnd
trigger1 = Time = 0
value = 200,0
volume = 255

[State 600,hit ]
type = HitDef
trigger1 = Time = 0
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = Light
damage = 30,0
pausetime = 8,8
sparkno = 0
sparkxy = 0,-80
hitsound = 5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 13
ground.velocity = -3.5,0
air.velocity = -2.5,-2
juggle =2


[Statedef 610]
type = A
movetype = A
physics = A
ctrl = 0
anim = 610
poweradd = 8
juggle = 3

[State 600,snd ]
type = PlaySnd
trigger1 = Time = 0
value = 200,1
volume = 255

[State 610,hit ]
type = HitDef
trigger1 = Time = 0
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = Medium
damage = 70,0
pausetime = 12,12
sparkno = 1
sparkxy = 0,-60
hitsound = 5,2
guardsound = 6,0
ground.type = Low
air.type = high
ground.slidetime = 17
ground.hittime = 19
ground.velocity = -6.5,0
air.velocity = -2,12
air.fall = 1
juggle =3

[Statedef 620]
type = A
movetype = A
physics = A
ctrl = 0
anim = 620
poweradd = 7
juggle = 7

[State 600,snd ]
type = PlaySnd
trigger1 = Time = 0
value = 200,2
volume = 255

[State 620,hit ]
type = HitDef
trigger1 = Time = 0
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = Hard
damage = 110,0
pausetime = 12,12
sparkno = 3
sparkxy = 0,-60
hitsound = 5,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -6,-1
air.velocity = -3,-2
juggle = 6
fall = 1


[Statedef 630]
type = A
movetype = A
physics = A
ctrl = 0
anim = 630
poweradd = 3
juggle = 2

[State 630,snd ]
type = PlaySnd
trigger1 = Time = 0
value = 200,1
volume = 255

[State 630,hit ]
type = HitDef
trigger1 = Time = 0
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = Medium
damage = 35,0
pausetime = 8,8
sparkno = 1
sparkxy = 0,-50
hitsound = 5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -3.5,0
air.velocity = -2,-2
juggle = 2

[Statedef 640]
type = A
movetype = A
physics = A
ctrl = 0
anim = 640
poweradd = 6
juggle = 4

[State 640,snd ]
type = PlaySnd
trigger1 = Time = 0
value = 200,2
volume = 255

[State 640,hit ]
type = HitDef
trigger1 = Time = 0
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = Hard
damage = 80,0
pausetime = 12,12
sparkno = 2
sparkxy = 0,-40
hitsound = 5,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 15
ground.velocity = -6.5,0
air.velocity = -4,-2
juggle = 4




;---------------------------------------------------------------------------
;ROLLS
;NOTE FOR THE USER:
;for this one I made a copy'n'paste from my other character,Kei.
;so this one may not work properly.-.-
;---------------------------------------------------------------------------
;FORWARD ROLL
[Statedef 700]
type    = S
movetype = I
physics = N
ctrl = 0
anim = 700
sprpriority = -2

[State 700,sn ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 700,0
volume = 255

[State 700,shiwa (whatever!) ]
type = PlaySnd
trigger1 = time = 0
value = 3999,0
volume = 255

[State 700,ex ]
type = Explod
trigger1 = prevstateno = 150
trigger1 = time = 0
anim = 710
ID = 700
pos = 0,-65
pausemovetime = 6
ontop = 1
ownpal = 1
persistent = 0

[State 700,p]
type = Pause
trigger1 = prevstateno = 150
trigger1 = time = 0
time = 6
movetime = 6
ignorehitpause = 1

[State 700, pow]
type = PowerAdd
trigger1 = prevstateno = 150
trigger1 = time = 0
value = -1000   


[State 700,vel ]
type = VelSet
trigger1 = AnimElem = 2
x = 5.5

[State 700,velB ]
type = VelAdd
trigger1 = time = [7,23]
x = -.1 

[State 700,velC ]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 700,nohit]
type = NotHitBy
trigger1 = Time > 0
value = SCA,NA,SA,HA,NP,SP,HP
time = 2

[State 700,aft ]
type = AfterImage
trigger1 = Time = 3
time = 10
length = 3
palcolor = 256
palinvertall = 0
palbright = 12,12,12
palcontrast = 225,225,225
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 1,1,1
timegap = 4
framegap = 1
trans = add1


[State 700,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 700, no push]
type = PlayerPush
trigger1 = Time > 0
value = 0

;BACKWARD ROLL
[Statedef 701]
type    = S
movetype = I
physics = N
ctrl = 0
anim = 701
sprpriority = -2

[State 701,shiwa (whatever!) ]
type = PlaySnd
trigger1 = time = 0
value = 3999,0
volume = 255

[State 701,sn ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 700,0
volume = 255

[State 701,ex ]
type = Explod
trigger1 = prevstateno = 150
trigger1 = time = 0
anim = 710
ID = 700
pos = 0,-65
pausemovetime = 6
ontop = 1
ownpal = 1
persistent = 0

[State 701,p]
type = Pause
trigger1 = prevstateno = 150
trigger1 = time = 0
time = 6
movetime = 6
ignorehitpause = 1

[State 701, pow]
type = PowerAdd
trigger1 = prevstateno = 150
trigger1 = time = 0
value = -1000   

[State 701,vel ]
type = VelSet
trigger1 = time = 0
x = -5.5

[State 701,velB ]
type = VelAdd
trigger1 = time = [7,19]
x = .1 

[State 701,velC ]
type = VelSet
trigger1 = AnimElem = 1,20
x = 0

[State 701,nohit]
type = NotHitBy
trigger1 = Time > 0
value = SCA,NA,SA,HA,NP,SP,HP
time = 2

[State 701,aft ]
type = AfterImage
trigger1 = Time = 3
time = 10
length = 3
palcolor = 256
palinvertall = 0
palbright = 12,12,12
palcontrast = 225,225,225
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 1,1,1
timegap = 4
framegap = 1
trans = add1

[State 701,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 701, no push]
type = PlayerPush
trigger1 = Time > 0
value = 0

[Statedef 750]
type    = S
movetype = I
physics = N
ctrl = 0
anim = 750
velset = 0

[State 750,vo ]
type = PlaySnd
trigger1 = time = 0
value = 750,0
volume = 255

[State 750,vo ]
type = PlaySnd
trigger1 = time = 0
value = 750,1
volume = 255

[State 750,explos ]
type = Explod
trigger1 = numexplod(750) < 50
anim = 7003
pos = 10,-30
vel = 0,-2
postype = p1
ID = 750
bindtime = 1
random =  50,50
sprpriority = -2
persistent = 1
ownpal = 1
removeongethit = 1

[State 750,explos ]
type = Explod
trigger1 = numexplod(750) < 50
trigger1 = random < 300
anim = 7003
pos = 10,-30
vel = 0,-2
postype = p1
ID = 750
bindtime = 1
random =  50,50
sprpriority = 4
persistent = 1
ownpal = 1
removeongethit = 1

[State 750,explos ]
type = Explod
trigger1 = animelem = 2,1
anim = F62
pos = 0,0
postype = p1
ID = 750
bindtime = 1
sprpriority = -2
persistent = 1
ownpal = 1
removeongethit = 1

[State 750, p]
type = PowerAdd
trigger1 = AnimElem = 2,1
value = 30

[State 750,c ]
type = ChangeState
trigger1 = command !="holdpowerup"
trigger2 = power = 3000
value = 751

[Statedef 751]
type    = S
movetype = I
physics = N
ctrl = 0
anim = 751

[State 750,vo ]
type = PlaySnd
trigger1 = time = 0
trigger1 = power = 3000
value = 750,2
volume = 255

[State 751,p ]
type = PalFX
trigger1 = time = 0
trigger1 = power = 3000
time = 3
add = 255,255,255
sinadd = 0,0,0,10

[State 751,vo ]
type = PlaySnd
trigger1 = time = 0
trigger1 = power = 3000
value = 3001,1
volume = 255

[State 751,c ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1



;THROWS
[Statedef 800]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 800
velset = 0,0

[State 800,ht ]
type = HitDef
trigger1 = time = 0
attr = S,NT
hitflag = M
guardflag =
sparkno = -1
priority = 3,miss
p1stateno = 801
p2stateno = 810
fall = 1
fall.recover = 0


[State 800,0 ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;P1 STATE
[Statedef 801]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 801
velset = 0,0

[State 801,ex ]
type = Explod
trigger1 = AnimElem = 2
anim = F2
pos = 0,-60
postype = p2
sprpriority = 6
ontop = 1
ownpal = 1

[State 801,ex ]
type = Explod
trigger1 = AnimElem = 6,20
anim = 1103
scale = 1.1,1.1
pos = -20,70
postype = p2
sprpriority = 6
ontop = 1
ownpal = 1

[State 801,sn ]
type = PlaySnd
trigger1 = AnimElem = 6,20
value = 3000,1

[State 801,sn ]
type = PlaySnd
trigger1 = AnimElem = 2
value = F5,3

[State 801,t ]
type = TargetLifeAdd
trigger1 = AnimElem = 2
value = -50
kill = 0

[State 801,t ]
type = TargetLifeAdd
trigger1 = AnimElem = 6,20
value = -90
kill = 1

[State 801,varsett ]
type = VarSet
trigger1 = animelem = 6,20
v =  1
value = 1

[State 801,t1 ]
type = TargetBind
trigger1 = AnimElem = 5
time =8
pos = 38,-93

[State 801,t1 ]
type = TargetBind
trigger1 = AnimElem = 6
time =21
pos = 26,-102

[State 801,ev ]
type = EnvShake
trigger1 = animelem = 6,20
time = 3

[State 800,0 ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;P2 STATE
[Statedef 810]
type    = S
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 810,spr ]
type = SprPriority
trigger1 = AnimElem = 4
value = 6

[state 810,gh]
type = Palfx
trigger1 = time = 47
time = 40       
add  = 80,-70,-200                               
sinadd = 0,30,0,10                              
color = 0                                              
invertall = 1  

[State 810,sf ]
type = ChangeState
trigger1 = time = 47
value = 811

[State 810,an2 ]
type = ChangeAnim2
trigger1 = time = 0
value = 810

[Statedef 811]
type    = S
movetype = H
physics = N
ctrl = 0
velset = -5,-6

[State 811,AN2 ]
type = ChangeAnim2
trigger1 = time = 0
value = 811

[State 811,p ]
type = PosAdd
trigger1 = time = 0
y = 60

[State 811,v ]
type = VelAdd
trigger1 = time > 0
y = .4
 
[State 811,self ]
type = SelfState
trigger1 = pos Y >= 0
value = 5110



[Statedef 850]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 800
velset = 0,0

[State 800,ht ]
type = HitDef
trigger1 = time = 0
attr = S,NT
hitflag = M
guardflag =
sparkno = -1
priority = 3,miss
p1stateno = 851
p2stateno = 860
fall = 1
fall.recover = 0


[State 800,0 ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;P1 STATE
[Statedef 851]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 850
velset = 0,0

[State 801,ex ]
type = Explod
trigger1 = time = 0
anim = F2
pos = 0,-60
postype = p2
sprpriority = 6
ontop = 1
ownpal = 1

[State 801,sn ]
type = PlaySnd
trigger1 = AnimElem = 2
value = F5,3

[State 801,t ]
type = TargetLifeAdd
trigger1 = AnimElem = 2
value = -50
kill = 0

[State 801,t ]
type = TargetLifeAdd
trigger1 = AnimElem = 6
value = -90
kill = 1

[State 801,t1 ]
type = TargetBind
trigger1 = AnimElem = 2
time =15
pos = 37,-138

[State 801,t1 ]
type = TargetBind
trigger1 = AnimElem = 3
time =10
pos = 23,-140

[State 801,t1 ]
type = TargetBind
trigger1 = AnimElem = 4
time =10
pos = 13,-141

[State 801,t1 ]
type = TargetBind
trigger1 = AnimElem = 5
time =10
pos =-38,-150

[State 801,t1 ]
type = TargetBind
trigger1 = AnimElem = 6
time =3
pos =-90,-118

[State 801,t1 ]
type = TargetBind
trigger1 = AnimElem = 6,3
time =1
pos =-90,-20

[State 801,p ]
type = PosAdd
trigger1 = animelem = 4
x = -5

[State 801,p ]
type = PosAdd
trigger1 = animelem = 5
x = -10

[State 801,p ]
type = PosAdd
trigger1 = animelem = 6
x = -10


[State 800,0 ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 850,s ]
type = Turn
trigger1 = animelem = 9


;P2 STATE
[Statedef 860]
type    = S
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 860,v ]
type = VelSet
trigger1 = animelem = 6,3
x = 8
y = 3

[State 860,ve ]
type = VelAdd
trigger1 = animelem = 6,>0
y = .6

[State 810,spr ]
type = SprPriority
trigger1 = AnimElem = 4
value = -2

[State 810,sf ]
type = selfstate
trigger1 = (time > 30) && (pos Y >= 0)
value = 5110

[State 810,an2 ]
type = ChangeAnim2
trigger1 = time = 0
value = 860

;-|SPECIAL ATTACKS|-

[Statedef 1000]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1000
poweradd = 100
velset = 0,0
juggle = 10

[State 1000,snd ]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000,0
volume = 255

[State 1000,snd ]
type = PlaySnd
trigger1 = Time = 0
value = 1000,1
volume = 255

[State 1000,hitdef ]
type = HitDef
trigger1 = Time = 0
attr = S,SA
hitflag = MAF
guardflag = MA 
animtype = Hard
air.animtype = Hard
priority = 7
damage = 110,7
pausetime = 12,13
sparkno = 2
sparkxy = 0,-70
hitsound = 5,4
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 21
ground.hittime = 26
ground.velocity = -3,-8
air.velocity = -4,-8
ground.cornerpush.veloff = -15
air.cornerpush.veloff = -8
getpower = 4,1
givepower = 1,4
palfx.time = 40       
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1  
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 2
fall = 1

[State 1000,nihit ]
type = NotHitBy
trigger1 = AnimElem = 3
value = SCA,NA,SA
time = 7

[State 1000,varsett ]
type = VarSet
trigger1 = movehit = 1
v =  1
value = 1

[State 1000, FX 1]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "FX 1000"
ID = 1000
pos = 0,0
stateno = 1001
ownpal = 1


[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1010]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1010
poweradd = 102
velset = 0,0
juggle = 8

[State 1010,snd ]
type = PlaySnd
trigger1 = Time = 0
value = 1000,1
volume = 255

[State 1010,snd ]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000,0
volume = 255

[State 1010,varsett ]
type = VarSet
trigger1 = movehit = 1
v =  1
value = 1

[State 1010,hitdef ]
type = HitDef
trigger1 = Time = 0
attr = S,SA
hitflag = MAF
guardflag = MA 
animtype = Hard
air.animtype = Hard
priority = 7
damage = 90,9
pausetime = 12,13
sparkno = 2
sparkxy = 0,-70
hitsound = 5,4
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 21
ground.hittime = 26
ground.velocity = -4,-9
air.velocity = -4,-9
ground.cornerpush.veloff = -15
air.cornerpush.veloff = -8
getpower = 4,1
givepower = 1,4
palfx.time = 40       
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1  
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 2
fall = 1

[State 1010,nihit ]
type = NotHitBy
trigger1 = AnimElem = 3
value = SCA,NA,SA
time = 5

[State 1010, FX 1]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "FX 1000"
ID = 1010
pos = 0,0
stateno = 1001
ownpal = 1


[State 1010, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;FX states
[Statedef 1001]
type = S
ctrl = 0
anim = 1002

[State 1001,spr ]
type = SprPriority
trigger1 = time = 0
value = -2

[State 1001,spr ]
type = SprPriority
trigger1 = animelem = 2
value = 6

[State 1001,after ]
type = Afterimage 
trigger1 = time = 0
time = 999
length = 5
palcolor = 256
palbright = 40,0,0
palcontrast = 255,255,255
palpostbright = 0,0,0
paladd = 0,0,0
palmul = .8,.8,.8
timegap = 1
framegap = 1
trans = add

[State 1001,des ]
type = DestroySelf
trigger1 = AnimTime = 0




[Statedef 1050]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1050
velset = 0,0

[State 1050,sn ]
type = PlaySnd
trigger1 = animelem = 4
value = 3000,2

[State 1050,rvd ]
type = ReversalDef
trigger1 = animelem = 2
reversal.attr = SCA,NA,SA
pausetime = 0,10
priority = 7
hitsound = 6,0
guardsound = 6,0

[State 1050,ps ]
type = PosSet
trigger1 = animelem = 9
y = 0

[State 1050,ps ]
type = PosAdd
trigger1 = animelem = 9
x = 120

[State 1050,nh ]
type = NotHitBy
trigger1 = animelem = 11
value = SCA,NA,SA
time = 20

[State 1050,v ]
type = VelSet
trigger1 = animelem = 9
y = 0

[State 1050,vel ]
type = VelSet
trigger1 = animelem = 3
x = 0
y = -9

[State 1050,afttime ]
type = AfterImageTime
trigger1 = time < 35
time = 2

[State 1050,state ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1060]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1050
velset = 0,0

[State 1050,sn ]
type = PlaySnd
trigger1 = animelem = 4
value = 3000,2


[State 1050,rvd ]
type = ReversalDef
trigger1 = animelem = 2
reversal.attr = SCA,NA,SA
pausetime = 0,10
priority = 7
hitsound = 6,0
guardsound = 6,0

[State 1050,ps ]
type = PosSet
trigger1 = animelem = 9
y = 0

[State 1050,ps ]
type = PosAdd
trigger1 = animelem = 9
x = 220

[State 1050,nh ]
type = NotHitBy
trigger1 = animelem = 11
value = SCA,NA,SA
time = 20

[State 1050,v ]
type = VelSet
trigger1 = animelem = 9
y = 0

[State 1050,vel ]
type = VelSet
trigger1 = animelem = 3
x = 0
y = -9

[State 1050,afttime ]
type = AfterImageTime
trigger1 = time < 35
time = 2

[State 1050,state ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1100]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1100
poweradd = 110
velset = 0,0

[State 1100, end]
type = ChangeState
trigger1 = (time = [7,20]) && (command != "holdx")
value = 11001

[State 1100, end]
type = ChangeState
trigger1 = time = 20
value = 11001

[Statedef 11001]
type = S
movetype = A
physics = S
ctrl = 0
anim = 11001
velset = 0,0

[State 1000,snd ]
type = PlaySnd
trigger1 = Time = 0
value = 1100,0
volume = 255

[State 1000,snd ]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1100,1
volume = 255

[State 1100, FX 1]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "FX 1100"
ID = 1100
pos = 0,-10
stateno = 1101
ownpal = 1

[State 1000,varsett ]
type = VarSet
trigger1 = projhit(1102) = 1
v =  1
value = 1

[State 1100, FX 1]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "EFFETTI DI POLVERE E VARI"
ID = 1100
pos = 20,0
stateno = 1102
ownpal = 1
size.xscale = .7
size.yscale = .9


[State 1100,pj ]
type = Projectile
trigger1 = AnimElem = 3
ProjID = 1100
projanim = 1102
projhitanim = 1105
projremanim = 1105
projcancelanim = 1105
projremovetime = 80
projscale = .5,.7
velocity = 3,0
projpriority = 4
projsprpriority = 8
offset = 20,0
attr = S,SP
hitflag = MAFPD
guardflag = MA 
animtype = Medium
air.animtype = Medium
damage = 90,3
pausetime = 0,0
sparkno = 2
sparkxy = 0,-20
hitsound = S1000,0
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 27
ground.hittime = 28
ground.velocity = -6,0
air.velocity = -3,-2
getpower = 4,1
givepower = 1,4
palfx.time = 27      
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1 

[State 1100, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 11002]
type = S
movetype = A
physics = S
ctrl = 0
anim = 11001
velset = 0,0

[State 1000,snd ]
type = PlaySnd
trigger1 = Time = 0
value = 11001,0
volume = 255

[State 1000,snd ]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1100,1
volume = 255

[State 1100, FX 1]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "FX 1100"
ID = 1100
pos = 0,-10
stateno = 1101
ownpal = 1

[State 1000,varsett ]
type = VarSet
trigger1 = projhit(1102) = 1
v =  1
value = 1

[State 1100, FX 1]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "PROIETTILE SPARAFLASHOSO"
ID = 1100
pos = 20,0
stateno = 1103+10*(prevstateno = 1110)
ownpal = 1
size.xscale = .7
size.yscale = .9

[State 1100, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1101]
type = S
ctrl = 0
anim = 1101
sprpriority = 6


[State 1101,after ]
type = Afterimage 
trigger1 = time = 0
time = 999
length = 5
palcolor = 256
palbright = 40,0,0
palcontrast = 255,255,255
palpostbright = 0,0,0
paladd = 0,0,0
palmul = .8,.8,.8
timegap = 1
framegap = 1
trans = add

[State 1101,des ]
type = destroyself
trigger1 = animtime = 0

[Statedef 1102]
type = S
movetype = A
physics = N
ctrl = 0
anim = 11020
velset = 3,0
sprpriority = 9

[State 1102,asp ]
type = AssertSpecial
trigger1 = time > 0
flag = noshadow

[State 1102,ex ]
type = Explod
trigger1 = timemod = 1,0
anim = 1106
pos = 10,0
bindtime = 2
removetime = 1
scale = .5,.5
sprpriority = 7

[State 1102,random1Y ]
type = Varrandom
trigger1 = timemod = 1,0
v =  1
range = -3,-6

[State 1102,random2X ]
type = Varrandom
trigger1 = timemod = 1,0
v =  2
range = 2,0

[State 1102,random3size ]
type = Varrandom
trigger1 = timemod = 1,0
v =  3
range = 2,4

[State 1102,explod! ]
type = Explod
trigger1 = (timemod = 1,0) && (numexplod(1102) <= 35)
anim = 7005
ID = 1151
vel = 0,var(1)*.2
pos = 0,-4
random = 14,0
scale = .7*(var(3)),.7*(var(3))
sprpriority = 7
ownpal = 1

[State 1102,after ] 
type = null;Afterimage 
trigger1 = time = 0
time = 999
length = 7
palcolor = 1
palbright = 60,10,0
palcontrast = 255,125,105
palpostbright = 50,10,0
paladd = 0,0,0
palmul = .70,.55,.50
timegap = 1
framegap = 1
trans = add

[State 1102,nohit ]
type = NotHitBy
trigger1 = time > 0
value = SCA,AA,AT

[State 1101,des ]
type = destroyself
trigger1 = parent,numprojID(1100) = 0

[Statedef 1103]
type = S
movetype = A
physics = N
ctrl = 0
anim = 8888
velset = 7,0
sprpriority = 9

[State 1103,sn ]
type = PlaySnd
trigger1 = timemod = 5,2
value = 1000,0

[State 1100,pj ]
type = Projectile
trigger1 = timemod = 5,2
ProjID = 1100
projanim = 1108
projremovetime = 30
projremove = 0
projscale = .1,1
velocity = 0,0
projpriority = 4
projsprpriority = 8
offset = 0,0
attr = S,SP
hitflag = MAFPD
guardflag = MA 
animtype = Medium
air.animtype = Medium
damage = 20,1
pausetime = 0,0
sparkno = 2
sparkxy = 0,-20
hitsound = S1100,1
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 27
ground.hittime = 28
ground.velocity = -6,0
air.velocity = -3,-2
getpower = 4,1
givepower = 1,4
palfx.time = 27      
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1 

[State 1100,pj ]
type = Projectile
trigger1 = (timemod = 7,2) && (random < 500)
ProjID = 1100
projanim = 1108
projremovetime = 30
projremove = 0
projscale = .3,1
velocity = 0,0
projpriority = 4
projsprpriority = 8
offset = 0,0
attr = S,SP
hitflag = MAFPD
guardflag = MA 
animtype = Medium
air.animtype = Medium
damage = 40,1
pausetime = 0,0
sparkno = 2
sparkxy = 0,-20
hitsound = S1000,0
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 27
ground.hittime = 28
ground.velocity = -6,0
air.velocity = -3,-2
getpower = 4,1
givepower = 1,4
palfx.time = 27      
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1 

[State 1102,ex ]
type = Explod
trigger1 = timemod = 5,2
anim = 3101
pos = -6,-10
bindtime = 1
removetime = -2
scale = .2,1
sprpriority = 7

[State 1102,asp ]
type = AssertSpecial
trigger1 = time > 0
flag = noshadow

[State 1102,ex ]
type = Explod
trigger1 = timemod = 1,0
anim = 1107
pos = 0,0
bindtime = 2
removetime = 19
scale = (parentdist X/75),.7
sprpriority = 7

[State 1102,nohit ]
type = NotHitBy
trigger1 = time > 0
value = SCA,AA,AT

[State 1101,des ]
type = destroyself
trigger1 = time = 16

[Statedef 1113]
type = S
movetype = A
physics = N
ctrl = 0
anim = 8888
velset = 12,0
sprpriority = 9

[State 1103,sn ]
type = PlaySnd
trigger1 = timemod = 3,2
value = 1000,0

[State 1100,pj ]
type = Projectile
trigger1 = timemod = 3,2
ProjID = 1100
projanim = 1108
projremovetime = 30
projremove = 0
projscale = .1,1
velocity = 0,0
projpriority = 4
projsprpriority = 8
offset = 0,0
attr = S,SP
hitflag = MAFPD
guardflag = MA 
animtype = Medium
air.animtype = Medium
damage = 20,1
pausetime = 0,0
sparkno = 2
sparkxy = 0,-20
hitsound = S1100,1
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 27
ground.hittime = 28
ground.velocity = -9,0
air.velocity = -5,-2
getpower = 4,1
givepower = 1,4
palfx.time = 27      
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1 

[State 1100,pj ]
type = Projectile
trigger1 = (timemod = 5,2) && (random < 500)
ProjID = 1100
projanim = 1108
projremovetime = 30
projremove = 0
projscale = .3,1
velocity = 0,0
projpriority = 4
projsprpriority = 8
offset = 0,0
attr = S,SP
hitflag = MAFPD
guardflag = MA 
animtype = Medium
air.animtype = Medium
damage = 40,1
pausetime = 0,0
sparkno = 2
sparkxy = 0,-20
hitsound = S1000,0
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 27
ground.hittime = 28
ground.velocity = -9,0
air.velocity = -5,-2
getpower = 4,1
givepower = 1,4
palfx.time = 27      
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1 

[State 1102,ex ]
type = Explod
trigger1 = timemod = 3,2
anim = 3101
pos = -6,-10
bindtime = 1
removetime = -2
scale = .2,1
sprpriority = 7

[State 1102,asp ]
type = AssertSpecial
trigger1 = time > 0
flag = noshadow

[State 1102,ex ]
type = Explod
trigger1 = timemod = 1,0
anim = 1107
pos = 0,0
bindtime = 2
removetime = 19
scale = (parentdist X/75),.7
sprpriority = 7

[State 1102,nohit ]
type = NotHitBy
trigger1 = time > 0
value = SCA,AA,AT

[State 1101,des ]
type = destroyself
trigger1 = time = 16

[Statedef 1110]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1100
poweradd = 115
velset = 0,0

[State 1100, end]
type = ChangeState
trigger1 = (time = [7,20]) && (command != "holdy")
value = 11101

[State 1100, end]
type = ChangeState
trigger1 = time = 20
value = 11001

[Statedef 11101]
type = S
movetype = A
physics = S
ctrl = 0
anim = 11001
velset = 0,0

[State 1000,snd ]
type = PlaySnd
trigger1 = Time = 0
value = 1100,0
volume = 255

[State 1000,snd ]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1100,1
volume = 255

[State 1100, FX 1]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "FX 1100"
ID = 1100
pos = 0,-10
stateno = 1101
ownpal = 1

[State 1000,varsett ]
type = VarSet
trigger1 = projhit(1102) = 1
v =  1
value = 1

[State 1100, FX 1]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "EFFETTI DI POLVERE E VARI"
ID = 1100
pos = 30,0
stateno = 1112
ownpal = 1
size.xscale = .7
size.yscale = .9

[State 1100,pj ]
type = Projectile
trigger1 = AnimElem = 3
ProjID = 1100
projanim = 1102
projhitanim = 1105
projremanim = 1105
projcancelanim = 1105
projremovetime = 70
projscale = .7,.9
velocity = 5,0
projpriority = 4
projsprpriority = 8
offset = 20,0
attr = S,SP
hitflag = MAFPD
guardflag = MA 
animtype = Medium
air.animtype = Medium
damage = 70,3
pausetime = 0,0
sparkno = 2
sparkxy = 0,-20
hitsound = S1000,0
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 27
ground.hittime = 28
ground.velocity = -6,0
air.velocity = -3,-2
getpower = 4,1
givepower = 1,4
palfx.time = 27      
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1 


[State 1100, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1112]
type = S
movetype = A
physics = N
ctrl = 0
anim = 11020
velset = 5,0
sprpriority = 9

[State 1102,asp ]
type = AssertSpecial
trigger1 = time > 0
flag = noshadow

[State 1102,ex ]
type = Explod
trigger1 = timemod = 1,0
anim = 1106
pos = 10,0
bindtime = 2
removetime = 1
scale = .7,.5
sprpriority = 7


;The following code was copy-pasted from Kei.
;Hey,i deserve the rights to steal from my own chars! :D
[State 1102,random1Y ]
type = Varrandom
trigger1 = timemod = 1,0
v =  1
range = -3,-6

[State 1102,random2X ]
type = Varrandom
trigger1 = timemod = 1,0
v =  2
range = 4,0

[State 1102,random3size ]
type = Varrandom
trigger1 = timemod = 1,0
v =  3
range = 2,4

[State 1102,explod! ]
type = Explod
trigger1 = (timemod = 1,0) && (numexplod(1102) <= 35)
anim = 7005
ID = 1151
vel = 0,var(1)*.4
pos = 10,0
random = 20,0
scale = .7*(var(3)),.7*(var(3))
sprpriority = 7
ownpal = 1

[State 1102,after ] 
type = null;Afterimage 
trigger1 = time = 0
time = 999
length = 7
palcolor = 1
palbright = 60,10,0
palcontrast = 255,125,105
palpostbright = 50,10,0
paladd = 0,0,0
palmul = .70,.55,.50
timegap = 1
framegap = 1
trans = add

[State 1102,nohit ]
type = NotHitBy
trigger1 = time > 0
value = SCA,AA,AT

[State 1101,des ]
type = destroyself
trigger1 = parent,numprojID(1100) = 0


[Statedef 1150]
type = A
movetype = A
physics = N
poweradd = 100
ctrl = 0
anim = 1150
velset = 0,0
juggle = 3


[State 1150,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1150,1
volume = 255

[State 1150,sn ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1150,0
volume = 255

[State 1150,varsett ]
type = VarSet
trigger1 = movehit = 1
v =  1
value = 1

[State 1150,ex ]
type = Explod
trigger1 = (time > 2) && (timemod = 5,0)
anim = 1151
ID = 1150
pos = 0,0
bindtime = -1
removetime = -2
sprpriority = 4
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1000,hitdef ]
type = HitDef
trigger1 = Time = 0
attr = A,SA
hitflag = MAF
guardflag = MA 
animtype = Hard
air.animtype = Hard
priority = 5
damage = 90,7
pausetime = 10,11
sparkno = 2
sparkxy = 0,-50
hitsound = 5,3
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 21
ground.hittime = 26
ground.velocity = -6,-4
air.velocity = -4,-3
ground.cornerpush.veloff = -15
air.cornerpush.veloff = -8
getpower = 4,1
givepower = 1,4
palfx.time = 40       
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1  
fall = 1

[State 1150,vel ]
type = VelSet
trigger1 = AnimElem = 2
x = 12
y = 7


[State 1150, state]
type = ChangeState
trigger1 = pos Y >= 19
value = 1151

[Statedef 1151]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1152
velset = 5,0

[State 1151,re ]
type = RemoveExplod
trigger1 = time = 0
ID = 1150

[State 1151,fn ]
type = Explod
trigger1 = (time = 0) && (prevstateno != 1202)
anim = 1153
ID = 1152
pos = 0,0
sprpriority = 6

[State 1151,èps ]
type = PosSet
trigger1 = time = 0
y = 0


[State 1151, state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1160]
type = A
movetype = A
physics = N
poweradd = 100
ctrl = 0
anim = 1150
velset = 0,0
juggle = 3

[State 1150,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1150,1
volume = 255

[State 1150,sn ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1150,0
volume = 255

[State 1150,varsett ]
type = VarSet
trigger1 = movehit = 1
v =  1
value = 1

[State 1150,ex ]
type = Explod
trigger1 = (time > 4) && (timemod = 3,0)
anim = 1151
ID = 1150
pos = 0,0
bindtime = -1
removetime = -2
sprpriority = 4
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1000,hitdef ]
type = HitDef
trigger1 = Time = 0
attr = A,SA
hitflag = MAF
guardflag = MA 
animtype = Hard
air.animtype = Hard
priority = 5
damage = 70,7
pausetime = 10,11
sparkno = 2
sparkxy = 0,-50
hitsound = 5,3
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 21
ground.hittime = 26
ground.velocity = -6,-4
air.velocity = -4,-3
ground.cornerpush.veloff = -15
air.cornerpush.veloff = -8
getpower = 4,1
givepower = 1,4
palfx.time = 40       
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1  
fall = 1

[State 1150,vel ]
type = VelSet
trigger1 = AnimElem = 2
x = 16
y = 9


[State 1150, state]
type = ChangeState
trigger1 = pos Y >= 19
value = 1151


[Statedef 1200]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1200
velset = 0,0
poweradd = 100
juggle = 15
sprpriority = 2

[State 1200,pa1 ]
type = PosAdd
trigger1 = animelem = 2
x = 35

[State 1200,pa1 ]
type = PosAdd
trigger1 = animelem = 4
x = 12

[State 1200,pa1 ]
type = PosAdd
trigger1 = animelem = 5
x = 14

[State 1200,pa1 ]
type = PosAdd
trigger1 = animelem = 6
x = 16

[State 1200,pa1 ]
type = PosAdd
trigger1 = animelem = 7
trigger2 = animelem = 8
x = 8

[State 1200,varsett ]
type = VarSet
trigger1 = movehit = 1
v =  1
value = 1

[State 1200,wh ]
type = Width
trigger1 = animelem = 1,>0
value = 10

[State 1200,hitdef ]
type = HitDef
trigger1 = Time = 0
attr = S,SA
hitflag = MAF
guardflag = L 
animtype = Hard
air.animtype = Hard
priority = 7
damage = 80,7
pausetime = 12,13
sparkno = 3
sparkxy = 0,-80
hitsound = 5,3
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 21
ground.hittime = 21
ground.velocity = -8,0
air.velocity = -3,-2
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -1
getpower = 30,1
givepower = 1,0
palfx.time = 40       
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1  
envshake.time = 3
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 2

[State 1200,A ]
type = NotHitBy
trigger1 = time = 0
value = SCA,NA,SA
time = 8

[State 1200,sn ]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3000,1
volume = 255

[State 1200, v]
type = VarSet
trigger1 = time = 0
v = 20
value = 0

[State 1200, v]
type = VarSet
trigger1 = command = "fallen_leafB"
v = 20
value = 1

[State 1200, v]
type = VarSet
trigger1 = command = "fallen_leafAB"
v = 20
value = 5

[State 1200, v]
type = VarSet
trigger1 = command = "fire_x"
v = 20
value = 10

[State 1200, v]
type = VarSet
trigger1 = command = "fire_y"
v = 20
value = 11

[State 1200,e2 ]
type = Explod
trigger1 = AnimElem = 6
anim = 1209
ID = 1200
sprpriority = 1
removeongethit = 1
bindtime = 5
ownpal = 1

[State 1200,e2 ]
type = Explod
trigger1 = AnimElem = 6
anim = 1001
pos = 0,-20
ID = 1200
sprpriority = 3
removeongethit = 1
bindtime = 5
ownpal = 1


[State 1200,c ]
type = ChangeState
trigger1 = (Var(20) = 1) && (animelem = 7)
value = 1201

[State 1200,c ]
type = ChangeState
trigger1 = (Var(20) = 5) && (animelem = 7)
value = 1205

[State 1200,c ]
type = ChangeState
trigger1 = (Var(20) = 10) && (animelem = 7)
value = 1100

[State 1200,c ]
type = ChangeState
trigger1 = (Var(20) = 11) && (animelem = 7)
value = 1110

[State 1200, state]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1201]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1201
velset = 6,0
juggle = 2

[State 1201,varsett ]
type = VarSet
trigger1 = movehit = 1
v =  1
value = 1

[State 1201,hitdef ]
type = HitDef
trigger1 = Time = 0
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
priority = 7
damage = 60,7
pausetime = 12,13
sparkno = 3
sparkxy = 0,-60
hitsound = 5,3
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 21
ground.hittime = 26
ground.velocity = -8,0
air.velocity = -3,-2
ground.cornerpush.veloff = -15
air.cornerpush.veloff = -8
getpower = 30,1
givepower = 1,0
palfx.time = 40       
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1  
envshake.time = 3
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 2

[State 1201, p]
type = PosAdd
trigger1 = AnimElem = 3
x = 10

[State 1201,sn ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000,1
volume = 255

[State 1200,e2 ]
type = Explod
trigger1 = AnimElem = 3
anim = 1208
ID = 1201
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 1200, v]
type = VarSet
trigger1 = command = "fallen_leafC"
v = 20
value = 2

[State 1200,c ]
type = ChangeState
trigger1 = (Var(20) = 2) && (animelem = 3,2)
value = 1202

[State 1201, state]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1202]
type = S
movetype = A
physics = N
ctrl = 0
anim = 1202
velset = 4,-5
juggle = 2

[State 1202,varsett ]
type = VarSet
trigger1 = movehit = 1
v =  1
value = 1

[State 1202,v ]
type = PlaySnd
trigger1 = Time = 0
value = 1100,1
volume = 255

[State 1202,v ]
type = PlaySnd
trigger1 = Time = 0
value = 1100,0
volume = 255

[State 1202,hitdef ]
type = HitDef
trigger1 = Time = 0
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
priority = 7
damage = 60,7
pausetime = 12,13
sparkno = 3
sparkxy = 0,-60
hitsound = 5,4
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 21
ground.hittime = 26
ground.velocity = -2,12
air.velocity = -2,12
ground.cornerpush.veloff = -15
air.cornerpush.veloff = -8
getpower = 30,1
givepower = 1,0
palfx.time = 40       
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1  
envshake.time = 3
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 2
fall = 1
fall.recover = 0
fall.envshake.time = 12
fall.envshake.freq = 60
fall.envshake.ampl = -4
fall.envshake.phase = 2


[State 1200,e2 ]
type = Explod
trigger1 = AnimElem = 3
anim = 1205
ID = 1202
bindtime = -1
sprpriority = 5
removeongethit = 1


[State 1201, ]
type = VelAdd
trigger1 = time > 0
y = .6

[State 1201, state]
type = ChangeState
trigger1 = time > 5
trigger1 = pos Y >= 0
value = 1151


[Statedef 1205]
type = S
movetype = A
physics = S
ctrl = 0
anim = 12051
velset = 6,0
juggle = 2

[State 1200, v]
type = VarSet
trigger1 = command = "fire_x"
v = 20
value = 10

[State 1200, v]
type = VarSet
trigger1 = command = "fire_y"
v = 20
value = 11

[State 1200,wh ]
type = Width
trigger1 = animelem = 1,>0
value = 10

[State 1205,vs ]
type = VelSet
trigger1 = time < 12
x = 6

[State 1201,varsett ]
type = VarSet
trigger1 = movehit = 1
v =  1
value = 1

[State 1201,hitdef ]
type = HitDef
trigger1 = (Animelem = 4,>0) && (Timemod = 1,0)
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
priority = 7
damage = 10,3
pausetime = 5,5
sparkno = 2
sparkxy = -25,-86
hitsound = 5,3
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 21
ground.hittime = 26
ground.velocity = -12,0
air.velocity = -3,-2
ground.cornerpush.veloff = -14
air.cornerpush.veloff = -7
getpower = 30,1
givepower = 1,0
palfx.time = 40       
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1  
envshake.time = 3
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 2

[State 1201, p]
type = PosAdd
trigger1 = AnimElem = 3
x = 10

[State 1201,sn ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000,1
volume = 255

[State 1200,e2 ]
type = Explod
trigger1 = animelem = 4
anim = 1211
ID = 1206
sprpriority = 5
removetime = -1
removeongethit = 1
bindtime = -1
ignorehitpause = 1
ownpal = 1

[State 1200,ex ]
type = RemoveExplod
trigger1 = animelem = 5
ID = 1206

[State 1200,e2 ]
type = Explod
trigger1 = AnimElem = 5
anim = 12110
ID = 1205
sprpriority = 5
removeongethit = 1
bindtime = 1

[State 1200,e2 ]
type = Explod
trigger1 = time = 0
anim = 1210
ID = 1205
sprpriority = 5
scale = .5,.5
ownpal = 1

[State 1201, state]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 1200,c ]
type = ChangeState
trigger1 = (Var(20) = 10) && (animelem = 5)
value = 1100

[State 1200,c ]
type = ChangeState
trigger1 = (Var(20) = 11) && (animelem = 5)
value = 1110


[Statedef 1250]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1250
poweradd = 100
velset = 0,0

[state 1250,p]
type = posadd
trigger1 = animtime = 0
x = 20

[State 1250,sn ]
type = PlaySnd
trigger1 = time = 5
value = 1000,0
volume = 255

[State 1250,ex ]
type = Explod
trigger1 = time = 0
anim = 1252
ID = 1252
bindtime = -1
sprpriority = 7
ownpal = 1
removeongethit = 1

[State 1250,hitdef ]
type = HitDef
trigger1 = Time = 0
attr = S,SA
hitflag = MAF
guardflag = MA 
animtype = Hard
air.animtype = Hard
priority = 7
damage = 50,7
pausetime = 8,6
sparkno = 2
sparkxy = 0,-30
hitsound = 5,4
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 21
ground.hittime = 26
ground.velocity = -3,0
air.velocity = -4,-2
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
getpower = 4,1
givepower = 1,4
palfx.time = 40       
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1  

[State 1250, state]
type = ChangeState
trigger1 = animtime = 0
value = 1251

[Statedef 1251]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1251
poweradd = 100
velset = 0,-4
juggle = 12


[State 1250,ex ]
type = Explod
trigger1 = time = 0
anim = 1253
ID = 1252
bindtime = 12
sprpriority = 8
ownpal = 1
removeongethit = 1
pos = -10,0

[State 1251,v ]
type = VelAdd
trigger1 = time > 6
y = .7

[State 1250,hitdef ]
type = HitDef
trigger1 = AnimElem =1
attr = A,SA
hitflag = MAF
guardflag = MA 
animtype = Hard
air.animtype = Hard
priority = 7
damage = 40,7
pausetime = 8,6
sparkno = 2
sparkxy = 0,-55
hitsound = 5,4
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 21
ground.hittime = 26
ground.velocity = -3,-8
air.velocity = -4,-7
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
getpower = 4,1
givepower = 1,4
palfx.time = 40       
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1  
fall = 1
fall.recover = 1
fall.recovertime = 12


[State 1250,hitdef ]
type = HitDef
trigger1 = AnimElem =2
attr = A,SA
hitflag = MAF
guardflag = MA 
animtype = Hard
air.animtype = Hard
priority = 7
damage = 30,7
pausetime = 8,6
sparkno = 2
sparkxy = 0,-80
hitsound = 5,4
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 21
ground.hittime = 26
ground.velocity = -3,-5
air.velocity = -4,-4
ground.cornerpush.veloff = -15
air.cornerpush.veloff = -8
getpower = 4,1
givepower = 1,4
palfx.time = 40       
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1  
fall = 1
fall.recover = 1
fall.recovertime = 12


[State 1250,varsett ]
type = VarSet
trigger1 = movehit = 1
v =  1
value = 1

[State 1251, state]
type = ChangeState
trigger1 = (pos Y >= 0) && (time > 5)
value = 1252

[Statedef 1252]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1152
poweradd = 100
velset = 0,0


[State 1252,p ]
type = PosSet
trigger1 = time = 0
y = 0

[State 1251, state]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 1260]
type = S
movetype = A
physics = S
ctrl = 0
anim = 1250
poweradd = 100
velset = 0,0

[state 1250,p]
type = posadd
trigger1 = animtime = 0
x = 20

[State 1250,sn ]
type = PlaySnd
trigger1 = time = 5
value = 1000,0
volume = 255

[State 1250,ex ]
type = Explod
trigger1 = time = 0
anim = 1252
ID = 1252
bindtime = -1
sprpriority = 7
ownpal = 1
removeongethit = 1

[State 1250,hitdef ]
type = HitDef
trigger1 = Time = 0
attr = S,SA
hitflag = MAF
guardflag = MA 
animtype = Hard
air.animtype = Hard
priority = 7
damage = 50,7
pausetime = 8,6
sparkno = 2
sparkxy = 0,-30
hitsound = 5,4
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 21
ground.hittime = 26
ground.velocity = -3,0
air.velocity = -4,-2
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
getpower = 4,1
givepower = 1,4
palfx.time = 40       
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1  

[State 1250, state]
type = ChangeState
trigger1 = animtime = 0
value = 1261

[Statedef 1261]
type = A
movetype = A
physics = N
ctrl = 0
anim = 1261
poweradd = 100
velset = 0,-7
juggle = 12


[State 1250,ex ]
type = Explod
trigger1 = time = 0
anim = 1253
ID = 1252
bindtime = 12
sprpriority = 8
ownpal = 1
removeongethit = 1
pos = -10,0

[State 1251,v ]
type = VelAdd
trigger1 = time > 6
y = .7

[State 1250,hitdef ]
type = HitDef
trigger1 = AnimElem =1
attr = A,SA
hitflag = MAF
guardflag = MA 
animtype = Hard
air.animtype = Hard
priority = 7
damage = 50,7
pausetime = 8,6
sparkno = 2
sparkxy = 0,-55
hitsound = 5,4
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 21
ground.hittime = 26
ground.velocity = -3,-8
air.velocity = -4,-7
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
getpower = 4,1
givepower = 1,4
palfx.time = 40       
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1  
fall = 1
fall.recover = 1
fall.recovertime = 12


[State 1250,hitdef ]
type = HitDef
trigger1 = AnimElem =2
attr = A,SA
hitflag = MAF
guardflag = MA 
animtype = Hard
air.animtype = Hard
priority = 7
damage = 60,7
pausetime = 8,6
sparkno = 2
sparkxy = 0,-80
hitsound = 5,4
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 21
ground.hittime = 26
ground.velocity = -3,-5
air.velocity = -4,-4
ground.cornerpush.veloff = -15
air.cornerpush.veloff = -8
getpower = 4,1
givepower = 1,4
palfx.time = 40       
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1  
fall = 1
fall.recover = 1
fall.recovertime = 12


[State 1250,varsett ]
type = VarSet
trigger1 = movehit = 1
v =  1
value = 1

[State 1251, state]
type = ChangeState
trigger1 = (pos Y >= 0) && (time > 5)
value = 1252












;-|DESPERATION MOVES|-

[Statedef 3000]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3000
velset = 0,0

[State 3000,p ]
type = PowerAdd
triggerall = time = 0
trigger1 = prevstateno = [1200,1205]
trigger2 = prevstateno = 1250
trigger3 = prevstateno = 1260
value = -1000

[State 3000,p ]
type = PalFX
triggerall = (timemod = 2,0) && (time = [5,36])
trigger1 = prevstateno = [1200,1205]
trigger2 = prevstateno = 1250
trigger3 = prevstateno = 1260
time = 1
add = 255,255,255
sinadd = -100,-100,-100,3
ignorehitpause = 1

[State 3000, super]
type = SuperPause
trigger1 = AnimElem = 3
anim = S7100
sound = S750,2
pos = -15,-85
poweradd = -1000
p2defmul = 1
movetime = 30

[State 3000,s2 ]
type = Explod
trigger1 = AnimElem = 3
anim = 7101
pos = -15,-85
supermove = 1
sprpriority = -3
ownpal = 1


[State 3000,sn ]
type = PlaySnd
trigger1 = Time = 0
value = 3001,0
volume = 255



[State 3000,superB ]
type = EnvColor
trigger1 = AnimElem = 3
value = 0,0,0
time = 30
under = 1

[State 3000,state ]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001
ctrl = 0

[Statedef 3001]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3003
velset = 15,0
juggle = 15


[State 3001,snd ]
type = PlaySnd
trigger1 = Time = 0
value = 3000,2
volume = 255


[State 3001,Hit ]
type = HitDef
trigger1 = Time = 0
attr = S,HA
hitflag = MA
guardflag = MA
animtype = Hard
priority = 7,Hit
damage = 50,12
pausetime = 3,120
guard.pausetime = 4,0
sparkno = 3
guard.sparkno = 40
sparkxy = 0,-50
hitsound = 5,3
guardsound = 6,0
ground.type = Low
air.type = High
ground.slidetime = 10
ground.hittime = 120
ground.velocity = -4,0
sprpriority = 5
p1stateno = 3003
forcestand = 1
snap = 60,0
kill = 0
guard.kill = 0
getpower = 0,0
givepower = 0,0
envshake.time = 12
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 4



[State 3001,state ]
type = ChangeState
trigger1 = Time = 8
value = 3002

[Statedef 3002]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3006
velset = 12,0

[State 3002,mul ]
type = VelMul
trigger1 = time > 0
x = .85

[State 3001,state ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3003]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3005
velset = 3,0

[State 3003,mul ]
type = VelMul
trigger1 = time > 20
x = .85

[State 3003,push ]
type = PlayerPush
trigger1 = time > 0
value = 0

[State 3003,POS ]
type = PosAdd
trigger1 = AnimTime = 0
x = 110

[State 3001,state ]
type = ChangeState
trigger1 = AnimTime = 0
value = 3004

[Statedef 3004]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3001
velset = 0,0

[State 3000,sn ]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3001,1
volume = 255

[State 1000,varsett ]
type = VarSet
triggerall = numhelper(3005) = 1
trigger1 = helper(3005),movehit = 1
v =  1
value = 1

[State 3004,helper ]
type = Helper
trigger1 = Time = 0
name = "Ora morirai hehehehhe"
ID = 3005
postype = p2
stateno = 3005
ownpal = 1

[State 3004,state ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3005]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3004
velset = 0,0

[State 3005,state ]
type = ChangeState
trigger1 = parent,AnimElem = 5
value = 3006

[Statedef 3006]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3002
velset = 0,0
sprpriority = 9



[State 3006,snd ]
type = PlaySnd
trigger1 = Time = 0
value = 3000,0
volume = 255

[State 3006,ex ]
type = Explod
trigger1 = animelem = 3
anim = 3101
pos = 0,-5
bindtime = -1
scale = 0.5, 2
sprpriority = 7

[State 3006,ex ]
type = Explod
trigger1 = animelem = 5
anim = 3101
pos = 0,-5
bindtime = -1
scale = 1.3, 1.3
sprpriority = 7

[State 3006,ex ]
type = Explod
trigger1 = animelem = 8
anim = 3101
pos = 0,-5
bindtime = -1
scale = 2, 1
sprpriority = 7

[State 3006,Hit ]
type = HitDef
trigger1 = Time = 0
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = DiagUp
priority = 7,Hit
damage = 200,0
sparkno = 3
guard.sparkno = 40
sparkxy = 0,-50
hitsound = 5,4
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 10
ground.hittime = 5
ground.velocity = -3,-9
air.velocity = -3,-9
fall = 1
fall.recover = 0
fall.damage = 20
getpower = 0,0
givepower = 0,0
p2facing = 1
palfx.time = 60      
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1 
envshake.time = 12
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 4
fall.envshake.time = 21
fall.envshake.freq = 60
fall.envshake.ampl = -4
fall.envshake.phase = 7

[State 3006,des ]
type = DestroySelf
trigger1 = AnimTime = 0




[Statedef 3100]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3100
velset = 0,0
sprpriority = 2 
juggle = 10

[State 3000,p ]
type = PowerAdd
triggerall = time = 0
trigger1 = prevstateno = [1200,1205]
trigger2 = prevstateno = 1250
trigger3 = prevstateno = 1260
value = -1000

[State 3000,p ]
type = PalFX
triggerall = (timemod = 2,0) && (time < 31)
trigger1 = prevstateno = [1200,1205]
trigger2 = prevstateno = 1250
trigger3 = prevstateno = 1260
time = 1
add = 255,255,255
sinadd = -100,-100,-100,3
ignorehitpause = 1


[State 3010,nihit ]
type = NotHitBy
trigger1 = Time = 0
value = SCA,NA,SA
time = 40

[State 3100,sn1 ]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3000,1
volume = 255

[State 3100,varsett ]
type = VarSet
trigger1 = movehit = 1
v =  1
value = 1

[State 3100,sn1 ]
type = PlaySnd
trigger1 = AnimElem = 1,33
value = 3100,0
volume = 255

[State 3000,s2 ]
type = Explod
trigger1 = Time = 0
anim = 7101
pos = 15,-65
supermove = 1
sprpriority = -3
ownpal = 1

[State 3100, super]
type = SuperPause
trigger1 = Time = 0
anim = S7100
sound = S750,2
pos = 15,-65
poweradd = -1000
p2defmul = 1
movetime = 30

[State 3101,ex ]
type = Explod
trigger1 = AnimElem = 3
anim = 3101 
ID = 3101
pos = 0,-5
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 3101,ex ]
type = Explod
trigger1 = AnimElem = 4
anim = 3102
ID = 3102
pos = -20,0
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 3101,HIT ]
type = HitDef
trigger1 = time = 0
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Up
air.animtype = Up
priority = 8
damage = 200,10
pausetime = 5,6
guard.pausetime = 10,10
sparkno = 3
sparkxy = 0,-70
hitsound = 5,4
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 20
ground.hittime = 19
air.hittime = 20
ground.velocity = 0,-15
guard.velocity = -6
air.velocity = 0,-15
airguard.velocity = -6,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -8
airguard.cornerpush.veloff = -8
down.bounce = 3
fall = 1
snap = 40,0
fall.recover = 0
getpower = 0,0
givepower = 20,20
palfx.time = 40       
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1 
envshake.time = 12
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 4
p1stateno = 3101


[State 3100,superB ]
type = EnvColor
trigger1 = Time = 0
value = 0,0,0
time = 30
under = 1

[State 3100,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3101]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3103
velset = 0,0
sprpriority = 2 

[State 3101,varsett ]
type = VarSet
trigger1 = movehit = 1
v =  1
value = 1

[State 3101,varsettC ]
type = VarSet
trigger1 = time = 0
v =  5
value = 0

[State 3101,varB ]
type = VarSet
trigger1 = command = "FollowUp1"
trigger1 = time < 60
v =  5
value = 1

[State 3101,end ]
type = ChangeState
triggerall = time > 74
triggerall = var(5) = 0
trigger1 = p2dist Y < 100
value = 3102

[State 3101,end ]
type = ChangeState
triggerall = time > 60
triggerall = var(5) = 1
trigger1 = p2dist Y < 100
value = 3103

[State 3101,var ]
type = VarSet
trigger1 = time = 0
v =  2
value = 1

[Statedef 3102]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3104
velset = 0,0
sprpriority = 2
juggle = 5

[State 3102,varsett ]
type = VarSet
trigger1 = movehit = 1
v =  1
value = 1

[State 3102,sn ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000,0
volume = 255

[State 3102,ex ]
type = Explod
trigger1 = AnimElem = 3
anim = 3105
ID = 3102
pos = 16,-37
postype = p1
removetime = -1
supermove = 1
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 3102,ex2 ]
type = RemoveExplod
trigger1 = AnimElem = 4
ID = 3102

[State 3102,ex ]
type = Explod
trigger1 = AnimElem = 4
anim = 1001
ID = 3103
pos = 16,-37
postype = p1
removetime = -2
supermove = 1
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 3102,ex ]
type = Explod
trigger1 = AnimElem = 3
anim = 1153
ID = 3104
pos = -16,-123
vfacing = -1
postype = p1
removetime = -2
supermove = 1
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 3102,HIT ]
type = HitDef
trigger1 = time > 0
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = DiagUp
air.animtype = DiagUp
priority = 8
damage = 40/var(2),0
pausetime = 5,6
guard.pausetime = 10,10
sparkno = 3
sparkxy = -10,-105
hitsound = 5,2
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 20
ground.hittime = 19
air.hittime = 20
ground.velocity = -5,-10
guard.velocity = -6
air.velocity = -5,-10
airguard.velocity = -6,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -8
airguard.cornerpush.veloff = -8
down.bounce = 3
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 20,20
palfx.time = 40       
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1 
envshake.time = 12
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 4

[State 3102,var ]
type = VarAdd
trigger1 = movehit = 1
v =  2
value = 1

[State 3102,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3103]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3106
velset = 0,0
sprpriority = 2

[State 3103,varsett ]
type = VarSet
trigger1 = projhit(3103) = 1
v =  1
value = 1

[State 3103,Aft ]
type = AfterImage
trigger1 = AnimElem = 2
time = 20
length = 20
palcolor = 1
palbright = 40,30,30
palcontrast = 150,120,220
palpostbright = 30,70,30
paladd = 25,15,10
palmul = .85,.75,.65
timegap = 1
framegap = 1
trans = add

[State 3103,res ]
type = VarSet
trigger1 = time = 0
v =  6
value = 0

[State 3103,boh ]
type = VarAdd
trigger1 = AnimElem = 7,7
trigger2 = AnimElem = 7,14
trigger3 = AnimElem = 7,22
v =  6
value = 50


[State 3103,sn ]
type = PlaySnd
trigger1 = AnimElem = 7,1
trigger2 = AnimElem = 7,7
trigger3 = AnimElem = 7,14
trigger4 = AnimElem = 7,22
value = 3000,1
volume = 255

[State 3103,pj ]
type = Projectile
trigger1 = AnimElem = 7,1
trigger2 = AnimElem = 7,8
trigger3 = AnimElem = 7,15
trigger4 = AnimElem = 7,23
ProjID = 3103
projanim = 3107
projremovetime = 18
projremove = 0
velocity = 0,0
projpriority = 7
projsprpriority = 8
offset = var(6),0
projshadow = 0,255,255
attr = S,HP
hitflag = MAFPD
guardflag = MA 
animtype = Medium
air.animtype = Medium
priority = 12
damage = 50,3
pausetime = 0,0
sparkno = -1
sparkxy = 0,-20
hitsound = S1000,0
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 27
ground.hittime = 28
ground.velocity = -8,0
air.velocity = -8,-4
getpower = 0,0
givepower = 1,4
palfx.time = 27      
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1

[State 3103,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



[Statedef 3200]
type = S
movetype = A
physics = S
ctrl = 0
anim = 750
velset = 0,0

[State 3000,p ]
type = PowerAdd
triggerall = time = 0
trigger1 = prevstateno = [1200,1205]
trigger2 = prevstateno = 1250
trigger3 = prevstateno = 1260
value = -1000

[State 3000,p ]
type = PalFX
triggerall = (timemod = 2,0) && (time < 31)
trigger1 = prevstateno = [1200,1205]
trigger2 = prevstateno = 1250
trigger3 = prevstateno = 1260
time = 1
add = 255,255,255
sinadd = -100,-100,-100,3
ignorehitpause = 1

[State 3201,ex ]
type = Explod
trigger1 = (AnimElem = 2,2) && (Time > 31)
removetime = 22
anim = 3101
pos = 0,0
sprpriority = 5
ownpal = 1

[State 3200, super]
type = SuperPause
trigger1 = time = 0
anim = S7100
sound = S750,2
pos = 15,-65
poweradd = -1000
p2defmul = 1
movetime = 30

[State 3200,superB ]
type = EnvColor
trigger1 = time = 0
value = 0,0,0
time = 30
under = 1

[State 3200,s2 ]
type = Explod
trigger1 = time = 0
anim = 7101
pos = 15,-65
supermove = 1
sprpriority = -3
ownpal = 1

[State 3200,end ]
type = ChangeState
trigger1 = (command !="holdx") && (Time > 31)
trigger1 = (command !="holdy") && (time > 31)
trigger2 = time = 150
value = 3201

[Statedef 3201]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3200
velset = 2,0

[State 1000,varsett ]
type = VarSet
trigger1 = projhit(3200) = 1
v =  1
value = 1

[State 3201,ex ]
type = Null
trigger1 = time = [5,25]
trigger1 = timemod = 2,0
anim = 7000
pos = 30,-70
random = 0,40
vel = 8,0
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 3201,ex ]
type = Null
trigger1 = time = [5,25]
trigger1 = timemod = 2,0
anim = 7001
pos = 30,-70
random = 0,60
vel = 12,0
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 3201,ex ]
type = Null;Explod
trigger1 = time = [5,25]
trigger1 = timemod = 2,0
anim = 7002
pos = 30,-70
random = 0,60
vel = 16,0
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 3201,ex ]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 8
trigger3 = AnimElem = 14
anim = 3203
ID = 3200
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 3201, p]
type = Projectile
trigger1 = AnimElem = 2
trigger2 = AnimElem = 8
ProjID = 3200
projanim = 3202
projremove = 0
projremovetime = 10
velocity = 0,0
juggle = 10
projhits = 1
projmisstime = 3
projpriority = 5
projsprpriority = 6
attr = S,HP
hitflag = MAP
guardflag = MA 
animtype = Hard
air.animtype = Hard
damage = 75,3
pausetime = 0,15
sparkno = -1
guard.sparkno = -1
sparkxy = 0,-20
hitsound = S1000,0
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 27
ground.hittime = 28
ground.velocity = -7,0
air.velocity = -7,-2
fall = 0
fall.recover = 0
getpower = 0,0
givepower = 1,4
palfx.time = 27      
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1

[State 3201, p]
type = Projectile
trigger1 = AnimElem = 14
ProjID = 3201
projanim = 3202
projremove = 0
projremovetime = 10
velocity = 0,0
juggle = 10
projhits = 3
projmisstime = 3
projpriority = 5
projsprpriority = 6
attr = S,HP
hitflag = MAP
guardflag = MA 
animtype = Hard
air.animtype = Hard
damage = 100,3
pausetime = 0,1
sparkno = -1
guard.sparkno = -1
sparkxy = 0,-20
hitsound = S1000,0
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 27
ground.hittime = 28
ground.velocity = -7,-5
air.velocity = -7,-2
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 1,4
palfx.time = 27      
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1

[State 3201,slowdown ]
type = Pause
trigger1 = (var(7) = 1) && (timemod = 1,0)
time = 1

[State 3201,vs ]
type = VarSet
trigger1 = projhit3201 = 1
v =  7
value = 1

[State 3201,vs ]
type = VarSet
trigger1 = time = 0
v =  7
value = 0



[State 3201,ex ]
type = Explod
trigger1 = projguarded(3200) = 1
anim = F40
pos = 0,-60
postype = p2
ontop = 1
ownpal = 1

[State 3201,ex ]
type = Explod
trigger1 = projhit(3200) = 1
anim = F3
pos = 0,-60
postype = p2
ontop = 1
ownpal = 1

[State 3200,vo ]
type = PlaySnd
trigger1 = time = 0
value = 3001,1
volume = 255

[State 3200,vo ]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 8
trigger3 = AnimElem = 14
value = 1000,0
volume = 255

[State 3201,ed ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-|SUPER DESPERATION MOVES|-

[Statedef 3010]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3000
velset = 0,0

[State 3010, super]
type = SuperPause
trigger1 = AnimElem = 3
anim = S7100
sound = S7100,0
pos = -15,-85
poweradd = -2000
p2defmul = 1
movetime = 30

[State 3000,s2 ]
type = Explod
trigger1 = AnimElem = 3
anim = 7101
pos = -15,-85
supermove = 1
sprpriority = -3
ownpal = 1

[State 3010,sn ]
type = PlaySnd
trigger1 = Time = 0
value = 3001,0
volume = 255

[State 3010,invert ]
type = BGPalFX
trigger1 = AnimElem = 3
time = 64
add = 0,0,0
mul = 256,256,256
color = 256
invertall = 1

[State 3010,superB ]
type = EnvColor
trigger1 = AnimElem = 3
value = 0,0,0
time = 30
under = 1

[State 3010,state ]
type = ChangeState
trigger1 = AnimTime = 0
value = 3011
ctrl = 0


[Statedef 3011]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3003
velset = 15,0
juggle = 5

[State 3011,vel ]
type = VelSet
trigger1 = time < 12
x = 15


[State 3011,snd ]
type = PlaySnd
trigger1 = Time = 0
value = 3000,1
volume = 255


[State 3011,Hit ]
type = HitDef
trigger1 = Time = 0
attr = S,HA
hitflag = MA
guardflag = MA
animtype = Hard
priority = 7,Hit
damage = 70,12
pausetime = 3,120
guard.pausetime = 4,0
sparkno = 3
guard.sparkno = 40
sparkxy = 0,-50
hitsound = 5,3
guardsound = 6,0
ground.type = Low
air.type = High
ground.slidetime = 10
ground.hittime = 120
ground.velocity = -4,0
sprpriority = 5
p1stateno = 3013
forcestand = 1
snap = 60,0
kill = 0
guard.kill = 0
getpower = 0,0
givepower = 0,0
envshake.time = 12
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 4
palfx.time = 90      
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1 

[State 3011,explos ]
type = Explod
trigger1 = time = 0
anim = 3202
pos = 80,20
facing = -1
postype = p1
ID = 3011
bindtime = -1
random = 0,0
sprpriority = 5
ownpal = 1


[State 3011,state ]
type = ChangeState
trigger1 = Time = 12
value = 3012

[Statedef 3012]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3006
velset = 12,0

[State 3002,mul ]
type = VelMul
trigger1 = time > 0
x = .85

[State 3011,state ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3013]
type = S
movetype = A
physics = N
ctrl = 0
anim = 3005
velset = 3,0
sprpriority = 4

[State 3011,varsett ]
type = VarSet
trigger1 = Time = 0
v =  1
value = 1


[State 3010,invert ]
type = BGPalFX
trigger1 = AnimElem = 3
time = 90
add = 0,0,0
mul = 256,256,256
color = 256
invertall = 1


[State 3013,mul ]
type = VelMul
trigger1 = time > 20
x = .85

[State 3013,push ]
type = PlayerPush
trigger1 = time > 0
value = 0


[State 3013,POS ]
type = PosAdd
trigger1 = AnimTime = 0
x = 110

[State 3011,state ]
type = ChangeState
trigger1 = AnimTime = 0
value = 3014

[Statedef 3014]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3001
velset = 0,0

[State 3014,varsett ]
type = VarSet
triggerall = numhelper(3005) = 1
trigger1 = helper(3005),movehit = 1
v =  1
value = 1

[State 3000,sn ]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3001,1
volume = 255

[State 3013,provaB ]
type = TargetLifeAdd
trigger1 = timemod = 6,0
value = -7
kill = 0


[State 3013,snd ]
type = PlaySnd
trigger1 = timemod = 6,0
value = 1000,0
volume = 255


[State 3013,hit ]
type = HitAdd
trigger1 = timemod = 6,0
value = 1


[State 3013,prova ]
type = Explod
trigger1 = timemod = 6,0
anim = 1001
pos = 0,30
postype = p2
ID = 3016
bindtime = 1
random = 100,100
sprpriority = 5
ownpal = 1

[State 3014,helper ]
type = Helper
trigger1 = Time = 0
name = "Ora morirai hehehehhe SUPER"
ID = 3015
postype = p2
stateno = 3015
ownpal = 1

[State 3014,state ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3015]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3004
velset = 0,0

[State 3005,state ]
type = ChangeState
trigger1 = parent,AnimElem = 5
value = 3016

[Statedef 3016]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3002
velset = 0,0
sprpriority = 9

[State 3016,spr ]
type = SprPriority
trigger1 = time > 0
value = 9
ignorehitpause = 1


[State 3006,snd ]
type = PlaySnd
trigger1 = Time = 0
value = 3000,0
volume = 255

[State 3006,ex ]
type = Explod
trigger1 = animelem = 3
anim = 3101
pos = 0,-5
bindtime = -1
scale = 0.5, 2
sprpriority = 7

[State 3006,ex ]
type = Explod
trigger1 = animelem = 5
anim = 3101
pos = 0,-5
bindtime = -1
scale = 1.3, 1.3
sprpriority = 7

[State 3006,ex ]
type = Explod
trigger1 = animelem = 8
anim = 3101
pos = 0,-5
bindtime = -1
scale = 2, 1
sprpriority = 7

[State 3006,Hit ]
type = HitDef
trigger1 = AnimElem = 6
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = DiagUp
priority = 7,Hit
damage = 200,0
sparkno = 3
guard.sparkno = 40
sparkxy = 0,-50
hitsound = 5,4
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 10
ground.hittime = 5
ground.velocity = -3,-9
air.velocity = -3,-9
fall = 1
fall.recover = 0
fall.damage = 20
getpower = 0,0
givepower = 0,0
p2facing = 1
palfx.time = 60      
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1 
envshake.time = 12
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 4
fall.envshake.time = 21
fall.envshake.freq = 60
fall.envshake.ampl = -4
fall.envshake.phase = 7



[State 3006,Hit ]
type = HitDef
trigger1 = AnimElem = 8
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = DiagUp
priority = 7,Hit
damage = 200,0
sparkno = 3
guard.sparkno = 40
sparkxy = 0,-50
hitsound = 5,4
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 10
ground.hittime = 5
ground.velocity = -3,-12
air.velocity = -3,-12
fall = 1
fall.recover = 0
fall.damage = 20
getpower = 0,0
givepower = 0,0
p2facing = 1
palfx.time = 60      
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1 
envshake.time = 12
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 4
fall.envshake.time = 36
fall.envshake.freq = 60
fall.envshake.ampl = -4
fall.envshake.phase = 7

[State 3006,des ]
type = DestroySelf
trigger1 = AnimTime = 0



[Statedef 3110]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3100
velset = 0,0
sprpriority = 2 
juggle = 10

[State 3010,nihit ]
type = NotHitBy
trigger1 = Time = 0
value = SCA,NA,SA
time = 10

[State 3010,invert ]
type = BGPalFX
trigger1 = time = 0
time = 65
add = 0,0,0
mul = 256,256,256
color = 256
invertall = 1

[State 3010,nihit ]
type = NotHitBy
trigger1 = AnimElem = 3
value = SCA,NA,SA
time = 10

[State 3100,sn1 ]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3000,1
volume = 255

[State 3100,varsett ]
type = VarSet
trigger1 = movehit = 1
v =  1
value = 1

[State 3100,sn1 ]
type = PlaySnd
trigger1 = AnimElem = 1,3
value = 3100,0
volume = 255

[State 3000,s2 ]
type = Explod
trigger1 = Time = 0
anim = 7101
pos = 15,-65
supermove = 1
sprpriority = -3
ownpal = 1

[State 3100, super]
type = SuperPause
trigger1 = Time = 0
anim = S7100
sound = S7100,0
pos = 15,-65
poweradd = -2000
p2defmul = 1

[State 3101,ex ]
type = Explod
trigger1 = AnimElem = 3
anim = 3101 
ID = 3101
pos = 0,-5
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 3101,ex ]
type = Explod
trigger1 = AnimElem = 4
anim = 3102
ID = 3102
pos = -20,0
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 3101,HIT ]
type = HitDef
trigger1 = time = 0
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Up
air.animtype = Up
priority = 8
damage = 300,10
pausetime = 5,6
guard.pausetime = 10,10
sparkno = 3
sparkxy = 0,-70
hitsound = 5,4
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 20
ground.hittime = 19
air.hittime = 20
ground.velocity = 0,-15
guard.velocity = -6
air.velocity = 0,-15
airguard.velocity = -6,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -8
airguard.cornerpush.veloff = -8
down.bounce = 3
fall = 1
snap = 40,0
fall.recover = 0
getpower = 0,0
givepower = 20,20
palfx.time = 40       
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1 
envshake.time = 12
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 4
p1stateno = 3111


[State 3100,superB ]
type = EnvColor
trigger1 = Time = 0
value = 0,0,0
time = 30
under = 1

[State 3100,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3111]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3103
velset = 0,0
sprpriority = 2 

[State 3010,invert ]
type = BGPalFX
trigger1 = Time = 0
time = 120
add = 0,0,0
mul = 256,256,256
color = 256
invertall = 1

[State 3101,varsett ]
type = VarSet
trigger1 = movehit = 1
v =  1
value = 1

[State 3101,end ]
type = ChangeState
triggerall = time > 74
trigger1 = p2dist Y < 100
value = 3112

[State 3101,var ]
type = VarSet
trigger1 = time = 0
v =  2
value = 1

[Statedef 3112]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3104
velset = 0,0
sprpriority = 2


[State 3010,invert ]
type = BGPalFX
trigger1 = Time = 0
time = 130
add = 0,0,0
mul = 256,256,256
color = 256
invertall = 1

[State 3102,varsett ]
type = VarSet
trigger1 = movehit = 1
v =  1
value = 1

[State 3112,ad ]
type = HitAdd
trigger1 = movehit = 1
value = 1
ignorehitpause = 1

[State 3102,sn ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000,0
volume = 255

[State 3102,ex ]
type = Explod
trigger1 = AnimElem = 3
anim = 3105
ID = 3102
pos = 16,-37
postype = p1
removetime = -1
supermove = 1
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 3102,ex2 ]
type = RemoveExplod
trigger1 = AnimElem = 4
ID = 3102

[State 3102,ex ]
type = Explod
trigger1 = AnimElem = 4
anim = 1001
ID = 3103
pos = 16,-37
postype = p1
removetime = -2
supermove = 1
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 3102,ex ]
type = Explod
trigger1 = AnimElem = 3
anim = 1153
ID = 3104
pos = -16,-123
vfacing = -1
postype = p1
removetime = -2
supermove = 1
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 3102,HIT ]
type = HitDef
trigger1 = time > 0
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = DiagUp
air.animtype = DiagUp
priority = 8
damage = 70/var(2),0
pausetime = 5,6
guard.pausetime = 10,10
sparkno = 3
sparkxy = -10,-105
hitsound = 5,2
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 20
ground.hittime = 19
air.hittime = 20
ground.velocity = -5,-10
guard.velocity = -6
air.velocity = -5,-10
airguard.velocity = -6,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -8
airguard.cornerpush.veloff = -8
down.bounce = 3
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 20,20
palfx.time = 40       
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1 
envshake.time = 12
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 4

[State 3102,var ]
type = VarAdd
trigger1 = movehit = 1
v =  2
value = 1

[State 3102,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;STRIKER CALL
[Statedef 3999]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 3999

[State 3999,shiwa (whatever!) ]
type = PlaySnd
trigger1 = time = 0
value = 3999,0
volume = 255

[State 3999,Jirai enters the fight! ]
type = Helper
trigger1 = AnimElem = 2
helpertype = normal
name = "Jirai"
ID = 4000
pos = -50,-240
postype = p1
facing = 1
stateno = 4000
ownpal = 1
sprpriority = 7

[State 3999,var ]
type = VarAdd
trigger1 = AnimElem = 1
v =  15
value = -1

[State 3999,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 4000]
type = A
movetype = I
physics = N
velset = 0,4
ctrl = 0
anim = 4010

[State 4002,hit ]
type = HitOverride
trigger1 = time > 0
slot = 1
attr = SCA,SA,NA,HA,SP,NP,HP,ST,NT,HT
stateno = 4003
time = 20

[State 4000,MANOWAR MANOWAR LIVIN ON THE ROAD ]
type = VelMul
trigger1 = time > 0
y = 1.1

[State 4000, end]
type = ChangeState
trigger1 = pos Y >= 0
value = 4001
ctrl = 0

[Statedef 4001]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 4011
sprpriority = 7

[State 4001,sn ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000,2
volume = 255

[State 3103,pj ]
type = Projectile
trigger1 = AnimElem = 2
projID = 4015
projanim = 4015
projhitanim = 4016
projremoveanim = 4016
projremovetime = -1
projremove = 1
velocity = 6,0
projpriority = 7
projsprpriority = 8
offset = 19,-81
projshadow = 0,255,255
attr = S,NP
hitflag = MAFP
guardflag = MA 
animtype = Hard
air.animtype = Hard
priority = 5
damage = 50,3
pausetime = 0,75
guard.pausetime = 0,0
sparkno = 3
sparkxy = 30,0
hitsound = S1000,0
guardsound = 6,0
ground.type = Trip
air.type = High
ground.slidetime = 27
ground.hittime = 28
guard.velocity = 0
ground.velocity = 0,0
air.velocity = 0,0
getpower = 0,0
givepower = 1,4
palfx.time = 75 
Palfx.add = -50,-104,7
Palfx.sinadd   = 56,56,0,10                          
palfx.color = 0                                              
palfx.invertall = 1
fall = 1

[State 4002,hit ]
type = HitOverride
trigger1 = time > 0
slot = 1
attr = SCA,SA,NA,HA,SP,NP,HP,ST,NT,HT
stateno = 4003
time = 20

[State 4001,FOUR KINGS OF METAL FOUR METAL KINGS]
type = PosSet
trigger1 = time = 0
y = 0


[State 4001, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 4002
ctrl = 0

[Statedef 4002]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 4012
sprpriority = 7

[State 4002,hit ]
type = HitOverride
trigger1 = time > 0
slot = 1
attr = SCA,SA,NA,HA,SP,NP,HP,ST,NT,HT
stateno = 4003
time = 20

[State 4001, end]
type = ChangeState
trigger1 = Time = 20
value = 4004
ctrl = 0

[Statedef 4003]
type = A
movetype = H
physics = A
velset = -10,-7
ctrl = 0
anim = 4013
sprpriority = 7

[State 4003,DES ]
type = DestroySelf
trigger1 = AnimTime = 0


[Statedef 4004]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 4014
sprpriority = 7

[State 4004,afttime  ]
type = AfterImageTime
trigger1 = time > 0
time = 3

[State 4004,after ] ;COPYRIGHT RICK PK LIQUID SNAKE 2002 :P (C)
type = Afterimage 
trigger1 = time = 0
time = 999
length = 20
palcolor = 256
palbright = 0,0,0
palcontrast = 255,255,255
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 1,1,1
timegap = 1
framegap = 1
trans = add

[State 4004,des ]
type = DestroySelf
trigger1 = animtime = 0

[State 4004, assert]
type =AssertSpecial
trigger1 = time > 0
flag = invisible






[Statedef 3210]
type = S
movetype = A
physics = S
ctrl = 0
anim = 750
velset = 0,0

[State 3010,invert ]
type = BGPalFX
trigger1 = time > 0
time = 2
add = 0,0,0
mul = 256,256,256
color = 256
invertall = 1

[State 3210,p ]
type = PalFX
trigger1 = animelem = 2,1
time = 3
add = 255,0,0
color = 1

[State 3210,p ]
type = PalFX
trigger1 = animelem = 3,1
time = 3
add = 255,120,0
color = 1

[State 3210,p ]
type = PalFX
trigger1 = animelem = 4,1
time = 3
add = 255,190,0
color = 1

[State 3210,ex ]
type = Explod
trigger1 = AnimElem = 2,2
removetime = 22
anim = 3101
pos = 0,0
sprpriority = 5
ownpal = 1

[State 3210, super]
type = SuperPause
trigger1 = time = 0
anim = S7100
sound = S7100,0
pos = 15,-65
poweradd = -2000
p2defmul = 1
movetime = 5

[State 3210,superB ]
type = EnvColor
trigger1 = time = 0
value = 0,0,0
time = 30
under = 1

[State 3210,s2 ]
type = Explod
trigger1 = time = 0
anim = 7101
pos = 15,-65
supermove = 1
sprpriority = -3
ownpal = 1

[State 3210,end ]
type = ChangeState
trigger1 = time > 8
trigger1 = command !="holdx"
trigger1 = command !="holdy"
trigger2 = time = 120
value = 3211

[Statedef 3211]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3210
velset = 2,0

[State 3210,p ]
type = PalFX
trigger1 = animelem = 2,1
time = 3
add = 255,0,0
color = 1

[State 3210,p ]
type = PalFX
trigger1 = animelem = 3,1
time = 3
add = 255,120,0
color = 1

[State 3210,p ]
type = PalFX
trigger1 = animelem = 4,1
time = 3
add = 255,190,0
color = 1

[State 3010,invert ]
type = BGPalFX
trigger1 = time > 0
time = 2
add = 0,0,0
mul = 256,256,256
color = 256
invertall = 1

[State 1000,varsett ]
type = VarSet
trigger1 = projhit(3200) = 1
v =  1
value = 1

[State 3201,slowdown ]
type = Pause
trigger1 = (var(7) = 1) && (timemod = 1,0)
time = 1

[State 3201,vs ]
type = VarSet
trigger1 = projhit3211 = 1
v =  7
value = 1

[State 3201,vs ]
type = VarSet
trigger1 = time = 0
v =  7
value = 0

[State 3201,ex ]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 8
trigger3 = AnimElem = 14
trigger4 = AnimElem = 20
trigger5 = AnimElem = 26
trigger6 = AnimElem = 32
anim = 3203
ID = 3200
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 3201, p]
type = Projectile
trigger1 = AnimElem = 2
trigger2 = AnimElem = 8
trigger3 = AnimElem = 14
trigger4 = AnimElem = 20
trigger5 = AnimElem = 26
ProjID = 3200
projanim = 3202
projremove = 0
projremovetime = 10
velocity = 0,0
juggle = 5
projpriority = 5
projsprpriority = 6
attr = S,HP
hitflag = MAP
guardflag = MA 
animtype = Hard
air.animtype = Hard
damage = 75,3
pausetime = 0,6
sparkno = -1
guard.sparkno = -1
sparkxy = 0,-20
hitsound = 5,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 27
ground.hittime = 28
ground.velocity = -3,0
air.velocity = -3,0
fall = 0
getpower = 0,0
givepower = 1,4
palfx.time = 27      
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1

[State 3201, p]
type = Projectile
trigger1 = AnimElem = 32
ProjID = 3211
projanim = 3202
projremove = 0
projremovetime = 10
velocity = 0,0
juggle = 5
projpriority = 5
projsprpriority = 6
attr = S,HP
hitflag = MAFP
guardflag = MA 
animtype = Diagup
damage = 50,3
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,-20
hitsound = 5,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 27
ground.hittime = 28
ground.velocity = -12,-5
air.velocity = -12,-2
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 1,4
palfx.time = 27      
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1

[State 3201,ex ]
type = Explod
trigger1 = projguarded = 1
anim = F40
pos = 0,-60
postype = p2
ontop = 1
ownpal = 1

[State 3201,ex ]
type = Explod
trigger1 = projhit3200 = 1
anim = F3
pos = 0,-60
postype = p2
ontop = 1
ownpal = 1

[State 3200,vo ]
type = PlaySnd
trigger1 = time = 0
value = 3001,1
volume = 255

[State 3200,vo ]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 8
trigger3 = AnimElem = 14
trigger4 = AnimElem = 20
trigger5 = AnimElem = 26
trigger6 = AnimElem = 32
value = 1000,0
volume = 255

[State 3201,ed ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1










;HSDM - Furious Dragon Breath

;Effects
[Statedef 35000]
type = S
velset = 0,0
anim = 8888
ctrl = 0
sprpriority = 7


[State 35000,pf ]
type = PalFX
trigger1 = time > 0
time = 1
add = var(2),var(2),var(2)
mul = 256,256,256

[State 50000,vs ]
type = VarSet
trigger1 = time = 0
v =  2
value = -255

[State 500000,va ]
type = VarAdd
trigger1 = (time > 0) && (var(2) < 0)
v =  2
value = 8

[State 35000,ex ]
type = Explod
trigger1 = time = 0 
anim = 7502
ID = 35001
pos = 0,0
removetime = -2
scale = .1*(var(3)),.1*(var(3))
sprpriority = 6
removeongethit = 1
ownpal = 1
supermovetime = 30

[State 35000,ex ]
type = Explod
trigger1 = time = 0 
anim = 7502
ID = 35001
facing = -1
pos = 0,0
removetime = -2
scale = .1*(var(3)),.1*(var(3))
sprpriority = 6
removeongethit = 1
ownpal = 1
supermovetime = 30

[State 35000,ex ]
type = ModifyExplod
trigger1 = time > 0
ID = 35001
scale = .1*(var(3)),.1*(var(3))

[State 35000,1 ]
type = Varset
trigger1 = time = 0
v =  1
value = 300

[State 35000, 2]
type = VarAdd
trigger1 = timemod = 1,0
v =  1
value = -10

[State 35000, 2]
type = VarAdd
trigger1 = timemod = 1,0
v =  3
value = 1

[State 35000,ds ]
type = DestroySelf
trigger1 = time = 30


[Statedef 3500]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3500
velset = 0,0

[State 3000,bg ]
type = Explod
trigger1 = time = 0
anim = 7503
pos = 0,0
postype = left
sprpriority = -3
ownpal = 1
supermovetime = 30
removetime = 30

[State 3500,superB ]
type = EnvColor
trigger1 = time = 0
value = 0,0,0
time = 30
under = 1

[State 3500,s2 ]
type = Explod
trigger1 = Time = 0
anim = 7101
pos = 0,-65
supermove = 1
sprpriority = -3
ownpal = 1

[State 3500,sm ]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1000,0
volume = 255

[State 3500,s2 ]
type = Explod
trigger1 = time = 1
anim = 7200
id = 3500
pos = 0,0
postype = left
supermove = 1
bindtime = -1
removetime = -1
scale = 1.2,1.2
sprpriority = -2
ownpal = 1

[State 3500,s2 ]
type = Explod
trigger1 = animelem = 3
anim = 3510
pos = 0,0
supermove = 1
sprpriority = 6
ownpal = 1

[State 3500, ]
type = PlaySnd
trigger1 = time = 0
value = 3500,0
volume = 255

[State 3500,supereffect ]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "sparaflash!"
ID = 3500
pos = 0,-65
stateno = 35000
ownpal = 1
supermovetime = 30

[State 3500, super]
type = SuperPause
trigger1 = Time = 0
anim = S7100
sound = S7100,0
pos = 0,-65
poweradd = -2000
p2defmul = 1


[State 3500, p]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
x = 10

[State 3500, p]
type = PosAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
x = -10

[State 3500,hd ]
type = HitDef
trigger1 = AnimElem = 3
attr = S,HA
hitflag = MA
guardflag = M
priority = 7
damage = 30,0
pausetime = 5,5
sparkno = 3 
sparkxy = 0,-80
hitsound = 5,4
guardsound = 6,0
p1stateno = 3501
p2stateno = 3520
fall = 1
kill = 0
getpower = 0,0
givepower = 0,0
palfx.time = 40       
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1  
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 5

[State 3500,cs ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3501]
type = S
movetype = A
physics = S
ctrl = 0
anim = 3501
velset = 0,0

[State 3501,if in corner ]
type = PosAdd
trigger1 = frontedgebodydist < 80
x = -88

[State 3501, ]
type = VarSet
trigger1 = time = 0
v =  1
value = 1

[State 3501,hitdef ]
type = HitDef
trigger1 = animelem = 32
attr = S,HA
hitflag = MAF
guardflag =  
animtype = Hard
air.animtype = Hard
priority = 7
damage = 15,7
pausetime = 20,20
sparkno = 2
sparkxy = 0,-70
hitsound = 5,4
guardsound = 6,0
ground.velocity = -1,-11
kill = 0
fall = 1
fall.recover = 0

[State 3501,t ]
type = TargetBind
trigger1 = time < 73
time = 2
pos = 40,0

[State 3501,sn ]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
trigger4 = AnimElem = 12
trigger5 = AnimElem = 15
trigger6 = AnimElem = 18
trigger7 = AnimElem = 21
trigger8 = AnimElem = 24
trigger9 = AnimElem = 27
trigger10 = AnimElem = 30
value = F5,4
volume = 255

[State 3501,sn ]
type = Hitadd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
trigger4 = AnimElem = 12
trigger5 = AnimElem = 15
trigger6 = AnimElem = 18
trigger7 = AnimElem = 21
trigger8 = AnimElem = 24
trigger9 = AnimElem = 27
trigger10 = AnimElem = 30
value = 1

[State 3501,sn ]
type = targetlifeadd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
trigger4 = AnimElem = 12
trigger5 = AnimElem = 15
trigger6 = AnimElem = 18
trigger7 = AnimElem = 21
trigger8 = AnimElem = 24
trigger9 = AnimElem = 27
trigger10 = AnimElem = 30
value = -25
kill = 0

[State 3501,ex ]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
trigger4 = AnimElem = 12
trigger5 = AnimElem = 15
trigger6 = AnimElem = 18
trigger7 = AnimElem = 21
trigger8 = AnimElem = 24
trigger9 = AnimElem = 27
trigger10 = AnimElem = 30
anim = F3
pos = 45,-73
ontop = 1
ownpal = 1

[State 3501,st ]
type = ChangeState
trigger1 = animtime = 0
value = 35022

[Statedef 35022]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 800
velset = 0,0

[State 800,ht ]
type = HitDef
trigger1 = time = 0
attr = S,HA
hitflag = MAF   
guardflag =
sparkno = -1
priority = 3,miss
p1stateno = 35033
p2stateno = 35034
fall = 1
fall.recover = 0

[Statedef 35033]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 851
velset = 0,0

[State 801,ex ]
type = Explod
trigger1 = time = 0
anim = F2
pos = 0,-60
postype = p2
sprpriority = 6
ontop = 1
ownpal = 1

[State 801,sn ]
type = PlaySnd
trigger1 = AnimElem = 2
value = F5,3

[State 35033, ]
type = Explod
trigger1 = time = 26
anim = 1001
pos = -20,-20
scale = 1.5, 1.5
sprpriority = 7
ownpal = 1

[State 35033, ]
type = PlaySnd
trigger1 = time = 26
value = 3000,0

[State 801,t ]
type = TargetLifeAdd
trigger1 = AnimElem = 2
value = -50
kill = 0

[State 801,t1 ]
type = TargetBind
trigger1 = AnimElem = 2
time =15
pos = 37,-138

[State 800,0 ]
type = ChangeState
trigger1 = animtime = 0
value = 3502
ctrl = 0

[Statedef 35034]
type    = S
movetype = H
physics = N
ctrl = 0

[State 35034, an2]
type = ChangeAnim2
trigger1 = time = 0
value = 35034

[State 35034,st ]
type = ChangeState
trigger1 = time = 30
value = 35035

[Statedef 35035]
type    = A
movetype = H
physics = A
ctrl = 0
velset = -1,-12 

[State 35035, ]
type = PalFX
trigger1 = time = 0
time = 90
add  = 80,-70,-200                               
sinadd = 0,30,0,10                              
color = 0                                              
invertall = 1  

[State 35034, an2]
type = ChangeAnim2
trigger1 = time = 0
value = 35035

[Statedef 3502]
type = A
movetype = A
physics = A
ctrl = 0
anim = 3502
velset = 2,-11

[State 3501,stop ]
type = Pause
trigger1 = movehit = 1
time = 20
ignorehitpause = 1
persistent = 0

[State 3501,hitdef ]
type = HitDef
trigger1 = time = 0
attr = S,HA
hitflag = MAF
guardflag =  
animtype = Hard
air.animtype = Hard
priority = 7
damage = 30,7
pausetime = 0,0
sparkno = 2
sparkxy = 0,-70
hitsound = 5,4
guardsound = 6,0
p2stateno = 3522
snap = 20,20
kill = 0
fall = 1

[State 3502,st ]
type = ChangeState
trigger1 = Time = 30
value = 3503

[Statedef 3503]
type = A
movetype = A
physics = N
ctrl = 0
anim = 3503
velset = 0,0

[State 3503,sn ]
type = PlaySnd
trigger1 = time = 0
value = 3500,1

[State 3503,ev ]
type = EnvColor
trigger1 = time >= 0
value = 0,0,0
under = 1

[State 3503,ex ]
type = Explod
trigger1 = time = 0
anim = 3509
ID = 3501
pos = 0,-40
bindtime = -1
sprpriority = 7
ownpal = 1

[State 3503,vs ]
type = VelSet
trigger1 = animelem = 2
x = 0
y = 21

[State 3503,hp ]
type = Helper
trigger1 = animelem = 2
helpertype = normal
name = "dragon"
ID = 3500
pos = 0,-100
stateno = 3510
ownpal = 1
size.xscale = 1
size.yscale = 1.3

[State 3006,Hit ]
type = HitDef
trigger1 = animelem = 2
attr = A,HA
hitflag = MAFD
guardflag =
animtype = DiagUp
priority = 7
damage = 200,0
sparkno = 3
guard.sparkno = 40
sparkxy = 0,-50
hitsound = S3000,0
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 10
ground.hittime = 5
ground.velocity = -3,-9
air.velocity = -3,-9
fall = 1
fall.recover = 0
fall.damage = 20
getpower = 0,0
givepower = 0,0
p2facing = 1
palfx.time = 60      
palfx.add  = 80,-70,-200                               
palfx.sinadd = 0,30,0,10                              
palfx.color = 0                                              
palfx.invertall = 1 
envshake.time = 12
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 4
fall.envshake.time = 21
fall.envshake.freq = 60
fall.envshake.ampl = -4
fall.envshake.phase = 7

[State 3502,st ]
type = ChangeState
trigger1 = pos Y >= 12
value = 3504

[Statedef 3504]
type = S
movetype = I
physics = S
ctrl = 0
anim = 3504
velset = 0,0

[State 3504,ex ]
type = Explod
trigger1 = time < 6
anim = 1103
ID = 3504
pos = 0,30
random = 60,60
pos = 0,-20
scale = 1.2, 1.2
sprpriority = 8
ownpal = 1

[State 3503,ev ]
type = EnvColor
trigger1 = time >= 0
value = 0,0,0
under = 1

[State 1151,èps ]
type = PosSet
trigger1 = time = 0
y = 0


[State 1151, state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 3510]
type = S
movetype = I
physics = N
ctrl = 0
anim = 3511
velset = 0,0

[State 1821,pf ]
type = PalFX
trigger1 = time < 10
time = 1
add = -(200-(20*(time))),-(200-(20*(time))),-(200-(20*(time)))

[State 1821,pf ]
type = PalFX
trigger1 = time > 10
time = 1
add = -(var(1)),-(var(1)),-(var(1))

[State 1821,va ]
type = VarAdd
trigger1 = (timemod = 1,0) && (time > 10)
v =  1
value = 20

[State 3510,ds ]
type = DestroySelf
trigger1 = animtime = 0

[Statedef 3520]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0,0

[State 3520, a]
type = ChangeAnim2
trigger1 = time = 0
value = 3520

[Statedef 3521]
type = A
movetype = I
physics = N
ctrl = 0
velset = -1,-13

[State 3521, ]
type = VelAdd
trigger1 = time > 0
y = .5

[State 3520, a]
type = ChangeAnim2
trigger1 = time = 0
value = 3521


[Statedef 3522]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,11

[State 3522,gravity ]
type = VelAdd
trigger1 = time > 0
y = .7

[State 3522,an2 ]
type = ChangeAnim2
trigger1 = time = 0
value = 3522

[State 3522,st ]
type = ChangeState
trigger1 = pos Y >= 0
value = 3523
ctrl = 0

[Statedef 3523]
type = L
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 3523,1 ]
type = ChangeAnim2
trigger1 = time = 0
value = 3523

[State 3523, p]
type = Posset
trigger1 = time = 0
y = 0

;---------------------------------------------------------------------------
; RUN_FWD override
[Statedef 100]
type    = S
physics = S
anim = 100
sprpriority = 1

[State 100, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, 4]
type = ChangeState
trigger1 = command != "holdfwd"
value = 101
ctrl = 1

[Statedef 101]
type    = S
physics = S
anim = 40
sprpriority = 1
ctrl = 0
velset = 9,0

[State 100, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; RUN_BACK override
[Statedef 105]
type    = A
physics = A
ctrl = 0
anim = 105
sprpriority = 1

[State 105, 1]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 105, 2]
type = PlaySnd
trigger1 = Time = 0
value = 105,0

[State 105, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 106

[State 105,4 ]
type = VelMul
trigger1 = time > 0
x = .90
;y = 
;ignorehitpause = 0
;persistent = 1



;---------------------------------------------------------------------------
; RUN_BACK2 (land)
[Statedef 106]
type    = S
physics = S
ctrl = 0
anim = 47

[State 106, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 106, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 106, 3]
type = MakeDust
trigger1 = Time = 2
pos = -5,-2
spacing = 1

[State 106, 4]
type = ChangeState
trigger1 = Time = 7
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; INITIALIZE OVERRIDE
[Statedef 5900]
type = S

[State 5900, 1] ;Clear all int variables
type = VarRangeSet
trigger1 = roundno = 1
value = 0


[State 5900,v ]
type = VarSet
trigger1 = time = 0
v =  15
value = 3 

[State 5900, 2] ;Clear all float variables
type = VarRangeSet
trigger1 = roundno = 1
fvalue = 0

[State 5900, 3] ;Intro
type = ChangeState
trigger1 = roundno = 1
value = 190



[Statedef -2]

;running jump afterimage
[State -2,afterimage jump ]
type = Afterimage
trigger1 = time = 0
trigger1 = PrevStateNo = 100
trigger1 = StateNo = 40
time = 17
length = 9
palcolor = 256
palinvertall = 0
palbright = 0,0,0
palcontrast = 128,128,128
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 1,1,1
framegap = 3
trans = add1


[State -2,var reset]
type = VarSet
trigger1 = var(1) = 1
trigger1 = p2movetype !=H
v =  1
value = 0

[State -2,explos ]
type = Explod
trigger1 = var(1) = 1
trigger1 = random < 50
trigger1 = numexplod(7000) < 3
trigger1 = P2statetype != L
anim = 7000
pos = 0,-30
postype = p2
ID = 7000
bindtime = 1
random = 100,100
sprpriority = 5
persistent = 0
ownpal = 1
ignorehitpause = 1

[State -2,explos ]
type = Explod
trigger1 = var(1) = 1
trigger1 = random < 50
trigger1 = numexplod(7003) < 3
trigger1 = P2statetype != L
anim = 1103
pos = 0,-30
postype = p2
ID = 7003
bindtime = 1
random = 50,50
sprpriority = 5
persistent = 0
ownpal = 1
ignorehitpause = 1

[State -2,explos ]
type = Explod
trigger1 = var(1) = 1
trigger1 = random < 120
trigger1 = numexplod(7001) < 3
trigger1 = P2statetype != L
anim = 7001
pos = 0,-30
postype = p2
ID = 7001
bindtime = 1
random = 100,100
sprpriority = 5
persistent = 0
ownpal = 1
ignorehitpause = 1

[State -2,explos ]
type = Explod
trigger1 = var(1) = 1
trigger1 = random < 180
trigger1 = numexplod(7002) < 3
trigger1 = P2statetype != L
anim = 7002
pos = 0,-30
postype = p2
ID = 7002
bindtime = 1
random = 100,100
sprpriority = 5
persistent = 0
ownpal = 1
ignorehitpause = 1

[State -2,Projectile Explosion ]
type = Explod
triggerall = projhit1100 = 1
;trigger1 = var(1) = 1
trigger1 = numexplod(1105) < 3
anim = 1103
pos = -20,-20
postype = p2
ID = 1105
bindtime = 1
random = 30,20
sprpriority = 5
persistent = 0
ownpal = 1

[State -2,striker bar ]
type = Explod
trigger1 = time > 0
trigger1 = numexplod(4000) = 0
anim = 4000
ID = 4000
pos = 10,210
postype = back
bindtime = -1
sprpriority = 8
ontop = 1
ownpal = 1
ignorehitpause = 1

[State -2,striker1]
type = Explod
trigger1 = time > 0
trigger1 = var(15) >= 1
trigger1 = numexplod(4001) = 0
anim = 4001
ID = 4001
pos = 10,210
postype = back
bindtime = -1
ownpal = 1
ontop = 1
sprpriority = 9
ignorehitpause = 1

[State -2,striker2]
type = Explod
trigger1 = time > 0
trigger1 = var(15) >= 2
trigger1 = numexplod(4002) = 0
anim = 4002
ID = 4002
pos = 10,210
postype = back
bindtime = -1
ownpal = 1
ontop = 1
sprpriority = 9
ignorehitpause = 1


[State -2,striker3]
type = Explod
trigger1 = time > 0
trigger1 = var(15) >= 3
trigger1 = numexplod(4003) = 0
anim = 4003
ID = 4003
pos = 10,210
postype = back
bindtime = -1
ownpal = 1
ontop = 1
sprpriority = 9
ignorehitpause = 1

[State -2,remex ]
type = RemoveExplod
trigger1 = var(15) < 1
trigger1 = numexplod(4001) = 1
ID = 4001

[State -2,remex ]
type = RemoveExplod
trigger1 = var(15) < 2
trigger1 = numexplod(4002) = 1
ID = 4002

[State -2,remex ]
type = RemoveExplod
trigger1 = var(15) < 3
trigger1 = numexplod(4003) = 1
ID = 4003

[State -2,remex ]
type = RemoveExplod
trigger1 = stateno != 1205
ID = 1206

[State -2, Hit high]
type = PlaySnd
triggerall = Time = 1
triggerall = stateno = 5000
triggerall = random = [0,600]
trigger1 = anim = 5000
trigger2 = anim = 5001
value = 5000,0

[State -2, Hit high]
type = PlaySnd
triggerall = Time = 1
triggerall = stateno = 5000
triggerall = random = [0,600]
trigger1 = anim = 5002
value = 5000,3

[State -2, Hit low]
type = PlaySnd
triggerall = Time = 1
triggerall = stateno = 5000
triggerall = random = [0,600]
trigger1 = anim = 5011
trigger2 = anim = 5012
value = 5000,1

[State -2, Hit trip]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 5070
value = 5000,2

[State -2, Hit ground - face]
type = PlaySnd
triggerall = Time = 1
trigger1 = (stateno = 5100) && (anim = 5101 || anim = 5102)
value = 5000,4

[State -2, land]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52 
trigger2 = stateno = 106
value = 40,0
volume = 255

[State -2, Jumping Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 40 
value = 40, 1


[State -2,on 3000 power standing]
type = Explod
trigger1 = (numexplod(0) < 25) && (timemod = 1,0) && (power >= 3000) && (anim = 11)
anim = 7004
pos = 3,-38
scale = .3,.3
random = 5,5
vel = 0,0
accel = 0,-.1
postype = p1
ID = 0
bindtime = 1
sprpriority = 6
persistent = 1
ownpal = 1


[State -2,on 3000 power standing]
type = Explod
trigger1 = (numexplod(0) < 25) && (timemod = 1,0) && (power >= 3000) && (anim = 0)
anim = 7004
pos = 0,-86
scale = .3,.3
random = 6,6
vel = 0,0
accel = 0,-.15
postype = p1
ID = 0
bindtime = 1
sprpriority = 6
persistent = 1
ownpal = 1

[State -2,remex ]
type = RemoveExplod
trigger1 = stateno != [3500,3502]
ID = 3500

;[Statedef -3]
