;====================================================================
;***********************FATALITIES!**********************************
;=================================================================


;Brutality
[Statedef 22236]
type    = S    
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 22236

[State 3601, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 3601, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1
sprpriority = 9

[State 3601, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 3601, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 22236, ChangeAnim]
type = ChangeAnim
trigger1 = AnimElem = 11 ;time = 70
value = 20 

[State 22236, 0]
type = velset
trigger1 = time >= 0
trigger1 = anim = 20 
x = 2.5

[State 22236, Brutality]
type = PlaySnd
trigger1 = Time = 15
value = 1313, 4 ;90210,0
volume = 255

[State 22236, ChangeAnim2]
type = ChangeState
trigger1 = p2bodydist X > 5 && p2bodydist X < 10
value = 22237

[StateDef 22237]
Type = S
Movetype = A
Physics = S
juggle = 4
poweradd = 50
Anim = 90210
ctrl = 0
velset = 1,0

[State 22237, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 22237, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 22237, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 22237, tracers]
type = AfterImage
trigger1 = Time = 0
PalBright   =  255, 255, 255
trans = add
time = 350

[State 22237, Hah2]
type = Playsnd
trigger1 = animelem = 108
value = 1313,25

[state 22237, 1]
type = hitdef
trigger1 = AnimElem = 3 
trigger2 = animelem = 12
trigger3 = AnimElem = 19
trigger4 = animelem = 26
trigger5 = animelem = 33
trigger6 = animelem = 44
trigger7 = animelem = 51
trigger8 = animelem = 60
trigger9 = animelem = 68
trigger10 = animelem = 75
trigger11 = animelem = 82
trigger12 = animelem = 89
trigger13 = animelem = 96
trigger14 = animelem = 103
trigger15 = animelem = 110
attr = S, NA
animtype  = Heavy
damage = 0
sparkxy = 5,-100
hitsound   = s20,31
guardsound = s0,0
pausetime = 1,35
ground.type = high
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = 0
fall.recover = 0
envshake.time = 20
envshake.freq = 190
envshake.ampl = -5

[State 22237, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;Intestine Rip
[StateDef 60000]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
poweradd = 20 

[State 60000, 1]
type = BGPalFX
trigger1 = time = 0
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 60000, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 60000, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 60000, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 60000, ChangeAnim]
type = ChangeAnim
trigger1 = time = 10
value = 20 

[State 60000, 1]
type = velset
trigger1 = time >= 0
trigger1 = anim = 20 
x = 2.2

[State 60000,3]
type = ChangeState
trigger1 = p2bodydist X > 10 && p2bodydist X < 20
value = 60009

[StateDef 60009]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
sprpriority = 7  
anim = 66001

[State 60009, 1]
type = BGPalFX
trigger1 = time = 0
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 60009, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 60009, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 3000, sound]
type = Playsnd
trigger1 = time = 0
value = S1313, 1

[State 60009, 2]
type = HitDef
trigger1 = !Movecontact
attr = S, NA
damage    = 9999
animtype = Heavy
getpower = 10,5
givepower = 10,5
guardflag = M
hitflag = MAF
priority = 7
pausetime = 0,250
sparkno = 0 
sparkxy = 0,-60
p1stateno = 60001
guard.sparkno = -1
hitsound   = s1,5 
guardsound = 6,0
ground.type = High
ground.slidetime = 500
ground.hittime  = 500
ground.velocity = 0, 0 
fall.recovertime = 500          
air.velocity = 0, 0
air.hittime = 12  
fall = 1

[State 60009, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

[StateDef 60001]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
sprpriority = 7  
anim = 66002 

[State 3000, sound]
type = Playsnd
trigger1 = time = 0
trigger2 = time = 90
trigger3 = time = 140
value = S31, 40

[State 3000, sound2]
type = Playsnd
trigger1 = time = 200
value = S3, 7

[State 3000, sound3]
type = Playsnd
trigger1 = time = 0
trigger2 = time = 50
value = S31, 41

[State 7620, 3.6]
type = Helper
trigger1 = Time = 20
trigger2 = Time = 50
trigger3 = Time = 90
trigger4 = Time = 120
trigger5 = Time = 150
trigger6 = Time = 170
stateno = 66015
name = "High punch Blood"
pos = 70,-92
postype = P1
helpertype = normal
sprpriority = -5
keyctrl = 0
ownpal = 0
under = 1

[State 7620, 3.6]
type = Helper
trigger1 = Time = 70
trigger2 = Time = 100
trigger3 = Time = 150
trigger4 = Time = 160
stateno = 66015
name = "High punch Blood"
pos = 70,-85
postype = P1
helpertype = normal
sprpriority = 5
keyctrl = 0
ownpal = 0

[State 12071, 1]
type = Helper
trigger1 = Time = 1
stateno = 6646
name = "BloodPuddle"
id = 6646
pos = 60,-10
postype = P1
helpertype = normal
sprpriority = -8
keyctrl = 0
ownpal = 0

[State 12071, 1]
type = Helper
trigger1 = Time = 50
stateno = 6647
name = "BloodPuddle2"
id = 6647
pos = 60,-10
postype = P1
helpertype = normal
sprpriority = 3
keyctrl = 0
ownpal = 0
ontop = 1

[State 3000, sound]
type = Playsnd
trigger1 = time = 100
value = S4, 24

;[State 3000, sound]
;type = Playsnd
;trigger1 = time = 400
;value = S0, 0

[State 6000, 1]
type = BGPalFX
trigger1 = time = 0
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 6000, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 3000, sound]
type = Playsnd
trigger1 = time = 350
value = S1313, 5

[State 6000, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 4747, SetFatal]
type = Varset
trigger1 = Time = 4
V = 4
value = 1

[State 6000, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;Vicious Hammer
[StateDef 12070]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
poweradd = 20   
anim = 191

[State 3380, You Will Die]
type = Playsnd
trigger1 = Time = 10
value = 1313,8

[State 3380, 1]
type = BGPalFX
trigger1 = time = 0
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 3380, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 3380, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 5112, ChangeAnim]
type = ChangeAnim
trigger1 = time = 100
value = 20 

[State 5112, 1]
type = velset
trigger1 = time >= 0
trigger1 = anim = 20 
x = 2.2

[State 5112,3]
type = ChangeState
trigger1 = p2bodydist X > 60 && p2bodydist X < 70
value = 12072

[Statedef 12072]
type    = S
movetype= A
physics = S
juggle  = 10
ctrl = 0
velset = 0,0
anim = 12070

[State 3380, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 12070, Swing]
type = PlaySnd
trigger1 = time = 5
value = 1313, 1

[State 12070, 2]
type = HitDef
trigger1 = !Movecontact
attr = S, NA
damage    = 9999
animtype  = Heavy
getpower = 10,5
givepower = 10,5
guardflag = HA
hitflag = HA
priority = 7
pausetime = 0,0
sparkno = 0 
sparkxy = 0,-60
guard.sparkno = -1
hitsound   = s31,35 
p1stateno = 12071
guardsound = 6,0
ground.type = High
ground.slidetime = 500
ground.hittime  = 500
ground.velocity = 0, 0 
fall.recovertime = 500          
air.velocity = 0, 0
air.hittime = 12  
envshake.time = 15
envshake.freq = 200
envshake.ampl = -7
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 1
air.fall = 1

[State 12070, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 12071]
type    = S
movetype= I
physics = S
juggle  = 1
ctrl = 0
anim = 12071

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 12071, Swing]
type = PlaySnd
trigger1 = time = 30
value = 1313, 16 

[State 12071, 1]
type = Helper
trigger1 = Time = 70
stateno = 6646
name = "BloodPuddle"
id = 6646
pos = 110,-10
postype = P1
helpertype = normal
sprpriority = -8
keyctrl = 0
ownpal = 0

[State 12071, 1]
type = Helper
trigger1 = Time = 50
stateno = 6647
name = "BloodPuddle2"
id = 6647
pos = 114,-17
postype = P1
helpertype = normal
sprpriority = 3
keyctrl = 0
ownpal = 0
ontop = 1

[State 12071, Swing]
type = PlaySnd
trigger1 = Time = 140
trigger2 = Time = 172
trigger3 = Time = 204
trigger4 = Time = 236
trigger5 = Time = 268
trigger6 = Time = 300
trigger7 = Time = 332
trigger8 = Time = 361
trigger9 = Time = 383
trigger10 = Time = 405
trigger11 = Time = 423
trigger12 = Time = 482
value = 1313,1 

[State 12071, Smash]
type = PlaySnd
trigger1 = Time = 151
trigger2 = Time = 183
trigger3 = Time = 215
trigger4 = Time = 247
trigger5 = Time = 279
trigger6 = Time = 311
trigger7 = Time = 343
trigger8 = Time = 369
trigger9 = Time = 389
trigger10 = Time = 409
trigger11 = Time = 429
trigger12 = Time = 497
value = 1,3 

[State 3300, 1]
type = EnvShake
trigger1 = Time = 151
trigger2 = Time = 183
trigger3 = Time = 215
trigger4 = Time = 247
trigger5 = Time = 279
trigger6 = Time = 311
trigger7 = Time = 343
trigger8 = Time = 369
trigger9 = Time = 389
trigger10 = Time = 409
trigger11 = Time = 429
trigger12 = Time = 497
freq = 200
time = 15
ampl = -7

[State 12071, 1]
type = Helper
trigger1 = Time = 151
trigger2 = Time = 183
trigger3 = Time = 215
trigger4 = Time = 247
trigger5 = Time = 279
trigger6 = Time = 311
trigger7 = Time = 343
trigger8 = Time = 369
trigger9 = Time = 389
trigger10 = Time = 409
trigger11 = Time = 429
trigger12 = Time = 497
stateno = 6040
name = "BloodSpurt"
id = 6040
pos = 110,-10
postype = P1
helpertype = normal
sprpriority = 3
keyctrl = 0
ownpal = 0

[State 12071, 1.1]
type = Helper
trigger1 = Time = 151
trigger2 = Time = 183
trigger3 = Time = 215
trigger4 = Time = 247
trigger5 = Time = 279
trigger6 = Time = 311
trigger7 = Time = 343
trigger8 = Time = 369
trigger9 = Time = 389
trigger10 = Time = 409
trigger11 = Time = 429
trigger12 = Time = 497
stateno = 9999
name = "BloodSpurt"
id = 9999
pos = 110,-10
postype = P1
helpertype = normal
sprpriority = 3
keyctrl = 0
ownpal = 0

[State 12070, "You are nothing"]
type = PlaySnd
trigger1 = time = 530
value = 1313, 9

[State 12071, 3]
type = Helper
trigger1 = Time = 0
stateno = 6040
name = "UPPERCUT"
id = 6040
pos = 110,-74
postype = P1
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 4747, SetFatal]
type = Varset
trigger1 = Time = 4
V = 4
value = 1

[State 12071, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


; Get rid of P2
[Statedef 2500]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 2500, NoSlow]
type = AssertSpecial
trigger1 = Time >= 0
flag = nokoslow
flag2 = nokosnd
flag3 = Invisible

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 2500, NoSlow2]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoShadow

[State 2500, 0.3]
type = SprPriority
trigger1 = time = 0
value = 0

[State 2500, 2.6]
type = Posset
trigger1 = time = 6
Y = 900

[State 2500, OkayYouCanStop]
type = PalFX
trigger1 = time = 6
time = 1
add = 0, 0, 0
mul = 0, 0, 0

[State 2500, NoBGM]
type = AssertSpecial
trigger1 = Time >= 9
flag = nokoslow

[State 2500, 3]
type = Lifeadd
trigger1 = Time = 9
Value = -9999

[State 2500, 2]
type = Selfstate
trigger1 = Time = 50
value = 5150

;-----------------------------------------
; Player 1, You do the blow-up
[Statedef 2600]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9210
ctrl = 0

[State 2400, 1]
type = BGPalFX
trigger1 = time = 0
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 2400, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 2400, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 2600, 0.3]
type = SprPriority
trigger1 = time = 0
value = 2

[State 9100, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 1,5

[State 2500, 1]
type = Explod
trigger1 = projcontact = 1
trigger1 = p2stateno = 2500
anim = 2203
id = 2203
pos = 80, 220 ;floor(p2dist X),220
postype = left
bindtime = -1
facing = 1
sprpriority = 2
ontop = 1
ownpal = 0

[State 2600, SetFatal]
type = Varset
trigger1 = Time = 4
V = 4
value = 1

[State 2600, 2]
type = ChangeState
trigger1 = Time = 0
value = 0
ctrl = 1


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
pos = 156,90
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

;*************************FIREBALL BUST*************************
[Statedef 3380]
type    = S
movetype = A
physics = S
juggle  = 4
velset = 0,0
anim = 12069
ctrl = 0
sprpriority = 6

[State 3380, 1]
type = BGPalFX
trigger1 = time = 0
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 3380, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 1200, SuperRoar1]
type = PlaySnd
trigger1 = time = 10 
value = 1313, 11

[State 1200, SuperRoar2]
type = PlaySnd
trigger1 = time = 40 
value = 1313, 11

[State 1200, SuperRoar3]
type = PlaySnd
trigger1 = time = 70 
value = 1313, 11

[State 1200, SuperRoar4]
type = PlaySnd
trigger1 = time = 100 
value = 1313, 11

[State 1200, SuperRoar5]
type = PlaySnd
trigger1 = time = 130 
value = 1313, 11

[State 3010, Fire]
type = explod
trigger1 = Time = 20
anim = 1300
pos = -30,-130
postype = p1
ontop = 1

[State 3010, Fire2]
type = explod
trigger1 = Time = 60
anim = 1300
pos = -30,-130
postype = p1
ontop = 1

[State 3010, SuperLight2] 
type = Explod
trigger1 = Time = 20
anim = 227
pos = -30, -130
sprpriority = 9
postype = p1
bindtime = -1
ownpal = 1
ontop = 1

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 3380, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 1200, ZappySound]
type = PlaySnd
trigger1 = time = 140
value = 1313, 1

[State 20000, ZappySound]
type = PlaySnd
trigger1 = time = 160
value = 1313, 27

[State 1200, BoltFat]
type = Projectile
trigger1 = time = 160
sprpriority = -5
projanim = 12168
projhitanim = 1230
projremovetime = -1
postype 
offset = 30, -5
pos = 0, 90
velocity = 6, .2
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
damage    = 9999
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
hitflag = MAF
pausetime = 0,5
sparkno = -1
guard.sparkno = -1
hitsound   = s1313,0
guardsound = S1313,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 3
p1stateno = 9830
fall = 0

[State 9330, SetFatal]
type = Varset
trigger1 = Time = 4
V = 4
value = 1

[State 3380 , 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 4747, 9]
type = Changestate
trigger1 = AnimTime = 1
value = 0
ctrl = 1

[Statedef 4748]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9105, 6.6]
type = Explod 
trigger1 = time = 0
anim = 9999 
name = "MeatBit"
pos = 40,150
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9105, 6.7]
type = Explod 
trigger1 = time = 0
anim = 9990 
name = "MeatBit"
pos = 40,170
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 0
keyctrl = 0
ownpal = 1
under = 1

[State 4748, 0.3]
type = SprPriority
trigger1 = time = 0
value = 0

[State 4748, 2.6]
type = Posset
trigger1 = time = 6
Y = 900

[State 4748, NoBGM]
type = AssertSpecial
trigger1 = Time >= 9
flag = nokoslow

[State 4748, 3]
type = Lifeadd
trigger1 = Time = 9
Value = -9999

[State 9105, EndOfFAT]
type = Changestate
trigger1 = Animelem = 61
value = 9130
ctrl = 0


[Statedef 9101]
type    = S
movetype= I
juggle  = 0
anim = 9150
velset = 0,0,0
ctrl = 0

[State 9101, bindit]
type = ScreenBound
trigger1 = 1
value = 1
;MoveCamera= 1, 0

[State 9101, StartSnd1]
type = Playsnd
trigger1 = Time = 100
value = 4,6

;-----------------------------------------
; Player 2 gets all flashy and stuff...
[Statedef 9124]
type    = S
movetype= H
physics = N
velset = 0,0,0
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9124, Need to use the patch]
type = Explod
trigger1 = time >= 10
anim = 90001 
pos = 0,-70
postype = p1
ontop = 1

[State 9124, Flash]
type = PalFX
trigger1 = time = 0
time = 1000
add = 0, 0, 0
mul = 188, 355, 155
sinadd = 0, 90, 90, 7

[State 9106, EndOfFAT]
type = Changestate
trigger1 = Time = 300
value = 9125
ctrl = 0

;-----------------------------------------

; Player 2, you're outta here!!!!
[Statedef 9125]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 9125, Black]
type = BGPalFX
trigger1 = time = 3
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 9215, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9125, 0.3]
type = SprPriority
trigger1 = time = 0
value = 0

[State 9125, 2.6]
type = Posset
trigger1 = time = 2
Y = 900

[State 9125, OkayYouCanStop]
type = PalFX
trigger1 = time = 6
time = 1
add = 0, 0, 0
mul = 0, 0, 0

[State 9215, NoBGM]
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

[State 9130, 1.554]
type = Helper
trigger1 = Time = 0
stateno = 9200
name = "LotsaMeat"
postype = p2
pos = 0, const(size.mid.pos.y)
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 9130, 1.555]
type = Explod
trigger1 = Time = 0
anim = 6041
pos = 0,Var(24)
Postype = P2
bindtime = 1
sprpriority = 3

[State 9130, 1.556]
type = Explod
trigger1 = Time = 0
anim = 6041
pos = 0,(Var(24) / 2)
Postype = P2
bindtime = 1
sprpriority = 3

[State 9130, SetFatal]
type = Varset
trigger1 = Time = 4
V = 4
value = 1

[State 9130, 2]
type = destroyself 
trigger1 = Time >= 0 
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
trigger1 = Time = 0
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
trigger1 = time = 3
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 9830, Blood]
type = Explod
trigger1 = time = 1
anim = 6041
id = 6041
offset = 0, -50
pos = 0, -50
postype = p2
sprpriority = 7
ontop = 1
ownpal = 1

[State 9830, GoBoom]
type = TargetState
trigger1 = Time = 0
Value = 9125
pos = 170,0

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

[State 22237, SetFatal]
type = Varset
trigger1 = Time = 4
V = 4
value = 1

[State 9830, 1.555]
type = Helper
trigger1 = Time = 0
stateno = 9200
name = "LotsaMeat"
postype = p2
pos = 0, const(size.mid.pos.y)
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 9830, 1.555]
type = Explod
trigger1 = Time = 0
anim = 6041
pos = 0,Var(24)
Postype = P2
bindtime = 1
sprpriority = 3

[State 9830, 1.555]
type = Explod
trigger1 = Time = 0
anim = 6041
pos = 0,(Var(24) / 2)
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
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 9833]
type    = S
movetype= A
physics = N
velset = 0,0
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
pos = 0, const(size.mid.pos.y)
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 9130, 1.555]
type = Explod
trigger1 = Time = 0
anim = 6041
pos = 0,Var(24)
Postype = P2
bindtime = 1
sprpriority = 3

[State 9130, 1.555]
type = Explod
trigger1 = Time = 0
anim = 6041
pos = 0,(Var(24) / 2)
Postype = P2
bindtime = 1
sprpriority = 3

[State 9130, SetFatal]
type = Varset
trigger1 = Time = 4
V = 4
value = 5

[State 9105, GoBoom]
type = TargetState
trigger1 = AnimTime = 0
Value = 9125
pos = 170,0

[State 9101, Oopsie]
type = TargetLifeAdd
trigger1 = AnimTime = 0
value = -9999

[State 9106, EndOfFAT]
type = Changestate
trigger1 = AnimTime = 0
value = 9130
ctrl = 0


;--------------------------------
; Measure Player Two
[StateDef 9200]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9150
ctrl = 0

[State 9200, Black]
type = BGPalFX
trigger1 = time = 3
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 9200, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9200, 5]
type = HitDef
trigger1 = Time = 0
attr = S, HA
numhits = 0
priority  = 7
sparkno = -1
guard.sparkno = -1
p2stateno = 9125
kill = 0

[State 9200, head]
type = BindtoTarget
trigger1 = time = 1
pos = 0,0,head
time = 1

[State 9200, Where]
type = ParentVarSet
trigger1 = time = 1
v = 24
value = Pos Y

[State 9200, mid]
type = BindtoTarget
trigger1 = time = 2
pos = 0,0,mid
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

[State 9201, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9201, 10]
type = Helper
trigger1 = Random < 300
stateno = 9211
name = "Skull"
pos = 0,0
postype = p2 ;p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 10]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 20]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 30]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 10]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 20]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 10]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 20]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 30]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 10]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 20]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 30]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 10]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 20]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 30]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 40]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 50]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 60]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 70]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 80]
type = Helper
trigger1 = 1
stateno = 9210
name = "MeatBit"
pos = 0,0
postype = p2 ;p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, done]
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

[State 9210, AssertSpecial1]
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
value = Var(11)

[State 9210, GO]
type = VelSet
trigger1 = Time = 0
X = 3.4-(Random/144)
Y = -4-(Random/99)

[State 9210, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
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

[State 9211, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9211, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = 9106

[State 9211, GO]
type = VelSet
trigger1 = Time = 0
X = 5-(Random/88)
Y = -4-(Random/99)

[State 9211, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
type = VelAdd
y = .4

[State 9211, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
value = -14

[State 9211, 0.5]
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

;-------------------------
; P2 Go BOOM!
[StateDef 9330]
type    = S
movetype= A
physics = N
ctrl = 0
anim = 9330

[State 9330, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9330, RemArm]
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
pos = 36, -81
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

[State 9330, Dropum]
type = TargetState
trigger1 = Time = 4
ctrl = 0
value = 9399

[State 9330, 1.555]
type = Explod
trigger1 = Time = 5
anim = 6041
pos = 36, -121
Postype = P1
bindtime = 1
sprpriority = 3

[State 9330, 1.555]
type = Explod
trigger1 = Time = 5
anim = 6041
pos = 36, -81
Postype = P1
bindtime = 1
sprpriority = 3

[State 9330, 1.555]
type = Explod
trigger1 = Time = 5
anim = 6041
pos = 36, -41
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

[State 9340, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9340, 10]
type = Helper
trigger1 = Time = 0
stateno = 9341
name = "Skull"
pos = 0,0
postype = p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9340, 10]
type = Helper
trigger1 = Time = 0
trigger1 = Time = 4
stateno = 9342
name = "Hand"
pos = 0,0
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9340, 20]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9343
name = "BONE"
pos = 0,0
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9340, 20]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9343
name = "BONE"
pos = 0,0
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9340, 30]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9344
name = "Guts"
pos = 0,0
postype = p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9340, 10]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9345
name = "Hip"
pos = 0,0
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9340, 20]
type = Helper
trigger1 = 1
trigger1 = Time = 0
trigger2 = Time = 4
;trigger1 = Var(12) = 0
stateno = 9346
name = "Leg"
pos = 0,0
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9340, 30]
type = Helper
trigger1 = 1
;trigger1 = Var(12) = 0
stateno = 9347
name = "MEAT"
pos = 0,0
postype = p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9340, 10]
type = Helper
trigger1 = Time = 0
trigger2 = Time = 4
;trigger1 = Var(12) = 0
stateno = 9348
name = "InvLeg"
pos = 0,0
postype = p1
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9340, done]
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

[State 9342, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = 9100

[State 9342, GO]
type = VelSet
trigger1 = Time = 0
X = 2.6-(Random/188)
Y = -4-(Random/99)

[State 9342, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
type = VelAdd
y = .4

[State 9342, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
value = -14

[State 9342, 0.5]
type = AngleDraw
trigger1 = Time >= 1

[State 9342, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9342, Halt]
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

[State 9343, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = 9101

[State 9343, GO]
type = VelSet
trigger1 = Time = 0
X = 2.6-(Random/188)
Y = -4-(Random/99)

[State 9343, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
type = VelAdd
y = .4

[State 9343, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
value = -14

[State 9343, 0.5]
type = AngleDraw
trigger1 = Time >= 1

[State 9343, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9343, Halt]
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

[State 9344, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = 9102

[State 9344, GO]
type = VelSet
trigger1 = Time = 0
X = 2.6-(Random/188)
Y = -4-(Random/99)

[State 9344, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
;trigger1 = Vel Y != 0
type = VelAdd
y = .4

[State 9344, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
;trigger1 = Vel Y < 0
value = -14

[State 9344, 0.5]
type = AngleDraw
trigger1 = Time >= 1
;trigger1 = Pos Y <= -7
;trigger1 = Vel Y < 0

[State 9344, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9344, Halt]
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

[State 9345, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = 9103

[State 9345, GO]
type = VelSet
trigger1 = Time = 0
X = 2.6-(Random/188)
Y = -4-(Random/99)

[State 9345, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
;trigger1 = Vel Y != 0
type = VelAdd
y = .4

[State 9345, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
value = -14

[State 9345, 0.5]
type = AngleDraw
trigger1 = Time >= 1

[State 9345, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9345, Halt]
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

[State 9346, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = 9104

[State 9346, GO]
type = VelSet
trigger1 = Time = 0
X = 2.6-(Random/188)
Y = -4-(Random/99)

[State 9346, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
type = VelAdd
y = .4

[State 9346, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
value = -14

[State 9346, 0.5]
type = AngleDraw
trigger1 = Time >= 1

[State 9346, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9346, Halt]
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

[State 9347, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = 9105

[State 9347, GO]
type = VelSet
trigger1 = Time = 0
X = 2.6-(Random/188)
Y = -4-(Random/99)

[State 9347, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
;trigger1 = Vel Y != 0
type = VelAdd
y = .4

[State 9347, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
;trigger1 = Vel Y < 0
value = -14

[State 9347, 0.5]
type = AngleDraw
trigger1 = Time >= 1
;trigger1 = Pos Y <= -7
;trigger1 = Vel Y < 0

[State 9347, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9347, Halt]
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

[State 9348, Draw]
type = ChangeAnim
trigger1 = Time = 0
value = 9114

[State 9348, GO]
type = VelSet
trigger1 = Time = 0
X = 2.6-(Random/188)
Y = -4-(Random/99)

[State 9348, Gravity]
trigger1 = Time >= 0
trigger1 = Pos Y <= -7
type = VelAdd
y = .4

[State 9348, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
value = -14

[State 9348, 0.5]
type = AngleDraw
trigger1 = Time >= 1


[State 9348, HitGroundSound]
type = PlaySnd
trigger1 = Pos Y > -7
trigger1 = Vel Y > 0
value = 1, 5

[State 9348, Halt]
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
pos = 40,170
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
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
poweradd = 20   

[State 9400, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

;[State 9400, Super]
;type = SuperPause
;trigger1 = AnimElem = 1
;pos = -9940, -19940
;anim = 100
;sound = S4, 3
;poweradd = -2888

[State 9400, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 9400, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 9400, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9400, ChangeAnim]
type = ChangeAnim
trigger1 = time = 100
value = 20 

[State 9400, 1]
type = velset
trigger1 = time >= 0
trigger1 = anim = 20 
x = 2.5

[State 9400,3]
type = ChangeState
trigger1 = p2bodydist X < 13
value = 9401



;--------------------------------------
;----THE PIT--------------
;--------------------------------------

[Statedef 9401]
type    = S
movetype= A
juggle  = 1
anim = 0
velset = 0, 0
ctrl = 0

[State 9401, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9401, Spikes]
type = PlaySnd
trigger1 = Time = 5
trigger2 = Time = 9
value = 20,30

[State 9401, Spikey]
type = Explod
trigger1 = Time = 5
anim = 9400
pos = 3, 0
Postype = Left
bindtime = 1
sprpriority = -1
ownpal = 1

[State 9401, Spikey2]
type = Explod
trigger1 = Time = 5
anim = 9401
pos = 3, 0
Postype = Left
bindtime = 1
sprpriority = 1
ownpal = 1

[State 9401, 5]
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
trigger1 = time = 50
value = 9494  

[State 9401, PitHit]
type = HitDef
trigger1 = time > 1
attr = S, HA
damage    = 50,5
hitsound = S20,31
priority  = 7
sparkno = -1
guard.sparkno = -1
kill = 0
p1stateno = 431 
p2stateno = 9405
id = 6040

[State  9401, Var]
type = Varset
trigger1 = time = 1
V = 4
value = 1

[State 9401, stand]
type = Changestate
trigger1 = stateno = 431 ;AnimTime = 0
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

[State 9402, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9402, 0.3]
type = SprPriority
trigger1 = time = 0
value = 2

;----
[State 9402, 3.5]
type = Helper
trigger1 = Time = 0
stateno = 6040
name = "UPPERCUT"
id = 6040
pos = 57,-74
postype = P1
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1
;--------

[State 9402, SetPit]
type = Varset
trigger1 = Time = 4
V = 4
value = 2

[State 9402, 2]
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

[State 9403, AssertSpecial1]
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

[State 9404, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9404, ca-chunk]
type = PlaySnd
trigger1 = Time = 0
value = 1,3

[State 9404, groan]
type = PlaySnd
trigger1 = Time = 0
value = 3,7

[State 9404, 1.555]
type = Explod
trigger1 = Time = 0
anim = 6041
pos = 0, 0
Postype = P1
bindtime = 1
sprpriority = 3

[State 9404, 3.5]
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
pos = Var(22), 0
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
pos = Var(22), 0
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

[State 9405, AssertSpecial1]
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

[State 9405, 2]
type = Selfstate
trigger1 = time = 105
value = 5150

;----------Impaler----------
;----------Impaler----------
;Player 1 does the motions
[Statedef 8910]
type = S
movetype= A
physics = N
ctrl = 0
anim = 8910

[State 8910, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 8910, NotFriendly]
type = VarSet
trigger1 = Time = 0
v = 5
value = 1

[State 8910, 0]
type = SprPriority
trigger1 = Time = 0
value = -1

[State 8910, Rise1]
type = TargetBind
trigger1 = time = 1 
pos = 37, -59
bindtime = 1

[State 8910, Rise2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 37, -79
bindtime = 1

[State 8910, Lift]
type = TargetBind
trigger1 = AnimElem = 3
pos = 34, -89
bindtime = 1

[State 8910, Heave]
type = TargetBind
trigger1 = AnimElem = 4
pos = 26, -102
bindtime = 1

[State 8910, Over]
type = TargetBind
trigger1 = AnimElem = 5
pos = 19, -117
bindtime = 1

[State 8910, HUU]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4, 12

[State 8910, Pressed]
type = TargetBind
trigger1 = AnimElem = 6
pos = 4, -112
bindtime = 1

[State 8910, Left]
type = Helper
trigger1 = AnimElemtime(5) = 30 
stateno = 6000
name = "Blood Left"
pos = -50, 50
postype = P2
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 8910, Right]
type = Helper
trigger1 = AnimElemtime(5) = 20 
stateno = 6002
name = "Blood Right"
pos = 50, 50
postype = P2
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 8910, Pressed]
type = explod
trigger1 = AnimElemtime(5) >= 0 && AnimElemtime(5) < 20
anim = 1230
postype = p2
pos = -50, 50
bindtime = -11
facing = random-500
vfacing = random-500
random = random / 50,random / 100
scale = random/1000.0,random/1000.0
ontop = 1
vel = 2*random/1000.0,2*random/1000.0
accel = 2*random/1000.0,2*random/1000.0
removetime = -2

[State 8910, Toss] ; <----- sends player 2 into state 921, without using a hitdef
type = TargetState
trigger1 = AnimElem = 7, = 0
value = 8921
ctrl = 0

[State 8910, kill P2]
type = HitDef
trigger1 = time = 78
attr = S, HA
hitflag = HLAFD
damage    = 500,5
priority  = 7
kill       = 1
fall.kill  = 1
guard.kill = 1

[State 8910, 2]
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
pos = 0,0
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
pos = 160,150
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
pos = 160,150
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

;-----------------------------------------
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
pos = 0,0
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
pos = 0, 6
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
pos = 0,0
postype = P2
helpertype = normal
sprpriority = 2
keyctrl = 0
ownpal = 0
under = 1

[State 9422, 3.5]
type = DestroySelf
trigger1 = MoveHit = 1

[State 9422, 2]
type = Selfstate
trigger1 = Time > 300
value = 5150

;--------------------
[Statedef 9425]
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

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

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

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

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
trigger1 = Time > 200
Value = -9999

[State 9427, 2]
type = Selfstate
trigger1 = Time > 200
value = 5150

;--------------------
[Statedef 9428]
type    = A
movetype= H
physics = N
juggle  = 1
velset = 0, 10
ctrl = 0

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

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
pos = 57,-74
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

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

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
pos = 0,0
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
pos = 0,0
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
pos = 0,0
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

;p2's state
[Statedef 9104]
type = S
movetype= H
physics = S
velset = 0,0

[State 9104, 0.1]
type = Changeanim
trigger1 = (anim != 5300) && ( animexist(5300))
value = 5300

[State 9104, 1]
type = Changeanim2
trigger1 = (!animexist(5300)) && (anim != 9010)
value = 9010

;------------------------------------------------------------------------

[Statedef 9106]
type    = S
movetype= H
physics = S
velset = 0,0

[State 9106, Love Hurts but Fatalities hurt worse]
type = LifeAdd
trigger1 = 1
value = -9999

[State 9106, Go Bye Bye]
type = SelfState
trigger1 = 1
value = 5150

;---------------------------------------------------------------------------
;Babality Fatality

[Statedef 9102]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
poweradd = 20   

[State 3380, 1]
type = BGPalFX
trigger1 = time = 0
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 3380, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 3380, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 5112, ChangeAnim]
type = ChangeAnim
trigger1 = time = 100
value = 20 

[State 5112, 1]
type = velset
trigger1 = time >= 0
trigger1 = anim = 20 
x = 2.2

[State 5112,3]
type = ChangeState
trigger1 = p2bodydist X > 60 && p2bodydist X < 70
value = 9103

[Statedef 9103]
type = S
movetype = A
physics = N
velset = 0,0
anim = 4431
ctrl = 0

[State 9101, 1]
type = BGPalFX
trigger1 = time = 0
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 9102, SetFatal]
type = VarSet
trigger1 = time = 0
v = 4
value = 1

[State 9101, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 182, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 2400, BoltFat]
type = Projectile
trigger1 = time = 1
projanim = 4431
postype 
offset = 0, 0
velocity = 0, 0
remvelocity = 0, 0
attr = S, SP
damage    = 9999
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,3
sparkno = -1
guard.sparkno = -1
hitsound   = s4,21
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
p2stateno = 2500
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 3

[State 2500, 1]
type = Explod
trigger1 = projcontact = 1
trigger1 = p2stateno = 2500
anim = 89895 
id = 98985
pos = 990,990
postype = p1
bindtime = -1
facing = 1
sprpriority = 2
ontop = 0 ;1
ownpal = 0

[State 9102, measure]
type = Varset
trigger1 = time = 0
var(33) = floor(p2bodydist x)

[State 9102, Die]
type = TargetLifeAdd
trigger1 = AnimElem = 5
value = -9999

;[State 9100, Fire]
;type = Playsnd
;trigger1 = Time = 5
;value = 4,21

[State 9102, Smoookin]
type = Explod
trigger1 = time = 20
anim = 3385
pos = (var(33)+10), 0
postype = p1
bindtime = -1
sprpriority = 2
shadow = -1
ownpal = 1

[State 9102, Baby Cry]
type = Playsnd
trigger1 = Time = 120
value = 4,5

[State 9105, Babality]
type = Playsnd
trigger1 = Time = 300
value = 5,0

[State 9105, Weak]
type = Playsnd
trigger1 = Time = 50
value = 1313,5

[State 9105, Laugh]
type = Playsnd
trigger1 = Time = 243
value = 1313,15

[State 12071, Swing]
type = PlaySnd
trigger1 = time = 388
value = 1313, 1 

[State 12071, 1]
type = Helper
trigger1 = Time = 1
stateno = 6650
name = "BloodPuddle3"
id = 6650
pos = 110,-10
postype = P1
helpertype = normal
sprpriority = -8
keyctrl = 0
ownpal = 0

[State 12071, Smash]
type = PlaySnd
trigger1 = Time = 390
value = 1,3 

[State 3300, 1]
type = EnvShake
trigger1 = Time = 390
freq = 205
time = 15
ampl = -8

[State 12071, 1]
type = Helper
trigger1 = Time = 390
stateno = 6040
name = "BloodSpurt"
id = 6040
pos = 110,-10
postype = P1
helpertype = normal
sprpriority = 3
keyctrl = 0
ownpal = 0

[State 12071, 3]
type = Helper
trigger1 = Time = 390
stateno = 6040
name = "UPPERCUT"
id = 6040
pos = 110,-74
postype = P1
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 9102, Ewww... mushy]
type = helper
trigger1 = time = 300
postype = p1
pos = (var(33)-30),-1700
facing = 1
stateno = 9105
helpertype = normal

[State 9102, End]
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

[State 9106, Love Hurts but Fatalities hurt worse]
type = LifeAdd
trigger1 = 1
value = -9999

[State 9106, Go Bye Bye]
type = SelfState
trigger1 = 1
value = 5150

;---------------------------------------------------------------------------
