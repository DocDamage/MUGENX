;================================================================================================
;
; TSUNADE'S NORMAL ATTACKS
;
;================================================================================================

; Stand Light Slash
;------------------
[Statedef 200]
Type = S
MoveType = A
Physics = S
anim = 200
sprpriority = 2
velset = 0,0
ctrl = 0
juggle = 5

[State 200, attack sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 110,0
channel = 1

[State 200, hit def]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = back
priority = 4, Hit
damage = 40,0
pausetime = 9, 10
guard.pausetime = 6, 3
sparkno = 0
guard.sparkno = 40
sparkxy = 0,-54
hitsound = s120, 0
guardsound = s130, 0
ground.type = high
ground.slidetime = 9
ground.hittime = 11
guard.slidetime = 9
guard.hittime = 11
guard.ctrltime = 11
air.hittime = 10
ground.velocity = -4.1
guard.velocity = -6.7
air.velocity = -2, -6
ground.cornerpush.veloff = -6
guard.cornerpush.veloff = -6
getpower = 0, 0

[State 200, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Short Light Slash
;------------------
[Statedef 205]
Type = S
MoveType = A
Physics = S
anim = 205
sprpriority = 2
velset = 0,0
ctrl = 0
juggle = 5

[State 205, attack sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 110,0
channel = 1

[State 205, hit def]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = back
priority = 4, Hit
damage = 40,0
pausetime = 9, 10
guard.pausetime = 6, 3
sparkno = 0
guard.sparkno = 40
sparkxy = 0,-66
hitsound = s120, 0
guardsound = s130, 0
ground.type = high
ground.slidetime = 9
ground.hittime = 11
guard.slidetime = 9
guard.hittime = 11
guard.ctrltime = 11
air.hittime = 10
ground.velocity = -4.1
guard.velocity = -6.7
air.velocity = -2, -6
ground.cornerpush.veloff = -6
guard.cornerpush.veloff = -6
getpower = 0, 0

[State 205, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Stand Medium Slash
;-------------------
[Statedef 210]
Type = S
MoveType = A
Physics = S
anim = 210
sprpriority = 2
velset = 0,0
ctrl = 0
juggle = 5

[State 210, voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,1
channel = 0

[State 210, attack sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 110,1
channel = 1

[State 210, hit def]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = medium
air.animtype = back
priority = 4, Hit
damage = 130,0
pausetime = 9, 12
guard.pausetime = 6, 3
sparkno = 11
guard.sparkno = 40
sparkxy = 0,-52
hitsound = s120, 3
guardsound = s130, 3
ground.type = high
ground.slidetime = 12
ground.hittime = 16
guard.slidetime = 12
guard.hittime = 16
guard.ctrltime = 16
air.hittime = 10
ground.velocity = -7.8
guard.velocity = -7.8
air.velocity = -2, -6
ground.cornerpush.veloff = -12.5
guard.cornerpush.veloff = -9.5
getpower = 0, 0

[State 210, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Short Medium Slash
;-------------------
[Statedef 215]
Type = S
MoveType = A
Physics = S
anim = 215
sprpriority = 2
velset = 0,0
ctrl = 0
juggle = 5

[State 215, attack sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 110,1
channel = 1

[State 215, hit def]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = medium
air.animtype = back
priority = 4, Hit
damage = 80,0
pausetime = 0, 12
guard.pausetime = 0, 3
sparkno = 11
guard.sparkno = 40
sparkxy = 0,-52
hitsound = s120, 3
guardsound = s130, 3
ground.type = high
ground.slidetime = 12
ground.hittime = 16
guard.slidetime = 12
guard.hittime = 16
guard.ctrltime = 16
air.hittime = 10
ground.velocity = -8.8
guard.velocity = -5.8
air.velocity = -2, -6
ground.cornerpush.veloff = -8.4
guard.cornerpush.veloff = -4.7
getpower = 0, 0

[State 215, hit def]
type = HitDef
triggerall = HitCount < 2
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = medium
air.animtype = back
priority = 4, Hit
damage = 80,0
pausetime = 9, 12
guard.pausetime = 6, 3
sparkno = 11
guard.sparkno = 40
sparkxy = 0,-66*(AnimElem = 5) - 22*(AnimElem = 6) - 50*(AnimElem = 7)
hitsound = s120, 3
guardsound = s130, 3
ground.type = high
ground.slidetime = 12
ground.hittime = 16
guard.slidetime = 12
guard.hittime = 16
guard.ctrltime = 16
air.hittime = 10
ground.velocity = -8.8
guard.velocity = -5.9
air.velocity = -2, -6
ground.cornerpush.veloff = -8.4
guard.cornerpush.veloff = -4.7
getpower = 0, 0

[State 215, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Stand Fierce Slash
;-------------------

; Prepare
;--------
[Statedef 220]
Type = S
MoveType = A
Physics = N
anim = 220
sprpriority = 2
velset = 0,0
ctrl = 0

[State 220, horyzontal velocity]
type = VelAdd
trigger1 = time = 0 && command = "holdfwd"
x = 1

[State 220, horyzontal velocity]
type = VelAdd
trigger1 = time = 0 && command = "holdback"
x = -1

[State 220, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 221

; Air Attack
;-----------
[Statedef 221]
Type = A
MoveType = A
Physics = A
anim = 221
sprpriority = 2
ctrl = 0
juggle = 10

[State 221, vertical velocity]
type = VelSet
trigger1 = time = 0
y = -4

[State 221, gravity]
type = VelAdd
trigger1 = 1
y = -0.145

[State 221, voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,2
channel = 0

[State 221, attack sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 110,2
channel = 1

[State 221, hit def]
type = HitDef
trigger1 = AnimElem = 6
attr = A, NA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = back
priority = 4, Hit
damage = 200,0
pausetime = 9, 12
guard.pausetime = 6, 3
sparkno = 12
guard.sparkno = 40
sparkxy = 0,2
hitsound = s120, 3
guardsound = s130, 3
ground.type = high
ground.slidetime = 16
ground.hittime = 19
guard.slidetime = 16
guard.hittime = 19
guard.ctrltime = 19
air.hittime = 10
ground.velocity = -10.5
guard.velocity = -10.5
air.velocity = -2, -6
ground.cornerpush.veloff = -17.8
guard.cornerpush.veloff = -14.3
getpower = 0, 0

[State 221, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 222

; Land
;--------
[Statedef 222]
Type = S
MoveType = A
Physics = S
anim = 222
sprpriority = 2
velset = 0,0
ctrl = 0

[State 222, position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 222, land sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 100,0
channel = 1

[State 222, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl =1



; Short Fierce Slash
;-------------------
[Statedef 225]
Type = S
MoveType = A
Physics = S
anim = 225
sprpriority = 2
velset = 0,0
ctrl = 0
juggle = 10

[State 225, voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,2
channel = 0

[State 225, attack sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 110,2
channel = 1

[State 225, hit def]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = back
priority = 4, Hit
damage = 200,0
pausetime = 9, 12
guard.pausetime = 6, 3
sparkno = 12
guard.sparkno = 40
sparkxy = 0,-50
hitsound = s120, 3
guardsound = s130, 3
ground.type = high
ground.slidetime = 16
ground.hittime = 19
guard.slidetime = 16
guard.hittime = 19
guard.ctrltime = 19
air.hittime = 10
ground.velocity = -10.5
guard.velocity = -10.5
air.velocity = -2, -6
ground.cornerpush.veloff = -17.8
guard.cornerpush.veloff = -14.3
getpower = 0, 0

[State 225, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Running Slash
;--------------
[Statedef 230]
Type = S
MoveType = A
Physics = S
anim = 230
sprpriority = 2
ctrl = 0
juggle = 5

[State 230, attack sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 110,0
channel = 1

[State 230, hit def]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = back
priority = 4, Hit
damage = 60,0
pausetime = 9, 12
guard.pausetime = 6, 3
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-54
hitsound = s120, 0
guardsound = s130, 0
ground.type = high
ground.slidetime = 12
ground.hittime = 16
guard.slidetime = 12
guard.hittime = 16
guard.ctrltime = 16
air.hittime = 10
ground.velocity = -7.8
guard.velocity = -7.8
air.velocity = -2, -6
ground.cornerpush.veloff = -12.5
guard.cornerpush.veloff = -9.5
getpower = 0, 0

[State 230, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Running Overhead Attack
;------------------------

; Prepare
[Statedef 240]
Type = S
MoveType = A
Physics = S
anim = 240
sprpriority = 2
ctrl = 0

[State 240, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 241

; Jump & Attack
[Statedef 241]
Type = A
MoveType = A
Physics = N
anim = 241
sprpriority = 2
velset = 5, -5
ctrl = 0
juggle = 5

[State 241, sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 110,0
channel = 0

[State 241, reduce velocity]
type = VelAdd
trigger1 = Time = 2
trigger2 = Time = 5
trigger3 = Time = 8
trigger4 = Time = 11
trigger5 = Time = 14
trigger6 = Time = 17
trigger7 = Time = 19
trigger8 = Time = 21
trigger9 = Time = 23
trigger10 = Time = 25
y = 1

[State 241, hit def]
type = HitDef
trigger1 = AnimElem = 1, >= 10
trigger1 = enemy, anim != 5300
attr = A, NA
hitflag = MAF
guardflag = HA
animtype = hard
air.animtype = back
priority = 4, Hit
damage = 30,0
pausetime = 0, 12
guard.pausetime = 6, 3
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-28
hitsound = s120, 2
guardsound = s130, 2
ground.type = high
ground.slidetime = 8
ground.hittime = 11
guard.slidetime = 16
guard.hittime = 19
guard.ctrltime = 19
air.hittime = 10
ground.velocity = -5.5
guard.velocity = -10.5
air.velocity = -2, -6
ground.cornerpush.veloff = -17.8
guard.cornerpush.veloff = -14.3
getpower = 0, 0
P1StateNo = 243

[State 241, hit def]
type = HitDef
trigger1 = AnimElem = 1, >= 10
trigger1 = enemy, anim = 5300
attr = A, NA
hitflag = MAF
guardflag = HA
animtype = hard
air.animtype = back
priority = 4, Hit
damage = 30,0
pausetime = 0, 12
guard.pausetime = 6, 3
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-28
hitsound = s120, 2
guardsound = s130, 2
ground.type = high
ground.slidetime = 8
ground.hittime = 11
guard.slidetime = 16
guard.hittime = 19
guard.ctrltime = 19
air.hittime = 10
ground.velocity = -5.5
guard.velocity = -10.5
air.velocity = -2, -6
ground.cornerpush.veloff = -17.8
guard.cornerpush.veloff = -14.3
getpower = 0, 0
P1StateNo = 244

[State 241, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 242

; Land
[Statedef 242]
Type = S
MoveType = A
Physics = S
anim = 242
sprpriority = 2
velset = 0,0
ctrl = 0

[State 242, position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 242, land sound]
type = PlaySnd
trigger1 = Time = 0
value = 100,0
channel = 1

[State 242, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Rebound and dizzy enemy
[Statedef 243]
Type = A
MoveType = A
Physics = N
anim = 243
velset = 5,-2
sprpriority = 2
ctrl = 0

[State 243, vertical  velocity]
type = VelSet
trigger1 = Time = 2
y = -6

[State 243, reduce velocity]
type = VelAdd
trigger1 = Time = 4
trigger2 = Time = 5
trigger3 = Time = 7
trigger4 = Time = 9
trigger5 = Time = 12
trigger6 = Time = 13
trigger7 = Time = 16
trigger8 = Time = 17
trigger9 = Time = 20
trigger10 = Time = 21
trigger11 = Time = 24
trigger12 = Time = 25
trigger13 = Time = 26
trigger14 = Time = 27
y = 1

[State 243, voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,0
channel = 0

[State 243, dizzy target]
type = TargetState
trigger1 = NumTarget > 0
trigger1 = Target, StateType != A
trigger1 = Time = 22
value = 247

[State 243, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 245

; Rebound and undizzy enemy
[Statedef 244]
Type = A
MoveType = A
Physics = N
anim = 243
velset = 5,-2
sprpriority = 2
ctrl = 0

[State 244, vertical  velocity]
type = VelSet
trigger1 = Time = 2
y = -6

[State 244, reduce velocity]
type = VelAdd
trigger1 = Time = 4
trigger2 = Time = 5
trigger3 = Time = 7
trigger4 = Time = 9
trigger5 = Time = 12
trigger6 = Time = 13
trigger7 = Time = 16
trigger8 = Time = 17
trigger9 = Time = 20
trigger10 = Time = 21
trigger11 = Time = 24
trigger12 = Time = 25
trigger13 = Time = 26
trigger14 = Time = 27
y = 1

[State 244, voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,0
channel = 0

[State 244, undizzy target]
type = TargetState
trigger1 = NumTarget > 0
trigger1 = Target, StateType != A
trigger1 = Time = 22
value = 248

[State 244, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 245

; 2nd Land
[Statedef 245]
Type = S
MoveType = A
Physics = S
anim = 245
sprpriority = 2
velset = 0,0
ctrl = 0

[State 245, position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 245, land sound]
type = PlaySnd
trigger1 = Time = 0
value = 100,0
channel = 1

[State 245, voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 12,0
channel = 0

[State 245, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Enemy
[Statedef 247]
Type = S
MoveType = H
Physics = S
sprpriority = -1
velset = 0,0
ctrl = 0

[State 247, animation]
type = ChangeAnim
trigger1 = time = 0
value = 5300

[State 247, self sate]
type = SelfState
trigger1 = Time = 180
value = 0
ctrl = 1

; Enemy 2
[Statedef 248]
Type = S
MoveType = H
Physics = S
sprpriority = -1
velset = 0,0
ctrl = 0

[State 248, self sate]
type = SelfState
trigger1 = 1
value = 0
ctrl = 1



; Stand Light Kick
;-----------------
[Statedef 300]
Type = S
MoveType = A
Physics = S
anim = 300
sprpriority = 2
velset = 0,0
ctrl = 0
juggle = 5

[State 300, attack sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110,0
channel = 1

[State 300, hit def]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = back
priority = 4, Hit
damage = 30,0
pausetime = 9, 10
guard.pausetime = 6, 3
sparkno = 0
guard.sparkno = 40
sparkxy = 0,-60
hitsound = s120, 0
guardsound = s130, 0
ground.type = high
ground.slidetime = 9
ground.hittime = 11
guard.slidetime = 9
guard.hittime = 11
guard.ctrltime = 11
air.hittime = 10
ground.velocity = -5.2
guard.velocity = -6.7
air.velocity = -2, -6
ground.cornerpush.veloff = -7.5
guard.cornerpush.veloff = -5.9
getpower = 0, 0

[State 300, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Stand Medium Kick
;------------------
[Statedef 310]
Type = S
MoveType = A
Physics = S
anim = 310
sprpriority = 2
velset = 0,0
ctrl = 0
juggle = 5

[State 310, voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,0
channel = 0

[State 310, attack sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 110,1
channel = 1

[State 310, hit def]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
hitflag = MAF
guardflag = L
animtype = medium
air.animtype = back
priority = 4, Hit
damage = 60,0
pausetime = 9, 12
guard.pausetime = 6, 3
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-20
hitsound = s120, 1
guardsound = s130, 1
ground.type = low
ground.slidetime = 12
ground.hittime = 16
guard.slidetime = 12
guard.hittime = 16
guard.ctrltime = 16
air.hittime = 10
ground.velocity = -7.8
guard.velocity = -7.8
air.velocity = -2, -6
ground.cornerpush.veloff = -12.5
guard.cornerpush.veloff = -9.5
getpower = 0, 0

[State 310, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Stand Fierce Kick
;-------------------
[Statedef 320]
Type = S
MoveType = A
Physics = S
anim = 320
sprpriority = 2
velset = 0,0
ctrl = 0
juggle = 10

[State 320, weapon sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 115,0
channel = 1

[State 320, voice]
type = PlaySnd
trigger1 = AnimElem = 8
value = 0,0
channel = 0

[State 320, attack sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 110,2
channel = 1

[State 320, land sound]
type = PlaySnd
trigger1 = AnimElem = 16
value = 100,0
channel = 1

[State 320, hit def]
type = HitDef
trigger1 = AnimElem = 8
attr = S, NA
hitflag = MAF
guardflag = MAF
animtype = back
air.animtype = back
priority = 4, Hit
damage = 100,0
pausetime = 9, 12
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
ground.velocity = -2.5,-8
fall = 1
fall.recover = 1
guard.velocity = -10.5
air.velocity = -2, -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -14.3
getpower = 0, 0

[State 320, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Short Fierce Kick
;------------------
[Statedef 325]
Type = S
MoveType = A
Physics = S
anim = 325
sprpriority = 2
velset = 0,0
ctrl = 0
juggle = 10

[State 325, voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,2
channel = 0

[State 325, attack sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 110,2
channel = 1

[State 325, hit def]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = back
priority = 4, Hit
damage = 150,0
pausetime = 9, 12
guard.pausetime = 6, 3
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-62
hitsound = s120, 2
guardsound = s130, 2
ground.type = high
ground.slidetime = 16
ground.hittime = 19
guard.slidetime = 16
guard.hittime = 19
guard.ctrltime = 19
air.hittime = 10
ground.velocity = -10.5
guard.velocity = -10.9
air.velocity = -2, -6
ground.cornerpush.veloff = -17.8
guard.cornerpush.veloff = -14.3
getpower = 0, 0

[State 325, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Running  Kick
;--------------
[Statedef 330]
Type = S
MoveType = A
Physics = S
anim = 330
sprpriority = 2
ctrl = 0
juggle = 5

[State 330, voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,0
channel = 0

[State 330, attack sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 110,1
channel = 1

[State 330, hit def]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
hitflag = MAF
guardflag = L
animtype = medium
air.animtype = back
priority = 4, Hit
damage = 80,0
pausetime = 9, 12
guard.pausetime = 6, 3
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-20
hitsound = s120, 1
guardsound = s130, 1
ground.type = low
ground.slidetime = 12
ground.hittime = 16
guard.slidetime = 12
guard.hittime = 16
guard.ctrltime = 16
air.hittime = 10
ground.velocity = -7.8
guard.velocity = -7.8
air.velocity = -2, -6
ground.cornerpush.veloff = -12.5
guard.cornerpush.veloff = -9.5
getpower = 0, 0

[State 330, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Crouch Light Slash
;-------------------
[Statedef 400]
Type = C
MoveType = A
Physics = C
anim = 400
sprpriority = 2
velset = 0,0
ctrl = 0
juggle = 5

[State 400, attack sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 110,0
channel = 1

[State 400, hit def]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
hitflag = MAF
guardflag = M
animtype = light
air.animtype = back
priority = 4, Hit
damage = 40,0
pausetime = 9, 10
guard.pausetime = 6, 3
sparkno = 0
guard.sparkno = 40
sparkxy = 0,-38
hitsound = s120, 0
guardsound = s130, 0
ground.type = high
ground.slidetime = 9
ground.hittime = 11
guard.slidetime = 9
guard.hittime = 11
guard.ctrltime = 11
air.hittime = 10
ground.velocity = -5.2
guard.velocity = -6.7
air.velocity = -2, -6
ground.cornerpush.veloff = -7.5
guard.cornerpush.veloff = -5.9
getpower = 0, 0

[State 400, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1



; Crouch Medium Slash
;--------------------
[Statedef 410]
Type = C
MoveType = A
Physics = C
anim = 410
sprpriority = 2
velset = 0,0
ctrl = 0
juggle = 5

[State 410, voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,1
channel = 0

[State 410, attack sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 110,1
channel = 1

[State 410, hit def]
type = HitDef
trigger1 = AnimElem = 6
attr = C, NA
hitflag = MAF
guardflag = MA
animtype = medium
air.animtype = back
priority = 4, Hit
damage = 130,0
pausetime = 9, 12
guard.pausetime = 6, 3
sparkno = 11
guard.sparkno = 40
sparkxy = 0,-34
hitsound = s120, 3
guardsound = s130, 3
ground.type = high
ground.slidetime = 12
ground.hittime = 16
guard.slidetime = 12
guard.hittime = 16
guard.ctrltime = 16
air.hittime = 10
ground.velocity = -7.8
guard.velocity = -7.8
air.velocity = -2, -6
ground.cornerpush.veloff = -12.5
guard.cornerpush.veloff = -9.5
getpower = 0, 0

[State 410, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1



; Crouch Fierce Slash
;--------------------
[Statedef 420]
Type = C
MoveType = A
Physics = C
anim = 420
sprpriority = 2
velset = 0,0
ctrl = 0
juggle = 10

[State 420, voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,2
channel = 0

[State 420, attack sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 110,2
channel = 1

[State 420, hit def]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = back
priority = 4, Hit
damage = 200,0
pausetime = 9, 12
guard.pausetime = 6, 3
sparkno = 12
guard.sparkno = 40
sparkxy = 0,-50
hitsound = s120, 3
guardsound = s130, 3
ground.type = high
ground.slidetime = 16
ground.hittime = 19
guard.slidetime = 16
guard.hittime = 19
guard.ctrltime = 19
air.hittime = 10
ground.velocity = -10.5
guard.velocity = -10.5
air.velocity = -2, -6
ground.cornerpush.veloff = -17.8
guard.cornerpush.veloff = -14.3
getpower = 0, 0

[State 420, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1



; Crouch Light Kick
;------------------
[Statedef 500]
Type = C
MoveType = A
Physics = C
anim = 500
sprpriority = 2
velset = 0,0
ctrl = 0
juggle = 5

[State 500, attack sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110,0
channel = 1

[State 500, hit def]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
hitflag = MAF
guardflag = L
animtype = light
air.animtype = back
priority = 4, Hit
damage = 30,0
pausetime = 9, 10
guard.pausetime = 6, 3
sparkno = 0
guard.sparkno = 40
sparkxy = 0,-6
hitsound = s120, 0
guardsound = s130, 0
ground.type = low
ground.slidetime = 9
ground.hittime = 11
guard.slidetime = 9
guard.hittime = 11
guard.ctrltime = 11
air.hittime = 10
ground.velocity = -5.2
guard.velocity = -6.7
air.velocity = -2, -6
ground.cornerpush.veloff = -7.5
guard.cornerpush.veloff = -5.9
getpower = 0, 0

[State 500, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1



; Crouch Medium Kick
;-------------------
[Statedef 510]
Type = C
MoveType = A
Physics = C
anim = 510
sprpriority = 2
velset = 0,0
ctrl = 0
juggle = 5

[State 510, attack sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 110,1
channel = 1

[State 510, hit def]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
hitflag = MAF
guardflag = L
animtype = medium
air.animtype = back
priority = 4, Hit
damage = 60,0
pausetime = 9, 12
guard.pausetime = 6, 3
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-6
hitsound = s120, 1
guardsound = s130, 1
ground.type = low
ground.slidetime = 12
ground.hittime = 16
guard.slidetime = 12
guard.hittime = 16
guard.ctrltime = 16
air.hittime = 10
ground.velocity = -7.8
guard.velocity = -7.8
air.velocity = -2, -6
ground.cornerpush.veloff = -12.5
guard.cornerpush.veloff = -9.5
getpower = 0, 0

[State 510, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1



; Crouch Fierce Kick
;-------------------
[Statedef 520]
Type = C
MoveType = A
Physics = C
anim = 520
sprpriority = 2
velset = 0,0
ctrl = 0
juggle = 10

[State 520, voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2
channel = 0

[State 520, attack sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 110,2
channel = 1

[State 520, hit def]
type = HitDef
trigger1 = AnimElem = 4
attr = C, NA
hitflag = MAF
guardflag = L
animtype = back
air.animtype = back
priority = 4, Hit
damage = 100,0
pausetime = 9, 12
guard.pausetime = 6, 3
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-16
hitsound = s120, 2
guardsound = s130, 2
ground.type = high
guard.slidetime = 16
guard.hittime = 19
guard.ctrltime = 19
air.hittime = 10
ground.velocity = -2.5,-4
fall = 1
fall.recover = 0
guard.velocity = -10.5
air.velocity = -2, -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -14.3
getpower = 0, 0

[State 520, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1



; Air Light Slash
;----------------
[Statedef 600]
Type = A
MoveType = A
Physics = A
anim = 600
sprpriority = 2
ctrl = 0
juggle = 5

[State 600, attack sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 110,0
channel = 1

[State 600, hit def]
type = HitDef
triggerall = !movecontact
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
attr = A, NA
hitflag = MAF
guardflag = HA
animtype = light
air.animtype = back
priority = 4, Hit
damage = 60,0
pausetime = 9, 10
guard.pausetime = 6, 3
sparkno = 0
guard.sparkno = 40
sparkxy = 0,0
hitsound = s120, 0
guardsound = s130, 0
ground.type = high
ground.slidetime = 9
ground.hittime = 11
guard.slidetime = 9
guard.hittime = 11
guard.ctrltime = 11
air.hittime = 10
ground.velocity = -4.1
guard.velocity = -6.7
air.velocity = -2, -6
ground.cornerpush.veloff = -6
guard.cornerpush.veloff = -6
getpower = 0, 0



; Air Medium Slash
;-----------------
[Statedef 610]
Type = A
MoveType = A
Physics = A
anim = 610
sprpriority = 2
ctrl = 0
juggle = 5

[State 610, voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,1
channel = 0

[State 610, attack sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 110,1
channel = 1

[State 610, hit def]
type = HitDef
trigger1 = AnimElem = 6
attr = A, NA
hitflag = MAF
guardflag = HA
animtype = medium
air.animtype = back
priority = 4, Hit
damage = 120,0
pausetime = 9, 12
guard.pausetime = 6, 3
sparkno = 11
guard.sparkno = 40
sparkxy = 0,-58
hitsound = s120, 3
guardsound = s130, 3
ground.type = high
ground.slidetime = 12
ground.hittime = 16
guard.slidetime = 12
guard.hittime = 16
guard.ctrltime = 16
air.hittime = 10
ground.velocity = -4.1
guard.velocity = -7.8
air.velocity = -2, -6
ground.cornerpush.veloff = -12.5
guard.cornerpush.veloff = -9.5
getpower = 0, 0



; Air Fierce Slash
;-----------------
[Statedef 620]
Type = A
MoveType = A
Physics = A
anim = 620
sprpriority = 2
ctrl = 0
juggle = 10

[State 620, voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,2
channel = 0

[State 620, attack sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 110,2
channel = 1

[State 620, hit def]
type = HitDef
trigger1 = AnimElem = 6
attr = A, NA
hitflag = MAF
guardflag = HA
animtype = hard
air.animtype = back
priority = 4, Hit
damage = 170,0
pausetime = 9, 12
guard.pausetime = 6, 3
sparkno = 12
guard.sparkno = 40
sparkxy = 0,2
hitsound = s120, 3
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



; Air Light Kick
;---------------
[Statedef 700]
Type = A
MoveType = A
Physics = A
anim = 700
sprpriority = 2
ctrl = 0
juggle = 5

[State 700, attack sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110,0
channel = 1

[State 700, hit def]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
hitflag = MAF
guardflag = HA
animtype = light
air.animtype = back
priority = 4, Hit
damage = 30,0
pausetime = 9, 10
guard.pausetime = 6, 3
sparkno = 0
guard.sparkno = 40
sparkxy = 0,-54
hitsound = s120, 0
guardsound = s130, 0
ground.type = high
ground.slidetime = 9
ground.hittime = 11
guard.slidetime = 9
guard.hittime = 11
guard.ctrltime = 11
air.hittime = 10
ground.velocity = -4.1
guard.velocity = -6.7
air.velocity = -2, -6
ground.cornerpush.veloff = -7.5
guard.cornerpush.veloff = -5.9
getpower = 0, 0



; Air Medium Kick
;----------------
[Statedef 710]
Type = A
MoveType = A
Physics = A
anim = 710
sprpriority = 2
ctrl = 0
juggle = 5

[State 710, attack sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 110,1
channel = 1

[State 710, hit def]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
hitflag = MAF
guardflag = HA
animtype = medium
air.animtype = back
priority = 4, Hit
damage = 60,0
pausetime = 9, 12
guard.pausetime = 6, 3
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-70
hitsound = s120, 1
guardsound = s130, 1
ground.type = low
ground.slidetime = 12
ground.hittime = 16
guard.slidetime = 12
guard.hittime = 16
guard.ctrltime = 16
air.hittime = 10
ground.velocity = -4.1
guard.velocity = -7.8
air.velocity = -2, -6
ground.cornerpush.veloff = -12.5
guard.cornerpush.veloff = -9.5
getpower = 0, 0



; Air Fierce Kick
;----------------
[Statedef 720]
Type = A
MoveType = A
Physics = A
anim = 720
sprpriority = 2
ctrl = 0
juggle = 10

[State 720, attack sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 110,2
channel = 1

[State 720, hit def]
type = HitDef
trigger1 = AnimElem = 6
attr = A, NA
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
ground.velocity = -4.1
guard.velocity = -10.5
air.velocity = -2, -6
ground.cornerpush.veloff = -17.8
guard.cornerpush.veloff = -14.3
getpower = 0, 0



; Throw
;------

; Attempt
;--------
[Statedef 800]
Type = S
MoveType = A
Physics = S
anim = 800
sprpriority = 2
velset = 0,0
ctrl = 0

[State 800, hit def]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NT
hitflag = M
animtype = light
ground.type = high
priority = 4, miss
damage = 0, 0
getpower = 0, 0
pausetime = 0,0
sparkno = -1
p1facing = ifelse (command = "holdfwd", 1,-1)
p2facing = -1
p1stateno = 801
p2stateno = 805

[State 800, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 225

; Throw
;------
[Statedef 801]
Type = S
MoveType = A
Physics = S
anim = 801
sprpriority = 2
ctrl = 0

[State 801, voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,3
channel = 0

[State 801, target bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = -32,0

[State 801, target bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = -22,0

[State 801, target bind 3]
type = TargetBind
trigger1 = AnimElem = 3
pos = -20,-65

[State 801, target bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = 15,-90

[State 801, target bind 5]
type = TargetBind
trigger1 = AnimElem = 5
pos = 28,-80

[State 801, target bind 6]
type = TargetBind
trigger1 = AnimElem = 6
pos = 82,-48

[State 801, target velocity]
type = TargetVelSet
trigger1 = AnimElem = 6, = 4
x = 2.5
y = 1

[State 801, target life]
type = TargetLifeAdd
trigger1 = AnimElem = 6
value = -160

[State 801, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Ennemy Thrown
;--------------
[Statedef 805]
Type = A
MoveType = H
Physics = N
sprpriority = 3
ctrl = 0

[State 805, animation]
type = ChangeAnim2
trigger1 = time = 0
value = 805

[State 805, gravity]
type = gravity
trigger1 = time >= 40

[State 805, end state]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= -ceil(vel y)
value = 5100