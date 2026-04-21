;Low Spear
[StateDef 12000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 12220
ctrl = 0

[State 12000, PUNCH]
type = Varset
trigger1 = Var(19) != 1
V = 19
value = 1

[State 12000, 3.2]
type = VarRandom
trigger1 = Time = 5
v = 11
range = 1, 2

[State 12000, 3.3]
type = Playsnd
trigger1 = Var(11) = 1
trigger1 = time = 12
value = 20, 6

[State 12000, 3.4]
type = Playsnd
trigger1 = Var(11) = 2
trigger1 = time = 6
value = 20, 2

[State 12000, 3.5]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 12000, 1]
type = Helper
trigger1 = time = 15
stateno = 10100
name = "lowspear"
id = 10100
postype = p1
pos = 20, -72
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 12000, 7]
type = ChangeState
triggerall = Time >= 50
trigger1 = p2stateno != 10200
trigger1 = p2stateno != 10210
value = 0
ctrl = 1

[State 12000, 8]
type = Changestate
trigger1 = p2stateno = 10200
trigger1 = time > 10
trigger2 = p2stateno = 10210
value = 10010
;------------------------------------------------
;PULL EM IN
[Statedef 10010]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 10040 ;tug it
ctrl = 0

[State 10010, 3.2]
type = VarRandom
trigger1 = time = 1
v = 11
range = 1, 4

[State 10010, 3.5]
type = Playsnd
trigger1 = Var(11) = 1
trigger1 = time = 1
value = 20, 7

[State 10010, 3.6]
type = Playsnd
trigger1 = Var(11) = 2
trigger1 = time = 1
value = 20, 1

[State 10010, 3.7]
type = Playsnd
trigger1 = Var(11) = 3
trigger1 = time = 1
value = 20, 9

[State 10010, 3.8]
type = Playsnd
trigger1 = Var(11) = 4
trigger1 = time = 1
value = 20, 10

[State 10010, 7]
type = ChangeState
trigger1 = p2stateno = 10210
trigger1 = time > 15 
value = 0
ctrl = 1

[State 10010, 8]
type = Changestate
trigger1 = time > 50
value = 0
ctrl = 1
;--------------------------------------
; The flying spear
[Statedef 10100]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 6.5,0
anim = 1200
ctrl = 0

[State 10100, 1]
type = Playsnd
trigger1 = time = 0
value = 2,4

[State 10100, 1.2]
type = Helper
trigger1 = time = 0
stateno = 10110
name = "Rope"
pos = -26, 0
helpertype = normal
sprpriority = -2
keyctrl = 0
ownpal = 0
under = 1

[State 10100, 1.55]
type = Helper
trigger1 = timemod = 4,0
trigger1 = time = [0, 60]
trigger1 = Pos X > -190
trigger1 = Pos X < 190
stateno = 10110
name = "Rope"
pos = 0, 0
helpertype = normal
sprpriority = -2
keyctrl = 0
ownpal = 1
under = 1

[State 10100, 2]
type = HitDef
trigger1 = time > 1
trigger1 = Roundno != 1
attr = S, SP
guardflag = M
damage    = 20,5
animtype  = Medium
postype = p1
priority  = 6
hitsound   = S1,3
guardsound = s0,0
kill = 0
guard.slidetime = 20
guard.ctrltime = 10 
p1stateno = 10300
p2stateno = 10200
forcestand = 1
p2facing = 1
ground.type = High

[State 10100, 2.1]
type = HitDef
trigger1 = time > 1
trigger1 = Roundno = 1
attr = S, SP
damage    = 50,5
animtype  = Medium
postype = p1
priority  = 6
hitsound   = S1,3
guardsound = s0,0
guardflag = M
kill = 0
guard.slidetime = 20
guard.ctrltime = 10 
p1stateno = 10300
p2stateno = 10200
forcestand = 1
p2facing = 1
ground.type = High

[State 10100, 4]
type = Changestate
trigger1 = MoveGuarded = 1
value = 10130

[State 10100, DS]
type = destroyself
trigger1 = time = 50

;-------------------------------
;The hidden Rope
[Statedef 10110]
type    = S
movetype= I
physics = N
anim = 1015
ctrl = 0

[State 10110, 1]
type = Changestate
trigger1 = p2stateno = 10200
value = 10120

[State 10110, 2]
type = Destroyself
trigger1 = root, stateno != [10000, 10010]
trigger1 = root, stateno != 12000

;------------------------------------------------------------------------
;The Rope Becomes visible
[Statedef 10120]
type    = S
movetype= I
physics = N
anim = 1002
ctrl = 0

[State 10120, 1]
type = Destroyself
trigger1 = p2stateno = 10210
trigger2 = Parentdist X = [-3, 3]
trigger3 = stateno = 0
trigger4 = time = 40

[Statedef 10103]
type    = S
movetype= I
physics = N
anim = 1013
Velset = 0,0
ctrl = 0

[State 10130, 1]
type = Destroyself
trigger1 = animtime = 0

[Statedef 10200]
type    = S
movetype= H
physics = N
ctrl = 0
velset = 0,0

[State 10200, PosAdd]
Type = PosAdd
trigger1 = 1 ;time = 0
X = ifelse(P2Dist X > 0, 6, -6)

[State 10200, PosSet]
Type = PosSet
trigger1 = time = 0
Y = 0

[State 10200, .5]
type = Changeanim2
trigger1 = time = 0
value = 1854

[State 10200, .75]
type = PlayerPush
trigger1 = time >= 1
value = 0

[State 10200, 1]
type = PosAdd
trigger1 = timemod = 10,0
trigger1 = time = [0, 50]
X = -1

[State 10200, 1.1]
type = Posadd
trigger1 = timemod = 10,4
trigger1 = time = [0, 50]
X = 1

[State 10020, 2]
type = Changestate
trigger1 = P2dist X = [-60, 60]
value = 1021

[State 10200, 3]
type = Selfstate
trigger1 = time = 50
value = 0
ctrl = 1

;----------------------------------------
;P2  stunned by spear
[Statedef 10210]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 10210, 1]
type = Changeanim
trigger1 = animexist(5300)
trigger1 = anim != 5300
value = 5300

[State 10210, 2]
type = Changeanim2
trigger1 = !animexist(5300)
trigger1 = anim != 9010
value = 9010

[State 10210, 3]
type = Selfstate
trigger1 = time = 70
value = 0
ctrl = 1

;--------------------------------
;Spear latching onto target
[Statedef 10300]
type    = S
movetype= A
physics = N
juggle  = 1
anim = 1003
Velset = 0, 0
ctrl = 0

[State 10300, 1.1]
type = Helper
trigger1 = time = 0
stateno = 6030
name = "HARPOON BLOOD"
pos = 20,15
helpertype = normal
sprpriority = 6
keyctrl = 0
ownpal = 1
ontop = 1

[State 10300, 1.2]
type = Velset
trigger1 = time = 80
X = -8

[State 10300, 1.3]
type = Velset
trigger1 = ParentDist X = [-60, 60]
X = 0

[State 10300, 1.4]
type = PosAdd
trigger1 = 1
x = P2Dist X - 25

[State 10300, 1.5]
type = Destroyself
trigger1 = p2stateno != 10200

;-----------------------------------------
[Statedef 1003]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 9998
ctrl = 0

[State 1003, GO BYE BYE]
type = DestroySelf
trigger1 = animtime = 0


;Leg Take Down
[Statedef 53688]
type    = S     
movetype= A     
physics = C     
juggle  = 1     
velset = 0,0
ctrl = 0
anim = 53688
poweradd = 40

[State 53688, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4,10

[State 53688, 4]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA  
damage    = 130,10
animtype = Back
guardflag = L
hitflag = M
pausetime = 0,0
sparkxy = -9999,-9999
hitsound = S3,6
guardsound = S0,0
ground.slidetime = 10
ground.hittime  = 15
ground.Velocity = 0
ground.type = Trip
air.Velocity = 0,-3
down.Velocity = 0,0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 1
fall.recover = 0

[State 53688, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 12
ctrl = 1

;Fire Wheel
[StateDef 90210]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
sprpriority = 3
anim = 5151

[State 90210, Super C]
type = PowerAdd
trigger1 = Time = 1
value = -2000

[State 90210, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = 48, -90
supermove = 1
anim = 9999
sound = s20, 16
poweradd = -2000
time = 245

[State 90210, Super2]
type = SuperPause
trigger1 = AnimElem = 1
pos = 9999, -9999
supermove = 1
anim = 9999
sound = S20, 17
time = 245

[State 90210, SuperLight] 
type = Explod
trigger1 = AnimElem = 1
anim = 5158
pos = 0, 0
sprpriority = 1
postype = p1
bindtime = -1
supermove = 1
ownpal = 1
ontop = 1

[State 90210, Pre-Pause Sound]
type = Playsnd
trigger1 = time = 0
value = S20,16

[State 90210, Throw It]
type = Playsnd
trigger1 = time = 1
value = S31, 37

[State 90210, sound2]
type = Playsnd
trigger1 = time = 2
value = S20,3

[State 90210, Hit Sound]
type = playsnd
trigger1 = projhit(2000) = 1
value = 1313, 4

[State 90210, BoltFat]
type = Projectile
trigger1 = time = 1 
projanim = 5152
projremove = 0
postype = p1
offset = 0,0
pos = 0, 0
velocity = 6, 0
projpriority = 8
; HitDef part of projectile info
attr = S, SP 
damage = 300, 60
air.fall = 1
guardflag = HA
hitflag = HA-
hitsound = s4,21
pausetime = 0,3
sparkno = -1
guard.sparkno = -1
guardsound = S0, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 5
ground.velocity = -12, -8
air.velocity = -12,-8
air.juggle = 3
fall = 1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
envshake.time = 40
envshake.freq = 190
envshake.ampl = -5
down.bounce = 3
fall.xvelocity = -2
fall.yvelocity = -2
fall.envshake.time = 20
fall.envshake.freq = 185
fall.envshake.ampl = -4
palfx.time = 90
palfx.mul = 251,173,23
palfx.add = 200,0,0
palfx.sinadd = 251,173,23,5
fall.recover = 0

[State 90210, Flame 1]
type = Explod
trigger1 = ProjContactTime(0) != -1 && ProjContactTime(0) < 10
random = 10, 20
anim = 9489 
pos = 5, -50
postype = p2
bindtime = -1
sprpriority = 3 
shadow = 0
ownpal = 1
ontop = 0

[State 90210, Flame 2]
type = Explod
trigger1 = ProjContactTime(0) != -1 && ProjContactTime(0) < 10
random = 10, 20
anim = 9489 
pos = 5, -50
postype = p2
bindtime = -1
sprpriority = 3 
shadow = 0
ownpal = 1
ontop = 0

[State 90210, Flame 3]
type = Explod
trigger1 = ProjContactTime(0) != -1 && ProjContactTime(0) < 10
random = 10, 20
anim = 9489 
pos = 5, -50
postype = p2
bindtime = -1
sprpriority = 3 
shadow = 0
ownpal = 1
ontop = 0

[State 90210, Flame 4]
type = Explod
trigger1 = ProjContactTime(0) != -1 && ProjContactTime(0) < 10
random = 10, 20
anim = 9489 
pos = 5, -50
postype = p2
bindtime = -1
sprpriority = 3 
shadow = 0
ownpal = 1
ontop = 0

[State 90210, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Phoenix
[StateDef 696901]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 9990

[State 696901, Super C]
type = PowerAdd
trigger1 = Time = 1
value = -2000

[State 696901, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = 9999, -9999
anim = 100
sound = S5,9
poweradd = -2000

[State 696901, Hit Sound]
type = playsnd
trigger1 = projhit(2000) = 1
value = 4,22

[State 696901, sound]
type = Playsnd
trigger1 = time = 5
value = S20,3

[State 696901, Hit Sound]
type = playsnd
trigger1 = projhit(2000) = 1
value = 1313, 4

[State 696901, Life Trade]
type = LifeAdd
trigger1 = projhit(2000) = 1
value = 100
absolute = 1 

[State 696901, BoltFat]
type = Projectile
trigger1 = time = 7 
projanim = 9989
projremove = 0
postype = p2
pos = floor(p2dist X), -40
;offset = 0, -40
velocity = 0, 0
; HitDef part of projectile info
attr = S, SA 
damage    = 100, 0
air.fall = 0
guardflag = HA
hitflag = HA-
hitsound = s4,22
pausetime = 0,10
givepower = -3000,0
sparkno = -1
guard.sparkno = -1
guardsound = S0,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = 0, -13
air.velocity = 0,-13
air.juggle = 3
fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
air.fall = 1
envshake.time = 20
envshake.freq = 190
envshake.ampl = -5
fall.envshake.time = 18
fall.envshake.freq = 185
fall.envshake.ampl = -4
palfx.time = 91
palfx.mul = 150,150,150
palfx.add = 40,40,40

[State 696901, Flame2]
type = Explod
trigger1 = ProjContactTime(0) != -1 && ProjContactTime(0) < 15
anim = 94888 
pos = -13, -20
postype = p2
bindtime = -1
sprpriority = 4 
shadow = 0
ownpal = 1
ontop = 1

[State 696901, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;Dragon
[StateDef 32101]
type    = S
movetype= A
physics = S
juggle  = 10
ctrl = 0
velset = 0,0,0
sprpriority = 6
anim = 30000

[State 32101, Super C]
type = PowerAdd
trigger1 = Time = 1
value = -2000

[State 32101, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = 9999, -9999
sound = S20, 16 
poweradd = -2000

[State 32101, SuperLight] 
type = Explod
trigger1 = AnimElem = 1
anim = 8228
pos = 48, -93
sprpriority = 1
postype = p1
supermove = 1
ownpal = 1
pausemovetime = 9999

[State 32101, Red Swirl-Top] 
type = Explod
trigger1 = AnimElem = 4
anim = 1144
pos = 6, -123
sprpriority = 5
postype = p1
supermove = 1
ownpal = 1
pausemovetime = 9999

[State 32101, Red Swirl-Bottom] 
type = Explod
trigger1 = AnimElem = 4
anim = 1145
pos = 6, -123
sprpriority = 1
postype = p1
supermove = 1
ownpal = 1
under = 1
pausemovetime = 9999

[State 32101, sound]
type = Playsnd
trigger1 = time = 15
value = S31,38

[State 32101, Hit Sound]
type = playsnd
trigger1 = projhit(2000) = 1
value = 1, 3

[State 32101, BoltFat1]
type = Projectile
trigger1 = time = 18
time = 20
projanim = 9993
projhitanim = 9991 ;30001
postype 
offset = 0, -20
velocity = 5.5, 0
remvelocity = 5, 0
projedgebound = 900 
projstagebound = 900
; HitDef part of projectile info
ProjHits = 40
projmisstime = 7
attr = S, SP
damage    = 20, 10
animtype = Hard
air.animtype = Back
guardflag = MA
pausetime = 0,0
sparkno = -1
numhits = 1
guard.sparkno = -1
hitsound   = 1, 3
guardsound = s0, 0
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = -8
envshake.time = 15
envshake.freq = 170
envshake.ampl = -3
air.velocity = -2,-3
air.juggle = 7
;PalFX
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0

[State 32101, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 32101, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0


;Flame
[StateDef 31101]
type = S
Movetype = A
Physics = S
juggle = 9
poweradd = 100
anim = 51148
sprpriority = 4
ctrl = 0

[State 31101,1]
type = PlaySnd
trigger1 = Time = 20
value = 20,3

[State 31101,1]
type = PlaySnd
trigger1 = Time = 27
value = 20,3

[State 31101, BoltFat1]
type = Projectile
trigger1 = time = 25 
projanim = 4220
projremove = 0
postype 
offset = 22, -23
velocity = 0, 0
attr = S, NA
damage    = 60, 30
animtype = Heavy    
hitflag = MAFD           
air.animtype = Back
air.fall = 1
priority = 2, Hit  
guardflag = MA
pausetime = 5,15
sparkno = -1
guard.sparkno = -1
hitsound   = s4, 21 
guardsound = S0, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 50
ground.velocity = -1, 0
air.velocity = -1,-0
air.juggle = 15
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
palfx.time = 60
palfx.mul = 150,150,150
palfx.add = 40,40,40

[State 31101, Flame 1]
type = Explod
trigger1 = ProjContactTime(0) != -1 && ProjContactTime(0) < 10
anim = 9489 
pos = 5, -50
postype = p2
bindtime = -1
sprpriority = 3 
shadow = 0
ownpal = 1
ontop = 0

[State 31101, Flame2]
type = Explod
trigger1 = ProjContactTime(0) != -1 && ProjContactTime(0) < 15
anim = 9488 
pos = -13, -70
postype = p2
bindtime = -1
sprpriority = 4 
shadow = 0
ownpal = 1
ontop = 1

[State 31101, Flame3]
type = Explod
trigger1 = ProjContactTime(0) != -1 && ProjContactTime(0) < 15
anim = 9489 
pos = -5, -30
postype = p2
bindtime = -1
sprpriority = 3 
shadow = 0
ownpal = 1
ontop = 0

[State 31101, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 31101, GO BYE BYE]
type = DestroySelf
trigger1 = animtime = 0

[State 3101, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;Super Flame
[StateDef 3101]
type = S
Movetype = A
Physics = S
juggle = 4
poweradd = 50
anim = 5148
sprpriority = 4
ctrl = 0

[State 3101, Super C]
type = PowerAdd
trigger1 = Time = 1
value = -2000

[State 3101, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = -9940, -19940
anim = 100
sound = S20, 0
poweradd = -2888

[State 3101,1]
type = PlaySnd
trigger1 = Time = 20
value = 20,3

[State 3101,1.1]
type = PlaySnd
trigger1 = Time = 27
value = 20,3

[State 3101, BoltFat1]
type = Projectile
trigger1 = time = 25 
projanim = 4200
projremove = 0
postype 
offset = 22, -23
velocity = 0, 0
remvelocity = 0, 0
;projremovetime = -1
sprpriority = 2
; HitDef part of projectile info
ProjHits = 13
projmisstime = 6
attr = S, NA
damage    = 25, 10
animtype = Heavy    
hitflag = MAFD           
air.animtype = Back
air.fall = 1
priority = 7, Hit  
guardflag = MA
pausetime = 0,90
sparkno = -1
guard.sparkno = -1
hitsound   = s4, 21 
guardsound = S0, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 80
ground.velocity = -1, -3
air.velocity = -1,-3
air.juggle = 15
;PalFX
fall = 1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
palfx.time = 90
palfx.mul = 251,173,23
palfx.add = 200,0,0
palfx.sinadd = 251,173,23,5

[State 3101, Flame 1]
type = Explod
trigger1 = ProjContactTime(0) != -1 && ProjContactTime(0) < 10
anim = 9489 
pos = 5, -50
postype = p2
bindtime = -1
sprpriority = 3 
shadow = 0
ownpal = 1
ontop = 0

[State 3101, Flame2]
type = Explod
trigger1 = ProjContactTime(0) != -1 && ProjContactTime(0) < 15
anim = 9488 
pos = -13, -70
postype = p2
bindtime = -1
sprpriority = 4 
shadow = 0
ownpal = 1
ontop = 1

[State 3101, Flame3]
type = Explod
trigger1 = ProjContactTime(0) != -1 && ProjContactTime(0) < 15
anim = 9489 
pos = -5, -30
postype = p2
bindtime = -1
sprpriority = 3 
shadow = 0
ownpal = 1
ontop = 0

[State 3101, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 3101, GO BYE BYE]
type = DestroySelf
trigger1 = animtime = 0

[State 3101, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;Super Hell Fire
[StateDef 80000]
type = S
Movetype = A
Physics = S
juggle = 4
poweradd = 50
anim = 4011
ctrl = 0

[State 80000, Super C]
type = PowerAdd
trigger1 = Time = 1
value = -2000

[State 80000, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = -9940, -19940
anim = 100
sound = S20, 16 ;4,3
poweradd = -2888

[State 80000,1]
type = PlaySnd
trigger1 = Time = 20
value = 20,3

[State 80000, Start]
type = Explod
trigger1 = AnimElem = 2 
anim = 4001
pos = 250, -50
postype = p1
sprpriority = -1
ownpal = 1

[State 80000, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 23, 23

[State 80000, BoltFat]
type = Projectile
trigger1 = time = 30 
projanim = 9430
projhitanim = 94888 
offset = 245, -18
velocity = 0, -5
remvelocity = 2.35, 0
sprpriority = 5
; HitDef part of projectile info
attr = S, SP
damage    = 75, 23
animtype = Hard
air.animtype = Back
air.fall = 1
hitflag = MAFD
guardflag = MA
pausetime = 0,1
sparkno = -1
guard.sparkno = -1
hitsound   = s4, 21 
guardsound = S0, 0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 5
ground.velocity = 2, -7
air.velocity = 3,-7
air.juggle = 5
envshake.time = 10
envshake.freq = 150
envshake.ampl = -6
;PalFX
fall.recover = 0
air.fall = 1
fall = 1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
palfx.time = 40
palfx.mul = 251,173,23
palfx.add = 200,0,0
palfx.sinadd = 251,173,23,5

[State 80000, Flame 1]
type = Explod
trigger1 = ProjContactTime(0) != -1 && ProjContactTime(0) < 15
anim = 9489 
pos = -20, -54
postype = p2
bindtime = -1
sprpriority = 3 
shadow = -1
ownpal = 1
ontop = 0

[State 80000, Flame2]
type = Explod
trigger1 = ProjContactTime(0) != -1 && ProjContactTime(0) < 15
anim = 9488 
pos = -5, -57
postype = p2
bindtime = -1
sprpriority = 4 
shadow = -1
ownpal = 1
ontop = 1

[State 80000, Flame3]
type = Explod
trigger1 = ProjContactTime(0) != -1 && ProjContactTime(0) < 15
anim = 9489 
pos = 20, -52
postype = p2
bindtime = -1
sprpriority = -3 
shadow = -1
ownpal = 1
ontop = 0

[State 80000, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 80001

[StateDef 80001]
type = S
Movetype = A
Physics = S
juggle = 4
poweradd = 50
anim = 4011
ctrl = 0

[State 80001,1]
type = PlaySnd
trigger1 = Time = 20
value = 20,3

[State 80001, Start]
type = Explod
trigger1 = AnimElem = 2 
anim = 4001
pos = 170, -50
postype = p1
sprpriority = -1
ownpal = 1

[State 80001, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 23, 23

[State 80001, BoltFat]
type = Projectile
trigger1 = time = 30 
projanim = 9430
offset = 165, -18 
velocity = 0, -5
remvelocity = 2.35, 0
sprpriority = 5
; HitDef part of projectile info
attr = S, SP
damage    = 75, 23
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,1
sparkno = -1
guard.sparkno = -1
hitsound   = s4, 21 
guardsound = S0, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = 2, -6
air.velocity = 3,-6
air.juggle = 5
envshake.time = 10
envshake.freq = 150
envshake.ampl = -6
;PalFX
fall = 1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
palfx.time = 40
palfx.mul = 251,173,23
palfx.add = 200,0,0
palfx.sinadd = 251,173,23,5

[State 80001, Flame 1]
type = Explod
trigger1 = ProjContactTime(0) != -1 && ProjContactTime(0) < 15
anim = 9489 
pos = -20, -54
postype = p2
bindtime = -1
sprpriority = 3 
shadow = -1
ownpal = 1
ontop = 0

[State 80001, Flame2]
type = Explod
trigger1 = ProjContactTime(0) != -1 && ProjContactTime(0) < 15
anim = 9488 
pos = -5, -57
postype = p2
bindtime = -1
sprpriority = 4 
shadow = -1
ownpal = 1
ontop = 1

[State 80001, Flame3]
type = Explod
trigger1 = ProjContactTime(0) != -1 && ProjContactTime(0) < 15
anim = 9489 
pos = 20, -52
postype = p2
bindtime = -1
sprpriority = -3 
shadow = -1
ownpal = 1
ontop = 0

[State 80001, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 80002

[StateDef 80002]
type = S
Movetype = A
Physics = S
juggle = 4
poweradd = 50
anim = 4011
ctrl = 0

[State 80002,1]
type = PlaySnd
trigger1 = Time = 20
value = 20,3

[State 80002, Start]
type = Explod
trigger1 = AnimElem = 2 
anim = 4001
pos = 100, -50
postype = p1
sprpriority = -1
ownpal = 1

[State 80002, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 23, 23

[State 80002, BoltFat]
type = Projectile
trigger1 = time = 30 
projanim = 9430
offset = 95, -18
velocity = 0, -5
remvelocity = 2.35, 0
sprpriority = 5
; HitDef part of projectile info
attr = S, SP
damage    = 75, 23
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,1
sparkno = -1
guard.sparkno = -1
hitsound   = s4, 21 
guardsound = S0, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = 2, -8
air.velocity = 3,-8
air.juggle = 5
envshake.time = 10
envshake.freq = 150
envshake.ampl = -6
;PalFX
fall = 1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
palfx.time = 40
palfx.mul = 251,173,23
palfx.add = 200,0,0
palfx.sinadd = 251,173,23,5

[State 80002, Flame 1]
type = Explod
trigger1 = ProjContactTime(0) != -1 && ProjContactTime(0) < 15
anim = 9489 
pos = -20, -54
postype = p2
bindtime = -1
sprpriority = 3 
shadow = -1
ownpal = 1
ontop = 0

[State 80002, Flame2]
type = Explod
trigger1 = ProjContactTime(0) != -1 && ProjContactTime(0) < 15
anim = 9488 
pos = -5, -57
postype = p2
bindtime = -1
sprpriority = 4 
shadow = -1
ownpal = 1
ontop = 1

[State 80002, Flame3]
type = Explod
trigger1 = ProjContactTime(0) != -1 && ProjContactTime(0) < 15
anim = 9489 
pos = 20, -52
postype = p2
bindtime = -1
sprpriority = -3 
shadow = -1
ownpal = 1
ontop = 0

[State 80002, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

; Kombo
[Statedef 2080]
type    = S
movetype= A
physics = S
juggle  = 3
poweradd= 120
ctrl = 0
anim = 2080
sprpriority = 1

[State 2080, Super C]
type = PowerAdd
trigger1 = Time = 1
value = -2000

[State 2080, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = 9920, -99120
anim = 100
poweradd = -2888

[State 2080, 2]
type = HitDef
trigger1 = AnimElem = 16
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
hitsound   = s3,2
guardsound = s0,0
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
hitsound   = -1
guardsound = s0,0
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

[State 2081, 2]
type = Selfstate
trigger1 = time = 100
trigger1 = life != 0
value = 0
ctrl = 1

;--------------------------------------------
;---------------Hell Fire-------------------
;--------------------------------------------
[StateDef 700]
Type = S
Movetype = A
Physics = S
juggle = 4
poweradd = 50
Anim = 4000
ctrl = 0

[State 700,1]
type = PlaySnd
trigger1 = Time = 25
value = 20,3

[State 700, Start]
type = Explod
trigger1 = AnimElem = 2 
anim = 4001
pos = 100, -50
postype = p1
sprpriority = -3
removeongethit = 1
ownpal = 1

[State 700, BoltFat]
type = Projectile
trigger1 = time = 30 
projanim = 9430
projhitanim = 94888 
postype = p1
pos = 100, -50
offset = 93,0
velocity = 0, -6
remvelocity = 2.35, 0
sprpriority = 5
; HitDef part of projectile info
attr = S, SP
damage    = 65, 23
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,1
sparkno = -1
guard.sparkno = -1
hitsound   = s4, 21 
guardsound = S0, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -3, -9
air.velocity = -2,-9
air.juggle = 5
envshake.time = 10
envshake.freq = 150
envshake.ampl = -6
palfx.time = 40
palfx.mul = 251,173,23
palfx.add = 200,0,0
palfx.sinadd = 251,173,23,5
;PalFX
fall = 1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 700, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 700, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;============================================================
;Spear
[StateDef 1200]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 110
velset = 0,0
anim = 1222
ctrl = 0

[State 1200, PUNCH]
type = Varset
trigger1 = Var(19) != 1
V = 19
value = 1

[State 1200, 3.2]
type = VarRandom
trigger1 = Time = 5
v = 11
range = 1, 2

[State 1200, 3.3]
type = Playsnd
trigger1 = Var(11) = 1
trigger1 = time = 12
value = s20, 6

[State 1200, 3.4]
type = Playsnd
trigger1 = Var(11) = 2
trigger1 = time = 6
value = s20, 2

[State 1200, 3.5]
type = Posset
trigger1 = Pos Y != 0
trigger1 = time = 0
Y = 0

[State 1200, 1]
type = Helper
trigger1 = time = 15 ;animelem = 4
stateno = 1010
name = "spear"
id = 1010
postype = p1
pos = 20, -105
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 1200, 7]
type = ChangeState
triggerall = Time >= 55
trigger1 = p2stateno != 1020
trigger1 = p2stateno != 1021
value = 0
ctrl = 1

[State 1200, 8]
type = Changestate
trigger1 = p2stateno = 1020
trigger1 = time > 10
trigger2 = p2stateno = 1021
value = 1001
;---------------------------------------------------------------------------
;PULL EM IN
[Statedef 1001]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 1004 ;tug it
ctrl = 0

[State 1001, 3.2]
type = VarRandom
trigger1 = time = 1
v = 11
range = 1, 4

[State 1001, 3.5]
type = Playsnd
trigger1 = Var(11) = 1
trigger1 = time = 1
value = 20, 7

[State 1001, 3.6]
type = Playsnd
trigger1 = Var(11) = 2
trigger1 = time = 1
value = 20, 1

[State 1001, 3.7]
type = Playsnd
trigger1 = Var(11) = 3
trigger1 = time = 1
value = 20, 9

[State 1001, 3.8]
type = Playsnd
trigger1 = Var(11) = 4
trigger1 = time = 1
value = 20, 10


[State 1001, 7]
type = ChangeState
trigger1 = p2stateno = 1021
trigger1 = time > 15 
value = 0
ctrl = 1

[State 1001, 8]
type = Changestate
trigger1 = time > 50
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; The flying spear
[Statedef 1010]
type    = S
movetype= A
physics = N
juggle  = 4
velset = 6.5,0
anim = 1200
ctrl = 0

[State 1010, 1]
type = Playsnd
trigger1 = time = 0
value = 2,4

[State 1010, 1.2]
type = Helper
trigger1 = time = 0
stateno = 1011
name = "Rope"
pos = -26, 0
helpertype = normal
sprpriority = -2
keyctrl = 0
ownpal = 0
under = 1

[State 1010, 1.55]
type = Helper
trigger1 = timemod = 4,0
trigger1 = time = [0, 60]
trigger1 = Pos X > -190
trigger1 = Pos X < 190
stateno = 1011
name = "Rope"
pos = 0, 0
helpertype = normal
sprpriority = -2
keyctrl = 0
ownpal = 1
under = 1

[State 1010, 2]
type = HitDef
trigger1 = time > 1
trigger1 = Roundno != 1
attr = S, SP
guardflag = M
damage    = 20,5
animtype  = Medium
postype = p1
priority  = 6
hitsound   = S1,3
guardsound = s0,0
kill = 0
guard.slidetime = 20
guard.ctrltime = 10 
p1stateno = 1030
p2stateno = 1020
forcestand = 1
p2facing = 1
ground.type = High

[State 1010, 2.1]
type = HitDef
trigger1 = time > 1
trigger1 = Roundno = 1
attr = S, SP
damage    = 50,5
animtype  = Medium
postype = p1
priority  = 6
hitsound   = S1,3
guardsound = s0,0
guardflag = M
kill = 0
guard.slidetime = 20
guard.ctrltime = 10 
p1stateno = 1030
p2stateno = 1020
forcestand = 1
p2facing = 1
ground.type = High

[State 1010, 4]
type = Changestate
trigger1 = MoveGuarded = 1
value = 1013

[State 1010, DS]
type = destroyself
trigger1 = time = 50

;---------------------------------------------------------------------------
;The hidden Rope
[Statedef 1011]
type    = S
movetype= I
physics = N
anim = 1015
ctrl = 0

[State 1011, 1]
type = Changestate
trigger1 = p2stateno = 1020
value = 1012

[State 1011, 2]
type = Destroyself
trigger1 = root, stateno != [1000, 1001]
trigger1 = root, stateno != 1200


;------------------------------------------------------------------------
;The Rope Becomes visible
[Statedef 1012]
type    = S
movetype= I
physics = N
anim = 1002
ctrl = 0

[State 1012, 1]
type = Destroyself
trigger1 = p2stateno = 1021
trigger2 = Parentdist X = [-3, 3]
trigger3 = stateno = 0

[Statedef 1013]
type    = S
movetype= I
physics = N
anim = 1013
Velset = 0,0
ctrl = 0

[State 1013, 1]
type = Destroyself
trigger1 = animtime = 0

[Statedef 1020]
type    = S
movetype= H
physics = N
ctrl = 0
velset = 0,0

[State 1020, PosAdd]
Type = PosAdd
trigger1 = 1 ;time = 0
X = ifelse(P2Dist X > 0, 6, -6)

[State 1020, PosSet]
Type = PosSet
trigger1 = time = 0
Y = 0

[State 1020, .5]
type = Changeanim2
trigger1 = time = 0
value = 1854

[State 1020, .75]
type = PlayerPush
trigger1 = time >= 1
value = 0

[State 1020, 1]
type = PosAdd
trigger1 = timemod = 10,0
trigger1 = time = [0, 50]
X = -1

[State 1020, 1.1]
type = Posadd
trigger1 = timemod = 10,4
trigger1 = time = [0, 50]
X = 1

[State 1020, 2]
type = Changestate
trigger1 = P2dist X = [-60, 60]
value = 1021

[State 1020, 3]
type = Selfstate
trigger1 = time = 50
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
;P2  stunned by spear
[Statedef 1021]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 1021, 1]
type = Changeanim
trigger1 = animexist(5300)
trigger1 = anim != 5300
value = 5300

[State 1021, 2]
type = Changeanim2
trigger1 = !animexist(5300)
trigger1 = anim != 9010
value = 9010

[State 1021, 3]
type = Selfstate
trigger1 = time = 70
value = 0
ctrl = 1

;--------------------------------------------------------------------------
;Spear latching onto target
[Statedef 1030]
type    = S
movetype= A
physics = N
juggle  = 1
anim = 1003
Velset = 0, 0
ctrl = 0

[State 1030, 1.1]
type = Helper
trigger1 = time = 0
stateno = 6030
name = "HARPOON BLOOD"
pos = 20,15
helpertype = normal
sprpriority = 6
keyctrl = 0
ownpal = 1
ontop = 1

[State 1030, 1.2]
type = Velset
trigger1 = time = 80
X = -8

[State 1030, 1.3]
type = Velset
trigger1 = ParentDist X = [-60, 60]
X = 0

[State 1030, 1.4]
type = PosAdd
trigger1 = 1
x = P2Dist X - 25

[State 1858, 1.5]
type = Destroyself
trigger1 = p2stateno != 1020

;----------------------------------------------------------------
[Statedef 1003]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 9998
ctrl = 0

[State 1003, GO BYE BYE]
type = DestroySelf
trigger1 = animtime = 0

;-----------------------------------------------
;-----------------------------------------------
;=-----------------Teleport (ground)------------
;-----------------------------------------------
;-----------------------------------------------
[StateDef 10000]
type    = S
movetype= A
physics = N
juggle  = 1
anim = 1040
Velset = 0, 0
ctrl = 0

[State 10000, Super B]
type = AfterImage
trigger1 = time = 1
FrameGap = 5
length = 20
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1
time = 20

[State 10000, 0.5]
type = Playsnd
trigger1 = time = 0
value = 20,4

[State 10000, 55]
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

[State 10000, 0.6]
type = ScreenBound
trigger1 = time = [1, 1000]
value = 0
movecamera = 0,0

[State 10000, 0.7]
type = Veladd
trigger1 = Pos Y < 0
Y = .63

[State 10000, 1]
type = turn
trigger1 = animelem = 3

[State 10000, 2]
type = Velset
trigger1 = animelem = 3
X = 8.3

[State 10000, 4.2]
type = Velset
trigger1 = animelem = 3
trigger1 = Pos Y >= 0
Y = -5

[State 10000, 4.3]
type = Velset
trigger1 = animelem = 3
trigger1 = Pos Y <= -1
Y = -4

[State 10000, 3]
type = Helper
triggerall = time > 9
trigger1 = FrontEdgedist = [0, 9]
trigger2 = BackEdgedist = [0, 9]
stateno = 1045
name = "image"
pos = 0, 0
postype = P1
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 10000, 4]
type = Changestate
triggerall = time > 9
trigger1 = Pos X > 140
value = 1050

[State 10000, 5]
type = Changestate
triggerall = time > 9
trigger1 = Pos X < -140
value = 1050

[State 10000, 7]
type= Changestate
trigger1 = time > 22
trigger1 = Pos Y = 0
value = 0
ctrl = 1

[State 10000, 8]
type = PosSet
trigger1 = Pos Y > 0
Y = 0

;-----------------------------------------------
;=-----------------Teleport (air)------------
;-----------------------------------------------
;-----------------------------------------------
[StateDef 10001]
type    = S
movetype= A
physics = N
juggle  = 1
anim = 1040
Velset = 0, 0
ctrl = 0

[State 10001, Super B]
type = AfterImage
trigger1 = time = 1
FrameGap = 5
length = 20
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1
time = 20

[State 10001, 0.5]
type = Playsnd
trigger1 = time = 0
value = 20,4

[State 10001, 55]
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

[State 10001, 0.6]
type = ScreenBound
trigger1 = time = [1, 1000]
value = 0
movecamera = 0,0

[State 10001, 0.7]
type = Veladd
trigger1 = Pos Y < 0
Y = .10

[State 10001, 1]
type = turn
trigger1 = animelem = 3

[State 10001, 2]
type = Velset
trigger1 = animelem = 3
X = 8.3

[State 10001, 3]
type = Helper
triggerall = time > 9
trigger1 = FrontEdgedist = [0, 9]
trigger2 = BackEdgedist = [0, 9]
stateno = 1045
name = "image"
pos = 0, 0
postype = P1
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 10001, 4]
type = Changestate
trigger1 = time > 9
trigger1 = Pos X > 150
value = 1050

[State 10001, 5]
type = Changestate
triggerall = time > 9
trigger1 = Pos X < -150
value = 1050

[State 10001, 6]
type = Changestate
trigger1 = Pos Y > 0
value = 1055

[State 10000, 7]
type= Changestate
trigger1 = time > 22
trigger1 = Pos Y = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------
; Disappear regular
[Statedef 1045]
type    = S
movetype= I
physics = N
anim = 1045
Velset = 0, 0
ctrl = 0

[State 1045, 1]
type = turn
trigger1 = time = 0

[State 1045, 3]
type = Destroyself
trigger1 = animtime = 0

;------------------------------------------------------------------------------------------
; Dissappear (stand)
[Statedef 1046]
type    = S
movetype= I
physics = N
anim = 1046
Velset = 0, 0
ctrl = 0

[State 1046, 1]
type = Destroyself
trigger1 = animtime = 0
trigger2 = Parent, FrontEdgedist = [0, 9]
trigger3 = Parent, BackEdgedist = [0, 9]
;------------------------------------------------------------------------------------------
; Appear behind
[Statedef 1050] 
type = S
movetype= A
physics = N
juggle = 1
anim = 1050
Velset = 0, 0
ctrl = 0

[State 1050, 1]
type = ScreenBound
trigger1 = time = [1, 1000] 
value = 0
movecamera = 0,0

[State 1050, 2]
type = Velset
trigger1 = animelem = 3
trigger1 = Pos Y >= -56
Y = -5

[State 1050, 3]
type = Velset
trigger1 = animelem = 3
trigger1 = Pos Y <= -57
Y = -2

[State 1050, 4]
type = Posset
triggerall = Time = 1
trigger1 = Pos X > 140
trigger1 = Pos X != 150
X = -150

[State 1050, 5]
type = Posset
triggerall = Time = 1
trigger1 = Pos X < -140
trigger1 = Pos X != -150
X = 150

[State 1050, 6]
type = Turn
triggerall = time = 2
trigger1 = Pos X = 150
trigger2 = Facing = 1

[State 1050, 7]
type = Turn
triggerall = time = 2
trigger1 = Pos X = -150
trigger2 = Facing = -1

[State 1050, 8]
type = Velset
trigger1 = time = 4
X = 8.4

[State 1050, 9]
type = Veladd
trigger1 = Pos Y < 0
trigger2 = frontedgedist < 10
trigger2 = time > 13
Y = .63

[State 1050, 9.2]
type = HitDef
trigger1 = time > 0
trigger1 = movecontact = 0
trigger1 = Var(9) = 1
attr = A, SA
damage = 50
animtype = Heavy
getpower = 0
givepower = 50
guardflag = HA
priority = 7
pausetime = 0, 10
sparkno = -1
hitsound = s28,29
guardsound = s0,0
ground.type = High
ground.slidetime = 45
ground.hittime = 45
ground.velocity = -3 
air.velocity = -3.7,-9.3
guard.slidetime = 10 ;Values for guarded attack (def: ground.slidetime)
guard.ctrltime = 5 ;Time to regain control after guard (def: guard.slidetime)
kill = 0
p2facing = -1

[State 1050, 9.3]
type = HitDef
trigger1 = time > 0
trigger1 = movecontact = 0
trigger1 = Var(9) = 0
attr = A, SA
damage = 50
animtype = Heavy
getpower = 0
givepower = 50
guardflag = HA
priority = 7
pausetime = 0, 10
sparkno = -1
hitsound = s28,29
guardsound = s0,0
ground.type = High
ground.slidetime = 45
ground.hittime = 45
ground.velocity = -3 
air.velocity = -2.7,-9.3
guard.slidetime = 10 ;Values for guarded attack (def: ground.slidetime)
guard.ctrltime = 5 ;Time to regain control after guard (def: guard.slidetime)
kill = 1
p2facing = 1

[State 1050, 9.4]
type = PosSet
trigger1 = MoveGuarded = 1
Y = -5

[State 1050, 9.5]
type = Changestate
trigger1 = MoveGuarded = 1
value = 1055

[State 1050, 9.6]
type = Posset
trigger1 = movehit = 1
Y = 0

[State 1050, 9.7]
type = VarSet
trigger1 = movehit = 1
v = 24
value = 1

[State 1050, 9.8]
type = Helper
trigger1 = movehit = 1
trigger1 = Pos Y = 0
trigger1 = Vel Y = 1
stateno = 6020
name = "DaPunch"
pos = 53, -70
postype = P1
helpertype = normal
sprpriority = 0
keyctrl = 0
ownpal = 0
under = 1

[State 1050, 9.9]
type = Velset
trigger1 = Pos Y > 0
Y = 0

[State 1050, 8.6]
type = Posset
trigger1 = Pos Y > 0
trigger1 = time = 20
Y = 0

[State 1050, 8.7] 
type = Posset
trigger1 = time > 10
trigger1 = Pos Y = [-10,10] 
Y = 0

[State 1050, 8.8]
type= Changestate
trigger1 = time > 10
trigger1 = Pos Y = 0
trigger2 = movehit = 1
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------
; Blocked
[Statedef 1055]
type    = S
movetype= A
physics = N
anim = 1055
Velset = -.5, -2
ctrl = 0

[State 1055, 1]
type = Playsnd
trigger1 = time = 0
value = 1,0

[State 1055,2]
type = Veladd
trigger1 = time > 10
Y = .1

[State 1055,3]
type = Velset
trigger1 = POS Y > -20
Y = 0

[State 1055,4]
type = Posset
trigger1 = Pos Y != 0
trigger1 = Vel Y = 0
Y = 0

[State 1055,5]
type = Changestate
trigger1 = Pos Y = 0
trigger1 = Vel Y = 0
value = 0
ctrl = 1

;---------------------------------------
; Jump Away
[Statedef 2006]
type = S
movetype = I
physics = A
velset = -4.5,-8,0
anim = 43
ctrl = 0

[State 2006, 1]
type = Veladd
trigger1 = Pos Y < 0
Y = 10

;---------------------------------------------------------------------------
[Statedef 666]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
poweradd = 20   

[State 666, ChangeAnim]
type = ChangeAnim
trigger1 = time = 1
value = 20 

[State 666, 1]
type = velset
trigger1 = time >= 0
trigger1 = anim = 20 
x = 2.5

[State 666,2]
type = PlaySnd
trigger1 = Time = 60
value = 4000,11

[State 666,3]
type = ChangeState
trigger1 = p2bodydist X < 10
value = 430