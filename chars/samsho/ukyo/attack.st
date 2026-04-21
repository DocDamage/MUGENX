;---------------------------------------------------------------------------
; Strong_Slash
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 230

[State 230, 1]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 12
value = 9, 2

[State 230, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 7, 6

[State 230, 2]
type = HitDef
trigger1 = AnimElem = 7
trigger2 = AnimElem = 14
attr = S, NA
animtype  = Heavy
damage    = 70
guardflag = MA
hitflag = MA
pausetime = 10,10
guard.pausetime = 5,5
sparkno = 2
sparkxy = -10,-60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -8   
air.velocity = -3, -6
;fall = 1

[State 230, 3]
type = Explod
trigger1 = Time = 21
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

[State 230, 3]
type = Explod
trigger1 = Time = 31
trigger1 = movehit
trigger1 = numexplod(11112) = 0
anim = 11111
id = 11112
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = 1,1.25
ignorehitpause = 1

[State 230, 3]
type = PlaySnd
trigger1 = AnimTime = 0
value = 8, 2

[State 230, 4]
type = ChangeAnim
trigger1 = AnimElem = 15
trigger1 = Anim = 230
trigger1 = NumExplod(188) = 0
trigger1 = p2life <= 0
value = 187
ctrl = 1

[State 230, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Medium_Slash_Close
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 220

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 9, 1

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 7
attr = S, NA
animtype  = Medium
damage    = 70
guardflag = MA
hitflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = -10,-60
hitsound   = S5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5   
air.velocity = -3, -6
;fall = 1

[State 220, 3]
type = Explod
trigger1 = Time = 15
trigger1 = Random > 499
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

[State 220, 3]
type = Explod
trigger1 = Time = 15
trigger1 = movehit
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
scale = .5,.5
ignorehitpause = 1

[State 220, 3]
type = ChangeAnim
trigger1 = AnimElem = 15
trigger1 = Anim = 220
trigger1 = NumExplod(188) = 0
trigger1 = p2life <= 0
value = 187
ctrl = 1

[State 220, 4]
type = PlaySnd
trigger1 = AnimTime = 0
value = 8, 2

[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Medium_Slash_Far
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
trigger1 = AnimElem = 6
value = 9, 1

[State 225, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 7, 8
volume = 200

[State 225, 2]
type = HitDef
trigger1 = AnimElem = 7
attr = S, NA
animtype  = Medium
damage    = 60
guardflag = MA
hitflag = MA
pausetime = 8,8
sparkno = 1
sparkxy = -10,-60
hitsound   = S5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5   
air.velocity = -3, -6

[State 225, 3]
type = Explod
trigger1 = Time = 15
trigger1 = Random > 499
trigger1 = movehit
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

[State 225, 3]
type = Explod
trigger1 = Time = 15
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
scale = .5,.5
ignorehitpause = 1

[State 225, 3]
type = PlaySnd
trigger1 = AnimTime = 0
value = 8, 2

[State 225, 4]
type = ChangeAnim
trigger1 = AnimElem = 14
trigger1 = Anim = 225
trigger1 = NumExplod(188) = 0
trigger1 = p2life <= 0
value = 187
ctrl = 1

[State 225, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Medium_Slash_Run
[Statedef 228]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 10,0,0
anim = 225
facep2 = 1

[State 228, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 9, 1

[State 228, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 7, 8
volume = 200

[State 228, 2]
type = HitDef
trigger1 = AnimElem = 7
attr = S, NA
animtype  = Medium
damage    = 60
guardflag = MA
hitflag = MAF
pausetime = 8,8
sparkno = 1
sparkxy = -10,-60
hitsound   = S5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5   
air.velocity = -3, -6

[State 228, 3]
type = Explod
trigger1 = Time = 15
trigger1 = Random > 499
trigger1 = movehit
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
trigger1 = Time = 15
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
scale = .5,.5
ignorehitpause = 1

[State 228, 3]
type = PlaySnd
trigger1 = AnimTime = 0
value = 8, 2

[State 228, 4]
type = ChangeAnim
trigger1 = AnimElem = 14
trigger1 = Anim = 225
trigger1 = NumExplod(188) = 0
trigger1 = p2life <= 0
value = 187
ctrl = 1

[State 228, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Light_Slash
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
trigger1 = AnimElem = 3
value = 9, 0

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 7
attr = S, NA
animtype  = Medium
damage    = 45
guardflag = MA
hitflag = MAF
pausetime = 0,10
sparkno = 0
sparkxy = -10,-64
hitsound   = S5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5   
air.velocity = -3, 0

[State 210, 3]
type = Explod
trigger1 = Time = 8
trigger1 = movehit
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
scale = .5,.5
ignorehitpause = 1

[State 210, 3]
type = PlaySnd
trigger1 = AnimTime = 0
value = 8, 2

[State 210, 4]
type = ChangeAnim
trigger1 = AnimElem = 15
trigger1 = Anim = 210
trigger1 = NumExplod(188) = 0
trigger1 = p2life <= 0
value = 187
ctrl = 1

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Light_Slash_Run
[Statedef 218]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 10,0,0
anim = 210
facep2 = 1

[State 218, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 9, 0

[State 218, 2]
type = HitDef
trigger1 = AnimElem = 7
attr = S, NA
animtype  = Medium
damage    = 45
guardflag = MA
hitflag = MAF
pausetime = 0,10
sparkno = 0
sparkxy = -10,-64
hitsound   = S5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5   
air.velocity = -3, 0

[State 218, 3]
type = Explod
trigger1 = Time = 8
trigger1 = movehit
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
scale = .5,.5
ignorehitpause = 1

[State 218, 3]
type = PlaySnd
trigger1 = AnimTime = 0
value = 8, 2

[State 218, 4]
type = ChangeAnim
trigger1 = AnimElem = 15
trigger1 = Anim = 210
trigger1 = NumExplod(188) = 0
trigger1 = p2life <= 0
value = 187
ctrl = 1

[State 218, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Strong_Slash_CrouchClose
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 430

[State 430, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 9, 2

[State 430, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = C, NA
animtype  = Heavy
damage    = 65
guardflag = MA
hitflag = MA
pausetime = 18,18
guard.pausetime = 5,5
sparkno = 2
sparkxy = -10,-30
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -8   
air.velocity = -3, -3

[State 430, 2]
type = HitDef
trigger1 = AnimElem = 8
attr = C, NA
animtype  = Heavy
damage    = 65
guardflag = MA
hitflag = MA
pausetime = 18,18
guard.pausetime = 5,5
sparkno = 2
sparkxy = -10,-60
hitsound   = S5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -8   
air.velocity = -3, -6

[State 430, 3]
type = Explod
trigger1 = Time = 13
trigger1 = movehit
trigger1 = numexplod(11111) = 0
anim = 11111
id = 11111
postype = p2
pos = -10,-40
sprpriority = 5
bindtime = 10
facing = 1
ontop = 1
ownpal = 1
scale = .5,.5
ignorehitpause = 1

[State 430, 3]
type = Explod
trigger1 = Time = 18
trigger1 = movehit
trigger1 = numexplod(11112) = 0
anim = 11111
id = 11112
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
scale = 1,1.25
ignorehitpause = 1

[State 430, 3]
type = PlaySnd
trigger1 = AnimTime = 0
value = 8, 2

[State 430, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Strong_Slash_CrouchFar
[Statedef 435]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 435
facep2 = 1

[State 435, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 9, 2

[State 435, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 7, 7

[State 435, 1.5]
type = VelSet
trigger1 = AnimElem = 3
x = 10

[State 435, 1.5]
type = VelSet
trigger1 = AnimElem = 8
x = 10

[State 435, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = C, NA
animtype  = Heavy
damage    = 110
guardflag = MA
hitflag = MA
pausetime = 10,10
sparkno = 2
sparkxy = -10,-44
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -8   
air.velocity = -3, 5
fall = 1

[State 435, 3]
type = Explod
trigger1 = Time = 11
trigger1 = Random > 499
trigger1 = movehit
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

[State 435, 3]
type = Explod
trigger1 = Time = 11
trigger1 = movehit
trigger1 = numexplod(11111) = 0
anim = 11111
id = 11111
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 30
facing = -1
ontop = 1
ownpal = 1
scale = .5,.5
ignorehitpause = 1

[State 435, 3]
type = PlaySnd
trigger1 = AnimElem = 10
value = 8, 2

[State 435, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Medium_Slash_Crouch
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
trigger1 = AnimElem = 3
value = 9, 1

[State 420, 2]
type = HitDef
trigger1 = AnimElem = 7
attr = C, NA
animtype  = Heavy
damage    = 65
guardflag = MA
hitflag = MA
pausetime = 10,10
guard.pausetime = 5,5
sparkno = 1
sparkxy = -10,-60
hitsound   = S5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -8   
air.velocity = -3, -6

[State 420, 3]
type = Explod
trigger1 = Time = 17
trigger1 = Random > 499
trigger1 = movehit
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

[State 420, 3]
type = Explod
trigger1 = Time = 17
trigger1 = movehit
trigger1 = numexplod(11111) = 0
anim = 11111
id = 11111
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 30
facing = 1
ontop = 1
ownpal = 1
scale = .5,.5
ignorehitpause = 1

[State 420, 3]
type = PlaySnd
trigger1 = AnimTime = 0
value = 8, 2

[State 420, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Light_Slash_Crouch
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
trigger1 = AnimElem = 3
value = 9, 0

[State 410, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = C, NA
animtype  = Light
damage    = 35
guardflag = MA
hitflag = MAF
pausetime = 10,10
sparkno = 0
sparkxy = -10,-50
hitsound   = S5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -5   
air.velocity = -3, 0

[State 410, 3]
type = Explod
trigger1 = Time = 8
trigger1 = movehit
trigger1 = numexplod(11111) = 0
anim = 11111
id = 11111
postype = p2
pos = -10,-55
sprpriority = 5
bindtime = 10
facing = 1
ontop = 1
ownpal = 1
scale = .5,.5
ignorehitpause = 1

[State 410, 3]
type = PlaySnd
trigger1 = AnimTime = 0
value = 8, 2

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Light_Medium_Slash_CrouchClose
[Statedef 415]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 10
ctrl = 0
velset = 0,0,0
anim = 415

[State 415, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 9, 0

[State 415, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
animtype  = Light
damage    = 40
guardflag = MA
hitflag = MAF
pausetime = 4,5
sparkno = 0
sparkxy = -10,-38
hitsound   = S5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -4   
air.velocity = -4, -2

[State 415, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Strong_Slash_Air
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 20
ctrl = 0
anim = 630

[State 630, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 9, 2

[State 630, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 7

[State 630, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Heavy
damage    = 90
guardflag = MA
hitflag = MAF
pausetime = 8,10
sparkno = 2
sparkxy = -10,-40
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -6    
air.velocity = -3, -4

[State 630, 3]
type = Explod
trigger1 = Time = 12
trigger1 = Random > 499
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

[State 630, 3]
type = Explod
trigger1 = Time = 12
trigger1 = movehit
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
scale = 1,1.5
ignorehitpause = 1

[State 630, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Medium_Slash_Air
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 15
ctrl = 0
anim = 620

[State 620, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 9, 1

[State 620, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Medium
damage    = 70
guardflag = MA
hitflag = MAF
pausetime = 4,6
sparkno = 2
sparkxy = -10,-40
hitsound   = S5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -4
air.velocity = -3

[State 620, 3]
type = Explod
trigger1 = Time = 10
trigger1 = Random > 499
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

[State 620, 3]
type = Explod
trigger1 = Time = 10
trigger1 = movehit
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
scale = .5,.5
ignorehitpause = 1

[State 620, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Light_Slash_Air
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 10
ctrl = 0
anim = 610

[State 610, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 9, 0

[State 610, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Light
damage    = 50
guardflag = MA
hitflag = MAF
pausetime = 2,2
sparkno = 1
sparkxy = -10,-40
hitsound   = S5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -2   
air.velocity = -2, 0

[State 610, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Kick_Stand
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 20
ctrl = 0
velset = 0,0,0
anim = 250

[State 250, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 9, 3

[State 250, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Medium
damage    = 65
guardflag = MA
hitflag = MAF
pausetime = 6,6
sparkno = 2
sparkxy = -10,-45
hitsound   = S5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -3   
air.velocity = -3, 0

[State 250, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Slide_Kick
[Statedef 260]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 20
ctrl = 0
velset = 0,0,0
anim = 260

[State 260, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 9, 5

[State 260, 2]
type = VelSet
trigger1 = Time = 8
x = 10

[State 260, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = C, NA
animtype  = Heavy
damage    = 60
guardflag = MA
hitflag = MAF
pausetime = 9,7
sparkno = 2
sparkxy = -10,-10
hitsound   = S5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -2, -5    
air.velocity = -2, -5
fall = 1

[State 260, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch_Kick_Quick
[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 20
ctrl = 0
velset = 0,0,0
anim = 450

[State 450, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 9, 4

[State 450, 2]
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

[State 450, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch_Kick_Knock_Down
[Statedef 460]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 20
ctrl = 0
velset = 0,0,0
anim = 460

[State 460, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 9, 3

[State 460, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = C, NA
animtype  = Heavy
damage    = 60
guardflag = MA
hitflag = MAF
pausetime = 6,6
sparkno = 1
sparkxy = -10,-40
hitsound   = S5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -3    
air.velocity = -3, -6
fall = 1

[State 460, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Kick_Air
[Statedef 660]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 10
ctrl = 0
anim = 660

[State 660, 1]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
value = 9, 3

[State 660, 2]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
attr = S, NA
animtype  = Light
damage    = 30
guardflag = MA
hitflag = MAF
pausetime = 2,2
sparkno = 1
sparkxy = -10,-40
hitsound   = S5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -4   
air.velocity = -4, 0

[State 660, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;------------------------------------------------------
