;---------------------------------------------------------------------------
; FATHERS_RAGE#1
[Statedef 4000]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 4000

[State 4000, Super A]
type = SuperPause
trigger1 = Time = 0
pos = 6, 200
anim = -1

[State 4000, Super B]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8, 3

[State 4000, Super C]
type = PowerAdd
trigger1 = AnimElem = 1
value = -1000

[State 4000, Super D]
type = AfterImage
trigger1 = AnimElem = 1
time = 2

[State 4000, Super E]
type = AfterImage
trigger1 = AnimElem = 1
Time = 44

[State 4000, Super F]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 12

[State 4000, 1]
type = Explod
trigger1 = time = 0
anim = 11111
pos = -10,-10
postype = back
sprpriority = -2
supermove = 1
ownpal = 1

[State 4000, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 1 ;EFFECT2

[State 4000, 1]
type = PlaySnd
trigger1 = Time = 1
value = 7, 2 ;ATTACK!

[State 4000, 1]
type = VelAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 9
trigger6 = AnimElem = 10
trigger7 = AnimElem = 13
trigger8 = AnimElem = 14
x = 3

[State 4000, 1]
type = VelAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
trigger5 = AnimElem = 11
trigger6 = AnimElem = 12
trigger7 = AnimElem = 15
trigger8 = AnimElem = 16
x = 2

[State 4000, 1]
type = VelAdd
trigger1 = AnimElem = 17
trigger2 = AnimElem = 18
x = 1

[State 4000, 2]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 6
trigger5 = AnimElem = 7
trigger6 = AnimElem = 8
trigger7 = AnimElem = 10
trigger8 = AnimElem = 11
trigger9 = AnimElem = 12
trigger10 = AnimElem = 14
trigger11 = AnimElem = 15
attr = S, HA
animtype  = Heavy
damage    = 21,1
getpower = 0
guardflag = MA
pausetime = 2,2
sparkno = 2
sparkxy = -25,-40
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1   
air.velocity = -1,-1
fall.recover = 0

[State 4000, 2]
type = HitDef
trigger1 = AnimElem = 16
attr = S, HA
animtype  = Heavy
damage    = 75, 5
getpower = 0
guardflag = MA
pausetime = 15,15
sparkno = 2
sparkxy = -25,-40
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6,-6   
air.velocity = -6,-6
fall = 1
fall.recover = 0

[State 4000, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; RUMIKOS_RAGE
[Statedef 4100]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 4100

[State 4100, Super A]
type = SuperPause
trigger1 = Time = 0
pos = 6, 200
anim = -1

[State 4100, Super B]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8, 3

[State 4100, Super C]
type = PowerAdd
trigger1 = AnimElem = 1
value = -3000

[State 4100, Super D]
type = AfterImage
trigger1 = AnimElem = 1
time = 2

[State 4100, Super E]
type = AfterImage
trigger1 = AnimElem = 1
Time = 4

[State 4100, Super F]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 12

[State 4100, 1]
type = Explod
trigger1 = time = 0
anim = 11111
pos = -10,-10
postype = back
sprpriority = -2
supermove = 1
ownpal = 1

[State 4100, 1]
type = Explod
trigger1 = time = 1
anim = 10000
pos = -320,0
postype = right
sprpriority = -2
supermove = 1
removetime = 100
bindtime = 100

[State 4100, 1]
type = PlaySnd
trigger1 = time = 1
value = 8, 4

[State 4100, 1]
type = PlaySnd
trigger1 = Time = 60
value = 8, 0 ;AKANE1

[State 4100, 1]
type = PlaySnd
trigger1 = Time = 4
value = 8, 6 ;UKYO

[State 4100, 1]
type = PlaySnd
trigger1 = Time = 35
value = 8, 7 ;KUNO

[State 4100, 1]
type = PlaySnd
trigger1 = Time = 100
value = 8, 1 ;AKANE2

;KUNO
[State 4100, 2]
type = Projectile
trigger1 = Time = 10
projid = 4160
projanim = 4160
projhitanim = 4161
projshadow = -1
postype = back
offset = -20, -10        ;Creation offset from player (x,y)
velocity = 9.5, -2       ;Speed fireball moves (x,y) (optional)
remvelocity = 5, -5     ;Speed fireball moves when being removed (x,y) (opt)
accel = 0, .1            ;Acceleration (opt)
projhits = 1
projmisstime = 1
projremove = 1
attr = S, HP
damage    = 65,5
getpower = 0
givepower = 30
hitflag = MAFD
guardflag = MA
pausetime = 0,50
sparkno = 2
sparkxy = 25, -60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -1,-3   
fall = 1
airguard.velocity = 0  
guard.velocity = 0  
air.type = High
air.velocity = -1,-3
fall.recover = 0

;UKYO
[State 4100, 2]
type = Projectile
trigger1 = Time = 10
projid = 4170
projanim = 4170
projhitanim = 4171
projshadow = -1
postype = back
offset = 320, -20        ;Creation offset from player (x,y)
velocity = -9.5, -2       ;Speed fireball moves (x,y) (optional)
remvelocity = -5, -5     ;Speed fireball moves when being removed (x,y) (opt)
accel = 0, .1            ;Acceleration (opt)
projhits = 1
projmisstime = 1
projremove = 1
attr = S, HP
damage    = 65,5
getpower = 0
givepower = 30
hitflag = MAFD
guardflag = MA
pausetime = 0,50
sparkno = 2
sparkxy = 25, -60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -5,-3   
fall = 1
airguard.velocity = 0  
guard.velocity = 0  
air.type = High
air.velocity = -5,-3
fall.recover = 0

;WHO
[State 4100, 2]
type = Projectile
trigger1 = Time = 20
projid = 4180
projanim = 4180
projhitanim = 4181
projshadow = -1
postype = back
offset = 160, 50        ;Creation offset from player (x,y)
velocity = 0, -7       ;Speed fireball moves (x,y) (optional)
remvelocity = 0, -5     ;Speed fireball moves when being removed (x,y) (opt)
accel = 0, 0            ;Acceleration (opt)
projhits = 3
projmisstime = 1
projremove = 1
attr = S, HP
damage    = 20,5
getpower = 0
givepower = 30
hitflag = MAFD
guardflag = MA
pausetime = 0,50
sparkno = 2
sparkxy = 25, -60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -1,-3   
fall = 1
airguard.velocity = 0  
guard.velocity = 0  
air.type = High
air.velocity = -1,-3
fall.recover = 0

;RYOGA
[State 4100, 2]
type = Projectile
trigger1 = Time = 30
projid = 4190
projanim = 4190
projhitanim = 4191
projshadow = -1
postype = back
offset = 320, -90        ;Creation offset from player (x,y)
velocity = -7.5, -2       ;Speed fireball moves (x,y) (optional)
remvelocity = -2, -5     ;Speed fireball moves when being removed (x,y) (opt)
accel = 0, .1            ;Acceleration (opt)
projhits = 1
projmisstime = 1
projremove = 1
attr = S, HP
damage    = 65,5
getpower = 0
givepower = 30
hitflag = MAFD
guardflag = MA
pausetime = 0,50
sparkno = 2
sparkxy = 25, -60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -5,-3   
fall = 1
airguard.velocity = 0  
guard.velocity = 0  
air.type = High
air.velocity = -5,-3
fall.recover = 0

;KODACHI
[State 4100, 2]
type = Projectile
trigger1 = Time = 40
projid = 4195
projanim = 4195
projhitanim = 4196
projshadow = -1
postype = back
offset = -20, -90        ;Creation offset from player (x,y)
velocity = 9.5, -2       ;Speed fireball moves (x,y) (optional)
remvelocity = 6, -5     ;Speed fireball moves when being removed (x,y) (opt)
accel = 0, .3            ;Acceleration (opt)
projhits = 1
projmisstime = 1
projremove = 1
attr = S, HP
damage    = 65,5
getpower = 0
givepower = 30
hitflag = MAFD
guardflag = MA
pausetime = 0,50
sparkno = 2
sparkxy = 25, -60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -1,-3   
fall = 1
airguard.velocity = 0  
guard.velocity = 0  
air.type = High
air.velocity = -1,-3
fall.recover = 0

;AKANE
[State 4100, 2]
type = Projectile
trigger1 = Time = 60
projid = 4150
projanim = 4150
projhitanim = 250
projshadow = -1
postype = back
offset = -20, -50        ;Creation offset from player (x,y)
velocity = 9.5, -2       ;Speed fireball moves (x,y) (optional)
remvelocity = -3, -5     ;Speed fireball moves when being removed (x,y) (opt)
accel = 0, .3            ;Acceleration (opt)
projhits = 8
projmisstime = 1
projremove = 1
attr = S, HP
damage    = 30,5
getpower = 0
givepower = 30
hitflag = MAFD
guardflag = MA
pausetime = 4,4
sparkno = 2
sparkxy = 25, -60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -5,-5   
guard.velocity = 0  
fall = 1
airguard.velocity = 0  
air.type = High
air.velocity = -1,-5
fall.recover = 0

[State 4100, 3]
type = ChangeState
trigger1 = Time = 100
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; FATHERS_RAGE#2
[Statedef 4200]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 4200

[State 4200, Super A]
type = SuperPause
trigger1 = Time = 0
pos = 6, 200
anim = -1

[State 4200, Super B]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8, 3

[State 4200, Super C]
type = PowerAdd
trigger1 = AnimElem = 1
value = -1000

[State 4200, Super D]
type = AfterImage
trigger1 = AnimElem = 1
time = 2

[State 4200, Super E]
type = AfterImage
trigger1 = AnimElem = 1
Time = 44

[State 4200, Super F]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 12

[State 4200, 1]
type = Explod
trigger1 = time = 0
anim = 11111
pos = -10,-10
postype = back
sprpriority = -2
supermove = 1
ownpal = 1

[State 4200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 1 ;EFFECT2

[State 4200, 1]
type = PlaySnd
trigger1 = Time = 1
value = 7, 2 ;ATTACK!

[State 4200, 1]
type = VelAdd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 9
trigger6 = AnimElem = 10
trigger7 = AnimElem = 13
trigger8 = AnimElem = 14
x = 3

[State 4200, 1]
type = VelAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
trigger5 = AnimElem = 11
trigger6 = AnimElem = 12
trigger7 = AnimElem = 15
trigger8 = AnimElem = 16
x = 2

[State 4200, 1]
type = VelAdd
trigger1 = AnimElem = 17
trigger2 = AnimElem = 18
x = 1

[State 4200, 2]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
trigger5 = AnimElem = 10
trigger6 = AnimElem = 12
trigger7 = AnimElem = 14
trigger8 = AnimElem = 16
trigger9 = AnimElem = 18
trigger10 = AnimElem = 20
attr = S, HA
animtype  = Heavy
damage    = 21,1
getpower = 0
guardflag = MA
pausetime = 2,2
sparkno = 2
sparkxy = -25,-40
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1,-1   
air.velocity = -1,-1
fall = 1
fall.recover = 0

[State 4200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 210
ctrl = 1

;---------------------------------------------------------------------------
; THOUSAND_CURSES
[Statedef 4300]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 4300

[State 4300, Super A]
type = SuperPause
trigger1 = Time = 0
pos = 6, 200
anim = -1

[State 4300, Super B]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8, 3

[State 4300, Super C]
type = PowerAdd
trigger1 = AnimElem = 1
value = -1000

[State 4300, Super D]
type = AfterImage
trigger1 = AnimElem = 1
time = 2

[State 4300, Super E]
type = AfterImage
trigger1 = AnimElem = 1
Time = 44

[State 4300, Super F]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 12

[State 4300, 1]
type = Explod
trigger1 = time = 0
anim = 11111
pos = -10,-10
postype = back
sprpriority = -2
supermove = 1
ownpal = 1

[State 4300, 1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
trigger4 = AnimElem = 12
value = 7, 7 ;FLY

[State 4300, 2]
type = Projectile
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
trigger3 = AnimElem = 8
trigger4 = AnimElem = 11
projid = 1600
projanim = 1600
projhitanim = 1601
projshadow = -1
offset = 15, -60        ;Creation offset from player (x,y)
velocity = 5.5, -3       ;Speed fireball moves (x,y) (optional)
remvelocity = 1, -2     ;Speed fireball moves when being removed (x,y) (opt)
accel = 0, .2            ;Acceleration (opt)
projhits = 1
projmisstime = 1
projremove = 1
attr = S, HP
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

[State 4300, 2]
type = Projectile
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
trigger4 = AnimElem = 12
projid = 1600
projanim = 1600
projhitanim = 1601
projshadow = -1
offset = 15, -60        ;Creation offset from player (x,y)
velocity = 7, -4.5       ;Speed fireball moves (x,y) (optional)
remvelocity = 1, -2     ;Speed fireball moves when being removed (x,y) (opt)
accel = 0, .2            ;Acceleration (opt)
projhits = 1
projmisstime = 1
projremove = 1
attr = S, HP
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

[State 4300, 2]
type = Projectile
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
trigger3 = AnimElem = 10
projid = 1600
projanim = 1600
projhitanim = 1601
projshadow = -1
offset = 15, -60        ;Creation offset from player (x,y)
velocity = 8.5, -6       ;Speed fireball moves (x,y) (optional)
remvelocity = 1, -2     ;Speed fireball moves when being removed (x,y) (opt)
accel = 0, .1            ;Acceleration (opt)
projhits = 1
projmisstime = 1
projremove = 1
attr = S, HP
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

[State 4300, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; FATHERS_HYPER_RAGE
[Statedef 4400]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 4100

[State 4400, Super A]
type = SuperPause
trigger1 = Time = 0
pos = 6, 200
anim = -1

[State 4400, Super B]
type = PlaySnd
trigger1 = AnimElem = 1
value = 8, 3

[State 4400, Super C]
type = PowerAdd
trigger1 = AnimElem = 1
value = -3000

[State 4400, Super D]
type = AfterImage
trigger1 = AnimElem = 1
time = 2

[State 4400, Super E]
type = AfterImage
trigger1 = AnimElem = 1
Time = 4

[State 4400, Super F]
type = NotHitBy
trigger1 = AnimElem = 1
value = , NA, SA, AT
time = 12

[State 4100, 1]
type = Explod
trigger1 = time = 0
anim = 11111
pos = -10,-10
postype = back
sprpriority = -2
supermove = 1
ownpal = 1

[State 4400, 1]
type = Explod
trigger1 = time = 1
anim = 12222
pos = -320,0
postype = right
sprpriority = -2
supermove = 1
ownpal = 1
removetime = 100
bindtime = 100

[State 4400, 2]
type = EnvShake
trigger1 = TimeMod = 6, 1
time = 15

[State 4400, 3]
type = PlaySnd
trigger1 = TimeMod = 6, 1
value = 8,4
volume = -30

[State 4400, 5]
type = Projectile
trigger1 = Time = 1
projid = 1810
projanim = 1810
projhitanim = 1810
ProjRemoveTime = 18
;postype = back
offset = 12, 0
velocity = 0, 0
remvelocity = 0, 0
accel = 0, 0
projremove = 1
attr = S, HP
damage    = 150,5
getpower = 0
givepower = 30
hitflag = MAF
guardflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = 25, -60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -5,-5   
guard.velocity = 0  
fall = 1
airguard.velocity = 0  
air.type = High
air.velocity = -1,-5
fall.recover = 0

[State 4400, 5]
type = Projectile
trigger1 = Time = 6
projid = 1810
projanim = 1810
projhitanim = 1810
ProjRemoveTime = 18
;postype = back
offset = -20, 0
velocity = 0, 0
remvelocity = 0, 0
accel = 0, 0
projremove = 1
attr = S, HP
damage    = 150,5
getpower = 0
givepower = 30
hitflag = MAF
guardflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = 25, -60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -5,-5   
guard.velocity = 0  
fall = 1
airguard.velocity = 0  
air.type = High
air.velocity = -1,-5
fall.recover = 0

[State 4400, 5]
type = Projectile
trigger1 = Time = 12
projid = 1810
projanim = 1810
projhitanim = 1810
ProjRemoveTime = 18
;postype = back
offset = 44, 0
velocity = 0, 0
remvelocity = 0, 0
accel = 0, 0
projremove = 1
attr = S, HP
damage    = 150,5
getpower = 0
givepower = 30
hitflag = MAF
guardflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = 25, -60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -5,-5   
guard.velocity = 0  
fall = 1
airguard.velocity = 0  
air.type = High
air.velocity = -1,-5
fall.recover = 0

[State 4400, 5]
type = Projectile
trigger1 = Time = 18
projid = 1810
projanim = 1810
projhitanim = 1810
ProjRemoveTime = 18
;postype = back
offset = -52, 0
velocity = 0, 0
remvelocity = 0, 0
accel = 0, 0
projremove = 1
attr = S, HP
damage    = 150,5
getpower = 0
givepower = 30
hitflag = MAF
guardflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = 25, -60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -5,-5   
guard.velocity = 0  
fall = 1
airguard.velocity = 0  
air.type = High
air.velocity = -1,-5
fall.recover = 0

[State 4400, 5]
type = Projectile
trigger1 = Time = 24
projid = 1810
projanim = 1810
projhitanim = 1810
ProjRemoveTime = 18
;postype = back
offset = 76, 0
velocity = 0, 0
remvelocity = 0, 0
accel = 0, 0
projremove = 1
attr = S, HP
damage    = 150,5
getpower = 0
givepower = 30
hitflag = MAF
guardflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = 25, -60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -5,-5   
guard.velocity = 0  
fall = 1
airguard.velocity = 0  
air.type = High
air.velocity = -1,-5
fall.recover = 0

[State 4400, 5]
type = Projectile
trigger1 = Time = 30
projid = 1810
projanim = 1810
projhitanim = 1810
ProjRemoveTime = 18
;postype = back
offset = -84, 0
velocity = 0, 0
remvelocity = 0, 0
accel = 0, 0
projremove = 1
attr = S, HP
damage    = 150,5
getpower = 0
givepower = 30
hitflag = MAF
guardflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = 25, -60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -5,-5   
guard.velocity = 0  
fall = 1
airguard.velocity = 0  
air.type = High
air.velocity = -1,-5
fall.recover = 0

[State 4400, 5]
type = Projectile
trigger1 = Time = 36
projid = 1810
projanim = 1810
projhitanim = 1810
ProjRemoveTime = 18
;postype = back
offset = 108, 0
velocity = 0, 0
remvelocity = 0, 0
accel = 0, 0
projremove = 1
attr = S, HP
damage    = 150,5
getpower = 0
givepower = 30
hitflag = MAF
guardflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = 25, -60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -5,-5   
guard.velocity = 0  
fall = 1
airguard.velocity = 0  
air.type = High
air.velocity = -1,-5
fall.recover = 0

[State 4400, 5]
type = Projectile
trigger1 = Time = 42
projid = 1810
projanim = 1810
projhitanim = 1810
ProjRemoveTime = 18
;postype = back
offset = -116, 0
velocity = 0, 0
remvelocity = 0, 0
accel = 0, 0
projremove = 1
attr = S, HP
damage    = 150,5
getpower = 0
givepower = 30
hitflag = MAF
guardflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = 25, -60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -5,-5   
guard.velocity = 0  
fall = 1
airguard.velocity = 0  
air.type = High
air.velocity = -1,-5
fall.recover = 0

[State 4400, 5]
type = Projectile
trigger1 = Time = 48
projid = 1810
projanim = 1810
projhitanim = 1810
ProjRemoveTime = 18
;postype = back
offset = 140, 0
velocity = 0, 0
remvelocity = 0, 0
accel = 0, 0
projremove = 1
attr = S, HP
damage    = 150,5
getpower = 0
givepower = 30
hitflag = MAF
guardflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = 25, -60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -5,-5   
guard.velocity = 0  
fall = 1
airguard.velocity = 0  
air.type = High
air.velocity = -1,-5
fall.recover = 0

[State 4400, 5]
type = Projectile
trigger1 = Time = 54
projid = 1810
projanim = 1810
projhitanim = 1810
ProjRemoveTime = 18
;postype = back
offset = -148, 0
velocity = 0, 0
remvelocity = 0, 0
accel = 0, 0
projremove = 1
attr = S, HP
damage    = 150,5
getpower = 0
givepower = 30
hitflag = MAF
guardflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = 25, -60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -5,-5   
guard.velocity = 0  
fall = 1
airguard.velocity = 0  
air.type = High
air.velocity = -1,-5
fall.recover = 0

[State 4400, 5]
type = Projectile
trigger1 = Time = 60
projid = 1810
projanim = 1810
projhitanim = 1810
ProjRemoveTime = 100
;postype = back
offset = 172, 0
velocity = 8, 0
remvelocity = 8, 0
accel = .1, 0
projremove = 1
attr = S, HP
damage    = 200,5
getpower = 0
givepower = 30
hitflag = MAF
guardflag = MA
pausetime = 0,50
sparkno = 2
sparkxy = 25, -60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -5,-5   
guard.velocity = 0  
fall = 1
airguard.velocity = 0  
air.type = High
air.velocity = -1,-5
fall.recover = 0

[State 4400, 5]
type = Projectile
trigger1 = Time = 66
projid = 1810
projanim = 1810
projhitanim = 1810
ProjRemoveTime = 100
;postype = back
offset = -180, 0
velocity = -8, 0
remvelocity = -8, 0
accel = -.1, 0
projremove = 1
attr = S, HP
damage    = 200,5
getpower = 0
givepower = 30
hitflag = MAF
guardflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = 25, -60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -5,-5   
guard.velocity = 0  
fall = 1
airguard.velocity = 0  
air.type = High
air.velocity = -1,-5
fall.recover = 0

[State 4400, 3]
type = ChangeState
trigger1 = Time = 100
value = 50
ctrl = 1
