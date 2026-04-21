;==============================================================================================
;
; RERA'S SUPER/HYPER ATTACKS
;
;==============================================================================================

; Rage Explosion Mode
;--------------------

[Statedef 3000]
Type = S
MoveType = A
Physics = S
anim = 3000
sprpriority = 2
velset = 0,0
ctrl = 0

[State 3000, invincibility]
type = NotHitBy
trigger1 = 1
value = SCA

[state 3000, rage mode init]
type = VarSet
trigger1 = time = 1
v = 20
value = 1

[state 3000, rage gauge init]
type = VarSet
trigger1 = time >= 1
v = 21
value = 1000

[state 3000, rage mode explosion set]
type = VarSet
trigger1 = time = 1
v = 22
value = 1

[State 3000, super pause]
type = Superpause
trigger1 = time = 2
time = 26
movetime = 26
anim = -1
pos = 0, 0
sound = s190, 2
darken = 0

[State 3000, fire column]
type = Explod
trigger1 = time = 2
id = 3000
anim = 3001
pos = 0,0
bindtime = 1
ignorehitpause = 1
sprpriority = 3
ownpal = 1
supermovetime = 9

[State 3000, shake]
type = EnvShake
trigger1 = time = 2;28
time = 40

[State 3000, explosion]
type = Explod
trigger1 = time = 29
id = 3000
anim = 3002
pos = 0,0
bindtime = 1
ignorehitpause = 1
sprpriority = 3
ownpal = 1
supermovetime = 32

[State 3000, smoke 1]
type = Explod
trigger1 = time = 47
id = 3000
anim = 3003
pos = -22,0
bindtime = 1
ignorehitpause = 1
sprpriority = 2
ownpal = 1
supermovetime = 16

[State 3000, smoke 2]
type = Explod
trigger1 = time = 47
id = 3000
anim = 3003
pos = 20,0
facing = -1
bindtime = 1
ignorehitpause = 1
sprpriority = -4
ownpal = 1
supermovetime = 16

[state 3000, voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 60, 0
channel = 0

[State 3000, hit def]
type = HitDef
trigger1 = AnimElem = 2, = 30
attr = S, HA
hitflag = MAF
animtype = hard
air.animtype = hard
priority = 5, Hit
damage = 0, 0
pausetime = 12, 12
sparkno = s4130
sparkxy = 0,-50 + ceil(P2BodyDist y)
hitsound = s180, var(16)
ground.type = low
air.type = high
ground.velocity = -11,0
ground.slidetime = 12
ground.hittime = 38
air.velocity = -4, -5
air.hittime = 12
ground.cornerpush.veloff = -19.4

[State 3000, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 3000, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Nubeki Kamui Shikite - Prepare
;-------------------------------

[Statedef 3201]
Type = S
MoveType = I
Physics = S
ctrl = 0

[State 3201, level set]
type = varset
trigger1 = time = 0
v = 1
value = 1

[State 3201, end state]
type = ChangeState
trigger1 = time = 0
value = 90



; Nubeki Kamui Shikite - Upward Slash
;------------------------------------

; (1st Hit)
;----------
[Statedef 3210]
Type = A
MoveType = A
Physics = N
anim = 3210
sprpriority = 2
velset = 0,0
ctrl = 0

[State 3210, erase foreground]
type = AssertSpecial
trigger1 = 1
flag = NoFg

[State 3210, background 1]
type = BgPalFx
trigger1 = time%2 = 0
time = 1
add = -255,-255,-255
ignorehitpause

[State 3210, background 2]
type = BgPalFx
trigger1 = time%2 != 0
time = 30
add = 255,255,255
ignorehitpause

[State 3210, target bind]
type = TargetBind
trigger1 = NumTarget > 0
trigger1 = time = 0
pos = 110, -36

[State 3210, rera state var]		; Rera is no more riding Sikuruu
type = varset
trigger1 = time = 0
v = 0
value = 0

[State 3210, end rage mode]
type = VarSet
trigger1 = time = 0
v = 20
value = 0

[State 3210, close rage gauge]
type = VarSet
trigger1 = time = 0
v = 21
value = 0

[State 3210, remove explod]
type = RemoveExplod
trigger1 = time = 0
ID = 8300

[State 3210, pos add]
type = PosAdd
trigger1 = time = 3
x = 40

[State 3210, pos add]
type = PosAdd
trigger1 = AnimElem = 2, >= 0
trigger1 = AnimElem = 3, < 0
y = -1

[state 3210, spark sound enemy]
type = PlaySnd
trigger1 = time = 0
value = 160, 1
channel = 2

[State 3210, hit def 1]
type = HitDef
trigger1 = AnimElem = 2
attr = A, HA
hitflag = MAF
guardflag = MA
animtype = medium
air.animtype = medium
ground.type = low
air.type = low
priority = 5, Hit
damage = 39, 8
pausetime = 4, 2
guard.pausetime = 6, 6
sparkno = s4034
guard.sparkno = s4220
sparkxy = 0,-50
hitsound = s170, var(16)
guardsound = s130, var(16)
guard.slidetime = 6
guard.hittime = 5
guard.ctrltime = 5
ground.velocity = 0,-7
guard.velocity = -5
air.velocity = 0, -7
air.fall = 1
fall.recover = 0
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = -4
kill = 0
getpower = 0,0

[State 3210, slash 1]
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

[State 3210, enemy spark]
type = Explod
trigger1 = NumTarget > 0
trigger1 = MoveHit && !NumExplod(3080)
id = 3080
anim = 3080
pos = 0,(target,const(size.mid.pos.y))
postype = p2
bindtime = -1
ignorehitpause = 1
sprpriority = 3
ownpal = 1

[State 3210, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 3210, end state]
type = ChangeState
trigger1 = AnimElem = 3
value = 3211

; (2nd Hit)
;----------
[Statedef 3211]
Type = A
MoveType = A
Physics = N
sprpriority = 2
velset = 0,0
ctrl = 0

[State 3211, erase foreground]
type = AssertSpecial
trigger1 = 1
flag = NoFg

[State 3211, background 1]
type = BgPalFx
trigger1 = time%2 = 0
time = 1
add = -255,-255,-255
ignorehitpause

[State 3211, background 2]
type = BgPalFx
trigger1 = time%2 != 0
time = 30
add = 255,255,255
ignorehitpause

[State 3211, velocity 1]
type = VelSet
trigger1 = AnimElem = 3
x = 2
y = -12

[State 3211, hit def 2]
type = HitDef
trigger1 = AnimElem = 3
attr = A, HA
hitflag = MAF
guardflag = MA
animtype = medium
air.animtype = medium
ground.type = low
air.type = low
priority = 5, Hit
damage = 39, 8
pausetime = 4, 2
guard.pausetime = 6, 6
sparkno = s4034
guard.sparkno = s4220
sparkxy = 0,-85
hitsound = s170, var(16)
guardsound = s130, var(16)
guard.slidetime = 6
guard.hittime = 5
guard.ctrltime = 5
ground.velocity = 0,-7
guard.velocity = -5
air.velocity = 0, -7
air.fall = 1
fall.recover = 0
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = -4
kill = 0
getpower = 0,0

[State 3211, slash 2]
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

[State 3211, enemy spark]
type = Explod
trigger1 = NumTarget > 0
trigger1 = MoveHit && !NumExplod(3080)
id = 3080
anim = 3080
pos = 0,(target,const(size.mid.pos.y))
postype = p2
bindtime = -1
ignorehitpause = 1
sprpriority = 3
ownpal = 1

[State 3211, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 3211, end state]
type = ChangeState
trigger1 = AnimElem = 4
value = 3212

; (3rd Hit)
;----------
[Statedef 3212]
Type = A
MoveType = A
Physics = N
sprpriority = 2
ctrl = 0

[State 3212, erase foreground]
type = AssertSpecial
trigger1 = 1
flag = NoFg

[State 3212, background 1]
type = BgPalFx
trigger1 = time%2 = 0
time = 1
add = -255,-255,-255
ignorehitpause

[State 3212, background 2]
type = BgPalFx
trigger1 = time%2 != 0
time = 30
add = 255,255,255
ignorehitpause

[state 3212, voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 50, 1
channel = 0

[State 3212, hit def 3]
type = HitDef
trigger1 = AnimElem = 4
attr = A, HA
hitflag = MAF
guardflag = MA
animtype = up
priority = 5, Hit
damage = 39, 8
pausetime = 4, 2
guard.pausetime = 6, 6
sparkno = s4034
guard.sparkno = s4220
sparkxy = 0,-85
hitsound = s170, var(16)
guardsound = s130, var(16)
guard.slidetime = 6
guard.hittime = 5
guard.ctrltime = 5
ground.velocity = 0,-7
guard.velocity = -5
air.velocity = 0, -7
air.fall = 1
fall.recover = 0
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = -4
kill = 0
getpower = 0,0

[State 3212, slash 3]
type = Explod
trigger1 = 1
anim = 9093
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1

[State 3212, enemy spark]
type = Explod
trigger1 = NumTarget > 0
trigger1 = MoveHit && !NumExplod(3080)
id = 3080
anim = 3080
pos = 0,(target,const(size.mid.pos.y))
postype = p2
bindtime = -1
ignorehitpause = 1
sprpriority = 3
ownpal = 1

[State 3212, after images]
type = AfterImage
trigger1 = AnimElem = 4
time = 16
lenght = 1
palbright = 0,0,0
palcontrast = 256, 256, 256
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 1,1,1
timegap = 1
framegap = 2
trans = add1

[State 3212, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 3212, end state]
type = ChangeState
trigger1 = AnimElem = 5
value = 3213

; (4th Hit)
;----------
[Statedef 3213]
Type = A
MoveType = A
Physics = N
sprpriority = 2
ctrl = 0

[State 3213, erase foreground]
type = AssertSpecial
trigger1 = 1
flag = NoFg

[State 3213, background 1]
type = BgPalFx
trigger1 = time%2 = 0
time = 1
add = -255,-255,-255
ignorehitpause

[State 3213, background 2]
type = BgPalFx
trigger1 = time%2 != 0
time = 30
add = 255,255,255
ignorehitpause

[State 3213, hit def 4]
type = HitDef
trigger1 = AnimElem = 6
attr = A, HA
hitflag = MAF
guardflag = MA
animtype = up
priority = 5, Hit
damage = 39, 8
pausetime = 4, 2
guard.pausetime = 6, 6
sparkno = s4034
guard.sparkno = s4220
sparkxy = 0,-85
hitsound = s170, var(16)
guardsound = s130, var(16)
guard.slidetime = 6
guard.hittime = 5
guard.ctrltime = 5
ground.velocity = 0,-7
guard.velocity = -5
air.velocity = 0, -7
air.fall = 1
fall.recover = 0
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = -4
kill = 0
getpower = 0,0

[State 3213, slash 3]
type = Explod
trigger1 = 1
anim = 9093
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1

[State 3213, enemy spark]
type = Explod
trigger1 = NumTarget > 0
trigger1 = MoveHit && !NumExplod(3080)
id = 3080
anim = 3080
pos = 0,(target,const(size.mid.pos.y))
postype = p2
bindtime = -1
ignorehitpause = 1
sprpriority = 3
ownpal = 1

[State 3213, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 3213, end state]
type = ChangeState
trigger1 = AnimElem = 7
value = 3214

; (5th Hit)
;----------
[Statedef 3214]
Type = A
MoveType = A
Physics = N
sprpriority = 2
ctrl = 0

[State 3214, background]
type = BgPalFx
trigger1 = time = 0
time = 52
add = -256,-44,-72
mul = 0,205,256
ignorehitpause = 1

[State 3214, velocity 2]
type = VelSet
trigger1 = AnimElem = 7
x = 0
y = -11

[State 3214, hit def 5]
type = HitDef
trigger1 = AnimElem = 7
attr = A, HA
hitflag = MAF
guardflag = MA
animtype = up
priority = 5, Hit
damage = 39, 8
pausetime = 4, 2
guard.pausetime = 6, 6
sparkno = s4034
guard.sparkno = s4220
sparkxy = 0,-85
hitsound = s170, var(16)
guardsound = s130, var(16)
guard.slidetime = 6
guard.hittime = 5
guard.ctrltime = 5
ground.velocity = 0,-7
guard.velocity = -5
air.velocity = 0, -7
air.fall = 1
fall.recover = 0
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = -4
kill = 0
getpower = 0,0

[State 3214, slash 3]
type = Explod
trigger1 = 1
anim = 9093
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1

[State 3214, enemy spark]
type = Explod
trigger1 = NumTarget > 0
trigger1 = MoveHit && !NumExplod(3080)
id = 3080
anim = 3080
pos = 0,(target,const(size.mid.pos.y))
postype = p2
bindtime = -1
ignorehitpause = 1
sprpriority = 3
ownpal = 1

[State 3214, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 3214, end state]
type = ChangeState
trigger1 = AnimElem = 8
value = 3215

; (6th Hit)
;----------
[Statedef 3215]
Type = A
MoveType = A
Physics = N
sprpriority = 2
ctrl = 0

[State 3215, hit def 6]
type = HitDef
trigger1 = AnimElem = 8
attr = A, HA
hitflag = MAF
guardflag = MA
animtype = up
priority = 5, Hit
damage = 39, 8
pausetime = 4, 2
guard.pausetime = 6, 6
sparkno = s4034
guard.sparkno = s4220
sparkxy = 0,-85
hitsound = s170, var(16)
guardsound = s130, var(16)
guard.slidetime = 6
guard.hittime = 5
guard.ctrltime = 5
ground.velocity = 0,-7
guard.velocity = -5
air.velocity = 0, -7
air.fall = 1
fall.recover = 0
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = -4
kill = 0
getpower = 0,0

[State 3215, slash 3]
type = Explod
trigger1 = 1
anim = 9093
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1

[State 3215, enemy spark]
type = Explod
trigger1 = NumTarget > 0
trigger1 = MoveHit && !NumExplod(3080)
id = 3080
anim = 3080
pos = 0,(target,const(size.mid.pos.y))
postype = p2
bindtime = -1
ignorehitpause = 1
sprpriority = 3
ownpal = 1

[State 3215, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 3215, end state]
type = ChangeState
trigger1 = AnimElem = 9
value = 3216

; (7th Hit)
;----------
[Statedef 3216]
Type = A
MoveType = A
Physics = N
sprpriority = 2
ctrl = 0

[State 3210, velocity 3]
type = VelSet
trigger1 = AnimElem = 10
y = -10

[State 3210, velocity 4]
type = VelSet
trigger1 = AnimElem = 14
y = -9

[State 3210, velocity 5]
type = VelAdd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 11
trigger3 = AnimElem = 13
trigger4 = AnimElem = 14, = 2
x = -1

[State 3210, velocity 6]
type = VelSet
trigger1 = AnimElem = 15
x = 0
y = 0

[State 3216, hit def 7]
type = HitDef
trigger1 = AnimElem = 9
attr = A, HA
hitflag = MAF
guardflag = MA
animtype = medium
air.animtype = medium
ground.type = low
air.type = low
priority = 5, Hit
damage = 39, 8
pausetime = 4, 2
guard.pausetime = 6, 6
sparkno = s4034
guard.sparkno = s4220
sparkxy = 0,-85
hitsound = s180, var(16)
guardsound = s150, var(15)
guard.slidetime = 6
guard.hittime = 5
guard.ctrltime = 5
ground.velocity = 0,-10
guard.velocity = -5
air.velocity = 0, -10
air.fall = 1
fall.recover = 0
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = -4
kill = 0
getpower = 0,0

[State 3216, slash 3]
type = Explod
trigger1 = Animelem = 13, < 0
anim = 9093
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1

[State 3216, slash 4]
type = Explod
trigger1 = Animelem = 13, >= 0
trigger1 = Animelem = 14, < 0
anim = 9094
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1

[State 3216, enemy spark]
type = Explod
trigger1 = NumTarget > 0
trigger1 = MoveHit && !NumExplod(3080)
id = 3080
anim = 3080
pos = 0,(target,const(size.mid.pos.y))
postype = p2
bindtime = -1
ignorehitpause = 1
sprpriority = 3
ownpal = 1

[State 3216, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 3216, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 3220

; Nubeki Kamui Shikite - Cape Twirl
;----------------------------------

[Statedef 3220]
Type = A
MoveType = A
Physics = A
anim = 3220
sprpriority = 2
ctrl = 0

[State 8341, background]
type = BgPalFx
trigger1 = time = 0
time = 33
add = -256,-44,-72
mul = 0,205,256
ignorehitpause = 1

[State 3220, velocity]
type = VelSet
trigger1 = 1
y = 0

[state 3220, cape sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 160, 0
channel = 1

[state 3220, spark sound enemy]
type = PlaySnd
trigger1 = AnimElem = 6
value = 160, 1
channel = 2

[State 3220, finish hit]
type = HitDef
trigger1 = AnimElem = 6
attr = A, HA
hitflag = MAF
guardflag = MA
animtype = back
priority = 5, Hit
damage = 39, 8
pausetime = 4, 4
guard.pausetime = 6, 6
sparkno = s4130
guard.sparkno = s4220
sparkxy = 0,-55
hitsound = s180, var(16)
guardsound = s150, var(15)
ground.slidetime = 5
ground.hittime = 32
guard.slidetime = 5
guard.hittime = 6
guard.ctrltime = 6
ground.velocity = -4,0
guard.velocity = -5
air.velocity = 0, 21
air.fall = 1
fall.recover = 0
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = -8
palfx.time = 40
palfx.sinadd = 255,255,0,3
getpower = 0,0

[State 3220, spark 1]
type = Explod
trigger1 = AnimElem = 3
ID = 3120
anim = 4130
pos = -48,-50
sprpriority = 3
ownpal = 1

[State 3220, spark 2]
type = Explod
trigger1 = AnimElem = 6
ID = 3120
anim = 4130
pos = 33,-99
sprpriority = 3
ownpal = 1

[State 3220, enemy spark]
type = Explod
trigger1 = NumTarget > 0
trigger1 = AnimElem = 6
id = 3080
anim = 3080
pos = 0,(target,const(size.mid.pos.y))
postype = p2
removetime = 40
bindtime = -1
ignorehitpause = 1
sprpriority = 3
ownpal = 1

[State 3220, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 3220, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 3230

; Nubeki Kamui Shikite - Jump Back
;---------------------------------

[Statedef 3230]
Type = A
MoveType = I
Physics = N
anim = 3230
sprpriority = 1
velset = -3,-9;-8.75
ctrl = 0

[State 3230, gravity]
type = VelAdd
trigger1 = 1
y = 0.55

[State 3230, background]
type = BgPalFx
trigger1 = time = 0
time = 85
add = -256,-44,-72
mul = 0,205,256
ignorehitpause = 1

[State 3230, Rera state var]
type = VarSet
trigger1 = time = 0
v = 1
value = 0

[State 3230, voice]
type = PlaySnd
trigger1 = time = 1
value = 50,2
channel = 0

[State 3230, end state]
type = ChangeState
trigger1 = time = 52
value = 3240

; Nubeki Kamui Shikite - Land
;----------------------------

[Statedef 3240]
Type = S
MoveType = I
Physics = S
anim = 3240
sprpriority = 1
ctrl = 0

[State 3240, velocity]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 3240, position]
type = PosSet
trigger1 = time = 0
y = 0

[State 3240, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Irusuka Emushi Newa Shikite
;----------------------------

; Prepare
;--------
[Statedef 3300]
Type = S
MoveType = A
Physics = S
anim = 3300
sprpriority = 2
velset = 0,0
ctrl = 0

[State 3300, end rage mode]
type = VarSet
trigger1 = time = 0
v = 20
value = 0

[State 3300, background]
type = BgPalFx
trigger1 = time = 0
time = 58
add = -256,-44,-72
mul = 0,205,256
ignorehitpause = 1

[State 3300, sparks]
type = Explod
trigger1 = AnimElem = 2
anim = 3302
pos = 0,0
postype = p1
sprpriority = 1
removeongethit = 0
ownpal = 1

[state 3300, voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 80, 0
channel = 0

[State 3300, super pause]
type = Superpause
trigger1 = AnimElem = 3
time = 35
anim = s4330
pos = 2, -55
sound = s190, 3
darken = 0

[State 3300, cape]
type = Explod
trigger1 = AnimElem = 5
anim = 3301
pos = 0,0
postype = p1
sprpriority = 2
removeongethit = 0
ownpal = 1

[state 3300, cape sound]
type = PlaySnd
trigger1 = AnimElem = 3, = 1
value = 160, 0
channel = 1

[state 3300, sparks sound]
type = PlaySnd
trigger1 = AnimElem = 3, = 1
value = 160, 1
channel = 2

[State 3300, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 3310

; Dash
;-----
[Statedef 3310]
Type = S
MoveType = A
Physics = N
anim = 3310
sprpriority = 2
velset = 10,0
ctrl = 0

[State 3310, background]
type = BgPalFx
trigger1 = time < 16
time = 1
add = -256,-44,-72
mul = 0,205,256
ignorehitpause = 1

[State 3310, run sound]
type = PlaySnd
trigger1 = time = 0
value = 100, 3
channel = 1

[State 3310, hit def]
type = HitDef
trigger1 = 1
attr = S, HA
hitflag = M
guardflag = MA
priority = 5, Hit
damage = 0, 0
pausetime = 0, 0
guard.pausetime = 6,6
sparkno = -1
guard.sparkno = -1
hitsound = s180, var(16)
guardsound = s150, var(15)
ground.slidetime = 0
ground.hittime = 60
ground.ctrltime = 60
ground.velocity = 0,0
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
guard.velocity = -9
ground.cornerpush.veloff = 0
P1StateNo = 3320
P2StateNo = 3350
p2facing = 1
forcestand = 1

[State 3310, move guarded]
type = ChangeState
trigger1 = MoveGuarded
value = 3315

[State 3310, end state]
type = ChangeState
trigger1 = time = 16
value = 3311

; Brake
;------
[Statedef 3311]
Type = S
MoveType = I
Physics = S
anim = 101
sprpriority = 2
velset = 4,0
ctrl = 0

[State 3311, background]
type = BgPalFx
trigger1 = time < 15
time = 1
add = -256,-44,-72
mul = 0,205,256
ignorehitpause = 1

[State 3311, dust 01]
type = MakeDust
trigger1 = vel x > 0
pos = 0, 0
spacing = 3

[State 3311, dust 02]
type = MakeDust
trigger1 = vel x > 0
pos = 55, 0
spacing = 3

[State 3311, brake sound]
type = PlaySnd
trigger1 = time = 1
value = 100, 4
channel = 1

[State 3311, end state]
type = ChangeState
trigger1 = time = 16
value = 0
ctrl = 1

; Retreat
;--------
[Statedef 3315]
Type = A
MoveType = I
Physics = A
anim = 3315
sprpriority = 2
velset = -13.5,-4
ctrl = 0

[State 3315, background]
type = BgPalFx
trigger1 = time < 16
time = 1
add = -256,-44,-72
mul = 0,205,256
ignorehitpause = 1

[State 3315, gravity]
type = VelAdd
trigger1 = 1
y = -0.15

[State 3315, jump sound]
type = PlaySnd
trigger1 = Time = 1
value = 100, 1
channel = 1

; Hop Back
;---------
[Statedef 3320]
Type = A
MoveType = I
Physics = N
sprpriority = 2
velset = 0,0
ctrl = 0

[State 3320, move hit background]
type = envcolor
trigger1 = time = 0
background = 1
value = 255,0,0
time = 2

[State 3320, animation]
type = ChangeAnim
trigger1 = time <= 18
value = 3320

[State 3320, position]
type = PosSet
trigger1 = time = 0
y = -8

[State 3320, target position]
type = TargetBind
trigger1 = time = 0
trigger1 = NumTarget > 0
pos = 3,8

[State 3320, camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 3320, background]
type = BgPalFx
trigger1 = time = 0
time = 36
add = -256,-44,-72
mul = 0,205,256
ignorehitpause = 1

[state 3320, voice]
type = PlaySnd
trigger1 = time = 0
value = 0, var(18)
channel = 0

[State 3320, jump velocity]
type = VelSet
trigger1 = time = 18 && facing = 1
x = -1*(pos x + 104)/18
y = -1.5

[State 3320, jump velocity]
type = VelSet
trigger1 = time = 18 && facing = -1
x = (pos x - 104)/18
y = -1.5

[State 3320, gravity]
type = VelAdd
trigger1 = time > 18
y = 0.2

[State 3320, stop running sound]
type = StopSnd
trigger1 = Time = 0
channel = 1

[State 3320, jump sound]
type = PlaySnd
trigger1 = Time = 19
value = 100, 1
channel = 1

[State 3320, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 3321

; Land
;------
[Statedef 3321]
Type = S
MoveType = I
Physics = N
anim = 3321
sprpriority = 2
velset = 0,0
ctrl = 0

[State 3321, position]
type = PosSet
trigger1 = time = 0
y = 0

[State 3321, camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 3321, background]
type = BgPalFx
trigger1 = time = 0
time = 16
add = -256,-44,-72
mul = 0,205,256
ignorehitpause = 1

[State 3321, land sound]
type = PlaySnd
trigger1 = Time = 0
value = 100, 2
channel = 1

[State 3321, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 3322

; Ground Kicks
;-------------
[Statedef 3322]
Type = S
MoveType = I
Physics = N
anim = 3322
sprpriority = 2
velset = 7,0
ctrl = 0

[State 3322, camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 3322, background]
type = BgPalFx
trigger1 = time = 0
time = 105
add = -256,-44,-72
mul = 0,205,256
ignorehitpause = 1

[State 3322, stop velocity]
type = VelSet
trigger1 = time = 6
x = 0

[state 3322, add pos]
type = PosAdd
trigger1 = AnimElem = 30
x = 2

[state 3322, add pos]
type = PosAdd
trigger1 = AnimElem = 31
x = 25

[State 3322, dash attack spark]
type = Explod
trigger1 = time = 6
anim = 4100
pos = 50,-50
ontop = 1
ownpal = 1
removeongethit = 0

[State 3322, 1st kick hit spark]
type = Explod
trigger1 = AnimElem = 6
anim = 4100
pos = 90,-70
ontop = 1
ownpal = 1
removeongethit = 0

[State 3322, 2nd kick hit spark]
type = Explod
trigger1 = AnimElem = 16
anim = 4100
pos = 60,-5
ontop = 1
ownpal = 1
removeongethit = 0

[State 3322, 3rd kick hit spark]
type = Explod
trigger1 = AnimElem = 21
anim = 4110
pos = 90,-45
ontop = 1
ownpal = 1
removeongethit = 0

[State 3322, 4th kick hit spark]
type = Explod
trigger1 = AnimElem = 31
anim = 4110
pos = 50,-65
ontop = 1
ownpal = 1
removeongethit = 0

[state 3322, voice]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 31
value = 0, var(18)
channel = 0

[state 3322, hit randomizer]
type = VarRandom
trigger1 = time = 6
trigger2 = AnimElem = 6
trigger3 = AnimElem = 16
trigger4 = AnimElem = 21
trigger5 = AnimElem = 31
v = 15
range = 0,4

[State 3322, hit sounds]
type = PlaySnd
trigger1 = time = 6
trigger2 = AnimElem = 6
trigger3 = AnimElem = 16
trigger4 = AnimElem = 21
trigger5 = AnimElem = 31
value = 150, var(15)
channel = 1

[State 3322, enemy]
type = TargetState
triggerall = NumTarget > 0
trigger1 = time = 6
trigger2 = AnimElem = 6
trigger3 = AnimElem = 16
trigger4 = AnimElem = 21
trigger5 = AnimElem = 31
value = 3350 + 1*(time = 6) + 2*(AnimElem = 6) + 3*(AnimElem = 16) + 4*(AnimElem = 21) + 2*(AnimElem = 31)

[State 3222, move hit background]
type = envcolor
trigger1 = time = 6
trigger2 = AnimElem = 6
trigger3 = AnimElem = 16
trigger4 = AnimElem = 21
trigger5 = AnimElem = 31
background = 1
value = 255,0,0
time = 2

[state 3222, hit add]
type = HitAdd
trigger1 = time = 6
trigger2 = AnimElem = 6
trigger3 = AnimElem = 16
trigger4 = AnimElem = 21
trigger5 = AnimElem = 31
value = 1

[State 3322, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 3323

; Air Kick
;---------
[Statedef 3323]
Type = A
MoveType = I
Physics = N
anim = 3323
sprpriority = 2
velset = 0,0
ctrl = 0

[State 3323, camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 3323, background]
type = BgPalFx
trigger1 = time = 0
time = 37
add = -256,-44,-72
mul = 0,205,256
ignorehitpause = 1

[state 3323, add pos 1]
type = PosAdd
trigger1 = AnimElem = 1, = 0
x = 6
y = -18

[state 3323, add pos 2]
type = PosAdd
trigger1 = AnimElem = 1, = 1
x = 2
y = -4

[state 3323, add pos 2]
type = PosAdd
trigger1 = AnimElem = 2
x = -9
y = 2

[State 3323, jump back]
type = VelSet
trigger1 = AnimElem = 2
x = -1
y = -6

[State 3323, gravity]
type = VelAdd
trigger1 = time > 2
y = 0.38

[State 3323, air kick hit spark]
type = Explod
trigger1 = AnimElem = 1
anim = 4110
pos = 35,-75
ontop = 1
ownpal = 1
removeongethit = 0

[State 3323, hit sounds]
type = PlaySnd
trigger1 = AnimElem = 1
value = 150, var(15)
channel = 1

[State 3323, enemy]
type = TargetState
triggerall = NumTarget > 0
trigger1 = AnimElem = 1
value = 3355

[State 3223, move hit background]
type = envcolor
trigger1 = AnimElem = 1
background = 1
value = 255,0,0
time = 2

[state 3223, hit add]
type = HitAdd
trigger1 = AnimElem = 1
value = 1

[State 3323, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 3324

; Land & Prepare Air Slash
;-------------------------
[Statedef 3324]
Type = S
MoveType = I
Physics = N
anim = 3324
sprpriority = 2
velset = 0,0
ctrl = 0

[State 3324, camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 3324, background]
type = BgPalFx
trigger1 = time = 0
time = 22
add = -256,-44,-72
mul = 0,205,256
ignorehitpause = 1

[state 3324, position]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 3324, land sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 100, 2
channel = 1

[State 3324, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 3325

; Air Slash
;----------
[Statedef 3325]
Type = A
MoveType = I
Physics = N
anim = 3325
sprpriority = 2
velset = 0,-11.875
ctrl = 0

[State 3325, camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 3325, background]
type = BgPalFx
trigger1 = time = 0
time = 41
add = -256,-44,-72
mul = 0,205,256
ignorehitpause = 1

[state 3325, gravity]
type = VelAdd
trigger1 = 1
y = 0.56

[State 3325, slash 1]
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

[State 3325, slash 2]
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

[State 3325, slash 3]
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

[State 3325, slash 4]
type = Explod
trigger1 = Animelem = 8, >= 2
trigger1 = Animelem = 8, < 4
anim = 9094
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1
pausemovetime = 30

[State 3325, air slash hit spark]
type = Explod
trigger1 = AnimElem = 7
anim = 4022
pos = 55,-75
ontop = 1
ownpal = 1
removeongethit = 0

[state 3325, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 80, 1
channel = 0

[State 3325, jump sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 100, 1
channel = 1

[state 3325, slash sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 110, 2
channel = 1

[State 3325, hit sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 170, var(16)
channel = 2

[State 3325, enemy]
type = TargetState
triggerall = NumTarget > 0
trigger1 = AnimElem = 7
value = 3355

[State 3225, move hit background]
type = envcolor
trigger1 = AnimElem = 7
background = 1
value = 255,0,0
time = 2

[state 3225, hit add]
type = HitAdd
trigger1 = AnimElem = 7
value = 1

[State 3325, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 3326

; Land
;-----
[Statedef 3326]
Type = S
MoveType = I
Physics = N
anim = 3326
sprpriority = 2
velset = 0,0
ctrl = 0

[State 3326, camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 3326, background]
type = BgPalFx
trigger1 = time = 0
time = 9
add = -256,-44,-72
mul = 0,205,256
ignorehitpause = 1

[state 3326, position]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 3326, land sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 100, 2
channel = 1

[State 3326, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 3327

; Hop Back
;---------
[Statedef 3327]
Type = A
MoveType = I
Physics = N
anim = 3327
sprpriority = 2
velset = -9.2,-3
ctrl = 0

[State 3327, camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 3327, background]
type = BgPalFx
trigger1 = time = 0
time = 16
add = -256,-44,-72
mul = 0,205,256
ignorehitpause = 1

[State 3327, jump sound]
type = PlaySnd
trigger1 = time = 0
value = 100, 1
channel = 1

[State 3327, gravity]
type = VelAdd
trigger1 = 1
y = 0.35

[State 3327, jump sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 100, 1
channel = 1

[State 3327, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 3328

; Land
;-----
[Statedef 3328]
Type = S
MoveType = I
Physics = N
anim = 3328
sprpriority = 2
velset = 0,0
ctrl = 0

[State 3328, camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 3328, background]
type = BgPalFx
trigger1 = time = 0
time = 45
add = -256,-44,-72
mul = 0,205,256
ignorehitpause = 1

[state 3328, position]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 3328, land sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 100, 2
channel = 1

[State 3328, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 3329

; Final Attack
;-------------
[Statedef 3329]
Type = A
MoveType = I
Physics = N
anim = 3329
sprpriority = 2
velset = 15.5,-8.5
ctrl = 0

[State 3329, camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 3329, background]
type = BgPalFx
trigger1 = time = 0
time = 114
add = -256,-44,-72
mul = 0,205,256
ignorehitpause = 1

[State 3329, stop vel]
type = VelSet
trigger1 = time = 5
x = 0
y = 0

[State 3329, vel]
type = VelSet
trigger1 = time = 14
x = 15.5
y = -8.5

[State 3329, X spark]
type = Explod
trigger1 = time = 14
ID = 3335
anim = 3335
postype = P1
pos = 50,-42
sprpriority = 1
ownpal = 1

[State 3329, air slash hit spark]
type = Explod
trigger1 = time = 14
anim = 4022
pos = 67,-70
ontop = 1
ownpal = 1
removeongethit = 0

[state 3300, voice]
type = PlaySnd
trigger1 = time = 0
value = 40, 6
channel = 0

[state 3329, slash sound]
type = PlaySnd
trigger1 = time = 0
value = 160, 2
channel = 1

[state 3329, hit sound]
type = PlaySnd
trigger1 = time = 5
value = 170, 0
channel = 2

[State 3329, enemy]
type = TargetState
triggerall = NumTarget > 0
trigger1 = time = 5
value = 3356

[State 3229, move hit background]
type = envcolor
trigger1 = time = 5
background = 1
value = 255,0,0
time = 2

[state 3229, hit add]
type = HitAdd
trigger1 = time = 5
value = 1

[State 3329, end state]
type = ChangeState
trigger1 = time = 114
value = 3330

; Air
;----
[Statedef 3330]
Type = A
MoveType = I
Physics = N
anim = 3330
sprpriority = 2
velset = 0,11
ctrl = 0

[State 3330, camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 3330, background]
type = BgPalFx
trigger1 = time = 0
time = 22
add = -256,-44,-72
mul = 0,205,256
ignorehitpause = 1

[State 3330, position]
type = PosSet
trigger1 = time = 0
x = 0
y = -242

[State 3330, ending var]
type = VarSet
trigger1 = time = 0
v = 10
value = ifelse((random < 500), 1, 2)

[State 3330, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 3331

; Land
;-----
[Statedef 3331]
Type = S
MoveType = I
Physics = N
anim = 3331
sprpriority = 2
velset = 0,0
ctrl = 0

[State 3331, camera]
type = ScreenBound
trigger1 = 1
value = 1

[State 3331, background]
type = BgPalFx
trigger1 = time = 0
time = 29
add = -256,-44,-72
mul = 0,205,256
ignorehitpause = 1

[state 3331, position]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 3331, land sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 100, 2
channel = 1

[State 3331, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; 1st Ending
;-----------
[Statedef 3340]
Type = S
MoveType = I
Physics = N
anim = 3340
sprpriority = 2
velset = 0,0
ctrl = 0

[State 3340, ending flag]
type = AssertSpecial
trigger1 = time = [0,180]
flag = roundnotover

[State 3340, weapon sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 100, 7
channel = 1

[state 3340, voice]
type = PlaySnd
trigger1 = AnimElem = 18
value = 30, 9
channel = 0

; 2nd Ending
;-----------
[Statedef 3341]
Type = S
MoveType = I
Physics = N
anim = 3341
sprpriority = 0
velset = 0,0
ctrl = 0

[State 3341, ending flag]
type = AssertSpecial
trigger1 = time = [0,200]
flag = roundnotover

[State 3340, sprite priority]
type = SprPriority
trigger1 = AnimElem = 2
value = 2

[state 3340, voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 30, 10
channel = 0

; Enemy 1st Hit
;--------------
[Statedef 3350]
Type = S
MoveType = H
Physics = N
sprpriority = -1
velset = 0,0
ctrl = 0

[State 3350, camera]
type = ScreenBound
trigger1 = 1

[State 3350, animation]
type = ChangeAnim2
trigger1 = time = 0
value = 3350

[State 3350, slide forward velocity]
type = VelSet
triggerall = time > 18
trigger1 = facing = -1 && pos x > -8
trigger2 = facing = 1  && pos x < 8
x = 6

[State 3350, slide back velocity]
type = VelSet
triggerall = time > 18
trigger1 = facing = -1 && pos x < -8
trigger2 = facing = 1  && pos x > 8
x = -6

[State 3350, stop velocity]
type = VelSet
triggerall = time > 18
trigger1 = pos x = [-8, 8]
x = 0

[State 3350, position]
type = PosSet
triggerall = time > 18
trigger1 = pos x = [-8, 8]
x = 0

[State 3350, end state]
type = SelfState
trigger1 = time = 60
value = 0
ctrl = 1

; Enemy 2nd Hit
;--------------
[Statedef 3351]
Type = S
MoveType = H
Physics = N
sprpriority = -1
velset = 0,0
ctrl = 0

[State 3351, camera]
type = ScreenBound
trigger1 = 1

[State 3351, hit animation]
type = ChangeAnim
trigger1 = time < 4
value = 5012

[State 3351, recover animation]
type = ChangeAnim
trigger1 = time = 4
value = 5017

[State 3351, end state]
type = SelfState
trigger1 = time = 60
value = 0
ctrl = 1

; Enemy 3rd Hit
;--------------
[Statedef 3352]
Type = S
MoveType = H
Physics = N
sprpriority = -1
velset = 0,0
ctrl = 0

[State 3352, camera]
type = ScreenBound
trigger1 = 1

[State 3352, hit animation]
type = ChangeAnim
trigger1 = time < 6
value = 5002

[State 3352, recover animation]
type = ChangeAnim
trigger1 = time = 6
value = 5007

[State 3352, end state]
type = SelfState
trigger1 = time = 60
value = 0
ctrl = 1

; Enemy 4th Hit
;--------------
[Statedef 3353]
Type = S
MoveType = H
Physics = N
sprpriority = -1
velset = 0,0
ctrl = 0

[State 3353, camera]
type = ScreenBound
trigger1 = 1

[State 3353, hit animation]
type = ChangeAnim
trigger1 = time < 8
value = 5010

[State 3353, recover animation]
type = ChangeAnim
trigger1 = time = 8
value = 5015

[State 3353, end state]
type = SelfState
trigger1 = time = 60
value = 0
ctrl = 1

; Enemy 5th Hit
;--------------
[Statedef 3354]
Type = S
MoveType = H
Physics = N
sprpriority = -1
velset = 0,0
ctrl = 0

[State 3354, camera]
type = ScreenBound
trigger1 = 1

[State 3354, hit animation]
type = ChangeAnim
trigger1 = time < 6
value = 5012

[State 3354, recover animation]
type = ChangeAnim
trigger1 = time = 6
value = 5017

[State 3354, end state]
type = SelfState
trigger1 = time = 60
value = 0
ctrl = 1

; Enemy 6th Hit
;--------------
[Statedef 3355]
Type = A
MoveType = H
Physics = N
sprpriority = -1
velset = 0,0
ctrl = 0

[State 3355, camera]
type = ScreenBound
trigger1 = 1

[State 3355, hit animation]
type = ChangeAnim
trigger1 = time < 2
value = 5030

[State 3355, fall animation]
type = ChangeAnim
trigger1 = time = 2
value = 5050

[State 3355, pos add]
type = null;PosAdd
trigger1 = time = 0
y = -26

[State 3355, velocity]
type = VelSet
trigger1 = time = 2
y = -6

[State 3355, gravity]
type = VelAdd
trigger1 = time > 2
y = 0.125

; Enemy Last Hit
;---------------
[Statedef 3356]
Type = A
MoveType = H
Physics = N
sprpriority = -1
velset = 0,0
ctrl = 0

[State 3356, camera]
type = ScreenBound
trigger1 = 1

[State 3356, hit animation]
type = ChangeAnim
trigger1 = time < 9
value = 5030

[State 3356, velocity]
type = VelSet
trigger1 = time = 9
x = -2
y = -3

[State 3356, fall animation]
type = ChangeAnim
triggerall = !SelfAnimExist(5600)
trigger1 = time = 9
value = 5050

[State 3356, custom fall animation]
type = ChangeAnim
triggerall = SelfAnimExist(5600)
trigger1 = time = 9
value = 5600

[State 3356, custom hit ground animation]
type = ChangeAnim
triggerall = SelfAnimExist(5600)
trigger1 = vel y > 0
trigger1 = pos y >= -ceil(vel y)
value = 5602

[State 3356, body]
type = Helper
triggerall = SelfAnimExist(5600)
trigger1 = time = 46
name = "Rera's body"
ID = 5601
stateno = 3358
ownpal = 1
ignorehitpause = 1

[State 3356, custom velocity]
type = VelSet
triggerall = SelfAnimExist(5600)
trigger1 = time = 46
x = -2.5

[State 3356, gravity]
type = VelAdd
trigger1 = time > 9
y = 0.1

[State 3356, life]
type = LifeSet
trigger1 = time = 9
value = 0

[State 3356, end state]
type = SelfState
triggerall = !SelfAnimExist(5600)
trigger1 = vel y > 0
trigger1 = pos y >= -ceil(vel y)
value = 5100

[State 3356, end state]
type = SelfState
triggerall = SelfAnimExist(5600)
trigger1 = vel y > 0
trigger1 = pos y >= -ceil(vel y)
value = 5150

; Body
;-----
[Statedef 3358] ; Air
Type = A
MoveType = H
Physics = N
anim = 5601
sprpriority = -1
velset = -1.75,1.625
ctrl = 0

[State 3358, gravity]
type = VelAdd
trigger1 = time > 0
y = 0.125

[State 3358, bounce state]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= 20
value = 3359

[Statedef 3359] ; Bounce
Type = A
MoveType = H
Physics = N
anim = 5603
sprpriority = -1
velset = -1.75,-2.5
ctrl = 0

[State 3359, gravity]
type = VelAdd
trigger1 = time > 0
y = 0.125

[State 3359, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 3359, 8]
type = GameMakeAnim
trigger1 = Time = 0
value = 61
pos = 0, -20
under = 1

[State 3359, 10]
type = PlaySnd
trigger1 = Time = 0
value = F7, 1

[State 3359, self destroy]
type = DestroySelf
trigger1 = AnimTime = 0



; Mu no Kyouchi
;--------------

; Rera
;-----
[Statedef 3500]
Type = S
MoveType = I
Physics = S
anim = 3500
sprpriority = 2
velset = 0,0
ctrl = 0

[State 3500, erase foreground]
type = AssertSpecial
trigger1 = time = [9,103)
flag = NoFg

[State 3500, dark background]
type = envcolor
trigger1 = time = 9
value = 0,0,0
time = 94
under = 1

[State 3500, super pause]
type = Superpause
trigger1 = time = 11
time = 92
anim = -1
sound = s190, 1
darken = 0
movetime = 92

[State 3500, super spark]
type = Explod
trigger1 = time = 11
ID = 4300
anim = 4300
postype = p1
pos = 0,-62
sprpriority = 3
ownpal = 1
supermovetime = 12

[State 3500, portrait]
type = Explod
trigger1 = time = 11
ID = 3550
anim = 3550
postype = back
pos = 0,45
sprpriority = 4
ownpal = 1
supermovetime = 99

[State 3500, voice]
type = PlaySnd
trigger1 = time = 11
value = 61,0
channel = 0

[State 3500, eye spark]
type = Explod
trigger1 = time = 64
ID = 3551
anim = 3551
postype = back
pos = 0,93
sprpriority = 5
ownpal = 1
supermovetime = 92

[State 3500, initialize Mu no Kyouchi mode]
type = VarSet
trigger1 = time = 11
v = 25
value = 1

[State 3500, initialize Mu no Kyouchi timer]
type = VarSet
trigger1 = time = 11
v = 26
value = 1000

[State 3500, stop Rage mode]
type = VarSet
trigger1 = time = 11
v = 21
value = 0

[State 3500, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Super Slash
;------------

; (Dash)
;-------
[Statedef 3600]
Type = S
MoveType = A
Physics = N
anim = 3600
sprpriority = 2
velset = 12.5,0
ctrl = 0

[State 3600, ghost]
type = PlayerPush
trigger1 = 1
value = 0

[State 3600, background]
type = envcolor
trigger1 = 1
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1

[State 3600, erase foreground]
type = AssertSpecial
trigger1 = 1
flag = NoFg
ignorehitpause = 1

[state 3600, voice]
type = PlaySnd
trigger1 = time = 0
value = 40, 3
channel = 0

[State 3600, dust]
type = Explod
trigger1 = time = 0
ID = 3600
anim = 3601
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
bindtime = 42
removetime = 42
ignorehitpause = 1
removeongethit = 1
pausemovetime = 42

[State 3600, hit def]
type = HitDef
trigger1 = 1
attr = S, HA
hitflag = M
guardflag = MA
priority = 5, Hit
damage = 0, 0
pausetime = 0, 0
guard.pausetime = 6,6
sparkno = -1
guard.sparkno = -1
hitsound = 0, 0
guardsound = s130, var(16)
guard.slidetime = 0
guard.hittime = 35
guard.ctrltime = 35
guard.velocity = 0
p2facing = 1
P1StateNo = 3610
P2StateNo = 3650

[State 3600, move guarded state]
type = ChangeState
trigger1 = MoveGuarded
value = 3605

[State 3600, end Mu no Kyouchi mode]
type = VarSet
trigger1 = time = 42
v = 26
value = 0
ignorehitpause = 1

[State 3600, end state]
type = ChangeState
trigger1 = time = 42
value = 0
ctrl = 1

; (Move Guarded)
;---------------
[Statedef 3605]
Type = A
MoveType = I
Physics = A
anim = 3605
sprpriority = 1
velset = -9,-5.5
ctrl = 0

[State 3605, black background]
type = envcolor
trigger1 = time = 0
value = 0,0,0
time = 17
under = 1

[State 3605, erase foreground]
type = AssertSpecial
trigger1 = time = [0, 17)
flag = NoFg

[State 3605, remove dust]
type = RemoveExplod
trigger1 = time = 0
ID = 3600

[State 3605, end Mu no Kyouchi mode]
type = VarSet
trigger1 = time = 0
v = 26
value = 0
ignorehitpause = 1

[State 3605, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 3606

; (Land)
;-------
[Statedef 3606]
Type = S
MoveType = I
Physics = S
anim = 47
sprpriority = 1
ctrl = 0

[State 3606, velocity]
type = VelSet
trigger1 = time = 0
y = 0

[State 3606, position]
type = PosSet
trigger1 = time = 0
y = 0

[State 3606, land sound]
type = PlaySnd
trigger1 = Time = 0
value = 100, 2
channel = 1

[State 3606, black background]
type = envcolor
trigger1 = time = 0
value = 0,0,0
time = 6
under = 1

[State 3606, erase foreground]
type = AssertSpecial
trigger1 = time = [0, 6)
flag = NoFg

[State 3606, end state]
type = ChangeState
trigger1 = time = 6
value = 0
ctrl = 1

; (Slash)
;--------
[Statedef 3610]
Type = S
MoveType = A
Physics = N
sprpriority = 2
velset = 12,0
ctrl = 0

[State 3610, end Mu no Kyouchi mode]
type = VarSet
trigger1 = time = 0
v = 26
value = 0
ignorehitpause = 1

[State 3610, invincibility]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3610, ghost]
type = PlayerPush
trigger1 = 1
value = 0

[State 3610, no foreground]
type = AssertSpecial
trigger1 = time = [0, 150)
flag = NoFg

[State 3610, remove dust]
type = RemoveExplod
trigger1 = time = 4
ID = 3600

[State 3610, animation]
type = ChangeAnim
trigger1 = time = 4
value = 3610

[State 3610, start velocity]
type = VelSet
trigger1 = time = 4
x = 6

[State 3610, reduce velocity]
type = VelAdd
trigger1 = time = 10
trigger2 = time = 14
trigger3 = time = 18
x = -0.5

[State 3610, stop velocity]
type = VelSet
trigger1 = time = 22
x = 0

[State 3610, slash 1]
type = Explod
triggerall = anim = 3610
trigger1 = Animelem = 1, >= 0
trigger1 = Animelem = 2, < 0
anim = 9035
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1

[State 3610, slash 2]
type = Explod
triggerall = anim = 3610
trigger1 = Animelem = 2, >= 0
trigger1 = Animelem = 3, < 0
anim = 9036
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1

[State 3610, slash 3]
type = Explod
triggerall = anim = 3610
trigger1 = Animelem = 3, >= 0
trigger1 = Animelem = 3, < 3
anim = 9037
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1

[State 3610, slash 4]
type = Explod
triggerall = anim = 3610
trigger1 = Animelem = 3, >= 3
trigger1 = Animelem = 4, < 0
anim = 9038
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1

[State 3610, slash 5]
type = Explod
triggerall = anim = 3610
trigger1 = Animelem = 4, >= 0
trigger1 = Animelem = 4, < 3
anim = 9039
postype = p1
pos = 0,0
sprpriority = 3
ownpal = 1
ignorehitpause = 1
removeongethit = 1

[State 3610, hit slash]
type = Explod
trigger1 = NumTarget > 0
trigger1 = time = 4
anim = 3611
postype = p2
pos = 0,target, const(size.head.pos.y) + 5
sprpriority = 4
ownpal = 1
removeongethit = 1

[State 3610, ray]
type = Explod
trigger1 = NumTarget > 0
trigger1 = time = 4
anim = 3612
postype = p2
pos = 0,target, const(size.head.pos.y) + 5
sprpriority = 3
ownpal = 1
facing = -1
removeongethit = 1

[State 3610, upper text]
type = Explod
trigger1 = time = 4
anim = 3614
postype = left
pos = 160,129
sprpriority = 5
ownpal = 1
facing = 1
bindtime = 60
removeongethit = 1

[State 3610, lower text]
type = Explod
trigger1 = time = 4
anim = 3615
postype = left
pos = 160,129
sprpriority = 5
ownpal = 1
facing = 1
bindtime = 60
removeongethit = 1

[State 3610, background]
type = Explod
trigger1 = time = 18
anim = 3613
postype = p1
pos = 0,0
sprpriority = -5
ownpal = 1
removeongethit = 1

[State 3610, head blood]
type = Explod
trigger1 = NumTarget > 0
trigger1 = time = 64
anim = 4050
postype = p2
pos = 0,target, const(size.head.pos.y) + 5
sprpriority = 3
ownpal = 1
facing = 1
removeongethit = 1

[State 3610, chest blood]
type = Explod
trigger1 = NumTarget > 0
trigger1 = time = 82
anim = 4052
postype = p2
pos = 0,target, const(size.mid.pos.y) - 5
sprpriority = 3
ownpal = 1
facing = 1
removeongethit = 1

[State 3610, background start - white]
type = envcolor
trigger1 = time = 0
value = 255,255,255
time = 18
under = 1

[State 3610, background middle - yellow]
type = envcolor
trigger1 = time = 18
value = 248,248,144
time = 50
under = 1

[State 3610, background end - white]
type = envcolor
trigger1 = time = 68
value = 255,255,255
time = 82
under = 1

[state 3610, slash sound]
type = PlaySnd
trigger1 = time = 4
value = 110, 2
channel = 1

[state 3610, hit sound]
type = PlaySnd
trigger1 = time = 4
value = 170, 0
channel = 2

[state 3610, voice]
type = PlaySnd
trigger1 = time = 22
value = 30, 3
channel = 0

[state 3610, blood sound]
type = PlaySnd
trigger1 = time = 64
value = 195, 2
channel = 2

[State 3610, target life]
type = TargetLifeAdd
trigger1 = NumTarget > 0
trigger1 = time = 82
value = -400
absolute = 1

[State 3610, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; (Enemy Hit)
;------------
[Statedef 3650]
Type = S
MoveType = H
Physics = S
sprpriority = -1
velset = 0,0
ctrl = 0

[State 3650, animation]
type = ChangeAnim2
trigger1 = time = 0
value = 3650

[State 3650, position]
type = PosSet
trigger1 = time = 0
y = 0

[State 3650, end state]
type = ChangeState
trigger1 = time = 90
value = 3651

; (Fall)
;-------
[Statedef 3651]
Type = S
MoveType = H
Physics = N
sprpriority = -1
ctrl = 0

[State 3651, invincibility]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3651, collapsing animation]
type = ChangeAnim
trigger1 = SelfAnimExist(5330)
trigger1 = time = 0
value = 5330

[state 3651, knock ground sound]
type = PlaySnd
trigger1 = anim = 3615 && animelem = 7
value = F7, 2
channel = 1

[State 3651, ground shockwave]
type = Explod
trigger1 = anim = 3615 && animelem = 7
anim = 4110
pos = 0, 0
ontop = 1
ownpal = 1

[State 3651, lie down state]
type = ChangeState
trigger1 = AnimTime = 0
value = 3652

; (Lie Down)
;-----------
[Statedef 3652]
Type = L
MoveType = H
sprpriority = -1
ctrl = 0

[State 3652, lying down animation]
type = ChangeAnim
trigger1 = time = 0
value = 5110 + 2*(SelfAnimExist(5330))

[State 3652, dead state]
type = SelfState
trigger1 = !alive
value = 5150

[State 3652, get up state]
type = SelfState
trigger1 = time = 70
value = 5120
