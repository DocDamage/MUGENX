[Statedef 1200]  ; Cobra pelo chao ---------------------------------------------
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 1100
ctrl = 0
sprpriority = 2

[State 1070]
type = VarSet 
trigger1 = command = "cobra1"
var(13) = 2


[State 1070]
type = VarSet 
trigger1 = command = "cobra2"
trigger2 = var(59)= 2
var(13) = 5

[State 1000, som gosma]
type = PlaySnd
trigger1 = time = 0
value = 1000, 6

[state 1000, Chama] ;chama cobra
type = helper
trigger1 = animElem = 11 
ID = 1201
pos = 15,0
postype = p1
stateno = 1201
helpertype = normal
sprpriority = 10
ownpal = 1
bindtime = 2
pausemovetime = 100
supermovetime = 100
sprpriority = 10
keyctrl = 0


[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1201] ; cobra ------------------
type    = A
movetype= A
physics = N
sprpriority = 10
anim = 1101
velset = parent, var(13),0

[State 1001 , 1] 
type = PosSet
trigger1 = Time = 2
Y = 2

[State e, 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 2000

[State 1001 , 1] 
type = AssertSpecial
trigger1 = Time >= 0
flag  = noshadow


[State 1001, Acertaperto]
type = HitDef
trigger1 = time = 0
attr = C, SA
animtype  = Medium
damage    = 40,20
hitflag = MAF
guardflag = MA
pausetime = 0,0
sparkno = 0
sparkxy = -10,0
hitsound   = 1,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 30
air.animtype = Back
palfx.time = 220
palfx.add = -60,-20,-20 
p2stateno = 1202
sinadd = 50,20,20,10
Palfx.color = 256 
envshake.time = 15
envshake.ampl = 5

[State -3, gritos]
type = PlaySnd
trigger1 = movecontact
trigger1 = movehit = 1
value = 1,0


; sons de gritos monstos em golpes
[State -3, 1]
type = VarRandom
trigger1 = Time > 0
v = 8
range = 0,2
[State -3, gritos]
type = PlaySnd
triggerAll = p2stateno = 1202
trigger1 = Anim = 1102
trigger1 = AnimElem = 3
value = S20,var(8)


[State e, Bind 1]
type = TargetBind
triggerAll = p2stateno = 1202
trigger1 = Anim = 1102
trigger1 = AnimElem = 1
pos = -50, 0 


[State e, Bind 1]
type = TargetBind
triggerAll = p2stateno = 1202
trigger1 = Anim = 1102
trigger1 = AnimElem = 9
pos = 0, 10 

[State e, Bind 1]
type = TargetBind
triggerAll = p2stateno = 1202
trigger1 = Anim = 1102
trigger1 = AnimElem = 12
pos = 0, 20 


[State e, Bind 1]
type = TargetBind
triggerAll = p2stateno = 1202
trigger1 = Anim = 1102
trigger1 = AnimElem = 15
pos = 0, 30 


[State e, Bind 1]
type = TargetBind
triggerAll = p2stateno = 1202
trigger1 = Anim = 1102
trigger1 = AnimElem = 18
pos = 0, 40 


[State e, Bind 1]
type = TargetBind
triggerAll = p2stateno = 1202
trigger1 = Anim = 1102
trigger1 = AnimElem = 20
pos = 0, 60 


[State e, Bind 1]
type = TargetBind
triggerAll = p2stateno = 1202
trigger1 = Anim = 1102
trigger1 = AnimElem = 21
pos = 0, 200 



[State 1001, 3]
type = VelSet
trigger1 = moveHit = 1
X = 0

[State 1001 , 1] 
type = PosSet
trigger1 = moveHit = 1
Y = 3

[State 1001, 3]
type = ChangeAnim
trigger1 = moveHit = 1
value = 1102


[State 191, Sparks]
type = Explod
trigger1 = moveHit = 1
anim = 6141
Pos = 5,0
sprpriority = -25
ignorehitpause = 1
supermove = 1
bindtime = 2

[State 191, Sparks]
type = Explod
trigger1 = Anim = 1102
trigger1 = AnimElem = 22
anim = 6141
Pos = 5,0
sprpriority = -25
ignorehitpause = 1
supermove = 1
bindtime = 2



[State 191, BocaBaixo]
type = Explod
trigger1 = Anim = 1102
trigger1 = AnimElem = 5
anim = 1103
ignorehitpause = 1
sprpriority = -10
supermove = 1
bindtime = -1


[State 191, Sparks]
type = Explod
triggerAll = Anim = 1102
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 21
anim = F1
Pos = 0,-30
sprpriority = -1
ignorehitpause = 1
supermove = 1
bindtime = -1

[State e, 7]
type = EnvShake
triggerAll = Anim = 1102
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 21
time = 5
ampl = 2

[State e, 7]
type = targetLifeAdd
triggerAll = Anim = 1102
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 21
value = -40

[State -3, gritos]
type = PlaySnd
triggerAll = Anim = 1102
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 21
value = 1,3

[State 1001 , 1] 
type = VelSet
trigger1 = MoveContact = 1
trigger1 = MoveHit = 0
trigger2 = time = 150
trigger2 = p2stateno != 1202
trigger2 = parent,var(13) = 2
trigger3 = time = 300
trigger3 = p2stateno != 1202
trigger3 = parent,var(13) = 5
X = 0

[State 1001, 3]
type = changeAnim
trigger1 = MoveContact = 1
trigger1 = MoveHit = 0
trigger2 = Anim != 1102
trigger2 = parent,var(13) = 5
trigger2 = time = 300
value = 6006

[State 1001, 3]
type = changeAnim
trigger1 = time = 150
trigger1 = p2stateno != 1202
trigger1 = parent,var(13) = 2
value = 6006


[State 1001, 3]
type = MovehitReset
trigger1 = moveContact = 1


[State 1001, 3]
type = turn 
trigger1 = parent,var(13) = 5
trigger1 = time = 151


[State 1001, 3]
type = VelSet
trigger1 = parent,var(13) = 5
trigger1 = time = 150
X = -5


[State 1001, 3]
type = DestroySelf
trigger1 = Anim = 1102
trigger1 = AnimTime = 0


[State 1001, 3]
type = DestroySelf
trigger1 = Anim = 6006
trigger1 = AnimTime = 0


[State 1001, 3]
type = DestroySelf
trigger1 = time = 500



;agarrado
[Statedef 1202]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = -3

[State 170, 1]
type = NotHitBy
trigger1 = time <= 170
value = SCA
time = 1


[State 1001 , 1] 
type = AssertSpecial
trigger1 = Time >= 0
flag  = noshadow

[State 820, 1]
type = ChangeAnim
Trigger1 = Time = 0
value = 5000

[State 1001 , 1] 
type = PosSet
trigger1 = Time = 180
Y = -600


[State 1001 , 1] 
type = VelSet
trigger1 = Time = 180
Y = 5

[State 1001 , 1] 
type = VelAdd
trigger1 = Time >= 180
Y = .6

[State 820, 1]
type = ChangeAnim
Trigger1 = Time = 180
value = 5061


[State 100, 2]  ; sombra da cor do cara tranparente!!!
type=AfterImage
trigger1=time = 170
time=60
trans = Sub ;add 
framegap = 2
PalContrast =  200, 200, 200
PalBright = 0,0,0


[State 820, 1]
type = SelfState
Trigger1 = Time >= 180
Trigger1 = Pos y >= 0
Trigger1 = Vel y >= 0
value = 5100


[Statedef 1000]  ; Corvo Reto ---------------------------------------------
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2

[state 1000, Chama] ;chama corvo
type = helper
trigger1 = animElem = 4 
ID = 1001
pos = 15,0
postype = p1
stateno = 1001
helpertype = normal
sprpriority = 10
ownpal = 1
bindtime = 2
pausemovetime = 100
supermovetime = 100
sprpriority = 10
keyctrl = 0


[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1001] ; corvo ------------------
type    = A
movetype= A
physics = N
sprpriority = 10
anim = 6003
velset = 9,0

[State e, 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 2000

[State 1001 , 1] 
type = AssertSpecial
trigger1 = Time >= 0
flag  = noshadow

[State 1001, 2]
type = Afterimage
trigger1  = time = 0
PalBright = 90,0,0
PalContrast  = 120,8,0
PalMul  = .70,.20,.20
time    =  50
length  = 30
TimeGap = 10
FrameGap = 10
Trans = Add

[State 1000, magia]
type = PlaySnd
trigger1 = time = 0
value = 1000, 2

[State 1001, Acertaperto]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = 40,20
guardflag = MA
pausetime = 6,2
sparkno = 0
sparkxy = -10,-70
hitsound   = 1,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 30
ground.velocity = -6
air.animtype = Back
air.velocity = -2,2
air.juggle = 3
air.fall = 1
palfx.time = 20 ; cor de pegando fogo p2 nova
palfx.add = -50,-20,-20 
sinadd = 50,20,20,10
Palfx.color = 256 
down.velocity = 0,0
down.hittime = 30
down.bounce = 0
envshake.time = 10
envshake.ampl = 5

[State 1000, magia]
type = PlaySnd
trigger1 = movecontact = 1
trigger1 = moveHit = 1
value = 1, 1


[State 1001, 3]
type = DestroySelf
trigger1 = time = 150


[State 1001, 3]
type = ChangeState
trigger1 = movecontact = 1
trigger1 = moveHit = 1
value = 1002


[State 1001, 3]
type = ChangeState
trigger1 = movecontact = 1
trigger1 = moveHit = 0
value = 1003



;Corvo Acerta Hit OK
[Statedef 1002]
type = S
physics = N
anim = 6002
velset = 2,-3
ctrl = 0

[State 1002, 2]
type = Afterimage
trigger1  = time = 0
PalBright = 90,0,0
PalContrast  = 120,8,0
PalMul  = .70,.20,.20
time    =  10
length  = 30
TimeGap = 2
FrameGap = 1
Trans = Add

[State 1000, magia]
type = PlaySnd
trigger1 = time = 0
value = 1000, 5


[State 1002, 3]
type = Destroyself
trigger1 = time = 100


;Corvo Acerta Hit NOT
[Statedef 1003]
type = S
physics = N
anim = 6005
velset = 0,0
ctrl = 0

[State 1002, 3]
type = velSet
trigger1 = time = 6
X = -.5
Y = 5.5


[State 1001 , 1] 
type = AssertSpecial
trigger1 = Time >= 0
flag  = noshadow


[State 1001, 3]
type = ChangeState
trigger1 = Pos Y > 55
trigger1 = Vel Y > 0
value = 1104



[Statedef 1100]  ; Corvo Diagonal ---------------------------------------------
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2



[State 1070]
type = VarSet 
trigger1 = command = "corvo2"
var(14) = 60

[State 1070]
type = VarSet 
trigger1 = command = "corvo3"
trigger2 = var(59)=2
var(14) = 30

[State 230, 1]
type = PlaySnd
trigger1 = command = "corvo3"
trigger2 = var(59)=2
value = 800, 0
channel = 0

[State 1000, 7]
type = ChangeAnim
trigger1 = var(14) = 30
trigger1 = time = 0
value = 1001

[State 191, 2] ;
type = AssertSpecial
triggerAll = var(14) = 30
trigger1 = time < 31
flag = nofg
flag2 = nobardisplay


[State 3000, Super A]
type = SuperPause
trigger1 = var(14) = 30
trigger1 = AnimElem = 2
pos = -5, -55
anim = 100666
poweradd = -1000
sound = s1000, 12
time = 50
movetime = 50

[State var, VarSet]
type = VarSet
trigger1 = time = 0
var(16) = 7000

[State 3000, fotGrand]
type = Helper
trigger1 = var(14) = 30
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


[state 1000, Chama] ;chama corvo
type = helper
trigger1 = animElem = 4 
trigger1 = var(14) != 30
ID = 1101
pos = 15,0
postype = p1
stateno = 1101
helpertype = normal
sprpriority = 10
ownpal = 1
bindtime = 2
pausemovetime = 100
supermovetime = 100
sprpriority = 10
keyctrl = 0

[State 180, 1]
type = VarRandom
trigger1 = Time > 0
v = 1
range = -30,70

[state 1000, Chama] ;chama corvos
type = helper
trigger1 = var(14) = 30 
trigger1 = time >= 5 && timeMod = 5,3 && time <= 70
ID = 1101
pos = 15,var(1)*-1
postype = p1
stateno = 1101
helpertype = normal
sprpriority = 10
ownpal = 1
bindtime = 2
pausemovetime = 100
supermovetime = 100
sprpriority = 10
keyctrl = 0



[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 1101] ; Corvo Diag ------------------
type    = A
movetype= A
physics = N
sprpriority = 10
anim = 6002
velset = 4,-4

[State 1000, magia]
type = PlaySnd
triggerAll = numHelper < 7
trigger1 = time > 0 && timeMod = 12,2 && time <= 42
value = 1000, 5
channel = 3

[State 1001 , 1] 
type = AssertSpecial
trigger1 = Time >= 0
flag  = noshadow

[State e, 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 2000


[State 1001, 2]
type = Afterimage
trigger1  = time = 0
PalBright = 90,0,0
PalContrast  = 120,8,0
PalMul  = .70,.20,.20
time    =  30
length  = 30
TimeGap = 10
FrameGap = 10
Trans = Add


[State 1001, Acertaperto]
type = HitDef
trigger1 = time = 0
attr = S, NA
animtype  = Medium
damage    = parent,var(14),parent,var(14)/3
guardflag = MA
pausetime = 6,2
sparkno = 0
sparkxy = 0,-50
hitsound   = 1,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 30
ground.velocity = -6
air.animtype = Back
air.velocity = -2,2
air.juggle = 3
air.fall = 1
palfx.time = 20 ; cor de pegando fogo p2 nova
palfx.add = -50,-20,-20 
sinadd = 50,20,20,10
Palfx.color = 256 
down.velocity = 0,0
down.hittime = 30
down.bounce = 0
envshake.time = 10
envshake.ampl = 5

[State 1000, magia]
type = PlaySnd
trigger1 = movecontact = 1
trigger1 = moveHit = 1
value = 1, 2

[State 1002, 3]
type = velSet
trigger1 = parent,var(14) = 30
trigger1 = time = 1
X = 1


[State 1002, 3]
type = velSet
trigger1 = parent,var(14) != 30
trigger1 = time = 20
X = .5
Y = 0

[State 180, 1]
type = VarRandom
trigger1 = Time > 0
v = 2
range = 1,2

[State 1002, 3]
type = velSet
trigger1 = parent,var(14) = 30
trigger1 = time >= 15 && timeMod = 5,2 && time <= 30
X = var(2)
Y = 0


[State 1002, 3]
type = changeAnim
trigger1 = time = 20
value = 6000

[State 1002, 3]
type = changeAnim
trigger1 = time = 50
value = 6004

[State 1002, 3]
type = velSet
trigger1 = time = 50
X = 9
Y = 10


[State 1001, 3]
type = DestroySelf
trigger1 = time = 300


[State 1001, 3]
type = ChangeState
trigger1 = movecontact = 1
trigger1 = moveHit = 1
value = 1102


[State 1001, 3]
type = ChangeState
trigger1 = movecontact = 1
trigger1 = moveHit = 0
value = 1103


[State 1001, 3]
type = ChangeState
trigger1 = movecontact = 0
trigger1 = moveHit = 0
trigger1 = Pos Y > 40
trigger1 = Vel Y > 0
value = 1104



;Corvo Acerta Hit OK
[Statedef 1102]
type = S
physics = N
anim = 6002
velset = 3,-1
ctrl = 0

[State 1000, magia]
type = PlaySnd
trigger1 = time = 0
value = 1000, 5


[State e, 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 2000

[State 1002, 2]
type = Afterimage
trigger1  = time = 0
PalBright = 90,0,0
PalContrast  = 120,8,0
PalMul  = .70,.20,.20
time    =  10
length  = 30
TimeGap = 2
FrameGap = 1
Trans = Add


[State 1002, 3]
type = Destroyself
trigger1 = time = 100




;Corvo Acerta Hit NOT
[Statedef 1103]
type = S
physics = N
anim = 6005
velset = 0,0
ctrl = 0

[State e, 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 2000

[State 1002, 3]
type = velSet
trigger1 = time = 6
X = -.5
Y = 5.5


[State 1001 , 1] 
type = AssertSpecial
trigger1 = Time >= 0
flag  = noshadow


[State 1001, 3]
type = ChangeState
trigger1 = Pos Y > 55
trigger1 = Vel Y > 0
value = 1104




;Corvo Acerta Hit NOT ;cai no chao
[Statedef 1104]
type = S
physics = N
velset = 0,0
anim = 6006
ctrl = 0

[State e, 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 2000

[State 1001 , 1] 
type = PosSet
trigger1 = Time = 0
Y = 5

[State 1000, magia]
type = PlaySnd
trigger1 = time = 0
value = 1000, 4


[State 1001 , 1] 
type = AssertSpecial
trigger1 = Time >= 0
flag  = noshadow


[State 414,4]
type = destroyself
trigger1 = AnimTime = 0


