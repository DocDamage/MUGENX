;********** INVISIBILITY **********

[Statedef 3010]
type = S
movetype = I
physics = S
anim = 3010 + var(17)
ctrl = 0
velset = 0,0

[State 3010, Fire]
type = explod
trigger1 = Time = 10
anim = 3012
pos = 0,0
postype = p1
ontop = 1

[State 3010, Boom]
type = PlaySnd
trigger1 = time = 10
value = 31, 46

[State 3010, Var]
type = VarSet
trigger1 = AnimTime = 0 
var(17) = 1

[State 20001, Super B]
type = AfterImage
trigger1 = time = 1
FrameGap = 10
length = 70
PalBright   =   0,  0,  0
PalContrast = 118,118,118
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1
time = 50


[State 3010, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;********** Reverse INVISIBILITY **********
[Statedef 3011]
type = S
movetype = I
physics = S
anim = 3011 + var(0)
ctrl = 0
velset = 0,0

[State 3011, Fire]
type = explod
trigger1 = Time = 1
anim = 3012
pos = 0,0
postype = p1
ontop = 1

[State 3011, Var]
type = VarSet
trigger1 = AnimTime = 0 
var(17) = 0 ;ifelse(var(17) = 0, 1, 0)

[State 3011, Boom]
type = PlaySnd
trigger1 = time = 1
value = 31, 46

[State 3011, CS]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Intro
[Statedef 30111]
type = S
movetype = I
physics = S
anim = 30111 + var(0)
ctrl = 0
velset = 0,0

[State 30111, Var]
type = VarSet
trigger1 = AnimTime = 0 
var(17) = 0 ;ifelse(var(17) = 0, 1, 0)

[State 3010, Fire]
type = explod
trigger1 = Time = 1
anim = 3012
pos = 0,0
postype = p1
ontop = 0

[State 30111, Boom]
type = PlaySnd
trigger1 = time = 1
value = 31, 46

[State 30111, Enter]
type = ChangeState
trigger1 = RoundState = 2
triggerall = AnimTime = 0
value = 0
ctrl = 0



;-----------Tongue Spear-----------------
[Statedef 2080]
type    = S
movetype= A
physics = S
juggle  = 3
poweradd= 120
ctrl = 0
anim = 2080
sprpriority = 1
velset = 0,0,0

[State 2080, Super C]
type = PowerAdd
trigger1 = Time = 1
value = -2000

[State 2080, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = 9920, -99120
anim = 100
sound = S28, 28
poweradd = -2000

[State 2080, Slurp]
type = PlaySnd
trigger1 = time = 3
value = 31, 30

[State 2080, 2]
type = HitDef
trigger1 = AnimElem = 16
attr = S, SA
damage    = 20, 5
getpower = 120,60
givepower = 120,60
animtype  = Medium
hitflag = HA-
guardflag = HA
pausetime = 0,5
sparkno = -1
sparkxy = -10,-55
hitsound = s27,27
guardsound = S0,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 15
guard.velocity = 0
air.velocity = 0
numhits = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 2080, 2.5]
type = HitDef
trigger1 = AnimElem = 20
attr = S, SA
damage    = 25
getpower = 120,60
givepower = 120,60
animtype  = Medium
hitflag = HA-
guardflag = HA
postype = p1
pausetime = 0,0
guard.pausetime = 0,0
sparkno = -1
sparkxy = -10,-55
hitsound = s27,27
guardsound = S0,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = 15
guard.velocity = 0
air.velocity = 0
p2stateno = 2081
numhits = 1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 2080, 3]
type = ChangeState
trigger1 = AnimTime= 0
value = 3100
ctrl = 1

[Statedef 2081]
type    = S
movetype= I
physics = S
juggle  = 3
ctrl = 0
anim = 5300
sprpriority = 1

[State 2081, 1]
type = Changeanim2
trigger1 = statetype = S
trigger1 = !animexist(5300)
value = 0

[State 2081, 3]
type = Selfstate
trigger1 = time = 100
trigger1 = life != 0
value = 0
ctrl = 1

;--------------------------------------------
;Teleport
[StateDef 700]
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 700

[State 700, 5]
type = Helper
trigger1 = time = 0
trigger1 = Pos Y = 0
stateno = 1046
name = "AfterImage"
pos = 0, 0
postype = P1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 0
under = 1

[State 700, Leave]
type = PlaySnd
trigger1 = Time = 0
value = 31, 37 

[State 700, GoToP2]
type = PosAdd
trigger1 = Time = 20
X = (P2Dist X) + 25

[State 700, Stand]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

; Dissappear (stand)
[Statedef 1046]
type    = S
movetype= I
physics = N
anim = 1046
Velset = 0, 0
ctrl = 0

[State 1045, 3]
type = Destroyself
trigger1 = animtime = 0
trigger2 = Parent, FrontEdgedist = [0, 9]
trigger3 = Parent, BackEdgedist = [0, 9]

;----------------------------------------------
; Player Two hit the dirt.
[StateDef 1031]
type    = A
movetype= H
physics = N
juggle  = 2
velset = 0,0,0
ctrl = 0

[State 1031, Gravity]
type = VelAdd
Trigger1 = 1
y = .2

[State 1031, Falling]
type = ChangeAnim2
trigger1 = time = 0
value = 1031

[State 1031, HitGround]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

;============================================================
;Acid
[StateDef 1200]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1200

[State 1200, Start]
type = Explod
trigger1 = AnimElem = 2 
anim = 1210
pos = 0, 0
postype = P1
BindTime = -1
sprpriority = 3
shadow = -1
ownpal = 1
removeongethit = 1

[State 1200, Acid Spit]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 23, 23

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 4 
projanim = 1220
projid = 1220
id = 1220
projhitanim = 1230
projremanim = 1211
postype 
offset = 0, 5
velocity = 5.6, .3
remvelocity = 6.35, .3
attr = S, SP
damage    = 65, 23
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,3
sparkno = -1
guard.sparkno = -1
;hitsound   = 4,22
ground.type = High
ground.slidetime = 14
ground.hittime  = 26
ground.velocity = -7
air.velocity = -2.5,-5
air.juggle = 3
air.recover = 0
;PalFX
fall = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 202, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 1200, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;============================================================

;Shroom
[StateDef 30000]
type    = S
movetype= A
physics = S
juggle  = 8
ctrl = 0
velset = 0,0,0
poweradd = -1000
anim = 30000

[State 30000, 1]
type = PlaySnd
trigger1 = time = 30
value = 4, 9

[State 20001, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = -9999, -99999
anim = 100
sound= S31,48
supermove = 1
time = 50

[State 3450, SuperLight] 
type = Explod
trigger1 = AnimElem = 1
anim = 30005
pos = -35, -100
sprpriority = 9
postype = p1
bindtime = -1
supermove = 1
ownpal = 1
ontop = 1

[State 30000, 2]
type = Projectile
trigger1 = AnimElem = 4 
projanim = 30001
projhitanim = 30002
projremanim = 30002
postype 
velocity = 5, 0
remvelocity = 2.3, 0
; HitDef part of projectile info
attr = S, HP
damage    = 65, 23
pausetime = 0,99 
getpower = 2000,0
givepower = -2000,0
animtype = Hard
air.animtype = Back
hitflag = HA
guardflag = HA
sparkno = -1
fall = 1
guard.sparkno = -1
hitsound   = S28, 30 
guardsound = 6,0
ground.type = High
ground.slidetime = 90
ground.hittime  = 90
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 5
p2stateno = 2099
fall.envshake.time = 40
palfx.time = 99
palfx.mul = 150,150,150
palfx.add = 40,40,40

[State 30000, 34]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 30000, 4]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;-----------------------------------------------
;Slow Orb
[StateDef 10000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
anim = 4000
ctrl = 0

[State 2000, 2]
type = helper
trigger1 = AnimElem = 6
stateno = 2001
name = "Powerball"
id = 2001
pos = 17, 0
postype = p1
ownpal = 1

[State 2000 , 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Slow Powerball helper
[Statedef 2001]
type    = S
movetype= A
physics = N
poweradd= 120
juggle = 1
velset = 0,0
anim = 4001
ctrl = 0

[State 2001, vel]
type = velset
trigger1 = time = 0
x = 1.4

[State 2001, ZappySound]
type = PlaySnd
trigger1 = timemod = 80, 1
value = 24, 24

[State 2001, nokill]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = Var(9) = 1
attr = C, NA   
damage    = 50 
animtype = Light
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 8,1
sparkno = 0
sparkxy = -10,-70
hitsound = 31,36
guardsound = 6,0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 11
ground.velocity = -2
air.velocity = -1,-3
p2stateno = 2002
fall = 1
kill = 1

[State 2001, 1]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = Var(9) = 0
attr = C, NA   
damage    = 50 
animtype = Light
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 8,1
sparkno = 0
sparkxy = -10,-70
hitsound = 31,36
guardsound = 6,0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 11
ground.velocity = -2
air.velocity = -1,-3
fall = 1
p2stateno = 2002
kill = 0

[State 2001, Didn't hit, blocked etc.]
type = Destroyself
trigger1 = time = 280

[State 2001 , 5]
type = ChangeState
trigger1 = MoveContact 
value = 2201
ctrl = 1

[Statedef 2201]
type = A
ctrl = 0
anim = 4002
velset = 0,0

[State 2002, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0

[Statedef 1313]
Type = A
MoveType = H
Physics = N
Velset = -.5, 0
ctrl = 1

[State 1313, CA]
type = Changeanim2
trigger1 = time = 0
value = 1313

[State 1313, gravity]
type = veladd
trigger1 = time > 5
y = .1

[State 1313, CC]
type = Selfstate
trigger1 = Pos Y >= 0
trigger1 = time > 5
value = 5110

[Statedef 2002]
Type = A
MoveType = H
Physics = N
Velset = 3.25, -5
ctrl = 1

[State 2002, CA]
type = Changeanim2
trigger1 = time = 0
value = 2002

[State 2002, gravity]
type = veladd
trigger1 = time > 5
y = .4

[State 2002, CC]
type = Selfstate
trigger1 = Pos Y >= 0
trigger1 = time > 5
value = 5110

[Statedef 1313]
Type = A
MoveType = H
Physics = N
Velset = 0, 0
ctrl = 1

[State 2002, CA]
type = Changeanim2
trigger1 = time = 0
value = 1313

[State 2002, CC]
type = Selfstate
trigger1 = Pos Y >= 0
trigger1 = time > 5
value = 5110


;-----------------------------------------------
;Fast Orb
[StateDef 60000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
anim = 4000
ctrl = 0

[State 2000, 2]
type = helper
trigger1 = AnimElem = 6
stateno = 2009
name = "Powerball"
id = 2001
pos = 17, 0
postype = p1
ownpal = 1

[State 2000 , 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Fast Powerball helper
[Statedef 2009]
type    = S
movetype= A
physics = N
poweradd= 120
juggle = 1
velset = 0,0
anim = 4001
ctrl = 0

[State 4001, vel]
type = velset
trigger1 = time = 0
x = 3.4

[State 4001, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 24, 24

[State 4001, nokill]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = Var(9) = 1
attr = C, NA   
damage    = 50 
animtype = Light
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 0,0
sparkno = 0
sparkxy = -10,-70
hitsound = 31,38
guardsound = 6,0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 11
ground.velocity = -2
air.velocity = -1,-3
p2stateno = 2002
fall = 1
kill = 1

[State 4001, 1]
type = HitDef
trigger1 = AnimElem = 1
trigger1 = Var(9) = 0
attr = C, NA   
damage    = 50 
animtype = Light
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 0,0
sparkno = 0
sparkxy = -10,-70
hitsound = 31,38
guardsound = 6,0
ground.type = Low
ground.slidetime = 5
ground.hittime  = 11
ground.velocity = -2
air.velocity = -1,-3
p2stateno = 2002
fall = 1
kill = 0

[State 4001, Didn't hit, blocked etc.]
type = Destroyself
trigger1 = time = 100

[State 4001 , 3]
type = ChangeState
trigger1 = MoveContact
value = 2201
ctrl = 1

[Statedef 2099]
type = A
Physics = N
VelSet = 0,0

[State 2099, CA2]
type = changeanim2
trigger1 = time = 1
value = 1357

[State 2099, CA2]
type = changeanim2
trigger1 = time = 131
value = 2530

[State 2099, PA]
type = posadd
trigger1 = time >= 0 && time <= 1
trigger1 = pos y < 3
Y = -2

[State 2099, Freeze!]
type = posfreeze
trigger1 = pos Y = 3

[State 2099, Fall Dammit!]
type = gravity
trigger1 = time >= 131

[State 2099, Hit Ground]
type = changestate
trigger1 = pos Y >= 0 && time > 5
value = 5050

;-----------------------------------------------
; Super Low Acid Spit
[StateDef 24000]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
sprpriority = 4
anim = 24000

[State 24000, Super C]
type = PowerAdd
trigger1 = Time = 1
value = -2000

[State 24000, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = 9920, -99120
anim = 100
sound = S31,47
poweradd = -2888

[State 24000, BoltFat1]
type = Projectile
trigger1 = Time = 30 
projanim = 1220
projhitanim = 1230
projremanim = 1211
postype 
offset = -30, 68
velocity = 5, .2
remvelocity = 5.35, .2
; HitDef part of projectile info
attr = S, SP
damage    = 50, 23
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,7
sparkno = -1
guard.sparkno = -1
hitsound   = 5, 3
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -3.5,-5
air.juggle = 3
;PalFX
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0


[State 24000, BoltFat2]
type = Projectile
trigger1 = Time = 31
projanim = 1220
projhitanim = 1230
projremanim = 1211
postype 
offset = -30, 68
velocity = 6, .2
remvelocity = 6.35, .2
; HitDef part of projectile info
attr = S, SP
damage    = 95, 23
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,7
sparkno = -1
guard.sparkno = -1
hitsound   = 5, 3
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -3.5,-5
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0

[State 24000, BoltFat3]
type = Projectile
trigger1 = Time = 32
projanim = 1220
projhitanim = 1230
projremanim = 1211
postype 
offset = -30, 68
velocity = 5.5, .4
remvelocity = 4.35, .4
; HitDef part of projectile info
attr = S, SP
damage    = 75, 0
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,7
sparkno = -1
guard.sparkno = -1
hitsound   = 5, 3
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -3.5,-5
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0

[State 24000, BoltFat4]
type = Projectile
trigger1 = Time = 33
projanim = 1220
projhitanim = 1230
projremanim = 1211
postype 
offset = -30, 68
velocity = 6.5, .5
remvelocity = 4.35, .5
; HitDef part of projectile info
attr = S, SP
damage    = 75, 23
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,7
sparkno = -1
guard.sparkno = -1
hitsound   = 5, 3
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0

[State 24000, Smoke]
type = Explod
trigger1 = projcontact = 1
anim = 1616
pos = 0, -30
postype = p2
bindtime = 2
facing = 1
sprpriority = 7
ontop = 0
ownpal = 1

[State 24000, Acid Start]
type = Explod
trigger1 = Time = 20
anim = 1210
pos = -25, 60
postype = P1
BindTime = -1
sprpriority = 9
shadow = -1
ownpal = 1
removeongethit = 1

[State 24000, Spit]
type = PlaySnd
trigger1 = Time = 30
trigger2 = Time = 31
trigger3 = Time = 32
trigger4 = Time = 33
value = 23, 23

[State 24000, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 24000, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
;-----------------------------------------------
; Super Acid Spit
[StateDef 20000]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1200

[State 20000, Super C]
type = PowerAdd
trigger1 = Time = 1
value = -2000

[State 20000, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = 9920, -99120
anim = 100
sound = S31,47
poweradd = -2888

[State 20000, Super B]
type = AfterImage
trigger1 = AnimElem = 1
time = 2

[State 20000, BoltFat1]
type = Projectile
trigger1 = AnimElem = 4 
projanim = 1220
projhitanim = 1230
projremanim = 1211
postype 
offset = 0, 5
velocity = 5, .2
remvelocity = 5.35, .2
; HitDef part of projectile info
attr = S, SP
damage    = 50, 23
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,3
sparkno = -1
guard.sparkno = -1
hitsound   = 5, 3
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 3
;PalFX
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0


[State 20000, BoltFat2]
type = Projectile
trigger1 = AnimElem = 4 
projanim = 1220
projhitanim = 1230
projremanim = 1211
postype 
offset = 0, 5
velocity = 6, .2
remvelocity = 6.35, .2
; HitDef part of projectile info
attr = S, SP
damage    = 45, 23
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,3
sparkno = -1
guard.sparkno = -1
hitsound   = 5, 3
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0

[State 20000, BoltFat3]
type = Projectile
trigger1 = AnimElem = 4 
projanim = 1220
projhitanim = 1230
projremanim = 1211
postype 
offset = 0, 5
velocity = 4, .4
remvelocity = 4.35, .4
; HitDef part of projectile info
attr = S, SP
damage    = 45, 0
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,3
sparkno = -1
guard.sparkno = -1
hitsound   = 5, 3
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0


[State 20000, BoltFat4]
type = Projectile
trigger1 = AnimElem = 4 
projanim = 1220
projhitanim = 1230
projremanim = 1211
postype 
offset = 0, 5
velocity = 4, .5
remvelocity = 4.35, .5
; HitDef part of projectile info
attr = S, SP
damage    = 55, 23
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,3
sparkno = -1
guard.sparkno = -1
hitsound   = 5, 3
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0

[State 20000, BoltFat5]
type = Projectile
trigger1 = AnimElem = 4 
projanim = 1220
projhitanim = 1230
projremanim = 1211
postype 
offset = 0, 5
velocity = 5, .45
remvelocity = 5.35, .45
; HitDef part of projectile info
attr = S, SP
damage    = 55, 23
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,3
sparkno = -1
guard.sparkno = -1
hitsound   = 5, 3
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0


[State 20000, BoltFat6]
type = Projectile
trigger1 = AnimElem = 4 
projanim = 1220
projhitanim = 1230
projremanim = 1211
postype 
offset = 0, 5
velocity = 6, .2
remvelocity = 6.35, .2
; HitDef part of projectile info
attr = S, SP
damage    = 55, 23
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,3
sparkno = -1
guard.sparkno = -1
hitsound   = 5, 3
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0

[State 2500, 1]
type = Explod
trigger1 = projcontact = 1
anim = 1616
pos = 0, -103
offset = 0,0
postype = p2
bindtime = 2
facing = 1
sprpriority = 7
ontop = 0
ownpal = 1

[State 20000, Start]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 7
trigger6 = AnimElem = 8
anim = 1210
pos = 0, 0
postype = P1
BindTime = -1
sprpriority = 3
shadow = -1
ownpal = 1
removeongethit = 1

[State 20000, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 7
trigger6 = AnimElem = 8
value = 23, 23

[State 20000, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 20000, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0


;===============================================
; Ninja Kick
[StateDef 20001]
type    = S
movetype= A
physics = S
juggle  = 10
ctrl = 0
velset = 17,-6
anim = 1919

[State 20001, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = 9926, -9991
anim = 100
sound = S31,43
poweradd = -2228

[State 20001, Super CC]
type = PowerAdd
trigger1 = Time = 1
value = -2000

[State 20001, Super B]
type = AfterImage
trigger1 = time = 1
FrameGap = 7
length = 70
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1
time = 80

[State 20001, Super E]
type = AfterImageTime
trigger1 = Time = [1,30]
time = 2

[State 20001, 2]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
trigger7 = AnimElem = 7
trigger8 = AnimElem = 8
trigger9 = AnimElem = 9
trigger10 = AnimElem = 10
trigger11 = AnimElem = 11
trigger12 = AnimElem = 12
trigger13 = AnimElem = 13
trigger14 = AnimElem = 14
trigger15 = AnimElem = 15
trigger16 = AnimElem = 16
attr = A, SA
damage    = 40,20
animtype  = Heavy
getpower = 10,5
givepower = 10,5
guardflag = HA
hitflag = HA
priority = 7
pausetime = 0,6
sparkno = 0 
sparkxy = -20,-60
guard.sparkno = -1
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = -2,0
air.velocity = -4,-3
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0
air.fall = 0
envshake.time = 5

[State 20000, ZappySound]
type = PlaySnd
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
trigger7 = AnimElem = 7
trigger8 = AnimElem = 8
trigger9 = AnimElem = 9
trigger10 = AnimElem = 10
trigger11 = AnimElem = 11
trigger12 = AnimElem = 12
trigger13 = AnimElem = 13
trigger14 = AnimElem = 14
trigger15 = AnimElem = 15
trigger1 = AnimElem = 16
value = 26, 26


[State 20000, ZappySound2]
type = PlaySnd
triggerall = movecontact = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
trigger7 = AnimElem = 7
trigger8 = AnimElem = 8
trigger9 = AnimElem = 9
trigger10 = AnimElem = 10
trigger11 = AnimElem = 11
trigger12 = AnimElem = 12
trigger13 = AnimElem = 13
trigger14 = AnimElem = 14
trigger15 = AnimElem = 15
trigger1 = AnimElem = 16
value = 0, 0

[State 20001, 1] 
type = velset
trigger1 = time <= 40
x = 8
y = -.9

[State 20001, 3]
type = VelAdd ; Gravity
trigger1 = Time >= 40
y = 0.28

[State 20001, 4]
type = ChangeState
trigger1 = (Vel y > 0 && Pos y >= 0)
value = 0
ctrl = 1

;---------------------------------------------------------------------------
