;‘ÎÁ–Å—±Žq‰Á‘¬Œ
[Statedef 7000]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 7000
ctrl = 0
poweradd= -1000
sprpriority = 2

[State 1000, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 13, 0

[State 1000, 1]
type = PlaySnd
trigger1 = animelem = 1
value = 3, 3

;[State 1300, Â]
;type = palfx
;trigger1 = Time = 0
;;trigger1 = Time = 2
;color = 0
;time = 100
;add = 64,-32,-255

;‚í[‚É‚ñ
[State 7000, 0]
type = explod
trigger1 = Time = 0
anim = 7100
pos = 160, 120
postype = left
sprpriority = -5
removeongethit = 1
bindtime = -1
ownpal = 1

[State 1000, 5] ;Opponent near
type = HitDef
trigger1 = time = 0
attr = S, HA
animtype  = Hard
damage    = 750
priority  = 6
hitflag = MAF
pausetime = 0,0
sparkno = s7001
sparkxy = 10,-70
hitsound   = s20,9
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4,-3.5
air.velocity = -4,-3
palfx.time = 60
palfx.mul = 0,255,255
palfx.sinadd = 0,-255,-150,3
palfx.add = 0,0,63
palfx.invertall = 1
fall = 1
p2stateno = 7050

[State 1000, 1]
type = PlaySnd
trigger1 = animelem = 81
value = 13, 1


;’Œ
[State 7000,Trail]
type = helper
trigger1 = animelem = 81
trigger1 = NumHelper(7010) = 0
;anim = 7110
postype = p1
pos = 0,0
bindtime = -1
stateno = 7010
helpertype = normal
name = "kasoku"
sprpriority = 2
removeongethit = 1
ownpal = 1
keyctrl = 0

[State 1201,Trail]
type = Explod
trigger1 = p2stateno = 7050
trigger1 = NumExplod(802) = 0
anim = 802
id = 802
postype = p1
pos = 0,0
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 1201,Trail]
type = Explod
trigger1 = p2stateno = 7050
trigger1 = NumExplod(803) = 0
anim = 803
id = 803
postype = p1
pos = 0,0
sprpriority = 4
removeongethit = 1
ownpal = 1

[State 1201,Trail]
type = Explod
trigger1 = p2stateno = 7050
trigger1 = NumExplod(7002) = 0
anim = 7002
id = 7002
postype = p2
pos = 0,-30
sprpriority = 3
removeongethit = 1
ownpal = 1



[State 7000, 0]
type = explod
trigger1 = WinKO = 1
trigger1 = numexplod(7200) = 0
anim = 7200
id = 7200
pos = 160, 120
postype = left
sprpriority = -5
removeongethit = 1
bindtime = -1
ownpal = 1



[State 7000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;------------------
[Statedef 7010]
type = S
movetype = A
anim = 7110
velset = 0,0
sprpriority = 3

[State 1000, 1]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 3
trigger3 = animelem = 5
trigger4 = animelem = 7
value = 21, 0

[State 170, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1000, 5] ;Opponent near
type = HitDef
;trigger1 = animtime != 0
trigger1 = time = 0
trigger2 = time = 12
trigger3 = time = 24
trigger4 = time = 32
trigger5 = time = 48
trigger6 = time = 60
attr = S, HA
animtype  = Hard
damage    = 198
priority  = 6
hitflag = MAF
pausetime = 0,0
sparkno = s7001
sparkxy = 30,-80
hitsound   = s20,2
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1,-6
air.velocity = -1,-6
fall = 1
p2stateno = 7020

[State 7010, 2]
type = changestate
trigger1 = animtime = 0
value = 9044
;------------------


; ’Œ‚­‚ç‚Á‚½‘ŠŽè

[Statedef 7020]
type    = A
movetype= H
physics = N
velset = -1,-5

[State 1028, 1]
type = NotHitBy
trigger1 = time = 0
value = , NA, NP, SA, HA, NT, ST, HT, SP, HP
time = 11

[State 1028, 1]
type = pause
trigger1 = time = 0
time = 1

[State 1028, Gravity]
type = VelAdd
trigger1 = 1
y = .35

;[State 1028, Anim 5050] 
;type = ChangeAnim
;trigger1 = Time = 0
;trigger1 = !SelfAnimExist(5052)
;value = 5050

[State 1028, Anim 5052] 
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5030)
value = 5030

[State 1028, Anim 5052] 
type = ChangeAnim
trigger1 = Time = 3
trigger1 = SelfAnimExist(5035)
value = 5035

;[State 1028, Anim 5060] 
;type = ChangeAnim
;trigger1 = Vel Y > -2
;trigger1 = Anim = 5050
;trigger1 = SelfAnimExist(5060)
;persistent = 0
;value = 5060

;[State 1028, Anim 5062] 
;type = ChangeAnim
;trigger1 = Vel Y > -2
;trigger1 = Anim = 5052
;trigger1 = SelfAnimExist(5062)
;persistent = 0
;value = 5062

[State 1028, Hit ground]
type = SelfState
trigger1 = time = 12
value = 5050

[State 1028, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100






;------------------
[Statedef 7050]
type    = S
movetype= H
physics = N

[State 1028, 1]
type = NotHitBy
trigger1 = 1;time = 0
value = , NA, NP, SA, HA, NT, ST, HT, SP, HP
time = 20

[State 1028, 1]
type = pause
trigger1 = time = 0
time = 1

[State 830, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 7050

[State 7050, Velocity]
type = VelSet
trigger1 = Time = 0
x = -20
y = -2

[State 1026, Hit wall]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 10
trigger2 = FrontEdgeBodyDist <= 10
value = 7051

[State 1026, Hit ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;------------------
[Statedef 7051]
type    = A
movetype= H
physics = N

[State 1028, 1]
type = NotHitBy
trigger1 = 1;time = 0
value = , NA, NP, SA, HA, NT, ST, HT, SP, HP
time = 50

[State 7051, 1]
type = EnvShake
trigger1 = time = 0
time = 16
ampl = 4
freq = 100
phase = 90

[State 7051, Hurt 11]
type = LifeAdd
trigger1 = time = 0
value = -40

[State 7051, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 7051

[State 7051, Stop moving]
type = PosFreeze
trigger1 = 1
x = 1
;y = 1

[State 7051, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 7051, Spark]
type = Explod
trigger1 = Time = 0
anim = F72;801
pos = 0, floor (screenpos y) +10
postype = back
sprpriority = 5

[State 1027, Sound]
type = PlaySnd
trigger1 = Time = 0
value = F7,0

[State 1027, Pos]
type = Posset
trigger1 = AnimTime = 0
y = -10

[State 1028, Hit ground]
type = SelfState
trigger1 = AnimTime = 0
value = 5030


