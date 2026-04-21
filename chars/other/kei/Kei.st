;(VARIABILI)
;E SPERA DI RICORDARTELE STAVOLTA
;(1) = Shocked Effects
;(2) = Eventual Slow Motions
;(3) = Howling Fury DM/SDM
;(4) = KOF Jump System
;(5) = how many times Shut Your Mouth hits
;(6) = sound randomizer (stupid effect XD)
;(7) = intro randomizer 
;(8) = winpose randomizer
;(10) = AI ON/OFF
;(11) = AI Autocombo
;(15) = dizzy system
;---------------------------------------------------------------------------
; Format:
; [Statedef STATENO]
; type = ?      S/C/A/L  stand/crouch/air/liedown
; movetype = ?  I/A/H    idle/attack/gethit
; physics = ?   S/C/A/N  stand/crouch/air/none
; juggle = ?             air juggle points move requires
;
; [State STATENO, ?]     ? - any number you choose
; type = ?
; ...

[Statedef 170]
type = S
anim = 170

[State 170, s]
type = PlaySnd
trigger1 = AnimElem = 6
value = 170,0

[State 170,just to make it a valid statedef ]
type = AssertSpecial
trigger1 = time < 300
flag = roundnotover









;WIN STATE DECIDER
[Statedef 180]
type = S

[State 180,1st ]
type = ChangeState
trigger1 = time = 1
value = 181+var(8)
ctrl = 0

[State 180,randomizer]
type = VarRandom
trigger1 = time = 0
v = 8
range = 0,1

[Statedef 181]
type = S
anim = 181
velset = 0,0

[State 180,voice ]
type = PlaySnd
trigger1 = AnimElem = 14
value = 180,0

[State 180, as]
type = AssertSpecial
trigger1 = time < 400
flag = roundnotover

[Statedef 182]
type = S
anim = 182
velset = 0,0

[State 1000,pal ]
type = PalFX
trigger1 = time = 35
time = 2
add = 105,105,105

[State -2,on 3000 power standing]
type = Explod
trigger1 = (numexplod(752) < 22) && (timemod = 5,0)  && (time < 35)
anim = 756
pos = -20,-50
random = 40,70
vel = 0,0
postype = p1
ID = 752
bindtime = 1
sprpriority = 6
persistent = 1
ownpal = 1
scale = 1,1

[State 182, ex]
type = Explod
trigger1 = time = 0
anim = 183
bindtime = -1
sprpriority = 7

[State 182, ex]
type = Explod
trigger1 = time = 35
anim = 4182
bindtime = -1
pos = -20,-50
sprpriority = 7

[State 182,sn ]
type = PlaySnd
trigger1 = time = 35
value = 1000,1

[State 180, as]
type = AssertSpecial
trigger1 = time < 400
flag = roundnotover

[Statedef 190]
type = S

[State 190,randomizer ]
type = VarRandom
trigger1 = time = 0
v = 7
range = 0,1

[State 190,vsRick ]
type = ChangeState
trigger1 = p2name = "Rikard Shinigami"
trigger2 = p4name = "Rikard Shinigami"
value = 193

[State 190,vsKy ]
type = ChangeState
trigger1 = p2name = "KY" || p2name = "KY KISKE"
trigger2 = p4name = "KY" || p4name = "KY KISKE"
value = 194

[State 190,st ]
type = ChangeState
trigger1 = var(7) = 0
value = 191

[State 190,st2 ]
type = ChangeState
trigger1 = var(7) = 1
value = 192



;1ST INTRO
[Statedef 191]
type = S
anim = 190

[State 190,ex ]
type = Explod
trigger1 = AnimElem = 2
anim = 191
ID = 190
pos = 0,0
bindtime = 5
vel = -8,-4
sprpriority = 4
shadow = 0,0,0
ownpal = 1

[State 190,sn2 ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 190,1

[State 190,sn2 ]
type = PlaySnd
trigger1 = AnimElem = 6
value = 190,2

[State 190,assert]
type = AssertSpecial
trigger1 = time > 0
flag = intro

[State 190,state ]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 0

;2nd INTRO
[Statedef 192]
type = S
anim = 192

[State 192,sn2 ]
type = PlaySnd
trigger1 = AnimElem = 5
value = F5,2

[State 192, ]
type = Explod
trigger1 = AnimElem = 5
anim = F0
pos = 11,-73
sprpriority = 7

[State 190,sn2 ]
type = PlaySnd
trigger1 = AnimElem = 7
value = 190,3

[State 192,assert]
type = AssertSpecial
trigger1 = time > 0
flag = intro

[State 192,state ]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 0

;Vs Rick
[Statedef 193]
type = S
anim = 193

[State 192,sn2 ]
type = PlaySnd
trigger1 = AnimElem = 5
value = F5,2

[State 192, ]
type = Explod
trigger1 = AnimElem = 5
anim = F0
pos = 11,-73
sprpriority = 7

[State 192,assert]
type = AssertSpecial
trigger1 = time > 0
flag = intro

[State 192,state ]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 0



;Vs Ky
[Statedef 194]
type = S
anim = 194
sprpriority = 8

[State 194, ]
type = EnvColor
trigger1 = time = 142
value = 255,255,255
time = 3
under = 1

[State 194,sn2 ]
type = PlaySnd
trigger1 = time = 142
value = 3100,0

[State 194, ]
type = Helper
trigger1 = time = 142
name = "effetto idiota"
ID = 194
pos = 0,-10
stateno = 3108

[State 194, ]
type = Helper
trigger1 = time = 142
name = "effetto idiotac"
ID = 194
pos = 0,0
stateno = 3107

[State 194, ]
type = PalFX
trigger1 = time = 142
time = 5
add = 255,255,255
color = 1

[State 194, ]
type = Explod
trigger1 = time = 142
anim = 10194
pos = -5,0
bindtime = -1
sprpriority = -2
ownpal = 0

[State 194,assert]
type = AssertSpecial
trigger1 = time > 0
flag = intro

[State 194,state ]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 0

;Taunt
[Statedef 195]
type = S
movetype = I
physics = S
velset = 0,0
anim = 195
ctrl = 0

[State 195,sn ]
type = PlaySnd
trigger1 = Time = 0
value = 195,0

[State 195,ctr ]
type = CtrlSet
trigger1 = Time = 40
value = 1

[State 195,state ]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;STANDING ATTACKS
;---------------------------------------------------------------------------

[Statedef 200]
type = S
movetype = A
physics = S
juggle = 7
velset = 0,0
anim = 200
ctrl = 0

[State 200, hit]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Light
damage = 35,0
pausetime = 12,12
sparkno = 0
sparkxy = 0,-68
hitsound = 5,0
guardsound = 6,0
ground.type = high
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -6,0
air.velocity = -3,-5
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -3
getpower = 20,0
givepower = 10,0

[State 200,sn ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200,0

[State 200,voice ]
type = PlaySnd
trigger1 = AnimElem = 2
trigger1 = random < 500
value = 200,2

[State 200,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 205]
type = S
movetype = A
physics = S
juggle = 9
velset = 0,0
anim = 205
ctrl = 0

[State 205, hit]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Light
damage = 35,0
pausetime = 12,12
sparkno = 0
sparkxy = 0,-68
hitsound = 5,0
guardsound = 6,0
ground.type = high
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -6,0
air.velocity = -3,-5
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -3
getpower = 20,0
givepower = 10,0

[State 205,sn ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200,0

[State 205,voice ]
type = PlaySnd
trigger1 = AnimElem = 2
trigger1 = random < 500
value = 210,0

[State 205,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 210]
type = S
movetype = A
physics = S
juggle = 9
velset = 0,0
anim = 210
ctrl = 0

[State 210, hit]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Medium
damage = 60,0
pausetime = 12,12
sparkno = 1
sparkxy = 0,-78
hitsound = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -9,0
air.velocity = -3.5,-6
ground.cornerpush.veloff = -12
air.cornerpush.veloff = -6
getpower = 30,0
givepower = 15,0

[State 210,sn ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200,1

[State 210,voice ]
type = PlaySnd
trigger1 = AnimElem = 2
trigger1 = random < 500
value = 210,0


[State 210,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 215]
type = S
movetype = A
physics = S
juggle = 10
velset = 0,0
anim = 215
ctrl = 0

[State 215, hit]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Medium
damage = 65,0
pausetime = 12,12
sparkno = 1
sparkxy = 0,-68
hitsound = 5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -7,0
air.velocity = -3.5,-6
ground.cornerpush.veloff = -12
air.cornerpush.veloff = -6
getpower = 30,0
givepower = 15,0

[State 215,sn ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200,1

[State 215,voice ]
type = PlaySnd
trigger1 = AnimElem = 2
trigger1 = random < 500
value = 210,0

[State 215,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 220]
type = S
movetype = A
physics = S
juggle = 12
velset = 0,0
anim = 220
ctrl = 0

[State 220, hit]
type = HitDef
trigger1 = AnimElem = 3
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Medium
damage = 35,0
pausetime = 10,10
sparkno = 2
sparkxy = 0,-58
hitsound = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -9,0
air.velocity = -3.5,-6
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -6
getpower = 30,0
givepower = 15,0

[State 220, ]
type = PlaySnd
trigger1 = AnimElem = 6
value = 200,1

[State 220, ]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1050,2

[State 220, ]
type = PlaySnd
trigger1 = time = 0
value = 240,0

[State 220, hit2]
type = null;HitDef
trigger1 = (AnimElem = 6) && (prevstateno != [200,245])
attr = S,NA
hitflag = MAF
guardflag = HA
animtype = Diagup
damage = 45,0
pausetime = 10,10
sparkno = 2
sparkxy = 0,-78
hitsound = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -2,-5
air.velocity = -1.5,-5
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -12
getpower = 30,0
givepower = 15,0
fall = 1
fall.recover = 0

[State 220, hit2]
type = HitDef
trigger1 = AnimElem = 6 ;&& (prevstateno = [200,245]) && (prevstateno != 220)
;trigger2 = (AnimElem = 6) && (prevstateno = [400,430])
attr = S,NA
hitflag = MAF
guardflag = HA
animtype = hard
damage = 45,0
pausetime = 10,10
sparkno = 2
sparkxy = 0,-78
hitsound = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 22
ground.hittime = 20
ground.velocity = -10,0
air.velocity = -10,0
ground.cornerpush.veloff = -22
air.cornerpush.veloff = -22
getpower = 30,0
givepower = 15,0

[State 220,v ]
type = VelSet
trigger1 = AnimElem = 3
y = -4

[State 220,v ]
type = VelSet
trigger1 = Time = [5,19]
x = 5

[State 220,veladd ]
type = VelAdd
trigger1 = Time = [5,24]
y = .7

[State 220,end ]
type = ChangeState
trigger1 = (pos Y >= 0) && (time > 10)
value = 221

[Statedef 221]
type = S
movetype = A
physics = S
velset = 0,0
anim = 221
ctrl = 0
hitcountpersist = 1

[State 221,ct ]
type = CtrlSet
trigger1 = time = 4
value = 1

[State 221,p ]
type = PosSet
trigger1 = time = 0
y = 0

[State 221,sn ]
type = PlaySnd
trigger1 = animelem = 2
value = 40,0

[State 221,end ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 230]
type = S
movetype = A
physics = S
juggle = 7
velset = 0,0
anim = 230
ctrl = 0

[State 230, hit]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Light
damage = 50,0
pausetime = 12,12
sparkno = 0
sparkxy = 0,-78
hitsound = 5,1
guardsound = 6,0
ground.type = high
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -6.5,0
air.velocity = -3.5,-6
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -3
getpower = 20,0
givepower = 10,0

[State 230,sn ]
type = PlaySnd
trigger1 = Time = 0 
value = 200,0

[State 230,voice ]
type = PlaySnd
trigger1 = AnimElem = 3
trigger1 = random < 500
value = 210,0

[State 230,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 235]
type = S
movetype = A
physics = S
juggle = 7
velset = 0,0
anim = 235
ctrl = 0

[State 235, hit]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Medium
damage = 45,0
pausetime = 12,12
sparkno = 0
sparkxy = 0,-28
hitsound = 5,2
guardsound = 6,0
ground.type = low
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -6.5,0
air.velocity = -3.5,-6
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -3
getpower = 20,0
givepower = 10,0

[State 235,sn ]
type = PlaySnd
trigger1 = Time = 0 
value = 200,0

[State 235,voice ]
type = PlaySnd
trigger1 = AnimElem = 2
trigger1 = random < 500
value = 200,2

[State 235,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 240]
type = S
movetype = A
physics = S
juggle = 10
velset = 0,0
anim = 240
ctrl = 0

[State 240, ]
type = PosAdd
trigger1 = animelem = 2
x = 4

[State 240, ]
type = PosAdd
trigger1 = animelem = 3
x = 8

[State 240, ]
type = PosAdd
trigger1 = animelem = 1
x = 7

[State 240, hit]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Medium
damage = 65,0
pausetime = 12,12
sparkno = 1
sparkxy = 0,-58
hitsound = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -9,0
air.velocity = -3.5,-6
ground.cornerpush.veloff = -12
air.cornerpush.veloff = -6
getpower = 30,0
givepower = 20,0

[State 240,sn ]
type = PlaySnd
trigger1 = Time = 0
value = 200,1

[State 235,voice ]
type = PlaySnd
trigger1 = time = 0
trigger1 = random < 300
value = 240,0



[State 240,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 245]
type = S
movetype = A
physics = S
juggle = 12
velset = 0,0
anim = 245
ctrl = 0

[State 245, hit]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Medium
damage = 65,0
pausetime = 12,12
sparkno = 1
sparkxy = 0,-58
hitsound = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -9,0
air.velocity = -3.5,-6
ground.cornerpush.veloff = -12
air.cornerpush.veloff = -6
getpower = 30,0
givepower = 20,0

[State 245,sn ]
type = PlaySnd
trigger1 = Time = 0
value = 200,1

[State 245, pos]
type = PosAdd
trigger1 = AnimElem = 3
x = 10

[State 245, pos2]
type = PosAdd
trigger1 = AnimElem = 6
x = -10

[State 245,voice ]
type = PlaySnd
trigger1 = time = 0
trigger1 = random < 300
value = 240,0

[State 245,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 250]
type = S
movetype = A
physics = S
juggle = 15
velset = 0,0
anim = 250
ctrl = 0
sprpriority = 6

[State 250,ex ]
type = Explod
trigger1 = prevstateno = 150 || prevstateno = 152
trigger1 = time = 0
anim = 710
ID = 700
pos = 0,-65
pausemovetime = 6
ontop = 1
ownpal = 1
persistent = 0

[State 250,p]
type = Pause
trigger1 = prevstateno = 150 || prevstateno = 152
trigger1 = time = 0
time = 5
movetime = 5
ignorehitpause = 1

[State 250, pow]
type = PowerAdd
trigger1 = prevstateno = 150 || prevstateno = 152
trigger1 = time = 0
value = -1000   

[State 250, guard cancel Anim]
type = ChangeAnim
trigger1 = (prevstateno) = 150 && (time = 0)
value = 251


[State 250,hit ]
type = HitDef
trigger1 = Time = 0
attr = S,NA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 7
damage = 80,0
pausetime = 10,12
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-80
hitsound = 5,4
guardsound = 6,0
ground.type = high
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -4,-9
guard.velocity = -12
air.velocity = -4,-9
ground.cornerpush.veloff = -12
air.cornerpush.veloff = -6
fall = 1
fall.recover = 0
yaccel = .70
getpower = 40,5
givepower = 10,30
down.bounce = 1


[State 250,sn ]
type = PlaySnd
trigger1 = AnimElem = 4
value = 200,1

[State 250,sn2 ]
type = PlaySnd
trigger1 = AnimElem = 5
value = 250,0

[State 250,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1









;---------------------------------------------------------------------------
;CROUCHING ATTACKS
;---------------------------------------------------------------------------

[Statedef 400]
type = C
movetype = A
physics = S
juggle = 7
velset = 0,0
anim = 400
ctrl = 0

[State 400, hit]
type = HitDef
trigger1 = time = 0
attr = C,NA
hitflag = MAF
guardflag = M
animtype = Light
damage = 35,0
pausetime = 12,12
sparkno = 0
sparkxy = 0,-40
hitsound = 5,1
guardsound = 6,0
ground.type = low
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -6,0
air.velocity = -3,-5
ground.cornerpush.veloff = -7
air.cornerpush.veloff = -3
getpower = 20,0
givepower = 10,0

[State 400,sn ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200,0

[State 400,voice ]
type = PlaySnd
trigger1 = time = 0
trigger1 = random < 500
value = 200,2

[State 400,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


[Statedef 410]
type = C
movetype = A
physics = S
juggle = 8
velset = 0,0
anim = 410
ctrl = 0

[State 410,sn ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200,0

[State 410, hit]
type = HitDef
trigger1 = time = 0
attr = C,NA
hitflag = MAF
guardflag = M
animtype = Medium
damage = 60,0
pausetime = 12,12
priorit = 5
sparkno = 1
sparkxy = 0,-48
hitsound = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 19
ground.hittime = 19
ground.velocity = -9,0
air.velocity = -3.5,-6
ground.cornerpush.veloff = -12
air.cornerpush.veloff = -6
getpower = 30,0
givepower = 15,0

[State 410,voice ]
type = PlaySnd
trigger1 = time = 0
trigger1 = random < 500
value = 210,0

[State 410,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[Statedef 430]
type = C
movetype = A
physics = S
juggle = 7
velset = 0,0
anim = 430
ctrl = 0

[State 430, hit]
type = HitDef
trigger1 = time = 0
attr = C,NA
hitflag = MAF
guardflag = M
animtype = Light
damage = 40,0
pausetime = 12,12
sparkno = 0
sparkxy = 0,-10
hitsound = 5,2
guardsound = 6,0
ground.type = low
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -6,0
air.velocity = -3,-5
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -3
getpower = 20,0
givepower = 10,0

[State 430,sn ]
type = PlaySnd
trigger1 = time = 0
value = 200,0

[State 430,voice ]
type = PlaySnd
trigger1 = time = 0
trigger1 = random < 500
value = 200,2

[State 430,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[Statedef 440]
type = C
movetype = A
physics = S
juggle = 9
velset = 0,0
anim = 440
ctrl = 0

[State 440, hit]
type = HitDef
trigger1 = time = 0
attr = S,NA
hitflag = MAF
guardflag = L
animtype = Hard
fall.animtype = hard
damage = 70,0
pausetime = 12,12
sparkno = 1
sparkxy = 0,-10
hitsound = 5,3
guardsound = 6,0
ground.type = trip
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -2,-4
air.velocity = -3,-6
ground.cornerpush.veloff = -12
air.cornerpush.veloff = -6
getpower = 30,0
givepower = 20,0
fall = 1
fall.recover = 0

[State 440,sn ]
type = PlaySnd
trigger1 = Time = 0
value = 200,1

[State 440,voice ]
type = PlaySnd
trigger1 = time = 0
trigger1 = random < 300
value = 240,0

[State 440,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
;AIR ATTACKS
;---------------------------------------------------------------------------

[Statedef 600]
type = A
movetype = A
physics = A
juggle = 13
anim = 600
ctrl = 0

[State 600,voice ]
type = PlaySnd
trigger1 = AnimElem = 2
trigger1 = random < 500
value = 200,2

[State 600,hf ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = Light
damage = 32,0
pausetime = 10,12
sparkno = 0
guard.sparkno = 40
sparkxy = 0,-60
hitsound = 5,1
guardsound = 6,0
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -5,0
air.velocity = -3.5,-6
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -6

[State 600, sn]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200,0

[Statedef 610]
type = A
movetype = A
physics = A
juggle = 13
anim = 610
ctrl = 0


[State 200,voice ]
type = PlaySnd
trigger1 = AnimElem = 2
trigger1 = random < 500
value = 210,0

[State 610,hf ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = Medium
damage = 66,0
pausetime = 10,12
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-30
hitsound = 5,2
guardsound = 6,0
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -7,0
air.velocity = -3.5,-6
ground.cornerpush.veloff = -10
air.cornerpush.veloff = -6

[State 610, sn]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200,0

[Statedef 630]
type = A
movetype = A
physics = A
juggle = 13
anim = 630
ctrl = 0

[State 630,voice ]
type = PlaySnd
trigger1 = AnimElem = 2
trigger1 = random < 500
value = 200,2

[State 630,hf ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = Light
damage = 36,0
pausetime = 10,12
sparkno = 0
guard.sparkno = 40
sparkxy = 0,-60
hitsound = 5,1
guardsound = 6,0
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -5,0
air.velocity = -3.5,-6
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -6

[State 630, sn]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200,1

[Statedef 640]
type = A
movetype = A
physics = A
juggle = 15
anim = 640
ctrl = 0

[State 640,is under AI control? ]
type = VarRandom
trigger1 = (var(10) = 1) && (movehit)
v =  11
range = 1,2
ignorehitpause = 1

[State 640,voice ]
type = PlaySnd
trigger1 = time = 0
trigger1 = random < 500
value = 240,0

[State 640,hf ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = Medium
damage = 72,0
pausetime = 10,12
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-25
hitsound = 5,2
guardsound = 6,0
ground.slidetime = 14
ground.hittime = 15
ground.velocity = -7,0
air.velocity = -3.5,-6
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -6

[State 640, sn]
type = PlaySnd
trigger1 = time = 0
value = 200,1


[Statedef 650]
type = A
movetype = A
physics = A
juggle = 15
anim = 650
ctrl = 0

[State 650,voice ]
type = PlaySnd
trigger1 = animelem = 3
trigger1 = random < 500
value = 250,0

[State 650,hf ]
type = HitDef
trigger1 = time = 0
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = Medium
damage = 87,0
pausetime = 10,12
pausetime = 10,12
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-50
hitsound = 5,4
guardsound = 6,0
ground.type = high
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -4,-9
guard.velocity = -12
air.velocity = -4,-9
ground.cornerpush.veloff = -12
air.cornerpush.veloff = -6
fall = 1
fall.recover = 0
yaccel = .70
getpower = 40,5
givepower = 10,30
down.bounce = 1

[State 650, sn]
type = PlaySnd
trigger1 = time = 0
value = 200,1

;---------------------------------------------------------------------------
;ROLLS
;---------------------------------------------------------------------------
;FORWARD ROLL
[Statedef 700]
type    = S
movetype = I
physics = N
ctrl = 0
anim = 700
sprpriority = -2

[State 700,sn ]
type = PlaySnd
trigger1 = AnimElem = 3
value = 700,0


[State 700,ex ]
type = Explod
trigger1 = prevstateno = 150 || prevstateno = 152
trigger1 = time = 0
anim = 710
ID = 700
pos = 0,-65
pausemovetime = 6
ontop = 1
ownpal = 1
persistent = 0

[State 700,p]
type = Pause
trigger1 = prevstateno = 150 || prevstateno = 152
trigger1 = time = 0
time = 6
movetime = 6
ignorehitpause = 1

[State 700, pow]
type = PowerAdd
trigger1 = prevstateno = 150 || prevstateno = 152
trigger1 = time = 0
value = -1000   


[State 700,vel ]
type = VelSet
trigger1 = AnimElem = 3
x = 5.5

[State 700,velB ]
type = VelAdd
trigger1 = time > 12
x = -.1 

[State 700,velC ]
type = VelSet
trigger1 = AnimElem = 7,3
x = 0

[State 700, ]
type = HitBy
trigger1 = time >= 0
value = SCA,AT

[State 700,aft ]
type = AfterImage
trigger1 = Time = 3
time = 16
length = 4
palcolor = 256
palinvertall = 0
palbright = 6,6,6
palcontrast = 225,225,225
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 1,1,1
timegap = 4
framegap = 1
trans = add1



[State 700,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 700, no push]
type = PlayerPush
trigger1 = Time > 0
value = 0

;BACKWARD ROLL
[Statedef 701]
type    = S
movetype = I
physics = N
ctrl = 0
anim = 701
sprpriority = -2

[State 701,sn ]
type = PlaySnd
trigger1 = AnimElem = 3
value = 700,0

[State 701,ex ]
type = Explod
trigger1 = prevstateno = 150 || prevstateno = 152
trigger1 = time = 0
anim = 710
ID = 700
pos = 0,-65
pausemovetime = 6
ontop = 1
ownpal = 1
persistent = 0

[State 701,p]
type = Pause
trigger1 = prevstateno = 150 || prevstateno = 152
trigger1 = time = 0
time = 6
movetime = 6
ignorehitpause = 1

[State 701, pow]
type = PowerAdd
trigger1 = prevstateno = 150 || prevstateno = 152
trigger1 = time = 0
value = -1000   


[State 701,vel ]
type = VelSet
trigger1 = AnimElem = 3
x = -5.5

[State 701,velB ]
type = VelAdd
trigger1 = time = [12,32]
x = .1

[State 701,velC ]
type = VelSet
trigger1 = AnimElem = 7,3
x = 0

[State 700, ]
type = HitBy
trigger1 = time >= 0
value = SCA,AT

[State 701,aft ]
type = AfterImage
trigger1 = Time = 3
time = 16
length = 4
palcolor = 256
palinvertall = 0
palbright = 6,6,6
palcontrast = 225,225,225
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 1,1,1
timegap = 4
framegap = 1
trans = add1

[State 701,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[State 701, no push]
type = PlayerPush
trigger1 = Time > 0
value = 0

[Statedef 750]
type    = S
movetype = I
physics = N
ctrl = 0
anim = 750
velset = 0

[State 750,vo ]
type = PlaySnd
trigger1 = time = 5
value = 750,0

[State 750,vo ]
type = PlaySnd
trigger1 = time = 5
value = 750,1

[State 750,explos ]
type = Explod
trigger1 = animelem = 2,1
anim = F61
pos = 0,0
postype = p1
ID = 750
bindtime = 1
sprpriority = -2
persistent = 1
ownpal = 1
removeongethit = 1

[State 750,explos ]
type = Explod
trigger1 = numexplod(751) < 6
trigger1 = timemod = 3,0
anim = 755
pos = 0,-50
random = 20,70
vel = 0,-.2
postype = p1
ID = 751
bindtime = 1
sprpriority = -3
persistent = 1
ownpal = 1
removeongethit = 1

[State 750,explos ]
type = Explod
trigger1 = numexplod(752) < 8
trigger1 = timemod = 2,0
anim = 756
pos = 0,-50
random = 40,70
vel = 0,0
postype = p1
ID = 752
bindtime = 1
sprpriority = 6
persistent = 1
ownpal = 1
removeongethit = 1

[State 750, p]
type = PowerAdd
trigger1 = AnimElem = 2,1
value = 30

[State 750,c ]
type = ChangeState
trigger1 = command !="holdpowerup"
trigger2 = power = 3000
value = 751

[Statedef 751]
type    = S
movetype = I
physics = N
ctrl = 0
anim = 751

[State 750,vo ]
type = PlaySnd
trigger1 = time = 0
trigger1 = power = 3000
value = 750,2

[State 751,p ]
type = PalFX
trigger1 = time = 0
trigger1 = power = 3000
time = 3
add = 255,255,255
sinadd = 0,0,0,10

[State 751,c ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Throw Y
[Statedef 800]
type = S
movetype = A
physics = S
velset = 0,0
anim = 800
ctrl = 0

[State 800,ht ]
type = HitDef
trigger1 = time = 0
attr = S,NT
hitflag = MAF
guardflag = 
sparkno = 2
sparkxy = -30,-70
snap = 50,0
hitsound = S800,0
p1stateno = 801
p2facing = 1
p2stateno = 802
fall = 1
getpower = 0,0
givepower = 0,0

[State 800,c ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 801]
type = S
movetype = A
physics = S
velset = 0,0
anim = 801
ctrl = 0

[State 801,target bin(laden?)d on 1st element ]
type = TargetBind
trigger1 = time = [0,9]
time = 1
pos = 55,-71

[State 801,target bin(laden?)d on 2nd element ]
type = TargetBind
trigger1 = time = [10,14]
time = 1
pos = 25,-77

[State 801,3rd element ];i got tired of the comment,phuck -_-
type = TargetBind
trigger1 = time = [15,19]
time = 1
pos = 3,-94

[State 801,sn ]
type = PlaySnd
trigger1 = time = 25
value = 1050,2

[State 801,5th element ]
type = TargetBind
trigger1 = time = [20,25]
time = 1
pos = -24,-102

[State 801,6th element ]
type = TargetBind
trigger1 = time = 26
time = 1
pos = -63,-75

[State 801,turn ]
type = Turn
trigger1 = animtime = 0 

[State 801,tl ]
type = TargetLifeAdd
trigger1 = animelem = 6
value = -90

[State 801,end ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 802]
type = S
movetype = H
physics = N
velset = 0,0
ctrl = 0

[State 802,sc ]
type = ScreenBound
trigger1 = time >= 0
value = 0

[State 802, ]
type = ChangeAnim2
trigger1 = time = 0
value = 802

[State 802, ]
type = ChangeState
trigger1 = AnimTime = 0
value = 803

[Statedef 803]
type = S
movetype = H
physics = N
velset = 3,7
ctrl = 0

[State 802,sc ]
type = ScreenBound
trigger1 = time >= 0
value = 0


[State 803,gravity....-_- ]
type = VelAdd
trigger1 = time > 0
y = 1.2

[State 803, ]
type = ChangeAnim2
trigger1 = time = 0
value = 803

[State 803,self ]
type = SelfState
trigger1 = pos Y >= 0
value = 5100







[Statedef 850]
type = S
movetype = A
physics = S
velset = 0,0
anim = 800
ctrl = 0

[State 800,ht ]
type = HitDef
trigger1 = time = 0
attr = S,NT
hitflag = MAF
guardflag = 
sparkno = -1
sparkxy = -30,-70
snap = 50,0
hitsound = -1
p1stateno = 851
p2facing = 1
p2stateno = 852
fall = 1
getpower = 0,0
givepower = 0,0
numhits = 0

[State 800,c ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 851]
type = S
movetype = A
physics = S
velset = 0,0
anim = 851
ctrl = 0

[State 801,target bind on 1st element ]
type = TargetBind
trigger1 = time = [0,23]
time = 1
pos = 35,0

[State 851,hitsnd ]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 8
trigger3 = animelem = 12
value = F5,3

[State 851,la ]
type = TargetLifeAdd
trigger1 = animelem = 4
trigger2 = animelem = 8
trigger3 = animelem = 12
value = -15
kill = 0
absolute = 0

[State 851,ha ]
type = HitAdd
trigger1 = animelem = 4
trigger2 = animelem = 8
trigger3 = animelem = 12
value = 1

[State 851,ex ]
type = Explod
trigger1 = animelem = 4
trigger2 = animelem = 8
trigger3 = animelem = 12
anim = F2
ID = 851
pos = 34,-73
sprpriority = 8
ontop = 1
ownpal = 1

[State 851,hd ]
type = HitDef
trigger1 = animelem = 16
attr = S,NT
hitflag = MAF+
guardflag = 
damage = 65,0
pausetime = 0,0
sparkno = 2
sparkxy = 0,-80
hitsound = 5,3
guardsound = 6,0
ground.velocity = -3,-7
fall = 1
fall.recover = 1
fall.recovertime = 10
getpower = 0,0
givepower = 0,0
envshake.time = 12
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 5
juggle = 15


[State 800,c ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



[Statedef 852]
type = S
movetype = H
physics = S
velset = 0,0
ctrl = 0

[State 852,an ]
type = ChangeAnim2
trigger1 = time = 0
value = 852









;LOW JUMP
[Statedef 900]
type    = A
physics = A
anim = 950

[State 900,v ]
type = VelAdd
trigger1 = time > 0
y = .3

[State 50, 1]
type = VarSet
trigger1 = Time = 0
var(4) = 0





















;SPECIAL ATTACKS
;Angel Claw
[Statedef 1000]
type = S
movetype = A
physics = S
juggle = 10
velset = 0,0
anim = 1000
ctrl = 0
poweradd = 100

[State 1000,ps ]
type = PosSet
trigger1 = (time = 0) && (prevstateno = 220)
y = 0

[State 1000, eff1]
type = PlaySnd
trigger1 = AnimElem = 5,1
value = 1000,0

[State 1000, voi]
type = PlaySnd
trigger1 = AnimElem = 3,1
value = 1000,2

[State 1000, slowmotion ]
type = Pause
trigger1 = var(2) = 1
trigger1 = timemod = 1,0
trigger1 = time > 0
time = 1

[State 1000,slow effects off ]
type = VarSet
trigger1 = time = 0
v =  2
value = 0

[State 1000,slow effects ]
type = VarSet
trigger1 = projhit(1000) = 1
v =  2
value = 1

[State 1000,shock effects ]
type = VarSet
trigger1 = projhit(1000) = 1
v =  1
value = 1

[State 1000, ex]
type = Explod
trigger1 = AnimElem = 3
anim = 1001
ID = 1001
bindtime = -1
sprpriority = 4
ownpal = 1
removeongethit = 1

[State 1000, ]
type = Helper
trigger1 = animelem = 5
name = "effetti stupidi"
ID = 1000
pos = 49,-58
stateno = 1001
ownpal = 1

[State 1000, proj]
type = Projectile
trigger1 = AnimElem = 5
ProjID = 1000
projanim = 1002
projremove = 0
projremovetime = 14
projpriority = 5
projsprpriority = 5
attr = S,SP
hitflag = MAF
air.juggle = 15
guardflag = MA 
animtype = Hard
air.animtype = hard
damage = 92,8
pausetime = 0,3
sparkno = 2
sparkxy = ceil(p2dist X),-60
hitsound = 5,3
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 24
ground.hittime = 23
ground.velocity = -9,0
air.velocity = -5,-3
air.fall = 1
getpower = 10,0
givepower = 30,0
;NOTE:I know this Shocked PalFx isn't correct as Sander's
;(for example),but he used custom states for the gethits,
;that I didn't use,maybe I'll do it later.Hi guys! :P
palfx.time = 20
palfx.color = 60
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 126,126,126,4
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 0

[State 1000,pal ]
type = null;PalFX
trigger1 = AnimElem = 5
time = 1
add = 105,105,105

[State 1000,move hits ]
type = Explod
trigger1 = projhit(1000) = 1
anim = 1003
ID = 1000
pos = 0,-60
postype = p2
sprpriority = 5
ontop = 1
ownpal = 1

[State 1000,end ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


[Statedef 1001]
type = S
physics = N
velset = 0,0
anim = 8888
ctrl = 0

[State 1001,random3size ]
type = Varrandom
trigger1 = timemod = 1,0
v =  3
range = 1,3

[State 1001,explod2! ]
type = Explod
trigger1 = (timemod = 2,0) && (numexplod(1151) <= 15)
anim = 3504
ID = 1151
vel = -.5*(vel X),-.5*(vel Y)
random = 0,30
scale = .2*(var(3)),.2*(var(3))
sprpriority = 7
ownpal = 1

[State 1001,explod2! ]
type = Explod
trigger1 = (timemod = 3,0) && (numexplod(1151) <= 15)
anim = 3504
ID = 1151
vel = -.3*(vel X),-.3*(vel Y)
random = 0,20
scale = .1*(var(3)),.1*(var(3))
sprpriority = 7
ownpal = 1

[State 1001,vels1 ]
type = Velset
trigger1 = time = 0
x = 13

[State 1001,vels ]
type = VelAdd
trigger1 = time > 0
x = -1.2
y = -.2

[State 1001,des ]
type = DestroySelf
trigger1 = time = 10

[Statedef 1010]
type = S
movetype = A
physics = S
juggle = 10
velset = 0,0
anim = 1010
ctrl = 0
poweradd = 100

[State 1000,ps ]
type = PosSet
trigger1 = (time = 0) && (prevstateno = 220)
y = 0

[State 1010, eff1]
type = PlaySnd
trigger1 = AnimElem = 5,1
value = 1000,0

[State 1010, voi]
type = PlaySnd
trigger1 = AnimElem = 3,1
value = 1000,2

[State 1010, slowmotion ]
type = Pause
trigger1 = var(2) = 1
trigger1 = timemod = 1,0
trigger1 = time > 0
time = 1

[State 1010,slow effects off ]
type = VarSet
trigger1 = time = 0
v =  2
value = 0

[State 1010,slow effects ]
type = VarSet
trigger1 = projhit(1000) = 1
v =  2
value = 1

[State 1010,shock effects ]
type = VarSet
trigger1 = projhit(1010) = 1
v =  1
value = 1

[State 1010, ex]
type = Explod
trigger1 = AnimElem = 3
anim = 1011
ID = 1001
bindtime = -1
sprpriority = 4
ownpal = 1
removeongethit = 1

[State 1000, ]
type = Helper
trigger1 = animelem = 5
name = "effetti stupidi"
ID = 1000
pos = 49,-58
stateno = 1011
ownpal = 1

[State 1010, proj]
type = Projectile
trigger1 = AnimElem = 5
ProjID = 1010
projanim = 1002
projremove = 0
projremovetime = 14
projpriority = 5
projsprpriority = 5
velocity = 5,0
accel = -.2,0
attr = S,SP
air.juggle = 15
hitflag = MAF
guardflag = MA 
animtype = Hard
air.animtype = hard
damage = 102,8
pausetime = 0,3
sparkxy = ceil(p2dist X),-60
sparkno = 2
hitsound = 5,3
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 24
ground.hittime = 23
ground.velocity = -7,-3
air.velocity = -5,-4
fall = 1
getpower = 10,0
givepower = 30,0
palfx.time = 43
palfx.color = 60
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 126,126,126,4
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 0

[State 1010,pal ]
type = null;PalFX
trigger1 = AnimElem = 5
time = 1
add = 105,105,105

[State 1010,move hits ]
type = Explod
trigger1 = projhit(1000) = 1
anim = 1003
ID = 1000
pos = 0,-60
postype = p2
sprpriority = 5
ontop = 1
ownpal = 1

[State 1010,end ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1011]
type = S
physics = N
velset = 0,0
anim = 8888
ctrl = 0

[State 1001,random3size ]
type = Varrandom
trigger1 = timemod = 1,0
v =  3
range = 1,3

[State 1001,explod2! ]
type = Explod
trigger1 = (timemod = 2,0) && (numexplod(1151) <= 15)
anim = 3504
ID = 1151
vel = -.5*(vel X),-.5*(vel Y)
random = 0,30
scale = .2*(var(3)),.2*(var(3))
sprpriority = 7
ownpal = 1

[State 1001,explod2! ]
type = Explod
trigger1 = (timemod = 3,0) && (numexplod(1151) <= 15)
anim = 3504
ID = 1151
vel = -.3*(vel X),-.3*(vel Y)
random = 0,20
scale = .1*(var(3)),.1*(var(3))
sprpriority = 7
ownpal = 1

[State 1001,vels1 ]
type = Velset
trigger1 = time = 0
x = 17

[State 1001,vels ]
type = VelAdd
trigger1 = time > 0
x = -1.2
y = -.2

[State 1001,des ]
type = DestroySelf
trigger1 = time = 10

;---------------------------------------------------------------------
;Wing Fall
[Statedef 1050]
type = S
movetype = I
physics = S
velset = 0,0
anim = 1050
ctrl = 0
poweradd = 100

[State 1000,ps ]
type = PosSet
trigger1 = (time = 0) && (prevstateno = 220)
y = 0

[State 1050,SN ]
type = PlaySnd
trigger1 = animelem = 2
value = 1050,1

[State 1050,end ]
type = ChangeState
trigger1 = animtime = 0
value = 1051

[Statedef 1051]
type = A
movetype = A
physics = N
velset = 4,-5
anim = 1051
ctrl = 0
juggle = 9

[State 1051,SN ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1050,2
volume = 255

[State 1051,ex ]
type = Explod
trigger1 = AnimElem = 3
anim = 1055
ID = 1051
sprpriority = 5
bindtime = 6
ownpal = 1
removeongethit = 1

[State 1051,hit ]
type = HitDef
trigger1 = time = 0
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 6
damage = 100,5
pausetime = 12,12
guard.pausetime = 7,7
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-30
hitsound = 5,3
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 21
ground.hittime = 21
ground.velocity = -4,-7
ground.velocity = -4,-7
ground.cornerpush.veloff = -7
ground.cornerpush.veloff = -3
fall = 1
fall.recover = 0


[State 1051,v ]
type = VelAdd
trigger1 = time > 0
y = .44

[State 1051,p ]
type = PosAdd
trigger1 = AnimElem = 2
y = -10

[State 1050,end ]
type = ChangeState
trigger1 = moveguarded = 1
value = 1053

[State 1051,end ]
type = ChangeState
trigger1 = (pos Y >= 10) && (time > 5)
value = 1052

[Statedef 1052]
type = S
movetype = I
physics = N
velset = 4,0
anim = 1052
ctrl = 0

[State 1052,SN ]
type = PlaySnd
trigger1 = time = 0
value = 1050,0

[State 1052,p ]
type = PosSet
trigger1 = time = 0
y = 0

[State 1052,v ]
type = VelAdd
trigger1 = time > 0
x = -.24

[State 1050,end ]
type = ChangeState
trigger1 = animtime = 0
value = 5120

[Statedef 1053]
type = A
movetype = I
physics = A
velset = -2,-6
anim = 1053
ctrl = 0

[State 1053,nl ]
type = Null
trigger1 = time = 0

;B VERSION
[Statedef 1060]
type = S
movetype = I
physics = S
velset = 0,0
anim = 1060
ctrl = 0
poweradd = 100

[State 1000,ps ]
type = PosSet
trigger1 = (time = 0) && (prevstateno = 220)
y = 0

[State 1060,SN ]
type = PlaySnd
trigger1 = animelem = 2
value = 1050,1

[State 1060,end ]
type = ChangeState
trigger1 = animtime = 0
value = 1061

[Statedef 1061]
type = A
movetype = A
physics = N
velset = 7,-4
anim = 1051
ctrl = 0
juggle = 9

[State 1061,SN ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1050,2
volume = 255

[State 1061,ex ]
type = Explod
trigger1 = AnimElem = 3
anim = 1055
ID = 1051
sprpriority = 5
bindtime = 6
ownpal = 1
removeongethit = 1

[State 1061,hit ]
type = HitDef
trigger1 = time = 0
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 6
damage = 90,5
pausetime = 12,12
guard.pausetime = 7,7
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-30
hitsound = 5,3
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 21
ground.hittime = 21
ground.velocity = -6,-7
ground.velocity = -6,-7
ground.cornerpush.veloff = -7
ground.cornerpush.veloff = -3
fall = 1
fall.recover = 0

[State 1061,v ]
type = VelAdd
trigger1 = time > 0
y = .44

[State 1061,p ]
type = PosAdd
trigger1 = AnimElem = 2
y = -10

[State 1060,end ]
type = ChangeState
trigger1 = moveguarded = 1
value = 1063

[State 1061,end ]
type = ChangeState
trigger1 = (pos Y >= 10) && (time > 5)
value = 1062

[Statedef 1062]
type = S
movetype = I
physics = N
velset = 6,0
anim = 1052
ctrl = 0

[State 1062,SN ]
type = PlaySnd
trigger1 = time = 0
value = 1050,0

[State 1062,p ]
type = PosSet
trigger1 = time = 0
y = 0

[State 1052,v ]
type = VelAdd
trigger1 = time > 0
x = -.44

[State 1062,end ]
type = ChangeState
trigger1 = animtime = 0
value = 5120

[Statedef 1063]
type = A
movetype = I
physics = A
velset = -3,-6
anim = 1053
ctrl = 0

[State 1053,nl ]
type = Null
trigger1 = time = 0


;STAINED GLASS CROSS
[Statedef 1100]
type = S
movetype = A
physics = S
velset = 5,0
anim = 1100
ctrl = 0
juggle = 8
poweradd = 100

[State 1000,ps ]
type = PosSet
trigger1 = (time = 0) && (prevstateno = 220)
y = 0

[State 1100,p ]
type = PosAdd
trigger1 = AnimElem = 3
x = 6

[State 1100, ]
type = HitDef
trigger1 = AnimElem = 3
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
priority = 6
damage = 20,5
pausetime = 3,2
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-80
hitsound = 5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 8
ground.hittime = 8
ground.velocity = -2,0
guard.velocity = -9
air.velocity = -1,-4
airguard.velocity = -3,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0 

[State 1100, ]
type = HitDef
trigger1 = AnimElem = 5
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Up
air.animtype = Hard
priority = 6
damage = 20,5
pausetime = 5,4
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-60
hitsound = 5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 8
ground.hittime = 8
ground.velocity = -1,-9
guard.velocity = -4
air.velocity = -1,-9
airguard.velocity = -3,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0 
fall = 1
fall.recover = 0

[State 1100,sn ]
type = PlaySnd
trigger1 = AnimTime = 1
value = 1050,2

[State 1100,sn ]
type = PlaySnd
trigger1 = Time = 0
value = 1100,0

[State 1100,end ]
type = ChangeState
trigger1 = animtime = 0
value = 1101

[Statedef 1101]
type = A
movetype = A
physics = N
velset = 5,-7
anim = 1101
ctrl = 0
hitcountpersist = 1
juggle = 3

[State 3101, ex]
type = Explod
trigger1 = time = 0
anim = 3104
ID = 1101
pos = 13,-40
bindtime = -1
sprpriority = 6
scale = .7,.7

[State 1101,v ]
type = VelMul
trigger1 = time > 0
x = .91
y = .93


[State 1101, ]
type = HitDef
trigger1 = Time = 0
attr = A,SA
hitflag = AF
guardflag = MA
animtype = Up
air.animtype = Hard
priority = 6
damage = 60,5
pausetime = 8,7
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-80
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 8
ground.hittime = 8
ground.velocity = -4,-8
guard.velocity = -4
air.velocity = -4,-8
airguard.velocity = -3,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0 
fall = 1
fall.recover = 1
palfx.time = 50
palfx.color = 60
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 126,126,126,4
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 0
fall.recovertime = 12

[State 1101,v ]
type = VarSet
trigger1 = movehit
v =  1
value = 1

[State 1101,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1000,1

[State 1101, ex]
type = Explod
trigger1 = time = 0
anim = 1103
ID = 1103
pos = 0,0
bindtime = 6
sprpriority = 6
ownpal = 1

[State 1101, ex2]
type = Explod
trigger1 = time = 0
anim = 1104
ID = 1104
pos = 0,0
bindtime = -1
sprpriority = 6
ownpal = 1


[State 1102,end ]
type = ChangeState
trigger1 = animtime = 0
value = 1102

[Statedef 1102]
type = A
movetype = I
physics = A
anim = 1102
ctrl = 0

[State 1102,ex ]
type = ExplodBindTime
trigger1 = time = 0
ID = 1104
time = 1
ignorehitpause = 1

[State 1102,m ]
type = VelMul
trigger1 = time > 0
x = .91

;B Version
[Statedef 1110]
type = S
movetype = A
physics = S
velset = 7,0
anim = 1110
ctrl = 0
juggle = 8
poweradd = 100

[State 1000,ps ]
type = PosSet
trigger1 = (time = 0) && (prevstateno = 220)
y = 0

[State 1100,p ]
type = PosAdd
trigger1 = AnimElem = 3
x = 6

[State 1100, ]
type = HitDef
trigger1 = AnimElem = 3
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
priority = 7
damage = 25,5
pausetime = 3,2
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-80
hitsound = 5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 8
ground.hittime = 8
ground.velocity = -2,0
guard.velocity = -9
air.velocity = -1,-4
airguard.velocity = -3,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0 

[State 1100, ]
type = HitDef
trigger1 = AnimElem = 5
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Up
air.animtype = Hard
priority = 7
damage = 25,5
pausetime = 5,4
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-60
hitsound = 5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 8
ground.hittime = 8
ground.velocity = -2,-11
guard.velocity = -4
air.velocity = -2,-11
airguard.velocity = -3,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0 
fall = 1
fall.recover = 0

[State 1100,sn ]
type = PlaySnd
trigger1 = AnimTime = 1
value = 1050,2

[State 1100,sn ]
type = PlaySnd
trigger1 = Time = 0
value = 1100,0

[State 1100,end ]
type = ChangeState
trigger1 = animtime = 0
value = 1111

[Statedef 1111]
type = A
movetype = A
physics = N
velset = 6,-12
anim = 1101
ctrl = 0
hitcountpersist = 1
juggle = 3

[State 3101, ex]
type = Explod
trigger1 = time = 0
anim = 3104
ID = 1101
pos = 13,-40
bindtime = -1
sprpriority = 6
scale = .7,.7

[State 1101,v ]
type = VelMul
trigger1 = time > 0
x = .91
y = .93


[State 1101, ]
type = HitDef
trigger1 = Time = 0
attr = A,SA
hitflag = AF
guardflag = MA
animtype = Up
air.animtype = Hard
priority = 8
damage = 65,5
pausetime = 8,7
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-80
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 8
ground.hittime = 8
ground.velocity = -3,-9
guard.velocity = -4
air.velocity = -3,-9
airguard.velocity = -3,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0 
fall = 1
fall.recover = 1
palfx.time = 50
palfx.color = 60
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 126,126,126,4
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 0
fall.recovertime = 12

[State 1101,v ]
type = VarSet
trigger1 = movehit
v =  1
value = 1

[State 1101,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1000,1

[State 1101, ex]
type = Explod
trigger1 = time = 0
anim = 1103
ID = 1103
pos = 0,0
bindtime = 6
sprpriority = 6
ownpal = 1

[State 1101, ex2]
type = Explod
trigger1 = time = 0
anim = 1104
ID = 1104
pos = 0,0
bindtime = -1
sprpriority = 6
ownpal = 1


[State 1102,end ]
type = ChangeState
trigger1 = animtime = 0
value = 1102





;1776
[Statedef 1150]
type = S
movetype = A
physics = S
juggle = 10
velset = 0,0
anim = 1150
ctrl = 0
poweradd = 100

[State 1000,ps ]
type = PosSet
trigger1 = (time = 0) && (prevstateno = 220)
y = 0

[State 1150,voice ]
type = PlaySnd
trigger1 = time = 3
value = 1150,0

[State 1150,sfx ]
type = PlaySnd
trigger1 = animelem = 3
value = 3100,0

[State 1150,p ]
type = PosAdd
trigger1 = AnimElem = 3
x = 12

[State 1150,p ]
type = PosAdd
trigger1 = AnimElem = 4
x = 6

[State 1150,effetto cretino ]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "ancora il solito effetto"
ID = 1150
pos = 62,-68
stateno = 1151
ownpal = 1

[State 1150,hit ]
type = HitDef
trigger1 = AnimElem = 4
attr = S,SA
hitflag = MAF
guardflag = MA 
animtype = Hard
air.animtype = Hard
priority = 8
damage = 90,12
pausetime = 12,11
sparkno = 2
sparkxy = 0,-71
hitsound = 5,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 21
ground.hittime = 21
guard.ctrltime = 16
ground.velocity = -9,0
air.velocity = -8,-4
ground.cornerpush.veloff = -9
air.cornerpush.veloff = -5
getpower = 20,0
givepower = 0,20
palfx.time = 12
palfx.color = 60
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 126,126,126,4
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 0
fall.recovertime = 12
air.fall = 1

[State 1150,v ]
type = VarSet
trigger1 = movehit
v =  1
value = 1
ignorehitpause = 1

[State 1150, ex]
type = Explod
trigger1 = AnimElem = 2
anim = 1152
ID = 1150
bindtime = -1
pos = 40,-8
sprpriority = 8
ownpal = 1
removeongethit = 1

[State 1150, ex]
type = Explod
trigger1 = AnimElem = 4
anim = 1153
ID = 1150
bindtime = -1
pos = 0,0
sprpriority = 8
ownpal = 1
removeongethit = 1

[State 1150, ex]
type = Explod
trigger1 = AnimElem = 4
anim = 1151
ID = 1150
bindtime = -1
sprpriority = 7
ownpal = 1
removeongethit = 1

[State 1102,end ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1151]
type = S
velset = 0,0
anim = 8888
ctrl = 0

[State 1151,random1Y ]
type = Varrandom
trigger1 = timemod = 1,0
v =  1
range = -1,1

[State 1151,random2X ]
type = Varrandom
trigger1 = timemod = 1,0
v =  2
range = -3,-7

[State 1151,random3size ]
type = Varrandom
trigger1 = timemod = 1,0
v =  3
range = 1,3

[State 1151,explod! ]
type = Explod
trigger1 = (timemod = 1,0) && (numexplod(1151) <= 15)
anim = 3504
ID = 1151
vel = var(2),var(1)
accel = .2,0
random = 0,30
scale = .3*(var(3)),.3*(var(3))
sprpriority = 7
ownpal = 1

[State 1151,explod2! ]
type = Explod
trigger1 = (timemod = 1,0) && (numexplod(1151) <= 15)
anim = 3504
ID = 1151
vel = 1.2*(var(2)),1.2*(var(1))
accel = .29,0
random = 0,30
scale = .2*(var(3)),.2*(var(3))
sprpriority = 7
ownpal = 1

[State 1151,explod2! ]
type = Explod
trigger1 = (timemod = 1,0) && (numexplod(1151) <= 15)
anim = 3504
ID = 1151
vel = 1.4*(var(2)),1.4*(var(1))
accel = .3,0
random = 0,20
scale = .1*(var(3)),.1*(var(3))
sprpriority = 7
ownpal = 1

[State 1151,d ]
type = DestroySelf
trigger1 = time = 5



[Statedef 1160]
type = S
movetype = A
physics = S
juggle = 10
velset = 0,0
anim = 1160
ctrl = 0
poweradd = 100

[State 1000,ps ]
type = PosSet
trigger1 = (time = 0) && (prevstateno = 220)
y = 0

[State 1150, ex]
type = Explod
trigger1 = AnimElem = 5
anim = 1153
ID = 1150
bindtime = -1
scale = 1,1.2
pos = 0,15
sprpriority = 8
ownpal = 1
removeongethit = 1

[State 1160,nh ]
type = NotHitBy
trigger1 = time < 12
value = SCA,NA,SA

[State 1150,voice ]
type = PlaySnd
trigger1 = time = 4
value = 1150,0

[State 1150,sfx ]
type = PlaySnd
trigger1 = animelem = 4
value = 3100,0

[State 1150,p ]
type = PosAdd
trigger1 = AnimElem = 5
x = 9

[State 1150,p2 ]
type = PosAdd
trigger1 = AnimElem = 4
x = 17


[State 1150,effetto cretino ]
type = Helper
trigger1 = AnimElem = 5
helpertype = normal
name = "ancora il solito effetto"
ID = 1150
pos = 62,-68
stateno = 1151
ownpal = 1

[State 1150,hit ]
type = HitDef
trigger1 = AnimElem = 5
attr = S,SA
hitflag = MAF
guardflag = MA 
animtype = Hard
air.animtype = Hard
priority = 8
damage = 110,7
pausetime = 12,11
sparkno = 2
sparkxy = 0,-71
hitsound = 5,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 24
ground.hittime = 24
guard.ctrltime = 16
ground.velocity = -12,0
air.velocity = -8,-4
ground.cornerpush.veloff = -9
air.cornerpush.veloff = -5
getpower = 20,0
givepower = 0,20
palfx.time = 12
palfx.color = 60
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 126,126,126,4
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 0
fall.recovertime = 12
air.fall = 1

[State 1150,v ]
type = VarSet
trigger1 = movehit
v =  1
value = 1
ignorehitpause = 1

[State 1150, ex]
type = Explod
trigger1 = AnimElem = 5
anim = 1151
ID = 1150
bindtime = -1
sprpriority = 7
ownpal = 1
removeongethit = 1
scale = 1.2,1.2
pos = -12,11

[State 1150, ex]
type = Explod
trigger1 = AnimElem = 5
anim = 1151
ID = 1150
bindtime = -1
sprpriority = 7
ownpal = 1
removeongethit = 1
scale = .2,1.7
pos = 67,46

[State 1150, ex]
type = Explod
trigger1 = AnimElem = 3
anim = 1152
ID = 1150
bindtime = -1
pos = 40,8
sprpriority = 8
ownpal = 1
removeongethit = 1
scale = 1.2,1.2

[State 1102,end ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1





;GODDESS OF THE SADMAN
[Statedef 1200]
type = A
movetype = A
physics = N
juggle = 9
anim = 1200
ctrl = 0
velset = 0,0
poweradd = 100

[State 1000,shock effects ]
type = VarSet
trigger1 = projhit(1200) = 1
v =  1
value = 1


[State 1200,vel ]
type = VelSet
trigger1 = AnimElem = 5
x = -2
y = -6

[State 1200,VA ]
type = VelAdd
trigger1 = time > 16
y = .6

[State 1200,ex ]
type = Explod
trigger1 = AnimElem = 5
anim = 1203
ID = 1203
bindtime = 12
sprpriority = -2
ownpal = 1
removeongethit = 1
scale = .7,.7
pos = 0,-24

[State 1200,ex ]
type = Explod
trigger1 = AnimElem = 5
anim = 1202
ID = 1202
bindtime = 7
sprpriority = 8
ownpal = 1
removeongethit = 1

[State 1200,p ]
type = Projectile
trigger1 = AnimElem = 5
projID = 1200
projanim = 1204
projhitanim = 1205
projremanim = 1205
projcancelanim = 1205
projremove = 1
velocity = 4,4
remvelocity = 0,0
projremovetime = 16
accel = .2,.2
projpriority = 2
projsprpriority = 4
offset = 10,-68
attr = A,SP
hitflag = MAFD
guardflag = HA 
animtype = Hard
air.animtype = hard
damage = 92,8
pausetime = 0,3
sparkno = 2
guard.sparkno = 40
hitsound = 5,3
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 24
ground.hittime = 23
ground.velocity = -9,0
air.velocity = -5,-3
air.fall = 1
getpower = 10,0
givepower = 30,0
palfx.time = 20
palfx.color = 60
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 126,126,126,4

[State 1200, sn]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000,1

[State 1200, sn]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3500,0

[State 1200,hp ]
type = Helper
trigger1 = AnimElem = 5
helpertype = normal
name = "effetto cretino proiettile 1200"
ID = 1200
pos = 10,-68
stateno = 1205
ownpal = 1

[State 1200,end ]
type = ChangeState
trigger1 = pos Y > 0
value = 52

[Statedef 1201]
type = S
movetype = I
physics = S
velset = 0,0
anim = 3108
ctrl = 0

[State 1201,p ]
type = PosSet
trigger1 = time = 0
y = 0

[State 1201,p ]
type = PlaySnd
trigger1 = time = 0
value = 40,0

[State 1201,s ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Effetto cretino
[Statedef 1205]
type = A
physics = N
velset = 4,4
anim = 1208
ctrl = 0

[State 1205,veladd ]
type = VelAdd
trigger1 = time > 0
x = .2
y = .2

[State 1205,aft ]
type = AfterImage
trigger1 = time = 0
time = 9999
length = 8
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 250,250,250
palpostbright = 0,0,0
paladd = 10,10,10
palmul = .65,.65,.65
timegap = 1
framegap = 2
trans = add

[State 1205,ass ]
type = AssertSpecial
trigger1 = time > 0
flag = invisible

[State 1151,random1Y ]
type = Varrandom
trigger1 = timemod = 1,0
v =  1
range = -2,-4

[State 1151,random2X ]
type = Varrandom
trigger1 = timemod = 1,0
v =  2
range = -4,-2

[State 1151,random3size ]
type = Varrandom
trigger1 = timemod = 1,0
v =  3
range = 1,3

[State 1151,explod! ]
type = Explod
trigger1 = (timemod = 1,0) && (numexplod(1151) <= 25)
anim = 3504
ID = 1151
vel = var(2),var(1)
random = 0,30
scale = .3*(var(3)),.3*(var(3))
sprpriority = 7
ownpal = 1

[State 1151,d ]
type = Changestate
trigger1 = parent,numprojID(1200) = 0
value = 1206


[Statedef 1206]
type = A
physics = N
velset = 0,0
anim = 1205
ctrl = 0

[State 1205,ass ]
type = AssertSpecial
trigger1 = time > 0
flag = invisible

[State 1151,random1Y ]
type = Varrandom
trigger1 = timemod = 1,0
v =  1
range = 4,-4

[State 1151,random2X ]
type = Varrandom
trigger1 = timemod = 1,0
v =  2
range = 4,-4

[State 1151,random3size ]
type = Varrandom
trigger1 = timemod = 1,0
v =  3
range = 1,3

[State 1151,explod! ]
type = Explod
trigger1 = (timemod = 1,0) && (numexplod(1151) <= 35) && (time < 17)
anim = 3504
ID = 1151
vel = var(2),var(1)
random = 0,30
scale = .3*(var(3)),.3*(var(3))
sprpriority = 7
ownpal = 1

[State 1151,d ]
type = DestroySelf
trigger1 = animtime = 0




[Statedef 1210]
type = A
movetype = A
physics = N
juggle = 12
velset = 0,0
anim = 1200
ctrl = 0
poweradd = 100

[State 1000,shock effects ]
type = VarSet
trigger1 = projhit(1200) = 1
v =  1
value = 1

[State 1200,vel ]
type = VelSet
trigger1 = AnimElem = 5
x = -3
y = -7

[State 1200,VA ]
type = VelAdd
trigger1 = time > 16
y = .6

[State 1200,ex ]
type = Explod
trigger1 = AnimElem = 5
anim = 1203
ID = 1203
bindtime = 12
sprpriority = -2
ownpal = 1
removeongethit = 1

[State 1200,ex ]
type = Explod
trigger1 = AnimElem = 5
anim = 1202
ID = 1202
bindtime = 7
sprpriority = 8
ownpal = 1
removeongethit = 1

[State 1200,p ]
type = Projectile
trigger1 = AnimElem = 5
projID = 1200
projanim = 1204
projhitanim = 1205
projremanim = 1205
projcancelanim = 1205
projremove = 1
velocity = 6,6
remvelocity = 0,0
accel = .2,.2
projpriority = 2
projsprpriority = 6
offset = 10,-68
attr = A,SP
hitflag = MAFD
guardflag = HA 
animtype = Hard
air.animtype = hard
damage = 72,8
pausetime = 0,3
sparkno = 2
guard.sparkno = 40
hitsound = 5,3
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 24
ground.hittime = 23
ground.velocity = -9,0
air.velocity = -5,-3
air.fall = 1
getpower = 10,0
givepower = 30,0
palfx.time = 20
palfx.color = 60
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 126,126,126,4

[State 1200, sn]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000,1

[State 1200, sn]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3500,0

[State 1200,hp ]
type = Helper
trigger1 = AnimElem = 5
helpertype = normal
name = "effetto cretino proiettile 1200"
ID = 1200
pos = 10,-68
stateno = 1215
ownpal = 1

[State 1200,end ]
type = ChangeState
trigger1 = pos Y > 0
value = 52


[Statedef 1215]
type = A
physics = N
velset = 6,6
anim = 1208
ctrl = 0

[State 105,veladd ]
type = VelAdd
trigger1 = time > 0
x = .2
y = .2

[State 1205,aft ]
type = AfterImage
trigger1 = time = 0
time = 9999
length = 8
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 250,250,250
palpostbright = 0,0,0
paladd = 10,10,10
palmul = .65,.65,.65
timegap = 1
framegap = 2
trans = add

[State 1205,ass ]
type = AssertSpecial
trigger1 = time > 0
flag = invisible

[State 1151,random1Y ]
type = Varrandom
trigger1 = timemod = 1,0
v =  1
range = -2,-4

[State 1151,random2X ]
type = Varrandom
trigger1 = timemod = 1,0
v =  2
range = -4,-2

[State 1151,random3size ]
type = Varrandom
trigger1 = timemod = 1,0
v =  3
range = 1,3

[State 1151,explod! ]
type = Explod
trigger1 = (timemod = 1,0) && (numexplod(1151) <= 25)
anim = 3504
ID = 1151
vel = var(2),var(1)
random = 0,30
scale = .3*(var(3)),.3*(var(3))
sprpriority = 7
ownpal = 1

[State 1151,d ]
type = Changestate
trigger1 = parent,numprojID(1200) = 0
value = 1206



;MIND ON FIRE
[Statedef 1250]
type = S
movetype = A
physics = S
juggle = 10
anim = 1250
ctrl = 0
poweradd = 100
velset = 0,0

[State 1000,ps ]
type = PosSet
trigger1 = (time = 0) && (prevstateno = 220)
y = 0

[State 1250,effetto cretino ]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "ancora il solito effetto"
ID = 1250
pos = 37,-64
stateno = 1151
ownpal = 1

[State 1250,effetto cretino bis ]
type = Helper
trigger1 = AnimElem = 8
helpertype = normal
name = "ancora il solito effetto SUPER"
ID = 1250
pos = 0,0
stateno = 1251
ownpal = 1

[State 1250,ex ]
type = Explod
trigger1 = AnimElem = 3
anim = 1251
bindtime = -1
sprpriority = 5
ownpal = 1
removeongethit = 1

[State 1250,ex ]
type = Explod
trigger1 = AnimElem = 7
anim = 1253
bindtime = -1
sprpriority = -1
ownpal = 1
removeongethit = 1

[State 1250,ex ]
type = Explod
trigger1 = AnimElem = 8
anim = 1252
bindtime = -1
sprpriority = -1
scale = .7,.7
ownpal = 1
removeongethit = 1

[State 1250,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1050,0

[State 1250,sn ]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1250,0

[State 1250,hit1 ]
type = HitDef
trigger1 = AnimElem = 3
trigger1 = enemy,stateno != [5030,5060]
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 6
damage = 30,2
pausetime = 12,12
sparkno = 2
sparkxy = 0,-63
hitsound = 5,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 12
ground.hittime = 32
ground.velocity = 0,0
guard.velocity = -4
air.velocity = 0,3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = -1
getpower = 10,0
givepower = 0,10
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 4
palfx.time = 12
palfx.color = 60
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 126,126,126,4

[State 1250,hit2 ]
type = HitDef
trigger1 = AnimElem = 8
trigger1 = enemy,stateno != [5030,5060]
ID = 1250
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 8
damage = 70,2
pausetime = 7,7
sparkno = 2
sparkxy = 0,-78
hitsound = 5,3
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -3,-9
air.velocity = -3,-9
ground.cornerpush.veloff = -7
air.cornerpush.veloff = -7
getpower = 10,0
givepower = 0,10
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 4
palfx.time = 25
palfx.color = 60
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 126,126,126,4
fall = 1
fall.recover = 0

[State 1250,v ]
type = VarSet
trigger1 = movehit
v =  1
value = 1
ignorehitpause = 1

[State 1250,sn ]
type = PlaySnd
trigger1 = animelem = 3
value = 200,1

[State 1250,sn ]
type = PlaySnd
trigger1 = animelem = 8
value = 1050,2

[State 1250,sn ]
type = PlaySnd
trigger1 = time = 21
value = 1000,1

[State 1250,d ]
type = MakeDust
trigger1 = time < 7
pos = 0,0
spacing = 2

[State 1250,ve ]
type = VelSet
trigger1 = time < 8
x = 5

[State 1250,p ]
type = PosAdd
trigger1 = animelem = 11
x = 4

[State 1250,end ]
type = Changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1251]
type = S
velset = 0,0
anim = 8888
ctrl = 0

[State 1151,random1Y ]
type = Varrandom
trigger1 = timemod = 1,0
v =  1
range = -8,-2

[State 1151,random2X ]
type = Varrandom
trigger1 = timemod = 1,0
v =  2
range = 0,3

[State 1151,random3size ]
type = Varrandom
trigger1 = timemod = 1,0
v =  3
range = 1,3

[State 1151,explod! ]
type = Explod
trigger1 = (timemod = 1,0) && (numexplod(1151) <= 15)
anim = 3504
ID = 1151
vel = var(2),var(1)
accel = .2,0
random = 10,0
scale = .3*(var(3)),.3*(var(3))
sprpriority = -2
ownpal = 1

[State 1151,explod2! ]
type = Explod
trigger1 = (timemod = 1,0) && (numexplod(1151) <= 15)
anim = 3504
ID = 1151
vel = 1.2*(var(2)),1.2*(var(1))
accel = .29,0
random = 10,0
scale = .2*(var(3)),.2*(var(3))
sprpriority = -2
ownpal = 1

[State 1151,explod2! ]
type = Explod
trigger1 = (timemod = 1,0) && (numexplod(1151) <= 15)
anim = 3504
ID = 1151
vel = 1.4*(var(2)),1.4*(var(1))
accel = .3,0
random = 10,0
scale = .1*(var(3)),.1*(var(3))
sprpriority = -2
ownpal = 1

[State 1151,d ]
type = DestroySelf
trigger1 = time = 5

[Statedef 1252]
type = S
velset = 0,0
anim = 8888
ctrl = 0

[State 1151,random1Y ]
type = Varrandom
trigger1 = timemod = 1,0
v =  1
range = -4,4

[State 1151,random2X ]
type = Varrandom
trigger1 = timemod = 1,0
v =  2
range = 4,-4

[State 1151,random3size ]
type = Varrandom
trigger1 = timemod = 1,0
v =  3
range = 1,3

[State 1151,explod! ]
type = Explod
trigger1 = (timemod = 1,0) && (numexplod(1252) <= 15)
anim = 3504
ID = 1252
vel = var(2),var(1)
accel = .2,0
random = 10,0
scale = .3*(var(3)),.3*(var(3))
sprpriority = 5
ownpal = 1

[State 1151,explod2! ]
type = Explod
trigger1 = (timemod = 1,0) && (numexplod(1252) <= 15)
anim = 3504
ID = 1252
vel = 1.2*(var(2)),1.2*(var(1))
accel = .29,0
random = 10,0
scale = .2*(var(3)),.2*(var(3))
sprpriority = 5
ownpal = 1

[State 1151,explod2! ]
type = Explod
trigger1 = (timemod = 1,0) && (numexplod(1252) <= 15)
anim = 3504
ID = 1252
vel = 1.4*(var(2)),1.4*(var(1))
accel = .3,0
random = 10,0
scale = .1*(var(3)),.1*(var(3))
sprpriority = 5
ownpal = 1

[State 1151,botto! ]
type = Explod
trigger1 = time = 0
anim = 3512
ID = 1253
random = 0,0
scale = .001*(var(4)),.001*(var(4))
sprpriority = 5
ontop = 1
ownpal = 1
vfacing = 1

[State 1151,botto! ]
type = Explod
trigger1 = time = 0
anim = 3512
ID = 1253
random = 0,0
scale = .001*(var(4)),.001*(var(4))
sprpriority = 5
ontop = 1
ownpal = 1
vfacing = -1

[State 1151,v ]
type = VarAdd
trigger1 = timemod = 1,0
v = 4
value = var(5)

[State 1151,v2 ]
type = VarAdd
trigger1 = timemod = 1,0
v = 5
value = -15

[State 1151,v2 ]
type = VarSet
trigger1 = time = 0
v = 5
value = 200

[State 1252, ]
type = ModifyExplod
trigger1 = timemod = 1,0
ID = 1253
scale = .001*(var(4)),.001*(var(4))

[State 1151,d ]
type = DestroySelf
trigger1 = numexplod(1253) = 0



[Statedef 1260]
type = S
movetype = A
physics = S
juggle = 10
anim = 1250
ctrl = 0
poweradd = 100
velset = 0,0

[State 1000,ps ]
type = PosSet
trigger1 = (time = 0) && (prevstateno = 220)
y = 0

[State 1250,ex ]
type = Explod
trigger1 = AnimElem = 7
anim = 1253
bindtime = -1
sprpriority = -1
ownpal = 1
removeongethit = 1

[State 1250,effetto cretino ]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "ancora il solito effetto"
ID = 1250
pos = 37,-64
stateno = 1151
ownpal = 1

[State 1250,effetto cretino bis ]
type = Helper
trigger1 = AnimElem = 8
helpertype = normal
name = "ancora il solito effetto SUPER"
ID = 1250
pos = 0,0
stateno = 1251
ownpal = 1

[State 1250,ex ]
type = Explod
trigger1 = AnimElem = 3
anim = 1251
bindtime = -1
sprpriority = 5
scale = 1.2,1.2
pos = 0,10
ownpal = 1
removeongethit = 1

[State 1250,ex ]
type = Explod
trigger1 = AnimElem = 8
anim = 1252
bindtime = -1
sprpriority = -1
ownpal = 1
removeongethit = 1
scale = .8,.8


[State 1250,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1050,0

[State 1250,sn ]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1250,0

[State 1250,hit1 ]
type = HitDef
trigger1 = AnimElem = 3
trigger1 = enemy,stateno != [5030,5060]
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 6
damage = 50,2
pausetime = 12,12
sparkno = 2
sparkxy = 0,-63
hitsound = 5,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 12
ground.hittime = 32
ground.velocity = 0,0
guard.velocity = -4
air.velocity = 0,3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = -1
getpower = 10,0
givepower = 0,10
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 4
palfx.time = 12
palfx.color = 60
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 126,126,126,4

[State 1250,hit2 ]
type = HitDef
trigger1 = AnimElem = 8
trigger1 = enemy,stateno != [5030,5060]
ID = 1250
attr = S,SA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 8
damage = 70,2
pausetime = 7,7
sparkno = 3
sparkxy = 0,-78
hitsound = 5,4
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -3,-10
air.velocity = -3,-10
ground.cornerpush.veloff = -7
air.cornerpush.veloff = -7
getpower = 10,0
givepower = 0,10
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 4
palfx.time = 25
palfx.color = 60
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 126,126,126,4
fall = 1
fall.recover = 0

[State 1250,v ]
type = VarSet
trigger1 = movehit
v =  1
value = 1
ignorehitpause = 1

[State 1250,sn ]
type = PlaySnd
trigger1 = animelem = 3
value = 200,1

[State 1250,sn ]
type = PlaySnd
trigger1 = animelem = 8
value = 1050,2

[State 1250,sn ]
type = PlaySnd
trigger1 = time = 21
value = 1000,1

[State 1250,d ]
type = MakeDust
trigger1 = time < 7
pos = 0,0
spacing = 2

[State 1250,ve ]
type = VelSet
trigger1 = time < 8
x = 8

[State 1250,p ]
type = PosAdd
trigger1 = animelem = 11
x = 4

[State 1250,end ]
type = Changestate
trigger1 = animtime = 0
value = 0
ctrl = 1


;SCREAM OF ANGER
[Statedef 1300]
type = C
movetype = A
physics = S
anim = 1300
ctrl = 0
poweradd = 100
velset = 4,0

[State 1000,ps ]
type = PosSet
trigger1 = (time = 0) && (prevstateno = 220)
y = 0

[State 1300, ]
type = PlaySnd
trigger1 = animelem = 4
value = 210,0

[State 1300,end ]
type = Changestate
trigger1 = animtime = 0
value = 1301
ctrl = 1

[Statedef 1301]
type = A
movetype = A
physics = N
anim = 1301
ctrl = 0
juggle = 5
velset = 6,-2

[State 1301, ]
type = PlaySnd
trigger1 = time = 0
value = 1050,2

[State 1301, ]
type = PlaySnd
trigger1 = animelem = 2
value = 1000,0

[State 1301,hit ]
type = HitDef
trigger1 = animelem = 3,1
attr = C,SA
hitflag = MAF
guardflag = L
animtype = Hard
priority = 3
damage = 30,6
pausetime = 5,5
sparkno = 2
sparkxy = 0,-30
hitsound = 5,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -5,0
guard.velocity = -3
air.velocity = -5,-3
air.juggle = 5
air.fall = 1
getpower = 10,0
givepower = 0,10
palfx.time = 15
palfx.color = 60
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 126,126,126,4

[State 1301,v ]
type = VarSet
trigger1 = movehit
v =  1
value = 1
ignorehitpause = 1

[State 1150, ex]
type = Explod
trigger1 = time = 0
anim = 1251
ID = 1300
bindtime = 1
pos = 0,28
sprpriority = 8
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1301,effetti ]
type = Helper
trigger1 = AnimElem = 3
name = "effetto strasupercretino"
ID = 1300
pos = 72,-23
stateno = 1302

[State 1301,effetti ]
type = Helper
trigger1 = time = 0
name = "effetto strasupercretinoBIS "
ID = 1300
pos = 0,0
stateno = 1303

[State 1150, ex]
type = Explod
trigger1 = (timemod = 3,0) && (time > 3)
anim = 1302
ID = 1300
bindtime = 1
pos = 90,-28
sprpriority = 8
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1150, ex]
type = Explod
trigger1 = (timemod = 6,0) && (time > 3)
anim = 1153
ID = 1300
bindtime = 1
pos = 0,50
sprpriority = 8
ownpal = 1
removeongethit = 1

[State 1300,ve ]
type = VelAdd
trigger1 = time > 0
y = .3

[State 1300, ]
type = ChangeState
trigger1 = pos Y >= 10
value = 1052

[Statedef 1302]
type = S
velset = 0,0
anim = 8888
ctrl = 0

[State 1302,BIND ]
type = BindToParent
trigger1 = time > 0
time = 2
pos = 70,-24

[State 1151,random1Y ]
type = Varrandom
trigger1 = timemod = 1,0
v =  1
range = -1,1

[State 1151,random2X ]
type = Varrandom
trigger1 = timemod = 1,0
v =  2
range = -6,-9

[State 1151,random3size ]
type = Varrandom
trigger1 = timemod = 1,0
v =  3
range = 1,3

[State 1151,explod! ]
type = Explod
trigger1 = (timemod = 2,0) && (numexplod(1303) <= 15)
anim = 3504
ID = 1303
vel = var(2),var(1)
accel = .2,0
random = 0,0
scale = .3*(var(3)),.3*(var(3))
sprpriority = 7
ownpal = 1

[State 1151,explod2! ]
type = Explod
trigger1 = (timemod = 2,0) && (numexplod(1303) <= 15)
anim = 3504
ID = 1303
vel = 1.2*(var(2)),1.2*(var(1))
accel = .29,0
random = 0,0
scale = .2*(var(3)),.2*(var(3))
sprpriority = 7
ownpal = 1

[State 1151,explod2! ]
type = Explod
trigger1 = (timemod = 2,0) && (numexplod(1303) <= 15)
anim = 3504
ID = 1303
vel = 1.4*(var(2)),1.4*(var(1))
accel = .3,0
random = 0,0
scale = .1*(var(3)),.1*(var(3))
sprpriority = 7
ownpal = 1

[State 1151,d ]
type = DestroySelf
trigger1 = parent,stateno != [1301,1311]

[Statedef 1303]
type = S
physics = N
velset = 6,0
anim = 8888
ctrl = 0

[State 1151,random1Y ]
type = Varrandom
trigger1 = timemod = 1,0
v =  1
range = -1,-3

[State 1151,random2X ]
type = Varrandom
trigger1 = timemod = 1,0
v =  2
range = -3,-5

[State 1151,random3size ]
type = Varrandom
trigger1 = timemod = 1,0
v =  3
range = 1,3

[State 1151,explod! ]
type = Explod
trigger1 = (timemod = 2,0) && (numexplod(1151) <= 15)
anim = 3504
ID = 1151
vel = var(2),var(1)
accel = .2,0
random = 30,30
scale = .3*(var(3)),.3*(var(3))
sprpriority = 7
ownpal = 1

[State 1151,explod2! ]
type = Explod
trigger1 = (timemod = 2,0) && (numexplod(1151) <= 15)
anim = 3504
ID = 1151
vel = 1.2*(var(2)),1.2*(var(1))
accel = .29,0
random = 30,30
scale = .2*(var(3)),.2*(var(3))
sprpriority = 7
ownpal = 1

[State 1151,explod2! ]
type = Explod
trigger1 = (timemod = 3,0) && (numexplod(1151) <= 15)
anim = 3504
ID = 1151
vel = 1.4*(var(2)),1.4*(var(1))
accel = .3,0
random = 20,20
scale = .1*(var(3)),.1*(var(3))
sprpriority = 7
ownpal = 1

[State 1151,d ]
type = DestroySelf
trigger1 = parent,stateno != [1301,1311]


[Statedef 1310]
type = C
movetype = A
physics = S
anim = 1300
ctrl = 0
poweradd = 100
velset = 4,0

[State 1000,ps ]
type = PosSet
trigger1 = (time = 0) && (prevstateno = 220)
y = 0

[State 1300, ]
type = PlaySnd
trigger1 = animelem = 4
value = 210,0

[State 1300,end ]
type = Changestate
trigger1 = animtime = 0
value = 1311
ctrl = 1

[Statedef 1311]
type = A
movetype = A
physics = N
anim = 1301
ctrl = 0
juggle = 5
velset = 8,-3

[State 1301, ]
type = PlaySnd
trigger1 = time = 0
value = 1050,2

[State 1301, ]
type = PlaySnd
trigger1 = animelem = 2
value = 1000,0

[State 1301,hit ]
type = HitDef
trigger1 = animelem = 3,1
attr = C,SA
hitflag = MAF
guardflag = L
animtype = Hard
priority = 3
damage = 35,6
pausetime = 5,5
sparkno = 2
sparkxy = 0,-30
hitsound = 5,3
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -5,0
guard.velocity = -3
air.velocity = -5,-3
air.juggle = 5
air.fall = 1
getpower = 10,0
givepower = 0,10
palfx.time = 15
palfx.color = 60
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 126,126,126,4

[State 1301,v ]
type = VarSet
trigger1 = movehit
v =  1
value = 1
ignorehitpause = 1

[State 1150, ex]
type = Explod
trigger1 = time = 0
anim = 1251
ID = 1300
bindtime = 1
pos = 0,28
sprpriority = 8
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1301,effetti ]
type = Helper
trigger1 = AnimElem = 3
name = "effetto strasupercretino"
ID = 1300
pos = 72,-23
stateno = 1302

[State 1301,effetti ]
type = Helper
trigger1 = time = 0
name = "effetto strasupercretinoBIS "
ID = 1300
pos = 0,0
stateno = 1313

[State 1150, ex]
type = Explod
trigger1 = (timemod = 3,0) && (time > 3)
anim = 1302
ID = 1300
bindtime = 1
pos = 90,-28
sprpriority = 8
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1150, ex]
type = Explod
trigger1 = (timemod = 6,0) && (time > 3)
anim = 1153
ID = 1300
bindtime = 1
pos = 0,50
sprpriority = 8
ownpal = 1
removeongethit = 1

[State 1300,ve ]
type = VelAdd
trigger1 = time > 0
y = .3

[State 1300, ]
type = ChangeState
trigger1 = pos Y >= 10
value = 1052


[Statedef 1313]
type = S
physics = N
velset = 9,0
anim = 8888
ctrl = 0

[State 1151,random1Y ]
type = Varrandom
trigger1 = timemod = 1,0
v =  1
range = -1,-3

[State 1151,random2X ]
type = Varrandom
trigger1 = timemod = 1,0
v =  2
range = -3,-5

[State 1151,random3size ]
type = Varrandom
trigger1 = timemod = 1,0
v =  3
range = 1,3

[State 1151,explod! ]
type = Explod
trigger1 = (timemod = 2,0) && (numexplod(1151) <= 15)
anim = 3504
ID = 1151
vel = var(2),var(1)
accel = .2,0
random = 30,30
scale = .3*(var(3)),.3*(var(3))
sprpriority = 7
ownpal = 1

[State 1151,explod2! ]
type = Explod
trigger1 = (timemod = 2,0) && (numexplod(1151) <= 15)
anim = 3504
ID = 1151
vel = 1.2*(var(2)),1.2*(var(1))
accel = .29,0
random = 30,30
scale = .2*(var(3)),.2*(var(3))
sprpriority = 7
ownpal = 1

[State 1151,explod2! ]
type = Explod
trigger1 = (timemod = 3,0) && (numexplod(1151) <= 15)
anim = 3504
ID = 1151
vel = 1.4*(var(2)),1.4*(var(1))
accel = .3,0
random = 20,20
scale = .1*(var(3)),.1*(var(3))
sprpriority = 7
ownpal = 1

[State 1151,d ]
type = DestroySelf
trigger1 = time = 12









;--------------------------------------------------------------------------
;DESPERATION MOVES
;-------------------------
;Howling Fury (BIG Anthrax Ripoff :P)
[Statedef 3000]
type = S
movetype = A
physics = N
velset = 0,0
anim = 3000
ctrl = 0

[State 3015,sdm/dm version ]
type = VarSet
trigger1 = time = 0
v =  3
value = 1

[State 3000,af ]
type = AfterImage
trigger1 = AnimElem = 4
time = 2
length = 7
palcolor = 256
palinvertall = 0
palbright = 12,12,12
palcontrast = 225,225,225
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 1,1,1
framegap = 3
trans = add1

[State 3000,aft2 ]
type = AfterImageTime
trigger1 = time > 8
time = 2

[State 3000,envy ]
type = EnvColor
trigger1 = AnimElem = 2
value = 0,0,0
time = 30
under = 1

[State 3000,p ]
type = PowerAdd
triggerall = time = 0
trigger1 = prevstateno = [1150,1160]
trigger2 = prevstateno = [1250,1260]
value = -1000

[State 3000,p ]
type = PalFX
triggerall = (timemod = 2,0) && (time < 31)
trigger1 = prevstateno = [1150,1160]
trigger2 = prevstateno = [1250,1260]
time = 1
add = 255,255,255
sinadd = -100,-100,-100,3
ignorehitpause = 1

[State 3000,super!su su su super!su su su super!su su su super!su su su! ]
;su su rusususurususursu!Volevo scrivercelo!:PPPPPPPPPPPP
type = SuperPause
trigger1 = AnimElem = 2
anim = S7100
sound = S750,2
pos = 22,-95
darken = 0
p2defmul = 1
poweradd = -1000
movetime = 30

[State 3000,ex ]
type = Explod
trigger1 = AnimElem = 2
anim = 7101
ID = 3000
pos = 22,-95
supermove = 1
sprpriority = -2
ownpal = 1

[State 3000,n ]
type = NotHitBy
trigger1 = AnimElem = 4
value = SCA,NA,SA,HA
time = 20

[State 3000,ex ]
type = Explod
trigger1 = AnimElem = 4
anim = 3002
ID = 3001
pos = 2,-65
bindtime = -1
sprpriority = 5
ownpal = 1

[State 3000,vel ]
type = VelSet
trigger1 = AnimElem = 4
x = 8.5

[State 3000, end! ]
type = ChangeState
trigger1 = animtime = 0
value = 3001

[State 3000, end! ]
type = ChangeState
trigger1 = (time > 31) && (p2Bodydist X <= 8)
value = 3003

[Statedef 3001]
type = S
movetype = I
physics = N
velset = 0,0
anim = 3001
ctrl = 0

[State 3001,exno ]
type = RemoveExplod
trigger1 = time = 0
ID = 3001

[State 3001,vel ]
type = VelSet
trigger1 = Time = 0
x = 5.5

[State 3001,velB ]
type = VelAdd
trigger1 = time > 12
x = -.1 

[State 3001,velC ]
type = VelSet
trigger1 = AnimElem = 5,4
x = 0

[State 3001,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3003]
type = S
movetype = A
physics = N
juggle = 14
velset = 7,0
anim = 3003
ctrl = 0

[State 3003,ht ]
type = HitDef
trigger1 = time = 0
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = HARD
priority = 7,Hit
damage = 20,10
pausetime = 8,8
sparkno = 3
sparkxy = 0,-68
hitsound = 5,4
guardsound = 6,0
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
guard.velocity = -12
air.velocity = -5,0
snap = 40,0
p1stateno = 3004
p2stateno = 3009
forcestand = 1 
kill = 0
getpower = 0,0
givepower = 10,30
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 3000,aft2 ]
type = AfterImageTime
trigger1 = time = [0,12]
time = 2

[State 3005,v ]
type = VelAdd
trigger1 = time > 0
x = -.2

[State 3001,exno ]
type = RemoveExplod
trigger1 = time = 0
ID = 3001

[State 3000,n ]
type = NotHitBy
trigger1 = time > 0
value = SCA,NA,SA,HA
time = 2

[State 3003,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3004]
type = S
movetype = A
physics = N
anim = 3004
velset = 0,0
ctrl = 0

[State 3004, ]
type = EnvColor
trigger1 = animelem = 6
trigger2 = animelem = 11
trigger3 = animelem = 17
trigger4 = animelem = 27
value = 255,255,255
time = 1
under = 1

[State 3004,SDM effects ]
type = BGPalFX
trigger1 = (time > 0) && (Var(3)=2)
time = 3
add = 0,0,0
mul = 256,256,256
color = 256
invertall = 1

[State 3004,pos ]
type = PosAdd
trigger1 = (FrontEdgeBodyDist < 30) && (time = 0)
x = -10

[State 3004,vel]
type = VelSet
trigger1 = (time > 0) && (FrontEdgeBodyDist > 20)
x = 1

[State 3004,vel]
type = VelSet
trigger1 = (time > 0) && (FrontEdgeBodyDist <= 20)
x = 0

[State 3004,t ]
type = TargetBind
trigger1 = time > 0
time = 2
pos = 40,0

[State 3004,hit sound ]
type = PlaySnd
trigger1 = animelem = 6
trigger2 = animelem = 11
trigger3 = animelem = 17
trigger4 = animelem = 27
value = F5,4

[State 3004,lf ]
type = TargetLifeAdd
trigger1 = animelem = 6
trigger2 = animelem = 11
trigger3 = animelem = 17
trigger4 = animelem = 27
value = -40-30*(var(3)=2)
kill = 0

[State 3004,hit! ]
type = HitAdd
trigger1 = animelem = 6
trigger2 = animelem = 11
trigger3 = animelem = 17
trigger4 = animelem = 27
value = 1

[State 3000,aft2 ]
type = AfterImageTime
trigger1 = time > 0
time = 2

[State 3004,spark1 ]
type = Explod
trigger1 = animelem = 6
anim = F2
pos = 0,-79
postype = p2
sprpriority = 6
ontop = 1
ownpal = 1

[State 3004,spark1 ]
type = Explod
trigger1 = animelem = 11
anim = F2
pos = 0,-35
postype = p2
sprpriority = 6
ontop = 1
ownpal = 1

[State 3004,spark1 ]
type = Explod
trigger1 = animelem = 17
anim = F2
pos = 0,-79
postype = p2
sprpriority = 6
ontop = 1
ownpal = 1

[State 3004,spark1 ]
type = Explod
trigger1 = animelem = 27
anim = F2
pos = 0,-58
postype = p2
sprpriority = 6
ontop = 1
ownpal = 1

[State 3004,nohit]
type = NotHitBy
trigger1 = Time > 0
value = SCA,NA,SA,HA,NP,SP,HP
time = 2

[State 3004,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 3005+12*(var(3)=2)

[Statedef 3005]
type = S
movetype = A
physics = S
velset = 0,0
anim = 3005
ctrl = 0
juggle = 15

[State 3000,aft2 ]
type = AfterImageTime
trigger1 = time > 0
time = 2

[State 3005,nohit]
type = NotHitBy
trigger1 = Time > 0
value = SCA,NA,SA,HA,NP,SP,HP
time = 2

[State 3004, ]
type = EnvColor
trigger1 = AnimElem = 1,1
trigger2 = AnimElem = 3,1
trigger3 = AnimElem = 5,1
value = 255,255,255
time = 1
under = 1

[State 3005,ht ]
type = HitDef
trigger1 = AnimElem = 1,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5,Hit
damage = 2,0
pausetime = 1,1
sparkno = 2
sparkxy = 0,-80
hitsound = 5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime = 40
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 3005,ht2 ]
type = HitDef
trigger1 = AnimElem = 3,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5,Hit
damage = 2,0
pausetime = 1,1
sparkno = 2
sparkxy = 0,-30
hitsound = 5,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 20
ground.hittime = 40
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 3005,ht3 ]
type = HitDef
trigger1 = AnimElem = 5,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5,Hit
damage = 2,0
pausetime = 1,1
sparkno = 2
sparkxy = 0,-60
hitsound = 5,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 20
ground.hittime = 40
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0

[State 3004,followupRESET ]
type = VarSet
trigger1 = TIME = 0
v =  3
value = 0


[State 3004,end ]
type = ChangeState
trigger1 = Time = 90
value = 3006

[Statedef 3006]
type = S
movetype = A
physics = S
velset = 0,0
anim = 250
ctrl = 0
juggle = 15

[State 3000,aft2 ]
type = AfterImageTime
trigger1 = time > 0
time = 2

[State 3006,hit ]
type = HitDef
trigger1 = Time = 0
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = DiagUp
priority = 7
damage = 90,0
pausetime = 10,12
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-80
hitsound = 5,4
guardsound = 6,0
ground.type = high
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -8,-6
guard.velocity = -12
air.velocity = -8,-6
ground.cornerpush.veloff = -12
air.cornerpush.veloff = -6
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 0,0
down.bounce = 1
envshake.time = 10
air.juggle = 15


[State 3006,sn ]
type = PlaySnd
trigger1 = AnimElem = 4
value = 200,1

[State 3006,sn2 ]
type = PlaySnd
trigger1 = AnimElem = 4
value = 250,0

[State 3006,end ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1



[Statedef 3009]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 3009,p2anims!1337! ]
type = ChangeAnim2
trigger1 = time = 0
value = 3009 







;-------------------------
;Dawn of victory
[Statedef 3100]
type = S
movetype = A
physics = N
velset = 0,0
anim = 3100
ctrl = 0
juggle = 13

[State 1150,effetto cretino ]
type = Helper
trigger1 = AnimElem = 13
helpertype = normal
name = "ancora il solito effetto"
ID = 1150
pos = 54,-81
stateno = 3109
ownpal = 1

[State 1051,ex ]
type = Explod
trigger1 = AnimElem = 10
anim = 1152
pos = 45,-12
ID = 3100
sprpriority = 5
bindtime = 6
ownpal = 1
removeongethit = 1

[State 1051,ex ]
type = Explod
trigger1 = AnimElem = 13
anim = 1151
pos = 0,-10
ID = 3100
sprpriority = 5
bindtime = 6
ownpal = 1
removeongethit = 1

[State 3000,p ]
type = PowerAdd
triggerall = time = 3
trigger1 = prevstateno = [1150,1160]
trigger2 = prevstateno = [1250,1260]
value = -1000

[State 3000,p ]
type = PalFX
triggerall = (timemod = 2,0) && (time < 31)
trigger1 = prevstateno = [1150,1160]
trigger2 = prevstateno = [1250,1260]
time = 1
add = 255,255,255
sinadd = -100,-100,-100,3
ignorehitpause = 1

[State 3100,NHB ]
type = NotHitBy
trigger1 =  animelem = 6
value = SCA,NA,SA,HA,NP,SP,HP
time = 8

[State 3100,NH ]
type = NotHitBy
trigger1 = movehit
value = SCA,NA,SA,HA,NP,SP,HP
time = 2

[State 3100,t ]
type = TargetBind
trigger1 = (movehit) && (p2dist X > 40)
time = 2
pos = 40,0
ignorehitpause = 1

[State 3100,envy ]
type = EnvColor
trigger1 = AnimElem = 2
value = 0,0,0
time = 30
under = 1

[State 3100,h ]
type = HitDef
trigger1 = time = 0
attr = S,HA
hitflag = MAF
ID = 3100
guardflag = MA
animtype = Hard
priority = 9
damage = 30,10
pausetime = 18,18
guard.pausetime = 7,7
sparkno = 3
sparkxy = 0,-78
hitsound = 5,4
guardsound = 6,0
p2stateno = 3110
forcestand = 1
snap = 60,0
kill = 0

[State 3100, p]
type = PosAdd
trigger1 = AnimElem = 7
x = 10

[State 3100, w]
type = Width
trigger1 = time = [43,47]
value = 20

[State 3100, p]
type = PosAdd
trigger1 = AnimElem = 9
x = 19

[State 3100, p]
type = PosAdd
trigger1 = AnimElem = 12
x = 8

[State 3100,superpause!]
type = SuperPause
trigger1 = AnimElem = 2
anim = S7100
sound = S750,2
pos = -15,-55
darken = 0
p2defmul = 1
poweradd = -1000
movetime = 30

[State 3100, sn]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3100,1

[State 3100, sn]
type = PlaySnd
trigger1 = AnimElem = 9
value = 200,1

[State 3100, sn]
type = PlaySnd
trigger1 = AnimElem = 12
value = 1000,0

[State 3100,ex ]
type = Explod
trigger1 = AnimElem = 2
anim = 7101
ID = 3000
pos = -15,-55
supermove = 1
sprpriority = -2
ownpal = 1

[State 3100,c2 ]
type = ChangeState
trigger1 = (animtime = 0) &&(movehit = 0)
value = 0
ctrl = 1

[State 3100,c2 ]
type = ChangeState
trigger1 = (animtime = 0) &&(movehit)
value = 3101
ctrl = 1

[Statedef 3101]
type = S
movetype = A
physics = N
velset = 3,0
anim = 1100
ctrl = 0

[State 3100,NH ]
type = NotHitBy
trigger1 = time > 0
value = SCA,NA,SA,HA,NP,SP,HP
time = 2

[State 3101,p ]
type = PosAdd
trigger1 = AnimElem = 3
x = 6



[State 3101, ]
type = HitDef
trigger1 = AnimElem = 3
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = Hard
priority = 6
damage = 10,5
pausetime = 7,7
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-80
hitsound = 5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 8
ground.hittime = 8
ground.velocity = -2,0
guard.velocity = -9
air.velocity = -1,-4
airguard.velocity = -3,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0 
kill = 0
getpower = 0,0
givepower = 10,0

[State 3101, ]
type = HitDef
trigger1 = AnimElem = 5
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Up
air.animtype = Hard
priority = 6
damage = 20,5
pausetime = 7,7
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-60
hitsound = 5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 8
ground.hittime = 8
ground.velocity = -1,-9
guard.velocity = -4
air.velocity = -1,-9
airguard.velocity = -3,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0 
fall = 1
fall.recover = 0
kill = 0
getpower = 0,0
givepower = 10,0

[State 3101,sn ]
type = PlaySnd
trigger1 = AnimTime = 1
value = 1050,2

[State 3101,end ]
type = ChangeState
trigger1 = animtime = 0
value = 3102

[Statedef 3102]
type = A
movetype = A
physics = N
velset = 9,-16
anim = 3106
ctrl = 0
hitcountpersist = 1

[State 3100,NH ]
type = NotHitBy
trigger1 = time > 0
value = SCA,NA,SA,HA,NP,SP,HP
time = 2


[State 3101,v ]
type = VelMul
trigger1 = time > 0
x = .91
y = .82

[State 1101, ]
type = HitDef
trigger1 = (Time < 7) && (Timemod = 2,0)
attr = A,HA
hitflag = AF
guardflag = MA
animtype = Up
air.animtype = Hard
priority = 6
damage = 10,5
pausetime = 5,4
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-80
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 8
ground.hittime = 8
ground.velocity = -1,-5
guard.velocity = -4
air.velocity = -1,-5
airguard.velocity = -3,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0 
fall = 1
fall.recover = 1
palfx.time = 50
palfx.color = 60
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 126,126,126,4
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 0
fall.recovertime = 12
getpower = 0,0
givepower = 10,0

[State 1101, ]
type = HitDef
trigger1 = time = 8
attr = A,HA
hitflag = AF
guardflag = MA
animtype = Up
air.animtype = Hard
priority = 6
damage = 10,5
pausetime = 15,15
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-80
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 8
ground.hittime = 8
ground.velocity = 1,-6
guard.velocity = -4
air.velocity = 1,-7
airguard.velocity = -3,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0 
fall = 1
fall.recover = 1
palfx.time = 50
palfx.color = 60
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 126,126,126,4
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 0
fall.recovertime = 12
getpower = 0,0
givepower = 10,0

[State 3101, ]
type = HitDef
trigger1 = time = 10
attr = A,HA
hitflag = AF
guardflag = MA
animtype = Up
air.animtype = Hard
priority = 6
damage = 20,5
pausetime = 4,3
sparkno = 3
guard.sparkno = 40
sparkxy = 0,-40
hitsound = 5,4
guardsound = 6,0
fall = 1
p2stateno = 3111
getpower = 0,0
givepower = 10,0

[State 3101,v ]
type = VarSet
trigger1 = movehit
v =  1
value = 1

[State 3101,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1000,1

[State 3101, ex]
type = Explod
trigger1 = (time < 9) && (timemod = 2,0)
anim = 3104
ID = 3104
;pos = 15,-55
bindtime = 1
sprpriority = 6
;scale = .5,.5

[State 3102,end ]
type = ChangeState
trigger1 = animtime = 0
value = 3103

[Statedef 3103]
type = A
movetype = I
physics = N
anim = 3105
ctrl = 0
velset = 0,-6
hitcountpersist = 1

[State 3100,NH ]
type = NotHitBy
trigger1 = time > 0
value = SCA,NA,SA,HA,NP,SP,HP
time = 2


[State 3102,end ]
type = ChangeState
trigger1 = animtime = 0
value = 3104

[Statedef 3104]
type = A
movetype = A
physics = N
velset = 0,17
anim = 3102
ctrl = 0
juggle = 2

[State 3100,NH ]
type = NotHitBy
trigger1 = time > 0
value = SCA,NA,SA,HA,NP,SP,HP
time = 2

[State 3104,explod! ]
type = Explod
trigger1 = timemod = 1,0
anim = 3504
pos = 0,-30
random = 30,30
vel = 0,-.6
accel = 0,.3
scale = .6,.6
sprpriority = 7
ownpal = 1

[State 3104,explod! ]
type = Explod
trigger1 = time = 0
anim = 3110
pos = 0,-15
bindtime = -1
removetime = 10
vel = 0,-.6
accel = 0,.3
scale = .6,.6
sprpriority = 7
ownpal = 1

[State 3104,] 
type = HitDef
trigger1 = time = 0
attr = A,HA
hitflag = MAFD
guardflag = 
animtype = Hard
priority = 9
damage = 160,4
pausetime = 0,0
sparkno = 3
sparkxy = 0,0
hitsound = 5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime = 6
ground.velocity = 0,-10
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
fall = 1
fall.recover = 0
down.velocity = -10,-4
down.hittime = 20
down.bounce = 5
getpower = 0,0
givepower = 0,0
palfx.time = 50
palfx.color = 60
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 126,126,126,4
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 0
fall.recovertime = 12

[State 3104, ]
type = Helper
trigger1 = (movehit) && (numhelper(3101) = 0)
helpertype = normal
name = "lightning FX"
ID = 3101
pos = 0,0
postype = p2
stateno = 3107
ownpal = 1
persistent = 0
size.xscale = 1.5

[State 3104,ev ]
type = EnvColor
trigger1 = movehit
value = 255,255,255
under = 1
ignorehitpause = 1
persistent = 1

[State 3104, ex]
type = Explod
trigger1 = (time > 0) && (timemod = 2,0)
anim = 3103
ID = 3103
pos = 0,0
scale = 1,.8
bindtime = 1
sprpriority = 6
ownpal = 1

[State 3506,effetto stupido ]
type = Helper
trigger1 = (timemod = 2,0) && (time < 6)
trigger2 = time = 0
name = "effetto idiotaC"
ID = 3506
pos = 0,0
stateno = 3512

[State 3104,thunder ]
type = PlaySnd
trigger1 = time = 5
value = 3100,0

[State 3104, ex]
type = Explod
trigger1 = time = 0
anim = 3103
ID = 3103
pos = 0,0
scale = 2,.2
bindtime = -1
removetime = 12
sprpriority = 6
ownpal = 1

[State 3104,st ]
type = ChangeState
trigger1 = pos Y >= 0
value = 3105
ctrl = 0

[Statedef 3105]
type = S
movetype = I
physics = N
velset = 0,0
anim = 3108
ctrl = 0

[State 3105,effetto stupido ]
type = Helper
trigger1 = time = 0
name = "effetto idiota"
ID = 3108
pos = 0,-10
stateno = 3108


[State 3105,p ]
type = PosSet
trigger1 = time = 0
y = 0

[State 3105, ex]
type = Explod
trigger1 = time = 0
anim = 3103
ID = 3103
pos = 0,0
scale = 4,.2
bindtime = 1
removetime = -2
sprpriority = 6
ownpal = 1

[State 3104,st ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1






[Statedef 3107]
velset = 0,0
anim = 3107
ctrl = 0
sprpriority = 12

[State 3107,s ]
type = AssertSpecial
trigger1 = time > 0
flag = invisible

[State 3107, ]
type = AfterImage
trigger1 = time < 7
time = 2
length = 28
palcolor = 256
palinvertall = 0
palbright = 10,10,10
palcontrast = 225,225,225
palpostbright = 0,0,0
paladd = -10,-10,-10
palmul = 1,1,1
timegap = 1
framegap = 1
trans = add
ignorehitpause = 0
persistent = 1

[State 3107,d ]
type = DestroySelf
trigger1 = time = 33


[Statedef 3108]
type = S
velset = 0,0
anim = 8888
ctrl = 0

[State 3108,random1Y ]
type = Varrandom
trigger1 = timemod = 1,0
v =  1
range = -5,-8

[State 3108,random2X ]
type = Varrandom
trigger1 = timemod = 1,0
v =  2
range = 8,-8

[State 3108,random3size ]
type = Varrandom
trigger1 = timemod = 1,0
v =  3
range = 2,4

[State 3108,explod! ]
type = Explod
trigger1 = (timemod = 1,0) && (numexplod(3104) <= 10)
anim = 3504
ID = 3104
vel = var(2),var(1)
accel = 0,.3
scale = .3*(var(3)),.3*(var(3))
sprpriority = 7
ownpal = 1

[State 3512,ex ]
type = Explod
trigger1 = time = 0
ID = 3510
anim = 3512
bindtime = 1
removetime = -2
scale = .1,.1
ownpal = 1
sprpriority = 7

[State 3512,ex ]
type = Explod
trigger1 = time = 0
ID = 3510
anim = 3512
bindtime = 1
removetime = -2
vfacing = -1
sprpriority = -4
scale = .1,.1
ownpal = 1
sprpriority = 7

[State 3512,v ]
type = VarAdd
trigger1 = timemod = 1,0
v =  4
value = 1

[State 3512,m-ex ]
type = ModifyExplod
trigger1 = timemod = 1,0
ID = 3510
scale = .2*(var(4)),.02*(var(4))

[State 3108,d ]
type = DestroySelf
trigger1 = time = 10


[Statedef 3109]
type = S
velset = 0,0
anim = 8888
ctrl = 0

[State 1151,random1Y ]
type = Varrandom
trigger1 = timemod = 1,0
v =  1
range = -2,2

[State 1151,random2X ]
type = Varrandom
trigger1 = timemod = 1,0
v =  2
range = -6,-9

[State 1151,random3size ]
type = Varrandom
trigger1 = timemod = 1,0
v =  3
range = 1,3

[State 1151,explod! ]
type = Explod
trigger1 = (timemod = 1,0) && (numexplod(1151) <= 15)
anim = 3504
ID = 1151
vel = var(2),var(1)
accel = .2,0
random = 0,30
scale = .3*(var(3)),.3*(var(3))
sprpriority = 7
ownpal = 1

[State 1151,explod2! ]
type = Explod
trigger1 = (timemod = 1,0) && (numexplod(1151) <= 15)
anim = 3504
ID = 1151
vel = 1.2*(var(2)),1.2*(var(1))
accel = .29,0
random = 0,30
scale = .2*(var(3)),.2*(var(3))
sprpriority = 7
ownpal = 1

[State 1151,explod2! ]
type = Explod
trigger1 = (timemod = 1,0) && (numexplod(1151) <= 15)
anim = 3504
ID = 1151
vel = 1.4*(var(2)),1.4*(var(1))
accel = .3,0
random = 0,20
scale = .1*(var(3)),.1*(var(3))
sprpriority = 7
ownpal = 1

[State 1151,d ]
type = DestroySelf
trigger1 = time = 5



;P2 States
[Statedef 3110]
type = S
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 3515, ]
type = PalFX
trigger1 = timemod = 3,0
time = 1
color = 60
invertall = 1
add = 1,1,1
mul = 256,256,256
sinadd = 126,126,126,4

[State 3110,1 ]
type = PosSet
trigger1 = time = 0
y = 0

[State 3110,1 ]
type = ChangeAnim2
trigger1 = time = 0
value = 3101

[Statedef 3111]
type = A
movetype = H
physics = N
ctrl = 0
anim = 5030
velset = 3,9

[State 3515, ]
type = PalFX
trigger1 = timemod = 3,0
time = 1
color = 60
invertall = 1
add = 1,1,1
mul = 256,256,256
sinadd = 126,126,126,4

[State 3111,g ]
type = VelAdd
trigger1 = time > 0
y = .6

[State 3111,an2 ]
type = ChangeAnim
trigger1 = (time = 10) && (Selfanimexist(5052) = 0)
value = 5050

[State 3111,an2 ]
type = ChangeAnim
trigger1 = (time = 0) && (Selfanimexist(5052) = 1)
value = 5052

[State 3111,an2 ]
type = ChangeAnim
trigger1 = (anim = 5052) && (time = 10) && (Selfanimexist(5062) = 1)
value = 5062

[State 3111,st ]
type = ChangeState
trigger1 = pos Y >= 0
value = 3112
ctrl = 0

[Statedef 3112]
type = L
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 3110,1 ]
type = ChangeAnim2
trigger1 = time = 0
value = 5110

[State 3515, ]
type = PalFX
trigger1 = timemod = 3,0
time = 1
color = 60
invertall = 1
add = 1,1,1
mul = 256,256,256
sinadd = 126,126,126,4

[State 3112, p]
type = PosSet
trigger1 = time = 0
x = enemy,pos x
y = 0



;--------------------------------------------------------------------------
;SUPER DESPERATION MOVES
;-------------------------
;Howling Fury (BIG Anthrax Ripoff :P)
[Statedef 3015]
type = S
movetype = A
physics = N
velset = 0,0
anim = 3000
ctrl = 0

[State 3015,sdm/dm version ]
type = VarSet
trigger1 = time = 0
v =  3
value = 2

[State 3015,af ]
type = AfterImage
trigger1 = AnimElem = 4
time = 2
length = 7
palcolor = 256
palinvertall = 0
palbright = 12,12,12
palcontrast = 225,225,225
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 1,1,1
framegap = 3
trans = add1

[State 3015,aft2 ]
type = AfterImageTime
trigger1 = time > 8
time = 2

[State 3015,envy ]
type = EnvColor
trigger1 = AnimElem = 2
value = 0,0,0
time = 30
under = 1

[State 3015,WHATEVER ]
type = SuperPause
trigger1 = AnimElem = 2
anim = S7100
sound = S3015,0
pos = 22,-95
darken = 0
p2defmul = 1
poweradd = -2000
movetime = 30

[State 3015,invert ]
type = BGPalFX
trigger1 = time > 30
time = 3
add = 0,0,0
mul = 256,256,256
color = 256
invertall = 1

[State 3015,ex ]
type = Explod
trigger1 = AnimElem = 2
anim = 7101
ID = 3000
pos = 22,-95
supermove = 1
sprpriority = -2
ownpal = 1

[State 3015,n ]
type = NotHitBy
trigger1 = AnimElem = 4
value = SCA,NA,SA,HA
time = 20

[State 3015,ex ]
type = Explod
trigger1 = AnimElem = 4
anim = 3002
ID = 3001
pos = 2,-65
bindtime = -1
sprpriority = 5
ownpal = 1

[State 3015,vel ]
type = VelSet
trigger1 = AnimElem = 4
x = 8.3

[State 3015, end! ]
type = ChangeState
trigger1 = animtime = 0
value = 3001

[State 3015, end! ]
type = ChangeState
trigger1 = (time > 31) && (p2Bodydist X <= 8)
value = 3016

[Statedef 3016]
type = S
movetype = A
physics = N
juggle = 14
velset = 7,0
anim = 3003
ctrl = 0

[State 3016,SDM effects ]
type = BGPalFX
trigger1 = time > 0
time = 12
add = 0,0,0
mul = 256,256,256
color = 256
invertall = 1
ignorehitpause = 1


[State 3003,ht ]
type = HitDef
trigger1 = time = 0
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
air.animtype = HARD
priority = 7,Hit
damage = 30,10
pausetime = 8,8
sparkno = 3
sparkxy = 0,-68
hitsound = 5,4
guardsound = 6,0
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,0
guard.velocity = -12
air.velocity = -5,0
snap = 40,0
p1stateno = 3004
p2stateno = 3009
forcestand = 1 
kill = 0
getpower = 0,0
givepower = 10,30
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 3000,aft2 ]
type = AfterImageTime
trigger1 = time = [0,12]
time = 2

[State 3005,v ]
type = VelAdd
trigger1 = time > 0
x = -.2

[State 3001,exno ]
type = RemoveExplod
trigger1 = time = 0
ID = 3001

[State 3000,n ]
type = NotHitBy
trigger1 = time > 0
value = SCA,NA,SA,HA
time = 2

[State 3003,end ]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3017]
type = S
movetype = A
physics = S
velset = 0,0
anim = 3017
ctrl = 0
juggle = 15

[State 3016,SDM effects ]
type = BGPalFX
trigger1 = time > 0
time = 12
add = 0,0,0
mul = 256,256,256
color = 256
invertall = 1
ignorehitpause = 1

[State 3000,aft2 ]
type = AfterImageTime
trigger1 = time > 0
time = 2

[State 3005,nohit]
type = NotHitBy
trigger1 = Time > 0
value = SCA,NA,SA,HA,NP,SP,HP
time = 2

[State 3004, ]
type = EnvColor
trigger1 = AnimElem = 1,1
trigger2 = AnimElem = 3,1
trigger3 = AnimElem = 5,1
value = 255,255,255
time = 1
under = 1

[State 3005,ht ]
type = HitDef
trigger1 = AnimElem = 1,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5,Hit
damage = 2,0
pausetime = 1,1
sparkno = 2
sparkxy = 0,-80
hitsound = 5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime = 40
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0
getpower = 0,0
givepower = 0,0

[State 3005,ht2 ]
type = HitDef
trigger1 = AnimElem = 3,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5,Hit
damage = 2,0
pausetime = 1,1
sparkno = 2
sparkxy = 0,-30
hitsound = 5,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 20
ground.hittime = 40
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0
getpower = 0,0
givepower = 0,0

[State 3005,ht3 ]
type = HitDef
trigger1 = AnimElem = 5,1
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 5,Hit
damage = 2,0
pausetime = 1,1
sparkno = 2
sparkxy = 0,-60
hitsound = 5,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 20
ground.hittime = 40
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
kill = 0
getpower = 0,0
givepower = 0,0

[State 3004,followupRESET ]
type = VarSet
trigger1 = TIME = 0
v =  3
value = 0


[State 3004,end ]
type = ChangeState
trigger1 = Time = 90
value = 3018

[Statedef 3018]
type = S
movetype = A
physics = S
velset = 0,0
anim = 3018
ctrl = 0

[State 3000,aft2 ]
type = AfterImageTime
trigger1 = time > 0
time = 2

[State 3016,SDM effects ]
type = BGPalFX
trigger1 = time > 0
time = 12
add = 0,0,0
mul = 256,256,256
color = 256
invertall = 1
ignorehitpause = 1

[State 3006,hit ]
type = HitDef
trigger1 = Time = 0
attr = S,HA
hitflag = MAF
guardflag = MA
animtype = Diagup
priority = 7
damage = 30,0
pausetime = 20,20
sparkno = 2
guard.sparkno = 40
sparkxy = 0,-80
hitsound = 5,4
guardsound = 6,0
ground.type = high
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -7.5,-9
guard.velocity = -12
air.velocity = -7.5,-9
ground.cornerpush.veloff = -12
air.cornerpush.veloff = -6
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 0,0
down.bounce = 1
envshake.time = 10
air.juggle = 15


[State 3006,sn ]
type = PlaySnd
trigger1 = AnimElem = 4
value = 200,1

[State 3006,sn2 ]
type = PlaySnd
trigger1 = AnimElem = 4
value = 250,0

[State 3006,end ]
type = ChangeState
trigger1 = animtime = 0
value = 3019

[Statedef 3019]
type = A
movetype = A
physics = A
velset = 10,-9
anim = 3019
ctrl = 0

[State 3019,hf ]
type = HitDef
trigger1 = time = 0
attr = A,HA
hitflag = MAF
guardflag =
animtype = hard
fall.animtype = up
damage = 100,0
pausetime = 30,30
sparkno = 3
guard.sparkno = 40
sparkxy = 0,-30
hitsound = 5,4
guardsound = 6,0
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -5,15
air.velocity = -5,15
ground.cornerpush.veloff = -10
air.cornerpush.veloff = -6
down.bounce = 2
palfx.time = 60
palfx.color = 60
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 126,126,126,4
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 0
getpower = 0,0
givepower = 0,0

[State 3019,shock effects ]
type = VarSet
trigger1 = movehit
v =  1
value = 1

[State 3019,ex ]
type = Explod
trigger1 = animelem = 7
anim = 3007
pos = 22,-41
ownpal = 1

[State 3016,SDM effects ]
type = BGPalFX
trigger1 = time > 0
time = 12
add = 0,0,0
mul = 256,256,256
color = 256
invertall = 1
ignorehitpause = 1

[State 3019,voice ]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3015,1

[State 3019,voice ]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3001,0

[State 3019,aft ]
type = AfterImage
trigger1 = time = 0
time = 12
length = 40
timegap = 1
framegap = 1
trans = add
ignorehitpause = 1

[State 3019,ass ]
type = AssertSpecial
trigger1 = time < 12
flag = invisible























































;------------------------------------------------------------------------
;HSDM -SHUT YOUR MOUTH-

;Effect
[Statedef 35000]
type = S
velset = 0,0
anim = 8888
ctrl = 0
sprpriority = 7


[State 35000,pf ]
type = PalFX
trigger1 = time > 0
time = 1
add = var(2),var(2),var(2)
mul = 256,256,256

[State 50000,vs ]
type = VarSet
trigger1 = time = 0
v =  2
value = -255

[State 500000,va ]
type = VarAdd
trigger1 = (time > 0) && (var(2) < 0)
v =  2
value = 8

[State 35000,ex ]
type = Explod
trigger1 = time = 0 
anim = 3510
ID = 35001
pos = 0,0
removetime = -2
scale = .1*(var(3)),.1*(var(3))
sprpriority = 6
removeongethit = 1
ownpal = 1
supermovetime = 30

[State 35000,ex ]
type = Explod
trigger1 = time = 0 
anim = 3510
ID = 35001
facing = -1
pos = 0,0
removetime = -2
scale = .1*(var(3)),.1*(var(3))
sprpriority = 6
removeongethit = 1
ownpal = 1
supermovetime = 30

[State 35000,ex ]
type = Explod
trigger1 = time = 0 
anim = 7202
ID = 35000
pos = 0,0
removetime = 30
scale = .1*(var(1)),.1*(var(1))
sprpriority = 7
removeongethit = 1
ownpal = 0

[State 35000,ex ]
type = ModifyExplod
trigger1 = time > 0
ID = 35000
scale = .1*(var(1)),.1*(var(1))
removetime = 30

[State 35000,ex ]
type = ModifyExplod
trigger1 = time > 0
ID = 35001
scale = .1*(var(3)),.1*(var(3))

[State 35000,1 ]
type = Varset
trigger1 = time = 0
v =  1
value = 300

[State 35000, 2]
type = VarAdd
trigger1 = timemod = 1,0
v =  1
value = -10

[State 35000, 2]
type = VarAdd
trigger1 = timemod = 1,0
v =  3
value = 1

[State 35000,ds ]
type = DestroySelf
trigger1 = time = 30

;Actual states
[Statedef 3500]
type = S
movetype = A
physics = N
velset = 0,0
anim = 3500
ctrl = 0
juggle = 14

[State 3500,sfx1 ]
type = PlaySnd
trigger1 = animelem = 4
value = 1000,1

[State 3500,voice ]
type = PlaySnd
trigger1 = time = 0
value = 3500,0

[State 3500,d ]
type = MakeDust
trigger1 = time > 18
pos = -20,0
spacing = 3

[State 3500,af ]
type = AfterImage
trigger1 = AnimElem = 2
time = 2
length = 8
palcolor = 256
palinvertall = 0
palbright = 12,12,12
palcontrast = 225,225,225
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 1,1,1
framegap = 3
trans = add1

[State 3500,aft2 ]
type = AfterImageTime
trigger1 = time > 12
time = 2

[State 3500,envy ]
type = EnvColor
trigger1 = time = 0
value = 0,0,0
time = 31
under = 1

[State 3500,supereffect ]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "sparaflash!"
ID = 3500
pos = -10,-50
stateno = 35000
ownpal = 1
supermovetime = 30

[State 3500,WHATEVER ]
type = SuperPause
trigger1 = time = 0
anim = S7100
sound = S3015,0
pos = -10,-50
darken = 0
p2defmul = 1
poweradd = -2000

[State 3500,ex ]
type = Explod
trigger1 = time = 0
anim = 7101
ID = 3000
pos = -10,-50
supermove = 1
sprpriority = -2
ownpal = 1
removeongethit = 1

[State 3500,ex ]
type = Explod
trigger1 = time = 0
postype = back
anim = 7201
ID = 3000
pos = 0,0
supermove = 1
sprpriority = -3
ownpal = 1
removeongethit = 1
removetime = 30

[State 3500,p ]
type = PosAdd
trigger1 = AnimElem = 4
x = 10


[State 3500,p ]
type = Velset
trigger1 = AnimElem = 5
x = 8

[State 3500,p ]
type = VelAdd
trigger1 = time > 15
x = .6

[State 3500,ex ]
type = Explod
trigger1 = animelem = 2
anim = 3501
pos = 0,0
bindtime = -1
removetime = -2
sprpriority = 7
ownpal = 1
removeongethit = 1

[State 3500,ex ]
type = Explod
trigger1 = animelem = 7
anim = 3502
pos = 0,0
bindtime = 1
removetime = -2
sprpriority = 7
ownpal = 1
removeongethit = 1

[State 3500,pf ]
type = PalFX
trigger1 = time = 17
time = 4
add = 255,255,255

[State 3500,sfondo super con 1239014029 flash ]
type = null;Explod
trigger1 = time = 1
anim = 7200
scale = 1.1,1.1
ID = 3500
pos = 0,0
postype = back
removetime = -1
bindtime = -1
sprpriority = -7
ownpal = 1
removeongethit = 1

[State 3500,n ]
type = NotHitBy
trigger1 = time > 12
value = SCA,NA,SA,HA
time = 2

[State 3500,p ]
type = PlayerPush
trigger1 = time > 22
value = 0

[State 3500,hit! ]
type = HitDef
trigger1 = Time = 0
attr = S,HA
hitflag = MAF
guardflag = H
damage = 10,20
sparkno = 3
sparkxy = 0,-70
hitsound = 5,4
guardsound = 6,0
;snap = 50,0
p1stateno = 3505
p2stateno = 3515
fall = 1
fall.recover = 0
hitonce = 1
kill = 0
getpower = 0,0
givepower = 0,0


[State 3500,miss ]
type = ChangeState
trigger1 = animtime = 0
value = 3501

[Statedef 3501]
type = S
movetype = A
physics = S
velset = 7,0
anim = 3503
ctrl = 0

[State 3500,aft2 ]
type = AfterImageTime
trigger1 = time < 9
time = 2

[State 3500,miss ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 3505]
type = S
movetype = A
physics = S
velset = 0,0
anim = 3505
ctrl = 0
sprpriority = 5

[State 3500,sfondo super con 1239014029 flash ]
type = Explod
trigger1 = time = 0
anim = 7200
scale = 1.1,1.1
ID = 3500
pos = 0,0
postype = back
removetime = -1
bindtime = -1
sprpriority = -7
ownpal = 1
removeongethit = 1

[State 3505, shocked effect]
type = Explod
trigger1 = (p2movetype = H) && (numexplod(7000) < 2) && (timemod = 4,0)
anim = 7000
ID = 7000
bindtime = 1
postype = p2
pos = 0,0
random = 60,60
sprpriority = 6
ownpal = 1

[State 3505,t ]
type = TargetBind
trigger1 = time = 0
time = 6
pos = 40,-68

[State 1150, ex]
type = Explod
trigger1 = AnimElem = 2,1
anim = 1151
ID = 1150
pos = 110,10
facing = -1
vel = 0,0
bindtime = 2
sprpriority = 3
ownpal = 1
removeongethit = 1

[State 3505,v ]
type = VarSet
trigger1 = time = 0
v =  5
value = 0

[State 3505,v ]
type = VarRandom
trigger1 = animelem = 2,1
v =  6
range = 1,4

[State 3505,v1 ]
type = VarAdd
trigger1 = timemod = 4,0
v =  5
value = 1

[State 3505,other random explod]
type = Explod
trigger1 = (numexplod(3505) < 7) && (timemod = 5,0)
anim = 756
pos = 38,-58
random = 0,10
vel = 1,0
postype = p1
ID = 3505
bindtime = 1
sprpriority = 6
persistent = 1
ownpal = 1

[State 3505,ex! ]
type = Explod
trigger1 = timemod = 4,0
anim = F3
pos = 40,-58
postype = p1
random = 20,20
ontop = 1
ownpal = 1

[State 3506,flash ]
type = Explod
trigger1 = (animelem = 2,1) && (random > 200)
anim = 3507
pos = 0,0
postype = left
sprpriority = 8
ontop = 1
removetime = 1
ownpal = 1

[State 3505,ex! ]
type = Explod
trigger1 = time = 0
anim = 3508
scale = .6,.6
ID = 13508
pos = 41,-61
postype = p1
removetime = -1
sprpriority = 7
ownpal = 1

[State 3505, hitsn ]
type = PlaySnd
trigger1 = timemod = 4,0
value = F5,var(6)
volume = 255

[State 3505, ]
type = HitAdd
trigger1 =  timemod = 4,0
value = 1

[State 3505, ]
type = PalFX
trigger1 = (timemod = 5,0) && (random > 500)
time = 1
color = 60
invertall = 1
add = 1,1,1
mul = 256,256,256
sinadd = 126,126,126,4

[State 3505,effetto stupido ]
type = Helper
trigger1 = time = 0
name = "effetto idiota"
ID = 3500
pos = 45,-58
stateno = 3510

[State 3505,lf ]
type = TargetLifeAdd
trigger1 = timemod = 4,0
value = -8
kill = 0

[State 3505,ed ]
type = ChangeState
trigger1 = (var(5) >= 50) && (animtime = 0)
value = 3506

[Statedef 3506]
type = S
movetype = A
physics = S
velset = 0,0
anim = 3506
ctrl = 0
sprpriority = 6

[State 3505,v ]
type = VarSet
trigger1 = time = 0
v =  1
value = 1

[State 3506, ]
type = RemoveExplod
trigger1 = time = 0
ID = 13508

[State 3505,ex! ]
type = Explod
trigger1 = time = 0
anim = 3509
ID = 3508
scale = .6,.6
removetime = -2
pos = 41,-59
postype = p1
sprpriority = 7
ownpal = 1

[State 3506,flash ]
type = Explod
trigger1 = time = 0
anim = 3507
pos = 0,0
postype = left
sprpriority = 8
ontop = 1
ownpal = 1


[State 3505,lf ]
type = TargetLifeAdd
trigger1 = AnimElem = 2,1
value = -70 
kill = 1

[State 3506,effetto stupido ]
type = Helper
trigger1 = time = 0
name = "effetto idiotaB"
ID = 3506
pos = 0,-59
stateno = 3511

[State 3506,effetto stupido ]
type = Helper
trigger1 = time = 0
name = "effetto idiotaC"
ID = 3506
pos = 41,-59
stateno = 3512

[State 3506,effetto stupido ]
type = Helper
trigger1 = time = 0
name = "effetto idiotaD"
ID = 3506
pos = 41,-59
stateno = 3513

[State 3506,sn ]
type = PlaySnd
trigger1 = time = 0
value = 3100,0

[State 3505,ed ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1














;effetti stupidi
[Statedef 3510]
type = S
velset = 0,0
anim = 8888
ctrl = 0

[State 3510,blackBG ]
type = envcolor
trigger1 = (time > 0) && (parent,stateno = [3500,3505])
value = 0,0,0
time = 2
under = 1

;Velocity randomizer -.-
[State 3510,random1Y ]
type = Varrandom
trigger1 = timemod = 1,0
v =  1
range = -5,-8

[State 3510,random2X ]
type = Varrandom
trigger1 = timemod = 1,0
v =  2
range = 0,-12

[State 3510,random3size ]
type = Varrandom
trigger1 = timemod = 1,0
v =  3
range = 1,3


[State 3510,explod! ]
type = Explod
trigger1 = (timemod = 1,0) && (numexplod(3504) <= 10)
anim = 3504
ID = 3504
vel = var(2),var(1)
accel = .1,.7
random = 10,20
scale = .2*(var(3)),.2*(var(3))
sprpriority = 7
ownpal = 1

[State 3510,explod! ]
type = Explod
trigger1 = (timemod = 2,0) && (numexplod(3505) <= 6)
anim = 3504
ID = 3505
vel = 0,0
accel = 0,0
pos = 0,0
random = 100,100
scale = .5*(var(3)),.5*(var(3))
sprpriority = 7
ownpal = 1

[State 3510,d ]
type = DestroySelf
trigger1 = parent,stateno = 3506

;Fulminacci!
[Statedef 3511]
velset = 0,0
anim = 3511
ctrl = 0
sprpriority = 2

[State 3107,s ]
type = AssertSpecial
trigger1 = time > 0
flag = invisible

[State 3107, ]
type = AfterImage
trigger1 = time < 3
time = 2
length = 15
palcolor = 256
palinvertall = 0
palbright = 10,10,10
palcontrast = 225,225,225
palpostbright = 0,0,0
paladd = -10,-10,-10
palmul = 1,1,1
timegap = 1
framegap = 1
trans = add
ignorehitpause = 0
persistent = 1

[State 3107,d ]
type = DestroySelf
trigger1 = time = 41

;Boh
[Statedef 3512]
velset = 0,0
anim = 8888
ctrl = 0
sprpriority = 2

[State 3512,ex ]
type = Explod
trigger1 = (time = 0) && (parent,stateno = [3500,3506])
ID = 3510
anim = 3510 
bindtime = -1
removetime = -2
scale = .1,.1
ownpal = 1
sprpriority = 7

[State 3512,ex ]
type = Explod
trigger1 = (time = 0) && (parent,stateno = [3500,3506])
ID = 3510
anim = 3510 
bindtime = -1
facing = -1
sprpriority = -4
removetime = -2
scale = .1,.1
ownpal = 1
sprpriority = 7

[State 3512,ex ]
type = Explod
trigger1 = (time = 0) && (parent,stateno = [3100,3105])
ID = 3510
anim = 3512
bindtime = -1
removetime = -2
scale = .1,.1
ownpal = 1
sprpriority = 7

[State 3512,ex ]
type = Explod
trigger1 = (time = 0) && (parent,stateno = [3100,3105])
ID = 3510
anim = 3512
bindtime = -1
removetime = -2
vfacing = -1
sprpriority = -4
scale = .1,.1
ownpal = 1
sprpriority = 7

[State 3512,v ]
type = VarAdd
trigger1 = timemod = 1,0
v =  1
value = 1

[State 3512,m-ex ]
type = ModifyExplod
trigger1 = (timemod = 1,0) && (parent,stateno = [3500,3506])
ID = 3510
scale = .05*(var(1)),.1*(var(1))

[State 3512,m-ex ]
type = ModifyExplod
trigger1 = (timemod = 1,0) && (parent,stateno = [3100,3105])
ID = 3510
scale = .05*(var(1)),.025*(var(1))

[State 3512,ds ]
type = DestroySelf
trigger1 = numexplod(3510) = 0


;mah
[Statedef 3513]
velset = 0,0
anim = 8888
ctrl = 0
sprpriority = 2

[State 3513,ex ]
type = Explod
trigger1 = time = 0
anim = 3513
ID = 3511
sprpriority = 5
ownpal = 1

[State 3512,v ]
type = VarSet
trigger1 = time = 0
v =  1
value = 38

[State 3512,v ]
type = VarSet
trigger1 = time = 0
v =  2
value = 10

[State 3512,v ]
type = VarAdd
trigger1 = (timemod = 1,0) && (Time > 7)
v =  1
value = -3

[State 3512,v ]
type = VarAdd
trigger1 = (timemod = 3,0) && (Time > 7)
v =  2
value = 1

[State 3512,m-ex ]
type = ModifyExplod
trigger1 = timemod = 1,0
ID = 3511
scale = .1*(var(2)),.03*(var(1))

[State 3512,ds ]
type = DestroySelf
trigger1 = numexplod(3511) = 0



;P2 STATES
[Statedef 3515]
type = S
movetype = H
velset = 0,0
ctrl = 0
sprpriority = 2

[State 3515, ]
type = PalFX
trigger1 = timemod = 3,0
time = 1
color = 60
invertall = 1
add = 1,1,1
mul = 256,256,256
sinadd = 126,126,126,4

[State 3515,a2 ]
type = ChangeAnim2
trigger1 = time = 0
value = 3515

[State 3515,end ]
type = ChangeState
trigger1 = enemy,stateno = 3506
value = 3516

[Statedef 3516]
type = S
movetype = H
physics = N
anim = 5030
velset = -8,-6
ctrl = 0

[State 3516, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 3516,an2 ]
type = ChangeAnim
trigger1 = (time = 10) && (Selfanimexist(5052) = 0)
value = 5050

[State 3516,an2 ]
type = ChangeAnim
trigger1 = (time = 0) && (Selfanimexist(5052) = 1)
value = 5052

[State 3516,an2 ]
type = ChangeAnim
trigger1 = (anim = 5052) && (time = 10) && (Selfanimexist(5062) = 1)
value = 5062

[State 3516,V ]
type = VelAdd
trigger1 = time > 0 
y = .5

[State 3515, ]
type = PalFX
trigger1 = timemod = 3,0
time = 1
color = 60
invertall = 1
add = 1,1,1
mul = 256,256,256
sinadd = 126,126,126,4

[State 3516,end ]
type = SelfState
trigger1 = (pos Y >= 0) && (time > 5)
value = 5100












;DM Burnt Offerings
[Statedef 3600]
type = S
movetype = A
physics = S
velset = 0,0
anim = 3600
ctrl = 0

[state 3610,hit]
type = hitdef
trigger1 = (timemod = 2,0) && (time > 31)
attr = S,HA
hitflag = MA
guardflag = MA 
animtype = Hard
air.animtype = hard
priority = 7,hit
damage = 20,4
pausetime = 4,0
sparkno = 3
sparkxy = 0,-70
hitsound = 5,4
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 24
ground.hittime = 23
ground.velocity = -9,-5
air.velocity = -5,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 0,0
palfx.time = 20
palfx.color = 60
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 126,126,126,4
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 0


[State 3600,sn ]
type = PlaySnd
trigger1 = time = 31
value = 3600,0
channel = 5
loop = 1

[State 3000,p ]
type = PowerAdd
triggerall = time = 0
trigger1 = prevstateno = [1150,1160]
trigger2 = prevstateno = [1250,1260]
value = -1000

[State 3000,p ]
type = PalFX
triggerall = (timemod = 2,0) && (time < 31)
trigger1 = prevstateno = [1150,1160]
trigger2 = prevstateno = [1250,1260]
time = 1
add = 255,255,255
sinadd = -100,-100,-100,3
ignorehitpause = 1

[State 3505, ]
type = PalFX
trigger1 = (timemod = 5,0) && (random > 80) && (time > 30)
time = 1
color = 60
invertall = 1
add = 1,1,1
mul = 256,256,256
sinadd = 126,126,126,4

[State 3600,ev ]
type = EnvColor
trigger1 = time = 0
value = 0,0,0
time = 30
under = 1

[State 3100,superpause!]
type = SuperPause
trigger1 = time = 0
anim = S7100
sound = S750,2
pos = -10,-135
darken = 0
p2defmul = 1
poweradd = -1000
movetime = 30

[State 3600,ex1 ]
type = Explod
trigger1 = time = 31
anim = 3601
ID = 3600
pos = -14,-131
sprpriority = 9
ownpal = 1
removetime = -1
removeongethit = 1
bindtime = -1

[State 3600,ex1 ]
type = Explod
trigger1 = time = 31
anim = 3604
ID = 3604
pos = 0,0
scale = .6,1
sprpriority = 8
ownpal = 1
removetime = -1
removeongethit = 1
bindtime = -1

[State 3600,ex1 ]
type = Explod
trigger1 = time = 45
anim = 3604
ID = 3604
pos = 0,0
scale = .6,1
sprpriority = 8
ownpal = 1
removetime = -1
removeongethit = 1
facing = -1
bindtime = -1

[State 3600,ex1 ]
type = Explod
trigger1 = time = 50
anim = 3604
ID = 3604
pos = 0,-150
scale = .6,1
sprpriority = 8
ownpal = 1
removetime = -1
removeongethit = 1
vfacing = -1
bindtime = -1


[State 3600,mf ]
type = ModifyExplod
trigger1 = time > 31
ID = 3600
scale = .05*(helper(3600),var(1)),.05*(helper(3600),var(1))


[State 3600,effetti stupidi! ]
type = Helper
trigger1 = Time = 31
name = "effetti supercretini e hitdef"
ID = 3600
pos = 0,0
stateno = 3610
ownpal = 1

[State 3100,ex ]
type = Explod
trigger1 = time = 0
anim = 7101
ID = 3000
pos = -10,-135
supermove = 1
sprpriority = -2
ownpal = 1
bindtime = -1

[State 3600,st ]
type = ChangeState
trigger1 = (time > 104) && (command != "holdsuper")
value = 3601

[State 3600,st ]
type = ChangeState
trigger1 = time >= 230
value = 3602

[Statedef 3601]
type = S
movetype = A
physics = S
velset = 0,0
anim = 3605
ctrl = 0

[State 1000,shock effects ]
type = VarSet
trigger1 = projhit(1000) = 1
v =  1
value = 1


[State 3601, ]
type = Helper
trigger1 = animelem = 2
name = "effetto idiota"
ID = 3601
pos = 0,0
stateno = 3108

[State 3601,sn ]
type = PlaySnd
trigger1 = time = 0
value = 3001,0


[State 3601,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1000,2

[State 3612,ev ]
type = EnvColor
trigger1 = projhit = 1
value = 255,255,255
under = 1
time = 2
persistent = 0

[State 3600,nh ]
type = NotHitBy
trigger1 = time < 22
value = SCA,NA,SA

[State 3600,hp ]
type = Helper
trigger1 = animelem = 2,1
name = "effetti proiettile"
ID = 3605
pos = 37,-58
stateno = 3611
size.xscale = 1.5
size.yscale = 1.5
ownpal = 1


[State 3607, proj]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 3600
projanim = 3606
projremove = 1
offset = 37,-58
velocity = 15,0
projpriority = 6
projsprpriority = 6
attr = S,HA
hitflag = MAF
air.juggle = 15
guardflag = MA 
animtype = Hard
air.animtype = hard
damage = 200,8
pausetime = 0,3
sparkno = 3
hitsound = 5,4
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 24
ground.hittime = 23
ground.velocity = -9,-4
air.velocity = -9,-5
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 0,0
palfx.time = 20
palfx.color = 60
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 126,126,126,4
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 0
projscale = 1,.5

[State 3100,ex ]
type = Explod
trigger1 = animelem = 2
anim = 3603
ID = 3601
sprpriority = 8
ownpal = 1

[State 3601,rem ]
type = RemoveExplod
trigger1 = time = 7
ID = 3600

[State 3601,rem ]
type = RemoveExplod
trigger1 = time = 7
ID = 3604


[State 3601, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 3602]
type = S
movetype = A
physics = S
velset = 0,0
anim = 3605
ctrl = 0

[State 3601,sn ]
type = PlaySnd
trigger1 = time = 0
value = 1000,2

[State 1000,shock effects ]
type = VarSet
trigger1 = projhit(1000) = 1
v =  1
value = 1


[State 3601, ]
type = Helper
trigger1 = animelem = 2
name = "effetto idiota"
ID = 3601
pos = 0,0
stateno = 3108

[State 3601,sn ]
type = PlaySnd
trigger1 = time = 0
value = 3001,0

[State 3612,ev ]
type = EnvColor
trigger1 = projhit = 1
value = 255,255,255
under = 1
time = 2
persistent = 0

[State 3600,hp ]
type = Helper
trigger1 = animelem = 2,1
name = "effetti proiettile"
ID = 3605
pos = 37,-58
stateno = 3613
size.xscale = 1.5
size.yscale = 1.5
ownpal = 1

[State 3607, proj]
type = Projectile
trigger1 = AnimElem = 2
ProjID = 3600
projanim = 3606
projremove = 1
offset = 37,-58
velocity = 18,0
projpriority = 6
projsprpriority = 6
attr = S,HA
hitflag = MAF
air.juggle = 15
guardflag = 
animtype = Hard
air.animtype = hard
damage = 260,8
pausetime = 0,3
sparkno = 3
hitsound = 5,4
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 24
ground.hittime = 23
ground.velocity = -9,-4
air.velocity = -9,-5
fall = 1
fall.recover = 0
getpower = 0,0
givepower = 0,0
palfx.time = 20
palfx.color = 60
palfx.invertall = 1
palfx.add = 1,1,1
palfx.mul = 256,256,256
palfx.sinadd = 126,126,126,4
envshake.time = 10
envshake.freq = 60
envshake.ampl = -4
envshake.phase = 0

[State 3600,nh ]
type = HitBy
trigger1 = time < 22
value = SCA,NA,SA

[State 3100,ex ]
type = Explod
trigger1 = animelem = 2
anim = 3603
ID = 3601
sprpriority = 8
ownpal = 1

[State 3601,rem ]
type = RemoveExplod
trigger1 = time = 7
ID = 3600

[State 3601,rem ]
type = RemoveExplod
trigger1 = time = 7
ID = 3604

[State 3601, ]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1






;Helper States
[Statedef 3610]
type = S
movetype = I
physics = N
velset = 0,0
anim = 3610
ctrl = 0

[State 3610,bd ]
type = BindToParent
trigger1 = time > 0
pos = 0,0

[State 3610,ex1 ]
type = Explod
trigger1 = timemod = 7,0
anim = 3602
ID = 3610
pos = -10,-142
bindtime = -1
sprpriority = 7
ownpal = 1
ignorehitpause = 1

[State 3610,ex scale ]
type = VarAdd
trigger1 =  (timemod = 3,0) && (time = [0,50])
v =  1
value = 1
ignorehitpause = 1

[State 3610,ex scale ]
type = VarAdd
trigger1 =  (timemod = 4,0) && (time = [51,100])
v =  1
value = 1
ignorehitpause = 1

[State 3610,ex scale ]
type = VarAdd
trigger1 =  (timemod = 6,0) && (time = [101,150])
v =  1
value = 1
ignorehitpause = 1

[State 3610,ex scale ]
type = VarAdd
trigger1 =  (timemod = 8,0) && (time = [151,200])
v =  1
value = 1
ignorehitpause = 1

[State 3610,ds ]
type = DestroySelf
trigger1 = parent,stateno != 3600
ignorehitpause = 1

[Statedef 3611]
type = S
movetype = A
physics = N
anim = 8888
ctrl = 0
velset = 15,0

[State 3610,hp ]
type = Helper
trigger1 = timemod = 1,0
name = "trail"
ID = 3617
stateno = 3615
ownpal = 1
;supermovetime = 0
;pausemovetime = 0
size.xscale = 1
size.yscale = 1
;size.ground.back = 
;size.ground.front = 
;size.air.back = 
;size.air.front = 
;size.height = 
;size.proj.doscale = 
;size.head.pos = 
;size.mid.pos = 
;size.shadowoffset = 
;ignorehitpause = 0
;persistent = 1

[State 3611,v ]
type = VarRandom
trigger1 = time > 0
v = 2
range = 10,21

[State 3611,var ]
type = VarSet
trigger1 = var(2) >= 15
v =  1
value = -1

[State 3611,var ]
type = VarSet
trigger1 = var(2) < 15
v =  1
value = 1

[State 3611, ]
type = Explod
trigger1 = (timemod = 3,0) && (random > 500)
anim = 3607
sprpriority = 8
ownpal = 1
random = 0,20
facing = -(var(1))
vfacing = var(1)

[State 3611, ]
type = Explod
trigger1 = (timemod = 5,0) && (random > 600)
anim = 36071
sprpriority = 8
ownpal = 1
random = 0,20
facing = -(var(1))
vfacing = var(1)

[State 3611, ]
type = Explod
trigger1 = (timemod = 6,0) && (random > 200)
anim = 36072
sprpriority = 8
ownpal = 1
random = 0,20
facing = -(var(1))
vfacing = var(1)

[State 3611, ]
type = Explod
trigger1 = timemod = 2,0
anim = 3504
sprpriority = 8
ownpal = 1
random = 0,60
vel = -.4,0

[State 3610,s ]
type =  changestate
trigger1 = parent,numprojID(3600) = 0
value = 3612

[Statedef 3612]
type = S
movetype = A
physics = N
velset = 0,0
anim = 1205
ctrl = 0

[State 3612,hp ]
type = Helper
trigger1 = time = 0
;helpertype = normal
name = "effettone"
;ID = 0
pos = 70,0
;postype = p1
;facing = 1
stateno = 1252
ownpal = 1

[State 3612,p ]
type = PosAdd
trigger1 = time = 0
x = 60

[State 1205,aft ]
type = AfterImage
trigger1 = time = 0
time = 9999
length = 8
palcolor = 256
palinvertall = 0
palbright = 30,30,30
palcontrast = 250,250,250
palpostbright = 0,0,0
paladd = 10,10,10
palmul = .65,.65,.65
timegap = 1
framegap = 2
trans = add

[State 3612,ass ]
type = AssertSpecial
trigger1 = time > 0
flag = invisible

[State 3612,ds ]
type = DestroySelf
trigger1 = animtime = 0


[Statedef 3613]
type = S
movetype = A
physics = N
anim = 8888
ctrl = 0
velset = 18,0

[State 3610,hp ]
type = Helper
trigger1 = timemod = 1,0
name = "trail"
ID = 3617
stateno = 3615
ownpal = 1
;supermovetime = 0
;pausemovetime = 0
size.xscale = 1
size.yscale = 1
;size.ground.back = 
;size.ground.front = 
;size.air.back = 
;size.air.front = 
;size.height = 
;size.proj.doscale = 
;size.head.pos = 
;size.mid.pos = 
;size.shadowoffset = 
;ignorehitpause = 0
;persistent = 1

[State 3611,v ]
type = VarRandom
trigger1 = time > 0
v = 2
range = 10,21

[State 3611,var ]
type = VarSet
trigger1 = var(2) >= 15
v =  1
value = -1

[State 3611,var ]
type = VarSet
trigger1 = var(2) < 15
v =  1
value = 1

[State 3611, ]
type = Explod
trigger1 = (timemod = 3,0) && (random > 500)
anim = 3607
sprpriority = 8
ownpal = 1
random = 0,20
facing = -(var(1))
vfacing = var(1)

[State 3611, ]
type = Explod
trigger1 = (timemod = 5,0) && (random > 600)
anim = 36071
sprpriority = 8
ownpal = 1
random = 0,20
facing = -(var(1))
vfacing = var(1)

[State 3611, ]
type = Explod
trigger1 = (timemod = 6,0) && (random > 200)
anim = 36072
sprpriority = 8
ownpal = 1
random = 0,20
facing = -(var(1))
vfacing = var(1)

[State 3611, ]
type = Explod
trigger1 = timemod = 2,0
anim = 3504
sprpriority = 8
ownpal = 1
random = 0,60
vel = -.4,0

[State 3610,s ]
type =  changestate
trigger1 = parent,numprojID(3600) = 0
value = 3612

[Statedef 3615]
type = S
movetype = I
physics = N
velset = 0,0
anim = 8888
ctrl = 0

[State 3615,E ]
type = Explod
trigger1 = time = 0
anim = 3606
ID = 7777
;pos = 0,0
;postype = p1
;facing = 1
;vfacing = 1
;bindtime = 1
;vel = 0,0
;accel = 0,0
;random = 0,0
;removetime = -2
;supermove = 0
;pausemovetime = 0
scale = .1*(var(1)),.1*(var(1))
sprpriority = 1
;ontop = 0
;shadow = 0,0,0
ownpal = 1
;removeongethit = 0
;ignorehitpause = 0
;persistent = 1

[State 3615,vd ]
type = VarSet
trigger1 = time = 0
v =  1
value = 5

[State 3615,vd ]
type = VarAdd
trigger1 = timemod = 2,0
v =  1
value = -1

[State 3615, ]
type = ModifyExplod
trigger1 = timemod = 1,0
ID = 7777
scale = 1,.1*(var(1))

[State 3615,ds ]
type = DestroySelf
trigger1 = numexplod(7777) = 0






[Statedef 50000]
type = S
movetype = I
physics = N
velset = 0,0
anim = 8888
ctrl = 0

[State 50000,ex ]
type = Explod
trigger1 = time = 0
anim = 7201
ID = 50000
pos = 0,0
postype = left
bindtime = -1
removetime = -1
pausemovetime = 999
;scale = 1, 1
;sprpriority = 0
;ontop = 0
;shadow = 0,0,0
ownpal = 0

[State 50000,bgp ]
type = BGPalFX
trigger1 = time < 20
time = 1
add = -(time*20),-(time*20),-(time*20)
mul = 256,256,256

[State 50000,bgp ]
type = PalFX
trigger1 = time < 20
time = 1
add = var(1),var(1),var(1)
mul = 256,256,256

[State 50000,vs ]
type = VarSet
trigger1 = time = 0
v =  1
value = -255

[State 500000,va ]
type = VarAdd
trigger1 = (time > 0) && (var(1) < 0)
v =  1
value = 12

[State 50000,ev ]
type = EnvColor
trigger1 = time >= 20
value = 0,0,0
under = 1

[State 50000,ev ]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
time = 2
under = 0

[State 50000,asssp ]
type = AssertSpecial
trigger1 = time > 0
flag = nofg
flag2 = nobardisplay
flag3 = nokoslow


[State 50000,ds ]
type = changestate
trigger1 = roundstate !=3
value = 50001

[Statedef 50001]
type = S
movetype = I
physics = N
velset = 0,0
anim = 8888
ctrl = 0

[State 50000,bgp ]
type = BGPalFX
trigger1 = (time < 10)
time = 1
add = -(Var(1)+20),-(var(1)+20),-(var(1)+20)
mul = 256,256,256

[State 50001,re ]
type = RemoveExplod
trigger1 = time = 10
ID = 50000

[State 50000,bgp ]
type = PalFX
trigger1 = time > 0
time = 1
add = var(1),var(1),var(1)
mul = 256,256,256

[State 500000,va ]
type = VarAdd
trigger1 = time > 0
v =  1
value = -12

[State 50001,ds ]
type = DestroySelf
trigger1 = time = 10


;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------
;JUMP SYSTEM
;---------------------------------------------------------------------------
; Jump Start
[Statedef 40]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State 40, 1]
type = VarSet
trigger1 = Time = 0
var(4) = 0

[State 40, 2]
type = VarSet
trigger1 = command = "holdfwd"
trigger2 = (var(10) = 1) && (p2bodydist X > 70)
var(4) = 1

[State 40, 3]
type = VarSet
trigger1 = command = "holdback"
var(4) = -1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(var(4)=0, const(velocity.jump.neu.x), ifelse(var(4)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = var(4) = 1
x = const(velocity.runjump.fwd.x)

[State 40, 6]
type = ChangeState
trigger1 = (AnimTime = 0) && (command != "holdup")
value = 900
ctrl = 1

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1




;---------------------------------------------------------------------------
; RUN FORWARDS OVERRIDE
[Statedef 100]
type    = S
physics = S
anim = 100
sprpriority = 1

[State 100, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, 4]
type = ChangeState
trigger1 = (command != "holdfwd") && (var(10) != 1)
trigger2 = (p2bodydist X < 30) && (var(10) = 1)
value = 0

[Statedef 101]
type    = S
physics = S
anim = 101
sprpriority = 1

[State 101, 1]
type = VelSet
trigger1 = time = 0
x = const(velocity.run.fwd.x)*1.5

[State 101,d ]
type = MakeDust
trigger1 = time > 0
pos = 0,0
pos2 = 10,

[State 101, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;RUN BACK OVERRIDE
[Statedef 105]
type    = A
physics = A
ctrl = 0
anim = 105
sprpriority = 1

[State 105, 1]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 105, 2]
type = PlaySnd
trigger1 = Time = 0
value = 40,1

[State 105, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 106

[State 105,4 ]
type = VelMul
trigger1 = time > 0
x = .95

[State 105,4 ]
type = VelAdd
trigger1 = time > 0
y = .1

;---------------------------------------------------------------------------
; RUN_BACK2 (land)
[Statedef 106]
type    = S
physics = S
ctrl = 0
anim = 0

[State 106, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 106, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 106, 3]
type = MakeDust
trigger1 = Time = 0
pos = -5,-2
spacing = 1

[State 106, 4]
type = ChangeState
trigger1 = Time = 1
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; HIT_GETUP remade for dizzy system
[Statedef 5120]
type    = L
movetype= I
physics = N

[State 5120, 1a] ;Get up anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5111,5119]
trigger2 = !SelfAnimExist(5120 + (anim % 10))
value = 5120

[State 5120, 1b] ;Get up anim (for hit up/diag-up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5111,5119]
trigger1 = SelfAnimExist(5120 + (anim % 10))
value = 5120 + (anim % 10)

[State 5120, 2]
type = VelSet
trigger1 = Time = 0
x = 0

[State 5120, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

[State 5120, 5] ;Can't be thrown right after getting up
type = NotHitBy
trigger1 = AnimTime = 0
value = , NT,ST,HT
time = 12

[State 5120, 6] ;Can't be hit right after getting up (short time)
type = NotHitBy
trigger1 = AnimTime = 0
value2 = SCA
time = 3

[State 5120, 7]
type = ChangeState
trigger1 = (AnimTime = 0) && (Var(15) < 3000)
value = 0
ctrl = 1

[State 5120, 8]
type = ChangeState
trigger1 = (AnimTime = 0) && (Var(15) >= 3000)
value = 5299
ctrl = 1


[Statedef 5299]
type    = S
movetype= I
physics = N
anim = 5300
ctrl = 0

[State 5299,sn ]
type = PlaySnd
trigger1 = time = 0
value = 5300,0

[State 5299,v ]
type = VarSet
trigger1 = time = 0
v =  15
value = 0

[State 5299,v ]
type = changestate
trigger1 = time = 162
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Tripped by dizzy (shaking)
[Statedef 5075]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5075,nh ]
type = NotHitBy
trigger1 = time > 0
value = SCA,AA

[State 5070, 1]
type = ChangeAnim 
trigger1 = 1
value = 5070

[State 5070, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 5076

[State 5070, 3]
type = ForceFeedback
trigger1 = time = 0
time = 12
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HIT_TRIP2 (fall through air)
[Statedef 5076]
type    = A
movetype= H
physics = N

[State 5071, 1]
type = VelSet
trigger1 = Time = 0
x = -6
y = -4

[State 5075,nh ]
type = NotHitBy
trigger1 = time > 0
value = SCA,AA

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = 1
y = .6

[State 5071, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 15
type = ChangeState
value = 5110








































;----------------------------------------------------------------------
; AI Trigger - Thanks to Zelgadis296 and Yongming
[Statedef 9999]
anim = 8888
ctrl = 0

[State 9999, 0]
type = Turn
trigger1 = facing != parent, facing

;local variable
[State 9999, 1]
type = Varset
trigger1 = 1
var(10) = parent, var(10)

[State 9999, 2]
type = ParentVarSet
triggerall = parent, RoundState = 2
trigger1 = parent, command = "x"
trigger2 = parent, command = "y"
trigger3 = parent, command = "z"
trigger4 = parent, command = "a"
trigger5 = parent, command = "holdfwd"
trigger6 = parent, command = "holdback"
trigger7 = parent, command = "holdup"
trigger8 = parent, command = "holddown"
var(10) = 1 ;CPU is controlling

[State 9999, 3]
type = ParentVarSet
triggerall = parent, RoundState = 2
trigger1 = (command = "x" && parent, command = "x")
trigger2 = (command = "y" && parent, command = "y")
trigger3 = (command = "z" && parent, command = "z")
trigger4 = (command = "a" && parent, command = "a")
trigger5 = (command = "holdfwd" && parent, command = "holdfwd")
trigger6 = (command = "holdback" && parent, command = "holdback")
trigger7 = (command = "holdup" && parent, command = "holdup")
trigger8 = (command = "holddown" && parent, command = "holddown")
var(10) = -1 ;player is controlling

;Counter (for bug correction)
[State 9999, 4]
type = varset
trigger1 = var(10) != parent, var(10)
V = 47
value = 0

[State 9999, 5]
type = VarAdd
trigger1 = var(10) = parent, var(10)
V = 47
value = 1

[State 9999, 6]
type = Destroyself
trigger1 = parent, var(10) = -1	;Definitively controlled by player
trigger1 = var(47) >= 23		
trigger2 = parent, var(10) = 1		;Definitively controlled by CPU
trigger2 = var(47) >= 23  		
trigger3 = RoundState = 3


;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

[State -2, Hit 1]
type = PlaySnd
triggerall = Time = 1
triggerall = stateno = 5000
triggerall = random = [0,600]
trigger1 = anim = 5000
trigger2 = anim = 5001
value = 5000,0

[State -2, Hit 1]
type = PlaySnd
triggerall = Time = 1
triggerall = stateno = 5000
triggerall = random = [0,600]
trigger1 = anim = 5002
value = 5000,3

[State -2, Hit low]
type = PlaySnd
triggerall = Time = 1
triggerall = stateno = 5000
triggerall = random = [0,600]
trigger1 = anim = 5010
trigger2 = anim = 5011
value = 5000,2

[State -2, Hit low]
type = PlaySnd
triggerall = Time = 1
triggerall = stateno = 5000
triggerall = random = [0,600]
trigger1 = anim = 5012
value = 5000,4

[State -2, 1]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 5070
value = 5000,1

[State -2,sn ]
type = StopSnd
trigger1 = stateno != 3600
channel = 5

[State -2,shock effect reset ]
type = VarSet
trigger1 = p2movetype !=H
v =  1
value = 0

[State -2, shocked effect]
type = Explod
trigger1 = (var(1) = 1) && (p2movetype = H) && (numexplod(7000) < 2) && (timemod = 2,0) && (p2stateno !=5110)
anim = 7000
ID = 7000
bindtime = 1
postype = p2
pos = 0,-60
random = 60,60
sprpriority = 6
ownpal = 1

[State -2,on 3000 power standing]
type = Explod
trigger1 = (numexplod(752) < 10) && (timemod = 7,0) && (power >= 3000) && (anim = 0);(statetype = S || statetype = A) && (movetype != H);
anim = 756
pos = 0,-50
random = 40,70
vel = 0,0
postype = p1
ID = 752
bindtime = 1
sprpriority = 6
persistent = 1
ownpal = 1


[State -2,on anim 5300 ]
type = Explod
trigger1 = (numexplod(5300) < 10) && (timemod = 4,0) && (anim = 5300)
anim = 755
pos = 14,-38
random = 23,10
vel = 0,-1
postype = p1
ID = 5300
scale = .5,.5
bindtime = 1
sprpriority = -2
persistent = 1
ownpal = 1

[State -2,on anim 5300 ]
type = Explod
trigger1 = (numexplod(5301) < 10) && (timemod = 4,0) && (anim = 5300)
anim = 756
pos = 0,-50
random = 40,50
vel = 0,0
postype = p1
ID = 5301
scale = .7,.7
bindtime = 1
sprpriority = 6
persistent = 1
ownpal = 1

[State -2,jump afterimage]
type = Afterimage
trigger1 = time = 0
trigger1 = PrevStateNo = 100
trigger1 = StateNo = 40
time = 15
length = 9
palcolor = 256
palinvertall = 0
palbright = 12,12,12
palcontrast = 225,225,225
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 1,1,1
framegap = 3
trans = add1

[State -2, Running Sound]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 3,-1
value = 100,0

[State -2, Running Sound]
type = PlaySnd
triggerall = stateno = 100
trigger1 = AnimElem = 6,-1
value = 100,1

[State -2,running dust ]
type = MakeDust
triggerall = stateno = 100
trigger1 = AnimElem = 3,-1
trigger2 = AnimElem = 6,-1
pos = 11,-3
spacing = 1

[State -2, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52 
value = 40, 0

[State -2, Jumping Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 40 
value = 40, 1




























;---------------------------------------------------------------------------
; AI CODES
;---------------------------------------------------------------------------

;AI - Guard (code by Zelgadis296)
[State -2, AI]
type = ChangeState
value = 132
triggerall = p2movetype = A || (enemy, NumProj >= 1)
triggerall = P2bodydist X <= 40 || (enemy, NumProj >= 1)
triggerall = P2life != 0;don't player when opponent had die
triggerall = statetype = A;perform when in air
triggerall = random <= 600
triggerall = var(10) = 1;only AI can access
triggerall = ctrl;make sure AI had control
triggerall = stateno != 132
trigger1 = p2statetype = A
trigger2 = (enemy, NumProj >= 1)

[State -2, AI]
type = ChangeState
value = 130
triggerall = p2movetype = A || (enemy, NumProj >= 1)
triggerall = P2bodydist X <= 40 || (enemy, NumProj >= 1)
triggerall = random <= 400
triggerall = statetype != A;perform when not in air
triggerall = var(10) = 1;only AI can access
triggerall = ctrl;make sure AI had control
triggerall = stateno != 120
trigger1 = p2statetype = S
trigger2 = (enemy, NumProj >= 1)

[State -2, AI]
type = ChangeState
value = 130
triggerall = p2movetype = A || (enemy, NumProj >= 1)
triggerall = P2bodydist X <= 40 || (enemy, NumProj >= 1)
triggerall = random <= 400
triggerall = statetype != A;perform when not in air
triggerall = var(10) = 1;only AI can access
triggerall = ctrl;make sure AI had control
triggerall = stateno != 130
trigger1 = p2statetype = A
trigger2 = (enemy, NumProj >= 1)

;AI Guard Cancel:Counter
[State -2, ]
type = ChangeState
triggerall = p2movetype = A
triggerall = stateno = 150
triggerall = random = [0,700] 
triggerall = statetype = S
triggerall = var(10) = 1
triggerall = enemy,numproj = 0
triggerall = power >= 1000
trigger1 = P2bodydist X <= 60
trigger1 = random < 400
value = 250

;AI - run in
[State -2,run in]
type = Changestate
triggerall = var(10) = 1
trigger1 = (statetype != A) && (ctrl = 1) && (p2movetype != A) && (stateno != 100) && (p2bodydist X > 60) && (Stateno != 40) && (random < 100) && (movetype != H)
value = 100

;AI - Jump
[State -2,]
type = ChangeState
triggerall = (var(10) = 1) && (var(11) = 0)
triggerall = P2MoveType !=A
triggerall = statetype != A
trigger1 = P2BodyDist X < 40
trigger1 = ctrl = 1
trigger1 = random < 60
trigger1 = P2StateType !=L
value = 40


;AI - Jump over pjs
[State -2,]
type = ChangeState
triggerall = var(10) = 1
triggerall = (P2MoveType =A) && (P2StateType !=A) && (enemy,NumProj >= 1) && (random < 300)
triggerall = (statetype != A) && (statetype !=L)
triggerall = stateno !=40
trigger1 = ctrl = 1
value = 40

;AI - Cancel pjs
[State -2,]
type = ChangeState
triggerall = var(10) = 1
triggerall = (P2MoveType =A) && (P2StateType !=A) && (enemy,NumProj >= 1) && (random >= 300)
triggerall = (statetype != A) && (statetype !=L)
triggerall = stateno !=1000
trigger1 = ctrl = 1
value = 1000

;AI - fw+a
[State -2,]
type = ChangeState
triggerall = var(10) = 1
triggerall = movetype != H
triggerall = statetype = S
trigger1 = random > 300
trigger1 = hitdefattr = SC,NA
trigger1 = stateno != 220
trigger1 = stateno != 250
trigger1 = stateno != 440
trigger1 = movehit
value = 220

;AI - Mind on fire
[State -2,]
type = ChangeState
triggerall = var(10) = 1
triggerall = movetype != H
triggerall = statetype = S || stateno = 220
trigger1 = random = [0,400]
trigger1 = hitdefattr = SC,NA
trigger1 = stateno != 250
trigger1 = stateno != 440
trigger1 = movehit
value = 1250

;AI - Howling Fury(follow-up)
[State -2, ]
type = ChangeState
triggerall = var(10) = 1
triggerall = power >= 2000
trigger1 = random > 500
trigger1 = (stateno = 1250) && (movehit)
trigger1 = p2statetype !=L
trigger1 = P2bodydist X = [0,60]
trigger2 = random > 500
trigger2 = (stateno = 1150) && (movehit)
trigger2 = p2statetype !=L
value = 3000

;AI - Dawn of victory(follow-up)
[State -2, ]
type = ChangeState
triggerall = var(10) = 1
triggerall = power >= 2000
trigger1 = random <= 500
trigger1 = (stateno = 1250) && (movehit)
trigger1 = p2statetype !=L
trigger1 = P2bodydist X = [0,60]
trigger2 = random <= 500
trigger2 = (stateno = 1150) && (movehit)
trigger2 = p2statetype !=L
value = 3100

;AI - Stained Glass Cross
[State -2,]
type = ChangeState
triggerall = var(10) = 1
triggerall = movetype != H
triggerall = statetype = S || stateno = 220
trigger1 = random > 300
trigger1 = ctrl = 1
trigger1 = (p2statetype = A) && (p2movetype !=H) && (p2bodydist X < 60)
trigger2 = random < 400
trigger2 = hitdefattr = SC,NA
trigger2 = stateno != 220
trigger2 = stateno != 250
trigger2 = stateno != 440
trigger2 = movehit
value = 1100



;Ai - Angel Claw
[State -2,]
type = ChangeState
triggerall = var(10) = 1
triggerall = movetype != H
triggerall = statetype = S || stateno = 220
trigger1 = random < 100
trigger1 = ctrl = 1
trigger1 = p2bodydist X = [60,90]
trigger2 = random = [401,600]
trigger2 = hitdefattr = SC,NA
trigger2 = stateno != 250
trigger2 = stateno != 440
trigger2 = movehit
value = 1000

;Ai - Scream of anger

[State -2,]
type = ChangeState
triggerall = var(10) = 1
triggerall = movetype != H
triggerall = statetype = S
triggerall = random < 70
trigger1 = ctrl = 1
trigger1 = p2bodydist X = [30,90]
trigger2 = hitdefattr = SC,NA
trigger2 = stateno != 220
trigger2 = stateno != 250
trigger2 = stateno != 440
trigger2 = movehit
value = 1300

[State -2,]
type = ChangeState
triggerall = var(10) = 1
triggerall = movetype != H
triggerall = statetype = S
triggerall = random < 90
trigger1 = ctrl = 1
trigger1 = p2bodydist X = [90,170]
trigger2 = hitdefattr = SC,NA
trigger2 = stateno != 220
trigger2 = stateno != 250
trigger2 = stateno != 440
trigger2 = movehit
value = 1310

;Ai - Wing Fall

[State -2,]
type = ChangeState
triggerall = var(10) = 1
triggerall = movetype != H
triggerall = statetype = S
triggerall = random < 100
triggerall = stateno !=100
trigger1 = ctrl = 1
trigger1 = p2bodydist X = [90,170]
trigger2 = hitdefattr = SC,NA
trigger2 = stateno != 220
trigger2 = stateno != 250
trigger2 = stateno != 440
trigger2 = movehit
value = 1050

[State -2,]
type = ChangeState
triggerall = var(10) = 1
triggerall = movetype != H
triggerall = statetype = S
triggerall = random < 150
triggerall = stateno !=100
trigger1 = ctrl = 1
trigger1 = p2bodydist X = [170,240]
trigger2 = hitdefattr = SC,NA
trigger2 = stateno != 220
trigger2 = stateno != 250
trigger2 = stateno != 440
trigger2 = movehit
value = 1060

;AI - 1776
[State -2,]
type = ChangeState
triggerall = var(10) = 1
triggerall = movetype != H
triggerall = statetype = S || stateno = 220
triggerall = random = [401,800]
trigger1 = hitdefattr = SC,NA
trigger1 = stateno != 250
trigger1 = stateno != 440
trigger1 = movehit
value = 1150

;AI - GTOS
[State -2,]
type = ChangeState
triggerall = var(10) = 1
triggerall = movetype != H
triggerall = statetype = A
trigger1 = random < 200
trigger1 = hitdefattr = A,NA
trigger1 = stateno != 250
trigger1 = stateno != 440
trigger1 = movehit
trigger2 = random < 100
trigger2 = pos Y < -60
trigger2 = ctrl = 1
trigger2 = stateno != 900
trigger2 = p2bodydist X < 30
value = 1200

;AI Attack Dodge
[State -2, ]
type = ChangeState
triggerall = p2movetype = A
triggerall = p2statetype != A
triggerall = movetype != H
triggerall = random = [0,100] 
triggerall = statetype = S
triggerall = var(10) = 1
triggerall = ctrl = 1
trigger1 = P2bodydist X <= 60
value = 700

;AI Combo starter 1 (Jumping strong kick)
[State -2, ]
type = ChangeState
triggerall = p2movetype != A
triggerall = (P2bodydist X <= 30) && (P2bodydist Y < 90)
triggerall = random = [0,333] 
triggerall = statetype = A
triggerall = var(10) = 1
triggerall = ctrl = 1
triggerall = anim = 44 || anim = 45
trigger1 = p2statetype !=L
value = 640


;AI Combo sequence 1
[State -2, ]
type = ChangeState
triggerall = var(11) = 1
trigger1 = p2statetype !=L
triggerall = random = [0,800] 
triggerall = statetype = S
triggerall = var(10) = 1
triggerall = ctrl = 1
trigger1 = P2bodydist X <= 30
value = 410

;AI Combo sequence 1
[State -2, ]
type = ChangeState
triggerall = var(11) = 2
trigger1 = p2statetype !=L
triggerall = random = [0,800] 
triggerall = statetype = S
triggerall = var(10) = 1
triggerall = ctrl = 1
trigger1 = P2bodydist X <= 30
value = 240+5*(p2bodydist X < 5)

;AI Combo 1 end 1
[State -2, ]
type = ChangeState
triggerall = var(11) = [1,5]
trigger1 = p2statetype !=L
triggerall = (stateno = 410) && (movehit)
triggerall = var(10) = 1
triggerall = random = [0,500]
trigger1 = P2bodydist X = [0,20]
value = 1110

;AI Combo 1 end 2
[State -2, ]
type = ChangeState
triggerall = var(11) = [1,5]
trigger1 = p2statetype !=L
triggerall = (stateno = 410) && (movehit)
triggerall = var(10) = 1
triggerall = random = [501,750]
trigger1 = P2bodydist X = [21,60]
value = 1050

;AI Combo 1 end 3
[State -2, ]
type = ChangeState
triggerall = var(11) = [1,5]
trigger1 = p2statetype !=L
triggerall = (stateno = 410) && (movehit)
triggerall = var(10) = 1
triggerall = random = [751,999]
trigger1 = P2bodydist X = [30,90]
value = 1010

;AI Combo 1 end 4
[State -2, ]
type = ChangeState
triggerall = var(11) = [1,5]
trigger1 = p2statetype !=L
triggerall = (stateno = 410) && (movehit)
triggerall = var(10) = 1
triggerall = power >= 1000
trigger1 = P2bodydist X = [21,60]
value = 3000

;AI Combo 1 end 5
[State -2, ]
type = ChangeState
triggerall = var(11) = [1,5]
trigger1 = p2statetype !=L
triggerall = (stateno = 410) && (movehit)
triggerall = var(10) = 1
triggerall = power >= 2000
trigger1 = P2bodydist X = [21,60]
value = 3015

[State -2, ]
type = ChangeState
triggerall = random = [0,500] 
triggerall = statetype = S
triggerall = var(10) = 1
triggerall = ctrl = 1
trigger1 = p2statetype !=L
trigger1 = P2bodydist X <= 30
value = 240+5*(p2bodydist X < 5)

;AI combo end var reset
[State -2, ]
type = VarSet
trigger1 = hitdefattr = SCA,SA,HA
v =  11
value = 0

[State -2,ex ]
type = RemoveExplod
trigger1 = (stateno != 3500 || stateno != 3505) && (movetype = H)
trigger2 = stateno = 3501
trigger3 = stateno = 3506
ID = 3500

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

[State -3,Display AI]
type = DisplayToClipboard
trigger1 = var(10)=1
params = var(15)
text = "Kei-Controlled by CPU - dizzy points = %d \n (C)2002-2003 Rikard"

[State -3,Display AI]
type = DisplayToClipboard
trigger1 = var(10)=-1
params = var(15)
text = "Kei-Controlled by Player - dizzy points = %d \n (C)2002-2003 Rikard"

[State -3, AI_Check]
type = Helper
trigger1 = NumHelper(9999) = 0
trigger1 = var(10) = 0
trigger1 = RoundState = 2
name = "AI Trigger"
id = 9999
pos = 1000, 1000
stateno = 9999
helpertype = normal
keyctrl = 1

;-------------------
;MEE Template Files
;   provided by
;  Kitsune Sniper
;       ***
; Thanks, Kitsune!
;-------------------
