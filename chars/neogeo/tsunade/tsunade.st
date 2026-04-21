;================================================================================================
;
; TSUNADE'S STANDARD MOVES
;
;================================================================================================

; Jump Start
;-----------

[Statedef 40]
type = S
movetype = I
physics = S
anim = 40
sprpriority = 1
velset = 0,0
ctrl = 0

[State 40, sys var init]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 0

[State 40, var set]
type = VarSet
trigger1 = command = "holdfwd"
sysvar(1) = 1

[State 40, var set]
type = VarSet
trigger1 = command = "holdback"
sysvar(1) = -1

[State 40, running velocity]
type = VelSet
trigger1 = AnimTime = 0 && PrevStateNo = 100
x = const(velocity.runjump.fwd.x)
y = const(velocity.runjump.y) + 1*(command != "holdup")

[State 40, neutral velocity]
type = VelSet
trigger1 = AnimTime = 0 && sysvar(1) = 0 && PrevStateNo != 100
x = 0
y = const(velocity.jump.y)

[State 40, forward velocity]
type = VelSet
trigger1 = AnimTime = 0 && sysvar(1) = 1 && PrevStateNo != 100
x = const(velocity.jump.fwd.x)
y = const(velocity.jump.y)

[State 40, back velocity]
type = VelSet
trigger1 = AnimTime = 0 && sysvar(1) = -1 && PrevStateNo != 100
x = const(velocity.jump.back.x)
y = const(velocity.jump.y)

[State 40, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1



; Jump Up
;--------

[Statedef 50]
type = A
movetype = I
physics = A
sprpriority = 1

[State 50, sysvar init]
type = VarSet
trigger1 = time = 0
sysvar(1) = 0

[State 50, standard animations]
type = ChangeAnim
trigger1 = time = 0 && vel x != const(velocity.runjump.fwd.x)
value = ifelse(vel x = 0, 41, ifelse(vel x > 0, 42, 43))

[State 50, running animation]
type = ChangeAnim
trigger1 = time = 0 && vel x = const(velocity.runjump.fwd.x)
value = 45

[State 50, running gravity 1]
type = VelAdd
trigger1 = anim = 45
trigger1 = time <= 22
y = 0.34

[State 50, running gravity 2]
type = VelAdd
trigger1 = anim = 45
trigger1 = time > 22
y = -0.15



; Jump Land
;----------

[Statedef 52]
type = S
physics = S
anim = 47
ctrl = 1

[State 52, velocity]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 52, position]
type = PosSet
trigger1 = time = 0
y = 0

[State 52, land sound]
type = PlaySnd
trigger1 = time = 0
value = 100,0
channel = 1

[State 52, turn]
type = turn
triggerall = P2Dist x < -5
trigger1 = command = "holdfwd"
trigger2 = command = "holdback"
trigger3 = command = "holdup"
trigger4 = command = "holddown"

[State 52, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Running
;--------

[Statedef 100]
type = S
physics = S
anim = 100
sprpriority = 1
ctrl = 0

[State 100, velocity]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 100, don't walk]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, don't turn]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, roll]
type = ChangeState
trigger1 = command = "holdfwd" && command="holddown"
value = 110

[State 100, runing jump]
type = ChangeState
trigger1 = command = "holdup"
value = 40

[State 100, end state]
type = ChangeState
trigger1 = command != "holdfwd"
value = 101

; Brake
;------

[Statedef 101]
type = S
movetype = I
physics = S
anim = 101
sprpriority = 1
ctrl = 0

[State 100, end state]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1



; Hop back
;---------

; (Prepare)
;----------
[Statedef 105]
Type = S
MoveType = I
Physics = S
anim = 105
sprpriority = 1
ctrl = 0

[State 105, throw invincibility]
type = nothitby
trigger1 = statetype = S
value = , NT, ST, HT

[State 105, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 106

; (Jump Back)
;------------
[Statedef 106]
Type = A
MoveType = I
Physics = A
anim = 106
sprpriority = 1
velset = const(velocity.run.back.x), const(velocity.run.back.y)
ctrl = 0

[State 106, change state]
type = ChangeState
trigger1 = time = 20
value = 107

; (Land)
;-------

[Statedef 107]
type = S
movetype = I
physics = S
anim = 107
sprpriority = 1
ctrl = 0

[State 107, velocity]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 107, position]
type = PosSet
trigger1 = time = 0
y = 0

[State 107, land sound]
type = PlaySnd
trigger1 = time = 1
value = 100,0
channel = 1

[State 107, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



; Roll
;-----

[Statedef 110]
type = C
physics = N
anim = 110
sprpriority = 1
ctrl = 1

[State 110, velocity]
type = VelSet
trigger1 = AnimElem = 1
x = 2

[State 110, stop velocity]
type = VelSet
trigger1 = AnimElem = 8,  = 4
x = 0

[State 110, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;================================================================================================
;
; TSUNADE'S INTRO, ENDINGS AND TAUNT
;
;================================================================================================

; Loose
;------

[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0

[State 170, voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 11,1
channel = 0

[State 170, weapon]
type = PlaySnd
trigger1 = AnimElem = 6
value = 115,0
channel = 1




; Draw
;-----

[Statedef 175]
type = S
ctrl = 0
anim = 175
velset = 0

[State 175, voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 11,2
channel = 0

[State 175, weapon]
type = PlaySnd
trigger1 = AnimElem = 6
value = 115,0
channel = 1



; Win pose Selection
;-------------------

[Statedef 180]
type = S

[State 180, randomizer]
type = VarRandom
trigger1 = Time = 0
v = 10
range = 2

[State 180, change state]
type = ChangeState
trigger1 = Time = 0
value = 181 + var(10)



; 1st Win
;--------

[Statedef 181]
type = S
physics = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, assert special]
type = AssertSpecial
trigger1 = Time = [0,215]
flag = RoundNotOver

[State 181, voice 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,3
channel = 0

[State 181, weapon]
type = PlaySnd
trigger1 = AnimElem = 6
value = 115,0
channel = 1

[State 175, voice 2]
type = PlaySnd
trigger1 = AnimElem = 23
value = 12,0
channel = 0



; 2nd Win
;--------

[Statedef 182]
type = S
physics = S
ctrl = 0
anim = 182
velset = 0,0

[State 182, assert special]
type = AssertSpecial
trigger1 = Time = [0,150]
flag = RoundNotOver

[State 182, voice 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 13,1
channel = 0



; 3rd Win
;--------

[Statedef 183]
type = S
physics = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, assert special]
type = AssertSpecial
trigger1 = Time = [0,215]
flag = RoundNotOver

[State 181, weapon]
type = PlaySnd
trigger1 = AnimElem = 6
value = 115,0
channel = 1

[State 175, voice]
type = PlaySnd
trigger1 = AnimElem = 8
value = 13,0
channel = 0



; Introduction
;-------------

[Statedef 190]
type = S
anim = 190
ctrl = 0
velset = 0,0

[State 190, assert special]
type = AssertSpecial
trigger1 = 1
flag = intro

[State 190, voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 12,0
channel = 0

[State 190, end intro]
type = ChangeState
trigger1 = AnimTime = 0
value = 0



; Taunt
;------

[Statedef 195]
type = S
movetype = I
physics = S
anim = 195
sprpriority = 1
velset = 0,0
ctrl = 0

[State 195, voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0,5
channel = 0

[State 195, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;================================================================================================
;
; TSUNADE'S ADDITIONAL HIT STATES
;
;================================================================================================

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



;================================================================================================
;
; AI STATES
;
;================================================================================================

; AI activation coding by Winane
;-------------------------------

; For more details on this code, download the commented version on Winane's website : http://winane.shinmugen.net/

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
trigger4 = Parent,var(59)
trigger5 = (var(3):=0)
var(2) = (var(3):=1)+(var(4):=0)

[State 9741, Facing]
type = Turn
trigger1 = (var(9):=(Facing != Parent,Facing))

[State 9741, DirTurnOnAI]
type = ParentVarSet
triggerall = !var(3)
triggerall = !var(9)
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
trigger3 = (Parent,command = "c")
trigger4 = (Parent,command = "x")
trigger5 = (Parent,command = "y")
trigger6 = (Parent,command = "z")
trigger7 = (Parent,command = "start")
var(59) = 1

[State 9741, ButtonTurnOffAI]
type = ParentVarSet
triggerall = !var(2)
trigger1 = (command = "a")
trigger1 = (Parent,command = "a")
trigger2 = (command = "b")
trigger2 = (Parent,command = "b")
trigger3 = (command = "c")
trigger3 = (Parent,command = "c")
trigger4 = (command = "x")
trigger4 = (Parent,command = "x")
trigger5 = (command = "y")
trigger5 = (Parent,command = "y")
trigger6 = (command = "z")
trigger6 = (Parent,command = "z")
trigger7 = (command = "start")
trigger7 = (Parent,command = "start")
var(59) = -1

[State 9741, UnPauseCheck]
type = VarSet
triggerall = var(2)
trigger1 = (Parent,command = "a")
trigger2 = (Parent,command = "b")
trigger3 = (Parent,command = "c")
trigger4 = (Parent,command = "x")
trigger5 = (Parent,command = "y")
trigger6 = (Parent,command = "z")
trigger7 = (Parent,command = "start")
trigger8 = (var(2) = 2)
trigger8 = (var(2):=0)
var(2) = 2

[State 9741, Goodbye]
type = DestroySelf
triggerall = (var(1):=1)
trigger1 = Parent,var(59)
trigger2 = !(Parent,Alive)
trigger3 = (RoundState != 2)



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
trigger1 = (GameTime>Parent,var(58))
trigger2 = !(Parent,Alive)
trigger3 = (RoundState != 2)
trigger4 = Parent,var(59)
trigger5 = (var(3):=0)
var(2) = (var(3):=1)

[State 9742, Facing]
type = Turn
trigger1 = (var(9):=(Facing != Parent,Facing))

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
trigger3 = (Parent,command = "c")
trigger4 = (Parent,command = "x")
trigger5 = (Parent,command = "y")
trigger6 = (Parent,command = "z")
trigger7 = (Parent,command = "start")
trigger8 = (var(7):=0)
var(7) = 1

[State 9742, SameButtonCheck]
type = VarSet
triggerall = var(7)
triggerall = !var(2)
triggerall = NumPartner
trigger1 = (Parent,command = "a")
trigger1 = (Partner,command = "a")
trigger2 = (Parent,command = "b")
trigger2 = (Partner,command = "b")
trigger3 = (Parent,command = "c")
trigger3 = (Partner,command = "c")
trigger4 = (Parent,command = "x")
trigger4 = (Partner,command = "x")
trigger5 = (Parent,command = "y")
trigger5 = (Partner,command = "y")
trigger6 = (Parent,command = "z")
trigger6 = (Partner,command = "z")
trigger7 = (Parent,command = "start")
trigger7 = (Partner,command = "start")
trigger8 = (var(8):=0)
var(8) = 1

[State 9742, DirTurnOnAI]
type = ParentVarSet
trigger1 = var(1)
trigger1 = var(6)
trigger1 = !var(3)
trigger1 = !var(4)
trigger1 = !var(9)
var(59) = 1

[State 9742, DirTurnOffAI]
type = ParentVarSet
triggerall = var(6)
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
var(59) = 0

[State 9742, ButtonTurnOnAI]
type = ParentVarSet
trigger1 = var(5)
trigger1 = var(7)
trigger1 = !var(2)
trigger1 = !var(8)
var(59) = 1

[State 9742, ButtonTurnOffAI]
type = ParentVarSet
triggerall = var(7)
triggerall = !var(2)
triggerall = !var(8)
trigger1 = (command = "a")
trigger1 = (Parent,command = "a")
trigger2 = (command = "b")
trigger2 = (Parent,command = "b")
trigger3 = (command = "c")
trigger3 = (Parent,command = "c")
trigger4 = (command = "x")
trigger4 = (Parent,command = "x")
trigger5 = (command = "y")
trigger5 = (Parent,command = "y")
trigger6 = (command = "z")
trigger6 = (Parent,command = "z")
trigger7 = (command = "start")
trigger7 = (Parent,command = "start")
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



;================================================================================================
;
; TSUNADE'S ADDITIONAL STATES
;
;================================================================================================

[Statedef -3]

; Hit Voices Randomizer
;----------------------
[state -3, hit randomizer]
type = VarRandom
trigger1 = time = 1
v = 11
range = 0,5

[state -3, hit voices]
type = PlaySnd
triggerall = Life > 0 && time = 1
trigger1 = StateNo = 5000
trigger2 = StateNo = 5010
trigger3 = StateNo = 5020
trigger4 = StateNo = 5070
trigger5 = StateNo = 5080
value = 10, var(11)
channel = 0

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

type = VarSet
trigger1 = !RoundState
trigger1 = (var(59) != 1)
trigger1 = NumPartner
trigger1 = (ID > Partner,ID)
trigger1 = (TeamSide = 2)
var(59) = 1

[State -3, AI Helper (Compatibly Partnered Version)]
type = Helper
trigger1 = !var(59)
trigger1 = !NumHelper(9742)
trigger1 = (RoundState = 2)
trigger1 = Alive
trigger1 = NumPartner
trigger1 = Partner,SelfAnimExist(9741)
HelperType = normal
name = "AI Helper (Simul Version)"
ID = 9742
pos = 9999999,99999
StateNo = 9742
KeyCtrl = 1
PauseMoveTime = 999999999
SuperMoveTime = 999999999

[State -3, AI Helper]
type = Helper
triggerall = !var(59)
triggerall = !NumHelper(9741)
triggerall = (RoundState = 2)
triggerall = Alive
trigger1 = !NumPartner
trigger2 = !(Partner,SelfAnimExist(9741))
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
triggerall = !var(57)
triggerall = (var(58) = GameTime-1)
trigger1 = (command = "a") ^^ (command = "a2")
trigger2 = (command = "b") ^^ (command = "b2")
trigger3 = (command = "c") ^^ (command = "c2")
trigger4 = (command = "x") ^^ (command = "x2")
trigger5 = (command = "y") ^^ (command = "y2")
trigger6 = (command = "z") ^^ (command = "z2")
trigger7 = (command = "start") ^^ (command = "start2")
trigger8 = (command = "holda") ^^ (command = "holda2")
trigger9 = (command = "holdb") ^^ (command = "holdb2")
trigger10 = (command = "holdc") ^^ (command = "holdc2")
trigger11 = (command = "holdx") ^^ (command = "holdx2")
trigger12 = (command = "holdy") ^^ (command = "holdy2")
trigger13 = (command = "holdz") ^^ (command = "holdz2")
trigger14 = (command = "holdstart") ^^ (command = "holdstart2")
trigger15 = (command = "holdfwd") ^^ (command = "holdfwd2")
trigger16 = (command = "holdback") ^^ (command = "holdback2")
trigger17 = (command = "holdup") ^^ (command = "holdup2")
trigger18 = (command = "holddown") ^^ (command = "holddown2")
;Add more as desired. (See my notes in the CMD.)
var(59) = 1

[State -3, fiXOR]
type = VarSet
trigger1 = !HitPauseTime
trigger2 = (var(58) < GameTime-1)
var(57) = HitPauseTime
IgnoreHitPause = 1

[State -3, GameTimeVar]
type = VarSet
trigger1 = 1
var(58) = GameTime
IgnoreHitPause = 1



[Statedef -2]

; Display Infos
;---------------
[State -2, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Magic = %f\nVel(%f,%f) Pos(%f,%f)"
params = fvar(5),Vel X,Vel Y,Pos X,Pos Y
ignorehitpause

; Special Mode
;-------------
[State -2, set special mode var]
type = VarSet
triggerall = name = "Tsunade"
triggerall = AuthorName = "Roque"
trigger1 = var(0) != 0 && var(1) = 0
v = 0
value = 0

[State -2, decrease timer]
type = VarAdd
triggerall = name = "Tsunade"
triggerall = AuthorName = "Roque"
trigger1 = Var(1) > 0
v = 1
value = -1

[State -2, set attack power]
type = AttackMulSet
trigger1 = 1
value = ifelse(var(0)=1, 1.5, 1)

;[State -2, set defense power] ; Does not work under Windows Mugen Yet
;type = DefenceMulSet
;trigger1 = 1
;value = ifelse(var(0)=-1, 0.5, 1)

[State -2, add 1/2 life]
type = LifeAdd
triggerall = name = "Tsunade"
triggerall = AuthorName = "Roque"
trigger1 = var(0) = -1 && var(7) > life
value = (var(7) - life)/2

[State -2, adjust life var]
type = VarSet
triggerall = name = "Tsunade"
triggerall = AuthorName = "Roque"
trigger1 = var(0) = -1 && var(7) != life
v = 7
value = life

; Magic Management
;-----------------
[state -2, enables magic]
type = VarSet
triggerall = RoundState = 2
trigger1 = var(6) = 0 && fvar(5) >= 1000	; if the Magic gauge is full
trigger2 = power >= 1000			; if the Power gauge is full (Training Mode)
v = 6
value = 1

[state -2, disables magic]
type = VarSet
trigger1 = var(6) = 1 && fvar(5) < 1000	; if the Magic gauge is empty
trigger1 = power < 1000				; if the Power gauge is full (Training Mode)
v = 6
value = 0

[state -2, increase magic power]
type = VarSet
trigger1 = fvar(5) < 1000
fv = 5
value = fvar(5) + 1

[state -2, set magic power]
type = VarSet
trigger1 = roundstate = 0
trigger2 = roundstate = 1
fv = 5
value = 1020

[state -2, power gauge]
type = PowerSet
triggerall = power < 1000
trigger1 = power != floor(fvar(5))
value = floor(fvar(5))
ignorehitpause

; AI - 2nd part
;--------------
[State -2, StopAI]
type = VarSet
triggerall = (var(59) > 0)
trigger1 = (RoundState != 2)
trigger2 = !Alive
var(59) = -2
IgnoreHitPause = 1
