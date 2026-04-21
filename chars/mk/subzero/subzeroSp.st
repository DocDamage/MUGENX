;------------------------------
;------------------------------
;Ice Dragon
;------------------------------
;------------------------------


[StateDef 32101]
type    = S
movetype= A
physics = S
juggle  = 10
ctrl = 0
velset = 0,0,0
sprpriority = 6
anim = 4000

[State 32101,1]
type = PlaySnd
trigger1 = Time = 15
value = 1313,5

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

[State 32101, Supereffect] 
type = Explod
trigger1 = time = 15
anim = 193
pos = 100, -10
sprpriority = 9
postype = p1
supermove = 1
ownpal = 1

[State 32101, Super1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1313,0

[State 32101, Super2]
type = PlaySnd
trigger1 = time = 15
value = 1313,3

[State 32101, Super3]
type = PlaySnd
trigger1 = time = 45
value = 20,37

[state 9830,Shake]
type = envshake
trigger1 = time = 15
time = 130
ampl = 5
freq = 100

[state 9830, Hold Camera]
type = ScreenBound
trigger1 = time = 45
value = 1
movecamera = 0,0

[State 32101, Dragon]
type = Projectile
trigger1 = time = 45
projanim = 32101
postype 
offset = 100, 16
velocity = 0, 0
;projremove = 0
; HitDef part of projectile info
ProjHits = 40
projmisstime = 7
attr = A, SP ;S, SP
damage    = 20, 10
animtype = Hard
air.animtype = Back
guardflag = MA
hitflag = MAF
pausetime = 0,2
sparkno = -1
numhits = 1
guard.sparkno = -1
hitsound   = 1, 3
guardsound = s1,1
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = 0, -2
envshake.time = 15
envshake.freq = 170
envshake.ampl = -3
air.velocity = 0, -2
air.juggle = 10
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0
air.recover = 0



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


;------------------------------
;------------------------------
;Shadowed Air Kick 
;------------------------------
;------------------------------

[Statedef 7447]
type    = A     
movetype= A     
physics = N     
juggle  = 1     
velset = 0,0
ctrl = 0
anim = 620
poweradd = 40

[State 7447, 1]
type = posfreeze
trigger1 = time <= 8

[State 7447, tracers]
type = AfterImage
trigger1 = Time = 0
PalBright   =  255, 255, 255
trans = add
time = 30     

[State 7447, 2]
type = Velset
trigger1 = AnimElem = 2
x = 7
y = 6

[State 7447, 3]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4,10

[State 7447, 4]
type = HitDef
trigger1 = time = 9
trigger2 = time = 11
trigger3 = time = 13
trigger4 = time = 15
trigger5 = time = 17
trigger6 = time = 19
trigger7 = time = 21
trigger8 = time = 23
trigger9 = time = 25
trigger10 = time = 27
trigger11 = time = 29
trigger12 = time = 31
trigger13 = time = 33
trigger14 = time = 35
trigger15 = time = 37
trigger16 = time = 39
trigger17 = time = 41
trigger18 = time = 43
trigger19 = time = 45
trigger20 = time = 47
trigger21 = time = 49
trigger22 = time = 51
attr = A, SA  
damage    = 25,10
animtype = Medium
guardflag = HA
hitflag = MAF
priority = 3, Hit
pausetime = 9,12
sparkxy = -15,-15
hitsound = S28,29
guardsound = S1,1
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.Velocity = -4
air.Velocity = -4,-3
down.Velocity = 0,0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 7447, 6]
type = velset
trigger1 = Pos Y >= 0
x = 0

[State 7447, 7]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 0
ctrl = 1

;Super Icicle Throw
[StateDef 80000]
type    = S
movetype= A
physics = S
juggle  = 10
ctrl = 0
velset = 0,0,0
sprpriority = 6
anim = 30000

[State 80000, Super C]
type = PowerAdd
trigger1 = Time = 1
value = -2000

[State 80000, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = 50, -95
anim = 100
sound = s1313, 0
poweradd = -2888
time = 55

[State 80000, SuperCicle] 
type = Explod
trigger1 = AnimElem = 1
anim = 8238
pos = 48, -95
sprpriority = 1
postype = p1
supermove = 1
ownpal = 1
ontop = 1
pausemovetime = 9999

[State 80000, sound]
type = Playsnd
trigger1 = time = 15
value = 1313,6

[State 80000, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
trigger4 = AnimElem = 6
trigger5 = AnimElem = 7
trigger6 = AnimElem = 8
value = 1313, 5

[State 80000, BoltFat1]
type = Projectile
trigger1 = time = 17
trigger2 = time = 28
trigger3 = time = 40
trigger4 = time = 50
trigger5 = time = 60
trigger6 = time = 70
trigger7 = time = 80
trigger8 = time = 90
trigger9 = time = 100
trigger10 = time = 110
trigger11 = time = 120
time = 20
projanim = 30001
projid = 30001
projhits = 3
projmisstime = 3
postype 
offset = 0, 0
velocity = 6, -.1
remvelocity = 1.35, 0
 HitDef part of projectile info
attr = S, SP
damage    = 8, 3
animtype = Hard
air.animtype = Back
guardflag = MA
pausetime = 0,3
sparkno = -1
guard.sparkno = -1
hitsound   = s1, 3
guardsound = s1, 1
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 7
;PalFX
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall.recover = 0


[State 80000, Snow2]
type = Projectile
trigger1 = time = 20
trigger2 = time = 30
trigger3 = time = 40
trigger4 = time = 50
trigger5 = time = 60
trigger6 = time = 70
trigger7 = time = 80
trigger8 = time = 90
trigger9 = time = 100
trigger10 = time = 110
trigger11 = time = 120
time = 20
projanim = 5168 ;snow blow
sprpriority = -9
postype 
offset = 0, 0
velocity = 7, -.1
attr = S, SP
damage    = 0, 0
animtype = Hard
air.animtype = Back
guardflag = MA
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
guardsound = S1, 0
ground.type = High
ground.slidetime = 50
ground.hittime  = 50
ground.velocity = -8
air.velocity = -2.5,-5
p1stateno = 2197
air.juggle = 7
;PalFX
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0

[State 80000, Blood]
type = Explod
trigger1 = ProjContactTime(0) != -1 && ProjContactTime(0) < 15
anim = 9991 
pos = -155, 20 
postype = p2
bindtime = -1
sprpriority = 3 
shadow = -1
ownpal = 1
ontop = 0

[State 80000, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 80000, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0


;Ice In Air
[Statedef 1100]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd = 120
velset = 0,0
anim = 5148
ctrl = 0

[State 1100, sound]
type = Playsnd
trigger1 = time = 5
value = S1313,1

[State 1100, 1]
type = Projectile
trigger1 = AnimElem = 3
trigger1 = p2stateno != 1005 
projanim = 5149
projid = 5149
offset = 55, -55
velocity = 5.05, 2.2
attr = S, SP
damage    = 0, 0
animtype = Hard
air.animtype = Back
guardflag = HA
hitflag = HAF
pausetime = 0,20
sparkno = -1
guard.sparkno = -1
guardsound = S1, 1
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 3
p2stateno = 1005
fall = 0
air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[state 1100,proj explod]
type = explod
trigger1 = AnimElem = 3
trigger1 = p2stateno = 1005 
anim = 5149
sprpriority = 8 
removetime = 100
pos = 55,-55
velocity = 5.05, 2.2
supermovetime = 100

[State 1100, Ice]
type = Explod
trigger1 = ProjContactTime(0) != -1 && ProjContactTime(0) < 15
anim = 9990 
pos = -165, -155
postype = p2
bindtime = -1
sprpriority = 3 
shadow = -1
ownpal = 1
ontop = 0

[State 1100, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 1101

;-------------------------------------
; Drop
[Statedef 1101]
type    = A
movetype= I
physics = A
juggle  = 4
poweradd= 120
velset = 0,0
anim = 43 
ctrl = 0

[State 1101, sound0]
type = Playsnd
trigger1 = time = 10
value = 400,3

[State 1101]
type = Veladd
trigger1 = time > 0
y = .3

;------Diagonal Ice-----

[Statedef 3010]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0
anim = 9995 
sprpriority = 4

[State 3010, sound]
type = Playsnd
trigger1 = time = 5
value = 1313,1

[State 3010, Start]
type = Explod
trigger1 = AnimElem = 2 
anim = 9989
pos = 0, 0
postype = P1
BindTime = -1
sprpriority = 3
shadow = -1
ownpal = 1
removeongethit = 1

[State 3010, BoltFat]
type = Projectile
trigger1 = time = 17 
trigger1 = p2movetype != H
projanim = 9993
projid = 5149
postype 
offset = -60, -45
velocity = 6, -3
; HitDef part of projectile info
attr = S, SP
damage    = 0
animtype = Hard
air.animtype = Back
air.fall = 0
guardflag = HA
hitflag = HAF
pausetime = 0,20
sparkno = -1
guard.sparkno = -1
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 3
p2stateno = 1005
fall = 0
air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[state 3010,proj explod]
type = explod
trigger1 = time = 17
trigger1 = p2movetype = H
anim = 9993
sprpriority = 8 
removetime = 100
pos = -60,-45
velocity = 6,-3
supermovetime = 100

[State 3010, Ice]
type = Explod
trigger1 = ProjContactTime(0) != -1 && ProjContactTime(0) < 15
anim = 9990 
pos = -165, -155
postype = p2
bindtime = -1
sprpriority = 3 
shadow = -1
ownpal = 1
ontop = 0

[State 3010, Didn't hit]
type = Destroyself
trigger1 = time = 200

[State 3010, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

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
hitflag = HA
guardflag = HA
postype = p1
pausetime = 0,0
guard.pausetime = 0,0
sparkno = -1
sparkxy = -10,-55
hitsound   = s3,2
guardsound = 6,0
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
hitflag = HA
guardflag = HA
postype = p1
pausetime = 0,0
guard.pausetime = 0,0
sparkno = -1
sparkxy = -10,-55
hitsound   = -1
guardsound = 6,0
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

;------------------------------
;------------------------------
;---------Ice Puddle-----------
;------------------------------
;------------------------------

[StateDef 700]
Type = S
Movetype = A
Physics = S
juggle = 4
poweradd = 50
anim = 4000
ctrl = 0

[State 700,1]
type = PlaySnd
trigger1 = Time = 15
value = 1313,5

[State 700, 2]
type = helper
trigger1 = time = 17
stateno = 2020
name = "Floor Ice"
id = 2010
pos = 5, -51
postype = p1
ownpal = 1
sprpriority = -5

[State 700,3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------
;Floor Ice
[Statedef 2020]
type    = S
movetype= A
physics = N
poweradd= 120
velset = 0,0
anim = 4001
ctrl = 0
sprpriority = -2

[State 2020,1]
type = Hitdef
trigger1 = AnimElem = 6
trigger1 = p2stateno != 9010
trigger1 = p2stateno != 9999
attr = S, SA
damage    = 0,0
priority  = 6
guardflag = L
pausetime = 0,0
;hitsound = S4000,26
sparkno = -1
sparkxy = -10,-60
guardsound = 6,0
guard.ctrltime = 30
p2stateno = 1521
p1stateno = 2021
fall = 0

[State 2020, 2]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 2020, 4]
Type = Changestate
trigger1 = MoveGuarded = 1
trigger2 = p2stateno = 9010
trigger2 = animelem >= 6
trigger3 = p2stateno = 9999
trigger3 = animelem >= 6
value = 2022

[State 2020, 5]
type = Destroyself
trigger1 = AnimTime = 0

;-----------------------------------------------
;Someone's Slipping!
[Statedef 2021]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 2021
ctrl = 0
sprpriority = -1

[State 2021, 1]
type = Changeanim
trigger1 = time = 0
value = 2021

[State 2021,2]
type = Hitdef
trigger1 = 1
trigger1 = p2stateno = 1522
attr = S, SA
damage    = 0,0
priority  = 6
pausetime = 0,0
sparkno = -1
sparkxy = -10,-60
p2stateno = 1523
fall = 0

[State 2021, 3]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 2021, 4]
Type = Changestate
trigger1 = time >= 96
value = 2022

;-----------------------------------------------
;Bye Floor Ice
[Statedef 2022]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 4002
ctrl = 0
sprpriority = -1


[State 2022, 1]
type = Changeanim
trigger1 = time = 0
value = 4002

[State 2022, 2]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 2022, 3]
type = Destroyself
trigger1 = AnimTime = 0

;-----------------------------------------------
;P2 Loses Their Footing
[Statedef 1521]
type = S
movetype= H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 1

[State 1521, 1-1]
type = Changeanim2
trigger1 = time = 0
trigger1 = !SelfAnimExist(5300)
value = 9010

[State 1521, 1-2]
type = Changeanim
trigger1 = time = 0
trigger1 = SelfAnimExist(5300)
value = 5300

[State 1521, 1-3]
type = Changeanim
trigger1 = time = 0
trigger1 = SelfAnimExist(29900)
value = 29900

[State 1521, 2]
type = Explod
trigger1 = time = 0
anim = 0
name = "FloorIceTimer"
id = 666
pos = 0,500
postype = p2
HelperType = normal
facing = 1
removetime = 96
sprpriority = -1
ownpal = 1
ontop = 1

[State 1521, 3]
type = PosSet
trigger1 = time = 0
Y = 0

[State 1521, 4]
type = ChangeState
trigger1 = time = 0
trigger1 = NumExplod(666) >= 1
value = 1522

;-----------------------------------------------
;P2 Slipping Forward
[Statedef 1522]
type    = S
movetype= H
physics = N
velset = 0.5,0
ctrl = 0
sprpriority = 1

[State 1522, 1]
type = SelfState
trigger1 = NumExplod(666) = 0
value = 0
ctrl = 1

;-----------------------------------------------
;P2 Slipping BackWard
[Statedef 1523]
type    = S
movetype= H
physics = N
velset = -0.5,0
ctrl = 0
sprpriority = 1

[State 1523, 1]
type = SelfState
trigger1 = NumExplod(666) = 0
value = 0
ctrl = 1

;------------------------------
;------------------------------
;Ice Throw
;------------------------------
;------------------------------

[StateDef 1200]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1200

[State 1200, sound]
type = Playsnd
trigger1 = time = 5
value = S1313,1

[State 1200, Start]
type = Explod
trigger1 = AnimElem = 2 
anim = 1210
pos = 0, 0
postype = P1
BindTime = -1
sprpriority = 1
shadow = -1
ownpal = 1
removeongethit = 1

[State 1200, BoltFat]
type = Projectile
trigger1 = time = 20
trigger1 = p2movetype != H
projanim = 1220
projid = 5149
projhitanim = 1230
postype 
offset = 0, 5
velocity = 5, 0
attr = S, SP
damage    = 0, 0
animtype = Hard
air.animtype = Back
guardflag = HA
hitflag = HAF
pausetime = 0,20
sparkno = -1
guard.sparkno = -1
guardsound = S1, 1
ground.type = High
ground.slidetime = 14
ground.hittime  = 14
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 3
p2stateno = 1005
fall = 0
air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[state 1200,proj explod]
type = explod
trigger1 = time = 20
trigger1 = p2movetype = H
anim = 1220
sprpriority = 8 
removetime = 100
pos = 0,5
velocity = 5,0
supermovetime = 100

[State 1200, Didn't hit]
type = Destroyself
trigger1 = time = 200

[State 1200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------------------
; P1's state
[Statedef 1002]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0

[State 1002, Ice hit]
type = Explod
trigger1 = time = 0
anim = 1230
id = 1230
pos = 0, 0
postype = p2
bindtime = 1
facing = -1
sprpriority = 2
ownpal = 0

[State 1002, blocked]
Type = Changestate
trigger1 = MoveGuarded = 1
value = 1003

[State 1002 , Freeze]
type = Hitdef
trigger1 = time = 0
attr = S, SA
pausetime = 0,200
numhits = 0
sparkno = -1
sparkxy = -10,-60
hitsound   = -1
p2stateno = 1005
Kill = 0

[State 1002, Dead anim]
type = Changeanim
trigger1 = time = 1
value = 9998

[State 1002, GO BYE BYE]
type = DestroySelf
trigger1 = animtime = 0
trigger1 = anim = 9998
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
; Frozen
[Statedef 1005]
type = S
movetype= U
physics = N
velset = 0,0

[State 1005, attempt]
type = Varset
trigger1 = time = 0
V = 23
Value = Anim

[State 1005, freeze in anim]
type = Changeanim
trigger1 = time != 0
value = Var(23)

[State 1005, Frosty color]
type = palFX
trigger1 = time != 0
add = 49,153,221 
mul = 70, 160, 170
time = 2

[State 1005, VELSET]
type = velset
trigger1 = time = 0
X = 0
Y = 0

[State 1005, CS]
type = SelfState
trigger1 = time = 200
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 1005, CZ]
type = ChangeState
trigger1 = time = 200
trigger1 = Pos Y < 0
value = 1006

[Statedef 10055]
type = S
movetype= U
physics = N
velset = 0,0

[State 10055, attempt]
type = Varset
trigger1 = time = 0
V = 23
Value = Anim

[State 10055, freeze in anim]
type = Changeanim
trigger1 = time != 0
value = Var(23)

[State 10055, Frosty color]
type = palFX
trigger1 = time != 0
add = 49,153,221 
mul = 70, 160, 170
time = 2

[State 10055, VELSET]
type = velset
trigger1 = time = 0
X = 0
Y = 0

[State 10055, CS]
type = SelfState
trigger1 = time = 2
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 10055, CZ]
type = ChangeState
trigger1 = time = 2
trigger1 = Pos Y < 0
value = 1006
;-------------------------------------------------------------
; Drops if 
[Statedef 1006]
type    = S
movetype= H
physics = N
velset = 0,4
ctrl = 0
anim = 5070

[State 1006, VELADD]
type = Veladd
trigger1 = Pos Y < 0
Y = .75

[State 1006, Hit ground A]
type = Velset
trigger1 = Pos Y > 0
Y = 0

[State 1006, Hit ground A]
type = Posset
trigger1 = Pos Y > 0
trigger1 = Vel Y = 0
Y = 0

[State 1006, Hit Ground C]
type = SelfState
trigger1 = vel Y = 0
trigger1 = Pos Y = 0
value = 5100
ctrl = 1

;-----------------------------------------------
;-----------------------------------------------
;=-----------------Ice Clone--------------------
;-----------------------------------------------
;-----------------------------------------------

[StateDef 10000]
movetype = I
poweradd = 50
velset = 0, 0, 0
ctrl = 0

[State 10000, IceClone]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 1313, 2

[State 10000, 1]
type = helper
trigger1 = time = 0
trigger1 = Pos Y >= -4
trigger1 = anim != [10,12]
trigger1 = palno < 7
stateno = 2010
name = "StandClone1"
id = 2010
pos = 0,0
postype = p1
ownpal = 1
 
[State 10000, 2]
type = helper
trigger1 = time = 0
trigger1 = Pos Y >= -4
trigger1 = anim != [10,12]
trigger1 = palno >= 7
stateno = 2010
name = "StandClone2"
id = 2013
pos = 0,0
postype = p1
ownpal = 1

[State 10000, 3]
type = helper
trigger1 = time = 0
trigger1 = Pos Y < -4
stateno = 2010
name = "AirClone"
id = 2012
pos = 0,0
postype = p1
ownpal = 1

[State 10000, 4]
type = Posset
trigger1 = Pos Y = 0
trigger1 = Time = 1
Y = -5

[State 10000, 5]
type = Changestate
trigger1 = time = 1
value = 22240 

[Statedef 22240]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State 22240, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1313,2

[State 22240, 1b]
type = PlaySnd
trigger1 = Time = 0
value = 26,26

[State 22240, 3]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 22240, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = ifelse(sysvar(1)=0, const(velocity.jump.y), ifelse(sysvar(1)=1, const(velocity.jump.y) * 1.00, const(velocity.jump.y) * 1.00))

[State 22240, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1


;--------------------------------------------
;Ice Clone
[Statedef 2010]
type = A
movetype = A
physics = N
velset = 0,0,0
ctrl = 0
anim = 3885

[State 2010, 1]
type = changeanim
trigger1 = time = 0
trigger1 = IsHelper(2013)
value = 3885

[State 2010, 2]
type = changeanim
trigger1 = time = 0
trigger1 = IsHelper(2011)
value = 3885 ;2011 ;ducking

[State 2010, 3]
type = changeanim
trigger1 = time = 0
trigger1 = IsHelper(2012)
value = 3885 ;2012 ;air

[State 2010, 4]
type = explod
triggerall = time = 0
trigger1 = IsHelper(2010)
trigger2 = IsHelper(2013)
anim = 3887
name = "Clone Form"
id = 3887
pos = 0,-55
postype = p1
ownpal = 1
sprpriority = 7

[State 2010, 5]
type = explod
triggerall = time = 0
trigger1 = IsHelper(2011)
trigger2 = IsHelper(2012)
anim = 3887
name = "Clone Form"
id = 3887
pos = 0,-30
postype = p1
ownpal = 1
sprpriority = 7

[State 2010, 6]
type = Hitdef
trigger1 = p2stateno != 1501
trigger1 = p2stateno != 9010
trigger1 = time >= 0
attr = S, SP
damage    = 0,0
sparkno = -1
guard.sparkno = -1
priority  = 4
guardflag = M
pausetime = 0,20
hitsound = s1313,4
p2stateno = 1005
p1stateno = 2013
fall = 0
air.fall = 1
fall.recover = 0

[State 2010, 7]
type = explod
triggerall = time = 150
trigger1 = IsHelper(2010)
trigger2 = IsHelper(2013)
anim = 3886
name = "Clone Die"
id = 3886
pos = 0,-55
postype = p1
ownpal = 1
sprpriority = 7

[State 2010, 8]
type = explod
triggerall = time = 150
trigger1 = IsHelper(2011)
trigger2 = IsHelper(2012)
anim = 3886
name = "Clone Die"
id = 3886
pos = 0,-30
postype = p1
ownpal = 1
sprpriority = 7

[State 2010, 9]
type = PlaySnd
trigger1 = time = 0
trigger2 = time = 150
value = 4000,15

[State 2010, 9.1]
type = ChangeState
triggerall = time = 0
trigger1 = p2stateno = 9010
trigger2 = p2stateno = 9999
value = 2013

[State 2010, 9.2]
type = DestroySelf
trigger1 = animtime = 0

;---------------------------------------------------------------------------------------
[Statedef 2013]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0

[State 2013, 1]
type = explod
triggerall = time = 0
trigger1 = IsHelper(2010)
trigger2 = IsHelper(2013)
anim = 3886
name = "Clone Die"
id = 3886
pos = 0,-55
postype = p1
ownpal = 1
sprpriority = 7

[State 2013, 1.1]
type = explod
triggerall = time = 0
trigger1 = IsHelper(2011)
trigger2 = IsHelper(2012)
anim = 3886
name = "Clone Die"
id = 3886
pos = 0,-30
postype = p1
ownpal = 1
sprpriority = 7

[State 2013, 2]
type = PlaySnd
trigger1 = time = 0
value = 4000,15

[State 2013, 3]
type = DestroySelf
trigger1 = time = 6

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


;-----------------------------------------------
;Ice Shower
[StateDef 60000]
type    = S
movetype= A
physics = S
juggle  = 4
ctrl = 0
velset = 0,0,0
anim = 3010

[State 60000, sound]
type = Playsnd
trigger1 = time = 5
value = S1313,3

[State 60000, Start]
type = Explod
trigger1 = AnimElem = 2 
anim = 3015
pos = 0, -70
postype = P1
BindTime = -1
sprpriority = 4
shadow = -1
ownpal = 1
removeongethit = 1

[State 60000, BoltFat]
type = Projectile
trigger1 = time = 20 
trigger1 = p2movetype != H
projanim = 3011
projid = 5149
projhitanim = 3012
postype = p2
offset = 0, -320
velocity = 0, 5
; HitDef part of projectile info
attr = S, SP
damage    = 0, 0
animtype = Hard
air.animtype = Back
guardflag = HA
hitflag = HAF
pausetime = 0,20
sparkno = -1
guard.sparkno = -1
guardsound = S1, 1
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 3
p2stateno = 1005
fall = 0
air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[state 60000,proj explod]
type = explod
trigger1 = time = 17
trigger1 = p2movetype = H
anim = 3011
sprpriority = 8 
removetime = 300
postype = p2
pos = 0,-320
velocity = 0,5
supermovetime = 100

[State 60000, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------
; Super Ice Shower - pt.1
[StateDef 20000]
type    = S
movetype = A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 3016

[State 20000, Super C]
type = PowerAdd
trigger1 = Time = 1
value = -2000

[State 20000, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = -9940, -19940
anim = 100
sound = S4, 3
poweradd = -2888

[State 20000, Super B]
type = AfterImage
trigger1 = AnimElem = 1
time = 2

[State 20000, sound]
type = Playsnd
trigger1 = time = 5
value = S1313,3

[State 20000, Start]
type = Explod
trigger1 = AnimElem = 2 
anim = 3015
pos = 0, -70
postype = P1
BindTime = -1
sprpriority = 4
shadow = -1
ownpal = 1
removeongethit = 1

[State 20000, BoltFat1]
type = Projectile
trigger1 = AnimElem = 3 
projanim = 3017
projid = 5149
projhitanim = 3012
postype = p2
offset = 0, -300
velocity = 0, 4
; HitDef part of projectile info
attr = S, SP
damage    = 0, 0
animtype = Hard
air.animtype = Back
guardflag = HA
hitflag = HAF
pausetime = 0,20
sparkno = -1
guard.sparkno = -1
guardsound = S1, 1
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 3
p2stateno = 1005
fall = 0
air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 20000, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 200000

; Super Ice Shower - pt.2
[StateDef 200000]
type    = S
movetype = A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 3016

[State 200000, sound]
type = Playsnd
trigger1 = time = 5
value = S1313,3

[State 200000, Start]
type = Explod
trigger1 = AnimElem = 2 
anim = 3015
pos = 0, -70
postype = P1
BindTime = -1
sprpriority = 4
shadow = -1
ownpal = 1
removeongethit = 1

[State 200000, BoltFat1]
type = Projectile
trigger1 = AnimElem = 3 
projanim = 3017
projhitanim = 3012
projid = 5149
postype = p2
offset = 0, -600
velocity = 0, 4
; HitDef part of projectile info
attr = S, SP
damage    = 0, 0
animtype = Hard
air.animtype = Back
guardflag = HA
hitflag = HAF
pausetime = 0,20
sparkno = -1
guard.sparkno = -1
guardsound = S1, 1
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 3
p2stateno = 1005
fall = 0
air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 20000, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 2000000

; Super Ice Shower - pt.3
[StateDef 2000000]
type    = S
movetype = A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 3016

[State 200000, sound]
type = Playsnd
trigger1 = time = 5
value = S1313,3

[State 200000, Start]
type = Explod
trigger1 = AnimElem = 2 
anim = 3015
pos = 0, -70
postype = P1
BindTime = -1
sprpriority = 4
shadow = -1
ownpal = 1
removeongethit = 1

[State 200000, BoltFat1]
type = Projectile
trigger1 = AnimElem = 3 
projanim = 3017
projhitanim = 3012
projid = 5149
postype = p2
offset = 0, -900
velocity = 0, 4
; HitDef part of projectile info
attr = S, SP
damage    = 0, 0
animtype = Hard
air.animtype = Back
guardflag = HA
hitflag = HAF
pausetime = 0,20
sparkno = -1
guard.sparkno = -1
guardsound = S1, 1
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 3
p2stateno = 1005
fall = 0
air.fall = 1
fall.recover = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 20000, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;===============================================
; Ice Orb
[StateDef 20001]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd = 500
ctrl = 0
velset = 0,0,0
anim = 7896

[State 20001, Super C]
type = PowerAdd
trigger1 = Time = 1
value = -2000

[State 20001, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = -9940, -19940
anim = 100
sound = S1313, 0
poweradd = -2888

[State 20001, SuperOrb] 
type = Explod
trigger1 = AnimElem = 1
anim = 8228
removeongethit = 1
pos = -5, -50
sprpriority = 1
postype = p1
supermove = 1
ownpal = 1
pausemovetime = 9999

[State 20001, sound]
type = Playsnd
trigger1 = time = 5
value = 1313,1

[State 20001, BoltFat]
type = Projectile
trigger1 = time = 15
trigger1 = p2movetype != H
projanim = 7897
projremove = 0
projremovetime = 152
projid = 5149
postype 
offset = 0, 0
velocity = 0, 0
; HitDef part of projectile info
attr = S, SP
givepower = -3000,0
damage    = 300, 0
animtype = Hard
air.animtype = Back
air.fall = 0
guardflag = HA
hitflag = HAF
pausetime = 0,99
sparkno = -1
guard.sparkno = -1
hitsound = s1313, 4
guardsound = S1, 1
ground.type = High
ground.slidetime = 14
ground.hittime  = 15
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 3
p2stateno = 11005
fall = 1
air.fall = 1
fall.recover = 0
kill = 0

[state 20001,proj explod]
type = explod
trigger1 = time = 15
trigger1 = p2movetype = H
anim = 7897
sprpriority = 8 
removetime = 152
pos = 0,0
velocity = 0,0
supermovetime = 100

[State 20001, GO BYE BYE]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = movecontact
trigger3 = AnimElem = 20

[State 20001 , 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 11005]
type = S
movetype= H
physics = N
velset = 0,0

[State 11005, attempt]
type = Varset
trigger1 = time = 0
V = 23
Value = Anim

[State 11005, freeze in anim]
type = Changeanim
trigger1 = time != 0
value = Var(23)

[State 11005, Frosty color]
type = palFX
trigger1 = time != 0
add = 49,153,221 
mul = 70, 160, 170
time = 2

[State 11005, VELSET]
type = velset
trigger1 = time = 0
X = 0
Y = 0

[State 11005, CS]
type = SelfState
trigger1 = time = 300
trigger1 = Pos Y > -1
value = 0
ctrl = 1

[State 11005, CZ]
type = ChangeState
trigger1 = time = 300
trigger1 = Pos Y < 0
value = 1006
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