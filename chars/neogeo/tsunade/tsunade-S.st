;================================================================================================
;
; TSUNADE'S SPECIAL ATTACKS
;
;================================================================================================

; Super Strike
;------------

; Prepare
;--------
[Statedef 900]
Type = S
MoveType = A
Physics = S
anim = 2000
sprpriority = 2
velset = 0,0
ctrl = 0

[State 900, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 901

; Jump
;-----
[Statedef 901]
Type = A
MoveType = A
Physics = N
anim = 2010
sprpriority = 2
velset = 0,-8
ctrl = 0

[State 901, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,3
channel = 0

[State 901, reduce velocity]
type = VelAdd
trigger1 = Time = 5
trigger2 = Time = 7
trigger3 = Time = 10
trigger4 = Time = 12
trigger5 = Time = 16
trigger6 = Time = 17
trigger7 = Time = 21
trigger8 = Time = 23
y = 1

[State 901, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 902

; Attack
;-------
[Statedef 902]
Type = A
MoveType = A
Physics = N
anim = 2020
sprpriority = 2
ctrl = 0
juggle = 10

[State 902, voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,4
channel = 0

[State 902, attack sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 110,2
channel = 1

[State 902, increase velocity]
type = VelAdd
trigger1 = Time = 3
trigger2 = Time = 5
trigger3 = Time = 9
trigger4 = Time = 10
trigger5 = Time = 13
trigger6 = Time = 17
trigger7 = Time = 21
trigger8 = Time = 22
y = 1

[State 902, hit def]
type = HitDef
triggerall = HitCount < 2
trigger1 = AnimElem = 4
trigger2 = AnimElem = 12
attr = A, SA
hitflag = MAF
guardflag = MA
animtype = back
air.animtype = back
priority = 4, Hit
damage = 240,0
pausetime = 0, 3
guard.pausetime = 0, 3
sparkno = 12
guard.sparkno = 40
sparkxy = 0,-36
hitsound = s120, 4
guardsound = s130, 3
guard.slidetime = 20
guard.hittime = 23
guard.ctrltime = 23
air.hittime = 10
ground.velocity = -2.5,-7.5
fall = 1
fall.recover = 1
guard.velocity = -15
air.velocity = -2.5, -7.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -14.3
getpower = 0, 0
yaccel = 0.5

[State 902, hit def]
type = HitDef
triggerall = HitCount < 2
trigger1 = AnimElem = 22
attr = A, SA
hitflag = MAF
guardflag = MA
animtype = back
air.animtype = back
priority = 4, Hit
damage = 240,0
pausetime = 9, 9
guard.pausetime = 11, 9
sparkno = 12
guard.sparkno = 40
sparkxy = 0,-36
hitsound = s120, 4
guardsound = s130, 3
guard.slidetime = 20
guard.hittime = 23
guard.ctrltime = 23
air.hittime = 10
ground.velocity = -2.5,-7.5
fall = 1
fall.recover = 1
guard.velocity = -15
air.velocity = -2.5, -7.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -14.3
getpower = 0, 0
yaccel = 0.5 

[State 902, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 905

; Hit Ground
;-----------
[Statedef 905]
Type = S
MoveType = A
Physics = S
anim = 2030
sprpriority = 2
ctrl = 0

[State 905, shake screen]
type = EnvShake
trigger1 = time = 0
time = 26

[State 905, velocity]
type = VelSet
trigger1 = time = 1
y = 0

[State 905, position]
type = PosSet
trigger1 = AnimElem = 3
y = 0

[State 905, smoke]
type = explod
trigger1 = AnimElem = 3
anim = 1220
pos = 64,0
sprpriority = 3
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 905, sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 115,0
channel = 1

[State 905, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 906

; Bounce
;-------
[Statedef 906]
Type = A
MoveType = I
Physics = N
anim = 2040
sprpriority = 2
ctrl = 0

[State 906, position]
type = PosSet
trigger1 = AnimElem = 1
y = -38

[State 906, position]
type = PosAdd
trigger1 = AnimElem = 3
x = -3

[State 906, position]
type = PosAdd
trigger1 = AnimElem = 5
y = 2

[State 906, position]
type = PosAdd
trigger1 = AnimElem = 6
x = -2

[State 906, position]
type = PosAdd
trigger1 = AnimElem = 7
x = -5
y = 4

[State 906, position]
type = PosAdd
trigger1 = AnimElem = 8
x = -7
y = 8

[State 906, position]
type = PosAdd
trigger1 = AnimElem = 9, = 0
x = -5
y = 12

[State 906, position]
type = PosAdd
trigger1 = AnimElem = 9, = 1
y = 4

[State 906, position]
type = PosAdd
trigger1 = AnimElem = 10
y = 2

[State 906, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 907

; Land
;-----
[Statedef 907]
Type = S
MoveType = I
Physics = S
anim = 2050
sprpriority = 2
velset = 0,0
ctrl = 0

[State 907, position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 807, land sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 100,0
channel = 1

[State 906, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Usonaki
;--------

[Statedef 910]
Type = C
MoveType = A
Physics = C
anim = 195
sprpriority = 2
velset = 0,0
ctrl = 0
juggle = 10

[State 910, reduce life]
type = lifeadd
trigger1 = time = 0 && life > 160
value = -160

[State 910, attack sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,5
channel = 0

[State 910, hit def]
type = HitDef
trigger1 = AnimElem = 3 && life > 160
attr = C, SA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = back
priority = 4, Hit
damage = 160,0
pausetime = 9, 11
guard.pausetime = 11, 10
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-36
hitsound = s120, 2
guardsound = s130, 2
guard.slidetime = 20
guard.hittime = 23
guard.ctrltime = 23
air.hittime = 10
ground.velocity = -2.5,-7.5
fall = 1
fall.recover = 1
guard.velocity = -15
air.velocity = -2.5, -7.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -14.3
getpower = 0, 0
yaccel = 0.5 

[State 910, back smoke 1]
type = explod
trigger1 = time = 4 && life > 160
anim = 196
pos = 0,0
sprpriority = -3
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 910, front smoke 1]
type = explod
trigger1 = time = 4 && life > 160
anim = 197
pos = 0,0
sprpriority = -3
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 910, back smoke 2]
type = explod
trigger1 = time = 28 && life > 160
anim = 198
pos = 0,0
sprpriority = -3
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 910, front smoke 2]
type = explod
trigger1 = time = 28 && life > 160
anim = 199
pos = 0,0
sprpriority = 3
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 910, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Air Kunai Throw
;----------------

; Air Attack
[Statedef 920]
Type = A
MoveType = A
Physics = N
anim = 1300
sprpriority = 2
velset = 0,0
ctrl = 0
juggle = 10

[State 920, velocity]
type = VelSet
trigger1 = time = 22
x = -1
y = -1

[State 920, stop vertical velocity]
type = VelSet
trigger1 = time = 42
y = 1

[State 920, fall 1]
type = VelAdd
trigger1 = time = 44
trigger2 = time = 46
trigger3 = time = 48
trigger4 = time = 50
trigger5 = time = 52
trigger6 = time = 56
y = 0.5

[State 920, fall 2]
type = VelAdd
trigger1 = time = 58
trigger2 = time = 63
trigger3 = time = 68
trigger4 = time = 73
trigger5 = time = 78
trigger6 = time = 83
y = 1

[State 920, kunai]
type = helper
trigger1 = AnimElem = 4
name = "Kunai"
ID = 1310
pos = 42,-44
stateno = 925
helpertype = normal
keyctrl = 0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
size.shadowoffset = 0

[State 920, attack sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 110,3
channel = 1

[State 920, axe 1]
type = explod
trigger1 = AnimElem = 2
anim = 1301
pos = -18,-44
sprpriority = 3
ownpal = 1
bindtime = -1
removeongethit = 1
ignorehitpause = 1

[State 920, axe 2]
type = explod
trigger1 = AnimElem = 3
anim = 1302
pos = -30,-46
sprpriority = 3
ownpal = 1
bindtime = -1
removeongethit = 1
ignorehitpause = 1

[State 920, axe 3]
type = explod
trigger1 = AnimElem = 4
anim = 1303
pos = -12,-78
sprpriority = 1
ownpal = 1
bindtime = -1
removeongethit = 1
ignorehitpause = 1

[State 920, end state]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= -ceil(vel y)
value = 921

; Land
[Statedef 921]
Type = S
MoveType = I
Physics = S
anim = 1305
sprpriority = 2
velset = 0,0
ctrl = 0

[State 921, position]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 921, land sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 100,0
channel = 1

[State 921, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Take Back Kunai
[Statedef 922]
Type = S
MoveType = I
Physics = S
anim = 1350
sprpriority = 1
velset = 0,0
ctrl = 0

[State 922, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


; Kunai - Attack
[Statedef 925]
Type = A
MoveType = A
Physics = N
anim = 1310
sprpriority = 2
velset = 8,8
ctrl = 0

[State 925, hit def]
type = HitDef
trigger1 = !MoveContact
attr = A, SA
hitflag = MAF
guardflag = MA
animtype = back
air.animtype = back
priority = 4, Hit
damage = 160,0
pausetime = 9, 12
guard.pausetime = 6, 3
sparkno = 12
guard.sparkno = 40
sparkxy = 0,0
hitsound = s120, 4
guardsound = s130, 3
ground.type = high
ground.slidetime = 16
ground.hittime = 19
guard.slidetime = 16
guard.hittime = 19
guard.ctrltime = 19
air.hittime = 10
ground.velocity = -4.1
guard.velocity = -10.5
air.velocity = -2, -6
ground.cornerpush.veloff = -17.8
guard.cornerpush.veloff = -14.3
getpower = 0, 0

[State 921, bounce sound]
type = PlaySnd
trigger1 = FrontEdgeDist <= 5
value = 130,3
channel = 1

[State 925, bounce state]
type = SelfState
trigger1 = MoveGuarded
trigger2 = FrontEdgeDist <= 5
value = 926

[State 925, end state]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= -ceil(vel y)
value = 927

; Kunai - Bounce
[Statedef 926]
Type = A
MoveType = I
Physics = N
anim = 1320
sprpriority = 2
velset = -2,-11
ctrl = 0

[State 926, gravity]
type = VelAdd
trigger1 = 1
y = 0.25

[State 926, bound to screen]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0

[State 926, end state]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= -ceil(vel y)
value = 927

; Kunai - Ground
[Statedef 927]
Type = A
MoveType = A
Physics = N
anim = 1330
sprpriority = 3
velset = 0,0
ctrl = 0

[State 927, position]
type = PosSet
trigger1 = time = 0
y = 0

[State 927, self destroy]
type = DestroySelf
trigger1 = Parent, Anim = 1350



; Kaiten Koma
;------------

; Short
;------
[Statedef 1000]
Type = S
MoveType = A
Physics = S
anim = 1000
sprpriority = 2
velset = 0,0
ctrl = 0
juggle = 10

[State 1000, voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,2
channel = 0

[State 1000, attack sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 110,5
channel = 1

[State 1000, hit def]
type = HitDef
trigger1 = !MoveContact
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = back
air.animtype = back
priority = 4, Hit
damage = 120,0
pausetime = 0, 3
guard.pausetime = 6, 3
sparkno = 12
guard.sparkno = 40
sparkxy = 0,-60
hitsound = s120, 4
guardsound = s130, 3
guard.slidetime = 16
guard.hittime = 19
guard.ctrltime = 19
air.hittime = 10
ground.velocity = -15, -5
guard.velocity = -10.7
air.velocity = -2, -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -14.3
p2facing = 1
P2StateNo = 1050
getpower = 0, 0

[State 1000, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Medium
;-------
[Statedef 1010] ; 1st Turn
Type = S
MoveType = A
Physics = S
anim = 1010
sprpriority = 2
velset = 0,0
ctrl = 0
juggle = 10

[State 1010, voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,2
channel = 0

[State 1010, attack sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 110,5
channel = 1

[State 1010, hit def]
type = HitDef
trigger1 = !MoveContact
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = back
air.animtype = back
priority = 4, Hit
damage = 160,0
pausetime = 0, 3
guard.pausetime = 6, 3
sparkno = 12
guard.sparkno = 40
sparkxy = 0,-60
hitsound = s120, 4
guardsound = s130, 3
guard.slidetime = 16
guard.hittime = 19
guard.ctrltime = 19
air.hittime = 10
ground.velocity = -15, -5
guard.velocity = -10.7
air.velocity = -2, -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -14.3
p2facing = 1
P2StateNo = 1050
getpower = 0, 0

[State 1010, 2nd turn state]
type = ChangeState
trigger1 = AnimElem = 15
value = 1011

[Statedef 1011] ; 2nd Turn
Type = S
MoveType = A
Physics = S
sprpriority = 2
velset = 0,0
ctrl = 0

[State 1011, attack sound]
type = PlaySnd
trigger1 = AnimElem = 15
value = 110,5
channel = 1

[State 1011, hit def]
type = HitDef
trigger1 = !MoveContact
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = back
air.animtype = back
priority = 4, Hit
damage = 160,0
pausetime = 0, 3
guard.pausetime = 6, 3
sparkno = 12
guard.sparkno = 40
sparkxy = 0,-60
hitsound = s120, 4
guardsound = s130, 3
guard.slidetime = 16
guard.hittime = 19
guard.ctrltime = 19
air.hittime = 10
ground.velocity = -15, -5
guard.velocity = -10.7
air.velocity = -2, -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -14.3
p2facing = 1
P2StateNo = 1050
getpower = 0, 0

[State 1011, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Long
;-----
[Statedef 1020]
Type = S
MoveType = A
Physics = S
anim = 1020
sprpriority = 2
velset = 0,0
ctrl = 0
juggle = 10

[State 1020, voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,2
channel = 0

[State 1020, attack sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 110,5
channel = 1

[State 1020, hit def]
type = HitDef
trigger1 = !MoveContact
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = back
air.animtype = back
priority = 4, Hit
damage = 200,0
pausetime = 0, 3
guard.pausetime = 6, 3
sparkno = 12
guard.sparkno = 40
sparkxy = 0,-60
hitsound = s120, 4
guardsound = s130, 3
guard.slidetime = 16
guard.hittime = 19
guard.ctrltime = 19
air.hittime = 10
ground.velocity = -15, -5
guard.velocity = -10.7
air.velocity = -2, -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -14.3
p2facing = 1
P2StateNo = 1050
getpower = 0, 0

[State 1020, 2nd turn state]
type = ChangeState
trigger1 = AnimElem = 15
value = 1021

[Statedef 1021] ; 2nd Turn
Type = S
MoveType = A
Physics = S
sprpriority = 2
velset = 0,0
ctrl = 0

[State 1021, attack sound]
type = PlaySnd
trigger1 = AnimElem = 15
value = 110,5
channel = 1

[State 1021, hit def]
type = HitDef
trigger1 = !MoveContact
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = back
air.animtype = back
priority = 4, Hit
damage = 160,0
pausetime = 0, 3
guard.pausetime = 6, 3
sparkno = 12
guard.sparkno = 40
sparkxy = 0,-60
hitsound = s120, 4
guardsound = s130, 3
guard.slidetime = 16
guard.hittime = 19
guard.ctrltime = 19
air.hittime = 10
ground.velocity = -15, -5
guard.velocity = -10.7
air.velocity = -2, -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -14.3
p2facing = 1
P2StateNo = 1050
getpower = 0, 0

[State 1021, 3rd turn state]
type = ChangeState
trigger1 = AnimElem = 23
value = 1022

[Statedef 1022] ; 3rd Turn
Type = S
MoveType = A
Physics = S
sprpriority = 2
velset = 0,0
ctrl = 0

[State 1022, attack sound]
type = PlaySnd
trigger1 = AnimElem = 23
value = 110,5
channel = 1

[State 1022, hit def]
type = HitDef
trigger1 = !MoveContact
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = back
air.animtype = back
priority = 4, Hit
damage = 160,0
pausetime = 0, 3
guard.pausetime = 6, 3
sparkno = 12
guard.sparkno = 40
sparkxy = 0,-60
hitsound = s120, 4
guardsound = s130, 3
guard.slidetime = 16
guard.hittime = 19
guard.ctrltime = 19
air.hittime = 10
ground.velocity = -15, -5
guard.velocity = -10.7
air.velocity = -2, -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -14.3
p2facing = 1
P2StateNo = 1050
getpower = 0, 0

[State 1022, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Ennemy
;-------
; Hit Back
[Statedef 1050]
Type = A
MoveType = H
Physics = N
sprpriority = -1
ctrl = 0

[State 1050, hit back animation]
type = ChangeAnim
trigger1 = time = 0
value = 5030

[State 1050, fall animation]
type = ChangeAnim
trigger1 = time = 2
value = 5050

[State 1050, velocity]
type = VelSet
trigger1 = time = 2
x = -15
y = -5

[State 1050, change state]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 5
value = 1051

; Hit Screen Edge
[Statedef 1051]
Type = A
MoveType = H
Physics = N
sprpriority = -1
velset = 0,0
ctrl = 0

[State 1051, hit edge spark]
type = Explod
trigger1 = time = 0
anim = f70
pos = -const(size.ground.back)
ownpal = 1

[State 1051, hit edge animation]
type = ChangeAnim
trigger1 = time < 7
value = 5100

[State 1051, bounce animation]
type = ChangeAnim
trigger1 = time = 7
value = 5160

[State 1051, velocity]
type = VelSet
trigger1 = time = 7
x = 2
y = 3

[State 1051, gravity]
type = Gravity
trigger1 = time > 7

[State 1051, end state]
type = SelfState
trigger1 = pos y >= -ceil(vel y)
value = 5100




; Bakujin Namekuji Keri
;----------------------

; Prepare
;--------
[Statedef 1100]
Type = S
MoveType = A
Physics = S
anim = 1100
sprpriority = 2
velset = 0,0
ctrl = 0

[State 1100, voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,3
channel = 0

[State 1100, weapon sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 115,0
channel = 1

[State 1100, change state]
type = ChangeState
trigger1 = AnimTime = 0
value = 1110

; Attack
;-------
[Statedef 1110]
Type = A
MoveType = A
Physics = N
anim = 1110
sprpriority = 2
velset = 16,0
ctrl = 0
juggle = 10

[State 1110, ghost]
type = PlayerPush
trigger1 = 1
value = 0

[State 1110, weapon]
type = Explod
trigger1 = 1
anim = 1150
pos = 0,-80
bindtime = -1
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1110, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1
channel = 0

[State 1110, attack sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 110,6
channel = 1

[State 1110, hit def]
type = HitDef
trigger1 = !MoveContact
attr = A, SA
hitflag = MAF
guardflag = MA
animtype = back
air.animtype = back
priority = 4, Hit
damage = 160,0
pausetime = 9, 9
guard.pausetime = 6, 3
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-58
hitsound = s120, 2
guardsound = s130, 2
guard.slidetime = 16
guard.hittime = 19
guard.ctrltime = 19
air.hittime = 10
ground.velocity = -2.75, -8
guard.velocity = -10.7
air.velocity = -2, -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
fall = 1
fall.recover = 0
getpower = 0, 0

[State 1110, change state]
type = ChangeState
trigger1 = AnimTime = 0
value = 1120

; Stop
;-----
[Statedef 1120]
Type = A
MoveType = I
Physics = N
anim = 1120
sprpriority = 2
velset = 0,0
ctrl = 0

[State 1110, remove weapon]
type = RemoveExplod
trigger1 = AnimElem = 1

[State 1120, weapon sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 115,0
channel = 1

[State 1120, change state]
type = ChangeState
trigger1 = AnimTime = 0
value = 1130

; Land
;-----
[Statedef 1130]
Type = S
MoveType = I
Physics = S
anim = 47
sprpriority = 2
velset = 0,0
ctrl = 0

[State 1130, land sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 100,0
channel = 1

[State 1130, change state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Namekuji Kamikakushi
;---------------------

; Warp Back
:----------
[Statedef 1200]
Type = S
MoveType = I
Physics = S
anim = 1200
sprpriority = 2
velset = 0,0
ctrl = 0

[State 1200, invincibility]
type = NotHitBy
trigger1 = Animelem = 6, >= 0
trigger1 = Animelem = 7, < 0
value = SCA

[State 1200, position]
type = PosSet
trigger1 = Animelem = 8
x = -120*(facing)

[State 1200, slime]
type = Explod
trigger1 = Animelem = 6
anim = 1210
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
shadow = -1,0,0

[State 1200, smoke]
type = Explod
trigger1 = Animelem = 1
anim = 1220
postype = p1
pos = 0,0
sprpriority = 4
ownpal = 1

[State 1200, voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,6
channel = 0

[State 1200, attack sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 110,4
channel = 1

[State 1200, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Warp Center
:------------
[Statedef 1210]
Type = S
MoveType = I
Physics = S
anim = 1200
sprpriority = 2
velset = 0,0
ctrl = 0

[State 1210, invincibility]
type = NotHitBy
trigger1 = Animelem = 6, >= 0
trigger1 = Animelem = 7, < 0
value = SCA

[State 1210, position]
type = PosSet
trigger1 = Animelem = 8
x = 0

[State 1210, slime]
type = Explod
trigger1 = Animelem = 6
anim = 1210
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
shadow = -1,0,0

[State 1210, smoke]
type = Explod
trigger1 = Animelem = 1
anim = 1220
postype = p1
pos = 0,0
sprpriority = 4
ownpal = 1

[State 1210, voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,6
channel = 0

[State 1210, attack sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 110,4
channel = 1

[State 1210, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Warp Front
:-----------
[Statedef 1220]
Type = S
MoveType = I
Physics = S
anim = 1200
sprpriority = 2
velset = 0,0
ctrl = 0

[State 1220, invincibility]
type = NotHitBy
trigger1 = Animelem = 6, >= 0
trigger1 = Animelem = 7, < 0
value = SCA

[State 1220, position]
type = PosSet
trigger1 = Animelem = 8
x = 120*(facing)

[State 1220, slime]
type = Explod
trigger1 = Animelem = 6
anim = 1210
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
shadow = -1,0,0

[State 1220, smoke]
type = Explod
trigger1 = Animelem = 1
anim = 1220
postype = p1
pos = 0,0
sprpriority = 4
ownpal = 1

[State 1220, voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,6
channel = 0

[State 1220, attack sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 110,4
channel = 1

[State 1220, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Kaiten Keri
;------------

; Jump
;-----
[Statedef 1400]
Type = S
MoveType = A
Physics = S
anim = 1400
sprpriority = 2
velset = 0,0
ctrl = 0
juggle = 5

[State 1400, state]
type = StateTypeSet
trigger1 = AnimElem = 4
statetype = A
physics = N

[State 1400, jumping velocity]
type = VelSet
trigger1 = AnimElem = 4
x = 1
y = -8

[State 1400, decrease velocity]
type = VelAdd
trigger1 = time = 13
trigger2 = time = 15
trigger3 = time = 17
trigger4 = time = 19
trigger5 = time = 21
trigger6 = time = 23
trigger7 = time = 25
trigger8 = time = 27
y = 1

[State 1400, decrease velocity]
type = VelAdd
trigger1 = time = 27
trigger2 = time = 29
trigger3 = time = 31
trigger4 = time = 33
trigger5 = time = 35
trigger6 = time = 37
trigger7 = time = 39
trigger8 = time = 41
y = 1

[State 1400, weapon sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 110,2
channel = 1

[State 1400, voice]
type = PlaySnd
trigger1 = AnimElem = 12
value = 0,0
channel = 0

[State 1400, hit def]
type = HitDef
trigger1 = AnimElem = 12
attr = A, SA
hitflag = MAF
guardflag = HA
animtype = hard
air.animtype = back
priority = 4, Hit
damage = 100,0
pausetime = 9, 12
guard.pausetime = 6, 3
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-36
hitsound = s120, 2
guardsound = s130, 2
ground.type = high
ground.slidetime = 16
ground.hittime = 19
guard.slidetime = 16
guard.hittime = 19
guard.ctrltime = 19
air.hittime = 10
ground.velocity = 0
guard.velocity = -10.5
air.velocity = -2, -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -14.3
getpower = 0, 0

[State 1400, jump back state]
type = ChangeState
trigger1 = MoveContact
value = 1430

[State 1400, bounce state]
type = ChangeState
trigger1 = AnimElem = 13
value = 1410

; 1st Bounce
;-----------
[Statedef 1410]
Type = A
MoveType = A
Physics = N
sprpriority = 2
velset = 0.75,-5
ctrl = 0

[State 1410, sound]
type = PlaySnd
trigger1 = Time = 0
value = F7, 1

[State 1410, decrease velocity]
type = VelAdd
trigger1 = time = 5
trigger2 = time = 7
trigger3 = time = 9
trigger4 = time = 11
trigger5 = time = 13
trigger6 = time = 17
trigger7 = time = 19
trigger8 = time = 21
trigger9 = time = 23
trigger10 = time = 25
y = 1

[State 1400, bounce state]
type = ChangeState
trigger1 = AnimElem = 14
value = 1420

; 2nd Bounce
;-----------
[Statedef 1420]
Type = A
MoveType = A
Physics = N
sprpriority = 2
velset = 0.5, -4
ctrl = 0

[State 1420, sound]
type = PlaySnd
trigger1 = Time = 0
trigger2 = AnimTime = 0
value = F7, 0

[State 1420, decrease velocity]
type = VelAdd
trigger1 = time = 2
trigger2 = time = 4
trigger3 = time = 6
trigger4 = time = 8
trigger5 = time = 10
trigger6 = time = 12
trigger7 = time = 14
trigger8 = time = 16
y = 1

[State 1420, vel set]
type = VelSet
trigger1 = AnimTime = 0
x = 0
y = 0

[State 1420, pos set]
type = PosSet
trigger1 = AnimTime = 0
y = 0

[State 1420, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 5120

; Jump Back
;----------
[Statedef 1430]
Type = A
MoveType = I
Physics = N
sprpriority = 2
ctrl = 0

[State 1430, animation]
type = ChangeAnim
trigger1 = time = 1
value = 1430

[State 1430, velocity]
type = VelSet
trigger1 = time = 1
x = -3
y = -5

[State 1430, decrease velocity]
type = VelAdd
trigger1 = time = 3
trigger2 = time = 5
trigger3 = time = 7
trigger4 = time = 9
trigger5 = time = 11
y = 1

[State 1430, decrease velocity]
type = VelAdd
trigger1 = time = 11
trigger2 = time = 13
trigger3 = time = 15
trigger4 = time = 17
trigger5 = time = 19
trigger6 = time = 21
trigger7 = time = 23
trigger8 = time = 25
trigger9 = time = 27
trigger10 = time = 29
y = 1

[State 1430, end state]
type = ChangeState
trigger1 = vel y >= 0
trigger1 = pos y >= -ceil(vel y)
value = 1440

; Jump Land
;----------
[Statedef 1440]
Type = S
MoveType = I
Physics = S
anim = 47
sprpriority = 2
velset = 0,0
ctrl = 0

[State 1440, position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1440, land sound]
type = PlaySnd
trigger1 = Time = 0
value = 100,0
channel = 1

[State 1440, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Keri Age
;---------
[Statedef 1450]
Type = A
MoveType = A
Physics = N
sprpriority = 2
ctrl = 0
juggle = 5

[State 1450, animation]
type = ChangeAnim
trigger1 = time = 1
value = 1450

[State 1450, velocity]
type = VelSet
trigger1 = time = 1
x = 0
y = 0

[State 1450, position]
type = PosSet
trigger1 = Time = 1
y = 0

[State 1450, state properties]
type = StateTypeSet
trigger1 = AnimElem = 3
statetype = S
physics = S

[State 1450, weapon sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 110,2
channel = 1

[State 1450, voice]
type = PlaySnd
trigger1 = AnimElem = 8
value = 0,1
channel = 0

[State 1450, hit def]
type = HitDef
trigger1 = AnimElem = 8
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = up
air.animtype = up
priority = 4, Hit
damage = 100,0
pausetime = 0, 3
guard.pausetime = 6, 3
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-52
hitsound = s120, 2
guardsound = s130, 2
ground.type = high
guard.slidetime = 16
guard.hittime = 19
guard.ctrltime = 19
air.hittime = 10
ground.velocity = -0.3,-16
fall = 1
fall.recover = 0
guard.velocity = -10.5
air.velocity = -0.3,-16
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -14.3
getpower = 0, 0
yaccel = 0.5 

[State 1450, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1