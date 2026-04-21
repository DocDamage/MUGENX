[Statedef 9000]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 9000
ctrl = 0

[State 9000, 1]
type = Explod
trigger1 = time = 0
anim = 7040
id = 7050
pos = 156*const(size.xscale),90*const(size.xscale)
postype = left
bindtime = -1
facing = 1
sprpriority = 2
ontop = 1
ownpal = 0

[State 9000, 5]
type = HitDef
trigger1 = p2life < 5
trigger1 = p2movetype != H
trigger1 = p2statetype != A
attr = S, HA
numhits = 0
priority  = 7
sparkno = -1
p2stateno = 9010
kill = 0

[State 9000, 5.5]
type = ParentVarset
trigger1 = time = 0
V = 13
value = 400

[State 9000, 6]
type = Destroyself
trigger1 = p2stateno = 9010
;---------------------------------------------------------------------------
;Fatality time
[Statedef 9010]
type    = S
movetype= H
physics = N
juggle  = 1
velset = 0,0
ctrl = 0

[State 9010, 0.1]
type = Changeanim
trigger1 = animexist(5300)
trigger1 = anim != 5300
value = 5300

[State 9010, 1]
type = Changeanim2
trigger1 = !animexist(5300)
trigger1 = anim != 9010
value = 9010
;-------------------------------------------------------------------------------
;Fatality time ends
[Statedef 9011]
type    = S
movetype= H
physics = S
juggle  = 1

[State 9010, NoSlow]
type = AssertSpecial
trigger1 = time = [0, 5000]
flag = nokoslow

[State 9010, 2]
type = Lifeadd
trigger1 = time = 1
value = -9999

[State 9010, 3]
type = Selfstate
trigger1 = time = 1
value = 5070
ctrl = 0
;----------------------------------------------------------------------
;Yawn, you killed with something boring
[Statedef 9020]
type    = S
movetype= A
juggle  = 1
anim = 9000
ctrl = 0

[State 9020, 5]
type = HitDef
trigger1 = time = 0
attr = S, HA
;Nothing = 0
numhits = 0
priority  = 7
sparkno = -1
p2stateno = 9011

[State 9020, 6]
type = Destroyself
trigger1 = time = 1


;------Lightning Strike----------------

[Statedef 9100]
Type = S
Movetype = A
Physics = S
juggle = 4
poweradd = 50
ctrl = 0

[State 9100, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 9100, 1]
type = BGPalFX
trigger1 = Time >= 0  
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 9100, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 9100, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 9100, ChangeAnim]
type = ChangeAnim
trigger1 = time = 30
value = 20 

[State 9100, 0]
type = velset
trigger1 = time >= 0
trigger1 = anim = 20 
x = 2.5

[State 9100, ChangeAnim2]
type = ChangeState
trigger1 = p2bodydist X < 60
value = 8572

[Statedef 8572]
type    = S
movetype= A
juggle  = 1
velset = 0, 0
ctrl = 0
anim = 1800

[State 9830, White]
type = BGPalFX
trigger1 = AnimElem = 6
time = 5
add = 230, 230, 230
ignorehitpause = 1

[State 9830, Black]
type = BGPalFX
trigger1 = Time >= 0
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 8572, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 8572, StartSnd]
type = Playsnd
trigger1 = Time = 1
value = 4,18

[State 8572, StartSnd1]
type = Playsnd
trigger1 = Time = 1
value = 4,19

[State 8572, StartSnd8]
type = Playsnd
trigger1 = Time = 50
value = 4,14

[State 8572, StartSnd8]
type = Playsnd
trigger1 = Time = 80
value = 4,19

[State 8572, StartSnd8]
type = Playsnd
trigger1 = Time = 20
value = 4,14

[State 8572, StartSnd8]
type = Playsnd
trigger1 = Time = 50
value = 4,14

[State 8572, StartSnd8]
type = Playsnd
trigger1 = Time = 80
value = 4,14

[State 8572, StartSnd8]
type = Playsnd
trigger1 = Time = 100
value = 4,19

[State 8572, StartSnd8]
type = Playsnd
trigger1 = Time = 150
value = 4,14

[State 8572, StartSnd8]
type = Playsnd
trigger1 = Time = 200
value = 4,14

[State 8572, StartSnd6]
type = Playsnd
trigger1 = Time = 100
value = 3,7

[State 8572, StartSnd2]
type = Playsnd
trigger1 = Time = 100
value = 4,19

[State 9130, 1.555]
type = Helper
trigger1 = Time = 0
stateno = 33800
name = "LotsaMeat"
postype = p1
offest = 20, 0
helpertype = normal
sprpriority = -1
ownpal = 1
under = 1

[State 8572, Lighting Bolt 6]
type = Projectile
trigger1 = time = 40
projanim = 9200
projremove = 0
velocity = 0,0
postype = p1
offset = 20*const(size.xscale), 0*const(size.xscale)
attr = S, NP
damage    = 0
animtype = Back
air.animtype = Back
air.fall = 1
guardflag = M
hitflag = MAF
pausetime = 0,400
sparkno = -1
guard.sparkno = -1
hitsound   = s4,21
guardsound = s0,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 400
ground.velocity = 0
air.velocity = 0
air.juggle = 3
;p1stateno = 9830
palfx.time = 500
palfx.mul = 70,160,270
palfx.add = 89,103,150
palfx.sinadd = 180,180,180,5

[State 8572, Lighting Bolt 7]
type = Projectile
trigger1 = time = 270
projanim = 92000
projremove = 0
velocity = 0,0
postype = p1
offset = 20*const(size.xscale), 0*const(size.xscale)
attr = S, NP
damage    = 99
animtype = Medium
air.animtype = Back
air.fall = 1
guardflag = M
hitflag = MAF
pausetime = 0,400
sparkno = -1
guard.sparkno = -1
hitsound   = s4,21
guardsound = s0,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 400
ground.velocity = 0
air.velocity = 0
air.juggle = 3
p1stateno = 9830
palfx.time = 400
palfx.mul = 70,160,270
palfx.add = 89,103,150
palfx.sinadd = 180,180,180,5

[State 9106, EndOfFAT]
type = Changestate
trigger1 = stateno = 9830
trigger1 = AnimTime = 0
value = 0
ctrl = 0

[Statedef 33800]
type    = S
movetype= A
juggle  = 1
anim = 9200
velset = 0,0,0
ctrl = 0

[State 33800, Super D]
type = AfterImage
trigger1 = time = 1
FrameGap = 1
length = 5
PalBright   =   0,  0,  0
PalContrast = 148,148,148
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
palcolor = 0
Trans = Add1
time = 250

[State 33800, EndOfFAT]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;------Eye Lightning Fatality----------------

[Statedef 9101]
Type = S
Movetype = A
Physics = S
juggle = 4
poweradd = 50
ctrl = 0

[State 9101, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 9101, 1]
type = BGPalFX
trigger1 = Time >= 0  
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 9101, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 9101, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 9101, ChangeAnim]
type = ChangeAnim
trigger1 = time = 30
value = 20 

[State 9101, 0]
type = velset
trigger1 = time >= 0
trigger1 = anim = 20 
x = 2.5

[State 9101, ChangeAnim2]
type = ChangeState
trigger1 = p2bodydist X < 140
value = 91010

[Statedef 91010]
type    = S
movetype= A
juggle  = 1
anim = 3380
velset = 0,0,0
ctrl = 0

[State 91010, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 91010, 1.4]
type = Playsnd
trigger1 = Time = 70
value = 4,3

[State 91010, 1.6]
type = Playsnd
trigger1 = Time = 680
value = 4,6

[State 91010, 1.7]
type = Playsnd
trigger1 = Time = 100
value = 2424, 0

[State 91010, 1.8]
type = Playsnd
trigger1 = Time = 150
value = 4,23

[State 91010, 1.9]
type = Playsnd
trigger1 = Time = 200
value = 2424, 0

[State 91010, 2.0]
type = Playsnd
trigger1 = Time = 250
value = 2424, 0

[State 91010, 2.1]
type = Playsnd
trigger1 = Time = 300
value = 4,14

[State 91010, 2.6]
type = Playsnd
trigger1 = Time = 210
value = 4,0

[State 91010, 2.3]
type = Playsnd
trigger1 = Time = 275
value = 3,7

[State 91010, 2.4]
type = Playsnd
trigger1 = Time = 400
value = 4,6

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 5 
trigger3 = AnimElem = 25 
trigger5 = AnimElem = 45 
trigger7 = AnimElem = 65 
trigger9 = AnimElem = 85 
trigger11 = AnimElem = 105 
trigger13 = AnimElem = 125 
projanim = 90210
postype = p1
offset = 120*const(size.xscale), 0*const(size.xscale)
velocity = 0, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
damage    = 0
animtype = Heavy
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,20
sparkno = -1
guard.sparkno = -1
guardsound = S1, 0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 10
ground.velocity = 0
air.velocity = 0
air.juggle = 3
palfx.time = 40
palfx.mul = 70,160,270
palfx.add = 89,103,150
palfx.sinadd = 180,180,180,7
fall = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 1200, BoltFat2]
type = Projectile
trigger1 = AnimElem = 15 
trigger2 = AnimElem = 35 
trigger3 = AnimElem = 55 
trigger4 = AnimElem = 75 
trigger5 = AnimElem = 95 
trigger6 = AnimElem = 115 
trigger7 = AnimElem = 135 
projanim = 90210
postype = p1
offset = 120*const(size.xscale), 0*const(size.xscale)
velocity = 0, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
damage    = 0
animtype = Heavy
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,20
sparkno = -1
guard.sparkno = -1
guardsound = S1, 0
ground.type = High
ground.slidetime = 15
ground.hittime  = 10
ground.velocity = 0
air.velocity = 0
air.juggle = 3
palfx.time = 40
palfx.time = 20
palfx.mul = 70,160,270
palfx.add = 89,103,150
palfx.sinadd = 180,180,180,7
fall = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 1200, BoltFat3]
type = Projectile
trigger1 = AnimElem = 143 
projanim = 90210
projremomve = 0
postype  = p1
offset = 120*const(size.xscale), 0*const(size.xscale)
velocity = 0, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
damage    = 99
animtype = Medium
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
guardsound = S1, 0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 15
ground.velocity = 0
air.velocity = 0
air.juggle = 3
palfx.time = 40
palfx.time = 20
palfx.mul = 70,160,270
palfx.add = 89,103,150
palfx.sinadd = 180,180,180,7
fall = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
p1stateno = 9830

[State 91010, EndOfFAT]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 0

[Statedef 9125]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9125, 0.3]
type = SprPriority
trigger1 = time = 0
value = 0

[State 9125, 2.6]
type = Posset
trigger1 = time = 6
Y = 900

[State 9125, OkayYouCanStop]
type = PalFX
trigger1 = time = 6
time = 1
add = 0, 0, 0
mul = 0, 0, 0

[State 9100, NoBGM]
type = AssertSpecial
trigger1 = Time >= 9
flag = nokoslow

[State 9125, 3]
type = Lifeadd
trigger1 = Time = 9
Value = -9999

[State 9125, 2]
type = Selfstate
trigger1 = Time = 9
value = 5150

;-----------------------------------------
; Player 1, You do the blow-up
[Statedef 9130]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9210
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9130, BOOM]
type = Playsnd
trigger1 = Time = 4
value = 4,21

[State 9130, 0.3]
type = SprPriority
trigger1 = time = 0
value = 2

[State 9130, 1.555]
type = Helper
trigger1 = Time = 0
stateno = 9200
name = "LotsaMeat"
postype = p2
pos = 0*const(size.xscale), const(size.mid.pos.y)
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 9130, 1.555]
type = Explod
trigger1 = Time = 10
anim = 6041
pos = 0*const(size.xscale),Var(24)*const(size.xscale)
Postype = P2
bindtime = 1
sprpriority = 3

[State 9130, 1.555]
type = Explod
trigger1 = Time = 5
anim = 6041
pos = 0*const(size.xscale),(Var(24) / 2)*const(size.xscale)
Postype = P2
bindtime = 1
sprpriority = 3

[State 9130, SetFatal]
type = Varset
trigger1 = Time = 4
V = 4
value = 1

[State 9130, 2]
type = ChangeState
trigger1 = Time = 150
value = 0
ctrl = 1

;--------------------------------
[Statedef 9830]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0

[State 9830, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9830, NoBGM]
type = VarSet
trigger1 = Time >= 0
v = 26
value = 1

[State 9830, White]
type = BGPalFX
trigger1 = time = 0
time = 3
add = 230, 230, 230
ignorehitpause = 1

[State 9830, Black]
type = BGPalFX
trigger1 = Time >= 0
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 9830, Blood]
type = Explod
trigger1 = time = 0
anim = 6041
id = 6041
offset = 0*const(size.xscale), -50*const(size.xscale)
pos = 0*const(size.xscale), -50*const(size.xscale)
postype = p2
sprpriority = 7
ontop = 1
ownpal = 1

[State 9830, GoBoom]
type = TargetState
trigger1 = Time = 0
Value = 9125
pos = 170*const(size.xscale),0*const(size.xscale)

[State 9830, BOOM]
type = Playsnd
trigger1 = Time = 0
value = 4,21

[State 9830, BodyDamage1]
type = Playsnd
trigger1 = Time = 6
value = 1,5

[State 9830, BodyDamage2]
type = Playsnd
trigger1 = Time = 2
value = 31,35

[State 9830, 1]
type = SprPriority
trigger1 = time = 0
value = 2

[State 9830, 1.555]
type = Helper
trigger1 = Time = 0
stateno = 9200
name = "LotsaMeat"
postype = p2
pos = 0*const(size.xscale), const(size.mid.pos.y)
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 9830, 1.555]
type = Explod
trigger1 = Time = 0
anim = 6041
pos = 0*const(size.xscale),Var(24)*const(size.xscale)
Postype = P2
bindtime = 1
sprpriority = 3

[State 9830, 1.555]
type = Explod
trigger1 = Time = 0
anim = 6041
pos = 0*const(size.xscale),(Var(24) / 2)*const(size.xscale)
Postype = P2
bindtime = 1
sprpriority = 3

[State 9830, SetFatal]
type = Varset
trigger1 = Time = 1
V = 4
value = 1

[State 9830, EndOfFAT]
type = Changestate
trigger1 = AnimTime = 0 ;Time = 20
value = 0
ctrl = 1

;--------------------------------
; Measure Player Two
[StateDef 9200]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9150
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9200, 5]
type = HitDef
trigger1 = Time = 0
attr = S, HA
;Nothing = 0
numhits = 0
priority  = 7
sparkno = -1
guard.sparkno = -1
p2stateno = 9125
kill = 0

[State 9210, head]
type = BindtoTarget
trigger1 = time = 1
pos = 0*const(size.xscale),0*const(size.xscale),head
time = 1

[State 9210, Where]
type = ParentVarSet
trigger1 = time = 1
v = 24
value = Pos Y

[State 9210, mid]
type = BindtoTarget
trigger1 = time = 2
pos = 0*const(size.xscale),0*const(size.xscale),mid
time = 0

[State 9200, start]
type = changestate
trigger1 = time = 2
value = 9201

;--------------------------------------
; Blow chunks
[StateDef 9201]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9150
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9200, 10]
type = Helper
trigger1 = Random < 300
stateno = 9211
name = "Skull"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 10]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9210
name = "MeatBit"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 20]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9210
name = "MeatBit"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 30]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9210
name = "MeatBit"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 10]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9210
name = "MeatBit"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 20]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9210
name = "MeatBit"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 10]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9210
name = "MeatBit"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 20]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9210
name = "MeatBit"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 30]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9210
name = "MeatBit"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 10]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9210
name = "MeatBit"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 20]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9210
name = "MeatBit"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 30]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9210
name = "MeatBit"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 10]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9210
name = "MeatBit"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 20]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9210
name = "MeatBit"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 30]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9210
name = "MeatBit"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 40]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9210
name = "MeatBit"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 50]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9210
name = "MeatBit"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 60]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9210
name = "MeatBit"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 70]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9210
name = "MeatBit"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 80]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9210
name = "MeatBit"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1


[State 9200, done]
type = DestroySelf
trigger1 = time = 4

;-----------------------------------
;Meat Bits
[StateDef 9210]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9210, Select]
type = VarRandom
trigger1 = Time = 0
v = 11
Range = 9100, 9105

[State 9210, Draw]
type = ChangeAnim
trigger1 = Time = 0
;value = 9100 + (Random/150)
value = Var(11)

[State 9210, GO]
type = VelSet
trigger1 = Time = 0
X = 3.4-(Random/144)
Y = -4-(Random/99)

[State 9210, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
;trigger1 = Vel Y != 0
type = VelAdd
y = .4

[State 9210, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
;trigger1 = Vel Y < 0
value = -14

[State 9210, 0.5]
type = AngleDraw
trigger1 = Time >= 1
;trigger1 = Pos Y <= -7
;trigger1 = Vel Y < 0

[State 9210, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9210, Halt]
type = VelSet
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
X = 0
Y = 0

;-----------------------------------
;Meat Bits
[StateDef 9211]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 9211, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = 9106

[State 9210, GO]
type = VelSet
trigger1 = Time = 0
X = 5-(Random/88)
Y = -4-(Random/99)

[State 9211, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
;trigger1 = Vel Y != 0
type = VelAdd
y = .4

[State 9210, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
;trigger1 = Vel Y < 0
value = -14

[State 9210, 0.5]
type = AngleDraw
trigger1 = Time >= 1

[State 9211, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9211, Halt]
type = VelSet
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
X = 0
Y = 0

;  Fatal Shocker (Less bits that blow-up).
[Statedef 9300]
Type = S
Movetype = A
Physics = S
juggle = 4
poweradd = 50
ctrl = 0

[State 9300, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9300, 1]
type = BGPalFX
trigger1 = Time >= 0  
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 9300, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 9300, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 9300, ChangeAnim]
type = ChangeAnim
trigger1 = time = 30
value = 20 

[State 9300, 0]
type = velset
trigger1 = time >= 0
trigger1 = anim = 20 
x = 2.5

[State 9300, ChangeAnim2]
type = ChangeState
trigger1 = p2bodydist X < 20
value = 93000

[Statedef 93000]
type    = S
movetype= A
juggle  = 1
anim = 8100
sprpriority = 9
velset = 0, 0
ctrl = 0

[State 9310, TurnToMe]
Type = TargetFacing
trigger1 = Time = 0
value = -1

[State 9310, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 23

[State 9310, Scream]
type = Playsnd
trigger1 = Time = 30
value = 4,19

[State 9310, Zapp2]
type = Playsnd
trigger1 = Time = 40
value = 4,14

[State 9310, ZappySound6]
type = PlaySnd
trigger1 = Time = 50
value = 4, 23

[State 9310, Zapp3]
type = Playsnd
trigger1 = Time = 70
value = 4,19

[State 9310, ZappySound4]
type = PlaySnd
trigger1 = Time = 80
value = 4, 23

[State 9310, Zapp4]
type = Playsnd
trigger1 = Time = 90
value = 4,4

[State 9310, ZappySound2]
type = PlaySnd
trigger1 = Time = 60
value = 4, 23

[State 9310, ZappySound3]
type = PlaySnd
trigger1 = Time = 100
value = 4, 23

[State 9310, ZappySound5]
type = PlaySnd
trigger1 = Time = 120
value = 4, 14

[State 9310, ZappySound7]
type = PlaySnd
trigger1 = Time = 130
value = 4, 23

[State 9310, ZappySound8]
type = PlaySnd
trigger1 = Time = 140
value = 4, 14

[State 9310, ZappySound9]
type = PlaySnd
trigger1 = Time = 150
value = 4, 23

[State 93000, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 93000, StartZapping]
type = HitDef
trigger1 = AnimElem = 1
attr = S, HA
damage    = 0
priority  = 7
sparkno = -1
guard.sparkno = -1
ground.type = High
anim.type = heavy
pausetime = 0, 350
kill = 0
palfx.time = 400
palfx.mul = 70,250,270
palfx.add = 89,100,150
palfx.sinadd = 180,180,180,5

[State 93000, StartZapping2]
type = HitDef
trigger1 = AnimElem = 50
attr = S, HA
damage    = 99
priority  = 7
sparkno = -1
guard.sparkno = -1
pausetime = 0, 0
p1stateno = 9830
palfx.time = 2000
palfx.mul = 70,250,270
palfx.add = 89,100,150
palfx.sinadd = 180,180,180,5

[State 9330, 1.555]
type = Explod
trigger1 = AnimElem = 5
trigger2 = AnimElem = 10
trigger3 = AnimElem = 15
trigger4 = AnimElem = 25
trigger5 = AnimElem = 35
trigger6 = AnimElem = 45
trigger7 = AnimElem = 55
anim = 90210
pos = 0*const(size.xscale), 0*const(size.xscale)
Postype = P1
helpertype = normal
sprpriority = -1
ownpal = 0
ontop = 1

[State 9300, ChangeAnim2]
type = ChangeState
trigger1 = Animtime = 0
value = 0

;-------------------------
; P2 Go BOOM!
[StateDef 9330]
type    = S
movetype= A
physics = N
ctrl = 0
anim = 9330

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9310, RemArm]
type = RemoveExplod
trigger1 = Time = 1
id = 9310

[State 9330, BOOM]
type = Playsnd
trigger1 = Time = 4
value = 4,21

[State 9330, 0.3]
type = SprPriority
trigger1 = time = 0
value = 2

[State 9330, 1.555]
type = Helper
trigger1 = Time = 0
stateno = 9340
name = "SomeMeat"
pos = 36*const(size.xscale), -81*const(size.xscale)
Postype = P1
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 9330, SetFatal]
type = Varset
trigger1 = Time = 4
V = 4
value = 1

[State 9310, Dropum]
type = TargetState
trigger1 = Time = 4
ctrl = 0
value = 9399

[State 9330, 1.555]
type = Explod
trigger1 = Time = 5
anim = 6041
pos = 36*const(size.xscale), -121*const(size.xscale)
Postype = P1
bindtime = 1
sprpriority = 3

[State 9330, 1.555]
type = Explod
trigger1 = Time = 5
anim = 6041
pos = 36*const(size.xscale), -81*const(size.xscale)
Postype = P1
bindtime = 1
sprpriority = 3

[State 9330, 1.555]
type = Explod
trigger1 = Time = 5
anim = 6041
pos = 36*const(size.xscale), -41*const(size.xscale)
Postype = P1
bindtime = 1
sprpriority = 3

[State 9330, 2]
type = ChangeState
trigger1 = Time = 20
value = 0
ctrl = 1

;--------------------------------------
; Blow chunks
[StateDef 9340]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9150
ctrl = 0


[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9340, 10]
type = Helper
trigger1 = Time = 0
stateno = 9341
name = "Skull"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 10]
type = Helper
trigger1 = Time = 0
trigger1 = Time = 4
stateno = 9342
name = "Hand"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 20]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9343
name = "BONE"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 20]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9343
name = "BONE"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 30]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9344
name = "Guts"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 10]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9345
name = "Hip"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 20]
type = Helper
trigger1 = 1
trigger1 = Time = 0
trigger2 = Time = 4
;trigger1 = Var(12) = 0
stateno = 9346
name = "Leg"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 30]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9347
name = "MEAT"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, 10]
type = Helper
trigger1 = Time = 0
trigger2 = Time = 4
;trigger1 = Var(12) = 0
stateno = 9348
name = "InvLeg"
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9200, done]
type = DestroySelf
trigger1 = time = 4

;-----------------------------------
;SKULL
[StateDef 9341]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 9341, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = 9106

[State 9341, GO]
type = VelSet
trigger1 = Time = 0
X = 2.6-(Random/188)
Y = -4-(Random/99)

[State 9341, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
;trigger1 = Vel Y != 0
type = VelAdd
y = .4

[State 9341, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
;trigger1 = Vel Y < 0
value = -14

[State 9341, 0.5]
type = AngleDraw
trigger1 = Time >= 1
;trigger1 = Pos Y <= -7
;trigger1 = Vel Y < 0

[State 9341, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9341, Halt]
type = VelSet
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
X = 0
Y = 0

;-----------------------------------
;Hand
[StateDef 9342]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 9341, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = 9100

[State 9341, GO]
type = VelSet
trigger1 = Time = 0
X = 2.6-(Random/188)
Y = -4-(Random/99)

[State 9341, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
;trigger1 = Vel Y != 0
type = VelAdd
y = .4

[State 9341, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
;trigger1 = Vel Y < 0
value = -14

[State 9341, 0.5]
type = AngleDraw
trigger1 = Time >= 1
;trigger1 = Pos Y <= -7
;trigger1 = Vel Y < 0

[State 9341, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9341, Halt]
type = VelSet
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
X = 0
Y = 0

;-----------------------------------
;BONE
[StateDef 9343]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 9341, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = 9101

[State 9341, GO]
type = VelSet
trigger1 = Time = 0
X = 2.6-(Random/188)
Y = -4-(Random/99)

[State 9341, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
;trigger1 = Vel Y != 0
type = VelAdd
y = .4

[State 9341, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
;trigger1 = Vel Y < 0
value = -14

[State 9341, 0.5]
type = AngleDraw
trigger1 = Time >= 1
;trigger1 = Pos Y <= -7
;trigger1 = Vel Y < 0

[State 9341, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9341, Halt]
type = VelSet
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
X = 0
Y = 0

;-----------------------------------
;Guts
[StateDef 9344]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 9341, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = 9102

[State 9341, GO]
type = VelSet
trigger1 = Time = 0
X = 2.6-(Random/188)
Y = -4-(Random/99)

[State 9341, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
;trigger1 = Vel Y != 0
type = VelAdd
y = .4

[State 9341, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
;trigger1 = Vel Y < 0
value = -14

[State 9341, 0.5]
type = AngleDraw
trigger1 = Time >= 1
;trigger1 = Pos Y <= -7
;trigger1 = Vel Y < 0

[State 9341, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9341, Halt]
type = VelSet
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
X = 0
Y = 0

;-----------------------------------
;HIP
[StateDef 9345]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 9341, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = 9103

[State 9341, GO]
type = VelSet
trigger1 = Time = 0
X = 2.6-(Random/188)
Y = -4-(Random/99)

[State 9341, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
;trigger1 = Vel Y != 0
type = VelAdd
y = .4

[State 9341, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
;trigger1 = Vel Y < 0
value = -14

[State 9341, 0.5]
type = AngleDraw
trigger1 = Time >= 1
;trigger1 = Pos Y <= -7
;trigger1 = Vel Y < 0

[State 9341, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9341, Halt]
type = VelSet
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
X = 0
Y = 0

;-----------------------------------
;LEG
[StateDef 9346]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 9341, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = 9104

[State 9341, GO]
type = VelSet
trigger1 = Time = 0
X = 2.6-(Random/188)
Y = -4-(Random/99)

[State 9341, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
;trigger1 = Vel Y != 0
type = VelAdd
y = .4

[State 9341, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
;trigger1 = Vel Y < 0
value = -14

[State 9341, 0.5]
type = AngleDraw
trigger1 = Time >= 1
;trigger1 = Pos Y <= -7
;trigger1 = Vel Y < 0

[State 9341, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9341, Halt]
type = VelSet
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
X = 0
Y = 0

;-----------------------------------
;MEAT
[StateDef 9347]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 9341, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = 9105

[State 9341, GO]
type = VelSet
trigger1 = Time = 0
X = 2.6-(Random/188)
Y = -4-(Random/99)

[State 9341, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
;trigger1 = Vel Y != 0
type = VelAdd
y = .4

[State 9341, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
;trigger1 = Vel Y < 0
value = -14

[State 9341, 0.5]
type = AngleDraw
trigger1 = Time >= 1
;trigger1 = Pos Y <= -7
;trigger1 = Vel Y < 0

[State 9341, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9341, Halt]
type = VelSet
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
X = 0
Y = 0

;-----------------------------------
;LEG2
[StateDef 9348]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 9341, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = 9114

[State 9341, GO]
type = VelSet
trigger1 = Time = 0
X = 2.6-(Random/188)
Y = -4-(Random/99)

[State 9341, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
;trigger1 = Vel Y != 0
type = VelAdd
y = .4

[State 9341, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
;trigger1 = Vel Y < 0
value = -14

[State 9341, 0.5]
type = AngleDraw
trigger1 = Time >= 1
;trigger1 = Pos Y <= -7
;trigger1 = Vel Y < 0

[State 9341, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9341, Halt]
type = VelSet
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
X = 0
Y = 0

;---------------------
; Zap Player two!!!
[StateDef 9380]
type    = A
movetype= H
physics = N
juggle  = 2
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9380, OW]
type = ChangeAnim2
trigger1 = time = 0
value = 1350

[State 9105, 6.7]
type = Explod 
trigger1 = time = 50
anim = 1616
name = "Smoke"
pos = 40*const(size.xscale),170*const(size.xscale)
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1

[State 9380, Shockies]
type = PalFX
trigger1 = time = 0
time = 240
add = 0, 0, 0
mul = 128, 455, 455
sinadd = 0, 90, 90, 7

;----------------------------------------------
; Player Two Drops.
[StateDef 9390]
type    = A
movetype= H
physics = N
juggle  = 2
velset = .1,-.7,0
ctrl = 0

[State 9390, Gravity]
type = VelAdd
Trigger1 = 1
y = .4

[State 9390, NoSlow]
type = AssertSpecial
trigger1 = Time >= 0
flag = nokoslow
flag2 = nokosnd

[State 9390, 3]
type = Lifeadd
trigger1 = Time = 0
Value = -9999

[State 9390, Falling]
type = ChangeAnim2
trigger1 = time = 0
value = 1360

[State 9390, HitGround]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

;-----------------------------------------
; Player 2, you're outta here!!!! (Quicker)
[Statedef 9399]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9399, 0.3]
type = SprPriority
trigger1 = time = 0
value = 0

[State 9399, 2.6]
type = Posset
trigger1 = time = 0
Y = 900

[State 9399, NoSlow]
type = AssertSpecial
trigger1 = Time >= 0
flag = nokoslow

[State 9399, 3]
type = Lifeadd
trigger1 = Time = 0
Value = -9999

[State 9399, 2]
type = Selfstate
trigger1 = Time = 0
value = 5150




;=============================================================================
;
;  This Fatality is the pits.
[Statedef 9400]
type    = S
movetype= A
juggle  = 1
anim = 11
velset = 0, 0
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 8000, 1]
type = SuperPause
trigger1 = Time = 0
anim = -1
movetime = 10
time = 28

[State 8000, 1.5]
type = BGPalFX
trigger1 = time = 2
time = 9999
add = -130, -130, -130
ignorehitpause

[State 9400, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 9400, Select]
type = VarRandom
trigger1 = Time = 0
v = 21
Range = 0, 4

[State 9400, PointyThingsSel]
type = changestate
trigger1 = command = "holdup"
value = 9401

[State 9400, PIT2Sel]
type = changestate
trigger1 = command = "holddown"
value = 9410

[State 9400, PuddleSel]
type = changestate
trigger1 = command = "holdfwd"
value = 9430

[State 9400, PointyThings]
type = changestate
trigger1 = Time = 16
trigger1 = Var(21) = 0
value = 9401

[State 9400, PIT2]
type = changestate
trigger1 = Time = 16
trigger1 = Var(21) = 1
value = 9410

[State 9400, Puddle]
type = changestate
trigger1 = Time = 16
trigger1 = Var(21) = 3
value = 9430

;--------------------------------------
; With sharp spiky things!
[Statedef 9401]
type    = S
movetype= A
juggle  = 1
anim = 0
velset = 0, 0
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9330, Spikey]
type = Explod
trigger1 = Time = 5
anim = 9400
pos = 3, 0
Postype = Left
bindtime = 1
sprpriority = -1
ownpal = 1

[State 9330, Spikey2]
type = Explod
trigger1 = Time = 5
anim = 9401
pos = 3, 0
Postype = Left
bindtime = 1
sprpriority = 1
ownpal = 1

[State 9400, 5]
type = Helper
trigger1 = animelem = 1
stateno = 9403
name = "Puncture"
id = 9101
pos = 3, -205
Postype = Left
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 9401, StartAnim]
type = Changeanim
trigger1 = time = 0
value = 9494   ;430

[State 9401, PitHit]
type = HitDef
trigger1 = time > 1
attr = S, HA
damage    = 50,5
hitsound = S6,1
priority  = 7
sparkno = -1
guard.sparkno = -1
kill = 0
p1stateno = 0 ;9402
p2stateno = 9405
id = 6040

[State 9401, stand]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1
-----------------------------------------
; Player 1, You do the PIT
[Statedef 9402]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9210
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9130, 0.3]
type = SprPriority
trigger1 = time = 0
value = 2

;----
[State 9441, 3.5]
type = Helper
trigger1 = Time = 0
stateno = 6040
name = "UPPERCUT"
id = 6040
pos = 57*const(size.xscale),-74*const(size.xscale)
postype = P1
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1
;--------

[State 9130, SetPit]
type = Varset
trigger1 = Time = 4
V = 4
value = 2

[State 9130, 2]
type = ChangeState
trigger1 = Time = 200
value = 0
ctrl = 1

;--------------------------------------
; With sharp spiky things!
[Statedef 9403]
type    = S
movetype= A
juggle  = 1
anim = 9403
velset = 0, 0
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9403, ca-chunk]
type = HitDef
trigger1 = Time > 0
attr = S, HA
;Nothing = 0
numhits = 0
priority  = 7
sparkno = -1
guard.sparkno = -1
p2stateno = 9406
kill = 0

[State 9403, StopTarget]
type = TargetVelSet
trigger1 = MoveHit = 1
X = 0
Y = 0

[State 9403, FindTarget]
type = Helper
trigger1 = MoveHit = 1
stateno = 9404
name = "Seive"
id = 9101
pos = 0, 0
Postype = p2
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 9403, bye]
type = DestroySelf
trigger1 = MoveHit = 1


;--------------------------------------
; Hit the sharp spiky things!
[Statedef 9404]
type    = S
movetype= A
juggle  = 1
anim = 9404
velset = 0, 0
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9403, ca-chunk]
type = PlaySnd
trigger1 = Time = 0
value = 1,3

[State 9403, 1.555]
type = Explod
trigger1 = Time = 0
anim = 6041
pos = 0*const(size.xscale), 0*const(size.xscale)
Postype = P1
bindtime = 1
sprpriority = 3

[State 9403, 3.5]
type = Helper
trigger1 = Time = 0
stateno = 6040
name = "Spiked"
id = 6040
pos = 0,0
postype = P1
helpertype = normal
sprpriority = 2
keyctrl = 0
ownpal = 0
under = 1

[State 9404, Select]
type = VarRandom
trigger1 = TimeMod = 45, 43
v = 22
Range = -20, 20

[State 9404, Left]
type = Helper
trigger1 = TimeMod = 45, 44
trigger1 = Var(22) <= 0
stateno = 6000
name = "Blood Left"
pos = Var(22)*const(size.xscale), 0*const(size.xscale)
postype = P1
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 9404, Right]
type = Helper
trigger1 = TimeMod = 45, 44
trigger1 = Var(22) > 0
stateno = 6002
name = "Blood Right"
pos = Var(22)*const(size.xscale), 0*const(size.xscale)
postype = P1
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1


;--------------------
[Statedef 9405]
type    = A
movetype= H
physics = N
juggle  = 1
anim = 0
velset = 0, 0
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9405, bindit]
type = ScreenBound
trigger1 = 1
value = 0
MoveCamera= 0, 0

[State 9405, 0.3]
type = SprPriority
trigger1 = time = 0
value = 0

[State 9405, DieDieDie]
type = ChangeAnim2
trigger1 = Time = 0
value = 9405

[State 9405, Fly]
type = VelSet
trigger1 = Time = 0
Y = -10

[State 9399, 2]
type = Selfstate
trigger1 = time = 105
value = 5150

;----------Impaler----------
;Player 1 does the motions
[Statedef 8910]
type = S
movetype= A
physics = N
ctrl = 0
anim = 8910

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 202, NotFriendly]
type = VarSet
trigger1 = Time = 0
v = 5
value = 1

[State 910, 0]
type = SprPriority
trigger1 = Time = 0
value = -1

[State 910, Rise1]
type = TargetBind
trigger1 = time = 1 
pos = 37*const(size.xscale), -59*const(size.xscale)
bindtime = 1

[State 910, Rise2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 37*const(size.xscale), -79*const(size.xscale)
bindtime = 1

[State 910, Lift]
type = TargetBind
trigger1 = AnimElem = 3
pos = 34*const(size.xscale), -89*const(size.xscale)
bindtime = 1

[State 910, Heave]
type = TargetBind
trigger1 = AnimElem = 4
pos = 26*const(size.xscale), -102*const(size.xscale)
bindtime = 1

[State 910, Over]
type = TargetBind
trigger1 = AnimElem = 5
pos = 19*const(size.xscale), -117*const(size.xscale)
bindtime = 1

[State 910, HUU]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4, 12

[State 910, Pressed]
type = TargetBind
trigger1 = AnimElem = 6
pos = 4*const(size.xscale), -112*const(size.xscale)
bindtime = 1

[State 9404, Left]
type = Helper
trigger1 = AnimElemtime(5) = 30 
stateno = 6000
name = "Blood Left"
pos = -50*const(size.xscale), 50*const(size.xscale)
postype = P2
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 9404, Right]
type = Helper
trigger1 = AnimElemtime(5) = 20 
stateno = 6002
name = "Blood Right"
pos = 50*const(size.xscale), 50*const(size.xscale)
postype = P2
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 910, Pressed]
type = explod
trigger1 = AnimElemtime(5) >= 0 && AnimElemtime(5) < 20
anim = 1230
postype = p2
pos = -50*const(size.xscale), 50*const(size.xscale)
bindtime = -11
facing = random-500
vfacing = random-500
random = random / 50,random / 100
scale = random/1000.0,random/1000.0
ontop = 1
vel = 2*random/1000.0,2*random/1000.0
accel = 2*random/1000.0,2*random/1000.0
removetime = -2

[State 910, Toss] ; <----- sends player 2 into state 921, without using a hitdef
type = TargetState
trigger1 = AnimElem = 7, = 0
value = 8921
ctrl = 0

[State 8100, kill P2]
type = HitDef
trigger1 = time = 78
attr = S, HA
hitflag = HLAFD
damage    = 500,5
priority  = 7
kill       = 1
fall.kill  = 1
guard.kill = 1

[State 910, 2]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------
;THROWEE
[Statedef 920]
type = S
movetype = H
physics = N
ctrl = 0

[State 920, bindit]
type = ScreenBound
trigger1 = 1
value = 0
MoveCamera= 0, 0

[State 920, 0]
type = SprPriority
trigger1 = Time = 0
value = 1

[State 920, 1]
type = Changeanim2
trigger1 = time = 0
value = 920

[State 920, Just in case]
type = Selfstate
trigger1 = Time >= 60
value = 5100
ctrl = 0
;------------------------------------------------------------------------
;THROWEE
[Statedef 921]
type = S
movetype = H
physics = N
velset = 6, 10
ctrl = 0

[State 921, bindit]
type = ScreenBound
trigger1 = 1
value = 0
MoveCamera= 0, 0

[State 921, 0]
type = SprPriority
trigger1 = Time = 0
value = 1

[State 921, .5]
type = Turn
trigger1 = time = 0

[State 921, .5]
type = Changeanim2
trigger1 = time = 0
value = 921

[State 921, 4]
type = Selfstate
trigger1 = Pos Y >= 0
value = 5100
ctrl = 0
;--------------------
[Statedef 9406]
type    = A
movetype= H
physics = N
juggle  = 1
velset = 0, 0
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9406, DieDieDie]
type = ChangeAnim2
trigger1 = Time = 0
value = 9406

[State 9406, bindit]
type = ScreenBound
trigger1 = 1
value = 0
MoveCamera= 0, 0

[State 9406, Clone]
type = Explod
trigger1 = time = 0
anim = 5110
pos = 0*const(size.xscale),0*const(size.xscale)
bindtime = 1
removetime = -1
sprpriority = 0
shadow = -1

[State 9406, NoSlow]
type = AssertSpecial
trigger1 = Time >= 0
flag = nokoslow

[State 9406, 3]
type = Lifeadd
trigger1 = time = 10
Value = -9999

[State 9406, 2.6]
type = Posset
trigger1 = time = 10
Y = 900

[State 9406, 2]
type = Selfstate
trigger1 = time = 23
value = 5150

;--------- Pit 2------------------
[Statedef 9410]
type    = S
movetype= A
juggle  = 1
anim = 0
velset = 0, 0
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9410, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 9410, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 9401, StartAnim]
type = Changeanim
trigger1 = time = 0
value = 9494

[State 9401, PitHit]
type = HitDef
trigger1 = time > 1
attr = S, HA
damage    = 50,5
hitsound = S6,1
priority  = 7
sparkno = -1
guard.sparkno = -1
kill = 0
p1stateno = 9411
p2stateno = 9415

[State 9401, stand]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------
; Player 1, You do the PIT
[Statedef 9411]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9210
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9411, 0.3]
type = SprPriority
trigger1 = time = 0
value = 5

[State 9411, SetPit]
type = Varset
trigger1 = Time = 4
V = 4
value = 2

[State 9411, SetPit]
type = Varset
trigger1 = Time = 4
V = 23
value = 1

[State 9411, 9]
type = PlaySnd
trigger1 = Time = 0
value = 3, 10

[State 9411, Rock]
type = Explod
trigger1 = Time = 69
anim = 9410
pos = 0,0
postype = Left
removetime = -1
sprpriority = 0
ontop = 1
ownpal = 1
shadow = -1

[State 9411, Splat]
type = Explod
trigger1 = Time = 90
anim = 9411
pos = 160,150
postype = Left
removetime = -1
sprpriority = 0
ontop = 1
ownpal = 1
shadow = -1

[State 9411, Splat]
type = PlaySnd
trigger1 = Time = 101
value = 1,3

[State 9411, 2]
type = ChangeState
trigger1 = Time = 200
value = 0
ctrl = 1

;--------------------
[Statedef 9415]
type    = A
movetype= H
physics = N
juggle  = 1
velset = 0, 0
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9415, bindit]
type = ScreenBound
trigger1 = 1
value = 1
MoveCamera= 0, 0

[State 9415, 0.3]
type = SprPriority
trigger1 = time = 0
value = -3

[State 9415, Anim]
type = ChangeAnim2
trigger1 = time = 0
value = 9415

[State 9415, Anim]
type = VelSet
trigger1 = time = 0
X = -0.4
Y = -10

[State 9415, Gravity]
type = VelAdd
trigger1 = time >= 0
Y = .4

[State 9415, drop]
type = changestate
trigger1 = Vel Y > 0
value = 9416

;--------------------
[Statedef 9416]
type    = A
movetype= H
physics = N
juggle  = 1
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9416, bindit]
type = ScreenBound
trigger1 = 1
value = 1
MoveCamera= 0, 0

[State 9416, Anim]
type = ChangeAnim2
trigger1 = time = 0
value = 9416

[State 9416, Gravity]
type = VelAdd
trigger1 = time >= 0
Y = .4

[State 9416, 1.5]
type = AssertSpecial
trigger1 = Pos Y > 0
flag = noshadow

[State 9416, 1.5]
type = EnvColor
trigger1 = Pos Y > 300
value = 0,0,0
time = 1455

[State 9416, drop]
type = changestate
trigger1 = Pos Y > 600
value = 9417

;--------------------
[Statedef 9417]
type    = A
movetype= H
physics = N
juggle  = 1
velset = 0, 0
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9406, 2.6]
type = Posset
trigger1 = time = 0
Y = 900

[State 9416, Fall]
type = Explod
trigger1 = TimeMod = 2,0
trigger1 = Time < 20
anim = 5110
pos = 160*const(size.xscale),150*const(size.xscale)
postype = Left
bindtime = 1
removetime = 2
sprpriority = 0
ontop = 1
shadow = -1
Scale = (((20 - Time)/3) + 1), (((20 - Time)/3) + 1)

[State 9416, Splat]
type = Explod
trigger1 = TimeMod = 2,0
trigger1 = Time = 20
anim = 5110
pos = 160*const(size.xscale),150*const(size.xscale)
postype = Left
bindtime = 1
removetime = -1
sprpriority = 0
ontop = 1
shadow = -1

[State 9406, 3]
type = Lifeadd
trigger1 = time = 20
Value = -9999

[State 9406, 2]
type = Selfstate
trigger1 = time = 20
value = 5150


; Player 1, You do the PIT
[Statedef 9421]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9210
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9421, 0.3]
type = SprPriority
trigger1 = time = 0
value = -2

[State 9421, 5]
type = Helper
trigger1 = Time = 70
stateno = 9422
name = "Splat"
id = 9421
pos = 0*const(size.xscale),0*const(size.xscale)
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 9421, SetPit]
type = Varset
trigger1 = Time = 4
V = 4
value = 2

[State 9421, 2]
type = ChangeState
trigger1 = Time = 200
value = 0
ctrl = 1

;-----------------------------------------
; Player 1, You do the PIT
[Statedef 9422]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9420
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9422, PitHit]
type = HitDef
trigger1 = time > 1
attr = S, HA
damage    = 50,5
hitsound = S4,21
priority  = 7
sparkno = -1
guard.sparkno = -1
kill = 0
p2stateno = 9428

[State 9422, 0.3]
type = EnvColor
trigger1 = MoveHit = 1
value = 255, 255, 255
Time = 7

[State 9422, 1.555]
type = Helper
trigger1 = MoveHit = 1
stateno = 9201
name = "LotsaMeat"
postype = p2
pos = 0*const(size.xscale), 6*const(size.xscale)
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 9422, 3.5]
type = Helper
trigger1 = MoveHit = 1
stateno = 6040
name = "Crunched"
id = 6040
pos = 0*const(size.xscale),0*const(size.xscale)
postype = P2
helpertype = normal
sprpriority = 2
keyctrl = 0
ownpal = 0
under = 1

[State 9422, 3.5]
type = DestroySelf
trigger1 = MoveHit = 1


;--------------------
[Statedef 9425]
type    = A
movetype= H
physics = N
juggle  = 1
velset = 0, 0
ctrl = 0

[State 9425, bindit]
type = ScreenBound
trigger1 = 1
value = 1
MoveCamera= 0, 0

[State 9425, 0.3]
type = SprPriority
trigger1 = time = 0
value = -3

[State 9425, Anim]
type = ChangeAnim2
trigger1 = time = 0
value = 9415

[State 9425, Anim]
type = VelSet
trigger1 = time = 0
X = -0.4
Y = -10

[State 9425, Gravity]
type = VelAdd
trigger1 = time >= 0
Y = .4

[State 9425, drop]
type = changestate
trigger1 = Vel Y > 0
value = 9426

;--------------------
[Statedef 9426]
type    = A
movetype= H
physics = N
juggle  = 1
ctrl = 0

[State 9426, bindit]
type = ScreenBound
trigger1 = 1
value = 1
MoveCamera= 0, 0

[State 9426, Anim]
type = ChangeAnim2
trigger1 = time = 0
value = 9416

[State 9426, Gravity]
type = VelAdd
trigger1 = time >= 0
Y = .4

[State 9426, 1.5]
type = AssertSpecial
trigger1 = Pos Y > 0
flag = noshadow

[State 9426, drop]
type = changestate
trigger1 = Pos Y > 600
value = 9427

;--------------------
[Statedef 9427]
type    = A
movetype= H
physics = N
juggle  = 1
velset = 0, 10
ctrl = 0


[State 9427, nosha]
type = AssertSpecial
trigger1 = Time >= 0
flag = noshadow

[State 9427, bindit]
type = ScreenBound
trigger1 = 1
value = 1
MoveCamera= 0, 0

[State 9427, 2.6]
type = Posset
trigger1 = time = 5
Y = -900

[State 9427, 3]
type = Lifeadd
trigger1 = Time > 500
Value = -9999

[State 9427, 2]
type = Selfstate
trigger1 = Time > 500
value = 5150

;--------------------
[Statedef 9428]
type    = A
movetype= H
physics = N
juggle  = 1
velset = 0, 10
ctrl = 0

[State 9428, NoSlow]
type = AssertSpecial
trigger1 = Time >= 0
flag = nokoslow
flag2 = noshadow

[State 9428, 2.6]
type = Posset
trigger1 = time = 5
Y = 600

[State 9428, 3]
type = Lifeadd
trigger1 = time = 5
Value = -9999

[State 9428, 2]
type = Selfstate
trigger1 = time = 5
value = 5150

;--------------------------------------
; Where did that puddle come from ???
[Statedef 9430]
type    = S
movetype= A
juggle  = 1
anim = 0
velset = 0, 0
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9430, DaDaDa]
type = Playsnd
trigger1 = Time = 0
value = 6,1

[State 9430, BodyDist]
type = VarSet
trigger1 = time = 0
v = 11
value = FrontEdgeBodyDist

[State 9430, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 9430, StartAnim]
type = Changeanim
trigger1 = time = 0
value = 9494

[State 9430, PitHitCorner]
type = HitDef
trigger1 = time > 1
trigger1 = Var(11) < 80
attr = S, HA
damage    = 50,5
hitsound = S6,1
priority  = 7
sparkno = -1
guard.sparkno = -1
kill = 0
animtype  = up
ground.velocity = 0.7, -19
air.velocity = 2,-10
down.hittime = 30
fall = 1
fall.recover = 0
p1stateno = 9431

[State 9430, PitHit]
type = HitDef
trigger1 = time > 1
trigger1 = Var(11) >= 80
attr = S, HA
damage    = 50,5
hitsound = S6,1
priority  = 7
sparkno = -1
guard.sparkno = -1
kill = 0
animtype  = up
ground.velocity = -0.6, -19
air.velocity = -2,-10
down.hittime = 30
fall = 1
fall.recover = 0
p1stateno = 9431

[State 9430, stand]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------
; Player 1, You do the PIT
[Statedef 9431]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9210
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9430, 5]
type = Helper
trigger1 = Time = 70
trigger1 = Var(11) < 80
stateno = 9432
name = "Puddle"
id = 9421
pos = -67,0
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 1
under = 1

[State 9430, 5]
type = Helper
trigger1 = Time = 70
trigger1 = Var(11) >= 80
stateno = 9432
name = "Puddle"
id = 9421
pos = 97,0
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 1
under = 1

[State 9431, SetPit]
type = Varset
trigger1 = Time = 4
V = 4
value = 2

[State 9431, ClearTemp]
type = Varset
trigger1 = Time = 75
V = 11
value = 0

[State 9431, 2]
type = ChangeState
trigger1 = Time = 200
value = 0
ctrl = 1

;-----------------------------------------
; MR Puddle
[Statedef 9432]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9430
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9432, init] ; Hijacked Var 24 for this.
type = VarSet
trigger1 = Time = 0
v = 24
value = 0

[State 9432, PitHit]
type = HitDef
trigger1 = time > 1
attr = S, HA
damage    = 50,5
hitflag = AFD
priority  = 7
sparkno = -1
guard.sparkno = -1
kill = 0
p2stateno = 9435

[State 9432, 1.555]
type = Helper
trigger1 = MoveHit = 1
trigger1 = Var(24) = 0
stateno = 9433
name = "Plob"
postype = p2
pos = 0, 6
helpertype = normal
sprpriority = 3
keyctrl = 0
ownpal = 1

[State 9432, init] ; Hijacked Var 24 for this.
type = VarSet
trigger1 = MoveHit = 1
v = 24
value = 1

[State 9432, 1.555]
type = PlaySnd
trigger1 = Time = 120
value = 4, 24

[State 9432, 1.555]
type = Explod
trigger1 = Time = 120
anim = 9435
pos = 0*const(size.xscale),0*const(size.xscale)
bindtime = 1
removetime = -1
sprpriority = 3
shadow = -1


;-----------------------------------------
; Splash Down
[Statedef 9433]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 6040
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9433, PitHit]
type = PlaySnd
trigger1 = Time = 0
value = 1,5

[State 9433, 1.555]
type = PalFX
trigger1 = Time = 0
time = 50
add = 0, 65, 0
mul = 0, 256, 256

[State 9433, 1.555]
type = destroyself
trigger1 = animtime = 0


;--------------------
[Statedef 9435]
type    = A
movetype= H
physics = N
juggle  = 1
velset = 0, 0
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9425, bindit]
type = ScreenBound
trigger1 = 1
value = 1
MoveCamera= 0, 0

[State 9428, NoSlow]
type = AssertSpecial
trigger1 = Time >= 0
flag = nokoslow
flag2 = noshadow

[State 9428, 2.6]
type = Posset
trigger1 = time = 0
Y = 900

[State 9428, 3]
type = Lifeadd
trigger1 = time = 0
Value = -9999

[State 9428, 2]
type = Selfstate
trigger1 = time = 0
value = 5150


;--------------------------------------
; What are you Liu Kang???
[Statedef 9440]
type    = S
movetype= A
juggle  = 1
anim = 0
velset = 0, 0
ctrl = 0

[State 9440, StartAnim]
type = Changeanim
trigger1 = time = 0
value = 9200

[State 9440, PitHitCorner]
type = HitDef
trigger1 = time > 1
trigger1 = FrontEdgeBodyDist < 80
attr = S, HA
hitsound = S6,3
priority  = 7
sparkno = -1
guard.sparkno = -1
animtype  = up
ground.velocity = 0.7, -60
air.velocity = 2,-10
down.hittime = 30
fall = 1
fall.recover = 0
fall.damage = 9999
p1stateno = 9441

[State 9440, PitHit]
type = HitDef
trigger1 = time > 1
trigger1 = FrontEdgeBodyDist >= 80
attr = S, HA
hitsound = S6,3
priority  = 7
sparkno = -1
guard.sparkno = -1
animtype  = up
ground.velocity = -0.6, -60
air.velocity = -2,-10
down.hittime = 30
fall = 1
fall.recover = 0
fall.damage = 9999
p1stateno = 9441

[State 9440, stand]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------
; Player 1, You do the PIT
[Statedef 9441]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9210
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9441, 3.5]
type = Helper
trigger1 = Time = 0
stateno = 6040
name = "UPPERCUT"
id = 6040
pos = 57*const(size.xscale),-74*const(size.xscale)
postype = P1
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 9441, SetPit]
type = Varset
trigger1 = Time = 4
V = 4
value = 2

[State 9441, 2]
type = ChangeState
trigger1 = Time = 150
value = 0
ctrl = 1

;------------------------------------------------------------------------
;What the????
[Statedef 8110]
type    = S
movetype= H
physics = N
velset = 0,0
anim = 0
ctrl = 0

[State 8112, move]
type = posadd
trigger1 = time = 2
trigger1 = BackEdgeBodyDist <= 40
x = 29

;------------------------------------------------------------------------
;AHHH!!! DON'T DO THAT!!!!!!
[Statedef 8111]
type    = S
movetype= H
physics = N
velset = 0,0
anim = 41
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 8111, NoNuthin]
type = AssertSpecial
trigger1 = 1
flag = nokoslow
flag2 = nokosnd

[State 8111, bindit]
type = ScreenBound
trigger1 = 1
value = 1
MoveCamera= 0, 0

[State 8110, 3]
type = Lifeadd
trigger1 = time = 0
Value = -9999

[State 8111, 3]
type = VelSet
trigger1 = time = 0
Y = -10

[State 8111, 3]
type = ChangeState
trigger1 = time = 60
value = 8112

[Statedef 8112]
type    = S
movetype= H
physics = N
anim = 44
ctrl = 0

[State 8112, bindit]
type = ScreenBound
trigger1 = 1
value = 1
MoveCamera= 0, 0

[State 8112, turn]
type = Turn
trigger1 = time = 0

[State 8112, move]
type = posset
trigger1 = time = 0
trigger1 = FrontEdgeDist >= 50
x = -50

[State 8112, move2]
type = posset
trigger1 = time = 0
trigger1 = FrontEdgeDist < 50
x = 50

[State 8112, gravity]
type = VelAdd
trigger1 = Vel Y < 10
Y = .4

[State 8111, 3]
type = ChangeState
trigger1 = Pos Y >= 0
value = 8113


[Statedef 8113]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 8112, move2]
type = posset
trigger1 = time = 0
Y = 0

[State 8112, 2]
type = changeanim
trigger1 = time = 0
value = 170
ctrl = 0

[State 8112, Defeat]
type = Explod
trigger1 = time = 0
trigger1 = AnimExist(170)
anim = 170
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
bindtime = 1
removetime = -1
sprpriority = 3

[State 8112, Stun]
type = Explod
trigger1 = time = 0
trigger1 = !animexist(170)
trigger1 = animexist(5300)
anim = 5300
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
bindtime = 1
removetime = -1
sprpriority = 3

[State 8112, 1.555]
type = Explod
trigger1 = time = 0
trigger1 = !animexist(170)
trigger1 = !animexist(5300)
anim = 0
pos = 0*const(size.xscale),0*const(size.xscale)
postype = p1
bindtime = 1
removetime = -1
sprpriority = 3

[State 8112, 2.6]
type = Posset
trigger1 = time = 3
Y = 900

[State 8112, 2]
type = Selfstate
trigger1 = time = 3
value = 5150

;-----------------------------------
;Babality Fatality

[Statedef 9102]
Type = S
Movetype = A
Physics = S
juggle = 4
poweradd = 50
ctrl = 0

[State 9102, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 9102, 1]
type = BGPalFX
trigger1 = Time >= 0  
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 9102, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 9102, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 9102, ChangeAnim]
type = ChangeAnim
trigger1 = time = 30
value = 20 

[State 9102, 0]
type = velset
trigger1 = time >= 0
trigger1 = anim = 20 
x = 2.5

[State 9102, ChangeAnim2]
type = ChangeState
trigger1 = p2bodydist X < 100
value = 91020

[Statedef 91020]
type = S
movetype = A
physics = N
velset = 0,0
anim = 3384
ctrl = 0

[State 91020, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 91020, SetFatal]
type = VarSet
trigger1 = time = 0
v = 4
value = 1

[State 91020, measure]
type = Varset
trigger1 = time = 0
var(33) = floor(p2bodydist x)

[State 91020, 1]
type = HitDef
trigger1 = animelem = 1
attr = S, NA
damage = 50,5
priority = 7
sparkno = -1
kill = 0
p2stateno = 9104

[State 91020, Bind]
type = TargetBind
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 6
pos = var(33)*const(size.xscale), 9500*const(size.xscale)

[State 91020, Die]
type = TargetLifeAdd
trigger1 = AnimElem = 5
value = -9999

[State 91020, Fire]
type = Playsnd
trigger1 = Time = 10
value = 4,21

[State 91020, Smoookin]
type = Explod
trigger1 = time = 20
anim = 3385
pos = (var(33)+10)*const(size.xscale), 0*const(size.xscale)
postype = p1
bindtime = -1
sprpriority = 2
shadow = -1
ownpal = 1

[State 91020, Baby Cry]
type = Playsnd
trigger1 = Time = 35
value = 4,5

[State 91020, Heeeere's Johnny]
type = Explod
trigger1 = time = 30
anim = 3386
pos = (var(33)+10)*const(size.xscale), -37*const(size.xscale)
postype = p1
bindtime = -1
shadow = -1
ownpal = 1

[State 91020, Baby Cry]
type = Playsnd
trigger1 = Time = 90
value = 4,5

[State 91020, Babality]
type = Playsnd
trigger1 = Time = 100
value = 5,0

[State 91020, Ewww... mushy]
type = helper
trigger1 = time = 30
postype = p1
pos = (var(33)-30)*const(size.xscale),-1700*const(size.xscale)
facing = 1
stateno = 9105
helpertype = normal

[State 91020, Dropum]
type = TargetState
trigger1 = Time = 50
ctrl = 0
;value = 5150
value = 9106

[State 91020, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------
;p2's state
[Statedef 9104]
type = S
movetype= H
physics = S
velset = 0,0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9104, 0.1]
type = Changeanim
trigger1 = (anim != 5300) && ( animexist(5300))
value = 5300

[State 9104, 1]
type = Changeanim2
trigger1 = (!animexist(5300)) && (anim != 9010)
value = 9010

;----------------------------
[Statedef 9106]
type    = S
movetype= H
physics = S
velset = 0,0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9106, Love Hurts but Fatalities hurt worse]
type = LifeAdd
trigger1 = 1
value = -9999

[State 9106, Go Bye Bye]
type = SelfState
trigger1 = 1
value = 5150

;---------------------------------------------------------------------------
;KI Machine Helper
[Statedef 9105]
type = S
movetype= I
physics = S
velset = 0,0
anim = 3387

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay


[State 9105, Baby Blood]
type = Playsnd
trigger1 = Time = 220
value = 13,0

[State 9105, VelSet]
type = velset
trigger1 = 1
y = 12

[State 9105, VelSet]
type = velset
trigger1 = (Vel y > 0) && (Pos y >= -180) 
x = 0
y = 0

[State 9100, Smash]
type = Playsnd
trigger1 = Time = 120
value = 4,21

[State 9105, 6]
type = HitDef
trigger1 = !movecontact
attr = S, SP
animtype = Heavy
damage = 9999
priority = 30
guardflag = MA
pausetime = 0,10
hitsound = S4,3
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 15
ground.velocity = -2
air.velocity = -4,-3
fall = 1
kill = 1

[State 9105, 6.6]
type = Explod 
trigger1 = time = 130
anim = 9999 
name = "MeatBit"
pos = 40*const(size.xscale),150*const(size.xscale)
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9105, 6.7]
type = Explod 
trigger1 = time = 150
anim = 9990 
name = "MeatBit"
pos = 40*const(size.xscale),170*const(size.xscale)
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 0
keyctrl = 0
ownpal = 1
under = 1

[State 9105, EndOfFAT]
type = Changestate
trigger1 = Animelem = 61
value = 9130
ctrl = 0

;----------Subway----------------

