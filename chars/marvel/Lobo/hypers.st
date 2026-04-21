; Hypers states file for Lobo
;
;---------------------------------------------------------------------------
; Vars:
;   0: for Super Jump (0=vertical, 1=forward, -1=backward)
;   1: for Mr. Hook (0: missed, 1=hit)
;   2: for "levelup" sounds
;   5: Frag ammo counter
;  10: for Main Men (clone timer)
;  20: for RotGut special states (1: super armor; 2: attack power up; 3: ...)
; Helpers:
;   0: superjump opponent position indicator
;  10: "Main Men" clone #1
;  11: "Main Men" clone #2
; Explods:
;  10: "Main Men" clone #1 timer bar
;  11: "Main Men" clone #2 timer bar
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; States in this file:
; 
; Lights Out, Clyde: 3000-
;   Multi-attack combo with the hook & chain
; Main Men: 3100-3120
;   Lobo slashes his wrist, spilling two splotches of blood. While he's
;     recovering from the startup, each bloody smear grows into a Lobo-clone
;     that mimics Lobo's moves, effectively tripling his attack power!
; Main Man Airlines: 3500
;   Like Megaman's "Rush Drill" move
; The Main Mallard (Amalgam): 4000-
;   Amalgam attack with Howard/Lobo the Duck -- basically a BFG move
;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
; Lights Out, Clyde!
[StateDef 3000]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3000
velset = 0,0
sprpriority = 1

[State 1000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

[State 3000, superpause]
type = SuperPause
trigger1 = Time = 5 ;AnimElem=8
time = 40
sound = S10,1
pos = 0,-70
darken = 1
poweradd = -3000

;[State 3000, orb]
;type = Explod
;trigger1 = Time = 5 ;AnimElem=8
;name = "Orb"
;pos = 0,-60
;postype = p1
;anim = 8000
;supermove = 40
;pausemovetime = 1
;scale = .35, .35
;ownpal = 1
;sprpriority = 2

[State 3000, superportrait]
type = Explod
trigger1 = Time = 5 ;AnimElem=8
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3000, superbg]
type = Explod
trigger1 = Time = 5 ;AnimElem=8
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3000, lightsOut]
type = PlaySnd
trigger1 = Time = 5
value = 10,10
;volume = 0
;channel = -1

;-------------------
; DCvM hyper portrait/BG
[State 0, ]
type = Null ;Helper
trigger1 = time = 0
name = "Orb"
ID = 8000
pos = 50,-75
postype = p1
stateno = 8000
supermovetime = 40
pausemovetime = 1
ownpal = 1

[State 0, ]
type = Helper
trigger1 = time = 6
name = "Super BG"
ID = 8005
stateno = 8005
postype = back
facing = 1
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ownpal = 1
; end DCvM stuff
;-------------------

[State 3000, go to lunge]
type = ChangeState
trigger1 = AnimTime = 0
value = 3001



;-----------------
; Lights Out -- Initial lunge
[StateDef 3001]
type    = S
movetype= A
physics = N
ctrl = 0
anim = 3001
velset = 7,-5
sprpriority = 1

[State 810, hitdef]
type = HitDef
trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M; M-          ;Affect only ground people who are not being hit (or not?)
guardflag = M
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark (except for guard)
sparkxy = -50,-80
sprpriority = 1       ;Draw in front of p2
guard.dist = 0        ;This prevents p2 from going into a guard state if close
fall = 1              ;Force p2 into falling down
;mindist = 
;maxdist = 
;snap = 0,0
sprpriority = 1
p2facing = 1
p1stateno = 3010
p2stateno = 3020

[State 3001, gravity]
type = Gravity
trigger1 = MoveContact = 0

[State 3001, missed]
type = ChangeState
trigger1 = AnimTime = 0
trigger2 = Pos Y > 0
value = 3002


;-----------------
; Lights Out -- Missed
[StateDef 3002]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3002
velset = 0,0
sprpriority = 1

[State 3002, onGround]
type = PosSet
trigger1 = time = 0
y = 0

[State 3002, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;-------------------------------------------
; Lights Out -- hit connected
[StateDef 3010]
anim = 3010
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0

[State 3010, onGround]
type = PosSet
trigger1 = time = 0
y = 0

[State 3010, 0]
type = PlaySnd
trigger1 = Time = 0
persistent = 0
value = 3,1

[State 3010, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 89,-70

[State 3010, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 45,-135

[State 3010, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3
pos = -45,-80

[State 3010, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4
pos = -45,-112

[State 3010, Bind 5]
type = TargetBind
trigger1 = AnimElem = 5
pos = 95, 0

[State 3010, Bind 7]
type = TargetBind
trigger1 = AnimElem = 7
pos = 75, 0

[State 3010, Bind 8]
type = TargetBind
trigger1 = AnimElem = 8
pos = 45,-135

[State 3010, Bind 9]
type = TargetBind
trigger1 = AnimElem = 9
pos = -45,-80

[State 3010, Bind 10]
type = TargetBind
trigger1 = AnimElem = 10
pos = -45,-112

[State 3010, Bind 11]
type = TargetBind
trigger1 = AnimElem = 11
pos = 95, 0

[State 3010, Bind 13]
type = TargetBind
trigger1 = AnimElem = 13
pos = 75, 0

[State 3010, Bind 14]
type = TargetBind
trigger1 = AnimElem = 14
pos = -35, -55

[State 3010, Bind 15]
type = TargetBind
trigger1 = AnimElem = 15
pos = 55, -75

[State 3010, Bind 16]
type = TargetBind
trigger1 = AnimElem = 16
pos = 60, -120

; (same binding for 17)

[State 3010, showInFront]
type = SprPriority
trigger1 = (AnimElem = 17) || (AnimElem = 18) || (AnimElem = 19) || (AnimElem = 20)
value = -1

[State 3010, Bind 18]
type = TargetBind
trigger1 = AnimElem = 18
pos = 35, -100

[State 3010, Bind 19]
type = TargetBind
trigger1 = AnimElem = 19
pos = 0, -50

[State 3010, Bind 20]
type = TargetBind
trigger1 = AnimElem = 20
pos = -50, 0


[State 3010, showBehind]
type = SprPriority
trigger1 = (AnimElem = 21) || (AnimElem = 22) || (AnimElem = 23)
value = 1

[State 3010, Bind 21]
type = TargetBind
trigger1 = AnimElem = 21
pos = 35, -55

[State 3010, Bind 22]
type = TargetBind
trigger1 = AnimElem = 22
pos = -55, -75

[State 3010, Bind 23]
type = TargetBind
trigger1 = AnimElem = 23
pos = -60, -120

; (same binding for 24)

[State 3010, showInFront]
type = SprPriority
trigger1 = (AnimElem = 24) || (AnimElem = 25) || (AnimElem = 26) || (AnimElem = 27)
value = -1

[State 3010, Bind 25]
type = TargetBind
trigger1 = AnimElem = 25
pos = -35, -100

[State 3010, Bind 26]
type = TargetBind
trigger1 = AnimElem = 26
pos = 0, -50

[State 3010, Bind 27]
type = TargetBind
trigger1 = AnimElem = 27
pos = 50, 0


;--------------------
; hit ground 1st time
[State 3010, hitgroundSnd]
type = PlaySnd
trigger1 = AnimElem = 5
;channel = 0
value = 8,3

[State 3002, 2] ;Hit Ground
type = Explod
trigger1 = AnimElemTime(5) = 2
persistent = 0
anim = 8400
ID = 8400
postype = p2
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 4
ownpal = 1
ignorehitpause = 1

[State 3002, 2] ;Hit Ground
type = Explod
trigger1 = AnimElemTime(5) = 0
persistent = 0
anim = 8401
ID = 8401
postype = p2
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
ownpal = 1
ignorehitpause = 1

[State 3010, damage]
type = TargetLifeAdd
trigger1 = AnimElem = 5
value = -75
kill = 0

[State 3010, quake]
type = EnvShake
trigger1 = AnimElem = 5
time = 30


;--------------------
; hit ground 2nd time
[State 3010, hitgroundSnd]
type = PlaySnd
trigger1 = AnimElem = 11
;channel = 0
value = 8,3

[State 3002, 2] ;Hit Ground
type = Explod
trigger1 = AnimElemTime(11) = 2
persistent = 0
anim = 8400
ID = 8400
postype = p2
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 4
ownpal = 1
ignorehitpause = 1

[State 3002, 2] ;Hit Ground
type = Explod
trigger1 = AnimElemTime(11) = 0
persistent = 0
anim = 8401
ID = 8401
postype = p2
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
ownpal = 1
ignorehitpause = 1

[State 3010, damage]
type = TargetLifeAdd
trigger1 = AnimElem = 11
value = -80
kill = 0

[State 3010, quake]
type = EnvShake
trigger1 = AnimElem = 11
time = 30


;--------------------
; hit ground 3rd time
[State 3010, hitgroundSnd]
type = PlaySnd
trigger1 = AnimElem = 20
;channel = 0
value = 8,3

[State 3002, 2] ;Hit Ground
type = Explod
trigger1 = AnimElemTime(20) = 2
persistent = 0
anim = 8400
ID = 8400
postype = p2
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 4
ownpal = 1
ignorehitpause = 1

[State 3002, 2] ;Hit Ground
type = Explod
trigger1 = AnimElemTime(20) = 0
persistent = 0
anim = 8401
ID = 8401
postype = p2
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
ownpal = 1
ignorehitpause = 1

[State 3010, damage]
type = TargetLifeAdd
trigger1 = AnimElem = 20
value = -100
kill = 0

[State 3010, quake]
type = EnvShake
trigger1 = AnimElem = 20
time = 30


;--------------------
; hit ground 4th time
[State 3010, hitgroundSnd]
type = PlaySnd
trigger1 = AnimElem = 27
;channel = 0
value = 8,3

[State 3002, 2] ;Hit Ground
type = Explod
trigger1 = AnimElemTime(27) = 2
persistent = 0
anim = 8400
ID = 8400
postype = p2
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = 4
ownpal = 1
ignorehitpause = 1

[State 3002, 2] ;Hit Ground
type = Explod
trigger1 = AnimElemTime(27) = 0
persistent = 0
anim = 8401
ID = 8401
postype = p2
pos = 0, 0
velocity = 0, 0
accel = 0, 0
removetime = -2
sprpriority = -4
ownpal = 1
ignorehitpause = 1

[State 3010, damage]
type = TargetLifeAdd
trigger1 = AnimElem = 27
value = -115

[State 3010, quake]
type = EnvShake
trigger1 = AnimElem = 27
time = 30

[State 3010, targetdrop]
type = TargetDrop
trigger1 = AnimTime = -1

[State 3010, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 3011
ctrl = 1


;-------------------------------------------
; Lights Out -- Jump away
[StateDef 3011]
anim = 43
ctrl = 0
type = A
movetype = I
physics = A
velset = -4,-6

[State 3011, jump peak anim]
type = ChangeAnim
trigger1 = Time = 10
value = 46


;-------------------------------------------
; Lights Out -- Being grabbed (p2 custom hit state)
[StateDef 3020]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0

[State 3020, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3020

[State 3020, 2] ; tossed
type = ChangeState
trigger1 = AnimTime = 0
value = 3021

[State 3020, screenbound]  ; don't move the camera to follow P2
type = ScreenBound
trigger1 = Alive
movecamera = 0,0


;-------------------------------------------
; Lights Out -- Being thrown (p2 custom hit state)
[StateDef 3021]
type = A
movetype = H
physics = N
ctrl = 0
;velset = 10,-2

[State 3021, ChangeAnim2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3021

[State 3021, 0]
type = PosSet
trigger1 = Time = 0
y = Pos Y - 10

[State 3021, turn around]
type = Turn
trigger1 = AnimTime = 0

[State 3021, lifeadd]
type = LifeAdd
trigger1 = Time = 0
value = -120
kill = 1

[State 3021, 2] ;dropped
type = SelfState
trigger1 = AnimTime = 0
value = 5050

;[State 3021, screenbound]  ; don't move the camera to follow P2
;type = ScreenBound
;trigger1 = Alive
;movecamera = 0,0









;---------------------------------------------------------------------------
; Main Men Hyper
[StateDef 3100]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 3100
velset = 0,0
sprpriority = 1

[State 1000, dust]
type = Explod
trigger1 = Time = 0
anim = 918
supermove = 1
ontop = 1
removeongethit = 1

[State 3100, ouchie]
type = LifeAdd
trigger1 = AnimElem = 4
value = -250
kill = 0
absolute = 1
ignorehitpause = 1

;[State 3100, clone timer]       ; isn't timing out like it should...
;type = VarSet
;trigger1 = Var(10) = 0
;v = 10
;value = 300

[State 3100, superpause]
type = SuperPause
trigger1 = AnimElem=8   ;time = 2
time = 40
sound = S10,1
pos = 0,-70
darken = 1
poweradd = -3000

[State 3100, orb1]
type = Explod
trigger1 = AnimElem=8   ;time = 2
name = "Orb"
pos = -23,0
postype = p1
anim = 8000
supermove = 40
pausemovetime = 1
scale = .35, .35
ownpal = 1
sprpriority = 2

[State 3100, orb2]
type = Explod
trigger1 = AnimElem=8   ;time = 2
name = "Orb"
pos = 60,0
postype = p1
anim = 8000
supermove = 40
pausemovetime = 1
scale = .35, .35
ownpal = 1
sprpriority = 2

[State 3100, superportrait]
type = Explod
trigger1 = AnimElem=8   ;time = 2
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3100, superbg]
type = Explod
trigger1 = AnimElem=8   ;time = 2
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3100, Clone #1 (Abbott)]    ; (a bit faster & taller than Lobo)
type = Helper
trigger1 = AnimElem=9   ;AnimElem = 3
helpertype = player
name = "LoboClone"
id = 10
pos = -30,0 ;-50,-25
facing = 0
keyctrl = 1
ownpal = 1
stateno = 3105
size.xscale = 0.95
size.yscale = 1.05

[State 3100, Clone #2 (Costello)]  ; (a bit slower & shorter than Lobo)
type = Helper
trigger1 = AnimElem=9   ;AnimElem = 3
helpertype = player
name = "LoboClone"
id = 11
pos = 60,0  ;-75,-25
facing = 0
keyctrl = 1
ownpal = 1
stateno = 3105
size.xscale = 1.05
size.yscale = 0.95

[State 3100, back to normal]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;-----------------
; Clone "birth"
[Statedef 3105]
type = S
movetype = H
physics = S
ctrl = 0
anim = 3105

[State 3105, start clone timer]
type = VarSet
trigger1 = AnimTime = -1    ;Time = 0
v = 10
value = 0   ;300

[state 3105, abbottlobo] ; a little lightbronze
type = palfx
triggerall = ishelper(10)
trigger1 = !time
add = 25,25,6
time = -1

[state 3105, costellolobo] ; a little dark
type = palfx
triggerall = ishelper(11)
trigger1 = !time
add = -30,-38,-20
time = -1

[State 3105, playsnd]
type = PlaySnd
trigger1 = Time = 1
value = 10,2

[State 3105, goto stance]
type = ChangeState
trigger1 = AnimTime = 0 ;Time = 1
value = 0
ctrl = 1


;-----------------
; Clone "death"
[Statedef 3110]
type = S
movetype = H
physics = S
anim = 3110
ctrl = 0

[State 3110, varset]
type = VarSet
trigger1 = Time = 0
v =  10
value = -1

[State 3110, byebye clonie!]
type = DestroySelf
trigger1 = AnimTime = 0 ;Time = 10    ; timing may need to be tweaked a bit...
trigger1 = ishelper


;-----------------
; Clone gethit          ; this thing isn't working right yet...
[Statedef 3120]
type = S
movetype = H
physics = S
anim = 5000

[State 3120, back to stance]
type = ChangeState
trigger1 = Time = 15
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; Main Man Airlines Hyper
[StateDef 3500]
type    = S
movetype= A
physics = S
ctrl = 1
anim = 3500
sprpriority = 1

[State 3500, superpause]
type = SuperPause
trigger1 = time = 0
time = 40
sound = S10,1
pos = -30,-50
darken = 1
poweradd = -2000

[State 3500, orb1]
type = Explod
trigger1 = time = 0
name = "Orb"
pos = -30,-65
postype = p1
anim = 8000
supermove = 40
pausemovetime = 1
scale = .35, .35
ownpal = 1
sprpriority = 2

[State 3500, orb2]
type = Explod
trigger1 = time = 0
name = "Orb"
pos = -30,-35
postype = p1
anim = 8000
supermove = 40
pausemovetime = 1
scale = .35, .35
ownpal = 1
sprpriority = 2

[State 3500, superportrait]
type = Explod
trigger1 = time = 0
anim = 10000
ID = 10000
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -1
ownpal = 1

[State 3500, superbg]
type = Explod
trigger1 = time = 0
anim = 10005
ID = 10005
pos = 0,0
postype = back
bindtime = 999
removetime = 40
supermove = 40
pausemovetime = 40
sprpriority = -2
ownpal = 1

[State 3500, velset]
type = VelSet
trigger1 = Time = 40
x = 6

[State 3500, hitdef]
type = HitDef
trigger1 = (Time > 0) && (Time % 8 = 0)
attr = S,HA
hitflag = MA
guardflag = M
animtype = Heavy
priority = 4,Hit
damage = 5,2
pausetime = 0,7
;sparkno = 
;guard.sparkno = 
sparkxy = 0,0
animtype = Heavy
ground.type = Low
air.type = Low  
hitsound = S2,2
guardsound = S3,0
;p1stateno = 3003
;p2stateno = 3010
;ground.slidetime = 8
;ground.hittime = 8
;ground.velocity = -4



;---------------------------------------------------------------------------
; Amalgam Hyper
; (incomplete -- only the intro portraits are done at this point)
[StateDef 4000]
type    = S
physics = S
ctrl = 1
anim = 4000
velset = 0,0
poweradd = -3000

[State 4000, superpause]
type = SuperPause
trigger1 = Time = 0 ;animelem = 2
time = 40
sound = S10,0
pos = -5,-45
darken = 1

[State 4000, doom!]
type = PlaySnd
trigger1 = Time = 15
value = 10,2
;volume = 0
;channel = -1
;lowpriority = 
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan = 0

[State 4000, envshake]
type = EnvShake
trigger1 = Time = 15
time = 40
;freq = 60
;ampl = -4
;phase = 


[State 4000, Lobo Portrait]
type = Explod
trigger1 = Time = 0
anim = 4010
postype = left
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = -2
supermovetime = 40
removeongethit = 1

[State 4000, Howard Portrait]
type = Explod
trigger1 = Time = 0
anim = 4011
postype = left
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = -2
supermovetime = 40
removeongethit = 1

[State 4000, Howard falling]
type = Explod
trigger1 = Time = 0
anim = 4001
;ID = 
pos = 68,0
;postype = p1
;bindtime = 1
;removetime = -2
;supermove = 0
;pausemovetime = 0
sprpriority = 2
;ontop = 0
;shadow = 0,0,0
;ownpal = 0
;removeongethit = 0

[State 4000, changestate]
type = ChangeState
trigger1 = AnimTime = 0
value = 4005


; Lobo the Duck BFG shots
[StateDef 4005]
type    = S
movetype = A
physics = N
ctrl = 0
anim = 4005
velset = 0,0

[State 4009, hitdef 1]
type = HitDef
trigger1 = AnimElem = 1
attr = S,HA
hitflag = MAFD
guardflag = MA
animtype = Hard
air.animtype = Hard
priority = 7,Hit
damage = 150,35
pausetime = 19,10
guard.pausetime = 15,10
;sparkno = 
;guard.sparkno = 
sparkxy = 15,-55
;hitsound = 
;guardsound = 
ground.type = Low
;air.type = High
ground.slidetime = 8
guard.slidetime = 12
ground.hittime = 20
guard.hittime = 16
air.hittime = 20
;guard.ctrltime = 0
;guard.dist = 
;yaccel = 0
ground.velocity = -5,0
;guard.velocity = -4,0
;air.velocity = -6,0
;airguard.velocity = -5,0
;ground.cornerpush.veloff = 
;air.cornerpush.veloff = 
;down.cornerpush.veloff = 
;guard.cornerpush.veloff = 
;airguard.cornerpush.veloff = 
;airguard.ctrltime = 0
;air.juggle = 0
;mindist = 
;maxdist = 
;snap = 0,0
;sprpriority = 1
;p1facing = 
;p1getp2facing = 0
;p2facing = 0
;p1stateno = 
;p2stateno = 
;p2getp1state = 
;forcestand = 
;fall = 
;fall.xvelocity = 
;fall.yvelocity = -4.5
;fall.recover = 1
;fall.recovertime = 4
;fall.damage = 0
;air.fall = 
;down.velocity = ,
;down.hittime = 
;down.bounce = 0
;ID = 0
;chainID = -1
;nochainID = 
;hitonce = 0
;kill = 1
;guard.kill = 1
;fall.kill = 1
;numhits = 1
;getpower = 0,0
;givepower = 0,0
;palfx.time = 
;palfx.mul = 256,256,256
;palfx.add = 0,0,0
;envshake.time = envshake_time (int)
;envshake.freq = 60
;envshake.ampl = -4
;envshake.phase = 
;fall.envshake.time = 
;fall.envshake.freq = 60
;fall.envshake.ampl = -4
;fall.envshake.phase = 
;attack.width = ,
;ignorehitpause = 0
;persistent = 1

[State 4009, changestate]
type = ChangeState
trigger1 = AnimTime = 0
ctrl = 1
value = 0
