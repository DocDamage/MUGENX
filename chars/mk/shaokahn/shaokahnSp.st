;Super Shadow Charge
[Statedef 90210]
type    = S     
movetype= A     
physics = S     
juggle  = 1     
velset = 0,0
ctrl = 0  
anim = 3000
poweradd = 5

[State 90210, Super C]
type = PowerAdd
trigger1 = Time = 1
value = -2000

[State 90210, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = 9920, -99120
anim = 100
sound = S4, 3
poweradd = -2888

[State 2000, tracers]
type = AfterImage
trigger1 = Time = 0
PalBright   =  255, 255, 255
trans = add
time = 60     

[State 20001, Super E]
type = AfterImageTime
trigger1 = Time = [1,30]
time = 2

[State 90210, Velocity2]
type = Velset
trigger1 = time = 5
x = 12

[State 90210, Velocity3]
type = Velset
trigger1 = time = 15
x = 12

[State 90210, Velocity3]
type = Velset
trigger1 = time = 20
x = 12

[State 90210, Velocity4]
type = Velset
trigger1 = time = 30
x = 20

[State 90210, Velocity5]
type = Velset
trigger1 = time = 50
x = 20

[State 90210, Velocity5b]
type = Velset
trigger1 = time = 60
x = 20

[State 90210, Velocity6]
type = Velset
trigger1 = time = 70
x = 20

[State 90210, Velocity6]
type = Velset
trigger1 = movehit = 1
x = 1

[State 90210, sound]
type = Playsnd
trigger1 = AnimElem = 2
value = 1313, 25

[State 90210, sound2]
type = Playsnd
trigger1 = AnimElem = 2
value = 1313, 1

[State 90210, nokill]
type = HitDef
trigger1 = !movecontact
attr = S, NA   
damage    = 200, 90 
animtype = Heavy
guardflag = HA
hitflag = MAF
pausetime = 0, 0
sparkno = 0
sparkxy = -10,-70
hitsound   = s20,31
guardsound = S0,0
ground.type = High
ground.slidetime = 45
ground.hittime  = 15
ground.velocity = -9.5, -3
air.velocity = -9.5, -3
air.hittime = 12  
p1stateno = 227
envshake.time = 20
envshake.freq = 190
envshake.ampl = -5
fall = 1
airfall = 1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall.recover = 0
                 
[State 90210, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Intro
[Statedef 30111]
type = S
movetype = I
physics = S
anim = 191
ctrl = 0
velset = 0,0

[State 30111, Boom]
type = PlaySnd
trigger1 = time = 3
value = 1313, 28

[State 30111, Enter]
type = ChangeState
trigger1 = RoundState = 2
triggerall = AnimTime = 0
value = 0
ctrl = 0

;KOMBO
[Statedef 3100] ;Shadow Charge Starter
type    = S     
movetype= A     
physics = S     
juggle  = 1     
velset = 0,0
ctrl = 0  
anim = 3000
poweradd = -2000

[State 3100, Super C]
type = PowerAdd
trigger1 = Time = 1
value = -2000

[State 3100, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = 9920, -99120
anim = 100
sound = S4, 3
poweradd = -2888

[State 1200, SuperRoar]
type = PlaySnd
trigger1 = AnimElem = 1 
value = 1313, 11

[State 20001, Super B]
type = AfterImage
trigger1 = time = 1
FrameGap = 5
length = 30
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   20,  0,  0
PalMul      =  1,1,1
Trans = Add1
time = 50           

[State 20001, Super E]
type = AfterImageTime
trigger1 = Time = [1,30]
time = 2

[State 3000, Velocity2]
type = Velset
trigger1 = time = 5
x = 10

[State 3000, Velocity3]
type = Velset
trigger1 = time = 15
x = 10

[State 3000, Velocity3]
type = Velset
trigger1 = time = 20
x = 10

[State 3000, Velocity4]
type = Velset
trigger1 = time = 30
x = 20

[State 3000, Velocity5]
type = Velset
trigger1 = time = 50
x = 20

[State 3000, Velocity5b]
type = Velset
trigger1 = time = 60
x = 20

[State 3000, Velocity6]
type = Velset
trigger1 = time = 70
x = 20

[State 3000, sound]
type = Playsnd
trigger1 = AnimElem = 2
value = 1313, 25

[state 3100, 1]
type = hitdef
trigger1 = AnimElem = 4
attr = S, HA
animtype  = heavy
damage    = 50,20
getpower  = 0
priority  = 6
guardflag = MA
pausetime = 1,25
sparkxy = -9999,-9999
snap = 15,0
hitsound   = s20,31
guardsound = s0,0
p2stateno = 5000
p2getp1state = 1
guardsound = S0,0
ground.type = high
ground.slidetime = 10
ground.hittime  = 25
ground.velocity = 6
guard.velocity = 0
air.velocity = 4,3
airguard.velocity = -3   
forcestand = 1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
numhits = 2

[state 3100, 2b]
type = changestate
trigger1 = movehit = 1
value = 3200
ctrl = 0

[State 3000, 7]
type = ChangeState
trigger1 = Time = 30
value = 0
ctrl = 1

[Statedef 3200] ;LP
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 2011                       ;Change animation (Def: no change)
poweradd = 60

[State 20001, Super B]
type = AfterImage
trigger1 = time = 1
FrameGap = 5
length = 30
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   20,  0,  0
PalMul      =  1,1,1
Trans = Add1
time = 30   

[State 3000, sound]
type = Playsnd
trigger1 = time = 0
value = 1313, 1

[state 3100, 1]
type = hitdef
trigger1 = AnimElem = 4
attr = S, HA
animtype  = heavy
damage    = 50,20
getpower  = 0
priority  = 6
guardflag = MA
pausetime = 0,25
sparkxy = -10,-60
snap = 15,0
hitsound   = s28,29
p2stateno = 5000
p2getp1state = 1
guardsound = S0,0
ground.type = high
ground.slidetime = 10
ground.hittime  = 25
ground.velocity = 6
guard.velocity = 0
air.velocity = 4,3
airguard.velocity = -3   
forcestand = 1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
numhits = 2

[State 210, 3.5]
type = Helper
trigger1 = time = 15
trigger1 = movehit = 1
stateno = 6020
name = "High Kick Blood"
pos = 70,-92
postype = P1
helpertype = normal
sprpriority = 0
keyctrl = 0
ownpal = 0
under = 1

[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 3101
ctrl = 1

[Statedef 3101] ;Uppercut
type    = S
movetype= A
physics = S
juggle  = 1
ctrl = 0
anim = 4300
sprpriority = 2

[State 430, 1]
type = PlaySnd
trigger1 = Time = 1
value = 4, 16

[State 20001, Super B]
type = AfterImage
trigger1 = time = 1
FrameGap = 5
length = 30
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   20,  0,  0
PalMul      =  1,1,1
Trans = Add1
time = 30   

[state 3100, 1]
type = hitdef
trigger1 = AnimElem = 4
attr = S, HA
animtype  = heavy
damage    = 20,50
getpower  = 0
priority  = 6
guardflag = MA
pausetime = 0,25
sparkxy = -10,-60
snap = 15,0
hitsound   = s27,27
p2stateno = 5000
p2getp1state = 1
guardsound = S0,0
ground.type = high
ground.slidetime = 10
ground.hittime  = 25
ground.velocity = 6
guard.velocity = 0
air.velocity = 4,3
airguard.velocity = -3   
forcestand = 1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
numhits = 2

[State 202, NotFriendly]
type = VarSet
trigger1 = MoveGuarded = 1
v = 5
value = 1

[State 430, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3102
ctrl = 1

[Statedef 3102]
type    = S
movetype= I
physics = S
juggle  = 1
;poweradd= 15
ctrl = 0
anim = 4311

[State 202, NotFriendly]
type = VarSet
trigger1 = Time = 0
v = 5
value = 1

[State 430, 3.5]
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

[State 431, 3.2]
type = VarRandom
trigger1 = Time = 3
v = 11
range = 1, 140

[State 431, 3.9999]
type = Screenbound
trigger1 = time = [4 , 61]
trigger1 = p2movetype = H
trigger1 = Var(11) = [125, 135]
movecamera = 1,1

[State 431, 3.99999]
type = Varset
trigger1 = AnimTime = 0
v = 11
value = 0

[State 431, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3103
ctrl = 1

[Statedef 3103] ;Kick
type    = S
movetype= A
physics = S
juggle  = 4
;poweradd= 60
ctrl = 0
velset = 0,0,0
anim = 2100

[State 20001, Super B]
type = AfterImage
trigger1 = time = 1
FrameGap = 5
length = 30
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   20,  0,  0
PalMul      =  1,1,1
Trans = Add1
time = 30   

[State 3000, sound]
type = Playsnd
trigger1 = time = 0
value = 1313, 1

[State 225, Select]
type = VarRandom
trigger1 = Time = 2
v = 11
range = 11, 12

[State 200, Play]
type = PlaySnd
trigger1 = Time = 2
value = 4, Var(11)

[State 210, 1.5]
type = Playsnd
trigger1 = Time = 2
value = 4,16

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype  = Medium
damage    = 50, 29
givepower = 20, 5
guardflag = MA
hitflag = MAF
pausetime = 0,25
sparkno = -1
guard.sparkno = -1
hitsound   = s28,29
guardsound = S0,0
ground.type = High
ground.slidetime = 17
ground.hittime  = 13
ground.velocity = -8
air.velocity = -2.2,-4.2
air.hittime = 20   
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 210, 3.5]
type = Helper
trigger1 = time = 15
trigger1 = movehit = 1
stateno = 6020
name = "High Kick Blood"
pos = 70,-92
postype = P1
helpertype = normal
sprpriority = 0
keyctrl = 0
ownpal = 0
under = 1

[State 210, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 3104
ctrl = 1

[StateDef 3104]
type    = S
movetype= A
physics = S
juggle  = 10
ctrl = 0
velset = 10,-5
anim = 3001

[State 3000, sound]
type = Playsnd
trigger1 = time = 0
value = 1313, 25

[State 20001, Super B]
type = AfterImage
trigger1 = time = 1
FrameGap = 5
length = 30
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   20,  0,  0
PalMul      =  1,1,1
Trans = Add1
time = 50   

[State 20001, Super E]
type = AfterImageTime
trigger1 = Time = [1,30]
time = 2

[State 20001, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
damage    = 160,3
animtype  = Back
getpower = 10,5
givepower = 10,5
guardflag = HA
hitflag = HA
priority = 7
pausetime = 0,0
sparkno = 0 
sparkxy = 0,-60
guard.sparkno = -1
hitsound   = s27,27
guardsound = S0,0
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -7, -9.5                      
air.velocity = -7.4,-9.2
air.hittime = 12  
envshake.time = 20
envshake.freq = 190
envshake.ampl = -5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 1
air.fall = 1
fall.recover = 0

[State 20001, 1] 
type = velset
trigger1 = time <= 20
x = 7
y = -2

[State 20001, 3]
type = VelAdd ; Gravity
trigger1 = Time >= 20
y = 0.28

[State 20001, 4]
type = ChangeState
trigger1 = (Vel y > 0 && Pos y >= 0)
value = 0
ctrl = 1

;Hammer
[StateDef 12066]
type    = S
movetype= A
physics = S
juggle  = 10
ctrl = 0
velset = 0,0
anim = 12066

[State 1200, Swing]
type = PlaySnd
trigger1 = time = 5
value = 1313, 1

[State 12066, 2]
type = HitDef
trigger1 = !Movecontact
attr = S, NA
damage    = 195,40
animtype  = Heavy
getpower = 10,5
givepower = 10,5
guardflag = MA ;HA
hitflag = MAF ;HA
priority = 7
pausetime = 0,0
sparkxy = 9999,-9999
guard.sparkno = -1
hitsound   = s31,35 
p1stateno = 12067
guardsound = S0,0
ground.type = High
ground.slidetime = 500
ground.hittime  = 500
ground.velocity = 0, 0 
air.velocity = 0, 0
air.hittime = 200  
down.y-velocity = 0
down.velocity = 0, 0    ;Velocity for opponents lying down (def: same as air.velocity)
down.hittime = 500      ;Time opponent is stunned on ground (only for down.y-velocity = 0) (def: 20)
down.bounce = 1        ;Set to 1 for opponent to bounce on ground (def: 0)
envshake.time = 15
envshake.freq = 200
envshake.ampl = -7
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 1
air.fall = 1
air.recover = 0

[State 430, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0 
ctrl = 1

[Statedef 12067]
type    = S
movetype= I
physics = S
juggle  = 1
ctrl = 0
anim = 12067

[State 1200, Swing]
type = PlaySnd
trigger1 = time = 30
value = 1313, 26 

[State 12067, 3.5]
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

[State 202, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 12067, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Skull Chuck
[StateDef 1263]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1263
sprpriority = 9

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 1313,1

[State 3000, 7]
type = playsnd
trigger1 = time = 10
value = 26,26

[State 1200, BoltFat]
type = Projectile
trigger1 = time = 25
projanim = 1264
projhitanim = 1265
postype 
offset = 70, -120
velocity = 5.8, .8
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
damage    = 65, 3
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

;Upper Shadow Charge
[StateDef 20001]
type    = S
movetype= A
physics = S
juggle  = 10
ctrl = 0
velset = 10,-5
anim = 3001

[State 3000, sound]
type = Playsnd
trigger1 = time = 0
value = 1313, 25

[State 20001, Super B]
type = AfterImage
trigger1 = time = 1
FrameGap = 5
length = 40
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
Trans = Add1
time = 40

[State 20001, Super E]
type = AfterImageTime
trigger1 = Time = [1,30]
time = 2

[State 20001, 2]
type = HitDef
trigger1 = !movecontact
attr = S, NA
damage    = 150,50
animtype  = Back
getpower = 10,5
givepower = 10,5
guardflag = HA
hitflag = MAF
priority = 7
pausetime = 0,0
sparkxy = -9999,-9999
guard.sparkno = -1
hitsound   = s20,31
guardsound = S0,0
ground.type = High
ground.slidetime = 30
ground.hittime  = 30
ground.velocity = -6, -8.5                      
air.velocity = -6.4,-8.2
air.hittime = 12  
down.bounce = 1        ;Set to 1 for opponent to bounce on ground (def: 0)
envshake.time = 20
envshake.freq = 190
envshake.ampl = -5
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall = 1
air.fall = 1
air.recover = 0

[State 20001, 1] 
type = velset
trigger1 = time <= 20
x = 7
y = -2

[State 20001, 3]
type = VelAdd ; Gravity
trigger1 = Time >= 20
y = 0.28

[State 20001, 4]
type = ChangeState
trigger1 = (Vel y > 0 && Pos y >= 0)
value = 0
ctrl = 1


;Shadow Charge
[Statedef 3000]
type    = S     
movetype= A     
physics = S     
juggle  = 1     
velset = 0,0
ctrl = 0  
anim = 3000
poweradd = 5

[State 20001, Super B]
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

[State 20001, Super E]
type = AfterImageTime
trigger1 = Time = [1,30]
time = 2

[State 3000, Velocity2]
type = Velset
trigger1 = time = 5
x = 10

[State 3000, Velocity3]
type = Velset
trigger1 = time = 15
x = 10

[State 3000, Velocity3]
type = Velset
trigger1 = time = 20
x = 10

[State 3000, Velocity4]
type = Velset
trigger1 = time = 30
x = 20

[State 3000, Velocity5]
type = Velset
trigger1 = time = 50
x = 20

[State 3000, Velocity5b]
type = Velset
trigger1 = time = 60
x = 20

[State 3000, Velocity6]
type = Velset
trigger1 = time = 70
x = 20

[State 3000, Velocity7]
type = Velset
trigger1 = movehit = 1
x = 0

[State 3000, sound]
type = Playsnd
trigger1 = time = 0
value = 1313, 25

[State 3000, nokill]
type = HitDef
trigger1 = !movecontact
attr = S, NA   
damage    = 100, 50 
animtype = Back
guardflag = M
hitflag = MAF
pausetime = 0,0
sparkxy = -9999,-9999
hitsound   = s20,31
guardsound = S0,0
ground.type = High
ground.slidetime = 30
ground.hittime  = 10
ground.velocity = -5, -6.5
air.velocity = -5.4,-5.2
air.hittime = 10  
down.bounce = 2        ;Set to 1 for opponent to bounce on ground (def: 0)
envshake.time = 20
envshake.freq = 190
envshake.ampl = -5
p1stateno = 227
fall = 1
air.fall = 1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)
fall.recover = 0
                   
[State 3000, 7]
type = playsnd
trigger1 = time = 0
value = 100,0

[State 3000, 7]
type = ChangeState
trigger1 = Time = 30
trigger2 = stateno = 227
value = 0
ctrl = 1


;Super Spear--pt.1---------------
[Statedef 12600]
type    = S
movetype= A
physics = S
juggle  = 10
ctrl = 0
velset = 0,0,0
anim = 12600
sprpriority = 7

[State 20001, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = -8840, -88105
anim = 100
sound = S4, 3
poweradd = -2000

[State 20001, SuperLight2] 
type = Explod
trigger1 = AnimElem = 1
anim = 227
pos = -40, -105
sprpriority = 9
postype = p1
bindtime = -1
supermove = 1
ownpal = 1
ontop = 1

[State 20001, Super CC]
type = PowerAdd
trigger1 = Time = 1
value = -2000

[State 3000, 7]
type = playsnd
trigger1 = time = 5
value = 31,37

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 3
projanim = 1261
projhitanim = 1262
postype 
offset = 30, 0
velocity = 8, 0
remvelocity = 0, 0
; HitDef part of projectile info
ProjHits = 2
projmisstime = 8
attr = S, SP
damage    = 85, 23
animtype = Hard
air.animtype = Back
air.fall = 1
guardflag = MA
hitflag = MAF
pausetime = 0,7
sparkno = -1
guard.sparkno = -1
hitsound   = s1, 3
guardsound = S0,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 3
envshake.time = 20
envshake.freq = 190
envshake.ampl = -4
;PalFX
fall = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 20001, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 430, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 12601
ctrl = 1

;Super Spear--pt.2---------------
[Statedef 12601]
type    = S
movetype= A
physics = S
juggle  = 10
ctrl = 0
velset = 0,0,0
anim = 12600
sprpriority = 7

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 23, 23

[State 3000, 7]
type = playsnd
trigger1 = time = 5
value = 31,37

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 3
projanim = 1261
projhitanim = 1262
postype 
offset = 30, 0
velocity = 8, -.5
remvelocity = 0, 0
; HitDef part of projectile info
ProjHits = 2
projmisstime = 8
attr = S, SP
damage    = 85, 23
animtype = Hard
air.animtype = Back
air.fall = 1
hitflag = MAF
guardflag = MA
pausetime = 0,7
sparkno = -1
guard.sparkno = -1
hitsound   = s1, 3
guardsound = S0,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 3
envshake.time = 20
envshake.freq = 190
envshake.ampl = -4
;PalFX
fall = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 20001, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 20001, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 12602

;Super Spear--pt.3---------------
[Statedef 12602]
type    = S
movetype= A
physics = S
juggle  = 10
ctrl = 0
velset = 0,0,0
anim = 12600
sprpriority = 7

[State 20001, Super E]
type = AfterImageTime
trigger1 = Time = [1,30]
time = 2

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 23, 23

[State 3000, 7]
type = playsnd
trigger1 = time = 5
value = 31,37

[State 1200, BoltFat]
type = Projectile
trigger1 = AnimElem = 3
projanim = 1261
projhitanim = 1262
postype 
offset = 30, 0
velocity = 8, -.9
remvelocity = 0, 0
; HitDef part of projectile info
ProjHits = 2
projmisstime = 8
attr = S, SP
damage    = 85, 23
animtype = Hard
air.animtype = Back
air.fall = 1
hitflag = MAF
guardflag = MA
pausetime = 0,7
sparkno = -1
guard.sparkno = -1
hitsound   = s1, 3
guardsound = S0,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 3
envshake.time = 20
envshake.freq = 190
envshake.ampl = -4
;PalFX
fall = 0
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)


[State 20001, NotFreindly]
type = VarSet
trigger1 = AnimElem = 4 
v = 5
value = 1

[State 20001, 10]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0


;--------------------------------------------
[StateDef 700];teleport
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 700

[State 700, Leave]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 20
value = 1313,25

[State 700, GoToP2]
type = PosAdd
trigger1 = Time = 20
X = (P2Dist X) + 45

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

[StateDef 7900];teleport2
type    = S
movetype= I
physics = S
ctrl = 0
velset = 0,0,0
anim = 700

[State 7900, Leave]
type = PlaySnd
trigger1 = Time = 0
value = 1313,25

[State 7900, GoToP2]
type = PosAdd
trigger1 = Time = 20
X = (P2Dist X) - 45

[State 7900, Stand]
type = ChangeState
trigger1 = Time = 50
ctrl = 1
value = 430

[State 700, Stand]
type = ChangeState
trigger1 = Time = 30
ctrl = 1
value = 430

;--------------------------------------------
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
;Fireball
[StateDef 1200]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1200
sprpriority = 9

[State 1200, ZappySound]
type = PlaySnd
trigger1 = AnimElem = 2 
value = 1313, 1

[State 20000, ZappySound]
type = PlaySnd
trigger1 = time = 15
value = 1313, 29 

[State 1200, BoltFat]
type = Projectile
trigger1 = time = 20
projanim = 1220
projhitanim = 1230
postype 
offset = 30, 0
velocity = 7, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
damage    = 95, 23
animtype = Hard
air.animtype = Back
air.fall = 1
hitflag = MAF
guardflag = MA
pausetime = 0,3
sparkno = -1
guard.sparkno = -1
hitsound   = s4,21
guardsound = S0,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 3
envshake.time = 20
envshake.freq = 190
envshake.ampl = -5
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
;Spear Chuck
[StateDef 1260]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
velset = 0,0,0
anim = 1260
sprpriority = 7

[State 3000, 7]
type = playsnd
trigger1 = time = 5
value = 31,37

[State 1200, BoltFat]
type = Projectile
trigger1 = time = 20
projanim = 1261
projhitanim = 1262
postype 
offset = 30, 0
velocity = 7, 0
remvelocity = 0, 0
; HitDef part of projectile info
attr = S, SP
damage    = 95, 23
animtype = Hard
air.animtype = Back
hitflag = MAF
guardflag = MA
pausetime = 0,3
sparkno = -1
guard.sparkno = -1
hitsound   = s1, 3
guardsound = S0,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 3
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
;-----------------------------------------------
; Super Fire Balls
[StateDef 20000]
type    = S
movetype= A
physics = S
juggle  = 2
ctrl = 0
anim = 1240
sprpriority = 9

[State 20000, Super C]
type = PowerAdd
trigger1 = Time = 1
value = -2000

[State 20001, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = -9999, -99999
anim = 100
supermove = 1
time = 300

[State 3450, SuperLight] 
type = Explod
trigger1 = AnimElem = 1
anim = 1300
pos = -10, -120
sprpriority = 9
postype = p1
bindtime = -1
supermove = 1
ownpal = 1
ontop = 1


[State 20000, Yell]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1313, 11
volume = 255

[State 20000, Fireball Sound]
type = PlaySnd
trigger1 = time = 28
trigger2 = time = 37
trigger3 = time = 46
trigger4 = time = 55
trigger5 = time = 64
trigger6 = time = 73
trigger7 = time = 82
value = 1313, 27

[State 1200, Fireball]
type = Projectile
trigger1 = time = 28
trigger2 = time = 37
trigger3 = time = 46
trigger4 = time = 55
trigger5 = time = 64
trigger6 = time = 73
trigger7 = time = 82
projanim = 1250
projhitanim = 1230
postype 
offset = 40, 0
velocity = 7, 0
remvelocity = 0, 0
attr = S, SP
damage    = 65, 23
animtype = Hard
air.animtype = Back
air.fall = 1
hitflag = MAF
guardflag = MA
pausetime = 0,3
sparkno = -1
guard.sparkno = -1
hitsound   = s4,21
guardsound = S0,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -8
air.velocity = -2.5,-5
air.juggle = 3
envshake.time = 10
envshake.freq = 190
envshake.ampl = -5
fall recover = 0
fall = 1
kill       = (Var(9) = 0)
fall.kill  = (Var(9) = 0)
guard.kill = (Var(9) = 0)

[State 20000, Super]
type = SuperPause
trigger1 = AnimElem = 1
pos = 9920, -99120
anim = 100
sound = S4, 3
poweradd = -2888

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