;===========================================================================
;KtH[h	{yђʏZݒ
;===========================================================================
; O_bV
[Statedef 100]
type    = S
physics = S
velset = 0,0
ctrl = 1
anim = 100

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 100, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 4]
type = MakeDust
trigger1 = Time = 1
pos = 0, 0
spacing = 1

[State 100, 5]
type = MakeDust
trigger1 = AnimElem = 3, >= 0
pos = 0, 0

;[State 100, 5_5]
;type = playerpush
;trigger1 = P2StateType = L
;trigger1 = Time >= 0
;value = 0

[State 100, 6_human]
type = ChangeState
triggerall = var(40) = 0
trigger1 = Time > 70
trigger2 = command != "holdfwd"
trigger2 = Time > 4
value = 101

[State 100, 6_AI]
type = ChangeState
triggerall = var(40) = 1
trigger1 = Time > 70
trigger2 = var(15) =  [0, 700]
trigger2 = p2bodydist X = [0, 5]
;trigger3 = var(15) =  [701, 999]
;trigger3 = command != "holdfwd"
;trigger3 = Time > 4
value = 101
;------------------------------------------------------
; O_bVI
[Statedef 101]
type    = S
physics = S
velset = 0,0
anim = 101

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 101, snd]
type = PlaySnd
trigger1 = Time = 1
value = 10,1

[State 101, 1]
type = VelSet
trigger1 = Time = 0
x = 4.8

[State 101, 1]
type = Veladd
trigger1 = Time = [0,26]
x = 0.3

[State 101, 2]
type = MakeDust
trigger1 = Time = 1
trigger2 = Time = 4
trigger3 = Time = 8
trigger4 = Time = 12
trigger5 = Time = 16
trigger6 = Time = 20
pos = 15, 0
spacing = 1

[State 101, 3]
type = VelSet
trigger1 = Time = 14
x = 2.4

[State 101, 4]
type = VelSet
trigger1 = Time = 27
x = 1.2

[State 101, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;===========================================================================
; Jt[}̂悤ȃobNXebvgpꍇ́A[Statedef 105]͕Kv܂B
; Ƃ폜ĂBicommon1.cnsgp܂Bj
; obN_bVKvȏꍇ́AobNXebv폜āARgAEg͂
; gpĂB
;===========================================================================
;---------------------------------------------------------------------------
; obNXebv
[Statedef 105]
type    = A
physics = A
ctrl = 0
anim = 105

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 105, 0]
type = VelSet
trigger1 = Time = 0
y = -4.8
x = -6

[State 105, 2]
type = MakeDust
trigger1 = Time = 0
pos = 0, 0
;spacing = 0

[State 105, 3]
type = ChangeState
trigger1 = AnimTime = 0;1
value = 52;47

;---------------------------------------------------------------------------
; n
[Statedef 52]
type = S
physics = S
ctrl = 0
anim = 47

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 4]
type = CtrlSet
trigger1 = AnimElem = 1
value = 1

[State 52, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ^CI[o[
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0,0

[State 170, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 170, 2]
type = PlaySnd
trigger1 = Time = 0
value = 3, 1

;---------------------------------------------------------------------------
; 
[Statedef 180]
type = S

[State 180, 1]
type = ChangeState
trigger1 = MatchOver = 0
value = 181

[State 180, 2]
type = ChangeState
trigger1 = MatchOver = 1
value = 182

;---------------------------------------------------------------------------
; P
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, 2]
type = PlaySnd
trigger1 = Time = 40
value = 0,1

;---------------------------------------------------------------------------
; Q
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 181, 2]
type = PlaySnd
trigger1 = Time = 40
value = 0,2

;---------------------------------------------------------------------------
;KtH[ho
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 191, 1]
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay

[State 191, 4]
type = PlaySnd
trigger1 = Time = 8
value = 0, 0

[State 191, snd]
type = PlaySnd
triggerall = var(49) = 0
trigger1 = command = "F" || command = "B"
value = 11, 1

[State 191, snd]
type = PlaySnd
triggerall = var(49) = 1
triggerall = time < 280
trigger1 = command = "a" || command = "b" || command = "c"
trigger2 = command = "x" || command = "y" || command = "z"
value = 11, 2

[State 191, snd]
type = PlaySnd
triggerall = var(49) = 0
trigger1 = time = 280
value = 11, 2

[State 191, 3]
type = varset
trigger1 = time = 281
var(49) = 1

[State 191, 4_]
type = explod
trigger1 = RoundState < 2 && RoundNo = 1
trigger1 = var(49) = 1
trigger1 = var(50) = 0
trigger1 = GameTime % 2 = 0
anim = 10011
ID = 10013
sprpriority = 1
postype = p1
pos = -40,-70
facing = ifelse(var(10)=0,-1,1)
ownpal = 1
bindtime = 1
ignorehitpause = 1
pausemovetime = 99999999

[State 191, 5_]
type = explod
trigger1 = RoundState < 2 && RoundNo = 1
trigger1 = var(49) = 1
trigger1 = var(50) = 1
trigger1 = GameTime % 2 = 0
anim = 10012
ID = 10014
sprpriority = 1
postype = p1
pos = -40,-70
facing = ifelse(var(10)=0,-1,1)
ownpal = 1
bindtime = 1
ignorehitpause = 1
pausemovetime = 99999999

[State 191, 7]
type = ChangeState
trigger1 = time = 390
value = 0

;===========================================================================
;ʏ헧U
;---------------------------------------------------------------------------
; a(ߋ)
[Statedef 205]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 205                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 205, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 32                   ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0
givepower = 0
guardflag = M                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
                                 ;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s9002
guard.sparkno = S10008
sparkxy = -10,-70                ;X-offset for the "hit spark" rel. to p2,
                                 ;Y-offset for the spark rel. to p1
hitsound = s5,0                   ;Sound to play on hit
guardsound = s9,0                 ;Sound to play on guard
; mindist  = 0,0,0                 ;Min distance of p2 from p1 when hit
; maxdist  = 0,0,0                 ;Max distance of p2 from p1 when hit
; snap = 0,0,0                     ;Snaps p2 to position rel to p1
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime  = 11             ;Time victim is in hit state
ground.velocity = -4             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,
                                 ;Y-velocity at which victim is pushed

[State 205, apʑS̐ԐF] 
type = explod
trigger1 = Movehit = 1
trigger1 = var(24) = 1
ID = 201
anim = 10009
persistent = 0
pos = 0,0
postype = left
sprpriority = 6
bindtime = 1
ontop = 1
scale = 1000,1000
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 205, apʑS̐ԐF] 
type = removeexplod
trigger1 = Movehit >= 2
trigger1 = var(24) = 1
ID = 201
ignorehitpause = 1
PauseMoveTime = 2147483647


[State 205, 2] 
type = explod
trigger1 = movehit = 1
anim = 10004
persistent = 0
pos = -10,-55
postype = p2
facing = -1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 205, 2_guard_main] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10002
persistent = 0
pos = 10,-55
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 1,-2
accel = .02,.1

[State 205, 2_guard_sub1] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = -10,-65
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = -1,-5
accel = .02,.3

[State 205, 2_guard_sub2] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 5,-60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = .5,-4.5
accel = .02,.3

[State 205, 2_guard_sub3] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 20,-55
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 2,-4
accel = .03,.3

[State 205, 1]
type = PlaySnd
trigger1 = Time = 1
value = 1, 0

[State 205, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; a(ߋ)
[Statedef 215]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 215

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 215, 1]
type = PlaySnd
trigger1 = Time = 2
value = 1, 1

[State 215, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Medium
damage    = 64
getpower = 0
givepower = 0
guardflag = M
hitflag = MAF                    ;Flags of conditions that move can hit
pausetime = 11,11
sparkno = S9002
guard.sparkno = S10008
sparkxy = -10,-65
hitsound   = s5,1
guardsound = s9,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 15
ground.velocity = -5
air.velocity = -2.2,-3.2

[State 215, apʑS̐ԐF] 
type = explod
trigger1 = Movehit = 1
trigger1 = var(24) = 1
ID = 201
anim = 10009
persistent = 0
pos = 0,0
postype = left
sprpriority = 6
bindtime = 1
ontop = 1
scale = 1000,1000
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 215, apʑS̐ԐF] 
type = removeexplod
trigger1 = Movehit >= 2
trigger1 = var(24) = 1
ID = 201
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 215, 2] 
type = explod
trigger1 = movehit = 1
anim = 10004
persistent = 0
pos = -10,-55
postype = p2
facing = -1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 215, 2_guard_main] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10002
persistent = 0
pos = 10,-55
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 1,-2
accel = .02,.1

[State 215, 2_guard_sub1] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = -10,-65
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = -1,-5
accel = .02,.3

[State 215, 2_guard_sub2] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 5,-60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = .5,-4.5
accel = .02,.3

[State 215, 2_guard_sub3] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 20,-55
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 2,-4
accel = .03,.3
[State 215, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; a(ߋ)
[Statedef 225]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 225                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 225, 1]
type = VelSet
trigger1 = Time = 0
x = 2

[State 225, 2]
type = HitDef
trigger1 = AnimElem = 8
attr = S, NA
damage    = 192
animtype = Hard
getpower = 0
givepower = 0
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 22,23
guard.pausetime = 5,6
numhits = 1
sparkno = S9002
guard.sparkno = S10008
sparkxy = -10,-70
hitsound = s5,2
guardsound = s9,1
ground.type = High
ground.slidetime = 42
ground.hittime  = 42
air.hittime = 42
ground.ctrltime  = 20
ground.velocity = -12
airguard.velocity = -1.9,-.8
air.velocity = -1.3,-3

[State 225, 2] 
type = explod
trigger1 = movehit = 1
anim = 10004
persistent = 0
pos = -10,-55
postype = p2
facing = -1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 225, 2_guard_main] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10002
persistent = 0
pos = 10,-55
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 1,-2
accel = .02,.1

[State 225, 2_guard_sub1] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = -10,-65
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = -1,-5
accel = .02,.3

[State 225, 2_guard_sub2] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 5,-60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = .5,-4.5
accel = .02,.3

[State 225, 2_guard_sub3] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 20,-55
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 2,-4
accel = .03,.3

[State 225, apʑS̐ԐF] 
type = explod
trigger1 = Movehit = 1
trigger1 = var(24) = 1
ID = 201
anim = 10009
persistent = 0
pos = 0,0
postype = left
sprpriority = 6
bindtime = 1
ontop = 1
scale = 1000,1000
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 225, apʑS̐ԐF] 
type = removeexplod
trigger1 = NumExplod(1000) = 1
ID = 201
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 225, 3]
type = PlaySnd
trigger1 = Time = 1
value = 1, 5

[State 225, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; a
[Statedef 200]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 200                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 40                  ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0
givepower = 0
guardflag = M                  ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
                                 ;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s9001		;Spark image group and no (Def: set above)
guard.sparkno = S10008
sparkxy = -10,-70                ;X-offset for the "hit spark" rel. to p2,
                                 ;Y-offset for the spark rel. to p1
hitsound = s5,0                   ;Sound to play on hit
guardsound = s9,0                 ;Sound to play on guard
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime  = 12             ;Time victim is in hit state
ground.velocity = -4             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,
                                 ;Y-velocity at which victim is pushed

[State 200, apʑS̐ԐF] 
type = explod
trigger1 = Movehit = 1
trigger1 = var(24) = 1
ID = 201
anim = 10009
persistent = 0
pos = 0,0
postype = left
sprpriority = 6
bindtime = 1
ontop = 1
scale = 1000,1000
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 200, apʑS̐ԐF] 
type = removeexplod
trigger1 = Movehit >= 2
trigger1 = var(24) = 1
ID = 201
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 200, 2] 
type = explod
trigger1 = movehit = 1
anim = 10005
persistent = 0
pos = -10,-55
postype = p2
facing = -1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 200, 2_guard_main] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10002
persistent = 0
pos = 10,-55
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 1,-2
accel = .02,.1

[State 200, 2_guard_sub1] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = -10,-65
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = -1,-5
accel = .02,.3

[State 200, 2_guard_sub2] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 5,-60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = .5,-4.5
accel = .02,.3

[State 200, 2_guard_sub3] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 20,-55
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 2,-4
accel = .03,.3

[State 200, 2]
type = PlaySnd
trigger1 = Time = 1
value = 1, 2

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; a
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 210

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 210, 1]
type = PlaySnd
trigger1 = Time = 2
value = 1, 1

[State 210, pos]
type = posAdd
trigger1 = AnimElem = 2
x = 25

[State 210, pos]
type = posAdd
trigger1 = AnimElem = 3
x = 25

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Medium
damage    = 80
getpower = 0
givepower = 0
guardflag = M
hitflag = MAF                    ;Flags of conditions that move can hit
pausetime = 11,11
sparkno = s9002			;Spark image group and no (Def: set above)
guard.sparkno = S10008
sparkxy = -10,-70
hitsound   = s5,1
guardsound = s9,0
ground.type = High
ground.slidetime = 13
ground.hittime  = 15
ground.velocity = -5
air.velocity = -2.2,-3.2

[State 210, apʑS̐ԐF] 
type = explod
trigger1 = Movehit = 1
trigger1 = var(24) = 1
ID = 201
anim = 10009
persistent = 0
pos = 0,0
postype = left
sprpriority = 6
bindtime = 1
ontop = 1
scale = 1000,1000
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 210, apʑS̐ԐF] 
type = removeexplod
trigger1 = Movehit >= 2
trigger1 = var(24) = 1
ID = 201
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 210, 2] 
type = explod
trigger1 = movehit = 1
anim = 10004
persistent = 0
pos = -10,-55
postype = p2
facing = -1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 210, 2_guard_main] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10002
persistent = 0
pos = 10,-55
postype = p2
facing = -1
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 1,-2
accel = .02,.1

[State 210, 2_guard_sub1] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = -10,-65
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = -1,-5
accel = .02,.3

[State 210, 2_guard_sub2] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 5,-60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = .5,-4.5
accel = .02,.3

[State 210, 2_guard_sub3] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 20,-55
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 2,-4
accel = .03,.3

[State 210, pos]
type = posAdd
trigger1 = AnimElem = 12
x = -25

[State 210, pos]
type = posAdd
trigger1 = AnimElem = 13
x = -25

[State 210, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; a
[Statedef 220]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 220                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 220, 1]
type = VelSet
trigger1 = AnimElem = 3
x = 2

[State 210, pos]
type = posAdd
trigger1 = AnimElem = 3
x = 35

[State 210, pos]
type = posAdd
trigger1 = AnimElem = 4
x = 35

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage    = 200
animtype = Hard
getpower = 0
givepower = 0
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 22,23
guard.pausetime = 5,6
numhits = 1
sparkno = S9003
guard.sparkno = S10008
sparkxy = -10,-70
hitsound = s5,2
guardsound = s9,1
ground.type = High
ground.slidetime = 42
ground.hittime  = 42
air.hittime = 42
ground.ctrltime  = 16
ground.velocity = -12
airguard.velocity = -1.9,-.8
air.velocity = -1.3,-3
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 220, 2] 
type = explod
trigger1 = movehit = 1
anim = 10004
persistent = 0
pos = -10,-55
postype = p2
facing = -1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 220, 2_guard_main] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10002
persistent = 0
pos = 10,-55
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 1,-2
accel = .02,.1

[State 220, 2_guard_sub1] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = -10,-65
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = -1,-5
accel = .02,.3

[State 220, 2_guard_sub2] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 5,-60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = .5,-4.5
accel = .02,.3

[State 220, 2_guard_sub3] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 20,-55
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 2,-4
accel = .03,.3

[State 220, apʑS̐ԐF] 
type = explod
trigger1 = Movehit = 1
trigger1 = var(24) = 1
ID = 201
anim = 10009
persistent = 0
pos = 0,0
postype = left
sprpriority = 6
bindtime = 1
ontop = 1
scale = 1000,1000
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 220, apʑS̐ԐF] 
type = removeexplod
trigger1 = NumExplod(1000) = 1
ID = 201
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 220, 3]
type = PlaySnd
trigger1 = Time = 1
value = 1, 2

[State 210, pos]
type = posAdd
trigger1 = AnimElem = 31
x = -35

[State 210, pos]
type = posAdd
trigger1 = AnimElem = 32
x = -35

[State 220, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; R
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 230

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 230, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1, 2

[State 230, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype  = Light
damage    = 32
getpower = 0
givepower = 0
guardflag = M
hitflag = MAF                    ;Flags of conditions that move can hit
pausetime = 11,11
sparkno = S10007
guard.sparkno = S10008
sparkxy = -10,-140
hitsound   = s6,1
guardsound = s6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -2.2,-3.2

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; _ER
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 240

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 240, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1, 4

[State 240, 2]
type = HitDef
trigger1 = Time = 1
attr = C, NA
damage    = 32
animtype  = Hard
getpower = 0
givepower = 0
hitflag = MAF
guardflag = L
pausetime = 10,12
sparkno = S10007
guard.sparkno = S10008
sparkxy = -10,-15
hitsound   = s6,1
guardsound = s6,0
ground.type = Trip
ground.slidetime = 4
ground.hittime  = 15
ground.velocity = -4
air.velocity = -1.3,-3
down.velocity = -4,0
down.hittime = 20

[State 240, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;===========================================================================
;ʏ퓥ݍݍU
;---------------------------------------------------------------------------
; ݍݏa
[Statedef 300]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
velset = 6.0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 200                       ;Change animation (Def: no change)
poweradd = 0                    ;Power to add (Def: 0)

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 300, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 20                  ;Damage that move inflicts
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
getpower = 0
givepower = 0
guardflag = M                  ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
                                 ;Hit/Miss/Dodge type (Def: Hit)
pausetime = 7,8                  ;Time attacker pauses, time victim shakes
numhits = 1                      ;Number of hits to count as (Def: 1)
sparkno = s9001		;Spark image group and no (Def: set above)
guard.sparkno = S10008
sparkxy = -10,-70                ;X-offset for the "hit spark" rel. to p2,
                                 ;Y-offset for the spark rel. to p1
hitsound = s5,0                   ;Sound to play on hit
guardsound = s9,0                 ;Sound to play on guard
ground.type = High                 ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime  = 12             ;Time victim is in hit state
ground.velocity = -4             ;Velocity at which victim is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.velocity = -1.3,-3           ;X-velocity at which victim is pushed,
                                 ;Y-velocity at which victim is pushed

[State 300, apʑS̐ԐF] 
type = explod
trigger1 = Movehit = 1
trigger1 = var(24) = 1
ID = 201
anim = 10009
persistent = 0
pos = 0,0
postype = left
sprpriority = 6
bindtime = 1
ontop = 1
scale = 1000,1000
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 300, apʑS̐ԐF] 
type = removeexplod
trigger1 = Movehit >= 2
trigger1 = var(24) = 1
ID = 201
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 300, 2] 
type = explod
trigger1 = movehit = 1
anim = 10005
persistent = 0
pos = -10,-55
postype = p2
facing = -1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 300, 2_guard_main] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10002
persistent = 0
pos = 10,-55
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 1,-2
accel = .02,.1

[State 300, 2_guard_sub1] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = -10,-65
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = -1,-5
accel = .02,.3

[State 300, 2_guard_sub2] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 5,-60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = .5,-4.5
accel = .02,.3

[State 300, 2_guard_sub3] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 20,-55
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 2,-4
accel = .03,.3

[State 300, 2]
type = PlaySnd
trigger1 = Time = 1
value = 1, 2

[State 300, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ݍݒa
[Statedef 310]
type    = S
movetype= A
physics = S
juggle  = 6
velset = 6.0,0
poweradd= 0
ctrl = 0
anim = 420

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 310, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1, 1

[State 310, 3]
type = HitDef
trigger1 = Time = 1
attr = C, NA
damage    = 50
animtype  = Hard
getpower = 0
givepower = 0
guardflag = L                 ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
pausetime = 22,23
guard.pausetime = 5,6
sparkno = s9002
guard.sparkno = S10008
sparkxy = -2,-10
hitsound   = s5,2
guardsound = s9,1
ground.type = low
ground.slidetime = 12
ground.hittime  = 12
air.hittime  = 12
ground.velocity = -6
air.velocity = -1.3,-3
down.velocity = -4,0
down.hittime = 20
fall = 1
air.fall = 1

[State 310, apʑS̐ԐF] 
type = explod
trigger1 = Movehit = 1
trigger1 = var(24) = 1
ID = 201
anim = 10009
persistent = 0
pos = 0,0
postype = left
sprpriority = 6
bindtime = 1
ontop = 1
scale = 1000,1000
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 310, apʑS̐ԐF] 
type = removeexplod
trigger1 = Movehit >= 2
trigger1 = var(24) = 1
ID = 201
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 310, 2] 
type = explod
trigger1 = movehit = 1
anim = 10005
persistent = 0
pos = -10,-15
postype = p2
facing = -1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 310, 2_guard_main] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10002
persistent = 0
pos = 10,-25
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 1,-2
accel = .02,.1

[State 310, 2_guard_sub1] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = -10,-35
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = -1,-5
accel = .02,.3

[State 310, 2_guard_sub2] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 5,-30
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = .5,-4.5
accel = .02,.3

[State 310, 2_guard_sub3] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 20,-25
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 2,-4
accel = .03,.3

[State 310, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;ݍݑa
[Statedef 320]
type    = C
movetype= A
physics = C
juggle  = 6
velset = 0.0,0
poweradd= 0
ctrl = 0
anim = 320

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 101, 1]
type = VelSet
trigger1 = Time = 0
x = 8.8

[State 101, 1]
type = Veladd
trigger1 = Time = [0,22]
x = 0.6

[State 320, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1, 3

[State 320, 3]
type = HitDef
trigger1 = Time = 1
attr = C, NA
damage    = 80
animtype  = Hard
getpower = 0
givepower = 0
guardflag = HA                  ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
pausetime = 10
guard.pausetime = 10
sparkno = s9002
guard.sparkno = S10008
sparkxy = -2,-35
hitsound   = s5,2
guardsound = s9,1
ground.type = low
ground.slidetime = 20
ground.hittime  = 20
air.hittime  = 32
ground.ctrltime  = 20
ground.velocity = -6
air.velocity = -1.3,-3.6
down.velocity = -4,0
down.hittime = 20
fall = 1
air.fall = 1

[State 320, apʑS̐ԐF] 
type = explod
trigger1 = Movehit = 1
trigger1 = var(24) = 1
ID = 201
anim = 10009
persistent = 0
pos = 0,0
postype = left
sprpriority = 6
bindtime = 1
ontop = 1
scale = 1000,1000
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 320, apʑS̐ԐF] 
type = removeexplod
trigger1 = Movehit >= 2
trigger1 = var(24) = 1
ID = 201
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 320, 2] 
type = explod
trigger1 = movehit = 1
anim = 10004
persistent = 0
pos = -10,-35
postype = p2
facing = -1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 320, 2_guard_main] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10002
persistent = 0
pos = 10,-35
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 1,-2
accel = .02,.1

[State 320, 2_guard_sub1] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = -10,-40
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = -1,-5
accel = .02,.3

[State 320, 2_guard_sub2] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 5,-35
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = .5,-4.5
accel = .02,.3

[State 320, 2_guard_sub3] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 20,-30
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 2,-4
accel = .03,.3

[State 320, apʑS̐ԐF] 
type = explod
trigger1 = Movehit = 1
trigger1 = var(24) = 1
ID = 201
anim = 10009
persistent = 0
pos = 0,0
postype = left
sprpriority = 6
bindtime = 1
ontop = 1
scale = 1000,1000
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 320, apʑS̐ԐF] 
type = removeexplod
trigger1 = NumExplod(1000) = 1
ID = 201
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 320, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;ݍݏR
[Statedef 330]
type    = C
movetype= A
physics = C
juggle  = 6
velset = 6.0,0
poweradd= 0
ctrl = 0
anim = 430

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 330, 1]
type = PlaySnd
trigger1 = Time = 1
value = 1, 4

[State 330, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 32
getpower = 0
givepower = 0
animtype  = Light
getpower = 5
givepower = 10
hitflag = MAF
guardflag = L
pausetime = 10,12
sparkno = S10007
guard.sparkno = S10008
sparkxy = -10,-5
hitsound   = s6,1
guardsound = s6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 10
ground.velocity = -6
air.velocity = -1.3,-5
down.velocity = -1.3,-5
down.hittime = 20
fall = 1
air.fall = 1

[State 330, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;===========================================================================
;ʏU
;---------------------------------------------------------------------------
;a
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 8
poweradd= 0
ctrl = 0
anim = 400

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 400, 1]
type = PlaySnd
trigger1 = Time = 1
value = 1, 4

[State 400, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 40
animtype  = Light
getpower = 0
givepower = 0
hitflag = MAF
guardflag = M
pausetime = 10,12
sparkno = S9002	                   ;Spark image group and no (Def: set above)
guard.sparkno = S10008
sparkxy = -2,-41
hitsound   = s5,0
guardsound = s9,0
ground.type = Low
ground.slidetime = 7
ground.hittime  = 10
ground.velocity = -7
air.velocity = -1.3,-3
down.velocity = -4,0
down.hittime = 20

[State 400, apʑS̐ԐF] 
type = explod
trigger1 = Movehit = 1
trigger1 = var(24) = 1
ID = 201
anim = 10009
persistent = 0
pos = 0,0
postype = left
sprpriority = 6
bindtime = 1
ontop = 1
scale = 1000,1000
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 400, apʑS̐ԐF] 
type = removeexplod
trigger1 = Movehit >= 2
trigger1 = var(24) = 1
ID = 201
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 400, 2] 
type = explod
trigger1 = movehit = 1
anim = 10004
persistent = 0
pos = -10,-25
postype = p2
facing = -1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 400, 2_guard_main] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10002
persistent = 0
pos = 10,-25
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 1,-2
accel = .02,.1

[State 400, 2_guard_sub1] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = -10,-35
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = -1,-5
accel = .02,.3

[State 400, 2_guard_sub2] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 5,-30
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = .5,-4.5
accel = .02,.3

[State 400, 2_guard_sub3] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 20,-25
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 2,-4
accel = .03,.3

[State 400, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;---------------------------------------------------------------------------
;a
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 8
poweradd= 0
ctrl = 0
anim = 410

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 410, 1]
type = PlaySnd
trigger1 = Time = 1
value = 1, 1

[State 410, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 72
animtype  = medium
getpower = 0
givepower = 0
hitflag = MAF
guardflag = M
pausetime = 10,12
sparkno = S9002                  ;Spark image group and no (Def: set above)
guard.sparkno = S10008
sparkxy = -2,-41
hitsound   = s5,1
guardsound = s9,0
ground.type = Low
ground.slidetime = 7
ground.hittime  = 15
ground.velocity = -7
air.velocity = -1.3,-3
down.velocity = -4,0
down.hittime = 20

[State 410, apʑS̐ԐF] 
type = explod
trigger1 = Movehit = 1
trigger1 = var(24) = 1
ID = 201
anim = 10009
persistent = 0
pos = 0,0
postype = left
sprpriority = 6
bindtime = 1
ontop = 1
scale = 1000,1000
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 410, apʑS̐ԐF] 
type = removeexplod
trigger1 = Movehit >= 2
trigger1 = var(24) = 1
ID = 201
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 410, 2] 
type = explod
trigger1 = movehit = 1
anim = 10004
persistent = 0
pos = -10,-25
postype = p2
facing = -1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 410, 2_guard_main] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10002
persistent = 0
pos = 10,-25
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 1,-2
accel = .02,.1

[State 410, 2_guard_sub1] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = -10,-35
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = -1,-5
accel = .02,.3

[State 410, 2_guard_sub2] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 5,-30
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = .5,-4.5
accel = .02,.3

[State 410, 2_guard_sub3] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 20,-25
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 2,-4
accel = .03,.3

[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;a
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 8
poweradd= 0
ctrl = 0
anim = 420

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 420, 1_1]
type = PlaySnd
trigger1 = Time = 0
trigger1 = var(15) = [0,400]
value = 1, 1

[State 420, 1_2]
type = PlaySnd
trigger1 = Time = 0
trigger1 = var(15) = [401,800]
value = 1, 2

[State 420, 1_3]
type = PlaySnd
trigger1 = Time = 0
trigger1 = var(15) = [801,1000]
value = 1, 6

[State 420, 2]
type = VelSet
trigger1 = Time = 0
x = 2

[State 420, 3]
type = HitDef
trigger1 = Time = 1
attr = C, NA
damage    = 140
animtype  = Hard
getpower = 0
givepower = 0
hitflag = MAF
guardflag = L
pausetime = 22,23
guard.pausetime = 5,6
sparkno = s9002
guard.sparkno = S10008
sparkxy = -2,-10
hitsound   = s5,2
guardsound = s9,1
ground.type = low
ground.slidetime = 42
ground.hittime  = 42
air.hittime  = 42
ground.ctrltime  = 20
ground.velocity = -6
air.velocity = -1.3,-3
down.velocity = -4,0
down.hittime = 20
fall = 1
air.fall = 1

[State 420, apʑS̐ԐF] 
type = explod
trigger1 = Movehit = 1
trigger1 = var(24) = 1
ID = 201
anim = 10009
persistent = 0
pos = 0,0
postype = left
sprpriority = 6
bindtime = 1
ontop = 1
scale = 1000,1000
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 420, apʑS̐ԐF] 
type = removeexplod
trigger1 = Movehit >= 2
trigger1 = var(24) = 1
ID = 201
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 420, 2] 
type = explod
trigger1 = movehit = 1
anim = 10005
persistent = 0
pos = -10,-15
postype = p2
facing = -1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 420, 2_guard_main] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10002
persistent = 0
pos = 10,-25
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 1,-2
accel = .02,.1

[State 420, 2_guard_sub1] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = -10,-35
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = -1,-5
accel = .02,.3

[State 420, 2_guard_sub2] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 5,-30
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = .5,-4.5
accel = .02,.3

[State 420, 2_guard_sub3] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 20,-25
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 2,-4
accel = .03,.3

[State 420, apʑS̐ԐF] 
type = explod
trigger1 = Movehit = 1
trigger1 = var(24) = 1
ID = 201
anim = 10009
persistent = 0
pos = 0,0
postype = left
sprpriority = 6
bindtime = 1
ontop = 1
scale = 1000,1000
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 420, apʑS̐ԐF] 
type = removeexplod
trigger1 = NumExplod(1000) = 1
ID = 201
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 420, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;R
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 8
poweradd= 0
ctrl = 0
anim = 430

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 430, 1]
type = PlaySnd
trigger1 = Time = 1
value = 1, 4

[State 430, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 16
animtype  = Light
getpower = 0
givepower = 0
hitflag = MAF
guardflag = L
pausetime = 10,12
sparkno = S10007
guard.sparkno = S10008
sparkxy = -10,-5
hitsound   = s6,1
guardsound = s6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 10
ground.velocity = -6
air.velocity = -1.3,-3
down.velocity = -4,0
down.hittime = 20

[State 430, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;R
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 8
poweradd= 0
ctrl = 0
anim = 440

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 440, 1]
type = PlaySnd
trigger1 = Time = 1
value = 3, 5

[State 440, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Back
damage    = 56
getpower = 0
givepower = 0
guardflag = L
pausetime = 12,12
sparkno = S10007
guard.sparkno = S10008
sparkxy = -10,-20
hitsound   = s6,2
guardsound = s6,0
ground.type = Trip
ground.slidetime = 8
ground.hittime  = 8
ground.velocity = -2,-.8

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;===========================================================================
;ʏэU
;---------------------------------------------------------------------------
;яa
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 8
poweradd= 0
ctrl = 0
anim = 600

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 600, 1]
type = PlaySnd
trigger1 = Time = 1
value = 1, 1

[State 600, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 48
getpower = 0
givepower = 0
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = s9002                 ;Spark image group and no (Def: set above)
guard.sparkno = S10008
sparkxy = -10,-58
hitsound   = s5,0
guardsound = s9,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3

[State 600, apʑS̐ԐF] 
type = explod
trigger1 = Movehit = 1
trigger1 = var(24) = 1
ID = 201
anim = 10009
persistent = 0
pos = 0,0
postype = left
sprpriority = 6
bindtime = 1
ontop = 1
scale = 1000,1000
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 600, apʑS̐ԐF] 
type = removeexplod
trigger1 = Movehit >= 2
trigger1 = var(24) = 1
ID = 201
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 600, 2] 
type = explod
trigger1 = movehit = 1
anim = 10004
persistent = 0
pos = -10,-55
postype = p2
facing = -1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 600, 2_guard_main] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10002
persistent = 0
pos = 10,-55
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 1,-2
accel = .02,.1

[State 600, 2_guard_sub1] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = -10,-65
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = -1,-5
accel = .02,.3

[State 600, 2_guard_sub2] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 5,-60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = .5,-4.5
accel = .02,.3

[State 600, 2_guard_sub3] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 20,-55
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 2,-4
accel = .03,.3

[State 600, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------
;ђa
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 8
poweradd= 0
ctrl = 0
anim = 610

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 610, 2]
type = PlaySnd
trigger1 = Time = 2
value = 1, 3

[State 610, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 72
getpower = 0
givepower = 0
guardflag = HA
priority = 3
pausetime = 9,10
sparkno = s9001                ;Spark image group and no (Def: set above)
guard.sparkno = S10008
sparkxy = -10,-51
hitsound   = s5,1
guardsound = s9,0
ground.type = High
ground.slidetime = 9
ground.hittime  = 12
ground.velocity = -4
air.velocity = -1.3,-3

[State 610, apʑS̐ԐF] 
type = explod
trigger1 = Movehit = 1
trigger1 = var(24) = 1
ID = 201
anim = 10009
persistent = 0
pos = 0,0
postype = left
sprpriority = 6
bindtime = 1
ontop = 1
scale = 1000,1000
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 610, apʑS̐ԐF] 
type = removeexplod
trigger1 = Movehit >= 2
trigger1 = var(24) = 1
ID = 201
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 610, 2] 
type = explod
trigger1 = movehit = 1
anim = 10005
persistent = 0
pos = 10,-55
postype = p1
facing = 1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 610, 2_guard_main] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10002
persistent = 0
pos = 10,-55
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 1,-2
accel = .02,.1

[State 610, 2_guard_sub1] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = -10,-65
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = -1,-5
accel = .02,.3

[State 610, 2_guard_sub2] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 5,-60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = .5,-4.5
accel = .02,.3

[State 610, 2_guard_sub3] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 20,-55
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 2,-4
accel = .03,.3

[State 610, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------
;ёa
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 8
poweradd= 0
ctrl = 0
anim = 620

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 620, 1]
type = PlaySnd
trigger1 = Time = 1
value = 1, 2

[State 620, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 140
getpower = 0
givepower = 0
guardflag = HA
priority = 3
pausetime = 22,23
guard.pausetime = 5,6
sparkno = s9003
guard.sparkno = S10008
sparkxy = -10,-30
hitsound   = s5,2
guardsound = s9,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.ctrltime  = 16
air.hittime  = 20
ground.velocity = -4
air.velocity = -1.3,-3
air.fall = 1

[State 620, apʑS̐ԐF] 
type = explod
trigger1 = Movehit = 1
trigger1 = var(24) = 1
ID = 201
anim = 10009
persistent = 0
pos = 0,0
postype = left
sprpriority = 6
bindtime = 1
ontop = 1
scale = 1000,1000
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 620, apʑS̐ԐF] 
type = removeexplod
trigger1 = Movehit >= 2
trigger1 = var(24) = 1
ID = 201
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 620, 2] 
type = explod
trigger1 = movehit = 1
anim = 10004
persistent = 0
pos = -10,-55
postype = p2
facing = -1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 620, 2_guard_main] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10002
persistent = 0
pos = 10,-55
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 1,-2
accel = .02,.1

[State 620, 2_guard_sub1] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = -10,-65
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = -1,-5
accel = .02,.3

[State 620, 2_guard_sub2] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 5,-60
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = .5,-4.5
accel = .02,.3

[State 620, 2_guard_sub3] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 20,-55
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 2,-4
accel = .03,.3

[State 620, apʑS̐ԐF] 
type = explod
trigger1 = Movehit = 1
trigger1 = var(24) = 1
ID = 201
anim = 10009
persistent = 0
pos = 0,0
postype = left
sprpriority = 6
bindtime = 1
ontop = 1
scale = 1000,1000
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 620, apʑS̐ԐF] 
type = removeexplod
trigger1 = NumExplod(1000) = 1
ID = 201
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 620, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------
;яR
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 8
poweradd= 0
ctrl = 0
anim = 630

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 630, 2]
type = PlaySnd
trigger1 = Time = 2
value = 1, 0

[State 630, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 32
getpower = 0
givepower = 0
guardflag = H
priority = 3
pausetime = 9,10
sparkno = S10007
guard.sparkno = S10008
sparkxy = -10,-51
hitsound   = s6,1
guardsound = s6,0
ground.type = High
ground.slidetime = 9
ground.hittime  = 9
ground.velocity = -4
air.velocity = -1.3,-3

[State 630, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;===========================================================================
;Z
;===========================================================================
;state650-990
;state2900-2920
;---------------------------------------------------------------------------
;sӑł
[Statedef 650]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 650

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 650, 1]
type = ChangeState
trigger1 = Time = 16
value = 651
ctrl = 0

;------------------------------------------
;sӑł
[Statedef 651]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 651

[State 651, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1, 2

[State 651, 2]
type = VelSet
trigger1 = Time = 0
x = 1
y = -8

[State 651, 3]
type = VelSet
trigger1 = Time = 11
x = 1
y = -2

[State 651, 4]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
animtype  = middle
damage    = 128
getpower = 0
givepower = 0
guardflag = HA
hitflag = HLA
pausetime = 11,11
sparkno = S10007
guard.sparkno = S10008
sparkxy = -10,-20
hitsound   = s6,1
guardsound = s6,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5
air.velocity = -1.2,-4.2
fall = 1
fall.xvelocity = -1.2
fall.yvelocity = -4.2

[State 651, 5]
type = VelSet
trigger1 = Time = 15
x = 3
y = 8.2

[State 651, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 52
ctrl = 1

;---------------------------------------------------------------------------
; 
[Statedef 660]
type    = s
movetype= A
physics = s
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 660

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 660, 1]
type = ChangeState
trigger1 = Time = 19
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 荞
[Statedef 670]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 670

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 670, 1]
type = VelSet
trigger1 = AnimElem = 1
x = 3
y = 2

[State 670, 2]
type = VelSet
trigger1 = AnimElem = 2
x = 18

[State 670, 3]
type = VelSet
trigger1 = AnimElem = 3
x = 3
y = -2

[State 670, 4]
type = ChangeState
trigger1 = AnimElem = 5
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; NオO]
[Statedef 700]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 700

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 700, 1]
type = VelSet
trigger1 = animelem = 5
x = 16

[State 700, 2]
type = Veladd
trigger1 = animelem = 5
x = -0.22

[State 700, 3]
type = VelSet
trigger1 = animelem = 10
x = 0

[State 700, 4]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Nオ]
[Statedef 710]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 710

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 710, 1]
type = VelSet
trigger1 = animelem = 5
x = -16

[State 710, 2]
type = Veladd
trigger1 = animelem = 5
x = -0.22

[State 710, 3]
type = VelSet
trigger1 = animelem = 10
x = 0

[State 710, 4]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;NCbNNオ
[Statedef 720]
type    = L
movetype= I
physics = N
poweradd= 0
ctrl = 0
anim = 720

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 720, 1]
type = ChangeState
trigger1 = animTime = 0
value = 0
ctrl = 1

;===========================================================================
;ǂ
;---------------------------------------------------------------------------
;ǂE
[Statedef 770]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim = 770

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 770, vel]
type = VelSet
trigger1 = time = 0
x = 2.6

[State 770, 1]
type = PlaySnd
trigger1 = Time = 0
value = 1, 3


[State 770, 1]
type = HitDef
trigger1 = Time = 1
attr = S, NA
animtype  = Back
damage    = 32
hitflag   = MAFD
guardflag = MAF
pausetime = 12,12
sparkno = s9002
guard.sparkno = S10008
sparkxy   = 10,-5
hitsound   = s5,2
guardsound = s9,1
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2,-2
air.velocity = -2,-2
fall = 1
fall.yvelocity = -1.5
fall.recover = 0

[State 770, apʑS̐ԐF] 
type = explod
trigger1 = Movehit = 1
trigger1 = var(24) = 1
ID = 201
anim = 10009
persistent = 0
pos = 0,0
postype = left
sprpriority = 6
bindtime = 1
ontop = 1
scale = 1000,1000
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 770, apʑS̐ԐF] 
type = removeexplod
trigger1 = Movehit >= 2
trigger1 = var(24) = 1
ID = 201
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 770, 2] 
type = explod
trigger1 = movehit = 1
anim = 10004
persistent = 0
pos = -10,-35
postype = p2
facing = -1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 770, 2_guard_main] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10002
persistent = 0
pos = 10,-35
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 1,-2
accel = .02,.1

[State 770, 2_guard_sub1] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = -10,-40
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = -1,-5
accel = .02,.3

[State 770, 2_guard_sub2] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 5,-35
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = .5,-4.5
accel = .02,.3

[State 770, 2_guard_sub3] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 20,-30
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 2,-4
accel = .03,.3

[State 770, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ǂE
[Statedef 780]
type    = A
movetype= A
physics = A
poweradd= 0
ctrl = 0
velset = 1.2,-13.8
anim = 780

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 780, 1]
type = veladd
trigger1 = Time >= 0
y = 0.56

[State 780, 2]
type = veladd
trigger1 = Time >= 18
y = 0.12

[State 780, 3]
type = changeanim
trigger1 = vel Y > -7.8 && vel Y < -7.2
value = 781

[State 780, 4]
type = changeanim
trigger1 = Time >= 15
trigger1 = vel Y > 3.2 && vel Y < 4.8
value = 782

[State 780, 6]
type = PosFreeze
trigger1 = Time >= 10
trigger1 = pos Y > -12
value = 30

[State 780, 7]
type = ChangeState
trigger1 = Time >= 10
trigger1 = pos Y > -12
value = 781
ctrl = 1

;---------------------------------------------------------------------------
;ǂE`
[Statedef 781]
type    = A
movetype= A
physics = A
poweradd= 0
ctrl = 0
velset = 0,0
anim = 783

[State 781, 1]
type = PosFreeze
trigger1 = time = 0
value = 30

[State 781, 0]
type = VelSet
trigger1 = Time >= 0
y = -0.01

[State 781, 2]
type = HitDef
trigger1 = time = 1
attr = S, NA
animtype  = Back
damage    = 152
hitflag   = MAFD
guardflag = MAF
pausetime = 16,17
guard.pausetime = 4,5
sparkno = s9002
guard.sparkno = S10008
sparkxy   = 10,-5
hitsound   = s5,2
guardsound = s9,1
ground.type = High
ground.slidetime = 32
ground.hittime  = 32
air.hittime  = 32
ground.ctrltime  = 16
ground.velocity = -2,-2
air.velocity = -2,-2.8
fall = 1
fall.yvelocity = -2.8
fall.recover = 0

[State 770, 2] 
type = explod
trigger1 = movehit = 1
anim = 10004
persistent = 0
pos = -10,-35
postype = p2
facing = -1
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 770, 2_guard_main] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10002
persistent = 0
pos = 10,-35
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 1,-2
accel = .02,.1

[State 770, 2_guard_sub1] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = -10,-40
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = -1,-5
accel = .02,.3

[State 770, 2_guard_sub2] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 5,-35
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = .5,-4.5
accel = .02,.3

[State 770, 2_guard_sub3] 
type = explod
trigger1 = MoveGuarded = 1
anim = 10001
persistent = 0
pos = 20,-30
postype = p2
ignorehitpause = 0
sprpriority = 6
bindtime = 1
vel = 2,-4
accel = .03,.3

[State 781, 7]
type = VelSet
trigger1 = Time = 28
y = -4.8
x = -3.8

[State 781, 8]
type = ChangeState
trigger1 = Time = 28
value = 50

;===========================================================================
;ɂUeꂽƂ
;---------------------------------------------------------------------------
;ɂUeꂽƂiAj
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 4
velset = -0.8,0
poweradd= 0
ctrl = 0
anim = 800

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 800, pos]
type = posAdd
trigger1 = Time = 1
x = -9

[State 800, 1]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ɂUeꂽƂiAj
[Statedef 801]
type    = S
movetype= A
physics = S
juggle  = 4
velset = -1.2,0
poweradd= 0
ctrl = 0
anim = 801

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 801, pos]
type = posAdd
trigger1 = Time = 1
x = -18

[State 801, 1]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ɂUeꂽƂiCDj
[Statedef 801]
type    = S
movetype= A
physics = S
juggle  = 4
velset = -1.4,0
poweradd= 0
ctrl = 0
anim = 802

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 801, 1]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ɂUeꂽƂiႪ݁Aj
[Statedef 810]
type    = S
movetype= A
physics = S
juggle  = 4
velset = -0.8,0
poweradd= 0
ctrl = 0
anim = 810

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 8100, 1]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;ɂUeꂽƂiႪ݁Aj
[Statedef 811]
type    = S
movetype= A
physics = S
juggle  = 4
velset = -1.2,0
poweradd= 0
ctrl = 0
anim = 811

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 811, 1]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;h()
;---------------------------------------------------------------------------
; h
[Statedef 900]
type = S
movetype = A
physics = S
ctrl = 0
anim = 900

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 900, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, NT
Hitflag = M-
priority = 2, Miss
sparkno = -1
sprpriority = 0
p1stateno = 905
p2stateno = 910 
p1facing = 1
p2facing = 1
numhits = 0
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 900, 3]
type = ChangeState
Trigger1 = AnimTime = 0
value = 915

;---------------------------------------------------------------------------
;hi[Vj
[Statedef 905]
type = S
movetype = A
physics = N
anim = 905
velset = 0,0 

[State 905, 1]
type = PlaySnd
trigger1 = Time = 0
value = 10, 0

[State 905, 2]
type = PlaySnd
trigger1 = Time = 29
value = 6, 0

[State 905, 3]
type = explod
trigger1 = time = 30
anim = 10007
persistent = 0
pos = -20,-55
postype = p2
sprpriority = 6
bindtime = 1
ignorehitpause = 1
PauseMoveTime = 2147483647


[State 905, 4]
type = Changestate
trigger1 = time = 54
trigger1 = var(40) = 1 
trigger1 = var(15) = [0,700]
value = 420

[State 905, 4]
type = Changestate
trigger1 = animtime = 0 
value = 0 
ctrl = 1


;---------------------------------------------------------------------------
; 葤
[Statedef 910]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0

[State 910, 1]
type = VelSet
trigger1 = Time = 10
x = 4.6
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 910, 3]
type = VelSet
trigger1 = Time = 30
x = -11
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 910, 4]
type = Changeanim2
trigger1 = Time = 0
value = 5000
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 910, 5]
type = SelfState 
trigger1 = Time = 75
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; h(ԁj
[Statedef 915]
type = S
movetype = A
physics = S
ctrl = 0
anim = 910

[State 915, 1]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
;h()
;---------------------------------------------------------------------------
;h
[Statedef 920]
type = S
movetype = A
physics = S
ctrl = 0
anim = 920

[State 5900, _]
type = varrandom
trigger1 = time = 0
v = 15
range = 1000

[State 920, 2]
type = HitDef
trigger1 = AnimElem = 1 
attr = S, NT
Hitflag = M-
priority = 2, Miss
numhits = 0  
sparkno = -1 
sprpriority = 0
p1stateno = 925
p2stateno = 930
p1facing = 1
p2facing = 1
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 920, 4]
type = ChangeState
Trigger1 = AnimTime = 0
value = 915

;---------------------------------------------------------------------------
;hi[Vj
[Statedef 925]
type = S
movetype = A
physics = N
anim = 925 
velset = 0,0

[State 925, 1]
type = PlaySnd
trigger1 = Time = 0
value = 10, 0

[State 925, 2]
type = Veladd
trigger1 = animelem = 4
trigger1 = BackEdgeBodyDist <= 20 
x = 1.2
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 925, 3]
type = Changestate
trigger1 = animtime = 0
value = 0 
ctrl = 1 

;---------------------------------------------------------------------------
; 葤
[Statedef 930]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0

[State 930, 0]
type = VelSet
trigger1 = Time = 13 
x = 7
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 930, 1]
type = VelSet
trigger1 = Time = 34
x = 16
ignorehitpause = 1
PauseMoveTime = 2147483647

[State 930, 2]
type = Changeanim2 
trigger1 = Time = 0
value = 5000

[State 930, 3]
type = SelfState 
trigger1 = Time = 92
value = 0
ctrl = 1 


