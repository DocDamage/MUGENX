;---------------------------------------------------------------------------
; Jump Land
[Statedef 52]
type    = S
physics = S
ctrl = 0
anim = 47


[State 52, 1]
type = ChangeAnim
trigger1 = time = 0
trigger1 = (Vel x) < 0
value = 48


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
trigger1 = Time = 3
value = 1

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1




;---------------------------------------------------------------------------
; RUN_ FRENTE
[Statedef 100]
type    = S
physics = S
ctrl = 0
anim = 100
sprpriority = 1

[State -3, gritos]
type = PlaySnd
trigger1 = Time = 5
value = S0,var(6)

[State -3, gritos]
type = PlaySnd
trigger1 = Time = 1
value = S10,var(7)


[State 1000, magia]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1000, 4


[State 105, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0


[State Fumaca, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 101
sprpriority = 4
ownpal = 1
bindtime = 2


[State Fumaca, Explod]
type = Explod
trigger1 = AnimElem = 10
anim = 104
sprpriority = -4
pos = 0,5
ownpal = 1
bindtime = 2


[State 105, 1]
type = varSet
trigger1 = Time = 0 && P2BodyDist X <= 150
var(10) = 1

[State 105, 1]
type = varSet
trigger1 = Time = 0 && P2BodyDist X > 150
var(10) = 0



[State 105, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 101


; RUN_ FRENTE 2
[Statedef 101]
type    = S
physics = S
ctrl = 0
anim = 102
sprpriority = 1

[State -3, gritos]
type = PlaySnd
trigger1 = Time = 5
value = S0,var(6)


[State 105, 1]
type = PosAdd
trigger1 = Time = 0
x = ifelse(P2BodyDist X <= 150, P2BodyDist X + 60, P2BodyDist X) 
y = 0


[State 105, 1]
type = Turn
trigger1 = time = 1 && var(10) = 1


[State Fumaca, Explod]
type = Explod
trigger1 = time = 10
anim = 103
sprpriority = 4
ownpal = 1
bindtime = 2

[State 1000, magia]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1000, 4


[State Fumaca, Explod]
type = Explod
trigger1 = time = 2
anim = 107
pos = 0,5
sprpriority = -4
ownpal = 1
bindtime = 2



[State 52, 3]
type = CtrlSet
trigger1 = AnimElem = 11 ; 12
value = 1


[State 105, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1





;---------------------------------------------------------------------------
; RUN_BACK
[Statedef 105]
type    = S
physics = A
ctrl = 0
anim = 105
sprpriority = 1


[State 105, 3]
type = ChangeState
trigger1 = AnimElem = 6
value = 101115


; RUN_BACK
[Statedef 101115]
type    = A
physics = A
ctrl = 0
sprpriority = 1


[State -3, gritos]
type = PlaySnd
trigger1 = Time = 2
value = S0,var(6)

[State -3, gritos]
type = PlaySnd
trigger1 = Time = 1
value = S10,var(7)


[State 105, 3]
type = ChangeAnim
trigger1 = time = 0
value = 105
Elem = 7


[State 105, 1]
type = VelSet
trigger1 = Time = 0
x = -5
y = -5


[State Ex, sombras] ;sombras
type = Afterimage
trigger1 = time = 0 
trans = Sub
PalContrast =  -2, -2, -1
time    =  25
length  = 4
TimeGap = 2
FrameGap = 1


[State 105, 3]
type = ChangeState
trigger1 = time > 5
trigger1 = Pos Y >= -10
value = 106

;---------------------------------------------------------------------------
; RUN_BACK2 (land)
[Statedef 106]
type    = S
physics = S
ctrl = 0
anim = 106

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
trigger1 = Time = 2
pos = -5, 5
spacing = 1

[State 106, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;------------------------------------------------------------------
; corre ar
[Statedef 102]
type = A
physics = N
velset = 0,-4.3
ctrl = 1

[State -3, treme]
type = PlaySnd
trigger1 = time = 2
value = 1000,13


[State 102, ass]
type = AssertSpecial
trigger1 = 1
flag = noairguard

[State 102, var]
type = varset
trigger1 = time = 0
sysvar(1) = 1
[State 102]
type = varset
trigger1 = time = 0
trigger1 = command = "holdback"
sysvar(1) = -1

[State 102,chang]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(sysvar(1)=-1,43,110)

[State 102,vel]
type = velset
trigger1 = time = 0
x = ifelse(sysvar(1)=-1,-4,4.5)

[State 102,vel]
type = veladd
trigger1 = 1
y = .35

[State 102,chang]
type = ChangeState
trigger1 = time = 20
value = 103

[State 102, chang]
type = ChangeState
trigger1 = pos y >= 0 && vel y > 0
value = 52

[Statedef 103]
type = A
movetype = I
physics = N
ctrl = 1

[State 103,ex]
type = changeAnim
triggerAll = vel x < 0
trigger1 = time = 0
value = 43
elem = 9

[State 103,ex]
type = changeAnim
triggerAll = vel x > 0
trigger1 = time = 0
value = 110
elem = 9

[State 103,ex]
type = changeAnim
triggerAll = anim = 110
trigger1 = Animtime = 0
value = 42
elem = 11

[State 103,ex]
type = AssertSpecial
trigger1 = 1
flag = noairguard

[State 103,ex]
type = veladd
trigger1 = 1
y = .35

[State 103,chang]
type = ChangeState
trigger1 = pos y >= 0 && vel y > 0
value = 52



;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 5110]
type    = L
movetype= H
physics = N

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110+var(12)*10000 + (anim % 10))
trigger1 = anim = [5081+var(12)*10000,5089+var(10)*10000]
value = 5110+var(12)*10000 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110+var(12)*10000,5119+var(12)*10000] ;Not already changed anim
trigger1 = anim != [5161+var(12)*10000,5169+var(12)*10000]
trigger2 = !SelfAnimExist(5170+var(12)*10000 + (anim % 10))
value = 5170+var(12)*10000

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110+var(12)*10000,5119+var(12)*10000] ;Not already changed anim
trigger1 = anim = [5161+var(12)*10000,5169+var(12)*10000]
trigger1 = SelfAnimExist(5170+var(12)*10000 + (anim % 10))
value = 5170+var(12)*10000 + (anim % 10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !sysvar(0)
;value = F7, 0 ;Hit ground
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5110, 7]
type = GameMakeAnim
trigger1 = sysvar(1) <= 5 || sysvar(1) <= 14
trigger1 = Time = 0
trigger1 = !sysvar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 14

[State explod]
type = Explod
trigger1 = sysvar(1) > 5 && sysvar(1) > 14
trigger1 = time = 0
trigger1 = !sysvar(0)
anim = f62
sprpriority = -6
ownpal = 1
[State explod]
type = Explod
trigger1 = sysvar(1) > 5 && sysvar(1) > 14
trigger1 = time = 0
trigger1 = !sysvar(0)
anim = f63
sprpriority = 6
ownpal = 1

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171+var(12)*10000,5179+var(12)*10000]
triggerall = SelfAnimExist(5110+var(12)*10000 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = sysvar(0) ;sysvar(0) = 1 avoids hit ground anim
value = 5110+var(12)*10000 + (anim % 10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111+var(10)*10000,5119+var(10)*10000]
trigger1 = AnimTime = 0
trigger2 = sysvar(0) ;sysvar(0) = 1 avoids hit ground frame
value = 5110+var(12)*10000

[State 5110, 11] ;If just died
type = ChangeState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = sysvar(0) ;sysvar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110+var(12)*10000,5119+var(12)*10000]
value = 5150

[State 5110, 12]
type = VarSet
trigger1 = sysvar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 15]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

;---------------------------------------------------------------------------
; HIT_GETUP
[Statedef 5120]
type = L
movetype = I
physics = N

[State Get up anim (normal)]
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5111+var(12)*10000,5119+var(12)*10000]
trigger2 = !SelfAnimExist(5120+var(12)*10000+(anim%10))
value = 5120+var(12)*10000

[State Get up anim (for hit up/diag-up)]
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5111+var(12)*10000,5119+var(12)*10000]
trigger1 = SelfAnimExist(5120+var(12)*10000+(anim%10))
value = 5120+var(12)*10000+(anim%10)

[State vel]
type = velset
trigger1 = time = 0
x = 0

[State hit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5120]
type = HitFallSet
trigger1 = animtime = 0
value = 1

[State Can't be thrown right after getting up]
type = NotHitBy
trigger1 = animtime = 0
value = ,NT,ST
time = 1

[State Can't be hit right after getting up (short time)]
type = NotHitBy
trigger1 = animtime = 0
value2 = SCA
time = 1

[State end]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HIT_LIEDEAD
[Statedef 5150]
type    = L
movetype= H
physics = N
sprpriority = -3

[State 5150, 1] ;Normal anim
type = ChangeAnim
triggerall = Time = 0
triggerall = SelfAnimExist(5140+var(12)*10000)
trigger1 = (anim != [5111+var(12)*10000,5119+var(12)*10000]) && (anim != [5171+var(12)*10000,5179+var(12)*10000])
trigger2 = !SelfAnimExist(5140+var(12)*10000 + (anim % 10))
value = 5140+var(12)*10000

[State 5150, 3] ;Hit up type anim
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (anim = [5111+var(12)*10000,5119+var(12)*10000]) || (anim = [5171+var(12)*10000,5179+var(12)*10000])
trigger1 = SelfAnimExist(5140+var(10)*10000 + (anim % 10))
value = 5140+var(12)*10000 + (anim % 10)

[State 5150, 4] ;Match over anim
type = ChangeAnim
persistent = 0
;trigger1 = Time = 0
trigger1 = MatchOver = 1
trigger1 = Anim = [5140+var(12)*10000,5149+var(12)*10000]
trigger1 = SelfAnimExist(anim+10)
value = anim+10

[State 5150, 5] ;Switch to 5110 if liedead anim does not exist
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != [5140+var(12)*10000,5159+var(12)*10000]
trigger1 = Anim != [5110+var(12)*10000,5119+var(12)*10000]
value = 5110+var(12)*10000

[State 5150, 6] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5150, 7] ;Friction
type = VelSet
trigger1 = Vel x < .05
persistent = 0
x = 0

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

