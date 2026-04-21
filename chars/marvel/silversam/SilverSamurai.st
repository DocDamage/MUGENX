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

;---------------------------------------------------------------------------
; Override common states (use same number to override) :
; HIT_BOUNCE (hit ground)
[Statedef 5100]
type    = L
movetype= H
physics = N

[State 5100, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110 ;HIT_LIEDOWN

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 5101

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;[State 5100, 14]
;type = ChangeState
;triggerall = (Var(2) = 1) && (Pos Y >= 0)
;trigger1 = command = "holdback" || command = "holdback2"
;value = 9001 ;Recovery Roll

;[State 5100, 14]
;type = ChangeState
;triggerall = (Var(2) = 1) && (Pos Y >= 0)
;trigger1 = command = "holdfwd" || command = "holdfwd2"
;value = 9002 ;Recovery Roll

; HIT_GETUP
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
trigger1 = (Var(2) = 0) && (AnimTime = 0)
value = 0
ctrl = 1

[State 5120, 8]
type = ChangeState
triggerall = (Var(2) = 1) && (Time = 0) 
trigger1 = command = "holdback" || command = "holdback2"
value = 9001 ;Recovery Roll

[State 5120, 8]
type = ChangeState
triggerall = (Var(2) = 1) && (Time = 0) 
trigger1 = command = "holdfwd" || command = "holdfwd2"
value = 9002

; Recovery Roll
[Statedef 9002]
type = L
movetype = I
physics = S
ctrl = 0
anim = 9000
velset = 0,0

[State 9000, VelSet]
type = VelSet
trigger1 = Time >= 0
x = 5 

[State 9000, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 9000, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
value = SCA

[State 9000, VarSet]
type = VarSet
trigger1 = Time = 0
v = 0
value = 0

[State 9000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

; Recovery Roll
[Statedef 9001]
type = L
movetype = I
physics = S
ctrl = 0
anim = 9001
velset = 0,0

[State 9000, VelSet]
type = VelSet
trigger1 = Time >= 0
x = -5 

[State 9000, PlayerPush]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 9000, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
value = SCA

[State 9000, VarSet]
type = VarSet
trigger1 = Time = 0
v = 1
value = 0

[State 9000, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------

; RUN_BACK
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


[State 105, 3]
type = Velset
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
x = 0
y = 0

[State 105, 4]
type = Changestate
trigger1 = AnimTime = 0
value = 106

[Statedef 180]
type = S

[State 180, 1]
type = VarRandom
trigger1 = time = 0
v = 0
range = 0, 500

[State 180, 2]
type = ChangeState
trigger1 = time >= 2
trigger1 = var(0) < 250
trigger1 = var(0) >= 0
value = 181

[State 180, 3]
type = ChangeState
trigger1 = Time >= 2
trigger1 = var(0) < 500
trigger1 = var(0) >= 250
value = 182

[Statedef 181]
type = S
movetype = I
physics = S
sprpriority = 2
velset = 0,0
ctrl = 0
anim = 183

[State 181, 5]
type = AssertSpecial
trigger1 = time < 360
flag = RoundNotOver

[Statedef 182]
type = S
movetype = I
physics = S
sprpriority = 2
velset = 0,0
ctrl = 0
anim = 182

[State 181, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 100, 7

[State 181, 5]
type = AssertSpecial
trigger1 = time < 360
flag = RoundNotOver

; PREINTRO
[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190, 1]
type = ChangeAnim
trigger1 = SelfAnimExist(190)
value = 190

[State 190, 2] ;Go straight to intro.
type = ChangeState
trigger1 = Time = 0
value = 191

; INTRO (override this state to give character an intro)
[Statedef 191]
type = S
ctrl = 0
anim = 190

[State 191, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 0

[State 191, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5, 0

[State 191, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;Standing Jab
[Statedef 201]
type = S
movetype = A
physics = S
juggle = 5
poweradd = 20
ctrl = 0
anim = 200

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 2

[State 200, 1]
type = hitdef
trigger1 = time = 0
attr = S,NA
damage = 25
animtype = light
pausetime = 11,11
guardflag = MA
sparkxy = -10,-55
hitsound = S5, 0
guardsound = S6,0
ground.type = High
ground.slidetime = 11
ground.hittime = 12
ground.velocity = -6.5
air.velocity = -4.5

[State 220, 3]
type = changestate
trigger1 = time >= 9
trigger1 = command = "x"
v = 0
value = 200
ignorehitpause = 1

[state 200, 3]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Standing Jab Cont'd
[Statedef 200]
type = S
movetype = A
physics = S
juggle = 5
poweradd = 20
ctrl = 0
anim = 201

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 2

[State 201, 1]
type = hitdef
trigger1 = time = 0
attr = S,NA
damage = 25
animtype = light
pausetime = 11,11
guardflag = MA
sparkxy = -10,-55
hitsound = S5, 0
guardsound = S6,0
ground.type = low
ground.slidetime = 11
ground.hittime = 12
ground.velocity = -6.5
air.velocity = -4.5

[State 201, 3]
type = changestate
trigger1 = time >= 9
trigger1 = command = "x"
v = 0
value = 201
ignorehitpause = 1

[state 201, 3]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Standing Strong
[Statedef 210]
type = S
movetype = A
physics = S
juggle = 8
poweradd = 40
ctrl = 0
anim = 210


[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 2


[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4, 2

[State 210, 1]
type = hitdef
trigger1 = AnimElem = 2
attr = S,NA
damage = 58
animtype = Medium
pausetime = 11,11
guardflag = MA
sparkxy = -10,-55
hitsound = S5,1
guardsound = S6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 17
ground.velocity = -8.5
air.velocity = -4

[State 210, 1]
type = hitdef
trigger1 = AnimElem = 8
attr = S,NA
damage = 58
animtype = Medium
pausetime = 11,11
guardflag = MA
sparkxy = -10,-55
hitsound = s5,1
guardsound = s6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 17
ground.velocity = -4.5, -8.5
air.velocity = -4

[state 210, 3]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Standing Fierce
[Statedef 220]
type = S
movetype = A
physics = S
juggle = 2
poweradd = 70
ctrl = 0
anim = 220

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 100, 1

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4, 4

[State 220, 1]
type = hitdef
trigger1 = time = 0
attr = S,NA
damage = 85
animtype = Hard
guardflag = MA
pausetime = 11,11
guardflag = MA
sparkxy = -10,-55
hitsound = S5,5
guardsound = S6,0
ground.type = Low
ground.slidetime = 16
ground.hittime = 25
ground.velocity = -8.5
air.velocity = -4

[State 220, 3]
type = changestate
trigger1 = time >= 30
trigger1 = command = "z"
v = 0
value = 221
ignorehitpause = 1

[state 220, 3]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Standing Fierce Cont'd
[Statedef 221]
type = S
movetype = A
physics = S
juggle = 2
poweradd = 70
ctrl = 0
anim = 221

[State 221, 1]
type = posadd
trigger1 = time = 0
x = 50

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 3

[State 221, 1]
type = hitdef
trigger1 = time = 0
attr = S,NA
damage = 85
animtype = Hard
guardflag = LA
pausetime = 11,11
sparkxy = -10,-15
hitsound = S5,5
guardsound = S6,0
ground.type = Trip
ground.slidetime = 15
ground.hittime = 17
ground.velocity = -2
air.velocity = -1
fall = 1

[state 221, 3]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Standing Short 
[Statedef 230]
type = S
movetype = A
physics = S
juggle = 5
poweradd = 25
ctrl = 0
anim = 230

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 2

[State 230, 1]
type = hitdef
trigger1 = time = 0
attr = S,NA
damage = 25
animtype = light
pausetime = 11,11
guardflag = MA
sparkxy = -10,-55
hitsound = S5,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 11
ground.hittime = 12
ground.velocity = -6.5
air.velocity = -4.5

[state 230, 3]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Standing Forward
[Statedef 240]
type = S
movetype = A
physics = S
juggle = 8
poweradd = 45
ctrl = 0
anim = 240

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 2

[State 240, 1]
type = hitdef
trigger1 = Time = 0
attr = S,NA
damage = 58
animtype = Medium
pausetime = 11,11
guardflag = MA
sparkxy = -10,-73
hitsound = S5,1
guardsound = S6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 17
ground.velocity = -8.5
air.velocity = -4

[state 240, 3]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Standing Rhouse 
[Statedef 250]
type = A
movetype = A
physics = N
juggle = 2
poweradd = 80
ctrl = 0
anim = 250

[State 250, 1]
type = velset
trigger1 = Time = 1
x = 2.5
y = -3.9

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4, 3

[State 250, 1]
type = veladd
trigger1 = Time = 19
y = 2.9

[State 250, 1]
type = veladd
trigger1 = Time = 10
y = 2.9

[State 250, Gravity]
type = Gravity
trigger1 = AnimElem = 2

[State 250, 1]
type = hitdef
trigger1 = time = 0
attr = S,NA
damage = 85
animtype = Hard
guardflag = HA
pausetime = 11,11
sparkxy = -20,-55
hitsound = S5,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 15
ground.hittime = 17
ground.velocity = -2
air.velocity = -1
fall = 1


[State 250, 3]
type = VelSet
trigger1 = Pos Y >= 0 && Vel Y > 0
x = 0
y = 0

[State 250, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Crouching Jab 
[Statedef 400]
type = C
movetype = A
physics = C
juggle = 5
poweradd = 20
ctrl = 0
anim = 400

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 2

[State 400, 1]
type = hitdef
trigger1 = time = 0
attr = C,NA
damage = 25
animtype = light
pausetime = 11,11
guardflag = LA
sparkxy = -10,-20
hitsound = S5,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 11
ground.hittime = 12
ground.velocity = -6.5
air.velocity = -4.5

[state 400, 3]
type = Changestate
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;Crouching Strong 
[Statedef 410]
type = C
movetype = A
physics = C
juggle = 5
poweradd = 40
ctrl = 0
anim = 440

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 3

[State 410, 1]
type = hitdef
trigger1 = time = 0
attr = C,NA
damage = 35
animtype = Medium
pausetime = 11,11
guardflag = MA
sparkxy = -30,-45
hitsound = S5,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 13
ground.hittime = 12
ground.velocity = -7
air.velocity = -5

[state 410, 3]
type = Changestate
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;Crouching Fierce 
[Statedef 420]
type = C
movetype = A
physics = C
juggle = 5
poweradd = 80
ctrl = 0
anim = 420

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 100, 1

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 4

[State 420, 1]
type = hitdef
trigger1 = time = 0
attr = C,NA
damage = 55
animtype = Hard
pausetime = 11,11
guardflag = MA
sparkxy = -30,-45
hitsound = S5,5
guardsound = S6,0
ground.type = Low
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -1.3, -13
air.velocity = -1.6, -13

[state 420, 3]
type = Changestate
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;Crouching Short
[Statedef 430]
type = C
movetype = A
physics = C
juggle = 5
poweradd = 25
ctrl = 0
anim = 430

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 2

[State 430, 1]
type = hitdef
trigger1 = time = 0
attr = C,NA
damage = 25
animtype = light
pausetime = 11,11
guardflag = MA
sparkxy = -20,-50
hitsound = S5,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 11
ground.hittime = 12
ground.velocity = -6.5
air.velocity = -4.5

[state 430, 3]
type = Changestate
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;Crouching Forward 
[Statedef 440]
type = C
movetype = A
physics = C
juggle = 5
poweradd = 45
ctrl = 0
anim = 410

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 3

[State 440, 1]
type = hitdef
trigger1 = time = 0
attr = C,NA
damage = 35
animtype = Medium
pausetime = 11,11
guardflag = MA
sparkxy = -20,-75
hitsound = S5,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 13
ground.hittime = 12
ground.velocity = -3, -5
air.velocity = -5

[state 440, 3]
type = Changestate
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;Crouching Rhouse 
[Statedef 450]
type = C
movetype = A
physics = C
juggle = 5
poweradd = 70
ctrl = 0
anim = 450

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 3

[State 450, 1]
type = hitdef
trigger1 = time = 0
attr = C,NA
damage = 55
animtype = Hard
pausetime = 11,11
guardflag = LA
sparkxy = -20,-35
hitsound = S5,5
guardsound = S6,0
ground.type = Trip
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -1.5
air.velocity = -2.5

[state 450, 3]
type = Changestate
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;Jumping Jab 
[Statedef 600]
type = A
movetype = A
physics = A
juggle = 5
poweradd = 20
ctrl = 0
anim = 600

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 2

[State 600, 1]
type = hitdef
trigger1 = time = 0
attr = A,NA
damage = 25
animtype = light
pausetime = 11,11
guardflag = HA
sparkxy = -10,-50
hitsound = S5,0
guardsound = S6,0
ground.type = high
ground.slidetime = 11
ground.hittime = 12
ground.velocity = -6.5
air.velocity = -3,-6

[state 600, 3]
type = Changestate
trigger1 = AnimTime = 0
value = 53
ctrl = 1

;Jumping Strong 
[Statedef 610]
type = A
movetype = A
physics = A
juggle = 5
poweradd = 40
ctrl = 0
anim = 610

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4, 3

[State 610, 1]
type = hitdef
trigger1 = time = 0
attr = A,NA
damage = 35
animtype = Medium
pausetime = 11,11
guardflag = HA
sparkxy = -10,-80
hitsound = S5,4
guardsound = S6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 12
ground.velocity = -7
air.velocity = -3,-4

[state 610, 3]
type = Changestate
trigger1 = AnimTime = 0
value = 53
ctrl = 1

;Jumping Fierce 
[Statedef 620]
type = A
movetype = A
physics = A
juggle = 5
poweradd = 80
ctrl = 0
anim = 620

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 100, 1

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 4

[State 620, 1]
type = hitdef
trigger1 = time = 0
attr = A,NA
damage = 55
animtype = Hard
pausetime = 11,11
guardflag = HA
sparkxy = -15,-55
hitsound = S5,5
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -14
air.velocity = -7,13
air.fall = 1

[state 620, 3]
type = Changestate
trigger1 = AnimTime = 0
value = 53
ctrl = 1

;Jumping Short
[Statedef 630]
type = A
movetype = A
physics = A
juggle = 5
poweradd = 20
ctrl = 0
anim = 630

[State 630, 1]
type = Playsnd
trigger1 = AnimElem = 2
value = 0, 3

[State 630, 1]
type = hitdef
trigger1 = time = 0
attr = A,NA
damage = 25
animtype = light
pausetime = 11,11
guardflag = HA
sparkxy = -20,-55
hitsound = S0,2
guardsound = S6,0
ground.type = high
ground.slidetime = 11
ground.hittime = 12
ground.velocity = -4
air.velocity = -2,-8

[state 630, 3]
type = Changestate
trigger1 = AnimTime = 0
value = 53
ctrl = 1

;Jumping Forward
[Statedef 640]
type = A
movetype = A
physics = A
juggle = 5
poweradd = 40
ctrl = 0
anim = 640

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 3

[State 640, 1]
type = hitdef
trigger1 = time = 0
attr = A,NA
damage = 35
animtype = Medium
pausetime = 11,11
guardflag = HA
sparkxy = -15,-90
hitsound = S5,0
guardsound = S6,0
ground.type = High
ground.slidetime = 13
ground.hittime = 12
ground.velocity = -8
air.velocity = -3,-6

[state 640, 3]
type = Changestate
trigger1 = AnimTime = 0
value = 53
ctrl = 1

;Jumping Rhouse
[Statedef 650]
type = A
movetype = A
physics = A
juggle = 5
poweradd = 80
ctrl = 0
anim = 650

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 3

[State 650, 1]
type = hitdef
trigger1 = time = 0
attr = A,NA
damage = 55
animtype = Hard
pausetime = 11,11
guardflag = HA
;sparkxy = 0,0
hitsound = S5,1
guardsound = S6,0
ground.type = Low
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -8.5
air.velocity = -7,13
air.fall = 1

[state 650, 3]
type = Changestate
trigger1 = AnimTime = 0
value = 53
ctrl = 1

; After Attack Jump
[Statedef 53]
type    = A
physics = A

[State 53, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 53, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 44, ifelse((vel x)>0, 45, 46))

; Jump Up
[Statedef 50]
type    = A
physics = A

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 50, 2]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > 4
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

; Jump Land
[Statedef 52]
type    = S
physics = S
ctrl = 0
anim = 47

[State 200, 1]
type = PlaySnd
trigger1 = Time = 0
value = 50, 0

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 3]
type = CtrlSet
trigger1 = AnimTime = 0
value = 1

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Star
[Statedef 1000]
type = S  
movetype = A  
physics = S  
velset = 0,0
ctrl = 0  
anim = 1000 
poweradd = 100

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 100, 1

[State 1000, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 1002
postype = p1
pos = 0, 0
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 0

[State 1000, 1]
type = Helper
trigger1 = AnimElem = 5
Stateno = 1001
id = 1000
Name = "Ninja"
pos = 30,-60
ownpal = 1
size.xscale= .75
size.yscale= 1

[State 1000, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Air Star
[Statedef 1030]
type = A  
movetype = A  
physics = N  
velset = 0,0
ctrl = 0  
anim = 1001 
poweradd = 100

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 100, 1

[State 1030, VelAdd]
type = VelAdd
trigger1 = Time >= 0
y = .05

[State 1030, PosSet]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 1030, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 1002
postype = p1
pos = 0, 0
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 0

[State 1030, 1]
type = Helper
trigger1 = AnimElem = 3
Stateno = 1001
id = 1000
Name = "Ninja"
pos = 30,-65
;ownpal = 1
size.xscale= .75
size.yscale= 1

[State 1030, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 1

; Air Star
[Statedef 1031]
type = A  
movetype = A  
physics = N  
velset = 0,0
ctrl = 0  
anim = 1001 
poweradd = 100

[State 1032, VelAdd]
type = VelAdd
trigger1 = Time >= 0
y = .05

[State 1032, PosSet]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 100, 1

[State 1031, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 1002
postype = p1
pos = 0, 0
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 0

[State 1031, 1]
type = Helper
trigger1 = AnimElem = 3
Stateno = 1011
id = 1000
Name = "Ninja"
pos = 30,-65
ownpal = 1
size.xscale= .75
size.yscale= 1

[State 1031, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 1

; Air Star
[Statedef 1032]
type = A  
movetype = A  
physics = N  
velset = 0,0
ctrl = 0  
anim = 1001 
poweradd = 100

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 100, 1

[State 1032, VelAdd]
type = VelAdd
trigger1 = Time >= 0
y = .05

[State 1032, PosSet]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 1032, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 1002
postype = p1
pos = 0, 0
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 0

[State 1032, 1]
type = Helper
trigger1 = AnimElem = 3
Stateno = 1021
id = 1000
Name = "Ninja"
pos = 30,-65
ownpal = 1
size.xscale= .75
size.yscale= 1

[State 1032, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 1

; Star
[Statedef 1010]
type = S  
movetype = A  
physics = S  
velset = 0,0
ctrl = 0  
anim = 1000 
poweradd = 100

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 100, 1

[State 1010, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 1002
postype = p1
pos = 0, 0
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 0

[State 1010, 1]
type = Helper
trigger1 = AnimElem = 5
Stateno = 1011
id = 1010
Name = "Ninja"
pos = 30,-60
ownpal = 1
size.xscale= .75
size.yscale= 1

[State 1010, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Star (Helper)
[Statedef 1011]
type = A
movetype = A  
physics = N
velset = 5
ctrl = 0  
anim = 1003
sprpriority = 3

[State 1001, VelAdd]
type = VelSet
Trigger1 = parent, command = "holddown"
y = 2

[State 1001, VelAdd]
type = VelSet
Trigger1 = parent, command = "holdup"
y = -2

[State 1001, VelAdd]
type = VelSet
Trigger1 = parent, command = "holdup2"
y = 0

[State 1001, VelAdd]
type = VelSet
Trigger1 = parent, command = "holddown2"
y = 0

[State 1011, 1]
type = hitdef
trigger1 = Time = 0
attr = S,SP
damage = 15,8
animtype = Hard
pausetime = 0,11
guardflag = MA
;sparkxy = 0,0
hitsound = S5,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = 0
air.velocity = 0,0

[State 1011, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP

[State 1011, Override] 
type = HitOverride
trigger1 = 1
stateno = 1007
attr = SCA, NP, SP, HP

[State 1011, 2]
type = ChangeState
trigger1 = MoveContact = 1
value = 1002
IgnoreHitpause = 1

[State 1011, 2]
type = ChangeState
triggerall = MoveContact = 0
trigger1 = Time >= 100
value = 1007
IgnoreHitpause = 1

[State 1011, 2]
type = Destroyself
trigger1 = Time = 200

; Star
[Statedef 1020]
type = S  
movetype = A  
physics = S  
velset = 0,0
ctrl = 0  
anim = 1000 
poweradd = 100

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 100, 1

[State 1020, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 1002
postype = p1
pos = 0, 0
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 0

[State 1020, 1]
type = Helper
trigger1 = AnimElem = 5
Stateno = 1011
id = 1010
Name = "Ninja"
pos = 30,-60
veladd = 
ownpal = 1
ctrl = 1
size.xscale= .75
size.yscale= 1

[State 1020, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Star (Helper)
[Statedef 1021]
type = A
movetype = A  
physics = N
velset = 7
ctrl = 0  
anim = 1003
sprpriority = 3

[State 1001, VelAdd]
type = VelSet
Trigger1 = parent, command = "holddown"
y = 2

[State 1001, VelAdd]
type = VelSet
Trigger1 = parent, command = "holdup"
y = -2

[State 1001, VelAdd]
type = VelSet
Trigger1 = parent, command = "holdup2"
y = 0

[State 1001, VelAdd]
type = VelSet
Trigger1 = parent, command = "holddown2"
y = 0


[State 1021, 1]
type = hitdef
trigger1 = Time = 0
attr = S,SP
damage = 15,8
animtype = Hard
pausetime = 0,11
guardflag = MA
;sparkxy = 0,0
hitsound = S5,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = 0
air.velocity = 0,0

[State 1021, 2]
type = ChangeState
trigger1 = MoveContact = 1
value = 1002
IgnoreHitpause = 1

[State 1021, 2]
type = ChangeState
triggerall = MoveContact = 0
trigger1 = Time >= 100
value = 1007
IgnoreHitpause = 1

[State 1021, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP

[State 1021, Override] 
type = HitOverride
trigger1 = 1
stateno = 1007
attr = SCA, NP, SP, HP

[State 1021, 2]
type = Destroyself
trigger1 = Time = 200

; Star (Helper)
[Statedef 1001]
type = A
movetype = A  
physics = N
velset = 3.5, 0
;velset = 0, 0
ctrl = 0 
anim = 1003
sprpriority = 1
scale          = .75,.75

[State 1001, VelAdd]
type = VelSet
Trigger1 = parent, command = "holddown"
y = 2

[State 1001, VelAdd]
type = VelSet
Trigger1 = parent, command = "holdup"
y = -2

[State 1001, VelAdd]
type = VelSet
Trigger1 = parent, command = "holdup2"
y = 0

[State 1001, VelAdd]
type = VelSet
Trigger1 = parent, command = "holddown2"
y = 0


[State 1001, 1]
type = hitdef
trigger1 = Time = 0
attr = S,SP
damage = 15,8
animtype = Hard
pausetime = 0,11
guardflag = MA
;sparkxy = 0,0
hitsound = S5,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = 0
air.velocity = 0,0

[State 1001, 3]
type = Destroyself
trigger1 = Time = 200

[State 1001, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP

[State 1001, Override] 
type = HitOverride
trigger1 = 1
stateno = 1007
attr = SCA, NP, SP, HP

[State 1001, 3]
type = ChangeState
trigger1 = MoveContact = 1
value = 1002
IgnoreHitpause = 1

[State 1001, 3]
type = ChangeState
triggerall = MoveContact = 0
trigger1 = Time >= 100
value = 1007
IgnoreHitpause = 1

; Ninja Star DIE
[Statedef 1002]
type = A
movetype = A  
physics = N
ctrl = 0  
anim = 1005
sprpriority = 3
Velset = 0, 0

[State 1002, 1]
type = hitdef
trigger1 = AnimElem = 2
attr = S,SP
damage = 15,8
animtype = Hard
pausetime = 0,11
guardflag = MA
;sparkxy = 0,0
hitsound = S5,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = 0
air.velocity = 0,0

[State 1002, 2]
type = ChangeState
trigger1 = MoveContact = 2
value = 1003
IgnoreHitpause = 1

[State 1002, 2]
type = ChangeState
triggerall = MoveContact = 0
trigger1 = Time >= 15
value = 1007
IgnoreHitpause = 1

; Ninja Star DIE
[Statedef 1003]
type = A
movetype = A  
physics = N
ctrl = 0  
anim = 1005
sprpriority = 3
Velset = 0, 0

[State 1003, 1]
type = hitdef
trigger1 = AnimElem = 2
attr = S,SP
damage = 15,8
animtype = Hard
pausetime = 0,11
guardflag = MA
;sparkxy = 0,0
hitsound = S5,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = 0
air.velocity = 0,0

[State 1003, 2]
type = ChangeState
trigger1 = MoveContact = 3
value = 1004
IgnoreHitpause = 1

[State 1003, 2]
type = ChangeState
triggerall = MoveContact = 0
trigger1 = Time >= 15
value = 1007
IgnoreHitpause = 1

; Ninja Star DIE
[Statedef 1004]
type = A
movetype = A  
physics = N
ctrl = 0  
anim = 1005
sprpriority = 3
Velset = 0, 0

[State 1004, 1]
type = hitdef
trigger1 = AnimElem = 2
attr = S,SP
damage = 15,8
animtype = Hard
pausetime = 0,11
guardflag = MA
;sparkxy = -20,-59
hitsound = S5,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = 0
air.velocity = 0,0

[State 1004, 2]
type = ChangeState
trigger1 = MoveContact = 4
value = 1005
IgnoreHitpause = 1

[State 1004, 2]
type = ChangeState
triggerall = MoveContact = 0
trigger1 = Time >= 15
value = 1007
IgnoreHitpause = 1

; Ninja Star DIE
[Statedef 1005]
type = A
movetype = A  
physics = N
ctrl = 0  
anim = 1005
sprpriority = 3
Velset = 0, 0

[State 1005, 1]
type = hitdef
trigger1 = AnimElem = 2
attr = S,SP
damage = 15,8
animtype = Hard
pausetime = 0,11
guardflag = MA
;sparkxy = -20,-59
hitsound = S5,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = 0
air.velocity = 0,0

[State 1005, 2]
type = ChangeState
trigger1 = MoveContact = 5
value = 1006
IgnoreHitpause = 1

[State 1005, 2]
type = ChangeState
triggerall = MoveContact = 0
trigger1 = Time >= 15
value = 1007
IgnoreHitpause = 1

; Ninja Star DIE
[Statedef 1006]
type = A
movetype = A  
physics = N
ctrl = 0  
anim = 1005
sprpriority = 3
Velset = 0, 0

[State 1006, 1]
type = hitdef
trigger1 = AnimElem = 2
attr = S,SP
damage = 15,8
animtype = Hard
pausetime = 0,0
guardflag = MA
;sparkxy = -20,-59
hitsound = S5,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -3
air.velocity = -3,-.5

[State 1006, 2]
type = ChangeState
trigger1 = MoveContact = 6
value = 1007
IgnoreHitpause = 1

[State 1006, 2]
type = ChangeState
triggerall = MoveContact = 0
trigger1 = Time >= 15
value = 1007
IgnoreHitpause = 1

[Statedef 1007]
type = A
movetype = A  
physics = N
ctrl = 0  
anim = 1004
sprpriority = 3
Velset = 0, 0

[State 1007, 1]
type = Destroyself
trigger1 = animtime = 0

; YAAYAAYAA
[Statedef 1100]
type = S
movetype = A  
physics = S
ctrl = 0  
anim = 1105
sprpriority = 1
Velset = 0, 0
poweradd = 100

[State 1100, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1105

[Statedef 1105]
type = S
movetype = A  
physics = S
ctrl = 0  
anim = 1100
sprpriority = 1
Velset = 0, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 100, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 100, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4, 0

[State 1105, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 1104
postype = p1
pos = 0, 0
bindtime = 1
ontop = 1
removetime = -2
ownpal = 1

[State 1105, Explod]
type = Explod
trigger1 = AnimElem = 6
anim = 1109
postype = p1
pos = 0, 0
bindtime = 1
ontop = 1
removetime = -2
ownpal = 1

[State 1105, 1]
type = hitdef
trigger1 = AnimElem = 3
attr = A,SA
damage = 12,4
animtype = Hard
pausetime = 0,5 
guardflag = MA
sparkxy = -20,-59
hitsound = S5,4
guardsound = S6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8,-4.5
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
air.type = High
air.velocity = -8,-2
fall = 1
p2stateno = 6000

[State 1105, 1]
type = hitdef
trigger1 = AnimElem = 7
attr = A,SA
damage = 12,4
animtype = Hard
pausetime = 0,5 
guardflag = MA
sparkxy = -20,-59
hitsound = S5,4
guardsound = S6,0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8,-4.5
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
air.type = Low
air.velocity = -8,-2
fall = 1
p2stateno = 6000

[State 1105,1]
type = Changestate
Trigger1 = Time>9 && Command="FF"
value = 1108

[State 1105,1]
type = Changestate
Trigger1 = Time>9 && Command="x" ||Time>9 && Command="y" ||Time>9 && Command="z"
value = 1106

[State 1105, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 1109
ctrl = 1


[Statedef 1106]
type = S
movetype = A  
physics = S
ctrl = 0  
anim = 1100
sprpriority = 1
Velset = 0, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 100, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 100, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4, 0


[State 1106, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 1106
postype = p1
pos = 0, 0
bindtime = 1
removetime = -2
ownpal = 1
ontop = 1

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4, 0


[State 1106, 1]
type = hitdef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 5
attr = A,SA
damage = 12,4
animtype = Hard
pausetime = 0,4
guardflag = MA
sparkxy = -20,-59
hitsound = S5,4
guardsound = S6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -12,-4.5
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
air.type = High
air.velocity = -12,-2
fall = 1
p2stateno = 6000

[State 1106, 1]
type = hitdef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
attr = A,SA
damage = 12,4
animtype = Hard
pausetime = 0,4
guardflag = MA
sparkxy = -20,-59
hitsound = S5,4
guardsound = S6,0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -12,-4.5
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
air.type = Low
air.velocity = -12,-2
fall = 1
p2stateno = 6000

[State 1106,1]
type = Changestate
Trigger1 = Time>9 && Command="FF"
value = 1108

[State 1106,1]
type = Changestate
Trigger1 = Time>9 && Command="x" ||Time>9 && Command="y" ||Time>9 && Command="z"
value = 1111


[State 1106, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 1109
ctrl = 1

[Statedef 1111]
type = S
movetype = A  
physics = S
ctrl = 0  
anim = 1100
sprpriority = 1
Velset = 0, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 100, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 100, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4, 0

[State 1106, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 1106
postype = p1
pos = 0, 0
bindtime = 1
removetime = -2
ownpal = 1
ontop = 1

[State 1106, 1]
type = hitdef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 5
attr = A,SA
damage = 12,4
animtype = Hard
pausetime = 0,4
guardflag = MA
sparkxy = -20,-59
hitsound = S5,4
guardsound = S6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -12,-4.5
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
air.type = High
air.velocity = -12,-2
fall = 1
p2stateno = 6000

[State 1106, 1]
type = hitdef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
attr = A,SA
damage = 12,4
animtype = Hard
pausetime = 0,4
guardflag = MA
sparkxy = -20,-59
hitsound = S5,4
guardsound = S6,0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -12,-4.5
air.type = Low
air.velocity = -12,-2
fall = 1
p2stateno = 6000

[State 1106,1]
type = Changestate
Trigger1 = Time>9 && Command="FF"
value = 1108

[State 1106,1]
type = Changestate
Trigger1 = Time>9 && Command="x" ||Time>9 && Command="y" ||Time>9 && Command="z"
value = 1107


[State 1106, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 1109
ctrl = 1

[Statedef 1107]
type = S
movetype = A  
physics = S
ctrl = 0  
anim = 1100
sprpriority = 1
Velset = 0, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 100, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 100, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4, 0

[State 1107, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 1106
postype = p1
pos = 0, 0
bindtime = 1
removetime = -2
ownpal = 1
ontop = 1

[State 1106, 1]
type = hitdef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 5
attr = A,SA
damage = 12,4
animtype = Hard
pausetime = 0,4
guardflag = MA
sparkxy = -20,-59
hitsound = S5,4
guardsound = S6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -12,-4.5
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
air.type = High
air.velocity = -12,-2
fall = 1
p2stateno = 6000

[State 1106, 1]
type = hitdef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
attr = A,SA
damage = 12,4
animtype = Hard
pausetime = 0,4
guardflag = MA
sparkxy = -20,-59
hitsound = S5,4
guardsound = S6,0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -12,-4.5
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
air.type = Low
air.velocity = -12,-2
fall = 1
p2stateno = 6000

[State 1107,1]
type = Changestate
Trigger1 = Time>9 && Command="FF"
value = 1108

[State 1107, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 1109
ctrl = 1

[Statedef 1108]
type = S
movetype = A  
physics = N
ctrl = 0  
anim = 1101
sprpriority = 1
Velset = 4, 0
poweradd = 100

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 100, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 100, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4, 0

[State 1108, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 1106
postype = p1
pos = 0, 0
bindtime = -1
removetime = -2
ownpal = 1
ontop = 1

[State 1106, 1]
type = hitdef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 5
attr = A,SA
damage = 12,8
animtype = Hard
pausetime = 0,4
guardflag = MA
sparkxy = -20,-59
hitsound = S5,4
guardsound = S6,0
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -12,-4.5
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
air.type = High
air.velocity = -12,-2
fall = 1
p2stateno = 6000

[State 1106, 1]
type = hitdef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
attr = A,SA
damage = 12,8
animtype = Hard
pausetime = 0,4
guardflag = MA
sparkxy = -20,-59
hitsound = S5,4
guardsound = S6,0
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -12,-4.5
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
air.type = Low
air.velocity = -12,-2
fall = 1
p2stateno = 6000

[State 1108, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 1109
ctrl = 1


[Statedef 1109]
type = S
movetype = A  
physics = S
ctrl = 0  
anim = 1103
sprpriority = 1
Velset = 0, 0

[State 1109, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Custom vs. Hit State
[Statedef 6000]
type    = A
movetype= H
physics = N
anim = 5012
velset = 0,0

[State 6000, 1]
type = ChangeState
trigger1 = HitShakeOver
value = 6001

[State 6000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------
; Custom vs. Hit State Cont'd
[Statedef 6001]
type    = A
movetype= H
physics = N
anim = 5030
ctrl = 0

[State 6001, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 6001, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 6001, 4]
type = ChangeAnim
triggerall = AnimTime = 0
trigger1 = anim = 5030
value = 5050

[State 6001, 4]
type = ChangeAnim
trigger1 = anim = 5030 && time = 10
value = 5050

[State 6001, 5]
type = EnvShake
trigger1 = (Vel y > 0) && (Pos y >= 5)
time = 20
freq = 60
ampl = -5
persistent = 0

[State 6001, 8]
type = ChangeState
trigger1 = (Vel y > 0) && (Pos y >= 5)
trigger1 = alive
value = 6002

[State 6001, 9]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
trigger1 = alive = 0
value = 5100

;---------------------------------------------------------
; Custom vs. Hit State Cont'd
[Statedef 6002]
type    = A
movetype= H
physics = N
ctrl = 0

[State 6002, 1]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 6002, 2]
type = ChangeAnim
triggerall = AnimTime = 0
trigger1 = anim = 5030
value = 5100

[State 6002, 3]
type = EnvShake
trigger1 = (Vel y > 0) && (Pos y >= 5)
time = 20
freq = 60
ampl = -5
persistent = 0

[State 6002, 4]
type = ChangeState
trigger1 = (Vel y > 0) && (Pos y >= 5)
trigger1 = alive
value = 6003

[State 6002, 5]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
trigger1 = alive = 0
value = 5100

;---------------------------------------------------------
; Custom vs. Hit State Hit Ground/Recover Cont'D
[Statedef 6003]
type    = A
movetype= I
physics = N
anim = 5100

[State 5110, 7]
type = GameMakeAnim
trigger1 = Time = 0
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 6003, 0]
type = ChangeAnim
trigger1 = Time = 6
trigger1 = anim = 5100
value = 5200

[State 6003, 1]
type = PosFreeze
trigger1 = Time = 0
value = 4

[State 6003, 2]
type = VelSet
trigger1 = Time = 0
y = -6

[State 6003, 3]
type = VelSet
trigger1 = Time = 0
trigger1 = vel x > 0
x = 6

[State 6003, 4]
type = VelSet
trigger1 = Time = 0
trigger1 = vel x < 0
x = -6

[State 6003, 5]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 6003, 6]
type = PosSet
trigger1 = Time = 0
y = 0

[State 6003, 7]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 2

[State 6003, 8]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 52
ctrl = 1

;hardest move to program ever!!!
[Statedef 1200]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1200
poweradd = 100

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 5

[State 1200, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;hardest move to program ever!!!
[Statedef 1210]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0, 0
anim = 1200
poweradd = 100

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 5

[State 1200, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 1

;taunt
[Statedef 850]
type = S
movetype = I
physics = S
ctrl = 0
anim = 181

[State 1200, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;throw
[Statedef 800]
type = S
movetype = A
physics = S
ctrl = 0
anim = 800
poweradd = 100

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT          
hitflag = M-         
priority = 1, Miss     
sparkxy = 0, -60
hitsound = S0, 1
sprpriority = 0       
p2facing = 1          
p1stateno = 801      
p2stateno = 802    
fall = 0                

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 801]
type = S
movetype = A
physics = S
ctrl = 0
anim = 801

[State 801, Playsnd]
type = PlaySnd
trigger1 = Time = 9
value = 5, 1

[State 801, 2]
type = TargetBind
trigger1 = AnimElem = 1
pos = 95, 0
time = 14

[State 801, 2]
type = TargetBind
trigger1 = AnimElem = 3
pos = 65, 0
time = 7

[State 801, 2]
type = TargetBind
trigger1 = AnimElem = 4
pos = -35, -30
time = 7

[State 801, 2]
type = TargetBind
trigger1 = AnimElem = 5
pos = -75, -70
time = 3

[State 801, 2]
type = TargetLifeAdd
trigger1 = Time = 9
value = -120

[State 801, 3]
type = TargetVelSet
trigger1 = Time = 32
x = 9
y = -5

[State 801, 4]
type = TargetState
trigger1 = Time = 32
value = 803

[State 801, 4]
type = TargetState
trigger1 = AnimElem = 6
value = 803

[State 801, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 802]
type = A
movetype = H
physics = N
ctrl = 0

[State 802, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 802

[Statedef 803]
type = A
movetype = H
physics = A
ctrl = 0

[State 803, 2]
type = NotHitBy
trigger1 = 1
value2 = SCA
time = 3

[State 803, 3]
type = SelfState
trigger1 = Pos Y >= -3
value = 5100

[State 803, 3]
type = SelfState
trigger1 = vel Y >= 9
value = 5100

;throw2
[Statedef 810]
type = S
movetype = A
physics = S
ctrl = 0
anim = 800
poweradd = 100

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT          
hitflag = M-         
priority = 1, Miss     
sparkxy = 0, -60
hitsound = S0, 1
sprpriority = 0       
p2facing = 1          
p1stateno = 811      
p2stateno = 812    
fall = 0                

[State 800, 2]
type = ChangeState
Trigger1 = AnimElem = 5
value = 5

[Statedef 811]
type = S
movetype = A
physics = S
ctrl = 0
anim = 810

[State 801, PlaySnd]
type = Playsnd
trigger1 = AnimElem = 3
value = 100, 2

[State 801, 2]
type = TargetLifeAdd
trigger1 = AnimElem = 7
value = -120

[State 801, 2]
type = TargetBind
trigger1 = AnimElem = 1
pos = 95, 0
time = 2

[State 801, 2]
type = TargetBind
trigger1 = AnimElem = 3
pos = 95, -35
time = 6

[State 801, 2]
type = TargetBind
trigger1 = AnimElem = 4
pos = 85, -70
time = 10

[State 801, 2]
type = TargetBind
trigger1 = AnimElem = 5
pos = 35, -80
time = 10

[State 801, 2]
type = TargetBind
trigger1 = AnimElem = 6
pos = 15, -80
time = 7

[State 801, 2]
type = TargetBind
trigger1 = AnimElem = 7
pos = -75, 0
time = 7

[State 801, 2]
type = TargetState
trigger1 = Time = 45
Value = 813

[State 800, 2]
type = EnvShake
trigger1 = AnimElem = 7
time = 30
ampl = -6

[State 5100, 10]
type = PlaySnd
trigger1 = AnimElem = 7
value = 500, 1

[State 800, 2]
type = Turn
trigger1 = AnimTime = 0

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 812]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = 1

[State 802, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 812
;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground)
[Statedef 813]
type    = L
movetype= H
physics = N

[State 800, 2]
type = Turn
trigger1 = Time = 0

[State 5100, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = Selfstate
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110 ;HIT_LIEDOWN

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

;[State 5100, 11]
;type = PosFreeze
;trigger1 = 1

[State 5100, 12]
type = Selfstate
trigger1 = AnimTime = 0
value = 5101

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;Super Jump
[Statedef 9000]
type    = A
physics = N
velset = 0,-9.5
ctrl = 0

[State 9000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 9000, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = 10,0

[state 9000, CtrlSet]
type = CtrlSet
trigger1 = Time >= 1
value = 1

[state 9000, VelSetFwd]
type = VelSet
trigger1 = command = "holdfwd"
x = 3 

[state 9000, VelSetBack]
type = VelSet
trigger1 = command = "holdback"
x = -3

[state 9000, VelAdd]
type = VelAdd
trigger1 = Time > 10
x = 0
y = .40

[state 9000, End]
type = ChangeState
trigger1 = Pos Y >= 1 
value = 52
ctrl 
;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

;[Statedef -2]

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

;[Statedef -3]



;-------------------
;MEE Template Files
;   provided by
;  Kitsune Sniper
;       ***
; Thanks, Kitsune!
;-------------------
;CIRCULAR CODE!!!

;[state b]
;type = velset
;trigger1 = time
;X = cos(time/11) * 52/160 * 2* pi 
;Y = sin(time/11) * 52/160 * 2* pi 