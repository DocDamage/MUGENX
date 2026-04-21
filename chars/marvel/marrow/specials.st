; States file for Marrow -- Specials
;---------------------------------------------------------------------------
; Boneerang
;---------------------------------------------------------------------------
[Statedef 1000]
type    = U;S
physics = N;U;S
anim = 1000 + 200 * (statetype=A) + 5 * (var(2)=2)
ctrl = 0
velset = 0,0
;sprpriority = 1
poweradd = 50

[State 1000, 1]; virar 
type = Turn 
trigger1 = Time = 0 
trigger1 = p2dist X < -5 

[State 2010, 1] 
type = VarSet 
triggerall = var(20)=1 && random > life && time= 0
trigger1 = const(size.head.pos.y) < enemy, const(size.head.pos.y)
var(2) = 1

[State 2010, 1] 
type = VarSet 
triggerall = var(20)=1 && random > life && time= 0
;trigger1 = statetype = A && p2bodydist y > 0 && enemy, vel y > -1
trigger1 = statetype = A && p2dist y > (p2dist x)*2
trigger2 = statetype != A && (p2bodydist y)<const(size.head.pos.y)
;trigger3 = statetype = A && p2bodydist y > 130; && enemy, vel y > -1
var(2) = 2 

[State 1200, 3] 
type = Explod 
trigger1 = time =0 && statetype!=A
anim = 7020
id=7020
pos = 0,0
postype = p1 
sprpriority = 2
bindtime = 1
removeongethit=1
removetime=-2 
supermovetime = 66

[State 1000, playsnd]
type = PlaySnd
trigger1 = Time = 12 && statetype!=A
trigger2 = Time = 0 && statetype=A
value = 9,0
channel=0
volume=255

[State 1000, 0];projétil 1 e 3
type = Projectile
trigger1 = AnimElem = 7 && var(2)!=2
projid = 1050
projanim = 1050; + 20 * (var(2)=2)+ 1 * (var(2)=2 && statetype=A)
projscale = 1.0 + var(2)/10,1.0 + var(2)/10
projremove = 1
projremovetime = 120
attr = A,SP
hitflag = MAF
guardflag = MA
velocity = 0,0.3*(var(2)=1)
;velocity = 4,-0.6
animtype = Hard
ground.type = High
ground.hittime = 20
guard.hittime = 6
ground.slidetime = 5
guard.slidetime = 3
damage = 30,10
;projpriority = 1
;projsprpriority = 3
offset = 188,-78;-70;20,-30
postype = p1
hitsound = S2, 2
guardsound = S3,0
guard.sparkno=S910
sparkno= S900
projhits = 2
projmisstime =18
projshadow = -1,0,0
remvelocity = 0,4
projremanim = 1055 + 20 * (var(2)=2)+ 1 * (var(2)=2 && statetype=A)
ground.velocity = 8 - 16 * (p2dist x < 188),0;*((time%2)=0),0
air.velocity = 1 - 2 * (p2dist x < 188),-2
air.type = low

[State 1000, 0];projétil 2
type = Projectile
trigger1 = AnimElem = 7 && var(2)!=2
projid = 1051
projanim = 1051 + 20 * (var(2)=2)+ 1 * (var(2)=2 && statetype=A)
projscale = 1.0 + var(2)/10,1.0 + var(2)/10
projremove = 1
projremovetime = 60
attr = A,SP
hitflag = MAF
guardflag = MA
velocity = 0,0.3*(var(2)=1)
;velocity = 4,-0.6
animtype = Hard
ground.type = High
ground.hittime = 20
guard.hittime = 6
ground.slidetime = 5
guard.slidetime = 3
damage = 30,10
;projpriority = 1
;projsprpriority = 3
offset = 188,-78;-70;20,-30
postype = p1
hitsound = S2, 2
guardsound = S3,0
guard.sparkno=S910
sparkno= S900
projhits = 1
;projmisstime =9
projshadow = -1,0,0
;remvelocity = 0,4
;projremanim = 1055
ground.velocity = -8 + 16 * (p2dist x < 188),0;*((time%2)=0),0
air.velocity = -1 + 2 * (p2dist x < 188),-2
air.type = low

[State 3500, 4] ; bone1
type = Explod 
trigger1 = animelem=7 
pos = 45,-39-35*(statetype=A)
postype = p1 
bindtime = 1
sprpriority = 1
anim = 1010 + 10 * (var(2)=2);+ 1 * 
removetime = -2
ownpal = 1
accel= 2.3,-0.75*(statetype!=A) + 1.8 * (var(2)=2 && statetype=A)
shadow = -1,0,0
vfacing = 1 - 2 * (var(2)=2 && statetype=A)

[State 1000, 0];projétil 1 e 3 (diagonal)
type = Projectile
trigger1 = AnimElem = 7 && var(2)=2
projid = 1050
projanim = 1070 + 10 * (statetype=A)
projscale = 1.2 ,1.2
projremove = 1
projremovetime = 120
attr = A,SP
hitflag = MAF
guardflag = MA
velocity = 0,0
;velocity = 4,-0.6
animtype = Hard
ground.type = High
ground.hittime = 20
guard.hittime = 6
ground.slidetime = 5
guard.slidetime = 3
damage = 30,10
;projpriority = 1
;projsprpriority = 3
offset = 188,-90 + 112 * (var(2)=2 && statetype=A)
postype = p1
hitsound = S2, 2
guardsound = S3,0
guard.sparkno=S910
sparkno= S900
projhits = 2
projmisstime =18
projshadow = -1,0,0
remvelocity = 0,4
projremanim = 1075 + 10 * (statetype=A)
ground.velocity = 8 - 16 * (p2dist x < 188),0
air.velocity = 1 - 2 * (p2dist x < 188),-2
air.type = low

[State 1000, 0];projétil 2 (diagonal)
type = Projectile
trigger1 = AnimElem = 7 && var(2)=2
projid = 1051
projanim = 1071 + 10 * (statetype=A)
projscale = 1.2,1.2
projremove = 1
projremovetime = 60
attr = A,SP
hitflag = MAF
guardflag = MA
velocity = 0,0
;velocity = 4,-0.6
animtype = Hard
ground.type = High
ground.hittime = 20
guard.hittime = 6
ground.slidetime = 5
guard.slidetime = 3
damage = 30,10
;projpriority = 1
;projsprpriority = 3
offset = 188,-90 + 112 * (var(2)=2 && statetype=A)
postype = p1
hitsound = S2, 2
guardsound = S3,0
guard.sparkno=S910
sparkno= S900
projhits = 1
;projmisstime =9
projshadow = -1,0,0
;remvelocity = 0,4
;projremanim = 1055
ground.velocity = - 8 + 16 * (p2dist x < 188),0
air.velocity = -1 + 2 * (p2dist x < 188),-2
air.type = low

[State 1000, return]
type = SelfState
trigger1 = AnimTime = 0
value = 0 + 50 * (statetype=A)
ctrl = 1

; Boneerang x 
[Statedef 1010] 
type = U 
ctrl = 0 

[State 2010, 1] 
type = VarSet 
trigger1 = 1 
var(2) = 0 

[State 1010, 1] 
type = ChangeState 
trigger1 = 1 
value = 1000 

; Boneerang y
[Statedef 1015] 
type = U 
ctrl = 0 

[State 1015, 1] 
type = VarSet 
trigger1 = 1 
var(2) = 1 

[State 1015, 1] 
type = ChangeState 
trigger1 = 1 
value = 1000 

; Boneerang z
[Statedef 1020] 
type = U 
ctrl = 0 

[State 1020, 1] 
type = VarSet 
trigger1 = 1 
var(2) = 2 

[State 2020, 1] 
type = ChangeState 
trigger1 = 1 
value = 1000 


; Boneerang y+z
[Statedef 1025] 
type = U 
ctrl = 0 

[State 1020, 1] 
type = VarSet 
trigger1 = 1 
var(2) = 2 

[State 1020, 1] 
type = ChangeState 
trigger1 = 1 
value = 1000 

;---------------------------------------------------------------------------
; HITG_SHAKE (Vs-Style Hitbounce)
[Statedef 1250]
type    = U
movetype= H
physics = N
velset = 0,0

[State 1250, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
value = 5012

[State 1250, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 1250, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 1250, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 && GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = A

[State 1250, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 1251

[State 1250, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 1250, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 1250, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HITA_UP (initial going up) (Vs-Style Hitbounce)
[Statedef 1251]
type    = A
movetype= H
physics = N
anim = 5030
ctrl = 0

[State 1251, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 10

[State 1251, 1]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 1251, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 1251, 5]
type = ChangeState
trigger1 = (AnimTime = 0) || (Time = 10)
value = 1252 ;HITA_UP (transition)

;---------------------------------------------------------------------------
; HITA_UP_T (transition) (Vs-Style Hitbounce)
[Statedef 1252]
type    = A
movetype= H
physics = N

[State 1252, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] ;Not if in hit up anim
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5035

[State 1252, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 1252, 4]
type = ChangeState
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Time = 0     ;No transition anim
trigger3 = Anim != 5035 
value = 1253 ;HITA_FALL

;---------------------------------------------------------------------------
; HITA_FALL (knocked up, falling) (Vs-Style Hitbounce)
[Statedef 1253]
type    = A
movetype= H
physics = N

[State 1253, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 1253, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 1253, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 1253, 6]
type = ChangeState
triggerall = Alive = 1
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 1254 ;HIT_BOUNCE

[State 1253, SelfState]
type = SelfState
triggerall = Alive = 0
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5101 ;HIT_BOUNCE

;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground) (Vs-Style Hitbounce)
[Statedef 1254]
type    = L
movetype= H
physics = N

[State 1254, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 3500, 4] ; círculo no chão -tremor
type = Explod 
trigger1 = time = [0,5]
trigger1 = (time % 5)= 0 
trigger2 = time = 1
pos = 0,0
postype = p1 
bindtime = 1
sprpriority = 3 
anim = F61 + (time = 1)
removetime = -2
ownpal = 1
scale= const(size.xscale),const(size.yscale)

[State 1254, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 1254, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 1254, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 1254, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1254, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1254, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 1254, 10]
type = PlaySnd
trigger1 = Time = 1 ;Hit ground
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 1254, 11]
type = PosFreeze
trigger1 = 1

[State 1254, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 1255

[State 1254, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; HIT_AIRFALLRECOVER (Vs-Style Hitbounce)
[Statedef 1255]
type    = A
movetype= I
physics = N
anim = 5210
ctrl = 0

[State 1255, 1]
type = PosFreeze
trigger1 = Time = 0
value = 4

[State 1255, 2] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -20

[State 1255, 1] 
type = VelMul
trigger1 = Time = 4
x = .8
y = .8

[State 1255, 1]
type = VelSet
trigger1 = Time = 4
y = -3
x = -5

[State 1255, 3]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 2

[State 1255, 5]
type = VelAdd
trigger1 = Time >= 4
y = .35

[State 1255, 5] ;Land on ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;JUMP_LAND
ctrl = 1

;---------------------------------------------------------------------------
; Towering Spine
;---------------------------------------------------------------------------
[Statedef 1500]
type    = S
movetype = A
physics = S
anim = 1500
ctrl = 0
;sprpriority = 1
poweradd = 100

[State 2025, 1];hitcount 
type = VarSet
trigger1 = time = 0
var(4) = 0

[State 1000, 1]; virar 
type = Turn 
trigger1 = Time = 0 
trigger1 = p2dist X < -5 

[State 1200, 3] 
type = Explod 
trigger1 = time =0 && statetype!=A
anim = 7020
id=7020
pos = 0,0
postype = p1 
sprpriority = 2
bindtime = 1
removeongethit=1
removetime=-2 
supermovetime = 66

[State 1500, playsnd]
type = PlaySnd
trigger1 = Time = 0
value = 9,1
channel=0
volume=255

[State 650, VS_Combo]
type = VarAdd
trigger1 = MoveHit && HitPauseTime = 1;
v = 4
value = 1
ignorehitpause = 1

[State 1500, HitDef]
type = HitDef
trigger1 = !movecontact;Time = 0
attr = S, SA
damage = 35,20
guardflag = MA
pausetime = 1,2;0,11
hitsound = S2,2
guardsound = S3,0
guard.sparkno=S910
sparkno= S900
sparkxy=0, floor(p2bodydist y)+(enemy,Const(size.mid.pos.y))
animtype = hard;Up
ground.type = High
ground.hittime  = 20
ground.velocity = 0,-4
guard.velocity = -1;,-1
air.type = low
air.velocity = 0,0
p2facing=1
fall=1

[State 1500, Hit #2]
type = HitDef
trigger1 = Movehit && (Time % 3 = 0) && hitcount < 5;&& var(4)<5 
attr = S, SA
damage = 30,10
hitflag = MAF
guardflag = A
pausetime = 1,2;0,11
hitsound = S2,2
guardsound = S3,0
guard.sparkno=S910
sparkno= S900
sparkxy=0, floor(p2bodydist y)+(enemy,Const(size.mid.pos.y))
animtype = Up
ground.type = High
ground.hittime  = 20
ground.velocity = 0,-10 + 6 *(hitcount > 4)
guard.velocity = -1
air.velocity = -4*(Var(4)>3),-10 + 6 *(hitcount > 4)
p2facing=1
fall=1
fallrecover=0

[State 1500, return]
type = SelfState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Ricochet Slash
;---------------------------------------------------------------------------
; jump to the wall
[Statedef 2000]
type    = S
movetype = A
physics = N
anim = 2000
ctrl = 0
;sprpriority = 1
poweradd = 75

[State 1000, 1]; virar 
type = Turn 
trigger1 = Time = 0 
trigger1 = p2dist X < -5 

[State 1200, 3] 
type = Explod 
trigger1 = animtime =0 && statetype!=A
anim = 7020
id=7020
pos = 0,0
postype = p1 
sprpriority = 2
bindtime = 1
removeongethit=1
removetime=-2 
supermovetime = 66

[State 2000, 1]  ; don't move the camera to follow
type = ScreenBound
trigger1 = Alive
movecamera = 0,0

[State 2000, start jump]
type = SelfState
trigger1 = AnimTime = 0
value = 2001

; start the actual jumping
[StateDef 2001]
type    = A
movetype = A
physics = A
anim = 2001
ctrl = 0
;sprpriority = 1
VelSet = -(backedgebodydist / 40) - 2, -10

[State 2001, 0]  ; don't move the camera to follow
type = ScreenBound
trigger1 = Alive
movecamera = 0,0

[State 2001, 0]
type = VelSet
trigger1 = pos y < -125
y = 0

[State 2001, cling to wall briefly]
type = ChangeAnim
;trigger1 = (backedgebodydist <= 10) && (backedgebodydist > -10) && (Anim != 2005)
trigger1 = backedgebodydist < 30 && Anim != 2005 && pos y < -125; && (backedgebodydist > -10) 
value = 2005

[State 200, a]
type = posadd;set
trigger1 = (backedgedist)<30;anim=2005;
x=-(backedgedist)

[State 2001, stop moving when you hit the wall]
type = VelSet
trigger1 = Anim = 2005
x = 0
y = 0

[State 2025, 1];hitcount 
type = VarSet
trigger1 = time=0
value = 0
v = 4

[State 2001, range]
type = varset
trigger1 = var(20) = 1 && random > life
var(2) = 2 - (p2bodydist x < 145)- (p2bodydist x < 100)

[State 2001, begin lunge]
type = SelfState
trigger1 = Anim = 2005 && Animtime=0;Elem = 3)
value = 2002

; now lunge at the opponent
[Statedef 2002]
type    = A
movetype = A
physics = N
anim = 2010 + var(2)
ctrl = 0
velset = 5 + var(2)*3,6

[State 2010, bound]  ; don't move the camera to follow
type = ScreenBound
trigger1 = Alive
movecamera = 0,0

[State 650, VS_Combo]
type = VarAdd
trigger1 = MoveHit && HitPauseTime = 1
v = 4
value = 1
ignorehitpause = 1

;[State 2025, 4]
;type = velSet
;Trigger1 = movecontact; && hitcount=[1,2]
;;Trigger2 = movecontact && hitcount!=2
;x= 0
;y= var(4); = 20; + 6 * (hitcount!=[1,2])

[State 1005, 8]
type = StateTypeSet
;trigger1 = statetype = N
trigger1 = pos y > 0 || movecontact
physics = A

[State 2025, 4]
type = AngleSet
Trigger1 = Time = 0
value = 0

[State 2025, 5]
type = AngleAdd
Trigger1 = time = 0
value = -5 * (2 - var(2))

[State 2025, 6]
type = AngleDraw
trigger1 = 1;Pos Y <= 10

[State 3000, bones]
type = Helper
trigger1 = numhelper(2004)=0
helpertype = normal
name = "flash effect"
ID = 2004
pos = var(2)*5+10,var(2)*5-10
postype = p1
;facing = 1
stateno = 2004
keyctrl = 0
ownpal = 1
ignorehitpause=1
;supermovetime = 0
;pausemovetime = 0
;size.ground.back = 
;size.ground.front = 
;size.air.back = 
;size.air.front = 
;size.height = 
;size.proj.doscale = 
;size.head.pos = 
;size.mid.pos = 
;size.shadowoffset = 

[State 2010, 1]
type = HitDef
;trigger1 = var(4) < 3;MoveContact && (HitCount = 1)
trigger2 = time = 0
attr = A, SA
damage = 30,10
guardflag = MA
pausetime = 8,9
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-40
guard.sparkno=S910
sparkno= S940
animtype = Heavy
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = -7*(var(4)=2), 20 *(var(4)=2)
guard.velocity = -4
air.velocity = -4*(var(4)=2),20*(var(4)=2);8
p2facing=1
fall=(var(4)=2)
P1StateNo = 2002 + (Var(4)=2)
projhits = 3
projmisstime =1

; jump back to the ground (if the move hit)
type = selfState
;trigger1 = var(4)> 2;movecontact && numtarget=0;hitcount!=[1,2]
trigger1 = Pos Y > 0
value = 2003

; jump back to the ground (if the move hit)
[Statedef 2003]
type    = A
movetype = I
physics = A
;anim = 2020
;ctrl = 0
velset = -3,-7

[State 1200, 3] 
type = Explod 
trigger1 = time =0
anim = 2016
id=2016
pos = 0,0;(enemy,)
postype = p1 
sprpriority = 2
bindtime = 1
;removeongethit=1
removetime=-2 
;supermovetime = 66

[State 2010, 3] ;Land on ground (if the move missed)
type = ChangeState
trigger1 = time = 0
value = 50 ;JUMP_LAND
ctrl = 0

; Bones flash effect
[StateDef 2004]
type    = U;S
movetype= I;A
physics = N
anim = 2015
sprpriority = 3

[State 200, a]
type = posadd;set
trigger1 = 1;rootdist x !=0 || rootdist y !=0
x=rootdist x + 50
y=rootdist y - 40

[State 2025, 4]
type = AngleSet
Trigger1 = Time = 0
value = 0

[State 2025, 5]
type = AngleAdd
Trigger1 = time = 0
value = -11 -11 * (2 - (root,var(2)))

[State 2025, 6]
type = AngleDraw
trigger1 = 1

[State 3020, destroyself1]
type = DestroySelf
trigger1 = AnimTime = 0 || root, stateno!=2002

; Ricochet Slash A 
[Statedef 2010] 
type = U 
ctrl = 0 

[State 2010, 1] 
type = VarSet 
trigger1 = 1 
var(2) = 0 

[State 2010, 1] 
type = ChangeState 
trigger1 = 1 
value = 2000 

; Ricochet Slash B 
[Statedef 2015] 
type = U 
ctrl = 0 

[State 2015, 1] 
type = VarSet 
trigger1 = 1 
var(2) = 1 

[State 2015, 1] 
type = ChangeState 
trigger1 = 1 
value = 2000 

; Ricochet Slash C 
[Statedef 2020] 
type = U 
ctrl = 0 

[State 2020, 1] 
type = VarSet 
trigger1 = 1 
var(2) = 2 

[State 2020, 1] 
type = ChangeState 
trigger1 = 1 
value = 2000 


; Ricochet Slash B+C 
[Statedef 2025] 
type = U 
ctrl = 0 

[State 2020, 1] 
type = VarSet 
trigger1 = 1 
var(2) = 2 

[State 2020, 1] 
type = ChangeState 
trigger1 = 1 
value = 2000 

;---------------------------------------------------------------------------
; Ride & Slash (ground)
;---------------------------------------------------------------------------
[Statedef 2500]
type    = U
movetype = A
physics = U
anim = 2500
ctrl = 0
;sprpriority = 1
poweradd = 100
velset = 0,0

[State 1000, 1]; virar 
type = Turn 
trigger1 = Time = 0 
trigger1 = p2dist X < -5 

[State 1200, 3] 
type = Explod 
trigger1 = time =0 && statetype!=A
anim = 7020
id=7020
pos = 0,0
postype = p1 
sprpriority = 2
bindtime = 1
removeongethit=1
removetime=-2 
supermovetime = 66

[State 2500, playsnd]
type = PlaySnd
trigger1 = Time = 0
value = 9,2
channel=0
volume=255

[State 2500, HitDef]
type = HitDef
trigger1 = !movecontact;Time = 0
attr = S, SA
guardflag = MA
pausetime = 1,1;11
sparkxy=0, -60;floor((p2bodydist y)/2)
guard.sparkno=S910
sparkno= S900
hitsound = S2,2
guardsound = S3,0
p2facing=-1
numhits=0
hitonce=1
priority = 1, Miss 
p1stateno = 2530
p2stateno = 2540

[State 2020, 12] 
type = VarSet 
trigger1 = var(20)=1
v=2
value = ((p2bodydist x) > 152)+((p2bodydist x) > 185)

[State 2020, 1] 
type = VelSet 
trigger1 = animelem=2;1 
x=3+Var(2)
y=-9 + 4 * (statetype=A)

[State 2020, 1] 
type = VelSet 
trigger1 = moveguarded; && anim = 2500
x=-2.5
y=-4.5

[State 1250, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = animelem=2 && statetype!=A
trigger2 = animelem=1 && statetype=A
statetype = A
physics = A

[State 2500, return]
type = SelfState
trigger1 = moveguarded; && anim = 2500
value = 50
ctrl = 0

[Statedef 2530]
type    = A
movetype = A
physics = N
anim = 2510
ctrl = 0
sprpriority = -1
;poweradd = 100
velset = 0,0

[State 182, 2]
type = PlayerPush
trigger1 = 1
value = 0

[State 810, 1]
type = BindToTarget
triggerall=target, stateno=2540
trigger1 = p2dist x != -(target,Const(size.ground.back));0;94;time = 0;1
trigger2 = target, Const(size.head.pos.y);p2dist y != (Const(size.head.pos.y)-(target, Const(size.head.pos.y)))
time = 1
pos = -(target,Const(size.ground.back)),(target, Const(size.head.pos.y))

[State 2510, hit 1 & 2]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
attr = S, SA
;hitflag = MA
;guardflag = A
hitsound   = S2,1
animtype = Heavy
damage = 25,0
pausetime = 0,0
sparkxy=0, 0;(enemy,Const(size.head.pos.y))
guard.sparkno=S910
sparkno= S900
ground.type = High
ground.slidetime = 0
ground.hittime = 0
ground.velocity = 0,0
sprpriority = -1
p2facing=-1
p2stateno = 2540
kill=0

[State 2510, hit 3]
type = HitDef
trigger1 = AnimElem = 10
attr = S, SA
;hitflag = MA
;guardflag = A
hitsound   = S2,2
animtype = DiagUp
damage = 75,0
pausetime = 4,14
sparkxy=0,0;-10, (enemy,Const(size.head.pos.y))
guard.sparkno=S910
sparkno= S900
ground.type = High
ground.slidetime = 0
ground.hittime = 0
ground.velocity = -6,-6
sprpriority = -1
p2facing=1

[State 2515, crumbling]
type = Explod
trigger1 = AnimElem = 14
anim = 2515
pos = 0,50
postype = p1
bindtime=1
;velocity=vel x,vel y

[State 2515, front]
type = Explod
trigger1 = time=1
anim = 2530
pos = 0,0
postype = p1
sprpriority = 1
removetime=-2

[State 2510, return]
type = velset
trigger1 = AnimTime = 0
x=-3
y=-4

[State 820, 1] 
type = NotHitBy 
trigger1 = 1
value = SCA 
time = 1 

[State 2510, return]
type = selfstate
trigger1 = AnimTime = 0
Value=50
ctrl = 0

;--------------------
; Thrown by C throw 
[Statedef 2540] 
type = U 
movetype = H 
physics = N 
ctrl = 0 
sprpriority = 0;velset = 0,0 

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 2520

[State 820, 1] 
type = NotHitBy 
trigger1 = time !=34
trigger1 = time !=12
trigger1 = time !=14
value = SCA 
time = 1 

[State 182, 2]
type = PlayerPush
trigger1 = 1
value = 0

[State 810, 8] 
type = ChangeState 
trigger1 = life <= 0 
trigger2 = enemynear, stateno!=2530
value = 2545 

[Statedef 2545] 
type    = L 
movetype= H 
physics = N 
velset = -4,-10 
anim = 5030 

[State 825, 1] 
type = VelAdd 
trigger1 = 1 
y = .8 

[State 820, 1]
type = ChangeAnim
Trigger1 = SelfAnimExist(5035)&& anim=5030 && animtime = 0
value = 5035

[State 825, 2] 
trigger1 = Vel Y > 0 
trigger1 = Pos Y >= 0 
type = SelfState 
value = 5110 

;--------------------------------------
[Statedef 2510] 
type = U 
ctrl = 0 

[State 2010, 1] 
type = VarSet 
trigger1 = 1 
var(2) = 0 

[State 1010, 1] 
type = ChangeState 
trigger1 = 1 
value = 2500 

; Boneerang y
[Statedef 2515] 
type = U 
ctrl = 0 

[State 1015, 1] 
type = VarSet 
trigger1 = 1 
var(2) = 1 

[State 1015, 1] 
type = ChangeState 
trigger1 = 1 
value = 2500 

; Boneerang z
[Statedef 2520] 
type = U 
ctrl = 0 

[State 1020, 1] 
type = VarSet 
trigger1 = 1 
var(2) = 2 

[State 2020, 1] 
type = ChangeState 
trigger1 = 1 
value = 2500 


; Boneerang y+z
[Statedef 2525] 
type = U 
ctrl = 0 

[State 1020, 1] 
type = VarSet 
trigger1 = 1 
var(2) = 2 

[State 1020, 1] 
type = ChangeState 
trigger1 = 1 
value = 2500 

; Super Jump Up/Fwd Start 
; (THANKS TO: Mr_Karai's Jin Saotome)
[Statedef 9800] 
type    = S 
physics = N 
anim = 40 
ctrl = 0 
sprpriority = 1 

[State 9800, 1] 
type = Explod 
trigger1 = time = 0 
pos = 0, 0 
postype = p1 
bindtime = 1 
sprpriority = 3 
anim = 5410
;scale= const(size.xscale)*2,const(size.yscale)*2
supermovetime = 200
ownpal = 1

[State 9800, 1] 
type = Explod 
trigger1 = time = 0 
pos = 0, 0 
postype = p1 
bindtime = 1 
sprpriority = 3 
anim = 5410
;scale= const(size.xscale)*2,const(size.yscale)*2
supermovetime = 200
facing = -1
ownpal = 1

[State 9800, VarSet] 
type = VarSet 
trigger1 = Time = 0 
var(10) = 1 

[State 9800, 1] 
type = VarSet 
trigger1 = Time = 0 
sysvar(1) = 0 

[State 9800, 2] 
type = VarSet 
trigger1 = command = "holdfwd" && var(20)!=1 
sysvar(1) = 1 

[State 9800, 2] 
type = VarSet 
trigger1 = p2bodydist X > 60 && var(20)=1 && random > life 
trigger2 = p2bodydist X > 30 && var(20)=1 && (enemynear, pos y < 0)
sysvar(1) = 1 

[State 9800, 2] 
type = VarSet 
trigger1 = p2bodydist X < 0 && var(20)=1 && random > life 
sysvar(1) = -1 

[State 9800, 3] 
type = VarSet 
trigger1 = command = "holdback" 
sysvar(1) = -1 

[State 9800, 4] 
type = VelSet 
trigger1 = AnimTime = 0 
x = 0 
y = -15 

[State 9800, 3] 
type = MakeDust 
trigger1 = Vel Y < 0 && gametime % 3
pos = 10-(random/50),-2 
spacing = 1 

[State 9800, 6] 
type = ChangeState 
trigger1 = AnimTime = 0 
value = 9850 
ctrl = 1 

; Super Jump Up/Fwd 
[Statedef 9850] 
type    = A 
physics = A 


;--[Starting S-Jump Efects...] --

[State 9850, 3] 
type = MakeDust 
trigger1 = Vel Y < -10 && gametime % 3
pos = 10-ceil(random/50),-2 
spacing = 1 

[State 9850, sound1] 
type=PlaySnd 
trigger1 = time=0;1
value = 8,0;3,5 
persistent = 0 
channel = 1 

;--[Finishing S-Jump Efects...] --

[State 9850, 1] 
type = VarSet 
trigger1 = Time = 0 
sysvar(1) = 0 

[State 9850, VelAdd] 
type = VelSet 
triggerall = var(10) = 1
trigger1 = (var(20) = 0) && (command = "holdfwd") && (command != "holdback") 
trigger2 = var(20) = 1 && P2bodydist x > 10 && abs(P2bodydist y)<abs(Const(size.head.pos.y))
trigger3 = p2bodydist X > 50 && var(20)=1 && (enemynear, pos y < 0)
x = 4 

[State 9850, 2] 
type = ChangeAnim 
trigger1 = Time = 0 
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43)) 

[State 9850, 3] 
type = ChangeState 
trigger1 = AnimTime = 0 
trigger2 = (Vel y > -2) && (SelfAnimExist(anim + 3))
value = 9851 

; Super Jump Up/Fwd Landing 
[Statedef 9851] 
type    = A 
physics = A 

[State 9851, turn] 
type = ChangeState 
trigger1 = p2dist x < 0 && vel Y > 0 
value = 9852 

[State 9851, 1] 
type = VarSet 
trigger1 = Time = 0 
sysvar(1) = 0 

[State 9851, VelAdd1] 
type = VelSet 
trigger1 = (var(10) = 1 && command = "holdfwd" && command != "holdback") 
x = 4 

[State 9851, VelAdd2] 
type = VelSet 
trigger1 = (var(10) = 1 && vel X > 0 && command = "holdback") 
x = 2.3 

[State 9851, VelAdd3] 
type = VelSet 
trigger1 = (var(10) = 1 && vel X <= 0 && command = "holdback") 
x = -1 

[State 9851, 3] 
type = ChangeAnim 
triggerall = anim = 41 || anim = 42 || anim = 43 
trigger1 = (Vel y > -2) && (SelfAnimExist(anim + 3)) 
persistent = 0 
value = Anim + 3 

; Super Jump Up/Fwd/Back Turning on Landing 
[Statedef 9852] 
type    = A 
physics = A 

[State 9852, turn] 
type = turn 
trigger1 = time = 0 

[State 9852, 1] 
type = VarSet 
trigger1 = Time = 0 
sysvar(1) = 0 

[State 9852, 3] 
type = ChangeAnim 
triggerall = anim = 41 || anim = 42 || anim = 43 
trigger1 = (Vel y > -2) && (SelfAnimExist(anim + 3)) 
persistent = 0 
value = Anim + 3 

;----------------------------------------------------------------
; Super Jump Backward Start 
[Statedef 9900] 
type    = S 
physics = N 
anim = 40 
ctrl = 0 
sprpriority = 1 

[State 9900, VarSet] 
type = VarSet 
trigger1 = Time = 0 
var(10) = 1 

[State 9900, 1] 
type = VarSet 
trigger1 = Time = 0 
sysvar(1) = 0 

[State 9900, 2] 
type = VarSet 
trigger1 = command = "holdfwd" 
sysvar(1) = 1 

[State 9900, 3] 
type = VarSet 
trigger1 = command = "holdback" 
sysvar(1) = -1 

[State 9900, 4] 
type = VelSet 
trigger1 = AnimTime = 0 
x = -4 
y = -15 

[State 9900, 3] 
type = MakeDust 
trigger1 = Vel Y < 0 && gametime % 3
pos = -5,-2 
spacing = 1 

[State 9900, 6] 
type = ChangeState 
trigger1 = AnimTime = 0 
value = 9950 
ctrl = 1 

; Super Jump Backward 
[Statedef 9950] 
type    = A 
physics = A 

;--[Starting S-Jump Efects...] --

[State 9900, 1] 
type = Explod 
trigger1 = time = 0 
pos = 0, 0 
postype = p1 
bindtime = 1 
sprpriority = 3 
anim = 5410
;scale= const(size.xscale)*2,const(size.yscale)*2
supermovetime = 200
ownpal = 1

[State 9900, 1] 
type = Explod 
trigger1 = time = 0 
pos = 0, 0 
postype = p1 
bindtime = 1 
sprpriority = 3 
anim = 5410
;scale= const(size.xscale)*2,const(size.yscale)*2
supermovetime = 200
facing = -1
ownpal = 1

[State 9900, 3] 
type = MakeDust 
trigger1 = Vel Y < -10 && gametime % 3
pos = -5,-2 
spacing = 1 

[State 9850, sound1] 
type=PlaySnd 
trigger1 = time=0;1
value = 8,0;3,5 
persistent = 0 
channel = 1 

;--[Finishing S-Jump Efects...] --

[State 9900, 1] 
type = VarSet 
trigger1 = Time = 0 
sysvar(1) = 0 

[State 9900, VelAdd] 
type = VelSet 
trigger1 = (var(10) = 1) && (AnimElemTime(3) = 5) && (command = "holdfwd") && (command != "holdback") 
x = 3 

[State 9900, 2] 
type = ChangeAnim 
trigger1 = Time = 0 
value = ifelse((vel x)=0, 41, ifelse((vel x)>0, 42, 43)) 

[State 9900, 3] 
type = ChangeAnim 
triggerall = anim = 41 || anim = 42 || anim = 43 
trigger1 = (Vel y > -2) && (SelfAnimExist(anim + 3)) 
persistent = 0 
value = Anim + 3 

[State 9900, 3] 
type = ChangeState 
trigger1 = AnimTime = 0 
value = 9951 

; Super Jump Backward Landing 
[Statedef 9951] 
type    = A 
physics = A 

[State 9951, turn] 
type = ChangeState 
trigger1 = p2dist x < 0 && vel Y > 0 
value = 9852 

[State 9951, 1] 
type = VarSet 
trigger1 = Time = 0 
sysvar(1) = 0 

[State 9951, VelAdd] 
type = VelSet 
trigger1 = (var(10) = 1) && (command = "holdfwd") && (command != "holdback") 
x = 3 

[State 9951, 3] 
type = ChangeAnim 
triggerall = anim = 41 || anim = 42 || anim = 43 
trigger1 = (Vel y > -2) && (SelfAnimExist(anim + 3)) 
persistent = 0 
value = Anim + 3 

