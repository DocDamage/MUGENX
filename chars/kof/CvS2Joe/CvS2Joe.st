;===============================
; State file for Capcom VS SNK 2 Joe Higashi
;===============================
; var(1) : AI
; var(2) : Bakuretsu button hit counter, Tiger kick MoveContact counter
; var(3) : parry
; var(4) : button level detection
; var(5) : jump direction
; var(6) : Bakuretsu time counter (limit : 100)
; var(18) : OrochiKoF97's throw limiter
;---------------------------------------------------------------------------
; 
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
;---------------------------------------------------------------------------
; Winpose
[Statedef 180]
type = S
ctrl = 0
anim = 181 + (random%3)
velset = 0,0

[State 1100, voice]
type = PlaySnd
trigger1 = Anim = 182
trigger1 = AnimElem = 10
value = 181,0
channel = 1
[State 1100, voice]
type = PlaySnd
trigger1 = Anim = 183
trigger1 = AnimElem = 3
value = 181,1
channel = 1

[State 181, 1]
type = AssertSpecial
trigger1 = Time < 140
flag = roundnotover
;---------------------------------------------------------------------------
; PREINTRO
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190, 3]
type = ChangeState
trigger1 = 1
value = 191
;---------------------------------------------------------------------------
; тCт"тgть
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0

[State 191, Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 1100, voice]
type = PlaySnd
trigger1 = AnimElem = 7
value = 191,0
channel = 1

[State 191, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
;---------------------------------------------------------------------------
; Taunt
[Statedef 195]
type = S
movetype = I
physics = S
anim = 195
velset = 0
ctrl = 0

[State 195,ctrl]
type = ctrlset
triggerall = time > 25
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
trigger3 = command = "holdup"
trigger4 = command = "holddown"
value = 1

[State 1100, voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 195,0
channel = 1

[State 195, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; basic moves
;---------------------------------------------------------------------------
; light punch
[Statedef 200]
type = S
movetype = A
physics = S
anim = 200
velset = 0
ctrl = 0
juggle = 8

[state 1003, Lightning]
type = varset
trigger1 = animelem = 1
var(0) = 0

[State 200, SFX]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200,0
channel = 2

[State 200, voice]
type = PlaySnd
trigger1 = random < 650
trigger1 = AnimElem = 2
value = 200,4+(random<500)
channel = 1

[State 200, 1]
type = HitDef
trigger1 = 1
attr = S, NA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * 25),0
animtype = Light
guardflag = M
hitflag = MAF
getpower = 20,40
pausetime = 4,6
sparkno = S(8013+random%7)
guard.sparkno = S8030
sparkxy = -5, -87
hitsound = S5,0
guardsound = S6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -4.5
air.velocity = -4,-3
persistent = 0

[State 200, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; close light punch
[Statedef 205]
type = S
movetype = A
physics = S
anim = 205
velset = 0
ctrl = 0
juggle = 8

[State 200, SFX]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200,0
channel = 2

[State 200, voice]
type = PlaySnd
trigger1 = random < 650
trigger1 = AnimElem = 2
value = 200,4+(random<500)
channel = 1

[State 205, 1]
type = HitDef
trigger1 = !MoveContact
attr = S, NA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * 30),0
animtype = Light
guardflag = M
hitflag = MAF
getpower = 20,40
pausetime = 4,6
sparkno = S(8013+Random%7)
guard.sparkno = S8030
sparkxy = -5, -94
hitsound = S5,0
guardsound = S6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5.5
air.velocity = -4,-3
persistent = 0

[State 205, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; medium punch
[Statedef 210]
type = S
movetype = A
physics = S
anim = 210
velset = 0
ctrl = 0
poweradd = 20
juggle = 8

[State 210, Width]
type = Width
trigger1 = 1
value = 25,-10

[State 200, SFX]
type = PlaySnd
trigger1 = AnimElem = 3
value = 200,1
channel = 2

[State 200, voice]
type = PlaySnd
trigger1 = random < 650
trigger1 = AnimElem = 2
value = 200,5+(random<500)
channel = 1

[State 210, 1]
type = HitDef
trigger1 = !MoveContact
attr = S, NA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * 60),0
animtype = Medium
guardflag = M
hitflag = MAF
getpower = 40,160
pausetime = 12,14
sparkno = S(8013+Random%7)
guard.sparkno = S8030
sparkxy = -5, -67
hitsound = S5,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 24
ground.velocity = -5
air.velocity = -4,-3
persistent = 0

[State 210, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; heavy punch
[Statedef 220]
type = S
movetype = A
physics = S
anim = 220
velset = 0
ctrl = 0
poweradd = 30
juggle = 8

[State 210, Width]
type = Width
trigger1 = 1
value = 25,-10

[State 200, SFX]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200,2
channel = 2

[State 200, voice]
type = PlaySnd
trigger1 = random < 650
trigger1 = AnimElem = 2
value = 200,6+(random<500)
channel = 1

[State 240, 1]
type = HitDef
trigger1 = !MoveContact
attr = S, NA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * 100),0
animtype = Hard
guardflag = M
hitflag = MAF
getpower = 40,160
pausetime = 12,14
sparkno = S(8013+Random%7)
guard.sparkno = S8030
sparkxy = -5, -80
hitsound = S5,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 24
ground.velocity = -8
air.velocity = -4,-3
persistent = 0

[State 220, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0;ifelse((var(1)&&random<300),1000,ifelse((var(1)&&random<500),1100,0))
ctrl = 1
;---------------------------------------------------------------------------
; close heavy punch
[Statedef 225]
type = S
movetype = A
physics = S
anim = 225
velset = 0
ctrl = 0
poweradd = 20
juggle = 8

[State 200, SFX]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200,8
channel = 2

[State 200, voice]
type = PlaySnd
trigger1 = random < 650
trigger1 = AnimElem = 2
value = 200,6+(random<500)
channel = 1

[State 225, 1]
type = HitDef
trigger1 = 1
attr = S, NA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * 100),0
animtype = Medium
guardflag = M
hitflag = MAF
getpower = 40,160
pausetime = 12,14
sparkno = S(8013+Random%7)
guard.sparkno = S8030
sparkxy = -5, -79
hitsound = S5,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 24
ground.velocity = -8
air.velocity = -4,-3
persistent = 0

[State 225, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0;ifelse((var(1)&&random<300),1000,ifelse((var(1)&&random<500),1100,0))
ctrl = 1
;---------------------------------------------------------------------------
; light kick
[Statedef 230]
type = S
movetype = A
physics = S
anim = 230
velset = 0
ctrl = 0
juggle = 8

[State 200, SFX]
type = PlaySnd
trigger1 = AnimElem = 3
value = 200,1
channel = 2

[State 200, voice]
type = PlaySnd
trigger1 = random < 650
trigger1 = AnimElem = 2
value = 200,4+(random<500)
channel = 1

[State 230, 1]
type = HitDef
trigger1 = 1
attr = S, NA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * 42),0
animtype = Light
guardflag = M
hitflag = MAF
getpower = 20,40
pausetime = 9,10
sparkno = S(8013+Random%7)
guard.sparkno = S8030
sparkxy = -5, -70
hitsound = S5,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 14
ground.velocity = -6
air.velocity = -4,-3
persistent = 0

[State 230, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; close light kick
[Statedef 235]
type = S
movetype = A
physics = S
anim = 235
velset = 0
ctrl = 0
juggle = 8

[State 200, SFX]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200,0
channel = 2

[State 200, voice]
type = PlaySnd
trigger1 = random < 650
trigger1 = AnimElem = 2
value = 200,4+(random<500)
channel = 1

[State 235, 1]
type = HitDef
trigger1 = 1
attr = S, NA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * 40),0
animtype = Light
guardflag = M
hitflag = MAF
getpower = 20,40
pausetime = 9,10
sparkno = S(8013+Random%7)
guard.sparkno = S8030
sparkxy = -5, -62
hitsound = S5,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 14
ground.velocity = -6
air.velocity = -4,-3
persistent = 0

[State 235, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; medium kick
[Statedef 240]
type = S
movetype = A
physics = S
anim = 240
velset = 0
ctrl = 0
poweradd = 20
juggle = 8

[State 210, Width]
type = Width
trigger1 = 1
value = 25,-10

[State 200, SFX]
type = PlaySnd
trigger1 = Anim = 240
trigger1 = AnimElem = 4
value = 200,2
channel = 2

[State 200, voice]
type = PlaySnd
trigger1 = Anim = 240
trigger1 = random < 650
trigger1 = AnimElem = 2
value = 200,5+(random<500)
channel = 1

[State 240, 1]
type = HitDef
trigger1 = 1
attr = S, NA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * 85),0
animtype = Hard
guardflag = M
hitflag = MAF
getpower = 40,160
pausetime = 12,14
sparkno = S(8013+Random%7)
guard.sparkno = S8030
hitsound = S5,3
guardsound = S6,0
sparkxy = -5, -35
ground.type = Low
ground.slidetime = 12
ground.hittime  = 20
ground.velocity = -7
air.velocity = -4,-3
persistent = 0

[State 240, Hit]
type = ChangeAnim
trigger1 = Anim = 240
trigger1 = MoveHit
value = 241

[State 230, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; close medium kick
[Statedef 245]
type = S
movetype = A
physics = S
anim = 245
velset = 0
ctrl = 0
poweradd = 20
juggle = 8

[State 210, Width]
type = Width
trigger1 = 1
value = 25,-10

[State 200, SFX]
type = PlaySnd
trigger1 = AnimElem = 4
value = 200,1
channel = 2

[State 200, voice]
type = PlaySnd
trigger1 = random < 650
trigger1 = AnimElem = 2
value = 200,5+(random<500)
channel = 1

[State 240, 1]
type = HitDef
trigger1 = 1
attr = S, NA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * 80),0
animtype = Hard
guardflag = M
hitflag = MAF
getpower = 40,160
pausetime = 12,14
sparkno = S(8013+Random%7)
guard.sparkno = S8030
hitsound = S5,3
guardsound = S6,0
sparkxy = -5, -70
ground.type = High
ground.slidetime = 12
ground.hittime  = 20
ground.velocity = -7
air.velocity = -4,-3
persistent = 0

[State 230, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; close heavy kick
[Statedef 255]
type = S
movetype = A
physics = S
anim = 255
velset = 0
ctrl = 0
poweradd = 20
juggle = 8

[State 210, Width]
type = null;Width
trigger1 = 1
value = 25,-10

[State 200, SFX]
type = PlaySnd
trigger1 = Anim = 255
trigger1 = AnimElem = 3
value = 200,8
channel = 2

[State 200, voice]
type = PlaySnd
trigger1 = Anim = 255
trigger1 = random < 650
trigger1 = AnimElem = 2
value = 200,6+(random<500)
channel = 1

[State 250, 1]
type = HitDef
trigger1 = 1
attr = S, NA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * 117),0
animtype = Hard
guardflag = M
hitflag = MAF
getpower = 40,160
pausetime = 12,14
sparkno = S(8013+Random%7)
guard.sparkno = S8030
sparkxy = -5-15*(P2BodyDist X < 15), -70
hitsound = S5,3
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 24
ground.velocity = -7
air.velocity = -4,-3
persistent = 0

[State 250, Hit]
type = ChangeAnim
trigger1 = Anim = 250
trigger1 = MoveHit
value = 251

[State 250, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; heavy kick
[Statedef 250]
type = S
movetype = A
physics = S
anim = 250
velset = 0
ctrl = 0
poweradd = 20
juggle = 8

[State 210, Width]
type = Width
trigger1 = 1
value = 25,-10

[State 200, SFX]
type = PlaySnd
trigger1 = Anim = 250
trigger1 = AnimElem = 3
value = 200,8
channel = 2

[State 200, voice]
type = PlaySnd
trigger1 = Anim = 250
trigger1 = random < 650
trigger1 = AnimElem = 2
value = 200,6+(random<500)
channel = 1

[State 250, 1]
type = HitDef
trigger1 = 1
attr = S, NA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * 117),0
animtype = Hard
guardflag = M
hitflag = MAF
getpower = 40,160
pausetime = 12,14
sparkno = S(8013+Random%7)
guard.sparkno = S8030
sparkxy = -5, -75
hitsound = S5,3
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 24
ground.velocity = -8
air.velocity = -4,-3
persistent = 0

[State 250, Hit]
type = ChangeAnim
trigger1 = Anim = 250
trigger1 = MoveHit
value = 251

[State 250, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; crouch light punch
[Statedef 400]
type = C
movetype = A
physics = C
anim = 400
velset = 0
ctrl = 0
juggle = 8

[State 200, SFX]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200,0
channel = 2

[State 200, voice]
type = PlaySnd
trigger1 = random < 650
trigger1 = AnimElem = 2
value = 200,4+(random<500)
channel = 1

[State 400, 1]
type = HitDef
trigger1 = 1
attr = C, NA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * 25),0
animtype = Light
guardflag = M
hitflag = MAF
getpower = 20,40
pausetime = 9,10
sparkno = S(8013+Random%7)
guard.sparkno = S8030
sparkxy = -5, -50
hitsound = S5,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 14
ground.velocity = -6
air.velocity = -4,-3
persistent = 0

[State 400, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
; crouch medium punch
[Statedef 410]
type = C
movetype = A
physics = C
anim = 410
velset = 0
ctrl = 0
poweradd = 20
juggle = 8

[State 200, SFX]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200,1
channel = 2

[State 200, voice]
type = PlaySnd
trigger1 = random < 650
trigger1 = AnimElem = 2
value = 200,5+(random<500)
channel = 1

[State 410, 1]
type = HitDef
trigger1 = 1
attr = C, NA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * 40),0
animtype = Hard
guardflag = M
hitflag = MAF
getpower = 40,160
pausetime = 12,14
sparkno = S(8013+Random%7)
guard.sparkno = S8030
sparkxy = -5, -50
hitsound = S5,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 24
ground.velocity = -12
air.velocity = -4,-3
persistent = 0

[State 410, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
; crouch heavy punch
[Statedef 420]
type = C
movetype = A
physics = C
anim = 420
velset = 0
ctrl = 0
poweradd = 20
juggle = 8

[State 200, SFX]
type = PlaySnd
trigger1 = AnimElem = 3
value = 200,2
channel = 2

[State 200, voice]
type = PlaySnd
trigger1 = random < 650
trigger1 = AnimElem = 2
value = 200,6+(random<500)
channel = 1

[State 410, 1]
type = HitDef
trigger1 = 1
attr = C, NA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * 50),0
animtype = Hard
guardflag = M
hitflag = MAF
getpower = 40,160
pausetime = 12,14
sparkno = S(8013+Random%7)
guard.sparkno = S8030
sparkxy = -5, -44
hitsound = S5,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 24
ground.velocity = -12
air.velocity = -4,-3
persistent = 0

[State 410, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
; crouch light kick
[Statedef 430]
type = C
movetype = A
physics = C
anim = 430
velset = 0
ctrl = 0
juggle = 8

[State 200, SFX]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200,0
channel = 2

[State 200, voice]
type = PlaySnd
trigger1 = random < 650
trigger1 = AnimElem = 2
value = 200,4+(random<500)
channel = 1

[State 430, 1]
type = HitDef
trigger1 = 1
attr = C, NA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * 25),0
animtype = Light
guardflag = L
hitflag = MAF
getpower = 20,40
pausetime = 9,10
sparkno = S(8013+Random%7)
guard.sparkno = S8030
sparkxy = -5, -5
hitsound = S5,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 14
ground.velocity = -6
air.velocity = -4,-3
persistent = 0

[State 420, 2]
type = ChangeState
trigger1 = AnimTime = 0 && p2bodydist X
trigger1 = var(1) && random < 280
trigger1 = prevstateno = 235
value = ifelse(power >= 3000,3030,ifelse(power>=2000,3025,ifelse(power>=1000,3020,1065)))

[State 420, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
; crouch medium kick
[Statedef 440]
type = C
movetype = A
physics = C
anim = 440
velset = 0
ctrl = 0
poweradd = 20
juggle = 7

[State 200, SFX]
type = PlaySnd
trigger1 = AnimElem = 3
value = 200,1
channel = 2

[State 200, voice]
type = PlaySnd
trigger1 = random < 650
trigger1 = AnimElem = 2
value = 200,5+(random<500)
channel = 1

[State 430, 1]
type = HitDef
trigger1 = 1
attr = C, NA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * 40),0
animtype = Hard
guardflag = L
hitflag = MAF
getpower = 40,160
pausetime = 12,14
sparkno = S(8013+Random%7)
guard.sparkno = S8030
sparkxy = -5, -11
hitsound = S5,3
guardsound = S6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 16
ground.velocity = -4
guard.velocity = -10
air.velocity = -3,-3
persistent = 0

[State 430, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
; crouch heavy kick
[Statedef 450]
type = C
movetype = A
physics = C
anim = 450
velset = 0
ctrl = 0
poweradd = 20
juggle = 3

[State 200, SFX]
type = PlaySnd
trigger1 = AnimElem = 3
value = 200,8
channel = 2

[State 200, voice]
type = PlaySnd
trigger1 = random < 650
trigger1 = AnimElem = 2
value = 200,6+(random<500)
channel = 1

[State 450, Slide0]
type = PosAdd
trigger1 = AnimElem = 3
x = 10

[State 450, Slide1]
type = VelSet
trigger1 = AnimElem = 3
x = 8
[State 450, SlideEnd]
type = ChangeAnim
trigger1 = AnimElem = 4, > 0
trigger1 = !(Vel X)
value = 450
elem = 5

[State 430, 1]
type = HitDef
trigger1 = !MoveContact
attr = C, NA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * 50),0
animtype = Medium
guardflag = L
hitflag = MAF
getpower = 40,160
pausetime = 12,14
sparkno = S(8013+Random%7)
guard.sparkno = S8030
sparkxy = -5, -38
hitsound = S5,3
guardsound = S6,0
ground.type = Trip
ground.slidetime = 12
ground.hittime  = 24
ground.velocity = -3,-3
guard.velocity = -6
air.velocity = -2,-3
fall = 1
fall.recover = 0
persistent = 0

[State 430, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
; air light punch
[Statedef 600]
type = A
movetype = A
physics = A
anim = 600
ctrl = 0
juggle = 8

[State 200, SFX]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200,0
channel = 2

[State 200, voice]
type = PlaySnd
trigger1 = random < 650
trigger1 = AnimElem = 2
value = 200,4+(random<500)
channel = 1

[State 600, 1]
type = HitDef
trigger1 = 1
attr = A, NA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * 25),0
animtype = Light
guardflag = HA
hitflag = MAF
getpower = 20,40
pausetime = 9,10
sparkno = S(8013+Random%7)
guard.sparkno = S8030
sparkxy = -5, -76
hitsound = S5,0
guardsound = S6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 16
ground.velocity = -6
air.velocity = -4,-3
guard.velocity = -8
persistent = 0
;---------------------------------------------------------------------------
; air medium punch
[Statedef 610]
type = A
movetype = A
physics = A
anim = 610
ctrl = 0
poweradd = 20
juggle = 8

[State 200, SFX]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200,1
channel = 2

[State 200, voice]
type = PlaySnd
trigger1 = random < 650
trigger1 = AnimElem = 2
value = 200,5+(random<500)
channel = 1

[State 610, 1]
type = HitDef
trigger1 = 1
attr = A, NA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * 40),0
animtype = Hard
guardflag = HA
hitflag = MAF
getpower = 40,160
pausetime = 10,12
sparkno = S(8013+Random%7)
guard.sparkno = S8030
sparkxy = -5, -76
hitsound = S5,1
guardsound = S6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -6
air.velocity = -4,-3
guard.velocity = -8
persistent = 0
;---------------------------------------------------------------------------
; air heavy punch
[Statedef 620]
type = A
movetype = A
physics = A
anim = 620
ctrl = 0
poweradd = 20
juggle = 8

[State 200, SFX]
type = PlaySnd
trigger1 = AnimElem = 3
value = 200,8
channel = 2

[State 200, voice]
type = PlaySnd
trigger1 = random < 650
trigger1 = AnimElem = 2
value = 200,6+(random<500)
channel = 1

[State 610, 1]
type = HitDef
trigger1 = 1
attr = A, NA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * 60),0
animtype = Hard
guardflag = HA
hitflag = MAF
getpower = 40,160
pausetime = 10,12
sparkno = S(8013+Random%7)
guard.sparkno = S8030
sparkxy = -5, -66
hitsound = S5,1
guardsound = S6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -6
air.velocity = -4,-3
guard.velocity = -8
persistent = 0
;---------------------------------------------------------------------------
; air light kick
[Statedef 630]
type = A
movetype = A
physics = A
anim = 630
ctrl = 0
juggle = 8

[State 200, SFX]
type = PlaySnd
trigger1 = AnimElem = 2
value = 200,0
channel = 2

[State 200, voice]
type = PlaySnd
trigger1 = random < 650
trigger1 = AnimElem = 2
value = 200,4+(random<500)
channel = 1

[State 620, 1]
type = HitDef
trigger1 = 1
attr = A, NA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * 25),0
animtype = Light
guardflag = HA
hitflag = MAF
getpower = 20,40
pausetime = 9,10
sparkno = S(8013+Random%7)
guard.sparkno = S8030
sparkxy = -5, -74
hitsound = S5,2
guardsound = S6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -6
air.velocity = -4,-3
guard.velocity = -8
persistent = 0
;---------------------------------------------------------------------------
; air medium kick
[Statedef 640]
type = A
movetype = A
physics = A
anim = 640
ctrl = 0
poweradd = 20
juggle = 8

[State 200, SFX]
type = PlaySnd
trigger1 = AnimElem = 3
value = 200,1
channel = 2

[State 200, voice]
type = PlaySnd
trigger1 = random < 650
trigger1 = AnimElem = 2
value = 200,5+(random<500)
channel = 1

[State 630, 1]
type = HitDef
trigger1 = 1
attr = A, NA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * 40),0
animtype = Hard
guardflag = HA
hitflag = MAF
getpower = 40,160
pausetime = 10,12
sparkno = S(8013+Random%7)
guard.sparkno = S8030
sparkxy = -5, -55
hitsound = S5,3
guardsound = S6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -6
air.velocity = -4,-3
guard.velocity = -8
persistent = 0
;---------------------------------------------------------------------------
; air heavy kick
[Statedef 650]
type = A
movetype = A
physics = A
anim = 650
ctrl = 0
poweradd = 20
juggle = 8

[State 200, SFX]
type = PlaySnd
trigger1 = AnimElem = 3
value = 200,8
channel = 2

[State 200, voice]
type = PlaySnd
trigger1 = random < 650
trigger1 = AnimElem = 2
value = 200,6+(random<500)
channel = 1

[State 630, 1]
type = HitDef
trigger1 = 1
attr = A, NA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * 60),0
animtype = Hard
guardflag = HA
hitflag = MAF
getpower = 40,160
pausetime = 10,12
sparkxy = -15, -86
sparkno = S(8013+Random%7)
guard.sparkno = S8030
hitsound = S5,3
guardsound = S6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -6
air.velocity = -4,-3
guard.velocity = -8
persistent = 0
;---------------------------------------------------------------------------
; forward roll
[Statedef 800]
type = S
movetype = I
physics = N
anim = 800
velset = 0
ctrl = 0
sprpriority = -1

[State 800, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 200,8
channel = 0
[State 800, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 40,1
channel = 0

[State 800, 1]
type = NotHitBy
trigger1 = Time
value = CSA,HT,NA,SA,HA,NP,SP,HP

[State 800, 1]
type = PlayerPush
trigger1 = Time = [1,25]
value = 0

[State 800, PAdd]
type = PosAdd
trigger1 = AnimElem = 1
trigger2 = Animelem = 2
x = 5
[State 800, PAdd]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = Animelem = 4
trigger3 = AnimElem = 7
x = 28
[State 800, PAdd]
type = PosAdd
trigger1 = AnimElem = 6
x = 16
[State 800, PAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = 10

[state 2100, NormalAfterImage]
type = AfterImage
trigger1 = !Time
trans = add1
TimeGap  = 3
FrameGap = 4
length = 10
palbright = 10,10,10
palcontrast = 128,128,128
paladd = 10,10,10
time = 20

[State 800, 1]
type = posset
trigger1 = 1
y = 0

[State 800, 1]
type = AfterImageTime
trigger1 = Animelem = 5
value = 0

[State 800, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; sidestep
[Statedef 801]
type = S
movetype = I
physics = N
anim = 801
velset = 0
ctrl = 0
sprpriority = -1

[State 800, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 800,1
channel = 0

[State 800, 1]
type = NotHitBy
trigger1 = Time
value = CSA,HT,NA,SA,HA,NP,SP,HP

[State 800, 1]
type = PlayerPush
trigger1 = Time = [1,21]
value = 0

[State 800, 1]
type = AfterImage
trigger1 = AnimElem = 2
time = 99999999
length = 10
framegap = 6
palbright = 1,1,1
palcontrast = 128,128,128
paladd = 0,0,0
palmul = 1,1,1
trans = add1

[State 800, 1]
type = posset
trigger1 = 1
y = 0

[State 800, 1]
type = AfterImageTime
trigger1 = Animelem = 5
value = 0

[State 800, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; backward roll
[Statedef 805]
type = S
movetype = I
physics = N
anim = 805
velset = 0
ctrl = 0
sprpriority = -1

[State 800, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 200,8
channel = 0
[State 800, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 40,1
channel = 0

[State 800, 1]
type = NotHitBy
trigger1 = Time
value = CSA,HT,NA,SA,HA,NP,SP,HP

[State 800, 1]
type = PlayerPush
trigger1 = Time = [1,25]
value = 0

[State 800, PAdd]
type = PosAdd
trigger1 = AnimElem = 1
trigger2 = Animelem = 2
x = -5
[State 800, PAdd]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = Animelem = 4
trigger3 = AnimElem = 7
x = -28
[State 800, PAdd]
type = PosAdd
trigger1 = AnimElem = 6
x = -16
[State 800, PAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = -10

[state 2100, NormalAfterImage]
type = AfterImage
trigger1 = !Time
trans = add1
TimeGap  = 3
FrameGap = 4
length = 10
palbright = 10,10,10
palcontrast = 128,128,128
paladd = 10,10,10
time = 20

[State 800, 1]
type = posset
trigger1 = 1
y = 0

[State 800, 1]
type = AfterImageTime
trigger1 = Animelem = 12
value = 0

[State 800, 2]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = p2dist X <= 0
trigger2 = animelem = 13
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;stand parry
[Statedef 850] 
type     = S
movetype = I
physics  = N
anim     = 850
poweradd = 100
velset   = 0,0
ctrl     = 0
SprPriority = 5

[State 3000, 1]
type = Explod
trigger1 = time = 1
anim = 7035
scale = .75,.75
pos = 40, -97
sprpriority = 6
supermove = 1
persistent = 0
pausemovetime = -1
ownpal = 1
id = 7035

[State 850, parry bonus]
type = LifeAdd
trigger1 = time = 1
value = 60

[State 850, position]
type = PosSet
trigger1 = 1
y = 0

[State 850, assertsp]
type = assertspecial
trigger1 = 1
flag = nowalk
flag2 = nostandguard
flag3 = nocrouchguard

[State 850, pause]
type = pause
trigger1 = !time
time = 10
movetime = 10

[State 850, nhb]
type = nothitby
trigger1 = animelem = 4, < 0
time = 1
value = SCA

[State 850, bg effect]
type = EnvColor
trigger1 = Time = 0
value = 255, 255, 255
time = 1

[State 850, sound]
type = PlaySnd
trigger1 = time = 0
value = 6,1

[State 850, shake]
type = envshake
trigger1 = !time
time = 8
freq = 60
ampl = 3

[State 850, pal]
type =palfx
trigger1 = !time
add = 30,30,100
sinadd = 30,30,100,8
time = 8

[State 850, ctrl]
type = ctrlset
trigger1 = animelem = 2, > 5
value = 1

[State 850, end]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;crouch parry
[Statedef 851] 
type     = C
movetype = I
physics  = N
anim     = 851
poweradd = 100
velset   = 0,0
ctrl     = 0
SprPriority = 5

[State 3000, 1]
type = Explod
trigger1 = time = 1
anim = 7035
scale = .75,.75
pos = 29, -32
sprpriority = 6
supermove = 1
persistent = 0
pausemovetime = -1
ownpal = 1
id = 7035

[State 850, parry bonus]
type = LifeAdd
trigger1 = time = 1
value = 60

[State 850, position]
type = PosSet
trigger1 = 1
y = 0

[State 850, assertsp]
type = assertspecial
trigger1 = 1
flag = nowalk
flag2 = nostandguard
flag3 = nocrouchguard

[State 850, pause]
type = pause
trigger1 = !time
time = 10
movetime = 10

[State 850, nhb]
type = nothitby
trigger1 = animelem = 4, < 0
time = 1
value = SCA

[State 850, bg effect]
type = EnvColor
trigger1 = Time = 0
value = 255, 255, 255
time = 1

[State 850, sound]
type = PlaySnd
trigger1 = time = 0
value = 6,1

[State 850, shake]
type = envshake
trigger1 = !time
time = 8
freq = 60
ampl = 3

[State 850, pal]
type =palfx
trigger1 = !time
add = 30,30,100
sinadd = 30,30,100,8
time = 8

[State 850, ctrl]
type = ctrlset
trigger1 = animelem = 2, > 5
value = 1

[State 851, end]
type = ChangeState
Trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
;air parry
[Statedef 852] 
type     = A
movetype = I
physics  = A
anim     = 852
poweradd = 100
ctrl     = 0
SprPriority = 5
Velset = 0,-3

[State 3000, 1]
type = Explod
trigger1 = time = 1
anim = 7035
scale = .75,.75
pos = 28, -84
sprpriority = 6
supermove = 1
persistent = 0
pausemovetime = -1
ownpal = 1
id = 7035

[State 850, parry bonus]
type = LifeAdd
trigger1 = time = 1
value = 60

[State 850, assertsp]
type = assertspecial
trigger1 = 1
flag = nowalk
flag2 = nostandguard
flag3 = nocrouchguard

[State 850, pause]
type = pause
trigger1 = !time
time = 10
movetime = 10

[State 850, nhb]
type = nothitby
trigger1 = animelem = 4, < 0
time = 1
value = SCA

[State 850, bg effect]
type = EnvColor
trigger1 = Time = 0
value = 255, 255, 255
time = 1

[State 850, sound]
type = PlaySnd
trigger1 = time = 0
value = 6,1

[State 850, shake]
type = envshake
trigger1 = !time
time = 8
freq = 60
ampl = 3

[State 850, pal]
type = palfx
trigger1 = !time
add = 30,30,100
sinadd = 30,30,100,8
time = 8

[State 850, ctrl]
type = ctrlset
trigger1 = animelem = 2, > 5
value = 1
;---------------------------------------------------------------------------
; grab attempt
[Statedef 900]
type = S
movetype = A
physics = S
anim = 900
velset = 0
ctrl = 0

[State 900, PunchKick]
type = VarSet
trigger1 = !Time && !Var(4)
trigger1 = Command = "z"
var(4) = 1

[State 200, voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 200,0
channel = 2

[State 900, 1]
type = HitDef
triggerall = p2stateno != 40 && p2stateno !=52 ; Cannot grab during jump start / jump land
triggerall = var(18) = 0 ; Opponent isn't in guarding state
trigger1 = AnimElem = 1
attr = S, NT
guardflag =
hitflag = M-
sparkno = -1
sparkxy = 0, 0
hitsound = S900,0
priority = 5,dodge
p1stateno = ifelse(Var(4) = 1, 910,920)
p2stateno = ifelse(Var(4) = 1, 915,925)
p1facing = ifelse(command = "holdfwd",1,-1)
p2facing = 1
ID = 920
numhits = 0

[State 900, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; punch throw success
[StateDef 910]
type = S
movetype = A
physics = N
anim = 910
velset = 0,0

[State 910, Bind1]
type = TargetBind
trigger1 = Anim = 910
trigger1 = AnimElemNo(0) = 1
pos = 32,0
persistent = 0
[State 910, Bind2]
type = TargetBind
trigger1 = Anim = 910
trigger1 = AnimElemNo(0) = 2
pos = 18,-81
persistent = 0
[State 910, Bind3]
type = TargetBind
trigger1 = Anim = 910
trigger1 = AnimElemNo(0) = 3
pos = 10,-81
persistent = 0
[State 910, Bind3]
type = TargetBind
trigger1 = Anim = 910
trigger1 = AnimElem = 4
pos = -17,-100
persistent = 0
[State 910, Bind3]
type = TargetBind
trigger1 = Anim = 910
trigger1 = AnimElemTime(5) = 0
pos = -100,-74
persistent = 0

[State 910, Damage]
type = TargetLifeAdd
trigger1 = AnimElem = 5, = 0
value = -125

[State 910, voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 200,4+(Random<500)
channel = 1
[State 910, woosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 200,2
channel = 2

[State 910, Throw]
type = TargetState
trigger1 = AnimElem = 6
value = 916

[State 910, Spr]
type = SprPriority
trigger1 = AnimElem = 4
value = -1

[State 910, end]
type = Turn
trigger1 = !Animtime

[State 910, 2]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; held by punch throw
[Statedef 915]
type = A
physics = N
movetype = H
velset = 0,0

[State 926, Gethit]
type = ChangeAnim2
trigger1 = !Time
value = 915

[State 925, Screen]
type = ScreenBound
trigger1 = 1
;---------------------------------------------------------------------------
; thrown by punch throw
[StateDef 916]
Type = A
MoveType = H
VelSet = 6.67, -5.33
anim = 5160

[State 915, Posfix]
type = PosAdd
trigger1 = !Time
x = 25
y = 10

[State 916, Gravity]
Type = VelAdd
Trigger1 = 1
Y = .5

[State 916, 4]; Recover near ground
type = selfState
triggerall = Vel Y > 0 && Pos Y >= -20 && alive
trigger1 = Command = "recovery"
value = 5200; HITFALL_RECOVER

[State 916, 5]; Recover in mid air
type = selfState
triggerall = Vel Y > -1 && alive
trigger1 = Command = "recovery"
value = 5210; HITFALL_AIRRECOVER

[State 916, End]
Type = SelfState
Trigger1 = Pos Y >= 0 && Vel Y > 0
Value = 5100
;---------------------------------------------------------------------------
; kick throw
[Statedef 920]
type = S
movetype = A
physics = N
anim = 920
velset = 0,0

[State 920, Push]
type = PlayerPush
trigger1 = 1
value = 0

[State 920, Wid]
type = Width
trigger1 = 1
edge = 45,0

[State 920, ButtonMashingSetup]
type = VarSet
trigger1 = !Time
var(4) = 0

[State 920, ButtonMashing]
type = VarAdd
triggerall = AnimElemNo(0) = [4,42]
trigger1 = Command = "a"
trigger2 = Command = "b"
trigger3 = Command = "c"
v = 4
value = 1

[State 925, Blink]
type = PalFX
triggerall = AnimElemNo(0) = [4,42]
trigger1 = Command = "a" || Command = "b" || Command = "c"
time = 1
add = 128, 128, 128

[State 920, TargetBreakFree]
type = VarAdd
triggerall = AnimElemNo(0) = [4,42]
trigger1 = NumTarget(920)
trigger1 = Target(920), Command = "a"
trigger2 = NumTarget(920)
trigger2 = Target(920), Command = "b"
trigger3 = NumTarget(920)
trigger3 = Target(920), Command = "c"
v =  4
value = -1

[State 920, SpeedUp]
type = ChangeAnim
trigger1 = Var(4) >= 3
trigger1 = AnimElemNo(0) = [4,39]
trigger1 = AnimelemTime(AnimElemNo(0)) > 2
value = 920
elem = AnimElemNo(0) + 1

[State 920, NotEnoughMashing]
type = ChangeAnim
trigger1 = AnimElemNo(0) = 32
trigger1 = Var(4) < 5
trigger2 = AnimelemNo(0) = 36
trigger2 = Var(4) < 7
trigger3 = AnimelemNo(0) = 40
trigger3 = Var(4) < 9
value = 920
elem = 44

[State 920, Hit1]
type = HitAdd
trigger1 = AnimElemNo(0) > 5 && AnimElemNo(0) < 45
trigger1 = AnimElemNo(0)%4 = 2 && AnimElemTime(AnimelemNo(0)) = 0
;trigger2 = AnimElem = 47
value = 1

[State 920, Hit2]
type = TargetLifeAdd
trigger1 = AnimElemNo(0) > 5 && AnimElemNo(0) < 45
trigger1 = AnimElemNo(0)%4 = 2 && AnimElemTime(AnimElemNo(0)) = 0
value = -19
kill = 0

[State 920, Hit3]
type = TargetLifeAdd
trigger1 = AnimElem = 47
value = -20

[State 920, Expl1]
type = Explod
trigger1 = AnimElemNo(0) > 5 && AnimElemNo(0) < 45
trigger1 = AnimElemNo(0)%4 = 2 && AnimElemTime(AnimElemNo(0)) = 0
anim = 8003+(random%7)
pos = 63,-63
sprpriority = 5
ownpal = 1

[State 920, Expl2]
type = null;Explod
trigger1 = AnimElem = 47
anim = 8013+(random%7)
pos = 85,-71
sprpriority = 5
ownpal = 1

[State 920, HitSnd1]
type = PlaySnd
trigger1 = AnimElemNo(0) > 5 && AnimElemNo(0) < 45
trigger1 = AnimElemNo(0)%4 = 2 && AnimElemTime(AnimElemNo(0)) = 0
value = 5,1
channel = 2

[State 920, HitSnd2]
type = null;PlaySnd
trigger1 = AnimElem = 47
value = 5,2
channel = 2

[State 920, Bind]
type = TargetBind
trigger1 = AnimElem = 47, < 0
pos = 54,0

[State 920, Bind]
type = TargetBind
trigger1 = AnimElem = 47, = 0
pos = 80,0

[State 920, Bind]
type = TargetState
trigger1 = AnimElemNo(0) < 47
trigger1 = NumTarget(920)
trigger1 = IfElse(AnimElemNo(0) > 5 && AnimElemNo(0) < 45, AnimElemNo(0)%4 != 2, 1)
trigger1 = Target(920), AnimElemTime(3) = 3
value = 925
ID = 920

[State 920, Hit]
type = TargetState
trigger1 = AnimElemNo(0) > 5 && AnimElemNo(0) < 45
trigger1 = AnimElemNo(0)%4 = 2
value = 926
ID = 920

[State 920, FinalHit]
type = HitDef
trigger1 = AnimElem = 47
attr = S,NT
hitflag = MAF
guardflag = MA
animtype = Heavy
damage = 20,0
sparkno = S8013+(random%7)
sparkxy = -22,-71
hitsound = S5,2
ground.type = Low
ground.velocity = -5,-7.75
fall = 1
fall.recover = 0
fall.recovertime = 4000
chainID = 920
id = 925

[State 920, Final]
type = null;TargetState
trigger1 = AnimElem = 47
value = 927
ID = 920

[State 920, 2]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; held by kick throw
[Statedef 925]
type = S
movetype = H
velset = 0,0

[State 926, Gethit]
type = ChangeAnim2
trigger1 = !Time
value = 925

[State 925, Blink]
type = PalFX
trigger1 = Command = "a" || Command = "b" || Command = "c"
time = 1
add = 128, 128, 128

[State 925, Screen]
type = ScreenBound
trigger1 = 1
;---------------------------------------------------------------------------
; kneed by kick throw
[Statedef 926]
type = S
movetype = H
velset = 0,0

[State 926, Gethit]
type = ChangeAnim2
trigger1 = !Time
value = 926

[State 925, Blink]
type = PalFX
trigger1 = Command = "a" || Command = "b" || Command = "c"
time = 1
add = 128, 128, 128

[State 925, Screen]
type = ScreenBound
trigger1 = 1
;---------------------------------------------------------------------------
; grabbed by kick throw - end
[Statedef 927]
type = A
movetype = H
velset = -5,-7.75

[State 925, end]
type = SelfState
trigger1 = !Time
value = 5035
;---------------------------------------------------------------------------
; Special Moves
;---------------------------------------------------------------------------
; Hurricane Upper
[Statedef 1000]
type    = S
movetype= A
physics = N
anim = 1000
juggle  = 8
poweradd= 0
velset = 0,0
ctrl = 0
sprpriority = 2

[state 1000, lv3detect]
type= varset
trigger1 = !time
trigger1 = !var(1) && !var(4)
trigger1 = command = "Hurricane3"
var(4) = 3
[state 1000, lv2detect]
type= varset
trigger1 = !time
trigger1 = !var(1) && !var(4)
trigger1 = command = "Hurricane2"
var(4) = 2
[state 1000, lv1detect]
type= varset
trigger1 = !time
trigger1 = !var(1) && !var(4)
trigger1 = command = "Hurricane1"
var(4) = 1

[State 1000, PowerCheck]
type = ChangeAnim
trigger1 = !Time
value = 990+10*(Var(4))

[State 1000, Width]
type = Width
trigger1 = AnimElem = 3, > 0
value = 25

[State 1000, Pow]
type = PowerAdd
trigger1 = !Time
value = 30 + 30*var(4)

[State 1000, voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000,0

[State 2100, woosh]
type = PlaySnd
trigger1 = Anim = 1020 && AnimElem = 3 
trigger2 = Anim = 1020
trigger2 = AnimElem = 10
trigger3 = Anim != 1020 && AnimElem = 2
value = 1000,1

[State 1000, Expl]
type = Explod
trigger1 = Anim = 1020 && AnimElem = 3 
trigger2 = Anim = 1020
trigger2 = AnimElem = 10
trigger3 = Anim != 1020 && AnimElem = 2
anim = 1050
ID = 1050
bindtime = -1
sprpriority = 3
RemoveOnGetHit = 1

[state 2500, 1]
type = Helper
trigger1 = AnimElem = 4
trigger2 = Anim = 1020
trigger2 = AnimElem = 11
ID = 1050
name = "Hurricane"
pos = 65,0
stateno = 1050
ownpal = 1

[State 1000, End]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Hurricane
[Statedef 1050]
type     = A
movetype = A
physics  = N
anim     = 1060
poweradd = 0
ctrl     = 0
SprPriority = 5
Velset = 0,0

[State 1010, Shad]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1010, HurriSFX]
type = PlaySnd
trigger1 = !Time
trigger1 = Parent, StateNo != 2000
value = 1050,0
channel = 2

[State 1010, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP

[State 2010, HOR]
type = HitOverRide
trigger1 = 1
time = -1
attr = SCA
stateno = 1060

[State 2010, PowerCheck]
type = VarSet
trigger1 = !time
trigger1 = !var(2)
var(2) = parent,var(4)

[State 1050, VSet]
type = VelSet
trigger1 = !Time
trigger1 = Var(2) < 4
x = 3 + Var(2)

;[State 1000, 1]
;getpower = 50,0

[State 1050, Dust]
type = Explod
trigger1 = !NumExplod(1065)
anim = 1065
ID = 1065
pos = -22,0
bindtime = -1
sprpriority = 4
removeongethit = 1

[State 2010, HitDef]
type = HitDef
trigger1 = Parent, StateNo != 2100
attr = S, SP
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * (IfElse(Var(2)=1, 75, IfElse(Var(2)=2, 83, 50)))),7
priority = 7, Hit
animtype = Medium
guardflag = MA
hitflag = MAF
getpower = 0,0
pausetime = 0,6
sparkno = S(8003+Random%7 + 10*(Parent, StateNo != [1000,1900])*(Random < 500))
sparkxy = -10, -65+P2Dist Y
guard.sparkno = S8030
hitsound = S5,4
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 20
ground.velocity = -10+5*(Var(2)>3)
air.velocity = -4,-3
envshake.time = 15
envshake.ampl = -6
ground.cornerpush.veloff = 0.0001
air.cornerpush.veloff = 0.0001

[State 2010, BHTKHitDef]
type = HitDef
trigger1 = Parent, StateNo = 2100
attr = S, SP
damage = 25,7
priority = 7, Hit
animtype = Medium
guardflag = MA
hitflag = MAF
getpower = 0,0
pausetime = 0,6
sparkno = S(8003+Random%7+10*Random%2)
sparkxy = -10, -65+P2Dist Y
guard.sparkno = S8030
hitsound = S5,4
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 26
ground.velocity = -1.8, -6 * (Parent, AnimElem = 9, > 0)
air.velocity = -4,-3
envshake.time = 15
envshake.ampl = -6
ground.cornerpush.veloff = 0.0001
air.cornerpush.veloff = 0.0001
fall = (Parent, AnimElem = 9, > 0)
fall.recover = 0

[State 2010, End]
type = ChangeState
trigger1 = MoveContact
value = 1060

[State 1010, End]
type = ChangeState
trigger1 = MoveContact
trigger2 = frontedgedist < -65 || backedgedist < 0
trigger3 = Var(2) >= 4 && Time > 10
trigger4 = Parent, StateNo = 2100 && Time = 10
value = 1060
;---------------------------------------------------------------------------
[Statedef 1060]
type     = A
physics  = N
movetype = A
ctrl     = 0
;velset   = 0,0
sprpriority = 4

[State 1015, disappear]
type = explod
trigger1 = !Time
anim = 1066
sprpriority = 4

[State 1010, NHB]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1010, Shad]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1060, Assert]
type = AssertSpecial
trigger1 = Time
flag = Invisible

[State 8200, Gradual Transparency]
type = AfterImage
trigger1 = Time
time = 5
framegap = 1
length = 2
PalAdd = 0, 0, 0
PalMul = 1, 1, 1
PalContrast = 255-((Time)*12), 255-((Time)*12), 255-((Time)*12)
trans = Add

[State 2015, End]
type = DestroySelf
trigger1 = Time = 22
;---------------------------------------------------------------------------
; Tiger kick
[Statedef 1100]
type    = S
movetype= A
physics = N
anim    = 1100
juggle  = 7
velset  = 0,0
poweradd= 0
ctrl = 0
sprpriority = 2

[state 1100, CountNumHitsSet]
type= VarSet
trigger1 = !time
var(2) = 0

[state 1100, lv3detect]
type= VarSet
trigger1 = !time
trigger1 = !var(1) && !var(4)
trigger1 = command = "Tiger3"
var(4) = 3
[state 1100, lv2detect]
type= VarSet
trigger1 = !time
trigger1 = !var(1) && !var(4)
trigger1 = command = "Tiger2"
var(4) = 2
[state 1100, lv1detect]
type= VarSet
trigger1 = !time
trigger1 = !var(1) && !var(4)
trigger1 = command = "Tiger1"
var(4) = 1

[State 1100, Pow]
type = PowerAdd
trigger1 = !Time
value = 30 + 30*var(4)

[State 1100, Air]
type = StateTypeSet
trigger1 = Anim = 1100
trigger1 = AnimElem = 5
statetype = A
physics = A

[State 1000, voice]
type = PlaySnd
trigger1 = Anim = 1100
trigger1 = AnimElem = 2
value = 1100,0

[State 1100, step]
type = PlaySnd
trigger1 = Anim = 1100
trigger1 = AnimElem = 3
value = 40,0
[State 1100, woosh]
type = PlaySnd
trigger1 = Anim = 1100
trigger1 = AnimElem = 3
value = 200,3

[State 1100, BurnFX1]
type = Explod
trigger1 = Anim = 1100
trigger1 = AnimElem = 5
pos = 2, 1
anim = 1150
ID = 1150
bindtime = -1
removetime = -1
sprpriority = 4
removeongethit = 1
[State 1100, StopFX]
type = RemoveExplod
trigger1 = Anim = 1101
ID = 1150
[State 1100, BurnFX2]
type = Explod
trigger1 = Anim = 1101
pos = 2, 1
anim = 1151
ID = 1151
bindtime = -1
sprpriority = 4
persistent = 0
removeongethit = 1

[State 1100, Dust1]
type = Explod
trigger1 = Anim = 1100
trigger1 = AnimElem = 1
anim = 7020
facing = -1
sprpriority = 5
Ownpal = 1
[State 1100, Dust2]
type = Explod
trigger1 = Anim = 1100
trigger1 = AnimElem = 3
anim = 7000
ownpal = 1
sprpriority = 5
[State 1100, SFX]
type = PlaySnd
trigger1 = Anim = 1100
trigger1 = AnimElem = 3
value = 40,0
channel = 2

[State 1100, PAdd]
type = PosAdd
trigger1 = Anim = 1100
trigger1 = AnimElem = 4
x = 16

[State 1100, VSet]
type = Velset
trigger1 = Anim = 1100
trigger1 = AnimElem = 5
x = 1.6+.3*var(4)
y = -7.5-2*var(4)

[State 1100, VAdd]
type = VelAdd
trigger1 = Anim = 1100
trigger1 = AnimElem = 5,> 0
trigger2 = Anim = 1101
trigger2 = AnimElem = 1, > 0
y = .45

[State 1100, NumHitsCheck]
type = VarAdd
trigger1 = MoveContact
v = 2
value = 1
[State 1100, NumHitsCheck2]
type = MoveHitReset
trigger1 = MoveContact

[State 1100, Tigerhit]
type = HitDef
trigger1 = Var(2) < Var(4)
attr = S, SA
animtype  = Back
damage    = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * (IfElse(Var(4) = 1, 125, IfElse(Var(4) = 2, 67, 50)))),10
priority  = 7
hitflag = MAF
guardflag = MA
pausetime = 6,8
sparkno = S(8003+Random%7)
guard.sparkno = S8030
sparkxy = -20,-70
hitsound   = S5,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 14
ground.velocity = -3, -6
guard.velocity = -5
air.velocity = -3,-5
fall = 1
fall.recover = 0
envshake.time = 10
envshake.ampl = 2
nochainid = 925

[State 1100, ChAnim]
type = ChangeAnim
trigger1 = anim = 1100
trigger1 = animElem = 5, > 0
trigger1 = Vel Y >= 0
value = 1101

[State 1100, Land2]
type = StateTypeSet
trigger1 = Anim = 1101
trigger1 = Pos Y >= -10 && Vel Y > 0
statetype = S
physics = N
[State 1100, Land1]
type = ChangeAnim
trigger1 = Anim = 1101
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 47
[State 1100, Land2]
type = StateTypeSet
trigger1 = Anim = 47
statetype = S
physics = S

[State 1105, LandPos]
type = PosSet
trigger1 = Anim = 47
y = 0
[State 1105, LandVel]
type = VelSet
trigger1 = Anim = 47
x = 0
y = 0
[State 1100, SFX]
type = PlaySnd
trigger1 = Anim = 47
value = 40,1
channel = 2
persistent = 0
[State 1500, Dust2]
type = explod
trigger1 = Anim = 47
anim = 7010
ID = 7010
sprpriority = -2
postype = p1
ownpal = 1
persistent = 0

[State 1105, End]
type = ChangeState
trigger1 = Anim = 47
trigger1 = Animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Slash kick
[Statedef 1200]
type    = S
movetype= A
physics = N
anim = 1200
juggle  = 8
poweradd= 0
velset = 0,0
ctrl = 0
sprpriority = 2

[state 1200, HeavyDetect]
type= varset
trigger1 = !time
trigger1 = !var(1) && !var(4)
trigger1 = command = "Slash3"
var(4) = 3
[state 1200, MediumDetect]
type= varset
trigger1 = !time
trigger1 = !var(1) && !var(4)
trigger1 = command = "Slash2"
var(4) = 2
[state 1200, LightDetect]
type= varset
trigger1 = !time
trigger1 = !var(1) && !var(4)
trigger1 = command = "Slash1"
var(4) = 1

[State 1200, Pow]
type = PowerAdd
trigger1 = !Time
value = 30 + 30*var(4)

[State 1200, Air]
type = StateTypeSet
trigger1 = Anim = 1200
trigger1 = AnimElem = 3
statetype = A
physics = N

[State 1200, voice]
type = PlaySnd
trigger1 = Anim = 1200
trigger1 = !Time
value = 1200,0
channel = 1
[State 1200, voice]
type = PlaySnd
trigger1 = Anim = 1200
trigger1 = AnimElem = 4
value = 1200,1
channel = 2

[State 1200, Dust1]
type = Explod
trigger1 = Anim = 1200
trigger1 = AnimElem = 2
anim = 7020
facing = -1
sprpriority = 4
Ownpal = 1

[State 1200, PAdd]
type = PosAdd
trigger1 = Anim = 1200
trigger1 = AnimElem = 1
x = 12

[State 1200, Velocity1]
type = Velset
trigger1 = Anim = 1200
trigger1 = AnimElem = 3
x = 6+var(4)
y = -2.3
[State 1200, Velocity2]
type = veladd
trigger1 = Anim = 1200
trigger1 = AnimElem = 3,>= 0
y = .2
[State 1200, Velocity3]
type = Velset
trigger1 = Anim = 1200
trigger1 = AnimElem = 4, > 0
trigger1 = vel Y > 0
y = 0
[State 1200, secondary kick]
type = VarAdd
triggerall = Command = "a" || Command = "b" || Command = "c"
trigger1 = Anim = 1200 && AnimElem = 4, > 1
trigger2 = Anim = 1201
v = 4
value = 3

[State 1200, HitDef]
type = HitDef
trigger1 = Anim = 1200
trigger1 = !movecontact
attr = S, SA
animtype  = Heavy
damage    = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * (83.3+IfElse(Var(4) > 3, 8.3*(Var(4)-3), 8.3*Var(4)))),10
priority  = 4
hitflag = MA
guardflag = M
pausetime = 10,14
sparkno = S(8003+Random%7)
guard.sparkno = S8030
sparkxy = 0,-50
hitsound   = S5,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 16
ground.velocity = -1
guard.velocity = -5
air.velocity = -5,-3
forceStand = 1
ground.cornerpush.veloff = 0.0001

[state 1200, Secondary kick setup]
type = MoveHitReset
trigger1 = Anim = 1250
persistent = 0

[State 1200, HitDef]
type = HitDef
trigger1 = Anim = 1250
trigger1 = AnimElem = 4 || AnimElem = 5
trigger1 = !MoveContact
attr = S, SA
animtype  = Heavy
damage    = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * (23.3+8.3*(Var(4)-3))),10
priority  = 4
hitflag = MA
guardflag = M
pausetime = 10,14
sparkno = S(8003+Random%7)
guard.sparkno = S8030
sparkxy = -15,-85
hitsound   = S5,1
guardsound = S6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 16
ground.velocity = -3
guard.velocity = -5
air.velocity = -5,-3
fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0.0001

[State 1200, Kick]
type = ChangeAnim
triggerall = Anim = 1200
triggerall = AnimElem = 4, > 0
trigger1 = P2BodyDist X < 65
trigger2 = Var(4) > 3
trigger2 = Time = 16 + 4*(Var(4)-3)
trigger3 = Var(4) <= 3
trigger3 = Time = 16 +4*Var(4)
value = 1201

[State 1200, Stop]
type = ChangeAnim
trigger1 = Anim = 1201
trigger1 = Var(4) <= 3
trigger1 = Time = 21 + 3*Var(4)
trigger2 = Anim = 1250
trigger2 = !AnimTime
trigger3 = Pos Y > -1
trigger3 = (Anim = 1201 && Time > 12) || Anim = 1250
value = 1225

[State 1200, VAdd]
type = VelAdd
trigger1 = Anim = 1201 || Anim = 1225
;trigger1 = AnimElem = 1, > 1
x = ifelse(vel X > 0, -.2, 0)
y = .25;ifelse(pos Y < 0, .25, 0)
persistent = 1
[State 1200, VAdd]
type = VelAdd
trigger1 = Anim = 1250
x = ifelse(vel X > 0, -.2, 0)
y = .12
persistent = 1
[State 1200, VSet]
type = VelSet
trigger1 = Anim = 1201 || Anim = 1250
trigger1 = AnimElem = 1, > 1
trigger1 = Vel X <= 0
x = 0

[State 1200, secondary kick]
type = ChangeAnim
trigger1 = Anim = 1201
trigger1 = Var(4) > 3
trigger1 = MoveContact
value = 1250

[State 1200, Land1]
type = ChangeState
triggerall = Anim != 47
trigger1 = Anim = 1225 || Anim = 1250
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52
[State 1200, Land2]
type = StateTypeSet
trigger1 = Anim = 47
statetype = S
physics = S

[State 1200, LandPos]
type = PosSet
trigger1 = Anim = 47
y = 0
[State 1200, LandVel]
type = VelSet
trigger1 = Anim = 47
x = 0
y = 0

[State 1200, End]
type = ChangeState
trigger1 = Anim = 47
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Golden Heel
[Statedef 1300]
type = S
movetype = A
physics = N
velset = 0
ctrl = 0
juggle = 8
anim = 1300
poweradd = 80

[state 1200, lv3detect]
type= varset
trigger1 = !time
trigger1 = !var(1) && !var(4)
trigger1 = command = "Heel3"
var(4) = 3
[state 1200, lv2detect]
type= varset
trigger1 = !time
trigger1 = !var(1) && !var(4)
trigger1 = command = "Heel2"
var(4) = 2
[state 1200, lv1detect]
type= varset
trigger1 = !time
trigger1 = !var(1) && !var(4)
trigger1 = command = "Heel1"
var(4) = 1

[State 1500, ChAnim]
type = ChangeAnim
trigger1 = Anim = 1300
trigger1 = AnimElem = 3, > 1
trigger1 = Vel Y >= 0
value = 1305

[State 1100, voice]
type = PlaySnd
trigger1 = Anim = 1300
trigger1 = AnimElem = 2
value = 1300,0
channel = 1

[State 1500, Dust]
type = Explod
trigger1 = Anim = 1300
trigger1 = AnimElem = 2
anim = 7020
ownpal = 1
facing = -1
sprpriority = 5

[State 1500, Air]
type = StateTypeSet
trigger1 = Anim = 1300
trigger1 = AnimElem = 3
statetype = A

[State 1500, Vel1]
type = velset
trigger1 = Anim = 1300
trigger1 = AnimElem = 3
x = 2 + 1 * var(4)
y = -7 - var(4)
[State 1500, Vel2]
type = veladd
trigger1 = Anim = 1300
trigger1 = AnimElem = 3,> 0
trigger2 = Anim = 1305
y = .65 - .01 * var(4)

[State 1300, SlashFX]
type = Explod
trigger1 = Anim = 1305
trigger1 = AnimElem = 1
anim = 1350
ID = 1350
sprpriority = 4
bindtime = -1
persistent = 0
removeongethit = 1
scale = 1.1,.9
pos = -7, -8 ; for scaled explod...

[state 1300, Woosh]
type = PlaySnd
trigger1 = Anim = 1305
trigger1 = AnimElem = 1
value = 1200,1

[State 1500, 1]
type = HitDef
trigger1 = Anim = 1305
trigger1 = !MoveContact
attr = A, SA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * (90+10*var(4))),10
animtype = Hard
guardflag = HA
hitflag = MAF
getpower = 50,0
pausetime = 12,14
sparkno = S(8003+Random%7)
guard.sparkno = S8030
sparkxy = -20, -40
hitsound = S5,4
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 20
ground.velocity = 0,8
air.velocity = -4,8
fall = 1
fall.recover = 0
fall.envshake.time = 12
fall.envshake.ampl = -4
guard.velocity = -8

[State 1500, Land1]
type = ChangeAnim
trigger1 = Anim = 1305
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1310
[State 1500, Land2]
type = VelSet
trigger1 = Anim = 1310
trigger1 = Vel Y != 0
x = 0
y = 0
[State 1500, Land3]
type = PosSet
trigger1 = Anim = 1310
trigger1 = Pos Y != 0
y = 0
[State 1500, Land4]
type = StateTypeSet
trigger1 = Anim = 1310
trigger1 = StateType != S
statetype = S

[State 52, SFX]
type = PlaySnd
trigger1 = Anim = 1310
value = 40,1
channel = 2
persistent = 0
[State 52, Dust]
type = explod
trigger1 = Anim = 1310
anim = 7010
ID = 7010
sprpriority = -2
postype = p1
ownpal = 1
persistent = 0

[State 1300, SlashFX]
type = ModifyExplod
trigger1 = Anim != 1300 && Anim != 1305
ID = 1350
bindtime = 0

[State 1500, End]
type = ChangeState
trigger1 = Anim = 1310 || Anim = 5
trigger1 = !AnimTime
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Bakuretsu ken
[Statedef 1400]
type    = S
movetype= A
physics = N
anim = 1400
juggle  = 8
velset = 0,0
ctrl = 0
sprpriority = 2

[state 1000, lv3Start]
type= varset
trigger1 = !var(1)
trigger1 = Var(2) = 9
var(4) = 3
[state 1000, lv2start]
type= varset
trigger1 = !var(1)
trigger1 = Var(2) = 8
var(4) = 2
[state 1000, lv1Start]
type= varset
trigger1 = !var(1)
trigger1 = Var(2) = 7
var(4) = 1

[State 1000, End]
type = ChangeState
trigger1 = !AnimTime
value = 1401
;---------------------------------------------------------------------------
; Bakuretsu ken continue
[Statedef 1401]
type    = S
movetype= A
physics = N
anim     = 1400 + Var(4)
poweradd= 30+30*Var(4)
velset = 0,0
ctrl = 0
sprpriority = 2

[State 1400, BakuReset]
type = VarSet
trigger1 = Var(2) > 6
trigger1 = !Time
var(2) = 0

[State 1400, VSet]
type = VelSet
trigger1 = Anim = 1402 || Anim = 1407
x = .4
[State 1400, VSet]
type = VelSet
trigger1 = Anim = 1403 || Anim = 1408
x = .6
[State 1400, VSet]
type = VelSet
trigger1 = Anim = 1401 || Anim = 1406
x = 0

[State 1400, VSet]
type = VarSet
trigger1 = !Var(2)
var(4) = 0

[state 1000, lv3Continue]
type= varset
trigger1 = !var(1)
trigger1 = Var(2) = 9
var(4) = 3
[state 1000, lv2Continue]
type= varset
trigger1 = !var(1)
trigger1 = Var(2) = 8
var(4) = 2
[state 1000, lv1Continue]
type= varset
trigger1 = !var(1)
trigger1 = Var(2) = 7
var(4) = 1

[State 1000, Width]
type = Width
trigger1 = AnimElem = 3, > 0
value = 25

[State 1000, voice]
type = PlaySnd
trigger1 = !Time
value = 1400,0
channel = 1
[State 1000, woosh]
type = PlaySnd
trigger1 = Anim != 1405
trigger1 = AnimElem = 1 || AnimElem = 3 || AnimElem = 5 || AnimElem = 7 || AnimElem = 9
value = 200,0
channel = 2

[State 225, 1]
type = HitDef
trigger1 = AnimElem = 2 || AnimElem = 4 || AnimElem = 6 || AnimElem = 8 || AnimElem = 10
attr = S, NA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * 25),0
animtype = Hard
guardflag = M
hitflag = MAF
getpower = 10,30
pausetime = 4,6
sparkno = S(8003+random%7)
guard.sparkno = S8030
sparkxy = -5, -55-random%30
hitsound = S5,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 14
ground.velocity = -5
air.velocity = -5,-3

[State 1400, End]
type = ChangeAnim
trigger1 = Anim != 1405
trigger1 = !Var(4)
trigger1 = !AnimTime
value = 1405

[State 1400, Continue]
type = ChangeAnim
trigger1 = Anim != 1405
trigger1 = Var(2) > 5
trigger1 = !AnimTime
trigger1 = Var(2) := 0
value = 1400 + Var(4) + 5*(Anim=[1401,1403])

[State 1000, End]
type = ChangeState
trigger1 = Anim = 1405
trigger1 = Animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Power Charge
[Statedef 3002]
type    = S
physics = N
movetype= I
anim = 190
ctrl = 0
velset = 0,0

[State 1100, voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 192,0
channel = 1

[State 820, ChargeSFX]
type = Playsnd
trigger1 = AnimElem = 4
value = 191,1
channel = 0

[State 3002, effects]
type = explod
trigger1 = !(time%5)
anim = 8000
id= 8000
postype = p1
vel = 0,-2
pos = -2,-25
random = 30,40
accel = 0,-.9
ownpal = 1
sprpriority = 5
scale = 1,0.3

[State 3002, effects]
type = explod
trigger1 = !(time%10)
anim = 8000
id= 8000
postype = p1
vel = 0,-2
pos = -2,-25
random = 50,40
accel = 0,-.6
ownpal = 1
sprpriority = 6
scale = 1,0.45

[State 820, Charging explod]
type = Explod
trigger1 = Timemod = 17,2
anim = 6150
ID = 6150
postype = P1
pos = -5,0
sprpriority = 0

[State 820, PowerAdd]
type = PowerAdd
trigger1 = Command = "charge1" && Command = "charge2"
value=ceil(time/6)

[State 820, Anim]
type = ChangeState
trigger1 = Command != "charge1" || Command != "charge2"
trigger2 = power >= 3000
value = 3003
;---------------------------------------------------------------------------
;Power Charge stop
[Statedef 3003]
type    = S
physics = N
movetype= I
anim = 198
ctrl = 1
velset = 0,0

[State 3003]
type = RemoveExplod
trigger1 = !time
id = 6150

[State 820, Charging explod]
type = Explod
trigger1 = !Time
anim = 6150
postype = P1
id = 6150
pos = -5, 0
sprpriority = 0

[State 820, Voice]
type = Stopsnd
trigger1 = 1
channel = 1
persistent = 0

[State 820, StateChange]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Super Moves
;---------------------------------------------------------------------------
; Screw Upper
[Statedef 2000]
type     = S
movetype = A
physics  = S
anim     = 2000
poweradd = 0
ctrl     = 0
SprPriority = 3
Velset = 0

[state 2000, lv3detect]
type= varset
trigger1 = power >= 3000 && command = "Screw3"
trigger1 = !time
trigger1 = !var(1)
var(4) = 6
[state 2000, lv2detect]
type= varset
triggerall = !time
triggerall = !var(1)
trigger1 = power >= 2000 && power < 3000 && (command = "Screw2" || command = "Screw3")
trigger2 = power >= 3000 && command = "Screw2"
var(4) = 5
[state 2000, lv1detect]
type= varset
triggerall = !time
triggerall = !var(1)
trigger1 = power >= 1000 && power < 2000 && (command = "Screw1" || command = "Screw2" || command = "Screw3")
trigger2 = power >= 2000 && command = "Screw1"
var(4) = 4

[State 2000, PowAdd]
type = PowerAdd
trigger1 = AnimElem = 1
value = -1000*(var(4)-3)
persistent = 0

[State 2000, turn]
type = posadd
triggerall = p2bodydist X < -25
triggerall = time = 1
trigger1 = prevstateno = 800
trigger2 = prevstateno = 801
persistent = 0
value = 19

[State 2000, turn]
type = turn
triggerall = p2bodydist X < -25
triggerall = time = 1
trigger1 = prevstateno = 800
trigger2 = prevstateno = 801
persistent = 0

[State 2000, 1]
type = SuperPause
trigger1 = AnimElem = 1
time = 40
darken = 0
anim = -1
persistent = 0
;movetime = 40

[State 2000, 1]
type = BGPalFX
trigger1 = animelem = 1
time = 42
add = -128,-128,-16 

[state 2000, 1]
type = Helper
trigger1 = AnimElem = 1
ID = 7031
name = "superspark"
pos = -5,-54
stateno = 7031
ownpal = 1
supermovetime = 999
pausemovetime = 999

[state 2100, NormalAfterImage]
type = AfterImage
trigger1 = var(4) = 4
trigger1 = Time = 2
time = 2
timegap = 1
framegap = 10
trans = add1
length = 30
paladd = 0,0,0
palmul = .9,.9,.9
palcontrast = 120,120,120
palpostbright = 0,0,0
[state 2100, BlueAfterImage]
type = AfterImage
trigger1 = var(4) = 5
trigger1 = Time = 2
time = 2
timegap = 1
framegap = 10
trans = add1
length = 30
paladd = 0,0,0
palmul = .9,.9,.9
palcontrast = 20,20,160
palpostbright = 0,0,0
[state 2100, RedAfterImage]
type = AfterImage
trigger1 = var(4) = 6
trigger1 = Time = 2
time = 2
timegap = 1
framegap = 10
trans = add1
length = 30
paladd = 0,0,0
palmul = .9,.9,.9
palcontrast = 160,20,20
palpostbright = 0,0,0
[State 2000, AfterImagePersist]
type = AfterImageTime
trigger1 = Time > 2
time = 2

[State 2500, SuperSFX]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2000,0
channel = 0
[State 2500, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2000,1
channel = 1
[State 2500, HurricaneSFX]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1050,0
channel = 2
[State 2500, HurricaneSFX]
type = StopSnd
trigger1 = AnimElem = 13
channel = 2
[State 2500, HurricaneSFX]
type = PlaySnd
trigger1 = AnimElem = 11
value = 2000,3
channel = 3
[State 2500, Voice]
type = PlaySnd
trigger1 = AnimElem = 11
value = 2000,2
channel = 1

[State 2000, Spr]
type = SprPriority
trigger1 = 1
value = 3

[state 2500, 1]
type = Helper
trigger1 = AnimElem = 4
ID = 2010
name = "Hurricane"
pos = 65,0
stateno = 1050
ownpal = 1

[state 2500, 1]
type = Helper
trigger1 = AnimElem = 11
ID = 2010
name = "Screw Upper"
pos = 65,0
stateno = 2010
ownpal = 1

[State 2500, end]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Cyclone
[Statedef 2010]
type     = S
movetype = A
physics  = N
poweradd = 0
ctrl     = 0
SprPriority = 5
Velset = IfElse(Parent, Var(4) = 6, 3, 0),0
juggle = 1

[State 2010, timer]
type = VarAdd
trigger1 = 1
v = 3
value = 1

[State 1150, Shad]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1200, ThunderSFX]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1100,1
channel = 1

[State 2015, HaOhSFX]
type = PlaySnd
trigger1 = !time && !var(2)
value = 2000,2
channel = 2

[State 1150, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP

[State 1150, HOR]
type = HitOverRide
trigger1 = 1
time = -1
attr = SCA
stateno = 2010

[State 2015, ByakkoHatesHitSndSaturation]
type = null;PlaySnd
trigger1 = !time && var(2)
value = 6,0
channel = 2

[State 2010, CountNumHits]
type = VarAdd
trigger1 = !Time
v = 1
value = 1
persistent = 0

[State 2010, Start]
type = ChangeAnim
trigger1 = !Time
trigger1 = !(var(2))
value = 2010
[State 2010, CountHits]
type = VarSet
trigger1 = !time
trigger1 = !var(2)
trigger1 = parent,var(4) < 4
var(2) = -1
[State 2010, CountHits]
type = VarSet
trigger1 = !time
trigger1 = !var(2)
trigger1 = parent,var(4) = 4
var(2) = 7
[State 2010, CountHits]
type = VarSet
trigger1 = !time
trigger1 = !var(2)
trigger1 = parent,var(4) = 5
var(2) = 12
[State 2010, CountHits]
type = VarSet
trigger1 = !time
trigger1 = !var(2)
trigger1 = parent,var(4) = 6
var(2) = 17

[State 2010, Display]
type = DisplayToClipboard
trigger1 = 1
text = "numhits : %d, maxhits : %d"
params = var(1), var(2)

[State 2010, HitDef]
type = HitDef
triggerall = Var(2) > 5
trigger1 = var(1) < var(2)
trigger1 = !Time%6
attr = A, HP
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * (ifelse(var(2)=7, 25, IfElse(Var(2) = 12, 21.5, 26)))),5
priority = 7, Hit
animtype = Back
guardflag = M
hitflag = MAF
getpower = 0,0
pausetime = 4,6
sparkno = S(8003+Random%7+10*(random<500))
sparkxy = 0, -65+P2Dist Y
guard.sparkno = S8030
hitsound = S5,300
guardsound = S6,110
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -2, -12
guard.velocity = -7
air.velocity = -2,-12
fall = 1
air.fall = 1
envshake.time = 15
envshake.ampl = -6
nochainid = 925

[State 2010, CycloneHitDef]
type = HitDef
triggerall = Var(2) < 5
trigger1 = var(1) < 7
trigger1 = !Time%6
attr = A, HP
damage = ceil((1+.15*(life<=300))*(125/3.0)),5
priority = 7, Hit
animtype = Back
guardflag = M
hitflag = MAF
getpower = 0,0
pausetime = 4,6
sparkno = S(8003+Random%7+10*(random<500))
sparkxy = 0, -65+P2Dist Y
guard.sparkno = S8030
hitsound = S5,300
guardsound = S6,110
ground.type = High
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = IfElse((Facing = Parent, Facing), 5, -3), -12
guard.velocity = -7
air.velocity = IfElse((Facing = Parent, Facing), 5, -3),-12
fall = 1
air.fall = 1
envshake.time = 15
envshake.ampl = -6

[State 2010, ByakkoHatesHitSndSaturation]
type = PlaySnd
trigger1 = MoveHit
value = 5,3
ignorehitpause = 1
channel = 2
persistent = 0

[State 2010, AvoidHitSndSaturation]
type = PlaySnd
trigger1 = MoveGuarded
value = 6,3
ignorehitpause = 1
channel = 2
persistent = 0

[State 2010, End]
type = ChangeState
triggerall = MoveContact
trigger1 = var(1) < var(2)
trigger2 = Var(2) = -1 && Var(1) < 7
value = 2010

[State 2010, End]
type = ChangeState
trigger1 = Var(3) = 45
value = 2011
;---------------------------------------------------------------------------
; Cyclone end
[Statedef 2011]
type     = A
physics  = N
movetype = A
ctrl     = 0
sprpriority = 4

[State 1015, disappear]
type = explod
trigger1 = !Time
anim = 1066
sprpriority = 4

[State 1010, Shad]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1060, Assert]
type = AssertSpecial
trigger1 = Time
flag = Invisible

[State 8200, Gradual Transparency]
type = AfterImage
trigger1 = Time
time = 5
framegap = 1
length = 2
PalAdd = 0, 0, 0
PalMul = 1, 1, 1
PalContrast = 255-((Time)*12), 255-((Time)*12), 255-((Time)*12)
trans = Add

[State 2015, End]
type = DestroySelf
trigger1 = Time = 22
;---------------------------------------------------------------------------
; Cyclone vacuum
[Statedef 2015]
type     = S
movetype = A
physics  = N
poweradd = 0
ctrl     = 0
anim     = 2015

[State 2015, PSetOnGround]
type = PosSet
trigger1 = Pos Y != 0
y = 0

[State 1150, HitBy]
type = NotHitBy
trigger1 = 1
value = SCA
[State 2015, ScrBound]
type = ScreenBound
trigger1 = 1
value = 0
[State 2015, TowardJoe]
type = Turn
trigger1 = (Facing = Parent, Facing)

[State 2015, Push]
type = PlayerPush
trigger1 = P2bodyDist X = [-5,5]
value = 1

[State 2015, VSet]
type = VelSet
trigger1 = ParentDist X >= 0
x = IfElse((Parentdist X = [0,100]), 6, IfElse((ParentDist X = [100,200]), 4.5, 3))

[State 2015, PosFix]
type = PosAdd
trigger1 = P2BodyDist X != [-5,5]
x = ceil(P2Dist X) - EnemyNear, Const(size.ground.back) - 5

[State 2015, End]
type = DestroySelf
trigger1 = Parent, NumHelper(2010) = 0
trigger2 = Parent, MoveContact
;---------------------------------------------------------------------------
; Bakuretsu Hurricane Tiger Kakato
[Statedef 2100]
type     = S
movetype = A
physics  = S
anim     = 2100
poweradd = 0
ctrl     = 0
SprPriority = 3
Velset = 0,0

; (original) L1 : 217 ; L2 : 317 ; L3 : 467

[state 2000, lv3detect]
type= varset
trigger1 = power >= 3000 && command = "BHTK3"
trigger1 = !time
trigger1 = !var(1)
var(4) = 3
[state 2000, lv2detect]
type= varset
triggerall = !time
triggerall = !var(1)
trigger1 = power >= 2000 && power < 3000 && (command = "BHTK2" || command = "BHTK3")
trigger2 = power >= 3000 && command = "BHTK2"
var(4) = 2
[state 2000, lv1detect]
type= varset
triggerall = !time
triggerall = !var(1)
trigger1 = power >= 1000 && power < 2000 && (command = "BHTK1" || command = "BHTK2" || command = "BHTK3") 
trigger2 = power >= 2000 && command = "BHTK1"
var(4) = 1

[State 2500, Turn1]
type = posadd
triggerall =  anim = 2100
triggerall = p2bodydist X < -25
triggerall = time = 1
trigger1 = prevstateno = 800
trigger2 = prevstateno = 801
persistent = 0
value = 19

[State 2500, Turn2]
type = turn
triggerall =  anim = 2100
triggerall = p2bodydist X < -25
triggerall = time = 1
trigger1 = prevstateno = 800
trigger2 = prevstateno = 801
persistent = 0

[State 3010, Pow]
type = Poweradd
trigger1 =  anim = 2100
trigger1 = animelem = 1
value = -1000*var(4)
persistent = 0

[State 3010, 1]
type = SuperPause
trigger1 =  anim = 2100
trigger1 = AnimElem = 1
time = 40
darken = 0
anim = -1
persistent = 0

[State 2500, SuperSFX]
type = PlaySnd
trigger1 = Anim = 2100
trigger1 = AnimElem = 1
value = 2000,0
channel = 2

[State 3020, 1]
type = BGPalFX
trigger1 =  anim = 2100
trigger1 = animelem = 1
time = 42
add = -128,-128,-16 

[state 2500, 1]
type = Helper
trigger1 =  anim = 2100
trigger1 = AnimElem = 1
ID = 7031
name = "superspark"
pos = 17,-64
stateno = 7031
ownpal = 1
supermovetime = 999
pausemovetime = 999

[state 2100, NormalAfterImage]
type = AfterImage
trigger1 = var(4) = 1
trigger1 = Time = 2
time = 2
timegap = 1
framegap = 10
trans = add1
length = 30
paladd = 0,0,0
palmul = .9,.9,.9
palcontrast = 120,120,120
palpostbright = 0,0,0
[state 2100, BlueAfterImage]
type = AfterImage
trigger1 = var(4) = 2
trigger1 = Time = 2
time = 2
timegap = 1
framegap = 10
trans = add1
length = 30
paladd = 0,0,0
palmul = .9,.9,.9
palcontrast = 20,20,160
palpostbright = 0,0,0
[state 2100, RedAfterImage]
type = AfterImage
trigger1 = var(4) = 3
trigger1 = Time = 2
time = 2
timegap = 1
framegap = 10
trans = add1
length = 30
paladd = 0,0,0
palmul = .9,.9,.9
palcontrast = 160,20,20
palpostbright = 0,0,0
[State 2000, AfterImagePersist]
type = AfterImageTime
trigger1 = Time > 2
time = 2

[State 2100, Voice]
type = PlaySnd
trigger1 = Anim = 2100
trigger1 = AnimElem = 1
value = 2100,0
channel = 1
[State 2100, Voice]
type = PlaySnd
trigger1 = Anim = 2100
trigger1 = Var(4) > 1
trigger1 = AnimElem = 6
value = 2100,1
channel = 1
[State 2100, Voice]
type = PlaySnd
trigger1 = Anim = 2110
trigger1 = AnimElem = 3
value = 2100,2
channel = 1

[State 1000, woosh]
type = PlaySnd
triggerall = Anim = 2100
trigger1 = AnimElem = 2 || AnimElem = 4 || AnimElem = 6 || AnimElem = 8
trigger2 = AnimElem = 10 || AnimElem = 12 || AnimElem = 14 || AnimElem = 16
trigger3 = AnimElem = 18 || AnimElem = 20 || AnimElem = 22 || AnimElem = 24
value = 200,0
channel = 2
[State 2100, woosh]
type = PlaySnd
triggerall = Anim = 2110
trigger1 = AnimElem = 3
trigger2 = AnimElem = 10
value = 1000,1
[State 2100, woosh]
type = PlaySnd
trigger1 = Anim = 2110
trigger1 = AnimElem = 19
value = 200,3

[State 2100, NHB]
type = NotHitBy
trigger1 = Anim = 2100
trigger1 = AnimElem = 1
value = SCA
time = 10
;----------TNT & Hurricane
[State 2100, VSet1]
type = VelSet
trigger1 = Anim = 2100
x = .6
[State 2101, VSet2]
type = VelSet
trigger1 = Anim = 2110
trigger1 = AnimElem = 1
x = 0
persistent = 0

[State 225, BakuretsuHit]
type = HitDef
triggerall = Anim = 2100
trigger1 = AnimElem = 3 || AnimElem = 5 || AnimElem = 7 || AnimElem = 9
trigger2 = AnimElem = 11 || AnimElem = 13 || AnimElem = 15 || AnimElem = 17
trigger3 = AnimElem = 19 || AnimElem = 21 || AnimElem = 23 || AnimElem = 25
attr = S, HA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * 20),0
animtype = Hard
guardflag = M
hitflag = MAF
getpower = 10,30
pausetime = 2,4
sparkno = S(8003+random%7 + 10*(Random<500))
guard.sparkno = S8030
sparkxy = -15, -56-random%30
hitsound = S5,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 25
ground.velocity = -1.2
air.velocity = -5,-3

[State 2100, ChAnim]
type = ChangeAnim
triggerall = Anim = 2100
trigger1 = Var(4) = 1 && AnimElem = 10
trigger2 = Var(4) = 2 && AnimElem = 18
trigger3 = Var(4) = 3 && !AnimTime
value = 2110

[State 1000, Expl]
type = Explod
triggerall = Anim = 2110
trigger1 = AnimElem = 3 
trigger2 = AnimElem = 9
anim = 1050
ID = 1050
bindtime = -1
sprpriority = 3
RemoveOnGetHit = 1

[state 2500, 1]
type = Helper
triggerall = Anim = 2110
trigger1 = AnimElem = 4
trigger2 = AnimElem = 11
ID = 2010
name = "Hurricane"
pos = 65,0
stateno = 1050
ownpal = 1

[State 1100, voice]
type = PlaySnd
trigger1 = Anim = 2110
trigger1 = AnimElem = 25
value = 1300,0
channel = 1
;-----------Tiger & Heel
[State 2100, PAdd1]
type = PosAdd
triggerall = Anim = 2110
trigger1 = AnimElem = 16
x = 10
[State 2100, PAdd2]
type = PosAdd
triggerall = Anim = 2110
trigger1 = AnimElem = 18
trigger2 = AnimElem = 19
x = 15

[State 1100, VSetTiger]
type = Velset
trigger1 = Anim = 2110
trigger1 = AnimElem = 20
x = 1.6+.3*var(4)
y = -7-1.5*var(4)

[State 1100, VAdd]
type = veladd
trigger1 = Anim = 2110
trigger1 = AnimElem = 20, > 0
y = .35

[State 2100, Air]
type = StateTypeSet
trigger1 = Anim = 2110
trigger1 = AnimElem = 20
statetype = A
physics = A

[State 1100, BurnFX1]
type = Explod
trigger1 = Anim = 2110
trigger1 = AnimElem = 20
pos = 2, 1
anim = 1150
ID = 1150
bindtime = -1
removetime = -1
sprpriority = 4
removeongethit = 1
[State 1100, StopFX]
type = RemoveExplod
trigger1 = Anim = 2110
trigger1 = AnimElem = 21
ID = 1150
[State 1100, BurnFX2]
type = Explod
trigger1 = Anim = 2110
trigger1 = AnimElem = 21
pos = 2, 1
anim = 1151
ID = 1151
bindtime = -1
sprpriority = 4
persistent = 0
removeongethit = 1

[State 1100, Dust1]
type = Explod
trigger1 = Anim = 2110
trigger1 = AnimElem = 18
anim = 7020
facing = -1
sprpriority = 5
Ownpal = 1
[State 1100, Dust2]
type = Explod
trigger1 = Anim = 2110
trigger1 = AnimElem = 19
anim = 7000
ownpal = 1
sprpriority = 5

[State 1500, VelHeel]
type = velset
trigger1 = Anim = 2110
trigger1 = AnimElem = 26
x = 2 + 1 * var(4)
y = -5

[State 1300, SlashFX]
type = Explod
trigger1 = Anim = 2110
trigger1 = AnimElem = 28
anim = 1350
ID = 1350
sprpriority = 4
bindtime = -1
persistent = 0
removeongethit = 1

[state 1100, CountNumHitsSet]
type= VarSet
trigger1 = !time
var(2) = 0

[State 1100, NumHitsCheck]
type = VarAdd
trigger1 = Anim = 2110
trigger1 = AnimElem = 19, > 1
trigger1 = Animelem = 22, < 0
trigger1 = MoveContact
v = 2
value = 1
[State 1100, NumHitsCheck2]
type = MoveHitReset
trigger1 = MoveContact

[State 2100, Tigerhit]
type = HitDef
triggerall = Var(2) < Var(4)
triggerall = Anim = 2110
trigger1 = AnimElem = 20, = 0
trigger2 = AnimElem = 20, = 2 && Var(4) > 1
trigger3 = AnimElem = 21, = 0 && Var(4) = 3
attr = S, HA
animtype  = Back
damage    = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * (25-5*(Var(4) < 3))),10
priority  = 7
hitflag = MAF
guardflag = MA
pausetime = 6,8
sparkno = S(8003+Random%7 + 10*(Random<500))
guard.sparkno = S8030
sparkxy = -25,-75
hitsound   = S5,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 14
ground.velocity = -3, -6
guard.velocity = -5
air.velocity = -3,-5
fall = 1
fall.recover = 0
envshake.time = 10
envshake.ampl = 2
[State 1500, HeelHit]
type = HitDef
trigger1 = Anim = 2110
trigger1 = AnimElem = 30
attr = A, HA
damage = ceil((1+.01*(power>=1000)+.01*(power>=2000)+.03*(power>=3000)+.15*(life<=300)) * (60+10*(Var(4)))),10
animtype = Hard
guardflag = HA
hitflag = MAF
getpower = 50,0
pausetime = 12,14
sparkno = S(8013+Random%7 - 10*(Random<500))
guard.sparkno = S8030
sparkxy = -15, -40
hitsound = S5,4
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 20
ground.velocity = 0,8
air.velocity = -4,8
fall = 1
fall.recover = 0
fall.envshake.time = 12
fall.envshake.ampl = -4
guard.velocity = -8

[State 2101, Land]
type = ChangeState
trigger1 = Anim = 2110
trigger1 = AnimElem = 32, > 0
;trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52
;---------------------------------------------------------------------------
; Double Cyclone
[Statedef 2200]
type     = S
movetype = A
physics  = S
anim     = 2200
poweradd = 0
ctrl     = 0
SprPriority = 3
Velset = 0

[State 3010, 1]
type = NotHitBy
trigger1 = Time < 116
value = SCA

[State 2200, DCyclone]
type = VarSet
trigger1 = !Time
var(4) = 2

[State 2000, PowAdd]
type = PowerAdd
trigger1 = Time = 2
value = -3000
persistent = 0

[State 2000, turn]
type = posadd
triggerall = p2bodydist X < -25
triggerall = time = 1
trigger1 = prevstateno = 800
trigger2 = prevstateno = 801
persistent = 0
value = 19

[State 2000, turn]
type = turn
triggerall = p2bodydist X < -25
triggerall = time = 1
trigger1 = prevstateno = 800
trigger2 = prevstateno = 801
persistent = 0

[State 2000, 1]
type = SuperPause
trigger1 = Time = 2
time = 40
darken = 0
anim = -1
persistent = 0
;movetime = 40

[State 2000, 1]
type = BGPalFX
trigger1 = animelem = 1
time = 42
add = -128,-128,-16 

[state 2000, 1]
type = Helper
trigger1 = Time = 2
ID = 7031
name = "superspark"
pos = 10,-45
stateno = 7031
ownpal = 1
supermovetime = 999
pausemovetime = 999

[state 2100, RedAfterImage]
type = AfterImage
trigger1 = Time = 2
time = 2
timegap = 1
framegap = 10
trans = add1
length = 30
paladd = 0,0,0
palmul = .9,.9,.9
palcontrast = 160,20,20
palpostbright = 0,0,0
[State 2000, AfterImagePersist]
type = AfterImageTime
trigger1 = Time > 2
time = 2

[State 2500, SuperSFX]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2000,0
channel = 0
[State 2500, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2200,0
channel = 1
[State 2500, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 2200,1
channel = 1

[State 2000, Spr]
type = SprPriority
trigger1 = 1
value = 3

[state 2500, CycloneF]
type = Helper
trigger1 = AnimElem = 4
ID = 2010
name = "Cyclone Front"
pos = 65,0
stateno = 2010
ownpal = 1

[state 2500, CycloneB]
type = Helper
trigger1 = AnimElem = 4
ID = 2010
name = "Cyclone Back"
pos = -55,0
facing = -1
stateno = 2010
ownpal = 1

[state 2500, Vacuum]
type = Helper
trigger1 = AnimElem = 4
trigger1 = !Numhelper(2015)
ID = 2015
name = "Vacuum"
postype = P2
pos = enemynear,const(size.ground.back)-25,-ceil(enemy,pos y)
stateno = 2015
persistent = 0
size.ground.back = 5
size.ground.front = 5
size.height = 240

[State 2000, ChAnim]
type = ChangeAnim
trigger1 = Anim = 2200
trigger1 = Time = 65
value = 2205

[State 2500, end]
type = ChangeState
trigger1 = Anim = 2205
Trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Turbulence Upper
[Statedef 2300]
type     = S
movetype = A
physics  = N
anim     = 2300
poweradd = 0
ctrl     = 0
SprPriority = 3
Velset = 0

[State 2000, Wid]
type = Width
trigger1 = 1
edge = 35

[State 3010, 1]
type = NotHitBy
trigger1 = Time < 116
value = SCA

[State 2000, PowAdd]
type = PowerAdd
trigger1 = Time = 2
value = -3000
persistent = 0

[State 2000, turn]
type = posadd
triggerall = p2bodydist X < -25
triggerall = time = 1
trigger1 = prevstateno = 800
trigger2 = prevstateno = 801
persistent = 0
value = 19

[State 2000, turn]
type = turn
triggerall = p2bodydist X < -25
triggerall = time = 1
trigger1 = prevstateno = 800
trigger2 = prevstateno = 801
persistent = 0

[State 2000, 1]
type = SuperPause
trigger1 = Time = 2
time = 40
darken = 0
anim = -1
persistent = 0
movetime = 40

[State 2000, 1]
type = BGPalFX
trigger1 = animelem = 1
time = 42
add = -128,-128,-16 

[state 2000, 1]
type = Helper
trigger1 = Time = 2
ID = 7031
name = "superspark"
pos = 4,-75
stateno = 7031
ownpal = 1
supermovetime = 999
pausemovetime = 999

[state 2100, RedAfterImage]
type = AfterImage
trigger1 = Time = 2
time = 2
timegap = 1
framegap = 10
trans = add1
length = 30
paladd = 0,0,0
palmul = .9,.9,.9
palcontrast = 160,20,20
palpostbright = 0,0,0
[State 2000, AfterImagePersist]
type = AfterImageTime
trigger1 = Time > 2
time = 2

[State 2300, AnimFix]
type = ChangeAnim
trigger1 = Anim = 2300
trigger1 = AnimElem = 12
value = 2300
elem = 13

[State 2500, SuperSFX]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2000,0
channel = 0

[State 2300, Wid]
type = Width
trigger1 = 1
edge = 35

[State 2300, Dash]
type = VelSet
trigger1 = Anim = 2300
trigger1 = AnimElem = 9, = 1
x = 6.5

[State 2300, Friction]
type = VelAdd
trigger1 = AnimElem = 9, > 1
trigger1 = AnimElem = 14, < 2
trigger1 = Vel X >= .25
x = -.25

[State 2300, Stop]
type = VelSet
trigger1 = Anim = 2300
trigger1 = AnimElem = 14, = 2
x = 0
;-----------right hook, Hurricane part 1
[State 210, 1]
type = HitDef
trigger1 = Anim = 2300
trigger1 = AnimElem = 15 || AnimElem = 16
trigger1 = !MoveContact
attr = S, NA
damage = ceil((1+.15*(life<=300)) * 60),5
animtype = Hard
guardflag = M
hitflag = MAF
getpower = 40,160
pausetime = 6,8
sparkno = S(8003+Random%7)
guard.sparkno = S8030
sparkxy = -5, -85
hitsound = S5,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 24
ground.velocity = -5
air.velocity = -4,-3
persistent = 0

[State 1000, Expl]
type = Explod
trigger1 = Anim = 2300
trigger1 = AnimElem = 21
anim = 1050
ID = 1050
bindtime = -1
sprpriority = 3
RemoveOnGetHit = 1

[state 2500, 1]
type = Helper
trigger1 = Anim = 2300
trigger1 = AnimElem = 22
ID = 2010
name = "Hurricane"
pos = 65,0
stateno = 2340
ownpal = 1

[State 2300, Miss]
type = ChangeState
trigger1 = !Movehit
trigger1 = AnimElem = 27
value = 0
ctrl = 1
;-----------Tiger & Heel
[State 2100, PAdd2]
type = PosAdd
triggerall = Anim = 2300
trigger1 = AnimElem = 30
trigger2 = AnimElem = 31
x = 15

[State 1100, VSetTiger]
type = VelSet
triggerall = Anim = 2300
trigger1 = AnimElem = 32
x = 2
y = -9

[State 1100, VAdd]
type = VelAdd
triggerall = Anim = 2300
trigger1 = AnimElem = 32, > 0
y = .35

[State 2100, Air]
type = null;StateTypeSet
triggerall = Anim = 2300
trigger1 = AnimElem = 32
statetype = A
physics = A
[State 2300, GravityFix]
type = Gravity
trigger1 = Anim = 2300
trigger1 = AnimElem = 32, > 0

[State 1100, Dust1]
type = Explod
triggerall = Anim = 2300
trigger1 = AnimElem = 30
anim = 7020
facing = -1
sprpriority = 5
Ownpal = 1
[State 1100, Dust2]
type = Explod
triggerall = Anim = 2300
trigger1 = AnimElem = 31
anim = 7000
ownpal = 1
sprpriority = 5

[State 1500, VelHeel]
type = velset
triggerall = Anim = 2300
trigger1 = AnimElem = 37
x = 3.5
y = -5

[State 1300, SlashFX]
type = Explod
triggerall = Anim = 2300
trigger1 = AnimElem = 39
anim = 1350
ID = 1350
sprpriority = 4
bindtime = -1
persistent = 0
removeongethit = 1

[State 2100, Tigerhit]
type = HitDef
triggerall = Anim = 2300
trigger1 = AnimElem = 32
attr = S, HA
animtype  = Back
damage    = ceil((1+.15*(life<=300)) * 65),5
priority  = 7
hitflag = MAF
guardflag = MA
pausetime = 6,8
sparkno = S(8003+Random%7 + 10*(Random<500))
guard.sparkno = S8030
sparkxy = -25,-75
hitsound   = S5,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 14
ground.velocity = -3, -6
guard.velocity = -5
air.velocity = -3,-5
fall = 1
fall.recover = 0
envshake.time = 10
envshake.ampl = 2

[State 1500, HeelHit]
type = HitDef
trigger1 = Anim = 2300
trigger1 = AnimElem = 41
attr = A, HA
damage = ceil((1+.15*(life<=300)) * 65),5
animtype = Hard
guardflag = HA
hitflag = MAF
getpower = 50,0
pausetime = 6,8
sparkno = S(8013+Random%7 - 10*(Random<500))
guard.sparkno = S8030
sparkxy = -15, -40
hitsound = S5,4
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 20
ground.velocity = 0,8
air.velocity = -4,8
fall = 1
fall.recover = 0
fall.envshake.time = 12
fall.envshake.ampl = -4
guard.velocity = -8
p2stateno = 2310

[State 2100, Land]
type = null;StateTypeSet
trigger1 = Anim = 2300
trigger1 = AnimElem = 40;, > 0
;trigger1 = Vel Y > 0 && Pos Y >= -5
statetype = S
physics = N

[State 2101, Land]
type = ChangeAnim
triggerall = Anim = 2300
trigger1 = AnimElem = 41, > 0
trigger1 = Vel Y > 0 && Pos Y >= -15
value = 2301
;-----------anim 2301
;-----------second Heel
[State 1500, Land1]
type = VelSet
trigger1 = Anim = 2301 && AnimElem = 1
x = 0
y = 0
[State 1500, Land1]
type = PosSet
trigger1 = Anim = 2301 && AnimElem = 1
y = 0
[State 2100, Land]
type = null;StateTypeSet
trigger1 = Anim = 2301 && AnimElem = 1, = 2
;statetype = S
;physics = S

[State 2300, GravityFix]
type = Gravity
trigger1 = Anim = 2301
triggerall = Animelem = 5, > 0

[State 52, SFX]
type = PlaySnd
trigger1 = Anim = 2301 && AnimElem = 1
value = 40,1
channel = 2
persistent = 0
[State 52, Dust]
type = explod
trigger1 = Anim = 2301 && AnimElem = 1
anim = 7010
ID = 7010
sprpriority = -2
postype = p1
ownpal = 1
persistent = 0

[State 1500, VelHeel]
type = velset
triggerall = Anim = 2301
trigger1 = AnimElem = 5
x = 3.5
y = -5

[State 1100, VAdd]
type = null;VelAdd
triggerall = Anim = 2301
trigger1 = AnimElem = 5, > 0
y = .35

[State 1300, SlashFX]
type = Explod
triggerall = Anim = 2301
trigger1 = AnimElem = 7
anim = 1350
ID = 1350
sprpriority = 4
bindtime = -1
persistent = 0
removeongethit = 1

[State 1500, HeelHit]
type = HitDef
trigger1 = Anim = 2301
trigger1 = AnimElem = 9
attr = A, HA
damage = ceil((1+.15*(life<=300)) * 62),5
animtype = Hard
guardflag = HA
hitflag = MAF
getpower = 50,0
pausetime = 6,8
sparkno = S(8013+Random%7 - 10*(Random<500))
guard.sparkno = S8030
sparkxy = -15, -40
hitsound = S5,4
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 20
ground.velocity = 0,8
air.velocity = -4,8
fall = 1
fall.recover = 0
fall.envshake.time = 12
fall.envshake.ampl = -4
guard.velocity = -8
p2stateno = 2310

[State 2101, Land]
type = ChangeAnim
triggerall = Anim = 2301
trigger1 = AnimElem = 11, > 0
trigger1 = Vel Y > 0 && Pos Y >= -15
value = 2302
;-----------anim 2302
;-----------punch, Cyclone
[State 1500, Land1]
type = VelSet
trigger1 = Anim = 2302 && AnimElem = 1
x = 0
y = 0
[State 1500, Land1]
type = PosSet
trigger1 = Anim = 2302 && AnimElem = 1
y = 0
[State 2100, Land]
type = StateTypeSet
trigger1 = Anim = 2302 && AnimElem = 1, = 2
statetype = S
physics = S

[State 52, SFX]
type = PlaySnd
trigger1 = Anim = 2302 && AnimElem = 1
value = 40,1
channel = 2
persistent = 0
[State 52, Dust]
type = explod
trigger1 = Anim = 2302 && AnimElem = 1
anim = 7010
ID = 7010
sprpriority = -2
postype = p1
ownpal = 1
persistent = 0

[State 1500, Punch]
type = HitDef
trigger1 = Anim = 2302
trigger1 = AnimElem = 4
attr = A, HA
damage = ceil((1+.15*(life<=300)) * 60),5
animtype = Up
guardflag = HA
hitflag = MAF
getpower = 50,0
pausetime = 6,8
sparkno = S(8013+Random%7 - 10*(Random<500))
guard.sparkno = S8030
sparkxy = -15, -87
hitsound = S5,4
guardsound = S6,0
ground.type = Low
air.type = Low
ground.slidetime = 12
ground.hittime  = 20
ground.velocity = 1,-2
air.velocity = 1,-2
fall = 1
fall.recover = 0
fall.envshake.time = 12
fall.envshake.ampl = -4
guard.velocity = -8

[State 2300, Snap]
type = TargetBind
trigger1 = Anim = 2302
trigger1 = AnimElem = 4, = 0
pos = 55,-35

[State 1000, Expl]
type = Explod
trigger1 = Anim = 2302
trigger1 = AnimElem = 9
anim = 1050
ID = 1050
bindtime = -1
sprpriority = 3
RemoveOnGetHit = 1

[state 2500, 1]
type = Helper
trigger1 = Anim = 2302
trigger1 = AnimElem = 10
ID = 2010
name = "Hurricane"
pos = 65,0
stateno = 2341
ownpal = 1
;-----------Tiger kick
[State 1100, Air]
type = StateTypeSet
trigger1 = Anim = 2302
trigger1 = AnimElem = 21
statetype = A
physics = A

[State 1100, BurnFX1]
type = Explod
trigger1 = Anim = 2302
trigger1 = AnimElem = 21
pos = 2, 1
anim = 1150
ID = 1150
bindtime = -1
removetime = -1
sprpriority = 4
removeongethit = 1
[State 1100, StopFX]
type = RemoveExplod
trigger1 = Anim = 1101
ID = 1150
[State 1100, BurnFX2]
type = Explod
trigger1 = Anim = 1101
pos = 2, 1
anim = 1151
ID = 1151
bindtime = -1
sprpriority = 4
persistent = 0
removeongethit = 1

[State 1100, Dust1]
type = Explod
trigger1 = Anim = 2302
trigger1 = AnimElem = 20
anim = 7020
facing = -1
sprpriority = 5
Ownpal = 1
[State 1100, Dust2]
type = Explod
trigger1 = Anim = 2302
trigger1 = AnimElem = 20
anim = 7000
ownpal = 1
sprpriority = 5
[State 1100, SFX]
type = PlaySnd
trigger1 = Anim = 2302
trigger1 = AnimElem = 20
value = 40,0
channel = 2

[State 1100, PAdd]
type = PosAdd
trigger1 = Anim = 2302
trigger1 = AnimElem = 19
x = 16

[State 1100, VSet]
type = Velset
trigger1 = Anim = 2302
trigger1 = AnimElem = 21
x = 2.5
y = -13.5

[State 1100, VAdd]
type = VelAdd
trigger1 = Anim = 2302
trigger1 = AnimElem = 21,> 0
trigger2 = Anim = 1101
trigger2 = AnimElem = 1, > 0
y = .5

[State 1100, ChAnim]
type = ChangeAnim
trigger1 = anim = 2302
trigger1 = animElem = 21, > 0
trigger1 = Vel Y >= 0
value = 1101

[State 1100, Tigerhit]
type = HitDef
trigger1 = Anim = 2302
trigger1 = AnimElem = 21
attr = S, SA
animtype  = Back
damage    = ceil((1+.15*(life<=300)) * 62),5
priority  = 7
hitflag = MAF
guardflag = MA
pausetime = 6,8
sparkno = S(8003+Random%7)
guard.sparkno = S8030
sparkxy = -20,-70
hitsound   = S5,1
guardsound = S6,0
ground.type = Low
air.type = Low
ground.slidetime = 12
ground.hittime  = 14
ground.velocity = -3, -6
guard.velocity = -5
air.velocity = -3,-5
fall = 1
fall.recover = 0
envshake.time = 10
envshake.ampl = 2
;-----------land
[State 1100, Land2]
type = StateTypeSet
trigger1 = Anim = 1101
trigger1 = Pos Y >= -10 && Vel Y > 0
statetype = S
physics = N
[State 1100, Land1]
type = ChangeAnim
trigger1 = Anim = 1101
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 47
[State 1100, Land2]
type = StateTypeSet
trigger1 = Anim = 47
statetype = S
physics = S

[State 1105, LandPos]
type = PosSet
trigger1 = Anim = 47
y = 0
[State 1105, LandVel]
type = VelSet
trigger1 = Anim = 47
x = 0
y = 0
[State 1100, SFX]
type = PlaySnd
trigger1 = Anim = 47
value = 40,1
channel = 2
persistent = 0
[State 1500, Dust2]
type = explod
trigger1 = Anim = 47
anim = 7010
ID = 7010
sprpriority = -2
postype = p1
ownpal = 1
persistent = 0

[State 1105, End]
type = ChangeState
trigger1 = Anim = 47
trigger1 = Animtime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Hit by Turbulence Upper
;---------------------------------------------------------------------------
; smashed down...
[Statedef 2310]
type = S
movetype = H
physics = N
velset = 0,0;-4,8

[State 2300, Wid]
type = Width
trigger1 = 1
edge = 25,-25

[State 2310, Vels]
type = VelSet
trigger1 = !Time
trigger1 = PrevStateNo != 2311
x = -4
y = 8
[State 2310, Vels]
type = VelSet
trigger1 = !Time
trigger1 = PrevStateNo = 2311
x = -2
y = 8

[State 2310, Gethit]
type = ChangeAnim
trigger1 = !Time
value = 5050

[State 2310, Bounce]
type = ChangeState
trigger1 = Pos Y >= -8.1
value = 2311
;---------------------------------------------------------------------------
; ... and bounce
[Statedef 2311]
type = S
movetype = H
physics = N
velset = 0,0

[State 2311, HitGround]
type = PosSet
trigger1 = !Time
y = 0

[State 2311, BounceGround]
type = ChangeAnim2
trigger1 = !Time
value = 5081
[State 2311, BounceUp]
type = VelSet
trigger1 = Anim = 5081 && AnimElemNo(0) = 2
x = -1.5
y = -7.5

[State 2311, FallAgain]
type = VelAdd
trigger1 = Anim = 5081 && AnimElemNo(0) >= 2
trigger2 = Anim = 5061
y = .45
persistent = 1
[State 2311, FallAgain]
type = ChangeAnim
trigger1 = Anim = 5081 && AnimElemNo(0) >= 2 && Vel Y >= -1
trigger1 = SelfAnimExist(5061)
value = 5061
elem = 3
;---------------------------------------------------------------------------
; Turbulence
;---------------------------------------------------------------------------
; Hurricane
[Statedef 2340]
type     = A
movetype = A
physics  = N
anim     = 1060
poweradd = 0
ctrl     = 0
SprPriority = 5
Velset = 6,0

[State 1010, Shad]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1010, HurriSFX]
type = PlaySnd
trigger1 = !Time
value = 1050,0
channel = 2

[State 1010, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP

[State 2010, HOR]
type = HitOverRide
trigger1 = 1
time = -1
attr = SCA
stateno = 1060

;[State 1000, 1]
;getpower = 50,0

[State 1050, Dust]
type = Explod
trigger1 = !NumExplod(1065)
anim = 1065
ID = 1065
pos = -22,0
bindtime = -1
sprpriority = 4
removeongethit = 1

[State 2010, Hit]
type = HitDef
trigger1 = 1
attr = S, SP
damage = 60,7
priority = 7, Hit
animtype = Medium
guardflag = MA
hitflag = MAF;DP
getpower = 0,0
pausetime = 0,6
sparkno = S(8003+Random%7+10*(Random<500))
sparkxy = -10, -65+P2Dist Y
guard.sparkno = S8030
hitsound = S5,4
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 26
ground.velocity = -1.5, -5
air.velocity = -2,-5
envshake.time = 15
envshake.ampl = -6
ground.cornerpush.veloff = 0.0001
air.cornerpush.veloff = 0.0001
fall = (Parent, AnimElem = 9, > 0)
fall.recover = 0
ID = 2340

[State 1010, End]
type = ChangeState
trigger1 = frontedgedist < -65 || backedgedist < 0
trigger2 = Time = 10
trigger3 = MoveContact
value = 1060
;---------------------------------------------------------------------------
; Cyclone
[Statedef 2341]
type     = A
movetype = A
physics  = N
anim     = 2010
poweradd = 0
ctrl     = 0
SprPriority = 5
Velset = 4,0

[State 1010, Shad]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1010, HurriSFX]
type = PlaySnd
trigger1 = !Time
value = 1050,0
channel = 2

[State 1010, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP

[State 2010, HOR]
type = HitOverRide
trigger1 = 1
time = -1
attr = SCA
stateno = 1060

;[State 1000, 1]
;getpower = 50,0

[State 1050, Dust]
type = Explod
trigger1 = !NumExplod(1065)
anim = 1065
ID = 1065
pos = -22,0
bindtime = -1
sprpriority = 4
removeongethit = 1

[State 2010, Hit]
type = HitDef
trigger1 = 1
attr = S, SP
damage = 65,7
priority = 7, Hit
animtype = Medium
guardflag = MA
hitflag = MAF;DP
getpower = 0,0
pausetime = 0,6
sparkno = S(8003+Random%7+10*(Random<500))
sparkxy = -10, -65+P2dist Y
guard.sparkno = S8030
hitsound = S5,4
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 26
ground.velocity = -1, -3
air.velocity = -1,-5
envshake.time = 15
envshake.ampl = -6
ground.cornerpush.veloff = 0.0001
air.cornerpush.veloff = 0.0001
fall = (Parent, AnimElem = 9, > 0)
fall.recover = 0
ID = 2340

[State 1010, End]
type = ChangeState
trigger1 = frontedgedist < -65 || backedgedist < 0
trigger2 = Time = 10
trigger3 = MoveContact
value = 2011

; target states / anim :
; golden heel : st 5020 act 5050=>5030, 5035
; on hit ground, st 5100 anim 5100, bounce 5101/5160
;==============================================================
; DEATH BY BLOCKING (or light hit) AKA CHEAP DEATH AKA COLLAPSE
;--------------------------------------------------------------
[Statedef 5950]
type = S
anim = 5950
ctrl = 0

[State 5950, snd]
type = playsnd
trigger1 = animelem = 2
value = 5950,0

[State 5950, dust]
type = explod
trigger1 = animelem = 2
anim = 7010
ID = 7010
sprpriority = -2
postype = p1
pos = -5,0
ownpal = 1

[State 5950, pos]
type = posset
trigger1 = 1
y = 0

[State 5950, end]
type = changeState
trigger1 = !Animtime
value = 5150
;---------------------------------------------------------------------------
[Statedef -2]
;---------------------------------------------------------------------------
[state -2, noai]
type = varset
trigger1 = var(1)
var(1) = 0
;---------------------------------------------------------------------------
[State -2, StopVoice]
type = StopSnd
trigger1 = MoveType = H
channel = 1
;---------------------------------------------------------------------------
[State -2, 1]
type = AssertSpecial
trigger1 = roundstate != 2 && roundstate != 3
flag = nobardisplay
;---------------------------------------------------------------------------
[state -2, ButtonLvReset]
type = varset
triggerall = var(4)
trigger1 = StateNo != [900, 930]
trigger1 = StateNo != [1000,1600]
trigger1 = StateNo != [2000,3020]
var(4) = 0
;---------------------------------------------------------------------------
[state -2, BakuretsuSetup]
type = VarSet
trigger1 = StateNo != [2000,2500]
trigger1 = Command = "x" || Command = "y" || Command = "z"
trigger1 = !Var(6)
var(6) = 40
;---------------------------------------------------------------------------
[state -2, BakuretsuCounter]
type = VarAdd
trigger1 = StateNo != [2000,2500]
trigger1 = Command = "x" || Command = "y" || Command = "z"
trigger1 = Var(2) < 5
v = 2
value = 1
;---------------------------------------------------------------------------
[state -2, BakuretsuButtonDetect]
type = VarSet
trigger1 = StateNo != [2000,2500]
trigger1 = Command = "x" || Command = "y" || Command = "z"
trigger1 = Var(2) = 5 && (Var(6) || StateNo = 1400)
trigger1 = StateNo != 1400
var(2) = IfElse(Command="x", 7, IfElse(Command="y", 8, 9))
;---------------------------------------------------------------------------
[state -2, BakuretsuTimer]
type = VarAdd
trigger1 = var(6)
v = 6
value = -1
;---------------------------------------------------------------------------
[state -2, BakuretsuReset]
type = VarSet
trigger1 = StateNo != [2000,2500]
trigger1 = Var(2)
trigger1 = !Var(6) && StateNo != 1400 && stateno != 1100
var(2) = 0
;---------------------------------------------------------------------------
[State -2, Clipboard]
type = DisplayToClipboard
trigger1 = time
text = "AI: %d, parry : %d, button : %d, BakuTime : %d, BakuHit : %d"; \n CvS2 Joe higashi by Byakko"
params = Var(1),var(3),var(4), var(6), var(2)
ignorehitpause = 1
;---------------------------------------------------------------------------
[State -2, AntiHelperbug]
type = DestroySelf
trigger1 = IsHelper
trigger1 = MoveType = H
;---------------------------------------------------------------------------
[State -2, Guard Var]
type = VarSet
trigger1 = stateno = [200,360] ; Non-Air basic moves states.
trigger1 = stateno = [500,700] ; Non-Air basic moves states.
trigger1 = moveguarded > 0 ; This is the key : checks if opponent has guarded a basic attack
trigger2 = stateno = [400,499] ; Air Basic Moves
trigger2 = movecontact > 0 ; This includes both moveguarded & movehit as well
v = 18
value = 30
persistent = 0
ignorehitpause = 1

[State -2, Guard Var 2]
type = VarAdd
trigger1 = var(18) > 0
var(18) = -1
ignorehitpause = 1

[State -2, Guard Var 3]
type = VarSet
trigger1 = var(18) < 0
var(18) = 0
persistent = 0
ignorehitpause = 1
;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------
[Statedef -3]
;---------------------------------------------------------------------------
[State -3, cheap death]
type = ChangeState
triggerall = !Alive
trigger1 = prevstateno = 130 || prevstateno = 131 || prevstateno = [150,153]
trigger1 = Stateno = [5000,5050]
trigger2 = gethitvar(animtype) < 2 && (statetype = S || statetype = C)
value = 5950
ignorehitpause = 1
;---------------------------------------------------------------------------
