;==============================================================================================
;
; RERA'S STANDARD ATTACKS
;
;==============================================================================================

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

[state 200, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 3
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 200, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 3
value = 0, var(18) + 4
channel = 0

[state 200, slash sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 110, var(17)
channel = 1

[State 200, hit def]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
hitflag = MA
guardflag = MA
animtype = light
air.animtype = back
priority = 4, Hit
damage = 24 + 16*var(20),0
pausetime = 5, 5
guard.pausetime = 0, 6
sparkno = s4000
guard.sparkno = s4200
sparkxy = 0,-50
hitsound = s120, var(15)
guardsound = s130, var(16)
ground.type = low
ground.slidetime = 6
ground.hittime = 12
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = -3.5
guard.velocity = -4.5
air.velocity = -4, -5
ground.cornerpush.veloff = -4.3
guard.cornerpush.veloff = -5.4
getpower = 0, 0

[State 200, slash 1] ; Sword effects ; code posted by Pizza Royale in the Mugen Development Forum
type = Explod
trigger1 = Animelem = 2, >= 0
trigger1 = Animelem = 3, < 0
anim = 9001
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 200, slash 2]
type = Explod
trigger1 = Animelem = 3, >= 0
trigger1 = Animelem = 4, < 0
anim = 9002
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 200, slash 3]
type = Explod
trigger1 = Animelem = 4, >= 0
trigger1 = Animelem = 4, < 2
anim = 9003
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 200, slash 4]
type = Explod
trigger1 = Animelem = 4, >= 2
trigger1 = Animelem = 5, < 0
anim = 9004
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 200, slash 5]
type = Explod
trigger1 = Animelem = 5, >= 0
trigger1 = Animelem = 5, < 2
anim = 9005
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 200, move hit background] ; adapted from Capuchino's Haohmaru
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 200, move guarded state]
type = ChangeState
trigger1 = MoveGuarded
value = 290

[State 200, end state]
type = ChangeState
trigger1 = Animtime = 0
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

[state 205, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 4
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 205, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 4
value = 0, var(18) + 4
channel = 0

[state 205, slash sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 110, var(17)
channel = 1

[State 205, hit def]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
hitflag = MA
guardflag = MA
animtype = light
air.animtype = back
priority = 4, Hit
damage = 16 + 12*var(20),0
pausetime = 4, 4
guard.pausetime = 0, 6
sparkno = s4000
guard.sparkno = s4200
sparkxy = 0,-60
hitsound = s120, var(15)
guardsound = s130, var(16)
ground.type = low
ground.slidetime = 6
ground.hittime = 10
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = -3.5
guard.velocity = -4.5
air.velocity = -4, -5
ground.cornerpush.veloff = -4.3
guard.cornerpush.veloff = -5.4
getpower = 0, 0

[State 205, slash 1]
type = Explod
trigger1 = Animelem = 4, >= 0
trigger1 = Animelem = 5, < 0
anim = 9011
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 205, slash 2]
type = Explod
trigger1 = Animelem = 5, >= 0
trigger1 = Animelem = 6, < 0
anim = 9012
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 205, slash 3]
type = Explod
trigger1 = Animelem = 6, >= 0
trigger1 = Animelem = 6, < 2
anim = 9013
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 205, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 205, move guarded state]
type = ChangeState
trigger1 = MoveGuarded
value = 290

[State 205, end state]
type = ChangeState
trigger1 = Animtime = 0
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

[state 210, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 4
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 210, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 4
value = 0, var(18) + 4
channel = 0

[state 210, slash sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 110, var(17)
channel = 1

[State 210, hit def]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
hitflag = MA
guardflag = MA
animtype = medium
air.animtype = back
air.animtype = up
priority = 4, Hit
damage = 56 + 28*var(20),0
pausetime = 10, 10
guard.pausetime = 0, 6
sparkno = s4010
guard.sparkno = s4200
sparkxy = 0,-65
hitsound = s120, var(15)
guardsound = s130, var(16)
ground.type = low
ground.slidetime = 8
ground.hittime = 20
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = -5.5
guard.velocity = -5.5
air.velocity = -4, -5
ground.cornerpush.veloff = -7.8
guard.cornerpush.veloff = -6.6
getpower = 0, 0

[State 210, slash 1]
type = Explod
trigger1 = Animelem = 5, >= 0
trigger1 = Animelem = 5, < 3
anim = 9021
postype = p1
pos = 47,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 210, slash 2]
type = Explod
trigger1 = Animelem = 5, >= 3
trigger1 = Animelem = 6, < 0
anim = 9022
postype = p1
pos = 47,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 210, slash 3]
type = Explod
trigger1 = Animelem = 6, >= 0
trigger1 = Animelem = 6, < 2
anim = 9023
postype = p1
pos = 47,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 210, slash 4]
type = Explod
trigger1 = Animelem = 6, >= 2
trigger1 = Animelem = 6, < 4
anim = 9024
postype = p1
pos = 47,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 210, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 210, move guarded state]
type = ChangeState
trigger1 = MoveGuarded
value = 293

[State 210, end state]
type = ChangeState
trigger1 = Animtime = 0
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

[state 215, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 4
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 215, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 4
value = 0, var(18) + 4
channel = 0

[state 215, slash sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 110, var(17)
channel = 1

[State 215, hit def]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
hitflag = MA
guardflag = MA
animtype = medium
air.animtype = back
priority = 4, Hit
damage = 40 + 20*var(20),0
pausetime = 10, 10
guard.pausetime = 0, 6
sparkno = s4000
guard.sparkno = s4200
sparkxy = 0,-60
hitsound = s120, var(15)
guardsound = s130, var(16)
ground.type = low
ground.slidetime = 8
ground.hittime = 20
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = -5.5
guard.velocity = -5.5
air.velocity = -4, -5
ground.cornerpush.veloff = -7.8
guard.cornerpush.veloff = -6.6
getpower = 0, 0

[State 215, slash 1]
type = Explod
trigger1 = Animelem = 4, >= 0
trigger1 = Animelem = 5, < 0
anim = 9011
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 215, slash 2]
type = Explod
trigger1 = Animelem = 5, >= 0
trigger1 = Animelem = 6, < 0
anim = 9012
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 215, slash 3]
type = Explod
trigger1 = Animelem = 6, >= 0
trigger1 = Animelem = 6, < 2
anim = 9013
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 215, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 215, move guarded state]
type = ChangeState
trigger1 = MoveGuarded
value = 293

[State 215, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1



; Stand Fierce Slash
;-------------------

[Statedef 220]
Type = S
MoveType = A
Physics = S
anim = 220
sprpriority = 2
velset = 0,0
ctrl = 0

[state 220, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 5
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 220, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 5
value = 0, var(18) + 4
channel = 0

[state 220, slash sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 110, 2
channel = 1

[State 220, hit def]
type = HitDef
triggerall = !MoveContact
trigger1 = AnimElem = 8, >= 2
attr = S, NA
hitflag = MA
guardflag = MA
animtype = hard
air.animtype = back
priority = 4, Hit
damage = 144 + 80*var(20),0
pausetime = 25, 23
guard.pausetime = 0, 6
sparkno = s4020
guard.sparkno = s4200
sparkxy = 0,-65
hitsound = s170, var(16)
guardsound = s130, var(16)
ground.type = low
ground.slidetime = 20
ground.hittime = 46
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 37
ground.velocity = -12
guard.velocity = -6.5
air.velocity = -4, -5
ground.cornerpush.veloff = -21
guard.cornerpush.veloff = -8.1
getpower = 0, 0

[State 220, slash 1]
type = Explod
trigger1 = Animelem = 2, >= 0
trigger1 = Animelem = 3, < 0
anim = 9031
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 220, slash 2]
type = Explod
trigger1 = Animelem = 3, >= 0
trigger1 = Animelem = 4, < 0
anim = 9032
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 220, slash 3]
type = Explod
trigger1 = Animelem = 4, >= 0
trigger1 = Animelem = 5, < 0
anim = 9033
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 220, slash 4]
type = Explod
trigger1 = Animelem = 5, >= 0
trigger1 = Animelem = 6, < 0
anim = 9034
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 220, slash 5]
type = Explod
trigger1 = Animelem = 6, >= 0
trigger1 = Animelem = 7, < 0
anim = 9035
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 220, slash 6]
type = Explod
trigger1 = Animelem = 7, >= 0
trigger1 = Animelem = 8, < 0
anim = 9036
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 220, slash 7]
type = Explod
trigger1 = Animelem = 8, >= 0
trigger1 = Animelem = 8, < 2
anim = 9037
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 220, slash 8]
type = Explod
trigger1 = Animelem = 8, >= 2
trigger1 = Animelem = 9, < 0
anim = 9038
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 220, slash 9]
type = Explod
trigger1 = Animelem = 9, >= 0
trigger1 = Animelem = 10, < 0
anim = 9039
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 220, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 220, move guarded state]
type = ChangeState
trigger1 = MoveGuarded
value = 295

[State 220, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1



; Short Fierce Slash
;-------------------

; 1st hit
;--------
[Statedef 225]
Type = S
MoveType = A
Physics = S
anim = 225
sprpriority = 2
velset = 0,0
ctrl = 0

[state 225, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 3
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 225, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 3
value = 0, var(18) + 4
channel = 0

[state 225, slash sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 110, 2
channel = 1

[State 225, hit def]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
hitflag = MA
guardflag = MA
animtype = medium
air.animtype = back
priority = 4, Hit
damage = 20 + 12*var(20),0
pausetime = 23, 23
guard.pausetime = 0, 6
sparkno = s4010
guard.sparkno = s4200
sparkxy = 0,-55
hitsound = s120, var(15)
guardsound = s130, var(16)
ground.type = low
ground.slidetime = 8
ground.hittime = 20
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = -5.5
guard.velocity = -5.5
air.velocity = -4, -5
ground.cornerpush.veloff = -7.8
guard.cornerpush.veloff = -6.6
getpower = 0, 0

[State 225, slash 1]
type = Explod
trigger1 = Animelem = 2, >= 0
trigger1 = Animelem = 3, < 0
anim = 9041
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 225, slash 2]
type = Explod
trigger1 = Animelem = 3, >= 0
trigger1 = Animelem = 4, < 0
anim = 9042
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 225, slash 3]
type = Explod
trigger1 = Animelem = 4, >= 0
trigger1 = Animelem = 5, < 0
anim = 9043
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 225, slash 4]
type = Explod
trigger1 = Animelem = 5, >= 0
trigger1 = Animelem = 6, < 0
anim = 9044
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 225, slash 5]
type = Explod
trigger1 = Animelem = 6, >= 0
trigger1 = Animelem = 6, < 3
anim = 9045
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 225, slash 6]
type = Explod
trigger1 = Animelem = 6, >= 3
trigger1 = Animelem = 7, < 0
anim = 9046
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 225, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 225, move guarded state]
type = ChangeState
trigger1 = MoveGuarded
value = 293

[State 225, end state]
type = ChangeState
trigger1 = AnimElem = 7
value = 226

; 2nd hit
;--------
[Statedef 226]
Type = S
MoveType = A
Physics = N
sprpriority = 2
ctrl = 0

[state 226, set velocity]
type = VelSet
trigger1 = time = 5
x = 4

[state 226, reduce velocity]
type = VelAdd
trigger1 = time = 9
trigger2 = time = 13
trigger3 = time = 17
trigger4 = time = 21
x = -1

[state 226, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 8
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 226, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 8
value = 0, var(18) + 4
channel = 0

[state 226, slash sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 110, 2
channel = 1

[State 226, hit def]
type = HitDef
triggerall = !MoveContact
trigger1 = AnimElem = 9
trigger2 = AnimElem = 10
attr = S, NA
hitflag = MA
guardflag = MA
animtype = hard
air.animtype = back
priority = 4, Hit
damage = 100 + 52*var(20),0
pausetime = 29, 23
guard.pausetime = 0, 6
sparkno = s4022
guard.sparkno = s4200
sparkxy = 0,-65 -60*(AnimElem = 10)
hitsound = s170, var(16)
guardsound = s130, var(16)
ground.type = high
ground.slidetime = 20
ground.hittime = 46
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 37
ground.velocity = -12
guard.velocity = -6.5
air.velocity = -4, -5
ground.cornerpush.veloff = -21
guard.cornerpush.veloff = -8.1
getpower = 0, 0

[State 226, slash 1]
type = Explod
trigger1 = Animelem = 8, >= 0
trigger1 = Animelem = 9, < 0
anim = 9047
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 226, slash 2]
type = Explod
trigger1 = Animelem = 9, >= 0
trigger1 = Animelem = 10, < 0
anim = 9048
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 226, slash 3]
type = Explod
trigger1 = Animelem = 10, >= 0
trigger1 = Animelem = 11, < 0
anim = 9049
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 226, slash 4]
type = Explod
trigger1 = Animelem = 11, >= 0
trigger1 = Animelem = 11, < 2
anim = 9050
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 226, slash 5]
type = Explod
trigger1 = Animelem = 11, >= 2
trigger1 = Animelem = 11, < 4
anim = 9051
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 226, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 226, move guarded state]
type = ChangeState
trigger1 = MoveGuarded
value = 295

[State 220, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1



; Overhead Slash
;---------------
; (Start)
;---------
[Statedef 230]
Type = S
MoveType = A
Physics = S
anim = 230
sprpriority = 1
velset = 0,0
ctrl = 0

[State 230, change state]
type = ChangeState
trigger1 = AnimTime = 0
value = 231

; (Air)
;------
[Statedef 231]
Type = A
MoveType = A
Physics = A
anim = 231
sprpriority = 2
velset = 2.25,-5.5
ctrl = 0

[State 231, veladd]
type = veladd
trigger1 = time > 0
y = -0.2

[state 231, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 6
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 231, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 6
value = 0, var(18) + 4
channel = 0

[state 231, slash sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 110, 2
channel = 1

[state 231, jump sound]
type = PlaySnd
trigger1 = time = 1
value = 100, 1
channel = 2

[State 231, hit def]
type = HitDef
triggerall = !MoveContact
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8
attr = S, NA
hitflag = MA
guardflag = HA
animtype = medium
air.animtype = back
priority = 4, Hit
damage = 44 + 24*var(20),0
pausetime = 18, 18
guard.pausetime = 18, 18
sparkno = s4012
guard.sparkno = s4200
sparkxy = 0,-35 -35*(animelem = 8)
hitsound = s120, var(15)
guardsound = s130, var(16)
ground.type = high
air.type = high
ground.slidetime = 4
ground.hittime = 5
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = -8.5
guard.velocity = -5.5
air.velocity = -4, -5
ground.cornerpush.veloff = -2
guard.cornerpush.veloff = -4
getpower = 0, 0

[State 231, slash 1]
type = Explod
trigger1 = Animelem = 6, >= 0
trigger1 = Animelem = 7, < 0
anim = 9091
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 231, slash 2]
type = Explod
trigger1 = Animelem = 7, >= 0
trigger1 = Animelem = 8, < 0
anim = 9092
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 231, slash 3]
type = Explod
trigger1 = Animelem = 8, >= 0
trigger1 = Animelem = 8, < 2
anim = 9093
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 231, slash 4]
type = Explod
trigger1 = Animelem = 8, >= 2
trigger1 = Animelem = 9, < 0
anim = 9094
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 231, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 231, change state]
type = ChangeState
trigger1 = AnimTime = 0
value = 232

; (Land)
;-------
[Statedef 232]
Type = S
MoveType = I
Physics = S
anim = 232
sprpriority = 1
ctrl = 0

[State 232, vel set]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 232, pos set]
type = PosSet
trigger1 = Time = 0
y = 0

[state 232, land sound]
type = PlaySnd
trigger1 = time = 1
value = 100, 2
channel = 2

[State 232, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Pursuit Slash
;--------------

[Statedef 240]
Type = S
MoveType = A
Physics = S
anim = 240
sprpriority = 2
velset = 0,0
ctrl = 0

[state 240, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 3
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 240, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 3
value = 0, var(18) + 4
channel = 0

[state 240, slash sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 110, var(17)
channel = 1

[State 240, hit def]
type = HitDef
triggerall = p2stateno = 5110
trigger1 = AnimElem = 3
attr = S, NA
hitflag = MAFD
animtype = light
priority = 4, Hit
damage = 12 + 20*var(20),0
pausetime = 12, 12
sparkno = s4010
sparkxy = 0, 0
hitsound = s120, var(15)
guardsound = s130, var(16)
ground.cornerpush.veloff = 0
getpower = 0, 0

[State 240, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 240, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Running Light Slash
;--------------------

[Statedef 250]
Type = S
MoveType = A
Physics = S
anim = 250
sprpriority = 2
ctrl = 0

[State 250, 1st foot]
type = MakeDust
trigger1 = vel x > 0
pos = 30, 0
spacing = 3

[State 250, 2nd foot]
type = MakeDust
trigger1 = vel x > 0
pos = -45, 0
spacing = 3

[state 250, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 3
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 250, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 3
value = 0, var(18) + 4
channel = 0

[state 250, slash sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 110, var(17)
channel = 1

[state 250, brake sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 100, 4
channel = 2

[State 250, hit def]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
hitflag = MA
guardflag = MA
animtype = hard
air.animtype = back
priority = 4, Hit
damage = 20 + 12*var(20),0
pausetime = 2, 2
guard.pausetime = 0, 6
sparkno = s4000
guard.sparkno = s4200
sparkxy = 0,-50
hitsound = s170, var(16)
guardsound = s130, var(16)
ground.type = low
ground.slidetime = 16
ground.hittime = 40
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = -12.5
guard.velocity = -6.5
air.velocity = -4, -5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = 0, 0

[State 250, slash 1] ; Sword effects ; code posted by Pizza Royale in the Mugen Development Forum
type = Explod
trigger1 = Animelem = 2, >= 0
trigger1 = Animelem = 3, < 0
anim = 9001
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 250, slash 2]
type = Explod
trigger1 = Animelem = 3, >= 0
trigger1 = Animelem = 4, < 0
anim = 9002
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 250, slash 3]
type = Explod
trigger1 = Animelem = 4, >= 0
trigger1 = Animelem = 4, < 2
anim = 9003
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 250, slash 4]
type = Explod
trigger1 = Animelem = 4, >= 2
trigger1 = Animelem = 5, < 0
anim = 9004
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 250, slash 5]
type = Explod
trigger1 = Animelem = 5, >= 0
trigger1 = Animelem = 5, < 2
anim = 9005
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 250, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 250, move guarded state]
type = ChangeState
trigger1 = MoveGuarded
value = 295

[State 250, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1



; Running Medium Slash
;---------------------

[Statedef 260]
Type = S
MoveType = A
Physics = S
anim = 260
sprpriority = 2
ctrl = 0

[State 260, 1st foot]
type = MakeDust
trigger1 = vel x > 0
pos = 30, 0
spacing = 3

[State 260, 2nd foot]
type = MakeDust
trigger1 = vel x > 0
pos = -35, 0
spacing = 3

[state 260, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 8
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 260, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 8
value = 0, var(18) + 4
channel = 0

[state 260, slash sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 110, var(17)
channel = 1

[state 260, brake sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 100, 4
channel = 2

[State 260, hit def]
type = HitDef
trigger1 = AnimElem = 11
attr = S, NA
hitflag = MA
guardflag = MA
animtype = back
air.animtype = back
priority = 4, Hit
damage = 68 + 44*var(20),0
pausetime = 6, 6
guard.pausetime = 0, 2
sparkno = s4020
guard.sparkno = s4200
sparkxy = 0,-65
hitsound = s170, var(16)
guardsound = s130, var(16)
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 20
ground.velocity = -3.5, -8
guard.velocity = -5.5
air.velocity = -4, -5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = 0, 0

[State 260, slash 2]
type = Explod
trigger1 = Animelem = 7, >= 0
trigger1 = Animelem = 8, < 0
anim = 9033
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 260, slash 3]
type = Explod
trigger1 = Animelem = 8, >= 0
trigger1 = Animelem = 9, < 0
anim = 9034
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 260, slash 4]
type = Explod
trigger1 = Animelem = 9, >= 0
trigger1 = Animelem = 10, < 0
anim = 9035
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 260, slash 5]
type = Explod
trigger1 = Animelem = 10, >= 0
trigger1 = Animelem = 11, < 0
anim = 9036
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 260, slash 6]
type = Explod
trigger1 = Animelem = 11, >= 0
trigger1 = Animelem = 11, < 1
anim = 9037
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 260, slash 7]
type = Explod
trigger1 = Animelem = 11, >= 1
trigger1 = Animelem = 12, < 0
anim = 9038
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 260, slash 8]
type = Explod
trigger1 = Animelem = 12, >= 0
trigger1 = Animelem = 13, < 0
anim = 9039
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 260, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 260, move guarded state]
type = ChangeState
trigger1 = MoveGuarded
value = 295

[State 260, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1



; Running Fierce Slash
;---------------------

; Prepare
;--------
[Statedef 270]
Type = S
MoveType = A
Physics = S
anim = 270
sprpriority = 2
velset = 0,0
ctrl = 0

[State 270, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 271

; 1st hit
;--------
[Statedef 271]
Type = A
MoveType = A
Physics = A
anim = 271
sprpriority = 2
ctrl = 0

[State 271, velocity]
type = VelSet
trigger1 = 1
x = 7.5
y = -8

[state 271, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 1
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 271, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 1
value = 0, var(18) + 4
channel = 0

[state 271, slash sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 160, 2
channel = 1

[State 271, hit def]
type = HitDef
trigger1 = AnimElem = 1
attr = A, NA
hitflag = MAF
guardflag = MA
animtype = back
priority = 4, Hit
damage = 20 + 12*var(20),0
pausetime = 6, 6
guard.pausetime = 6, 6
sparkno = s4012
guard.sparkno = s4200
sparkxy = 0, -37
hitsound = s170, var(16)
guardsound = s130, var(16)
ground.type = high
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
ground.velocity = 0,-10.5
guard.velocity = -5
air.velocity = 0, -10.5
getpower = 0,0
fall = 1
air.fall = 1
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = -4

[State 271, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 271, end state]
type = ChangeState
trigger1 = AnimElem = 2
value = 272

; 2nd hit
;--------

[Statedef 272]
Type = A
MoveType = A
Physics = A
sprpriority = 2
ctrl = 0

[State 272, velocity]
type = VelSet
trigger1 = 1
x = 7.5
y = -8

[State 272, hit def]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
hitflag = MAF
guardflag = MA
animtype = back
priority = 4, Hit
damage = 20 + 12*var(20),0
pausetime = 6, 6
guard.pausetime = 6, 6
sparkno = s4012
guard.sparkno = s4200
sparkxy = 0, -37
hitsound = s170, var(16)
guardsound = s130, var(16)
ground.type = high
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
ground.velocity = 0,-10.5
guard.velocity = -5
air.velocity = 0, -10.5
getpower = 0,0
fall = 1
air.fall = 1
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = -4

[State 272, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 272, end state]
type = ChangeState
trigger1 = AnimElem = 3
value = 273

; 3rd hit
;--------
[Statedef 273]
Type = A
MoveType = A
Physics = A
sprpriority = 2
ctrl = 0

[State 273, velocity]
type = VelSet
trigger1 = 1
x = 7.5
y = -8

[State 273, hit def]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
hitflag = MAF
guardflag = MA
animtype = back
priority = 4, Hit
damage = 20 + 12*var(20),0
pausetime = 6, 6
guard.pausetime = 6, 6
sparkno = s4012
guard.sparkno = s4200
sparkxy = 0, -37
hitsound = s170, var(16)
guardsound = s130, var(16)
ground.type = high
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
ground.velocity = 0,-10.5
guard.velocity = -5
air.velocity = 0, -10.5
getpower = 0,0
fall = 1
air.fall = 1
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = -4

[State 273, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 273, end state]
type = ChangeState
trigger1 = AnimElem = 4
value = 274

; 4th hit
;--------
[Statedef 274]
Type = A
MoveType = A
Physics = A
sprpriority = 2
ctrl = 0

[State 274, velocity]
type = VelSet
trigger1 = 1
x = 7.5
y = -8

[State 274, hit def]
type = HitDef
trigger1 = AnimElem = 4
attr = A, NA
hitflag = MAF
guardflag = MA
animtype = up
priority = 4, Hit
damage = 20 + 12*var(20),0
pausetime = 6, 6
guard.pausetime = 6, 6
sparkno = s4012
guard.sparkno = s4200
sparkxy = 0, -37
hitsound = s170, var(16)
guardsound = s130, var(16)
ground.type = high
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
ground.velocity = 0,-10.5
guard.velocity = -5
air.velocity = 0, -10.5
getpower = 0,0
fall = 1
air.fall = 1
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = -4

[State 274, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 274, end state]
type = ChangeState
trigger1 = AnimElem = 5
value = 275

; Air
;----
[Statedef 275]
Type = A
MoveType = I
Physics = A
sprpriority = 2
velset = 3.5,0
ctrl = 0

[State 271, gravity]
type = VelAdd
trigger1 = 1
y = -0.32

[State 274, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 276


; Land
[Statedef 276]
Type = S
MoveType = I
Physics = S
anim = 272
sprpriority = 2
velset = 0,0
ctrl = 0

[State 276, put on ground]
type = Posset
trigger1 = Time = 0
y = 0

[state 276, land sound]
type = PlaySnd
trigger1 = time = 1
value = 100, 2
channel = 1

[State 276, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1



; Light Move Guarded
;-------------------

[Statedef 290]
Type = S
MoveType = I
Physics = S
anim = 290
velset = 0,0
ctrl = 0

[State 290, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1



; Medium Move Guarded
;--------------------

[Statedef 293]
Type = S
MoveType = I
Physics = S
anim = 293
velset = 0,0
ctrl = 0

[State 293, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1



; Fierce Move Guarded
;--------------------

[Statedef 295]
Type = S
MoveType = I
Physics = S
anim = 295
velset = 0,0
ctrl = 0

[State 295, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1



; Stand Kick
;-----------

[Statedef 300]
Type = S
MoveType = A
Physics = S
anim = 300
sprpriority = 2
velset = 0,0
ctrl = 0

[state 300, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 4
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 300, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 4
value = 0, var(18) + 4
channel = 0

[state 300, kick sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 140, 1
channel = 1

[State 300, hit def]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
hitflag = MA
guardflag = MA
animtype = medium
air.animtype = back
ground.type = low
priority = 4, Hit
damage = 28 + 20*var(20),0
pausetime = 3, 3
guard.pausetime = 3, 3
sparkno = s4100
guard.sparkno = s4210
sparkxy = 0,-64
hitsound = s150, var(15)
guardsound = s150, var(15)
ground.slidetime = 8
ground.hittime = 20
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 37
ground.velocity = -5.5
guard.velocity = -5.5
air.velocity = -4, -5
ground.cornerpush.veloff = -7
guard.cornerpush.veloff = -11
getpower = 0, 0

[State 300, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 300, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1



; Stand Knock Down Kick
;----------------------

; (1st Hit)
;----------
[Statedef 310]
Type = S
MoveType = A
Physics = S
anim = 310
sprpriority = 2
velset = 0,0
ctrl = 0

[state 310, add pos]
type = PosAdd
trigger1 = AnimElem = 2
x = 2

[State 310, hit def]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
hitflag = MA
guardflag = MA
animtype = light
air.animtype = back
ground.type = low
priority = 4, Hit
damage = 8 + 8*var(20),0
pausetime = 2, 2
guard.pausetime = 2, 2
sparkno = s4100
guard.sparkno = s4210
sparkxy = 0,-55
hitsound = s150, var(15)
guardsound = s150, var(15)
ground.slidetime = 6
ground.hittime = 14
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = -4.5
guard.velocity = -4.5
air.velocity = -2.5, -3
ground.cornerpush.veloff = -3
guard.cornerpush.veloff = -3
getpower = 0, 0

[State 310, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 310, end state]
type = ChangeState
trigger1 = AnimElem = 3
value = 311

; (2nd Hit)
;----------
[Statedef 311]
Type = S
MoveType = A
Physics = S
sprpriority = 2
velset = 0,0
ctrl = 0

[state 311, add pos]
type = PosAdd
trigger1 = AnimElem = 3
x = 25

[state 311, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 3
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 311, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 3
value = 0, var(18) + 4
channel = 0

[state 311, kick sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 140, 1
channel = 1

[State 311, hit def]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
hitflag = MA
guardflag = MA
animtype = back
air.animtype = back
priority = 4, Hit
damage = 8 + 8*var(20),0
pausetime = 2, 2
guard.pausetime = 2, 2
sparkno = s4100
guard.sparkno = s4210
sparkxy = 0,-65
hitsound = s150, var(15)
guardsound = s150, var(15)
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = 0,-7.5
guard.velocity = -4.5
air.velocity = -2.5, -3
ground.cornerpush.veloff = -3
guard.cornerpush.veloff = -3
getpower = 0, 0

[State 311, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 311, end state]
type = ChangeState
trigger1 = AnimElem = 4
value = 312

; (3rd Hit)
;----------
[Statedef 312]
Type = A
MoveType = A
Physics = A
sprpriority = 2
velset = 0,0
ctrl = 0

[state 312, add pos 1]
type = PosAdd
trigger1 = AnimElem = 4, = 0
x = 6
y = -18

[state 312, add pos 2]
type = PosAdd
trigger1 = AnimElem = 4, = 1
x = 2
y = -4

[state 312, add pos 3]
type = PosAdd
trigger1 = AnimElem = 5, = 0
x = -9
y = 2

[State 312, jump back]
type = VelSet
trigger1 = AnimElem = 5
x = -1
y = -6

[State 312, vel add]
type = VelAdd
trigger1 = time > 2
y = -0.28

[State 312, hit def]
type = HitDef
trigger1 = AnimElem = 4
attr = A, NA
hitflag = HAF
guardflag = HA
animtype = light
air.animtype = back
ground.type = high
priority = 4, Hit
damage = 8 + 8*var(20),0
pausetime = 4, 4
guard.pausetime = 4, 4
sparkno = s4100
guard.sparkno = s4210
sparkxy = 0,-85
hitsound = s150, var(15)
guardsound = s150, var(15)
ground.slidetime = 6
ground.hittime = 14
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = -4.5
guard.velocity = -4.5
air.velocity = -3.5, -7.5
air.fall = 1
fall.recovery = 0
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = -4
ground.cornerpush.veloff = -3
guard.cornerpush.veloff = -3
getpower = 0, 0

[State 312, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2



; Overhead Kick
;--------------
; (Start)
;---------
[Statedef 320]
Type = S
MoveType = A
Physics = S
anim = 230
sprpriority = 1
velset = 0,0
ctrl = 0

[State 320, change state]
type = ChangeState
trigger1 = AnimTime = 0
value = 321

; (Air)
;------
[Statedef 321]
Type = A
MoveType = A
Physics = A
anim = 320
sprpriority = 2
velset = 2,-5.5
ctrl = 0

[State 321, veladd]
type = veladd
trigger1 = time > 0
y = -0.2

[state 321, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 6
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 321, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 6
value = 0, var(18) + 4
channel = 0

[state 321, slash sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 140, 1
channel = 1

[state 321, jump sound]
type = PlaySnd
trigger1 = time = 1
value = 100, 1
channel = 2

[State 321, hit def]
type = HitDef
triggerall = !MoveContact
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
trigger3 = AnimElem = 8
trigger4 = AnimElem = 9
attr = S, NA
hitflag = MA
guardflag = HA
animtype = medium
air.animtype = back
priority = 4, Hit
damage = 48 + 58*var(20),0
pausetime = 18, 18
guard.pausetime = 18, 18
sparkno = s4110
guard.sparkno = s4210
sparkxy = 0,0
hitsound = s150, var(15)
guardsound = s150, var(15)
ground.type = trip
guard.slidetime = 6
guard.hittime = 16
guard.ctrltime = 16
air.hittime = 32
ground.velocity = 0,-7
guard.velocity = -3.5
air.velocity = -1, -5
fall = 1
air.fall = 1
fall.recover = 0
fall.envshake.time = 30
fall.envshake.ampl = -4
down.bounce = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
yaccel = 0.6
getpower = 0, 0

[State 321, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 321, change state]
type = ChangeState
trigger1 = AnimTime = 0
value = 322

; (Land)
;-------
[Statedef 322]
Type = S
MoveType = I
Physics = S
anim = 232
sprpriority = 1
ctrl = 0

[State 322, vel set]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 322, pos set]
type = PosSet
trigger1 = Time = 0
y = 0

[state 322, land sound]
type = PlaySnd
trigger1 = time = 1
value = 100, 2
channel = 1

[State 322, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Overhead Kick 2
;----------------
; (Air)
;------
[Statedef 330]
Type = A
MoveType = A
Physics = A
anim = 330
sprpriority = 2
velset = 1,-7.8
ctrl = 0

[State 330, gravity]
type = VelAdd
trigger1 = Time > 0
y = -0.24

[state 330, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 12
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 330, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 12
value = 0, var(18) + 4
channel = 0

[state 330, kick sound]
type = PlaySnd
trigger1 = AnimElem = 12
value = 140, 1
channel = 1

[state 330, jump sound]
type = PlaySnd
trigger1 = time = 1
value = 100, 1
channel = 2

[State 330, hit def]
type = HitDef
triggerall = !MoveContact
trigger1 = AnimElem = 12
trigger2 = AnimElem = 13
attr = S, NA
hitflag = MA
guardflag = HA
animtype = up
air.animtype = back
priority = 4, Hit
damage = 68 + 44*var(20),0
pausetime = 18, 18
guard.pausetime = 18, 18
sparkno = s4110
guard.sparkno = s4210
sparkxy = 0,0
hitsound = s150, var(15)
guardsound = s150, var(15)
ground.type = trip
guard.slidetime = 6
guard.hittime = 16
guard.ctrltime = 16
air.hittime = 32
ground.velocity = 0,-7
guard.velocity = -3.5
air.velocity = -1, -5
fall = 1
air.fall = 1
fall.recover = 0
fall.envshake.time = 30
fall.envshake.ampl = -4
down.bounce = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
yaccel = 0.6
getpower = 0, 0

[State 330, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 330, change state]
type = ChangeState
trigger1 = AnimTime = 0
value = 331

; (Land)
;-------
[Statedef 331]
Type = S
MoveType = I
Physics = S
anim = 331
sprpriority = 1
velset = 0,0
ctrl = 0

[State 331, vel set]
type = VelSet
trigger1 = Time = 0
y = 0

[State 331, pos set]
type = PosSet
trigger1 = Time = 0
y = 0

[state 331, land sound]
type = PlaySnd
trigger1 = time = 1
value = 100, 2
channel = 1

[State 331, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Pursuit Kick
;-------------
; (Air)
;------
[Statedef 340]
Type = A
MoveType = A
Physics = A
anim = 340
sprpriority = 2
velset = (P2dist x)/42,-7.25
ctrl = 0

[State 340, gravity]
type = VelAdd
trigger1 = Time > 0
y = -0.3

[state 340, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 12
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 340, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 12
value = 0, var(18) + 4
channel = 0

[state 340, kick sound]
type = PlaySnd
trigger1 = AnimElem = 12
value = 140, 1
channel = 1

[state 340, jump sound]
type = PlaySnd
trigger1 = time = 1
value = 100, 1
channel = 2

[state 340, ghost]
type = PlayerPush
trigger1 = time <= 10
value = 0

[State 340, hit def]
type = HitDef
triggerall = p2stateno = 5110
trigger1 = AnimElem = 12
trigger2 = AnimElem = 13
attr = A, NA
hitflag = MAFD
animtype = medium
priority = 4, Hit
damage = 40 + 28*var(20),0
pausetime = 12, 12
sparkno = s4100
sparkxy = (FrontEdgeBodyDist - FrontEdgeDist), 0
hitsound = s150, var(15)
ground.cornerpush.veloff = 0
getpower = 0, 0

[State 340, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 340, change state]
type = ChangeState
trigger1 = AnimTime = 0
value = 341

; (Land)
;-------
[Statedef 341]
Type = S
MoveType = I
Physics = S
anim = 341
sprpriority = 1
ctrl = 0

[State 341, vel set]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 341, pos set]
type = PosSet
trigger1 = Time = 0
y = 0

[State 341, pos set]
type = PlayerPush
trigger1 = 1
value = 0

[state 341, jump land]
type = PlaySnd
trigger1 = time = 1
value = 100, 2
channel = 1

[State 341, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Running Kick
;-------------

[Statedef 350]
Type = C
MoveType = A
Physics = C
anim = 350
sprpriority = 2
velset = 3.75,0
ctrl = 0

[State 350, friction]
type = VelMul
trigger1 = 1
x = 1.05

[State 350, 1st foot]
type = MakeDust
trigger1 = vel x > 0
pos = 0, 0
spacing = 3

[State 350, 2nd foot]
type = MakeDust
trigger1 = vel x > 0
pos = 55, 0
spacing = 3

[state 350, brake sound]
type = PlaySnd
trigger1 = time = 1
value = 100, 4
channel = 1

[state 350, kick sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 140, 1
channel = 2

[state 350, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 2
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 350, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 2
value = 0, var(18) + 4
channel = 0

[State 350, hit def]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
hitflag = MA
guardflag = L
animtype = up
air.animtype = back
priority = 4, Hit
damage = 20 + 12*var(20),0
pausetime = 3, 3
guard.pausetime = 3, 3
sparkno = s4110
guard.sparkno = s4210
sparkxy = 0,-10
hitsound = s150, var(15)
guardsound = s150, var(15)
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
ground.velocity = 0, -7
guard.velocity = -3.5
air.velocity = -4, -5
fall = 1
air.fall = 1
fall.recover = 0
fall.envshake.time = 30
fall.envshake.ampl = -4
down.bounce = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -0.5
yaccel = 0.6
getpower = 0, 0

[State 350, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 350, end state]
type = ChangeState
trigger1 = Animtime = 0
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

[state 400, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 2
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 400, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 2
value = 0, var(18) + 4
channel = 0

[state 400, slash sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110, var(17)
channel = 1

[State 400, hit def]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
hitflag = MA
guardflag = L
animtype = light
air.animtype = back
priority = 4, Hit
damage = 20 + 12*var(20),0
pausetime = 6, 6
guard.pausetime = 0, 6
sparkno = s4000
guard.sparkno = s4200
sparkxy = 0,-35
hitsound = s120, var(15)
guardsound = s130, var(16)
ground.type = low
ground.slidetime = 6
ground.hittime = 13
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = -3.5
guard.velocity = -4.5
air.velocity = -4, -5
guard.cornerpush.veloff = -4.3
guard.cornerpush.veloff = -5.4
getpower = 0, 0

[State 400, slash 1]
type = Explod
trigger1 = Animelem = 2, >= 0
trigger1 = Animelem = 3, < 0
anim = 9011
postype = p1
pos = -13,27
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 400, slash 2]
type = Explod
trigger1 = Animelem = 3, >= 0
trigger1 = Animelem = 4, < 0
anim = 9012
postype = p1
pos = -5,29
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 400, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 400, move guarded state]
type = ChangeState
trigger1 = MoveGuarded
value = 490

[State 400, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 11
ctrl = 1



; Crouch Medium Slash
;--------------------

; (1st Hit)
;----------
[Statedef 410]
Type = C
MoveType = A
Physics = N
anim = 410
sprpriority = 2
velset = 0,0
ctrl = 0

[State 410, vel 1]
type = VelSet
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 4, < 0
x = 4

[state 410, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 3
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 410, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 3
value = 0, var(18) + 4
channel = 0

[state 410, slash sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 110, 2
channel = 1

[State 410, hit def]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
hitflag = MA
guardflag = L
animtype = medium
air.animtype = back
priority = 4, Hit
damage = 20 + 12*var(20),0
pausetime = 8, 8
guard.pausetime = 0, 6
sparkno = s4012
guard.sparkno = s4200
sparkxy = 0,-30
hitsound = s120, var(15)
guardsound = s130, var(16)
ground.type = low
ground.slidetime = 8
ground.hittime = 20
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = -5.5
guard.velocity = -5.5
air.velocity = -4, -5
guard.cornerpush.veloff = -4.3
guard.cornerpush.veloff = -5.4
getpower = 0, 0

[State 410, slash 1]
type = Explod
trigger1 = Animelem = 3, >= 0
trigger1 = Animelem = 4, < 0
anim = 9061
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 410, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 410, move guarded state]
type = ChangeState
trigger1 = MoveGuarded
value = 493

[State 410, end state]
type = ChangeState
trigger1 = AnimElem = 4
value = 411

; (2nd Hit)
;----------
[Statedef 411]
Type = C
MoveType = A
Physics = N
sprpriority = 2
ctrl = 0

[State 411, vel 2]
type = VelSet
trigger1 = AnimElem = 4, >= 0
trigger1 = AnimElem = 5, < 0
x = 3.5

[State 411, hit def 2]
type = HitDef
triggerall = !MoveContact
trigger1 = AnimElem = 4
attr = C, NA
hitflag = MA
guardflag = L
animtype = hard
air.animtype = back
priority = 4, Hit
damage = 20 + 12*var(20),0
pausetime = 8, 8
guard.pausetime = 0, 6
sparkno = s4012
guard.sparkno = s4200
sparkxy = 0,-50
hitsound = s120, var(15)
guardsound = s130, var(16)
ground.type = low
ground.slidetime = 8
ground.hittime = 20
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = -5.5
guard.velocity = -5.5
air.velocity = -4, -5
guard.cornerpush.veloff = -4.3
guard.cornerpush.veloff = -5.4
getpower = 0, 0

[State 411, slash 2]
type = Explod
trigger1 = Animelem = 4, >= 0
trigger1 = Animelem = 5, < 0
anim = 9062
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 411, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 411, move guarded state]
type = ChangeState
trigger1 = MoveGuarded
value = 495

[State 411, end state]
type = ChangeState
trigger1 = AnimElem = 5
value = 412

; (3rd Hit)
;----------
[Statedef 412]
Type = C
MoveType = A
Physics = N
sprpriority = 2
ctrl = 0

[State 412, vel 3]
type = VelSet
trigger1 = AnimElem = 5, >= 0
trigger1 = AnimElem = 6, < 0
x = 3

[State 412, vel 4]
type = VelSet
trigger1 = AnimElem = 6, >= 0
trigger1 = AnimElem = 7, < 0
x = 2.5

[State 412, vel 5]
type = VelSet
trigger1 = AnimElem = 7, >= 0
trigger1 = AnimElem = 8, < 0
x = 2

[State 412, vel 6]
type = VelSet
trigger1 = AnimElem = 8, >= 0
trigger1 = AnimElem = 9, < 0
x = 1.5

[State 412, vel 7]
type = VelSet
trigger1 = AnimElem = 9, >= 0
trigger1 = AnimElem = 10, < 0
x = 1

[State 412, vel 8]
type = VelSet
trigger1 = AnimElem = 10, >= 0
trigger1 = AnimElem = 11, < 0
x = 0.5

[State 412, vel 9]
type = VelSet
trigger1 = AnimElem = 11
x = 0

[State 412, hit def 2]
type = HitDef
triggerall = !MoveContact
trigger1 = AnimElem = 5
attr = C, NA
hitflag = MA
guardflag = L
animtype = hard
air.animtype = back
priority = 4, Hit
damage = 28 + 20*var(20),0
pausetime = 10, 10
guard.pausetime = 0, 6
sparkno = s4022
guard.sparkno = s4200
sparkxy = 0,-70
hitsound = s120, var(15)
guardsound = s130, var(16)
ground.type = low
ground.slidetime = 16
ground.hittime = 40
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 37
ground.velocity = -12
guard.velocity = -6.5
air.velocity = -4, -5
ground.cornerpush.veloff = -7.8
guard.cornerpush.veloff = -6.6
getpower = 0, 0

[State 412, slash 3]
type = Explod
trigger1 = Animelem = 5, >= 0
trigger1 = Animelem = 6, < 0
anim = 9063
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 412, slash 4]
type = Explod
trigger1 = Animelem = 6, >= 0
trigger1 = Animelem = 7, < 0
anim = 9064
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 412, slash 5]
type = Explod
trigger1 = Animelem = 7, >= 0
trigger1 = Animelem = 8, < 0
anim = 9065
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 412, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 412, move guarded state]
type = ChangeState
trigger1 = MoveGuarded
value = 495

[State 412, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 11
ctrl = 1



; Crouch Fierce Slash
;--------------------

; (1st Hit)
;----------
[Statedef 420]
Type = C
MoveType = A
Physics = C
anim = 420
sprpriority = 2
velset = 0,0
ctrl = 0

[state 420, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 4
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 420, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 4
value = 0, var(18) + 4
channel = 0

[state 420, slash sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 110, 2
channel = 1

[State 420, hit def 1]
type = HitDef
triggerall = !MoveContact
trigger1 = AnimElem = 5, >= 2
trigger1 = AnimElem = 6, < 0
attr = C, NA
hitflag = MA
guardflag = L
animtype = medium
air.animtype = back
priority = 4, Hit
damage = 16 + 12*var(20),0
pausetime = 17, 17
guard.pausetime = 0, 6
sparkno = s4012
guard.sparkno = s4200
sparkxy = 0,-30
hitsound = s120, var(15)
guardsound = s130, var(16)
ground.slidetime = 8
ground.hittime = 19
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = -5.5
guard.velocity = -5.5
air.velocity = -4, -5
ground.cornerpush.veloff = -7.8
guard.cornerpush.veloff = -6.6
getpower = 0, 0

[State 420, slash 1]
type = Explod
trigger1 = Animelem = 4, >= 0
trigger1 = Animelem = 4, < 3
anim = 9071
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 420, slash 2]
type = Explod
trigger1 = Animelem = 4, >= 3
trigger1 = Animelem = 5, < 0
anim = 9072
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 420, slash 3]
type = Explod
trigger1 = Animelem = 5, >= 0
trigger1 = Animelem = 5, < 2
anim = 9073
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 420, slash 4]
type = Explod
trigger1 = Animelem = 5, >= 2
trigger1 = Animelem = 6, < 0
anim = 9074
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 420, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 420, move guarded state]
type = ChangeState
trigger1 = MoveGuarded
value = 493

[State 420, end state]
type = ChangeState
trigger1 = AnimElem = 6
value = 421

; (2nd Hit)
;----------
[Statedef 421]
Type = S
MoveType = A
Physics = S
sprpriority = 2
ctrl = 0

[State 421, hit def]
type = HitDef
triggerall = !MoveContact
trigger1 = AnimElem = 6, >= 2
attr = S, NA
hitflag = MA
guardflag = MA
animtype = hard
air.animtype = back
priority = 4, Hit
damage = 100 + 104*var(20),0
pausetime = 17, 17
guard.pausetime = 0, 16
sparkno = s4022
guard.sparkno = s4200
sparkxy = 0,-65
hitsound = s170, var(16)
guardsound = s130, var(16)
ground.type = high
ground.slidetime = 15
ground.hittime = 39
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 37
ground.velocity = -12
guard.velocity = -6.5
air.velocity = -4, -5
ground.cornerpush.veloff = -21
guard.cornerpush.veloff = -8.1
getpower = 0, 0

[State 421, slash 5]
type = Explod
trigger1 = Animelem = 6, >= 0
trigger1 = Animelem = 6, < 2
anim = 9075
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 421, slash 6]
type = Explod
trigger1 = Animelem = 6, >= 2
trigger1 = Animelem = 7, < 0
anim = 9076
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 421, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 421, move guarded state]
type = ChangeState
trigger1 = MoveGuarded
value = 495

[State 421, end state]
type = ChangeState
trigger1 = AnimElem = 7
value = 422

; (3rd Hit)
;----------
[Statedef 422]
Type = S
MoveType = A
Physics = S
sprpriority = 2
ctrl = 0

[State 422, hit def]
type = HitDef
triggerall = !MoveContact
trigger1 = AnimElem = 7, >= 2
attr = S, NA
hitflag = MA
guardflag = MA
animtype = hard
air.animtype = back
priority = 4, Hit
damage = 132 + 72*var(20),0
pausetime = 17, 17
guard.pausetime = 0, 16
sparkno = s4022
guard.sparkno = s4200
sparkxy = 0,-125
hitsound = s170, var(16)
guardsound = s130, var(16)
ground.type = high
ground.slidetime = 15
ground.hittime = 39
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 37
ground.velocity = -12
guard.velocity = -6.5
air.velocity = -4, -5
ground.cornerpush.veloff = -21
guard.cornerpush.veloff = -8.1
getpower = 0, 0

[State 422, slash 7]
type = Explod
trigger1 = Animelem = 7, >= 0
trigger1 = Animelem = 7, < 1
anim = 9077
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 422, slash 8]
type = Explod
trigger1 = Animelem = 7, >= 1
trigger1 = Animelem = 8, < 0
anim = 9078
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 422, slash 9]
type = Explod
trigger1 = Animelem = 8, >= 0
trigger1 = Animelem = 8, < 2
anim = 9079
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 422, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 422, move guarded state]
type = ChangeState
trigger1 = MoveGuarded
value = 495

[State 422, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 11
ctrl = 1



; Light Move Guarded
;-------------------

[Statedef 490]
Type = S
MoveType = I
Physics = S
anim = 490
velset = 0,0
ctrl = 0

[State 490, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 11
ctrl = 1



; Medium Move Guarded
;--------------------

[Statedef 493]
Type = S
MoveType = I
Physics = S
anim = 493
velset = 0,0
ctrl = 0

[State 492, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 11
ctrl = 1



; Fierce Move Guarded
;--------------------

[Statedef 495]
Type = S
MoveType = I
Physics = S
anim = 495
velset = 0,0
ctrl = 0

[State 495, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 11
ctrl = 1



; Crouch Kick
;------------

[Statedef 500]
Type = C
MoveType = A
Physics = C
anim = 500
sprpriority = 2
velset = 0,0
ctrl = 0

[state 500, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 3
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 500, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 3
value = 0, var(18) + 4
channel = 0

[state 500, kick sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 140, 1
channel = 1

[State 500, hit def]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
hitflag = MA
guardflag = L
animtype = light
air.animtype = back
priority = 4, Hit
damage = 4 + 2*var(20),0
pausetime = 3, 3
guard.pausetime = 3, 3
sparkno = s4100
guard.sparkno = s4210
sparkxy = 0,-5
hitsound = s150, var(15)
guardsound = s150, var(15)
ground.type = low
ground.slidetime = 6
ground.hittime = 12
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = -3.5
guard.velocity = -4.5
air.velocity = -4, -5
guard.cornerpush.veloff = -4.3
guard.cornerpush.veloff = -5.4
getpower = 0, 0

[State 500, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 500, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 11
ctrl = 1



; Crouch Knock Down Kick
;-----------------------

[Statedef 520]
Type = C
MoveType = A
Physics = C
anim = 520
sprpriority = 2
velset = 0,0
ctrl = 0

[state 520, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 4
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 520, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 4
value = 0, var(18) + 4
channel = 0

[state 520, slash sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 140, 1
channel = 2

[State 520, hit def]
type = HitDef
trigger1 = AnimElem = 4
attr = C, NA
hitflag = MA
guardflag = L
animtype = back
air.animtype = back
priority = 4, Hit
damage = 24 + 16*var(20),0
pausetime = 5, 5
guard.pausetime = 16, 16
sparkno = s4110
guard.sparkno = s4210
sparkxy = 0,-40
hitsound = s150, var(15)
guardsound = s150, var(15)
air.type = high
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 37
ground.velocity = -3,-4.5
guard.velocity = -5
air.velocity = -3, -4
fall = 1
air.fall = 1
fall.recover = 0
fall.envshake.time = 30
fall.envshake.ampl = -4
down.bounce = 1
ground.cornerpush.veloff = -0.5
guard.cornerpush.veloff = -6
getpower = 0, 0

[State 520, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 520, end state]
type = ChangeState
trigger1 = Animtime = 0
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

[state 600, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 3
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 600, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 3
value = 0, var(18) + 4
channel = 0

[state 600, slash sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 110, var(17)
channel = 2

[State 600, hit def]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
hitflag = MA
guardflag = HA
animtype = light
air.animtype = back
priority = 4, Hit
damage = 20 + 12*var(20),0
pausetime = 18, 18
guard.pausetime = 6, 6
sparkno = s4014
guard.sparkno = s4200
sparkxy = 0,-55
hitsound = s120, var(15)
guardsound = s130, var(16)
ground.type = high
ground.slidetime = 4
ground.hittime = 5
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = -4.5
guard.velocity = -4.5
air.velocity = -4, -5
getpower = 0, 0

[State 600, slash 1]
type = Explod
trigger1 = Animelem = 3, >= 0
trigger1 = Animelem = 4, < 0
anim = 9081
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 600, slash 2]
type = Explod
trigger1 = Animelem = 4, >= 0
trigger1 = Animelem = 4, < 3
anim = 9082
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 600, slash 3]
type = Explod
trigger1 = Animelem = 4, >= 3
trigger1 = Animelem = 5, < 0
anim = 9083
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 600, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2



; Air Medium Slash
;-----------------

[Statedef 610]
Type = A
MoveType = A
Physics = A
anim = 610
sprpriority = 2
ctrl = 0

[state 610, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 3
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 610, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 3
value = 0, var(18) + 4
channel = 0

[state 610, slash sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 110, var(17)
channel = 2

[State 610, hit def]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
hitflag = MA
guardflag = HA
animtype = medium
air.animtype = back
priority = 4, Hit
damage = 48 + 28*var(20),0
pausetime = 18, 18
guard.pausetime = 6, 6
sparkno = s4000
guard.sparkno = s4200
sparkxy = 0,-75
hitsound = s120, var(15)
guardsound = s130, var(16)
ground.type = high
ground.slidetime = 5
ground.hittime = 6
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = -6.5
guard.velocity = -5.5
air.velocity = -4, -5
getpower = 0, 0

[State 610, slash 1]
type = Explod
trigger1 = Animelem = 3, >= 0
trigger1 = Animelem = 4, < 0
anim = 9011
postype = p1
pos = 25,-12
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 610, slash 2]
type = Explod
trigger1 = Animelem = 4, >= 0
trigger1 = Animelem = 4, < 3
anim = 9012
postype = p1
pos = 25,-13
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 610, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2



; Air Fierce Slash
;-----------------

[Statedef 620]
Type = A
MoveType = A
Physics = A
anim = 620
sprpriority = 2
ctrl = 0

[state 620, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 3
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 620, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 3
value = 0, var(18) + 4
channel = 0

[state 620, slash sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110, 2
channel = 2

[State 620, hit def]
type = HitDef
triggerall = !movecontact
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
attr = A, NA
hitflag = MA
guardflag = HA
animtype = hard
air.animtype = back
priority = 4, Hit
damage = 124 + 68*var(20),0
pausetime = 18, 18
guard.pausetime = 6, 6
sparkno = s4022
guard.sparkno = s4200
sparkxy = 0,-105
hitsound = s170, var(16)
guardsound = s130, var(16)
ground.type = high
ground.slidetime = 9
ground.hittime = 10
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 37
ground.velocity = -11
guard.velocity = -6.5
air.velocity = -4, -5
getpower = 0, 0

[State 620, slash 1]
type = Explod
trigger1 = Animelem = 2, >= 0
trigger1 = Animelem = 3, < 0
anim = 9091
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 620, slash 2]
type = Explod
trigger1 = Animelem = 3, >= 0
trigger1 = Animelem = 4, < 0
anim = 9092
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 620, slash 3]
type = Explod
trigger1 = Animelem = 4, >= 0
trigger1 = Animelem = 4, < 2
anim = 9093
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 620, slash 4]
type = Explod
trigger1 = Animelem = 4, >= 2
trigger1 = Animelem = 4, < 4
anim = 9094
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 620, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2



; Air Kick
;---------

[Statedef 700]
Type = A
MoveType = A
Physics = A
anim = 700
sprpriority = 2
ctrl = 0

[state 700, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 4
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 700, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 4
value = 0, var(18) + 4
channel = 0

[state 700, kick sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 140, 1
channel = 2

[State 700, hit def]
type = HitDef
trigger1 = !Movecontact
attr = A, NA
hitflag = MA
guardflag = HA
animtype = light
air.animtype = back
priority = 4, Hit
damage = 16 + 12*var(20),0
pausetime = 3, 3
guard.pausetime = 3, 3
sparkno = s4100
guard.sparkno = s4210
sparkxy = 0,-25
hitsound = s150, var(15)
guardsound = s150, var(15)
ground.type = high
ground.slidetime = 4
ground.hittime = 5
guard.slidetime = 4
guard.hittime = 16
guard.ctrltime = 16
air.hittime = 32
ground.velocity = -8.5
guard.velocity = -5.5
air.velocity = -4, -5
getpower = 0, 0

[State 700, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2



; Air Knock Down Kick
;--------------------

[Statedef 720]
Type = A
MoveType = A
Physics = A
anim = 720
sprpriority = 2
ctrl = 0

[state 720, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 10
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 720, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 10
value = 0, var(18) + 4
channel = 0

[state 720, kick sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 140, 1
channel = 2

[State 720, hit def 1]
type = HitDef
triggerall = !movecontact
trigger1 = AnimElem = 10
trigger2 = AnimElem = 11
attr = A, NA
hitflag = MA
guardflag = HA
animtype = hard
priority = 4, Hit
damage = 40 + 20*var(20),0
pausetime = 24, 24
guard.pausetime = 24, 24
sparkno = s4110
guard.sparkno = s4210
sparkxy = 0,-50
hitsound = s150, var(15)
guardsound = s150, var(15)
ground.type = trip
air.type = low
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 37
guard.velocity = -5
air.velocity = 0, 20
fall = 1
air.fall = 1
fall.recover = 0
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = -4
getpower = 0, 0

[State 720, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2



;==============================================================================================
;
; RERA'S THROWS
;
;==============================================================================================

; Guard Crush Froward Catch
;--------------------------
; Attempt To Catch
;-----------------
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
trigger1 = AnimElem = 2
attr = S, NT
hitflag = M
priority = 4, Miss
animtype = light
sparkno = -1
sparkxy = (FrontEdgeBodyDist - FrontEdgeDist),-55
hitsound = s155, 0
snap = 60
ground.type = high
numhits = 0
P2facing = 1
P1StateNo = 801
P2StateNo = 805

[State 800, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

; Pushing
;--------
[Statedef 801]
Type = S
MoveType = A
Physics = S
anim = 801
sprpriority = 2
velset = 0,0
ctrl = 0
poweradd = 50

[State 801, invincibility]
type = NotHitBy
trigger1 = 1
value = SCA

[State 801, hit def]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
hitflag = M
priority = 4, Hit
sparkno = -1
sparkxy = (FrontEdgeBodyDist - FrontEdgeDist),-60
hitsound = s150, 0
guardsound = s150, 0
snap = 60
P2StateNo = 5325

[State 801, bind 1]
type = TargetBind
trigger1 = NumTarget > 0
trigger1 = AnimElem = 2
pos = 2,0

[State 801, bind 2]
type = TargetBind
trigger1 = NumTarget > 0
trigger1 = AnimElem = 3
pos = -3,0

[State 801, bind 3]
type = TargetBind
trigger1 = NumTarget > 0
trigger1 = AnimElem = 4
pos = 45,0

[State 801, bind 4]
type = TargetBind
trigger1 = NumTarget > 0
trigger1 = AnimElem = 5
pos = 60,0

[State 801, spark]
type = Explod
trigger1 = Animelem = 5
anim = 4100
postype = p1
pos = 60,-60
ownpal = 1
ontop = 1
pausemovetime = 30

[state 801, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 5
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 801, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 5
value = 0, var(18) + 4
channel = 0

[state 801, sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 150, 0
channel = 1

[state 801, hit add]
type = HitAdd
trigger1 = time = 0
value = -1

[State 801, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

; Enemy Caught
;-------------
[Statedef 805]
Type = S
MoveType = H
Physics = S
sprpriority = -1
velset = 0,0
ctrl = 0

[State 805, animation]
type = ChangeAnim2
trigger1 = time = 0
value = 805

[State 805, sprite priority]
type = Sprpriority
trigger1 = time > 20
value = 3

[State 805, invincibility]
type = NotHitBy
trigger1 = Animtime > 2
value = SCA

[State 805, ghost]
type = PlayerPush
trigger1 = 1
value = 0

[State 805, ghost]
type = PowerAdd
trigger1 = AnimTime = 0
value = 50

[State 805, end state]
type = SelfState
trigger1 = Animtime = 0
value = 0
ctrl = 1



; Guard Crush Back Catch
;-----------------------
; Attempt To Catch
;-----------------
[Statedef 810]
Type = S
MoveType = A
Physics = S
anim = 800
sprpriority = 2
velset = 0,0
ctrl = 0

[State 810, hit def]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NT
hitflag = M
priority = 4, Miss
sparkno = -1
sparkxy = (FrontEdgeBodyDist - FrontEdgeDist),-55
hitsound = s155, 0
snap = 60
ground.type = high
numhits = 0
P2facing = 1
P1StateNo = 811
P2StateNo = 815

[State 810, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

; Pushing
;--------
[Statedef 811]
Type = S
MoveType = A
Physics = S
anim = 811
sprpriority = 2
velset = 0,0
ctrl = 0
poweradd = 50

[State 811, invincibility]
type = NotHitBy
trigger1 = 1
value = SCA

[State 811, turn]
type = turn
trigger1 = AnimElem = 5

[State 811, bind 1]
type = TargetBind
trigger1 = NumTarget > 0
trigger1 = AnimElem = 2
pos = 2,0

[State 811, bind 2]
type = TargetBind
trigger1 = NumTarget > 0
trigger1 = AnimElem = 3
pos = -3,0

[State 811, bind 3]
type = TargetBind
trigger1 = NumTarget > 0
trigger1 = AnimElem = 4
pos = -13,0

[State 811, bind 4]
type = TargetBind
trigger1 = NumTarget > 0
trigger1 = AnimElem = 5
pos = 25,0

[State 811, bind 5]
type = TargetBind
trigger1 = NumTarget > 0
trigger1 = AnimElem = 6
pos = 65,0

[state 811, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 6
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 811, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 6
value = 0, var(18) + 4
channel = 0

[state 811, sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 140, 0
channel = 1

[state 811, hit add]
type = HitAdd
trigger1 = time = 0
value = -1

[State 811, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

; Enemy Caught
;-------------
[Statedef 815]
Type = S
MoveType = H
Physics = S
velset = 0,0
ctrl = 0

[State 815, animation]
type = ChangeAnim2
trigger1 = time = 0
value = 815

[State 815, sprite priority]
type = Sprpriority
trigger1 = time > 20
value = 3

[State 815, invincibility]
type = NotHitBy
trigger1 = Animtime > 2
value = SCA

[State 815, ghost]
type = PlayerPush
trigger1 = 1
value = 0

[State 815, ghost]
type = PowerAdd
trigger1 = AnimTime = 0
value = 50

[State 815, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 5320



; Guard Crush Forward Attack
;---------------------------

[Statedef 820]
Type = S
MoveType = A
Physics = S
anim = 820
sprpriority = 2
velset = 0,0
ctrl = 0

[state 820, slash sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 110, 2
channel = 1

[State 820, hit def]
type = HitDef
triggerall = !MoveContact
trigger1 = AnimElem = 6
attr = S, NA
hitflag = MA
guardflag = MA
animtype = back
air.animtype = back
priority = 4, Hit
damage = 88,0
pausetime = 18, 18
guard.pausetime = 0, 6
sparkno = s4020
guard.sparkno = s4200
sparkxy = 0,-65
hitsound = s170, var(16)
guardsound = s130, var(16)
ground.type = low
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 37
ground.velocity = -3.5,-7
guard.velocity = -6.5
air.velocity = -4, -5
ground.cornerpush.veloff = -21
guard.cornerpush.veloff = -8.1
fall = 1
fall.recover = 0
getpower = 0, 0

[State 820, slash 1]
type = Explod
trigger1 = Animelem = 1, >= 0
trigger1 = Animelem = 2, < 0
anim = 9032
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 820, slash 2]
type = Explod
trigger1 = Animelem = 2, >= 0
trigger1 = Animelem = 3, < 0
anim = 9033
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 820, slash 3]
type = Explod
trigger1 = Animelem = 3, >= 0
trigger1 = Animelem = 4, < 0
anim = 9034
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 820, slash 4]
type = Explod
trigger1 = Animelem = 4, >= 0
trigger1 = Animelem = 5, < 0
anim = 9035
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 820, slash 5]
type = Explod
trigger1 = Animelem = 5, >= 0
trigger1 = Animelem = 6, < 0
anim = 9036
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 820, slash 6]
type = Explod
trigger1 = Animelem = 6, >= 0
trigger1 = Animelem = 6, < 1
anim = 9037
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 820, slash 7]
type = Explod
trigger1 = Animelem = 6, >= 1
trigger1 = Animelem = 7, < 0
anim = 9038
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 820, slash 8]
type = Explod
trigger1 = Animelem = 7, >= 0
trigger1 = Animelem = 8, < 0
anim = 9039
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 820, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 820, move guarded state]
type = ChangeState
trigger1 = MoveGuarded
value = 295

[State 820, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1



; Guard Crush Back Attack
;------------------------

[Statedef 830]
Type = C
MoveType = A
Physics = C
anim = 830
sprpriority = 2
velset = 0,0
ctrl = 0

[state 830, slash sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110, 2
channel = 1

[State 830, hit def]
type = HitDef
triggerall = !MoveContact
trigger1 = AnimElem = 4
attr = S, NA
hitflag = MA
guardflag = MA
animtype = back
air.animtype = back
priority = 4, Hit
damage = 88,0
pausetime = 18, 18
guard.pausetime = 0, 16
sparkno = s4022
guard.sparkno = s4200
sparkxy = 0,-65
hitsound = s170, var(16)
guardsound = s130, var(16)
ground.type = high
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 37
ground.velocity = -3.5,-7
guard.velocity = -6.5
air.velocity = -4, -5
ground.cornerpush.veloff = -21
guard.cornerpush.veloff = -8.1
fall = 1
fall.recover = 0
getpower = 0, 0

[State 830, slash 1]
type = Explod
trigger1 = Animelem = 2, >= 0
trigger1 = Animelem = 2, < 2
anim = 9071
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 830, slash 2]
type = Explod
trigger1 = Animelem = 2, >= 2
trigger1 = Animelem = 3, < 0
anim = 9072
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 830, slash 3]
type = Explod
trigger1 = Animelem = 3, >= 0
trigger1 = Animelem = 3, < 2
anim = 9073
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 830, slash 4]
type = Explod
trigger1 = Animelem = 3, >= 2
trigger1 = Animelem = 4, < 0
anim = 9074
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 830, slash 5]
type = Explod
trigger1 = Animelem = 4, >= 0
trigger1 = Animelem = 4, < 1
anim = 9075
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 830, slash 6]
type = Explod
trigger1 = Animelem = 4, >= 1
trigger1 = Animelem = 5, < 0
anim = 9076
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 830, slash 7]
type = Explod
trigger1 = Animelem = 5, >= 0
trigger1 = Animelem = 5, < 3
anim = 9077
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 830, slash 8]
type = Explod
trigger1 = Animelem = 5, >= 3
trigger1 = Animelem = 6, < 0
anim = 9078
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 830, slash 9]
type = Explod
trigger1 = Animelem = 6, >= 0
trigger1 = Animelem = 6, < 6
anim = 9079
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 830, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 830, move guarded state]
type = ChangeState
trigger1 = MoveGuarded
value = 493

[State 830, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1



; Air Throw
;----------
; Attempt
;--------
[Statedef 840]
Type = A
MoveType = A
Physics = A
anim = 840
sprpriority = 2
ctrl = 0

[State 840, hit def]
type = HitDef
trigger1 = AnimElem = 1
attr = A, NT
hitflag = A
priority = 4, Miss
air.animtype = hard
sparkno = -1
hitsound = s155, 0
air.type = low
snap = 50
P2facing = 1
P1StateNo = 841
P2StateNo = 845

[State 840, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 700 + 20*(command = "holddown")


; Dive
;------
[Statedef 841]
Type = A
MoveType = A
Physics = N
anim = 841
sprpriority = 2
velset = 0,0
ctrl = 0

[State 841, invincibility]
type = NotHitBy
trigger1 = 1
value = SCA

[State 841, vel set]
type = velset
trigger1 = AnimElem = 7
y = 20

[State 841, bind 1]
type = TargetBind
trigger1 = NumTarget > 0
trigger1 = AnimElem = 1
pos = 50, -75

[State 841, bind 2]
type = TargetBind
trigger1 = NumTarget > 0
trigger1 = AnimElem = 2
pos = 7, -28

[State 841, bind 3]
type = TargetBind
trigger1 = NumTarget > 0
trigger1 = AnimElem = 3
pos = -30, -50

[State 841, bind 4]
type = TargetBind
trigger1 = NumTarget > 0
trigger1 = AnimElem = 4
pos = -11, -85

[State 841, bind 5]
type = TargetBind
trigger1 = NumTarget > 0
trigger1 = AnimElem = 5
pos = 31, -75

[State 841, bind 6]
type = TargetBind
trigger1 = NumTarget > 0
trigger1 = AnimElem = 6
pos = 12, -6

[State 841, bind 7]
type = TargetBind
trigger1 = NumTarget > 0
trigger1 = AnimElem = 7
pos = 0, 10

[state 841, normal voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40,5
channel = 0

[State 841, move hit background]
type = envcolor
trigger1 = time = 0
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 841, end state]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -ceil(vel y)
value = 842


; Knock Ground
;-------------
[Statedef 842]
Type = A
MoveType = A
Physics = N
sprpriority = 2
ctrl = 0

[State 842, vel set]
type = VelSet
trigger1 = Time = 0
y = 0

[State 842, pos set]
type = PosSet
trigger1 = Time = 0
y = -10

[State 842, invincibility]
type = NotHitBy
trigger1 = 1
value = SCA

[State 842, shake]
type = EnvShake
trigger1 = Time = 0
time = 30
ampl = -8

[state 842, knock ground sound]
type = PlaySnd
trigger1 = time = 0
value = F7, 2
channel = 1

[State 842, hit spark]
type = Explod
trigger1 = time = 0
anim = 4110
pos = 0, -10
ontop = 1
ownpal = 1
pausemovetime = 30

[State 842, enemy life]
type = TargetLifeAdd
trigger1 = NumTarget > 0
trigger1 = Time = 0
value = -92

[State 842, move hit background]
type = envcolor
trigger1 = time = 0
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 842, end state]
type = ChangeState
trigger1 = Time = 7
value = 843

; Jump Back
;----------
[Statedef 843]
Type = A
MoveType = I
Physics = A
anim = 843
sprpriority = 1
velset = -5,-5
ctrl = 0

[State 843, jump sound]
type = PlaySnd
trigger1 = time = 0
value = 100, 1
channel = 1

[State 843, gravity]
type = VelAdd
trigger1 = 1
y = -0.25

[State 843, invincibility]
type = NotHitBy
trigger1 = 1
value = SCA

; Enemy Falling
;--------------
[Statedef 845]
Type = A
MoveType = H
Physics = N
sprpriority = 1
ctrl = 0

[State 845, animation]
type = ChangeAnim2
trigger1 = time = 0
value = 845

[State 845, ghost]
type = PlayerPush
trigger1 = 1
value = 0

[State 845, screen bound]
type = ScreenBound
trigger1 = 1
movecamera = 0,0

[State 845, end state]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -ceil(vel y)
value = 846

; Enemy Hitting The Ground
;-------------------------
[Statedef 846]
Type = S
MoveType = H
Physics = S
sprpriority = 1
ctrl = 0

[State 846, vel set]
type = VelSet
trigger1 = Time = 0
y = 0

[State 846, pos set]
type = PosSet
trigger1 = Time = 0
y = 0

[State 846, ghost]
type = PlayerPush
trigger1 = 1
value = 0

[State 846, vel set]
type = VelSet
trigger1 = time = 7
x = -1

[State 846, end state]
type = SelfState
trigger1 = Time = 7
value = 5100
