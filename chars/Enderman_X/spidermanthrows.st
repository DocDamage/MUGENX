;---------------------------------------------------------------------------
;---{Throw Attacks}---
;---------------------------
; Spider Toss 1
[Statedef 900]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 900
juggle  = 0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = HitDef
trigger1 = time = 0
attr = S, NT
hitflag = M
priority = 5, Miss
sparkno = -1
hitsound = -1
p2facing = 1          
p1stateno = 905
p2stateno = 906
sprpriority = 1

[State 0, ]
type = ChangeState
trigger1 = MoveContact = 0
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 905]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 905

[State 0, ]
type = Turn
trigger1 = animelem = 3

[State 0, ]
type = SprPriority
trigger1 = animelem = 2
value = -1

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S5,9
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S1,2
channel = 2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S0,3
channel = 3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 8
value = 5,10
volume = 20
channel = 4

[State 0, ]
type = TargetBind
trigger1 = animelem = 1
time = 10
pos = 65,0

[State 0, ]
type = TargetBind
trigger1 = animelem = 2
time = 5
pos = 0,-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 3
time = 15
pos = 30,-105

[State 0, ]
type = TargetBind
trigger1 = animelem = 4
time = 15
pos = 55,-107

[State 0, ]
type = TargetBind
trigger1 = animelem = 5
time = 15
pos = 65,-100

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 6
value = -150

[State 0, ]
type = TargetDrop
trigger1 = animelem = 6

[State 300, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 906]
type    = S
movetype= H
physics = S
velset = 0,0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 906

[State 0, ]
type = ScreenBound
trigger1 = time >= 0 
value = 0

[State 0, ]
type = Turn
trigger1 = animelem = 2

[State 0, ]
type = VelSet
trigger1 = animelem = 5
x = -10
y = .25

[State 0, ]
type = ChangeAnim2
trigger1 = time = 40
value = 5030

[State 0, ]
type = SelfState
trigger1 = time = 40
value = 5050

; Spider Toss 2
[Statedef 910]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 900
juggle  = 0
ctrl = 0

[State 0, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ]
type = HitDef
trigger1 = time = 0
attr = S, NT
hitflag = M
priority = 5, Miss
sparkno = -1
hitsound = -1
p2facing = 1          
p1stateno = 915
p2stateno = 916
sprpriority = 1

[State 0, ]
type = ChangeState
trigger1 = MoveContact = 0
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 915]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 915

[State 0, ]
type = StateTypeSet
trigger1 = animelem = 2
statetype = A
movetype = A
physics = A

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S5,9
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S0,3
channel = 2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 7
value = S1,2
channel = 3

[State 0, ]
type = VelSet
trigger1 = animelem = 2
x = .25
y = -6

[State 0, ]
type = TargetBind
trigger1 = animelem = 1
time = 10
pos = 60,0

[State 0, ]
type = TargetBind
trigger1 = animelem = 2
time = 3
pos = 35,-15

[State 0, ]
type = TargetBind
trigger1 = animelem = 3
time = 3
pos = 15,0

[State 0, ]
type = TargetBind
trigger1 = animelem = 4
time = 3
pos = -20,0

[State 0, ]
type = TargetBind
trigger1 = animelem = 5
time = 3
pos = -55,-35

[State 0, ]
type = TargetBind
trigger1 = animelem = 6
time = 3
pos = -55,-85

[State 0, ]
type = TargetBind
trigger1 = animelem = 7
time = 3
pos = 50,-85

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 7,1
value = -150

[State 0, ]
type = TargetDrop
trigger1 = animelem = 7,1

[Statedef 916]
type    = S
movetype= H
physics = S
velset = 0,0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 916

[State 0, ]
type = ScreenBound
trigger1 = time >= 0 
value = 0

[State 0, ]
type = Turn
trigger1 = animelem = 2
trigger2 = animelem = 8

[State 0, ]
type = VelSet
trigger1 = animelem = 8
x = -10
y = 10

[State 0, ]
type = ChangeAnim2
trigger1 = time = 30
value = 5030

[State 0, ]
type = SelfState
trigger1 = time = 30
value = 5050

;---------------------------
; Spider Toss (air) 2
[Statedef 950]
type    = A
movetype= A
physics = A
anim = 950
juggle  = 0
ctrl = 0

[State 0, ]
type = HitDef
trigger1 = time = 0
attr = A, NT
hitflag = AF
priority = 5, Miss
sparkno = -1
hitsound = -1
p2facing = 1          
p1stateno = 955
p2stateno = 956
sprpriority = 1

[State 0, ]
type = ChangeState
trigger1 = MoveContact = 0
trigger1 = AnimTime = 0
value = 50
ctrl = 1

[Statedef 955]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 955

[State 0, ]
type = Turn
trigger1 = animelem = 3

[State 0, ]
type = PosFreeze
trigger1 = time  <= 35
value = 1

[State 0, ]
type = PosSet
trigger1 = pos y >= 0
y = 0

[State 0, ]
type = ScreenBound
trigger1 = time >= 35
value = 0

[State 0, ]
type = Gravity
trigger1 = time > 35 && pos y < 0

[State 0, ]
type = VelSet
trigger1 = animelem = 6
x = -4
y = -10

[State 0, ]
type = SprPriority
trigger1 = animelem = 2
value = -1

[State 0, ]
type = PlaySnd
trigger1 = time = 0
value = S5,9
channel = 1

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S1,2
channel = 2

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = S0,3
channel = 3

[State 0, ]
type = PlaySnd
trigger1 = animelem = 8
value = 5,10
volume = 20
channel = 4

[State 0, ]
type = TargetBind
trigger1 = animelem = 1
time = 10
pos = 65,0

[State 0, ]
type = TargetBind
trigger1 = animelem = 2
time = 5
pos = 0,-80

[State 0, ]
type = TargetBind
trigger1 = animelem = 3
time = 15
pos = 30,-105

[State 0, ]
type = TargetBind
trigger1 = animelem = 4
time = 15
pos = 55,-107

[State 0, ]
type = TargetBind
trigger1 = animelem = 5
time = 15
pos = 65,-100

[State 0, ]
type = TargetLifeAdd
trigger1 = animelem = 6
value = -150

[State 0, ]
type = TargetDrop
trigger1 = animelem = 6

[State 0, ]
type = ChangeState
trigger1 = backedgedist <= -50 && pos y >= 0
value = 101
ctrl = 1

[State 0, ]
type = ChangeState
trigger1 = backedgedist > -50 && pos y >= 0
value = 50
ctrl = 1

[Statedef 956]
type    = S
movetype= H
physics = S
velset = 0,0

[State 0, ]
type = ChangeAnim2
trigger1 = time = 0
value = 906

[State 0, ]
type = ScreenBound
trigger1 = time >= 0 
value = 0

[State 0, ]
type = Turn
trigger1 = animelem = 2

[State 0, ]
type = VelSet
trigger1 = animelem = 5
x = -5
y = 10

[State 0, ]
type = ChangeAnim2
trigger1 = time = 40
value = 5030

[State 0, ]
type = SelfState
trigger1 = time = 40
value = 5050

; Spider Toss (air) 2
[Statedef 960]
type    = A
movetype= A
physics = A
anim = 950
juggle  = 0
ctrl = 0

[State 0, ]
type = HitDef
trigger1 = time = 0
attr = A, NT
hitflag = AF
priority = 5, Miss
sparkno = -1
hitsound = -1
p2facing = 1          
p1stateno = 915
p2stateno = 916
sprpriority = 1

[State 0, ]
type = ChangeState
trigger1 = MoveContact = 0
trigger1 = AnimTime = 0
value = 50
ctrl = 1
