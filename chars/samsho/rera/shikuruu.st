;==============================================================================================
;
; SHIKURUU STANDARD MOVES
;
;==============================================================================================

; Standing
;---------

[Statedef 8500]
Type = S
MoveType = I
Physics = N
anim = 8500
sprpriority = 4
velset = 0,0
ctrl = 0

[State 8500, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8500, remove explod]
type = RemoveExplod
trigger1 = time = 0
ID = 8300

[State 8500, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

; When not carrying Nako
;-----------------------

[State 8500, go to tag state]
type = ChangeState
triggerall = parent, var(0)!=20
trigger1 = parent, stateno = [4511, 4512]
value = 8990

[State 8500, go to turn state]
type = ChangeState
triggerall = parent, var(0)!=20
trigger1 = facing != parent, facing		; Nako faces the opposite direction
trigger2 = facing = parent, facing		; Nako is far back
trigger2 = parentdist x <= -150
trigger3 = facing != parent, facing
trigger3 = parent, stateno = 90
value = 8505

[State 8500, go to crouch state]
type = ChangeState
triggerall = parent, var(0)!=20
trigger1 = parent, StateType = C
value = 8510

[State 8500, go to run forward state]
type = ChangeState
triggerall = parent, var(0)!=20
trigger1 = ParentDist x = [-15, 50]
trigger1 = Parent, StateNo = 100		; Nako is running
trigger2 = ParentDist x >= 150
trigger2 = Parent, StateNo != [40, 52]	; Nako is far ahead but not jumping
value = 8600

[State 8500, go to walk forward state]
type = ChangeState
triggerall = parent, var(0)!=20
triggerall = parent, stateno != 90
trigger1 = parent, MoveType != A
trigger1 = ParentDist x = (50, 150)
value = 8520

[State 8500, go to hop back state]
type = ChangeState
triggerall = parent, var(0)!=20
trigger1 = Parent, StateNo = 105
trigger1 = ParentDist x = [-15, 50]
trigger1 = BackEdgeBodyDist > 0		; Prevents Shikuruu from leaving the screen
value = 8605

[State 8500, go to walk back state]
type = ChangeState
triggerall = parent, var(0)!=20	
triggerall = parent, stateno != 90
trigger1 = ParentDist x = (-150, -15)
trigger1 = BackEdgeDist > 0		; Prevents Shikuruu from leaving the screen
value = 8521

[State 8500, end round state]
type = ChangeState
triggerall = (ParentDist x = (-15,50)) && (facing = parent, facing)
trigger1 = RoundState >= 4
value = 8950

[State 8500, go to epunkine shikite state]
type = ChangeState
triggerall = parent, var(0)!=20
trigger1 = parent, stateno = 1100
;trigger2 = parent, StateType = L
;trigger2 = parent, life > 0
;trigger2 = parent, command = "dodge"
value = 8870; + 5*(parent, StateType = L)

[State 8500, go to irusuka emushi newa shikite state]
type = ChangeState
triggerall = parent, var(0)!=20
trigger1 = parent, stateno = 3322
value = 8850

[State 8500, go to parent hit state]
type = ChangeState
triggerall = parent, var(0)!=20	
trigger1 = (parent, MoveType = H) && (parent, hitshakeover = 0)
value = 8890

; When carrying Nako
;-------------------

[State 8500, animation]
type = ChangeAnim
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 0
trigger1 = anim != (parent, anim + 500)
value = parent, anim + 500

[State 8500, turn]
type = turn
triggerall = parent, var(0) = 20
trigger1 = facing != parent, facing

[State 8500, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 0
pos = 0,0

[State 8500, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8500, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 0
value = (parent, StateNo) + 8500

[State 8500, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 0
value = (parent, StateNo) + 500



; Start Turning
;--------------

[Statedef 8505]
Type = S
MoveType = I
Physics = N
anim = 8520
sprpriority = 4
ctrl = 0

[State 8505, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8505, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

; When not carrying Nako
;-----------------------

[State 8505, go to tag state]
type = ChangeState
triggerall = parent, var(0)!=20
trigger1 = parent, stateno = [4511, 4512]
value = 8990

[State 8505, velocity]
type = VelSet
trigger1 = parent, var(0) != 20
trigger2 = parent, stateno = 90
x = const(velocity.walk.fwd.x)

[State 8505, go to run state]			; When Nako is far
type = ChangeState
triggerall = parent, var(0) != 20
trigger1 = ParentDist x >= 150
value = 8600

[State 8505, go to turning state]		; When Nako is close
type = ChangeState
triggerall = parent, var(0) != 20
trigger1 = ParentDist x < 15
value = ifelse(parent, StateType = C, 8507, 8506)

; When carrying Nako
;-------------------

[State 8505, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 40
pos = 0,0

[State 8505, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8505, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 40
value = (parent, StateNo) + 8500

[State 8505, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 40
value = (parent, StateNo) + 500



; Stand Turning
;--------------

[Statedef 8506]
Type = S
MoveType = I
Physics = N
anim = 8505
sprpriority = 4
velset = 0,0
ctrl = 0

[State 8506, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8506, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

; When not carrying Nako
;-----------------------

[State 8506, go to tag state]
type = ChangeState
triggerall = parent, var(0)!=20
trigger1 = parent, stateno = [4511, 4512]
value = 8990

[State 8506, turn]
type = turn
triggerall = parent, var(0) != 20
trigger1 = time = 0

[State 8506, go to standing state]
type = ChangeState
triggerall = parent, var(0) != 20
trigger1 = AnimTime = 0
value = 8500

; When carrying Nako
;-------------------

[State 8506, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 40
pos = 0,0

[State 8506, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8506, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 40
value = (parent, StateNo) + 8500

[State 8506, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 40
value = (parent, StateNo) + 500



; Crouch Turning
;---------------

[Statedef 8507]
Type = C
MoveType = I
Physics = N
anim = 8506
sprpriority = 4
velset = 0,0
ctrl = 0

[State 8507, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8507, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

; When not carrying Nako
;-----------------------

[State 8507, turn]
type = turn
triggerall = parent, var(0) != 20
trigger1 = time = 0

[State 8507, go to crouching state]
type = ChangeState
triggerall = parent, var(0) != 20
trigger1 = AnimTime = 0
value = 8511

; When carrying Nako
;-------------------

[State 8507, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 40
pos = 0,0

[State 8507, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8507, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 40
value = (parent, StateNo) + 8500

[State 8507, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 40
value = (parent, StateNo) + 500



; Stand To Crouch
;----------------

[Statedef 8510]
type    = C
movetype = I
Physics = N
anim = 8510
sprpriority = 4
velset = 0,0
ctrl = 0

[State 8510, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8510, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

; When not carrying Nako
;-----------------------

[State 8510, go to crouch state]
type = ChangeState
triggerall = parent, var(0)!=20
trigger1 = AnimTime = 0
value = 8511

; When carrying Nako
;-------------------

[State 8510, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 10
pos = 0,0

[State 8510, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8510, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 10
value = (parent, StateNo) + 8500

[State 8510, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 10
value = (parent, StateNo) + 500



; Crouch
;-------

[Statedef 8511]
type    = C
movetype = I
Physics = N
anim = 8511
sprpriority = 4
velset = 0,0
ctrl = 0

[State 8511, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8511, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

; When not carrying Nako
;-----------------------

[State 8511, go to crouch to stand state]
type = ChangeState
triggerall = parent, var(0)!=20
trigger1 = parent, StateType != C
value = 8512

; When carrying Nako
;-------------------

[State 8511, animation]
type = ChangeAnim
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 11
trigger1 = anim != (parent, anim + 500)
value = parent, anim + 500

[State 8511, turn]
type = turn
triggerall = parent, var(0) = 20
trigger1 = facing != parent, facing

[State 8511, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 11
pos = 0,0

[State 8511, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8511, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 11
value = (parent, StateNo) + 8500

[State 8511, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 11
value = (parent, StateNo) + 500



; Crouch To Stand
;----------------

[Statedef 8512]
type    = S
movetype = I
Physics = N
anim = 8512
sprpriority = 4
velset = 0,0
ctrl = 0

[State 8512, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8512, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

; When not carrying Nako
;-----------------------

[State 8512, go to standing state]
type = ChangeState
triggerall = parent, var(0)!=20
trigger1 = AnimTime = 0
value = 8500

; When carrying Nako
;-------------------

[State 8512, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 12
pos = 0,0

[State 8512, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8512, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 12
value = (parent, StateNo) + 8500

[State 8512, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 12
value = (parent, StateNo) + 500



; Moving Forward
;---------------

[Statedef 8520]
Type = S
MoveType = I
Physics = N
sprpriority = 4
ctrl = 0

[State 8520, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[state 8520, silence]	; stops running sound
type = PlaySnd
trigger1 = time = 0
value = 1000, 0
channel = 3

[State 8520, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

; When not carrying Nako
;-----------------------

[State 8520, go to tag state]
type = ChangeState
triggerall = parent, var(0)!=20
trigger1 = parent, stateno = [4511, 4512]
value = 8990

[State 8520, animation]
type = ChangeAnim
triggerall = parent, var(0) != 20
trigger1 = time  = 0
value = 8520

[State 8520, velocity when far]
type = VelSet
triggerall = parent, var(0) != 20
trigger1 = time = 0
x = const(velocity.walk.fwd.x)

[State 8520, go to turn state]
type = ChangeState
triggerall = parent, var(0)!=20
trigger1 = facing != parent, facing		; Nako faces the opposite direction
trigger2 = facing = parent, facing		; Nako is far back
trigger2 = parentdist x <= -150
value = 8505

[State 8520, go to standing state]
type = ChangeState
triggerall = parent, var(0) != 20
trigger1 = parent, vel x = 0
trigger1 = ParentDist x = (15, 40)
trigger2 = parent, MoveType = A
trigger3 = parent, stateno = 90
value = 8500

[State 8520, go to running state]
type = ChangeState
triggerall = parent, var(0)!=20
trigger1 = ParentDist x = (15, 50)
trigger1 = Parent, StateNo = 100		; Nako is running
trigger2 = ParentDist x > 150
;trigger2 = Parent, StateNo != [40, 52]	; Nako is far ahead but not jumping
value = 8600

[State 8520, go to hop back state]
type = ChangeState
triggerall = parent, var(0)!=20
trigger1 = Parent, StateNo = 105
trigger1 = ParentDist x = (15, 50)
trigger1 = BackEdgeBodyDist > 0		; Prevents Shikuruu from leaving the screen
value = 8605

[State 8520, go to walk back state]
type = ChangeState
triggerall = parent, var(0)!=20	
triggerall = parent, stateno != 90
trigger1 = ParentDist x = (-150, 15)
trigger1 = BackEdgeDist > 0		; Prevents Shikuruu from leaving the screen
value = 8521

; When carrying Nako
;-------------------

[State 8520, animation]
type = ChangeAnim
triggerall = parent, var(0) = 20
trigger1 = anim != (parent, anim + 500)
trigger1 = parent, Stateno = 20
value = parent, anim + 500

[State 8520, turn]
type = Turn
triggerall = parent, var(0)=20
trigger1 = facing != parent, facing

[State 8520, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 20
pos = 0,0

[State 8520, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8520, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 20
value = (parent, StateNo) + 8500

[State 8520, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 20
value = (parent, StateNo) + 500



; Moving Back
;------------

[Statedef 8521]
Type = S
MoveType = I
Physics = N
anim = 8521
SprPriority = 4
ctrl = 0

[State 8521, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8521, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8521, go to tag state]
type = ChangeState
triggerall = parent, var(0)!=20
trigger1 = parent, stateno = [4511, 4512]
value = 8990

[State 8521, velocity 1]
type = VelSet
trigger1 = parent, var(0) != 20
x = -1.5

[State 8521, go to standing state]
type = ChangeState
triggerall = parent, var(0) != 20
trigger1 = ParentDist x = (15, 50)
trigger2 = BackEdgeDist <= 0		; Prevents Shikuruu from leaving the screen
trigger3 = parent, stateno = 90
value = 8500

[State 8521, go to turn state]
type = ChangeState
triggerall = parent, var(0)!=20
trigger1 = facing != parent, facing		; Nako faces the opposite direction
trigger2 = facing = parent, facing		; Nako is far back
trigger2 = parentdist x <= -150
value = 8505

[State 8521, go to walk fwd state]
type = ChangeState
triggerall = parent, var(0)!=20	
trigger1 = ParentDist x = (50, 150)
trigger1 = FrontEdgeDist > 0			; Prevents Shikuruu from leaving the screen
value = 8520

[State 8521, go to running state]
type = ChangeState
triggerall = parent, var(0)!=20
trigger1 = ParentDist x = (15, 50)
trigger1 = Parent, StateNo = 100		; Nako is running
trigger2 = ParentDist x >= 150
trigger2 = Parent, StateNo != [40, 52]	; Nako is far ahead but not jumping
value = 8600

[State 8521, go to hop back state]
type = ChangeState
triggerall = parent, var(0)!=20
trigger1 = Parent, StateNo = 105
trigger1 = ParentDist x = (15, 50)
trigger1 = BackEdgeBodyDist > 0		; Prevents Shikuruu from leaving the screen
value = 8605



; Jump Start
;-----------

[Statedef 8540]
Type = S
MoveType = I
Physics = N
sprpriority = 4
ctrl = 0

[State 8540, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8540, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

; When not carrying Nako
;-----------------------

[State 8540, go to standing state]
type = ChangeState
trigger1 = parent, var(0)!= 20
value = 8500

; When carrying Nako
;-------------------

[State 8540, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 40
pos = 0,0

[State 8540, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8540, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 40
value = (parent, StateNo) + 8500

[State 8540, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 40
value = (parent, StateNo) + 500



; Long Jump Start
;----------------

[Statedef 8541]
Type = S
MoveType = I
Physics = N
sprpriority = 4
ctrl = 0

[State 85041, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8541, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

; When not carrying Nako
;-----------------------

[State 8541, go to standing state]
type = ChangeState
trigger1 = parent, var(0)!= 20
value = 8500

; When carrying Nako
;-------------------

[State 8541, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 41
pos = 0,0

[State 8541, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8541, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 41
value = (parent, StateNo) + 8500

[State 8541, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 41
value = (parent, StateNo) + 500



; Jump Up
;--------

[Statedef 8550]
Type = A
MoveType = I
Physics = N
sprpriority = 4
ctrl = 0

[State 8550, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8550, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8550, animation]
type = ChangeAnim
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 50
trigger1 = anim != (parent, anim + 500)
value = parent, anim + 500

[State 8550, velocity]
type = VelSet
trigger1 = Time = 0
x = parent, vel x
y = parent, vel y

[State 8550, gravity]
type = VelAdd
trigger1 = 1
y = const(movement.yaccel)

[State 8550, small jump] ; decreases velocity if the player has released the "up" direction (small jump)
type = VelAdd
trigger1 = time = 5
trigger1 = parent, command != "holdup"
y = 3.5

[State 8550, after images]
type = AfterImage
trigger1 = time = 0 && parent, var(4) = 1
time = 45
length = 5
palbright = 0,0,0
palcontrast = 128,128,128
paladd = 0,0,0
palmul = 1,1,1
trans = add1
timegap = 1
framegap = 2

; When not carrying Nako
;-----------------------

[State 8550, end state]
type = ChangeState
trigger1 = parent, var(0) != 20
trigger1 = vel y > 0
trigger1 = pos y >= -ceil(vel y)
value = 8552

; When carrying Nako
;-------------------

[State 8550, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 50
pos = 0,0

[State 8550, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8550, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
triggerall = parent, StateNo != 95
trigger1 = parent, StateNo != 50
value = (parent, StateNo) + 8500

[State 8550, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 50
value = (parent, StateNo) + 500



; Jump Down
;----------

[Statedef 8551]
Type = A
MoveType = I
Physics = N
sprpriority = 4
ctrl = 0

[State 8551, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8551, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8551, gravity]
type = VelAdd
trigger1 = 1
y = const(movement.yaccel)

; When not carrying Nako
;-----------------------

[State 8551, end state]
type = ChangeState
trigger1 = parent, var(0) != 20
trigger1 = vel y > 0
trigger1 = pos y >= -ceil(vel y)
value = 8552

; When carrying Nako
;-------------------

[State 8551, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 51
pos = 0,0

[State 8551, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8551, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
triggerall = parent, StateNo != 95
trigger1 = parent, StateNo != 51
value = (parent, StateNo) + 8500

[State 8551, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 51
value = (parent, StateNo) + 500



; Landing
;--------

[Statedef 8552]
Type = S
MoveType = I
Physics = N
anim = 8547
sprpriority = 4
ctrl = 0

[State 8552, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8552, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8552, vel set]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 8552, pos set]
type = PosSet
trigger1 = Time = 0
y = 0

; When not carrying Nako
;-----------------------

[State 8545, change state]
type = ChangeState
triggerall = parent, var(0)!=20
trigger1 = AnimTime = 0
value = 8500

[State 8545, land sound]
type = PlaySnd
triggerall = parent, var(0)!=20
trigger1 = Time = 1
value = 100, 2
channel = 3

; When carrying Nako
;-------------------

[State 8552, turn]
type = Turn
triggerall = parent, var(0) = 20
triggerall = facing != parent, facing
trigger1 = parent, command = "holdfwd"
trigger2 = parent, command = "holdback"
trigger3 = parent, command = "holdup"

[State 8552, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 52
pos = 0,0

[State 8552, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8552, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 52
value = (parent, StateNo) + 8500

[State 8552, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 52
value = (parent, StateNo) + 500



; Receiving Nakoruru
;-------------------

[Statedef 8591]
Type = S
MoveType = I
Physics = N
anim = 8590
sprpriority = 4
velset = 0,0
ctrl = 0

[State 8591, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8591, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

; When not carrying Nako
;-----------------------

[State 8591, go to standing state]
type = ChangeState
trigger1 = parent, var(0)!= 20
value = 8500

; When carrying Nako
;-------------------

[State 8591, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 91
pos = 0,0

[State 8591, turn]
type = turn
trigger1 = facing != parent, facing

[State 8591, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8591, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 91
value = (parent, StateNo) + 8500

[State 8591, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 91
value = (parent, StateNo) + 500



; Expulsing Nakoruru
;-------------------

[Statedef 8595]
Type = S
MoveType = I
Physics = N
anim = 8595
sprpriority = 4
velset = 0,0
ctrl = 0

[State 8595, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8595, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8595, change state]
type = ChangeState
trigger1 = AnimTime = 0
value = 8500



; Run
;----

[Statedef 8600]
Type = S
MoveType = I
Physics = N
anim = 8600
sprpriority = 4
ctrl = 0

[State 8600, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8600, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8600, velocity]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x) + (parent, var(0)=20)

[State 8600, sound]
type = PlaySnd
trigger1 = time = 1
trigger2 = (GameTime%84) = 0
value = 300, 1
channel = 3

; When not carrying Nako
;-----------------------

[State 8600, go to tag state]
type = ChangeState
triggerall = parent, var(0)!=20
trigger1 = parent, stateno = [4511, 4512]
value = 8990

[State 8600, walk]
type = ChangeState
triggerall = (parent, var(0)!=20)
triggerall = (AnimElem = 3 >= 0)
triggerall = (facing != parent, facing)
trigger1 = (ParentDist x <= 50)
value = 8520

[State 8600, brake]
type = ChangeState
triggerall = (parent, var(0)!=20)
triggerall = (AnimElem = 3 >= 0)
triggerall = (facing = parent, facing)
trigger1 = (ParentDist x <= 150) && (parent, StateNo != 100) && (parent, StateNo != [40,52])
trigger2 = (ParentDist x < -150)
value = 8601

; When carrying Nako
;-------------------

[State 8600, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 100
pos = 0,0

[State 8600, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8600, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 100
value = (parent, StateNo) + 8500

[State 8600, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 100
value = (parent, StateNo) + 500



; Brake
;------

[Statedef 8601]
Type = S
MoveType = I
Physics = S
sprpriority = 4
ctrl = 0

[State 8601, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8601, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8601, animation]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(parent, var(0)!=20, 8511, 8601)

[State 8601, velocity]
type = VelSet
trigger1 = time = 0
x = 10.1
y = 0

[State 8601, position]
type = PosSet
trigger1 = time = 0
y = 0

[State 8601, remove explod]		; remove special explods
type = RemoveExplod
trigger1 = time = 0
ID = 8300

[state 8601, brake sound]
type = PlaySnd
trigger1 = time = 0
value = 100, 4
channel = 3

; When not carrying Nako
;-----------------------

[State 8601, dust 1]
type = MakeDust
triggerall = parent, var(0) != 20
trigger1 = vel x > 0
pos = 0, 5
spacing = 3

[State 8601, dust 2]
type = MakeDust
triggerall = parent, var(0) != 20
trigger1 = vel x > 0
pos = -30, 5
spacing = 3

[State 8601, end state]
type = ChangeState
trigger1 = vel x <= 0
value = 8500

; When carrying Nako
;-------------------

[State 8601, dust 1]
type = MakeDust
triggerall = parent, var(0) = 20
trigger1 = parent, vel x > 0
pos = 0, -3
spacing = 3

[State 8601, dust 2]
type = MakeDust
triggerall = parent, var(0) = 20
trigger1 = parent, vel x > 0
pos = 20, 0
spacing = 3

[State 8601, dust 3]
type = MakeDust
triggerall = parent, var(0) = 20
trigger1 = parent, vel x > 0
pos = 40, 5
spacing = 3

[State 8601, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 101
pos = 0,0

[State 8601, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8601, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 101
value = (parent, StateNo) + 8500

[State 8601, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 101
value = (parent, StateNo) + 500



; Emergency Stop
;---------------

[Statedef 8602]
Type = S
MoveType = I
Physics = S
sprpriority = 4
ctrl = 0

[State 8602, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 802, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8602, animation]
type = ChangeAnim
trigger1 = time = 0
value = ifelse(parent, var(0)!=20, 8511, 8601)

[State 8602, velocity]
type = VelSet
trigger1 = time = 0
x = 10.1
y = 0

[State 8602, position]
type = PosSet
trigger1 = time = 0
y = 0

[State 8602, remove explod]		; remove special explods
type = RemoveExplod
trigger1 = time = 0
ID = 8300

[state 8602, brake sound]
type = PlaySnd
trigger1 = time = 0
value = 100, 4
channel = 3

[State 8602, dust 1]
type = MakeDust
triggerall = parent, var(0) = 20
trigger1 = parent, vel x > 0
pos = 0, -3
spacing = 3

[State 8602, dust 2]
type = MakeDust
triggerall = parent, var(0) = 20
trigger1 = parent, vel x > 0
pos = 20, 0
spacing = 3

[State 8602, dust 3]
type = MakeDust
triggerall = parent, var(0) = 20
trigger1 = parent, vel x > 0
pos = 40, 5
spacing = 3

[State 8602, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 102
pos = 0,0

[State 8602, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8602, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 102
value = (parent, StateNo) + 8500

[State 8602, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 102
value = (parent, StateNo) + 500



; Hop Back
;---------

[Statedef 8605]
Type = A
MoveType = I
Physics = N
anim = 8605
sprpriority = 4
ctrl = 0

[State 8605, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8605, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8605, turn]
type = turn
trigger1 = time = 0 && PrevStateNo = [8600, 8602]
trigger1 = P2Dist x < 0

[State 8605, stop running sound]
type = StopSnd
trigger1 = time = 0
channel = 3

[State 8605, gravity]
type = gravity
trigger1 = 1

; When not carrying Nako
;-----------------------

[State 8605, velocity]
type = VelSet
triggerall = parent, var(0) != 20
trigger1 = time = 0
x = -8
y = -2

[State 8605, vel add]
type = VelAdd
trigger1 = parent, var(0) != 20
y = -0.3

[State 8605, end state]
type = ChangeState
trigger1 = Time = 18
value = 8552

; When carrying Nako
;-------------------

[State 8605, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 105
pos = 0,0

[State 8605, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8605, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 105
value = (parent, StateNo) + 8500

[State 8605, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 105
value = (parent, StateNo) + 500



; Guarding
;---------

[Statedef 8620]
Type = U
MoveType = I
Physics = U
SprPriority = -1
ctrl = 0

[State 8620, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8620, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

; When not carrying Nako
;-----------------------

[State 8620, go to standing state]
type = ChangeState
trigger1 = parent, var(0)!= 20
value = 8500 + 11*(StateType = C)

; When carrying Nako
;-------------------

[state 8620, animation]
type = ChangeAnim
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 120
trigger1 = anim != (parent, anim + 500)
value = parent, anim + 500

[State 8620, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 120
pos = 0,0

[State 8620, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 120
value = (parent, StateNo) + 8500

[State 8620, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8620, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 120
value = (parent, StateNo) + 500

[State 8620, land state]
type = ChangeState
triggerall = parent, var(0) != 20
trigger1 = vel y > 0
trigger1 = pos y >= -ceil(vel y)
value = 8552



; Stand Guarding
;---------------

[Statedef 8630]
Type = S
MoveType = I
Physics = S
SprPriority = -1

[State 8630, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8630, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

; When not carrying Nako
;-----------------------

[State 8630, go to standing state]
type = ChangeState
trigger1 = parent, var(0)!= 20
value = 8500

; When carrying Nako
;-------------------

[State 8630, animation]
type = ChangeAnim
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 130
trigger1 = anim != (parent, anim + 500)
value = parent, anim + 500

[State 8630, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 130
pos = 0,0

[State 8630, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 130
value = (parent, StateNo) + 8500

[State 8630, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8630, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 130
value = (parent, StateNo) + 500



; Crouch Guarding
;----------------

[Statedef 8631]
Type = C
MoveType = I
physics = C
SprPriority = -1

[State 8631, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8631, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

; When not carrying Nako
;-----------------------

[State 8631, go to standing state]
type = ChangeState
trigger1 = parent, var(0)!= 20
value = 8511

; When carrying Nako
;-------------------

[State 8631, animation]
type = ChangeAnim
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 131
trigger1 = anim != (parent, anim + 500)
value = parent, anim + 500

[State 8631, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 131
pos = 0,0

[State 8631, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 131
value = (parent, StateNo) + 8500

[State 8631, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8631, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 131
value = (parent, StateNo) + 500


; Air Guarding
;-------------

[Statedef 8632]
Type = A
MoveType = I
Physics = N
SprPriority = -1

[State 8632, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8632, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8632, gravity]
type = VelAdd
trigger1 = 1
y = const(movement.yaccel)

; When not carrying Nako
;-----------------------

[State 8632, land state]
type = ChangeState
triggerall = parent, var(0) != 20
trigger1 = vel y > 0
trigger1 = pos y >= -ceil(vel y)
value = 8552

; When carrying Nako
;-------------------

[State 8632, animation]
type = ChangeAnim
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 132
trigger1 = anim != (parent, anim + 500)
value = parent, anim + 500

[State 8632, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 132
pos = 0,0

[State 8632, land]
type = VelSet
trigger1 = parent, var(0) = 20
trigger1 = parent, sysvar(0)
y = 0

[State 8632, land]
type = PosSet
trigger1 = parent, var(0) = 20
trigger1 = parent, sysvar(0)
y = 0

[State 8632, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 132
value = (parent, StateNo) + 8500

[State 8632, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8632, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 132
value = (parent, StateNo) + 500



; End Guard
;----------

[Statedef 8640]
Type = U
MoveType = I
Physics = U
SprPriority = -1
ctrl = 0

[State 8640, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8640, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8640, stand type set]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 8640, crouch type set]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 8640, air type set]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

; When not carrying Nako
;-----------------------

[State 8640, land state]
type = ChangeState
triggerall = parent, var(0) != 20
trigger1 = vel y > 0
trigger1 = pos y >= -ceil(vel y)
value = 8552

; When carrying Nako
;-------------------

[State 8640, animation]
type = ChangeAnim
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 140
trigger1 = anim != (parent, anim + 500)
value = parent, anim + 500

[State 8640, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 140
pos = 0,0

[State 8640, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 140
value = (parent, StateNo) + 8500

[State 8640, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8640, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 140
value = (parent, StateNo) + 500



; Stand Guarding A Hit
;---------------------
; Shaking
;--------
[Statedef 8650]
Type = S
MoveType= H
Physics = N
SprPriority = -1
velset = 0,0

[State 8650, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8650, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

; When not carrying Nako
;-----------------------

[State 8650, go to standing state]
type = ChangeState
trigger1 = parent, var(0)!= 20
value = 8500

; When carrying Nako
;-------------------

[State 8650, animation]
type = ChangeAnim
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 150
value = parent, anim + 500

[State 8650, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 150
pos = 0,0

[State 8650, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 150
value = (parent, StateNo) + 8500

[State 8650, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8650, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 150
value = (parent, StateNo) + 500

; Knocked Back
;-------------
[Statedef 8651]
Type = S
MoveType= H
Physics = S
SprPriority = -1

[State 8651, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8651, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

; When not carrying Nako
;-----------------------

[State 8651, go to standing state]
type = ChangeState
trigger1 = parent, var(0)!= 20
value = 8500

; When carrying Nako
;-------------------

[State 8651, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 151
pos = 0,0

[State 8651, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 151
value = (parent, StateNo) + 8500

[State 8651, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8651, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 151
value = (parent, StateNo) + 500



; Crouch Guarding A Hit
;----------------------
; Shaking
;--------
[Statedef 8652]
Type = C
MoveType= H
Physics = N
SprPriority = -1
velset = 0,0

[State 8652, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8652, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

; When not carrying Nako
;-----------------------

[State 8652, go to standing state]
type = ChangeState
trigger1 = parent, var(0)!= 20
value = 8511

; When carrying Nako
;-------------------

[State 8652, animation]
type = ChangeAnim
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 152
value = parent, anim + 500

[State 8652, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 152
pos = 0,0

[State 8652, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 152
value = (parent, StateNo) + 8500

[State 8652, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8652, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 152
value = (parent, StateNo) + 500

; Knocked Back
;-------------
[Statedef 8653]
Type = S
MoveType= H
Physics = S
SprPriority = -1

[State 8653, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8653, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

; When not carrying Nako
;-----------------------

[State 8653, go to standing state]
type = ChangeState
trigger1 = parent, var(0)!= 20
value = 8511

; When carrying Nako
;-------------------

[State 8653, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 153
pos = 0,0

[State 8653, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 153
value = (parent, StateNo) + 8500

[State 8653, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8653, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 153
value = (parent, StateNo) + 500



; Air Guarding A Hit
;-------------------
; Shaking
;--------
[Statedef 8654]
Type = A
MoveType= H
Physics = N
SprPriority = -1
velset = 0,0

[State 8654, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8654, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

; When not carrying Nako
;-----------------------

[State 8654, go to standing state]
type = ChangeState
trigger1 = parent, var(0)!= 20
value = 8555

; When carrying Nako
;-------------------

[State 8654, animation]
type = ChangeAnim
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 154
value = parent, anim + 500

[State 8654, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 154
pos = 0,0

[State 8654, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 154
value = (parent, StateNo) + 8500

[State 8654, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8654, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 154
value = (parent, StateNo) + 500

; Knocked Away
;-------------
[Statedef 8655]
Type = A
MoveType= H
Physics = N
SprPriority = -1

[State 8655, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8655, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8655, hit velocity]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 8655, gravity]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

; When not carrying Nako
;-----------------------

[State 8655, go to standing state]
type = ChangeState
trigger1 = parent, var(0)!= 20
value = 8552

; When carrying Nako
;-------------------

[State 8655, land]
type = VelSet
triggerall = parent, var(0) = 20
trigger1 = sysvar(0)
y = 0

[State 8655, land]
type = PosSet
triggerall = parent, var(0) = 20
trigger1 = sysvar(0)
y = 0

[State 8655, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 155
pos = 0,0

[State 8655, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 155
value = (parent, StateNo) + 8500

[State 8655, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8655, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 155
value = (parent, StateNo) + 500



;==============================================================================================
;
; STANDARD ATTACKS
;
;==============================================================================================

; Stand Light Slash
;------------------

[Statedef 8700]
Type = S
MoveType = I
Physics = S
sprpriority = 1
velset = 0,0
ctrl = 0

[State 8700, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8700, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8700, animation 1]
type = ChangeAnim
trigger1 = parent, AnimElem = 1
value = 8701

[State 8700, animation 2]
type = ChangeAnim
trigger1 = parent, AnimElem = 3
value = 8702

[State 8700, animation 3]
type = ChangeAnim
trigger1 = parent, AnimElem = 7
value = 8700

[State 8700, bind to Nakoruru]
type = BindToParent
trigger1 = parent, var(0) = 20
trigger1 = parent, Stateno = 8200
pos = 0,0

[State 8700, turn]
type = turn
triggerall = parent, var(0) = 20
trigger1 = facing != parent, facing

[State 8700, Nako hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8700, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 8200
value = (parent, StateNo) + 8500

[State 8700, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 8200
value = (parent, StateNo) + 500


; Stand Medium Slash
;------------------

[Statedef 8705]
Type = S
MoveType = I
Physics = S
sprpriority = 1
velset = 0,0
ctrl = 0

[State 8705, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8705, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8705, animation 1]
type = ChangeAnim
trigger1 = parent, AnimElem = 1
value = 8701

[State 8705, animation 2]
type = ChangeAnim
trigger1 = parent, AnimElem = 2
value = 8702

[State 8705, animation 3]
type = ChangeAnim
trigger1 = parent, AnimElem = 6
value = 8700

[State 8705, bind to Nakoruru]
type = BindToParent
trigger1 = parent, var(0) = 20
trigger1 = parent, Stateno = 8205
pos = 0,0

[State 8705, turn]
type = turn
triggerall = parent, var(0) = 20
trigger1 = facing != parent, facing

[State 8705, Nako hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8705, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 8205
value = (parent, StateNo) + 8500

[State 8705, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 8205
value = (parent, StateNo) + 500



; Stand Fierce Slash
;------------------

[Statedef 8710]
Type = S
MoveType = I
Physics = S
sprpriority = 1
velset = 0,0
ctrl = 0

[State 8710, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8710, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8710, animation 1]
type = ChangeAnim
trigger1 = parent, AnimElem = 1
value = 8701

[State 8710, animation 2]
type = ChangeAnim
trigger1 = parent, AnimElem = 2
value = 8702

[State 8710, animation 3]
type = ChangeAnim
trigger1 = parent, AnimElem = 6
value = 8700

[State 8710, bind to Nakoruru]
type = BindToParent
trigger1 = parent, var(0) = 20
trigger1 = parent, Stateno = 8210
pos = 0,0

[State 8710, turn]
type = turn
triggerall = parent, var(0) = 20
trigger1 = facing != parent, facing

[State 8710, Nako hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8710, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 8210
value = (parent, StateNo) + 8500

[State 8710, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 8210
value = (parent, StateNo) + 500


; Overhead Slash
;---------------

[Statedef 8715]
Type = S
MoveType = A
Physics = N
sprpriority = 1
velset = 0,0
ctrl = 0

[State 8715, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8715, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8715, animation 1]
type = ChangeAnim
trigger1 = parent, AnimElem = 1, >= 0
trigger1 = parent, AnimElem = 2, < 0
value = 8600

[State 8715, animation 2]
type = ChangeAnim
trigger1 = parent, AnimElem = 2
value = 8750

[State 8715, animation 3]
type = ChangeAnim
trigger1 = parent, AnimElem = 7
value = 8751

[State 8715, state modify]
type = StateTypeSet
trigger1 = time = 2
StateType = A

[State 8715, velocity]
type = VelSet
trigger1 = parent, AnimElem = 2
x = parent, vel x
y = parent, vel y

[State 8715, bind to Nakoruru]
type = BindToParent
trigger1 = parent, var(0) = 20
trigger1 = parent, Stateno = 8215
pos = 0,0

[State 8715, turn]
type = turn
triggerall = parent, var(0) = 20
trigger1 = facing != parent, facing

[State 8715, Nako hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8715, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 8215
value = (parent, StateNo) + 8500

[State 8715, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 8215
value = (parent, StateNo) + 500


; Running Slash
;--------------

[Statedef 8720]
Type = S
MoveType = I
Physics = S
sprpriority = 1
velset = 0,0
ctrl = 0

[State 8720, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8720, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8720, animation 1]
type = ChangeAnim
trigger1 = parent, AnimElem = 1
value = 8701

[State 8720, animation 2]
type = ChangeAnim
trigger1 = parent, AnimElem = 2
value = 8702

[State 8720, animation 3]
type = ChangeAnim
trigger1 = parent, AnimElem = 7
value = 8700

[State 8720, turn]
type = turn
triggerall = parent, var(0) = 20
trigger1 = facing != parent, facing

[State 8720, dust 1]
type = MakeDust
trigger1 = parent, vel x > 0
pos = 10, -3
spacing = 3

[State 8720, dust 2]
type = MakeDust
trigger1 = parent, vel x > 0
pos = 25, -3
spacing = 3

[State 8720, dust 3]
type = MakeDust
trigger1 = parent, vel x > 0
pos = -35, 0
spacing = 3

[State 8720, bind to Nakoruru]
type = BindToParent
trigger1 = parent, var(0) = 20
trigger1 = parent, Stateno = 8220
pos = 0,0

[State 8720, Nako hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8720, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 8220
value = (parent, StateNo) + 8500

[State 8720, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 8220
value = (parent, StateNo) + 500


; Evade Attack
;-------------

[Statedef 8725]
Type = S
MoveType = I
Physics = S
sprpriority = 1
velset = 0,0
ctrl = 0

[State 8725, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8725, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8725, animation 1]
type = ChangeAnim
trigger1 = parent, AnimElem = 1
value = 8701

[State 8725, animation 2]
type = ChangeAnim
trigger1 = parent, AnimElem = 3
value = 8702

[State 8725, animation 3]
type = ChangeAnim
trigger1 = parent, AnimElem = 8
value = 8700

[State 8725, bind to Nakoruru]
type = BindToParent
trigger1 = parent, var(0) = 20
trigger1 = parent, Stateno = 8225
pos = 0,0

[State 8725, turn]
type = turn
triggerall = parent, var(0) = 20
trigger1 = facing != parent, facing

[State 8725, Nako hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8725, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 8225
value = (parent, StateNo) + 8500

[State 8725, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 8225
value = (parent, StateNo) + 500



; Crouch Light Slash
;-------------------

[Statedef 8730]
Type = S
MoveType = I
Physics = C
sprpriority = 1
velset = 0,0
ctrl = 0

[State 8730, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8730, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8730, animation 1]
type = ChangeAnim
trigger1 = parent, AnimElem = 1
trigger2 = parent, AnimElem = 7
value = 8730

[State 8730, animation 2]
type = ChangeAnim
trigger1 = parent, AnimElem = 2
trigger2 = parent, AnimElem = 6
value = 8731

[State 8730, animation 3]
type = ChangeAnim
trigger1 = parent, AnimElem = 3
value = 8732

[State 8730, bind to Nakoruru]
type = BindToParent
trigger1 = parent, var(0) = 20
trigger1 = parent, Stateno = 8230
pos = 0,0

[State 8730, turn]
type = turn
triggerall = parent, var(0) = 20
trigger1 = facing != parent, facing

[State 8730, Nako hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8730, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 8230
value = (parent, StateNo) + 8500

[State 8730, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 8230
value = (parent, StateNo) + 500



; Crouch Medium Slash
;--------------------

[Statedef 8735]
Type = S
MoveType = I
Physics = C
sprpriority = 1
velset = 0,0
ctrl = 0

[State 8735, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8735, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8735, animation 1]
type = ChangeAnim
trigger1 = parent, AnimElem = 7
value = 8730

[State 8735, animation 2]
type = ChangeAnim
trigger1 = parent, AnimElem = 1
trigger2 = parent, AnimElem = 6
value = 8731

[State 8735, animation 3]
type = ChangeAnim
trigger1 = parent, AnimElem = 2
value = 8732

[State 8735, bind to Nakoruru]
type = BindToParent
trigger1 = parent, var(0) = 20
trigger1 = parent, Stateno = 8235
pos = 0,0

[State 8735, turn]
type = turn
triggerall = parent, var(0) = 20
trigger1 = facing != parent, facing

[State 8735, Nako hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8735, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 8235
value = (parent, StateNo) + 8500

[State 8735, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 8235
value = (parent, StateNo) + 500



; Crouch Fierce Slash
;--------------------

[Statedef 8740]
Type = S
MoveType = I
Physics = C
sprpriority = 1
velset = 0,0
ctrl = 0

[State 8740, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8740, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8740, animation 1]
type = ChangeAnim
trigger1 = parent, AnimElem = 7
value = 8730

[State 8740, animation 2]
type = ChangeAnim
trigger1 = parent, AnimElem = 1
trigger2 = parent, AnimElem = 6
value = 8731

[State 8740, animation 3]
type = ChangeAnim
trigger1 = parent, AnimElem = 2
value = 8732

[State 8740, bind to Nakoruru]
type = BindToParent
trigger1 = parent, var(0) = 20
trigger1 = parent, Stateno = 8240
pos = 0,0

[State 8740, turn]
type = turn
triggerall = parent, var(0) = 20
trigger1 = facing != parent, facing

[State 8740, Nako hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8740, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 8240
value = (parent, StateNo) + 8500

[State 8740, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 8240
value = (parent, StateNo) + 500



; Air Light Slash
;----------------

[Statedef 8750]
Type = A
MoveType = I
Physics = N
sprpriority = 1
ctrl = 0

[State 8750, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8750, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8750, animation 1]
type = ChangeAnim
trigger1 = parent, AnimElem = 1
value = 8750

[State 8750, animation 2]
type = ChangeAnim
trigger1 = parent, AnimElem = 5
value = 8751

[State 8750, bind to Nakoruru]
type = BindToParent
trigger1 = parent, var(0) = 20
trigger1 = parent, Stateno = 8250
pos = 0,0

[State 8750, turn]
type = turn
triggerall = parent, var(0) = 20
trigger1 = facing != parent, facing

[State 8750, Nako hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8750, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 8250
value = (parent, StateNo) + 8500

[State 8750, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 8250
value = (parent, StateNo) + 500



; Air Medium Slash
;-----------------

[Statedef 8755]
Type = A
MoveType = I
Physics = N
sprpriority = 1
ctrl = 0

[State 8755, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8755, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8755, animation 1]
type = ChangeAnim
trigger1 = parent, AnimElem = 1
value = 8750

[State 8755, animation 2]
type = ChangeAnim
trigger1 = parent, AnimElem = 6
value = 8751

[State 8755, bind to Nakoruru]
type = BindToParent
trigger1 = parent, var(0) = 20
trigger1 = parent, Stateno = 8255
pos = 0,0

[State 8755, turn]
type = turn
triggerall = parent, var(0) = 20
trigger1 = facing != parent, facing

[State 8755, Nako hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8755, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 8255
value = (parent, StateNo) + 8500

[State 8755, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 8255
value = (parent, StateNo) + 500



; Air Fierce Slash
;-----------------

[Statedef 8760]
Type = A
MoveType = I
Physics = N
sprpriority = 1
ctrl = 0

[State 8760, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8760, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8760, animation 1]
type = ChangeAnim
trigger1 = parent, AnimElem = 1
value = 8750

[State 8760, animation 2]
type = ChangeAnim
trigger1 = parent, AnimElem = 6
value = 8751

[State 8760, bind to Nakoruru]
type = BindToParent
trigger1 = parent, var(0) = 20
trigger1 = parent, Stateno = 8260
pos = 0,0

[State 8760, turn]
type = turn
triggerall = parent, var(0) = 20
trigger1 = facing != parent, facing

[State 8760, Nako hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8760, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 8260
value = (parent, StateNo) + 8500

[State 8760, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 8260
value = (parent, StateNo) + 500



;==============================================================================================
;
; SPECIAL ATTACKS
;
;==============================================================================================

; Myu Shikite
;------------

[Statedef 8800]
Type = S
MoveType = I
Physics = N
anim = 8730
velset = 0,0
ctrl = 0

[State 8800, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8800, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8800, sprite priority]
type = SprPriority
trigger1 = time = 0
value = ifelse((parent, var(0)!= 20), 4, 1)

[State 8800, animation]
type = ChangeAnim
trigger1 = time = 5
value = 8600

[State 8800, velocity]
type = VelSet
trigger1 = time >= 5
x = 11.5

[State 8800, after image]
type = Explod
trigger1 = time = 5
ID = 8300
anim = 8600
pos = -45, 0
bindtime = 20
removetime = -2
SprPriority = -1
pausemovetime = 30

[State 8800, run sound]
type = PlaySnd
trigger1 = time = 5
value = 300, 1
channel = 3

[state 8800, Shikuruu voice]
type = PlaySnd
trigger1 = time = 5
value = 300, 2
channel = 4

[State 8800, end state]
type = ChangeState
trigger1 = time = 25
value = 8601

[State 8800, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = [8300, 8304]
pos = 0,0

[State 8300, turn]
type = turn
triggerall = parent, var(0) = 20
trigger1 = facing != parent, facing

[State 8800, Nako hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8800, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 8300
value = (parent, StateNo) + 8500

[State 8800, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 8300
value = (parent, StateNo) + 500



; Kanto Shikite
;--------------

[Statedef 8810]
Type = S
MoveType = I
Physics = N
anim = 8730
velset = 0,0
ctrl = 0

[State 8810, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8810, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8810, state modify]
type = StateTypeSet
trigger1 = time = 6
StateType = A
Physics = A

[State 8810, attack anim]
type = ChangeAnim
trigger1 = time = 5
value = 8810

[State 8810, air anim]
type = ChangeAnim
trigger1 = time = 25
value = 8811

[State 8810, sprite priority]
type = SprPriority
trigger1 = time = 0
value = ifelse((parent, var(0)!=20), 4, 1)

[State 8810, velocity]
type = VelSet
trigger1 = time = [5, 24]
x = 11.5
y = -6.5

[State 8810, vel set end]
type = VelSet
trigger1 = time = 25
x = 4
y = -3

[State 8810, vel add end]
type = VelAdd
trigger1 = time > 24
y = -0.2

[State 8810, after image]
type = Explod
trigger1 = parent, var(20) = 0
trigger1 = time = 5
ID = 8300
anim = 8810
pos = -48, 24
bindtime = 20
removetime = 20
sprpriority = -1
removeongethit = 1
pausemovetime = 30

[state 8810, Shikuruu voice]
type = PlaySnd
trigger1 = time = 5
value = 300, 2
channel = 4

[State 8810, bind to Nakoruru]
type = BindToParent
trigger1 = parent, var(0) = 20
trigger1 = parent, Stateno = 8310
pos = 0,0

[State 8810, turn]
type = turn
triggerall = parent, var(0) = 20
trigger1 = facing != parent, facing

[State 8810, Nako hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8810, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 8310
value = (parent, StateNo) + 8500

[State 8810, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 8310
value = (parent, StateNo) + 500

[State 8810, land state]
type = ChangeState
triggerall = parent, var(0) != 20
trigger1 = vel y > 0
trigger1 = pos y >= -ceil(vel y)
value = 8815

; (Land)
;-------
[Statedef 8815]
Type = S
MoveType = I
Physics = S
anim = 8812
ctrl = 0

[State 8815, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8815, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8815, sprite priority]
type = SprPriority
trigger1 = time = 0
value = 4

[State 8815, vel set]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 8815, pos set]
type = PosSet
trigger1 = Time = 0
y = 0

; When not carrying Nako
;-----------------------

[State 8815, change state]
type = ChangeState
triggerall = parent, var(0)!=20
trigger1 = AnimTime = 0
value = 8500

[State 8815, land sound]
type = PlaySnd
triggerall = parent, var(0)!=20
trigger1 = Time = 1
value = 100, 2
channel = 3

; When carrying Nako
;-------------------

[State 8815, bind to Nakoruru]
type = BindToParent
triggerall = parent, var(0) = 20
trigger1 = parent, Stateno = 8315
pos = 0,0

[State 8815, parent hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8815, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 8315
value = (parent, StateNo) + 8500

[State 8815, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 8315
value = (parent, StateNo) + 500



; Imeru Shikite
;--------------

[Statedef 8820]
Type = A
MoveType = I
Physics = N
anim = 8750
velset = 0,0
ctrl = 0

[State 8820, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8820, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8820, change anim]
type = ChangeAnim
trigger1 = time = 13
value = 8820

[State 8820, sprite priority]
type = SprPriority
trigger1 = time = 0
value = ifelse((parent, var(0)!=20), 4, 1)

[State 8820, pos freeze]
type = PosFreeze
trigger1 = time < 13
value = 1

[State 8820, velocity]
type = VelSet
trigger1 = time >= 13
x = 11.3
y = 6.5

[State 8820, gravity]
type = VelAdd
trigger1 = 1
 y = const(movement.yaccel)

[State 8820, bind to Nakoruru]
type = BindToParent
trigger1 = parent, var(0) = 20
trigger1 = parent, Stateno = 8320
pos = 0,0

[State 8820, Nako hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8820, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 8320
value = (parent, StateNo) + 8500

[State 8820, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 8320
value = (parent, StateNo) + 500

[State 8820, end state]
type = ChangeState
triggerall = parent, var(0) != 20
trigger1 = vel y > 0
trigger1 = pos y >= -ceil(vel y)
value = 8601



; NubeKi Kamui Shikite - Level 01
;--------------------------------

[Statedef 8841]
Type = S
MoveType = I
Physics = S
anim = 8510
sprpriority = 1
velset = 0,0
ctrl = 0

[State 8841, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8841, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8841, bind to Nakoruru]
type = BindToParent
trigger1 = parent, var(0) = 20
trigger1 = parent, Stateno = 8341
pos = 0,0

[State 8841, turn]
type = turn
triggerall = parent, var(0) = 20
trigger1 = facing != parent, facing

[State 8841, Nako hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8841, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 8341
value = (parent, StateNo) + 8500

[State 8841, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 8341
value = (parent, StateNo) + 500



; NubeKi Kamui Shikite - Level 02
;--------------------------------

[Statedef 8842]
Type = S
MoveType = I
Physics = S
anim = 8510
sprpriority = 1
velset = 0,0
ctrl = 0

[State 8842, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8842, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8842, bind to Nakoruru]
type = BindToParent
trigger1 = parent, var(0) = 20
trigger1 = parent, Stateno = 8342
pos = 0,0

[State 8842, turn]
type = turn
triggerall = parent, var(0) = 20
trigger1 = facing != parent, facing

[State 8842, Nako hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8842, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 8342
value = (parent, StateNo) + 8500

[State 8842, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 8342
value = (parent, StateNo) + 500



; NubeKi Kamui Shikite - Level 03
;--------------------------------

[Statedef 8843]
Type = S
MoveType = I
Physics = S
anim = 8510
sprpriority = 1
velset = 0,0
ctrl = 0

[State 8843, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8843, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8843, bind to Nakoruru]
type = BindToParent
trigger1 = parent, var(0) = 20
trigger1 = parent, Stateno = 8343
pos = 0,0

[State 8843, turn]
type = turn
triggerall = parent, var(0) = 20
trigger1 = facing != parent, facing

[State 8843, Nako hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8843, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 8343
value = (parent, StateNo) + 8500

[State 8843, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 8343
value = (parent, StateNo) + 500



; NubeKi Kamui Shikite - Attack
;------------------------------

[Statedef 8845]
Type = S
MoveType = I
Physics = N
anim = 8840
sprpriority = 1
velset = 0,0
ctrl = 0

[State 8845, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8845, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8845, velocity]
type = VelSet
trigger1 = 1
x = 14.75

[State 8845, bind to Nakoruru]
type = BindToParent
trigger1 = parent, var(0) = 20
trigger1 = parent, Stateno = 8345
pos = 0,0

[State 8845, Nako hit]
type = ChangeState
triggerall = parent, var(0) = 20	
trigger1 = parent, MoveType = H
trigger1 = parent, StateNo != [120, 155]	; Guard States
value = 8880

[State 8845, moving states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [0, 200)
trigger1 = parent, StateNo != 8345
value = (parent, StateNo) + 8500

[State 8845, attacks states]
type = ChangeState
triggerall = parent, var(0) = 20
triggerall = parent, StateNo = [8200, 8360]
trigger1 = parent, StateNo != 8345
value = (parent, StateNo) + 500

[State 8845, expulse]
type = ChangeState
triggerall = parent, var(0) != 20
trigger1 = parent, StateNo != 8345
value = 8595



; Irusuka Emushi Newa Shikite
;----------------------------

; Prepare
;--------
[Statedef 8850]
Type = S
MoveType = I
Physics = N
anim = 8510
sprpriority = 4
velset = 0,0
ctrl = 0

[State 8850, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8850, crouching animation]
type = ChangeAnim
trigger1 = time = 2
value = 8511

[State 8850, dash state]
type = ChangeState
trigger1 = parent, StateNo = 3327
value = 8851

; Dash
;-----
[Statedef 8851]
Type = S
MoveType = I
Physics = N
anim = 8600
sprpriority = 4
velset = 0,0
ctrl = 0

[State 8851, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8851, velocity]
type = VelSet
trigger1 = 1
x = 10.5

[State 8851, sound]
type = PlaySnd
trigger1 = time = 1
trigger2 = (GameTime%84) = 0
value = 300, 1
channel = 3

[State 8852, brake state]
type = ChangeState
trigger1 = abs(pos x) >= 149
value = 8852

; Brake & Turn
;-------------
[Statedef 8852]
Type = S
MoveType = I
Physics = N
anim = 8601
sprpriority = 4
velset = 0,0
ctrl = 0

[State 8852, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8852, position]
type = PosSet
trigger1 = time = 0
x = 160*(facing)

[State 8852, brake sound]
type = PlaySnd
trigger1 = time = 0
value = 100, 4
channel = 3

[State 8852, turn]
type = turn
trigger1 = time = 20

[State 8852, turn animation]
type = ChangeAnim
trigger1 = time = 20
value = 8505

[State 8852, prepare attack state]
type = ChangeState
trigger1 = Anim = 8505
trigger1 = AnimTime = 0
value = 8853

[State 8853, attack state]
type = ChangeState
trigger1 = parent, StateNo = 3328
trigger1 = parent, Time = 45
value = 8854

; Prepare Attack
;---------------
[Statedef 8853]
Type = S
MoveType = I
Physics = N
anim = 8510
sprpriority = 4
velset = 0,0
ctrl = 0

[State 8853, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8853, crouching animation]
type = ChangeAnim
trigger1 = time = 2
value = 8511

[State 8853, attack state]
type = ChangeState
trigger1 = parent, StateNo = 3328
trigger1 = parent, Time = 45
value = 8854

; Attack
;-------
[Statedef 8854]
Type = A
MoveType = I
Physics = N
anim = 8810
sprpriority = 4
velset = 15.5,-8.5
ctrl = 0

[State 8854, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8854, stop vel]
type = VelSet
trigger1 = time = 6
x = 0
y = 0

[State 8854, vel]
type = VelSet
trigger1 = time = 15
x = 15.5
y = -8.5

[State 8854, ground state]
type = ChangeState
trigger1 = parent, Var(10) = 1
trigger1 = parent, StateNo = 3331
trigger1 = parent, AnimElem = 7, = 2
value = 8855

[State 8854, air state]
type = ChangeState
trigger1 = parent, Var(10) = 2
trigger1 = parent, StateNo = 3330
value = 8858

; Ground
;-------
[Statedef 8855]
Type = S
MoveType = I
Physics = N
anim = 8600
sprpriority = 4
velset = 0,0
ctrl = 0

[State 8855, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8855, position]
type = PosSet
trigger1 = time = 0
x = 234*(facing)
y = 0

[State 8855, turn]
type = Turn
trigger1 = time = 0

[State 8855, sound]
type = PlaySnd
trigger1 = time = 1
value = 300, 1
channel = 3

[State 8855, velocity 1]
type = PosAdd
trigger1 = time = 5
x = 15

[State 8855, velocity 2]
type = PosAdd
trigger1 = time = 10
x = 23

[State 8855, velocity 3]
type = PosAdd
trigger1 = time = 15
x = 21

[State 8855, velocity 4]
type = PosAdd
trigger1 = time = 20
x = 21

[State 8855, velocity 5]
type = PosAdd
trigger1 = time = 25
x = 35

[State 8855, velocity 6]
type = PosAdd
trigger1 = time = 30
x = 35

[State 8855, velocity 7]
type = PosAdd
trigger1 = time = 35
x = 18

[State 8855, velocity 8]
type = PosAdd
trigger1 = time = 40
x = 25

[State 8855, velocity 9]
type = PosAdd
trigger1 = time = 45
x = 39

[State 8855, velocity 10]
type = PosAdd
trigger1 = time = 50
x = 1

[State 8855, velocity 11]
type = PosAdd
trigger1 = time = 55
x = 25

[State 8855, velocity 12]
type = PosAdd
trigger1 = time = 58
x = 16

[State 8855, standing state]
type = ChangeState
trigger1 = time = 0 && !win
value = 8500

[State 8855, ending state]
type = ChangeState
trigger1 = time = 58
value = 8856

; Ground Ending
;--------------
[Statedef 8856]
Type = S
MoveType = I
Physics = N
anim = 8855
sprpriority = 4
velset = 0, 0
ctrl = 0

[State 8856, turn]
type = Turn
trigger1 = time = 5

[state 8856, sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 300, 2
channel = 3

; Air
;----
[Statedef 8858]
Type = A
MoveType = I
Physics = N
anim = 8751
sprpriority = 4
velset = 0,11
ctrl = 0

[State 8858, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8858, turn]
type = Turn
trigger1 = time = 0

[State 8858, position]
type = PosSet
trigger1 = time = 0
x = -41*(facing)
y = -245

[State 8858, air state]
type = ChangeState
trigger1 = parent, StateNo = 3331
value = 8859

; Land
;-----
[Statedef 8859]
Type = S
MoveType = I
Physics = N
anim = 8510
sprpriority = 4
velset = 0,0
ctrl = 0

[State 8858, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[state 8858, position]
type = PosSet
trigger1 = time = 0
y = 0

[State 8858, land sound]
type = PlaySnd
trigger1 = time = 0
value = 100, 2
channel = 3

[State 8858, standing animation]
type = ChangeState
trigger1 = time = 7
value = 8500



; Ground Separate Attack
;-----------------------

[Statedef 8860]
Type = S
MoveType = I
Physics = S
anim = 8595
sprpriority = 4
velset = 0,0
ctrl = 0

[State 8860, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8860, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8860, remove explod]
type = RemoveExplod
trigger1 = time = 0
ID = 8300

[State 8860, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 8500



; Epunkine Shikite
;-----------------

; Prepare ; When Nakoruru is standing
;--------
[Statedef 8870]
Type = S
MoveType = A
Physics = N
anim = 8510
sprpriority = 4
ctrl = 0

[State 8870, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8870, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8870, standing state]
type = ChangeState
trigger1 = anim = 8510
trigger1 = parent, stateno != 1100
value = 8500

[State 8870, attack state]
type = ChangeState
trigger1 = (parent, stateno = 1100) && (parent, AnimElem = 4, >= 4)
value = 8871

; Attack
;-------
[Statedef 8871]
Type = S
MoveType = A
Physics = N
anim = 8870
sprpriority = 4
velset = 10.5,0
ctrl = 0

[State 8871, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8871, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8871, not hit by throws]
type = NotHitBy
trigger1 = 1
value = , AT

[State 8871, hit by an attack]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP
slot = 1
time = -1
stateno = 8880
ignorehitpause = 1

[State 8871, ghost]
type = PlayerPush
trigger1 = 1
value = 0

[State 8871, run sound]
type = PlaySnd
trigger1 = time = 0
value = 300, 1
channel = 3

[state 8871, Shikuruu voice]
type = PlaySnd
trigger1 = time = 0
value = 300, 2
channel = 4

[State 8871, hit def]
type = HitDef
trigger1 = !movecontact
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = diagup
air.animtype = diagup
priority = 4, Hit
damage = 64 + 32*(parent, var(20)), 1
pausetime = 0, 4
guard.pausetime = 0, 4
sparkno = s4120
guard.sparkno = s4210
sparkxy = 0,-40
hitsound = s180, (parent, var(16))
guardsound = s150, (parent, var(15))
guard.slidetime = 5
guard.hittime = 32
guard.ctrltime = 32
ground.velocity = -4,-9
guard.velocity = -4
air.velocity = -4
fall = 1
fall.recover = 0
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = 8
hitonce = 1
yaccel = 0.5

[State 8871, after image]
type = Explod
trigger1 = time = 0
ID = 8300
anim = 8600
pos = -48, 0
bindtime = -1
removetime = -1
sprpriority = 3
removeongethit = 1
pausemovetime = 30

[State 8871, move hit background]
type = envcolor
triggerall = parent, const(movement.yaccel) = 0.66
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 8871, move hit state]
type = ChangeState
trigger1 = MoveHit
value = 8872

[State 8871, end state]
type = ChangeState
triggerall = anim = 8870
trigger1 = P2Dist x < 0
trigger2 = FrontEdgeDist <= 0
value = 8601

; 2nd Attack
;-----------
[Statedef 8872]
Type = A
MoveType = A
Physics = N
anim = 8871
sprpriority = 4
velset = 0,0
ctrl = 0

[State 8872, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8872, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8872, remove explod]
type = RemoveExplod
trigger1 = time = 0
ID = 8300

[State 8872, not hit by throws]
type = NotHitBy
trigger1 = 1
value = , AT

[State 8872, hit by an attack]
type = HitOverride
trigger1 = 1
slot = 1
time = -1
attr = SCA, AA, AP
stateno = 8880
ignorehitpause = 1

[State 8872, ghost]
type = PlayerPush
trigger1 = 1
value = 0

[State 8872, velocity]
type = VelSet
trigger1 = AnimElem = 2
x = (abs(ParentDist x)+30)*(-1)/28
y = -4

[State 8872, gravity]
type = veladd
trigger1 = time > 15
y = 0.3

[state 8872, end running sound]
type = PlaySnd
trigger1 = time = 1
value = 1000, 0
channel = 3

[State 8872, spark]
type = Explod
trigger1 = AnimElem = 1
anim = 8872
bindtime = -1
ontop = 1
pausemovetime = 30

[State 8872, move hit background]
type = envcolor
triggerall = parent, const(movement.yaccel) = 0.66
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 8872, end state]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -ceil(vel y)
value = 8873

; Land
;-----
[Statedef 8873]
Type = S
MoveType = I
Physics = S
anim = 8511
sprpriority = 4
ctrl = 0

[State 8873, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8873, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8873, velocity]
type = VelSet
trigger1 = time = 0
y = 0

[State 8873, position]
type = PosSet
trigger1 = time = 0
y = 0

[State 8873, dust 1]
type = MakeDust
triggerall = parent, var(0) != 20
trigger1 = vel x < 0
pos = 0, 0
spacing = 3

[State 8873, dust 2]
type = MakeDust
triggerall = parent, var(0) != 20
trigger1 = vel x < 0
pos = -30, 0
spacing = 3

[state 8873, brake sound]
type = PlaySnd
trigger1 = time = 1
value = 100, 4
channel = 3

[State 8873, end state]
type = ChangeState
trigger1 = vel x = 0
value = 8500



; 1st Attack ; When Nakoruru is lying down
;-----------
[Statedef 8875]
Type = S
MoveType = A
Physics = N
anim = 8510
sprpriority = 4
ctrl = 0

[State 8875, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8875, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8875, invincibility]
type = NotHitBy
trigger1 = 1
value = SCA

[State 8870, ghost]
type = PlayerPush
trigger1 = 1
value = 0

[State 8875, animation]
type = ChangeAnim
trigger1 = (parent, statetype = L) && (time = 19)
value = 8870

[State 8875, run sound]
type = PlaySnd
trigger1 = (parent, statetype = L) && (time = 19)
value = 300, 1
channel = 3

[state 8875, Shikuruu voice]
type = PlaySnd
trigger1 = (parent, statetype = L) && (time = 19)
value = 300, 2
channel = 4

[State 8875, velocity]
type = VelSet
trigger1 = anim = 8870
x = 10.5

[State 8875, hit def]
type = HitDef
trigger1 = !movecontact
attr = S, SA
hitflag = MAF
guardflag = MA
animtype = diagup
air.animtype = diagup
priority = 4, Hit
damage = 64 + 32*(parent, var(20)), 1
pausetime = 0, 4
guard.pausetime = 0, 4
sparkno = s4120
guard.sparkno = s4210
sparkxy = 0,-40
hitsound = s180, (parent, var(16))
guardsound = s150, (parent, var(15))
guard.slidetime = 5
guard.hittime = 32
guard.ctrltime = 32
ground.velocity = -4,-9
guard.velocity = -4
air.velocity = -4
fall = 1
fall.recover = 0
down.bounce = 1
fall.envshake.time = 30
fall.envshake.ampl = 8
hitonce = 1
yaccel = 0.5

[State 8875, after image]
type = Explod
trigger1 = time = 19
ID = 8300
anim = 8600
pos = -48, 0
bindtime = -1
removetime = -1
sprpriority = 3
removeongethit = 1
pausemovetime = 30

[State 8875, move hit background]
type = envcolor
triggerall = parent, const(movement.yaccel) = 0.66
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 8875, move hit state]
type = ChangeState
trigger1 = MoveHit
value = 8876

[State 8875, standing state]
type = ChangeState
trigger1 = anim = 8510
trigger1 = parent, statetype != L
value = 8500

[State 8875, end state]
type = ChangeState
trigger1 = P2Dist x < 0
trigger2 = FrontEdgeDist <= 0
value = 8601

; 2nd Attack
;-----------
[Statedef 8876]
Type = A
MoveType = A
Physics = N
anim = 8871
sprpriority = 4
velset = 0,0
ctrl = 0

[State 8876, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8876, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8876, remove explod]
type = RemoveExplod
trigger1 = time = 0
ID = 8300

[State 8876, invincibility]
type = NotHitBy
trigger1 = 1
value = SCA

[State 8876, ghost]
type = PlayerPush
trigger1 = 1
value = 0

[State 8876, velocity]
type = VelSet
trigger1 = AnimElem = 2
x = (abs(ParentDist x)+30)*(-1)/28
y = -4

[State 8876, gravity]
type = veladd
trigger1 = time > 15
y = 0.3

[state 8876, end running sound]
type = PlaySnd
trigger1 = time = 1
value = 1000, 0
channel = 3

[State 8876, spark]
type = Explod
trigger1 = AnimElem = 1
anim = 8872
bindtime = -1
ontop = 1
pausemovetime = 30

[State 8876, move hit background]
type = envcolor
triggerall = parent, const(movement.yaccel) = 0.66
trigger1 = MoveHit
persistent = 0
ignorehitpause = 1
background = 1
value = 255,0,0
time = 2

[State 8876, end state]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -ceil(vel y)
value = 8872


;==============================================================================================
;
; HIT STATES
;
;==============================================================================================

; Hit
;----

[Statedef 8880]
Type = A
MoveType = H
Physics = N
anim = 8880
sprpriority = 4
velset = -4, -7
ctrl = 0

[State 8880, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8880, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8880, remove explod]
type = RemoveExplod
trigger1 = time = 0
ID = 8300

[State 8880, nako state var]
type = ParentVarSet
trigger1 = time = 0
v = 0
value = 0

[State 8880, gravity]
type = veladd
trigger1 = 1
 y = const(movement.yaccel)

[State 8880, end state]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= -ceil(vel y)
value = 8552
ctrl = 0



; Nako Hit
;---------

[Statedef 8890]
Type = S
MoveType = I
Physics = S
anim = 8890
sprpriority = 4
velset = 0,0
ctrl = 0

[State 8890, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8890, mu_no kyouchi slower]
type = Pause
trigger1 = RoundState = 2 && parent, life > 0
trigger1 = parent, stateno != [4511, 4512]
trigger1 = parent, var(26) > 0 && gametime%3 = 0
time = 2
movetime = 2
pausebg = 0

[State 8890, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 8500



;==============================================================================================
;
; INTRO
;
;==============================================================================================

[Statedef 8900]
Type = S
MoveType = I
Physics = S
anim = 8900
sprpriority = 4
velset = 0,0
ctrl = 0

[State 8900, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8900, end state]
type = ChangeState
trigger1 = AnimTime = 0
value = 8500



;==============================================================================================
;
; END ROUND
;
;==============================================================================================

; Classic Ending
;---------------

[Statedef 8950]
Type = S
MoveType = I
Physics = N
anim = 8511
sprpriority = 4
velset = 0,0
ctrl = 0

[State 8950, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8950, time over]
type = ChangeAnim
trigger1 = parent, StateNo = 175
trigger1 = Time >= 0
value = 8990

[State 8950, loose animation 01]
type = ChangeAnim
trigger1 = lose && RoundState = 4
trigger1 = Anim != [8970, 8980]
trigger1 = random <= 499
value = 8970

[State 8950, loose animation 02]
type = ChangeAnim
trigger1 = lose && RoundState = 4
trigger1 = Anim != [8970, 8980]
trigger1 = random >= 500
value = 8980

[state 8950, sound]
type = PlaySnd
triggerall = AnimElem = 3
trigger1 = anim = 8960
trigger2 = anim = 8980
value = 300, 2
channel = 3

[State 8950, rera's special ending state]
type = ChangeState
trigger1 = parent, stateno = 184
trigger2 = parent, stateno = 3341
value = 8951



; Rera's Special Ending
;----------------------

; Move
;-----
[Statedef 8951]
Type = S
MoveType = I
Physics = N
sprpriority = 4
velset = 0,0
ctrl = 0

[State 8951, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[state 8951, velocity]
type = VelSet
trigger1 = parentdist x > 44
trigger2 = parentdist x < 38
x = ifelse(parentdist x > 44, const(velocity.walk.fwd.x), -1.5)

[state 8951, animation]
type = ChangeAnim
trigger1 = vel x = const(velocity.walk.fwd.x) && anim != 8520
trigger2 = vel x = -1.5 && anim != 8521
value = ifelse(vel x = const(velocity.walk.fwd.x), 8520, 8521)

[State 8951, change state]
type = ChangeState
trigger1 = parentdist x = [28, 44]
value = 8952

; Stop
;-----
[Statedef 8952]
Type = S
MoveType = I
Physics = N
anim = 8955
sprpriority = 1
velset = 0,0
ctrl = 0

[State 8951, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[state 8951, velocity]
type = VelSet
trigger1 = time = 0
x = 0

[State 8951, pos set]
type = PosAdd
trigger1 = time = 0 && ParentDist x > 41
x = 41 - parentdist x

[State 8951, pos set]
type = PosAdd
trigger1 = time = 0 && ParentDist x < 41
x = parentdist x - 41



;==============================================================================================
;
; TAG
;
;==============================================================================================

; Turn
;-----

[Statedef 8990]
Type = S
MoveType = I
Physics = N
sprpriority = 4
ctrl = 0

[State 8990, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8990, animation]
type = ChangeAnim
trigger1 = facing = parent, facing
value = 8505

[State 8990, turn]
type = turn
trigger1 = facing = parent, facing

[State 8990, leave the stage]
type = ChangeState
triggerall = facing != parent,facing
trigger1 = anim != 8505
trigger2 = anim = 8505 && animtime = 0
value = 8991

; Leave the stage
;----------------

[Statedef 8991]
Type = S
MoveType = I
Physics = N
anim = 8600
sprpriority = 4
ctrl = 0

[State 8991, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8991, velocity]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 8991, sound]
type = PlaySnd
trigger1 = time = 1
trigger2 = (GameTime%84) = 0
value = 300, 1
channel = 3

[State 8991, wait outside the stage]
type = ChangeState
trigger1 = pos x >= 250
trigger2 = pos x <= -250
value = 8992

; Wait Outside
;-------------

[Statedef 8992]
Type = S
MoveType = I
Physics = N
anim = 8500
sprpriority = 4
ctrl = 0

[State 8992, display vel & pos]
type = DisplayToClipboard
trigger1 = 1
text = "Vel(%f,%f), ParentDist(%f,%f)"
params = Vel X,Vel Y, ParentDist X,ParentDist Y

[State 8992, turn]
type = turn
trigger1 = facing != parent,facing

[State 8992, position]
type = posset
trigger1 = parent, stateno = [4511, 4512]
x = -250*facing
y = 0

[State 8992, enter]
type = ChangeState
trigger1 = facing = parent,facing
trigger1 = parent, stateno != [4511, 4512]
value = 8500
