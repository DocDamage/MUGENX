;================================================================================================
;
; RERA'S BASIC MOVES STATES
;
;================================================================================================

; Stance
;-------

[Statedef 0]
Type = S
MoveType = I
Physics = S
velset = 0,0

[State 0, sprite priority]
type = SprPriority
trigger1 = time = 0
value = ifelse(var(0)!=20, 0, 4)

[State 0, normal stance]
type = ChangeAnim
triggerall = var(0) = 0
triggerall = !win
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 0

[State 0, pre-win stance]
type = ChangeAnim
triggerall = var(0) = 0
trigger1 = anim != 180 && win
value = 180

[State 0, Sikuruu turn]
type = ChangeAnim
triggerall = var(0) = 20
trigger1 = Anim != 8005 && Anim = 5
value = 8005

[State 0, Sikuruu stance]
type = ChangeAnim
triggerall = var(0) = 20
trigger1 = Anim != 8000 && Anim != 8005 && Anim != 5
trigger2 = Anim = 8005 && AnimTime = 0
value = 8000

[State 0, velset]
type = VelSet
trigger1 = Time = 0
y = 0

[State 0, velset] ; stop moving if low velocity or 4 ticks pass
type = VelSet
trigger1 = abs(vel x) < 2
trigger2 = Time = 4
x = 0

[State 0, go to sikuruu super state]
type = ChangeState
trigger1 = var(0) = 20
trigger1 = var(1) > 0
value = 8340 + var(1)



; Stand to Crouch
;----------------

[Statedef 10]
Type = C
MoveType = I
Physics = C

[State 10, sprite priority]
type = SprPriority
trigger1 = time = 0
value = ifelse(var(0)!=20, 0, 4)

[State 10, animation]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(var(0)=0, 10, 8010)

[State 10, vel mul]
type = VelMul
trigger1 = time = 0
x = .75

[State 10, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 11



; Crouching
;----------

[Statedef 11]
Type = C
MoveType = I
Physics = C
velset = 0,0

[State 11, sprite priority]
type = SprPriority
trigger1 = time = 0
value = ifelse(var(0)!=20, 0, 4)

[State 11, normal stance]
type = ChangeAnim
triggerall = var(0) = 0
trigger1 = Anim != 11 && Anim != 6
trigger2 = Anim = 6 && AnimTime = 0
value = 11

[State 0, Sikuruu turn]
type = ChangeAnim
triggerall = var(0) = 20
trigger1 = Anim != 8006 && Anim = 6
value = 8006

[State 0, Sikuruu stance]
type = ChangeAnim
triggerall = var(0) = 20
trigger1 = Anim != 8011 && Anim != 8006 && Anim != 6
trigger2 = Anim = 8006 && AnimTime = 0
value = 8011



; Crouch to Stand
;----------------

[Statedef 12]
Type = S
MoveType = I
Physics = S
velset = 0,0

[State 12, sprite priority]
type = SprPriority
trigger1 = time = 0
value = ifelse(var(0)!=20, 0, 4)

[State 12, animation]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(var(0)=0, 12, 8012)

[State 12, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0



; Walk
;-----

[Statedef 20]
Type = S
MoveType = I
Physics = N

[State 0, sprite priority]
type = SprPriority
trigger1 = time = 0
value = ifelse(var(0)!=20, 1, 4)

[State 20, velocity forward]
type = VelSet
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, velocity back]
type = VelSet
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 20, walf fwd animation]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = anim != 20
trigger1 = anim != 8020
value = ifelse(var(0)=0, 20, 8020)

[State 20, walk back animation]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = anim != 21
trigger1 = anim != 8021
value = ifelse(var(0)=0, 21, 8021)



; Jump Start
;-----------

[Statedef 40]
Type = S
MoveType = I
Physics = N
anim = 40
ctrl = 0

[State 0, sprite priority]
type = SprPriority
trigger1 = time = 0
value = ifelse(var(0)!=20, 0, 4)

[State 40, var init]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, var fwd]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 40, var back]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 40, fwd velocity]
type = VelSet
trigger1 = sysvar(1) = 1
x = const(velocity.jump.fwd.x) + 1.125*(var(0)=20)

[State 40, back velocity]
type = VelSet
trigger1 = sysvar(1) = -1
x = const(velocity.jump.back.x) - 0.875*(var(0)=20)

[State 40, neutral vertical velocity]
type = VelSet
trigger1 = sysvar(1) = 0
y = const(velocity.jump.y) + 2.18*(var(0)=20)

[State 40, moving vertical velocity]
type = VelSet
trigger1 = AnimTime = 0 && sysvar(1) != 0
y = const(velocity.jump.y) + 3.59*(var(0)=20)

[State 40, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1



; Triangle Jump Start
;--------------------

[Statedef 45]
Type = A
MoveType = I
Physics = A
anim = 48
SprPriority = 1
ctrl = 0

[State 45, turn]
type = Turn
triggerall = time = 0
trigger1 = FrontEdgeBodyDist = 0

[State 45, velocities]
type = VelSet
trigger1 = AnimElem = 2
x = const(velocity.airjump.fwd.x)
y = const(velocity.airjump.y)

[State 45, voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 0
channel = 0

[State 45, jump, sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 100, 1
channel = 1

[State 45, control]
type = CtrlSet
trigger1 = AnimElem = 2
value = 1



; Jump Up
;--------

[Statedef 50]
Type = A
MoveType = I
Physics = A

[State 50, sprite priority]
type = SprPriority
trigger1 = time = 0
value = ifelse(var(0)!=20, 1, 4)

[State 50, var]
type = VarSet
trigger1 = time = 0
sysvar(1) = 0

[State 50, additional gravity]
type = VelAdd
trigger1 = var(0) = 20
y = -0.07 - 0.02*(vel x != 0)

[State 50, normal animation]
type = ChangeAnim
trigger1 = var(0) = 0
trigger1 = time = 0
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43))

[State 50, sikuruu animation]
type = ChangeAnim
trigger1 = var(0) = 20
trigger1 = time = 0
value = ifelse((vel x)=0, 8041, ifelse((vel x)>0, 8042, 8043))

[State 50, voice]
type = PlaySnd
trigger1 = var(0) = 0 && Time = 1
value = 0, 1
channel = 0

[State 50, jump sound]
type = PlaySnd
trigger1 = Time = 1
value = 100, 1
channel = 1



; Jump Down
;----------

[Statedef 51]
Type = A
MoveType = I
Physics = A

[State 51, sprite priority]
type = SprPriority
trigger1 = time = 0
value = ifelse(var(0)!=20, 1, 4)



; Jump Land
;----------

[Statedef 52]
Type = S
MoveType = I
Physics = S
velset = 0,0
ctrl = 1

[State 52, sprite priority]
type = SprPriority
trigger1 = time = 0
value = ifelse(var(0)!=20, 0, 4)

[State 52, animation]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(var(0)=0, 47, 8047)

[State 52, position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, land sound]
type = PlaySnd
trigger1 = Time = 0
value = 100, 2
channel = 1

[State 52, turn]
type = turn
trigger1 = command = "holdup"
trigger1 = p2dist x < 0

[State 52, end state]
type = ChangeState
trigger1 = var(0) = 0 && Time = 5
trigger2 = var(0) = 20 && Time = 7
value = 0
ctrl = 1



; Lay Down
;---------

[Statedef 60]
Type = S
MoveType = A
Physics = S
anim = 60
sprpriority = 1
ctrl = 0

[State 60, invincibility]
type = nothitby
trigger1 = 1
value = SA, AT

[State 60, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1



; Hop Forward
;------------

; Air
;----
[Statedef 62]
Type = A
MoveType = A
Physics = N
anim = 62
sprpriority = 1
velset = 5, -5
ctrl = 0

[State 62, ghost]
type = playerpush
trigger1 = 1
value = 0

[State 62, gravity]
type = veladd
trigger1 = 1
y = 0.45

[State 62, jump sound]
type = PlaySnd
trigger1 = Time = 1
value = 100, 1
channel = 1

[State 62, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 65



; Lower Evade
;------------

[Statedef 64]
Type = A
MoveType = A
Physics = N
anim = 64
sprpriority = 1
velset = 0, -6
ctrl = 0

[State 64, ghost]
type = playerpush
trigger1 = 1
value = 0

[State 64, gravity]
type = veladd
trigger1 = 1
y = 0.6

[State 64, jump sound]
type = PlaySnd
trigger1 = Time = 1
value = 100, 1
channel = 1

[State 64, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 65



; Land
;-----

[Statedef 65]
Type = S
MoveType = I
Physics = S
anim = 65
sprpriority = 1
velset = 0, 0
ctrl = 0

[State 65, ground position]
type = posset
trigger1 = 1
y = 0

[State 65, land sound]
type = PlaySnd
trigger1 = Time = 0
value = 100, 2
channel = 1

[State 65, end state]
type = ChangeState
trigger1 = time = 7
value = 0
ctrl = 1



; Roll Forward
;-------------

[Statedef 66]
type = S
movetype = A
physics = N
anim = 66
sprpriority = 1
velset = 0
ctrl = 0

[State 66, velocity]
type = VelSet
trigger1 = time = 1
x = 8

[State 66, velocity]
type = VelSet
trigger1 = time = 6
x = 7

[State 66, velocity]
type = VelSet
trigger1 = time = 11
x = 6

[State 66, velocity]
type = VelSet
trigger1 = time = 14
x = 5

[State 66, velocity]
type = VelSet
trigger1 = time = 17
x = 4.5

[State 66, velocity]
type = VelSet
trigger1 = time = 21
x = 0

[State 66, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Roll Back
;----------

[Statedef 68]
type = S
movetype = A
physics = N
anim = 68
sprpriority = -2
velset = 0
ctrl = 0

[State 68, velocity]
type = VelSet
trigger1 = time = 1
x = -7

[State 68, velocity]
type = VelSet
trigger1 = time = 3
x = -6.5

[State 68, velocity]
type = VelSet
trigger1 = time = 6
x = -6

[State 68, velocity]
type = VelSet
trigger1 = time = 9
x = -4.5

[State 68, velocity]
type = VelSet
trigger1 = time = 12
x = -4

[State 68, velocity]
type = VelSet
trigger1 = time = 15
x = -3

[State 68, velocity]
type = VelSet
trigger1 = time = 17
x = 0

[State 68, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Meditate
;---------

[Statedef 70]
Type = S
MoveType = I
Physics = S
anim = 70
sprpriority = 1
ctrl = 0

[State 70, fx]
type = Explod
trigger1 = AnimElem = 1
anim = 71
ID = 70
pos = 0, 0
postype = P1
sprpriority = 2
bindtime = -1
removetime = -1
ownpal = 1
pausemovetime = 100

[State 70, add power]
type = VarAdd
trigger1 = 1
v = 23
value = 4

[State 70, end state]
type = ChangeState
trigger1 = command != "hold_b"
trigger2 = var(23) >= 1000
value = 0
ctrl = 1



; Roll Forward Get Up
;--------------------

[Statedef 72]
Type = C
MoveType = I
Physics = N
sprpriority = -2
ctrl = 0

[State 72, animation]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(anim = 5110, 72, 74)

[State 72, velset]
type = VelSet
trigger1 = AnimElem = 3
x = 4.8

[State 72, velset]
type = VelSet
trigger1 = AnimTime = 3
x = 0

[State 72, ghost]
type = PlayerPush
trigger1 = 1
value = 0

[State 72, invincibility]
type = NotHitBy
trigger1 = 1
value = SCA

[State 72, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Roll Back Get Up
;-----------------

[Statedef 76]
Type = C
MoveType = I
Physics = N
sprpriority = -2
ctrl = 0

[State 76, animation]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(anim = 5110, 76, 78)

[State 76, velset]
type = VelSet
trigger1 = AnimElem = 3
x = -4.8

[State 76, velset]
type = VelSet
trigger1 = AnimTime = 5
x = 0

[State 76, ghost]
type = PlayerPush
trigger1 = 1
value = 0

[State 76, invincibility]
type = NotHitBy
trigger1 = 1
value = SCA

[State 76, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Jump on wolf
;-------------
: Jump
;-----
[Statedef 90]
Type = A
MoveType = I
Physics = A
anim = 90
sprpriority = 1
ctrl = 0

[state 90, long fwd velocity]
type = VelSet
triggerall = time = 0
trigger1 = helper(8000), ParentDist x > 100
trigger1 = helper(8000), facing = facing
trigger2 = helper(8000), ParentDist x < -100
trigger2 = helper(8000), facing != facing
x = -100/18
y = -12

[state 90, long back velocity]
type = VelSet
triggerall = time = 0
trigger1 = helper(8000), ParentDist x < -100
trigger1 = helper(8000), facing = facing
trigger2 = helper(8000), ParentDist x > 100
trigger2 = helper(8000), facing != facing
x = 100/18
y = -12

[state 90, short velocity 1]
type = VelSet
triggerall = helper(8000), facing = facing
triggerall = time = 0
trigger1 = helper(8000), ParentDist x = [-100, 100]
x = -(helper(8000), ParentDist x)/18
y = -12

[state 90, short velocity 2]
type = VelSet
triggerall = helper(8000), facing != facing
triggerall = time = 0
trigger1 = helper(8000), ParentDist x = [-100, 100]
x = (helper(8000), ParentDist x)/18
y = -12

[state 90, gravity]
type = VelAdd
trigger1 = 1
y = 0.6 + 0.14*(const(movement.yaccel) = 0.52)

[State 90, voice]
type = PlaySnd
trigger1 = var(1) = 0 && Time = 9
value = 40, 0
channel = 0

[state 90, jump sound]
type = PlaySnd
trigger1 = Time = 1
value = 100, 1
channel = 1

[State 90, end state]
type = ChangeState
trigger1 = time = 18
trigger1 = helper(8000), ParentDist x = [-50, 50]
trigger1 = helper(8000), StateNo = [8500, 8506]
value = 91

: Land
;-----
[Statedef 91]
Type = S
MoveType = I
Physics = S
anim = 91
sprpriority = 4

[State 91, velocity]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 91, position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 91, set var 0]
type = VarSet
trigger1 = Time = 0
v = 0
value = 20

[State 91, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Get off wolf
;-------------

[Statedef 95]
Type = A
MoveType = I
Physics = A
sprpriority = 1
velset = 0,0
ctrl = 1

[State 95, set var 0]
type = VarSet
trigger1 = Time = 1
v = 0
value = 0

[State 95, set var 1]
type = VarSet
trigger1 = time = 0
v = 5
value = 0

[State 95, hold forward]
type = VarSet
trigger1 = command = "holdfwd"
v = 5
value = 1

[State 95, holdback]
type = VarSet
trigger1 = command = "holdback"
v = 5
value = -1

[State 95, change anim]
type = ChangeAnim
trigger1 = Time = 0
value = ifelse(var(5)=0, 41, ifelse(var(5)>0, 42, 43))

[State 95, velocities]
type = VelSet
trigger1 = Time = 0
x = ifelse(var(5)=0, const(velocity.jump.neu.x), ifelse(var(5)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 95, run velocity]
type = VelSet
trigger1 = Time = 0
trigger1 = prevstateno = 100
trigger1 = var(5) = 1
x = const(velocity.runjump.fwd.x)
y = const(velocity.runjump.y)

[State 95, voice]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1
channel = 0

[state 95, jump sound]
type = PlaySnd
trigger1 = Time = 1
value = 100, 1
channel = 1



; Run
;----

[Statedef 100]
Type = S
MoveType = I
Physics = N
ctrl = 0

[State 100, animation]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(var(0)=0, 100, 8100)

[State 100, sprite priority]
type = SprPriority
trigger1 = time = 0
value = ifelse(var(0)!=20, 1, 4)

[State 100, velocity]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x) + (var(0)=20)

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, player push]
type = PlayerPush
trigger1 = var(0) = 20
value = 0

[State 100, run sound]
type = PlaySnd
triggerall = var(0) = 0
trigger1 = time = 0
trigger2 = (GameTime%47) = 0
value = 100, 3
channel = 1

[State 100, hop back]
type = ChangeState
triggerall = var(0) = 20
trigger1 = P2Dist x >= 0 && command = "BB"
trigger2 = P2Dist x < 0 && command = "FF"
value = 105

[State 100, emergency stop state] ; brake when stop running
type = ChangeState
trigger1 = command = "holdback"
value = 102

[State 100, end state] ; brake when stop running
type = ChangeState
triggerall = command != "holdfwd"
trigger1 = var(0) = 0
trigger2 = var(0) = 20 && helper(8000), AnimElem = 5
value = 101



; Brake
;------

[Statedef 101]
Type = S
MoveType = I
Physics = S
ctrl = 0

[State 101, animation]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(var(0)=0, 101, 8101)

[State 101, sprite priority]
type = SprPriority
trigger1 = time = 0
value = ifelse(var(0)!=20, 1, 4)

[State 101, velocity]
type = VelSet
trigger1 = time = 0
x = 3.5 + 5.82*(var(0)=20)
y = 0

[State 101, friction]
type = VelMul
trigger1 = 1
x = 1.12 - 0.1*(var(0)=20)

[State 101, position]
type = PosSet
trigger1 = time = 0
y = 0

[State 101, remove explod]
type = RemoveExplod
trigger1 = time = 0
ID = 8300

[State 101, dust 01]
type = MakeDust
trigger1 = var(0) = 0
trigger1 = vel x > 0
pos = 0, 0
spacing = 3

[State 101, dust 02]
type = MakeDust
trigger1 = var(0) = 0
trigger1 = vel x > 0
pos = 55, 0
spacing = 3

[State 101, brake sound]
type = PlaySnd
trigger1 = var(0) = 0
trigger1 = Time = 1
value = 100, 4
channel = 1

[State 101, hop back]
type = ChangeState
triggerall = var(0) = 20
trigger1 = P2Dist x >= 0 && command = "BB"
trigger2 = P2Dist x < 0 && command = "FF"
value = 105

[State 101, end state]
type = ChangeState
trigger1 = time = 15 - 3*(var(0)=20)
value = 0
ctrl = 1



; Emergency Stop
;---------------

[Statedef 102]
Type = S
MoveType = I
Physics = S
ctrl = 0

[State 102, animation]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(var(0)=0, 101, 8101)

[State 102, sprite priority]
type = SprPriority
trigger1 = time = 0
value = ifelse(var(0)!=20, 1, 4)

[State 102, velocity]
type = VelSet
trigger1 = time = 0
x = 2 + 6*(var(0)=20)
y = 0

[State 102, friction]
type = VelMul
trigger1 = 1
x = 1.12 - 0.1*(var(0)=20)

[State 102, remove explod]
type = RemoveExplod
trigger1 = time = 0
ID = 8300

[State 102, dust 01]
type = MakeDust
trigger1 = var(0) = 0
trigger1 = vel x > 0
pos = 0, 0
spacing = 3

[State 102, dust 02]
type = MakeDust
trigger1 = var(0) = 0
trigger1 = vel x > 0
pos = 55, 0
spacing = 3

[State 102, brake sound]
type = PlaySnd
trigger1 = var(0) = 0
trigger1 = Time = 1
value = 100, 4
channel = 1

[State 102, hop back]
type = ChangeState
triggerall = var(0) = 20
trigger1 = P2Dist x >= 0 && command = "BB"
trigger2 = P2Dist x < 0 && command = "FF"
value = 105

[State 102, end state]
type = ChangeState
trigger1 = time = 6 + 6*(var(0)=20)
value = 0
ctrl = 1


; Hop back
;---------

[Statedef 105]
Type = A
MoveType = I
Physics = A
ctrl = 0

[State 105, turn]
type = turn
trigger1 = time = 0 && PrevStateNo = [100, 102]
trigger1 = P2Dist x < 0

[State 105, animation]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(var(0)=0, 105, 8105)

[State 105, sprite priority]
type = SprPriority
trigger1 = time = 0
value = ifelse(var(0)!=20, 1, 4)

[State 105, velocity]
type = VelSet
trigger1 = time = 0
x = const(velocity.run.back.x) + 3.2*(var(0)=20)
y = const(velocity.run.back.y) - 1.8*(var(0)=20)

[State 105, vel add]
type = VelAdd
trigger1 = Time > 0
y = -0.23 + 0.13*(const(movement.yaccel) = 0.52) + 0.1*(var(0)=20)

[State 105, voice]
type = PlaySnd
trigger1 = var(0) = 0 && Time = 1
value = 0, 0
channel = 0

[State 105, jump sound]
type = PlaySnd
trigger1 = Time = 1
value = 100, 1
channel = 1

[State 105, change state]
type = ChangeState
trigger1 = time = 16 + 4*(var(0)=20)
value = 52



; Suicide ; Adapted from C Kenny's and System ID's Sogetsu
;--------

[Statedef 110]
type = S
anim = 110
velset = 0,0
ctrl = 0

[State 110, invincibility]
type = NotHitBy
trigger1 = 1
value = SCA

[State 110, assert special]
type = AssertSpecial
trigger1 = 1
flag = NoKOSnd
flag2 = NoBg
flag3 = NoFg

[State 110, life]
type = LifeSet
trigger1 = AnimElem = 26
value = 0

[State 110, power] ; power gauge full in new modes
type = PowerSet
trigger1 = const(movement.yaccel) != 0.66
trigger1 = AnimElem = 26
value = 3000

[State 110, power] ; hit gauge full
type = VarSet
trigger1 = var(20) = 0 && AnimElem = 26
v = 23
value = 1000

[State 110, power] ; rage gauge full
type = VarSet
trigger1 = var(20) = 1 && AnimElem = 26
v = 21
value = 1000

[State 110, voice]
type = PlaySnd
trigger1 = Time = 1
value = 12, 0
channel = 0

[State 110, end state]
type = ChangeState
trigger1 = AnimElem = 26
value = 5150



; Guard
;------
; Start
;------
[Statedef 120]
Type = U
MoveType = I
Physics = U
sprpriority = -1

[State 120, ground animation]
type = ChangeAnim
trigger1 = time = 0 && statetype != A
value = 120 + (statetype = C) + 8000*(var(0)=20)

[State 120, air animation]
type = null;ChangeAnim
trigger1 = time = 0 && statetype = A
value = 122 + 7000*(var(0)=10) + 8000*(var(0)=20)

[State 120, stand type set]
type = StateTypeSet
trigger1 = time = 0 && statetype = S
physics = S

[State 120, crouch type set]
type = StateTypeSet
trigger1 = time = 0 && statetype = C
physics = C

[State 120, air type set]
type = StateTypeSet
trigger1 = var(0) != 10
trigger1 = time = 0 && statetype = A
physics = A

[State 120, air control]
type = CtrlSet
trigger1 = time = 0 && statetype = A
value = 1

[State 120, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 120, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 120, change state]
type = ChangeState
trigger1 = StateType != A && AnimTime = 0
trigger2 = StateType = A && Time = 0
value = 130 + 1*(statetype = C) + 2*(statetype = A)

[State 120, Stop Guarding]
type = ChangeState
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140


; Stand Guarding
;---------------
[Statedef 130]
Type = S
MoveType = I
Physics = S
sprpriority = -1
velset = 0,0

[State 130, animation] ; stand alone
type = ChangeAnim
trigger1 = var(0) = 0
value = 130

[State 130, animation] ; carried by Shikuruu
type = ChangeAnim
trigger1 = var(0) = 20 && anim != 8130
value = 8130

[State 130, Hi to Lo]
type = ChangeState
trigger1 = command = "holddown"
value = 131

[State 130, Stop Guarding]
type = ChangeState
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

; Crouch Guarding
;----------------
[Statedef 131]
Type = C
MoveType = I
physics = C
sprpriority = -1
velset = 0,0

[State 131, 1]
type = ChangeAnim
trigger1 = var(0) != 10
trigger1 = anim != 131 && anim != 8131
value = 131 + 8000*(var(0)=20)

[State 131, Lo to Hi]
type = ChangeState
trigger1 = command != "holddown"
value = 130

[State 131, Stop Guarding]
type = ChangeState
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

; Air Guarding
;-------------
[Statedef 132]
Type = A
MoveType = I
Physics = N
sprpriority = -1
ctrl = 1

[State 132, animation]
type = null;ChangeAnim
trigger1 = anim != 132 && anim != 7132 && anim != 8132
value = 132 + 7000*(var(0)=10) + 8000*(var(0)=20)

[State 132, velocity]
type = VelAdd
trigger1 = var(0) != 10
y = Const(movement.yaccel)

[State 132, sysvar]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= -10) && (vel y > 0)

[State 132, land]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 132, land]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 132, land state]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = command != "holdback"
value = 52

[State 132, guard state]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = command = "holdback"
value = 130

[State 132, Stop Guarding]
type = ChangeState
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140


 ; End Guard
;----------
[Statedef 140]
Type = U
MoveType = I
Physics = U
sprpriority = -1
ctrl = 1

[State 140, ground normal animation]
type = ChangeAnim
trigger1 = var(0) = 0
trigger1 = time = 0 && statetype != A
value = 140 + (statetype = C)

[State 140, carried by a pet animation]
type = ChangeAnim
trigger1 = var(0) != 0
trigger1 = time = 0 && statetype != A
value = 120 + (statetype = C) + 8000*(var(0)=20)

[State 140, air animation]
type = null;ChangeAnim
trigger1 = time = 0 && statetype = A
value = 122 + 7000*(var(0)=10) + 8000*(var(0)=20)

[State 140, stand type set]
type = StateTypeSet
trigger1 = time = 0 && statetype = S
physics = S

[State 140, crouch type set]
type = StateTypeSet
trigger1 = time = 0 && statetype = C
physics = C

[State 140, air type set]
type = StateTypeSet
trigger1 = var(0) != 10
trigger1 = time = 0 && statetype = A
physics = A

[State 140, air control]
type = CtrlSet
trigger1 = time = 0 && statetype = A
value = 1

[State 140, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 140, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 140, change state]
type = ChangeState
trigger1 = var(0) = 10 && time = 0
value = 7000



; Stand Guarding A Hit
;---------------------
; Shaking
;--------
[Statedef 150]
Type = S
MoveType= H
Physics = N
SprPriority = -1
velset = 0,0

[State 150, animation] ; stand alone
type = ChangeAnim
trigger1 = var(0) = 0 && time = 0
value = 150 + 3*(enemy, StateType = A) + 4*(PrevStateNo = [150,153])

[State 150, animation] ; carried by Shikuruu
type = ChangeAnim
trigger1 = var(0) = 20 && time = 0
value = 8130

[State 150, end state]
type = ChangeState
trigger1 = HitShakeOver
value = 151

[State 150, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 150, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 150, force feedback]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 3

; Knocked Back
;-------------
[Statedef 151]
Type = S
MoveType= H
Physics = S
SprPriority = -1

[State 151, hit velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 151, velocity]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 151, control]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 151, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 151, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 151, end state]
type = ChangeState
trigger1 = Time >= GetHitVar(hittime)
value = 130
ctrl = 1



; Crouch Guarding A Hit
;----------------------
; Shaking
;--------
[Statedef 152]
Type = C
MoveType= H
Physics = N
SprPriority = -1
velset = 0,0

[State 152, animation]
type = ChangeAnim
trigger1 = var(0) != 10
value = ifelse(var(0)=0, 151, 8131)

[State 152, change state]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2*(command = "holddown")

[State 152, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 152, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 152, force feedback]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

; Knocked Back
:-------------
[Statedef 153]
Type = C
MoveType= H
Physics = C
SprPriority = -1

[State 153, hit vel set]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 153, velset]
type = VelSet
trigger1 = Time = GetHitVar(slidetime)
trigger2 = HitOver
x = 0

[State 153, control]
type = CtrlSet
trigger1 = Time = GetHitVar(ctrltime)
value = 1

[State 153, Hi to Lo]
type = StateTypeSet
trigger1 = statetype = S && command = "holddown"
statetype = C
physics = C

[State 153, Lo to Hi]
type = StateTypeSet
trigger1 = statetype = C && command != "holddown"
statetype = S
physics = S

[State 153, end state]
type = ChangeState
trigger1 = HitOver
value = 131
ctrl = 1



; Air Guarding A Hit
;-------------------
; Shaking
;--------
[Statedef 154]
Type = A
MoveType= H
Physics = N
SprPriority = -1
velset = 0,0

[State 154, animation]
type = ChangeAnim
trigger1 = 1
value = ifelse(var(0)=0, 152, ifelse( var(0)=10, 7132, 8132))

[State 154, change state]
type = ChangeState
trigger1 = HitShakeOver
value = 155

[State 154, force feedback]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

; Knocked Away
;-------------
[Statedef 155]
Type = A
MoveType= H
Physics = N
SprPriority = -1

[State 155, hit velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1 -1*(var(0)=10)

[State 155, gravity]
type = VelAdd
trigger1 = var(0) != 10
y = Const(movement.yaccel)

[State 155, var set]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= -10) && (vel y > 0)

[State 155, land]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 155, land]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 155, ground guarding state]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = command = "holdback"
value = 130

[State 155, land state]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = command != "holdback"
value = 52

[State 155, air end state]
type = ChangeState
trigger1 = var(0) = 10 && (time = GetHitVar(ctrltime) || time >= 60)
value = 132



;================================================================================================
;
; RERA'S INTROS, ENDINGS AND TAUNT STATES
;
;================================================================================================

; Time Over Lose
;---------------

[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, invincibility]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 170, voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 13, 0
channel = 0



; Draw Game
;----------

[Statedef 175]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 175, invincibility]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1



; End Poses
;----------
; Choose
;-------
[Statedef 180]
type = S
ctrl = 0
velset = 0,0

[State 180, assert special]
type = AssertSpecial
trigger1 = Time = [0, 90]
flag = roundnotover

[State 180, randomizer]
type = VarRandom
trigger1 = Time = 0
v  = 6
range = 1,11

[State 180, SS5 endings]
type = ChangeState
trigger1 = (var(6) = [1,9]) && (var(9) = 0) && (var(10) = 0)
value = 180 + var(6)

[State 180, SS5 Special endings]
type = ChangeState
trigger1 = (var(6) = [10,11]) && (var(9) = 0) && (var(10) = 0)
value = 186 + var(6)

[State 180, Finisher endings]
type = ChangeState
trigger1 = var(10) > 0
value = 3339 + var(10)



; Win Ending 1
;-------------

[Statedef 181]
type = S
anim = 181
velset = 0,0
ctrl = 0

[State 181, voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 30, 1
channel = 0

[State 181, assert special]
type = AssertSpecial
trigger1 = Time = [0, 200]
flag = roundnotover



; Win Ending 2
;-------------

[Statedef 182]
type = S
anim = 182
velset = 0,0
ctrl = 0

[State 182, voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 30, 2
channel = 0

[State 182, assert special]
type = AssertSpecial
trigger1 = Time = [0, 250]
flag = roundnotover



; Win Ending 3
;-------------

[Statedef 183]
type = S
anim = 183
velset = 0,0
ctrl = 0

[State 183, assert special]
type = AssertSpecial
trigger1 = Time = [0, 200]
flag = roundnotover

[State 183, voice]
type = PlaySnd
trigger1 = AnimElem = 8
value = 30, 3
channel = 0

[state 183, cape sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 160, 0
channel = 1



; Win Ending 4
;-------------

[Statedef 184]
type = S
sprpriority = 0
velset = 0,0
ctrl = 0

[State 184, animation]
type = ChangeAnim
trigger1 = helper(8000), stateno != 8952
value = 184

[State 184, assert special]
type = AssertSpecial
trigger1 = Time = [0, 200]
flag = roundnotover

[State 184, sprite priority]
type = SprPriority
trigger1 = AnimElem = 2
value = 2

[State 184, voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 30, 4
channel = 0



; Win Ending 5
;-------------

[Statedef 185]
type = S
velset = 0,0
anim = 185
ctrl = 0

[State 185, assert special]
type = AssertSpecial
trigger1 = Time = [0, 185]
flag = roundnotover

[State 185, voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 30, 5
channel = 0



; Win Ending 6
;-------------

[Statedef 186]
type = S
anim = 186
velset = 0,0
ctrl = 0

[State 186, assert special]
type = AssertSpecial
trigger1 = Time = [0, 220]
flag = roundnotover

[State 186, voice]
type = PlaySnd
trigger1 = AnimElem = 8
value = 30, 6
channel = 0

[state 186, cape sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 160, 0
channel = 1



; Win Ending 7
;-------------

[Statedef 187]
type = S
velset = 0,0
anim = 187
ctrl = 0

[State 187, assert special]
type = AssertSpecial
trigger1 = Time = [0, 185]
flag = roundnotover

[State 187, voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 12, 0
channel = 0



; Win Ending 8
;-------------

[Statedef 188]
type = S
velset = 0,0
anim = 188
ctrl = 0

[State 188, assert special]
type = AssertSpecial
trigger1 = Time = [0, 185]
flag = roundnotover

[State 188, voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 30, 8
channel = 0



; Win Ending 9
;-------------

[Statedef 189]
type = S
velset = 0,0
anim = 189
ctrl = 0

[State 189, voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 30, 9
channel = 0

[State 189, assert special]
type = AssertSpecial
trigger1 = Time = [0, 250]
flag = roundnotover



; SS5 Special Ending 1
;---------------------

[Statedef 196]
type = S
velset = 0,0
anim = 196
ctrl = 0

[State 196, assert special]
type = AssertSpecial
trigger1 = Time = [0, 240]
flag = roundnotover

[State 197, sparks]
type = Explod
trigger1 = AnimElem = 9
anim = 198
pos = 8,0
sprpriority = 1

[state 197, cape sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 160, 0
channel = 1

[state 197, sparks sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 160, 1
channel = 2

[state 197, voice]
type = PlaySnd
trigger1 = AnimElem = 19
value = 30, 3
channel = 0



; SS5 Special Ending 2
;---------------------

[Statedef 197]
type = S
velset = 0,0
anim = 197
ctrl = 0

[State 197, assert special]
type = AssertSpecial
trigger1 = Time = [0, 300]
flag = roundnotover

[State 197, sparks]
type = Explod
trigger1 = AnimElem = 9
anim = 198
pos = 8,0
sprpriority = 1

[state 197, cape sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 160, 0
channel = 1

[state 197, sparks sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 160, 1
channel = 2

[State 197, weapon sound]
type = PlaySnd
trigger1 = AnimElem = 25
value = 100, 7
channel = 1

[state 197, voice]
type = PlaySnd
trigger1 = AnimElem = 40
value = 30, 9
channel = 0



; Blade Intro
;------------

[Statedef 190]
type = S
sprpriority = 0

[State 190, randomizer]
type = VarRandom
trigger1 = Time = 0
v  = 6
range = 1

[State 190, change state]
type = ChangeState
trigger1 = var(6) != 0
value = 191

[State 190, animation]
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 190, sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 110, 1
channel = 1

[State 190, intro flag]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, Shikuruu]
type = Helper
trigger1 = AnimTime = 0
name = "Shikuruu"
ID = 8000
pos =-50,0
postype = back
stateno = 8500
keyctrl = 0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
size.ground.back = 30
size.ground.front = 30
size.air.back = 20
size.air.front = 20
size.shadowoffset = 1

[State 190, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0



; Cape Intro
;-----------

[Statedef 191]
type = S
sprpriority = 0

[State 191, animation]
type = ChangeAnim
trigger1 = RoundState = 0
value = 191

[State 190, voice]
type = PlaySnd
trigger1 = RoundState = 0
trigger1 = AnimElem = 1
value = 20, 1
channel = 0

[State 190, sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 160, 0
channel = 1

[State 190, intro flag]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, Shikuruu]
type = Helper
trigger1 = AnimTime = 0
name = "Shikuruu"
ID = 8000
pos =-50,0
postype = back
stateno = 8500
keyctrl = 0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
size.ground.back = 30
size.ground.front = 30
size.air.back = 20
size.air.front = 20
size.shadowoffset = 1

[State 190, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0



; Taunt
;------

[Statedef 195]
Type = S
MoveType = I
Physics = S
sprpriority = 0
velset = 0,0
ctrl = 0

[State 195, animation]
type = ChangeAnim
trigger1 = anim != 195
value = 195

[State 195, posadd]
type = PosAdd
trigger1 = AnimElem = 8
x = 11

[State 195, set control]
type = CtrlSet
trigger1 = AnimElem = 8
value = 1

[State 195, voice]
type = PlaySnd
trigger1 = AnimElem = 7
value = 25, 0
channel = 0

[State 195, voice 2]
type = PlaySnd
trigger1 = AnimElem = 10
value = 0, 0
channel = 0

[State 195, sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 100, 1
channel = 1

[State 195, end state]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1



;================================================================================================
;
; RERA'S ADDITIONAL HIT STATES
;
;================================================================================================

; Lie Dead
;---------

[Statedef 5150]
type = L
movetype= H
physics = N
sprpriority = -3

[State 5150, camera]
type = ScreenBound
trigger1 = Anim = [5600, 6000)

[State 5150, normal anim]
type = ChangeAnim
triggerall = PrevStateNo != 110
triggerall = Anim != [5600, 6000)
triggerall = Time = 0
triggerall = SelfAnimExist(5140)
trigger1 = (anim != [5111,5119]) && (anim != [5171,5179])
trigger2 = !SelfAnimExist(5140 + (anim % 10))
value = 5140

[State 5150, hit up type anim]
type = ChangeAnim
triggerall = PrevStateNo != 110
triggerall = Anim != [5600, 6000)
trigger1 = Time = 0
trigger1 = (anim = [5111,5119]) || (anim = [5171,5179])
trigger1 = SelfAnimExist(5140 + (anim % 10))
value = 5140 + (anim % 10)

[State 5150, Match over anim]
type = ChangeAnim
persistent = 0
triggerall = PrevStateNo != 110
triggerall = Anim != [5600, 6000)
trigger1 = MatchOver = 1
trigger1 = Anim = [5140,5149]
trigger1 = SelfAnimExist(anim+10)
value = anim+10

[State 5150, liedead anim does not exist]
type = ChangeAnim
triggerall = PrevStateNo != 110
triggerall = Anim != [5600, 6000)
trigger1 = Time = 0
trigger1 = Anim != [5140,5159]
trigger1 = Anim != [5110,5119]
value = 5110

[State 5150, friction]
type = VelMul
trigger1 = 1
x = 0.85
y = 0

[State 5150, friction]
type = VelSet
trigger1 = Vel x < .05
persistent = 0
x = 0
y = 0

[State 5150, invincibility]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5150, erase stage]
type = AssertSpecial
trigger1 = PrevStateNo = 110
flag = NoBg
flag2 = NoFg



; Hit Fall Recover On Ground
;---------------------------

[Statedef 5201]
type = C
movetype = H
physics = C
anim = 5200

[State 5201, turn] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -5

[State 5201, velocity]
type = VelSet
trigger1 = 1
x = -7
y = 0

[State 5201, position]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5201, invincibility]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5201, blink] ;Blink white
type = PalFX
trigger1 = time = 0
time = 3
add = 128,128,128

[State 5201, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Hit Fall Recover In Mid Air
;----------------------------

[Statedef 5210]
type = A
movetype = I
physics = N
anim = 5210
ctrl = 0

[State 5210, blink] ;Blink white
type = PalFX
trigger1 = time = 0
time = 3
add = 128,128,128

[State 5210, freeze position]
type = PosFreeze
trigger1 = Time = 0
value = 4

[State 5210, turn] ;Turn if not facing opponent
type = Turn
trigger1 = time = 0
trigger1 = p2dist X < -20

[State 5210, velocity]
type = VelAdd
trigger1 = time = 4
x = -2
y = -5

[State 5210, invincibility]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 15

[State 5210, control]
type = CtrlSet
trigger1 = time = 15
value = 1

[State 5210, gravity]
type = gravity
trigger1 = time >= 4

[State 5210, land]
type = ChangeState
trigger1 = vel y >= 0
trigger1 = pos y >= -ceil(vel y)
value = 52



; Pushed in the back
;-------------------

[Statedef 5320]
Type = S
MoveType = H
Physics = N
sprpriority = 1
velset = 0,0
ctrl = 0

[State 5320, SS chars animation]
type = ChangeAnim
trigger1 = time = 0
trigger1 = SelfAnimExist(5320)
value = 5320

[State 5320, other chars animation]
type = ChangeAnim
trigger1 = !SelfAnimExist(5320)
value = 5007

[State 5320, velocity 1]
type = VelSet
trigger1 = time = [5, 8]
x = 1.5

[State 5320, velocity 2]
type = VelSet
trigger1 = time = [9, 17]
x = 1.25

[State 5320, velocity 3]
type = VelSet
trigger1 = time = [18, 25]
x = 1

[State 5320, velocity 4]
type = VelSet
trigger1 = time = [26, 31]
x = 0.5

[State 5320, velocity 5]
type = VelSet
trigger1 = time = 32
x = 0

[State 5320, dust]
type = MakeDust
trigger1 = !SelfAnimExist(5320)
trigger1 = vel x != 0
pos = 0, 0
spacing = 3

[state 5320, brake sound]
type = PlaySnd
trigger1 = !SelfAnimExist(5320)
trigger1 = time = 1
value = 100, 4
channel = 1

[State 5320, end state]
type = SelfState
trigger1 = time = 47
value = 0
ctrl = 1



; Pushed in the stomach
;----------------------

[Statedef 5325]
Type = S
MoveType = H
Physics = N
sprpriority = 1
velset = 0,0
ctrl = 0

[State 5325, SS chars animation]
type = ChangeAnim
trigger1 = time = 0
trigger1 = SelfAnimExist(5325)
value = 5325

[State 5325, other chars animation]
type = ChangeAnim
trigger1 = !SelfAnimExist(5325)
value = 5017

[State 5325, velocity 1]
type = VelSet
trigger1 = time = [10, 21]
x = -1.25

[State 5325, velocity 2]
type = VelSet
trigger1 = time = [22, 27]
x = -1

[State 5325, velocity 3]
type = VelSet
trigger1 = time = [28, 39]
x = -0.5

[State 5325, velocity 5]
type = VelSet
trigger1 = time = 40
x = 0

[State 5325, dust]
type = MakeDust
trigger1 = !SelfAnimExist(5325)
trigger1 = vel x != 0
pos = 0, 0
spacing = 3

[state 5325, brake sound]
type = PlaySnd
trigger1 = !SelfAnimExist(5325)
trigger1 = time = 1
value = 100, 4
channel = 1

[State 5325, end state]
type = SelfState
trigger1 = time = 52
value = 0
ctrl = 1



; Dizzy Code by Ragnarok
;-----------------------

[Statedef 9000]
type = S
physics = S
movetype = H
ctrl = 0

[State 9000, Change Animation]
type = ChangeAnim
trigger1 = Time = 0
value = 5300

[State 9000, Button Jam]
type = ChangeState
triggerall = Random <= 500
trigger1 = (command = "a") || (command = "b") || (command = "c") 
trigger2 = (command = "x") || (command = "y") || (command = "z")
value = 9001

[State 9000, Next]
type = ChangeState
trigger1 = Time = 30
value = 9001

; Next Part
;----------

[Statedef 9001]
type = S
physics = S
movetype = H
ctrl = 0

[State 9001, Flash]
type = PalFX
trigger1 = Time = 0
time = 2
add = 50,50,50
mul = 300,300,300

[State 9001, Button Jam]
type = ChangeState
triggerall = Random <= 500
trigger1 = (command = "a") || (command = "b") || (command = "c") 
trigger2 = (command = "x") || (command = "y") || (command = "z")
value = 9002

[State 9001, Next]
type = ChangeState
trigger1 = Time = 30
value = 9002

; Next Part
;----------

[Statedef 9002]
type = S
physics = S
movetype = H
ctrl = 0

[State 9002, Flash]
type = PalFX
trigger1 = Time = 0
time = 2
add = 50,50,50
mul = 300,300,300

[State 9002, Button Jam]
type = ChangeState
triggerall = Random <= 500
trigger1 = (command = "a") || (command = "b") || (command = "c") 
trigger2 = (command = "x") || (command = "y") || (command = "z")
value = 9003

[State 9002, Next]
type = ChangeState
trigger1 = Time = 30
value = 9003

; Next Part
;----------

[Statedef 9003]
type = S
physics = S
movetype = H
ctrl = 0

[State 9003, Flash]
type = PalFX
trigger1 = Time = 0
time = 2
add = 50,50,50
mul = 300,300,300

[State 9003, Button Jam]
type = ChangeState
triggerall = Random <= 500
trigger1 = (command = "a") || (command = "b") || (command = "c") 
trigger2 = (command = "x") || (command = "y") || (command = "z")
value = 9004

[State 9003, Next]
type = ChangeState
trigger1 = Time = 30
value = 9004

; Next Part
;----------

[Statedef 9004]
type = S
physics = S
movetype = H
ctrl = 0

[State 9004, Flash]
type = PalFX
trigger1 = Time = 0
time = 2
add = 50,50,50
mul = 300,300,300

[State 9004, Button Jam]
type = ChangeState
triggerall = Random <= 500
trigger1 = (command = "a") || (command = "b") || (command = "c") 
trigger2 = (command = "x") || (command = "y") || (command = "z")
value = 9005

[State 9004, Next]
type = ChangeState
trigger1 = Time = 30
value = 9005

; Next Part
;----------

[Statedef 9005]
type = S
physics = S
movetype = H
ctrl = 0

[State 9005, Flash]
type = PalFX
trigger1 = Time = 0
time = 2
add = 50,50,50
mul = 300,300,300

[State 9005, Button Jam]
type = ChangeState
triggerall = Random <= 500
trigger1 = (command = "a") || (command = "b") || (command = "c") 
trigger2 = (command = "x") || (command = "y") || (command = "z")
value = 9006

[State 9005, Next]
type = ChangeState
trigger1 = Time = 30
value = 9006

; Next Part
;----------

[Statedef 9006]
type = S
physics = S
movetype = H
ctrl = 0

[State 9006, Flash]
type = PalFX
trigger1 = Time = 0
time = 2
add = 50,50,50
mul = 300,300,300

[State 9006, Button Jam]
type = ChangeState
triggerall = Random <= 500
trigger1 = (command = "a") || (command = "b") || (command = "c") 
trigger2 = (command = "x") || (command = "y") || (command = "z")
value = 9007

[State 9006, Next]
type = ChangeState
trigger1 = Time = 30
value = 9007

; Next Part
;----------

[Statedef 9007]
type = S
physics = S
movetype = H
ctrl = 0

[State 9007, Flash]
type = PalFX
trigger1 = Time = 0
time = 2
add = 50,50,50
mul = 300,300,300

[State 9007, Button Jam]
type = ChangeState
triggerall = Random <= 500
trigger1 = (command = "a") || (command = "b") || (command = "c") 
trigger2 = (command = "x") || (command = "y") || (command = "z")
value = 0

[State 9007, Undizzy]
type = SelfState
trigger1 = Time = 30
ctrl = 1
value = 0

; Self Dizzy
;----------

[Statedef 9010]
type = U
movetype = H
physics = N
ctrl = 0

[State 9010, Can't Hit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 9010, Clear Stun]
type = VarSet
trigger1 = Time = 0
v = 7
value = 0

[State 9010, Fall]
type = ChangeState
trigger1 = HitShakeOver
value = 9000 + 11*(StateType = A)

; Fall
;-----

[Statedef 9011]
type = A
movetype = H
physics = N
velset = -3, -4
ctrl = 0
anim = 5050

[State 9011, Grav]
type = VelAdd
trigger1 = Pos Y < 0
y = 0.35

[State 9011, Can't Hit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 9011, Fall]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 9012

; Ground/Getup
;-------------

[Statedef 9012]
type = S
movetype = H
physics = S
ctrl = 0
anim = 5110

[State 9012, Stop Falling]
type = VelSet
trigger1 = Time = 0
Y = 0

[State 9012, Can't Hit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 9012, Get Up]
type = ChangeAnim
trigger1 = Time = 25
value = 5120

[State 9012, Dizzy]
type = ChangeState
trigger1 = (AnimTime = 0) && (Anim = 5120)
value = 9000



; Guard Crush Code by Omniscience
;--------------------------------

[Statedef 9030]
type = U
movetype = H
physics = U
ctrl = 0

[State 9030, Animation]
type = ChangeAnim
trigger1 = Time = 0
value = 295 + 200*(StateType = C)

[State 9030, VarSet]
type = VarSet
trigger1 = Time = 0
v = 8
value = 0

[State 9030, NotHitBy]
type = NotHitBy
trigger1 = Time < 10
value = SCA

[State 9030, VelSet]
type = VelSet
trigger1 = Time = 0
x = -5

[State 9030, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;================================================================================================
;
; RERA'S AI ACTIVATION STATES - Code by Winane
;
;================================================================================================

; AI Activation Helper State - Primary Version
; (Credit to YongMing for the basic HitPause bugfix concept.)
;
; var(1) - First tick activation prevention.
; var(2) - Used for pause/superpause and custom state check, basically.
; var(3) - (Super/)Pause & custom state-triggered dir detection disabler.
; var(4) - Persistent direction command detection enabler (due to 2002.04.14).
; var(10)- Stupid AutoTurn bug fixer.
; parent's var(58) - Parent's GameTime var, for pause and custom state check.
; parent's var(59) - Parent's primary AI variable.
;
; The code in this state is mostly simply copy/pasteable.
; But if you're using different indices for the parent's variables,
; or if you change your character's basic commands' names, you'll
; of course need to change the code in this state accordingly.

[StateDef 9741]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9741, Safety]; Just in case your opponent is very poorly coded.
type = SelfState
trigger1 = !IsHelper
value = 0

[State 9741, PauseCheck]
type = VarSet
trigger1 = (GameTime>(Parent,var(58)))
trigger2 = !(Parent,Alive)
trigger3 = (RoundState != 2)
trigger4 = (var(3):=0)
var(2) = (var(3):=1)

[State 9741, Facing]
type = Turn
trigger1 = (var(10):=(Facing != Parent,Facing))
trigger2 = (var(10):=0)

[State 9741, DirTurnOnAI]
type = ParentVarSet
triggerall = !var(3)
triggerall = !var(10)
trigger1 = (Parent,command = "holdfwd")
trigger2 = (Parent,command = "holdback")
trigger3 = (Parent,command = "holdup")
trigger4 = (Parent,command = "holddown")
trigger5 = !(var(4):=1)
var(59) = var(4)

[State 9741, DirTurnOffAI]
type = ParentVarSet
triggerall = !var(3)
triggerall = Parent,var(59)
trigger1 = (command = "holdfwd")
trigger1 = (Parent,command = "holdfwd")
trigger2 = (command = "holdback")
trigger2 = (Parent,command = "holdback")
trigger3 = (command = "holdup")
trigger3 = (Parent,command = "holdup")
trigger4 = (command = "holddown")
trigger4 = (Parent,command = "holddown")
var(59) = (var(4):=0)

[State 9741, ButtonTurnOnAI]
type = ParentVarSet
triggerall = var(1)
triggerall = !var(2)
trigger1 = (Parent,command = "a")
trigger2 = (Parent,command = "b")
;trigger3 = (Parent,command = "c")
trigger3 = (Parent,command = "x")
trigger4 = (Parent,command = "y")
;trigger6 = (Parent,command = "z")
trigger5 = (Parent,command = "start")
var(59) = 1

[State 9741, ButtonTurnOffAI]
type = ParentVarSet
triggerall = !var(2)
trigger1 = (command = "a")
trigger1 = (Parent,command = "a")
trigger2 = (command = "b")
trigger2 = (Parent,command = "b")
;trigger3 = (command = "c")
;trigger3 = (Parent,command = "c")
trigger3 = (command = "x")
trigger3 = (Parent,command = "x")
trigger4 = (command = "y")
trigger4 = (Parent,command = "y")
;trigger6 = (command = "z")
;trigger6 = (Parent,command = "z")
trigger5 = (command = "start")
trigger5 = (Parent,command = "start")
var(59) = -1

[State 9741, UnPauseCheck]
type = VarSet
triggerall = var(2)
trigger1 = (Parent,command = "a")
trigger2 = (Parent,command = "b")
;trigger3 = (Parent,command = "c")
trigger3 = (Parent,command = "x")
trigger4 = (Parent,command = "y")
;trigger6 = (Parent,command = "z")
trigger5 = (Parent,command = "start")
trigger6 = (var(2) = 2)
trigger6 = (var(2):=0)
var(2) = 2

[State 9741, Goodbye]
type = DestroySelf
triggerall = (var(1):=1)
trigger1 = Parent,var(59)
trigger2 = !(Parent,Alive)
trigger3 = (RoundState != 2)

[State 9741, DTC]
type = DisplayToClipboard
trigger1 = 1
text = "var(2) = %d, parentvar(58) = %d, GameTime = %d, var(3) = %d"
params = var(2), (parent,var(58)), GameTime, var(3)

;------------------
; AI Activation Helper State - Compatible Partner Version
;
; var(1,6,8) - Dir stuff
; var(5,7,9) - Button stuff
; var(1) - First tick activation prevention
; var(2) - Used for pause/superpause and custom state check, basically.
; var(3) - (Super/)Pause & custom state-triggered dir detection disabler.
; var(4) - Hitpause check.
; var(5) - No button on previous tick.
; var(6) - Any dir on this tick.
; var(7) - Any button on this tick.
; var(8) - Matching partner dir detected.
; var(9) - Matching partner button detected.
; var(10)- Stupid AutoTurn bug fixer.
; parent's var(58) - Parent's GameTime var, for pause and custom state check.
; parent's var(59) - Parent's primary AI variable.
;
; The code in this state is mostly simply copy/pasteable.
; But if you're using different indices for the parent's variables,
; or if you change your character's basic commands' names, you'll
; of course need to change the code in this state accordingly.

[StateDef 9742]
type = S
movetype = I
physics = N
anim = 9741
ctrl = 0

[State 9742, Safety]; Just in case your opponent is very poorly coded.
type = SelfState
trigger1 = !IsHelper
value = 0

[State 9742, PauseCheck]
type = VarSet
trigger1 = (GameTime>(Parent,var(58)))
trigger2 = !(Parent,Alive)
trigger3 = (RoundState != 2)
trigger4 = (var(3):=0)
var(2) = (var(3):=1)

[State 9742, Facing]
type = Turn
trigger1 = (var(10):=(Facing != Parent,Facing))
trigger2 = (var(10):=0)

[State 9742, ParentDirCheck]
type = VarSet
trigger1 = (Parent,command = "holdfwd")
trigger2 = (Parent,command = "holdback")
trigger3 = (Parent,command = "holdup")
trigger4 = (Parent,command = "holddown")
trigger5 = (var(6):=0)
var(6) = 1

[State 9742, ParentButtonCheck]
type = VarSet
trigger1 = (Parent,command = "a")
trigger2 = (Parent,command = "b")
;trigger3 = (Parent,command = "c")
trigger3 = (Parent,command = "x")
trigger4 = (Parent,command = "y")
;trigger6 = (Parent,command = "z")
trigger5 = (Parent,command = "start")
trigger6 = (var(7):=0)
var(7) = 1

[State 9742, SameDirCheck]
type = VarSet
triggerall = var(6)
triggerall = !var(3)
trigger1 = (Parent,command = "holdfwd")
trigger1 = (Partner,command = "holdfwd")
trigger2 = (Parent,command = "holdback")
trigger2 = (Partner,command = "holdback")
trigger3 = (Parent,command = "holdup")
trigger3 = (Partner,command = "holdup")
trigger4 = (Parent,command = "holddown")
trigger4 = (Partner,command = "holddown")
trigger5 = (var(8):=0)
var(8) = 1

[State 9742, SameButtonCheck]
type = VarSet
triggerall = var(7)
triggerall = !var(2)
trigger1 = (Parent,command = "a")
trigger1 = (Partner,command = "a")
trigger2 = (Parent,command = "b")
trigger2 = (Partner,command = "b")
;trigger3 = (Parent,command = "c")
;trigger3 = (Partner,command = "c")
trigger3 = (Parent,command = "x")
trigger3 = (Partner,command = "x")
trigger4 = (Parent,command = "y")
trigger4 = (Partner,command = "y")
;trigger6 = (Parent,command = "z")
;trigger6 = (Partner,command = "z")
trigger5 = (Parent,command = "start")
trigger5 = (Partner,command = "start")
trigger6 = (var(9):=0)
var(9) = 1

[State 9742, DirTurnOnAI]
type = ParentVarSet
trigger1 = var(1)
trigger1 = var(6)
trigger1 = !var(8)
trigger1 = !var(3)
trigger1 = !var(4)
trigger1 = !var(10)
var(59) = 1

[State 9742, DirTurnOffAI]
type = ParentVarSet
triggerall = var(6)
triggerall = !var(8)
;triggerall = !var(3); Probably useless...
;triggerall = !var(4) ;Probably not necessary, but what the hey.
triggerall = Parent,var(59)
trigger1 = (command = "holdfwd")
trigger1 = (Parent,command = "holdfwd")
trigger2 = (command = "holdback")
trigger2 = (Parent,command = "holdback")
trigger3 = (command = "holdup")
trigger3 = (Parent,command = "holdup")
trigger4 = (command = "holddown")
trigger4 = (Parent,command = "holddown")
var(59) = 0

[State 9742, ButtonTurnOnAI]
type = ParentVarSet
trigger1 = var(5)
trigger1 = var(7)
trigger1 = !var(2)
trigger1 = !var(9)
var(59) = 1

[State 9742, ButtonTurnOffAI]
type = ParentVarSet
triggerall = var(7)
triggerall = !var(2)
triggerall = !var(9)
trigger1 = (command = "a")
trigger1 = (Parent,command = "a")
trigger2 = (command = "b")
trigger2 = (Parent,command = "b")
;trigger3 = (command = "c")
;trigger3 = (Parent,command = "c")
trigger3 = (command = "x")
trigger3 = (Parent,command = "x")
trigger4 = (command = "y")
trigger4 = (Parent,command = "y")
;trigger6 = (command = "z")
;trigger6 = (Parent,command = "z")
trigger5 = (command = "start")
trigger5 = (Parent,command = "start")
var(59) = -1

[State 9742, UnPauseCheck]
type = VarSet
triggerall = var(2)
triggerall = !var(4)
trigger1 = var(7)
trigger2 = (var(2) = 2)
trigger2 = (var(2):=0)
var(2) = 2

[State 9742, Goodbye]
type = DestroySelf
trigger1 = Parent,var(59)
trigger2 = !(Parent,Alive)
trigger3 = (RoundState != 2)

[State 9742, HitPauseCheck]
type = VarSet
trigger1 = var(6)
trigger2 = var(7)
trigger3 = !(Parent,HitPauseTime)
var(4) = Parent,HitPauseTime

[State 9742, Delay]
type = VarSet
trigger1 = (var(1):=1)
var(5) = !var(7)

[State 9742, DTC]
type = DisplayToClipboard
trigger1 = 1
text = "var(2) = %d, parentvar(58) = %d, GameTime = %d, var(3) = %d"
params = var(2), (parent,var(58)), GameTime, var(3)



;================================================================================================
;
; RERA'S MISC STATES
;
;================================================================================================

[Statedef -3]

; Create Shikuruu
;----------------
[State -3, Shikuruu]
type = Helper
triggerall = NumHelper(8000) = 0	; Create Shikuruu if it hasn't been already created before :
;trigger1 = RoundState = 0		; - when the screen fades in.
;trigger2 = RoundState = 1		; - during the introduction.
trigger1 = RoundState = 2		; - during the fight.
name = "Shikuruu"
ID = 8000
pos =-50,0
postype = back
stateno = 8500
keyctrl = 0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
size.ground.back = 30
size.ground.front = 30
size.air.back = 20
size.air.front = 20
size.shadowoffset = 1



; Bloody Ending
;--------------
[state -3, bloody ending]
type = VarSet
triggerall = var(9) = 0 && P2Life <= 0
trigger1 = stateno = 220 & MoveHit
trigger2 = stateno = 226 & MoveHit
trigger3 = stateno = 260 & MoveHit
trigger4 = stateno = 421 & MoveHit
trigger5 = stateno = 422 & MoveHit
trigger6 = stateno = 620 & MoveHit
trigger7 = stateno = 820 & MoveHit
trigger8 = stateno = 830 & MoveHit
v = 9
value = 1

[State -3, blood]
type = Explod
trigger1 = var(9) = 1 && anim = 180 && NumExplod(199) = 0
anim = 199
ID = 199
pos = 0,0
sprpriority = 1



; Rage Mode
;----------

; Activate/Desactivate Rage Mode
;-------------------------------
[state -3, set rage mode]			; Switch ON/OFF the Rage Mode
type = VarSet					; ---------------------------
triggerall = RoundState = 2			; if the round isn't finished
trigger1 = var(20) = 0 && var(23) >= 1000	; if the player isn't enraged but the Hit Gauge is full
trigger2 = var(20) = 1 && var(21) <= 0	; or the player is enraged but the Rage Gauge is empty
v = 20						;
value = 0 + (var(23) >= 1000)			; then set the Rage Mode (ON if Hit Gauge full ; OFF if rage gauge empty)

; Rage Gauge
;-----------
[state -3, initialize rage gauge]		; Initialize the Rage Gauge
type = VarSet					; -------------------------
triggerall = RoundState = 2			; if the round isn't finished
trigger1 = var(23) >= 1000			; if the Hit  Gauge is full  (player starts being enraged)
trigger2 = var(21) <= 0				; or the Rage Gauge is empty (player stops being enreged)
v = 21						;
value = 0 + 1000*(var(23) >= 1000)		; then set the Rage Gauge (full if enraged ; empty if not enraged)

[state -3, decrease rage gauge]		; Decrease the Rage Gauge
type = VarSet					; -----------------------
triggerall = RoundState = 2			; if the round isn't finished
triggerall = stateno != [4511, 4512]	; if the player isn't in a Tag state
trigger1 = var(21) > 0				; if the Rage Gauge isn't empty
v = 21						;
value = var(21)-1					; then decrese the Rage Gauge

[state -3, increase rage gauge]		; Increase the Rage Gauge when player is hit (deactivated here)
type = null;VarAdd				; ------------------------------------------
triggerall = RoundState = 2			; if the round isn't finished
trigger1 = var(20) = 1				; if the player is enraged
trigger1 = var(24) != life			; if the player has lost life (has been hit)
v = 21						;
value = ceil((var(24)-life)*1.20)		; then Hit Gauge <- (lost life) + (0.2 x lost life)

; Rage Explosion Mode
;--------------------
[state -3, initialize rage explosion mode] ; Initialize the Rage Explosion mode (deactivated here)
type = null;VarSet				 ; ----------------------------------
triggerall = RoundState = 2			 ; if the round isn't finished
trigger1 = var(21) <= 0 && var(22) = 1	 ; if the Rage Gauge is empty and the Rage Explosion mode is activated
v = 22						 ;
value = 0						 ; then remove the Rage Explosion mode

; Hit Gauge
;----------
[state -3, initialize hit gauge]		  ; Deactivate the Hit Gauge when player is enraged
type = VarSet					  ; -----------------------------------------------
triggerall = RoundState = 2			  ; if the round isn't finished
trigger1 = var(20) = 1				  ; if the player is enraged
v = 23						  ;
value = 0						  ; then set the Hit Gauge to zero

[state -3, increase hit gauge]		  ; Increase the Hit Gauge when player is hit
type = VarSet					  ; -----------------------------------------
triggerall = RoundState = 2			  ; if the round isn't finished
trigger1 = var(22) = 0 && var(25) = 0	  ; if the Rage Explosion or Mu no Kyouchi haven't been activated
trigger1 = var(24) != life			  ; if the player has lost life (has been hit)
v = 23						  ;
value = var(23) + ceil((var(24)-life)*1.20) ; then Hit Gauge <- (lost life) + (0.2 x lost life)

; Life Gauge
;-----------
[state -3, set life gauge]			; Check if the player has lost life :
type = VarSet					; -----------------------------------
trigger1 = var(24) != life			; if   Life Gauge != Life Bar
v = 24						;
value = life					; then Life Gauge <= Life Bar



; Sounds
;-------

; Hit Voices Randomizer
;----------------------
[state -3, hit randomizer]
type = VarRandom
trigger1 = time = 1
v = 15
range = 0,4

; Hit voices
;-----------
[state -3, hit voices]
type = PlaySnd
triggerall = Life > 0 && time = 1
trigger1 = StateNo = 5000
trigger2 = StateNo = 5010
trigger3 = StateNo = 5020
trigger4 = StateNo = 5070
trigger5 = StateNo = 5080
trigger6 = StateNo = 5100
trigger7 = StateNo = 9030
value = 10, var(15)
channel = 0

; Slash Guarded Randomizer
;-------------------------
[state -3, slash guarded randomizer]
type = VarRandom
trigger1 = time = 1
v = 16
range = 0,2

; Slash Attack Randomizer
;------------------------
[state -3, slash attack sound]
type = VarRandom
trigger1 = time = 1
v = 17
range = 0,1

; Voices Randomizer
;------------------
[state -3, voice]
type = VarRandom
trigger1 = time = 1
v = 18
range = 0,1



; Additional states for Ragnarok's dizzy code
;--------------------------------------------

[State -3, Add Stun for Light]
type = VarAdd
triggerall = Time = 1
trigger1 = (StateNo = 5001) && (Anim = 5000)
trigger2 = (StateNo = 5001) && (Anim = 5010)
trigger3 = (StateNo = 5011) && (Anim = 5020)
persistent = 0
ignorehitpause = 1
v = 7
value = 10

[State -3, Add Stun for Medium]
type = VarAdd
triggerall = Time = 1
trigger1 = (StateNo = 5001) && (Anim = 5001)
trigger2 = (StateNo = 5001) && (Anim = 5011)
trigger3 = (StateNo = 5011) && (Anim = 5021)
persistent = 0
ignorehitpause = 1
v = 7
value = 40

[State -3, Add Stun for Heavy]
type = VarAdd
triggerall = Time = 1
trigger1 = (StateNo = 5001) && (Anim = 5002)
trigger2 = (StateNo = 5001) && (Anim = 5012)
trigger3 = (StateNo = 5011) && (Anim = 5022)
persistent = 0
ignorehitpause = 1
v = 7
value = 100

[State -3, Reduce Stun]
type = VarAdd
trigger1 = Var(7) > 0
ignorehitpause = 1
v = 7
value = -1

[State -3, Dizzy Self]
type = ChangeState
trigger1 = (life > 0) && (Var(7) >= 500) && (StateNo != [9000,9007])
value = 9010 ;Fall down before dizzy
ignorehitpause = 1



; Additional states for Omniscience's guard crush code
;-----------------------------------------------------

; Decrease the gauge whenever the character successfully guarded an attack

; Guard (Weak Attacks)
[State -3, VarAdd]
type = Varadd
triggerall = GetHitVar(hitshaketime) = 5
trigger1 = (stateno = 150) || (stateno = 152)
v = 8
value = 1
ignorehitpause = 1

; Guard (Medium Attacks)
[State -3, VarAdd]
type = Varadd
triggerall = GetHitVar(hitshaketime) = 10
trigger1 = (stateno = 150) || (stateno = 152)
v = 8
value = 2
ignorehitpause = 1

; Guard (Strong Attacks)
[State -3, VarAdd]
type = Varadd
triggerall = GetHitVar(hitshaketime) = 15
trigger1 = (stateno = 150) || (stateno = 152)
v = 8
value = 3
ignorehitpause = 1

; Substract points if the character gets hit

; Weak Attacks (Ground)
[State -3, VarAdd]
type = Varadd
triggerall = (var(8) > 0) && (time = 0) && (stateno = 5000) && (alive)
trigger1 = (anim = 5000) || (anim = 5010)
v = 8
value = -3
ignorehitpause = 1

; Weak Attacks (Air)
[State -3, VarAdd]
type = Varadd
triggerall = (var(8) > 0) && (time = 0) && (stateno = 5010) && (alive)
trigger1 = (anim = 5020) || (anim = 5021)
v = 8
value = -3
ignorehitpause = 1

; Medium Attacks (Ground)
[State -3, VarAdd]
type = Varadd
triggerall = (var(8) > 0) && (time = 0) && (stateno = 5000) && (alive)
trigger1 = (anim = 5001) || (anim = 5011)
v = 8
value = -5
ignorehitpause = 1

; Medium Attacks (Air)
[State -3, VarAdd]
type = Varadd
triggerall = (var(8) > 0) && (time = 0) && (stateno = 5010) && (alive)
trigger1 = (anim = 5020) || (anim = 5021)
v = 8
value = -5
ignorehitpause = 1

; Strong Attacks (Ground)
[State -3, VarAdd]
type = VarAdd
triggerall = (var(8) > 0) && (time = 0) && (stateno = 5000) && (alive)
trigger1 = (anim = 5002) || (anim = 5012)
v = 8
value = -7
ignorehitpause = 1

; Strong Attacks - Air
[State -3, VarAdd]
type = VarAdd
trigger1 = (var(8) > 0) && (time = 0) && (stateno = 5010) && (alive) && (anim = 5022)
v = 8
value = -7
ignorehitpause = 1

; Falling into the ground
[State -3, VarAdd]
type = PlaySnd
trigger1 = (var(8) > 0) && (time = 0) && (stateno = 5100) && (alive)
v = 8
value = -9
ignorehitpause = 1
 
; Recover from the effect if the character is not blocking nor getting hit by an attack

[State -3, VarAdd]
type = VarAdd
trigger1 = (var(8) > 0) && ((gametime%5) = 0) && (movetype != H) && (stateno != [130,160])
v = 8
value = -1
ignorehitpause = 1

; Go to guard crush state when gauge full

[State -3, ChangeState]
type = ChangeState
trigger1 = life > 0 && var(8) >= 50
value = 9030
ctrl = 0
ignorehitpause = 1



; AI - 1st part
;--------------

; The 2nd part is in the -2 states

[State -3, SetAI]
type = VarSet
triggerall = !RoundState
triggerall = IsHomeTeam
trigger1 = (TeamSide = 2)
trigger2 = (MatchNo > 1)
var(59) = 1

[State -3, Unfair]; Is this reliable?
type = VarSet
trigger1 = !RoundState
trigger1 = (var(59) != 1)
trigger1 = NumPartner
trigger1 = (ID > Partner,ID)
trigger1 = (TeamSide = 2)
var(59) = 1

[State -3, AI Helper with Twin]; Well, twin or other compatible partner.
type = Helper
triggerall = !var(59)
triggerall = !NumHelper(9742)
triggerall = (RoundState = 2)
triggerall = Alive
triggerall = NumPartner
trigger1 = (P3Name = "Kung Fu Man AI"); Either like this, or the next line if you make all your chars compatible.
trigger2 = (Partner,AuthorName = "Roque")
HelperType = normal
name = "AI Helper Twin"
ID = 9742
pos = 9999999,99999
StateNo = 9742
KeyCtrl = 1
PauseMoveTime = 999999999
SuperMoveTime = 999999999

[State -3, AI Helper]
type = Helper
;trigger1 = (MatchNo = 1)
trigger1 = !var(59)
trigger1 = !NumHelper(9741)
trigger1 = !NumHelper(9742)
trigger1 = (RoundState = 2)
trigger1 = Alive
HelperType = normal
name = "AI Helper"
ID = 9741
pos = 9999999,99999
StateNo = 9741
KeyCtrl = 1
PauseMoveTime = 999999999
SuperMoveTime = 999999999

[State -3, TurnBackOnAI]
type = VarSet
trigger1 = (var(59) = -2)
trigger1 = (RoundState = 2)
trigger1 = Alive
var(59) = 1

[State -3, XOR]
type = VarSet
triggerall = var(59)!=1
trigger1 = (command = "a") ^^ (command = "a2")
trigger2 = (command = "b") ^^ (command = "b2")
;trigger3 = (command = "c") ^^ (command = "c2")
trigger3 = (command = "x") ^^ (command = "x2")
trigger4 = (command = "y") ^^ (command = "y2")
;trigger6 = (command = "z") ^^ (command = "z2")
trigger5 = (command = "start") ^^ (command = "start2")
trigger6 = (command = "holdfwd") ^^ (command = "holdfwd2")
trigger7 = (command = "holdback") ^^ (command = "holdback2")
trigger8 = (command = "holdup") ^^ (command = "holdup2")
trigger9 = (command = "holddown") ^^ (command = "holddown2")
trigger10 = (command = "F") ^^ (command = "F2")
trigger11 = (command = "B") ^^ (command = "B2")
trigger12 = (command = "U") ^^ (command = "U2")
trigger13 = (command = "D") ^^ (command = "D2")
;Add more as desired. (See my notes in the CMD.)
var(59) = 1

[State -3, GameTimeVar]
type = Null
trigger1 = (var(58):=GameTime)
IgnoreHitPause = 1



[Statedef -2]

; Display Velocity and Position
;------------------------------
[State -2, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "AI = %d\nVel(%f,%f) Pos(%f,%f)"
params = var(59),Vel X,Vel Y,Pos X,Pos Y

; Display Rage Mode Infos
;------------------------
[State -2, display rage mode]
type = null;DisplayToClipboard
trigger1 = 1
text = "Rage Explosion = %d, Rage Mode = %d\nRage Gauge = %d, Hit Gauge = %d, Life Gauge = %d"
params = var(22),var(20),var(21),var(23),var(24)

; Display Mu no Kyouchi
;----------------------
[State -2, display mu no kyouchi mode]
type = null;DisplayToClipboard
trigger1 = 1
text = "Mu no Kyouchi = %d, Timer = %d"
params = var(25),var(26)

; Reinitialize Nako State Var
;----------------------------
[State -2, nako state]
type = VarSet
triggerall = name = "Rera"	; prevents to overwritte over an enemy's existing var
triggerall = time = 1
trigger1 = stateno = [5000, 6000)	; Nako is in a get hit state
v = 0
value = 0

; Reinitialize Nako Super Var
;----------------------------
[State -2, nako state]
type = VarSet
triggerall = name = "Rera"	; prevents to overwritte over an enemy's existing var
triggerall = time = 1
trigger1 = stateno = [5000, 6000)	; Nako is in a get hit state
trigger2 = stateno = 101		; Brake state
v = 1
value = 0

; Remove Aura - remove the aura when the player is no more in his concentration state (finished, hit or thrown)
;------------
[State -2, remove aura]
type = RemoveExplod
triggerall = name = "Rera"	; prevents to remove any "161" animation from the enemy
trigger1 = StateNo != 70
ID = 70

; Remove Super Dust
;------------------
[State -2, remove dust]
type = RemoveExplod
triggerall = name = "Rera"
trigger1 = StateNo != [3600, 3610]
ID = 3600

; Power Bar
;----------
[state -2, set power bar]
type = PowerSet
triggerall = name = "Rera"	; prevents to remove any "161" animation from the enemy
triggerall = RoundState = 2
triggerall = stateno != [4511, 4512]
triggerall = life > 0
trigger1 = var(20) = 0 && var(25) = 0 && power != var(23)	; when no special modes : Power = Hit Gauge
trigger2 = var(20) = 1 && power != var(21)			; when Rage Mode		: Power = Rage Gauge
trigger3 = var(25) = 1 && power != var(26)			; when Mu no Kyouchi	: Power = Timer
value = ifelse(var(20)=1, var(21), ifelse(var(25)=1, var(26), var(23)))
ignorehitpause

; Rage Mode
;----------
[State -2, blink]
type = PalFx
trigger1 = RoundState = 2 && life > 0
trigger1 = var(20) = 1
time = 1
add = 75,75,75
ignorehitpause = 1

[State -2, rage explosion background]
type = BgPalFx
trigger1 = RoundState = 2 && life > 0
trigger1 = stateno != [4511, 4512]
trigger1 = var(20) = 1 && var(22) = 1
time = 1
add = -256,-44,-72
mul = 0,205,256
ignorehitpause = 1

; Mu no Kyouchi
;--------------
[State -2, mu_no kyouchi timer]
type = VarSet
triggerall = RoundState = 2 && life > 0
triggerall = stateno != [4511, 4512]
triggerall = stateno != 3500
trigger1 = var(25) = 1 && var(26) > 0
v = 26
value = var(26) -4

[State -2, mu_no kyouchi background]
type = BgPalFx
trigger1 = RoundState = 2 && life > 0
trigger1 = stateno != [4511, 4512]
trigger1 = var(25) = 1 && var(26) > 0
time = 1
color = 0
ignorehitpause = 1

[State -2, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && life > 0
trigger1 = stateno != [4511, 4512]
trigger1 = var(25) = 1 && var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

; Reflected Projectile Sparks
;----------------------------
[State -2, reflected projectile sparks]
type = Explod
triggerall = NumExplod(4140) = 0
trigger1 = ProjHit1260 = 1
trigger1 = (NumTarget > 0) && (target, IsHelper = 0)
ID = 4140
anim = 4140
pos = 0,(target,const(size.mid.pos.y))
postype = p2
bindtime = 44
removetime = 44
ignorehitpause = 1
sprpriority = 3
ownpal = 1

; AI - 2nd part
;--------------

; The 1st part is in the -3 states

[State -2, StopAI]
type = VarSet
triggerall = (var(59) > 0)
trigger1 = (RoundState != 2)
trigger2 = !Alive
var(59) = -2
IgnoreHitPause = 1
