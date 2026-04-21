;==============================
;==========FATALITIES==========
;==============================

;Penguin
[Statedef 6052]
type    = S    
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
poweradd = 20 
sprpriority = 3

[State 6052, SetFatal]
type = Varset
trigger1 = Time = 1
V = 4
value = 1

[State 6052, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 6052, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 6052, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 6052, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 6052, ChangeAnim]
type = ChangeAnim
trigger1 = time = 30
value = 20 

[State 6052, 0]
type = velset
trigger1 = time >= 0
trigger1 = anim = 20 
x = 2.5

[State 6052, ChangeAnim2]
type = ChangeAnim
trigger1 = p2bodydist X > 85 && p2bodydist X < 90
value = 0 

[State 6052,3]
type = ChangeState
trigger1 = time = 130
value = 6053

[StateDef 6053]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 19995
sprpriority = -3

[State 6053, 1]
type = explod
trigger1 = time = 20
anim = 3887
name = "Clone Form"
id = 3887
pos = 0,0
postype = p1
ownpal = 1
ontop = 1
sprpriority = 7

[State 6053, sound]
type = Playsnd
trigger1 = time = 0
value = 1313,0

[State 6053, Penguin]
type = Projectile
trigger1 = time = 20
projanim = 6052
projremove = 0
postype = p1
offset = 0, 0
velocity = 1, 0
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
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5

[State 6053, poop egg]
type = Playsnd
trigger1 = time = 130
value = 31,34

[State 6053, Egg]
type = Projectile
trigger1 = time = 130
projanim = 6053
postype = p2
offset = 5, 0
velocity = 0, 0
; HitDef part of projectile info
attr = S, SP
damage    = 99
animtype = Hard
air.animtype = Back
guardflag = HA
hitflag = HAF
pausetime = 0,20
sparkno = -1
guard.sparkno = -1
guardsound = S1, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
p1stateno = 9830

[State 6053, Didn't hit]
type = Destroyself
trigger1 = time = 900

[State 6053 , 3]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1


;Polar Bear
[Statedef 6652]
type    = S    
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
poweradd = 20   
sprpriority = 7

[State 6652, SetFatal]
type = Varset
trigger1 = Time = 1
V = 4
value = 1

[State 6652, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 6652, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 6652, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 6652, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 6652, Brutality]
type = PlaySnd
trigger1 = Time = 30
value = 20,34

[State 6652, ChangeAnim]
type = ChangeAnim
trigger1 = time = 30
value = 20 

[State 6652, 0]
type = velset
trigger1 = time >= 0
trigger1 = anim = 20 
x = 2.5

[State 6652, ChangeAnim2]
type = ChangeAnim
trigger1 = p2bodydist X > 1 && p2bodydist X < 5
value = 0 

[State 6652, Supereffect] 
type = Explod
trigger1 = time = 120
anim = 193
pos = 0, -30
sprpriority = 9
postype = p1
supermove = 1
ownpal = 1

[State 6652, Super1]
type = PlaySnd
trigger1 = time = 120
value = 1313,3

[State 6652,3]
type = ChangeState
trigger1 = time = 130
value = 6653

[StateDef 6653]
Type = S
Movetype = A
Physics = S
juggle = 4
poweradd = 50
Anim = 6054
ctrl = 0
sprpriority = 7

[State 6653,Gasp]
type = PlaySnd
trigger1 = Time = 10
value = 20,33

[State 6653, Bear1]
type = PlaySnd
trigger1 = Time = 20
value = 20,36

[State 6653, Bear2]
type = PlaySnd
trigger1 = time = 100
value = 20,35

[State 6653, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 6653, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 6653, SetFatal]
type = Varset
trigger1 = Time = 1
V = 4
value = 1

[State 6653, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 6653,hit]
type = PlaySnd
trigger1 = AnimElem = 5 
trigger2 = AnimElem = 7 
trigger3 = animelem = 23
trigger4 = animelem = 25
trigger5 = animelem = 27
trigger6 = animelem = 33
trigger7 = animelem = 35
trigger8 = animelem = 37
trigger9 = animelem = 39
trigger10 = animelem = 41
trigger11 = animelem = 43
trigger12 = animelem = 45
trigger13 = animelem = 47
trigger14 = animelem = 49
trigger15 = animelem = 51
value = 1,123

[State 6653,hit2]
type = PlaySnd
trigger1 = animelem = 6
trigger2 = animelem = 8
trigger3 = animelem = 12
trigger4 = animelem = 16
trigger5 = animelem = 20
trigger6 = animelem = 23
trigger7 = animelem = 27
trigger8 = animelem = 30
trigger9 = animelem = 33
trigger10 = animelem = 37
trigger11 = animelem = 41
trigger12 = animelem = 45
trigger13 = animelem = 49
value = 1,2

[state 6653, 1]
type = hitdef
trigger1 = AnimElem = 5 
trigger2 = animelem = 6
trigger3 = AnimElem = 7 
trigger4 = animelem = 8
trigger5 = animelem = 10
trigger6 = animelem = 12
trigger7 = animelem = 14
trigger8 = animelem = 16
trigger9 = animelem = 18
trigger10 = animelem = 20
trigger11 = animelem = 22
trigger12 = animelem = 23
trigger13 = animelem = 25
trigger14 = animelem = 27
trigger15 = animelem = 28
trigger16 = animelem = 30
trigger17 = animelem = 32
trigger18 = animelem = 33
trigger19 = animelem = 35
trigger20 = animelem = 37
trigger21 = animelem = 39
trigger22 = animelem = 41
trigger23 = animelem = 43
trigger24 = animelem = 45
trigger25 = animelem = 47
trigger26 = animelem = 49
trigger27 = animelem = 51
attr = S, NA
hitflag = HAD
animtype  = Back
damage = 9999
sparkxy = -9999,9999
guardsound = s0,0
pausetime = 0,300
ground.type = High
ground.slidetime = 50
ground.hittime  = 0
ground.velocity = 0, 0 
envshake.time = 5
envshake.freq = 200
envshake.ampl = -7
fall.recovertime = 999          
air.velocity = 0, 0
air.hittime = 12  
kill = 1
fall = 0

[State 6653, 3.5]
type = Helper
trigger1 = AnimElem = 5 
trigger2 = animelem = 6
trigger3 = AnimElem = 7 
trigger4 = animelem = 8
trigger5 = animelem = 10
trigger6 = animelem = 16
trigger7 = animelem = 18
trigger8 = animelem = 20
trigger9 = animelem = 22
trigger10 = animelem = 23
trigger11 = animelem = 25
trigger12 = animelem = 27
trigger13 = animelem = 30
trigger14 = animelem = 32
trigger15 = animelem = 33
trigger16 = animelem = 35
trigger17 = animelem = 41
trigger18 = animelem = 43
trigger19 = animelem = 45
trigger20 = animelem = 47
trigger21 = animelem = 49
trigger22 = animelem = 51
stateno = 6040
name = "UPPERCUT"
id = 6040
pos = 40,-40
postype = P1
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 6653, Puddle]
type = explod
trigger1 = animelem = 45
anim = 9997
pos = 0,-15
postype = p2
ownpal = 1
under = 1
ontop = 0
sprpriority = -9

[State 6653, Supereffect] 
type = Explod
trigger1 = time = 550
anim = 193
pos = 0, -60
sprpriority = 9
postype = p1
supermove = 1
ownpal = 1

[State 6653, Super2]
type = PlaySnd
trigger1 = time = 550
value = 1313,3

[State 6653, 11]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0


;Brutality
[Statedef 22236]
type    = S    
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
poweradd = 20   

[State 22236, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 22236, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 22236, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 22236, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 22236, Brutality]
type = PlaySnd
trigger1 = Time = 40
value = 90210,0
volume = 255

[State 22236, ChangeAnim]
type = ChangeAnim
trigger1 = time = 30
value = 20 

[State 22236, 0]
type = velset
trigger1 = time >= 0
trigger1 = anim = 20 
x = 2.5

[State 22236,2]
type = PlaySnd
trigger1 = Time = 60
value = 4000,11

[State 22236, ChangeAnim2]
type = ChangeAnim
trigger1 = p2bodydist X > 1 && p2bodydist X < 5
value = 0 

[State 22236,3]
type = ChangeState
trigger1 = time = 130
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

[State 22237, AssertSpecial2]
type = AssertSpecial
trigger1 = stateno = 22237
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
pausetime = 5,35
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
pausetime = 5,35
ground.type = high
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = 0
fall.recover = 0
kill = 1
p1stateno = 9830

[state 22237, 1h]
type = Helper
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
stateno = 6040
name = "Roundhouse"
pos = 40,-72
postype = P1
helpertype = normal
sprpriority = 0
keyctrl = 0
ownpal = 0

[State 22237, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0


;**************Blizzard**********

[Statedef 8100]
type    = S
movetype= A
juggle  = 1
anim = 696905
velset = 0, 0
ctrl = 0

[State  8100, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 8100, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 8100, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 8100, Var]
type = Varset
trigger1 = time = 1
V = 4
value = 1

[State 8100, Freeze]
type = Playsnd
trigger1 = Time = 3
value = 1313, 8
channel = 6

[State 8100, 1] ;blizzard
type = Playsnd
trigger1 = time = 20
value = 1313,7

[State  8100, 3]
type = BGPalFX
trigger1 = time = 2
time = 9999
add = -130, -130, -130
ignorehitpause

[State 8100, Snow1]
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
trigger12 = time = 130
trigger13 = time = 140
trigger14 = time = 150
trigger15 = time = 160
trigger16 = time = 170
trigger17 = time = 180
trigger18 = time = 190
trigger19 = time = 200
trigger20 = time = 210
trigger21 = time = 220
trigger22 = time = 235
trigger23 = time = 245
trigger24 = time = 255
trigger25 = time = 265
trigger26 = time = 275
trigger27 = time = 285
trigger28 = time = 295
trigger29 = time = 305
trigger30 = time = 315
time = 300
projanim = 51700
projremove = 0
sprpriority = 6
postype 
offset = -20, -80
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
air.juggle = 7
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 0
forcestand = 1

[State 8100, Snow2]
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
trigger12 = time = 130
trigger13 = time = 140
trigger14 = time = 150
trigger15 = time = 160
trigger16 = time = 170
trigger17 = time = 180
trigger18 = time = 190
trigger19 = time = 200
trigger20 = time = 210
trigger21 = time = 220
trigger22 = time = 230
trigger23 = time = 240
trigger24 = time = 250
trigger25 = time = 260
trigger26 = time = 270
trigger27 = time = 280
trigger28 = time = 295
trigger29 = time = 300
trigger30 = time = 310
time = 300
projremove = 0
projanim = 5169 ;snow blow
sprpriority = 2
postype 
offset = -20, -40
velocity = 8, .1
attr = S, SP
damage    = 9999
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
air.juggle = 7
p2stateno = 1005
fall = 0
forcestand = 1

[State 8100, Snow3]
type = Projectile
triggerall = p2stateno = 1005
trigger1 = time = 25
trigger2 = time = 35
trigger3 = time = 45
trigger4 = time = 55
trigger5 = time = 65
trigger6 = time = 75
trigger7 = time = 85
trigger8 = time = 95
trigger9 = time = 105
trigger10 = time = 115
trigger11 = time = 125
trigger12 = time = 135
trigger13 = time = 145
trigger14 = time = 155
trigger15 = time = 165
trigger16 = time = 175
trigger17 = time = 185
trigger18 = time = 195
trigger19 = time = 205
trigger20 = time = 215
trigger21 = time = 225
trigger22 = time = 235
trigger23 = time = 245
trigger24 = time = 255
trigger25 = time = 265
trigger26 = time = 275
trigger27 = time = 285
trigger28 = time = 295
trigger29 = time = 305
trigger30 = time = 315
time = 100
projanim = 5169 ;snow blow w/ hit
projremove = 0
sprpriority = -2
postype 
offset = -50, 0
velocity = 4.5, .1
attr = S, SP
damage    = 9999
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
air.juggle = 7
p2stateno = 4210
kill = 1
;PalFX
fall = 0

[State 8100, 3]
type = Helper
trigger1 = p2stateno = 4211
stateno = 41199
name = "IceMan"
id = 4113
pos = 0,0
postype = p2
helpertype = normal
sprpriority = 1
keyctrl = 0

[State 8100, 4]
type = explod
trigger1 = p2stateno = 4211
anim = 3886 ;ice burst
name = "IceMan Form"
id = 4114
pos = 0,-55
postype = p2
ownpal = 1
sprpriority = 7

[State 8100, 5]
type = PlaySnd
trigger1 = Time = 100
value = 1313, 4

[State  8100, 7]
type = Changestate
trigger1 = animtime = 0
ctrl = 1
value =  0 

;**************Ice Breath**********
[Statedef 5510]
type    = S
movetype= A
juggle  = 1
anim = 0 
velset = 0, 0
ctrl = 0

[State  5510, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 5110, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State  5110, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State  5510, Var]
type = Varset
trigger1 = time = 0
V = 4
value = 1

[State 5510, 1]
type = Playsnd
trigger1 = Time = 0
value = 2800,0

[State  5510, 2]
type = SuperPause
trigger1 = Time = 0
anim = -1
movetime = 10
time = 28

[State  5510, 3]
type = BGPalFX
trigger1 = time = 2
time = 9999
add = -130, -130, -130
ignorehitpause

[State  5510, 4]
type = Changestate
trigger1 = time = 70
value =  5111

;------------------------------------------------------------------------
;Blow a gust of Ice
[Statedef 5111]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 5222 ;shootice
ctrl = 0

[State 5111, 2]
type = PlaySnd
trigger1 = Time = 10
value = 1313, 0

[State 5111, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 5111, 3]
type = projectile
trigger1 = time = 35
projanim = 5223  ;ice shot
projhitanim = 5224 ;ice shot hit
offset = 11, 5
sprpriority = -5
pausetime = 0, 0 ;999
remvelocity = 0
damage   = 0
attr = S, SP
ground.type = High
hitsound = s1313,4
p2stateno = 1005
sparkxy = -9999,9999

[State 5111, Cube]
type = Helper
trigger1 = p2stateno = 1005
stateno = 5119
name = "Cube"
id = 5119
pos = 0,0
postype = p2
helpertype = normal
sprpriority = -1
keyctrl = 0

[State 5111, Effect]
type = explod
trigger1 = p2stateno = 1005
anim = 3886
name = "IceMan Form"
id = 4114
pos = 0,-55
postype = p2
ownpal = 1
sprpriority = 7

[State 5111, 2]
type = PlaySnd
trigger1 = Time = 100
value = 1313, 4

[State 5111, 6]
type = Changestate
trigger1 = p2stateno = 1005
value = 5112

[State 5111, 8]
type = Varset
trigger1 = time >= 150
V = 4
value = 0

[State 5111, 9]
type = Changestate
trigger1 = AnimTime = 0
value = 5112
ctrl = 1

;Walk up
[Statedef 5112]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
poweradd = 20   
sprpriority = 9

[State 5112, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 5112, ChangeAnim]
type = ChangeAnim
trigger1 = time = 100
value = 20 ;walk

[State 5112, 1]
type = velset
trigger1 = time >= 0
trigger1 = anim = 20 
x = 2

[State 5112,2]
type = PlaySnd
trigger1 = Time = 60
value = 4000,11

[State 5112,3]
type = ChangeState
trigger1 = p2bodydist X < 20
value = 5113
;ctrl = 0

; Break 'Em----------------------------------------------
[Statedef 5113]
type    = S                 state-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 0                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 443300
sprpriority = 9

[State 5113, 2]
type = PlaySnd
trigger1 = Time = 1
value = 4, 9
           
[State 5113, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 5113, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA                   
damage = 9999 
animtype = Heavy             
hitflag = MAF                    ;Flags of conditions that move can hit
pausetime = 0,0                  ;Time attacker pauses, time above)
sparkxy = -9999,9999               ;X-offset spark" rel. to p2,
hitsound = S9002,0                   ;Sound to play on hit
guardsound = 6,0                 ;Sound to  on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
p1stateno = 9830
fall = 0
kill = 1

[State 5113, No Cam Move]
type = ScreenBound
trigger1 = 1
value = 1

[State 3010, Ice]
type = explod
trigger1 = AnimElem = 3
anim = 5226
pos = 15,0
postype = p2

[State 5113, 4]
type = PlaySnd
trigger1 = Time = 1
value = 9000, 7

[State 5113, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Ice Cube---------------------------------------------------
[Statedef 5119]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 0                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0 
sprpriority = 7                      ;Set ctrl (Def: no change)
anim = 5225 ;ice cube   

[State 5119, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 5119, 1]
type = DestroySelf
trigger1 = time = 177
trigger2 = stateno = 5113
trigger2 = movehit = 1

;------------------------------------------------------------------------
;Enemy Hit by Ice
[Statedef 52100]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 52100, 2]
type = PlaySnd
trigger1 = Time = 1
value = 1313, 4

[State 52100, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 52100, 1-1]
type = Changeanim2
trigger1 = time >= 0
trigger1 = !SelfAnimExist(5300)
value = 9010

[State 52100, 1-2]
type = Changeanim
trigger1 = time >= 0
trigger1 = SelfAnimExist(5300)
value = 5300

[State 52100, 3]
type = Changestate
trigger1 = time >= 10
value = 5211

[State 52100, 4]
type = PosSet
trigger1 = time >= 1
Y = 0

;Enemy Freezes
[Statedef 5211]
type    = S
movetype= H
physics = N
velset = 0,0
anim = 5300
ctrl = 0

[State 5211, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 5211, 1-1]
type = Changeanim2
trigger1 = time >= 0
trigger1 = !SelfAnimExist(5300)
value = 9010

[State 5211, 1-2]
type = Changeanim
trigger1 = time >= 0
trigger1 = SelfAnimExist(5300)
value = 5300 ;?

[State 5211, 2]
type = PalFX
trigger1 = 1
add = 0,240,240
mul = 0,120,120
persistent = 1

[State 5211, 1]
type = ChangeState
trigger1 = time >= 24
value = 5212

;Frozen Enemy Waits.....
[Statedef 5212]
type    = S
movetype= H
physics = N
velset = 0,0
anim = 4112 ;invisible victim
ctrl = 0

[State 5212, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 5212, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 4112

;Hide player two
[Statedef 5213]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0
anim = 1015

[State 5213, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 5213, 1]
type = Changeanim2
trigger1 = time = 0
value = 1015 ;?

[State 5213, 2]
type = Posset
trigger1 = time = 1
Y = 900

[State 5213, 3]
type = Selfstate
trigger1 = time = 8
value = 5150
ctrl = 1

[Statedef 3337]
type = S
Physics = N

[State 3337, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 3337, CA2]
type = changeanim2
trigger1 = time > 0
value = 3337

[State 3337, DIE]
type = lifeadd
trigger1 = time = 164
value = -1000

[State 3337, MOVE]
type = posadd
trigger1 = time = 164
Y = -300

[State 3337, CLONE]
type = Explod
trigger1 = time = 164
anim = 130
name = "Clone"
pos = 25,0
postype = P2
facing = -1
sprpriority = -8
keyctrl = 0
ownpal = 0
under = 1
;scale = 1.5,.22

[State 3337, SS]
type = changestate
trigger1 = time = 164
value = 5150

[state 3337, state0]
type = changestate
trigger1 = time = 165
value = 0

[Statedef 3338]
type = S

[State 3338, CA2]
type = changeanim2
trigger1 = time = 0
value = 5020

[State 3338, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[Statedef 3339]
type = S

[State 3339, CA2]
type = changeanim2
trigger1 = time = 0
value = 5020

;-------------------Ice Bust---------------
[Statedef 4110]
type    = S
movetype= A
juggle  = 1
anim = 0 ;standing
velset = 0, 0
ctrl = 0

[State 4110, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 4110, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 4110, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 4110, Var]
type = Varset
trigger1 = time = 0
V = 4
value = 1

[State 4110, 1]
type = Playsnd
trigger1 = Time = 0
value = 2800,0

[State 4110, 2]
type = SuperPause
trigger1 = Time = 0
anim = -1
movetime = 10
time = 28

[State 4110, 3]
type = BGPalFX
trigger1 = time = 2
time = 9999
add = -130, -130, -130
ignorehitpause

[State 4110, 4]
type = Changestate
trigger1 = time = 64
value = 4111
ctrl = 1

;------------------------------------------------------------------------
;Throw a gust of Ice
[Statedef 4111]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 1222 ;shootice
ctrl = 0

[State 4111, 1]
type = PlaySnd
trigger1 = Time = 8
value = 1313, 0

[State 4111, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 4111,2]
type = explod
trigger1 = time = 17
trigger2 = time = 23
trigger3 = time = 29
trigger4 = time = 35
trigger5 = time = 41
anim = 2010 ;ice form
name = "Freeze Projectile Starter"
id = 2010
pos = 0,0 
postype = p1
sprpriority = 4

[State 4111, 3]
type = projectile
trigger1 = time = 37
trigger2 = time = 43
trigger3 = time = 49
trigger4 = time = 55
trigger5 = time = 61
trigger6 = time = 66
trigger7 = time = 71
projanim = 1220  ;ice shot
projhitanim = 1230 ;ice shot hit
offset = -5, 5
velocity = 9
remvelocity = 0
damage   = 0,0
attr = S, SP
ground.type = High
hitsound = 1313,4
p2facing = 1          ;Force p2 to face KFM
p2stateno = 4210
sparkno = -1

[State 4111, 4]
type = Helper
trigger1 = p2stateno = 4211
trigger1 = numhelper(4113) = 0
stateno = 4119
name = "IceMan"
id = 4113
pos = 0,0
postype = p2
helpertype = normal
sprpriority = -1
keyctrl = 0

[State 4111, 5]
type = explod
trigger1 = p2stateno = 4211
trigger1 = numexplod(4114) = 0
anim = 3886 ;ice burst
name = "IceMan Form"
id = 4114
pos = 0,-55
postype = p2
ownpal = 1
sprpriority = 7

[State 4111, 6]
type = PlaySnd
trigger1 = Time = 100
value = 1313, 4

[State 4111, 7]
type = Changestate
trigger1 = p2stateno = 4212
value = 4112

[State 4111, 8]
type = Varset
trigger1 = time >= 200
V = 4
value = 0

[State 4111, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

;Slide up and Get 'Em
[Statedef 4112]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
poweradd = 20   

[State 4112, 2]
type = PlaySnd
trigger1 = Time = 65
value = 4, 8

[State 4112, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 4112, ChangeAnim]
type = ChangeAnim
trigger1 = time = 50
value = 3000 ;slide

[State 4112, 1]
type = velset
trigger1 = time >= 0
trigger1 = anim = 3000
x = 7

[State 4112,2]
type = PlaySnd
trigger1 = Time = 60
value = 4000,11

[State 4112,3]
type = ChangeState
trigger1 = p2bodydist X < 16
value = 4113

; Break 'Em--------------------------------------------
[Statedef 4113]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 0                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 443300 ;shatter uppercut        ;Change animation (Def: no change)
;poweradd = 100   

[State 4113, 2]
type = PlaySnd
trigger1 = Time = 1
value = 4, 9
               
[State 4113, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 4113, 1]
type = HitDef
trigger1 = !Movecontact
attr = S, NA                 ;Attribute: Standing, Normal Attack
damage = 9999            ;Damage that move inflicts
animtype = Heavy            ;Animation type: Light, Medium, Heavy, Back (def: Light)
;guardflag = MA             ;Flags on how move is to be guarded against
hitflag = MAF               ;Flags of conditions that move can hit
priority = 3, Hit         ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,0        ;Time attacker pauses, time victim shakes
numhits = 1                   ;Number of hits to count as (Def: 1)
sparkno = -1                ;Spark image group and no (Def: set above)
sparkxy = -10,-70       ;X-offset for the "hit spark" rel. to p2,
hitsound = S9002,0                   ;Sound to play on hit
guardsound = 6,0                 ;Sound to play on guard
;ground.type = High               ;Type: High, Low, Trip (def: Normal)
p1stateno = 9830
fall = 0
envshake.time = 40
envshake.freq = 200
envshake.ampl = 8

[State 4113, No Cam Move]
type = ScreenBound
trigger1 = 1
value = 1

[State 4113, 2]
type = PlaySnd
trigger1 = Time = 1
value = 9000, 7

[State 4113, Didn't hit, blocked etc.]
type = Destroyself
trigger1 = time = 1

[State 4113, 9]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Ice Man---------------------------------------------------
[Statedef 4119]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 0                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 2268;ice man                       ;Change animation (Def: no change)
;poweradd = 100                    ;Power to add (Def: 0)

[State 4119, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 4119, 1]
type = ChangeAnim
trigger1 = time = 0
value = 2268

[State 4119, 1]
type = DestroySelf
trigger1 = numexplod(4114) >= 1
trigger2 = p2stateno = 4213

; Ice Man----------------------------------------
[Statedef 41199]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= H                    ;Move-type: A-attack, I-idle, H-gethit
physics = S                    ;Physics: S-stand, C-crouch, A-air
juggle  = 0                    ;Number of air juggle points move takes
velset = 0,0                  ;Set velocity (x,y) (Def: no change)
ctrl = 0                     ;Set ctrl (Def: no change)
anim = 2267   ;ice man         ;Change animation (Def: no change)

[State 41199, Steam1]
type = Explod
trigger1 = TimeMod=4,0 
trigger1 = Var(42) = 0
anim = 40000
name = "Steam"
pos = 0, -50 
postype = p1
bindtime = -1 
vel = 0, -2 
random = 30, 110 
removetime = -2 
ontop = 1
ownpal = 1
shadow = 0
removeongethit = 0

[State 41199, Steam2]
type = Explod
trigger1 = TimeMod=4,0 
trigger1 = Var(42) = 0
anim = 40000
name = "Steam"
pos = 0, -50 
postype = p1
bindtime = -1 
vel = 0, -4 
random = 50, 100 
removetime = -2 
ontop = 1
ownpal = 1
shadow = 0
removeongethit = 0

[State 41199, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 41199, 1]
type = DestroySelf
trigger1 = p2stateno = 4213

[State 41199, Oopsie]
type = TargetLifeAdd
trigger1 = time = 1
value = -9999

;----------------------------------------------------
;Enemy Hit by Ice
[Statedef 4210]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 4210, 2]
type = PlaySnd
trigger1 = Time = 1
value = 1313, 4

[State 4210, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 4210, 1-1]
type = Changeanim2
trigger1 = time >= 0
trigger1 = !SelfAnimExist(5300)
value = 9010

[State 4210, 1-2]
type = Changeanim
trigger1 = time >= 0
trigger1 = SelfAnimExist(5300)
value = 5300

[State 4210, 4]
type = PosSet
trigger1 = time >= 0
Y = 0

[State 4210, 2]
type = ChangeState
trigger1 = Time = 20
value = 4211
ctrl = 1

;Enemy Freezes
[Statedef 4211]
type    = S
movetype= H
physics = N
velset = 0,0
anim = 5300
ctrl = 0

[State 4211, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 4211, 1-1]
type = Changeanim2
trigger1 = time >= 0
trigger1 = !SelfAnimExist(5300)
value = 9010

[State 4211, 1-2]
type = Changeanim
trigger1 = time >= 0
trigger1 = SelfAnimExist(5300)
value = 5300 ;?

[State 4211, 2]
type = PalFX
trigger1 = 1
time = 9999
add = 49,153,221 
mul = 70, 160, 170
persistent = 1

[State 4211, 1]
type = ChangeState
trigger1 = time >= 24
value = 4212

;Frozen Enemy Waits.....
[Statedef 4212]
type    = S
movetype= H
physics = N
velset = 0,0
anim = 4112 ;invisible victim
ctrl = 0

[State 4212, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 4212, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 4112

;Hide player two
[Statedef 4213]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0
anim = 1015

[State 4213, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 4213, 1]
type = Changeanim2
trigger1 = time = 0
value = 1015 ;?

[State 4213, 2]
type = Posset
trigger1 = time = 1
Y = 900

[State 4213, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0

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



; Get rid of P2
[Statedef 25000]
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

[State 2600, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

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
trigger1 = P2Life > 0
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
;trigger1 = p2life < 5
trigger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = p2stateno != 9010
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

;*************************Ice Grenade*************************
[Statedef 3380]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 120
velset = 0,0
anim = 4003
ctrl = 0

[State 3380, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 3380, Fire]
type = explod
trigger1 = Time = 13
anim =  8238
pos = -45,-115
postype = p1
;ontop = 1

[State 3380, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 3380, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 3380, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 3380, DaDaDa]
type = Playsnd
trigger1 = Time = 15
value = 1313,3

[State 3380, DaDaDa]
type = Playsnd
trigger1 = Time = 72
value = 1313,0

[State 3380, BoltFat1]
type = Projectile
trigger1 = time = 103
projanim = 9901
projid = 9901
postype 
offset = 0, 0
velocity = 5, 0
 HitDef part of projectile info
attr = S, SP
damage    = 9999
animtype = Hard
air.animtype = Back
guardflag = MA
pausetime = 0,100
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
envshake.time = 40
envshake.freq = 200
envshake.ampl = 8

[State 3380, SetFatal]
type = Varset
trigger1 = Time = 4
V = 4
value = 1

[State 3380, 9]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 4748]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 4748, Hit]
type = PlaySnd
trigger1 = time = 1
value = 4, 21

[State 4748, 1]
type = EnvShake
trigger1 = Time = 1
freq = 40
time = 70
ampl = 50

[State 4748, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 4748, 6.6]
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

[State 4748, 6.7]
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

[State 4748, EndOfFAT]
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

; Player 2, you're outta here!!!!
[Statedef 9125]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 9125, AssertSpecial1]
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

[State 9125, NoBGM]
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

[state 9830,Shake]
type = envshake
trigger1 = time = 0
time = 40
ampl = 6
freq = 100

[State 9830, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay
flag2 = nokoslow

[State 9830, 1]
type = BGPalFX
trigger1 = time = 4
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 9830, 2.2]
type = EnvColor
trigger1 = time = 0
time = 4
add = 230, 230, 230
ignorehitpause = 1
persistent = 0

[State 9830, Blood]
type = Explod
trigger1 = time = 1
anim = 6041
id = 6041
offset = 0, -50
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
trigger1 = prevstateno != 3380
value = 4,21

[State 9830, BOOM2]
type = Playsnd
trigger1 = Time = 0
trigger1 = prevstateno = 3380
value = 1313,9

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
trigger1 = Time = 0
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

[State 9833, 1.556]
type = Explod
trigger1 = Time = 0
anim = 6041
pos = 0,Var(24)
Postype = P2
bindtime = 1
sprpriority = 3

[State 9833, 1.557]
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
trigger1 = time = 0
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

[State 9201, 11]
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
bindtime = -1
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
bindtime = -1
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
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 65]
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

[State 9201, 66]
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

[State 9201, 67]
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

[State 9201, 68]
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

[State 9201, 69]
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
bindtime = -1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9201, 71]
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

[State 9201, 72]
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

[State 9201, 73]
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

[State 9201, 74]
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

[State 9201, 75]
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

[State 9201, 76]
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

[State 9201, 77]
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

[State 9330, 1.6]
type = Explod
trigger1 = Time = 5
anim = 6041
pos = 36, -81
Postype = P1
bindtime = 1
sprpriority = 3

[State 9330, 1.7]
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

[State 9340, 11]
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

[State 9340, 12]
type = Helper
trigger1 = 1
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

[State 9340, 13]
type = Helper
trigger1 = 1
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

[State 9340, 14]
type = Helper
trigger1 = 1
stateno = 9344
name = "Guts"
pos = 0,0
postype = p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9340, 15]
type = Helper
trigger1 = 1
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

[State 9340, 16]
type = Helper
trigger1 = 1
trigger1 = Time = 0
trigger2 = Time = 4
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

[State 9340, 17]
type = Helper
trigger1 = 1
stateno = 9347
name = "MEAT"
pos = 0,0
postype = p1
helpertype = normal
sprpriority = 1
keyctrl = 0
ownpal = 1
under = 1

[State 9340, 18]
type = Helper
trigger1 = Time = 0
trigger2 = Time = 4
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
type = VelAdd
y = .4

[State 9341, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
value = -14

[State 9341, 0.5]
type = AngleDraw
trigger1 = Time >= 1

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
type = VelAdd
y = .4

[State 9344, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
value = -14

[State 9344, 0.5]
type = AngleDraw
trigger1 = Time >= 1

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
type = VelAdd
y = .4

[State 9347, .2]
type = AngleAdd
trigger1 = Time >= 1
trigger1 = Pos Y <= -7
value = -14

[State 9347, 0.5]
type = AngleDraw
trigger1 = Time >= 1

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


;================================================
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

[State 9400,2]
type = PlaySnd
trigger1 = Time = 60
value = 4000,11

[State 9400,3]
type = ChangeState
trigger1 = p2bodydist X < 15
value = 25055

[Statedef 25055]
type    = S
movetype= A
juggle  = 1
anim = 11
velset = 0, 0
ctrl = 0

[State 25055, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 25055, 1]
type = SuperPause
trigger1 = Time = 0
anim = -1
movetime = 10
time = 28

[State 25055, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 25055, 1.5]
type = BGPalFX
trigger1 = time = 2
time = 9999
add = -130, -130, -130
ignorehitpause

[State 25055, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 25055, Select]
type = VarRandom
trigger1 = Time = 0
v = 21
Range = 0, 3

[State 25055, PointyThingsSel]
type = changestate
trigger1 = command = "holdup"
value = 9401

[State 25055, PIT2Sel]
type = changestate
trigger1 = command = "holddown"
value = 9410

[State 25055, PuddleSel]
type = changestate
trigger1 = command = "holdfwd"
value = 9430

[State 25055, PointyThings]
type = changestate
trigger1 = Time = 1
trigger1 = Var(21) = 0
value = 9401

[State 25055, PIT2]
type = changestate
trigger1 = Time = 1
trigger1 = Var(21) = 1
value = 9410

[State 25055, Puddle]
type = changestate
trigger1 = Time = 1
trigger1 = Var(21) = 2
value = 9430

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
value = 9494   ;430

[State 9401, PitHit]
type = HitDef
trigger1 = time > 1
attr = S, HA
damage    = 50,5
hitsound   = s20,32
priority  = 7
sparkno = -1
guard.sparkno = -1
kill = 0
p1stateno = 431 
p2stateno = 9405
id = 6040

[State 9401, Var]
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

;--------- Pit 2------------------
[Statedef 9410]
type    = S
movetype= A
juggle  = 1
anim = 0
velset = 0, 0
ctrl = 0

[State 9410, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9410, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 9401, StartAnim]
type = Changeanim
trigger1 = time = 0
value = 9494

[State 9401, PitHit]
type = HitDef
trigger1 = time > 1
attr = S, HA
damage    = 50,5
priority  = 7
sparkno = -1
guard.sparkno = -1
kill = 0
hitsound   = s20,32
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

[State 9411, AssertSpecial1]
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

[State 9416, 1.6]
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
hitsound   = s20,32
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
trigger1 = Time > 20 ;500
Value = -9999

[State 9427, 2]
type = Selfstate
trigger1 = Time > 20 ;500
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

;--------------------------------------
; Where did that puddle come from ???
[Statedef 9430]
type    = S
movetype= A
juggle  = 1
anim = 0
velset = 0, 0
ctrl = 0

[State 9430, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

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
hitsound   = s20,32
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
hitsound   = s20,32
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

[State 9431, 6]
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

;-----------------------------------------
; MR Puddle
[Statedef 9432]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 9430
ctrl = 0

[State 9432, AssertSpecial1]
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
trigger2 = MoveHit = 1
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

[State 9432, 1.556]
type = PlaySnd
trigger1 = Time = 120
value = 4, 24

[State 9432, 1.557]
type = Explod
trigger1 = Time = 120
anim = 9435
pos = 0,0
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

[State 9433, AssertSpecial1]
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

[State 9435, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 9435, bindit]
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

[State 9435, 8]
type = Lifeadd
trigger1 = time = 0
Value = -9999

[State 9435, 9]
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

;-----------------------------------------------
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

;-------Ice Cicle Impale---------
[Statedef 2400]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
poweradd = 20   

[State 2400, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = -9940, -19940
anim = 100
sound = S4, 3
poweradd = -2888

[State 2400, 1]
type = BGPalFX
trigger1 = time = 1
time = 9999
add = -130, -130, -130
ignorehitpause = 1

[State 2400, NoBGM]
type = VarSet
trigger1 = Time = 0
v = 26
value = 1

[State 2400, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 2400, DaDaDa]
type = Playsnd
trigger1 = Time = 1
value = 6,1

[State 2400, ChangeAnim]
type = ChangeAnim
trigger1 = time = 100
value = 20 

[State 2400, 7]
type = velset
trigger1 = time >= 0
trigger1 = anim = 20 
x = 2.5

[State 2400, 8]
type = PlaySnd
trigger1 = Time = 60
value = 4000,11

[State 2400, 9]
type = ChangeState
trigger1 = p2bodydist X < 10
value = 24400

[Statedef 24400]
type    = S
movetype= A
physics = S
juggle  = 1
velset = 0,0
anim = 3100 ;kombo
ctrl = 0

[State 24400, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 24400, Var]
type = Varset
trigger1 = time = 0
V = 4
value = 1

[State 24400, Super E]
type = AfterImageTime
trigger1 = Time = [1,200]
time = 100

[state 24400, 1]
type = hitdef
trigger1 = AnimElem = 4
trigger2 = animelem = 9
trigger3 = AnimElem = 10
trigger4 = animelem = 11
trigger5 = AnimElem = 16
trigger6 = AnimElem = 21
trigger7 = animelem = 22
trigger8 = AnimElem = 23
trigger9 = animelem = 26
trigger10 = animelem = 27
trigger11 = animelem = 28
trigger12 = animelem = 33
trigger13 = animelem = 40
attr = S, HA
animtype  = light
priority  = 10
guardflag = A
damage = 0
sparkxy = -5,-100
hitsound   = s28,29
guardsound = s0,0
pausetime = 5,40
ground.type = low
ground.slidetime = 25
ground.hittime  = 25
ground.velocity = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall.recover = 0
numhits = 1

[state 24400, 1h]
type = Helper
trigger1 = AnimElem = 4
trigger2 = AnimElem = 10
trigger3 = AnimElem = 16
trigger4 = animelem = 22
trigger5 = animelem = 27
trigger6 = animelem = 33
trigger7 = animelem = 40
stateno = 6040
name = "Roundhouse"
pos = 50,-92
postype = P1
helpertype = normal
sprpriority = 0
keyctrl = 0
ownpal = 0

[state 24400, 2c]
type = changestate
trigger1 = animtime = 0
value = 4141
ctrl = 1

[State 24400, color]
type = EnvColor
trigger1 = animelem = 169
value = 220,220,220
time = 2

[state 24400, 2]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 4141]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 0                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 430 ;uppercut                    ;Change animation (Def: no change)
sprpriority = 3

[State 4141, 2]
type = PlaySnd
trigger1 = Time = 2
value = 4,16

[State 4141, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 4141, 1]
type = HitDef
trigger1 = time = 5 ;AnimElem = 5
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 0 ;Damage that move inflicts
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
;guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,0                  ;Time attacker pauses, time victim shakes
sparkxy = -9999,9999
numhits = 1                      ;Number of hits to count as (Def: 1)
hitsound = s3,3                   ;Sound to play on hit
guardsound = 6,0                 ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime = 11             ;Time victim is in hit state
ground.velocity = -2.5, -9.5     ;Velocity at which victim is pushed
airguard.velocity = -1, -1.3   ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -2.5,-9.5           ;X-velocity at which victim is pushed,
p2stateno = 4340

[State 4141, 3]
type = Helper
trigger1 = Time = 6
trigger1 = movehit = 1
stateno = 6040
name = "UPPERCUT"
pos = 21,-99
postype = P1
helpertype = normal
sprpriority = -1
keyctrl = 0
ownpal = 0
under = 1

[State 4141, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 4142

[Statedef 4142]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
velset = 0,0
anim = 5950 ;throw it
ctrl = 0
sprpriority = 3

[State 4142, 2]
type = PlaySnd
trigger1 = Time = 0
value = 1313, 0

[State 4142, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 4142, 5]
type = helper
trigger1 = time = 17
stateno = 4240
name = "Ice Spike"
id = 4240
pos = 82,5
postype = p1
sprpriority = 1

[State 4142, 3]
type = TargetBind
trigger1 = time <= 40
pos = 80,-400
time = 1

[State 4142,9]
type = ChangeState
trigger1 = p2stateno = 4342
trigger2 = time = 300
value = 0
ctrl = 1

[Statedef 4240]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 0                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 5151 ;forming ;Change animation (Def: no change)
sprpriority = -1

[State 4240, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 4240, 1]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 9999,9999                  ;Damage that move inflicts
animtype = Heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
;guardflag = MA                   ;Flags on how move is to be guarded against
sparkxy = -9999,9999
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 0, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 0,0                  ;Time attacker pauses, time victim shakes
;numhits = 1                      ;Number of hits to count as (Def: 1)
hitsound = S1,2                   ;Sound to play on hit
guardsound = 6,0                 ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime = 11             ;Time victim is in hit state
ground.velocity = -2.5, -9.5     ;Velocity at which victim is pushed
airguard.velocity = -1, -1.3   ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -2.5,-9.5           ;X-velocity at which victim is pushed,
p1stateno = 4241
p2stateno = 4342
kill = 1

[Statedef 4241]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 0                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 5153 ;still icicle                       ;Change animation (Def: no change)
sprpriority = -4

[State 4241, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 4241, 1]
type = Helper
trigger1 = Time = 0
stateno = 6040
name = "SpikeBlood"
pos = 0,-40
postype = P1
helpertype = normal
keyctrl = 0
ownpal = 0
under = 1
sprpriority = 7

[State 4241,2]
type = Explod
trigger1 = time = 0
anim = 5152
name = "Tip"
id = 5152
pos = 0,0
postype = p1
sprpriority = 6
removetime = -1

[State 4241,3]
type = Explod
trigger1 = time = 0
anim = 5158
name = "Bloody"
id = 5158
pos = 0,0
postype = p1
sprpriority = -3
under = 1
removetime = -1

[State 4241,4]
type = Explod
trigger1 = time = 0
anim = 9999
name = "BloodSpray"
id = 9999
pos = 0,50
postype = p1
sprpriority = 7
ontop = 1
removetime = -1



; P2 Going UP.....--------------------------------------
[Statedef 4340]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= H                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 0                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
anim = 4142
sprpriority = 2
ctrl = 0                         ;Set ctrl (Def: no change)

[State 4340, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 4340, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 4142

[State 4340, 2]
type = Velset
trigger1 = time >= 0
Y = -10

[State 4340, 3]
type = ChangeState
trigger1 = Pos Y <= -300
value = 4341

; P2 Going DOWN.....--------------------------------------------------
[Statedef 4341]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= H                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 0                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
anim = 4143
sprpriority = 2
ctrl = 0
                        ;Set ctrl (Def: no change)

[State 4341, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 4341, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 4143

[State 4341, 2]
type = Velset
trigger1 = time >= 25
Y = 10

[State 4341, 3]
type = SelfState
trigger1 = Pos Y >= -4
value = 5070

; P2 Landing on Spike----------------------------------------
[Statedef 4342]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= H                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 0                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
anim = 5170
sprpriority = 2
ctrl = 0                         ;Set ctrl (Def: no change)

[State 4342, AssertSpecial1]
type = AssertSpecial
trigger1 = Time >= 0  
flag = NoBarDisplay

[State 4342, 1]
type = ChangeAnim 
trigger1 = time = 0
value = 5170 

[State 4342,2]
type = Explod
trigger1 = time = 40
anim = 5170
name = "BodyProp"
id = 4343
pos = 0,0
postype = p1
sprpriority = 2
removetime = -1

[State 4342,3]
type = ChangeAnim2
trigger1 = time = 40
value = 1015

[State 4342,4]
type = PosSet
trigger1 = time = 42
Y = 300

[State 4342, 7]
type = SelfState
trigger1 = time = 0
value = 5150