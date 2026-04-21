;---------------------------------------------------------------------------
; JAB
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 200
poweradd = 20

[State 200]
type = PlaySnd
trigger1 = Time = 2
value = 7, 0 ;EFFECT1

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage    = 23
getpower = 0
givepower = 15
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 7,8
numhits = 1
sparkno = 0
sparkxy = -10,-45
hitsound = S5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 11
ground.velocity = -2
airguard.velocity = -1.9    
air.velocity = -1.3,-3

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; OSTRICH_PUNCH
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
value = 7, 1 ;EFFECT2

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Heavy
damage    = 75
getpower = 0
givepower = 15
guardflag = MA
hitflag = MAF
pausetime = 11,11
sparkno = 1
sparkxy = -20,-30
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5, 5   
air.velocity = -5, 5
fall = 1
fall.recover = 0

[State 210, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; QUICK_KICK
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 45
ctrl = 0
velset = 0,0,0
anim = 220

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 0 ;EFFECT1

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Medium
damage    = 55
getpower = 0
givepower = 15
guardflag = MA
pausetime = 5,5
sparkno = 0
sparkxy = -15,-40
hitsound   = S5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3
air.velocity = -3

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ROUNDHOUSE
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 45
ctrl = 0
velset = 0,0,0
anim = 230

[State 230, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 0 ;EFFECT1

[State 230, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 7, 1 ;EFFECT2

[State 230, 1]
type = VelAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
x = 4

[State 230, 1]
type = VelAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
x = 2

[State 230, 1]
type = VelAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
x = 1

[State 230, 2]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = S, NA
animtype  = Medium
damage    = 20, 1
getpower = 0
givepower = 15
guardflag = MA
pausetime = 5,5
sparkno = 1
sparkxy = -25,-60
hitsound   = S5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3   
air.velocity = -3,-5

[State 230, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Heavy
damage    = 55, 5
getpower = 0
givepower = 15
guardflag = MA
pausetime = 7,7
sparkno = 2
sparkxy = -25,-55
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8 ,-5  
air.velocity = -8,-5
fall = 1

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;CROUCH_JAB
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 15
ctrl = 0
anim = 400

[State 400, 1]
type = PlaySnd
trigger1 = Time = 1
value = 7, 0 ;EFFECT1

[State 400, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 23
getpower = 0
givepower = 15
animtype  = Light
hitflag = MAF
guardflag = MA
pausetime = 5,5
sparkxy = -20,-28
sparkno = 0
hitsound   = S5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -4
air.velocity = -1.3,-3
down.velocity = -4,0
down.hittime = 20

[State 400, 3]
type = CtrlSet
trigger1 = AnimElem = 3
value = 1

[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11

;---------------------------------------------------------------------------
;SLIDE
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 25
ctrl = 0
anim = 410

[State 410, 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 1 ;EFFECT2

[State 410, 2.5]
type = VelAdd
trigger1 = AnimElem = 3
x = 10

[State 410, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 75
getpower  = 0
givepower = 15
hitflag = MAF
guardflag = MA
pausetime = 8,8
sparkxy = -24,-28
sparkno = 1
hitsound   = S5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 15
ground.velocity = -6,6  
air.velocity = -6,6
guard.velocity = -5
fall = 1

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;QUICK_CROUCH_KICK
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 55
ctrl = 0
anim = 420

[State 420, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 0 ;EFFECT1

[State 420, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage    = 45
getpower  = 0
givepower = 15
hitflag = MAF
guardflag = MA
pausetime = 4,4
sparkxy = -20,-10
sparkno = 0
hitsound   = S5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -.7
air.velocity = -.7
guard.velocity = -5

[State 420, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;BUTT_KICK
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 55
ctrl = 0
anim = 600

[State 600, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = A, NA
damage    = 70
getpower  = 0
givepower = 15
guardflag = MA
priority = 3
pausetime = 9,10
sparkxy = -10,0
sparkno = 1
hitsound   = S5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 9
ground.hittime  = 9
ground.velocity = -4
air.velocity = -1.3,-3

[State 600, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;OSTRICH_PUNCH_AIR
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 55
ctrl = 0
anim = 610

[State 610, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 1 ;EFFECT2

[State 610, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage    = 85
getpower  = 0
givepower = 15
hitflag = MAFD
guardflag = MA
priority = 3
pausetime = 9,10
sparkxy = -10,0
sparkno = 2
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 9
ground.hittime  = 9
ground.velocity = -4,8   
air.velocity = -1.3,8
fall = 1
fall.recover = 0

[State 610, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
HYPER_ATTACKS
;---------------------------------------------------------------------------
; JAB
[Statedef 201]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
ctrl = 0
anim = 200

[State 201]
type = PlaySnd
trigger1 = Time = 2
value = 7, 0 ;EFFECT1

[State 201, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage    = 23
getpower = 0
givepower = 15
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 7,8
numhits = 1
sparkno = 0
sparkxy = -10,-45
hitsound = S5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 11
ground.velocity = -2
airguard.velocity = -1.9    
air.velocity = -1.3,-3

[State 201, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; OSTRICH_PUNCH
[Statedef 211]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0,0
anim = 210

[State 211, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 1 ;EFFECT2

[State 211, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Heavy
damage    = 75
getpower = 0
givepower = 15
guardflag = MA
hitflag = MAFD
pausetime = 11,11
sparkno = 1
sparkxy = -20,-30
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5,5   
air.velocity = -5, 5
fall = 1
fall.recover = 0

[State 211, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; QUICK_KICK
[Statedef 221]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0,0
anim = 220

[State 221, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 0 ;EFFECT1

[State 221, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Medium
damage    = 55
getpower = 0
givepower = 15
guardflag = MA
pausetime = 5,5
sparkno = 0
sparkxy = -15,-40
hitsound   = S5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3
air.velocity = -3

[State 221, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ROUNDHOUSE
[Statedef 231]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0,0
anim = 230

[State 231, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 0 ;EFFECT1

[State 231, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 7, 1 ;EFFECT2

[State 231, 1]
type = VelAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
x = 4

[State 231, 1]
type = VelAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
x = 2

[State 231, 1]
type = VelAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
x = 1

[State 231, 2]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = S, NA
animtype  = Medium
damage    = 20, 1
getpower = 0
givepower = 15
guardflag = MA
pausetime = 5,5
sparkno = 1
sparkxy = -25,-60
hitsound   = S5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3   
air.velocity = -3,-5

[State 231, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Heavy
damage    = 55, 5
getpower = 0
givepower = 15
guardflag = MA
pausetime = 7,7
sparkno = 2
sparkxy = -25,-55
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8,-5   
air.velocity = -8,-5
fall = 1

[State 231, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;CROUCH_JAB
[Statedef 401]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 400

[State 401, 1]
type = PlaySnd
trigger1 = Time = 1
value = 7, 0 ;EFFECT1

[State 401, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 23
getpower = 0
givepower = 15
animtype  = Light
hitflag = MAF
guardflag = MA
pausetime = 5,5
sparkxy = -20,-28
sparkno = 0
hitsound   = S5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -4
air.velocity = -1.3,-3
down.velocity = -4,0
down.hittime = 20

[State 401, 3]
type = CtrlSet
trigger1 = AnimElem = 3
value = 1

[State 401, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11

;---------------------------------------------------------------------------
;SLIDE
[Statedef 411]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 410

[State 411, 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 1 ;EFFECT2

[State 411, 2.5]
type = VelAdd
trigger1 = AnimElem = 3
x = 10

[State 411, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 75
getpower  = 0
givepower = 15
hitflag = MAF
guardflag = MA
pausetime = 8,8
sparkxy = -24,-28
sparkno = 1
hitsound   = S5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 15
ground.velocity = -6,6  
air.velocity = -6,6
guard.velocity = -5
fall = 1

[State 411, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;QUICK_CROUCH_KICK
[Statedef 421]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 420

[State 421, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 0 ;EFFECT1

[State 421, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage    = 45
getpower = 0
givepower = 15
hitflag = MAF
guardflag = MA
pausetime = 4,4
sparkxy = -20,-10
sparkno = 0
hitsound   = S5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -.7
air.velocity = -.7
guard.velocity = -5

[State 421, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;BUTT_KICK
[Statedef 601]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 600

[State 601, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = A, NA
damage    = 70
getpower  = 0
givepower = 15
guardflag = MA
priority = 3
pausetime = 9,10
sparkxy = -10,0
sparkno = 1
hitsound   = S5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 9
ground.hittime  = 9
ground.velocity = -4
air.velocity = -1.3,-3

[State 601, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;OSTRICH_PUNCH_AIR
[Statedef 611]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
anim = 610

[State 611, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 9, 3 ;EFFECT2

[State 611, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
damage    = 85
getpower  = 0
givepower = 15
hitflag = MAFD
guardflag = MA
priority = 3
pausetime = 9,10
sparkxy = -10,0
sparkno = 2
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 9
ground.hittime  = 9
ground.velocity = -4,8   
air.velocity = -1.3,8
fall = 1
fall.recover = 0

[State 611, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;------------------------------------------------------
