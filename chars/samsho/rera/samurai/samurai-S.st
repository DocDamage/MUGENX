;==============================================================================================
;
; RERA'S SPECIAL ATTACKS
;
;==============================================================================================

; Kamui Risse (cape twirl) x1
;----------------------------

[Statedef 1000]
Type = S
MoveType = A
Physics = N
anim = 1000
sprpriority = 2
velset = 0,0
ctrl = 0
juggle = 10

[State 1000, velocity 1]
type = VelSet
trigger1 = time = 8
x = 1

[State 1000, velocity 2]
type = VelSet
trigger1 = time = 16
x = 0.75

[State 1000, velocity 3]
type = VelSet
trigger1 = time = 24
x = 0.5

[State 1000, velocity 4]
type = VelSet
trigger1 = time = 32
x = 0.25

[State 1000, stop velocity]
type = VelSet
trigger1 = time = 40
x = 0.0

[State 1000, invincibility]
type = NotHitBy
trigger1 = AnimElem = 6, >= 0
trigger1 = AnimElem = 8, < 0
value = SCA, NP, SP, HP

[State 1000, cape]
type = Helper
trigger1 = AnimElem = 6
name = "cape"
ID = 1060
stateno = 1060
ownpal = 1
ignorehitpause = 1

[state 1000, voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, 0
channel = 0

[state 1000, cape sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 160, 0
channel = 1

[state 1000, sparks sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 160, 1
channel = 2

[State 1000, hit def]
type = HitDef
trigger1 = !MoveContact
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = hard
priority = 4, Hit
damage = 12 + 20*var(20), 8
pausetime = 4, 4
guard.pausetime = 6, 6
sparkno = s4130
guard.sparkno = s4220
sparkxy = 0,-55 + 20*(AnimElem = 7)
hitsound = s180, var(16)
guardsound = s150, var(15)
ground.type = high
ground.slidetime = 5
ground.hittime = 38
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = -4
guard.velocity = -4.5
air.velocity = -4, -5
palfx.time = 32
palfx.sinadd = 255,255,0,3
getpower = 0, 0

[State 1000, enemy sparks]
type = Explod
trigger1 = NumTarget > 0
trigger1 = MoveHit && !NumExplod(4140)
id = 4140
anim = 4140
pos = 0,(target,const(size.mid.pos.y))
postype = p2
bindtime = 44
removetime = 44
ignorehitpause = 1
sprpriority = 3
ownpal = 1
pausemovetime = 30

[State 1000, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 1000, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Kamui Risse (cape twirl) x2
;----------------------------

; (1st Hit)
;----------
[Statedef 1010]
Type = S
MoveType = A
Physics = N
anim = 1010
sprpriority = 2
velset = 0,0
ctrl = 0
juggle = 10

[State 1010, velocity]
type = VelSet
trigger1 = time = 11
x = 1

[State 1010, invincibility]
type = NotHitBy
trigger1 = AnimElem = 6, >= 0
trigger1 = AnimElem = 8, < 0
value = SCA, NP, SP, HP

[State 1010, cape]
type = Helper
trigger1 = AnimElem = 6
name = "cape"
ID = 1060
stateno = 1060
ownpal = 1
ignorehitpause = 1

[state 1010, voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, 0
channel = 0

[state 1010, cape sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 160, 0
channel = 1

[state 1010, sparks sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 160, 1
channel = 2

[State 1010, hit def]
type = HitDef
trigger1 = !MoveContact
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = hard
priority = 4, Hit
damage = 12 + 20*var(20), 8
pausetime = 4, 4
guard.pausetime = 6, 6
sparkno = s4130
guard.sparkno = s4220
sparkxy = 0,-55 + 20*(AnimElem = 7)
hitsound = s180, var(16)
guardsound = s150, var(15)
ground.type = high
ground.slidetime = 5
ground.hittime = 38
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = -4
guard.velocity = -4.5
air.velocity = -4, -5
palfx.time = 32
palfx.sinadd = 255,255,0,3
getpower = 0, 0

[State 1010, enemy sparks]
type = Explod
trigger1 = NumTarget > 0
trigger1 = MoveHit && !NumExplod(4140)
id = 4140
anim = 4140
pos = 0,(target,const(size.mid.pos.y))
postype = p2
bindtime = 44
removetime = 44
ignorehitpause = 1
sprpriority = 3
ownpal = 1
pausemovetime = 30

[State 1010, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 1010, end state]
type = ChangeState
trigger1 = AnimElem = 13
value = 1011

; (2nd Hit)
;----------
[Statedef 1011]
Type = S
MoveType = A
Physics = N
sprpriority = 2
ctrl = 0
juggle = 10

[State 1011, velocity 1]
type = VelSet
trigger1 = time = 8
x = 0.75

[State 1011, velocity 2]
type = VelSet
trigger1 = time = 14
x = 0.5

[State 1011, velocity 2]
type = VelSet
trigger1 = time = 20
x = 0.25

[State 1011, stop velocity]
type = VelSet
trigger1 = time = 26
x = 0

[State 1011, invincibility]
type = NotHitBy
trigger1 = AnimElem = 18, >= 0
trigger1 = AnimElem = 20, < 0
value = SCA, NP, SP, HP

[State 1011, cape]
type = Helper
trigger1 = AnimElem = 18
name = "cape"
ID = 1060
stateno = 1060
ownpal = 1
ignorehitpause = 1

[state 1011, cape sound]
type = PlaySnd
trigger1 = AnimElem = 17
value = 160, 0
channel = 1

[state 1011, sparks sound]
type = PlaySnd
trigger1 = AnimElem = 17
value = 160, 1
channel = 2

[State 1011, hit def]
type = HitDef
trigger1 = !MoveContact
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = hard
priority = 4, Hit
damage = 12 + 20*var(20), 8
pausetime = 4, 4
guard.pausetime = 6, 6
sparkno = s4130
guard.sparkno = s4220
sparkxy = 0,-55 + 20*(AnimElem = 18)
hitsound = s180, var(16)
guardsound = s150, var(15)
ground.type = high
ground.slidetime = 5
ground.hittime = 38
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = -4
guard.velocity = -4.5
air.velocity = -4, -5
palfx.time = 32
palfx.sinadd = 255,255,0,3
getpower = 0, 0

[State 1011, enemy sparks]
type = Explod
trigger1 = NumTarget > 0
trigger1 = MoveHit && !NumExplod(4140)
id = 4140
anim = 4140
pos = 0,(target,const(size.mid.pos.y))
postype = p2
bindtime = 44
removetime = 44
ignorehitpause = 1
sprpriority = 3
ownpal = 1
pausemovetime = 30

[State 1011, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 1011, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1



; Kamui Risse (cape twirl) x3
;----------------------------

; (1st Hit)
;----------
[Statedef 1020]
Type = S
MoveType = A
Physics = N
anim = 1020
sprpriority = 2
velset = 0,0
ctrl = 0
juggle = 10

[State 1020, velocity]
type = VelSet
trigger1 = time = 16
x = 1

[State 1220, invincibility]
type = NotHitBy
trigger1 = AnimElem = 6, >= 0
trigger1 = AnimElem = 8, < 0
value = SCA, NP, SP, HP

[State 1020, cape]
type = Helper
trigger1 = AnimElem = 6
name = "cape"
ID = 1060
stateno = 1060
ownpal = 1
ignorehitpause = 1

[state 1020, voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, 0
channel = 0

[state 1020, cape sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 160, 0
channel = 1

[state 1020, sparks sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 160, 1
channel = 2

[State 1020, hit def]
type = HitDef
trigger1 = !MoveContact
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = hard
priority = 4, Hit
damage = 12 + 20*var(20), 8
pausetime = 4, 4
guard.pausetime = 6, 6
sparkno = s4130
guard.sparkno = s4220
sparkxy = 0,-55 + 20*(AnimElem = 7)
hitsound = s180, var(16)
guardsound = s150, var(15)
ground.type = high
ground.slidetime = 5
ground.hittime = 38
guard.slidetime = 6
guard.hittime = 32
guard.ctrltime = 32
air.hittime = 32
ground.velocity = -4
guard.velocity = -4.5
air.velocity = -4, -5
palfx.time = 32
palfx.sinadd = 255,255,0,3
getpower = 0, 0

[State 1020, enemy sparks]
type = Explod
trigger1 = NumTarget > 0
trigger1 = MoveHit && !NumExplod(4140)
id = 4140
anim = 4140
pos = 0,(target,const(size.mid.pos.y))
postype = p2
bindtime = 44
removetime = 44
ignorehitpause = 1
sprpriority = 3
ownpal = 1
pausemovetime = 30

[State 1020, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 1020, end state]
type = ChangeState
trigger1 = AnimElem = 13
value = 1021

; (2nd Hit)
;----------
[Statedef 1021]
Type = S
MoveType = A
Physics = N
ctrl = 0
juggle = 10

[State 1021, invincibility]
type = NotHitBy
trigger1 = AnimElem = 18, >= 0
trigger1 = AnimElem = 20, < 0
value = SCA, NP, SP, HP

[State 1021, cape]
type = Helper
trigger1 = AnimElem = 18
name = "cape"
ID = 1060
stateno = 1060
ownpal = 1
ignorehitpause = 1

[state 1021, cape sound]
type = PlaySnd
trigger1 = AnimElem = 17
value = 160, 0
channel = 1

[state 1221, sparks sound]
type = PlaySnd
trigger1 = AnimElem = 17
value = 160, 1
channel = 2

[State 1021, hit def]
type = HitDef
trigger1 = !MoveContact
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = hard
priority = 4, Hit
damage = 8 + 4*var(20), 8
pausetime = 4, 4
guard.pausetime = 6, 6
sparkno = s4130
guard.sparkno = s4220
sparkxy = 0,-55 + 20*(AnimElem = 18)
hitsound = s180, var(16)
guardsound = s150, var(15)
ground.type = high
ground.slidetime = 5
ground.hittime = 38
guard.slidetime = 6
guard.hittime = 32
guard.ctrltime = 32
air.hittime = 32
ground.velocity = -4
guard.velocity = -4.5
air.velocity = -4, -5
palfx.time = 32
palfx.sinadd = 255,255,0,3
getpower = 0, 0

[State 1021, enemy sparks]
type = Explod
trigger1 = NumTarget > 0
trigger1 = MoveHit && !NumExplod(4140)
id = 4140
anim = 4140
pos = 0,(target,const(size.mid.pos.y))
postype = p2
bindtime = 44
removetime = 44
ignorehitpause = 1
sprpriority = 3
ownpal = 1
pausemovetime = 30

[State 1021, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 1021, end state]
type = ChangeState
trigger1 = AnimElem = 25
value = 1022

; (3rd Hit)
;----------
[Statedef 1022]
Type = S
MoveType = A
Physics = N
ctrl = 0
juggle = 10

[State 1022, velocity 1]
type = VelSet
trigger1 = time = 6
x = 0.75

[State 1022, velocity 2]
type = VelSet
trigger1 = time = 12
x = 0.5

[State 1022, velocity 2]
type = VelSet
trigger1 = time = 18
x = 0.25

[State 1022, stop velocity]
type = VelSet
trigger1 = AnimElem = 24
x = 0

[State 1022, invincibility]
type = NotHitBy
trigger1 = AnimElem = 30, >= 0
trigger1 = AnimElem = 32, < 0
value = SCA, NP, SP, HP

[State 1022, cape]
type = Helper
trigger1 = AnimElem = 30
name = "cape"
ID = 1060
stateno = 1060
ownpal = 1
ignorehitpause = 1

[state 1022, cape sound]
type = PlaySnd
trigger1 = AnimElem = 29
value = 160, 0
channel = 1

[state 1022, sparks sound]
type = PlaySnd
trigger1 = AnimElem = 29
value = 160, 1
channel = 2

[State 1022, hit def]
type = HitDef
trigger1 = !MoveContact
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = hard
priority = 4, Hit
damage = 12 + 20*var(20), 8
pausetime = 4, 4
guard.pausetime = 6, 6
sparkno = s4130
guard.sparkno = s4220
sparkxy = 0,-55 + 20*(AnimElem = 29)
hitsound = s180, var(16)
guardsound = s150, var(15)
ground.type = high
ground.slidetime = 5
ground.hittime = 38
guard.slidetime = 6
guard.hittime = 32
guard.ctrltime = 32
air.hittime = 32
ground.velocity = -4
guard.velocity = -4.5
air.velocity = -4, -5
palfx.time = 32
palfx.sinadd = 255,255,0,3
getpower = 0, 0

[State 1022, enemy sparks]
type = Explod
trigger1 = NumTarget > 0
trigger1 = MoveHit && !NumExplod(4140)
id = 4140
anim = 4140
pos = 0,(target,const(size.mid.pos.y))
postype = p2
bindtime = 44
removetime = 44
ignorehitpause = 1
sprpriority = 3
ownpal = 1
pausemovetime = 30

[State 1022, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 1022, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1



; Additional Cape Twirl
;----------------------

; (1st Hit)
;----------
[Statedef 1050]
Type = S
MoveType = A
Physics = S
anim = 1050
ctrl = 0
juggle = 10

[State 1050, invincibility]
type = NotHitBy
trigger1 = AnimElem = 5, >= 0
trigger1 = AnimElem = 6, < 0
value = SCA, NP, SP, HP

[State 1050, cape]
type = Helper
trigger1 = AnimElem = 5
name = "cape"
ID = 1060
stateno = 1060
ownpal = 1
ignorehitpause = 1

[state 1050, cape sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 160, 0
channel = 1

[state 1050, sparks sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 160, 1
channel = 2

[State 1050, hit def]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = up
priority = 4, Hit
damage = 12 + 20*var(20), 8
pausetime = 4, 4
guard.pausetime = 6, 6
sparkno = s4130
guard.sparkno = s4220
sparkxy = 0,-46
hitsound = s180, var(16)
guardsound = s150, var(15)
ground.slidetime = 5
ground.hittime = 38
ground.velocity = 0, -6
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
guard.velocity = -4.5
air.velocity = -4, -5
air.fall = 1
fall.recover = 0
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = -4
palfx.time = 32
palfx.sinadd = 255,255,0,3
getpower = 0, 0

[State 1050, enemy sparks]
type = Explod
trigger1 = NumTarget > 0
trigger1 = MoveHit && !NumExplod(4140)
id = 4140
anim = 4140
pos = 0,(target,const(size.mid.pos.y))
postype = p2
bindtime = 44
removetime = 44
ignorehitpause = 1
sprpriority = 3
ownpal = 1
pausemovetime = 30

[State 1050, enemy position]
type = TargetBind
trigger1 = NumTarget > 0
trigger1 = target, pos y >= -12
trigger1 = MoveHit
pos = (P2Dist x), -12
persistent = 0

[State 1050, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 1050, end state]
type = ChangeState
trigger1 = AnimElem = 6
value = 1051

; (2nd Hit)
;----------
[Statedef 1051]
Type = S
MoveType = A
Physics = S
ctrl = 0
juggle = 5

[State 1051, invincibility]
type = NotHitBy
trigger1 = AnimElem = 6, >= 0
trigger1 = AnimElem = 8, < 0
value = SCA, NP, SP, HP

[State 1051, hit def]
type = HitDef
triggerall = !MoveContact
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = diagup
priority = 4, Hit
damage = 120 + 128*var(20), 8
pausetime = 4, 4
guard.pausetime = 6, 6
sparkno = s4130
guard.sparkno = s4220
sparkxy = 0,-66 -10*(AnimElem = 7)
hitsound = s180, var(16)
guardsound = s150, var(15)
ground.slidetime = 5
ground.hittime = 38
ground.velocity = -4,-9
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
guard.velocity = -4
air.velocity = -4, -9
fall = 1
air.fall = 1
fall.recover = 0
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = -4
palfx.time = 90
palfx.sinadd = 255,255,0,3
getpower = 0, 0

[State 1051, enemy sparks]
type = Explod
trigger1 = NumTarget > 0
trigger1 = MoveHit && !NumExplod(4140)
id = 4140
anim = 4140
pos = 0,(target,const(size.mid.pos.y))
postype = p2
bindtime = 44
removetime = 44
ignorehitpause = 1
sprpriority = 3
ownpal = 1
pausemovetime = 30

[State 1051, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 1051, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Cape
;-----

; (Cape)
;-------
[Statedef 1060]
Type = S
MoveType = I
Physics = S
ctrl = 0

[State 1060, fast animation]
type = ChangeAnim
triggerall = time = 0
trigger1 = parent, StateNo = 1020
value = 1061

[State 1060, average animation]
type = ChangeAnim
triggerall = time = 0
trigger1 = parent, StateNo = 1021
trigger2 = parent, StateNo = 1010
value = 1062

[State 1060, medium animation]
type = ChangeAnim
triggerall = time = 0
trigger1 = parent, StateNo = 1011
value = 1063

[State 1060, slow animation]
type = ChangeAnim
triggerall = time = 0
trigger1 = parent, StateNo = 1022
trigger2 = parent, StateNo = 1000
value = 1064

[State 1060, additional hit animation]
type = ChangeAnim
triggerall = time = 0
trigger1 = parent, StateNo = 1050
value = 1065

[State 1060, end super animation]
type = ChangeAnim
triggerall = time = 0
trigger1 = parent, StateNo = 3130
value = 3131

[State 1060, rage explosion animation]
type = ChangeAnim
triggerall = time = 0
trigger1 = parent, StateNo = 3500
value = 3501

[State 1060, bind to Nakoruru]
type = BindToparent
trigger1 = 1

[State 1060, fast cape] ; destroys any other projectile
type = Projectile
triggerall = time = 0
trigger1 = parent, StateNo = 1020
ID = 1060
projanim = 1061
projremove = 0
projremovetime = 2
projpriority = 100
attr = S, SP
velocity = 1

[State 1060, average cape] ; destroys any other projectile
type = Projectile
triggerall = time = 0
trigger1 = parent, StateNo = 1021
trigger2 = parent, StateNo = 1010
ID = 1060
projanim = 1062
projremove = 0
projremovetime = 4
projpriority = 100
attr = S, SP
velocity = 1

[State 1060, medium cape] ; destroys any other projectile
type = Projectile
triggerall = time = 0
trigger1 = parent, StateNo = 1011
ID = 1060
projanim = 1063
projremove = 0
projremovetime = 8
projpriority = 100
attr = S, SP
velocity = 1

[State 1060, slow cape] ; destroys any other projectile
type = Projectile
triggerall = time = 0
trigger1 = parent, StateNo = 1000
ID = 1060
projanim = 1064
projremove = 0
projremovetime = 8
projpriority = 100
attr = S, SP
velocity = 1

[State 1060, additional cape] ; destroys any other projectile
type = Projectile
triggerall = time = 0
trigger1 = parent, StateNo = 1050
ID = 1060
projanim = 1065
projremove = 0
projremovetime = 4
projpriority = 100
attr = S, SP
velocity = 1

[State 1060, super cape] ; destroys any other projectile
type = Projectile
triggerall = time = 0
trigger1 = parent, StateNo = 3130
ID = 1200
projanim = 3131
projremove = 0
projremovetime = 6
projpriority = 100
attr = S, HP
velocity = 1

[State 1060, rage explosion cape] ; destroys any other projectile
type = Projectile
triggerall = time = 0
trigger1 = parent, StateNo = 3500
ID = 1200
projanim = 3501
projremove = 0
projremovetime = 6
projpriority = 100
attr = S, HP
velocity = 1

[State 1060, invincibility] ; Projectile reflection code from EI's Athena Asamiya
type = NotHitBy 
trigger1 = 1
value = , AA, AT
time = 1

[State 1060, counter normal projectile]
type = HitOverride
trigger1 = 1
slot = 1
time = -1
attr = SCA, NP
stateno = 1061
ignorehitpause

[State 1060, counter special projectile]
type = HitOverride
trigger1 = 1
slot = 2
time = -1
attr = SCA, SP
stateno = 1061
ignorehitpause

[State 1060, counter hyper projectile]
type = HitOverride
trigger1 = 1
slot = 3
time = -1
attr = SCA, HP
stateno = 1061
ignorehitpause

[State 1060, destroy self]
type = DestroySelf
trigger1 = AnimTime = 0

; (Projectile)
;-------------
[Statedef 1061]
Type = S
MoveType = I
Physics = S
ctrl = 0

[State 1061, projectile]
type = Projectile
trigger1 = time = 0
projID = 1070
projanim = 1070
projhitanim = 1071
velocity = 6,0
remvelocity = 2,0
offset = 40,0
attr = S, SP
hitflag = MAF
guardflag = MA
animtype = light
air.animtype = back
priority = 4, Hit
damage = 85, 8
pausetime = 0, 0
guard.pausetime = 0, 0
sparkno = -1
guard.sparkno = -1
sparkxy = 0,-50
hitsound = s180, (parent, var(15))
guardsound = s150, (parent, var(16))
ground.type = low
ground.slidetime = 6
ground.hittime = 12
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
air.hittime = 32
ground.velocity = 0, -7.5
guard.velocity = -4.5
air.velocity = -4, -5
fall = 1
air.fall = 1
fall.recover = 0
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = -4
palfx.time = 90
palfx.sinadd = 255,255,0,3
getpower = 0, 0

[State 1061, bind to Nakoruru]
type = BindToparent
trigger1 = 1

[State 1061, invincibility] ; Projectile reflection code from EI's Athena Asamiya
type = NotHitBy 
trigger1 = 1
value = , AA, AT
time = 1

[State 1061, counter normal projectile]
type = HitOverride
trigger1 = 1
slot = 1
time = -1
attr = SCA, NP
stateno = 1061

[State 1061, counter special projectile]
type = HitOverride
trigger1 = 1
slot = 2
time = -1
attr = SCA, SP
stateno = 1061

[State 1061, counter hyper projectile]
type = HitOverride
trigger1 = 1
slot = 3
time = -1
attr = SCA, HP
stateno = 1061

[State 1061, destroy self]
type = DestroySelf
trigger1 = AnimTime = 0



; Epunkine Shikite
;-----------------

[Statedef 1100]
Type = S
MoveType = I
Physics = S
anim = 1100
sprpriority = 2
velset = 0,0
ctrl = 0

[state 1100, voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 50, 0
channel = 0

[State 1100, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1



; Reflect
;--------
; (Rera)
;-------
[Statedef 1200]
Type = S
MoveType = I
Physics = S
anim = 1200
sprpriority = 2
velset = 0,0
ctrl = 0

[state 1200, voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 1
channel = 0

[state 1200, slash sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 110, 2
channel = 1

[State 1200, reversal]
type = ReversalDef
trigger1 = AnimElem = 4, >= 0
trigger1 = AnimElem = 8, < 0
reversal.attr = SC, NA
sparkno = s4200
sparkxy = 0,-60
hitsound = s130, var(15)
p2stateno = 1250

[State 1200, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

; (Enemy)
;--------
[Statedef 1250]
Type = S
MoveType = H
Physics = S
sprpriority = -1
velset = 0,0
ctrl = 0

[State 1250, animation]
type = ChangeAnim
trigger1 = time <= 30
value = 5001 + 4*(time = 30)

[State 1250, background 1]
type = BgPalFx
trigger1 = time <= 10
trigger1 = time%2 = 0
time = 1
add = 255,0,0
ignorehitpause = 1

[State 1250, background 2]
type = BgPalFx
trigger1 = time <= 10
trigger1 = time%2 != 0
time = 30
add = 255,255,255
ignorehitpause = 1

[State 1250, end state]
type = SelfState
trigger1 = time = 50
value = 0
ctrl = 1



; Separate Attack Up
;-------------------

[Statedef 2000]
Type = A
MoveType = A
Physics = A
anim = 2000
sprpriority = 2
juggle = 10

[State 2000, pos add]
type = PosAdd
trigger1 = time = 0
y = -30

[State 2000, start velocity]
type = VelSet
trigger1 = time <= 9
x = 11.5
y = -6

[State 2000, end velocity]
type = VelSet
trigger1 = time = 10
x = 4
y = 0

[State 2000, gravity]
type = VelAdd
trigger1 = time > 9
y = -0.3

[state 2000, voice]
type = null;PlaySnd
trigger1 = AnimElem = 1
value = 40, 6
channel = 0

[state 2000, slash sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 160, 2
channel = 1

[state 2000, spark sound enemy]
type = PlaySnd
trigger1 = MoveHit
value = 160, 1
channel = 2

[State 2000, hit def ground]
type = HitDef
triggerall = !MoveContact
triggerall = PrevStateNo = 8360
trigger1 = AnimElem = 1, >= 0
trigger1 = AnimElem = 5, < 0
attr = A, SA
hitflag = MAF
guardflag = MA
animtype = up
priority = 4, Hit
damage = 80 + 40*var(20), 8
pausetime = 4, 4
guard.pausetime = 6, 6
sparkno = s4032
guard.sparkno = s4220
sparkxy = 0, -37
hitsound = s170, var(16)
guardsound = s130, var(16)
ground.type = high
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
ground.velocity = -3.5, -8
guard.velocity = -5
air.velocity = -4, -5
fall = 1
air.fall = 1
fall.recover = 0
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = -4
palfx.time = 65
palfx.sinadd = 255,255,0,3
getpower = 0,0

[State 2000, hit def air]
type = HitDef
triggerall = !MoveContact
triggerall = PrevStateNo = 8365
trigger1 = AnimElem = 1, >= 0
trigger1 = AnimElem = 5, < 0
attr = A, SA
hitflag = MAF
guardflag = HA
animtype = up
priority = 4, Hit
damage = 80 + 40*var(20), 8
pausetime = 4, 4
guard.pausetime = 6, 6
sparkno = s4032
guard.sparkno = s4220
sparkxy = 00, -37
hitsound = s170, var(16)
guardsound = s130, var(16)
ground.type = high
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
ground.velocity = -3.5, -8
guard.velocity = -5
air.velocity = -4, -5
fall = 1
air.fall = 1
fall.recover = 0
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = -4
palfx.time = 65
palfx.sinadd = 255,255,0,3
getpower = 0,0

[State 2000, slash]
type = Explod
trigger1 = AnimElem = 1
ID = 2000
anim = 2001
pos = 0,0
sprpriority = 3
ownpal = 1
bindtime = -1
removetime = -1
removeongethit = 1

[State 2000, remove slash]
type = RemoveExplod
trigger1 = AnimElem = 5
ID = 2000

[State 2100, enemy spark]
type = Explod
trigger1 = MoveHit
trigger1 = !NumExplod(4140)
id = 4140
anim = 4140
pos = 0,const(size.mid.pos.y)
postype = p2
bindtime = 65
removetime = 65
ignorehitpause = 1
sprpriority = 3
ownpal = 1

[State 2100, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 2100, end state]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -ceil(vel y)
value = 2350



; Separate Attack Forward
;------------------------
; Attack
;-------
[Statedef 2100]
Type = A
MoveType = A
Physics = A
anim = 2100
sprpriority = 2
juggle = 10

[State 2100, pos add]
type = PosAdd
trigger1 = time = 0
y = -24

[State 2100, start velocity]
type = VelSet
trigger1 = 1
x = 11.5
y = 0

[state 2100, voice]
type = null;PlaySnd
trigger1 = AnimElem = 1
value = 40, 6
channel = 0

[state 2100, slash sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 160, 2
channel = 1

[state 2100, spark sound enemy]
type = PlaySnd
trigger1 = MoveHit
value = 160, 1
channel = 2

[State 2100, hit def ground]
type = HitDef
triggerall = PrevStateNo = 8360
trigger1 = !MoveContact
attr = A, SA
hitflag = MAF
guardflag = MA
animtype = up
priority = 4, Hit
damage = 80 + 40*var(20), 8
pausetime = 4, 4
guard.pausetime = 6, 6
sparkno = s4030
guard.sparkno = s4220
sparkxy = 0, -37
hitsound = s170, var(16)
guardsound = s130, var(16)
ground.type = high
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
ground.velocity = -2, -7.25
guard.velocity = -5
air.velocity = -4, -5
fall = 1
air.fall = 1
fall.recover = 0
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = -4
palfx.time = 65
palfx.sinadd = 255,255,0,3
getpower = 0,0

[State 2100, hit def air]
type = HitDef
triggerall = PrevStateNo = 8365
trigger1 = !MoveContact
attr = A, SA
hitflag = MAF
guardflag = HA
animtype = up
priority = 4, Hit
damage = 80 + 40*var(20), 8
pausetime = 4, 4
guard.pausetime = 6, 6
sparkno = s4030
guard.sparkno = s4220
sparkxy = 0, -37
hitsound = s170, var(16)
guardsound = s130, var(16)
ground.type = high
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
ground.velocity = -2, -7.25
guard.velocity = -5
air.velocity = -4, -5
fall = 1
air.fall = 1
fall.recover = 0
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = -4
palfx.time = 65
palfx.sinadd = 255,255,0,3
getpower = 0,0

[State 2100, slash]
type = Explod
trigger1 = AnimElem = 1
ID = 2000
anim = 2101
pos = 0,0
sprpriority = 3
ownpal = 1
bindtime = -1
removetime = -1
removeongethit = 1

[State 2100, enemy spark]
type = Explod
trigger1 = MoveHit
trigger1 = !NumExplod(4140)
id = 4140
anim = 4140
pos = 0,const(size.mid.pos.y)
postype = p2
bindtime = 65
removetime = 65
ignorehitpause = 1
sprpriority = 3
ownpal = 1

[State 2100, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 2100, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 2300 + 10*(PrevStateNo = 8365)



; Separate Attack Down
;---------------------

[Statedef 2200]
Type = A
MoveType = A
Physics = A
anim = 2200
sprpriority = 2
juggle = 10

[State 2200, vel set]
type = VelSet
trigger1 = 1
x = 11.5
y = 6

[state 2100, voice]
type = null;PlaySnd
trigger1 = AnimElem = 1
value = 40, 6
channel = 0

[state 2200, slash sound]
type = PlaySnd
trigger1 = time = 0
value = 160, 2
channel = 1

[state 2200, spark sound enemy]
type = PlaySnd
trigger1 = MoveHit
value = 160, 1
channel = 2

[State 2200, hit def]
type = HitDef
trigger1 = !MoveContact
attr = A, SA
hitflag = MAF
guardflag = MA
animtype = up
priority = 4, Hit
damage = 80 + 40*var(20), 8
pausetime = 4, 4
guard.pausetime = 6, 6
sparkno = s4030
guard.sparkno = s4220
sparkxy = 0, -37
hitsound = s170, var(16)
guardsound = s130, var(16)
ground.type = high
guard.slidetime = 6
guard.hittime = 6
guard.ctrltime = 6
ground.velocity = -3.5, -8
guard.velocity = -5
air.velocity = -4, -5
fall = 1
air.fall = 1
fall.recover = 0
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = -4
palfx.time = 65
palfx.sinadd = 255,255,0,3
getpower = 0,0

[State 2200, slash]
type = Explod
trigger1 = AnimElem = 1
ID = 2000
anim = 2201
pos = 0,0
sprpriority = 3
ownpal = 1
bindtime = -1
removetime = -1
removeongethit = 1

[State 2200, remove slash]
type = RemoveExplod
trigger1 = vel y > 0
trigger1 = pos y >= -ceil(vel y)
ID = 2000

[State 2200, enemy spark]
type = Explod
trigger1 = MoveHit
trigger1 = !NumExplod(4140)
id = 4140
anim = 4140
pos = 0,const(size.mid.pos.y)
postype = p2
bindtime = 65
removetime = 65
ignorehitpause = 1
sprpriority = 3
ownpal = 1

[State 2200, move hit background]
type = envcolor
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 2200, end state]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -ceil(vel y)
value = 2360



; Air 1
;------
[Statedef 2300]
Type = A
MoveType = I
Physics = A
anim = 2300
sprpriority = 2

[State 2300, remove slash]
type = RemoveExplod
trigger1 = time = 0
ID = 2000

[State 2300, end velocity]
type = VelSet
trigger1 = time = 0
x = 4
y = 0

[State 2300, gravity]
type = VelAdd
trigger1 = 1
y = -0.3

[State 2300, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 2360



; Air 2
;------
[Statedef 2310]
Type = A
MoveType = I
Physics = A
anim = 2310
sprpriority = 2

[State 2310, remove slash]
type = RemoveExplod
trigger1 = time = 0
ID = 2000

[State 2310, end velocity]
type = VelSet
trigger1 = time = 0
x = 4
y = 0

[State 2310, gravity]
type = VelAdd
trigger1 = 1
y = -0.3

[State 2310, end state]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -ceil(vel y)
value = 2350



; Separate Attack Land 1
;-----------------------

[Statedef 2350]
Type = C
MoveType = I
Physics = C
anim = 2350
sprpriority = 1

[State 2350, velocity]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 2350, position]
type = PosSet
trigger1 = time = 0
y = 0

[state 2350, land sound]
type = PlaySnd
trigger1 = time = 1
value = 100, 2
channel = 1

[State 2350, dust]
type = MakeDust
trigger1 = time = 1
pos = 30, 0

[State 2350, dust]
type = MakeDust
trigger1 = time = 1
pos = -5, 0

[State 2350, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl =1



; Separate Attack Land 2
;-----------------------

[Statedef 2360]
Type = C
MoveType = I
Physics = N
anim = 2360
sprpriority = 1

[State 2360, remove explod]
type = RemoveExplod
trigger1 = time = 0
ID = 2000

[State 2360, velocity]
type = VelSet
trigger1 = time = 0
x = 3
y = 0

[State 2360, position]
type = PosSet
trigger1 = time = 0
y = 0

[State 2360, dust]
type = MakeDust
trigger1 = vel x > 0
pos = 30, 0
spacing = 3

[State 2360, dust]
type = MakeDust
trigger1 = vel x > 0
pos = -5, 0
spacing = 3

[State 2360, brake]
type = VelAdd
trigger1 = time = 5
trigger2 = time = 9
trigger3 = time = 13
trigger4 = time = 17
trigger5 = time = 21
trigger6 = time = 25
x = -0.5

[state 2360, brake sound]
type = PlaySnd
trigger1 = AnimElem = 10
value = 100, 4
channel = 1

[State 2360, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl =1
