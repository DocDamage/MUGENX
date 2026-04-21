;---------------------------------------------------------------------------
; Format:
; [Statedef STATENO]
; type = ?      S/C/A/L  stand/crouch/air/liedown
; movetype = ?  I/A/H    idle/attack/gethit
; physics = ?   S/C/A/N  stand/crouch/air/none
; juggle = ?             air juggle points move requires
;
; [State STATENO, ?]     ? - any number you choose
; type = ?
; ...
;******************************************
; Win state decider
[Statedef 180]
type = S

[State 191, 1]
type = varrandom
trigger1 = time = 0
v = 4
range = 1,2

[State 191, 3]
type = ChangeState
trigger1 = var(4) = 1
trigger1 = MatchOver = 0
value = 181

[State 191, 3]
type = ChangeState
trigger1 = var(4) = 2
trigger1 = MatchOver = 0
value = 182

[State 191, 3];END
type = ChangeState
trigger1 = var(4) = 1
trigger1 = MatchOver = 1
value = 181

[State 191, 3];END
type = ChangeState
trigger1 = var(4) = 2
trigger1 = MatchOver = 1
value = 182

;-----------------------------------------
[Statedef 181]
type = S
anim = 180

[State 191, 1]
type = playsnd
trigger1 = AnimElem = 3
value = S0,1

[State 181, 1]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = RoundNotOver

;-----------------------------------------
[Statedef 182]
type = S
anim = 181

[State 191, 1]
type = playsnd
trigger1 = AnimElem = 3
value = S0,1

[State 181, 1]
type = AssertSpecial
trigger1 = Time = [0,200]
flag = RoundNotOver

;*******************************************
[Statedef 190]
type = S
ctrl = 0

[State 191 , 1]
type = VarSet
trigger1 = time = 0
v = 55
value = 0

[State 190 , 4]
type = ChangeState
trigger1 = p2name = "Chun-Li"
trigger2 = p4name = "Chun-Li"
value = 192

[State 180, 5]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 0,60

[State 180, 6]
type = ChangeState
trigger1 = Var(1) = [0,20]
value = 192

[State 180, 7]
type = ChangeState
trigger1 = Var(1) = [20,40]
value = 193

[State 180, 7]
type = ChangeState
trigger1 = Var(1) = [40,60]
value = 194

;***************
[Statedef 192]
type = S
ctrl = 0
anim = 190
velset = 0,0,0

[State 191, 1]
type = AssertSpecial
trigger1 = Time = [0,320]
flag = Intro

[State 191, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,5

;[State 191, 4]
;type = PlaySnd
;trigger1 = AnimElem = 32
;value = 1,8

[State 9185, 1]
type = AssertSpecial
trigger1 = Time = [0,320]
flag = NoMusic

[State 191, 3]
type = Projectile
trigger1 = AnimElem = 1
projanim = 9100
ProjRemAnim = -1
projremovetime = 120
offset = 0, 15
velocity = 0.0000001

[State 191, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;***************
[Statedef 193]
type = S
ctrl = 0
anim = 193
velset = 0,0,0

[State 191, 1]
type = AssertSpecial
trigger1 = Time = [0,320]
flag = Intro

[State 191, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,3

[State 191, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;***************
[Statedef 194]
type = S
ctrl = 0
anim = 190
velset = 0,0,0

[State 191, 1]
type = AssertSpecial
trigger1 = Time = [0,320]
flag = Intro

[State 191, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,2

;[State 191, 4]
;type = PlaySnd
;trigger1 = AnimElem = 32
;value = 1,8

[State 9185, 1]
type = AssertSpecial
trigger1 = Time = [0,320]
flag = NoMusic

[State 191, 3]
type = Projectile
trigger1 = AnimElem = 1
projanim = 9100
ProjRemAnim = -1
projremovetime = 120
offset = 0, 15
velocity = 0.0000001

[State 191, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;*****************
; Taunt
[Statedef 199]
type    = S
physics = S
movetype= I
anim = 199
ctrl = 0
velset = 0,0
facep2 = 1

[State 195, 1.1]
type = Playsnd
trigger1 = Time = 3
value = 1,32
volume = 0
channel = 0

[State 195, 1.2]
type = Stopsnd
triggerall = time >= 28
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
trigger3 = command = "holdup"
trigger4 = command = "holddown"
channel = 0

[State 195, 2]
type = CtrlSet
triggerall = time >= 28
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
trigger3 = command = "holdup"
trigger4 = command = "holddown"
value = 1

[State 195, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;*****************
;---------------------------------------------------------------------------
; Hop Start
[Statedef 191]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State 40, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, 2]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 40, 3]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = -5

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;----------------------------------------
;Charge Begin
[Statedef 196]
type = S
movetype = I
physics = S
anim = 196
ctrl = 0

[State 196, 1]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = power != 3000
value = 197
ctrl = 1 

;----------------------------------------
;Charge itself
[Statedef 197]
type = S
movetype = I
physics = S
anim = 197
ctrl = 0

[State 197, 1]
type = PlaySnd
Trigger1 = Time = 3
value = 3,0
channel = 1
volume = 100

[State 197, 1]
type = StopSnd
trigger1 = Var(1) = 1
trigger2 = command != "charge"
trigger3 = power >=2998
channel = 1

[State 197, 2]
type = PowerAdd
Trigger1 = Anim = 197
value = 7
persistent = 1

[State 197, 3]
type = ChangeState
trigger1 = command != "charge"
trigger2 = power = 3000
value = 198
ctrl = 1 

;----------------------------------------
;Charge end
[Statedef 198]
type = S
movetype = I
physics = S
anim = 198

[State 198, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1 

;**********************605********************
;FORWARD + A
[Statedef 605]
type    = S
movetype = A
physics = S
ctrl = 0
anim = 605
sprpriority = 4
velset = 0,0
juggle = 10

[State 200,sn ]
type = PlaySnd
trigger1 = animelem = 1
value = s0,14

[State 200,ht ]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Medium
pausetime = 12,12
damage = 45,0
sparkno = s8002
sparkxy = 0,-75
hitsound = s1,4
guardsound = s1,3
ground.type = High
ground.slidetime = 12
ground.hittime = 17
ground.velocity = -8.5,0
air.velocity = -3.5,-6
ground.cornerpush.veloff = -9
air.cornerpush.veloff = -6
getpower = 30,0
givepower = 5,30

[State 200, end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;****************Ͷ*************************
[Statedef 840];C
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
animtype  = hard
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 1
p2facing = 1
p1stateno = 811
p2stateno = 812
guard.dist = 0
fall = 1
fall.recover = 0

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 220

[Statedef 811];C
type    = S
movetype= A
physics = N
anim = 810
poweradd = 60
sprpriority = 5

[State 701, 1]
type = Width
trigger1 = 1
edge = 50,0

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 42, 0

[State 810, Bind 1]
type = Targetstate
trigger1 = AnimElem = 4
value = 813

[State 810, Bind 1]
type = Targetstate
trigger1 = AnimElem = 5
value = 814

[State 240, 4]
type = null;targetbind
trigger1 = animelem = 3
postype = p1
pos = 47,-35

[State 240, 4]
type = targetbind
trigger1 = animelem = 4
postype = p1
pos = 47,-35

[State 240, 4]
type = targetbind
trigger1 = animelem = 5
postype = p1
pos = 50,0

[State 840, 4]
type = targetlifeadd
trigger1 = animelem = 5
value = -100

[State 840, 4]
type = envshake
trigger1 = animelem = 5
time = 5

[State 701, 1]
type = playsnd
trigger1 = AnimElem = 2
value = S0,10

[State 701, 1]
type = playsnd
trigger1 = AnimElem = 4
value = S1,19

[State 701, 1]
type = playsnd
trigger1 = AnimElem = 5
value = S1,5

[State 240, 4]
type = Explod
trigger1 = AnimElem = 5
anim = 515
postype = p1
pos = 40,0
sprpriority = -2
ownpal = 1

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 812]
type    = A
movetype= H
physics = N
velset = 0,0
;anim = 811
sprpriority = -1

[State 821, 4]
type = SelfState
trigger1 = enemy,movetype = H
value = 5300

[State 9000, 1]
type = ScreenBound
trigger1 = 1
movecamera = 1,0

[State 5050, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 811

[Statedef 813]
type    = A
movetype= H
physics = N
sprpriority = 4
;velset = -3,-6

[State 5050, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 812

[State 821, 1]
type = null;VelAdd
Trigger1 = time > 0
y = .39

[State 821, 4]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

[Statedef 814]
type    = A
movetype= H
physics = N
sprpriority = 4
velset = 0,0

[State 5050, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 814

[State 821, 1]
type = Velset
Trigger1 = animelem = 3
x = -4
y = -5.5

[State 821, 1]
type = VelAdd
Trigger1 = animelem = 3, >= 0
y = .39

[State 821, 4]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;----------------------------------------
[Statedef 810];C
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
animtype  = hard
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 1
p2facing = 1
p1stateno = 830;811
p2stateno = 831;812
guard.dist = 0
fall = 1
fall.recover = 0

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 211

[Statedef 830];D
type    = S
movetype= A
physics = N
anim = 830
poweradd = 60
sprpriority = 5

[State 701, 1]
type = Width
trigger1 = 1
edge = 50,0

[State 240, 4]
type = Explod
trigger1 = AnimElem = 1
anim = 8002
postype = p1
pos = 55, -112
sprpriority = 4
ownpal = 1

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 55, -116

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = -20,-80

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 4
pos = -20,-107

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 5
pos = 19,-113

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 6
pos = 48,-36

[State 810, Bind 1]
type = null;Targetstate
trigger1 = AnimElem = 5
value = 813

[State 810, Bind 1]
type = Targetstate
trigger1 = AnimElem = 7
value = 814

[State 240, 4]
type = targetbind
trigger1 = animelem = 7
postype = p1
pos = 62,0

[State 840, 4]
type = targetlifeadd
trigger1 = animelem = 7
value = -100

[State 840, 4]
type = envshake
trigger1 = animelem = 7
time = 5

[State 701, 1]
type = playsnd
trigger1 = AnimElem = 1
value = S1,4

[State 701, 1]
type = playsnd
trigger1 = AnimElem = 1
value = S0,12

[State 701, 1]
type = playsnd
trigger1 = AnimElem = 7
value = S1,5

[State 240, 4]
type = Explod
trigger1 = AnimElem = 7
anim = 515
postype = p1
pos = 40,0
sprpriority = -2
ownpal = 1

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;**********************D**************************
[Statedef 815];D
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
animtype  = hard
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 1
p2facing = 1
p1stateno = 816
p2stateno = 812
guard.dist = 0
fall = 1
fall.recover = 0

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 240

[Statedef 816];D
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 820
sprpriority = 2

[State 701, 1]
type = Width
trigger1 = time = 0
edge = 70,0

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40, 0

[State 810, Bind 1]
type = posadd
trigger1 = AnimElem = 5
x = 20

[State 240, 4]
type = targetstate
trigger1 = animelem = 5
value = 817

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 5
pos = 19, -131

[State 191, 1]
type = playsnd
trigger1 = AnimElem = 5
value = S1,4

[State 191, 1]
type = playsnd
trigger1 = AnimElem = 2
value = S0,10

[State 191, 1]
type = playsnd
trigger1 = animelem = 6
trigger2 = animelem = 8
trigger3 = animelem = 10
trigger4 = animelem = 12
trigger5 = animelem = 14
trigger6 = animelem = 16
trigger7 = animelem = 18
trigger8 = animelem = 20
value = S1,21

[State 240, 4];͂
type = Explod
trigger1 = animelem = 5
anim = 8002
postype = p1
pos = 17,-123
sprpriority = 2
supermove = 1
ownpal = 1

[State 240, 4];
type = Explod
trigger1 = animelem = 6
trigger2 = animelem = 8
trigger3 = animelem = 10
trigger4 = animelem = 12
trigger5 = animelem = 14
trigger6 = animelem = 16
trigger7 = animelem = 18
trigger8 = animelem = 20
anim = 8002
postype = p1
pos = 17,-123
sprpriority = 2
supermove = 1
ownpal = 1

[State 840, 4]
type = targetlifeadd
trigger1 = animelem = 6
trigger2 = animelem = 8
trigger3 = animelem = 10
trigger4 = animelem = 12
trigger5 = animelem = 14
trigger6 = animelem = 16
trigger7 = animelem = 18
trigger8 = animelem = 20
value = -10
kill = 0

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 820

[Statedef 820];D
type    = S
movetype= A
physics = N
juggle  = 15
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1034
sprpriority = 1

[State 701, 1]
type = Width
trigger1 = time = 0
edge = 0,90

[State 240, 4]
type = targetstate
trigger1 = animelem = 1
value = 1043

[State 240, 4]
type = targetbind
trigger1 = animelem = 1
postype = p1
pos = -32,-118

[State 240, 4]
type = targetbind
trigger1 = animelem = 2
postype = p1
pos = -16,-113

[State 240, 4]
type = targetbind
trigger1 = animelem = 3
postype = p1
pos = -47,-35

[State 240, 4]
type = targetbind
trigger1 = animelem = 4
postype = p1
pos = -55,0

[State 840, 4]
type = targetlifeadd
trigger1 = animelem = 4
value = -20

[State 840, 4]
type = envshake
trigger1 = animelem = 4
time = 5

[State 840, 4]
type = posadd
trigger1 = animelem = 2
x = -17

[State 840, 4]
type = posadd
trigger1 = animelem = 3
x = -20

[State 240, 4]
type = targetstate
trigger1 = animelem = 6,= 2
value = 1044

[State 840, 4]
type = turn
trigger1 = animtime = 0
value = 1

[State 840, 4]
type = PlaySnd
trigger1 = animelem = 2
value = S1,9

[State -3, 5]
type = PlaySnd
trigger1 = animelem = 4
value = S1,5

[State 240, 4]
type = Explod
trigger1 = animelem = 4
anim = 515
postype = p1
pos = -55,0
sprpriority = -4
ownpal = 1

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 817];head
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 9000, 1]
type = ScreenBound
trigger1 = 1
movecamera = 1,0

[State 821, 4]
type = changeanim2
trigger1 = time = 0
value = 821


[Statedef 818]
type    = A
movetype= H
physics = N
sprpriority = 4
velset = 3,-6

[State 5050, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 813

[State 821, 1]
type = VelAdd
Trigger1 = time > 0
y = .39

[State 821, 4]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100
;---------------------------------------------------------------------------
[Statedef 831]
type    = A
movetype= H
physics = N
velset = 0,0
;anim = 811
sprpriority = -1

[State 9000, 1]
type = ScreenBound
trigger1 = 1
movecamera = 1,0

[State 5050, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 831
;*****************c+d*********************
;---------------------------------------------------------------------------
[Statedef 250];
type    = S
movetype= A
physics = S
juggle  = 15
poweradd = IfElse((prevstateno = 150 || prevstateno = 152),-500,0)
ctrl = 0
velset = 0,0
anim = 250
sprpriority = 2

[State 820, 2]
type = Pause
trigger1 = Time = 0 && (prevstateno = 150 || prevstateno = 152)
time = 6
movetime = 6

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,7

[State 840,0]
type = envcolor
trigger1 = Time = 0 && (prevstateno = 150 || prevstateno = 152)
time = 2
value = 255,255,255

[State 820, 1]
type = notHitBy
trigger1 = Time = 0 && (prevstateno = 150 || prevstateno = 152)
value = SCA, AA, AP
time = 10

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = hard
damage = IfElse((prevstateno = 150 || prevstateno = 152),0,63)
guardflag = M
hitflag = MA
pausetime = 2,6
sparkxy = -20,-60
hitsound   = S1,28
guardsound = S1,19
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -2,-8
air.velocity = -2,-7
sparkno = S8000
guard.sparkno = S8004
air.juggle  = 15
fall = 1
fall.recover = 0

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Air Knockdown attack
[Statedef 255]
type = A
movetype = A
physics = A
poweradd = 100
juggle  = 4
anim = 305
ctrl = 0

[State 305, se]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 7

[State 305, 1]
type = HitDef
trigger1 = time = 0
attr = S, SA
animtype = Back
damage = 114
guardflag = MA
pausetime = 14,14
sparkxy = -10,-35
sparkno = S8000
guard.sparkno = S8004
hitsound = s1,28
guardsound = 1,19
ground.type = High
ground.slidetime = 12
ground.hittime = 15
ground.velocity = -4.5     
air.velocity = -7.5,-2.5
fall = 1

[State 305, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;----------------------------------------
;Standing A
[Statedef 200]
type = S
movetype = A
physics = S
anim = 200
ctrl = 0

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,14

[State 200, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 25,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit 
pausetime = 12, 10
sparkno = S8002
guard.sparkno = S8004
sparkxy = 5, -85
hitsound = s1, 3
guardsound = s1, 18
ground.type = High
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3 
air.hittime = 12 
getpower = 0,0

[State 200, pow]
type = PowerAdd
trigger1 = Movehit
trigger1 = Var(1) != 1
value = 10
persistent = 0

[State 210, pow]
type = ChangeState
trigger1 = Command = "aoi"
trigger1 = Movehit
value = 1060

[State 200,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
;Standing B - Close
[Statedef 210]
type = S
movetype = A
physics = S
anim = 210
ctrl = 0

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,19

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 25,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit 
pausetime = 10, 10
sparkno = S8002
guard.sparkno = S8004
sparkxy = 5, -85
hitsound = s1, 4
guardsound = s1,18
ground.type = High
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3 
air.hittime = 12 
getpower = 0,0

[State 210, pow]
type = PowerAdd
trigger1 = Movehit
trigger1 = Var(1) != 1
value = 10
persistent = 0

[State 210, pow]
type = ChangeState
trigger1 = Command = "aoi"
trigger1 = Movehit
value = 1060

[State 210,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
;Standing B - Normal
[Statedef 211]
type = S
movetype = A
physics = S
anim = 211
ctrl = 0

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,19

[State 211, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage = 25,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit 
pausetime = 10, 10
sparkno = S8002
guard.sparkno = S8004
sparkxy = 5, -85
hitsound = s1, 4
guardsound = s1, 18
ground.type = High
ground.slidetime = 5
ground.hittime  = 10
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3 
air.hittime = 12 
getpower = 0,0

[State 211, pow]
type = PowerAdd
trigger1 = Movehit
trigger1 = Var(1) != 1
value = 10
persistent = 0

[State 211,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------
[Statedef 220];
type    = S
movetype= A
physics = S
juggle  = 15
poweradd = 20
ctrl = 0
velset = 0,0
anim = 220
sprpriority = -1

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,15

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = hard
damage    = 60,0
guardflag = M
hitflag = MA
pausetime = 8,12
sparkxy = 10,-70
hitsound   = S1,14
guardsound = S1,19
ground.type = High
ground.slidetime = 10
ground.hittime  = 13
ground.velocity = -7
guard.velocity = -8
air.velocity = -4,-4
sparkno = S8000
guard.sparkno = S8004
air.juggle  = 15

[State 210, pow]
type = ChangeState
trigger1 = Command = "aoi"
trigger1 = Movehit
value = 1060

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;----------------------------------------
;Standing C - Normal
[Statedef 221]
type = S
movetype = A
physics = S
anim = 221
ctrl = 0

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,14

[State 221, 1]
type = PosAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 12
x = 20

[State 221, 1]
type = PosAdd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
x = 10

[State 221, 1]
type = PosAdd
trigger1 = AnimElem = 11
x = 5

[State 221, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
damage = 30,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit 
pausetime = 10, 15
sparkno = S8000
guard.sparkno = S8004
sparkxy = 5, -85
hitsound   = S1,14
guardsound = S1,19
ground.type = Low
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -6
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3 
air.hittime = 12 
getpower = 0,0

[State 221, 2]
type = HitDef
trigger1 = AnimElem = 11
attr = S, NA
damage = 25,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit 
pausetime = 10, 10
sparkno = S8000
guard.sparkno = S8004
sparkxy = 5, -85
hitsound   = S1,14
guardsound = S1,19
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -10
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3 
air.hittime = 12 
getpower = 0,0

[State 221, pow]
type = PowerAdd
trigger1 = Movehit
trigger1 = Var(1) != 1
value = 20
persistent = 0

[State 221,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;***********************************
[Statedef 240];վK
type    = S
movetype= A
physics = S
juggle  = 15
poweradd = 40
ctrl = 0
velset = 0,0
anim = 212
sprpriority = 2


[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S1,0


[State 821, 4]
type = posadd
trigger1 = animelem = 6
x = 14

[State 821, 4]
type = posadd
trigger1 = animelem = 9
x = 26

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,16

[State 240, 2]
type = HitDef
trigger1 = animelem = 3
attr = S, NA
animtype  = hard
damage    = 25,0
guardflag = M
hitflag = MA
pausetime = 10,10
sparkno = S8000
guard.sparkno = S8004
sparkxy = -7,-75
hitsound   = S1,14
guardsound = S1,19
ground.type = high
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4
air.velocity = -3
air.juggle  = 15

[State 240, 2]
type = HitDef
trigger1 = animelem = 6
attr = S, NA
animtype  = hard
damage    = 25,0
guardflag = M
hitflag = MA
pausetime = 10,10
sparkno = S8000
guard.sparkno = S8004
sparkxy = -7,-75
hitsound   = S1,14
guardsound = S1,19
ground.type = high
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4
guard.velocity = -7
air.velocity = -3
air.juggle  = 15

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------
[Statedef 410];p
type    = C
movetype= A
physics = C
juggle  = 15
poweradd = 20
ctrl = 0
velset = 0,0
anim = 203
sprpriority = 2

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,14

[State 240, 2]
type = HitDef
trigger1 = animelem = 3
attr = S, NA
damage = 25, 0
animtype  = Medium
guardflag = M
hitflag = MA
priority = 3, Hit
pausetime = 5, 6
sparkno = S8002
guard.sparkno = S8004
sparkxy = -10, -50
hitsound = S1,3
guardsound = S1,18
ground.type = High
ground.slidetime = 5
ground.hittime  = 4
ground.velocity = -5
airguard.velocity = -5,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
air.juggle  = 15

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 411];p
type    = C
movetype= A
physics = C
juggle  = 15
poweradd = 50
ctrl = 0
velset = 0,0
anim = 229
sprpriority = 2

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,15

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = hard
damage    = 60,0
guardflag = M
hitflag = MA
pausetime = 10,13
sparkxy = 10,-70
hitsound   = S1,14
guardsound = S1,19
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
air.velocity = -6,-4
sparkno = S8000
guard.sparkno = S8004
air.juggle  = 15
guard.velocity = -8

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 430];k
type    = C
movetype= A
physics = C
juggle  = 15
poweradd = 20
ctrl = 0
velset = 0,0
anim = 214
sprpriority = 2

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,15

[State 240, 2]
type = HitDef
trigger1 = animelem = 3
attr = S, NA
damage = 25, 0
animtype  = Medium
guardflag = L
hitflag = MA
priority = 3, Hit
pausetime = 5, 6
sparkno = S8002
guard.sparkno = S8004
sparkxy = -10, -15
hitsound = S1,3
guardsound = S1,18
ground.type = High
ground.slidetime = 5
ground.hittime  = 4
ground.velocity = -5
airguard.velocity = -5,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
air.juggle  = 15

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 440];k
type    = C
movetype= A
physics = C
juggle  = 15
poweradd = 40
ctrl = 0
velset = 0,0
anim = 213
sprpriority = 2

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,16

[State 240, 2]
type = HitDef
trigger1 = animelem = 4
attr = S, NA
damage = 50, 0
animtype  = Medium
guardflag = L
hitflag = MA
priority = 3, Hit
pausetime = 10, 10
sparkno = S8000
guard.sparkno = S8004
sparkxy = -10, -10
hitsound   = S1,15
guardsound = S1,19
ground.type = High
ground.slidetime = 5
ground.hittime  = 4
ground.velocity = -2,-5
airguard.velocity = -2,-3
air.type = High
air.velocity = -2.5,-3
air.hittime = 12
fall = 1
air.juggle  = 15

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-------------------------------------------------------------------
;p
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 15
poweradd= 11
ctrl = 0
anim = 600
sprpriority = 2

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,14

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 50, 0
animtype  = Medium
guardflag = H
hitflag = MA
priority = 3, Hit
pausetime = 5, 6
sparkno = S8003
guard.sparkno = S8004
sparkxy = -10, -26
hitsound = S1,12
guardsound = S1,18
ground.type = High
ground.slidetime = 5
ground.hittime  = 4
ground.velocity = -5
airguard.velocity = -5,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
air.juggle  = 15

;-------------------------------------------------------------------
;ֱp
[Statedef 601]
type    = A
movetype= A
physics = A
juggle  = 15
poweradd= 11
ctrl = 0
anim = 660
sprpriority = 2


[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,15

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 50, 0
animtype  = Medium
guardflag = H
hitflag = MA
priority = 3, Hit
pausetime = 5, 6
sparkno = S8003
guard.sparkno = S8004
sparkxy = -10, -26
hitsound = S1,12
guardsound = S1,18
ground.type = High
ground.slidetime = 5
ground.hittime  = 4
ground.velocity = -5
airguard.velocity = -5,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
air.juggle  = 15

;---------------------------------------------------------------------------
;p
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 15
poweradd= 65
ctrl = 0
anim = 610
sprpriority = 2

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,15

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype  = hard
damage    = 60,0
guardflag = H
hitflag = MA
pausetime = 10,13
sparkxy = 10,-40
hitsound   = S1,14
guardsound = S1,19
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.velocity = -6,-4
sparkno = S8000
guard.sparkno = S8004
air.juggle  = 15

;---------------------------------------------------------------------------
;ֱJump p
[Statedef 611]
type    = A
movetype= A
physics = A
juggle  = 15
poweradd= 65
ctrl = 0
anim = 662
sprpriority = 2

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,15

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = hard
damage    = 60,0
guardflag = H
hitflag = MA
pausetime = 10,13
sparkxy = 10,-40
hitsound   = S1,14
guardsound = S1,19
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -6
air.velocity = -6,-4
sparkno = S8000
guard.sparkno = S8004
air.juggle  = 15

;---------------------------------------------------------------------------
;;Jump k
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 15
poweradd= 20
ctrl = 0
anim = 630
sprpriority = 2

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,19

[State 230, 2]
type = HitDef
trigger1 = animelem = 3
attr = S, NA
animtype  = Medium
damage    = 25,0
guardflag = H
hitflag = MA
pausetime = 12,12
sparkno = S8003
guard.sparkno = S8004
sparkxy = -7,-15
hitsound   = S1,13
guardsound = S1,18
ground.type = high
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -8
air.velocity = -2.5,-3.5
air.juggle  = 15

;---------------------------------------------------------------------------
;;ֱJump k
[Statedef 631]
type    = A
movetype= A
physics = A
juggle  = 15
poweradd= 20
ctrl = 0
anim = 661
sprpriority = 2

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,19

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 230, 2]
type = HitDef
trigger1 = animelem = 3
attr = S, NA
animtype  = Medium
damage    = 25,0
guardflag = H
hitflag = MA
pausetime = 12,12
sparkno = S8003
guard.sparkno = S8004
sparkxy = -7,-15
hitsound   = S1,13
guardsound = S1,18
ground.type = high
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -8
air.velocity = -2.5,-3.5
air.juggle  = 15

;---------------------------------------------------------------------------
;JumpK
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 15
poweradd= 65
ctrl = 0
anim = 640
sprpriority = 2

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 821, 4]
type = posadd
trigger1 = animelem = 7
x = 26

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,16

[State 240, 2]
type = HitDef
trigger1 = animelem = 5
trigger1 = movecontact = 0
attr = S, NA
animtype  = hard
damage    = 70,0
guardflag = H
hitflag = MA
pausetime = 10,10
sparkno = S8000
guard.sparkno = S8004
sparkxy = -7,-75
hitsound   = S1,14
guardsound = S1,19
ground.type = high
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4
air.velocity = -3
air.juggle  = 15

[State 240, 2]
type = HitDef
trigger1 = animelem = 6
trigger1 = movecontact = 0
attr = S, NA
animtype  = hard
damage    = 70,0
guardflag = H
hitflag = MA
pausetime = 10,10
sparkno = S8000
guard.sparkno = S8004
sparkxy = -7,-75
hitsound   = S1,14
guardsound = S1,19
ground.type = high
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4
air.velocity = -3
air.juggle  = 15

;---------------------------------------------------------------------------
;ֱJumpK
[Statedef 641]
type    = A
movetype= A
physics = A
juggle  = 15
poweradd= 65
ctrl = 0
anim = 663
sprpriority = 2

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,16

[State 240, 2]
type = HitDef
trigger1 = animelem = 3
attr = S, NA
animtype  = hard
damage    = 70,0
guardflag = H
hitflag = MA
pausetime = 10,10
sparkno = S8000
guard.sparkno = S8004
sparkxy = -7,-15
hitsound   = S1,14
guardsound = S1,19
ground.type = high
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4
air.velocity = -3
air.juggle  = 15


;-----------------------------------------------------------
;---------------------------------------------------------------------------

;------------------------------------------------------------
[Statedef 900];ǰر
type = S
movetype = I
physics = N
anim = 900
velset = 0,0
ctrl = 0
sprpriority = 1
poweradd = IfElse((prevstateno = 150 || prevstateno = 152),-500,0)

[State 191, 1]
type = playsnd
trigger1 = time = 5
value = S1,31

[State 240, 4]
type = Explod
trigger1 = Time = 0 && (prevstateno = 150 || prevstateno = 152)
anim = 531
postype = p1
pos = 0,-78
sprpriority = 4

[State 840,0]
type = PlayerPush
trigger1=Time >= 0
value = 0

[State 840,0]
type = envcolor
trigger1 = Time = 0 && (prevstateno = 150 || prevstateno = 152)
time = 2
value = 255,255,255

[State 820, 1]
type = HitBy
trigger1 = Time = 0
value = SCA, AT
time = 25

[State 820, 2]
type = Pause
trigger1 = Time = 0 && (prevstateno = 150 || prevstateno = 152)
time = 6
movetime = 6

[State 840, 1]
type = SprPriority
Trigger1 = Time = 0
value = -1

[State 840, 2]
type = afterimage
trigger1 = animelem = 2
time = 10
length = 8
PalBright   =   0,  0,  0
PalContrast = 255,255,255
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 2
ignorehitpause = 1

[State 840, 1]
type = Velset
trigger1 = animelem = 3
x = 5

[State 840, 1]
type = Velset
trigger1 = animelem = 9
x = 0

[State 840, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------
[Statedef 910];ر
type = S
movetype = I
physics = N
anim = 910
velset = 0,0
ctrl = 0
sprpriority = 1
poweradd = IfElse((prevstateno = 150 || prevstateno = 152),-500,0)

[State 191, 1]
type = playsnd
trigger1 = time = 5
value = S1,31

[State 240, 4]
type = Explod
trigger1 = Time = 0 && (prevstateno = 150 || prevstateno = 152)
anim = 531
postype = p1
pos = 0,-78
sprpriority = 4

[State 840,0]
type = PlayerPush
trigger1=Time >= 0
value = 0

[State 840,0]
type = envcolor
trigger1 = Time = 0 && (prevstateno = 150 || prevstateno = 152)
time = 2
value = 255,255,255

[State 820, 1]
type = HitBy
trigger1 = Time = 0
value = SCA, AT
time = 25

[State 820, 1]
type = HitBy
trigger1 = Time = 0
value = SCA, AT
time = 20

[State 820, 2]
type = Pause
trigger1 = Time = 0 && (prevstateno = 150 || prevstateno = 152)
time = 6
movetime = 6

[State 840, 1]
type = SprPriority
Trigger1 = Time = 0
value = -1

[State 840, 1]
type = Velset
trigger1 = animelem = 3
x = -5.3

[State 840, 1]
type = Velset
trigger1 = animelem = 9
x = 0

[State 840, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;******************************************
;----------------------------------------------------------------
[Statedef 1000];X
type    = S
movetype= A
physics = S
juggle  = 15
poweradd= 110
velset = 0,0
anim = 1000
ctrl = 0
sprpriority = 2

[State 840, 4]
type = PlaySnd
trigger1 = Time = 0
value = S0,25

[State 840, 4]
type = PlaySnd
trigger1 = animelem = 7
value = S1,7

[State 1034, 2];ex
type = Projectile
projID = 1001
trigger1 = animelem = 7
trigger1 = palno = 6 || palno = 12
projremove = 0
Projremovetime = 27
projhits = 1
projremanim = 2021
projhitanim = 2021
projpriority = 999999999
projanim = 2020
offset = 50,0
velocity = 1,0
attr = S, SP
damage   = 120,10
guard.pausetime = 0,8
animtype = up
guardflag = M
hitflag = MA
pausetime = 0,7
hitsound   = S1,14
guardsound = S1,19
sparkxy = -10,-75 + var(12)
sparkno = S8001
guard.sparkno = S8004
ground.type = high
ground.slidetime = 25
ground.hittime  = 23
ground.velocity = -3,-6
air.animtype = up
air.velocity = -3,-6
air.juggle = 3
fall = 1
air.fall = 1
Projedgebound = 40

[State 1034, 2];ex
type = Projectile
projID = 1200
trigger1 = animelem = 7
trigger1 = palno = 6 || palno = 12
projremove = 0
Projremovetime = 27
projhits = 1
projremanim = -1
projhitanim = -1
;projmisstime = 2
projpriority = 2147483647
;projremove = 1006
projanim = 2022
offset = 50,0
velocity = 1,0
attr = S, SP
damage   = 140,10
animtype = Up
hitflag = MA
guardflag = M
sparkno = -1
guard.sparkno = S8004
sparkxy = 30,0
hitsound   = S1,14
guardsound = S1,19
pausetime = 0,15
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
guard.hittime = 15
ground.velocity = -3,-7
air.velocity = -3,-5
fall = 1
fall.recover = 0
juggle = 15

[State 1034, 2]
type = Projectile
projID = 1001
trigger1 = animelem = 7
trigger1 = palno != 6 && palno != 12
trigger1 = var(58) = 0
projremove = 1
Projremovetime = 27
projhits = 1
projremanim = 1
projhitanim = 999
projpriority = 999999999
projanim = 1001
offset = 50,0
velocity = 0,0
attr = S, SP
damage   = 120,10
guard.pausetime = 0,8
animtype = heavy
guardflag = M
hitflag = MA
pausetime = 0,7
hitsound   = S1,14
guardsound = S1,19
sparkxy = -10,-75 + var(12)
sparkno = S8001
guard.sparkno = S8004
ground.type = high
ground.slidetime = 25
ground.hittime  = 23
ground.velocity = -3,-6
air.animtype = Back
air.velocity = -3,-6
air.juggle = 3
fall = 1
air.fall = 1
Projedgebound = 40

[State 240, 4];
type = Explod
trigger1 = projhit = 1
trigger1 = var(58) = 1
anim = 508
postype = p2
pos = -10,-75
sprpriority = 2
supermove = 1
ownpal = 1
persistent = 0

[State 1034, 2]
type = Projectile
projID = 1001
trigger1 = animelem = 7
trigger1 = palno != 6 && palno != 12
trigger1 = var(58) = 1
projremove = 1
Projremovetime = 27
projhits = 1
projremanim = 1
projhitanim = 999
projpriority = 999999999
projanim = 1001
offset = 50,0
velocity = 0,0
attr = S, SP
damage   = 120,10
guard.pausetime = 0,8
animtype = heavy
guardflag = M
hitflag = MA
pausetime = 0,7
hitsound   = S1,14
guardsound = S1,19
sparkxy = -10,-75 + var(12)
sparkno = S8001
guard.sparkno = S8004
ground.type = high
ground.slidetime = 25
ground.hittime  = 23
ground.velocity = -3,-6
air.animtype = Back
air.velocity = -3,-6
air.juggle = 3
p2stateno = 2400
p2facing = 1
fall = 1
air.fall = 1
Projedgebound = 40

[State 1034, 2]
type = Projectile
projID = 1200
trigger1 = animelem = 7
trigger1 = palno != 6 && palno != 12
projremove = 0
Projremovetime = 27
projhits = 1
projremanim = -1
projhitanim = -1
;projmisstime = 2
projpriority = 2147483647
;projremove = 1006
projanim = 1006
offset = 50,0
velocity = 0,0
attr = S, SP
damage   = 140,10
animtype = Up
hitflag = MA
guardflag = M
sparkno = -1
guard.sparkno = S8004
sparkxy = 30,0
hitsound   = S1,14
guardsound = S1,19
pausetime = 0,15
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
guard.hittime = 15
ground.velocity = -3,-7
air.velocity = -3,-5
fall = 1
fall.recover = 0
juggle = 15

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
[Statedef 1001];A
type    = S
movetype= A
physics = S
juggle  = 15
poweradd= 110
velset = 0,0
anim = 1002
ctrl = 0
sprpriority = 2

[State 840, 4]
type = PlaySnd
trigger1 = Time = 0
value = S0,25

[State 840, 4]
type = PlaySnd
trigger1 = animelem = 7
value = S1,7

[State 1034, 2];ex
type = Projectile
projID = 1001
trigger1 = animelem = 7
trigger1 = palno = 6 || palno = 12
projremove = 0
Projremovetime = 27
projhits = 1
projremanim = 2021
projhitanim = 2021
projpriority = 999999999
projanim = 2020
offset = 100,0
velocity = 1,0
attr = S, SP
damage   = 120,10
guard.pausetime = 0,8
animtype = up
guardflag = M
hitflag = MA
pausetime = 0,7
hitsound   = S1,14
guardsound = S1,19
sparkxy = -10,-75 + var(12)
sparkno = S8001
guard.sparkno = S8004
ground.type = high
ground.slidetime = 25
ground.hittime  = 23
ground.velocity = -3,-6
air.animtype = up
air.velocity = -3,-6
air.juggle = 3
fall = 1
air.fall = 1
Projedgebound = 40

[State 1034, 2];ex
type = Projectile
projID = 1200
trigger1 = animelem = 7
trigger1 = palno = 6 || palno = 12
projremove = 0
Projremovetime = 27
projhits = 1
projremanim = -1
projhitanim = -1
;projmisstime = 2
projpriority = 2147483647
;projremove = 1006
projanim = 2022
offset = 100,0
velocity = 1,0
attr = S, SP
damage   = 140,10
animtype = Up
hitflag = MA
guardflag = M
sparkno = -1
guard.sparkno = S8004
sparkxy = 30,0
hitsound   = S1,14
guardsound = S1,19
pausetime = 0,15
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
guard.hittime = 15
ground.velocity = -3,-7
air.velocity = -3,-5
fall = 1
fall.recover = 0
juggle = 15

[State 1034, 2];svc
type = Projectile
projID = 1001
trigger1 = animelem = 7
trigger1 = palno != 6 && palno != 12
trigger1 = var(58) = 0
projremove = 1
Projremovetime = 27
projhits = 1
projremanim = 1
projhitanim = 999
projpriority = 999999999
projanim = 1001
offset = 100,0
velocity = 0,0
attr = S, SP
damage   = 120,10
animtype = heavy
guardflag = M
hitflag = MA
pausetime = 0,7
guard.pausetime = 0,8
hitsound   = S1,14
guardsound = S1,19
sparkxy = -10,-75 + var(12)
sparkno = S8001
guard.sparkno = S8004
ground.type = high
ground.slidetime = 25
ground.hittime  = 23
ground.velocity = -3,-6
air.animtype = Back
air.velocity = -3,-6
air.juggle = 3
fall = 1
air.fall = 1
Projedgebound = 40

[State 1034, 2];96
type = Projectile
projID = 1001
trigger1 = animelem = 7
trigger1 = var(58) = 1
trigger1 = palno != 6 && palno != 12
projremove = 1
Projremovetime = 27
projhits = 1
projremanim = 1
projhitanim = 999
projpriority = 999999999
projanim = 1001
offset = 100,0
velocity = 0,0
attr = S, SP
damage   = 120,10
animtype = heavy
guardflag = M
hitflag = MA
pausetime = 0,7
guard.pausetime = 0,8
hitsound   = S1,14
guardsound = S1,19
sparkxy = -10,-75 + var(12)
sparkno = S8001
guard.sparkno = S8004
ground.type = high
ground.slidetime = 25
ground.hittime  = 23
ground.velocity = -3,-6
air.animtype = Back
air.velocity = -3,-6
air.juggle = 3
fall = 1
air.fall = 1
Projedgebound = 40
p2stateno = 2400
p2facing = 1

[State 240, 4];
type = Explod
trigger1 = projhit = 1
trigger1 = var(58) = 1
anim = 508
postype = p2
pos = -10,-75
sprpriority = 2
supermove = 1
ownpal = 1
persistent = 0

[State 1034, 2]
type = Projectile
projID = 1200
trigger1 = animelem = 7
trigger1 = palno != 6 && palno != 12
projremove = 0
Projremovetime = 27
projhits = 1
projremanim = -1
projhitanim = -1
;projmisstime = 2
projpriority = 2147483647
;projremove = 1006
projanim = 1006
offset = 100,0
velocity = 0,0
attr = S, SP
damage   = 140,10
animtype = Up
hitflag = MA
guardflag = M
sparkno = -1
guard.sparkno = S8004
sparkxy = 30,0
hitsound   = S1,14
guardsound = S1,19
pausetime = 0,15
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
guard.hittime = 15
ground.velocity = -3,-7
air.velocity = -3,-5
fall = 1
fall.recover = 0
juggle = 15

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
[Statedef 1002];Y
type    = S
movetype= A
physics = S
juggle  = 15
poweradd= 110
velset = 0,0
anim = 1003
ctrl = 0
sprpriority = 2

[State 840, 4]
type = PlaySnd
trigger1 = Time = 0
value = S0,25

[State 840, 4]
type = PlaySnd
trigger1 = animelem = 7
value = S1,7

[State 1034, 2];ex
type = Projectile
projID = 1001
trigger1 = animelem = 7
trigger1 = palno = 6 || palno = 12
projremove = 0
Projremovetime = 27
projhits = 1
projremanim = 2021
projhitanim = 2021
projpriority = 999999999
projanim = 2020
offset = 150,0
velocity = 1,0
attr = S, SP
damage   = 120,10
guard.pausetime = 0,8
animtype = up
guardflag = M
hitflag = MA
pausetime = 0,7
hitsound   = S1,14
guardsound = S1,19
sparkxy = -10,-75 + var(12)
sparkno = S8001
guard.sparkno = S8004
ground.type = high
ground.slidetime = 25
ground.hittime  = 23
ground.velocity = -3,-6
air.animtype = up
air.velocity = -3,-6
air.juggle = 3
fall = 1
air.fall = 1
Projedgebound = 40

[State 1034, 2];ex
type = Projectile
projID = 1200
trigger1 = animelem = 7
trigger1 = palno = 6 || palno = 12
projremove = 0
Projremovetime = 27
projhits = 1
projremanim = -1
projhitanim = -1
;projmisstime = 2
projpriority = 2147483647
;projremove = 1006
projanim = 2022
offset = 150,0
velocity = 1,0
attr = S, SP
damage   = 140,10
animtype = Up
hitflag = MA
guardflag = M
sparkno = -1
guard.sparkno = S8004
sparkxy = 30,0
hitsound   = S1,14
guardsound = S1,19
pausetime = 0,15
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
guard.hittime = 15
ground.velocity = -3,-7
air.velocity = -3,-5
fall = 1
fall.recover = 0
juggle = 15

[State 240, 4];
type = Explod
trigger1 = projhit = 1
trigger1 = var(58) = 1
anim = 508
postype = p2
pos = -10,-75
sprpriority = 2
supermove = 1
ownpal = 1
persistent = 0

[State 1034, 2]
type = Projectile
projID = 1001
trigger1 = animelem = 7
trigger1 = var(58) = 0
trigger1 = palno != 6 && palno != 12
projremove = 1
Projremovetime = 27
projhits = 1
projremanim = 1
projhitanim = 999
projpriority = 999999999
projanim = 1001
offset = 150,0
guard.dist = 150
velocity = 0,0
attr = S, SP
damage   = 120,10
animtype = heavy
guardflag = M
hitflag = MA
pausetime = 0,7
guard.pausetime = 0,8
hitsound   = S1,14
guardsound = S1,19
sparkxy = -10,-75 + var(12)
sparkno = S8001
guard.sparkno = S8004
ground.type = high
ground.slidetime = 25
ground.hittime  = 23
ground.velocity = -3,-6
air.animtype = Back
air.velocity = -3,-6
air.juggle = 3
fall = 1
air.fall = 1
Projedgebound = 40

[State 1034, 2]
type = Projectile
projID = 1001
trigger1 = animelem = 7
trigger1 = var(58) = 1
trigger1 = palno != 6 && palno != 12
projremove = 1
Projremovetime = 27
projhits = 1
projremanim = 1
projhitanim = 999
projpriority = 999999999
projanim = 1001
offset = 150,0
guard.dist = 150
velocity = 0,0
attr = S, SP
damage   = 120,10
animtype = heavy
guardflag = M
hitflag = MA
pausetime = 0,7
guard.pausetime = 0,8
hitsound   = S1,14
guardsound = S1,19
sparkxy = -10,-75 + var(12)
sparkno = S8001
guard.sparkno = S8004
ground.type = high
ground.slidetime = 25
ground.hittime  = 23
ground.velocity = -3,-6
air.animtype = Back
air.velocity = -3,-6
air.juggle = 3
fall = 1
air.fall = 1
Projedgebound = 40
p2stateno = 2400
p2facing = 1

[State 1034, 2]
type = Projectile
projID = 1200
trigger1 = animelem = 7
trigger1 = palno != 6 && palno != 12
projremove = 0
Projremovetime = 27
projhits = 1
projremanim = -1
projhitanim = -1
;projmisstime = 2
projpriority = 2147483647
;projremove = 1006
projanim = 1006
offset = 150,0
velocity = 0,0
attr = S, SP
damage   = 140,10
animtype = Up
hitflag = MA
guardflag = M
sparkno = -1
guard.sparkno = S8004
sparkxy = 30,0
hitsound   = S1,14
guardsound = S1,19
pausetime = 0,15
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
guard.hittime = 15
ground.velocity = -3,-7
air.velocity = -3,-5
fall = 1
fall.recover = 0
juggle = 15

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------
[Statedef 1003];B
type    = S
movetype= A
physics = S
juggle  = 15
poweradd= 110
velset = 0,0
anim = 1004
ctrl = 0
sprpriority = 2

[State 840, 4]
type = PlaySnd
trigger1 = Time = 0
value = S0,25

[State 840, 4]
type = PlaySnd
trigger1 = animelem = 7
value = S1,7

[State 1034, 2];ex
type = Projectile
projID = 1001
trigger1 = animelem = 7
trigger1 = palno = 6 || palno = 12
projremove = 0
Projremovetime = 27
projhits = 1
projremanim = 2021
projhitanim = 2021
projpriority = 999999999
projanim = 2020
offset = 200,0
velocity = 1,0
attr = S, SP
damage   = 120,10
guard.pausetime = 0,8
animtype = up
guardflag = M
hitflag = MA
pausetime = 0,7
hitsound   = S1,14
guardsound = S1,19
sparkxy = -10,-75 + var(12)
sparkno = S8001
guard.sparkno = S8004
ground.type = high
ground.slidetime = 25
ground.hittime  = 23
ground.velocity = -3,-6
air.animtype = up
air.velocity = -3,-6
air.juggle = 3
fall = 1
air.fall = 1
Projedgebound = 40

[State 1034, 2];ex
type = Projectile
projID = 1200
trigger1 = animelem = 7
trigger1 = palno = 6 || palno = 12
projremove = 0
Projremovetime = 27
projhits = 1
projremanim = -1
projhitanim = -1
;projmisstime = 2
projpriority = 2147483647
;projremove = 1006
projanim = 2022
offset = 200,0
velocity = 1,0
attr = S, SP
damage   = 140,10
animtype = Up
hitflag = MA
guardflag = M
sparkno = -1
guard.sparkno = S8004
sparkxy = 30,0
hitsound   = S1,14
guardsound = S1,19
pausetime = 0,15
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
guard.hittime = 15
ground.velocity = -3,-7
air.velocity = -3,-5
fall = 1
fall.recover = 0
juggle = 15

[State 1034, 2]
type = Projectile
projID = 1001
trigger1 = animelem = 7
trigger1 = var(58) = 0
trigger1 = palno != 6 && palno != 12
projremove = 1
Projremovetime = 27
projhits = 1
projremanim = 1
projhitanim = 999
projpriority = 999999999
projanim = 1001
offset = 200,0
guard.dist = 200
velocity = 0,0
attr = S, SP
damage   = 120,10
animtype = heavy
guardflag = M
hitflag = MA
pausetime = 0,7
guard.pausetime = 0,8
hitsound   = S1,14
guardsound = S1,19
sparkxy = -10,-75 + var(12)
sparkno = S8001
guard.sparkno = S8004
ground.type = high
ground.slidetime = 25
ground.hittime  = 23
ground.velocity = -3,-6
air.animtype = Back
air.velocity = -3,-6
air.juggle = 3
fall = 1
air.fall = 1
Projedgebound = 40

[State 240, 4];
type = Explod
trigger1 = projhit = 1
trigger1 = var(58) = 1
anim = 508
postype = p2
pos = -10,-75
sprpriority = 2
supermove = 1
ownpal = 1
persistent = 0

[State 1034, 2]
type = Projectile
projID = 1001
trigger1 = animelem = 7
trigger1 = var(58) = 1
trigger1 = palno != 6 && palno != 12
projremove = 1
Projremovetime = 27
projhits = 1
projremanim = 1
projhitanim = 999
projpriority = 999999999
projanim = 1001
offset = 200,0
guard.dist = 200
velocity = 0,0
attr = S, SP
damage   = 120,10
animtype = heavy
guardflag = M
hitflag = MA
pausetime = 0,7
guard.pausetime = 0,8
hitsound   = S1,14
guardsound = S1,19
sparkxy = -10,-75 + var(12)
sparkno = S8001
guard.sparkno = S8004
ground.type = high
ground.slidetime = 25
ground.hittime  = 23
ground.velocity = -3,-6
air.animtype = Back
air.velocity = -3,-6
air.juggle = 3
fall = 1
air.fall = 1
Projedgebound = 40
p2stateno = 2400
p2facing = 1

[State 1034, 2]
type = Projectile
projID = 1200
trigger1 = animelem = 7
trigger1 = palno != 6 && palno != 12
projremove = 0
Projremovetime = 27
projhits = 1
projremanim = -1
projhitanim = -1
;projmisstime = 2
projpriority = 2147483647
;projremove = 1006
projanim = 1006
offset = 200,0
velocity = 0,0
attr = S, SP
damage   = 140,10
animtype = Up
hitflag = MA
guardflag = M
sparkno = -1
guard.sparkno = S8004
sparkxy = 30,0
hitsound   = S1,14
guardsound = S1,19
pausetime = 0,15
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
guard.hittime = 15
ground.velocity = -3,-7
air.velocity = -3,-5
fall = 1
fall.recover = 0
juggle = 15

[State 1000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;*****************************************
;---------------------------------------------------------------------------
[Statedef 1060];
type    = S
movetype= A
physics = S
juggle  = 15
poweradd = 80
ctrl = 0
velset = 0,0
anim = 1060
sprpriority = -1

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,14

[State 821, 1]
type = Velset
trigger1 = animelem = 2
x = 8

[State 821, 1]
type = Velset
trigger1 = animelem = 6
x = 0

[State 240, 4]
type = Explod
trigger1 = animelem = 6
anim = 520
postype = p1
pos = 0,0
sprpriority = 5
ownpal = 1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA
animtype  = hard
damage    = 60,9
guardflag = M
hitflag = MA
pausetime = 2,5
guard.pausetime = 3,7
guard.hittime = 15
sparkxy = 0,-60
hitsound   = S1,6
guardsound = S1,19
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -6
air.velocity = -6,-4
sparkno = S8001
guard.sparkno = S8004
guardsound = S0,33
air.fall = 1
air.juggle  = 15

[State 210, 5]
type = ChangeState
trigger1 = animelem = 6, >= 1
trigger1 = movecontact = 1
triggerall = random <= 460
value = 1061

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 210, 5]
type = null;ChangeState
trigger1 = Animelem = 7, >= 3
trigger1 = var(2) >= 1
value = 1061

[Statedef 1061];
type    = S
movetype= A
physics = S
juggle  = 15
poweradd = 80
ctrl = 0
velset = 0,0
anim = 1061
sprpriority = -1

[State 701, 1]
type = Width
trigger1 = AnimElem = 5
player = 40,0

[State 821, 4]
type = posadd
trigger1 = animelem = 6
x = 33

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,15

[State 821, 1]
type = Velset
trigger1 = animelem = 1
x = 7.5

[State 821, 1]
type = Velset
trigger1 = animelem = 5
x = 0

[State 240, 4]
type = Explod
trigger1 = animelem = 5
anim = 521
postype = p1
pos = 0,0
sprpriority = 5
ownpal = 1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA
animtype  = hard
damage    = 60,9
guardflag = M
hitflag = MA
pausetime = 4,5
guard.pausetime = 4,7
sparkxy = 0,-60
hitsound   = S1,6
guardsound = S1,19
ground.type = High
ground.slidetime = 13
ground.hittime  = 14
ground.velocity = -6
air.velocity = -6,-4
sparkno = S8001
guard.sparkno = S8004
air.fall = 1
air.juggle  = 15

[State 210, 5]
type = ChangeState
triggerall = var(58) = 0
triggerall = var(59) = 1
trigger1 = animelem = 5, >= 1
trigger1 = movecontact = 1
triggerall = random <= 460
value = 1062

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1062];
type    = S
movetype= A
physics = S
juggle  = 15
poweradd = 80
ctrl = 0
velset = 0,0
anim = 1062
sprpriority = -1

[State 821, 4]
type = posadd
trigger1 = animelem = 1
x = 33

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,24

[State 821, 1]
type = Velset
trigger1 = animelem = 1, >= 0
trigger1 = AnimElem = 9, <= 0
x = 2

[State 191, 1]
type = envcolor
trigger1 = movehit = 1
time = 1
value = 255,255,255
under = -1
ignorehitpause = 1
persistent = 0

[State 240, 4]
type = Explod
trigger1 = animelem = 7
anim = 522
postype = p1
pos = 0,0
sprpriority = 5
ownpal = 1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 7
attr = S, SA
animtype  = up
damage    = 60,9
guardflag = M
hitflag = MA
pausetime = 0,3
guard.pausetime = 2,5
sparkxy = 0,-60
hitsound   = S1,10
guardsound = S1,18
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -3,-5
air.velocity = -3,-4
sparkno = S8001
guard.sparkno = S8004
fall = 1
air.juggle  = 15

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1600];
type    = S
movetype= A
physics = S
juggle  = 15
velset = 0,0
ctrl = 0
anim = 1600
sprpriority = 2

[State 191, 1]
type = playsnd
trigger1 = Time = 0
value = S0,22

[State 191, 1]
type = playsnd
trigger1 = animelem = 8
value = S1,23

[State 240, 4];
type = Explod
trigger1 = animelem = 8
anim = 1605
postype = p1
pos = 35,-118

[State 240, 4]
type = Explod
trigger1 = animelem = 9, = 0
trigger2 = animelem = 9, = 5
trigger3 = animelem = 9, = 10
trigger4 = animelem = 9, = 15
trigger5 = animelem = 9, = 20
trigger6 = animelem = 9, = 25
trigger7 = animelem = 9, = 30
trigger8 = animelem = 9, = 35
trigger9 = animelem = 9, = 40
trigger10 = animelem = 9, = 45
anim = 1603
postype = p1
pos = 10,-55
velset = 2,-5
bindtime = -1
facing = 1
sprpriority = 5
ownpal = 1
;removetime = 42
removeongethit = 1

[State 240, 4]
type = Explod
trigger1 = animelem = 9, = 3
trigger2 = animelem = 9, = 8
trigger3 = animelem = 9, = 13
trigger4 = animelem = 9, = 18
trigger5 = animelem = 9, = 23
trigger6 = animelem = 9, = 28
trigger7 = animelem = 9, = 33
trigger8 = animelem = 9, = 38
trigger9 = animelem = 9, = 43
anim = 1602
postype = p1
pos = 30,-67
facing = 1
vel = 15,0
bindtime = -1
sprpriority = 5
ownpal = 1
;removetime = 42
removeongethit = 1

[State 240, 4];
type = Explod
trigger1 = animelem = 9, = 6
trigger2 = animelem = 9, = 11
trigger3 = animelem = 9, = 16
trigger4 = animelem = 9, = 21
trigger5 = animelem = 9, = 26
trigger6 = animelem = 9, = 31
trigger7 = animelem = 9, = 36
trigger8 = animelem = 9, = 41
trigger9 = animelem = 9, = 46
anim = 1604
postype = p1
pos = 10,-65
facing = 1
bindtime = -1
sprpriority = 5
ownpal = 1
;removetime = 42
removeongethit = 1

[State 2100]
type = Pause
trigger1 = MoveHit
trigger1 = (GameTime%3) = 1
trigger1 = AnimElem = 10, <= 0
;trigger1 = var(13) = 1
time = 1
movetime = 0
ignorehitpause = 1

[State 2100]
type = varrandom
trigger1 = 1
v = 1
range = 20,-20

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 9, >= 0
Trigger1 = (GameTime%5) =1
attr = S, NA
animtype  = hard
damage    = 25,6
guardflag = M
hitflag = MA
pausetime = 0,3
sparkxy = 10,-45+var(12)+var(1)
hitsound   = S1,6
guardsound = S1,18
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -8
guard.velocity = -7
air.velocity = -4,-5
sparkno = S8002
guard.sparkno = S8004
air.juggle  = 15
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -7
guard.cornerpush.veloff = -6
air.fall = 1

[State 5201,5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------
;-------------------------------------------------------------------------
;-------------------------------------------------------------------------
[Statedef 1601];
type    = S
movetype= A
physics = S
juggle  = 15
velset = 0,0
ctrl = 0
anim = 1601
sprpriority = 2

[State 191, 1]
type = playsnd
trigger1 = Time = 0
value = S0,22

[State 191, 1]
type = playsnd
trigger1 = animelem = 7
value = S1,23

[State 240, 4]
type = Explod
trigger1 = animelem = 7
anim = 1605
postype = p1
pos = 6,-136

[State 2100]
type = varrandom
trigger1 = 1
v = 1
range = 20,-20

[State 240, 4]
type = Explod
trigger1 = animelem = 8, = 0
trigger2 = animelem = 8, = 5
trigger3 = animelem = 8, = 10
trigger4 = animelem = 8, = 15
trigger5 = animelem = 8, = 20
trigger6 = animelem = 8, = 25
trigger7 = animelem = 8, = 30
trigger8 = animelem = 8, = 35
trigger9 = animelem = 8, = 40
trigger10 = animelem = 8, = 45
anim = 1603
postype = p1
pos = 0,-128
facing = 1
bindtime = -1
sprpriority = 5
ownpal = 1
;removetime = 42
removeongethit = 1

[State 240, 4]
type = Explod
trigger1 = animelem = 8, = 3
trigger2 = animelem = 8 = 8
trigger3 = animelem = 8 = 13
trigger4 = animelem = 8, = 18
trigger5 = animelem = 8, = 23
trigger6 = animelem = 8, = 28
trigger7 = animelem = 8, = 33
trigger8 = animelem = 8, = 38
trigger9 = animelem = 8, = 43
anim = 1602
postype = p1
pos = 26,-129
facing = 1
sprpriority = 5
ownpal = 1
;removetime = 42
bindtime = -1
removeongethit = 1

[State 240, 4]
type = Explod
trigger1 = animelem = 8, = 6
trigger2 = animelem = 8, = 11
trigger3 = animelem = 8, = 16
trigger4 = animelem = 8, = 21
trigger5 = animelem = 8, = 26
trigger6 = animelem = 8, = 31
trigger7 = animelem = 8, = 36
trigger8 = animelem = 8, = 41
trigger9 = animelem = 8, = 46
anim = 1604
postype = p1
pos = 0,-130
facing = 1
sprpriority = 5
ownpal = 1
;removetime = 42
bindtime = -1
removeongethit = 1

[State 2100]
type = Pause
trigger1 = MoveHit
trigger1 = (GameTime%3) = 1
trigger1 = AnimElem = 9, <= 0
time = 1
movetime = 0
;ignorehitpause = 1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 8, >= 0
Trigger1 = (GameTime%5) =1
Trigger1 = hitcount < 7
attr = S, NA
animtype  = hard
damage    = 25,6
guardflag = M
hitflag = MAF
pausetime = 0,3
sparkxy = 10,-45+var(12)+var(1)
hitsound   = S1,6
guardsound = S1,18
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -8
guard.velocity = -12
air.velocity = -4,-4
sparkno = S8002
guard.sparkno = S8004
air.juggle  = 15
air.fall = 1
ground.cornerpush.veloff = -7
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -7

[State 5201,5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1410];A
type    = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1430
sprpriority = 2


[State 840,0]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 240, 4]
type = Explod
trigger1 = animelem = 2
anim = 1026
postype = p1
pos = 30,15
sprpriority = 5
ownpal = 1

[State 240, 4]
type = velset
trigger1 = animelem = 2, = 18
trigger1 = palno != 6 && palno != 12
x = 8

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,21

[State 191, 1]
type = playsnd
trigger1 = animelem = 2
value = S1,20

[State 240, 4]
type = ChangeState
trigger1 = Time = 45
;trigger1 = palno != 6 && palno != 12
value = 1411

[Statedef 1411];end
type = S
physics = N
movetype= I
anim = 101
velset = 2,0
ctrl = 0

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------
[Statedef 1420];b
type    = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1610
sprpriority = 2


[State 840,0]
type = PlayerPush
trigger1=Time >= 0
value = 0

[State 240, 4]
type = statetypeset
trigger1 = animelem = 2 = 15
value = A

[State 240, 4]
type = Explod
trigger1 = animelem = 2
anim = 1026
postype = p1
pos = 30,15
sprpriority = 5
ownpal = 1

[State 240, 4]
type = velset
trigger1 = animelem = 2 = 15
x = 8
y = -9

[State 821, 1]
type = VelAdd
trigger1 = animelem = 2, >= 15
y = .7

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,21

[State 191, 1]
type = playsnd
trigger1 = animelem = 2
value = S1,22

[State 240, 4]
type = velset
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
x = 0

[State 5050, 6]
type = changeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52
ctrl = 1
;***********ɱ****************************
;---------------------------------------------------------------------------
[Statedef 1400];ڰ
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1402
sprpriority = 2
poweradd = -1000

[State 800, 1]
type = HitDef
triggerall = p2stateno != 150
triggerall = p2stateno != 152
triggerall = p2stateno != 154
Trigger1 = Time = 0
animtype  = Up
attr = S, HT
hitflag = M
priority = 1, Miss
sparkno = -1
sprpriority = 1
p2facing = 1
p1stateno = 1402
p2stateno = 1020
guard.dist = 0
fall = 1
fall.recover = 0

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 1401

[Statedef 1401];
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1400
sprpriority = 2

;--------------------------------------
[State 3000, 2]
type = PlaySnd
trigger1 = Time = 3
value = S1,29
channel = 1

[State 3000, 3]
type = SuperPause
trigger1 = Time = 0
time = 32
p2defmul = 1
unhittable = 1
movetime = 32
anim = -1

[State 3000, 4]
type = EnvColor
trigger1 = Time = [0,32]
time = 1
value = 0,0,0
under = 1
supermove = 1

[State 3000, 5]
type = Explod
trigger1 = Time = 5
anim = 8006
sprpriority = -4
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1

[State 3000, 6]
type = Explod
trigger1 = Time = 10
anim = 8007
sprpriority = -2
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1

[State 3000, 7]
type = Explod
trigger1 = Time = 20
anim = 8008
sprpriority = 2
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1
;---------------------------

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1402];
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1401
sprpriority = 2

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,17


[State 240, 4]
type = targetstate
trigger1 = time = 0
value = 1020

[State 701, 1]
type = Width
trigger1 = 1
edge = 60,0

[State 240, 4]
type = targetbind
trigger1 = animelem = 1
postype = p1
pos = 33,0

[State 240, 4]
type = targetstate
trigger1 = animelem = 4
value = 1021

[State 240, 4]
type = targetbind
trigger1 = animelem = 4
postype = p1
pos = 50,-96

[State 240, 4]
type = targetbind
trigger1 = animelem = 5
postype = p1
pos = 36,-134

;--------------------------------------
[State 3000, 2]
type = PlaySnd
trigger1 = Time = 3
value = S1,29
channel = 1

[State 3000, 3]
type = SuperPause
trigger1 = Time = 0
time = 32
p2defmul = 1
unhittable = 1
movetime = 32
anim = -1

[State 3000, 4]
type = EnvColor
trigger1 = Time = [0,32]
time = 1
value = 0,0,0
under = 1
supermove = 1

[State 3000, 5]
type = Explod
trigger1 = Time = 5
anim = 8006
sprpriority = -4
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1

[State 3000, 6]
type = Explod
trigger1 = Time = 10
anim = 8007
sprpriority = -2
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1

[State 3000, 7]
type = Explod
trigger1 = Time = 20
anim = 8008
sprpriority = 2
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1
;---------------------------


[State 800, 2]
type = ChangeState
Trigger1 = animTime = 0
value = 1403

[Statedef 1403];ץ
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1012
sprpriority = 2

[State 840, 4]
type = PlaySnd
trigger1 = Time = 0
value = S1,2

[State 240, 4]
type = Explod
trigger1 = time = 0
anim = 1025
removetime = 85
postype = p1
pos = 52,-13
sprpriority = 4
ownpal = 1

[State 240, 4]
type = envshake
trigger1 = time = 0
triggerall = random <= 500
time = 85
ampl = -2

[State 240, 4]
type = envcolor
trigger1 = animelem = 2
value = 255,255,255
time = 1
under = -1

[State 240, 4]
type = targetstate
trigger1 = animelem = 1
value = 1022

[State 240, 4]
type = targetbind
trigger1 = animelem = 1
postype = p1
pos = 35,-130

[State 800, 2]
type = ChangeState
Trigger1 = Time = 85
value = 1404

[Statedef 1404];
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1420
sprpriority = 2

[State 240, 4]
type = Explod
trigger1 = time = 0
anim = 1026
ID = 1026
postype = p1
pos = 55,20
sprpriority = 4
supermove = 1
ownpal = 1

[State 240, 4]
type = targetstate
trigger1 = animelem = 1
value = 1023

[State 240, 4]
type = targetstate
trigger1 = animelem = 3
value = 1024

[State 240, 4]
type = targetbind
trigger1 = animelem = 1
postype = p1
pos = 6,-134

[State 240, 4]
type = targetbind
trigger1 = animelem = 2
postype = p1
pos = 9,-135

[State 240, 4]
type = targetlifeadd
trigger1 = animelem = 3
value = -290

[State 240, 4]
type = targetbind
trigger1 = animelem = 3
postype = p1
pos = 40,-50

[State 800, 2]
type = ChangeState
Trigger1 = animTime = 0
value = 0
ctrl = 1

;***********************************************
;---------------------------------------------------------------------------
[Statedef 1500];ڰmax
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1402
sprpriority = 2
poweradd = -2000

[State 800, 1]
type = HitDef
triggerall = p2stateno != 150
triggerall = p2stateno != 152
triggerall = p2stateno != 154
Trigger1 = Time = 0
animtype  = Up
attr = S, HT
hitflag = M
priority = 1, Miss
sparkno = -1
sprpriority = 1
p2facing = 1
p1stateno = 1502
p2stateno = 1020
guard.dist = 0
fall = 1
fall.recover = 0

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 1501

[Statedef 1501];
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1400
sprpriority = 2

;--------------------------------------
[State 3200, 0]
type = SuperPause
trigger1 = Time = 0
time = 58
darken = 0
p2defmul = 1
unhittable = 1
movetime = 58
anim = -1

[State 3200, 1]
type = PlaySnd
trigger1 = Time = 0
value = S1,30

[State 3200, 4]
type = EnvColor
trigger1 = Time = [0,58]
time = 1
value = 0,0,0
under = 1
supermove = 1

[State 3200, 5]
type = Explod
trigger1 = Time = 1
anim = 8009
sprpriority = -6
postype = left
pos = 160,130
scale = 1.09,1.09
bindtime = 1
supermove = 1
ownpal = 1

[State 3200, 7]
type = Explod
trigger1 = Time = 28
anim = 8010
sprpriority = -4
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1

[State 3200, 8]
type = Explod
trigger1 = Time = 28
anim = 8011
sprpriority = -2
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1

[State 3200, 9]
type = Explod
trigger1 = Time = 28
anim = 8012
sprpriority = 4
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1502];
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1401
sprpriority = 2

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S0,17

[State 240, 4]
type = targetstate
trigger1 = time = 0
value = 1020

[State 701, 1]
type = Width
trigger1 = 1
edge = 60,0

[State 240, 4]
type = targetbind
trigger1 = animelem = 1
postype = p1
pos = 33,0

[State 240, 4]
type = targetstate
trigger1 = animelem = 4
value = 1021

[State 240, 4]
type = targetbind
trigger1 = animelem = 4
postype = p1
pos = 50,-96

[State 240, 4]
type = targetbind
trigger1 = animelem = 5
postype = p1
pos = 36,-134

;--------------------------------------
;[State 3200, 0]
;type = SuperPause
;trigger1 = Time = 0
;time = 58
;darken = 0
;p2defmul = 1
;unhittable = 1
;movetime = 58
;anim = -1

[State 3200, 1]
type = PlaySnd
trigger1 = Time = 0
value = S1,30

[State 3200, 4]
type = EnvColor
trigger1 = Time = [0,58]
time = 1
value = 0,0,0
under = 1
supermove = 1

[State 3200, 5]
type = Explod
trigger1 = Time = 1
anim = 8009
sprpriority = -6
postype = left
pos = 160,130
scale = 1.09,1.09
bindtime = 1
supermove = 1
ownpal = 1

[State 3200, 7]
type = Explod
trigger1 = Time = 28
anim = 8010
sprpriority = -4
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1

[State 3200, 8]
type = Explod
trigger1 = Time = 28
anim = 8011
sprpriority = -2
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1

[State 3200, 9]
type = Explod
trigger1 = Time = 28
anim = 8012
sprpriority = 4
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1

[State 800, 2]
type = ChangeState
Trigger1 = animTime = 0
value = 1503

[Statedef 1503];ץ
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1012
sprpriority = 2

[State 840, 4]
type = PlaySnd
trigger1 = Time = 0
value = S1,2

[State 240, 4]
type = Explod
trigger1 = time = 0
anim = 1025
removetime = 85
postype = p1
pos = 52,-13
sprpriority = 4
ownpal = 1

[State 240, 4]
type = Explod
trigger1 = time = 0
anim = 1108
removetime = 85
postype = p1
pos = 32,0
sprpriority = 4
ownpal = 1

[State 240, 4]
type = Explod
trigger1 = time = 2
anim = 1001
removetime = 14
postype = p1
pos = -12,0
sprpriority = 4
ownpal = 1

[State 240, 4]
type = Explod
trigger1 = time = 20
anim = 1001
removetime = 14
postype = p1
pos = 102,0
sprpriority = 4
ownpal = 1

[State 240, 4]
type = Explod
trigger1 = time = 42
anim = 1001
removetime = 12
postype = p1
pos = -22,0
sprpriority = 4
ownpal = 1


[State 240, 4]
type = envshake
trigger1 = time = 0
triggerall = random <= 500
time = 85
ampl = -2

[State 240, 4]
type = envcolor
trigger1 = animelem = 2
value = 255,255,255
time = 1
under = -1

[State 240, 4]
type = targetstate
trigger1 = animelem = 1
value = 1022

[State 240, 4]
type = targetbind
trigger1 = animelem = 1
postype = p1
pos = 35,-130

[State 800, 2]
type = ChangeState
Trigger1 = Time = 85
value = 1504

[Statedef 1504];
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1420
sprpriority = 2

[State 240, 4]
type = Explod
trigger1 = time = 0
anim = 1026
ID = 1026
postype = p1
pos = 55,20
sprpriority = 4
supermove = 1
ownpal = 1

[State 240, 4]
type = targetstate
trigger1 = animelem = 1
value = 1023

[State 240, 4]
type = targetstate
trigger1 = animelem = 3
value = 1024

[State 240, 4]
type = targetbind
trigger1 = animelem = 1
postype = p1
pos = 6,-134

[State 240, 4]
type = targetbind
trigger1 = animelem = 2
postype = p1
pos = 9,-135

[State 240, 4]
type = targetlifeadd
trigger1 = animelem = 3
value = -400

[State 240, 4]
type = targetbind
trigger1 = animelem = 3
postype = p1
pos = 40,-50

[State 800, 2]
type = ChangeState
Trigger1 = animTime = 0
value = 0
ctrl = 1
;******************8zhinv******************************
;-------------------------------------------------------------
[Statedef 1030];
type    = S
movetype= A
physics = S
juggle  = 15
poweradd= -1000
ctrl = 0
velset = 0,0
anim = 1030
sprpriority = 1

[State 840, 4]
type = PlaySnd
trigger1 = Time = 0
value = S0,28

;--------------------------------------
[State 3000, 2]
type = PlaySnd
trigger1 = Time = 3
value = S1,29
channel = 1

[State 3000, 3]
type = SuperPause
trigger1 = Time = 0
time = 32
p2defmul = 1
unhittable = 1
movetime = 32
anim = -1

[State 3000, 4]
type = EnvColor
trigger1 = Time = [0,32]
time = 1
value = 0,0,0
under = 1
supermove = 1

[State 3000, 5]
type = Explod
trigger1 = Time = 5
anim = 8006
sprpriority = -4
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1

[State 3000, 6]
type = Explod
trigger1 = Time = 10
anim = 8007
sprpriority = -2
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1

[State 3000, 7]
type = Explod
trigger1 = Time = 20
anim = 8008
sprpriority = 2
postype = p1
pos = 9,-66
bindtime = 1
supermove = 1
ownpal = 1
;---------------------------

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 1031

[Statedef 1031];
type    = S
movetype= A
physics = N
juggle  = 15
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1031
sprpriority = 1

[State -3, 5]
type = PlaySnd
trigger1 = animelem = 2
value = S1,9

[State 840, 2]
type = afterimage
trigger1 = time = 0
time = 20
length = 12
PalContrast = 110,110,225
;PalBright   =   3,3,9
PalAdd      =  0,0,85
trans = add
TimeGap  = 1
FrameGap = 4
ignorehitpause = 1

[State 840, 2]
type = afterimagetime
trigger1 = 1
time = 2

[State 240, 4]
type = velset
trigger1 = animelem = 3
x = 10

[State 800, 1]
type = HitDef
Trigger1 = 1
animtype  = hard
attr = S, HA
guardflag = M
pausetime = 7,10
guard.pausetime = 9,7
hitflag = MA
priority = 4,hit
hitsound = S1,14
guardsound = S1,19
sparkno = S8001
guard.sparkno = S8004
sparkxy = 10,-30
ground.hittime  = 12
ground.velocity = -3
air.velocity = -3
guard.velocity = -5
sprpriority = 1
air.fall = 1
fall.recover = 0
;p2facing = 1
;p1stateno = 1033
;p2stateno = 1045
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0


[State 240, 4]
type = varset
trigger1 = time = 0
var(10) = 0

[State 240, 4]
type = varadd
trigger1 = movehit = 1
trigger1 = enemy,movetype = H
var(10) = 1
persistent = 0
ignorehitpause = 1

[State 240, 4]
type = ChangeState
trigger1 = movehit = 1
trigger1 = var(10) >= 1
value = 1033

[State 240, 4]
type = ChangeState
trigger1 = movehit = 1
trigger1 = var(10) = 0
value = 1032

[State 240, 4]
type = ChangeState
trigger1 = Time = 30
trigger1 = movehit = 0
value = 1032

[State 5050, 6]
type = changeState
trigger1 = moveguarded = 1
value = 1032

[Statedef 1032];
type = S
physics = S
movetype= I
anim = 104
velset = 10,0
ctrl = 0

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1033];
type    = S
movetype= A
physics = N
juggle  = 15
poweradd= 0
ctrl = 0
velset = 1.5,0
anim = 1032
sprpriority = 1

[State 240, 4]
type = posset
trigger1 = time = 0
y = 0

[State 240, 4]
type = targetstate
trigger1 = time = 0
trigger1 = var(10) >= 1
value = 1045

[State 701, 1]
type = Width
trigger1 = 1
edge = 45,0

[State 240, 4]
type = targetbind
trigger1 = animelem = 5, >= 0
postype = p1
pos = 50,0

[State 240, 4]
type = varrandom
trigger1 = 1
v = 1
range = 1,2

[State 240, 4]
type = Explod
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
anim = 8001
postype = p1
pos = 50,-60
sprpriority = 5
supermove = 1
ownpal = 1

[State 240, 4]
type = Explod
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
anim = 8002
postype = p1
pos = 50,-60
sprpriority = 5
supermove = 1
ownpal = 1

[State 240, 4]
type = hitadd
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
value = 1

[State 240, 4]
type = envcolor
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
value = 255,0,0
time = 1
under = -1

[State 240, 4]
type = targetstate
trigger1 = animelem = 5
trigger2 = animelem = 16
trigger3 = animelem = 27
value = 1040

[State 240, 4]
type = targetstate
trigger1 = animelem = 10
trigger2 = animelem = 21
trigger3 = animelem = 32
value = 1041

[State 840, 4]
type = PlaySnd
triggerall = var(1) = 1
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
value = S1,14

[State 840, 4]
type = PlaySnd
triggerall = var(1) = 2
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
value = S1,14

[State 840, 4]
type = targetlifeadd
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
value = -34
kill = 0

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 1034

[Statedef 1034];
type    = S
movetype= A
physics = N
juggle  = 15
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1033
sprpriority = 4

[State 240, 4]
type = targetstate
trigger1 = animelem = 1
value = 1046

[State 240, 4]
type = Explod
trigger1 = animelem = 5
anim = 8002
ID = 500
postype = p1
pos = 19,-125
sprpriority = 6
removetime = 999
ownpal = 1

[State 240, 4]
type = Explod
trigger1 = AnimTime = 0
anim = 8003
postype = p1
pos = 19,-125
sprpriority = 6
ownpal = 1

[State 240, 4];
type = Explod
trigger1 = animelem = 5
anim = 8002
postype = p1
pos = 3,-110
ID = 500
sprpriority = 6
removetime = 999
ownpal = 1

[State 240, 4]
type = Explod
trigger1 = AnimTime = 0
anim = 8003
postype = p1
pos = 3,-110
sprpriority = 6
ownpal = 1


[State 240, 4]
type = Explod
trigger1 = animelem = 5, = 4
anim = 8002
postype = p1
ID = 500
pos = 35,-100
facing = -1
sprpriority = 6
removetime = 999
ownpal = 1

[State 240, 4]
type = Explod
trigger1 = AnimTime = 0
anim = 8003
postype = p1
pos = 35,-100
facing = -1
sprpriority = 6
ownpal = 1

[State 240, 4]
type = Explod
trigger1 = animelem = 5
anim = 8002
ID = 500
postype = p1
pos = 30,-115
facing = -1
sprpriority = 6
removetime = 999
ownpal = 1

[State 240, 4]
type = Explod
trigger1 = AnimTime = 0
anim = 8003
postype = p1
pos = 30,-115
facing = -1
sprpriority = 6
ownpal = 1

[State 240, 4];
type = Explod
trigger1 = animelem = 4
anim = 8002
postype = p1
pos = 18,-120
sprpriority = 2
supermove = 1
ownpal = 1

[State 840, 4]
type = null;posadd
trigger1 = time = 0
x = 15

[State 240, 4]
type = targetstate
trigger1 = animelem = 4
value = 1042

[State 240, 4]
type = targetbind
trigger1 = animelem = 4
postype = p1
pos = 18,-133

[State 840, 4]
type = PlaySnd
trigger1 = animelem = 4
value = S1,21

[State 840, 4]
type = PlaySnd
trigger1 = animelem = 10
value = S1,21

[State 840, 4]
type = PlaySnd
trigger1 = animelem = 16
value = S1,21

[State 240, 4]
type = RemoveExplod
trigger1 = AnimTime = 0
ID = 500

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 1035

[Statedef 1035];
type    = S
movetype= A
physics = N
juggle  = 15
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1034
sprpriority = 1

[State 240, 4]
type = targetstate
trigger1 = animelem = 1
value = 1043

[State 240, 4]
type = targetbind
trigger1 = animelem = 1
postype = p1
pos = -32,-118

[State 240, 4]
type = targetbind
trigger1 = animelem = 2
postype = p1
pos = -16,-113

[State 240, 4]
type = targetbind
trigger1 = animelem = 3
postype = p1
pos = -47,-35

[State 240, 4]
type = targetbind
trigger1 = animelem = 4
postype = p1
pos = -55,0

[State 840, 4]
type = targetlifeadd
trigger1 = animelem = 4
value = -100

[State 840, 4]
type = envshake
trigger1 = animelem = 4
time = 5

[State 840, 4]
type = posadd
trigger1 = animelem = 2
x = -30

[State 840, 4]
type = posadd
trigger1 = animelem = 3
x = -25

[State 240, 4]
type = targetstate
trigger1 = animelem = 6,= 2
value = 1044

[State 840, 4]
type = turn
trigger1 = animtime = 0
value = 1

[State 840, 4]
type = PlaySnd
trigger1 = animelem = 2
value = S0,15

[State -3, 5]
type = PlaySnd
trigger1 = animelem = 4
value = S1,26

[State 240, 4]
type = Explod
trigger1 = animelem = 4
anim = 516
postype = p1
pos = -55,-5
sprpriority = -4
ownpal = 1

[State 240, 4]
type = Explod
trigger1 = animelem = 4
anim = 517
postype = p1
pos = -55,10
sprpriority = 6
ownpal = 1

[State 240, 4]
type = Explod
trigger1 = animelem = 4
anim = 518
postype = p1
pos = -55,10
sprpriority = -5
ownpal = 1

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1036];
type = S
physics = S
movetype= A
anim = 1041
velset = 0,0
ctrl = 0

[State 195, 2]
type = velset
trigger1 = Time = 0
x = 0

[State 800, 1]
type = HitDef
Trigger1 = animelem = 1
animtype  = hard
attr = S, HA
guardflag = M
pausetime = 5,17
guard.pausetime = 5,10
damage = 10,10
hitflag = MA
priority = 2
hitsound = S1,12
guardsound = S1,19
sparkno = S8000
guard.sparkno = S8004
sparkxy = 10,-30
sprpriority = 1
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
air.velocity = -4,-4
air.animtype  = up
air.fall = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = 0,0

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1037];
type = S
physics = S
movetype= I
anim = 1041
velset = 0,0
ctrl = 0

[State 195, 2]
type = velset
trigger1 = Time = 0
x = 0

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1040];
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 9000, 1]
type = ScreenBound
trigger1 = 1
movecamera = 1,0

[State 821, 4]
type = changeanim2
trigger1 = time = 0
value = 1035

[Statedef 1041];
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 9000, 1]
type = ScreenBound
trigger1 = 1
movecamera = 1,0

[State 821, 4]
type = changeanim2
trigger1 = time = 0
value = 1036

[Statedef 1042];head
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 9000, 1]
type = ScreenBound
trigger1 = 1
movecamera = 1,0

[State 821, 4]
type = changeanim2
trigger1 = time = 0
value = 1037

[Statedef 1043];
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 9000, 1]
type = ScreenBound
trigger1 = 1
movecamera = 1,0

[State 821, 4]
type = changeanim2
trigger1 = time = 0
value = 1038

[Statedef 1044];
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 4,-7
sprpriority = -1
movetype = H

[State 821, 1]
type = VelAdd
Trigger1 = time >= 0
y = .45

[State 821, 4]
type = changeanim2
trigger1 = time = 0
value = 1039

[State 5050, 6]
type = selfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

[Statedef 1045];
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 821, 4]
type = changeanim2
trigger1 = time = 0
value = 1040

[State 821, 4]
type = selfstate
trigger1 = time = 15
value = 0
ctrl = 1

[Statedef 1046];
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 821, 4]
type = turn
trigger1 = time = 0
trigger1 = facing = 1
trigger1 = enemy,facing = 1

[State 821, 4]
type = turn
trigger1 = time = 0
trigger1 = facing = -1
trigger1 = enemy,facing = -1

[State 821, 4]
type = changeanim2
trigger1 = time = 0
value = anim

[Statedef 1047];
type    = A
physics = A
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 821, 4]
type = changeanim2
trigger1 = time = 0
value = 1040

[State 821, 4]
type = selfstate
trigger1 = time = 15
value = 5300
ctrl = 1
;*******************8max**************************

[Statedef 1310];
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 821, 4]
type = changeanim2
trigger1 = time = 0
value = 1304

[State 9000, 1]
type = ScreenBound
trigger1 = 1
movecamera = 1,0


[Statedef 1311];
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = 4
movetype = H

[State 821, 1]
type = Velset
trigger1 = animelem = 2
x = 4
y = -7

[State 821, 1]
type = VelAdd
trigger1 = animelem = 2, >= 0
y = .45

[State 821, 4]
type = changeanim2
trigger1 = time = 0
value = 1305

[State 5050, 6]
type = selfState
trigger1 = animelem = 2, >= 0
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;-------------------------------------------------------------
[Statedef 1700];yawotomeMAX
type    = S
movetype= A
physics = S
juggle  = 15
poweradd= -2000
ctrl = 0
velset = 0,0
anim = 1030
sprpriority = 1

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 840, 4]
type = PlaySnd
trigger1 = Time = 0
value = S0,8

;--------------------------------------
;[State 3200, 0]
;type = SuperPause
;trigger1 = Time = 0
;time = 58
;darken = 0
;p2defmul = 1
;unhittable = 1
;movetime = 58
;anim = -1

[State 3200, 1]
type = PlaySnd
trigger1 = Time = 0
value = S1,30

[State 3200, 4]
type = EnvColor
trigger1 = Time = [0,58]
time = 1
value = 0,0,0
under = 1
supermove = 1

[State 3200, 5]
type = Explod
trigger1 = Time = 1
anim = 8009
sprpriority = -6
postype = left
pos = 160,130
scale = 1.5,1.5
bindtime = 1
supermove = 1
ownpal = 1

[State 3200, 7]
type = Explod
trigger1 = Time = 20
anim = 8010
sprpriority = -4
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1

[State 3200, 8]
type = Explod
trigger1 = Time = 20
anim = 8011
sprpriority = -2
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1

[State 3200, 9]
type = Explod
trigger1 = Time = 20
anim = 8012
sprpriority = 4
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 1701

[Statedef 1701];dash
type    = S
movetype= A
physics = N
juggle  = 15
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1306
sprpriority = 1

[State 840, 2]
type = afterimage
trigger1 = time = 0
time = 20
length = 12
PalContrast = 110,110,225
;PalBright   =   3,3,9
PalAdd      =  0,0,85
trans = add
TimeGap  = 1
FrameGap = 4
ignorehitpause = 1

[State 840, 2]
type = afterimagetime
trigger1 = 1
time = 2

[State -3, 5]
type = PlaySnd
trigger1 = animelem = 2
value = S1,9

[State 240, 4]
type = Explod
trigger1 = animelem = 1
anim = 1026
postype = p1
pos = 30,15
sprpriority = 5
ownpal = 1

[State 840, 2]
type = null;afterimage
trigger1 = time = 0
time = 20
length = 12
PalContrast = 110,110,225
;PalBright   =   3,3,9
PalAdd      =  0,0,85
trans = add
TimeGap  = 1
FrameGap = 4
ignorehitpause = 1

[State 840, 2]
type = afterimagetime
trigger1 = 1
time = 2

[State 240, 4]
type = velset
trigger1 = animelem = 2
x = 10

[State 800, 1]
type = HitDef
Trigger1 = 1
animtype  = hard
attr = S, HA
guardflag = M
pausetime = 0,15
hitflag = MA
priority = 2
hitsound = S1,14
guardsound = S1,19
sparkno = S8000
guard.sparkno = S8004
sparkxy = 10,-30
sprpriority = 1
ground.velocity = -3
air.velocity = -3
guard.velocity = -5
sprpriority = 1
air.fall = 1
fall.recover = 0
;p2facing = 1
;p1stateno = 1702
;p2stateno = 1045
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0

[State 240, 4]
type = varset
trigger1 = time = 0
var(10) = 0

[State 240, 4]
type = varadd
trigger1 = movehit = 1
trigger1 = enemy,movetype = H
var(10) = 1
persistent = 0
ignorehitpause = 1

[State 240, 4];hit
type = ChangeState
trigger1 = movehit = 1
trigger1 = var(10) >= 1
value = 1702

[State 240, 4];other hit
type = ChangeState
trigger1 = movehit = 1
trigger1 = var(10) = 0
value = 1032

[State 240, 4];no hit
type = ChangeState
trigger1 = Time = 34
trigger1 = movehit = 0
value = 1032

[State 240, 4]
type = ChangeState
trigger1 = Time = 34
trigger1 = movehit = 0
value = 1032

[State 5050, 6]
type = changeState
trigger1 = moveguarded = 1
value = 1032

[Statedef 1702];
type    = S
movetype= A
physics = N
juggle  = 15
poweradd= 0
ctrl = 0
velset = 1.5,0
anim = 1300
sprpriority = 1

[State 240, 4]
type = posset
trigger1 = time = 0
y = 0

[State 240, 4]
type = null;targetstate
trigger1 = time = 0
value = 1040

[State 701, 1]
type = Width
trigger1 = 1
edge = 45,0

[State 240, 4]
type = targetbind
trigger1 = animelem = 5, >= 0
postype = p1
pos = 50,0

[State 240, 4]
type = varrandom
trigger1 = 1
v = 1
range = 1,2

[State 240, 4]
type = Explod
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
trigger7 = animelem = 38
trigger8 = animelem = 44
trigger9 = animelem = 50
trigger10 = animelem = 56
anim = 1301
postype = p1
pos = 40,0
sprpriority = 5
supermove = 1
ownpal = 1

[State 240, 4]
type = Explod
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
trigger7 = animelem = 38
trigger8 = animelem = 44
trigger9 = animelem = 50
trigger10 = animelem = 56
anim = 8002
postype = p1
pos = 50,-60
sprpriority = 5
supermove = 1
ownpal = 1

[State 240, 4]
type = hitadd
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
trigger7 = animelem = 38
trigger8 = animelem = 44
trigger9 = animelem = 50
trigger10 = animelem = 56
value = 1

[State 240, 4]
type = envcolor
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
trigger7 = animelem = 38
trigger8 = animelem = 44
trigger9 = animelem = 50
trigger10 = animelem = 56
value = 255,255,255
time = 1
under = -1

[State 240, 4]
type = targetstate
trigger1 = animelem = 5
trigger2 = animelem = 16
trigger3 = animelem = 27
trigger4 = animelem = 38
trigger5 = animelem = 50
value = 1040

[State 240, 4]
type = targetstate
trigger1 = animelem = 10
trigger2 = animelem = 21
trigger3 = animelem = 32
trigger4 = animelem = 44
trigger5 = animelem = 56
triggerall = var(10) >= 1
value = 1041

[State 840, 4]
type = PlaySnd
triggerall = var(1) = 1
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
trigger7 = animelem = 38
trigger8 = animelem = 44
trigger9 = animelem = 50
trigger10 = animelem = 56
value = S1,14

[State 840, 4]
type = PlaySnd
triggerall = var(1) = 2
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
trigger7 = animelem = 38
trigger8 = animelem = 44
trigger9 = animelem = 50
trigger10 = animelem = 56
value = S1,14

[State 840, 4]
type = targetlifeadd
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 16
trigger4 = animelem = 21
trigger5 = animelem = 27
trigger6 = animelem = 32
trigger7 = animelem = 38
trigger8 = animelem = 44
trigger9 = animelem = 50
trigger10 = animelem = 56
value = -5
kill = 0

[State 840, 4]
type = StopSnd
trigger1 = AnimTime = 0
channel = 0

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 1703

[Statedef 1703];͂
type    = S
movetype= A
physics = N
juggle  = 15
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1702
sprpriority = 4

[State 840, 4]
type = targetlifeadd
trigger1 = animelem = 5
value = -200
kill = 0

[State 191, 1]
type = playsnd
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 9
trigger4 = animelem = 11
trigger5 = animelem = 13
trigger6 = animelem = 15
trigger7 = animelem = 17
trigger8 = animelem = 19
value = S1,21

[State 240, 4]
type = targetstate
trigger1 = animelem = 1
value = 1046

[State 240, 4]
type = Explod
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 9
trigger4 = animelem = 11
trigger5 = animelem = 13
trigger6 = animelem = 15
trigger7 = animelem = 15, = 3
anim = 8002
ID = 500
postype = p1
facing = 1
pos = 15,-125
sprpriority = 6
ownpal = 1

[State 240, 4]
type = Explod
trigger1 = animelem = 5
trigger2 = animelem = 7
trigger3 = animelem = 9
trigger4 = animelem = 11
trigger5 = animelem = 13
trigger6 = animelem = 15
trigger7 = animelem = 15, = 3
anim = 8002
ID = 500
postype = p1
pos = 25,-125
facing = -1
sprpriority = 6
ownpal = 1

[State 240, 4];͂
type = Explod
trigger1 = animelem = 4
anim = 8000
postype = p1
pos = 18,-120
sprpriority = 2
supermove = 1
ownpal = 1

[State 840, 4]
type = posadd
trigger1 = time = 0
x = 15

[State 240, 4]
type = targetstate
trigger1 = animelem = 4
value = 1704

[State 240, 4]
type = targetbind
trigger1 = animelem = 4
postype = p1
pos = 18,-133

[State 840, 4]
type = PlaySnd
trigger1 = animelem = 5
value = S1,28

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 1705

[Statedef 1704];head
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 9000, 1]
type = ScreenBound
trigger1 = 1
movecamera = 1,0

[State 821, 4]
type = changeanim2
trigger1 = time = 0
value = 1703

[Statedef 1705];MAXJUMP
type    = S
movetype= A
physics = N
juggle  = 15
poweradd= 0
ctrl = 0
velset = 0,-13
anim = 1704
sprpriority = 1

[State 240, 4]
type = targetbind
;trigger1 = animelem = 1
trigger1 = 1
postype = p1
pos = 16,-125

[State 240, 4]
type = null;targetbind
trigger1 = animelem = 2
trigger1 = 1
postype = p1
pos = 13,-118

[State -3, 5]
type = PlaySnd
trigger1 = animelem = 1
value = S1,17

[State 821, 1]
type = Veladd
trigger1 = time >= 0
y = .65

[State 240, 4]
type = targetstate
trigger1 = animelem = 1
value = 1310

[State 821, 4]
type = changeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1706

[Statedef 1706];MAX2
type    = S
movetype= A
physics = N
juggle  = 15
poweradd= 0
ctrl = 0
velset = 0,0
anim = 1303
sprpriority = 1

[State 840, 4]
type = envshake
trigger1 = animelem = 1
time = 5

[State 840, 4]
type = targetlifeadd
trigger1 = animelem = 1
value = -200

[State 240, 4]
type = targetbind
trigger1 = time = 0
postype = p1
pos = -20,0

[State 240, 4]
type = targetstate
trigger1 = time = 0
value = 1311

[State -3, 5]
type = PlaySnd
trigger1 = animelem = 1
value = S1,27

[State -3, 5]
type = PlaySnd
trigger1 = animelem = 1
value = S0,10

[State 240, 4]
type = Explod
trigger1 = animelem = 1
anim = 517
postype = p1
pos = -35,10
sprpriority = 6
ownpal = 1

[State 240, 4]
type = Explod
trigger1 = animelem = 1
anim = 518
postype = p1
pos = -35,10
sprpriority = -5
ownpal = 1

[State 821, 1]
type = posset
trigger1 = time = 0
y = 0

[State 821, 1]
type = posadd
trigger1 = time = 0
x = -25

[State 210, 5]
type = turn
trigger1 = AnimTime = 0

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;*************max3*********************************
[Statedef 9000]
type    = S
movetype= I
physics = S
anim = 9000
ctrl = 0
poweradd = -3000
velset = 0,0,0

[State 9899, BGcolor]
type = envcolor
trigger1 = time = 0
time = 80
under = 1
value = 0, 0, 0

[State 3250, 0]
type = PlaySnd
trigger1 = animelem = 10
value = s1,9

[State 3250, 1]
type = PlaySnd
trigger1 = time = 2
value = s1,30

[state 3250 ,voice]
type = playsnd
trigger1 = animelem = 3
value = s0,8

[State 3250, 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 30  ;25 is all pause time

;[State 3250, 2]
;type = SuperPause
;trigger1 = animelem = 1
;anim = -1
;movetime = 76
;time = 76
;darken = 0

;[State 3250, 2]
;type = Explod
;trigger1 = AnimElem = 1
;anim = 8012
;postype = p1
;pos = 0,-90
;sprpriority = 7
;supermove = 1
;bindtime = 1
;ownpal = 1


[state 3250 ,var]
type = varset
trigger1 = animtime = 0
var(40) = 0
;*********
;--------------------------------------
[State 3200, 0]
type = SuperPause
trigger1 = Time = 0
time = 58
darken = 0
p2defmul = 1
unhittable = 1
movetime = 58
anim = -1

[State 3200, 1]
type = PlaySnd
trigger1 = Time = 0
value = S1,30

[State 3200, 4]
type = EnvColor
trigger1 = Time = [0,58]
time = 1
value = 0,0,0
under = 1
supermove = 1

;[State 3200, 5]
;type = Explod
;trigger1 = Time = 1
;anim = 8009
;sprpriority = -6
;postype = left
;pos = 160,130
;scale = 1.09,1.09
;bindtime = 1
;supermove = 1
;ownpal = 1

[State 3200, 5]
type = Explod
trigger1 = Time = 1
anim = 8060
sprpriority = -6
postype = left
pos = 160,120
scale = 1.0,1.0
bindtime = 1
supermove = 1
ownpal = 1

[State 3200, 7]
type = Explod
trigger1 = Time = 28
anim = 8061
sprpriority = -6
postype = left
pos = 160,120
supermove = 999
bindtime = 1
removetime = 15
ownpal=1
scale = 1.0,1.0
vel = 0,-2.0
[State 3200, 8]
type = Explod
trigger1 = Time = 28
anim = 8011
sprpriority = -2
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1

[State 3200, 9]
type = Explod
trigger1 = Time = 28
anim = 8012
sprpriority = 4
postype = p1
pos = 9,-69
bindtime = 1
supermove = 1
ownpal = 1
;***********
[State 3250, end2]
type = changestate
trigger1 = animtime = 0
value = 9001
ctrl = 0

;----------------------
[Statedef 9001]
type    = S
movetype= A
physics = N
anim = 3202
ctrl = 0
velset = 0,0,0

[State 3800, 1]
type = explod
;trigger1 = facing = 1
trigger1 = time = 1
ID = 13200
pos = 0,0
postype = LEFT
anim = 8050
bindtime = 235
removetime = 35
sprpriority = -3
ownpal = 1
removeongethit = 1
supermove = 1
supermovetime = 999
scale = 1.09,1.09

[State 9989, flash2]
type = Explod
trigger1 = animelem = 1
anim = 1109
postype = p1
pos = 5,5
sprpriority = 2
supermove = 1
bindtime = 1
ownpal = 1

;[State 3901 , 9]
;type = Explod
;trigger1 = AnimElem = 1
;anim = 936
;ID = 930
;ownpal = 1
;sprpriority = 5
;postype = p1
;pos = -15,-30
;bindtime = 1
;scale = 1.1,1.1

[State 13501]
type = PlaySnd
trigger1 = animelem = 1
value = 1,7

[state 13105]
type = envshake
trigger1 = animelem = 1
ampl = -4
time = 15

[state 13105]
type = envshake
trigger1 = animelem = 1,10
ampl = -3
time = 15

[state 13101]
type = envcolor
trigger1 = animelem = 1
value = 240,240,240
time = 1
under = 0

[State 3252, 0]
type = playerpush
trigger1 = time >= 0
value = 1

[State 3201, 2]
type = velset
trigger1 = time = 16
x = (P2dist X+40)/16

[State 3253, 3]
type = veladd
trigger1 = time >= 28
x = -0.4

[State 3203, 4]
type = VelSet
trigger1 = Vel X <= 0
x = 1

[State 3253, 5]
type = HitDef
trigger1 = AnimElem = 1;4
trigger2 = (AnimElem = 5) && (!movecontact)
attr = S, HA
animtype = hard
p2facing = 1
damage = 0,0
sparkno = S8000
guard.sparkno = S8004
sparkxy = 0,-60
pausetime = 6,6
hitflag = M
forcestand = 1
guardflag = M
hitsound   = S1,14
guardsound = S1,19
fall.recover = 0
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -3, 0

[State 3253, sunglass]
type = envcolor
trigger1 = movehit
time = 1
under = 1
value = 240,240,240

[State 3253, end1]
type = changestate
trigger1 = movehit
value = 9002
ctrl = 1

[State 3253, end1]
type = changestate
trigger1 = animtime = 0
trigger2 = moveguarded
value = 9003
ctrl = 0

;------------------------
[Statedef 9003]
type    = S
movetype= I
physics = S
anim = 3210
ctrl = 0

[State 3210, 1]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------
;Gf@bV
[Statedef 9002]
type = S
movetype = A
physics = N
anim = 3280
velset = 0,0,0
ctrl = 0

[State 3800, 1]
type = explod
;trigger1 = facing = 1
trigger1 = time = 1
ID = 13200
pos = 0,0
postype = LEFT
anim = 8050
bindtime = 700
removetime = 630
sprpriority = -3
ownpal = 1
removeongethit = 1
supermove = 1
supermovetime = 999
scale = 1.09,1.09

[State 3280, push]
type = playerpush
trigger1 = time >= 0
value = 1

[State 3280, muteki]
type = nothitby
trigger1 = time >= 0
value = SCA
time = 1

[State 3280, width]
type = Width
trigger1 = time >= 0
edge = 60,0

[State 3280, 0]
type = targetbind
trigger1 = time >= 0
pos = 60,0

[State 3280, 1]
type = HitDef
trigger1 = animelem = 2
trigger2 = animelem = 4
trigger3 = animelem = 17
trigger4 = animelem = 19
trigger5 = animelem = 31
trigger6 = animelem = 38
attr = S, HA
forcestand = 1
animtype  = hard
damage    = 18 ; 15
givepower = 15
;guardflag = MA
pausetime = 3,2
sparkno = S8000
sparkxy = -15,-70
hitsound   = S1,14
guardsound = S1,19
ground.type = High
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -2.3
kill = 0

[State 3280, 2]
type = HitDef
trigger1 = animelem = 9
trigger2 = animelem = 13
trigger3 = animelem = 22
attr = S, HA
animtype  = hard
damage    = 18 ; 15
givepower = 15
;guardflag = MA
pausetime = 3,2
forcestand = 1
sparkno = S8000
sparkxy = -20,-40
hitsound   = S1,3
guardsound = S1,19
ground.type = Low
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -2.3
kill = 0

[State 3280, 3]
type = HitDef
trigger1 = animelem = 27
trigger2 = animelem = 41
trigger3 = animelem = 43
trigger4 = animelem = 56
trigger5 = animelem = 58
trigger6 = animelem = 66
trigger7 = animelem = 70
trigger8 = animelem = 77
attr = S, HA
animtype  = hard
damage    = 18 ; 15
givepower = 15
;guardflag = MA
pausetime = 1,1
forcestand = 1
sparkno = S8000
sparkxy = -15,-70
hitsound   = S1,14
guardsound = S1,19
ground.type = High
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -2.3
kill = 0
palfx.time = 3
palfx.mul = 190,190,200
palfx.sinadd = -180,-180,-180,15
palfx.add = 40,40,50
palfx.color = 0
palfx.invertall = 1

[State 3280, 4]
type = HitDef
trigger1 = animelem = 36
trigger2 = animelem = 48
trigger3 = animelem = 52
trigger4 = animelem = 61
trigger5 = animelem = 75
attr = S, HA
animtype  = hard
damage    = 18 ; 15
givepower = 15
;guardflag = MA
pausetime = 1,1
forcestand = 1
sparkno = s8000
sparkxy = -20,-40
hitsound   = S1,3
guardsound = S1,19
ground.type = Low
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -2.3
kill = 0
palfx.time = 3
palfx.mul = 190,190,200
palfx.sinadd = -180,-180,-180,15
palfx.add = 40,40,50
palfx.color = 0
palfx.invertall = 1

[State 3280, envcolor]
type = envcolor
triggerall = movehit
trigger1 = animelem = 2
trigger2 = animelem = 4
trigger3 = animelem = 9
trigger4 = animelem = 13
trigger5 = animelem = 17
trigger6 = animelem = 19
trigger7 = animelem = 22
trigger8 = animelem = 27
trigger9 = animelem = 31
trigger10 = animelem = 36
trigger11 = animelem = 38
trigger12 = animelem = 41
trigger13 = animelem = 43
trigger14 = animelem = 48
trigger15 = animelem = 52
trigger16 = animelem = 56
trigger17 = animelem = 58
trigger18 = animelem = 61
trigger19 = animelem = 66
trigger20 = animelem = 70
trigger21 = animelem = 75
trigger22 = animelem = 77
time = 1
under = 0
value = 240,240,240


[state 3901 ,shake]
type = envshake
triggerall = movehit
trigger1 = animelem = 2
trigger2 = animelem = 4
trigger3 = animelem = 9
trigger4 = animelem = 13
trigger5 = animelem = 17
trigger6 = animelem = 19
trigger7 = animelem = 22
trigger8 = animelem = 27
trigger9 = animelem = 31
trigger10 = animelem = 36
ampl = -3
time = 10

[state 3901 ,shake]
type = envshake
trigger1 = animelem = 38
trigger2 = animelem = 41
trigger3 = animelem = 43
trigger4 = animelem = 48
trigger5 = animelem = 52
trigger6 = animelem = 56
trigger7 = animelem = 58
trigger8 = animelem = 61
trigger9 = animelem = 66
trigger10 = animelem = 70
trigger11 = animelem = 75
trigger12 = animelem = 77
ampl = -5
time = 15


[State 3280 , 5]
type = Explod
triggerall = NumExplod(2200) < 3
triggerall = Random < 899
trigger1 = (AnimElemTime(27) >= 0) && (movehit)
anim = 1301
ID = 2200
ownpal = 1
sprpriority = 5
postype = p2
pos = 0,0
random = 120,0
bindtime = 1
ignorehitpause = 1


[State 3280, 8]
type = Explod
triggerall = NumExplod(2200) < 4
triggerall = Random < 599
trigger1 = (AnimElemTime(27) >= 0) && (movehit)
anim = 1301
ID = 2200
ownpal = 1
sprpriority = 5
postype = p2
pos = 0,0
;random = 10,0
bindtime = 1
ignorehitpause = 1

[State 3280, end1]
type = ChangeState
trigger1 = AnimTime = 0
value = 9004
ctrl = 0

;-------------------------
[Statedef 9004]
type = S
movetype = A
physics = S
anim = 9001
velset = 0
ctrl = 0

[State 3290, muteki]
type = nothitby
trigger1 = time >= 0
value = SCA
time = 1

[State 3290, 0]
type = posadd
trigger1 = animelem = 6
x = -10

[State 3290, 1]
type = velset
trigger1 = animelem = 13
x = 6

[State 3290, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, HA
animtype  = Hard
damage    = 25 ; 65
givepower = 15
guardflag = MA
pausetime = 30,30
sparkno = s8000
sparkxy = -15,-60
hitsound   = S1,14
guardsound = S1,19
ground.type = High
ground.slidetime = 100
ground.hittime  = 100
air.hittime = 100
fall = 0
ground.velocity = 6
palfx.time = 60
palfx.mul = 190,190,200
palfx.sinadd = -180,-180,-180,15
palfx.add = 40,40,50
palfx.color = 0
palfx.invertall = 1
kill = 0

[State 3290, 3]
type = explod
trigger1 = animelem = 10
Anim = 1108
pos = 0,0
shadow = 64,64,64
sprpriority = 7
postype = p2
bindtime = 1
ownpal = 1


[State 3201, 2]
type = playsnd
trigger1 = animelem = 12
value = s0,24
channel= 2

[State 3290, 8]
type = HitDef
trigger1 = AnimElem = 12
attr = S, HA
animtype  = Hard
damage    = 50  ; 80
givepower = 15
guardflag = 
pausetime = 30,30
sparkno = s8000
sparkxy = -15,-60
hitsound   = S1,14
guardsound = S1,19
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
fall = 1
fall.recover = 0
ground.velocity = -4,-9
palfx.time = 70
palfx.mul = 190,190,200
palfx.sinadd = -180,-180,-180,15
palfx.add = 40,40,50
palfx.color = 0
palfx.invertall = 1
kill = 0

[State 100, 3]
type = PlaySnd
trigger1 = animelem = 12
value = 1,1

[State 3100, 1]
type = Posadd
trigger1 = animelem = 13
trigger2 = animelem = 14
trigger3 = animelem = 15
x = 10

[State 3100, 1]
type = Posadd
trigger1 = animelem = 13
trigger2 = animelem = 14
trigger3 = animelem = 15
y = -10

[State 3215]
type = pause
trigger1 = Enemy,Alive = 1
trigger1 = Animelem = 8 >= 0
trigger1 = Timemod = 2,0
time = 2

[State 3215]
type = pause
trigger1 = Enemy,Alive = 1
trigger1 = Animelem = 12 >= 0
trigger1 = Timemod = 2,0
time = 3


[State 3290, 9]
type = varset
trigger1 = movehit
var(3) = 1

[State 3290, 10]
type = envcolor
trigger1 = animelem = 5
trigger2 = animelem = 20
time = 3
under = 0
value = 240,240,240

[state 3901 ,shake]
type = envshake
trigger1 = animelem = 5
trigger2 = animelem = 12
ampl = -4
time = 50

[State 3280, end1]
type = ChangeState
trigger1 = AnimTime = 0
value = 9005
ctrl = 0

;------------------------
[Statedef 9005]
type    = S
movetype= A
physics = S
anim = 9002
ctrl = 0
velset = 0,0,0

[State 9899, BGcolor]
type = envcolor
trigger1 = time = 0
time = 80
under = 1
value = 0, 0, 0

[State 3250, 0]
type = PlaySnd
trigger1 = animelem = 10
value = s1,2

[State 3250, 1]
type = PlaySnd
trigger1 = time = 2
value = 1,29

[State 3250, 1]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 30  ;25 is all pause time

[State 3250, 2]
type = SuperPause
trigger1 = animelem = 1
anim = -1
movetime = 76
time = 76
darken = 0

[State 3250, 2]
type = Explod
trigger1 = AnimElem = 1
anim = 8008
postype = p1
pos = 0,-80
sprpriority = 7
supermove = 1
bindtime = 1
ownpal = 1

[State 3250, 2]
type = Explod
trigger1 = AnimElem = 1
anim = 934
postype = p1
pos = 20,-15
sprpriority = -1
supermove = 1
bindtime = 1000
ownpal = 1
scale = 1.6,1.6


[State 3280, end1]
type = ChangeState
trigger1 = AnimTime = 0
value = 9006
ctrl = 0

[Statedef 9006]
type    = S
movetype= A
physics = S
anim = 9003
ctrl = 0
velset = 0,0,0

[State 3205, 1]
type = HitDef
trigger1 = time >= 0
attr = S, HA, A
hitflag = MAF
animtype  = Hard
damage    = 2 ; 98
givepower = 15
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy = -15,-60
;hitsound  = S240,0
;guardsound = S1500,0
ground.type = High
ground.slidetime = 60
ground.hittime  = 20
fall = 0
fall.recover = 0
air.velocity = 0,0
ground.velocity = 0,0
palfx.time = 70
palfx.mul = 190,190,200
palfx.sinadd = -180,-180,-180,15
palfx.add = 40,40,50
palfx.color = 0
palfx.invertall = 1
kill = 0

[State 3800, 3]
type = PlaySnd
trigger1 = animelem = 1,10
value = 1,2
channel = 1

[State 3800, 3]
type = PlaySnd
trigger1 = movehit
trigger1 = Timemod = 10,0
value = 1,7
channel = 2

[State 3800, 3]
type = PlaySnd
trigger1 = movehit
trigger1 = Timemod = 14,0
value = 1,1
channel = 3

;[state 13101]
;type = envcolor
;trigger1 = movehit
;trigger1 = Timemod = 2,0
;value = 240,240,240
;time = 1
;under = 0

[state 3901 ,shake]
type = envshake
trigger1 = movehit
trigger1 = Timemod = 6,0
ampl = -5
time = 50

[State 3901 , 9]
type = Explod
;triggerall = NumExplod(930) < 2
;triggerall = Random < 1099
trigger1 = AnimElem = 1,1
trigger2 = animelem = 1,12
trigger3 = AnimElem = 1,22
trigger4 = animelem = 1,42
trigger5 = AnimElem = 1,55
trigger6 = animelem = 1,82
trigger7 = AnimElem = 1,111
trigger8 = animelem = 1,121
trigger9 = animelem = 1,144
trigger10 = animelem = 1,167
trigger11 = animelem = 1,180
trigger12 = animelem = 1,210
trigger13 = animelem = 1,233
trigger14 = animelem = 1,265
trigger15 = animelem = 1,155
trigger16 = animelem = 1,175
trigger17 = animelem = 1,200
trigger18 = animelem = 1,223
trigger19 = animelem = 1,245
trigger20 = animelem = 1,33
trigger21 = animelem = 1,46
trigger22 = animelem = 1,66
trigger23 = animelem = 1,75
trigger24 = animelem = 1,96
anim = 1112
ID = 930
ownpal = 1
sprpriority = 5
postype = left
pos = 50,230
random = 450,0
bindtime = 1
ignorehitpause = 1

[State 3800, 3]
type = PlaySnd
trigger1 = animelem = 1,274
value = 1,2
channel = 5

[State 3250, end2]
type = changestate
trigger1 = animtime = 0
value = 9007
ctrl = 0

[Statedef 9007]
type    = S
movetype= A
physics = S
anim = 9004
ctrl = 0
velset = 0,0,0

[State 3205, 1]
type = HitDef
trigger1 = animelem = 1
attr = S, HA, A
hitflag = MAF
animtype  = diagup
damage    = 8 ; 98
givepower = 15
guardflag = MA
pausetime = 0,0
sparkno = -1
sparkxy = -15,-60
;hitsound  = S240,0
guardsound = S150,1
ground.type = High
ground.slidetime = 60
ground.hittime  = 20
fall = 1
fall.recover = 0
air.velocity = -4,-8
ground.velocity = -4,-6
palfx.time = 70
palfx.mul = 190,190,200
palfx.sinadd = -180,-180,-180,15
palfx.add = 40,40,50
palfx.color = 0
palfx.invertall = 1

[State 3215]
type = pause
trigger1 = Enemy,Alive = 1
trigger1 = Animelem = 2 >= 0
trigger1 = Timemod = 2,0
time = 3

[State 3215]
type = pause
trigger1 = Enemy,Alive = 1
trigger1 = Animelem = 3
trigger1 = Timemod = 2,0
time = 2

[state 13101]
type = envcolor
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 4
value = 240,240,240
time = 2

[state 3901 ,shake]
type = envshake
trigger1 = animelem = 1
ampl = -6
time = 60

[state 13505]
type = posadd
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
Y = 6

[State 3901 , 9]
type = Explod
trigger1 = AnimElem = 1
anim = 936
ID = 1109
ownpal = 1
sprpriority = 5
postype = p2
pos = 0,-0
bindtime = 1
ignorehitpause = 1
scale = 1.6,1.6

[state 13505]
type = posset
trigger1 = animelem = 5
Y = 0

[State 3290, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;********************************************
;---------------------------------------------------------------------------
[Statedef 1010];ڰ
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1010
sprpriority = 2

[State 800, 1]
type = HitDef
;triggerall = life > 300
triggerall = p2stateno != 150
triggerall = p2stateno != 152
triggerall = p2stateno != 154
trigger1 = 1
;Trigger2 = power < 1000
Trigger2 = 1
animtype  = Up
attr = S, HT
hitflag = M
priority = 1, Miss
sparkno = -1
sprpriority = 1
p2facing = 1
p1stateno = 1011
p2stateno = 1020
guard.dist = 0
fall = 1
fall.recover = 0


[State 800, 2]
type = ChangeState
trigger1 = p2bodydist x > 20
Trigger1 = AnimTime = 0
value = 200

[State 800, 2]
type = ChangeState
trigger1 = p2bodydist x <= 20
Trigger1 = AnimTime = 0
value = 201

;---------------------------------------------------------------------------
[Statedef 200];p`
type    = S
movetype= A
physics = S
juggle  = 15
velset = 0,0
ctrl = 0
anim = 200
poweradd = 0
sprpriority = 2

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
damage = 50, 0
animtype  = Medium
guardflag = M
hitflag = MA
priority = 3, Hit
pausetime = 5, 6
sparkno = S500
guard.sparkno = S523
sparkxy = -10, -76
hitsound = S1,12
guardsound = S1,18
ground.type = High
ground.slidetime = 5
ground.hittime  = 4
ground.velocity = -5
airguard.velocity = -5,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
air.juggle  = 15

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 191, 1]
type = playsnd
;trigger1 = random <= 500
trigger1 = time = 0
value = S0,35

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 201];ߋp`
type    = S
movetype= A
physics = S
juggle  = 15
velset = 0,0
ctrl = 0
anim = 200
poweradd = 0
sprpriority = 2

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
damage = 50, 0
animtype  = Medium
guardflag = M
hitflag = MA
priority = 3, Hit
pausetime = 5, 6
sparkno = S8001
guard.sparkno = S8004
sparkxy = -10, -76
hitsound = S1,3
guardsound = S1,18
ground.type = High
ground.slidetime = 5
ground.hittime  = 4
ground.velocity = -5
airguard.velocity = -5,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
air.juggle  = 15

[State 191, 1]
type = playsnd
trigger1 = time = 0
value = S1,0

[State 191, 1]
type = playsnd
;trigger1 = random <= 500
trigger1 = time = 0
value = S0,35

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1011];ʼ
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1011
sprpriority = 2

[State 840, 4]
type = PlaySnd
trigger1 = Time = 2
value = S0,17

[State 701, 1]
type = Width
trigger1 = 1
edge = 60,0

[State 240, 4]
type = targetbind
trigger1 = animelem = 1
postype = p1
pos = 33,0


[State 240, 4]
type = targetstate
trigger1 = animelem = 4
value = 1021

[State 240, 4]
type = targetbind
trigger1 = animelem = 4
postype = p1
pos = 50,-96

[State 240, 4]
type = targetbind
trigger1 = animelem = 5
postype = p1
pos = 36,-134


;[State 840, 4]
;type = PlaySnd
;trigger1 = animelem = 5
;value = S0,15

[state 190]
type = envcolor
trigger1 = animelem = 5
time = 2
value = 255,255,255
under = -1

[state 190]
type = null;envcolor
trigger1 = animelem = 5, = 3
time = 16
value = 0,0,0
under = -2

[State 800, 2]
type = ChangeState
Trigger1 = animTime = 0
value = 1012

[Statedef 1012];
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1012
sprpriority = 2

[State 840, 4]
type = PlaySnd
trigger1 = Time = 0
value = S1,2
volume = 90

[State 240, 4]
type = Explod
trigger1 = time = 0
anim = 1025
removetime = 85
postype = p1
pos = 52,-23
sprpriority = 4
ownpal = 1

[State 240, 4]
type = envshake
trigger1 = time = 0
triggerall = random <= 500
time = 85
ampl = -2

[State 240, 4]
type = envcolor
trigger1 = animelem = 2
value = 255,255,255
time = 1
under = -1

[State 240, 4]
type = targetstate
trigger1 = animelem = 1
value = 1022

[State 240, 4]
type = targetbind
trigger1 = animelem = 1
postype = p1
pos = 35,-130

[State 800, 2]
type = ChangeState
Trigger1 = Time = 85
value = 1013

[Statedef 1013];
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 1013
sprpriority = 2

[State 240, 4]
type = Explod
trigger1 = time = 0
anim = 1026
ID = 1026
postype = p1
pos = 52,-20
sprpriority = 4
supermove = 1
ownpal = 1

[State 240, 4]
type = targetstate
trigger1 = animelem = 1
value = 1023

[State 240, 4]
type = targetstate
trigger1 = animelem = 3
value = 1024

[State 240, 4]
type = targetbind
trigger1 = animelem = 1
postype = p1
pos = 6,-134

[State 240, 4]
type = targetbind
trigger1 = animelem = 2
postype = p1
pos = 9,-135

[State 240, 4]
type = targetlifeadd
trigger1 = animelem = 3
value = -280

[State 240, 4]
type = targetbind
trigger1 = animelem = 3
postype = p1
pos = 40,-50

[State 800, 2]
type = ChangeState
Trigger1 = animTime = 0
value = 0
ctrl = 1

[Statedef 1020];
type    = S
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 821, 4]
type = changeanim2
trigger1 = time = 0
value = 1020
ignorehitpause = 1

[Statedef 1021];
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 9000, 1]
type = ScreenBound
trigger1 = 1
movecamera = 1,0

[State 821, 4]
type = changeanim2
trigger1 = time = 0
value = 1021

[Statedef 1022];
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 9000, 1]
type = ScreenBound
trigger1 = 1
movecamera = 1,0

[State 821, 4]
type = changeanim2
trigger1 = time = 0
value = 1022

[Statedef 1023];
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 9000, 1]
type = ScreenBound
trigger1 = 1
movecamera = 1,0

[State 821, 4]
type = changeanim2
trigger1 = time = 0
value = 1023

[Statedef 1024];
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = -4.5,-7
sprpriority = -1
movetype = H

[State 821, 1]
type = VelAdd
Trigger1 = time >= 0
y = .45

[State 821, 4]
type = changeanim2
trigger1 = time = 0
value = 1024

[State 5050, 6]
type = selfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

[Statedef 1025];
type    = A
physics = N
poweradd = 0
ctrl = 0
velset = 0,0
sprpriority = -1
movetype = H

[State 9000, 1]
type = ScreenBound
trigger1 = 1
movecamera = 1,0

[State 821, 4]
type = changeanim2
trigger1 = time = 0
value = 1029

;***************************************
;--------------------------
;Dash
[Statedef 10001]
type = S
movetype = A
physics = N
anim = 1000
ctrl = 0
velset = 10,0

[State 1000, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
damage = 0,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit 
pausetime = 2, 5
sparkno = 0
sparkxy = 5, -85
hitsound = s3, 4
guardsound = 6, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3 
air.hittime = 12 
getpower = 0,0
p1stateno = 1100

[State 1000, pow]
type = PowerSet
trigger1 = 1
value = 2000
persistent = 1

[State 1000, pow]
type = PowerAdd
trigger1 = Movehit
value = 0
persistent = 1

[State 1000,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------
;Dash hit
[Statedef 11100]
type = S
movetype = A
physics = S
anim = 1100
ctrl = 0

[State 1000, 1]
type = PosAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 12
x = 20

[State 1000, 1]
type = PosAdd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
x = 10

[State 1000, 1]
type = PosAdd
trigger1 = AnimElem = 11
x = 5

[State 1000, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
damage = 40,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit 
pausetime = 4, 9
sparkno = 0
sparkxy = 5, -85
hitsound = s3, 4
guardsound = 6, 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3 
air.hittime = 12 
getpower = 0,0
kill = 0

[State 1000, 2]
type = HitDef
trigger1 = AnimElem = 11
attr = S, NA
damage = 20,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit 
pausetime = 4, 8
sparkno = 0
sparkxy = 5, -85
hitsound = s3, 4
guardsound = 6, 0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3 
air.hittime = 12 
getpower = 0,0
kill = 0

[State 1000, 2]
type = HitDef
trigger1 = HitCount >= 7
attr = S, NA
damage = 20,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit 
pausetime = 0, 8
sparkno = 0
sparkxy = 5, -85
hitsound = s3, 4
guardsound = 6, 0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
numhits = 1
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3 
air.hittime = 12 
getpower = 0,0
p2stateno = 1202
p2facing = -1
kill = 0
fall = 1

[State 1000, pow]
type = ChangeState
trigger1 = Hitcount = 8
value = 1200
ctrl = 0

[State 1000,3]
type = ChangeState
trigger1 = Time = 120
value = 0
ctrl = 1

; Throw Component
[Statedef 1200]
type = S
movetype = A
physics = S
anim = 1200
ctrl = 0
velset = 0,0

[State 1200, 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = -20,0

[State 1200, 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = -10,-15

[State 1200, 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = 30, -20

[State 1200, 1]
type = TargetBind
trigger1 = AnimElem = 4
pos = 30, 10

[State 1200, 1]
type = TargetBind
trigger1 = AnimElem = 5
pos = 60, 0

[State 1200, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Throw state for opponent
[Statedef 1202]
type = A
movetype = H
physics = N
ctrl = 0

[State 1202,1]
type = ChangeAnim2
trigger1 = Time = 0
value = 1202

[State 1202,2]
type = VelSet
trigger1 = Time = 13
x = 3
y = 6

[State 1202, pain]
type = LifeAdd
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
Value = -100

[State 1202,4]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 


;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

[State -3, jump]
type = PlaySnd
triggerall = time = 1
trigger1 = StateNo = 50
value = 3,2
volume = 200

[State -3, dash]
type = PlaySnd
triggerall = time = 1
trigger1 = StateNo = 100
value = 3,4
volume = 200

[State -3, hop]
type = PlaySnd
triggerall = time = 1
trigger1 = StateNo = 105
value = 3,5
volume = 200

[State -3, land]
type = PlaySnd
triggerall = time = 1
trigger1 = StateNo = 52
trigger2 = StateNo = 106
value = 3,3
volume = 200

[State -3, land]
type = PlaySnd
triggerall = time = 1
trigger1 = StateNo = 150
trigger2 = StateNo = 152
trigger3 = StateNo = 154
value = 3,1
volume = 200

