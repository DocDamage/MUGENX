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
; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 106, 2]
type = PlaySnd
trigger1 = Animelem = 4
value = 1,4
channel = 0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[Statedef 180]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 191, 3]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,3

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

; INTRO
[Statedef 190]
type = S
physics = N
ctrl = 0
anim = 190
velset = 0,0,0

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro


[State 106, 2]
type = PlaySnd
trigger1 = Animelem = 3
value = 1,2
channel = 0

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = ChangeState
trigger1 = AnimTime = 0
value = 0

; Taunt
; CNS difficulty: easy
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 106, 2]
type = PlaySnd
trigger1 = Animelem = 4
value = 1,7
channel = 0

[State 195, 1]
type = CtrlSet
trigger1 = Time = 40
value = 1

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; Stand Light Punch
; CNS difficulty: easy
[Statedef 200]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 1                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 200                       ;Change animation (Def: no change)
poweradd = 20                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 4001, NotHitBy]
type = NotHitBy
trigger1 = !time && (prevstateno = [150,153])
time = 5
value = SCA

[State 0, 1]
type = PalFX
trigger1 = !time && (prevstateno = [150,153])
time = 30
add = 128,128,128
sinadd = 128,128,128,3
ignorehitpause = 1
supermove = 1

[State 0, 1]
type = SuperPause
trigger1 = !time && (prevstateno = [150,153])
time = 10
pos = 0,0
anim = -1
darken = 0
poweradd = -333
unhittable = 1
ignorehitpause = 1


[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 23, 0                   ;Damage that move inflicts, guard damage
animtype = Light                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 10, 10                 ;Time attacker pauses, time opponent shakes
sparkno = 0                      ;Spark anim no (Def: set above)
sparkxy = -10, -76               ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound = s5, 0                  ;Sound to play on hit
guardsound = 6, 0                ;Sound to play on guard
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 10             ;Time that the opponent slides back
ground.hittime  = 10             ;Time opponent is in hit state
ground.velocity = -4             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -6
down.cornerpush.veloff = -6
guard.cornerpush.veloff = -6
airguard.cornerpush.veloff = -6
air.hittime = 12                 ;Time before opponent regains control in air

[State 200, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0


[State 200, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing strong punch
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
anim = 210
sprpriority = -1

[State 210, Width]
type = Width
trigger1 = (AnimElemTime (2) >= 0) && (AnimElemTime (3) < 0)
value = 45,0

[State 210, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Medium
damage    = 47
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = 0,-56
hitsound   = s5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -7.5
air.velocity = -2.5,-4
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -6
down.cornerpush.veloff = -6
guard.cornerpush.veloff = -6
airguard.cornerpush.veloff = -6

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Knee Thrust
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 220
sprpriority = 2

[State 4001, NotHitBy]
type = NotHitBy
trigger1 = !time && (prevstateno = [150,153])
time = 5
value = SCA

[State 0, 1]
type = PalFX
trigger1 = !time && (prevstateno = [150,153])
time = 30
add = 128,128,128
sinadd = 128,128,128,3
ignorehitpause = 1
supermove = 1

[State 0, 1]
type = SuperPause
trigger1 = !time && (prevstateno = [150,153])
time = 10
pos = 0,0
anim = -1
darken = 0
poweradd = -333
unhittable = 1
ignorehitpause = 1


[State 0, ]
type = Width
trigger1 = AnimElemtime(2) > 0
player = 40,0




[State 0, ]
type = VarSet
trigger1 = !time
v = 0
value = 0
ignorehitpause = 1



[State 0, 1]
type = StateTypeSet
trigger1 = AnimElem =2
statetype = A
physics = N


[State 0, 1]
type = VelSet
trigger1 = AnimElem =2
x= 2.7
y = -3.2

[State 0, 1]
type = VelAdd
trigger1 = AnimElemtime(2) > 0
y = .3

;ignorehitpause = 0
;persistent = 1
[State 0, 1]
type = PlaySnd
trigger1 = AnimElem =2
value = 0,1


[State 0, 1]
type = PlaySnd
trigger1 = AnimElem =2
value = 2,6
;volume = 0
channel = 0

[State 240, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage    = 47
animtype  = Medium
hitflag = MAF
guardflag = M
pausetime = 12,12
sparkno = 1
sparkxy = -10,-69
hitsound   = s5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1, -8
air.velocity = -1,-6
fall = 1
fall.recover = 0
yaccel = .45


[State 0, 1]
type = ChangeState
trigger1 = Vel y > 0 && Pos Y >=0
value = 221

; Jump Land
[Statedef 221]
type    = S
physics = S
ctrl = 0
anim = 221

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 4]
type = ChangeState
trigger1 = Var(0) = 1
value = 2000

[State 52, 4]
type = ChangeState
trigger1 = Var(0) = 2
value = 2010

[State 52, 4]
type = ChangeState
trigger1 = Var(0) = 3
value = 1000

[State 52, 4]
type = ChangeState
trigger1 = Var(0) = 4
value = 1001

[State 52, 4]
type = ChangeState
trigger1 = Var(0) = 5
value = 1010

[State 52, 4]
type = ChangeState
trigger1 = Var(0) = 6
value = 1012

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing light kick
; CNS difficulty: easy
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 22
ctrl = 0
velset = ifelse(prevstateno=200,3,0),0
anim = 230
sprpriority = 2

[State 230, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 0

[State 230, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 26
guardflag = MA
pausetime = 10,10
sparkno = 0
sparkxy = -10,-54
hitsound   = s5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 12
ground.velocity = -5
air.velocity = -2.5,-3.5
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
down.cornerpush.veloff = -8
guard.cornerpush.veloff = -8
airguard.cornerpush.veloff = -8

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing strong kick
; CNS difficulty: easy
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 240
sprpriority = 2

[State 0, ]
type = Width
trigger1 = !time
edge = 60,0
player = 60,0
;ignorehitpause = 0
;persistent = 1



[State 0, ]
type = VarSet
trigger1 = !time
v = 0
value = 0
ignorehitpause = 1



[State 0, 1]
type = StateTypeSet
trigger1 = AnimElem =3
statetype = A
physics = N




[State 0, 1]
type = PosAdd
trigger1 = AnimElem = 2
x = 30
;y = 
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = Explod
trigger1 = AnimElem = 4
anim = 241
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0

[State 0, 1]
type = VelSet
trigger1 = AnimElem =3
x= 2.5
y = -3.7

[State 0, 1]
type = VelAdd
trigger1 = AnimElemtime(3) > 0
y = .4

;ignorehitpause = 0
;persistent = 1
[State 0, 1]
type = PlaySnd
trigger1 = AnimElem =3
value = 0,1
;volume = 0
channel = 0
;lowpriority = 
;freqmul = 1.0
;loop = 0

[State 240, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Medium
damage    = 53
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = -10,-60
hitsound   = s5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -6
air.velocity = -2.2,-3.2
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -6
down.cornerpush.veloff = -6
guard.cornerpush.veloff = -6
airguard.cornerpush.veloff = -6


[State 0, 1]
type = ChangeState
trigger1 = Vel y > 0 && Pos Y >=0
value = 241

; Jump Land
[Statedef 241]
type    = S
physics = S
ctrl = 0
anim = 242

[State 52, 1]
type = VelSet
trigger1 = Time = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 4]
type = ChangeState
trigger1 = Var(0) = 1
value = 2000

[State 52, 4]
type = ChangeState
trigger1 = Var(0) = 2
value = 2010

[State 52, 4]
type = ChangeState
trigger1 = Var(0) = 3
value = 1000

[State 52, 4]
type = ChangeState
trigger1 = Var(0) = 4
value = 1001

[State 52, 4]
type = ChangeState
trigger1 = Var(0) = 5
value = 1010

[State 52, 4]
type = ChangeState
trigger1 = Var(0) = 6
value = 1012

[State 52, 4]
type = ChangeState
trigger1 = Var(0) = 7
value = 2030

[State 52, 4]
type = ChangeState
trigger1 = Var(0) = 8
value = 1030

[State 52, 4]
type = ChangeState
trigger1 = Var(0) = 9
value = 1033

[State 52, 4]
type = ChangeState
trigger1 = Var(0) = 10
value = 3000

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Axe Kick
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
anim = 250
sprpriority = -1

[State 210, Width]
type = Width
trigger1 = (AnimElemTime (2) >= 0) && (AnimElemTime (5) < 0)
value = 25,0

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem =3
value = 2,5
;volume = 0
channel = 0

[State 52, 1]
type = VelSet
trigger1 = Time = 13
x = 4

[State 210, 1]
type = PlaySnd
trigger1 = Time = 12
value = 0, 1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Medium
damage    = 37
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = 0,-56
hitsound   = s5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -7.5
air.velocity = -2.5,-4
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -6
down.cornerpush.veloff = -6
guard.cornerpush.veloff = -6
airguard.cornerpush.veloff = -6

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype  = Medium
damage    = 37
guardflag = HA
pausetime = 12,12
sparkno = 1
sparkxy = 0,-56
hitsound   = s5,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -7.5
air.velocity = -2.5,-4
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -6
down.cornerpush.veloff = -6
guard.cornerpush.veloff = -6
airguard.cornerpush.veloff = -6

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


; Thrust Kick 
[Statedef 255]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
anim = 255
sprpriority = -1

[State 210, Width]
type = Width
trigger1 = (AnimElemTime (2) >= 0) && (AnimElemTime (5) < 0)
value = 55,0

[State 210, 1]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 4 
attr = S, NA
damage    = 75
guardflag = MA
pausetime = 12,12
sparkxy = -5,-62
sparkno = 2
hitsound   = s5,5
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.Velocity = -4.2,-6
air.Velocity = -4.2, -6
fall.envshake.time = 10
fall = 1
fall.recover = 0
yaccel = .5

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Crouching light punch
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 15
ctrl = 0
anim = 400
sprpriority = 2

[State 400, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 400, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 23
priority  = 3
animtype  = Light
hitflag = MAFD
guardflag = L
pausetime = 10,11
sparkno = 0
sparkxy = -10,-42
hitsound   = s5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 4
ground.hittime  = 12
ground.velocity = -4
air.velocity = -1.5,-3
down.velocity = -1,-8
yaccel = .45

[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouching strong punch
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 50
ctrl = 0
anim = 410
sprpriority = 2

[State 410, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 1

;This is the first hit, triggered on the 3rd element of animation.
[State 410, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 47
animtype  = Medium
hitflag = MAF
guardflag = M
pausetime = 12,12
sparkno = 1
sparkxy = -10,-55
hitsound   = s5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1, -8
air.velocity = -1,-6
fall = 1
fall.recover = 0
yaccel = .4


[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1



;---------------------------------------------------------------------------
;Crouching light kick
; CNS difficulty: easy
[Statedef 430]
type    = C
movetype= A
physics = C
poweradd= 22
ctrl = 0
anim = 430
sprpriority = 2

[State 430, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 430, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 28
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 12,12
sparkno = 0
sparkxy = -10,-8
hitsound   = s5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -5
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 20

[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouch Strong Kick
; CNS difficulty: easy
; Description: This move uses "Trip" for the "ground.type" parameter in
;     its HitDef. It's a special type that puts the opponent in a tripped
;     animation as he falls. Also, the hitflag parameter in the HitDef
;     is set to "MAFD". The "D" indicates that a downed opponent can be
;     hit by the attack.
; CNS ƒŒƒxƒ‹: ˆÕ
; Ú×:
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 70
ctrl = 0
anim = 440
sprpriority = 2

[State 440, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 440, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 42
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = 1
sparkxy = -5,-10
hitsound   = s5,3
guardsound = 6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -1.5,-3
air.velocity = -1.2,-3
guard.velocity = -5
fall = 1

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Jump Light Punch
; CNS difficulty: easy
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 11
ctrl = 0
anim = 600
sprpriority = 2

[State 600, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 600, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 20
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = 0
sparkxy = -10,-58
hitsound   = s5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3

[State 600, 3]
type = ChangeState
trigger1 = Animtime = 0
value = 50
ctrl =1

;---------------------------------------------------------------------------
;Jump Strong Punch
; CNS difficulty: easy
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 610
sprpriority = 2

[State 610, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 610, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 40
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = 1
sparkxy = -10,-55
hitsound   = s5,3
guardsound = 6,0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4

[State 600, 3]
type = ChangeState
trigger1 = Animtime = 0
value = 50
ctrl =1

; Drill Kick
; CNS difficulty: easy
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 620
sprpriority = 2

[State 0, 1]
type = StateTypeSet
trigger1 = AnimElem =2
physics = N

[State 610, 2]
type = PlaySnd
trigger1 = Time = 2
value = 2, 3
channel = 0



[State 0, 1]
type = VelSet
trigger1 = Animelem = 2
x = 3
y = 5.5
;ignorehitpause = 0
;persistent = 1



[State 610, 3]
type = HitDef
trigger1 = AnimElem = 2 || AnimElem = 3 ||  AnimElem = 4 || AnimElem = 5 
attr = A, NA
damage = 20
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = 1
sparkxy = 0,-4
hitsound   = s5,2
guardsound = 6,0
animtype = Med
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -5
air.velocity = -3,-4

[State 600, 3]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52
ctrl = 1


;---------------------------------------------------------------------------
;Jump Light Kick
; CNS difficulty: easy
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 20
ctrl = 0
anim = 630
sprpriority = 2

[State 630, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 0

[State 630, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 26
guardflag = HA
priority = 3
pausetime = 8,8
sparkno = 1
sparkxy = -5,-35
hitsound   = s5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -4
air.velocity = -2,-3

[State 600, 3]
type = ChangeState
trigger1 = Animtime = 0
value = 50
ctrl =1

;---------------------------------------------------------------------------
;Jump Strong Kick
; CNS difficulty: easy
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 640
sprpriority = 2

[State 640, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 640, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 50
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = 1
sparkxy = -10,-40
hitsound   = s5,3
guardsound = 6,0
animtype = Med
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -5
air.velocity = -3,-4

[State 600, 3]
type = ChangeState
trigger1 = Animtime = 0
value = 50
ctrl =1

;Jump Strong Kick
; CNS difficulty: easy
[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 650
sprpriority = 2

[State 640, 2]
type = PlaySnd
trigger1 = Time = 2
value = 0, 1

[State 640, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 30
guardflag = HA
priority = 4
pausetime = 12,12
sparkno = 1
sparkxy = -1,-4
hitsound   = s5,3
guardsound = 6,0
animtype = Med
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3,-5
air.velocity = -3,-5
fall = 1

[State 0, ]
type = VelSet
trigger1 = Movecontact
x = ifelse(frontedgedist <= 25 || Vel X < 0, const(velocity.jump.back.x),  const(velocity.jump.fwd.x))
y = -5 
;ignorehitpause = 0
;persistent = 1


[State 600, 3]
type = ChangeState
trigger1 = Animtime = 0
value = 50
ctrl =1


;Knee
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2


[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
sprpriority = 1       ;Draw in front of p2
p1facing = ifelse (command = "holdback", -1, 1) ;Turn if holding forwards
p2facing = 1          ;Force p2 to face KFM
p1stateno = 801      ;On success, KFM changes to state 810
p2stateno = 805       ;If hit, p2 changes to state 820 in KFM's cns
fall = 1              ;Force p2 into falling down

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Kung Fu Throw - Throwing the opponent
[Statedef 801]
type    = S
movetype= A
physics = N
anim = 801
poweradd = 60

[State 191, 6]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 4 || AnimElem = 6
value = 2,7
volume = 255
channel = 0

[State 191, 6]
type = PlaySnd
trigger1 = AnimElem = 9
value = 2,6
volume = 255
channel = 0


[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 6

[State 810, Throw Sound]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 4 || AnimElem = 6
value = 5, 0

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElemTime(7) < 0
pos = 30, 0



[State 0, 1]
type = HitAdd
trigger1 = AnimElem = 2 || AnimElem = 4 || AnimElem = 6
value = 1
;ignorehitpause = 0
;persistent = 1



[State 931, HitSpark]
type = Explod
trigger1 = AnimElem = 2 || AnimElem = 4 || AnimElem = 6
anim = F2
pos = 27,-44
postype = p1
sprpriority = 3
ownpal = 1


[State 810, Width 2-11]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(9) < 0
edge = 50,0

[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElemTime(8) = 0 
pos = 58, 0
time = 4

[State 280, 5]
type = HitDef
trigger1 = AnimElem = 9
attr = S, NA
damage = 40
hitflag = MAF
guardflag = MA
animtype = Hard
ground.animtype = low
pausetime = 11,11
sparkno = 3
sparkxy = 0,-61
hitsound = S5,5
guardsound = 6,0
ground.velocity = -4,-9
air.velocity = -4,-6
guard.velocity = -11
fall = 1
fall.recovertime = 35
guard.velocity = -12
getpower = 184,184
givepower = 21,21
fall.yvelocity = -3.4
guard.pausetime = 11,11
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
yaccel = .55
envshake.time = 11
fall.envshake.time = 10


[State 810, Hurt 11]
type = TargetLifeAdd
trigger1 = AnimElem = 2 || AnimElem = 4 || AnimElem = 6
value = -20
kill = 0



[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw
; (a custom gethit state)
; Description: This is the state that the opponent changes to after being
;     hit by KFM's throw HitDef. The important thing here is to use a
;     ChangeAnim2 controller. The difference between ChangeAnim2 and
;     ChangeAnim is that ChangeAnim2 changes the player's animation to
;     an action in the AIR file of the attacker (in this case, kfm.air),
;     whereas ChangeAnim always changes the player to an action in his
;     own AIR file. Look at Action 820 in kfm.air for some extra
;     comments.
[Statedef 805]
type    = S
movetype= H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 805


; Resenshu
[Statedef 1000]
type = U
movetype = A
physics = N
poweradd = 40
velset = 0, 0
ctrl = 0

[State 4001, NotHitBy]
type = NotHitBy
trigger1 = !time && (prevstateno = [150,153])
time = 5
value = SCA

[State 0, 1]
type = PalFX
trigger1 = !time && (prevstateno = [150,153])
time = 30
add = 128,128,128
sinadd = 128,128,128,3
ignorehitpause = 1
supermove = 1

[State 0, 1]
type = SuperPause
trigger1 = !time && (prevstateno = [150,153])
time = 10
pos = 0,0
anim = -1
darken = 0
poweradd = -333
unhittable = 1
ignorehitpause = 1

[State 0, 1]
type = Explod
trigger1 = !time
anim = 1001
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1


[State 210, Width]
type = Width
trigger1 = (AnimElemTime (3) >= 0) && (AnimElemTime (4) < 0) 
value = 40,0



[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1000
value = 1000

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,7
volume = 255

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =3
postype = p1
pos = 79,-55
stateno = 1005
bindtime = 1
ownpal = 1
name = "Energy Ball"
ID = 11000


[State 1000, ChangeState]
type = ChangeState
trigger1 = animTime =0
value = 0
ctrl = 1

; Ressenshu
[Statedef 1001]
type = U
movetype = A
physics = N
poweradd = 40
velset = 0, 0
ctrl = 0

[State 210, Width]
type = Width
trigger1 = (AnimElemTime (3) >= 0) && (AnimElemTime (4) < 0) 
value = 40,0

[State 0, 1]
type = Explod
trigger1 = !time
anim = 1001
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1


[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 1000
value = 1000

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1
volume = 255
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,7
volume = 255

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =3
postype = p1
pos = 79,-55
stateno = 1005
bindtime = 1
ownpal = 1
name = "Energy Ball"
ID = 11000


[State 1000, ChangeState]
type = ChangeState
trigger1 = animTime =0
value = 0
ctrl = 1



; The Energy Shot
[Statedef 1005]
type = S
movetype = A
physics = N
velset = ifelse(parent, stateno = 1000 || parent, stateno = 1040,3,5),0
anim = 1005
sprpriority = 2
juggle = 2
ctrl = 0

[State 0, 1]
type = ParentVarAdd
trigger1 = !time
v =  9
value = -100

[State 4001, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0




[State 4001, HitDef]
type = HitDef
trigger1 = UniqHitCount = 0
trigger1 = p2stateno != 5070
trigger1 = p2stateno != 5071
attr = S, SP
animtype = Medium
damage = 87,5
hitflag = MAFP
guardflag = MA
pausetime = 0, 4
sparkno = 3
sparkxy = 0,0
hitsound = s5,7
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -12,0
guard.velocity = -6
air.velocity = -4,-2
airguard.velocity = -6,-1
down.velocity = -12,0
down.hittime = 26
air.fall = 1
palfx.color = 0
fall.recover = 0
envshake.time = 10

[State 4001, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 4001, HitOverride]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1006
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 4001, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 2512, Helper Hits Count Too]
type = ParentVarSet ; Only works for helpers.
trigger1 = UniqHitCount != Var(20)
v = 19
value = 1

[State 2512, Helper Hits Count Too]
type = VarSet
trigger1 = UniqHitCount != Var(20)
v = 20
value = UniqHitCount

[State 4001, ChangeState]
type = ChangeState
trigger1 = MoveContact = 1
trigger2 = Pos Y > -10
value = 1006

[State 4001, DestroySelf]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -70

; Ball Hits
[Statedef 1006]
type = S
movetype = A
physics = N
velset = 2,0
anim = 1006
sprpriority = 2
ctrl = 0


[State 4022, 0]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoShadow

[State 4022, 1]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 4022, 2]
type = DestroySelf
trigger1 = AnimTime = 0


; Enkenfu part 1
[Statedef 1010]
type    = S
physics = N
anim = 100
sprpriority = 2
ctrl = 0

[State 4001, NotHitBy]
type = NotHitBy
trigger1 = !time && (prevstateno = [150,153])
time = 5
value = SCA

[State 0, 1]
type = PalFX
trigger1 = !time && (prevstateno = [150,153])
time = 30
add = 128,128,128
sinadd = 128,128,128,3
ignorehitpause = 1
supermove = 1

[State 0, 1]
type = SuperPause
trigger1 = !time && (prevstateno = [150,153])
time = 10
pos = 0,0
anim = -1
darken = 0
poweradd = -333
unhittable = 1
ignorehitpause = 1

[State 0, 1]
type = Width
trigger1 = 1
edge = 50,0
player = 50,0
;ignorehitpause = 0
;persistent = 1

[State 191, 3]
type = PlaySnd
trigger1 = Time = 0
value = 55,0

[State 100, 1]
type = VelSet
trigger1 = time = 0
x = 6.6 + ((palno=12)*3)


[State 100, 4]
type = ChangeState
triggerall = time > 1
trigger1 = Time = 15 || P2BodyDist X <= 50
value = 1011

[Statedef 1011]
type = S
movetype = A
physics = N
velset = 1.5,0
ctrl = 0
anim = 1010
juggle = 6



[State 0, ]
type = Width
trigger1 = !time
edge = 60,0
player = 60,0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = StateTypeSet
trigger1 = AnimElem =2
statetype = A




[State 0, 1]
type = PosAdd
trigger1 = !time
x = 30
;y = 
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = Explod
trigger1 = AnimElem = 2
anim = 1015
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0

[State 0, 1]
type = VelSet
trigger1 = AnimElem =2
x= 1.5 + ((palno=12)*1)
y = -3.7

[State 0, 1]
type = VelAdd
trigger1 = AnimElemtime(2) > 0
y = .2
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 1,5
;volume = 0
channel = 0
;lowpriority = 
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan = 0
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 5 
value = 0,7

[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 3 
attr = A, SA
damage    = 75, 3
getpower  = 20
givepower = 10
guardflag = MA
pausetime = 12,12
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,5
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.Velocity = -4.2,-6
air.Velocity = -4.2, -6
envshake.time = 10
fall.envshake.time = 10
fall = 1
fall.recover = 0



[State 0, 1]
type = ChangeState
trigger1 = Vel y > 0 && Pos Y >=0
value = 52


; Enkenfu part 1
[Statedef 1012]
type    = S
physics = N
anim = 100
sprpriority = 2
ctrl = 0

[State 0,1 ]
type = Width
trigger1 = 1
edge = 50,0
player = 50,0
;ignorehitpause = 0
;persistent = 1

[State 191, 3]
type = PlaySnd
trigger1 = Time = 0
value = 55,0

[State 100, 1]
type = VelSet
trigger1 = time = 0
x = 6.6 + ((palno=12)*3)


[State 100, 4]
type = ChangeState
triggerall = time > 1
trigger1 = Time = 15 || P2BodyDist X <= 50
value = 1013

[Statedef 1013]
type = A
movetype = A
physics = N
velset = 1.5,0
ctrl = 0
anim = 1011
juggle = 6



[State 0, ]
type = Width
trigger1 = !time
edge = 60,0
player = 60,0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = PosAdd
trigger1 = !time
x = 30
;y = 
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = Explod
trigger1 = AnimElem = 1
anim = 1015
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0

[State 0, 1]
type = Explod
trigger1 = AnimElem = 3
anim = 1016
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0

[State 0, 1]
type = VelSet
trigger1 = AnimElem =1
x= 1.5 + ((palno=12)*1)
y = -3.7

[State 0, 1]
type = VelAdd
trigger1 = AnimElemtime(1) > 0
y = .2
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 1,5
;volume = 0
channel = 0
;lowpriority = 
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan = 0
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 4 
value = 0,7

[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 2 
attr = A, SA
damage    = 25, 3
getpower  = 20
givepower = 10
guardflag = MA
pausetime = 12,12
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,5
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.Velocity = -1.2,-4
air.Velocity = -1.2, -4
envshake.time = 10
fall.envshake.time = 10
fall = 1
fall.recover = 0


[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 4 
attr = A, SA
damage    = 75, 3
getpower  = 20
givepower = 10
guardflag = MA
pausetime = 12,12
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,5
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.Velocity = -4.2,-6
air.Velocity = -4.2, -6
envshake.time = 10
fall.envshake.time = 10
fall = 1
fall.recover = 0



[State 0, 1]
type = ChangeState
trigger1 = Vel y > 0 && Pos Y >=0
value = 52


;Knee
[Statedef 1020]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800
sprpriority = 2


[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, ST          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
sprpriority = 1       ;Draw in front of p2
p1facing = 1 
p2facing = 1          ;Force p2 to face KFM
p1stateno = 1021      ;On success, KFM changes to state 810
p2stateno = 1025       ;If hit, p2 changes to state 820 in KFM's cns
fall = 1              ;Force p2 into falling down

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Kung Fu Throw - Throwing the opponent
[Statedef 1021]
type    = S
movetype= A
physics = N
anim = 1020
poweradd = 120

[State 191, 6]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 5 
value = 2,7
volume = 255
channel = 0

[State 191, 6]
type = PlaySnd
trigger1 = AnimElem = 11
value = 2,6
volume = 255
channel = 0

[State 0, 1]
type = Explod
trigger1 = AnimElem = 12
anim = 241
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0

[State 810, Throw Sound]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 5 
value = 5, 0

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElemTime(6) < 0
pos = 50, 0



[State 0, 1]
type = HitAdd
trigger1 = AnimElem = 5 
value = 1
;ignorehitpause = 0
;persistent = 1



[State 931, HitSpark]
type = Explod
trigger1 = AnimElem = 2 
anim = F2
pos = 59,-17
postype = p1
sprpriority = 3
ownpal = 1

[State 931, HitSpark]
type = Explod
trigger1 = AnimElem = 5 
anim = F2
pos = 78,-56
postype = p1
sprpriority = 3
ownpal = 1


[State 810, Width 2-11]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(9) < 0
edge = 50,0

[State 0, 1]
type = StateTypeSet
trigger1 = AnimElem =7
statetype = A

[State 0, 1]
type = VelSet
trigger1 = AnimElem =8
x= 1.5
y = -5.7

[State 0, 1]
type = VelSet
trigger1 = AnimElem =11
x = -1


[State 0, 1]
type = VelAdd
trigger1 = AnimElemtime(8) > 0
y = .3
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PosAdd
trigger1 = AnimElem =7
x = -30
;y = 
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PosAdd
trigger1 = AnimElem =10
x = 30
;y = 
;ignorehitpause = 0
;persistent = 1

[State 280, 5]
type = HitDef
trigger1 = AnimElem = 8
attr = S, NA
damage = 30
hitflag = MAF
guardflag = 
animtype = Up
ground.animtype = low
pausetime = 11,11
sparkno = 2
sparkxy = 0,-61
hitsound = S5,2
guardsound = 6,0
ground.velocity = -2,-9
air.velocity = -2,-6
guard.velocity = -11
fall = 1
fall.recover = 0
guard.velocity = -12
envshake.time = 11
fall.envshake.time = 10
kill = 0
yaccel = .5

[State 280, 5]
type = HitDef
trigger1 = AnimElem = 11
attr = S, NA
damage = 60
hitflag = MAF
guardflag = 
animtype = Back
ground.animtype = low
pausetime = 11,11
sparkno = 3
sparkxy = 0,-67
hitsound = S5,5
guardsound = 6,0
ground.velocity = -6,-2
air.velocity = -6,-2
guard.velocity = -11
fall = 1
fall.recover = 0
guard.velocity = -12
getpower = 50,50
givepower = 15,15
yaccel = .55
envshake.time = 11
fall.envshake.time = 10


[State 810, Hurt 11]
type = TargetLifeAdd
trigger1 = AnimElem = 2 || AnimElem = 5 
value = -30
kill = 0



[State 810, State End]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 52


;---------------------------------------------------------------------------
;Thrown by Kung Fu Throw
; (a custom gethit state)
; Description: This is the state that the opponent changes to after being
;     hit by KFM's throw HitDef. The important thing here is to use a
;     ChangeAnim2 controller. The difference between ChangeAnim2 and
;     ChangeAnim is that ChangeAnim2 changes the player's animation to
;     an action in the AIR file of the attacker (in this case, kfm.air),
;     whereas ChangeAnim always changes the player to an action in his
;     own AIR file. Look at Action 820 in kfm.air for some extra
;     comments.
[Statedef 1025]
type    = S
movetype= H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1025

; Varied Assault 1 - Low (Gold Mode)
[Statedef 1030]
type    = S
physics = N
anim = 100
sprpriority = 2
ctrl = 0

[State 0, 1]
type = Width
trigger1 = 1
edge = 50,0
player = 50,0
;ignorehitpause = 0
;persistent = 1

[State 191, 3]
type = PlaySnd
trigger1 = Time = 0
value = 55,0

[State 100, 1]
type = VelSet
trigger1 = time = 0
x = 9.6


[State 100, 4]
type = ChangeState
triggerall = time > 1
trigger1 = Time = 15 || P2BodyDist X <= 40
value = 1031

[Statedef 1031]
type = C
movetype = A
physics = S
velset = 5.5,0
ctrl = 0
anim = 430
juggle = 6



[State 0, ]
type = Width
trigger1 = !time
edge = 60,0
player = 60,0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 2,6
;volume = 0
channel = 0
;lowpriority = 
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan = 0
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 3 
value = 0,7

[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 3 
attr = C, SA
hitflag = MAFD
damage    = 50, 3
getpower  = 20
givepower = 10
guardflag = L
pausetime = 12,12
sparkxy = -5,-8
sparkno = 3
hitsound   = s5,5
guardsound = 6,0
ground.type = Low
air.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.Velocity = -3.2,-6
air.Velocity = -3.2, -6
envshake.time = 10
fall.envshake.time = 10
fall = 1
fall.recover = 0



[State 0, 1]
type = ChangeState
trigger1 = !Animtime
value = 1032

[Statedef 1032]
type = S
movetype = A
physics = N
velset = 1.5,0
ctrl = 0
anim = 1030
juggle = 6

[State 1101, 4]
type = VelSet
trigger1 = Animelem = 2
x = 4
y = -8.5

[State 1101, 5]
type = VelAdd
trigger1 = Animelemtime(2) >= 0
y = .7


[State 0, ]
type = Width
trigger1 = !time
edge = 60,0
player = 60,0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = StateTypeSet
trigger1 = AnimElem =2
statetype = A




[State 0, 1]
type = PosAdd
trigger1 = !time
x = 30
;y = 
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = Explod
trigger1 = AnimElem = 2
anim = 1017
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0

[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 2,4
;volume = 0
channel = 0
;lowpriority = 
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan = 0
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 3  
value = 0,7

[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 3 
attr = A, SA
damage    = 50, 3
getpower  = 20
givepower = 10
guardflag = HA
pausetime = 12,12
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,5
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.Velocity = -6,6
air.Velocity = -6, 6
envshake.time = 12
fall.envshake.time = 20
fall = 1
fall.recover = 0



[State 0, 1]
type = ChangeState
trigger1 = Vel y > 0 && Pos Y >=0
value = 52


; Varied Assault 2 (Gold Mode)
[Statedef 1033]
type    = S
physics = N
anim = 100
sprpriority = 2
ctrl = 0

[State 191, 3]
type = PlaySnd
trigger1 = Time = 0
value = 55,0

[State 100, 1]
type = VelSet
trigger1 = time = 0
x = 9.6 


[State 100, 4]
type = ChangeState
triggerall = time > 1
trigger1 = Time = 15 || P2BodyDist X <= 10
value = 1034

[Statedef 1034]
type = S
movetype = A
physics = N
velset = 1.5,0
ctrl = 0
anim = 220
juggle = 6



[State 0, 1]
type = StateTypeSet
trigger1 = AnimElem =2
statetype = A

[State 0,1 ]
type = Width
trigger1 = 1
edge = 50,50



[State 0, 1]
type = PosAdd
trigger1 = !time
x = -30
;y = 
;ignorehitpause = 0
;persistent = 1




[State 0, 1]
type = VelSet
trigger1 = AnimElem =2
x= 5.5
y = -12

[State 0, 1]
type = VelAdd
trigger1 = AnimElemtime(2) > 0
y = .75
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 2,3
;volume = 0
channel = 0
;lowpriority = 
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan = 0
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 2  
value = 0,7

[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 2 
attr = A, SA
animtype =Hard
damage    = 75, 3
getpower  = 20
givepower = 10
guardflag = M
pausetime = 12,12
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,5
guardsound = 6,0
ground.type = High
air.type = Low
ground.type = High
ground.velocity = -6,-8
air.velocity = -6,-8
fall.recover = 0
air.recover = 0

envshake.time = 10
fall.envshake.time = 10
fall = 1
fall.recover = 0



[State 0, 1]
type = ChangeState
trigger1 = Vel y >= 0 && Animelemtime(2) >= 0
value = 1035

[Statedef 1035]
type = A
movetype = A
physics = N
velset = 6.5,-3
ctrl = 0
anim = 1030
juggle = 6




[State 0, 1]
type = StateTypeSet
trigger1 = AnimElem =2
statetype = A


[State 0, 1]
type = PosAdd
trigger1 = !time
x = 40
;y = 
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = Explod
trigger1 = AnimElem = 2
anim = 1017
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1
ignorehitpause = 0


[State 0, 1]
type = VelAdd
trigger1 = time >= 0
y = .65
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 2,2
;volume = 0
channel = 0
;lowpriority = 
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan = 0
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 3 
value = 0,7

[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 3 
attr = A, SA
damage    = 75, 3
getpower  = 20
givepower = 10
guardflag = MA
pausetime = 12,12
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,5
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.Velocity = -6,6
air.Velocity = -6, 6
envshake.time = 10
fall.envshake.time = 20
fall = 1
fall.recover = 0



[State 0, 1]
type = ChangeState
trigger1 = Vel y > 0 && Pos Y >=0
value = 52

; Ressenshu
[Statedef 1040]
type = A
movetype = A
physics = A
poweradd = 40
velset = 0, 0
ctrl = 0
anim = 1040

[State 210, Width]
type = Width
trigger1 = (AnimElemTime (3) >= 0) && (AnimElemTime (4) < 0) 
value = 40,0

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2
anim = 1015
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1


[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1
volume = 255
channel = 0

[State 0, 1]
type = VelSet
trigger1 = AnimElem =3
x = -2
y = -3

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,7
volume = 255

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =3
postype = p1
pos = 79,-55
stateno = 1005
bindtime = 1
ownpal = 1
name = "Energy Ball"
ID = 11000

; Ressenshu
[Statedef 1041]
type = A
movetype = A
physics = A
poweradd = 40
velset = 0, 0
ctrl = 0
anim = 1040

[State 210, Width]
type = Width
trigger1 = (AnimElemTime (3) >= 0) && (AnimElemTime (4) < 0) 
value = 40,0

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2
anim = 1015
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
ownpal = 0
sprpriority = 4
removeongethit = 1


[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,1
volume = 255
channel = 0

[State 0, 1]
type = VelSet
trigger1 = AnimElem =3
x = -2
y = -3

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,7
volume = 255

[State 1000, Helper]
type = Helper
trigger1 = !IsHelper(11000)
trigger1 = AnimElem =3
postype = p1
pos = 79,-55
stateno = 1005
bindtime = 1
ownpal = 1
name = "Energy Ball"
ID = 11000


;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------
; RUN_FWD
[Statedef 100]
type    = S
physics = N
anim = 100
sprpriority = 2

[State 0, 1]
type = Helper
trigger1 = (Time%3 = 0) && (Time < 25)
name = "shadow"
id = 101
postype = P1
pos = 0,0
stateno = 101
ownpal = 1


[State 191, 3]
type = PlaySnd
trigger1 = Time = 0
value = 55,0

[State 100, 1]
type = VelSet
trigger1 = time = 0
x = 6.6

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, 4]
type = ChangeState
trigger1 = Time = 20
value = 0
ctrl = 1

;Shadow type 1
[Statedef 101]
type    = S
movetype= I
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, 1]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 128, 128

[State 0, 1]
type = ChangeAnim
trigger1 = Time = 0
value = parent, Anim
elem = parent, animelemno(0)

[State 0, 1]
type = ChangeAnim
trigger1 = Time >= 1
value = Anim
elem = animelemno(0)

[State 0, 2]
type = SprPriority
trigger1 = Time = 3
value = -2

[State 0, 2]
type = SprPriority
trigger1 = Time = 6
value = -3

[State 0, 3]
type = SprPriority
trigger1 = parent, StateNo != [100,105]
value = -4

[State 0, 4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 0, 1]
type = AssertSpecial
trigger1 = time%2=0
flag = invisible

[State 0, 1]
type = DestroySelf
trigger1 = (Time = 8) 

;Shadow type 2
[Statedef 102]
type    = S
movetype= I
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

[State 0, 1]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 128, 128

[State 0, 1]
type = PalFX
trigger1 = time%2 = 0
time = 1
add = 255,190,0



[State 0, 1]
type = ChangeAnim
trigger1 = Time = 0
value = parent, Anim
elem = parent, animelemno(0)

[State 0, 1]
type = ChangeAnim
trigger1 = Time >= 1
value = Anim
elem = animelemno(0)

[State 0, 2]
type = SprPriority
trigger1 = Time = 3
value = -2

[State 0, 2]
type = SprPriority
trigger1 = Time = 6
value = -3

[State 0, 3]
type = SprPriority
trigger1 = parent, StateNo != [100,105]
value = -4

[State 0, 4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, 1]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 0, 1]
type = AssertSpecial
trigger1 = time%2=0
flag = invisible

[State 0, 1]
type = DestroySelf
trigger1 = (Time = 8) 

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

[State 0, 1]
type = Helper
trigger1 = (Time%3 = 0) && (Time < 25)
name = "shadow"
id = 101
postype = P1
pos = 0,0
stateno = 101
ownpal = 1

[State 191, 3]
type = PlaySnd
trigger1 = Time = 0
value = 55,1

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
anim = 47

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
trigger1 = Time = 7
value = 0
ctrl = 1

; Jump Start
[Statedef 40]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

[State 191, 3]
type = PlaySnd
trigger1 = Time = 0 && (prevstateno = 100 || prevstateno = 12)
value = 0,5
freqmul = 1.3

[State 191, 3]
type = VarSet
trigger1 = Time = 0 && (prevstateno = 100 || prevstateno = 12)
var(1) = 1

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
trigger1 = AnimTime = 0 && !(var(1))
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, 4]
type = VelSet
trigger1 = AnimTime = 0 && (var(1))
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x)+3, const(velocity.jump.back.x)-3))
y = const(velocity.jump.y)-1


[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)
y = const(velocity.jump.y)-1

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1



; Jump Up
[Statedef 50]
type    = A
physics = A

[State 0, 1]
type = Helper
trigger1 = (Time%3 = 0) && (var(1))
name = "shadow"
id = 101
postype = P1
pos = 0,0
stateno = 102
ownpal = 1

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
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

[Statedef 5100]
type    = L
movetype= H
physics = N

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 0

[State 5100, 1]
type = ChangeState
triggerall = alive 
trigger1 = var(8) >= 1
value = 5999

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

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
;value = 61
;pos = 0, 0
;under = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 10


[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
;value = F7, 0 ;Hit ground
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

; Safe Fall
[Statedef 5999]
type    = A
physics = A
ctrl = 0
anim = 105
sprpriority = 1

[State 5100, 8]
type = VarSet
trigger1 = !Time 
var(8) = 0

[State 0, 4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5100, 8]
type = PosSet
trigger1 = !Time 
y = 0


[State 5100, 8]
type = GameMakeAnim
trigger1 = !Time 
value = 62
pos = 0, 0
under = 0

[State 0, 1]
type = PalFX
trigger1 = !time
time = 20
add = 255,255,255
sinadd = -255,-255,-255,80
ignorehitpause = 1

[State 5100, 10]
type = PlaySnd
trigger1 = !Time 
value = F7, 1
volume = 255

[State 105, 1]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)


[State 105, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 106

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

[State 0,1]
type = Helper
triggerall = (WinKO) && (Var(51) !=1) && !NumHelper(9994)
trigger1 = stateno = [3000,3016]
pos = 35, 0
postype = p1
stateno = 9994
helpertype = normal
name = "Super Finish BG"
keyctrl = 0
ownpal = 1
ID = 9994
ignorehitpause = 1

[State -2, Super Var 2]
type = VarSet
trigger1 = (WinKO) && (Var(51) !=1) 
v = 51
value = 1
ignorehitpause = 1


[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
value = 55, 2

[State -3, Landing Sound]
type = VarSet
trigger1 = stateno != [40,50] ;Jump land
var(1) = 0

[State -3, Landing Sound]
type = GameMakeAnim
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
value = 60
pos = 0,0
under = 1

; Play "ow" sound when hit
[State -3, Ow Sound]
type = PlaySnd
triggerall = Time = 1
triggerall = alive 
trigger1 = stateno = 5001 || stateno = 5011
value = 3,0
channel = 1
lowpriority = 1

[State -3, Ow Sound]
type = PlaySnd
triggerall = Time = 1
triggerall = alive 
trigger1 = stateno = 5030 ;|| stateno = 5050
value = 3,1
channel = 1
lowpriority = 1

[State -3, Ow Sound]
type = PlaySnd
triggerall = Time = 1
triggerall = alive
trigger1 = stateno = 5070
value = 3,1
channel = 1
lowpriority = 1

;Roll recovery (Thanx Sunboy!)
[State -2]
type = VarSet
triggerall = statetype = A && alive
triggerall = movetype = H
trigger1 = command = "bounceback"
var(8) = 1


[State -3, Ow Sound]
type = Poweradd
trigger1 = palno = 12 && Roundstate = 2
value = 15

[State -3, Ow Sound]
type = AssertSpecial
trigger1 = palno = 12 && Roundstate = 2
flag = nojugglecheck

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

;[Statedef -3]

; Super Finish Effect
[Statedef 9994]
type = S
ctrl = 0
anim = 9997
velset = 0,0
sprpriority = 4

[State 0,1]
type = RemoveExplod
trigger1 = !time 
ID = 998

[State 0, 1]
type = AssertSpecial
trigger1 = time <= 100
ignorehitpause = 1
flag = NoFG
flag2 = NoBG
flag3 = NoBarDisplay

[State 0,1]
type = StopSnd
trigger1 = !time
channel = 9
;ignorehitpause = 0
;persistent = 1

[State -2,1]
type = PlaySnd
trigger1 = time = 0
persistent = 0
value = 9,0
volume =455
ignorehitpause = 1

[State 3510, 4]
type = explod
trigger1 = time = 0
anim = 8010
pos = 0,0
postype = left
sprpriority = -10
supermove = 1
bindtime = 100
removetime = 100
ID = 9996
ignorehitpause = 1


[State 7001, 2]
type = DestroySelf
trigger1 = time =150


[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1


[State 1110, Darken]
type = PalFX
trigger1 = time = 75
add = 0,0,0
sinadd = 255,255,255,100
time = 25


[State 1110, Darken]
type = BGPalFX
trigger1 = time = 100
add = 255,255,255
sinadd = -255,-255,-255,200
time = 50




;-------------------
;MEE Template Files
;   provided by
;  Kitsune Sniper
;       ***
; Thanks, Kitsune!
;-------------------
