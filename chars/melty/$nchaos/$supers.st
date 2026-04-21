[Statedef 2000] ; Super Garra
type    = S
movetype= A
physics = S
poweradd= -2000
ctrl = 0
anim = 2000
sprpriority = 5

[State 191, 2] ;
type = AssertSpecial
trigger1 = time < 31
flag = nofg
flag2 = nobardisplay

[State 1000, magia]
type = PlaySnd
trigger1 = time = 0
value = 800, 1

; sons de gritos monstos em golpes
[State -3, 1]
type = VarRandom
trigger1 = Time > 0
v = 8
range = 2,4
[State -3, gritos]
type = PlaySnd
trigger1 = Time = 10
value = S10,var(8)


; sons de gritos monstos em golpes
[State -3, 1]
type = VarRandom
trigger1 = Time > 0
v = 8
range = 0,2
[State -3, gritos]
type = PlaySnd
trigger1 = Time = 15
value = S20,var(8)


[State 3000, Super A]
type = SuperPause
trigger1 = AnimElem = 2
pos = -5, -55
anim = 100666
sound = s1000, 12
time = 40
movetime = 40

[State var, VarSet]
type = VarSet
trigger1 = time = 0
var(16) = 7000

[State 3000, fotGrand]
type = Helper
trigger1 = AnimElem = 2 && NUmHelper(7000) = 0
name = "FotoCara"
stateno = 7000
ID = 7000
pos = 0,-200
keyctrl = 0
postype = p1
supermovetime = 666
pausemovetime = 666
ownpal = 1
persistent = 0



[State 210, 2]
type = HitDef
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
attr = S, SA
hitflag = MAFD
animtype  = Medium
damage    = 95
guardflag = MA
pausetime = 7,5
sparkno = 1
sparkxy = -10,-80
hitsound   = s1,3
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 80
ground.velocity = -8,-5
air.velocity = -8,-5
air.recovery = 0
recovery = 0
fall = 1


[State e, 7]
type = EnvShake
trigger1 = movehit = 1
trigger1 = AnimElem = 14
time = 10
ampl = 5
freq = 80


[State 191, efeito] ; rastro
type = Explod
trigger1 = AnimElem = 13
anim = 2001
pos = 30,-20
sprpriority = 10
bindtime = 2
;scale = .8,.7
supermove = 1


[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1






[Statedef 3000] ; morpha em Monstro --------------------------------------------------------
type    = S
movetype= A
physics = S
poweradd= -3000
ctrl = 0
anim = 3000
sprpriority = -1

[State 191, 2] ;
type = AssertSpecial
trigger1 = time < 131
flag = nofg
flag2 = nobardisplay

[State 3000 , 1] ;quebra a defesa do P2
type = AssertSpecial
trigger1 = Time >= 0
flag  = unguardable
flag2 = nowalk

[State -3, treme]
type = PlaySnd
trigger1 = Time = 0
value = 11,3
channel = 0

[State -3, treme]
type = PlaySnd
trigger1 = Time = 5
value = 1000,7
channel = 1

[State -3, treme]
type = StopSnd
trigger1 = Time = 120
value = 1000,7
channel = 1


[State 3000, Super A]
type = SuperPause
trigger1 = AnimElem = 2
pos = -5, -55
anim = 100666
sound = s1000, 12
time = 130
movetime = 130

[State var, VarSet]
type = VarSet
trigger1 = time = 0
var(16) = 7002

[State 3000, fotGrand]
type = Helper
trigger1 = AnimElem = 2 && NUmHelper(7000) = 0
name = "FotoCara"
stateno = 7000
ID = 7000
pos = 0,-200
keyctrl = 0
postype = p1
supermovetime = 666
pausemovetime = 666
ownpal = 1
persistent = 0


[State 210, 2]
type = HitDef
trigger1 = AnimElem = 45
trigger1 = movehit = 0
trigger2 = AnimElem = 46
trigger2 = movehit = 0
trigger3 = AnimElem = 47
trigger3 = movehit = 0
trigger4 = AnimElem = 48
trigger4 = movehit = 0
attr = S, SA
hitflag = MAFD
animtype  = Medium
damage    = 220,120
guardflag = MA
pausetime = 20,20
sparkno = 1
sparkxy = -10,-80
hitsound   = s1,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 90
ground.velocity = .8,-14.5
air.velocity = .8,-14.5
air.recovery = 0
recovery = 0
fall.recovery = 0
fall = 1


[State e, 7]
type = EnvShake
trigger1 = AnimElem = 44
trigger2 = AnimElem = 50
time = 20
ampl = 10
freq = 80


[State 191, efeito]
type = moveHitReset
trigger1 = time = 195


[State 210, 2]
type = HitDef
trigger1 = AnimElem = 51
attr = C, SA
hitflag = MAFD
animtype  = Medium
damage    = 220,120
guardflag = MA
pausetime = 14,14
sparkno = 1
sparkxy = -10,-80
hitsound   = s1,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 80
ground.velocity = -10,-4
air.velocity = -10,-4
air.recovery = 0
recovery = 0
fall.recovery = 0
fall = 1


[State 191, efeito] ;fumaca no chao
type = Explod
trigger1 = AnimElem = 24
anim = 6141
sprpriority = -5
bindtime = 2
supermove = 1


[State 191, efeito] ;fumaca no chao
type = Explod
trigger1 = AnimElem = 32
anim = 6140
sprpriority = -5
bindtime = 2
supermove = 1


[State 191, efeito] ;olhos 1
type = Explod
trigger1 = AnimElem = 32
anim = 6120
pos = -100,0
sprpriority = 5
supermove = 1

[State -3, gritos]
type = PlaySnd
trigger1 = AnimElem = 22
value = 1000,10

[State 191, efeito] ;olhos 2
type = Explod
trigger1 = AnimElem = 34
anim = 6121
pos = -100,0
sprpriority = 5
supermove = 1


[State 191, efeito] ;olhos 3
type = Explod
trigger1 = AnimElem = 43
anim = 6122
pos = -100,0
sprpriority = 5
supermove = 1


[State 191, efeito] ;carapaca
type = Explod
trigger1 = AnimElem = 60
anim = 6110
pos = -100,0
sprpriority = 4
supermove = 1


[State 191, efeito] ;carapaca
type = Explod
trigger1 = AnimElem = 60
anim = 6100
pos = -100,0
sprpriority = 5
supermove = 1

[State -3, gritos]
type = PlaySnd
trigger1 = AnimElem = 58
value = 1000,0


[State -3, treme]
type = PlaySnd
trigger1 = AnimElem = 44
value = 1000,8
channel = 1


[State 191, efeito] ;vento 1
type = Explod
trigger1 = AnimElem = 44
anim = 6130
pos = -100,0
sprpriority = 5
supermove = 1


[State 191, efeito] ;vento 2
type = Explod
trigger1 = AnimElem = 45
anim = 6131
pos = -100,10
sprpriority = 5
bindtime = 10
supermove = 1


[State 191, efeito] ;vento 2
type = Explod
trigger1 = AnimElem = 53
anim = 6131
pos = -100,10
sprpriority = 5
bindtime = 10
supermove = 1



[State 191, efeito] ;vento 3 em volta
type = Explod
trigger1 = AnimElem = 44
anim = 6132
pos = -105,0
sprpriority = 5
bindtime = -1
supermove = 1


[State 191, efeito] ;vento 3 em volta
type = Explod
trigger1 = AnimElem = 50
anim = 6132
pos = -120,-25
sprpriority = 5
bindtime = -1
supermove = 1

[State -3, treme]
type = PlaySnd
trigger1 = AnimElem = 50
value = 1000,8
channel = 1


[State 191, efeito]
type = PlayerPush
trigger1 = time > 140
value = 0

[State -2, ScreenBound]
type = ScreenBound
trigger1 = time > 140 && time < 230
movecamera = 0,1
value = 0


[State 1010, 5]
type = PosAdd
trigger1 = time > 140 && time < 190
x = 20


[State 1010, 5]
type = Turn
trigger1 = time = 192


[State 1010, 5]
type = PosAdd
trigger1 =  time = 193
x = (P2BodyDist X - P2BodyDist X) + 130


[State 1010, 5]
type = PosAdd
trigger1 =  time > 195 && time < 240
x = 18


[State 1010, 5]
type = PosAdd
trigger1 =  time > 240 && time < 260
x = 4


[State 1010, 5]
type = EnvShake
trigger1 =  time = 5
ampl = 3
time = 140


[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

