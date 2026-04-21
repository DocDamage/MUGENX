; La var(0) cible la position de P2 (helper "Flammes"). -> code de Mike Werewolf
; La var(1) empêche les infinites des coups basiques.
; La var(2) définit aléatoirement une voix (hit).
; La var(3) définit aléatoirement une voix (gethit).
; La var(4) envoie Lee en state dizzy.
; La var(5) empêche l'infinite de l'ender.
; La var(7) calcule le nombre de passages du Ryu Tsuisen.
; La var(9) définit aléatoirement un son (hit).
; La var(10) permet d'entrer la commande du Ryu Tsuisen dès le premier MoveContact.
;
;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

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
sysvar(1) = 0

[State 40, 2]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 40, 3]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = ifelse(command != "holdup", const(velocity.jump.y)*.8 ,const(velocity.jump.y))

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Jump Land
[Statedef 52]
type    = S
physics = S
ctrl = 0
anim = 47
facep2 = 1

[State 52, 1]
type = PlaySnd
trigger1 = Time = 0
value = 15, 6
channel = 5

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0
x = 0

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
; RUN_FWD
[Statedef 100]
type = S
physics = S
anim = 100
sprpriority = 1

[State 100, 1]
type = PlaySnd
trigger1 = Time = 0
value = 15, 0
channel = 6
loop = 1

[State 100, 2]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 100, 3]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 4]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, 5]
type = ChangeState
trigger1 = command != "holdfwd"
value = 101

;---------------------------------------------------------------------------
; RUN_FWD Stop
[Statedef 101]
type = S
physics = N
ctrl = 0
anim = 101

[State 101, 1]
type = PlaySnd
trigger1 = Time = 0
value = 15, 8
channel = 5

[State 101, 2]
type = VelMul
trigger1 = 1
x = .89

[State 101, 1]
type = MakeDust
trigger1 = Time = 4
pos = 40
spacing = 1

[State 101, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl =1

;---------------------------------------------------------------------------
; RUN_BACK
[Statedef 105]
type    = A
physics = A
ctrl = 0
anim = 105
sprpriority = 1

[State 105, 2]
type = PosAdd
trigger1 = AnimElem = 1 && PrevStateNo = 270
x = -24

[State 105, 1]
type = PlaySnd
trigger1 = Time = 0
value = 15, 5
channel = 5

[State 105, 1]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 105, 2]
type = VelMul
trigger1 = Time = 2
x = .8
y = .5

[State 105, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 106

;---------------------------------------------------------------------------
; RUN_BACK2 (land)
[Statedef 106]
type    = S
physics = S
ctrl = 0
anim = 106

[State 105, 1]
type = PlaySnd
trigger1 = Time = 0
value = 15, 6
channel = 5

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
pos = -5,-2
spacing = 1

[State 106, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HITA_SHAKE
[Statedef 5020]
type    = A
movetype= H
physics = N
velset = 0,0

;[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
;type = ChangeAnim
;trigger1 = Time = 0
;trigger1 = GetHitVar(animtype) != [3,5]
;value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5020, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
;trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5020, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5020, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5020, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5020, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5020, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
trigger4 = anim = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
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
;trigger1 = GetHitVar(fall.yvel) = 0
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

;[State 5100, 8]
;type = GameMakeAnim
;trigger1 = Time = 1
;;value = 61
;;pos = 0, 0
;;under = 1
;value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
;pos = 0, 0
;under = sysvar(1) <= 10

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = 15, 7
channel = 5

[State 5100, 10]
type = PlaySnd
trigger1 = alive
trigger1 = Time = 1
value = 5, 4 + (Random>499)
channel = 0

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

;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 5110]
type    = L
movetype= H
physics = N

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1] ;Tombe vers l'avant (from state 5071)
type = ChangeAnim
persistent = 0
trigger1 = PrevStateNo = 5071
value = 5081

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

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

;[State 5110, 7]
;type = GameMakeAnim
;trigger1 = Time = 0
;trigger1 = !SysVar(0)
;value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
;pos = 0, 0
;under = sysvar(1) <= 10

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110

[State 5110, 11] ;If just died
type = ChangeState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
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

[State 5120, ChangeState]
type = ChangeState
triggerall = command = "holdfwd"
trigger1 = Anim = 5120
trigger1 = AnimElem = 3, = 1
trigger2 = AnimElem = 3, = 2
trigger2 = Anim = 5121
trigger3 = AnimElem = 3, = 2
trigger3 = Anim = 5122
value = 5123
ctrl = 0

[State 5120, ChangeState]
type = ChangeState
triggerall = command = "holdback"
trigger1 = Anim = 5120
trigger1 = AnimElem = 3, = 1
trigger2 = AnimElem = 3, = 2
trigger2 = Anim = 5121
trigger3 = AnimElem = 3, = 2
trigger3 = Anim = 5122
value = 5124
ctrl = 0

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
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HIT_GETUP FWD
[Statedef 5123]
type = L
movetype = I
physics = N
anim = 5123

[State 5123, 1]
type = PlayerPush
trigger1 = 1
value = 0

[State 5123, 2]
type = StateTypeSet
trigger1 = AnimElem = 2
type = A
movetype = I
physics = A

[State 5123, 3]
type = VelSet
trigger1 = AnimElem = 2
x = 5
y = -6

[State 5123, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

[State 5123, 5] ;Can't be thrown right after getting up
type = NotHitBy
trigger1 = AnimTime = 0
value = , NT,ST,HT
time = 12

[State 5123, 6] ;Can't be hit right after getting up (short time)
type = NotHitBy
trigger1 = AnimTime = 0
value2 = SCA
time = 3

;---------------------------------------------------------------------------
; HIT_GETUP BACK
[Statedef 5124]
type = L
movetype = I
physics = N
anim = 5124

[State 5124, 1]
type = PlayerPush
trigger1 = 1
value = 0

[State 5124, 2]
type = StateTypeSet
trigger1 = AnimElem = 2
type = A
movetype = I
physics = A

[State 5124, 3]
type = VelSet
trigger1 = AnimElem = 2
x = -4
y = -6

[State 5124, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

[State 5124, 5] ;Can't be thrown right after getting up
type = NotHitBy
trigger1 = AnimTime = 0
value = , NT,ST,HT
time = 12

[State 5124, 6] ;Can't be hit right after getting up (short time)
type = NotHitBy
trigger1 = AnimTime = 0
value2 = SCA
time = 3

;---------------------------------------------------------------------------
; HIT_FALLRECOVER (still falling)
[Statedef 5200]
type    = A
movetype= H
physics = N

[State 5200, 1] ;Change anim if done with transition
type = ChangeAnim
trigger1 = Anim = 5035
trigger1 = AnimTime = 0
value = 5050

[State 5200, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5200, 3]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 10
value = 5201

;---------------------------------------------------------------------------
; HIT_FALLRECOVER (on the ground)
[Statedef 5201]
type    = A
movetype= H
physics = A
anim = 5200

[State 5201, 1]
type = PalFX
trigger1 = Time = 0
time = 10
add = 104, 32, 200

[State 5201, 1] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -5

[State 5201, 2]
type = VelSet
trigger1 = Time = 0
x = -.15
y = -3.5

[State 5201, 3]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5201, 4]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5201, 6]
type = Explod
trigger1 = Time = 1
anim = 4900
pos = 4,-87
facing = 1
postype = P1
bindtime = 1
removetime = 16
sprpriority = 1

;---------------------------------------------------------------------------
; HIT_AIRFALLRECOVER
[Statedef 5210]
type    = A
movetype= I
physics = N
anim = 5210
ctrl = 0

[State 5210, 1] ;Blink white
type = PalFX
trigger1 = Time = 0
time = 10
add = 104, 32, 200

[State 5210, Explod]
type = Explod
trigger1 = Time = 1
anim = 4900
pos = 4,-87
facing = 1
postype = P1
bindtime = 1
removetime = 16
sprpriority = 1

[State 5210, 1]
type = PosFreeze
trigger1 = Time = 0
value = 4

[State 5210, 2] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -20

[State 5210, 1] 
type = VelMul
trigger1 = Time = 4
x = .8
y = .8

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
y = -4.5

[State 5210, 1] 
type = VelMul
trigger1 = Time = 4
trigger1 = Vel Y > 0
y = .5

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -3
y = -2

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -2
y = -1

[State 5210, 2] ;Go up
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdup"
y = -2

[State 5210, 2] ;Go down
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holddown"
y = 1.5

[State 5210, 2] ;Go fwd
type = VelMul
trigger1 = Time = 4
trigger1 = Command = "holdfwd"
x = 1

[State 5210, 2] ;Go back
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdback"
x = -1

[State 5210, 3]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 15

[State 5210, 4]
type = CtrlSet
trigger1 = Time = 20
value = 1

[State 5210, 5]
type = VelAdd;Gravity
trigger1 = Time >= 4
y = .35

[State 5210, 5] ;Land on ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;JUMP_LAND
ctrl = 1

;---------------------------------------------------------------------------
; Dizzy
[Statedef 5300]
type = S
movetype= I
physics = S
ctrl = 0
anim = 5300
velset = 0,0

[State 5300, 3]
type = VarSet
trigger1 = 1
var(4) = 0

[State 5300, 3]
type = ChangeState
trigger1 = Time = 110
value = 5301
ctrl = 0

;---------------------------------------------------------------------------
; Dizzy End
[Statedef 5301]
type = S
movetype= I
physics = S
ctrl = 0
anim = 5301
velset = 0,0

[State 5301, 3]
type = VarSet
trigger1 = 1
var(4) = 0

[State 5301, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Win state decider
[Statedef 180]
type = S

[State 180, 1]
type = ChangeState
trigger1 = matchover = 0
value = IfElse(Random>499, 181,182) 

[State 180, 2]
type = ChangeState
trigger1 = matchover = 1
value = IfElse(Life >= 1000, 182,183) 

;---------------------------------------------------------------------------
; Win 1
[Statedef 181]
type = S
ctrl = 0
anim = 181

[State 181, 1]
type = PlaySnd
trigger1 = AnimElem = 8
value = 10, 5
channel = 0

[State 181, 1]
type = PlaySnd
trigger1 = AnimElem = 17
value = 15, 17
channel = 1

[State 181, 1]
type = PlaySnd
trigger1 = AnimElem = 18
value = 15, 18
channel = 2

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181, 2]
type = AssertSpecial
trigger1 = Time = [0, 221]
flag = roundnotover

;---------------------------------------------------------------------------
; Win 2
[Statedef 182]
type = S
ctrl = 0
anim = 182

[State 182, 1]
type = PlaySnd
trigger1 = AnimElem = 16
value = 15, 1
channel = 1

[State 182, 1]
type = PlaySnd
trigger1 = AnimElem = 28
value = 10, 8
channel = 0

[State 182, 1]
type = PlaySnd
trigger1 = AnimElem = 37
value = 10, 9
channel = 0

[State 182, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 182, 2]
type = AssertSpecial
trigger1 = Time = [0, 361]
flag = roundnotover

;---------------------------------------------------------------------------
; Win 3
[Statedef 183]
type = S
ctrl = 0
anim = 183

[State 183, 1]
type = PlaySnd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 17
trigger3 = AnimElem = 24
value = 15, 18
channel = 1

[State 183, 1]
type = PlaySnd
trigger1 = AnimElem = 24
value = 10, 6
channel = 0

[State 183, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 183, 2]
type = AssertSpecial
trigger1 = Time = [0, 395]
flag = roundnotover

;---------------------------------------------------------------------------
; Intro state decider
[Statedef 190]
type = S

[State 190, 1]
type = ChangeState
trigger1 = 1
value = IfElse(Random>499, 191,192) 

;---------------------------------------------------------------------------
; Intro 1
[Statedef 191]
type = S
ctrl = 0
anim = 191

[State 191, 1]
type = PlaySnd
trigger1 = AnimElem = 14
value = 10, 2
channel = 0

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Intro 2
[Statedef 192]
type = S
ctrl = 0
anim = 192

[State 192, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 10, 3
channel = 0

[State 192, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, 3]
type = helper
trigger1 = AnimElem = 21
name = "intro2"
ID = 193
postype = P1
pos = 0, 0
facing = 1
keyctrl = 0
ownpal = 0
stateno = 193
persistent = 0

[State 192, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Intro 2 Helper
[Statedef 193]
type = A
movetype = I
physics = N
anim = 193
sprpriority = 4
ctrl = 0

[State 193, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 10, 4
channel = 0

[State 193, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 15, 10
channel = 1

[State 193, 6]
type = VelSet
trigger1 = Time = 0
x = -3
y = -4

[State 193, 6]
type = VelMul
trigger1 = Time = 1
x = 1.5

[State 193, 6]
type = VelAdd
trigger1 = TimeMod = 2, 1
trigger1 = Time < 25
y = -.8

[State 193, 6]
type = VelAdd
trigger1 = TimeMod = 2, 1
trigger1 = Time > 24
y = -.4

[State 193, 6]
type = AssertSpecial
trigger1 = Time > 20
trigger1 = Time < 60
trigger1 = TimeMod = 2, 1
Flag = Invisible

[State 193, 6]
type = Gravity
trigger1 = 1

[State 193, 6]
type = DestroySelf
trigger1 = Time = 60

;---------------------------------------------------------------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 195, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 10, 14
channel = 0

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = IfElse(command = "Ibuki", 196,197)
ctrl = command != "Ibuki"

;---------------------------------------------------------------------------
; Taunt prolongée (recharge life)
[Statedef 196]
type = S
movetype = I
physics = S
anim = 196
velset = 0,0
ctrl = 0
sprpriority = 2

[State 196, 1]
type = PlaySnd
trigger1 = Time = 4
value = 10, 15
channel = 0

[State 196, 2]
type = LifeAdd
trigger1 = TimeMod = 2, 1
value = 1

[State 196, 3]
type = PalFX
trigger1 = AnimElem = 2
time = 1
add = 48, 48, 48

[State 196, 4]
type = ChangeState
trigger1 = command != "Ibuki"
trigger2 = Life = 1000
value = 197
ctrl = 1

;---------------------------------------------------------------------------
; Taunt End
[Statedef 197]
type = S
ctrl = 0
anim = 197
velset = 0,0

[State 197, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl =1

;---------------------------------------------------------------------------
; Stand Light Punch
[Statedef 200]
type = S
movetype= A
physics = S
ctrl = 0
anim = 200
sprpriority = 2

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, var(2)
channel = 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 15, 2
channel = 1

[State 200, 3]
type = VelSet
trigger1 = AnimElem = 1
y = 0
x = 0

[State 200, 4]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 200, 3]
type = VelSet
trigger1 = AnimElem = 3
x = 2

[State 200, 3]
type = Width
trigger1 = AnimElem = 2, >= 0
trigger1 = AnimElem = 3, < 0
value = 10, 0

[State 200, 3]
type = Width
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 7, < 0
value = 20, 0

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 4
trigger1 = !var(1)
attr = S, NA
damage = 36, 3
getpower = 270, 135
givepower = 90, 0
animtype = Light
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = S4000
guard.sparkno = S4500
sparkxy = -15, -80
hitsound = S20, var(9)
guardsound = S25, 0 + (Random > 499)
ground.type = High
ground.slidetime = 12
ground.hittime  = 20
ground.velocity = -3
guard.velocity = -2
air.velocity = -3,-9
air.hittime = 8

[State 200, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Punch Back
[Statedef 205]
type = S
movetype= A
physics = S
ctrl = 0
anim = 205
sprpriority = 2

[State 205, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, var(2)
channel = 0

[State 205, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 15, 2
channel = 1

[State 205, 3]
type = VelSet
trigger1 = AnimElem = 1
y = 0
x = 0

[State 205, 4]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 205, 1]
type = HitDef
trigger1 = AnimElem = 2
trigger1 = !var(1)
attr = S, NA
damage = 36, 3
getpower = 270, 135
givepower = 90, 0
animtype = Light
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = S4000
guard.sparkno = S4500
sparkxy = -15, -90
hitsound = S20, var(9)
guardsound = S25, 0 + (Random > 499)
ground.type = High
ground.slidetime = 12
ground.hittime  = 20
ground.velocity = -3
guard.velocity = -2
air.velocity = -3,-9
air.hittime = 8

[State 205, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[Statedef 210]
type = S
movetype= A
physics = S
ctrl = 0
anim = 210
sprpriority = 2

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, var(2)
channel = 0

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 15, 3
channel = 1

[State 210, 3]
type = VelSet
trigger1 = AnimElem = 1
y = 0
x = 0

[State 210, 4]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 210, 1]
type = PosAdd
trigger1 = AnimElem = 3
x = 20

[State 210, 1]
type = HitDef
trigger1 = AnimElem = 4
trigger1 = !var(1)
attr = S, NA
damage = 78, 7
getpower = 375, 185
givepower = 90, 0
animtype = Medium
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, -90
hitsound = S20, 1
guardsound = S25, 0 + (Random > 499)
ground.type = High
ground.slidetime = 12
ground.hittime  = 20
ground.velocity = -3
guard.velocity = -2
air.velocity = -3,-9
air.hittime = 8

[State 210, 1]
type = PosAdd
trigger1 = AnimElem = 8
x = -20

[State 210, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Double Kick
[Statedef 215]
type = S
movetype= A
physics = S
ctrl = 0
anim = 215
sprpriority = 2

[State 215, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 4 + (Random > 499)
channel = 0

[State 215, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 15, 4
channel = 1

[State 215, 1]
type = PlaySnd
trigger1 = AnimElem = 11
value = 15, 3
channel = 1

[State 215, 3]
type = VelSet
trigger1 = AnimElem = 1
y = 0
x = 0

[State 215, 4]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 215, 1]
type = PosAdd
trigger1 = AnimElem = 2
x = 5

[State 215, 1]
type = PosAdd
trigger1 = AnimElem = 3
x = 21

[State 215, 1]
type = HitDef
trigger1 = AnimElem = 5
trigger1 = !var(1)
attr = S, NA
damage = 78, 7
getpower = 380, 190
givepower = 90, 0
animtype = Medium
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, -105
hitsound = S20, 3
guardsound = S25, 0 + (Random > 499)
ground.type = High
ground.slidetime = 16
ground.hittime  = 24
ground.velocity = -5
guard.velocity = -3
air.velocity = -3,-9
air.hittime = 8

[State 215, 1]
type = PosAdd
trigger1 = AnimElem = 6
x = 5

[State 215, 1]
type = PosAdd
trigger1 = AnimElem = 9
x = 5

[State 215, 1]
type = PosAdd
trigger1 = AnimElem = 11
x = 12

[State 215, 1]
type = HitDef
trigger1 = AnimElem = 12
attr = S, NA
damage = 84, 8
getpower = 380, 190
givepower = 90, 0
animtype = Hard
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, -85
hitsound = S20, 3
guardsound = S25, 0 + (Random > 499)
ground.type = High
ground.slidetime = 16
ground.hittime  = 28
ground.velocity = -5
guard.velocity = -3
air.velocity = -3,-9
air.hittime = 8

[State 215, 1]
type = PosAdd
trigger1 = AnimElem = 13
x = 28

[State 215, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Kick
[Statedef 220]
type = S
movetype= A
physics = S
ctrl = 0
anim = 220
sprpriority = 2

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, var(2)
channel = 0

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 15, 3
channel = 1

[State 220, 3]
type = VelSet
trigger1 = AnimElem = 1
y = 0
x = 0

[State 220, 4]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 220, 1]
type = HitDef
trigger1 = AnimElem = 4
trigger1 = !var(5)
attr = S, NA
damage = 39, 3
getpower = 270, 135
givepower = 90, 0
animtype = Light
guardflag = M
hitflag = MFD
priority = 3, Hit
pausetime = 8, 8
sparkno = S4000
guard.sparkno = S4500
sparkxy = -15, -5
hitsound = S20, var(9)
guardsound = S25, 0 + (Random > 499)
ground.type = Low
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -3
guard.velocity = -2

[State 220, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Strong Kick
[Statedef 225]
type = S
movetype= A
physics = S
ctrl = 0
anim = 225
sprpriority = 2

[State 225, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0, 4 + (Random > 499)
channel = 0

[State 225, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 15, 4
channel = 1

[State 225, 3]
type = VelSet
trigger1 = AnimElem = 1
y = 0
x = 0

[State 225, 4]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 225, 1]
type = PosAdd
trigger1 = AnimElem = 2
x = 25

[State 225, 1]
type = HitDef
trigger1 = P2StateType = A
trigger1 = AnimElem = 4
trigger1 = !var(1)
attr = S, NA
damage = 57, 5
getpower = 270, 135
givepower = 90, 0
animtype = Back
hitflag = AF
priority = 3, Hit
pausetime = 10, 10
sparkno = S4010
guard.sparkno = S4500
sparkxy = -26, -67
hitsound = S20, 4
guardsound = S25, 0 + (Random > 499)
air.type = High
air.velocity = -3,-9
air.hittime = 8

[State 225, 1]
type = HitDef
trigger1 = P2StateType != A
trigger1 = AnimElem = 4
attr = S, NA
damage = 57, 5
getpower = 270, 135
givepower = 90, 0
animtype = Back
guardflag = M
hitflag = M
priority = 3, Hit
pausetime = 10, 10
sparkno = S4010
guard.sparkno = S4500
sparkxy = -26, -67
hitsound = 5, 0
guardsound = 6, 0
guard.velocity = -3
forcestand = 1
p2stateno = 226
p2facing = 1

[State 225, 1]
type = PosAdd
trigger1 = AnimElem = 9
x = -25

[State 225, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Strong Kick P2
[Statedef 226]
type = S
movetype = H
physics = N
velset = -7,0
ctrl = 0

[State 226, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 226

[State 226,2]
type = VelMul
trigger1 = Time >= 2
x = 1.2

[State 226, 2]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 0
value = 227

[State 226,4]
type = SelfState
trigger1 = Time = 60
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Strong Kick P2
[Statedef 227]
type = S
movetype = H
physics = N

[State 227, 1]
type = EnvShake
trigger1 = Time = 0
time = 10
ampl = 4

[State 227, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 227

[State 227,2]
type = VelSet
trigger1 = Time = 9
x = 2.5
y = -10.5

[State 227, 1]
type = StateTypeSet
trigger1 = Time = 9
StateType = A

[State 227, 3]
type = Gravity
trigger1 = Time >= 9

[State 227,4]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -1
value = 228

;---------------------------------------------------------------------------
; Stand Strong Kick P2
[Statedef 228]
type = L
movetype = H
physics = C

[State 228, 1]
type = EnvShake
trigger1 = Time = 0
time = 5
ampl = 4

[State 228,2]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 228,2]
type = PosSet
trigger1 = Time = 0
trigger1 = Pos Y != 0
y = 0

[State 228, 1]
type = ChangeAnim
trigger1 = Time = 0
value = IfElse(SelfAnimExist(5081), 5081, 5080)

[State 228, 1]
type = Turn
trigger1 = anim = 5080
trigger1 = Time = 0

[State 228,4]
type = SelfState
trigger1 = Time = 29
trigger1 = Life < 1
value = 5081

[State 228,4]
type = ChangeState
trigger1 = Time = 30
value = 229

;---------------------------------------------------------------------------
; Stand Strong Kick P2
[Statedef 229]
type = L
movetype = I
physics = C

[State 229, 1]
type = ChangeAnim
trigger1 = Time = 0
value = IfElse(SelfAnimExist(5121), 5121, 5120)

[State 229,4]
type = SelfState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Repel (Try)
[Statedef 230]
type = S
movetype= I
physics = S
ctrl = 0
anim = 230
sprpriority = -2

[State 230, 2]
type = PalFX
trigger1 = Time = 0
time = 6
add = 40, 40, 40

[State 230, 1]
type = AfterImage
trigger1 = time = 0
time = 39
length = 3
paladd = -24, -24, 96
palbright = 0,0,0
palcontrast = 256,256,256
timeGap = 3
frameGap = 1

[State 230, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Repel
[Statedef 235]
type = S
movetype= A
physics = S
ctrl = 0
anim = 235
sprpriority = -1

[State 235, 1]
type = PlaySnd
trigger1 = AnimElem = 10
value = 0, var(2)
channel = 0

[State 235, 1]
type = PlaySnd
trigger1 = AnimElem = 10
value = 15, 1
channel = 1

[State 235, 3]
type = NotHitBy
trigger1 = 1
value = SCA

[State 235, 2]
type = PalFX
trigger1 = Time = 0
time = 6
add = 40, 40, 40

[State 235, 3]
type = Width
trigger1 = AnimElem = 8, >= 0
trigger1 = AnimElem = 9, < 0
trigger2 = AnimElem = 14, >= 0
trigger2 = AnimElem = 15, < 0
value = 5, 0

[State 235, 3]
type = Width
trigger1 = AnimElem = 9, >= 0
trigger1 = AnimElem = 14, < 0
value = 5, 0

[State 235, 5]
type = SprPriority
trigger1 = AnimElem = 8
value = 3

[State 235, 1]
type = HitDef
trigger1 = AnimElem = 11
attr = S, NA
damage = 0, 0
getpower = 0, 0
givepower = 0, 0
animtype = Light
guardflag = M
hitflag = MA
priority = 3, Dodge
pausetime = 0, 30
sparkno = S4035
sparkxy = -25, -100
hitsound = S25, 1
ground.type = High
ground.hittime  = 38
air.velocity = -1,-8
air.hittime = 4
envshake.time = 6
envshake.freq = 60
envshake.ampl = 6

[State 235, 2]
type = AssertSpecial
trigger1 = AnimElem = 11, = 1 || AnimElem = 13, = 0 || AnimElem = 13, = 2 || AnimElem = 13, = 4
trigger1 = MoveHit
flag = nobg
flag2 = nofg
ignorehitpause = 1

[State 235, 1]
type = Explod
trigger1 = AnimElem = 11, = 1 || AnimElem = 13, = 2
trigger1 = MoveHit
anim = 236
pos = 0, 0
scale = 1.05263, 1.07142
facing = 1
postype = Left
bindtime = -1
removetime = 1
sprpriority = -5
ignorehitpause = 1

[State 235, 1]
type = Explod
trigger1 = AnimElem = 13, = 0 || AnimElem = 13, = 4
trigger1 = MoveHit
anim = 237
pos = 0, 0
scale = 1.05263, 1.07142
facing = 1
postype = Left
bindtime = -1
removetime = 1
sprpriority = -5
ignorehitpause = 1

[State 235, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Repel Sequence
[Statedef 240]
type = S
movetype= A
physics = S
ctrl = 0
anim = 240
velset = 6
sprpriority = 2

[State 240, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 0, 4 + (Random > 499)
channel = 0

[State 240, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 15, 1
channel = 1

[State 240, 1]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
damage = 84, 8
getpower = 430, 215
givepower = 90, 0
animtype = Back
guardflag = M
hitflag = M
priority = 5, Hit
pausetime = 0, 14
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, -90
hitsound = S20, 2
ground.type = High
ground.velocity = -6, -7
fall = 1
fall.envshake.time = 4
fall.envshake.freq = 60
fall.envshake.ampl = 6

[State 240, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Run Kick
[Statedef 250]
type = S
movetype= A
physics = S
ctrl = 0
anim = 250
sprpriority = 2

[State 250, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, var(2)
channel = 0

[State 250, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 15, 3
channel = 1

[State 250, 1]
type = PosAdd
trigger1 = AnimElem = 1
x = -26

[State 250, 1]
type = PosAdd
trigger1 = AnimElem = 2
x = 12

[State 250, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage = 78, 7
getpower = 375, 185
givepower = 90, 0
animtype = Hard
guardflag = M
hitflag = MA
priority = 3, Hit
pausetime = 14, 14
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, -85
hitsound = S20, 7
guardsound = S25, 0 + (Random > 499)
ground.type = High
ground.slidetime = 18
ground.hittime = 28
ground.velocity = -5
guard.velocity = -3
air.velocity = -3,-9
air.hittime = 8

[State 250, 1]
type = PosAdd
trigger1 = AnimElem = 4
x = 28

[State 250, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Run Tacle
[Statedef 255]
type = C
movetype= A
physics = C
ctrl = 0
anim = 255
velset = const(velocity.run.fwd.x)
sprpriority = 2

[State 255, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, var(2)
channel = 0

[State 255, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 15, 4
channel = 1

[State 255, 1]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 78, 7
getpower = 375, 185
givepower = 90, 0
animtype = DiagUp
guardflag = L
hitflag = M
priority = 3, Hit
pausetime = 14, 14
sparkno = S4010
guard.sparkno = S4500
sparkxy = -26, -5
hitsound = S20, 7
guardsound = S25, 0 + (Random > 499)
ground.type = Trip
ground.velocity = 0, -5
guard.velocity = -2
fall = 1
fall.envshake.time = 4
fall.envshake.freq = 60
fall.envshake.ampl = 6

[State 255, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Ground Attack (Ender2) on air
[Statedef 260]
type = S
movetype= A
physics = N
ctrl = 0
anim = 260
sprpriority = 2

[State 260, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 15, 5
channel = 5

[State 260, 2]
type = StateTypeSet
trigger1 = AnimElem = 2
statetype = A

[State 260, 5]
type = VelSet
trigger1 = AnimElem = 2
x = 4
y = -15

[State 260, 3]
type = Gravity
trigger1 = AnimElem = 2, >= 0
trigger1 = AnimElem = 12, <= 1

[State 260, 5]
type = VelMul
trigger1 = vel y > 0
y = 1.5
x = IfElse((P2BodyDist X < 30), 0, IfElse((P2BodyDist X > 100), 2, 1))

[State 260, 4]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -1
value = 270

;---------------------------------------------------------------------------
; Ground Attack (Ender2) on ground
[Statedef 270]
type = S
movetype= A
physics = N
ctrl = 0
anim = 270
sprpriority = -5

[State 270, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, var(2)
channel = 0

[State 270, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 15, 6
channel = 5

[State 270, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 15, 2
channel = 1

[State 270, 3]
type = VelSet
trigger1 = AnimElem = 1
y = 0
x = 0

[State 270, 4]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 270, 1]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 63, 6
getpower = 270, 135
givepower = 90, 0
animtype = Hard
guardflag = M
hitflag = MAFD
priority = 5, Hit
pausetime = 0, 10
sparkno = S4010
guard.sparkno = S4500
sparkxy = 0, 0
hitsound = S20, 0 + (Random > 499)*5
ground.type = Low
ground.slidetime = 12
ground.hittime  = 20

[State 270, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 105
ctrl = 0

;---------------------------------------------------------------------------
; Special Attack
[Statedef 300]
type = S
movetype = I
physics = S
ctrl = 0
anim = 300
sprpriority = 2

[State 300, 3]
type = Explod
trigger1 = AnimElem = 1, = 1
anim = 301
pos = 0, 0
postype = P1
bindtime = -1
removetime = 41
sprpriority = 3
removeongethit = 1
ownpal = 1

[State 300, 4]
type = Explod
trigger1 = AnimElem = 1, = 1
anim = 302
pos = 0, 0
postype = P1
bindtime = -1
removetime = 41
sprpriority = -3
removeongethit = 1
ownpal = 1

[State 300, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = IfElse(command = "SpecialAttack", 305, 310)
ctrl = 0

;---------------------------------------------------------------------------
; Special Attack 2
[Statedef 305]
type = S
movetype = I
physics = S
ctrl = 0
anim = 305
sprpriority = 2

[State 305, 3]
type = Explod
trigger1 = AnimElem = 1, = 1
anim = 306
pos = 0, 0
postype = P1
bindtime = -1
removetime = 19
sprpriority = 3
removeongethit = 1
ownpal = 1

[State 305, 4]
type = Explod
trigger1 = AnimElem = 1, = 1
anim = 307
pos = 0, 0
postype = P1
bindtime = -1
removetime = 19
sprpriority = -3
removeongethit = 1
ownpal = 1

[State 305, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 310
ctrl = 0

;---------------------------------------------------------------------------
; Special Attack End
[Statedef 310]
type = S
movetype = A
physics = S
ctrl = 0
anim = 310
sprpriority = 2

[State 310, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 10, 0
channel = 0

[State 310, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 15, 3
channel = 1

[State 310, 3]
type = Width
trigger1 = AnimElem = 5, >= 0
trigger1 = AnimElem = 10, < 0
value = 30, 0

[State 310, 3]
type = Width
trigger1 = AnimElem = 10, >= 0
trigger1 = AnimElem = 11, < 0
value = 20, 0

[State 310, 3]
type = Explod
trigger1 = AnimElem = 1, = 1
anim = 306
pos = 0, 0
postype = P1
bindtime = -1
removetime = 9
sprpriority = 3
removeongethit = 1
ownpal = 1

[State 310, 4]
type = Explod
trigger1 = AnimElem = 1, = 1
anim = 307
pos = 0, 0
postype = P1
bindtime = -1
removetime = 9
sprpriority = -3
removeongethit = 1
ownpal = 1

[State 310, 1]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
damage = 183
getpower = 560
givepower = 90
animtype = Back
guardflag = -1
hitflag = MA
priority = 5, Hit
guard.dist = 0
pausetime = 16, 16
sparkno = S4300
sparkxy = -20, -65
hitsound = S20, 7 + (Random > 499)
ground.type = High
ground.velocity = -6, -7
fall = 1
fall.envshake.time = 6
fall.envshake.freq = 60
fall.envshake.ampl = 6
air.velocity = -6,-7
air.fall = 1

[State 310, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Kasumi
[Statedef 320]
type = S
movetype= I
physics = S
ctrl = 0
anim = 320
sprpriority = -1

[State 320, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 10, 23
channel = 2

[State 320, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 15, 1
channel = 1

[State 320, 3]
type = NotHitBy
trigger1 = 1
value = SCA, AP, AT

[State 320, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 325
ctrl = 0

;---------------------------------------------------------------------------
; Kasumi End
[Statedef 325]
type = S
movetype= I
physics = S
ctrl = 0
anim = 325
sprpriority = -1

[State 325, 3]
type = NotHitBy
trigger1 = 1
value = SCA, AP, AT

[State 325, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hokage
[Statedef 330]
type = S
movetype= A
physics = S
ctrl = 0
anim = 330
sprpriority = -1
poweradd = 95

[State 330, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 10, 24
channel = 0

[State 330, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 15, 1
channel = 1

[State 330, 1]
type = AfterImage
trigger1 = time = 0
time = 47
length = 3
paladd = -60, -80, -40
palbright = 0,0,0
palcontrast = 256,256,256
timeGap = 4
frameGap = 1

[State 330, 1]
type = PosAdd
trigger1 = AnimElem = 1
x = 30

[State 330, 1]
type = PosAdd
trigger1 = AnimElem = 3
x = 30

[State 330, 1]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
damage = 57, 5
getpower = 430, 215
givepower = 90, 0
animtype = Medium
guardflag = M
hitflag = MA
priority = 3, Hit
pausetime = 8, 8
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, -75
hitsound = S20, 3
guardsound = S25, 0 + (Random > 499)
ground.type = High
ground.slidetime = 18
ground.hittime  = 26
ground.velocity = -4
guard.velocity = -2.5
air.velocity = -3,-9
air.hittime = 8

[State 330, 1]
type = PosAdd
trigger1 = AnimElem = 9
x = -30

[State 330, 1]
type = PosAdd
trigger1 = AnimElem = 11
x = -30

[State 330, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Homura
[Statedef 340]
type = S
movetype= A
physics = S
ctrl = 0
anim = 340
sprpriority = 2
poweradd = 95

[State 340, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 10, 25
channel = 0

[State 340, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 15, 11
channel = 1

[State 340, 1]
type = AfterImage
trigger1 = time = 0
time = 18
length = 3
paladd = -60, -80, -40
palbright = 0,0,0
palcontrast = 256,256,256
timeGap = 4
frameGap = 1

[State 340, 4]
type = StateTypeSet
trigger1 = AnimElem = 1
statetype = A
physics = A

[State 340, 5]
type = VelSet
trigger1 = AnimElem = 1
x = 4
y = -5

[State 340, 3]
type = Explod
trigger1 = AnimElem = 4
anim = 341
pos = 0, 0
postype = P1
bindtime = 1
removetime = 16
sprpriority = 3
removeongethit = 1
ownpal = 1
ignorehitpause = 1

[State 340, 1]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 78, 7
getpower = 430, 215
givepower = 90, 0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 14, 14
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, IfElse((AnimElem = 5), -50, -70)
hitsound = S20, 5 + (Random > 499)*3
guardsound = S25, 0 + (Random > 499)
ground.type = High
ground.hittime  = 26
ground.velocity = -3, -10
guard.velocity = -4
fall = 1
air.fall = 1
air.velocity = -3,-9
airguard.velocity = -5,-5
air.hittime = 48
palfx.time = 73
palfx.add = 112,-88,-255
palfx.color = 0

[State 340, 1]
type = VarSet
trigger1 = MoveHit
trigger1 = !var(0)
var(0) = EnemyNear, ID
ignorehitpause = 1

[State 340, 1]
type = Helper
trigger1 = MoveHit
name = "Flammes"
postype = P2
pos = 0, 0
Facing = -1
ID = 1000
stateno = 341
ownpal = 1
persistent = 0
ignorehitpause = 1

;---------------------------------------------------------------------------
; P2 Burning
[Statedef 341]
type = A
movetype = I
physics = N
anim = 1030
sprpriority = 4
ctrl = 0

[State 341, 2]
type = PosSet
trigger1 = 1
X = Floor(PlayerID(parent,var(0)), Pos X)
Y = Floor(PlayerID(parent,var(0)), Pos Y)

[State 341, 6]
type = ChangeAnim
trigger1 = P2stateno = 5100
value = 342

[State 341, 6]
type = DestroySelf
trigger1 = anim = 342
trigger1 = AnimTime = 0
trigger2 = P2stateno = 0 || P2stateno = 5040 || (P2stateno = [5201, 5210]) || P2stateno = 5120

;---------------------------------------------------------------------------
; Senpuu
[Statedef 350]
type = S
movetype= A
physics = S
ctrl = 0
anim = 350
sprpriority = -1
poweradd = 95

[State 350, 1]
type = PlaySnd
trigger1 = AnimElem = 9
value = 10, 25
channel = 0

[State 350, 1]
type = PlaySnd
trigger1 = AnimElem = 9
value = 15, 4
channel = 1

[State 350, 3]
type = Width
trigger1 = AnimElem = 8, >= 0
trigger1 = AnimElem = 9, <= 0
value = 10, 0

[State 350, 1]
type = AfterImage
trigger1 = time = 0
time = 12
length = 3
paladd = -60, -80, -40
palbright = 0,0,0
palcontrast = 256,256,256
timeGap = 4
frameGap = 1

[State 350, 4]
type = StateTypeSet
trigger1 = AnimElem = 4
statetype = C
physics = C

[State 350, 1]
type = HitDef
trigger1 = AnimElem = 9
attr = C, NA
damage = 3, 3
getpower = 375, 185
givepower = 90, 0
animtype = Light
guardflag = L
hitflag = M
priority = 3, Hit
pausetime = 10, 10
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, -5
hitsound = S20, 4
guardsound = S25, 0 + (Random > 499)
ground.type = Low
ground.slidetime = 12
ground.hittime  = 20
ground.velocity = -4
guard.velocity = -2

[State 350, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 351
ctrl = 0

;---------------------------------------------------------------------------
; Senpuu End
[Statedef 351]
type = C
movetype= A
physics = C
ctrl = 0
anim = 351
sprpriority = 3

[State 351, 1]
type = AfterImage
trigger1 = time = 0
time = 17
length = 3
paladd = -60, -80, -40
palbright = 0,0,0
palcontrast = 256,256,256
timeGap = 4
frameGap = 1

[State 351, 3]
type = Width
trigger1 = AnimElem = 1, >= 0
trigger1 = AnimElem = 3, < 0
value = 10, 0

[State 351, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Senpuu 2
[Statedef 352]
type = C
movetype= A
physics = C
ctrl = 0
anim = 352
sprpriority = -1

[State 352, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 10, 25
channel = 0

[State 352, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 15, 4
channel = 1

[State 352, 2]
type = VelSet
trigger1 = 1
x = 2

[State 352, 3]
type = Width
trigger1 = AnimElem = 4, >= 0
trigger1 = AnimElem = 5, <= 0
value = 10, 0

[State 352, 1]
type = AfterImage
trigger1 = time = 0
time = 14
length = 3
paladd = -60, -80, -40
palbright = 0,0,0
palcontrast = 256,256,256
timeGap = 4
frameGap = 1

[State 352, 1]
type = HitDef
trigger1 = AnimElem = 5
attr = C, NA
damage = 45, 4
getpower = 375, 185
givepower = 90, 0
animtype = Medium
guardflag = L
hitflag = M
priority = 3, Hit
pausetime = 10, 10
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, -5
hitsound = S20, 5
guardsound = S25, 0 + (Random > 499)
ground.type = Low
ground.slidetime = 12
ground.hittime  = 20
ground.velocity = -4
guard.velocity = -2

[State 352, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 353
ctrl = 0

;---------------------------------------------------------------------------
; Senpuu 2 End
[Statedef 353]
type = C
movetype= A
physics = C
ctrl = 0
anim = 353
sprpriority = 3

[State 353, 1]
type = AfterImage
trigger1 = time = 0
time = 20
length = 3
paladd = -60, -80, -40
palbright = 0,0,0
palcontrast = 256,256,256
timeGap = 4
frameGap = 1

[State 353, 3]
type = Width
trigger1 = AnimElem = 1, >= 0
trigger1 = AnimElem = 3, < 0
value = 10, 0

[State 353, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Senpuu 3
[Statedef 354]
type = C
movetype= A
physics = C
ctrl = 0
anim = 354
sprpriority = -1

[State 354, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 10, 27
channel = 0

[State 354, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 15, 4
channel = 1

[State 354, 2]
type = VelSet
trigger1 = 1
x = 1

[State 354, 1]
type = AfterImage
trigger1 = time = 0
time = 14
length = 3
paladd = -60, -80, -40
palbright = 0,0,0
palcontrast = 256,256,256
timeGap = 4
frameGap = 1

[State 354, 3]
type = Width
trigger1 = AnimElem = 4, >= 0
trigger1 = AnimElem = 5, <= 0
value = 10, 0

[State 354, 1]
type = HitDef
trigger1 = AnimElem = 5
attr = C, NA
damage = 63, 6
getpower = 375, 185
givepower = 90, 0
animtype = DiagUp
guardflag = L
hitflag = M
priority = 3, Hit
pausetime = 10, 10
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, -5
hitsound = S20, 4
guardsound = S25, 0 + (Random > 499)
ground.type = Trip
ground.hittime  = 18
ground.velocity = 0, -1
guard.velocity = -2
fall = 1
fall.envshake.time = 4
fall.envshake.freq = 60
fall.envshake.ampl = 6

[State 354, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 355
ctrl = 0

;---------------------------------------------------------------------------
; Senpuu 3 End
[Statedef 355]
type = C
movetype= A
physics = C
ctrl = 0
anim = 355
sprpriority = 3

[State 355, 1]
type = AfterImage
trigger1 = time = 0
time = 20
length = 3
paladd = -60, -80, -40
palbright = 0,0,0
palcontrast = 256,256,256
timeGap = 4
frameGap = 1

[State 355, 3]
type = Width
trigger1 = AnimElem = 1, >= 0
trigger1 = AnimElem = 3, < 0
value = 10, 0

[State 355, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Senpuu Overhead Kick
[Statedef 356]
type = S
movetype= A
physics = S
ctrl = 0
anim = 356
sprpriority = 2

[State 356, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 10, 26
channel = 0

[State 356, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 15, 4
channel = 1

[State 356, 1]
type = AfterImage
trigger1 = time = 0
time = 48
length = 3
paladd = -60, -80, -40
palbright = 0,0,0
palcontrast = 256,256,256
timeGap = 4
frameGap = 1

[State 356, 2]
type = VelSet
trigger1 = AnimElem = 4, >= 0
trigger1 = AnimElem = 9, < 0
x = 1

[State 356, 1]
type = PosAdd
trigger1 = AnimElem = 5
x = 20

[State 356, 1]
type = HitDef
trigger1 = AnimElem = 12
trigger2 = AnimElem = 13
trigger3 = AnimElem = 14
trigger4 = AnimElem = 15
attr = S, NA
damage = 15, 1
getpower = 300, 150
givepower = 90, 0
animtype = Light
guardflag = MA
hitflag = MA
priority = 2, Hit
pausetime = 8, 8
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, IfElse((AnimElem = 12), -120, IfElse((AnimElem = 13), -95, IfElse((AnimElem = 14), -60, -35)))
hitsound = S20, var(9)
guardsound = S25, 0 + (Random > 499)
ground.type = Low
ground.slidetime = 16
ground.hittime  = 24
ground.velocity = -5
guard.velocity = -3
air.velocity = -3,-10
airguard.velocity = -5,-5
air.hittime = 8

[State 356, 1]
type = PosAdd
trigger1 = AnimElem = 17
x = -20

[State 356, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hakkei
[Statedef 360]
type = S
movetype= A
physics = S
ctrl = 0
anim = 360
sprpriority = 2
poweradd = 95

[State 360, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 10, 24
channel = 0

[State 360, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 15, 2
channel = 1

[State 360, 1]
type = AfterImage
trigger1 = time = 0
time = 35
length = 3
paladd = -60, -80, -40
palbright = 0,0,0
palcontrast = 256,256,256
timeGap = 4
frameGap = 1

[State 360, 2]
type = PalFX
trigger1 = Time = 13
time = 2
add = -60, -80, -40

[State 360, 2]
type = PalFX
trigger1 = Time = 15
time = 2
add = 40, 40, 40

[State 360, 1]
type = EnvShake
trigger1 = AnimElem = 6
time = 10
freq = 60
ampl = 5

[State 360, 1]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
damage = 51, 5
getpower = 270, 135
givepower = 90, 0
animtype = Hard
guardflag = M
hitflag = MA
priority = 3, Hit
pausetime = 0, 0
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, -70
hitsound = S20, var(9)
guardsound = S25, 0 + (Random > 499)
ground.type = High
ground.slidetime = 18
ground.hittime  = 26
ground.velocity = -5
guard.velocity = -3
air.velocity = -3,-9
air.hittime = 8

[State 360, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Ensenshou
[Statedef 370]
type = S
movetype= A
physics = S
ctrl = 0
anim = 370
sprpriority = 3

[State 370, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 10, 19
channel = 0

[State 370, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 15, 11
channel = 1

[State 370, 4]
type = PosAdd
trigger1 = AnimElem = 1
x = 15

[State 370, 4]
type = StateTypeSet
trigger1 = AnimElem = 4
statetype = A
movetype= A
physics = A

[State 370, 5]
type = VelSet
trigger1 = AnimElem = 4
y = const(velocity.jump.y)

[State 370, 5]
type = VelSet
trigger1 = AnimElem = 8
x = -.5

[State 370, 3]
type = Explod
trigger1 = AnimElem = 4
anim = 371
pos = -31, -173
postype = P1
bindtime = 1
removetime = 16
sprpriority = 3
removeongethit = 1
ownpal = 1
ignorehitpause = 1

[State 370, 3]
type = Explod
trigger1 = AnimElem = 6
anim = 372
pos = -44, -34
postype = P1
bindtime = 1
removetime = 16
sprpriority = 3
removeongethit = 1
ownpal = 1
ignorehitpause = 1

[State 370, 3]
type = Explod
trigger1 = AnimElem = 8
anim = 373
pos = -71, -120
postype = P1
bindtime = 1
removetime = 16
sprpriority = 3
removeongethit = 1
ownpal = 1
ignorehitpause = 1

[State 370, 1]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
attr = A, NA
damage = IfElse((AnimElem = 4), 24, 51), IfElse((AnimElem = 4), 2, 5)
getpower = 86, 43
givepower = 18, 0
animtype = Back
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pausetime = IfElse((AnimElem = 4), 6, 8), IfElse((AnimElem = 4), 2, 4)
sparkno = S4010
guard.sparkno = S4500
sparkxy = -10, IfElse((AnimElem = 4), -75, -115)
hitsound = S20, 6 + (Random > 333) + (Random > 666)
guardsound = S25, 0 + (Random > 499)
ground.type = High
ground.velocity = 0, -12
guard.velocity = -3
fall = 1
air.velocity = -2,-9
airguard.velocity = -5,-5
air.fall = 1
palfx.time = 75
palfx.add = 112,-88,-255
palfx.color = 0

[State 370, 1]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
attr = A, NA
damage = IfElse((AnimElem = 6), 51, 24), IfElse((AnimElem = 6), 5, 2)
getpower = 86, 43
givepower = 18, 0
animtype = Back
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = IfElse((AnimElem = 6), 12, 8), IfElse((AnimElem = 6), 12, 8)
sparkno = S4010
guard.sparkno = S4500
sparkxy = -10, IfElse((AnimElem = 6), -130, -110)
hitsound = S20, 6 + (Random > 333) + (Random > 666)
guardsound = S25, 0 + (Random > 499)
ground.type = High
ground.velocity = -2, -9
guard.velocity = -3
fall = 1
air.velocity = -2,-9
airguard.velocity = -5,-5
air.fall = 1
palfx.time = 68
palfx.add = 112,-88,-255
palfx.color = 0

[State 370, 1]
type = HitDef
trigger1 = AnimElem = 8
trigger2 = AnimElem = 9
attr = A, NA
damage = IfElse((AnimElem = 8), 24, 24), IfElse((AnimElem = 8), 2, 2)
getpower = 86, 43
givepower = 18, 0
animtype = Back
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pausetime = IfElse((AnimElem = 8), 8, 8), IfElse((AnimElem = 8), 8, 8)
sparkno = S4010
guard.sparkno = S4500
sparkxy = -10, IfElse((AnimElem = 8), -140, -125)
hitsound = S20, 6 + (Random > 333) + (Random > 666)
guardsound = S25, 0 + (Random > 499)
ground.type = High
ground.velocity = -3, -9
guard.velocity = -3
fall = 1
air.velocity = -3,-5
airguard.velocity = -5,-5
air.fall = 1
palfx.time = 52
palfx.add = 112,-88,-255
palfx.color = 0

[State 370, 1]
type = VelAdd
trigger1 = AnimElem = 10
y = -2
x = -.5

[State 370, 2]
type = ChangeState
trigger1 = Time > 10
trigger1 = command = "EnsenshouSequence"
trigger1 = MoveContact
value = 380
ctrl = 0

[State 370, 1]
type = VarSet
trigger1 = MoveHit
trigger1 = !var(0)
var(0) = EnemyNear, ID
ignorehitpause = 1

[State 370, 1]
type = Helper
trigger1 = MoveHit
name = "Flammes"
postype = P2
pos = 0, 0
Facing = -1
ID = 1000
stateno = 1351
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 370, 4]
type = PosAdd
trigger1 = AnimElem = 13
x = -15

;---------------------------------------------------------------------------
; Ensenshou Sequence
[Statedef 380]
type = A
movetype= A
physics = A
ctrl = 0
anim = 380
sprpriority = 3

[State 380, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 15, 4
channel = 1

[State 380, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = A, NA
damage = 51, 5
getpower = 375, 185
givepower = 90, 0
animtype = Hard
guardflag = A
hitflag = AF
priority = 4, Hit
pausetime = 12, 12
sparkno = S4010
guard.sparkno = S4500
sparkxy = -10, -100
hitsound = S15, 9
guardsound = S25, 0 + (Random > 499)
ground.type = High
air.velocity = -3, 8
airguard.velocity = -5, -5
air.fall = 1
palfx.time = 52
palfx.add = 112,-88,-255
palfx.color = 0

[State 380, 1]
type = VarSet
trigger1 = MoveHit
trigger1 = !var(0)
var(0) = EnemyNear, ID
ignorehitpause = 1

[State 380, 1]
type = Helper
trigger1 = MoveHit
name = "Flammes"
postype = P2
pos = 0, 0
Facing = -1
ID = 1000
stateno = 1351
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 380, 2]
type = ChangeState
triggerall = command = "holdup" && command = "a"
trigger1 = MoveHit && vel y > 0
value = 390
ctrl = 0

;---------------------------------------------------------------------------
; Ensenshou Sequence Ground Attack
[Statedef 390]
type = A
movetype= I
physics = N
ctrl = 0
anim = 390
sprpriority = 2

[State 390, 2]
type = Gravity
trigger1 = 1

[State 390, 2]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -1
value = 260
ctrl = 0

;---------------------------------------------------------------------------
; Crouching Light Punch
[Statedef 400]
type = C
movetype= A
physics = C
ctrl = 0
anim = 400
sprpriority = 2

[State 400, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, var(2)
channel = 0

[State 400, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 15, 2
channel = 1

[State 400, 3]
type = VelSet
trigger1 = AnimElem = 1
y = 0
x = 0

[State 400, 4]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 400, 3]
type = Width
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 4, < 0
trigger2 = AnimElem = 6, >= 0
trigger2 = AnimElem = 7, < 0
value = 10, 0

[State 400, 3]
type = Width
trigger1 = AnimElem = 4, >= 0
trigger1 = AnimElem = 6, < 0
value = 20, 0

[State 400, 1]
type = HitDef
trigger1 = AnimElem = 4
attr = C, NA
damage = 36, 3
getpower = 270, 135
givepower = 90, 0
animtype = Light
guardflag = L
hitflag = M
priority = 3, Hit
pausetime = 8, 8
sparkno = S4000
guard.sparkno = S4500
sparkxy = -15, -25
hitsound = S20, var(9)
guardsound = S25, 0 + (Random > 499)
ground.type = Low
ground.slidetime = 12
ground.hittime  = 20
ground.velocity = -3
guard.velocity = -2

[State 400, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Kick
[Statedef 410]
type = C
movetype= A
physics = C
ctrl = 0
anim = 410
sprpriority = 1

[State 410, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0, 4 + (Random > 499)
channel = 0

[State 410, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 15, 3
channel = 1

[State 410, 3]
type = VelSet
trigger1 = AnimElem = 1
y = 0
x = 0

[State 410, 4]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 410, 3]
type = Width
trigger1 = AnimElem = 4, >= 0
trigger1 = AnimElem = 8, < 0
value = 10, 0

[State 410, 1]
type = HitDef
trigger1 = AnimElem = 5
attr = C, NA
damage = 63, 6
getpower = 375, 185
givepower = 90, 0
animtype = Medium
guardflag = L
hitflag = M
priority = 3, Hit
pausetime = 10, 10
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, -5
hitsound = S20, var(9)
guardsound = S25, 0 + (Random > 499)
ground.type = Low
ground.slidetime = 12
ground.hittime  = 20
ground.velocity = -4
guard.velocity = -2

[State 410, 5]
type = SprPriority
trigger1 = AnimElem = 6
value = 3

[State 410, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Kick
[Statedef 420]
type = C
movetype= A
physics = C
ctrl = 0
anim = 420
sprpriority = 2

[State 420, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, var(2)
channel = 0

[State 420, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 15, 3
channel = 1

[State 420, 3]
type = VelSet
trigger1 = AnimElem = 1
y = 0
x = 0

[State 420, 4]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 420, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage = 39, 3
getpower = 270, 135
givepower = 90, 0
animtype = Light
guardflag = L
hitflag = M
priority = 3, Hit
pausetime = 8, 8
sparkno = S4000
guard.sparkno = S4500
sparkxy = -15, -5
hitsound = S20, var(9)
guardsound = S25, 0 + (Random > 499)
ground.type = Low
ground.slidetime = 12
ground.hittime  = 20
ground.velocity = -3
guard.velocity = -2

[State 420, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Kick
[Statedef 425]
type = C
movetype= A
physics = C
ctrl = 0
anim = 425
sprpriority = 1

[State 425, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, var(2)
channel = 0

[State 425, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 15, 4
channel = 1

[State 425, 1]
type = HitDef
trigger1 = AnimElem = 5
attr = C, NA
damage = 72, 7
getpower = 375, 185
givepower = 90, 0
animtype = DiagUp
guardflag = L
hitflag = M
priority = 3, Hit
pausetime = 10, 10
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, -25
hitsound = S20, var(9)
guardsound = S25, 0 + (Random > 499)
ground.type = Trip
ground.velocity = 0, -1
guard.velocity = -2
fall = 1
fall.envshake.time = 4
fall.envshake.freq = 60
fall.envshake.ampl = 6

[State 425, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Repel (Try)
[Statedef 430]
type = C
movetype= I
physics = C
ctrl = 0
anim = 430
sprpriority = -2

[State 430, 2]
type = PalFX
trigger1 = Time = 0
time = 4
add = 40, 40, 40

[State 430, 1]
type = AfterImage
trigger1 = time = 0
time = 42
length = 3
paladd = -24, -24, 96
palbright = 0,0,0
palcontrast = 256,256,256
timeGap = 3
frameGap = 1

[State 430, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Repel
[Statedef 435]
type = C
movetype= A
physics = C
ctrl = 0
anim = 435
sprpriority = -1

[State 435, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0, var(2)
channel = 0

[State 435, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 15, 1
channel = 1

[State 435, 3]
type = NotHitBy
trigger1 = 1
value = SCA

[State 435, 2]
type = PalFX
trigger1 = Time = 0
time = 4
add = 40, 40, 40

[State 435, 5]
type = SprPriority
trigger1 = AnimElem = 4
value = 3

[State 435, 1]
type = HitDef
trigger1 = AnimElem = 6
attr = C, NA
damage = 0, 0
getpower = 0, 0
givepower = 0, 0
animtype = Light
guardflag = M
hitflag = M
priority = 3, Dodge
pausetime = 0, 30
sparkno = S4035
sparkxy = -25, -90
hitsound = S25, 1
ground.type = High
ground.hittime  = 38
envshake.time = 6
envshake.freq = 60
envshake.ampl = 6

[State 435, 2]
type = AssertSpecial
trigger1 = AnimElem = 6, = 1 || AnimElem = 7, = 1 || AnimElem = 8, = 1 || AnimElem = 8, = 3
trigger1 = MoveHit
flag = nobg
flag2 = nofg
ignorehitpause = 1

[State 435, 1]
type = Explod
trigger1 = AnimElem = 6, = 1 || AnimElem = 8, = 1
trigger1 = MoveHit
anim = 236
pos = 0, 0
scale = 1.05263, 1.07142
facing = 1
postype = Left
bindtime = -1
removetime = 1
sprpriority = -5
ignorehitpause = 1

[State 435, 1]
type = Explod
trigger1 = AnimElem = 7, = 1 || AnimElem = 8, = 3
trigger1 = MoveHit
anim = 237
pos = 0, 0
scale = 1.05263, 1.07142
facing = 1
postype = Left
bindtime = -1
removetime = 1
sprpriority = -5
ignorehitpause = 1

[State 435, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Jump Light Punch
[Statedef 600]
type = A
movetype= A
physics = A
ctrl = 0
anim = 600
sprpriority = 2

[State 600, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0, var(2)
channel = 0

[State 600, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 15, 2
channel = 1

[State 600, 1]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 36, 3
getpower = 270, 135
givepower = 90, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 8, 8
sparkno = S4000
guard.sparkno = S4500
sparkxy = -15, -60
hitsound = S20, 1
guardsound = S25, 0 + (Random > 499)
ground.type = High
ground.slidetime = 12
ground.hittime = 20
ground.velocity = -3
guard.velocity = -2
air.hittime = 8
air.velocity = -2,-7
airguard.velocity = -5,-5

;---------------------------------------------------------------------------
; Jump Strong Kick
[Statedef 610]
type = A
movetype= A
physics = A
ctrl = 0
anim = 610
sprpriority = 2

[State 610, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0, var(2)
channel = 0

[State 610, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 15, 3
channel = 1

[State 610, 1]
type = HitDef
trigger1 = AnimElem = 5
attr = A, NA
damage = 18, 1
getpower = 375, 185
givepower = 90, 0
animtype = Light
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 10, 10
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, -105
hitsound = S20, 6
guardsound = S25, 0 + (Random > 499)
ground.type = High
ground.slidetime = 12
ground.hittime = 20
ground.velocity = -4
guard.velocity = -2
air.hittime = 8
air.velocity = -2,-9
airguard.velocity = -5,-5

[State 610, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = A, NA
damage = 81, 8
getpower = 375, 185
givepower = 90, 0
animtype = Hard
guardflag = MA
hitflag = MA
priority = 3, Hit
pausetime = 10, 10
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, -30
hitsound = S20, 8
guardsound = S25, 0 + (Random > 499)
ground.type = High
ground.slidetime = 12
ground.hittime = 22
ground.velocity = -4
guard.velocity = -2
air.hittime = 8
air.velocity = -2,-8
airguard.velocity = -5,-5

[State 610, 2]
type = ChangeState
triggerall = MoveContact && vel y > 0
trigger1 = Command = "x"
trigger2 = Command = "x" && Command = "holddown"
trigger3 = Command = "x" && Command = "holdback"
value = 615
ctrl = 0

[State 610, 2]
type = ChangeState
triggerall = MoveContact && vel y > 0
trigger1 = Command = "y"
trigger2 = Command = "y" && Command = "holddown"
trigger3 = Command = "y" && Command = "holdfwd"
value = 616
ctrl = 0

[State 610, 2]
type = ChangeState
triggerall = MoveContact && vel y > 0
trigger1 = Command = "a"
trigger2 = Command = "a" && Command = "holddown"
trigger3 = Command = "a" && Command = "holdfwd"
value = 617
ctrl = 0

;---------------------------------------------------------------------------
; Jump Strong Kick End A
[Statedef 615]
type = A
movetype= I
physics = N
ctrl = 0
anim = 615
sprpriority = 2

[State 615, 2]
type = Gravity
trigger1 = 1

[State 615, 2]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -1
value = IfElse((Command = "holddown"), 400, IfElse((Command = "holdback"), 205, 200))
ctrl = 0

;---------------------------------------------------------------------------
; Jump Strong Kick End B
[Statedef 616]
type = A
movetype= I
physics = N
ctrl = 0
anim = 615
sprpriority = 2

[State 616, 2]
type = Gravity
trigger1 = 1

[State 616, 2]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -1
value = IfElse((Command = "holddown"), 410, IfElse((Command = "holdfwd"), 215, 210))
ctrl = 0

;---------------------------------------------------------------------------
; Jump Strong Kick End C
[Statedef 617]
type = A
movetype= I
physics = N
ctrl = 0
anim = 615
sprpriority = 2

[State 617, 2]
type = Gravity
trigger1 = 1

[State 617, 2]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -1
value = IfElse((Command = "holddown"), 420, IfElse((Command = "holdfwd"), 225, 220))
ctrl = 0

;---------------------------------------------------------------------------
; Jump Light Kick
[Statedef 620]
type = A
movetype= A
physics = A
ctrl = 0
anim = 620
sprpriority = 2

[State 620, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, var(2)
channel = 0

[State 620, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 15, 3
channel = 1

[State 620, 1]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 36, 3
getpower = 270, 135
givepower = 90, 0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = S4000
guard.sparkno = S4500
sparkxy = -15, -43
hitsound = S20, 3 + (Random > 499)
guardsound = S25, 0 + (Random > 499)
ground.type = High
ground.slidetime = 12
ground.hittime = 20
ground.velocity = -4
guard.velocity = -2
air.hittime = 8
air.velocity = -2,-8
airguard.velocity = -5,-5

;---------------------------------------------------------------------------
; Jump Repel (Try)
[Statedef 630]
type = A
movetype= I
physics = N
ctrl = 0
anim = 630
sprpriority = -2

[State 630, 3]
type = Gravity
trigger1 = 1

[State 630, 2]
type = PalFX
trigger1 = Time = 0
time = 4
add = 40, 40, 40

[State 630, 1]
type = AfterImage
trigger1 = time = 0
time = 100
length = 3
paladd = -24, -24, 96
palbright = 0,0,0
palcontrast = 256,256,256
timeGap = 3
frameGap = 1

[State 630, 4]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -1
value = 631

;---------------------------------------------------------------------------
; Jump Repel (Try)
[Statedef 631]
type = U
ctrl = 0
anim = 631

[State 631, 1]
type = PlaySnd
trigger1 = Time = 0
value = 15, 6
channel = 5

[State 631, 2]
type = StateTypeSet
trigger1 = Time = 0
statetype = C
movetype = I
physics = C

[State 631, 3]
type = VelSet
trigger1 = AnimElem = 1
y = 0
x = 0

[State 631, 4]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 631, 4]
type = AfterImageTime
trigger1 = Time = 0
time = 10

[State 631, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Jump Repel
[Statedef 635]
type = A
movetype= A
physics = A
ctrl = 0
anim = 635
sprpriority = -1

[State 635, 1]
type = PlaySnd
trigger1 = AnimElem = 8
value = 0, var(2)
channel = 0

[State 635, 1]
type = PlaySnd
trigger1 = AnimElem = 8
value = 15, 1
channel = 1

[State 635, 3]
type = NotHitBy
trigger1 = 1
value = SCA

[State 635, 2]
type = PalFX
trigger1 = Time = 0
time = 1
add = 40, 40, 40

[State 635, 5]
type = SprPriority
trigger1 = AnimElem = 3
value = 3

[State 635, 1]
type = HitDef
trigger1 = AnimElem = 8
attr = A, NA
damage = 0, 0
getpower = 0, 0
givepower = 0, 0
animtype = Light
guardflag = MA
hitflag = MA
priority = 3, Dodge
pausetime = 0, 22
sparkno = S4035
sparkxy = -25, -120
hitsound = S25, 1
ground.type = High
ground.hittime  = 30
air.velocity = -1,-9
air.hittime = 26
envshake.time = 6
envshake.freq = 60
envshake.ampl = 6

[State 635, 2]
type = AssertSpecial
trigger1 = AnimElem = 8, = 1 || AnimElem = 9, = 1 || AnimElem = 10, = 1 || AnimElem = 10, = 3
trigger1 = MoveHit
flag = nobg
flag2 = nofg
ignorehitpause = 1

[State 635, 1]
type = Explod
trigger1 = AnimElem = 8, = 1 || AnimElem = 10, = 1
trigger1 = MoveHit
anim = 236
pos = 0, 0
scale = 1.05263, 1.07142
facing = 1
postype = Left
bindtime = -1
removetime = 1
sprpriority = -5
ignorehitpause = 1

[State 635, 1]
type = Explod
trigger1 = AnimElem = 9, = 1 || AnimElem = 10, = 3
trigger1 = MoveHit
anim = 237
pos = 0, 0
scale = 1.05263, 1.07142
facing = 1
postype = Left
bindtime = -1
removetime = 1
sprpriority = -5
ignorehitpause = 1

;---------------------------------------------------------------------------
;Throw - Attempt
[Statedef 800]
type = S
movetype= A
physics = S
ctrl = 0
anim = 800
sprpriority = -1

[State 800, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 10, 13
channel = 0

[State 800, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 15, 4
channel = 1

[State 800, 1]
type = HitDef
trigger1 = AnimElem = 1
getpower = 100
givepower = 0
attr = S, NT
hitflag = M-
priority = 1, Miss
sparkno = -1
sprpriority = 1
p2facing = 1
p1stateno = 810
p2stateno = 820
guard.dist = 0
fall = 1

[State 800, 5]
type = SprPriority
trigger1 = AnimElem = 4
value = 3

[State 800, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Throw
[Statedef 810]
type = S
movetype= I
physics = S
anim = 810
ctrl = 0
sprpriority = 3

[State 810, 1]
type = PlaySnd
trigger1 = AnimElem = 8
value = 0, 2 + IfElse(Random < 333, 0, IfElse(Random < 666, 1, 2))
channel = 0

[State 810, 1]
type = PlaySnd
trigger1 = AnimElem = 8
value = 15, 19
channel = 1

[State 810, 1]
type = PlaySnd
trigger1 = AnimElem = 8
value = 25, 1
channel = 2

[State 810, 2]
type = TargetVelSet
trigger1 = AnimElem = 8, = 0
X = -6
Y = -7

[State 810, 2]
type = TargetDrop
trigger1 = AnimElem = 8, = 0

[State 810, 1]
type = Explod
trigger1 = AnimElem = 8, = 0
anim = 4010
pos = 65, -70
facing = 1
postype = P1
bindtime = 1
removetime = 14
sprpriority = 5

[State 810, 1]
type = Explod
trigger1 = AnimElem = 8, = 0
anim = 815
pos = 65, -70
facing = 1
postype = P1
bindtime = 1
removetime = 14
sprpriority = 4

[State 810, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Thrown
[Statedef 820]
type = S
movetype= H
physics = N

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

[State 820, 1]
type = LifeAdd
trigger1 = AnimElem = 7
value = -84

[State 820, 1]
type = StateTypeSet
trigger1 = AnimElem = 7, = 1
StateType = A

[State 820, 1]
type = Gravity
trigger1 = AnimElem = 7, > 1

[State 820, 1]
type = EnvShake
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
time = 12
ampl = 5

[State 820, 2]
type = SelfState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 5100

;---------------------------------------------------------------------------
; Enryu Haibi 1
[Statedef 1000]
type = S
movetype= A
physics = S
anim = 1000
ctrl = 0
sprpriority = 3
poweradd = 90

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 10, 21
channel = 0

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 15, 11
channel = 1

[State 1000, 2]
type = Width
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 4, < 0
trigger2 = AnimElem = 10, >= 0
trigger2 = AnimElem = 11, < 0
value = 20, 0

[State 1000, 2]
type = Width
trigger1 = AnimElem = 4, >= 0
trigger1 = AnimElem = 10, < 0
value = 30, 0

[State 1000, 2]
type = VelSet
trigger1 = AnimElem = 2, >= 0
trigger1 = AnimElem = 6, < 0
x = 9

[State 1000, 3]
type = Explod
trigger1 = AnimElem = 4
anim = 1020
pos = 0, 0
postype = P1
bindtime = -1
removetime = 25
sprpriority = 4
removeongethit = 1
ownpal = 1
ignorehitpause = 0

[State 1000, 1]
type = HitDef
trigger1 = AnimElem = 7, = 0
trigger2 = AnimElem = 7, = 1
attr = S, SA
damage = IfElse((AnimElem = 7, = 0), 9, 24), IfElse((AnimElem = 7, = 0), 1, 2)
getpower = 300, 150
givepower = 45, 0
animtype = Medium
guardflag = M
hitflag = MA
priority = 5, Hit
pausetime = IfElse((AnimElem = 7, = 0), 6, 14), IfElse((AnimElem = 7, = 0), 6, 14)
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, IfElse((AnimElem = 7, = 0), -55, -70)
hitsound = S20, 3
guardsound = S25, 0
ground.type = High
ground.slidetime = 14
ground.hittime  = 22
ground.velocity = -4
guard.velocity = -3
air.velocity = -3,-9
air.hittime = 8
palfx.time = IfElse((P2StateType = S), 25, 0)
palfx.add = 112,-88,-255
palfx.color = 0

[State 1000, 3]
type = Explod
trigger1 = AnimElem = 8
anim = 1010
pos = 0, 0
postype = P1
bindtime = 1
removetime = 16
sprpriority = 4
removeongethit = 1
ownpal = 1
ignorehitpause = 1

[State 1000, 1]
type = VarSet
trigger1 = MoveHit
trigger1 = P2StateType = S
trigger1 = !var(0)
var(0) = EnemyNear, ID
ignorehitpause = 1

[State 1000, 1]
type = Helper
trigger1 = MoveHit
trigger1 = P2StateType = S
name = "Flammes"
postype = P2
pos = 0, 0
Facing = -1
ID = 1000
StateNo = 1030
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 1000, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; P2 Burning
[Statedef 1030]
type = S
movetype = I
physics = N
anim = 1030
sprpriority = 4
ctrl = 0

[State 1030, 2]
type = PosSet
trigger1 = 1
X = Floor(PlayerID(parent,var(0)), Pos X)
Y = Floor(PlayerID(parent,var(0)), Pos Y)

[State 1030, 6]
type = ChangeAnim
trigger1 = Time = 15
value = 1035

[State 1030, 6]
type = DestroySelf
trigger1 = anim = 1035
trigger1 = AnimTime = 0
trigger2 = P2stateno = 0 || P2stateno = 5040 || (P2stateno = [5201, 5210]) || P2stateno = 5120

;---------------------------------------------------------------------------
; Enryu Haibi 2
[Statedef 1100]
type = S
movetype= A
physics = S
anim = 1100
ctrl = 0
sprpriority = 3
poweradd = 90

[State 1100, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 10, 21
channel = 0

[State 1100, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 15, 11
channel = 1

[State 1100, 2]
type = Width
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 4, < 0
trigger2 = AnimElem = 16, >= 0
trigger2 = AnimElem = 17, < 0
value = 20, 0

[State 1100, 2]
type = Width
trigger1 = AnimElem = 4, >= 0
trigger1 = AnimElem = 16, < 0
value = 30, 0

[State 1100, 2]
type = PlayerPush
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 11, < 0
value = 0

[State 1100, 2]
type = VelSet
trigger1 = AnimElem = 3
x = 20

[State 1100, 2]
type = VelAdd
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 11, < 0
x = 1.2

[State 1100, 3]
type = Explod
trigger1 = AnimElem = 6, = 1
anim = 1120
pos = 0, 0
postype = P1
bindtime = 14
removetime = 19
sprpriority = 4
removeongethit = 1
ownpal = 1
ignorehitpause = 0

[State 1100, 1]
type = HitDef
trigger1 = Time = 0
attr = S, SA
damage = 111, 11
getpower = 560, 280
givepower = 90, 0
animtype = Hard
guardflag = M
hitflag = MA
priority = 5, Hit
pausetime = 12, 12
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, IfElse((AnimElem = 4), -67, IfElse((AnimElem = 13), -67, -55))
hitsound = S20, 3
guardsound = S25, 0
ground.type = High
ground.slidetime = 18
ground.hittime  = 26
ground.velocity = -4.5
guard.velocity = -2.5
air.velocity = -3,-9
air.hittime = 8
palfx.time = IfElse((P2StateType = S), 33, 0)
palfx.add = 112,-88,-255
palfx.color = 0
persistent = 0

[State 1100, 3]
type = Explod
trigger1 = AnimElem = 14
anim = 1010
pos = 0, 0
postype = P1
bindtime = 1
removetime = 16
sprpriority = 4
removeongethit = 1
ownpal = 1
ignorehitpause = 1

[State 1100, 1]
type = VarSet
trigger1 = MoveHit
trigger1 = P2StateType = S
trigger1 = !var(0)
var(0) = EnemyNear, ID
ignorehitpause = 1

[State 1100, 1]
type = Helper
trigger1 = MoveHit
trigger1 = P2StateType = S
name = "Flammes"
postype = P2
pos = 0, 0
Facing = -1
ID = 1000
stateno = 1130
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 1100, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; P2 Burning
[Statedef 1130]
type = S
movetype = I
physics = N
anim = 1030
sprpriority = 4
ctrl = 0

[State 1130, 2]
type = PosSet
trigger1 = 1
X = Floor(PlayerID(parent,var(0)), Pos X)
Y = Floor(PlayerID(parent,var(0)), Pos Y)

[State 1130, 6]
type = ChangeAnim
trigger1 = Time = 10
value = 1035

[State 1130, 6]
type = DestroySelf
trigger1 = anim = 1035
trigger1 = AnimTime = 0
trigger2 = P2stateno = 0 || P2stateno = 5040 || (P2stateno = [5201, 5210]) || P2stateno = 5120
trigger3 = P2StateType = A

;---------------------------------------------------------------------------
; Enryu Haibi Sequence
[Statedef 1200]
type = S
movetype= A
physics = S
anim = 1200
ctrl = 0
sprpriority = 3
facep2 = 1
poweradd = 90

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 10
value = 10, 22
channel = 0

[State 1200, 1]
type = PlaySnd
trigger1 = AnimElem = 12
value = 15, 13
channel = 1

[State 1200, 2]
type = Width
trigger1 = AnimElem = 4, >= 0
trigger1 = AnimElem = 5, < 0
trigger2 = AnimElem = 13, >= 0
trigger2 = AnimElem = 14, < 0
value = 20, 0

[State 1200, 2]
type = Width
trigger1 = AnimElem = 5, >= 0
trigger1 = AnimElem = 13, < 0
value = 30, 0

[State 1200, 2]
type = VelSet
trigger1 = AnimElem = 4, >= 0
trigger1 = AnimElem = 8, < 0
x = 5

[State 1200, 2]
type = VelSet
trigger1 = AnimElem = 8, >= 0
trigger1 = AnimElem = 12, < 0
x = 9

[State 1200, 1]
type = HitDef
trigger1 = AnimElem = 10
attr = S, SA
damage = 57, 5
getpower = 375, 185
givepower = 90, 0
animtype = Back
guardflag = M
hitflag = MA
priority = 5, Hit
pausetime = 10, 10
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, 80
hitsound = S20, 4
guardsound = S25, 1
ground.type = High
ground.slidetime = 18
ground.hittime  = 26
ground.velocity = -3, -10
guard.velocity = -2
fall = 1
air.velocity = -3,-10
air.hittime = 8
palfx.time = IfElse((P2StateType = S), 70, 0)
palfx.add = 112,-88,-255
palfx.color = 0
persistent = 0

[State 1200, 3]
type = Explod
trigger1 = AnimElem = 10
anim = 1210
pos = 0, 0
postype = P1
bindtime = -1
removetime = 32
sprpriority = 4
removeongethit = 1
ownpal = 1
ignorehitpause = 1

[State 1200, 3]
type = Explod
trigger1 = AnimElem = 12, = 0
anim = 1220
pos = 90, -48
postype = P1
bindtime = 1
removetime = 22
sprpriority = 5
removeongethit = 1
ownpal = 1
ignorehitpause = 0

[State 1200, 3]
type = Explod
trigger1 = AnimElem = 12, = 2
anim = 1220
pos = 75, -96
postype = P1
bindtime = 1
removetime = 22
sprpriority = 5
removeongethit = 1
ownpal = 1
ignorehitpause = 0

[State 1200, 3]
type = Explod
trigger1 = AnimElem = 12, = 4
anim = 1220
pos = 140, -82
postype = P1
bindtime = 1
removetime = 22
sprpriority = 5
removeongethit = 1
ownpal = 1
ignorehitpause = 0

[State 1200, 1]
type = VarSet
trigger1 = MoveHit
trigger1 = P2StateType = S
trigger1 = !var(0)
var(0) = EnemyNear, ID
ignorehitpause = 1
persistent = 0

[State 1200, 1]
type = Helper
trigger1 = P2StateType = S
trigger1 = MoveHit
name = "Flammes"
postype = P2
pos = 0, 0
Facing = -1
ID = 1000
stateno = 341
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Ryu Tsuisen
[Statedef 1300]
type = S
movetype= A
physics = S
anim = 1300
ctrl = 0
sprpriority = 3
poweradd = 90

[State 1300, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 15, 5
channel = 5

[State 1300, 1]
type = PlaySnd
trigger1 = AnimElem = 11
value = 10, 24
channel = 0

[State 1300, 1]
type = PlaySnd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 13
value = 15, 11
channel = 1

[State 1300, 1]
type = PosAdd
trigger1 = 1
x = IfElse((AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 6), 6, IfElse((AnimElem = 5), 12, 0))

[State 1300, 2]
type = VelSet
trigger1 = AnimElem = 7
x = 3
y = -6

[State 1300, 2]
type = StateTypeSet
trigger1 = AnimElem = 7
statetype = A
physics = A

[State 1300, 3]
type = Explod
trigger1 = AnimElem = 9
anim = 1302
pos = 52, -88
postype = P1
bindtime = 1
removetime = 16
sprpriority = 4
removeongethit = 1
ownpal = 1
ignorehitpause = 1

[State 1300, 3]
type = Explod
trigger1 = AnimElem = 13
anim = 1303
pos = -12, 38
postype = P1
bindtime = 1
removetime = 16
sprpriority = 4
removeongethit = 1
ownpal = 1
ignorehitpause = 1

[State 1300, 1]
type = HitDef
trigger1 = AnimElem = 8 && P2StateType = A
trigger2 = AnimElem = 9 && !MoveHit
trigger3 = AnimElem = 10
attr = S, SA
damage = 39, 3
getpower = 75, 40
givepower = 45, 0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 5, Hit
pausetime = 4, 4
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, IfElse((AnimElem = 8), -123, IfElse((AnimElem = 9), -70, -10))
hitsound = S20, var(9)
guardsound = S25, 0 + (Random > 499)
ground.type = High
ground.slidetime = 14
ground.hittime = 22
ground.velocity = -2.5
guard.velocity = -2
air.velocity = IfElse((AnimElem = 10), -3, -2), IfElse((AnimElem = 10), -10, -9)
airguard.velocity = -5,-5
air.hittime = 48

[State 1300, 2]
type = VelAdd
trigerall = MoveHit
trigger1 = AnimElem = 11, >= 0
trigger1 = AnimElem = 14, < 0
x = -.25

[State 1300, 1]
type = HitDef
trigger1 = AnimElem = 13
attr = S, SA
damage = 39, 3
getpower = 75, 40
givepower = 45, 0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 5, Hit
pausetime = 4, 4
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, -22
hitsound = S20, var(9)
guardsound = S25, 0 + (Random > 499)
ground.type = High
ground.slidetime = 14
ground.hittime  = 22
ground.velocity = -2, -8
guard.velocity = -3
air.velocity = -3,-10
airguard.velocity = -5,-5
air.hittime = 50
fall = 1
air.fall = 1
palfx.time = 50
palfx.add = 112,-88,-255
palfx.color = 0

[State 1300, 1]
type = VarSet
trigger1 = AnimElem = 8, >= 0 && MoveContact
trigger1 = command = "RyuTsuisen"
trigger1 = !var(10)
var(10) = 1
ignorehitpause = 1

[State 1300, 1]
type = VarSet
trigger1 = AnimElem = 13 && MoveHit
trigger1 = !var(0)
var(0) = EnemyNear, ID
ignorehitpause = 1

[State 1300, 1]
type = Helper
trigger1 = AnimElem = 13 && MoveHit
name = "Flammes"
postype = P2
pos = 0, 0
Facing = -1
ID = 1000
stateno = 1351
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 1300, 1]
type = ChangeState
triggerall = P2Life > 0
trigger1 = AnimElem = 13, >= 0 && MoveContact
trigger1 = command = "RyuTsuisen"
trigger2 = var(10)
value = 1350
ctrl = 0

[State 1300, 3]
type = Gravity
trigger1 = AnimElem = 14, > 0

[State 1300, 2]
type = StateTypeSet
trigger1 = AnimElem = 14
physics = N

[State 1300, 2]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -1
value = 1301
ctrl = 0

;---------------------------------------------------------------------------
; Ryu Tsuisen  & Ryu Shousen Land
[Statedef 1301]
type = U
ctrl = 0
anim = 1301

[State 1301, 1]
type = PlaySnd
trigger1 = Time = 0
value = 15, 6
channel = 5

[State 1301, 2]
type = StateTypeSet
trigger1 = Time = 0
statetype = S
movetype = I
physics = S

[State 1301, 3]
type = VelSet
trigger1 = AnimElem = 1
y = 0
x = 0

[State 1301, 4]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 1301, 1]
type = PosAdd
trigger1 = AnimElem = 1
x = 29

[State 1301, 5]
type = ChangeState
triggerall = command = "holdup" && command = "a"
trigger1 = var(7) = 2
value = 260

[State 1301, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Ryu Tsuisen & Ryu Shousen Sequence
[Statedef 1350]
type = A
movetype= A
physics = A
anim = 1350
ctrl = 0
velset = 3, -7.5
sprpriority = 3
poweradd = 90

[State 1350, 1]
type = PlaySnd
trigger1 = var(7) = 2
trigger1 = AnimElem = 3
value = 10, 18
channel = 0

[State 1350, 1]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
value = 15, 11
channel = 1

[State 1350, 1]
type = VarSet
trigger1 = AnimElem = 1
trigger1 = var(10) = 1
var(10) = 0

[State 1350, 3]
type = VarAdd
triggerall = AnimElem = 3
trigger1 = var(7) = 1
trigger2 = var(7) = 2
var(7) = 1

[State 1350, 3]
type = VarAdd
trigger1 = AnimElem = 4
trigger1 = PrevStateNo = 1300
var(7) = 1

[State 1350, 3]
type = VarAdd
trigger1 = AnimElem = 4
trigger1 = PrevStateNo = 1400
var(7) = 2

[State 1350, 3]
type = Explod
trigger1 = AnimElem = 4
anim = 1302
pos = 52, -88
postype = P1
bindtime = 1
removetime = 16
sprpriority = 4
removeongethit = 1
ownpal = 1
ignorehitpause = 1

[State 1350, 3]
type = Explod
trigger1 = AnimElem = 8
anim = 1303
pos = -12, 38
postype = P1
bindtime = 1
removetime = 16
sprpriority = 4
removeongethit = 1
ownpal = 1
ignorehitpause = 1

[State 1350, 1]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
attr = A, SA
damage = 18, 1
getpower = 75, 40
givepower = 45, 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 4, 4
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, IfElse((AnimElem = 8), -123, IfElse((AnimElem = 9), -70, -10))
hitsound = S20, var(9)
guardsound = S25, 0 + (Random > 499)
ground.type = High
ground.slidetime = 14
ground.hittime = 22
ground.velocity = -2.5
guard.velocity = -2
air.velocity = -2, -7.5
airguard.velocity = -5,-5
air.hittime = 48
palfx.time = 50
palfx.add = 112,-88,-255
palfx.color = 0

[State 1350, 2]
type = VelAdd
trigger1 = AnimElem = 6, >= 0
trigger1 = AnimElem = 9, < 0
x = -.3

[State 1350, 1]
type = HitDef
trigger1 = AnimElem = 8
attr = A, SA
damage = 18, 1
getpower = 75, 40
givepower = 45, 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 4, 4
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, -22
hitsound = S20, var(9)
guardsound = S25, 0 + (Random > 499)
ground.type = High
ground.slidetime = 14
ground.hittime  = 22
ground.velocity = -2, -8
guard.velocity = -3
air.velocity = -3, IfElse((var(7) = 2), 10, -7.5)
airguard.velocity = -5,-5
air.hittime = 50
fall = 1
air.fall = 1
palfx.time = 50
palfx.add = 112,-88,-255
palfx.color = 0

[State 1350, 1]
type = VarSet
trigger1 = AnimElem = 4, >= 0 && MoveContact
trigger1 = command = "RyuTsuisen"
trigger1 = !var(10)
var(10) = 1
ignorehitpause = 1

[State 1350, 1]
type = ChangeState
triggerall = var(7) < 2 && P2Life > 0
trigger1 = AnimElem = 8, > 0 && MoveContact
trigger1 = command = "RyuTsuisen"
trigger2 = var(10)
value = 1350
ctrl = 0

[State 1350, 3]
type = Gravity
trigger1 = AnimElem = 9, > 0

[State 1350, 2]
type = StateTypeSet
trigger1 = AnimElem = 9
physics = N

[State 1350, 2]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -1
value = 1301
ctrl = 0

;---------------------------------------------------------------------------
; P2 Burning
[Statedef 1351]
type = A
movetype = I
physics = N
anim = 1030
sprpriority = 4
ctrl = 0

[State 1351, 2]
type = PosSet
trigger1 = 1
X = Floor(PlayerID(parent,var(0)), Pos X)
Y = Floor(PlayerID(parent,var(0)), Pos Y)

[State 1351, 1]
type = PlaySnd
triggerall = P2stateno = 5100
trigger1 = root, var(7) = 2
value = 15, 9
channel = 1

[State 1351, 3]
type = Explod
triggerall = P2stateno = 5100
trigger1 = root, var(7) = 2
trigger2 = root, stateno = 380
anim = 1351
pos = 0, 0
postype = P2
bindtime = 1
removetime = 20
sprpriority = 3
removeongethit = 0
ownpal = 1
persistent = 0

[State 1351, 6]
type = ChangeAnim
trigger1 = P2stateno = 5100
value = 1035

[State 1351, 6]
type = DestroySelf
trigger1 = anim = 1035
trigger1 = AnimTime = 0
trigger2 = P2stateno = 0 || P2stateno = 5040 || (P2stateno = [5201, 5210]) || P2stateno = 5120

;---------------------------------------------------------------------------
; Ryu Shousen
[Statedef 1400]
type = A
movetype= A
physics = A
anim = 1350
ctrl = 0
sprpriority = 3
poweradd = 90

[State 1400, 1]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
value = 15, 11
channel = 1

[State 1400, 3]
type = VelAdd
trigger1 = 1
y = -.3

[State 1400, 3]
type = Explod
trigger1 = AnimElem = 4
anim = 1302
pos = 52, -88
postype = P1
bindtime = 1
removetime = 16
sprpriority = 4
removeongethit = 1
ownpal = 1
ignorehitpause = 1

[State 1400, 3]
type = Explod
trigger1 = AnimElem = 8
anim = 1303
pos = -12, 38
postype = P1
bindtime = 1
removetime = 16
sprpriority = 4
removeongethit = 1
ownpal = 1
ignorehitpause = 1

[State 1400, 1]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
attr = A, SA
damage = 24, 2
getpower = 75, 40
givepower = 45, 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 4, 4
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, IfElse((AnimElem = 8), -123, IfElse((AnimElem = 9), -70, -10))
hitsound = S20, var(9)
guardsound = S25, 0 + (Random > 499)
ground.type = High
ground.slidetime = 14
ground.hittime = 22
ground.velocity = -2, -8
guard.velocity = -2
air.velocity = -2, -8
airguard.velocity = -5,-5
air.hittime = 48
fall = 1
air.fall = 1
palfx.time = 50
palfx.add = 112,-88,-255
palfx.color = 0

[State 1400, 1]
type = HitDef
trigger1 = AnimElem = 8
attr = A, SA
damage = 30, 3
getpower = 75, 40
givepower = 45, 0
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 5, Hit
pausetime = 4, 4
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, -22
hitsound = S20, var(9)
guardsound = S25, 0 + (Random > 499)
ground.type = High
ground.slidetime = 14
ground.hittime  = 22
ground.velocity = -2, -8
guard.velocity = -3
air.velocity = -2,-8
airguard.velocity = -5,-5
air.hittime = 50
fall = 1
air.fall = 1
palfx.time = 50
palfx.add = 112,-88,-255
palfx.color = 0

[State 1400, 1]
type = VarSet
trigger1 = AnimElem = 4, >= 0 && MoveContact
trigger1 = command = "RyuTsuisen"
trigger1 = !var(10)
var(10) = 1
ignorehitpause = 1

[State 1400, 1]
type = VarSet
trigger1 = MoveHit
trigger1 = !var(0)
var(0) = EnemyNear, ID
ignorehitpause = 1

[State 1400, 1]
type = Helper
trigger1 = MoveHit
name = "Flammes"
postype = P2
pos = 0, 0
Facing = -1
ID = 1000
stateno = 1351
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 1400, 1]
type = ChangeState
triggerall = P2Life > 0
trigger1 = AnimElem = 8, >= 0 && MoveContact
trigger1 = command = "RyuTsuisen"
trigger2 = var(10)
value = 1350
ctrl = 0

[State 1400, 3]
type = Gravity
trigger1 = AnimElem = 9, > 0

[State 1400, 2]
type = StateTypeSet
trigger1 = AnimElem = 9
physics = N

[State 1400, 3]
type = VelAdd
trigger1 = AnimElem = 9, >= 4
y = .3

[State 1400, 2]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -1
value = 1301
ctrl = 0

;---------------------------------------------------------------------------
; Muei Kyaku Try
[Statedef 1500]
type = A
movetype= A
physics = N
anim = 1500
ctrl = 0
velset = 0, 0
sprpriority = 3
poweradd = 90

[State 1500, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 10, 20
channel = 0
persistent = 0

[State 1500, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 15, 12
channel = 1
persistent = 0

[State 1500, 2]
type = VelSet
trigger1 = Time = 10
x = .5
y = .5

[State 1500, 2]
type = VelMul
trigger1 = Time >= 11
x = 1.175
y = 1.175

[State 1500, 1]
type = HitDef
trigger1 = Time = 0
attr = A, SA
damage = 30, 3
getpower = 75, 40
givepower = 45, 0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 8, 8
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, 15
hitsound = S20, 7
guardsound = S25, 1
ground.type = High
ground.slidetime = 12
ground.hittime = 18
ground.velocity = -3
guard.velocity = -4
air.velocity = -3, -9
airguard.velocity = -5,-5
air.hittime = 8
p1stateno = 1550

[State 1500, 2]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -10
value = 1501
ctrl = 0

;---------------------------------------------------------------------------
; Muei Kyaku Try Land
[Statedef 1501]
type = U
ctrl = 0
anim = 1501

[State 1501, 1]
type = PlaySnd
trigger1 = Time = 0
value = 15, 6
channel = 5

[State 1501, 2]
type = StateTypeSet
trigger1 = Time = 0
statetype = S
movetype = I
physics = S

[State 1501, 3]
type = VelSet
trigger1 = AnimElem = 1
y = 0
x = 0

[State 1501, 4]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 1501, 1]
type = PosAdd
trigger1 = AnimElem = 2
x = 29

[State 1501, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Muei Kyaku MoveHit Sequence
[Statedef 1550]
type = A
movetype= A
physics = N
anim = 1550
ctrl = 0
velset = 1.25, 1.25
sprpriority = 3
poweradd = 90

[State 1550, 1]
type = PlaySnd
trigger1 = AnimElem = 5 || AnimElem = 7
value = 15, 3

[State 1550, 1]
type = HitDef
trigger1 = AnimElem = 4 || AnimElem = 6
attr = A, SA
damage = 18, 1
getpower = 75, 40
givepower = 45, 0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 4, 4
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, IfElse((AnimElem = 4), -30, -40)
hitsound = S20, var(9)
guardsound = S25, 0 + (Random > 499)
ground.type = Low
ground.slidetime = 12
ground.hittime = 18
ground.velocity = -3
guard.velocity = -4
air.velocity = -3, -9
airguard.velocity = -5,-5
air.hittime = 8

[State 1550, 2]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= 20
value = 1551
ctrl = 0

;---------------------------------------------------------------------------
; Muei Kyaku MoveHit Sequence Land
[Statedef 1551]
type = U
ctrl = 0
anim = 1551

[State 1551, 1]
type = PlaySnd
trigger1 = Time = 0
value = 15, 6
channel = 5

[State 1551, 2]
type = StateTypeSet
trigger1 = Time = 0
statetype = C
movetype = I
physics = C

[State 1551, 3]
type = VelSet
trigger1 = AnimElem = 2
y = 0
x = 0

[State 1551, 4]
type = PosSet
trigger1 = AnimElem = 2
y = 0

[State 1551, 1]
type = PosAdd
trigger1 = AnimElem = 2
x = 29

[State 1551, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Ougi Enryu Tenshin
[Statedef 3000]
type = S
movetype= A
physics = S
ctrl = 0
anim = 3000
sprpriority = 2
poweradd = IfElse(Life > 200, -3000, 0)

[State 3000, 4]
type = ChangeAnim
triggerall = Time = 0
trigger1 = PrevStateNo = 1000
trigger2 = PrevStateNo = 1100
value = 3001

[State 3000, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 10, 28
channel = 0

[State 3000, 1]
type = PlaySnd
trigger1 = AnimElem = 8
value = 15, 20
channel = 1

[State 3000, 1]
type = PlaySnd
trigger1 = AnimElem = 9
value = 15, 21
channel = 2

[State 3000, 2]
type = Width
trigger1 = AnimElem = 13, >= 0
trigger1 = AnimElem = 13, <= 1
value = 20, 0

[State 3000, 1]
type = HitDef
triggerall = P2StateType = A
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8
attr = S, HA
damage = IfElse((AnimElem = 7), 63, 114), IfElse((AnimElem = 7), 6, 3)
getpower = 0, 0
givepower = 90, 0
animtype = Back
hitflag = AF
priority = 4, Hit
pausetime = 4, 4
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, -90
hitsound = S20, 3
guardsound = S25, 1
air.type = High
air.velocity = -3,-12
air.hittime = 80
fall = 1
air.fall = 1
palfx.time = 78
palfx.add = 112,-88,-255
palfx.color = 0

[State 3000, 1]
type = VarSet
triggerall = MoveHit
triggerall = !var(0)
triggerall = P2StateType = A
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8
var(0) = EnemyNear, ID
ignorehitpause = 1

[State 3000, 1]
type = Helper
triggerall = MoveHit
triggerall = P2StateType = A
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8
name = "Flammes"
postype = P2
pos = 0, 0
Facing = -1
ID = 1000
stateno = 1351
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 3000, 1]
type = HitDef
trigger1 = P2StateType != A
trigger1 = AnimElem = 7
attr = S, HA
damage = 63, 3
getpower = 0, 0
givepower = 90, 0
animtype = Back
guardflag = M
hitflag = M
priority = 4, Hit
pausetime = 4, 4
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, -90
hitsound = S20, 3
guardsound = S25, 1
guard.velocity = -3
forcestand = 1
p2stateno = 3050

[State 3000, 2]
type = AssertSpecial
trigger1 = P2StateType != A && MoveHit
trigger1 = AnimElem = 8, = 0 || AnimElem = 8, = 2
trigger1 = anim = 3000
flag = nobg
flag2 = nofg
ignorehitpause = 1

[State 3000, 1]
type = Explod
triggerall = P2StateType != A && MoveHit
triggerall = AnimElem = 8, = 0 || AnimElem = 8, = 2
trigger1 = anim = 3000
anim = 237
pos = 0, 0
facing = 1
postype = Left
scale = 1.05263, 1.07142
bindtime = -1
removetime = 1
sprpriority = -5
removeongethit = 1
ownpal = 1
ignorehitpause = 1

[State 3000, 2]
type = AssertSpecial
trigger1 = P2StateType != A && MoveHit
trigger1 = AnimElem = 7, = 0 || AnimElem = 7, = 2
trigger1 = anim = 3001
flag = nobg
flag2 = nofg
ignorehitpause = 1

[State 3000, 1]
type = Explod
triggerall = P2StateType != A && MoveHit
triggerall = AnimElem = 7, = 0 || AnimElem = 7, = 2
trigger1 = anim = 3001
anim = 237
pos = 0, 0
facing = 1
postype = Left
scale = 1.05263, 1.07142
bindtime = -1
removetime = 1
sprpriority = -5
removeongethit = 1
ownpal = 1
ignorehitpause = 1

[State 3000, 2]
type = AssertSpecial
trigger1 = AnimElem = 8, >= 1
trigger1 = AnimElem = 8, <= 31
trigger1 = anim = 3001
flag = nobg
flag2 = nofg
ignorehitpause = 1

[State 3000, 1]
type = Explod
triggerall = AnimElem = 8, = 32
trigger1 = anim = 3001
anim = 237
pos = 0, 0
facing = 1
postype = Left
scale = 1.05263, 1.07142
bindtime = -1
removetime = 1
sprpriority = -5
removeongethit = 1
ownpal = 1
ignorehitpause = 1

[State 3000, 1]
type = Explod
triggerall = AnimElem = 8, = 1
trigger1 = anim = 3001
anim = 4600
pos = 0, 0
facing = 1
postype = Left
scale = 1.05263, 1.07142
bindtime = -1
removetime = 30
sprpriority = -5
removeongethit = 1
ownpal = 1
ignorehitpause = 1

[State 3000, 1]
type = Explod
trigger1 = AnimElem = 8
anim = 3005
pos = 5, -119
facing = 1
postype = P1
bindtime = 1
removetime = 25
sprpriority = 3
removeongethit = 1
ownpal = 1

[State 3000, 3]
type = Helper
trigger1 = AnimElem = 8
trigger1 = Anim = 3000
name = "fan"
ID = 3010
postype = P1
pos = 25, -127
facing = 1
keyctrl = 0
ownpal = 1
stateno = 3010
persistent = 0

[State 3000, 3]
type = Helper
trigger1 = AnimElem = 8, = 34
trigger1 = Anim = 3001
name = "fan"
ID = 3010
postype = P1
pos = 25, -127
facing = 1
keyctrl = 0
ownpal = 1
stateno = 3010
persistent = 0

[State 3000, 2]
type = PalFX
trigger1 = AnimElem = 13, = 0
time = 2
add = 30, 30, 30

[State 3000, 2]
type = PosAdd
trigger1 = AnimElem = 13, = 1
x = 22

[State 3000, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 3100
ctrl = 0

;---------------------------------------------------------------------------
; Ougi Enryu Tenshin Helper Fan
[Statedef 3010]
type = A
movetype = I
physics = A
anim = 3010
velset = 0, -7.5
sprpriority = 4
ctrl = 0

[State 3010, 2]
type = VelMul
trigger1 = Vel Y > 0
y = 1.25

[State 3010, 1]
type = Explod
trigger1 = AnimElem = 2, = 1
anim = 3011
pos = 0, 0
facing = 1
postype = P1
bindtime = -1
removetime = 22
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 3010, 1]
type = DestroySelf
trigger1 = Time = 24

;---------------------------------------------------------------------------
; Ougi Enryu Tenshin P2
[Statedef 3050]
type = S
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 3050, 1]
type = ChangeAnim
trigger1 = Time = 0
value = IfElse(SelfAnimExist(5180), 5180, 5300)

[State 3050, 1]
type = VelSet
trigger1 = Time = 0
x = IfElse((anim = 5180), -1.5, 0)

[State 3050,4]
type = SelfState
trigger1 = Time = 90
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Ougi Enryu Tenshin 2
[Statedef 3100]
type = S
movetype= A
physics = N
ctrl = 0
velset = 22, 0
anim = 3100
sprpriority = 4

[State 3100, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 10, 29
channel = 0

[State 3100, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 15, 14
channel = 1

[State 3100, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 15, 1
channel = 2

[State 3100, 2]
type = Width
trigger1 = AnimElem = 6, >= 0
trigger1 = AnimElem = 7, < 0
value = 30, 0

[State 3100, 2]
type = PlayerPush
trigger1 = AnimElem = 1, >= 0
trigger1 = AnimElem = 6, < 20
value = 0
ignorehitpause = 0

[State 3100, 2]
type = PalFX
trigger1 = AnimElem = 1, = 0
time = 48
add = 152, 8, -16

[State 3100, 4]
type = StateTypeSet
trigger1 = AnimElem = 5
physics = S

[State 3100, 3]
type = Explod
trigger1 = AnimElem = 1, = 1
trigger2 = AnimElem = 4, = 1
trigger3 = AnimElem = 5, = 10
anim = 1120
pos = 0, 0
postype = P1
bindtime = -1
removetime = 19
sprpriority = 5
removeongethit = 1
ownpal = 1
ignorehitpause = 0

[State 3100, 1]
type = Explod
trigger1 = AnimElem = 2
anim = 3105
pos = 160, 168
facing = 1
postype = Back
bindtime = -1
removetime = 10
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 3100, 1]
type = Explod
trigger1 = AnimElem = 5, = 10
anim = 3110
pos = -60, -30
facing = 1
postype = P1
bindtime = 1
removetime = 24
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 3100, 1]
type = Explod
trigger1 = AnimElem = 5, = 10
anim = 3110
pos = -250, -30
facing = 1
postype = P1
bindtime = 1
removetime = 24
sprpriority = 5
removeongethit = 1
ownpal = 1

[State 3100, 1]
type = HitDef
triggerall = P2StateType = A
trigger1 = Time = 0
attr = S, HA
damage = 228, 22
getpower = 0, 0
givepower = 90, 0
animtype = Back
hitflag = AF
priority = 4, Hit
pausetime = 14, 14
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, -40
hitsound = S20, 8
guardsound = S25, 1
air.type = High
air.velocity = -3,-11
air.hittime = 85
fall = 1
air.fall = 1
palfx.time = 82
palfx.add = 112,-88,-255
palfx.color = 0
persistent = 0
fall.envshake.time = 10
fall.envshake.freq = 60
fall.envshake.ampl = 6

[State 3100, 1]
type = HitDef
trigger1 = P2StateType != A
trigger1 = Time = 0
attr = S, HA
damage = 228, 22
getpower = 0, 0
givepower = 90, 0
animtype = DiagUp
guardflag = M
hitflag = M
priority = 4, Hit
pausetime = 14, 14
sparkno = S4010
guard.sparkno = S4500
sparkxy = -25, -40
hitsound = S20, 8
guardsound = S25, 1
ground.type = High
ground.hittime = 70
ground.velocity = 3, -12
guard.velocity = -3
forcestand = 1
facing = -1
fall = 1
air.fall = 1
palfx.time = 85
palfx.add = 112,-88,-255
palfx.color = 0
persistent = 0
fall.envshake.time = 6
fall.envshake.freq = 60
fall.envshake.ampl = 6

[State 3100, 1]
type = PlaySnd
trigger1 = MoveHit
value = 15, 15
channel = 3
ignorehitpause = 0
persistent = 0

[State 3100, 1]
type = Explod
trigger1 = P2StateType != A && MoveHit
anim = 3120
pos = 0, 0
facing = 1
postype = P2
bindtime = 1
removetime = 55
sprpriority = -1
removeongethit = 1
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 3100, 3]
type = Explod
trigger1 = P2StateType != A && MoveHit
anim = 3130
pos = -50, -85
postype = P2
bindtime = 1
removetime = 30
sprpriority = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 3100, 3]
type = Explod
trigger1 = P2StateType != A && MoveHit
anim = 3131
pos = 40, -100
postype = P2
bindtime = 1
removetime = 38
sprpriority = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 3100, 3]
type = Explod
trigger1 = P2StateType != A && MoveHit
anim = 3132
pos = -30, -130
postype = P2
bindtime = 1
removetime = 50
sprpriority = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 3100, 3]
type = Explod
trigger1 = P2StateType != A && MoveHit
anim = 3133
pos = 15, -165
postype = P2
bindtime = 1
removetime = 62
sprpriority = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 3100, 2]
type = BGPalFX
trigger1 = P2StateType != A && MoveHit
time = 80
add = -255, -255, -255
ignorehitpause = 1
persistent = 0

[State 3100, 1]
type = VarSet
trigger1 = MoveHit
trigger1 = !var(0)
var(0) = EnemyNear, ID
ignorehitpause = 1

[State 3100, 1]
type = Helper
trigger1 = MoveHit
name = "Flammes"
postype = P2
pos = 0, 0
Facing = -1
ID = 1000
stateno = 1351
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 3100, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hiougi Soten Muei Kyaku
[Statedef 3200]
type = S
movetype = A
physics = N
anim = 3200
sprpriority = 3
ctrl = 0
poweradd = -3000

[State 3200, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 10, 21
channel = 0

[State 3200, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 15, 21
channel = 2

[State 3200, 1]
type = PlaySnd
trigger1 = AnimElem = 14
value = 15, 12
channel = 3

[State 3200, 1]
type = Explod
trigger1 = AnimElem = 1
anim = 3205
pos = 21, -48
facing = 1
postype = P1
bindtime = 1
removetime = 25
sprpriority = 4
removeongethit = 1
ownpal = 1

[State 3200, 2]
type = PalFX
trigger1 = AnimElem = 5
time = 30
add = 40, 40, 40

[State 3200,2]
type = VelSet
trigger1 = AnimElem = 6
x = 15

[State 3200,2]
type = VelSet
trigger1 = AnimElem = 7
x = 21

[State 3200, 4]
type = StateTypeSet
trigger1 = AnimElem = 12
physics = S

[State 3200, 1]
type = HitDef
trigger1 = P2StateType != A
attr = S, HA
damage = 96, 6
getpower = 0, 0
givepower = 90, 0
animtype = Light
guardflag = M
hitflag = M
priority = 5, Hit
pausetime = 0, 3
sparkno = -1
guard.sparkno = -1
hitsound = S20, 8
guardsound = S25, 0
guard.velocity = -3
ground.type = High
ground.slidetime = 12
ground.hittime = 16
ground.velocity = -5
guard.velocity = -3
forcestand = 1
persistent = 0
numhits = 0
mindist = 70, 0
maxdist = 80, 0
p1stateno = 3300
kill = 0

[State 3200, 6]
type = ChangeState
trigger1 = MoveGuarded
value = 3250

[State 3200, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hiougi Soten Muei Kyaku MoveGuarded
[Statedef 3250]
type = S
movetype= I
physics = S
ctrl = 0
anim = 3250
sprpriority = 1

[State 3250, 2]
type = PalFX
trigger1 = AnimElem = 1
time = 1
add = 0, 0, 0

[State 3250,2]
type = VelSet
trigger1 = AnimElem = 1
x = -3

[State 3250, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hiougi Soten Muei Kyaku 2
[Statedef 3300]
type = S
movetype = A
physics = S
anim = 3300
sprpriority = 3
ctrl = 0

[State 3300, 1]
type = PlaySnd
trigger1 = AnimElem = 4 || AnimElem = 11 || AnimElem = 19 || AnimElem = 25 || AnimElem = 32 || AnimElem = 35
trigger2 = AnimElem = 38 || AnimElem = 46 || AnimElem = 51
value = 15, 2 + (Random > 499)
channel = 1

[State 3300, 1]
type = AfterImage
trigger1 = time = 0
time = 78
length = 3
paladd = -60, -80, -40
palbright = 0,0,0
palcontrast = 256,256,256
timeGap = 4
frameGap = 1

[State 3300,2]
type = VelSet
trigger1 = AnimElem = 1
x = 0

[State 3300, 2]
type = PalFX
trigger1 = AnimElem = 1
time = 1
add = 0, 0, 0

[State 3300, 2]
type = AssertSpecial
trigger1 = AnimElem = 1 || AnimElem = 5 || AnimElem = 6 || AnimElem = 12 || AnimElem = 13 || AnimElem = 20 || AnimElem = 21
trigger2 = AnimElem = 26 || AnimElem = 27 || AnimElem = 33 || AnimElem = 34 || AnimElem = 38 || AnimElem = 39
trigger3 = AnimElem = 40 || AnimElem = 41 || AnimElem = 46 || AnimElem = 47 || AnimElem = 51 || AnimElem = 52
trigger4 = AnimElem = 52, >= 2
trigger4 = AnimElem = 55, <= 2
flag = nobg
flag2 = nofg

[State 3300, 1]
type = Explod
trigger1 = AnimElem = 1 || AnimElem = 5 || AnimElem = 6 || AnimElem = 12 || AnimElem = 13 || AnimElem = 20 || AnimElem = 21
trigger2 = AnimElem = 26 || AnimElem = 27 || AnimElem = 33 || AnimElem = 34 || AnimElem = 38 || AnimElem = 39
trigger3 = AnimElem = 40 || AnimElem = 41 || AnimElem = 46 || AnimElem = 47 || AnimElem = 51 || AnimElem = 52
anim = 3210
pos = 0, 0
scale = 1.05263, 1.07142
facing = 1
postype = Left
bindtime = -1
removetime = 1
sprpriority = -5

[State 3300, 1]
type = PosAdd
trigger1 = 1
x = IfElse((AnimElem = 2), 4, IfElse((AnimElem = 15), -25, IfElse((AnimElem = 29), 14, IfElse((AnimElem = 31), 20, 0))))

[State 3300, 1]
type = PosAdd
trigger1 = 1
x = IfElse((AnimElem = 9) || (AnimElem = 49), 24, IfElse((AnimElem = 18) || (AnimElem = 25), 11, IfElse((AnimElem = 42), -19, 0)))

[State 3300, 1]
type = PosAdd
trigger1 = 1
x = IfElse((AnimElem = 43) || (AnimElem = 44) || (AnimElem = 45) || (AnimElem = 46), 7, IfElse((AnimElem = 47), 28, IfElse((AnimElem = 48), 18, 0)))

[State 3300, 1]
type = VelSet
trigger1 = AnimElem = 3
x = 3

[State 3300, 1]
type = VelSet
trigger1 = AnimElem = 25
trigger2 = AnimElem = 30
x = 2

[State 3300, 1]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 20
trigger3 = AnimElem = 26
attr = S, HA
damage = 9
getpower = 0
givepower = 90
animtype = Light
hitflag = M
priority = 5, Hit
pausetime = 0, 2
sparkno = S4010
sparkxy = -25, Ifelse((AnimElem = 5), -80, Ifelse((AnimElem = 20), -10, -5))
hitsound = S20, 7 + (Random > 499)
ground.type = Low
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = Ifelse((AnimElem = 20), -2, -3)
kill = 0

[State 3300, 1]
type = HitDef
trigger1 = AnimElem = 12
trigger2 = AnimElem = 33
trigger3 = AnimElem = 38
trigger4 = AnimElem = 39
trigger5 = AnimElem = 40
trigger6 = AnimElem = 46
attr = S, HA
damage = Ifelse((AnimElem = 12) || (AnimElem = 33) || (AnimElem = 46), 9, 6)
getpower = 0
givepower = 90
animtype = Light
hitflag = M
priority = 5, Hit
pausetime = 0, 2
sparkno = S4010
sparkxy = -25, Ifelse((AnimElem = 12), -75, Ifelse((AnimElem = 46), -85, Ifelse((AnimElem = 33) || (AnimElem = 38), -90, -60)))
hitsound = S20, 7 + (Random > 499)
ground.type = High
ground.slidetime = 10
ground.hittime  = 14
ground.velocity = Ifelse((AnimElem = 12) || (AnimElem = 40), -2, Ifelse((AnimElem = 46), -5, 0))
kill = 0

[State 3300, 1]
type = VelSet
trigger1 = AnimElem = 51
y = -6

[State 3300, 2]
type = StateTypeSet
trigger1 = AnimElem = 51
type = A
physics = A

[State 3300, 1]
type = HitDef
trigger1 = AnimElem = 51
trigger2 = AnimElem = 55
attr = A, HA
damage = IfElse((AnimElem = 51), 9, 0)
getpower = 0
givepower = 0
animtype = Light
hitflag = M
priority = 5, Hit
pausetime = 0, 2
sparkno = S4010
sparkxy = -25, IfElse((AnimElem = 51), -90, -40)
hitsound = S20, 7 + (Random > 499)
ground.type = High
ground.hittime  = 14
kill = 0

[State 3300, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 3350
ctrl = 0

;---------------------------------------------------------------------------
; Hiougi Soten Muei Kyaku 3
[Statedef 3350]
type = A
movetype = A
physics = N
anim = 3350
velset = .75, .5
sprpriority = 3
ctrl = 0

[State 3350, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 10, 30
channel = 0

[State 3350, 1]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 4 || AnimElem = 6 || AnimElem = 8 || AnimElem = 10 || AnimElem = 12
trigger2 = AnimElem = 15 || AnimElem = 17 || AnimElem = 19
value = 15, 3

[State 3350, 1]
type = AfterImage
trigger1 = time = 0
time = 54
length = 3
paladd = -60, -80, -40
palbright = 0,0,0
palcontrast = 256,256,256
timeGap = 4
frameGap = 1

[State 3350, 2]
type = AssertSpecial
trigger1 = AnimElem = 1, >= 0
trigger1 = AnimElem = 19, <= 1
flag = nobg
flag2 = nofg

[State 3350, 1]
type = HitDef
trigger1 = AnimElem = 1 || AnimElem = 5 || AnimElem = 9 || AnimElem = 13 || AnimElem = 16
attr = A, HA
damage = 12
getpower = 0
givepower = 0
animtype = Light
hitflag = M
priority = 5, Hit
pausetime = 0, 0
sparkno = S4010
sparkxy = -25, -25
hitsound = S20, 7 + (Random > 499)
ground.type = High
ground.hittime  = 14
ground.velocity = -6
numhits = 0
kill = 0

[State 3350, 1]
type = HitDef
trigger1 = AnimElem = 3 || AnimElem = 7 || AnimElem = 11 || AnimElem = 14 || AnimElem = 18
attr = A, HA
damage = 12
getpower = 0
givepower = 0
animtype = Light
hitflag = M
priority = 5, Hit
pausetime = 0, 0
sparkno = S4010
sparkxy = -25, -35
hitsound = S20, 7 + (Random > 499)
ground.type = Low
ground.hittime  = 14
ground.velocity = -6
numhits = 0
kill = 0

[State 3350, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 3400
ctrl = 0

;---------------------------------------------------------------------------
; Hiougi Soten Muei Kyaku 4
[Statedef 3400]
type = U
ctrl = 0
anim = 3400

[State 3400, 1]
type = PlaySnd
trigger1 = AnimElem = 13
value = 10, 31
channel = 0

[State 3400, 1]
type = PlaySnd
trigger1 = AnimElem = 5 || AnimElem = 7 || AnimElem = 15 || AnimElem = 17 || AnimElem = 24 || AnimElem = 26
value = 15, 3

[State 3400, 1]
type = PlaySnd
trigger1 = AnimElem = 26
value = 15, 16
channel = 1

[State 3400, 1]
type = PlaySnd
trigger1 = AnimElem = 26
value = 15, 9
channel = 2

[State 3400, 1]
type = AfterImage
trigger1 = time = 0
time = 115
length = 3
paladd = -60, -80, -40
palbright = 0,0,0
palcontrast = 256,256,256
timeGap = 4
frameGap = 1

[State 3400, 2]
type = StateTypeSet
trigger1 = Time = 0
statetype = S
movetype = A
physics = S

[State 3400, 3]
type = VelSet
trigger1 = AnimElem = 1
y = 0
x = 0

[State 3400, 4]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 3400, 1]
type = PosAdd
trigger1 = AnimElem = 1
x = 30

[State 3400, 2]
type = AssertSpecial
trigger1 = AnimElem = 1, >= 0
trigger1 = AnimElem = 40, <= 0
flag = nobg
flag2 = nofg

[State 3400, 1]
type = Explod
trigger1 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8
trigger2 = AnimElem = 15, >= 0
trigger2 = AnimElem = 18, <= 0
trigger3 = AnimElem = 24, >= 0
trigger3 = AnimElem = 25, <= 2
anim = 3210
pos = 0, 0
scale = 1.05263, 1.07142
facing = 1
postype = Left
bindtime = -1
removetime = 1
sprpriority = -5

[State 3400, 4]
type = StateTypeSet
trigger1 = AnimElem = 5
statetype = A
movetype= A
physics = N

[State 3400, 5]
type = VelSet
trigger1 = AnimElem = 5
y = -4

[State 3400, 1]
type = HitDef
trigger1 = AnimElem = 6 || AnimElem = 14
attr = A, HA
damage = 30
getpower = 0
givepower = 0
animtype = Hard
hitflag = MAF
priority = 5, Hit
pausetime = 0, 0
sparkno = S4010
sparkxy = -25, -80
hitsound = S20, 7 + (Random > 499)
ground.type = High
ground.hittime  = 14
ground.velocity = 0, -8
air.velocity = 0, -7
air.hittime = 30
fall = 1
air.fall = 1
numhits = 0
palfx.time = IfElse((AnimElem = 14), 50, 0)
palfx.add = 112,-88,-255
palfx.color = 0
kill = 0

[State 3400, 1]
type = VarSet
trigger1 = MoveHit && AnimElem = 14
trigger1 = !var(0)
var(0) = EnemyNear, ID
ignorehitpause = 1

[State 3400, 1]
type = Helper
trigger1 = MoveHit && AnimElem = 14
name = "Flammes"
postype = P2
pos = 0, 0
Facing = -1
ID = 1000
stateno = 1351
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 3400, 1]
type = HitDef
trigger1 = AnimElem = 23
attr = A, HA
damage = 129
getpower = 0
givepower = 0
animtype = DiagUp
hitflag = AF
priority = 5, Hit
pausetime = 0, 0
sparkno = S4010
sparkxy = -25, -80
hitsound = S20, 7 + (Random > 499)
air.type = High
air.velocity = -2, -9
air.hittime = 65
fall = 1
air.fall = 1
numhits = 0
palfx.time = 65
palfx.add = 112,-88,-255
palfx.color = 0

[State 3400, 1]
type = Helper
trigger1 = AnimElem = 4
name = "Snake"
postype = P2
pos = 0, 0
ID = 3450
stateno = 3450
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 3400, 3]
type = Explod
trigger1 = AnimElem = 7 || AnimElem = 8 || AnimElem = 9 || AnimElem = 15 || AnimElem = 16 || AnimElem = 17
trigger2 = AnimElem = 18 || AnimElem = 24 || AnimElem = 25 || AnimElem = 26 || AnimElem = 27
anim = 4010
pos = 0,-(Enemy, Const(size.height))
postype = P2
random = 10, 30
bindtime = 1
removetime = 14
sprpriority = 2
ownpal = 1

[State 3400, 3]
type = Explod
trigger1 = AnimElem = 5 || AnimElem = 23
anim = 371
pos = -31, -173
postype = P1
bindtime = 1
removetime = 16
sprpriority = 3
removeongethit = 1
ownpal = 1
ignorehitpause = 1

[State 3400, 3]
type = Explod
trigger1 = AnimElem = 7 || AnimElem = 25
anim = 372
pos = -44, -34
postype = P1
bindtime = 1
removetime = 16
sprpriority = 3
removeongethit = 1
ownpal = 1
ignorehitpause = 1

[State 3400, 3]
type = Explod
trigger1 = AnimElem = 9 || AnimElem = 27
anim = 373
pos = -71, -120
postype = P1
bindtime = 1
removetime = 16
sprpriority = 3
removeongethit = 1
ownpal = 1
ignorehitpause = 1

[State 3400, 5]
type = VelSet
trigger1 = AnimElem = 24
y = -1.5
x = -1

[State 3400, 5]
type = VelSet
trigger1 = AnimElem = 29
y = .2
x = -2

[State 3400, 5]
type = VelMul
trigger1 = AnimElem = 30, >= 0
trigger1 = AnimElem = 40, <= 0
y = 1.1

[State 3400, 4]
type = StateTypeSet
trigger1 = AnimElem = 40
physics = A

;---------------------------------------------------------------------------
; Fire Snake
[Statedef 3450]
type = S
movetype = I
physics = N
anim = 3450
sprpriority = 2
ctrl = 0

[State 3450, 1]
type = Explod
trigger1 = Time = 0
anim = 3460
pos = 16, -27
postype = P2
bindtime = 1
removetime = 100
sprpriority = 3
removeongethit = 1
ownpal = 1
ignorehitpause = 0

[State 3450, 1]
type = Explod
trigger1 = Time = 0
anim = 3470
pos = -16, -62
postype = P2
bindtime = 1
removetime = 107
sprpriority = 1
removeongethit = 1
ownpal = 1
ignorehitpause = 0

[State 3450, 1]
type = Explod
trigger1 = Time = 0
anim = 3480
pos = 14, -70
postype = P2
bindtime = 1
removetime = 115
sprpriority = 3
removeongethit = 1
ownpal = 1
ignorehitpause = 0

[State 3450, 1]
type = Explod
trigger1 = Time = 0
anim = 3490
pos = -16, -109
postype = P2
bindtime = 1
removetime = 131
sprpriority = 3
removeongethit = 1
ownpal = 1
ignorehitpause = 0

[State 3450, 1]
type = Explod
trigger1 = Time = 0
anim = 3500
pos = 11, -98
postype = P2
bindtime = 1
removetime = 132
sprpriority = 3
removeongethit = 1
ownpal = 1
ignorehitpause = 0

[State 3450, 1]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; P2 Dead
[Statedef 4950]
type = A
movetype = I
physics = N
anim = 4949
sprpriority = -5
ctrl = 0

[State 4950, 1]
type = Explod
triggerall = !NumExplod(4950)
trigger1 = root, HitDefAttr = SCA, NA, NP, NT, SA
trigger2 = root, stateno = 810
anim = 4950
pos = 0, 0
scale = 1.05263, 1.07142
facing = 1
postype = Left
bindtime = -1
removetime = 38
ID = 4950
sprpriority = -5
ignorehitpause = 1
persistent = 0

[State 4950, 2]
type = AssertSpecial
trigger1 = NumExplod(4950)
flag = nobg
flag2 = nofg

[State 4950, 1]
type = DestroySelf
trigger1 = Time = 38


;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

[State -2, P2 Dead]
type = Helper
triggerall = RoundState = 3
triggerall = !NumHelper(4950)
triggerall = !Lose
trigger1 = NumEnemy = 1
trigger1 = WinKO
trigger2 = NumEnemy = 2
trigger2 = WinKO
trigger2 = (stateno = [200,1500]) && MoveContact
name = "P2Dead"
ID = 4950
stateno = 4950
ownpal = 1
persistent = 0
ignorehitpause = 1

[State -2, touché pendant un AfterImage]
type = AfterImageTime
trigger1 = Movetype = H
time = 0

[State -2, se relève]
type = PosAdd
triggerall = Anim = 5121
trigger1 = AnimElem = 3
x = -31

[State -2, Turn]
type = PosAdd
trigger1 = Anim = 5
trigger1 = AnimElem = 3
trigger2 = Anim = 6
trigger2 = AnimElem = 3
x = -20

[State -2, Var]
type = VarSet
trigger1 = var(1)
trigger1 = P2StateType != A
var(1) = 0

[State -2, Var]
type = VarSet
triggerall = !var(1)
trigger1 = P2StateType = A && MoveHit
trigger1 = stateno = [200, 225]
var(1) = 1

[State -2, Var]
type = VarSet
trigger1 = var(5)
trigger1 = P2StateType != L
var(5) = 0

[State -2, Var]
type = VarSet
triggerall = !var(5)
trigger1 = P2StateType = L
trigger1 = stateno = 220 && MoveHit
var(5) = 1

[State -2, Flammes]
type = VarSet
trigger1 = !NumHelper(1000)
trigger1 = var(0)
var(0) = 0

[State -2, Var]
type = VarSet
trigger1 = var(10)
trigger1 = (stateno != [1300, 1400])
var(10) = 0

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

[State -3, Dead Snd]
type = PlaySnd
trigger1 = MatchOver
trigger1 = Life = 0 && Time = 20
trigger1 = StateType = A
value = 11,1
channel = 0
persistent = 0
ignorehitpause = 0

[State -3, Hit Snd]
type = VarRandom
trigger1 = 1
v = 9
range = 0, 5

[State -3, Voice Hit]
type = VarRandom
trigger1 = 1
v = 2
range = 0, 3

[State -3, Voice GetHit]
type = VarRandom
trigger1 = 1
v = 3
range = 0, 3

[State -3, Snd GetHit]
type = PlaySnd
trigger1 = (stateno != [120,155])
trigger1 = MoveType = H && Time = 0
value = 5, var(3)
channel = 0
ignorehitpause = 1
persistent = 0

[State -3, Draw & LoseTime Snd]
type = PlaySnd
trigger1 = stateno = 170 && Time = 0
trigger2 = stateno = 175 && AnimElem = 10
value = 10, 17
channel = 0

[State -3, Jump Snd]
type = PlaySnd
trigger1 = stateno = 50 && Time = 0
value = 15, 5
channel = 5

[State -3, Run StopSnd]
type = StopSnd
trigger1 = stateno != 100
channel = 6

[State -3, Ryu Tsuisen]
type = VarSet
trigger1 = stateno != [1300, 1400]
var(7) = 0

[State -3, Dizzy]
type = VarAdd
trigger1 = MoveType = H
var(4) = GetHitVar(Damage)

[State -3, Dizzy]
type = VarAdd
trigger1 = MoveType != H
trigger1 = var(4) > 0
var(4) = -1

[State -3, Dizzy]
type = ChangeState
trigger1 = var(4) >= 600
trigger1 = alive
trigger1 = StateType = S
trigger1 = GetHitVar(HitTime) = 0
value = 5300

[State -3, Calmos]
trigger1 = 1
trigger1 = !alive
type = NotHitBy
value = SCA
