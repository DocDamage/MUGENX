;---------------------------------------------------------------------------
; strong_slash_far
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 220

[State 220]
type = ChangeState
trigger1 = Time = 0
trigger1 = P2BodyDist X < 80
value = 225
ctrl = 1

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 9, 2

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger1 = random < 500
value = 7, 6

[State 220, 2]
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

[State 220, 3]
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

[State 220, 3]
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

[State 220, 4]
type = ChangeState
trigger1 = moveguarded
value = 699
ctrl = 0

[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; strong_slash_close
[Statedef 225]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 225

[State 225, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 9, 2

[State 225, 1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger1 = random < 500
value = 7, 6

[State 225, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Heavy
damage    = 110
guardflag = MA
hitflag = MA
pausetime = 6,10
guard.pausetime = 3, 3
sparkno = 2
sparkxy = -14,-74
hitsound   = S5,2
guardsound = 6,0
ground.type = Low
air.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -8   
air.velocity = -4, -6

[State 225, 3]
type = Explod
triggerall = movehit
triggerall = random > 499
triggerall = numexplod(11111) = 0
trigger1 = AnimElem = 5
anim = 11111
id = 11111
postype = p2
pos = -10,-70
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 225, 3]
type = Explod
triggerall = movehit
triggerall = numexplod(11111) = 0
trigger1 = AnimElem = 5
anim = 11111
id = 11111
postype = p2
pos = -10,-70
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = .5, .5
ignorehitpause = 1

[State 225, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; strong_slash_close_run
[Statedef 228]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
facep2 = 1
anim = 220

[State 228, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 9, 2

[State 228, 1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger1 = random < 500
value = 7, 6

[State 228, 2]
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

[State 228, 3]
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

[State 228, 3]
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

[State 228, 4]
type = ChangeState
trigger1 = moveguarded
value = 699
ctrl = 0

[State 228, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; medium_slash_far
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 210

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 9, 1

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 5
trigger1 = Random <= 500
value = 7, 6

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype  = Medium
damage    = 70
guardflag = MA
hitflag = MA
pausetime = 7,10
sparkno = 1
sparkxy = -10,-67
hitsound   = S5,1
guardsound = 6,0
ground.type = Low
air.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -8   
air.velocity = -3, -6

[State 210, 3]
type = Explod
triggerall = movehit
triggerall = random > 499
triggerall = numexplod(11111) = 0
trigger1 = AnimElem = 6
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

[State 210, 3]
type = Explod
triggerall = movehit
triggerall = numexplod(11111) = 0
trigger1 = AnimElem = 6
anim = 11111
id = 11111
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = .5, .5
ignorehitpause = 1

[State 210, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; medium_slash_run
[Statedef 218]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
facep2 = 1
anim = 215

[State 218, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 9, 0

[State 218, 1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger1 = Random <= 500
value = 7, 6

[State 218, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype  = Medium
damage    = 70
guardflag = MA
hitflag = MA
pausetime = 5,7
sparkno = 2
sparkxy = -10,-68
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -12   
air.velocity = -3, -6

[State 218, 4]
type = Explod
triggerall = movehit
triggerall = numexplod(11111) = 0
trigger1 = AnimElem = 6
anim = 11111
id = 11111
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 30
facing = -1
ontop = 1
ownpal = 1
scale = .5, .5
ignorehitpause = 1

[State 218, 4]
type = Explod
triggerall = movehit
triggerall = numexplod(11112) = 0
trigger1 = AnimElem = 6
anim = 11111
id = 11112
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = 1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 218, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; medium_slash_close
[Statedef 215]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 215

[State 215, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 9, 0

[State 215, 1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger1 = Random <= 500
value = 7, 6

[State 215, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype  = Medium
damage    = 70
guardflag = MA
hitflag = MA
pausetime = 5,7
sparkno = 2
sparkxy = -10,-68
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -12   
air.velocity = -3, -6

[State 215, 4]
type = Explod
triggerall = movehit
triggerall = numexplod(11111) = 0
trigger1 = AnimElem = 6
anim = 11111
id = 11111
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 30
facing = -1
ontop = 1
ownpal = 1
scale = .5, .5
ignorehitpause = 1

[State 215, 4]
type = Explod
triggerall = movehit
triggerall = numexplod(11112) = 0
trigger1 = AnimElem = 6
anim = 11111
id = 11112
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = 1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 215, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;light_slash_far
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 200

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 9, 1

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
trigger1 = Random <= 500
value = 7, 12

[State 200, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Light
damage    = 50
guardflag = MA
hitflag = MA
pausetime = 6,6
sparkno = 1
sparkxy = -10,-80
hitsound   = S5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -4   
air.velocity = -4, -3

[State 200, 3]
type = Explod
triggerall = movehit
triggerall = numexplod(11111) = 0
trigger1 = AnimElem = 4
anim = 11111
id = 11111
postype = p2
pos = -10,-80
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = .5, .5
ignorehitpause = 1

[State 200, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;light_slash_close
[Statedef 205]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 205

[State 205, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 9, 0

[State 205, 1]
type = PlaySnd
trigger1 = AnimElem = 1
trigger1 = Random <= 500
value = 7, 12

[State 205, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Light
damage    = 40
guardflag = MA
hitflag = MA
pausetime = 4,4
sparkno = 0
sparkxy = -10,-60
hitsound   = S5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -4   
air.velocity = -4, -3

[State 205, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; strong_slash_crouch
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 420

[State 420, 1]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 11
value = 9, 2

[State 420, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype  = Heavy
damage    = 110
guardflag = MA
hitflag = MA
pausetime = 10,30
guard.pausetime = 3, 3
sparkno = 2
sparkxy = -10,-20
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -8   
air.velocity = -4, -6

[State 420, 2]
type = HitDef
trigger1 = AnimElem = 11
attr = S, NA
animtype  = Heavy
damage    = 110
guardflag = MA
hitflag = MAF
pausetime = 20,20
guard.pausetime = 3, 3
sparkno = 2
sparkxy = -10,-55
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -8   
air.velocity = -4, -6

[State 420, 3]
type = Explod
triggerall = movehit
triggerall = numexplod(11111) = 0
trigger1 = Time = 17
anim = 11111
id = 11111
postype = p2
pos = -10,-20
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 420, 3]
type = Explod
triggerall = movehit
triggerall = numexplod(11112) = 0
trigger1 = Time = 44
anim = 11111
id = 11112
postype = p2
pos = -10,-55
sprpriority = 5
bindtime = 10
facing = 1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 420, 3]
type = ChangeState
trigger1 = moveguarded
value = 690
ctrl = 0

[State 420, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; medium_slash_crouch
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 410

[State 410, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 9, 1

[State 410, 1]
type = PlaySnd
trigger1 = AnimElem = 2
trigger1 = Random <= 500
value = 7, 11

[State 410, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Heavy
damage    = 70
guardflag = MA
hitflag = MA
pausetime = 8,10
sparkno = 1
sparkxy = -10,-50
hitsound   = S5,1
guardsound = 6,0
ground.type = Low
air.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -8   
air.velocity = -3, -3

[State 410, 3]
type = Explod
triggerall = movehit
triggerall = random > 499
triggerall = numexplod(11111) = 0
trigger1 = Time = 7
anim = 11111
id = 11111
postype = p2
pos = -10,-50
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 410, 3]
type = Explod
triggerall = movehit
triggerall = numexplod(11111) = 0
trigger1 = Time = 7
anim = 11111
id = 11111
postype = p2
pos = 10,-50
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = .5, .5
ignorehitpause = 1

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; light_slash_crouch
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 400

[State 400, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 9, 0

[State 400, 1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger1 = Random <= 500
value = 7, 12

[State 400, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype  = Light
damage    = 50
guardflag = MA
hitflag = MA
pausetime = 8,10
sparkno = 1
sparkxy = -10,-30
hitsound   = S5,1
guardsound = 6,0
ground.type = Low
air.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -8   
air.velocity = -3, -3

[State 400, 3]
type = Explod
triggerall = movehit
triggerall = random > 499
triggerall = numexplod(11111) = 0
trigger1 = AnimElem = 6
anim = 11111
id = 11111
postype = p2
pos = -10,-10
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 400, 3]
type = Explod
triggerall = movehit
triggerall = numexplod(11111) = 0
trigger1 = AnimElem = 6
anim = 11111
id = 11111
postype = p2
pos = 10,-10
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = .5, .5
ignorehitpause = 1

[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; strong_slash_air_up
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 30
ctrl = 0
anim = 620

[State 620, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 9, 2

[State 620, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = A, NA
animtype  = Heavy
damage    = 100
guardflag = MA
hitflag = MA
pausetime = 12,6
guard.pausetime = 5, 5
sparkno = 2
sparkxy = -10,-60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -2   
air.velocity = -1, -8
fall = 1

[State 620, 3]
type = Explod
triggerall = movehit
triggerall = random > 332
triggerall = numexplod(11111) = 0
trigger1 = Time = 10
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

[State 620, 3]
type = Explod
triggerall = movehit
triggerall = numexplod(11111) = 0
trigger1 = Time = 10
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

[State 620, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; strong_slash_air_up_follow_up
[Statedef 628]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 30
ctrl = 0
anim = 620

[State 628, 1]
type = VelSet
trigger1 = 1
y = 0

[State 628, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 9, 2

[State 628, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = A, NA
animtype  = Heavy
damage    = 50
guardflag = MA
hitflag = MAF
pausetime = 12,6
guard.pausetime = 5, 5
sparkno = 2
sparkxy = -10,-60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -2   
air.velocity = -1, 8
fall = 1

[State 628, 3]
type = Explod
triggerall = movehit
triggerall = random > 332
triggerall = numexplod(11111) = 0
trigger1 = Time = 10
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

[State 628, 3]
type = Explod
triggerall = movehit
triggerall = numexplod(11111) = 0
trigger1 = Time = 10
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

[State 628, 4]
type = ChangeState
trigger1 = Time = 20
value = 249
ctrl = 0

;---------------------------------------------------------------------------
; strong_slash_air_fwd
[Statedef 625]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 30
ctrl = 0
anim = 625

[State 625, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 9, 2

[State 625, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = A, NA
animtype  = Heavy
damage    = 95
guardflag = MA
hitflag = MA
pausetime = 16,16
guard.pausetime = 5, 5
sparkno = 2
sparkxy = -10,-60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -16   
air.velocity = -5, -5

[State 625, 3]
type = Explod
triggerall = movehit
triggerall = random > 332
triggerall = numexplod(11111) = 0
trigger1 = Time = 15
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

[State 625, 3]
type = Explod
triggerall = movehit
triggerall = numexplod(11111) = 0
trigger1 = Time = 15
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

[State 625, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; medium_slash_air
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 30
ctrl = 0
anim = 610

[State 610, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 9, 2

[State 610, 1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger1 = Random <= 500
value = 7, 11

[State 610, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = A, NA
animtype  = Medium
damage    = 70
guardflag = MA
hitflag = MA
pausetime = 8,8
guard.pausetime = 5, 5
sparkno = 1
sparkxy = -10,-60
hitsound   = S5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -3   
air.velocity = -3, -7

[State 610, 3]
type = Explod
triggerall = movehit
triggerall = random > 499
triggerall = numexplod(11111) = 0
trigger1 = AnimElem = 5
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

[State 610, 3]
type = Explod
triggerall = movehit
triggerall = numexplod(11111) = 0
trigger1 = AnimElem = 5
anim = 11111
id = 11111
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = .5, .5
ignorehitpause = 1

[State 610, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; light_slash_air
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 30
ctrl = 0
anim = 600

[State 600, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 9, 0

[State 600, 1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger1 = Random <= 500
value = 7, 6

[State 600, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = A, NA
animtype  = Light
damage    = 50
guardflag = MA
hitflag = MA
pausetime = 8,8
guard.pausetime = 5, 5
sparkno = 1
sparkxy = -10,-60
hitsound   = S5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -3   
air.velocity = -3, -7

[State 600, 3]
type = Explod
triggerall = movehit
triggerall = random > 499
triggerall = numexplod(11111) = 0
trigger1 = AnimElem = 5
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

[State 600, 3]
type = Explod
triggerall = movehit
triggerall = numexplod(11111) = 0
trigger1 = AnimElem = 5
anim = 11111
id = 11111
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = .5, .5
ignorehitpause = 1

[State 600, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; kick_stand
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 7
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 240

[State 240, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 6

[State 240, 2]
type = VelSet
trigger1 = 1
x = 1.5

[State 240, 3]
type = PlaySnd
trigger1 = AnimElem = 3
value = 9, 3

[State 240, 5]
type = HitDef
trigger1 = AnimElem = 4
trigger1 = p2movetype = H
trigger1 = movehit = 0
attr = S, NA
animtype  = Heavy
damage    = 30
guardflag = MA
hitflag = MAF
pausetime = 7,7
sparkno = 0
sparkxy = -10,-75
hitsound   = S5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 22
ground.velocity = -4, -4  
air.velocity = -4, -4
fall = 1

[State 240, 4]
type = HitDef
trigger1 = AnimElem = 4
trigger1 = p2movetype != H
trigger1 = movehit = 0
attr = S, NA
animtype  = Heavy
damage    = 90
guardflag = MA
hitflag = MAF
pausetime = 7,7
sparkno = 0
sparkxy = -10,-75
hitsound   = S5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 22
ground.velocity = -4, -4  
air.velocity = -4, -4
fall = 1

[State 240, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; stand_kick_fwd
[Statedef 241]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 20
ctrl = 0
velset = 0,0,0
anim = 241

[State 241, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 9, 3

[State 241, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = C, NA
animtype  = Heavy
damage    = 80
guardflag = MA
hitflag = MAF
pausetime = 9,7
guard.pausetime = 5, 5
sparkno = 2
sparkxy = -10,-10
hitsound   = S5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -8, 0    
air.velocity = -6, 0
fall = 0

[State 241, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ground_kick
[Statedef 280]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 20
ctrl = 0
velset = 0,0,0
anim = 241

[State 280, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 9, 3

[State 280, 3]
type = HitDef
trigger1 = AnimElem = 4
trigger1 = p2stateno > 5000
trigger1 = p2stateno < 5150
attr = C, NA
animtype  = Heavy
damage    = 30
guardflag = MA
hitflag = LFD
pausetime = 9,7
guard.pausetime = 5, 5
sparkno = 2
sparkxy = -10,-10
hitsound   = S5,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -8, 0    
air.velocity = -6, 0
fall = 0

[State 280, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; crouch_kick_quick
[Statedef 441]
type    = C
movetype= A
physics = C
juggle  = 10
poweradd= 20
ctrl = 0
velset = 0,0,0
anim = 441

[State 441, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 9, 3

[State 441, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
animtype  = Light
damage    = 30
guardflag = MA
hitflag = MAF
pausetime = 8,2
sparkno = 1
sparkxy = -10,-10
hitsound   = S5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -4   
air.velocity = -4, 0

[State 441, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; air_kick
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 20
ctrl = 0
anim = 640

[State 640, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 9, 3

[State 640, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = A, NA
animtype  = Medium
damage    = 65
guardflag = MA
hitflag = MAF
pausetime = 8,8
sparkno = 1
sparkxy = -10,-75
hitsound   = S5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -3    
air.velocity = -3, -3

[State 640, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; crouch_kick_knock_down
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 8
poweradd= 20
ctrl = 0
velset = 0,0,0
anim = 440

[State 440, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 9, 3

[State 440, 1]
type = Sprpriority
trigger1 = Time = 0
value = 12

[State 440, 3]
type = HitDef
trigger1 = AnimElem = 2
trigger1 = movetype = H
trigger1 = movehit = 0
attr = C, NA
animtype  = Heavy
damage    = 30
guardflag = MA
hitflag = MAF
pausetime = 2,6
sparkno = 1
sparkxy = -10,-10
hitsound   = S5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -3, -6    
air.velocity = -3, -6
fall = 1
fall.recover = 0

[State 440, 2]
type = HitDef
trigger1 = AnimElem = 2
trigger1 = movetype != H
trigger1 = movehit = 0
attr = C, NA
animtype  = Heavy
damage    = 60
guardflag = MA
hitflag = MAF
pausetime = 2,6
sparkno = 1
sparkxy = -10,-10
hitsound   = S5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -3, -6    
air.velocity = -3, -6
fall = 1
fall.recover = 0

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------

