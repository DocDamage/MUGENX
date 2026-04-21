;=================================================================
;***********************FATALITIES!*******************************
;=================================================================

;Blades
[Statedef 4241]
type    = S    
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
poweradd = 20   

[State 4241, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 4241, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 4241, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 4241, ChangeAnim]
type = ChangeAnim
trigger1 = time = 30
value = 20 

[State 4241, 0]
type = velset
trigger1 = time >= 0
trigger1 = anim = 20 
x = 2.5

[State 4241,2]
type = PlaySnd
trigger1 = Time = 60
value = 4000,11

[State 4241, ChangeAnim2]
type = ChangeState
trigger1 = p2bodydist X > 70 && p2bodydist X < 80
value = 4242

[StateDef 4242]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 4241
sprpriority = 5

[State 4242, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 4242, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 4242, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 4242, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 4242, Super C]
type = PowerAdd
trigger1 = Time = 1
value = -2000

[State 4242, SetFatal]
type = Varset
trigger1 = Time = 4
V = 4
value = 1

[State 4242, Blades]
type = playsnd
trigger1 = time = 93
value = S20,30

[State 4242, Blade 1]
type = Projectile
trigger1 = time = 90
projanim = 4242
projid = 131302
projremove = 0
postype = p1
offset = 85, 0
velocity = 0, 0
remvelocity = 0, 0
; HitDef part of projectile info
ProjHits = 90
projmisstime = 7
attr = S, SP
damage    = 9999
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,30
sparkno = -1
guard.sparkno = -1
hitsound   = s20,24
guardsound = s1313,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 16
ground.velocity = 0, 0
air.velocity = 0, 0
envshake.time = 80
envshake.freq = 190
envshake.ampl = -2
fall = 1

[State 8850, Blood]
type = Explod
trigger1 = time = 0
anim = 9997
name = "Blood Puddle"
pos = 0,0
postype = P2
sprpriority = -9
ownpal = 1
under = 1

[State 8850, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

[Statedef 2197]
type    = S
movetype= I
physics = S
ctrl = 0

[State 2197, Blood]
type = Explod
trigger1 = time = 0
anim = 6015
name = "Punch Blood"
pos = -7,-115
postype = P2
sprpriority = 0
ownpal = 0
under = 1

[State 2197, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;Brutaility
[Statedef 22236]
type    = S    
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
poweradd = 20   

[State 3601, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 3601, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

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
trigger1 = time = 30
value = 20 

[State 22236, 0]
type = velset
trigger1 = time >= 0
trigger1 = anim = 20 
x = 2.5

[State 22236, Brutality]
type = PlaySnd
trigger1 = Time = 40
value = 90210,0
volume = 255

[State 22236,2]
type = PlaySnd
trigger1 = Time = 60
value = 4000,11

[State 22236, ChangeAnim2]
type = ChangeState
trigger1 = p2bodydist X > 1 && p2bodydist X < 5
value = 22237

[StateDef 22237]
Type = S
Movetype = A
Physics = S
juggle = 4
poweradd = 50
Anim = 90210
ctrl = 0

[State 22237, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

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

[State 22237, Shadow]
type = AfterImage
trigger1 = time = 1
FrameGap = 7
length = 70
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1
time = 90

[state 22237, 1]
type = hitdef
trigger1 = AnimElem = 4 
trigger2 = animelem = 11
trigger3 = AnimElem = 16 
trigger4 = animelem = 17
trigger5 = animelem = 18
trigger6 = animelem = 23
trigger7 = animelem = 28
trigger8 = animelem = 29
trigger9 = animelem = 30
trigger10 = animelem = 33
trigger11 = animelem = 34
trigger12 = animelem = 35
trigger13 = animelem = 40
trigger14 = animelem = 46
trigger15 = animelem = 47
trigger16 = animelem = 48
trigger17 = animelem = 54
trigger18 = animelem = 59
trigger19 = animelem = 60
trigger20 = animelem = 61
trigger21 = animelem = 66
trigger22 = animelem = 71
trigger23 = animelem = 72
trigger24 = animelem = 73
trigger25 = animelem = 76
trigger26 = animelem = 77
trigger27 = animelem = 78
trigger28 = animelem = 83
trigger29 = animelem = 89
trigger30 = animelem = 90
attr = S, HA
animtype  = light
priority  = 2
persistent = 2
guardflag = A
damage = 0
sparkxy = -5,-100
hitsound   = s27,27
guardsound = s0,0
pausetime = 1,35
ground.type = high
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall.recover = 0

[state 22237, 2]
type = hitdef
trigger1 = AnimElem = 96
attr = S, HA
animtype  = light
priority  = 2
persistent = 2
guardflag = A
damage = 9999
sparkxy = -5,-100
hitsound   = s27,27
guardsound = s0,0
pausetime = 1,35
ground.type = high
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = 0
fall.recover = 0
kill = 1
p1stateno = 9830

[State 22237, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 22237, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0


;BOMB STRAP
[Statedef 3601]
Type = S
Movetype = A
Physics = S
juggle = 4
poweradd = 50
anim = 3601
ctrl = 0

[State 3601, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 3601, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 3601, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 3601, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 3601, Fire]
type = Playsnd
trigger1 = Time = 25
value = 20,3

[State 3601, Fire Explode]
type = Explod
trigger1 = time = 25
anim = 5116
id = 5116
pos = 0, 0
postype = p2
sprpriority = 7
ontop = 1

[State 3601, Var]
type = Varset
trigger1 = time = 0
V = 4
value = 1

[State 3601, Blowup1]
type = Projectile
trigger1 = time = 26 
projanim = 51533
postype = p2
pos = 0, 0
velocity = 0, 0
sprpriority = 1
; HitDef part of projectile info
attr = S, SP
damage = 0
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,400
sparkno = -1
guard.sparkno = -1
hitsound   = s1, 3 
guardsound = S1, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 16
ground.velocity = -1, -1
air.velocity = -1,-1
air.juggle = 5

[State 3601, Blowup]
type = Projectile
trigger1 = time = 26 
projanim = 5153
postype = p2
projid = 131302
pos = 0, 0
velocity = 0, 0
sprpriority = 4
; HitDef part of projectile info
attr = S, SP
damage = 9999
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound   = s1313, 9 
guardsound = S1, 0
ground.type = High
ground.slidetime = 5
ground.hittime  = 16
ground.velocity = -1, -1
air.velocity = -1,-1
air.juggle = 5
fall = 1
p1stateno = 9830
envshake.time = 40
envshake.freq = 200
envshake.ampl = 8

[State 3601, SetFatal]
type = Varset
trigger1 = Time = 4
V = 4
value = 1

[State 3601, Countdown]
type = playsnd
trigger1 = time = 205
trigger2 = time = 235
trigger3 = time = 265
trigger4 = time = 295
value = s20, 31

[State 3601, 9]
type = Changestate
trigger1 = Animtime = 1
value = 0
ctrl = 1


;*************************Bombed*************************
[Statedef 1314]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
anim = 131401
ctrl = 0

[State 1314, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 1314, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 1314, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 1314, 1]
type = EnvShake
trigger1 = Time = 1
time = 167
freq = 225
ampl = -3

[State 1314, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 1314, DaDaDa]
type = Playsnd
trigger1 = Time = 20
value = 20,16

[State 1314, DaDaDa]
type = Playsnd
trigger1 = Time = 167
value = 31,37

[State 1314, Shakin Bomb]
type = Explod
trigger1 = time = 20
anim = 131307
id = 131307
pos = 50, -85
offset = 0, 0
postype = p1
sprpriority = 7
ontop = 1

[State 1314, Bomb]
type = Projectile
trigger1 = time = 167
projanim = 131303
projid = 131302
postype 
offset = 50, -85
velocity = 7, 0
 HitDef part of projectile info
attr = S, SP
damage    = 9999
animtype = Hard
air.animtype = Back
guardflag = MA
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
hitsound   = s1313,9
guardsound = S1, 0
ground.type = High
ground.slidetime = 50
ground.hittime  = 0
ground.velocity = -8
air.velocity = -2.5,-5
kill = 1
fall = 0
p1stateno = 9830
;p2stateno = 2500 ;use this to end fatal and remove opponent
envshake.time = 40
envshake.freq = 200
envshake.ampl = 8

[State 1314, SetFatal]
type = Varset
trigger1 = Time = 4
V = 4
value = 1

[State 1314, 9]
type = Changestate
trigger1 = AnimTime = 1
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

[State 2500, AssertSpecial1]
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
trigger1 = time = 0
Y = 900

[State 2500, OkayYouCanStop]
type = PalFX
trigger1 = time = 0
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

[State 2500, 3]
type = Selfstate
trigger1 = time = 5
value = 5150
ctrl = 1


;-----------------------------------------
; Player 1, You do the blow-up
[Statedef 2600]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9210
ctrl = 0

[State 2600, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 2600, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 2600, 0.3]
type = SprPriority
trigger1 = time = 0
value = 2

[State 2600, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 1,5

[State 2600, 1]
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

[State 9011, NoSlow]
type = AssertSpecial
trigger1 = time = [0, 5000]
flag = nokoslow

[State 9011, 2]
type = Lifeadd
trigger1 = time = 1
value = -9999

[State 9011, 3]
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

[State 9124, AssertSpecial1]
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

[State 9124, EndOfFAT]
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

[State 9130, AssertSpecial1]
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
flag2 = nokoslow

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

[State 9833, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9833, BOOM]
type = Playsnd
trigger1 = Time = 4
value = 4,21

[State 9833, 0.3]
type = SprPriority
trigger1 = time = 0
value = 2

[State 9833, 1.555]
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

[State 9833, 1.555]
type = Explod
trigger1 = Time = 0
anim = 6041
pos = 0,Var(24)
Postype = P2
bindtime = 1
sprpriority = 3

[State 9833, 1.555]
type = Explod
trigger1 = Time = 0
anim = 6041
pos = 0,(Var(24) / 2)
Postype = P2
bindtime = 1
sprpriority = 3

[State 9833, SetFatal]
type = Varset
trigger1 = Time = 4
V = 4
value = 5

[State 9833, GoBoom]
type = TargetState
trigger1 = AnimTime = 0
Value = 9125
pos = 170,0

[State 9833, Oopsie]
type = TargetLifeAdd
trigger1 = AnimTime = 0
value = -9999

[State 9833, EndOfFAT]
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

[State 9380, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9380, OW]
type = ChangeAnim2
trigger1 = time = 0
value = 1350

[State 9380, 6.7]
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

[State 9400, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = -9940, -19940
anim = 100
sound = S4, 3
poweradd = -2888

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
trigger1 = time = 0
value = 9494  

[State 9401, PitHit]
type = HitDef
trigger1 = time > 1
attr = S, HA
damage    = 50,5
hitsound = S20,32
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

[State 9415, AssertSpecial1]
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

[State 9416, AssertSpecial1]
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

[State 9417, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9417, 2.6]
type = Posset
trigger1 = time = 0
Y = 900

[State 9417, Fall]
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

[State 9417, Splat]
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

[State 9417, 3]
type = Lifeadd
trigger1 = time = 20
Value = -9999

[State 9417, 2]
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

[State 9421, AssertSpecial1]
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

[State 9422, AssertSpecial1]
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

[State 9422, SetPit]
type = Varset
trigger1 = Time = 4
V = 4
value = 2

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

[State 9425, AssertSpecial1]
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

[State 9426, AssertSpecial1]
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

[State 9427, AssertSpecial1]
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

[State 9428, AssertSpecial1]
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
; Player 1, You do the PIT
[Statedef 9431]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9210
ctrl = 0

[State 9431, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9431, 5]
type = Helper
trigger1 = Time = 0
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

[State 9431, 5]
type = Helper
trigger1 = Time = 0 
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

;--------------------
[Statedef 9435]
type    = A
movetype= H
physics = N
juggle  = 1
velset = 0, 0
ctrl = 0

[State 9435, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9425, bindit]
type = ScreenBound
trigger1 = 1
value = 1
MoveCamera= 0, 0

[State 9435, NoSlow]
type = AssertSpecial
trigger1 = Time >= 0
flag = nokoslow
flag2 = noshadow

[State 9435, 2.6]
type = Posset
trigger1 = time = 0
Y = 900

[State 9435, 3]
type = Lifeadd
trigger1 = time = 0
Value = -9999

[State 9435, 2]
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

[State 9441, AssertSpecial1]
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

[State 8110, move]
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

[State 8111, AssertSpecial1]
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

[State 8111, 3]
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

[State 8112, 3]
type = ChangeState
trigger1 = Pos Y >= 0
value = 8113


[Statedef 8113]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 8113, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 8113, move2]
type = posset
trigger1 = time = 0
Y = 0

[State 8113, 2]
type = changeanim
trigger1 = time = 0
value = 170
ctrl = 0

[State 8113, Defeat]
type = Explod
trigger1 = time = 0
trigger1 = AnimExist(170)
anim = 170
pos = 0,0
postype = p1
bindtime = 1
removetime = -1
sprpriority = 3

[State 8113, Stun]
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

[State 8113, 1.555]
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

[State 8113, 2.6]
type = Posset
trigger1 = time = 3
Y = 900

[State 8113, 2]
type = Selfstate
trigger1 = time = 3
value = 5150

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

;----------------------------------------------------------------------

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

;--------------------------------------------------------------
