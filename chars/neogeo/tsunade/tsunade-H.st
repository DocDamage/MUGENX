;================================================================================================
;
; TSUNADE'S HYPER ATTACKS
;
;================================================================================================

; RikiOh
;-------

; Tsunade
;--------
[Statedef 2100]
Type = S
MoveType = A
Physics = S
anim = 2100
sprpriority = 2
velset = 0,0
ctrl = 0

[State 2100, sign]
type = helper
trigger1 = time = 1
name = "Power Sign"
ID = 2100
pos = 0,0
stateno = 2101
helpertype = normal
keyctrl = 0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
size.shadowoffset = 0

[State 2100, background]
type = EnvColor
trigger1 = time = 0
trigger2 = time = 2
trigger3 = time = 4
trigger4 = time = 6
trigger5 = time = 8
trigger6 = time = 10
trigger7 = time = 12
trigger8 = time = 14
trigger9 = time = 16
trigger10 = time = 18
value = 248,0,0
time = 1
under = 1

[State 2100, special mode var]
type = VarSet
trigger1 = AnimTime = 0
v = 0
value = 1

[State 2100, set timer]
type = VarSet
trigger1 = AnimTime = 0
v = 1
value = 600

[State 2100, reduce magic]
type = VarSet
trigger1 = AnimTime = 0
fv = 5
value = 0

[State 2100, reduce power]
type = PowerAdd
trigger1 = AnimTime = 0
value = -1000

[State 2100, after images]
type = AfterImage
trigger1 = AnimTime = 0
time = 600
length = 10
palcolor = 256
palinvertall = 0
palbright = 0,-248,-248
palcontrast = 256,128,128
palpostbright = 0,0,0
paladd = -48,0,0
palmul = 1,1,1
trans = none

[State 2100, voice]
type = PlaySnd
trigger1 = time = 1
value = 0,7
channel = 0

[State 2100, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Power Sign
;-----------
[Statedef 2101]
Type = A
MoveType = I
Physics = N
anim = 2101
sprpriority = -2
velset = 0,0
ctrl = 0

[State 2101, sound]
type = PlaySnd
trigger1 = time = 31
value = 110,7
channel = 1

[State 2101, remove shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 2101, self destroy]
type = DestroySelf
trigger1 = AnimTime = 0



; KinGoh
;-------

[Statedef 2200]
Type = S
MoveType = A
Physics = S
anim = 2100
sprpriority = 2
velset = 0,0
ctrl = 0

[State 2200, defense sign]
type = helper
trigger1 = time = 1
name = "Defense Sign"
ID = 2200
pos = 0,0
stateno = 2201
helpertype = normal
keyctrl = 0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
size.shadowoffset = 0

[State 2200, background]
type = EnvColor
trigger1 = time = 0
trigger2 = time = 2
trigger3 = time = 4
trigger4 = time = 6
trigger5 = time = 8
trigger6 = time = 10
trigger7 = time = 12
trigger8 = time = 14
trigger9 = time = 16
trigger10 = time = 18
value = 248,0,0
time = 1
under = 1

[State 2200, special mode var]
type = VarSet
trigger1 = AnimTime = 0
v = 0
value = -1

[State 2200, timer]
type = VarSet
trigger1 = AnimTime = 0
v = 1
value = 600

[State 2200, reduce magic]
type = VarSet
trigger1 = AnimTime = 0
fv = 5
value = 0

[State 2200, reduce power]
type = PowerAdd
trigger1 = AnimTime = 0
value = -1000

[State 2200, after images]
type = AfterImage
trigger1 = AnimTime = 0
time = 600
length = 10
palcolor = 256
palinvertall = 0
palbright = -248,-248,0
palcontrast = 128,128,256
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 1,1,1
trans = none

[State 2200, voice]
type = PlaySnd
trigger1 = time = 1
value = 0,8
channel = 0

[State 2200, end move]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Defence Sign
;-------------
[Statedef 2201]
Type = A
MoveType = I
Physics = N
anim = 2201
sprpriority = -2
velset = 0,0
ctrl = 0

[State 2201, sound]
type = PlaySnd
trigger1 = time = 45
value = 110,8
channel = 1

[State 2201, remove shadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 2201, self destroy]
type = DestroySelf
trigger1 = AnimTime = 0
