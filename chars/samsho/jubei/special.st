;---------------------------------------------------------------------------
; NIKKAKURATOU_STRONG_PRE
[Statedef 999]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 1009
facep2 = 1

[State 999]
type = PlaySnd
trigger1 = Time = 0
value = 7, 3

[State 999, 6]
type = ChangeState
trigger1 = time = 16
value = 1000

; NIKKAKURATOU_MEDIUM_PRE
[Statedef 1099]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 1009

[State 1009]
type = PlaySnd
trigger1 = Time = 0
value = 7, 3

[State 1099, 6]
type = ChangeState
trigger1 = time = 12
value = 1100

; NIKKAKURATOU_LIGHT_PRE
[Statedef 1199]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 1009

[State 1199]
type = PlaySnd
trigger1 = Time = 0
value = 7, 3

[State 1199, 6]
type = ChangeState
trigger1 = time = 6
value = 1200

;---------------------------------------------------------------------------
; NIKKAKURATOU_STRONG_RUN
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 1000

[State 1000, 1]
type = VelSet
trigger1 = 1
x = 8

[State 1000, 2]
type = Explod
trigger1 = time = 0
anim = 1010
id = 1010
pos = -46,0
postype = p1
ontop = 1
ownpal = 1
bindtime = 40
removetime = 40

[State 1000, 3]
type = PlaySnd
trigger1 = TimeMod = 29, 0
value = 8, 3

[State 1000, 4]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger2 = movehit = 0
trigger3 = AnimElem = 3
trigger3 = movehit = 0
trigger4 = AnimElem = 4
trigger4 = movehit = 0
attr = S, SA
animtype  = Heavy
damage    = 0
guardflag = MA
hitflag = MAF
pausetime = 6,24
guard.pausetime = 6,24
sparkno = 2
sparkxy = 10,-44
hitsound   = S7, 13
guardsound = S7, 13
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -1, 0   
air.velocity = -1, 0
fall = 0
fall.recover = 0

[State 1000, 4]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
animtype  = Heavy
damage    = 0
guardflag = MA
hitflag = MA
pausetime = 6,24
guard.pausetime = 6,24
sparkno = 2
sparkxy = 10,-44
hitsound   = S7,13
guardsound = S7,15
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -1, 0   
air.velocity = -1, 0
fall = 0
fall.recover = 0

[State 1000, 5]
type = ChangeState
trigger1 = movecontact
trigger1 = time = 40
trigger2 = HitCount = 4
value = 1020

[State 1000, 6]
type = ChangeState
trigger1 = time = 40
value = 101

; NIKKAKURATOU_STRONG_HIT
[Statedef 1020]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 1020

[State 1020, 1]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 1020, 3]
type = PosAdd
trigger1 = time = 0
x = 20

[State 1020, 3]
type = RemoveExplod
trigger1 = time = 0

[State 1020, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 1030

; NIKKAKURATOU_STRONG_UP
[Statedef 1030]
type    = A
movetype= A
physics = A
juggle  = 15
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 1030

[State 1030]
type = PlaySnd
trigger1 = Time = 0
value = 9, 10

[State 1030]
type = PlaySnd
trigger1 = Time = 0
value = 7, 8

[State 1030, 1]
type = PlayerPush
trigger1 = time < 36
value = 0

[State 1030, 1]
type = VelSet
trigger1 = time < 3
y = -12

[State 1030, 1]
type = NULL ;VelSet
trigger1 = time = 0
y = -12

[State 1030, 2]
type = HitDef
triggerall = power < 3000
trigger1 = Time < 36
trigger1 = movecontact = 0
attr = S, SA
animtype  = Heavy
damage    = 150
guardflag = MA
hitflag = MAF
pausetime = 8,8
guard.pausetime = 6,8
sparkno = 2
sparkxy = -10,-44
hitsound   = S5,2
guardsound = S7,13
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -1, -13   
air.velocity = -1, -13
fall = 1
fall.recover = 0

[State 1030, 2.5]
type = HitDef
triggerall = power >= 3000
trigger1 = Time = 0
trigger2 = Time = 8
trigger3 = Time = 16
trigger4 = Time = 24
trigger5 = Time = 30
trigger6 = Time = 35
attr = S, SA
animtype  = Heavy
damage    = 33
guardflag = MA
hitflag = MAF
pausetime = 4,4
guard.pausetime = 6,8
sparkno = 2
sparkxy = -10,-44
hitsound   = S5,2
guardsound = S7,13
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = 0, -13   
air.velocity = -.5, -13
fall = 1
fall.recover = 0

[State 1030, 5]
type = Explod
triggerall = power >= 3000
triggerall = movehit
trigger1 = Time = 1
trigger2 = Time = 9
trigger3 = Time = 17
trigger4 = Time = 25
trigger5 = Time = 31
trigger6 = Time = 36
anim = 23232
id = 23232
pos = -10,-64
postype = p2
ontop = 1
ownpal = 1
removetime = 80
ignorehitpause = 1

[State 1030, 5]
type = Explod
triggerall = power < 3000
triggerall = movehit
trigger1 = numexplod(23232) = 0
anim = 23232
id = 23232
pos = -10,-64
postype = p2
ontop = 1
ownpal = 1
removetime = 80
ignorehitpause = 1

[State 3510]
type = EnvColor
triggerall = power >= 3000
triggerall = movehit
trigger1 = Time = 1
trigger2 = Time = 9
trigger3 = Time = 17
trigger4 = Time = 25
trigger5 = Time = 31
trigger6 = Time = 36
value = 255,0,0
time = 3

[State 1030, 6]
type = Explod
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

[State 1030, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------
; NIKKAKURATOU_MEDIUM_RUN
[Statedef 1100]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 1000

[State 1100, 1]
type = VelSet
trigger1 = 1
x = 7

[State 1100, 2]
type = Explod
trigger1 = time = 0
anim = 1010
id = 1010
pos = -46,0
postype = p1
ontop = 1
ownpal = 1
bindtime = 25
removetime = 25

[State 1100, 3]
type = PlaySnd
trigger1 = TimeMod = 29, 0
value = 8, 3

[State 1100, 4]
type = HitDef
trigger1 = AnimElem = 1
attr = S, SA
animtype  = Heavy
damage    = 0
guardflag = MA
hitflag = MAF
pausetime = 6,24
guard.pausetime = 6,24
sparkno = 2
sparkxy = 10,-44
hitsound   = S7,13
guardsound = S7,13
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -1, 0   
air.velocity = -1, 0
fall = 0
fall.recover = 0

[State 1100, 4]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
animtype  = Heavy
damage    = 0
guardflag = MA
hitflag = MAF
pausetime = 6,24
guard.pausetime = 6,24
sparkno = 2
sparkxy = 10,-44
hitsound   = S7,13
guardsound = S7,15
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -1, 0   
air.velocity = -1, 0
fall = 0
fall.recover = 0

[State 1100, 5]
type = ChangeState
trigger1 = movecontact
trigger1 = time = 22
trigger2 = HitCount = 4
value = 1120

[State 1100, 6]
type = ChangeState
trigger1 = time = 22
value = 101

; NIKKAKURATOU_MEDIUM_HIT
[Statedef 1120]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 1020

[State 1120, 1]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 1120, 3]
type = PosAdd
trigger1 = time = 0
x = 20

[State 1120, 3]
type = RemoveExplod
trigger1 = time = 0

[State 1120, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 1130

; NIKKAKURATOU_MEDIUM_UP
[Statedef 1130]
type    = A
movetype= A
physics = A
juggle  = 10
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 1030

[State 1130]
type = PlaySnd
trigger1 = Time = 0
value = 9, 10

[State 1130]
type = PlaySnd
trigger1 = Time = 0
value = 7, 8

[State 1130, 1]
type = PlayerPush
trigger1 = time < 36
value = 0

[State 1130, 1]
type = VelSet
trigger1 = time = 0
y = -9

[State 1130, 2]
type = HitDef
trigger1 = Time < 36
trigger1 = movecontact = 0
attr = S, SA
animtype  = Heavy
damage    = 120
guardflag = MA
hitflag = MAF
pausetime = 2,2
guard.pausetime = 6,8
sparkno = 2
sparkxy = -10,-44
hitsound   = S5,2
guardsound = S5,15
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -1, -8   
air.velocity = -1, -8
fall = 1
fall.recover = 0

[State 1130, 5]
type = Explod
triggerall = movehit
trigger1 = numexplod(23232) = 0
anim = 23232
id = 23232
pos = -10,-64
postype = p2
ontop = 1
ownpal = 1
removetime = 80
ignorehitpause = 1

[State 1130, 6]
type = Explod
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

[State 1130, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------
; NIKKAKURATOU_LIGHT_RUN
[Statedef 1200]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 1000

[State 1200, 1]
type = VelSet
trigger1 = 1
x = 6

[State 1200, 2]
type = Explod
trigger1 = time = 0
anim = 1010
id = 1010
pos = -46,0
postype = p1
ontop = 1
ownpal = 1
bindtime = 15
removetime = 15

[State 1200, 3]
type = PlaySnd
trigger1 = TimeMod = 29, 0
value = 8, 3

[State 1200, 4]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
attr = S, SA
animtype  = Heavy
damage    = 0
guardflag = MA
hitflag = MAF
pausetime = 0,18
guard.pausetime = 6,18
sparkno = 2
sparkxy = 20,-44
hitsound   = S7,13
guardsound = S7,15
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -1   
air.velocity = -1, -5
fall = 0
fall.recover = 0
snap = 40,0

[State 1200, 5]
type = ChangeState
trigger1 = movecontact
trigger1 = time >= 0
value = 1220

[State 1200, 6]
type = ChangeState
trigger1 = time = 15
value = 101

; NIKKAKURATOU_LIGHT_HIT
[Statedef 1220]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 1025

[State 1220, 1]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 1220, 3]
type = PosAdd
trigger1 = time = 0
x = 20

[State 1220, 3]
type = RemoveExplod
trigger1 = time = 0

[State 1220, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 1230

; NIKKAKURATOU_LIGHT_UP
[Statedef 1230]
type    = A
movetype= A
physics = A
juggle  = 10
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 1030

[State 1230]
type = PlaySnd
trigger1 = Time = 0
value = 9, 10

[State 1230]
type = PlaySnd
trigger1 = Time = 0
value = 7, 8

[State 1230, 1]
type = PlayerPush
trigger1 = time < 36
value = 0

[State 1230, 1]
type = VelSet
trigger1 = time = 0
y = -6

[State 1230, 2]
type = HitDef
trigger1 = Time < 36
trigger1 = movecontact = 0
attr = S, SA
animtype  = Heavy
damage    = 90
guardflag = MA
hitflag = MAF
pausetime = 2,2
guard.pausetime = 6,8
sparkno = 2
sparkxy = -10,-44
hitsound   = S5,2
guardsound = S7,15
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -1, -5   
air.velocity = -1, -5
fall = 1
fall.recover = 0

[State 1230, 5]
type = Explod
triggerall = movehit
trigger1 = numexplod(23232) = 0
anim = 23232
id = 23232
pos = -10,-64
postype = p2
ontop = 1
ownpal = 1
removetime = 80
ignorehitpause = 1

[State 1230, 6]
type = Explod
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

[State 1230, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------
;KATTOU_SUIGETSUTOU_STRONG
[Statedef 1500]
type    = S
movetype= A
physics = S
ctrl = 0
juggle = 8
anim = 1500
velset = 0,0,0
poweradd = 30

[State 1500]
type = PlaySnd
trigger1 = Time = 0
value = 7, 4

[State 1500]
type = PlaySnd
trigger1 = Time = 30
value = 8, 5
volume = -50

[State 1500, 1]
type = Projectile
trigger1 = Time = 30
ProjAnim = 1510
ProjHitAnim = 1515
ProjRemAnim = -1
ProjShadow = -1
projid = 1510
offset = 45, 0
velocity = 6.5, 0
remvelocity = 1, 0
velmul = 1, 0
accel = 0, 0
attr = S, SP
damage    = 135,5
air.juggle = 8
animtype  = Heavy
getpower  = 0
givepower = 55
guardflag = MA
pausetime = 0,12
guard.pausetime = 5,5
sparkno = 1
sparkxy = 0, 0
hitsound   = S8, 4
guardsound = 6,0
ground.type = Low
air.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5   
air.velocity = -1.2,-3
guard.velocity = -5
fall = 1
palfx.time = 40
palfx.add = 128,128,255
palfx.sinadd = 255,255,255,5
down.hittime = 600

[State 1500, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;KATTOU_SUIGETSUTOU_MEDIUM
[Statedef 1550]
type    = S
movetype= A
physics = S
ctrl = 0
juggle = 8
anim = 1550
velset = 0,0,0
poweradd = 30

[State 1550]
type = PlaySnd
trigger1 = Time = 0
value = 7, 4

[State 1550]
type = PlaySnd
trigger1 = Time = 24
value = 8, 5
volume = -50

[State 1550, 1]
type = Projectile
trigger1 = Time = 24
ProjAnim = 1510
ProjHitAnim = 1515
ProjRemAnim = 1515
ProjShadow = -1
projid = 1510
offset = 45, 0
velocity = 4.5, 0
remvelocity = 1, 0
velmul = 1, 0
accel = 0, 0
attr = S, SP
damage    = 95,5
air.juggle = 8
animtype  = Heavy
getpower  = 0
givepower = 55
guardflag = MA
pausetime = 0,12
guard.pausetime = 5,5
sparkno = 1
sparkxy = 0, 0
hitsound   = S8, 4
guardsound = 6,0
ground.type = Low
air.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5   
air.velocity = -1.2,-3
guard.velocity = -5
fall = 1
palfx.time = 40
palfx.add = 128,128,255
palfx.sinadd = 255,255,255,5
down.hittime = 600

[State 1550, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;KATTOU_SUIGETSUTOU_LIGHT
[Statedef 1580]
type    = S
movetype= A
physics = S
ctrl = 0
juggle = 8
anim = 1580
velset = 0,0,0
poweradd = 30

[State 1580]
type = PlaySnd
trigger1 = Time = 0
value = 7, 4

[State 1580]
type = PlaySnd
trigger1 = Time = 16
value = 8, 5
volume = -50

[State 1580, 1]
type = Projectile
trigger1 = Time = 16
ProjAnim = 1510
ProjHitAnim = 1515
ProjRemAnim = 1515
ProjShadow = -1
projid = 1510
offset = 45, 0
velocity = 3.5, 0
remvelocity = 1, 0
velmul = 1, 0
accel = 0, 0
attr = S, SP
damage    = 75,5
air.juggle = 8
animtype  = Heavy
getpower  = 0
givepower = 55
guardflag = MA
pausetime = 0,12
guard.pausetime = 5,5
sparkno = 1
sparkxy = 0, 0
hitsound   = S8, 4
guardsound = 6,0
ground.type = Low
air.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5   
air.velocity = -1.2,-3
guard.velocity = -5
fall = 1
palfx.time = 40
palfx.add = 128,128,255
palfx.sinadd = 255,255,255,5
down.hittime = 600

[State 1580, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HASSOU_HAPPA_PRE_STRONG
[Statedef 2000]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 2000

[State 2000]
type = PlaySnd
trigger1 = AnimTime = 0
value = 7, 9

[State 2000, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 2010
ctrl = 0

;---------------------------------------------------------------------------
; HASSOU_HAPPA_PRE_MEDIUM
[Statedef 2005]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 2005

[State 2005]
type = PlaySnd
trigger1 = AnimTime = 0
value = 7, 0

[State 2005, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 2015
ctrl = 0

;---------------------------------------------------------------------------
; HASSOU_HAPPA_PRE_LIGHT
[Statedef 2008]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 2008

[State 2008]
type = PlaySnd
trigger1 = AnimTime = 0
value = 7, 0

[State 2008, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 2018
ctrl = 0

;---------------------------------------------------------------------------
; HASSOU_HAPPA_GO!_STRONG
[Statedef 2010]
type    = S
movetype= A
physics = S
juggle  = 8
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 2010

[State 2010, 1]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
trigger3 = AnimElem = 13
trigger4 = AnimElem = 17
trigger5 = AnimElem = 23
trigger6 = AnimElem = 29
value = 9,1

[State 2010, 2]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 18
attr = S, SA
animtype  = Heavy
damage    = 18
guardflag = MA
hitflag = MAF
pausetime = 8,12
guard.pausetime = 6,12
sparkno = 2
sparkxy = -10,-94
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -4   
air.velocity = -4, -2
fall.recover = 0

[State 2010, 2]
type = HitDef
trigger1 = AnimElem = 8
trigger2 = AnimElem = 24
attr = S, SA
animtype  = Heavy
damage    = 18
guardflag = MA
hitflag = MAF
pausetime = 8,12
guard.pausetime = 6,12
sparkno = 2
sparkxy = -10,-40
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -4   
air.velocity = -4, -2
fall.recover = 0

[State 2010, 2]
type = HitDef
trigger1 = AnimElem = 14
trigger2 = AnimElem = 30
attr = S, SA
animtype  = Heavy
damage    = 18
guardflag = MA
hitflag = MAF
pausetime = 8,12
guard.pausetime = 6,12
sparkno = 2
sparkxy = -10,-64
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -4   
air.velocity = -4, -2
fall.recover = 0

[State 2010, 6]
type = Explod
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

[State 2010, 7]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = var(16) >= 20 
value = 2015
ctrl = 0

[State 2010, 8]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = var(16) < 20 
value = 2025
ctrl = 0

;---------------------------------------------------------------------------
; HASSOU_HAPPA_GO!_MEDIUM
[Statedef 2015]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 2010

[State 2015, 1]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
trigger3 = AnimElem = 13
trigger4 = AnimElem = 17
trigger5 = AnimElem = 23
trigger6 = AnimElem = 29
value = 9,1

[State 2015, 2]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 18
attr = S, SA
animtype  = Heavy
damage    = 18
guardflag = MA
hitflag = MAF
pausetime = 8,12
guard.pausetime = 6,12
sparkno = 2
sparkxy = -10,-94
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -4   
air.velocity = -4, -2
fall.recover = 0

[State 2015, 2]
type = HitDef
trigger1 = AnimElem = 8
trigger2 = AnimElem = 24
attr = S, SA
animtype  = Heavy
damage    = 18
guardflag = MA
hitflag = MAF
pausetime = 8,12
guard.pausetime = 6,12
sparkno = 2
sparkxy = -10,-40
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -4   
air.velocity = -4, -2
fall.recover = 0

[State 2015, 2]
type = HitDef
trigger1 = AnimElem = 14
trigger2 = AnimElem = 30
attr = S, SA
animtype  = Heavy
damage    = 18
guardflag = MA
hitflag = MAF
pausetime = 8,12
guard.pausetime = 6,12
sparkno = 2
sparkxy = -10,-64
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -4   
air.velocity = -4, -2
fall.recover = 0

[State 2015, 6]
type = Explod
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

[State 2015, 7]
type = ChangeState
triggerall = AnimTime = 0
trigger1 = var(16) >= 20 
trigger2 = var(17) >= 20 
value = 2016
ctrl = 0

[State 2015, 8]
type = ChangeState
triggerall = AnimTime = 0
trigger1 = var(16) < 20 
trigger2 = var(17) >= 20 
value = 2025
ctrl = 0

[Statedef 2016]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 2010

[State 2016, 1]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
trigger3 = AnimElem = 13
trigger4 = AnimElem = 17
trigger5 = AnimElem = 23
trigger6 = AnimElem = 29
value = 9,1

[State 2016, 2]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 18
attr = S, SA
animtype  = Heavy
damage    = 18
guardflag = MA
hitflag = MAF
pausetime = 8,12
guard.pausetime = 6,12
sparkno = 2
sparkxy = -10,-94
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -4   
air.velocity = -4, -2
fall.recover = 0

[State 2016, 2]
type = HitDef
trigger1 = AnimElem = 8
trigger2 = AnimElem = 24
attr = S, SA
animtype  = Heavy
damage    = 18
guardflag = MA
hitflag = MAF
pausetime = 8,12
guard.pausetime = 6,12
sparkno = 2
sparkxy = -10,-40
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -4   
air.velocity = -4, -2
fall.recover = 0

[State 2016, 2]
type = HitDef
trigger1 = AnimElem = 14
trigger2 = AnimElem = 30
attr = S, SA
animtype  = Heavy
damage    = 18
guardflag = MA
hitflag = MAF
pausetime = 8,12
guard.pausetime = 6,12
sparkno = 2
sparkxy = -10,-64
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -4   
air.velocity = -4, -2
fall.recover = 0

[State 2016, 6]
type = Explod
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

[State 2016, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 2025
ctrl = 0

;---------------------------------------------------------------------------
; HASSOU_HAPPA_GO!_LIGHT
[Statedef 2018]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 2010

[State 2018, 1]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
trigger3 = AnimElem = 13
trigger4 = AnimElem = 17
trigger5 = AnimElem = 23
trigger6 = AnimElem = 29
value = 9,1

[State 2018, 2]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 18
attr = S, SA
animtype  = Heavy
damage    = 18
guardflag = MA
hitflag = MAF
pausetime = 4,8
guard.pausetime = 4,8
sparkno = 2
sparkxy = -10,-94
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -4   
air.velocity = -4, -2
fall.recover = 0

[State 2018, 2]
type = HitDef
trigger1 = AnimElem = 8
trigger2 = AnimElem = 24
attr = S, SA
animtype  = Heavy
damage    = 18
guardflag = MA
hitflag = MAF
pausetime = 4,8
guard.pausetime = 4,8
sparkno = 2
sparkxy = -10,-40
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -4   
air.velocity = -4, -2
fall.recover = 0

[State 2018, 2]
type = HitDef
trigger1 = AnimElem = 14
trigger2 = AnimElem = 30
attr = S, SA
animtype  = Heavy
damage    = 18
guardflag = MA
hitflag = MAF
pausetime = 4,8
guard.pausetime = 4,8
sparkno = 2
sparkxy = -10,-64
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -4   
air.velocity = -4, -2
fall.recover = 0

[State 2018, 6]
type = Explod
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

[State 2018, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 2025
ctrl = 0

;---------------------------------------------------------------------------
; HASSOU_HAPPA_END
[Statedef 2025]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 2025

[State 2025, 1]
type = VarSet
trigger1 = time = 0
v = 16
value = 0

[State 2025, 2]
type = VarSet
trigger1 = time = 0
v = 17
value = 0

[State 2025, 3]
type = VarSet
trigger1 = time = 0
v = 18
value = 0

[State 2025, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;YAGYU_SHINGAN_TOU_SUIGETSU
[Statedef 2500]
type    = S
movetype= I
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 2500

[State 2500]
type = VarSet
trigger1 = var(40) = 1
var(33) = 149

[State 2500, 2]
type = PlaySnd
trigger1 = Time = 0
value = 9, 2

[State 2500, 3]
type = ReversalDef
trigger1 = 1
reversal.attr = SC, NA, SA
pausetime = 8,96
hitsound = S7,18
p1stateno = 2502
p2stateno = 5000
palfx.time = 10
palfx.add = 128,128,255

[State 2500, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[Statedef 2502]
type    = S
movetype= A
physics = S
juggle  = 15
poweradd= 0
ctrl = 0
velset = 0,0,0
facep2 = 1

[State 2502]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 2502, 1]
type = PlaySnd
trigger1 = Time = 0
value = 7, 10

[State 2502, 2]
type = ChangeState
trigger1 = Time = 30
value = 2501
ctrl = 0

[Statedef 2501]
type    = S
movetype= A
physics = S
ctrl = 0
juggle = 15
anim = 1500
velset = 0,0,0
poweradd = 30

[State 2501]
type = PlaySnd
trigger1 = Time = 0
value = 7, 4

[State 2501]
type = PlaySnd
trigger1 = Time = 30
value = 8, 5
volume = -50

[State 2501, 1]
type = Projectile
trigger1 = Time = 30
ProjAnim = 1510
ProjHitAnim = 1515
ProjRemAnim = -1
ProjShadow = -1
projid = 1510
offset = 45, 0
velocity = 6.5, 0
remvelocity = 1, 0
velmul = 1, 0
accel = 0, 0
attr = S, SP
damage    = 115,5
air.juggle = 0
animtype  = Heavy
getpower  = 0
givepower = 55
guardflag = MA
pausetime = 0,12
guard.pausetime = 5,5
sparkno = 1
sparkxy = 0, 0
hitsound   = S8, 4
guardsound = 6,0
ground.type = Low
air.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5, -7   
air.velocity = -1.2,-3
guard.velocity = -5
fall = 1
fall.recover = 0
palfx.time = 40
palfx.add = 128,128,255
palfx.sinadd = 255,255,255,5
down.hittime = 600

[State 2501, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;YAGYU_SHINGAN_TOU_SOUHA
[Statedef 2550]
type    = S
movetype= I
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 2550

[State 2550]
type = VarSet
trigger1 = var(40) = 1
var(33) = 149

[State 2550, 2]
type = PlaySnd
trigger1 = Time = 0
value = 9, 2

[State 2550, 3]
type = ReversalDef
trigger1 = 1
reversal.attr = SC, NA, SA
pausetime = 8,96
hitsound = S7,18
p1stateno = 2549
p2stateno = 5000
palfx.time = 10
palfx.add = 128,128,255

[State 2550, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 2549]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
facep2 = 1

[State 2549]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 2549, 1]
type = PlaySnd
trigger1 = Time = 0
value = 7, 10

[State 2549, 2]
type = ChangeState
trigger1 = Time = 30
value = 2551
ctrl = 0

[Statedef 2551]
type    = S
movetype= A
physics = S
juggle  = 15
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 220

[State 2551]
type = ChangeState
trigger1 = Time = 0
trigger1 = P2BodyDist X < 80
value = 2552
ctrl = 1

[State 2551, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 9, 2

[State 2551, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 7, 6

[State 2551, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype  = Heavy
damage    = 140
guardflag = MA
hitflag = MAF
pausetime = 20, 20
guard.pausetime = 5, 10
sparkno = 2
sparkxy = -10,-60
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -8, -6  
air.velocity = -4, -6
fall = 1
fall.recover = 0

[State 2551, 3]
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

[State 2551, 3]
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

[State 2551, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 2552]
type    = S
movetype= A
physics = S
juggle  = 15
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 225
facep2 = 1

[State 2552, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 9, 2

[State 2552, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 7, 6

[State 2552, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Heavy
damage    = 140
guardflag = MA
hitflag = MAF
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
ground.velocity = -8,-6   
air.velocity = -4, -6
fall = 1
fall.recover = 0

[State 2552, 3]
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

[State 2552, 3]
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

[State 2552, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;YAGYU_SHINGAN_TOU_TENRA
[Statedef 2580]
type    = S
movetype= I
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 2580

[State 2580]
type = VarSet
trigger1 = var(40) = 1
var(33) = 149

[State 2580, 2]
type = PlaySnd
trigger1 = Time = 0
value = 9, 2

[State 2580, 3]
type = ReversalDef
trigger1 = 1
reversal.attr = SC, NA, SA
pausetime = 8,96
hitsound = S7,18
p1stateno = 2589
p2stateno = 5000
palfx.time = 10
palfx.add = 128,128,255

[State 2580, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 2589]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
facep2 = 1

[State 2589]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 2589, 1]
type = PlaySnd
trigger1 = Time = 0
value = 7, 10

[State 2589, 2]
type = ChangeState
trigger1 = Time = 20
value = 2590
ctrl = 0

[Statedef 2590]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 1020

[State 2590, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 2590, 1]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 2590, 3]
type = PosAdd
trigger1 = time = 0
x = 20

[State 2590, 3]
type = RemoveExplod
trigger1 = time = 0

[State 2590, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 2591

[Statedef 2591]
type    = A
movetype= A
physics = A
juggle  = 15
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 1030

[State 2590, 1]
type = NotHitBy
trigger1 = time < 36
value = SCA
time = 1

[State 2591, 1]
type = PlaySnd
trigger1 = time = 0
value = 7, 8

[State 2591, 1]
type = PlayerPush
trigger1 = time < 36
value = 0

[State 2591, 1]
type = VelSet
trigger1 = time < 3
y = -12

[State 2591, 2]
type = HitDef
trigger1 = Time = 0
trigger2 = Time = 8
trigger3 = Time = 16
trigger4 = Time = 24
trigger5 = Time = 30
trigger6 = Time = 35
attr = S, SA
animtype  = Heavy
damage    = 32
guardflag = MA
hitflag = MAF
pausetime = 4,4
guard.pausetime = 6,8
sparkno = 2
sparkxy = -10,-44
hitsound   = S5,2
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = 0, -13   
air.velocity = -.5, -13
fall = 1
fall.recover = 0

[State 2591, 5]
type = Explod
triggerall = movehit
trigger1 = Time = 1
trigger2 = Time = 9
trigger3 = Time = 17
trigger4 = Time = 25
trigger5 = Time = 31
trigger6 = Time = 36
anim = 23232
id = 23232
pos = -10,-64
postype = p2
ontop = 1
ownpal = 1
removetime = 80
ignorehitpause = 1

[State 2591, 6]
type = Explod
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

[State 2591, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------
;CHARGE
[Statedef 3000]
type    = S
physics = N
ctrl = 0
anim = 3000
velset = 0,0,0

[State 3000, 0]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0
z = 0

[State 3000, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 3000

[State 3000, 2]
type = poweradd
trigger1 = Time = [0, 999999]
value = 2

[State 3000, 3]
type = poweradd
trigger1 = Time = [30, 999999]
value = 2

[State 3000, 4]
type = poweradd
trigger1 = Time = [90, 999999]
value = 2

[State 3000, 5]
type = poweradd
trigger1 = Time = [120, 999999]
value = 2

[State 3000, 6]
type = Explod
trigger1 = time = 10
anim = 24000
id = 24000
pos = -14, -30
postype = p1
bindtime = 500
removetime = 500
under = 1

[State 3000, 6]
type = PlaySnd
trigger1 = TimeMod = 29, 10
value = 7, 19

[State 3000, 7]
type = ChangeState
trigger1 = power >= 3000
value = 3001

[State 3000, 8]
type = ChangeState
trigger1 = command != "charge"
value = 0
ctrl = 1

;CHARGEFULL
[Statedef 3001]
type    = S
movetype= A
physics = S
juggle  = 6
ctrl = 0
anim = 3800

[State 3001, 1]
type = PlaySnd
trigger1 = Time = 0
value = 7, 21

[State 3000, 2]
type = PlaySnd
trigger1 = Time = 0
value = 7, 23

[State 3000, 3]
type = CtrlSet
trigger1 = Time = 8
value = 1

[State 3001, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Crouch_Guard_Breaker
[Statedef 1900]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 610

[State 1900, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 9, 1

[State 1900, 1.5]
type = VelSet
trigger1 = Time < 15
y = -2

[State 1900, 1.5]
type = VelSet
trigger1 = AnimElem = 3
x = -1

[State 1900, 1.5]
type = VelSet
trigger1 = AnimElem = 8
x = -1

[State 1900, 2]
type = AfterImage
trigger1 = Time = 1
time = 15
length = 9
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 1900, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = A, NA
animtype  = Heavy
damage    = 75
guardflag = HA
hitflag = MAF
pausetime = 10,10
sparkno = 2
sparkxy = -33,-44
hitsound   = S5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -1   
air.velocity = -1, 5
fall = 1
fall.recover = 0

[State 1900, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; EVADE
[Statedef 290]
type = S
movetype = I
physics = S
anim = 290
velset = 0,0,0
ctrl = 0

[State 290]
type = VarSet
trigger1 = var(40) = 1
var(33) = 149

[State 290, 1]
type = SprPriority
trigger1 = Time = 0
value = -1

[State 290, 2]
type = PlaySnd
trigger1 = AnimElem = 1
trigger1 = random > 500
value = 7, 11

[State 290, 3]
type = AfterImage
trigger1 = Time = 1
time = 15
length = 9
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 290, 4]
type = PalFX
trigger1 = time >= 0
trigger1 = time <= 4
trigger2 = time >= 25
time = 1
Add  = -30,-30,-30

[State 290, 4]
type = PalFX
trigger1 = Time >= 5
trigger1 = Time < 25
time = 1
Add  = -69,-60,-60

[State 290, 5]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = var(40) = 1
trigger1 = p2bodydist X < -10
value = 999
ctrl = 0

[State 290, 5]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = var(40) = 1
trigger1 = random < 333
value = 1199
ctrl = 0

[State 290, 5]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = var(40) = 1
trigger1 = random < 333
value = 999
ctrl = 0

[State 290, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; PUSH!
[Statedef 900]
type = S
movetype = A
physics = S
anim = 900
velset = 0,0,0
ctrl = 0

[State 900, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 7, 6

[State 900, 2]
type = PlaySnd
trigger1 = AnimElem = 5
value = 7, 12

[State 900, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NT
animtype  = Heavy
damage    = 0
guardflag = 
hitflag = MAF
pausetime = 8,41
sparkno = -1
hitsound   = -1
guardsound = 6,0
ground.type = high
ground.slidetime = 24
ground.hittime  = 24
ground.velocity = -7,0
air.velocity =-7, 0
;fall = 1
fall.recover = 0
fall.damage = 70

[State 900, 4]
type = TargetBind
trigger1 = AnimElem = 2
pos = 30,0
time = 25

[State 900, 5]
type = TargetBind
trigger1 = AnimElem = 3
pos = 20,0
time = 25

[State 900, 6]
type = TargetBind
trigger1 = AnimElem = 4
pos = 10,0
time = 25

[State 900, 7]
type = TargetBind
trigger1 = AnimElem = 5
pos = 60,0
time = 6

[State 900, 8]
type = TargetBind
trigger1 = AnimElem = 6
pos = 70,0
time = 1

[State 900, 8.5]
type = CtrlSet
trigger1 = Time >= 35
value = 1

[State 900, 9]
type = ChangeState
trigger1 = var(40) = 1
trigger1 = power >= 1000
trigger1 = random < 500
trigger1 = AnimTime = 0
trigger1 = NumProjID(6515) = 0
value = 6600
ctrl = 1

[State 900, 9]
type = ChangeState
trigger1 = var(40) = 1
trigger1 = power >= 1000
trigger1 = random < 500
trigger1 = AnimTime = 0
value = 6001
ctrl = 1

[State 900, 9]
type = ChangeState
trigger1 = var(40) = 1
trigger1 = power >= 1000
trigger1 = random < 500
trigger1 = AnimTime = 0
trigger1 = NumProjID(6515) = 0
value = 6500
ctrl = 1

[State 900, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ROLL_FWD
[Statedef 7000]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 7000

[State 7000, 1]
type = VelSet
trigger1 = Time > 0
x = 4

[State 7000, 2]
type = AfterImage
trigger1 = AnimElem = 1
time = 8
length = 8
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 7000, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

; ROLL_BWD
[Statedef 7100]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 7001

[State 7100, 1]
type = VelSet
trigger1 = Time > 0
x = -4

[State 7100, 2]
type = AfterImage
trigger1 = AnimElem = 1
time = 8
length = 8
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 7100, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; HASSOU_HAPPA_DENSETSU
[Statedef 3500]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 3500

[State 3500]
type = PlaySnd
trigger1 = AnimElem = 5
value = 9, 2

[State 3500]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 5

[State 3500, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
animtype  = Medium
damage    = 10
guardflag = MA
hitflag = MAF
pausetime = 0,50
guard.pausetime = 5,8
sparkno = 1
sparkxy = -10,-67
hitsound   = S5,1
guardsound = 6,0
ground.type = Low
air.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -0   
air.velocity = -0, -0
forcestand = 1
snap = 100, 0
p1stateno = 3510

[State 3500, 3]
type = Explod
triggerall = movehit
triggerall = random > 499
triggerall = numexplod(11111) = 0
trigger1 = AnimElem = 7
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

[State 3500, 3]
type = Explod
triggerall = movehit
triggerall = numexplod(11111) = 0
trigger1 = AnimElem = 7
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

[State 3500, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3510]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 3570

[State 3510]
type = NotHitBy
trigger1 = Time < 100
value = SCA
time = 1

[State 3510]
type = Playerpush
trigger1 = Time < 100
value = 0

[State 3510, 1]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
trigger3 = AnimElem = 8
trigger4 = AnimElem = 10
trigger5 = AnimElem = 13
trigger6 = AnimElem = 15
value = 9, 1

[State 3510, 2]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
trigger3 = AnimElem = 8
trigger4 = AnimElem = 10
trigger5 = AnimElem = 13
attr = S, NA
animtype  = Heavy
damage    = 20
guardflag = MA
hitflag = MAF
pausetime = 0,20
sparkno = 1
sparkxy = -10,-67
hitsound   = S5,2
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -0   
air.velocity = -0, -0

[State 3510, 2]
type = HitDef
trigger1 = AnimElem = 15
attr = S, NA
animtype  = Heavy
damage    = 20
guardflag = MA
hitflag = MAF
pausetime = 0,20
sparkno = 1
sparkxy = -10,-67
hitsound   = S5,2
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -0   
air.velocity = -0, -0
fall = 1
fall.recover = 0

[State 3510, 3]
type = Projectile
trigger1 = Time = 0
ProjAnim = 3550
ProjHitAnim = -1
ProjRemAnim = 3560
ProjShadow = -1
Projremovetime = 12
projid = 3550
offset = 100, 10
velocity = 0, 0
remvelocity = 0, 0
accel = 0, 0
attr = S, SP

[State 3510, 3]
type = Projectile
trigger1 = Time = 0
ProjAnim = 3551
ProjHitAnim = -1
ProjRemAnim = -1
ProjShadow = -1
projid = 3550
offset = 100, 10
velocity = 0, 0
remvelocity = 0, 0
accel = 0, 0
attr = S, SP
damage    = 20,5
air.juggle = 8
animtype  = Heavy
getpower  = 0
givepower = 55
guardflag = MA
pausetime = 82,82
guard.pausetime = 5,5
sparkno = 1
sparkxy = 0, -70
hitsound   = S8, 4
guardsound = 6,0
ground.type = Low
air.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5   
air.velocity = -1.2,-3
guard.velocity = -5
fall = 0
fall.recovery = 0
palfx.time = 40
palfx.add = 128,128,255
palfx.sinadd = 255,255,255,5
down.hittime = 600

[State 3510, 3]
type = Explod
trigger1 = Time = 112
trigger1 = numexplod(3561) = 0
anim = 3561
id = 3561
postype = p1
pos = 100,10
velocity = .8, -.8
accel = -.001, .1
ownpal = 1
ontop=1
ignorehitpause = 1

[State 3510, 3]
type = Explod
trigger1 = Time = 112
trigger1 = numexplod(3562) = 0
anim = 3562
id = 3562
postype = p1
pos = 100,10
velocity = .7, -.7
accel = -.001, .1
ownpal = 1
ontop=1
ignorehitpause = 1

[State 3510, 3]
type = Explod
trigger1 = Time = 112
trigger1 = numexplod(3563) = 0
anim = 3563
id = 3563
postype = p1
pos = 100,10
velocity = .5, -.5
accel = -.001, .1
ownpal = 1
ontop=1
ignorehitpause = 1

[State 3510, 3]
type = Explod
triggerall = movehit
triggerall = numexplod(11111) = 0
trigger1 = AnimElem = 3
trigger2 = AnimElem = 9
trigger3 = AnimElem = 14
anim = 11111
id = 11111
postype = p2
pos = -10,-60
sprpriority = -12
bindtime = 10
facing = -1
ownpal = 1
ignorehitpause = 1

[State 3510, 3]
type = Explod
triggerall = movehit
triggerall = numexplod(11112) = 0
trigger1 = AnimElem = 6
trigger2 = AnimElem = 11
trigger3 = AnimElem = 16
anim = 11111
id = 11112
postype = p2
pos = -10,-60
sprpriority = -12
bindtime = 10
facing = -1
ownpal = 1
scale = .5, .5
ignorehitpause = 1

[State 3510, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

---------------------------------------------------------------------------
; DONT_JUMP
[Statedef 3800]
type    = S
movetype= I
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 0

[State 3800]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3800, 1]
type = ChangeState
trigger1 = time = 0
value = 0
ctrl = 1

---------------------------------------------------------------------------
; JUMP_AWAY_AFTER_ADDITIONAL_AIR_HIT
[Statedef 249]
type    = A
movetype= I
physics = A
juggle  = 0
poweradd= 0
ctrl = 0
velset = -2,-6,0
anim = 5040

[State 3800, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; CPU_AI_ON!
[Statedef 3810]
type    = S
movetype= I
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 3800

[State 3810]
type = VarSet
trigger1 = Time = 0
var(41) = 1

[State 3810, 1]
type = PlaySnd
trigger1 = Time = 0
value = 7, 23

[State 3810, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


