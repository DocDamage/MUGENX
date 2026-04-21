;---------------------------------------------------------------------------
; RUNNING_SHOULDER_RAM
[Statedef 10000]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0,0
anim = 1000

[State 10000, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 1 ;EFFECT2

[State 10000, 2]
type = PlaySnd
trigger1 = Time = 1
value = 7, 6 ;ATTACK!

[State 10000, 3]
type = PosAdd
trigger1 = Time > 14
x=9

[State 10000, 3.5]
type = AfterImage
trigger1 = Time = 1
time = 24
trans = add1

[State 10000, 4]
type = HitDef
trigger1 = Time = 15
trigger2 = Time = 20
trigger3 = Time = 25
trigger4 = Time = 30
trigger5 = AnimElem = 3
attr = S, NA
animtype  = Heavy
damage    = 40, 5
getpower = 0
givepower = 55
guardflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = -25,-40
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -9,-3.2   
air.velocity = -9,-3.2
fall = 1

[State 10000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; LEAPING_HEADBUTT_PRE
[Statedef 11000]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0,0
anim = 1100

[State 11000, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 7, 1 ;EFFECT2

[State 11000, 2]
type = PlaySnd
trigger1 = Time = 1
value = 7, 6 ;ATTACK!

[State 11000, 5]
type = ChangeState
trigger1 = Time = 8
value = 11100
ctrl = 1

; LEAPING_HEADBUTT_GO!
[Statedef 11100]
type    = A
movetype= A
physics = A
ctrl = 0
velset = 0,0,0
anim = 1110

[State 11100, 2]
type = PlaySnd
trigger1 = Time = 1
value = 7, 3 ;WHOOSH!

[State 11100, 3]
type = PosAdd
trigger1 = Time >= 0
x=2
y=-11

[State 11100, 3.5]
type = AfterImage
trigger1 = Time = 1
time = 24
trans = add1

[State 11100, 4]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
attr = A, SA
animtype  = Heavy
damage    = 30, 5
getpower = 0
givepower = 55
guardflag = MA
pausetime = 3,3
sparkno = 2
sparkxy = -18,-70
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1,-10    
air.velocity = -1,-10
fall = 1

[State 11100, 4]
type = HitDef
trigger1 = AnimElem = 3
attr = A, SA
animtype  = Heavy
damage    = 55, 5
getpower = 0
givepower = 55
guardflag = MA
pausetime = 3,3
sparkno = 2
sparkxy = -18,-70
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4,-2   
air.velocity = -4,-2
fall = 1

[State 11100, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11200
ctrl = 1

; LEAPING_HEADBUTT_DOWN
[Statedef 11200]
type    = A
movetype= A
physics = A
ctrl = 0
velset = 2,0,0

[State 11200, 5]
type = ChangeState
trigger1 = Time = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; GRAB
[Statedef 13000]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0,0
anim = 1300

[State 13000, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 7, 1 ;EFFECT2

[State 13000, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 10 ;ATTACK2!

[State 13000, 1.5]
type = AfterImage
trigger1 = Time = 1
time = 24
trans = add1

[State 13000, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NT
animtype  = Heavy
damage    = 0
getpower = 0
givepower = 55
fall.damage = 80
guardflag = 
pausetime = 5,18
sparkno = 0
sparkxy = -25,-40
hitsound   = S5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = 6,-4   
air.velocity = 3,-4
fall = 1
fall.recover = 0

[State 13000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; LEAPING_ROUNDHOUSE
[Statedef 14000]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0,0
anim = 1100

[State 14000, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 7, 1 ;EFFECT2

[State 14000, 2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 7, 10 ;ATTACK2!

[State 14000, 5]
type = ChangeState
trigger1 = Time = 4
value = 14100
ctrl = 1

[Statedef 14100]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
velset = 0,0,0
anim = 230

[State 14100, .5]
type = AfterImage
trigger1 = Time = 1
time = 24
trans = add1

[State 14100, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 3 ;WHOOSH!

[State 14100, 1]
type = VelAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
x = 2
y = -4

[State 14100, 1]
type = VelAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
x = 1
y = -1

[State 14100, 1]
type = VelAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
x = .5
y = -.5

[State 14100, 2]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = A, SA
animtype  = Heavy
damage    = 35, 1
getpower = 0
givepower = 55
guardflag = MA
pausetime = 3,3
sparkno = 2
sparkxy = -25,-40
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5   
air.velocity = -5,-5

[State 14100, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = A, SA
animtype  = Heavy
damage    = 135, 5
getpower = 0
givepower = 55
guardflag = MA
pausetime = 3,3
sparkno = 2
sparkxy = -25,-40
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8,-5   
air.velocity = -8,-5
fall = 1

[State 14100, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

; ADDITIONAL_LEAPING_ROUNDHOUSE
[Statedef 14200]
type    = A
movetype= A
physics = A
juggle  = 1
ctrl = 0
velset = 0,0,0
anim = 230

[State 14200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 3 ;WHOOSH!

[State 14200, 1]
type = VelAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
x = 2
y = -2

[State 14200, 1]
type = VelAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
x = 1
y = -1

[State 14200, 1]
type = VelAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
x = .5
y = -.5

[State 14200, 1.5]
type = AfterImage
trigger1 = Time = 1
time = 24
trans = add1

[State 14200, 2]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = A, SA
animtype  = Heavy
damage    = 35, 1
getpower = 0
givepower = 55
guardflag = MA
pausetime = 3,3
sparkno = 2
sparkxy = -25,-40
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5   
air.velocity = -5,-5

[State 14200, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = A, SA
animtype  = Heavy
damage    = 75, 5
getpower = 0
givepower = 55
guardflag = MA
pausetime = 3,3
sparkno = 2
sparkxy = -25,-40
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8,-5   
air.velocity = -8,-5
fall = 1

[State 14200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; PANDA_RAGE
[Statedef 15000]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0,0
anim = 1510

[State 15000, 1]
type = ChangeState
trigger1 = Time = 8
value = 15100
ctrl = 1

[Statedef 15100]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 1500

[State 15100, .5]
type = AfterImage
trigger1 = Time = 1
time = 24
trans = add1

[State 15100, 1]
type = PlaySnd
trigger1 = Time = 1
value = 7, 10 ;ATTACK2!

[State 15100, 1]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
trigger4 = AnimElem = 9
trigger5 = AnimElem = 10
trigger6 = AnimElem = 13
trigger7 = AnimElem = 14
value = 7, 1 ;EFFECT2

[State 15100, 1]
type = VelAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 9
trigger6 = AnimElem = 10
trigger7 = AnimElem = 13
trigger8 = AnimElem = 14
x = 1

[State 15100, 1]
type = VelAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
trigger5 = AnimElem = 11
trigger6 = AnimElem = 12
trigger7 = AnimElem = 15
trigger8 = AnimElem = 16
x = .7

[State 15100, 1]
type = VelAdd
trigger1 = AnimElem = 17
trigger2 = AnimElem = 18
x = .5

[State 15100, 2]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
trigger5 = AnimElem = 6
trigger6 = AnimElem = 7
trigger7 = AnimElem = 8
trigger8 = AnimElem = 9
trigger9 = AnimElem = 10
trigger10 = AnimElem = 11
trigger11 = AnimElem = 12
trigger12 = AnimElem = 13
trigger13 = AnimElem = 14
trigger14 = AnimElem = 15
trigger15 = AnimElem = 16
trigger16 = AnimElem = 17
trigger17 = AnimElem = 18
trigger18 = AnimElem = 19
trigger19 = AnimElem = 20
attr = S, HA
animtype  = Heavy
damage    = 9,1
getpower = 0
givepower = 15
guardflag = MA
pausetime = 3,3
sparkno = 1
sparkxy = -25,-46
hitsound   = S5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1   
air.velocity = -1,-1
airguard.velocity = -3.5   
guard.velocity = -3.5
numhits = 3

[State 15100, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; VERBAL_ATTACK
[Statedef 16000]
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
velset = 0,0,0
anim = 1610

[State 16000, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 7 ;FLY

[State 16000, 1]
type = PlaySnd
trigger1 = Time = 1
value = 7, 10 ;ATTACK2!

[State 16000, 1.5]
type = AfterImage
trigger1 = Time = 1
time = 24
trans = add1

[State 16000, 2]
type = Projectile
trigger1 = AnimElem = 3
projid = 1600
projanim = 1600
projhitanim = 1601
projshadow = -1
offset = 15, -60        ;Creation offset from player (x,y)
velocity = 10, -3       ;Speed fireball moves (x,y) (optional)
remvelocity = 1, -2     ;Speed fireball moves when being removed (x,y) (opt)
accel = 0, .3            ;Acceleration (opt)
projhits = 3
projmisstime = 1
projremove = 1
attr = S, SP
damage    = 35,5
getpower = 0
givepower = 30
hitflag = MAF
guardflag = MA
pausetime = 3,3
sparkno = 1
sparkxy = 0, 0
hitsound   = S5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5,-5   
fall = 1
airguard.velocity = -3.5   
air.type = High
air.velocity = -1,-5
fall.recover = 0

[State 16000, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;SUPERSONIC_PUNCH
[Statedef 17000]
type    = C
movetype= A
physics = C
juggle  = 1
ctrl = 0
anim = 1700

[State 17000, 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 1 ;EFFECT2

[State 17000, 1]
type = PosAdd
trigger1 = Time > 7
x = 17 ;6.5

[State 17000, 1.5]
type = AfterImage
trigger1 = Time = 1
time = 24
trans = add1

[State 17000, 1.7]
type = ChangeState
trigger1 = AnimElem = 4
trigger1 = command = "holdy"
value = 15100
ctrl = 1

[State 17000, 2]
type = AfterImage
trigger1 = Time = 1
time = 24
trans = add1

[State 17000, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = C, NA
damage    = 75
getpower = 0
givepower = 55
hitflag = MAF
guardflag = MA
pausetime = 3,3
sparkxy = -24,-28
sparkno = 1
hitsound   = S5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 15
ground.velocity = -5,-7   
air.velocity = -5,-7
guard.velocity = -5   
fall = 1

[State 17000, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; COMBO_BREAKER
[Statedef 21000]
type    = A
movetype= A
physics = A
ctrl = 0
velset = 0,0,0
anim = 1110

[State 21000, 2]
type = PlaySnd
trigger1 = Time = 1
value = 7, 4 ;BREAKER!
volume = 100

[State 21000, 3]
type = PosAdd
trigger1 = Time >= 0
x=2
y=-11

[State 21000, 3.5]
type = AfterImage
trigger1 = Time = 1
time = 24
trans = add1

[State 21000, 4]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
attr = A, SA
animtype  = Heavy
damage    = 75, 5
getpower = 0
givepower = 55
guardflag = MA
pausetime = 3,3
sparkno = 2
sparkxy = -18,-70
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1,-10    
air.velocity = -1,-10
fall = 1

[State 21000, 4]
type = HitDef
trigger1 = AnimElem = 3
attr = A, SA
animtype  = Heavy
damage    = 65, 5
getpower = 0
givepower = 55
guardflag = MA
pausetime = 3,3
sparkno = 2
sparkxy = -18,-70
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4,-2   
air.velocity = -4,-2
fall = 1

[State 21000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 21100
ctrl = 1

[Statedef 21100]
type    = A
movetype= A
physics = A
ctrl = 0
velset = 2,0,0

[State 21100, 5]
type = ChangeState
trigger1 = Time = 0
value = 50
ctrl = 1

