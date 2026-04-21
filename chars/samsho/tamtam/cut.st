;STRONG SLASH CLOSE
[Statedef 220]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 15                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 220                       ;Change animation (Def: no change)
poweradd = 50                    ;Power to add (Def: 0)
sprpriority = 2                  ;Set layering priority to 2 (in front)

[State 220, 0]
type = HitDef
trigger1 = AnimElem = 7
trigger1 = P2StateType = S
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 100, 0                   ;Damage that move inflicts, guard damage
animtype = heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8, 8                 ;Time attacker pauses, time opponent shakes
sparkno = s931                      ;Spark anim no (Def: set above)
sparkxy = -10, -76               ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound = s4, 10                  ;Sound to play on hit
guardsound = s4, var(6)                ;Sound to play on guard
guard.sparkno = svar(7)
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 11             ;Time that the opponent slides back
ground.hittime  = 24             ;Time opponent is in hit state
ground.velocity = -4             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 12                 ;Time before opponent regains control in air
KILL = 0

[State 220, 0]
type = HitDef
trigger1 = AnimElem = 7
trigger1 = P2StateType != S
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 100, 0                   ;Damage that move inflicts, guard damage
animtype = heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8, 8                 ;Time attacker pauses, time opponent shakes
sparkno = s931                      ;Spark anim no (Def: set above)
sparkxy = -10, -76               ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound = s4, 10                  ;Sound to play on hit
guardsound = s4, var(6)                ;Sound to play on guard
guard.sparkno = svar(7)
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 11             ;Time that the opponent slides back
ground.hittime  = 24             ;Time opponent is in hit state
ground.velocity = -4             ;Velocity at which opponent is pushed
airguard.velocity = -1.9,-.8     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -1.4,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 12                 ;Time before opponent regains control in air
KILL = 1

[State 220, 2]
type = Explod
trigger1 = Time = 13
trigger1 = movehit = 1
trigger1 = numexplod(911) = 0
anim = 911
id = 911
postype = p2
pos = -10,-76
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 210, 3]
type = ChangeAnim
trigger1 = MoveGuarded
value = 589
persistent = 0

[State 220, 5]
type = PlaySnd
trigger1 = animelem = 1
value = 1, var(2)
persistent = 0

[State 220, 6]
type = PlaySnd
trigger1 = animelem = 1
value = 4, var(5)
persistent = 0

[State 201, 9]
type = envcolor
trigger1 = movehit = 1
value = 255,0,0
time = 1
ignorehitpause = 1
persistent = 0

[State -3, 1]
type = ChangeState
trigger1 = animElem = 12 = 1
value = 225 

[State 230, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;CORTADO----

[Statedef 225]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 225
hitcountpersist = 1

[State 220, 3]
type = HitDef
trigger1 = p2life > 40
trigger1 = AnimElem = 5
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 100, 0                   ;Damage that move inflicts, guard damage
animtype = heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8, 8                 ;Time attacker pauses, time opponent shakes
sparkno = s907                      ;Spark anim no (Def: set above)
sparkxy = -10, -36               ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound = s4, 12                  ;Sound to play on hit
guardsound = s4, var(6)                ;Sound to play on guard
guard.sparkno = svar(7)
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 22             ;Time that the opponent slides back
ground.hittime  = 24             ;Time opponent is in hit state
ground.velocity = -8             ;Velocity at which opponent is pushed
airguard.velocity = -3,-.5     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -3,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 12                 ;Time before opponent regains control in air

[State 220, 3]
type = HitDef
trigger1 = p2life < 40
trigger1 = AnimElem = 5
trigger1 = roundno  != 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 100, 0                   ;Damage that move inflicts, guard damage
animtype = heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8, 8                 ;Time attacker pauses, time opponent shakes
sparkno = s907                      ;Spark anim no (Def: set above)
sparkxy = -10, -36               ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound = s20, 6                  ;Sound to play on hit
guardsound = s4, var(6)                ;Sound to play on guard
guard.sparkno = svar(7)
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 22             ;Time that the opponent slides back
ground.hittime  = 24             ;Time opponent is in hit state
ground.velocity = -8             ;Velocity at which opponent is pushed
airguard.velocity = -3,-.5     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -3,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 12                 ;Time before opponent regains control in air
KILL = 1

[State 220, 3]
type = HitDef
trigger1 = P2StateType = S
trigger1 = p2life < 40
trigger1 = AnimElem = 5
trigger1 = roundno  = 3
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage = 100, 0                   ;Damage that move inflicts, guard damage
animtype = heavy                 ;Animation type: Light, Medium, Heavy, Back (def: Light)
guardflag = MA                   ;Flags on how move is to be guarded against
hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3, Hit                ;Attack priority: 0 (least) to 7 (most), 4 default
;Hit/Miss/Dodge type (Def: Hit)
pausetime = 8, 8                 ;Time attacker pauses, time opponent shakes
sparkno = s907                      ;Spark anim no (Def: set above)
sparkxy = -10, -36               ;X-offset for the "hit spark" rel. to p2,
;Y-offset for the spark rel. to p1
hitsound = s20, 6                  ;Sound to play on hit
guardsound = s4, var(6)                ;Sound to play on guard
guard.sparkno = svar(7)
ground.type = High               ;Type: High, Low, Trip (def: Normal)
ground.slidetime = 22             ;Time that the opponent slides back
ground.hittime  = 24             ;Time opponent is in hit state
ground.velocity = -8             ;Velocity at which opponent is pushed
airguard.velocity = -3,-.5     ;Guard velocity in air (def: (air.xvel*1.5, air.yvel/2))
air.type = High                  ;Type: High, Low, Trip (def: same as ground.type)
air.velocity = -3,-3           ;X-velocity at which opponent is pushed,
;Y-velocity at which opponent is pushed
air.hittime = 12                 ;Time before opponent regains control in air
KILL = 0
p2stateno = 8000

[State 220, 4]
type = Explod
trigger1 = Time = 8
trigger1 = movehit = 1
trigger1 = numexplod(910) = 0
anim = 910
id = 910
postype = p2
pos = -12,-36
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 220, 6]
type = PlaySnd
trigger1 = animelem = 2
value = 4, var(5)
persistent = 0

[State 230, 4]
type = ChangeState
trigger1 = movehit
trigger1 = P2stateno = 8000
;trigger1 = p2life < 5
value = 8001
ctrl = 0

[State 201, 9]
type = envcolor
trigger1 = movehit = 1
value = 255,0,0
time = 1
ignorehitpause = 1
persistent = 0

[State 220, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Strong_Slash
[Statedef 221]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 221

[State 221, 2]
type = HitDef
trigger1 = AnimElem = 10
trigger1 = P2StateType = S
attr = S, NA
animtype  = Heavy
damage    = 100
guardflag = MA
hitflag = MA
pausetime = 10,10
guard.pausetime = 5,5
sparkno = s930
sparkxy = -10,-76
hitsound   = S4,var(9)
guard.sparkno = svar(7)
guardsound = s4,var(6)
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = 0,0   
air.velocity = -3, -6
kill = 0

[State 221, 2]
type = HitDef
trigger1 = AnimElem = 10
trigger1 = P2StateType != S
attr = S, NA
animtype  = Heavy
damage    = 100
guardflag = MA
hitflag = MA
pausetime = 10,10
guard.pausetime = 5,5
sparkno = s930
sparkxy = -10,-76
hitsound   = S4,var(9)
guard.sparkno = svar(7)
guardsound = s4,var(6)
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -8   
air.velocity = -3, -6
kill = 1

[State 221, 2]
type = Explod
trigger1 = Time = 17
trigger1 = movehit = 1
trigger1 = numexplod(920) = 0
anim = 920
id = 920
postype = p2
pos = -10,-76
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 210, 3]
type = ChangeAnim
trigger1 = MoveGuarded
value = 589
persistent = 0

[State 211, 9]
type = PlaySnd
trigger1 = animelem = 2
value = 1, 8
persistent = 0

[State 211, 10]
type = PlaySnd
trigger1 = animelem = 1
value = 4, 7
persistent = 0

[State 211, 11]
type = PlaySnd
trigger1 = animelem = 11 = 1
value = 4, 7
persistent = 0

[State 201, 9]
type = envcolor
trigger1 = movehit = 1
value = 255,0,0
time = 1
ignorehitpause = 1
persistent = 0

[State -3, 1]
type = ChangeState
trigger1 = animElem = 11 = 1
value = 229 

[State 230, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------

[Statedef 229]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 229
hitcountpersist = 1

[State 230, 2]
type = HitDef
trigger1 = p2life > 40
trigger1 = AnimElem = 5
attr = S, NA
animtype  = Heavy
damage    = 100
guardflag = MA
hitflag = MA
pausetime = 10,10
guard.pausetime = 5,5
sparkno = s932
sparkxy = -10,-76
hitsound   = S4,var(9)
guard.sparkno = svar(7)
guardsound = s4,var(6)
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -10   
air.velocity = -3, -6
kill = 1

[State 230, 2]
type = HitDef
trigger1 = p2life < 40
trigger1 = AnimElem = 5
trigger1 = roundno  != 3
attr = S, NA
animtype  = Heavy
damage    = 1000
guardflag = MA
hitflag = M
pausetime = 10,10
guard.pausetime = 5,5
;sparkno = s903
;sparkxy = -10,-60
hitsound   = S20,6
;guard.sparkno = s902
;guardsound = s12,var(2)
ground.type = High
ground.slidetime = 20
ground.hittime  = 0
ground.velocity = -10  
air.velocity = 0, 0
kill = 1

[State 230, 2]
type = HitDef
trigger1 = P2StateType = S
trigger1 = p2life < 40
trigger1 = AnimElem = 5
trigger1 = roundno  = 3
attr = S, NA
animtype  = Heavy
damage    = 1000
guardflag = MA
hitflag = M
pausetime = 10,10
guard.pausetime = 5,5
;sparkno = s903
;sparkxy = -10,-60
hitsound   = S20,6
;guard.sparkno = s902
;guardsound = s12,var(2)
ground.type = High
ground.slidetime = 20
ground.hittime  = 0
ground.velocity = 1   
air.velocity = 0, 0
kill = 0
p2stateno = 8000

[State 211, 3]
type = Explod
trigger1 = Time = 9
trigger1 = movehit = 1
trigger1 = numexplod(911) = 0
anim = 911
id = 911
postype = p2
pos = -10,-76
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 210, 3]
type = ChangeAnim
trigger1 = MoveGuarded
value = 589
persistent = 0

[State 230, 4]
type = ChangeState
trigger1 = movehit
trigger1 = P2stateno = 8000
;trigger1 = p2life < 5
value = 8001
ctrl = 0

[State 201, 9]
type = envcolor
trigger1 = movehit = 1
value = 255,0,0
time = 1
ignorehitpause = 1
persistent = 0

[State 230, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------

;state for the poor guy
[Statedef 8000]
type    = S
movetype= H
physics = S
ctrl = 0
sprpriority = -1

[State -3, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 4196

[State -3, 1]
type = ChangeAnim2
trigger1 = Time = 100
value = 4199

[State -3, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State -3, 1]
type = LifeSet
trigger1 = Time = 100
value = 0

;[State -2, 1]
;type = assertspecial
;trigger1 = Time = [95, 500]
;flag = invisible

;[State 502, 3]
;type = selfstate
;trigger1 = Time = 230
;value = 5150 
;ctrl = 1

;-------------------------------------------------
[Statedef 8001]
type    = S
movetype= I
physics = S
ctrl = 0
anim = 4198
sprpriority = 5

;[State -3, 1]
;type = Explod
;trigger1 = time = 200
;triggerall = p2bodydist X > 24
;anim = 4197
;postype = p2
;pos = 0,0
;removetime = -1
;ownpal = 0
;vel = 0,0
;ontop = 1
;ignorehitpause = 0
;persistent = 0

;[State -3, 1]
;type = SprPriority
;trigger1 = 1
;value = 5

[State -3, 1]
type = Explod
trigger1 = time = 80
anim = 8918
postype = p2
pos = 0,-40
ownpal = 1
vel = 0,0
ontop = 1
ignorehitpause = 1
persistent = 0
sprpriority = 4 
persistent = 0

[State 211, 3]
type = Explod
trigger1 = Time = 90 
anim = 941
id = 941
postype = p2
pos = -10, -46
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 211, 3]
type = Explod
trigger1 = Time = 90
anim = 911
id = 911
postype = p2
pos = -10, -46
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 211, 3]
type = Explod
trigger1 = Time = 90
anim = 910
id = 910
postype = p2
pos = -10, -46
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 211, 3]
type = Explod
trigger1 = Time = 90
anim = 920
id = 920
postype = p2
pos = -10, -46
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 211, 3]
type = Explod
trigger1 = Time = 90
anim = 921
id = 921
postype = p2
pos = -10, -46
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 211, 3]
type = Explod
trigger1 = Time = 90
anim = 922
id = 922
postype = p2
pos = -10, -46
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 211, 3]
type = Explod
trigger1 = Time = 90
anim = 923
id = 923
postype = p2
pos = -10, -46
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 211, 3]
type = Explod
trigger1 = Time = 90
anim = 927
id = 927
postype = p2
pos = -10, -46
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 211, 9]
type = PlaySnd
trigger1 = time = 50
value = 20, 4
persistent = 0
volume = 255

[State 211, 9]
type = PlaySnd
trigger1 = time = 90
value = 20, 5
persistent = 0
volume = 255

[State -3, 1]
type = AssertSpecial
trigger1 = Time  = [0,200]
flag = nobardisplay
flag2 = nomusic
flag3 = noBG

[State -3, 1]
type = AssertSpecial
trigger1 = Time  = [0,100]
flag = roundnotover

[State -3, 1]
type = Explod
trigger1 = time = 90
anim = 4200
postype = p2
pos = 0,-40
;ownpal = 1
ontop = 0
vel = 0,0
removetime = 65
sprpriority = 3
persistent = 0
ignorehitpause = 1

[State -3, 1]
type = Explod
trigger1 = time = 90
anim = 4201
postype = p2
pos = 0,-40
;ownpal = 1
ontop = 0
vel = 0,0
removetime = 65
sprpriority = 3
persistent = 0
ignorehitpause = 1

[State 230, 4]
type = ChangeState
trigger1 = Time = 200
value = 0
ctrl = 1
