;==============================================================================================
;
; RIDING SHIKURUU ATTACKS
;
;==============================================================================================

; Stand Horyzontal Slash
;-----------------------

[Statedef 8200]
Type = S
MoveType = A
Physics = S
anim = 8200
sprpriority = 4
velset = 0,0
ctrl = 0

[state 8200, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 3
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 8200, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 3
value = 0, var(18) + 4
channel = 0

[state 8200, slash sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 110, var(17)
channel = 1

[State 8200, hit def]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
hitflag = MA
guardflag = MA
animtype = light
air.animtype = back
ground.type = high
priority = 4, Hit
damage = 48 + 28*var(20),0
pausetime = 8, 8
guard.pausetime = 6, 6
sparkno = s4000
guard.sparkno = s4200
sparkxy = 0,-72
hitsound = s120, var(15)
guardsound = s130, var(16)
ground.slidetime = 10
ground.hittime = 22
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = -5
guard.velocity = -5
air.velocity = -4, -5
ground.cornerpush.veloff = -10.5
guard.cornerpush.veloff = -11.5
getpower = 0, 0

[State 8200, slash 1]
type = Explod
trigger1 = Animelem = 3, >= 0
trigger1 = Animelem = 4, < 0
anim = 9011
postype = p1
pos = 42,-5
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 10

[State 8200, slash 2]
type = Explod
trigger1 = Animelem = 4, >= 0
trigger1 = Animelem = 4, < 2
anim = 9012
postype = p1
pos = 39,-6
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 10

[State 8200, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 8200, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Stand Vertical Slash
;---------------------

[Statedef 8210]
Type = S
MoveType = A
Physics = S
anim = 8210
sprpriority = 4
velset = 0,0
ctrl = 0

[state 8210, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 2
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 8210, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 2
value = 0, var(18) + 4
channel = 0

[state 8210, slash sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110, 2
channel = 1

[State 8210, hit def]
type = HitDef
triggerall = !MoveContact
trigger1 = AnimElem = 2, >= 4
trigger1 = AnimElem = 4, < 0
attr = S, NA
hitflag = MA
guardflag = MA
animtype = hard
air.animtype = back
ground.type = high
priority = 4, Hit
damage = 136 + 72*var(20),0
pausetime = 20, 20
guard.pausetime = 6, 6
sparkno = s4022
guard.sparkno = s4200
sparkxy = 0,-35 -40*(AnimElem = 3)
hitsound = s170, var(16)
guardsound = s130, var(16)
ground.slidetime = 15
ground.hittime = 39
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 37
ground.velocity = -12.5
guard.velocity = -5.5
air.velocity = -4, -5
ground.cornerpush.veloff = -22.5
guard.cornerpush.veloff = -11.5
getpower = 0,0

[State 8210, slash 1]
type = Explod
trigger1 = Animelem = 2, >= 0
trigger1 = Animelem = 2, < 3
anim = 9091
postype = p1
pos = 45,27
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 10

[State 8210, slash 2]
type = Explod
trigger1 = Animelem = 2, >= 3
trigger1 = Animelem = 3, < 0
anim = 9092
postype = p1
pos = 33,25
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 10

[State 8210, slash 3]
type = Explod
trigger1 = Animelem = 3, >= 0
trigger1 = Animelem = 4, < 0
anim = 9093
postype = p1
pos = 41,18
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 10

[State 8210, slash 4]
type = Explod
trigger1 = Animelem = 4, >= 0
trigger1 = Animelem = 5, < 2
anim = 9094
postype = p1
pos = 41,17
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 10

[State 8210, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 8210, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Overhead Slash
;---------------

[Statedef 8215]
Type = S
MoveType = A
Physics = N
anim = 8215
sprpriority = 4
velset = 0,0
ctrl = 0

[State 8215, velocity]
type = VelSet
trigger1 = time = 12
x = 4
y = -3.5

[State 8215, gravity]
type = VelAdd
trigger1 = time >= 13
y = -0.16

[State 8215, state modify]
type = StateTypeSet
trigger1 = AnimElem = 2
StateType = A
Physics = A

[state 8215, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 3
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 8215, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 3
value = 0, var(18) + 4
channel = 0

[state 8215, slash sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 110, 2
channel = 1

[State 8215, hit def 1]
type = HitDef
triggerall = !MoveContact
trigger1 = AnimElem = 3, >= 4
trigger1 = AnimElem = 4, <= 2 
attr = A, NA
hitflag = MA
guardflag = HA
animtype = medium
air.animtype = back
ground.type = high
priority = 4, Hit
damage = 60 + 32*var(20),0
pausetime = 5, 5
guard.pausetime = 6, 6
sparkno = s4012
guard.sparkno = s4200
sparkxy = 0,-64 -30*(AnimElem = 4)
hitsound = s120, var(15)
guardsound = s130, var(16)
ground.slidetime = 6
ground.hittime = 6
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 37
ground.velocity = -3.5
guard.velocity = -4
air.velocity = -4, -5
ground.cornerpush.veloff = -1
guard.cornerpush.veloff = -1
getpower = 0,0

[State 8215, slash 1]
type = Explod
trigger1 = Animelem = 3, >= 0
trigger1 = Animelem = 3, < 3
anim = 9101
postype = p1
pos = 11,-32
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 10

[State 8215, slash 2]
type = Explod
trigger1 = Animelem = 3, >= 3
trigger1 = Animelem = 4, < 0
anim = 9102
postype = p1
pos = 7,-30
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 10

[State 8215, slash 3]
type = Explod
trigger1 = Animelem = 4, >= 0
trigger1 = Animelem = 5, < 0
anim = 9103
postype = p1
pos = 6,-32
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 10

[State 8215, slash 4]
type = Explod
trigger1 = Animelem = 5, >= 0
trigger1 = Animelem = 6, < 0
anim = 9104
postype = p1
pos = 5,-32
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 10

[State 8215, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 8215, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 52
ctrl = 1



; Running Slash
;--------------

[Statedef 8220]
Type = S
MoveType = A
Physics = S
anim = 8220
sprpriority = 4
velset = 3,0
ctrl = 0

[state 8220, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 2
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 8220, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 2
value = 0, var(18) + 4
channel = 0

[state 8220, slash sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110, 2
channel = 1

[State 8220, hit def]
type = HitDef
triggerall = !MoveContact
trigger1 = AnimElem = 2, >= 3
trigger1 = AnimElem = 4, < 0
attr = S, NA
hitflag = MA
guardflag = MA
animtype = back
air.animtype = back
priority = 4, Hit
damage = 92 + 52*var(20),0
pausetime = 20, 20
guard.pausetime = 6, 6
sparkno = s4012
guard.sparkno = s4200
sparkxy = 0,-45 -30*(AnimElem = 3)
hitsound = s170, var(16)
guardsound = s130, var(16)
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 37
ground.velocity = -3,-7
guard.velocity = -5.5
air.velocity = -4, -5
ground.cornerpush.veloff = -14.5
guard.cornerpush.veloff = -4
fall = 1
air.fall = 1
fall.recovery = 0
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = -4
getpower = 0,0

[State 8220, slash 1]
type = Explod
trigger1 = Animelem = 2, >= 0
trigger1 = Animelem = 2, < 3
anim = 9101
postype = p1
pos = 28,-15
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 10

[State 8220, slash 2]
type = Explod
trigger1 = Animelem = 2, >= 3
trigger1 = Animelem = 3, < 0
anim = 9102
postype = p1
pos = 24,-13
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 10

[State 8220, slash 3]
type = Explod
trigger1 = Animelem = 3, >= 0
trigger1 = Animelem = 4, < 0
anim = 9103
postype = p1
pos = 25,-21
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 10

[State 8220, slash 4]
type = Explod
trigger1 = Animelem = 4, >= 0
trigger1 = Animelem = 4, < 2
anim = 9104
postype = p1
pos = 24,-21
sprpriority = 5
ownpal = 1
ignorehitpause = 1
pausemovetime = 10

[State 8220, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2
removeongethit = 1

[State 8220, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Crouch Horyzontal Slash
;------------------------

[Statedef 8230]
Type = C
MoveType = A
Physics = C
anim = 8230
sprpriority = 4
velset = 0,0
ctrl = 0

[state 8230, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 3
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 8230, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 3
value = 0, var(18) + 4
channel = 0

[state 8230, slash sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 110, var(17)
channel = 1

[State 8230, hit def]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
hitflag = MA
guardflag = L
animtype = light
air.animtype = back
ground.type = low
priority = 4, Hit
damage = 48 + 28*var(20),0
pausetime = 8, 8
guard.pausetime = 6, 6
sparkno = s4000
guard.sparkno = s4200
sparkxy = 0,-57
hitsound = s120, var(15)
guardsound = s130, var(16)
ground.slidetime = 9
ground.hittime = 20
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 37
ground.velocity = -5
guard.velocity = -5
air.velocity = -4, -5
ground.cornerpush.veloff = -7.75
guard.cornerpush.veloff = -7.5
getpower = 0,0

[State 8230, slash 1]
type = Explod
trigger1 = Animelem = 3, >= 0
trigger1 = Animelem = 4, < 0
anim = 9011
postype = p1
pos = 26,14
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 10

[State 8230, slash 2]
type = Explod
trigger1 = Animelem = 4, >= 0
trigger1 = Animelem = 4, < 2
anim = 9012
postype = p1
pos = 27,14
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 10

[State 8230, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 8230, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1



; Crouch Vertical Slash
;----------------------

[Statedef 8240]
Type = C
MoveType = A
Physics = C
anim = 8240
sprpriority = 4
velset = 0,0
ctrl = 0

[state 8240, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 2
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 8240, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 2
value = 0, var(18) + 4
channel = 0

[state 8240, slash sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110, 2
channel = 1

[State 8240, hit def]
type = HitDef
triggerall = !MoveContact
trigger1 = AnimElem = 2, >= 4
trigger1 = AnimElem = 3, < 0
attr = C, NA
hitflag = MA
guardflag = L
animtype = hard
air.animtype = back
ground.type = trip
priority = 4, Hit
damage = 136 + 72*var(20),0
pausetime = 20, 20
guard.pausetime = 6, 6
sparkno = s4024
guard.sparkno = s4200
sparkxy = 0,-30
hitsound = s170, var(16)
guardsound = s130, var(16)
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 37
ground.velocity = -1, -4.5
guard.velocity = -5
air.velocity = -4, -5
getpower = 0,0
fall = 1
air.fall = 1
fall.recover = 0
fall.envshake.time = 30
fall.envshake.ampl = -4

[State 8240, slash 1]
type = Explod
trigger1 = Animelem = 2, >= 0
trigger1 = Animelem = 2, < 2
anim = 9081
postype = p1
pos = 14,30
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 10

[State 8240, slash 2]
type = Explod
trigger1 = Animelem = 2, >= 2
trigger1 = Animelem = 2, < 4
anim = 9082
postype = p1
pos = 11,31
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 10

[State 8240, slash 3]
type = Explod
trigger1 = Animelem = 2, >= 4
trigger1 = Animelem = 3, < 0
anim = 9083
postype = p1
pos = 12,33
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 10

[State 8240, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 8240, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1



; Air Horyzontal Slash
;---------------------

[Statedef 8250]
Type = A
MoveType = A
Physics = A
anim = 8250
sprpriority = 4
ctrl = 0

[state 8250, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 2
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 8250, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 2
value = 0, var(18) + 4
channel = 0

[state 8250, slash sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110, var(17)
channel = 1

[State 8250, hit def]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
hitflag = MAF
guardflag = HA
animtype = light
air.animtype = back
ground.type = high
priority = 4, Hit
damage = 48 + 28*var(20),0
pausetime = 18, 18
guard.pausetime = 6, 6
sparkno = s4000
guard.sparkno = s4200
sparkxy = 0,-88
hitsound = s120, var(15)
guardsound = s130, var(16)
ground.slidetime = 4
ground.hittime = 5
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = -4.5
guard.velocity = -4
air.velocity = -4, -5
ground.cornerpush.veloff = -2.5
guard.cornerpush.veloff = -3
getpower = 0, 0

[State 8250, slash 1]
type = Explod
trigger1 = Animelem = 2, >= 0
trigger1 = Animelem = 3, < 0
anim = 9011
postype = p1
pos = 18,-17
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 10

[State 8250, slash 2]
type = Explod
trigger1 = Animelem = 3, >= 0
trigger1 = Animelem = 3, < 2
anim = 9012
postype = p1
pos = 16,-20
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 10

[State 8250, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2



; Air Vertical Slash
;-------------------

[Statedef 8260]
Type = A
MoveType = A
Physics = A
anim = 8260
sprpriority = 4
ctrl = 0

[state 8260, normal voice]
type = PlaySnd
trigger1 = var(20) = 0 && AnimElem = 2
value = 0, var(18) + 2*(life < 500)
channel = 0

[state 8260, rage voice]
type = PlaySnd
trigger1 = var(20) = 1 && AnimElem = 2
value = 0, var(18) + 4
channel = 0

[state 8260, slash sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110, 2
channel = 1

[State 8260, hit def]
type = HitDef
triggerall = !MoveContact
trigger1 = AnimElem = 2, >= 3
trigger1 = AnimElem = 4, < 0
attr = A, NA
hitflag = MA
guardflag = HA
animtype = hard
air.animtype = back
ground.type = high
priority = 4, Hit
damage = 132 + 72*var(20),0
pausetime = 22, 22
guard.pausetime = 6, 6
sparkno = s4022
guard.sparkno = s4200
sparkxy = 0,-34 -30*(AnimElem = 3)
hitsound = s170, var(16)
guardsound = s130, var(16)
ground.slidetime = 4
ground.hittime = 6
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = -15
guard.velocity = -6.5
air.velocity = -4, -5
ground.cornerpush.veloff = -9.5
getpower = 0,0

[State 8260, slash 1]
type = Explod
trigger1 = Animelem = 2, >= 0
trigger1 = Animelem = 2, < 1
anim = 9091
postype = p1
pos = 28,15
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 10

[State 8260, slash 2]
type = Explod
trigger1 = Animelem = 2, >= 1
trigger1 = Animelem = 3, < 0
anim = 9092
postype = p1
pos = 14,13
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 10

[State 8260, slash 3]
type = Explod
trigger1 = Animelem = 3, >= 0
trigger1 = Animelem = 4, < 0
anim = 9093
postype = p1
pos = 22,8
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 10

[State 8260, slash 4]
type = Explod
trigger1 = Animelem = 4, >= 0
trigger1 = Animelem = 4, < 2
anim = 9094
postype = p1
pos = 22,7
sprpriority = 5
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 10

[State 8260, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2



; Myu Shikite
;------------

[Statedef 8300]
Type = S
MoveType = A
Physics = N
anim = 8240
sprpriority = 4
velset = 0,0
ctrl = 0
juggle = 10

[State 8300, change anim]
type = ChangeAnim
trigger1 = time = 5
value = 8100

[State 8300, velocity]
type = VelSet
trigger1 = time = 5
x = 11.5

[state 8300, voice]
type = PlaySnd
trigger1 = time = 5
value = 40, 1
channel = 0

[State 8300, slash sound]
type = PlaySnd
trigger1 = time = 5
value = 160, 2
channel = 1

[state 8300, sparks sound]
type = PlaySnd
trigger1 = time = 5
value = 160, 1
channel = 2

[State 8300, hit def]
type = HitDef
trigger1 = !MoveContact
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = hard
air.animtype = back
priority = 4, Hit
damage = 116 + 60*var(20), 8
pausetime = 0, 0
guard.pausetime = 0, 0
sparkno = s4110
guard.sparkno = s4210
sparkxy = 0,-40
hitsound = s180, var(16)
guardsound = s150, var(15)
ground.type = low
air.type = high
ground.slidetime = 6
ground.hittime = 20
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = -3.5
guard.velocity = -5
air.velocity = -4, -5
getpower = 0,0

[State 8300, after image]
type = Explod
trigger1 = time = 5
ID = 8300
anim = 8100
pos = -45, 0
bindtime = 20
removetime = -2
sprpriority = -1
removeongethit = 1
pausemovetime = 30

[State 8300, 1st blue spark]
type = Explod
trigger1 = time = 6
anim = 8302
pos = 5,-46
sprpriority = 5
ownpal = 1
pausemovetime = 30

[State 8300, 2nd blue spark]
type = Explod
trigger1 = time = 11
anim = 8302
pos = -13,-74
sprpriority = 5
ownpal = 1
pausemovetime = 30

[State 8300, 3rd blue spark]
type = Explod
trigger1 = time = 16
anim = 8302
pos = 9,-59
sprpriority = 5
ownpal = 1
pausemovetime = 30

[State 8300, 4th blue spark]
type = Explod
trigger1 = time = 21
anim = 8302
pos = 0,-35
sprpriority = 5
ownpal = 1
pausemovetime = 30

[State 8300, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 8300, end state]
type = ChangeState
trigger1 = time = 25 + 4*(var(20) = 1)
trigger2 = MoveGuarded
value = 101



; Kanto Shikite
;--------------

; (Attack)
;---------
[Statedef 8310]
Type = S
MoveType = A
Physics = N
anim = 8240
sprpriority = 4
velset = 0,0
ctrl = 0
juggle = 10

[State 8310, state modify]
type = StateTypeSet
trigger1 = time = 6
StateType = A
Physics = A

[State 8310, change anim]
type = ChangeAnim
trigger1 = time = 5
value = 8310

[State 8310, start velocity]
type = VelSet
trigger1 = time = [5, 24]
x = 11.5
y = -6.5

[State 8310, end velocity]
type = VelSet
trigger1 = time = 25
x = 4
y = -3

[State 8310, gravity]
type = VelAdd
trigger1 = time > 24
y = -0.2

[state 8310, voice]
type = PlaySnd
trigger1 = time = 5
value = 40, 2
channel = 0

[State 8310, slash sound]
type = PlaySnd
trigger1 = time = 5
value = 160, 2
channel = 1

[state 8310, spark sound]
type = PlaySnd
trigger1 = time = 5
value = 160, 1
channel = 2

[State 8310, normal hit def]
type = HitDef
trigger1 = !MoveContact
attr = A, SA
hitflag = MAF
guardflag = MA
animtype = up
priority = 4, Hit
damage = 96 + 60*var(20), 8
pausetime = 0, 0
guard.pausetime = 0, 0
sparkno = s4110
guard.sparkno = s4210
sparkxy = 0,-67
hitsound = s180, var(16)
guardsound = s150, var(15)
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = 0,-10.5
guard.velocity = -5
air.velocity = 0, -10.5
getpower = 0,0
fall = 1
air.fall = 1
fall.recover = 1
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = -4

[State 8310, after image]
type = Explod
trigger1 = time = 5
ID = 8300
anim = 8310
pos = -48, 24
bindtime = 20
removetime = 20
sprpriority = -1
removeongethit = 1
pausemovetime = 30

[State 8310, 1st blue spark]
type = Explod
trigger1 = time = 6
anim = 8302
pos = 1,-53
sprpriority = 5
ownpal = 1
pausemovetime = 30

[State 8310, 2nd blue spark]
type = Explod
trigger1 = time = 11
anim = 8302
pos = 0,-35
sprpriority = 5
ownpal = 1
pausemovetime = 30

[State 8310, 3rd blue spark]
type = Explod
trigger1 = time = 16
anim = 8302
pos = -5,-58
sprpriority = 5
ownpal = 1
pausemovetime = 30

[State 8310, 4th blue spark]
type = Explod
trigger1 = time = 21
anim = 8302
pos = -11,-58
sprpriority = 5
ownpal = 1
pausemovetime = 30

[State 8310, enemy position]
type = TargetBind
trigger1 = NumTarget > 0
trigger1 = target, pos y >= -6
trigger1 = MoveHit
pos = (P2Dist x), -6
persistent = 0

[State 8310, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 8310, end state]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -ceil(vel y)
value = 8315

; (Land)
;-------
[Statedef 8315]
Type = S
MoveType = A
Physics = S
anim = 8312
sprpriority = 4

[State 8315, velocity]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 8315, position]
type = PosSet
trigger1 = time = 0
y = 0

[State 8315, land sound]
type = PlaySnd
trigger1 = Time = 0
value = 100, 2
channel = 1

[State 8315, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Imeru Shikite
;--------------

[Statedef 8320]
Type = A
MoveType = A
Physics = A
sprpriority = 4
ctrl = 0
juggle = 10

[State 8320, start anim]
type = ChangeAnim
trigger1 = time < 13
value = 8260
elem = 1

[State 8320, change anim]
type = ChangeAnim
trigger1 = time = 13
value = 8320

[State 8320, pos freeze]
type = PosFreeze
trigger1 = time < 13
value = 1

[State 8320, velocity]
type = VelSet
trigger1 = time >= 13
x = 11.5
y = 6

[state 8320, voice]
type = PlaySnd
trigger1 = time = 13
value = 40, 4
channel = 0

[State 8320, slash sound]
type = PlaySnd
trigger1 = time = 13
value = 160, 2
channel = 1

[State 8320, hit def]
type = HitDef
trigger1 = !MoveContact
attr = A, SA
hitflag = MAF
guardflag = HA
animtype = up
priority = 4, Hit
damage = 84 + 52*var(20), 8
pausetime = 4, 4
guard.pausetime = 6, 6
sparkno = s4110
guard.sparkno = s4210
sparkxy = 0,0
hitsound = s180, var(16)
guardsound = s150, var(15)
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = 0, -10.5
guard.velocity = -5
air.velocity = 0, -10.5
getpower = 0,0
fall = 1
air.fall = 1
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = -4
palfx.time = 56
palfx.sinadd = 255,255,0,3

[State 8320, spark]
type = Explod
trigger1 = time = 0
anim = 8322
pos = 11, -77
sprpriority = 5
ownpal = 1
removeongethit = 1
pausemovetime = 30
pausemovetime = 12

[State 8320, enemy sparks]
type = Explod
trigger1 = NumTarget > 0
trigger1 = MoveHit && !NumExplod(4140)
id = 4140
anim = 4140
pos = 0,(target,const(size.mid.pos.y))
postype = p2
bindtime = 56
removetime = 56
ignorehitpause = 1
sprpriority = 3
ownpal = 1

[State 8320, slash]
type = Explod
trigger1 = time = 13
ID = 8300
anim = 8321
pos = 0, 0
sprpriority = 5
ownpal = 1
bindtime = -1
removetime = -1
removeongethit = 1
pausemovetime = 30

[State 8320, enemy position]
type = TargetBind
trigger1 = NumTarget > 0
trigger1 = target, pos y >= -6
trigger1 = MoveHit
pos = (P2Dist x), -6
persistent = 0

[State 8320, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 8320, end state]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -ceil(vel y)
value = 101



; NubeKi Kamui Shikite - Prepare
;-------------------------------

[Statedef 8341]
Type = S
MoveType = A
Physics = S
anim = 8340
sprpriority = 4
ctrl = 0

[State 8341, invincibility]
type = NotHitBy
trigger1 = 1
value = SCA

[State 8341, super pause]
type = Superpause
trigger1 = AnimElem = 2, = 2
time = 12
anim = s4300
pos = 35, -10
sound = s190, 1
darken = 0
movetime = 12

[State 3341, level set]
type = varset
trigger1 = time = 0
v = 1
value = 1

[state 3341, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 50, 0
channel = 0

[State 8341, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 8345



; NubeKi Kamui Shikite - Dash
;----------------------------

[Statedef 8345]
Type = S
MoveType = A
Physics = N
anim = 8345
sprpriority = 4
ctrl = 0

[State 8345, velocity]
type = VelSet
trigger1 = 1
x = 14.75

[State 8345, slash sound]
type = PlaySnd
trigger1 = time = 1
value = 195, 1
channel = 1

[State 8345, hit def]
type = HitDef
trigger1 = 1
attr = S, HA
hitflag = MAF
guardflag = MA
animtype = medium
air.animtype = medium
ground.type = low
air.type = low
priority = 4, Hit
damage = 39, 8
pausetime = 3, 3
guard.pausetime = 6, 6
sparkno = s4000
guard.sparkno = s4200
sparkxy = 0,-75
hitsound = s180, var(16)
guardsound = s150, var(15)
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
ground.velocity = 0,-8
guard.velocity = -5
air.velocity = 0, -7
fall = 1
air.fall = 1
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = -4
palfx.time = 80
palfx.sinadd = 255,255,0,3
getpower = 0,0
kill = 0
P1StateNo = 3210

[State 8345, slash]
type = Explod
trigger1 = time = 0
ID = 8300
anim = 8301
pos = 0,-15
sprpriority = 5
ownpal = 1
bindtime = 24
removetime = 24
removeongethit = 1
pausemovetime = 30

[State 8345, 1st blue spark]
type = Explod
trigger1 = time = 2
anim = 1003
pos = -45,-72
sprpriority = 5
ownpal = 1
pausemovetime = 30

[State 8345, 2nd blue spark]
type = Explod
trigger1 = time = 7
anim = 1003
pos = -28,-38
sprpriority = 5
ownpal = 1
pausemovetime = 30

[State 8345, 3rd blue spark]
type = Explod
trigger1 = time = 11
anim = 1003
pos = -8,-17
sprpriority = 5
ownpal = 1
pausemovetime = 30

[State 8345, 4th blue spark]
type = Explod
trigger1 = time = 15
anim = 1003
pos = -52,-48
sprpriority = 5
ownpal = 1
pausemovetime = 30

[State 8345, 5th blue spark]
type = Explod
trigger1 = time = 19
anim = 1003
pos = -58,-76
sprpriority = 5
ownpal = 1
pausemovetime = 30

[State 8345, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 8345, end state]
type = ChangeState
trigger1 = MoveGuarded
trigger2 = Time = 24
value = 101


; Ground Separate Attack
;-----------------------

[Statedef 8360]
Type = S
MoveType = A
Physics = S
anim = 8360
sprpriority = 2
velset = 0,0
ctrl = 0

[State 8360, var set]
type = VarSet
trigger1 = time = 1
v = 0
value = 0

[State 8330, remove explod]
type = RemoveExplod
trigger1 = time = 0
ID = 8300

[State 8360, spark]
type = Explod
trigger1 = time = 0
anim = 8322
pos = 4, -47
sprpriority = 5
ownpal = 1
removeongethit = 1
pausemovetime = 30

[State 8360, turn]
type = turn
trigger1 = time = 0
trigger1 = command = "holdback"

[State 8360, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 2100 - 100*(command = "holdup")



; Air Separate Attack
;--------------------

[Statedef 8365]
Type = A
MoveType = A
Physics = A
anim = 8365
sprpriority = 2
velset = 0,0
ctrl = 0

[State 8365, var set]
type = VarSet
trigger1 = time = 0
v = 0
value = 0

[State 8365, remove explod]
type = RemoveExplod
trigger1 = time = 0
ID = 8300

[State 8365, spark]
type = Explod
trigger1 = time = 0
anim = 8322
pos = 11, -77
sprpriority = 5
ownpal = 1
removeongethit = 1
pausemovetime = 30

[State 8365, turn]
type = turn
trigger1 = time = 0
trigger1 = command = "holdback"

[State 8365, pos freeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 8365, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 2100 - 100*(command = "holdup") + 100*(command = "holddown")