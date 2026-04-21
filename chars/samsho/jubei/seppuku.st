;---------------------------------------------------------------------------
; SEPPUKU
[Statedef 3100]
type    = C
movetype= I
physics = C
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 3100

    [State 3100] 
    type = AssertSpecial
    trigger1 = Time = [0,999999]
    flag = nomusic

[State 3100]
type = NotHitBy
trigger1 = Time < 165
value = SCA
time = 1

[State 3100]
type = PlaySnd
trigger1 = Time = 0
value = 7, 22

[State 3100, 1]
type = LifeSet
trigger1 = AnimElem = 8
value = 1

[State 3100, 2]
type = LifeAdd
trigger1 = Time = 1000
value = -500

[State 3100, 2.5]
type = VarSet
trigger1 = time = 999
v = 21
value = 1

[State 3100, 3]
type = Turn
trigger1 = Time = 0
trigger1 = p2bodydist X > -30

[State 3100, 4]
type = PlaySnd
trigger1 = AnimElem = 4
value = 5, 1

[State 3100, 4]
type = PlaySnd
trigger1 = AnimElem = 5
value = 5, 2

[State 3100, 4]
type = PlaySnd
trigger1 = AnimElem = 6
value = 10, 0

[State 3100, 1]
type = varSet
trigger1 = AnimElem = 8
v = 22
value = 1

[State 3100, 5]
type = Explod
trigger1 = AnimElem = 4
trigger1 = numexplod(11111) = 0
anim = 11111
id = 11111
postype = p1
pos = 2,-38
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = .3,.3
ignorehitpause = 1

[State 3100, 5]
type = Explod
trigger1 = AnimElem = 6
trigger1 = numexplod(11112) = 0
anim = 11111
id = 11112
postype = p1
pos = 2,-38
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = 1,.2
ignorehitpause = 1

[State 3100, 5]
type = Explod
trigger1 = AnimElem = 8
trigger1 = numexplod(11113) = 0
anim = 11111
id = 11113
postype = p1
pos = -5,-38
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = 2,.2
ignorehitpause = 1

[State 3100, 5]
type = Explod
trigger1 = TimeMod = 60,0
trigger1 = Time > 240
anim = 11111
id = 11112
postype = p1
pos = 0,-38
sprpriority = 5
bindtime = 10
facing = 1
ontop = 1
ownpal = 1
scale = .6,.2
ignorehitpause = 1

[State 3100, 5]
type = Explod
trigger1 = TimeMod = 80,0
trigger1 = Time > 160
anim = 11111
id = 11113
postype = p1
pos = 0 ,-38
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = .5,.2
ignorehitpause = 1

[Statedef 3110]
type    = C
movetype= I
physics = C
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 3110

[State 3110, 3]
type = ChangeState
triggerall = time = 0
trigger1 = p2movetype != A
trigger2 = var(21) = 1
value = 3120
ctrl = 0

[State 3110, 2]
type = VarSet
triggerall = time = 0
triggerall = p2name = "Kibagami Genjuro"
trigger1 = p2stateno = 220
trigger2 = p2stateno = 225
trigger3 = p2stateno = 620
v = 29
value = 1

[State 3110, 2]
type = VarSet
triggerall = time = 0
triggerall = p2name = "Yagyu Jubei"
trigger1 = p2stateno = 220
trigger2 = p2stateno = 225
trigger3 = p2stateno = 228
trigger4 = p2stateno = 625
trigger5 = p2stateno = 3335
v = 29
value = 1

[State 3110, 2]
type = VarSet
triggerall = time = 0
triggerall = p2name = "Tachibana Ukyo"
trigger1 = p2stateno = 230
trigger2 = p2stateno = 630
v = 29
value = 1

[State 3110, 2]
type = VarSet
triggerall = time = 0
triggerall = p2name = "Kibagami Takezo"
trigger1 = p2stateno = 300
trigger2 = p2stateno = 320
v = 29
value = 1

[State 3110, 2]
type = VarSet
triggerall = time = 0
triggerall = p2name = "Minakata Moriya by Deuce"
trigger1 = p2stateno = 230
trigger2 = p2stateno = 240
v = 29
value = 1

;------------------------ADD_SEPPUKU_COMPATIBLE_CHARS-----------------
[State 3110, ADDITIONAL]
type = NULL ;VarSet                    ;REMOVE:"NULL ;"
triggerall = time = 0
triggerall = p2name = "NAME_OF_PLAYER" ;INSERT_NAME_OF_CHARACTER
trigger1 = p2stateno = 300             ;STATENO_OF_DECAPTION_STRIKE
trigger2 = p2stateno = 320             ;ANOTHER_STATENO_OF_DECAPTION_STRIKE
v = 29
value = 1
;---------------------------------------------------------------------

[State 3110, 3]
type = VarSet
triggerall = time = 0
trigger1 = var(29) != 1
v = 22
value = 0

[State 3110, 4]
type = changeAnim
triggerall = time = 0
trigger1 = var(22) = 0
value = 3120

[State 3110, 5]
type = ChangeState
triggerall = time = 0
trigger1 = var(22) = 0
value = 5000
ctrl = 0

[State 3110, 6]
type = VarRandom
trigger1 = time = 0
v = 8

[State 3110, 7]
type = Explod
trigger1 = Time = 0
trigger1 = var(8) < 500
trigger1 = var(22) = 1
trigger1 = numexplod(3120) = 0
anim = 3120
id = 3120
postype = p1
pos = 10,-60
sprpriority = 5
velocity = 1, -5
accel = 0, .1

[State 3110, 8]
type = Explod
trigger1 = Time = 0
trigger1 = var(8) > 750
trigger1 = var(22) = 1
trigger1 = numexplod(3120) = 0
anim = 3120
id = 3120
postype = p1
pos = 10,-60
face = -1
sprpriority = 5
velocity = -1, -4
accel = 0, .1

[State 3110, 9]
type = Explod
trigger1 = Time = 0
trigger1 = var(8) >= 500
trigger1 = var(8) <= 750
trigger1 = var(22) = 1
trigger1 = numexplod(3120) = 0
anim = 3120
id = 3120
postype = p1
pos = 10,-60
sprpriority = 5
velocity = 0, 0
accel = 0, .1

[State 3100, 10]
type = Explod
trigger1 = Time = 40
trigger1 = numexplod(11111) = 0
anim = 11111
id = 11111
postype = p1
pos = 8,-50
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = .2,1.5
ignorehitpause = 1

[State 3100, 11]
type = Explod
trigger1 = Time = 59
trigger1 = numexplod(11112) = 0
anim = 11111
id = 11112
postype = p1
pos = 8,-50
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = .2,1
ignorehitpause = 1

[State 3100, 12]
type = Explod
trigger1 = Time = 85
trigger1 = numexplod(11113) = 0
anim = 11111
id = 11113
postype = p1
pos = 8,-50
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = .2,.5
ignorehitpause = 1

[State 3100, 13]
type = varSet
trigger1 = numexplod(3120) = 1
v = 22
value = 2

[State 3110, 14]
type = ChangeState
trigger1 = Time = 200
value = 5150
ctrl = 0

[Statedef 3120]
type    = C
movetype= I
physics = C
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 3130

[State 3120, 3]
type = ChangeState
trigger1 = Time = 100
value = 5150
ctrl = 0

;---------------------------------------------------------------------------
; CPU_ASSISST
[Statedef 3333]
type    = S
movetype= I
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 0

[State 3333,1]
type = ChangeAnim
trigger1 = Time = 0
value = 20

[State 3333,1]
type = VelSet
trigger1 = 1
trigger1 = p2bodydist X > 80
x = 3

[State 3333,2]
type = VelSet
trigger1 = 1
trigger1 = p2bodydist X < -80
x = -3

[State 3333,3]
type = ChangeState
value = 3334
trigger1 = 1
trigger1 = p2bodydist X <= 80
trigger1 = p2bodydist X >= -80

[Statedef 3334]
type    = S
movetype= I
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 0

[State 3334,3]
type = ChangeState
value = 3335
trigger1 = p2life = 1

[Statedef 3335]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 220

[State 3335, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 9, 2

[State 3335, 1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger1 = random < 500
value = 7, 6

[State 3335, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype  = Heavy
damage    = 110
guardflag = MA
hitflag = MA
pausetime = 20, 20
guard.pausetime = 5, 10
sparkno = 2
sparkxy = -10,-60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -8   
air.velocity = -4, -6

[State 3335, 3]
type = Explod
trigger1 = time = 15
trigger1 = movehit
trigger1 = random > 332
trigger1 = numexplod(11111) = 0
anim = 11111
id = 11111
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 3335, 3]
type = Explod
trigger1 = time = 15
trigger1 = movehit
trigger1 = numexplod(11111) = 0
anim = 11111
id = 11111
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = 1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 3335, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


