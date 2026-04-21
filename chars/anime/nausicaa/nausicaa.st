;行動パターン設定




;**********************前ダッシュ************************

[Statedef 100]
type    = S
physics = S
ctrl = 0
anim = 100
velset = 5

[State 100, 0]
type = VelSet
;trigger1 = command = "FF"
trigger1 = time >=0

x = 5


[state 100, oto1]
type = playsnd
trigger1 = Time = 0
value = 1,7

[state 100, oto2]
type = playsnd
trigger1 = Time = 20
value = 1,8

[state 100, oto3]
type = playsnd
trigger1 = Time = 40
value = 1,9

[State 100, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 100

[State 100, 1]
type = Projectile
trigger1 = AnimElem = 1
;trigger2 = numproj = 0
;projshadow = -1
projanim = 9999
offset = -16, 22
projremovetime = 18

[State 100, 1]
type = Projectile
trigger1 = AnimElem = 3
;trigger2 = numproj = 0
;projshadow = -1
projanim = 9999
offset = -16, 22
projremovetime = 18

[State 100, 1]
type = Projectile
trigger1 = AnimElem = 5
;trigger2 = numproj = 0
;projshadow = -1
projanim = 9999
offset = -16, 22
projremovetime = 18




[State 100, 2]
type = ChangeState
trigger1 = P2BodyDist X <= 35
value = 101

[State 100, 2]
type = ChangeState
;trigger1 = command = "holdback"
trigger1 = command = "holdup"
value = 40


[State 100, 2]
type = ChangeState
trigger1 = command != "holdfwd"
value = 102

[Statedef 101]
type    = S
physics = N
ctrl = 0
anim = 101

[State 101, SoundFX]
type = PlaySnd
trigger1 = Time = 5
value = 1,10

[State 101, 1]
type = VelMul
trigger1 = Vel X < 0
x = 1

[State 101, 2]
type = VelMul
trigger1 = Time >= 5
x = 0.9

[State 101, 3]
type = ChangeState
trigger1 = AnimElem = 2
value = 0
ctrl = 1

[Statedef 102]
type    = S
physics = N
ctrl = 0
anim = 101

[State 102, SoundFX]
type = PlaySnd
trigger1 = Time = 5
value = 1,10

[State 102, 1]
type = VelMul
trigger1 = Vel X < 0
x = 1

[State 102, 2]
type = VelMul
trigger1 = Time >= 5
x = 0.9

[State 102, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ダッシュ（後退）

[Statedef 105]
type    = S
physics = S
ctrl = 0
anim = 105
velset = -4

[state 105, oto1]
type = playsnd
trigger1 = Time = 0
value = 1,7

[state 105, oto2]
type = playsnd
trigger1 = Time = 20
value = 1,8

[state 105, oto3]
type = playsnd
trigger1 = Time = 40
value = 1,9

[State 40, 0.2b]
type = VarSet
trigger1 = Time = 0
v = 8
value = -2

[State 105, 1]
type = Projectile
trigger1 = AnimElem = 1
;trigger2 = numproj = 0
;projshadow = -1
projanim = 9998
offset = -16, 22
projremovetime = 18

[State 105, 1]
type = Projectile
trigger1 = AnimElem = 3
;trigger2 = numproj = 0
;projshadow = -1
projanim = 9998
offset = -16, 22
projremovetime = 18

[State 105, 1]
type = Projectile
trigger1 = AnimElem = 5
;trigger2 = numproj = 0
;projshadow = -1
projanim = 9998
offset = -16, 22
projremovetime = 18


[State 105, 2]
type = ChangeState
trigger1 = command = "holdback"
trigger1 = command = "holdup"
value = 40

[State 105, 2]
type = ChangeState
trigger1 = command != "holdback"
value = 106

[State 105, 2]
type = Velset
trigger1 = time >=0
x = -5

;ダッシュ終了
[Statedef 106]
type    = S
physics = S
ctrl = 1

[State 106, 1]
type = ChangeState
trigger1 = time = 0
value = 101

;---------------------------------------------------------------------------




;-----------------
;勝ちイベント
;-----------------

[Statedef 180]
type = S
anim = 180
ctrl = 0

;[State 180, 1];つづく
;type = explod
;triggerAll = animelem = 2
;trigger1 = facing = 1
;trigger2 = facing = -1
;anim = 10000
;pos = 30, 200
;postype = left
;removetime = -1
;bindtime = -1
;ontop = 1
;ownpal = 0

[state 180, 1]
type = playsnd
trigger1 = Time = 2
value = 2,36


[State 180, 5]
type = AssertSpecial 
trigger1 = Time = [0,170]
flag = roundnotover

;*********************************登場********************************
; 登場ランダム設定
[Statedef 191]
type = S

[State 191, 1]
type = VarRandom
trigger1 = time = 0
v = 1
range = 0,100

[State 191, 2]
type = ChangeState
;trigger1 = Var(1) < 50
trigger1 = time = 0
value = 192

[State 191, 4]
type = ChangeState
trigger1 = Var(1) >= 50
value = 0


[Statedef 192];登場１
type = S
ctrl = 0
anim = 191
velset = 0,0,0

[State 192, 0]
type = Projectile
;projid = introrun
trigger1 = Time = 0
projanim = 190
projshadow = -1
offset = 270, -70
velocity = -9, 1.25
remvelocity = -2.01, 0
;accel = 0, 0
projremovetime = 238
projremanim = 191
sprpriority = -2

[state 192, 1]
type = playsnd
trigger1 = Time = 0
value = 2,34

[State 192, 2]
type = Projectile
;projid = introrun
trigger1 = Time = 30
projanim = 43
projshadow = -1
offset = 0, -70
velocity = 0, 2
remvelocity = -2.01, 0
;accel = 0, 0
projremovetime = 238
projremanim = 191
sprpriority = -2

[state 192, 3]
type = playsnd
trigger1 = Time = 64
value = 2,3

[State 192, 4]
type = ChangeState
trigger1 = Time = 65
value = 0
ctrl = 1

[State 192, 5]
type = AssertSpecial
trigger1 = Time = [0,100]
flag = Intro



;**********************************前転６後転******************************
[Statedef 201]
type    = A
movetype= A
velset = 0,0
ctrl = 0
anim = 201

[State 201, 1]
type = Velset
trigger1 = time  = 0
persistent = 0
x = 6

[State 202 2]
type = ChangeState
trigger1 = time = 16
value = 11
ctrl = 1


[Statedef 202]
type    = A
movetype= A
velset = 0,0
ctrl = 0
anim = 202

[State 202, 1]
type = Velset
;trigger1 = time  (0,24)
trigger1 = time  =0

persistent = 0
x = -5.5

[State 202 2]
type = ChangeState
trigger1 = time = 24
value = 11
ctrl = 1
;**********************************パンチ攻撃Ｘ***************************

[Statedef 203]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 203

[State 202, 1]
type = Explod
trigger1 = movehit = 1
ignorehitpause = 1
persistent = 0
anim = 10000
pos = 54, -58
random = 16, 16
sprpriority = 2
removetime = 17

[State 202, 1]
type = Explod
trigger1 = moveguarded = 1
ignorehitpause = 1
persistent = 0
anim = 10002
pos = 54, -58
random = 16, 16
sprpriority = 2

[State 203, 2]
type = HitDef
triggerall = P2StateNo != 5040
triggerall = P2StateNo != 5070
triggerall = P2StateNo != 5071
trigger1 = time = 3
attr = S, NA
animtype  = light
getpower = 100
givepower = 50
damage    = 17
guardflag = MA
guardsound = S0,1
pausetime = 7,10
sparkxy = 0,255
hitsound   = S0,0
ground.type = High
ground.slidetime = 8
ground.hittime  = 16
ground.velocity = -4
air.velocity = -1,-3
air.hittime = 10

[State 203, 3]
type = ChangeState
trigger1 = AnimTIME = 0
value = 0
ctrl = 1


;**********************************パンチ攻撃Y***************************

[Statedef 204]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 100
velset = 0,0
ctrl = 0
anim = 204

[State 204, 1]
type = Explod
trigger1 = movehit = 1
ignorehitpause = 1
persistent = 0
anim = 10000
pos = 54, -58
random = 16, 16
sprpriority = 2
removetime = 17

[State 204, 1]
type = Explod
trigger1 = moveguarded = 1
ignorehitpause = 1
persistent = 0
anim = 10002
pos = 54, -58
random = 16, 16
sprpriority = 2

[State 204, 2]
type = HitDef
triggerall = P2StateNo != 5040
triggerall = P2StateNo != 5070
triggerall = P2StateNo != 5071
trigger1 = time = 3
attr = S, NA
animtype  = medium
getpower = 120
givepower = 60
damage    = 25
guardflag = MA
hitflag = MA
guardsound = S0,1
pausetime = 8,12
sparkxy = 0,255
hitsound   = S0,2
ground.type = High
ground.slidetime = 10
ground.hittime  = 16
ground.velocity = -4.3
air.velocity = -1.5,-3.2
air.hittime = 12

[State 204, 3]
type = ChangeState
trigger1 = AnimTIME = 0
value = 0
ctrl = 1


;**********************************パンチ攻撃Z***************************

[Statedef 209]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 300
velset = 0,0
ctrl = 0
anim = 209

[State 203, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2,2

[State 209, 1]
type = Explod
trigger1 = movehit = 1
ignorehitpause = 1
persistent = 0
anim = 10000
pos = 54, -58
random = 16, 16
sprpriority = 2
removetime = 17

[State 209, 1]
type = Explod
trigger1 = moveguarded = 1
ignorehitpause = 1
persistent = 0
anim = 10002
pos = 54, -58
random = 16, 16
sprpriority = 2

[State 209, 2]
type = HitDef
triggerall = P2StateNo != 5040
triggerall = P2StateNo != 5070
triggerall = P2StateNo != 5071
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Hard
getpower = 200
givepower = 70
damage    = 21
guardflag = MA
guardsound = S0,1
pausetime = 12,13
sparkxy = 0,255
;hitsound   = 1,15
ground.type = Low
ground.slidetime = 8
ground.hittime  = 16
ground.velocity = -3
air.velocity = -3,-2
air.hittime = 10

[State 209, 2]
type = PlaySnd
trigger1 = MoveHit = 1
ignorehitpause = 1
persistent = 0
value = 1, 15

[State 210, 3]
type = ChangeState
trigger1 = movecontact = 1
value = 210

[State 209, 3]
type = ChangeState
trigger1 = AnimTIME = 0
value = 0
ctrl = 1

[Statedef 210]
type    = S
movetype= A
physics = S
velset = 0,0

[State 210, 1]
type = Explod
trigger1 = movehit = 1
ignorehitpause = 1
persistent = 0
anim = 10001
pos = 54, -50
random = 16, 16
sprpriority = 2
removetime = 17

[State 210, 1]
type = Explod
trigger1 = moveguarded = 1
ignorehitpause = 1
persistent = 0
anim = 10002
pos = 54, -50
random = 16, 16
sprpriority = 2

[State 210, 2]
type = HitDef
triggerall = P2StateNo != 5040
triggerall = P2StateNo != 5070
triggerall = P2StateNo != 5071
trigger1 = AnimElem = 5
attr = S, NA
animtype  = Hard
damage    = 26
guardflag = MA
guardsound = S0,1
pausetime = 16,16
sparkxy = 0,255
;hitsound   = 1,15
ground.type = Low
ground.slidetime = 8
ground.hittime  = 16
ground.velocity = -5
air.velocity = -4,-3
air.hittime = 10

[State 210, 2]
type = PlaySnd
trigger1 = MoveHit = 1
ignorehitpause = 1
persistent = 0
value = 1, 15


[State 210, 3]
type = ChangeState
trigger1 = AnimTIME = 0
value = 0
ctrl = 1


;**********************************キック攻撃A***************************

[Statedef 213]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
poweradd= 100
ctrl = 0
anim = 212

[State 213, 1]
type = Explod
trigger1 = movehit = 1
ignorehitpause = 1
persistent = 0
anim = 10000
pos = 67, -70
random = 16, 16
sprpriority = 2
removetime = 17

[State 213, 1]
type = Explod
trigger1 = moveguarded = 1
ignorehitpause = 1
persistent = 0
anim = 10002
pos = 67, -70
random = 16, 16
sprpriority = 2

[State 213, 2]
type = HitDef
triggerall = P2StateNo != 5040
triggerall = P2StateNo != 5070
triggerall = P2StateNo != 5071
trigger1 = AnimElem = 3
attr = S, NA
animtype  = medium
getpower = 100
givepower = 50
damage    = 20
guardflag = MA
hitflag = MA
guardsound = S0,1
pausetime = 7,12
sparkxy = 0,255
hitsound   = S0,2
ground.type = High
ground.slidetime = 10
ground.hittime  = 16
ground.velocity = -4.5
air.velocity = -1.5,-3.2
air.hittime = 12

[State 213, 3]
type = ChangeState
trigger1 = AnimTIME = 0
value = 0
ctrl = 1


;**********************************キック攻撃B***************************

[Statedef 215]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 120
velset = 0,0
ctrl = 0
anim = 213

[State 215, 1]
type = Explod
trigger1 = movehit = 1
ignorehitpause = 1
persistent = 0
anim = 10001
pos = 65, -72
random = 16, 16
sprpriority = 2
removetime = 17

[State 215, 1]
type = Explod
trigger1 = moveguarded = 1
ignorehitpause = 1
persistent = 0
anim = 10002
pos = 65, -72
random = 16, 16
sprpriority = 2

[State 215, 2]
type = HitDef
triggerall = P2StateNo != 5040
triggerall = P2StateNo != 5070
triggerall = P2StateNo != 5071
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Hard
getpower = 100
givepower = 120
damage    = 50
guardflag = MA
hitflag = MA
guardsound = S0,1
pausetime = 7,12
sparkxy = 0,255
hitsound   = S0,2
ground.type = High
ground.slidetime = 10
ground.hittime  = 16
ground.velocity = -4.1
air.velocity = -1.5,-3.2
air.hittime = 12

[State 215, 3]
type = ChangeState
trigger1 = AnimTIME = 0
value = 0
ctrl = 1

;**********************************パンチ下攻撃X***************************

[Statedef 205]
type    = C
movetype= A
physics = S
juggle  = 0
velset = 0,0
poweradd= 70
ctrl = 0
anim = 205

[State 205, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,0

[State 205, 1]
type = Explod
trigger1 = movehit = 1
ignorehitpause = 1
persistent = 0
anim = 10000
pos = 54, -34
random = 16, 16
sprpriority = 2
removetime = 17

[State 205, 1]
type = Explod
trigger1 = moveguarded = 1
ignorehitpause = 1
persistent = 0
anim = 10002
pos = 54, -34
random = 16, 16
sprpriority = 2

[State 205, 2]
type = HitDef
triggerall = P2StateNo != 5040
triggerall = P2StateNo != 5070
triggerall = P2StateNo != 5071
trigger1 = time = 3
attr = S, NA
animtype  = light
getpower = 100
givepower = 50
damage    = 16
guardflag = L
guardsound = S0,1
pausetime = 8,10
sparkxy = 0,255
hitsound   = S0,0
ground.type = Low
ground.slidetime = 7
ground.hittime  = 11
ground.velocity = -4
air.velocity = -2.2,-5
air.hittime = 10

[State 205, 3]
type = ChangeState
trigger1 = AnimTIME = 0
value = 11
ctrl = 1

;**********************************パンチ下攻撃Y***************************

[Statedef 206]
type    = C
movetype= A
physics = S
juggle  = 0
poweradd= 100
velset = 0,0
ctrl = 0
anim = 206

[State 206, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,1

[State 206, 1]
type = Explod
trigger1 = movehit = 1
ignorehitpause = 1
persistent = 0
anim = 10000
pos = 54, -34
random = 16, 16
sprpriority = 2
removetime = 17

[State 206, 1]
type = Explod
trigger1 = moveguarded = 1
ignorehitpause = 1
persistent = 0
anim = 10002
pos = 54, -34
random = 16, 16
sprpriority = 2

[State 206, 2]
type = HitDef
triggerall = P2StateNo != 5040
triggerall = P2StateNo != 5070
triggerall = P2StateNo != 5071
trigger1 = time = 3
attr = S, NA
animtype  = medium
getpower = 120
givepower = 60
damage    = 22
guardflag = L
guardsound = S0,1
pausetime = 9,12
sparkxy = 0,255
hitsound   = S0,2
ground.type = Low
ground.slidetime = 7
ground.hittime  = 11
ground.velocity = -4
air.velocity = -2.2,-5
air.hittime = 10

[State 206, 3]
type = ChangeState
trigger1 = AnimTIME = 0
value = 11
ctrl = 1


;**********************************パンチ下攻撃Z***************************

[Statedef 214]
type    = C
movetype= A
physics = S
juggle  = 0
poweradd= 230
velset = 0,0
ctrl = 0
anim = 214

[State 214, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,2

[State 214, 1]
type = Explod
trigger1 = movehit = 1
ignorehitpause = 1
persistent = 0
anim = 10001
pos = 54, -34
random = 16, 16
sprpriority = 2
removetime = 17

[State 214, 1]
type = Explod
trigger1 = moveguarded = 1
ignorehitpause = 1
persistent = 0
anim = 10002
pos = 54, -34
random = 16, 16
sprpriority = 2

[State 214, 2]
type = HitDef
triggerall = P2StateNo != 5040
triggerall = P2StateNo != 5070
triggerall = P2StateNo != 5071
trigger1 = time = 3
attr = S, NA
damage   = 55,0
animtype = Med
guardflag = LA
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 12,12
sparkno = 0                      ;Spark anim no (Def: set above)
sparkxy =  -10,-60
hitsound   = S0,2
guardsound = s0,19
ground.type = Low
ground.slidetime = 5
ground.hittime  = 15
ground.velocity = 0,-9.7
airguard.velocity = -3.2,-2.3
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -3.1,-3.3           ;X-velocity at which opponent is pushed,
                                 ;Y-velocity at which opponent is pushed
air.hittime = 12                 ;Time before opponent regains control in air
;fall.recover = 0
;air.recover = 0

[State 214, 3]
type = ChangeState
trigger1 = AnimTIME = 0
value = 11
ctrl = 1
;**********************************キック下攻撃A***************************

[Statedef 212]
type    = C
movetype= A
physics = S
juggle  = 0
velset = 0,0
poweradd= 100
ctrl = 0
anim = 211

[State 212, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,0

[State 212, 1]
type = Explod
trigger1 = movehit = 1
ignorehitpause = 1
persistent = 0
anim = 10000
pos = 66, -3
random = 16, 16
sprpriority = 2
removetime = 17

[State 212, 1]
type = Explod
trigger1 = moveguarded = 1
ignorehitpause = 1
persistent = 0
anim = 10002
pos = 66, -3
random = 16, 16
sprpriority = 2

[State 212, 2]
type = HitDef
triggerall = P2StateNo != 5040
triggerall = P2StateNo != 5070
triggerall = P2StateNo != 5071
trigger1 = time = 3
attr = S, NA
animtype  = medium
getpower = 100
givepower = 50
damage    = 11
guardflag = L
guardsound = S0,1
pausetime = 8,10
sparkxy = 0,255
hitsound   = S0,0
ground.type = Low
ground.slidetime = 7
ground.hittime  = 11
ground.velocity = -3
air.velocity = -1.7,-2
air.hittime = 10

[State 212, 3]
type = ChangeState
trigger1 = AnimTIME = 0
value = 11
ctrl = 1



;**********************************キック下攻撃B***************************

[Statedef 211]
type    = C
movetype= A
physics = S
juggle  = 0
poweradd= 150
velset = 0,0
ctrl = 0
anim = 210

[State 205, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2,1

[State 211, 1]
type = Explod
trigger1 = movehit = 1
ignorehitpause = 1
persistent = 0
anim = 10000
pos = 70, -44
random = 16, 16
sprpriority = 2
removetime = 17

[State 211, 1]
type = Explod
trigger1 = moveguarded = 1
ignorehitpause = 1
persistent = 0
anim = 10002
pos = 70, -44
random = 16, 16
sprpriority = 2

[State 211, 2]
type = HitDef
triggerall = P2StateNo != 5040
triggerall = P2StateNo != 5070
triggerall = P2StateNo != 5071
trigger1 = time = 3
attr = S, NA
animtype  = Hard
getpower = 150
givepower = 75
damage    = 35
guardflag = L
guardsound = S0,1
pausetime = 20,20
sparkxy = 0,255
hitsound   = S0,0
ground.type = Trip
ground.slidetime = 7
ground.hittime  = 11
ground.velocity = -1.7,-5
air.velocity = -1.7,-5
air.hittime = 20

[State 211, 3]
type = ChangeState
trigger1 = AnimTIME = 0
value = 11
ctrl = 1


;**********************************パンチ空中攻撃X***************************

[Statedef 207]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 150
ctrl = 0
anim = 207

[State 207, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,0

[State 207, 1]
type = Explod
trigger1 = movehit = 1
ignorehitpause = 1
persistent = 0
anim = 10000
pos = 54, -34
random = 16, 16
sprpriority = 2
removetime = 17

[State 207, 1]
type = Explod
trigger1 = moveguarded = 1
ignorehitpause = 1
persistent = 0
anim = 10002
pos = 54, -34
random = 16, 16
sprpriority = 2

[State 207, 2]
type = HitDef
;triggerall = P2StateNo != 5040
;triggerall = P2StateNo != 5070
;triggerall = P2StateNo != 5071
trigger1 = time = 3
attr = S, NA
animtype  = light
getpower = 50
givepower = 100
damage    = 50
guardflag = MA
guardsound = S0,1
pausetime = 11,12
sparkxy = 0,255
hitsound   = S0,0
ground.type = High
ground.slidetime = 7
ground.hittime  = 11
ground.velocity = -4
air.velocity = -3,-2
air.hittime = 10

[State 207, 3]
type = ChangeState
trigger1 = AnimTIME = 0
value = 51
ctrl = 1


;**********************************パンチ空中攻撃Y***************************

[Statedef 208]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 180
ctrl = 0
anim = 208

[State 207, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,1

[State 208, 1]
type = Explod
trigger1 = movehit = 1
ignorehitpause = 1
persistent = 0
anim = 10000
pos = 54, -34
random = 16, 16
sprpriority = 2
removetime = 17

[State 208, 1]
type = Explod
trigger1 = moveguarded = 1
ignorehitpause = 1
persistent = 0
anim = 10002
pos = 54, -34
random = 16, 16
sprpriority = 2

[State 208, 2]
type = HitDef
;triggerall = P2StateNo != 5040
;triggerall = P2StateNo != 5070
;triggerall = P2StateNo != 5071
trigger1 = time = 3
attr = S, NA
animtype  = medium
getpower = 120
givepower = 60
damage    = 30
guardflag = MA
guardsound = S0,1
pausetime = 11,12
sparkxy = 0,255
hitsound   = S0,2
ground.type = High
ground.slidetime = 7
ground.hittime  = 11
ground.velocity = -4
air.velocity = -3.2,-1
air.hittime = 10

[State 208, 3]
type = ChangeState
trigger1 = AnimTIME = 0
value = 51
ctrl = 1


;**********************************パンチ空中攻撃Z***************************

[Statedef 216]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 200
ctrl = 0
anim = 215

[State 216, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,2

[State 216, 1]
type = Explod
trigger1 = movehit = 1
ignorehitpause = 1
persistent = 0
anim = 10001
pos = 30, 0
random = 16, 16
sprpriority = 2
removetime = 17

[State 216, 1]
type = Explod
trigger1 = moveguarded = 1
ignorehitpause = 1
persistent = 0
anim = 10002
pos = 54, -40
random = 16, 16
sprpriority = 2

[State 216, 2]
type = HitDef
;triggerall = P2StateNo != 5040
;triggerall = P2StateNo != 5070
;triggerall = P2StateNo != 5071
trigger1 = time = 3
attr = S, NA
animtype  = Hard
getpower = 150
givepower = 75
damage    = 50
guardflag = MA
guardsound = S0,1
pausetime = 25,25
sparkxy = -20,0
;hitsound   = S0,2
ground.type = High
ground.slidetime = 7
ground.hittime  = 11
ground.velocity = -4
air.velocity = -3.2,-1
air.hittime = 10

[State 216, 2]
type = PlaySnd
trigger1 = MoveHit = 1
ignorehitpause = 1
persistent = 0
value = 1, 15


[State 216, 3]
type = ChangeState
trigger1 = AnimTIME = 0
value = 51
ctrl = 1


;**********************************キック空中攻撃A***************************

[Statedef 217]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 0
ctrl = 0
anim = 216

[State 217, 1]
type = Explod
trigger1 = movehit = 1
ignorehitpause = 1
persistent = 0
anim = 10000
pos = 54, -34
random = 16, 16
sprpriority = 2
removetime = 17

[State 217, 1]
type = Explod
trigger1 = moveguarded = 1
ignorehitpause = 1
persistent = 0
anim = 10002
pos = 54, -34
random = 16, 16
sprpriority = 2

[State 217, 2]
type = HitDef
;triggerall = P2StateNo != 5040
;triggerall = P2StateNo != 5070
;triggerall = P2StateNo != 5071
trigger1 = time = 3
attr = S, NA
animtype  = light
getpower = 100
givepower = 50
damage    = 22
guardflag = MA
guardsound = S0,1
pausetime = 10,10
sparkxy = 0,255
hitsound   = S0,2
ground.type = Low
ground.slidetime = 7
ground.hittime  = 11
ground.velocity = -4
air.velocity = -3.2,-1
air.hittime = 10

[State 217, 3]
type = ChangeState
trigger1 = AnimTIME = 0
value = 51
ctrl = 1


;**********************************キック空中攻撃B***************************

[Statedef 218]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 82
ctrl = 0
anim = 217

[State 216, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,2

[State 218, 1]
type = Explod
trigger1 = movehit = 1
ignorehitpause = 1
persistent = 0
anim = 10001
pos = 54, -38
random = 16, 16
sprpriority = 2
removetime = 12

[State 218, 1]
type = Explod
trigger1 = moveguarded = 1
ignorehitpause = 1
persistent = 0
anim = 10002
pos = 54, -38
random = 16, 16
sprpriority = 2

[State 218, 2]
type = HitDef
;triggerall = P2StateNo != 5040
;triggerall = P2StateNo != 5070
;triggerall = P2StateNo != 5071
trigger1 = time = 0
attr = S, NA
animtype  = Hard
getpower = 110
givepower = 66
damage    = 38
guardflag = MA
guardsound = S0,1
pausetime = 17,17
sparkxy = 0,255
hitsound   = S0,2
ground.type = Low
ground.slidetime = 7
ground.hittime  = 11
ground.velocity = -4
air.velocity = -3.2,-1
air.hittime = 10

[State 218, 3]
type = ChangeState
trigger1 = AnimTIME = 0
value = 51
ctrl = 1


;**********************************キック空中攻撃B***************************

[Statedef 219]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 150
ctrl = 0
anim = 218

[State 219, 1]
type = PlaySnd
trigger1 = AnimElem = 9
value = 2,2

[State 219, 1]
type = Explod
trigger1 = movehit = 1
ignorehitpause = 1
persistent = 0
anim = 10001
pos = 44, -42
random = 16, 16
sprpriority = 2
removetime = 17

[State 219, 1]
type = Explod
trigger1 = moveguarded = 1
ignorehitpause = 1
persistent = 0
anim = 10002
pos = 44, -42
random = 16, 16
sprpriority = 2

[State 219, 2]
type = HitDef
;triggerall = P2StateNo != 5040
;triggerall = P2StateNo != 5070
;triggerall = P2StateNo != 5071
trigger1 = AnimElem = 12
attr = A, NA   
damage    = 60 
animtype = Heavy
getpower = 150
givepower = 80
guardflag = HA
hitflag = MAF
priority = 3, Hit
pausetime = 25,25
sparkxy = 0,255
hitsound = S0,2
guardsound = S0,1
ground.type = High
air.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5
air.velocity = -1,8
air.fall = 1
fall.recover = 0

[State 219, 3]
type = ChangeState
trigger1 = AnimTIME = 0
value = 51
ctrl = 1

;前ブロッキング 

[Statedef 1030] 
type = S
movetype= I
physics = S
juggle = 0
ctrl = 0
anim = 1030
velset = 3.1,0

[State 1030, 3] 
type = ReversalDef
trigger1 = Time = 0
attr = S, NT
reversal.attr = SA, NA, SA, HA, SP, HP, NP
pausetime = 0,15
sparkxy = 0,999
;hitsound = 6,0
sprpriority = -1
p1stateno = 1031

[State 1030, 4] 
type = ChangeState
trigger1 = Time = 5
value = 20
ctrl = 1

;---------------------------------------------------------------------------

;前ブロッキング：成功時 
[Statedef 1031]
type = S
movetype= I
physics = N
anim = 1031
velset = -0.05,0

[State 1031, 1]
type = EnvColor
trigger1 = Time = 0
value = 200, 200, 200
time = 1

[State 1031, 1]
type = Explod
trigger1 = Time = 0
ignorehitpause = 1
persistent = 0
anim = 10002
pos = 37, -57
random = 16, 16
sprpriority = 2

[State 1031, 3]
type = CtrlSet
trigger1 = time = 15
value = 1

[State 1031, 1] 
type = PlayerPush
trigger1 = Time >= 0
value = 1

[State 1031, 2]
type = Playsnd
trigger1 = Time = 0
value = 0,3

[State 900, 5]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1,1

[State 1031, 3]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

