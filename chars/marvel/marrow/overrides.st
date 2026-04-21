; States file for Marrow -- Overrides for Common states
;---------------------------------------------------------------------------
; Stand
[Statedef 0]
type = S
physics = S
velset = 0,0
sprpriority = 0

[State 0, 1]
type = ChangeAnim
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0 ;Turn anim over
value = 0

[State 0, 4] ;Are you dead?
type = ChangeState
trigger1 = !alive
value = 5050

;---------------------------------------------------------------------------
; Walk
[Statedef 20]
type    = S
physics = S
sprpriority = 0

[State 20, 1]
type = VelSet
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, 2]
type = VelSet
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20
value = 20

[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21
value = 21

;---------------------------------------------------------------------------
; Jump Start
[Statedef 40]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1
facep2 = 1

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
trigger1 = AnimTime = 0
x = ifelse(sysvar(1)=0, const(velocity.jump.neu.x), ifelse(sysvar(1)=1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

[State 40, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
; Jump Land
[Statedef 52]
type    = S
physics = S
ctrl = 0
velset = 0,0
anim = 47

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, 3]
type = CtrlSet
trigger1 = Time = 3
value = 1

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------------------------------------------------------------- 
; RUN_FWD 
[Statedef 100] 
type    = S 
physics = N 
anim = 100 
;sprpriority = 1 
ctrl = 0 
VelSet= const(velocity.run.fwd.x),const(velocity.run.fwd.y) 

[State 100, woosh]
type = PlaySnd
trigger1 = time > 5;
trigger1 = (time % 8) = 0
;persistent = 0
value = 8,1
volume=190

[State 1200, 3] 
type = Explod 
trigger1 = (time % 4)=0;time > 10 && 
anim = 110
id=110
pos = 0,const(size.mid.pos.y)
postype = p1 
sprpriority = 2
bindtime = 1
removeongethit=1
removetime=16 
random= 40, 80

[State 100, AssertSpecial] 
type = AssertSpecial 
trigger1 = 1 
flag = NoWalk 
flag2 = NoAutoTurn 

[State 100, 4] 
type = ChangeState 
trigger1 = command = "holdback" && var(20)!=1 
value = 0 
ctrl=1 

[State 100, 4] 
type = ctrlset 
trigger1 = command = "holdback" && var(20)=1 
value = 1 

[State 100, 5] 
type = ChangeState 
value = 440 - (P2Movetype != A) * 30
triggerall = random > life
triggerall = P2Dist Y <= -125 && var(20) = 1 
trigger1 = P2BodyDist X < 100;stateno = 100 && 
;trigger2 = stateno = 430 && P2BodyDist X < 100

[State 100, 5] 
type = ChangeState 
trigger1 = random > life && var(20) = 1 
trigger1 = P2BodyDist X <= 83;stateno = 100 && 
trigger1 = (P2Movetype != A && random > life) && statetype != A 
value = 430 

[State 100, 1] 
type = CtrlSet 
;trigger2 = time = 15 && var(20)=0
trigger1 = time = 7; && var(20)=1
value = 1 

[State 100, 1] 
type = StateTypeSet
trigger1 = animelem = 12;5 
physics = S

[State 100, 1] 
type = MakeDust 
trigger1 = time > 20
pos = -5,-2 
spacing = 3

[State 100, 6] 
type = ChangeState 
trigger1 = animtime = 0 
value = 12 
ctrl=1 

; RUN_BACK 
[Statedef 105] 
type = A;S 
physics = A;N 
ctrl = 0 
anim = 105 
VelSet= const(velocity.run.back.x),const(velocity.run.back.y)

[State 1200, 3] 
type = Explod 
trigger1 = (time % 5)=0;time > 10 && 
anim = 110
id=110
pos = 0,const(size.mid.pos.y)
postype = p1 
sprpriority = 2
bindtime = 1
removeongethit=1
removetime=16;-2 
random= 40, 80

[State 105, AssertSpecial] 
type = AssertSpecial 
trigger1 = 1 
flag = NoWalk 
flag2 = NoAutoTurn 

[State 105, 1] 
type = CtrlSet 
trigger1 = time = 15
value = 1 

[State 105, 1] 
type = MakeDust 
trigger1 = time > 6
trigger1 = pos y  > -3
pos = -5,-2 
spacing = 3

[State 100, woosh]
type = PlaySnd
trigger1 = command != "holdback"
trigger2 = pos y > 0
persistent = 0
value = 8,1
volume=190

[State 105, 1] 
type = posset;StateTypeSet
trigger1 = command != "holdback"
;trigger1 = animelem = 8;5 
trigger2 = pos y > 0
y = 0;physics = S

[State 100, 1] 
type = StateTypeSet
trigger1 = animelem = 8 
physics = S

[State 105, 1] 
type = ChangeState 
trigger1 = command != "holdback"
value = 0 
ctrl=1 

[State 105, 2] 
type = ChangeState 
trigger1 = AnimTime = 0 
value = 0 
ctrl = 1 
;--------------------- 

; ADVGUARD (stand) 
; (THANKS TO: Mr_Karai's Jin Saotome)
; (THANKS TO: Carnificina's Dr Doom)
[Statedef 150] 
type    = S 
movetype= H 
physics = N 
velset = 0,0 
anim = 150

[State 150, 1] 
type = Turn 
trigger1 = Time = 0 
trigger1 = p2dist X < -5 

[State 150, 1] 
type = ChangeAnim 
trigger1 = command = "AdvGuard"
trigger2 = var(20)= 1 && var(14) > 1 
value = 160 

[State 150, 1] 
type = NotHitBy 
trigger1 = Anim = 160 && AnimElem = 1 
value = SCA 
time = 15 

[State 150, 2] 
type = VelSet 
trigger1 = Time = 0 
x = 0 
y = 0 

[State 150, 3] 
type = ChangeState 
trigger1 = HitShakeOver = 1 
value = 151 

[State 150, 3] 
type = ChangeState 
trigger1 = command = "AdvGuard" 
trigger2 = var(20)= 1 && var(14) > 1 
value = 160 

[State 150, 4] 
type = ForceFeedback 
trigger1 = time = 0 
waveform = square 
time = 3 

;SGUARDHIT2 (knocked back) 
[Statedef 151] 
type    = S 
movetype= H 
physics = S 

[State 151, 1] 
type = Turn 
trigger1 = Time = 0 
trigger1 = p2dist X < -5 

[State 151, 1] 
type = HitVelSet 
trigger1 = Time = 0 
x = 1 

[State 151, 2] 
type = VelSet 
trigger1 = Time = GetHitVar(slidetime) 
trigger2 = Time >= GetHitVar(hittime) 
x = 0 

[State 151, 3] 
type = CtrlSet 
trigger1 = Time = GetHitVar(ctrltime) 
value = 1 

[State 151, 4] 
type = ChangeState 
trigger1 = Time >= GetHitVar(hittime) 
value = 130 
ctrl = 1 

[State 151, 5] 
type = ChangeAnim 
trigger1 = Time = 0 && Anim = 150 
value = 150 

[State 151, 6] 
type = ChangeAnim 
trigger1 = Time = 0 && Anim = 160 
value = 160 

; ADVGUARD (crounch) 
[Statedef 152] 
type    = C 
movetype= H 
physics = N 
velset = 0,0 

[State 152, 1] 
type = Turn 
trigger1 = Time = 0 
trigger1 = p2dist X < -5 

[State 152, 1] 
type = ChangeAnim 
trigger1 = 1 
value = 151 

[State 152, 2] 
type = ChangeAnim 
trigger1 = command = "AdvGuard" 
trigger2 = var(20)= 1 && var(14) > 1 
value = 161 

[State 152, 3] 
type = NotHitBy 
trigger1 = Anim = 161 && AnimElem = 1 
value = SCA 
time = 15 

[State 152, 4] 
type = VelSet 
trigger1 = Time = 0 
x = 0 
y = 0 
z = 0 

[State 152, 5] 
type = ChangeState 
trigger1 = HitShakeOver = 1 
value = 153 

[State 152, 6] 
type = ChangeState 
trigger1 = command = "AdvGuard" 
trigger2 = var(20)= 1 && var(14) > 1 
value = 161 

[State 152, 7] 
type = ForceFeedback 
trigger1 = time = 0 
waveform = square 
time = 4 

; CGUARDHIT2 (knocked back) 
[Statedef 153] 
type    = C 
movetype= H 
physics = C 
anim = 151 

[State 153, 1] 
type = HitVelSet 
trigger1 = Time = 0 
x = 1 

[State 153, 2] 
type = VelSet 
trigger1 = Time = GetHitVar(slidetime) 
trigger2 = Time >= GetHitVar(hittime) 
x = 0 

[State 153, 3] 
type = CtrlSet 
trigger1 = Time = GetHitVar(ctrltime) 
value = 1 

[State 153, 4] 
type = ChangeAnim 
trigger1 = Time = 0 
value = 151 

[State 153, 5] 
type = ChangeAnim 
trigger1 = Time = 0 && Anim = 161 
value = 161 

[State 153, 6] 
type = ChangeState 
trigger1 = Time >= GetHitVar(hittime) 
value = 131 
ctrl = 1 

; ADVGUARD (Jump) 
[Statedef 154] 
type    = A 
movetype= H 
physics = N 
velset = 0,0 

[State 154, 1] 
type = Turn 
trigger1 = Time = 0 
trigger1 = p2dist X < -5 

[State 154, 1] 
type = ChangeAnim 
trigger1 = 1 
value = 152 

[State 154, 2] 
type = ChangeAnim 
trigger1 = command = "AdvGuard" 
trigger2 = var(20)= 1 && var(14) > 1 
value = 162 

[State 154, 3] 
type = NotHitBy 
trigger1 = Anim = 162 && AnimElem = 1 
value = SCA 
time = 15 

[State 154, 4] 
type = VelSet 
trigger1 = Time = 0 
x = 0 
y = 0 
z = 0 

[State 154, 5] 
type = ChangeState 
trigger1 = HitShakeOver 
value = 155 ;AGUARDHIT2 

[State 154, 6] 
type = ChangeState 
trigger1 = command = "AdvGuard" 
trigger2 = var(20)= 1 && var(14) > 1 
value = 162 

[State 154, 7] 
type = ForceFeedback 
trigger1 = time = 0 
waveform = square 
time = 4 

; AGUARDHIT2 (knocked away) 
[Statedef 155] 
type    = A 
movetype= H 
physics = N 
anim = 152 

[State 155, 1] 
type = HitVelSet 
trigger1 = Time = 0 
x = 1 
y = 1 

[State 155, 2] 
type = VelAdd 
trigger1 = 1 
y = Const(movement.yaccel) 

[State 155, 3] 
type = CtrlSet 
trigger1 = Time = GetHitVar(ctrltime) 
value = 1 

[State 155, 4] 
type = VarSet 
trigger1 = 1 
sysvar(0) = (pos y >= 0) && (vel y > 0) 

[State 155, 5] 
type = VelSet 
trigger1 = sysvar(0) 
y = 0 

[State 155, 6] 
type = PosSet 
trigger1 = sysvar(0) 
y = 0 

[State 155, 7] 
type = ChangeState 
trigger1 = sysvar(0) 
trigger1 = command != "holdback" 
value = 52 

[State 155, 8] 
type = ChangeState 
trigger1 = sysvar(0) 
value = 130 

[State 155, 9] 
type = ChangeAnim 
trigger1 = Time = 0 && Anim = 152 
value = 152 

[State 155, 10] 
type = ChangeAnim 
trigger1 = Time = 0 && Anim = 162 
value = 162 

[Statedef 160] 
type    = A 
movetype= H 
physics = N 
poweradd= 11 
ctrl = 0 
anim = 160 

[State 160, Block] 
type = ReversalDef 
trigger1 = Anim = 160 
reversal.attr = SCA, AA, AP, AT, NA, NP, NT, SA, SP, ST, HA, HP, HT 
pausetime = 20,0 
sparkxy = 20,-70 
p1stateno = 160 

[State 160, Spark] 
type = Explod 
trigger1 = Time = 0 
persistent = 0 
anim = 9960 
pos = 24,-23 
postype = p1 
sprpriority = 10 
bindtime = 1 
ignorehitpause = 1 
;scale = 2,2 

[State 160, Invisible] 
type = Helper 
trigger1 = p2bodydist x <= 60 
ID = 9961 
stateno = 9961 
pos = 0,0 
postype = p1 
name = "Um amigo envergonhado" 
helpertype = player 
keyctrl = 0 
ownpal = 1 

[State 160, 1] 
type = VelMul 
trigger1 = Anim = 160 
x = 0 
y = 0 

[State 160, 1] 
type = NotHitBy 
trigger1 = Anim = 160 
value = SCA 
time = 2 

[State 160, 1] 
type = PlaySnd 
trigger1 = AnimElem = 1 
value = 0, 3 
volume = 175 

[State 160, 2] 
type = ForceFeedback 
trigger1 = Time = 0 
waveform = square 
time = 25 

[State 160, 2] 
type = ChangeState 
trigger1 = HitShakeOver = 1 
trigger1 = Time >= 15 
value = 151 

[Statedef 161] 
type    = A 
movetype= H 
physics = N 
poweradd= 11 
ctrl = 0 
anim = 161 
velset = 0,0 

[State 161, Spark] 
type = Explod 
trigger1 = Time = 0 
persistent = 0 
anim = 9960 
pos = 24,-9 
postype = p1 
sprpriority = 10 
bindtime = 1 
ignorehitpause = 1 
;scale = 2,2 

[State 161, Block] 
type = ReversalDef 
trigger1 = Anim = 161 
reversal.attr = SCA, AA, AP, AT, NA, NP, NT, SA, SP, ST, HA, HP, HT 
pausetime = 20,0 
sparkxy = 20,-70 
p1stateno = 161 

[State 161, Invisible] 
type = Helper 
trigger1 = p2bodydist x <= 60 
ID = 9962 
stateno = 9961 
pos = 0,0 
postype = p1 
name = "Um amigo envergonhado" 
helpertype = player 
keyctrl = 0 
ownpal = 1 

[State 161, 1] 
type = VelMul 
trigger1 = Anim = 161 
x = 0 
y = 0 

[State 161, 1] 
type = NotHitBy 
trigger1 = Anim = 161 
value = SCA 
time = 2 

[State 161, 1] 
type = PlaySnd 
trigger1 = AnimElem = 1 
value = 0, 3 
volume = 175 

[State 161, 2] 
type = ForceFeedback 
trigger1 = Time = 0 
waveform = square 
time = 25 

[State 161, 2] 
type = ChangeState 
trigger1 = HitShakeOver = 1 
trigger1 = Time >= 15 
value = 153 

[Statedef 162] 
type    = A 
movetype= H 
physics = N 
poweradd= 11 
ctrl = 0 
anim = 162 

[State 162, Spark] 
type = Explod 
trigger1 = Time = 0 
persistent = 0 
anim = 9960 
pos = 0,-20 
postype = p1 
sprpriority = 10 
bindtime = 1 
ignorehitpause = 1 
;scale = 2,2 

[State 162, Block] 
type = ReversalDef 
trigger1 = Anim = 162 
reversal.attr = SCA, AA, AP, AT, NA, NP, NT, SA, SP, ST, HA, HP, HT 
pausetime = 20,0 
sparkxy = 20,-70 
p1stateno = 162 

[State 162, Invisible] 
type = Helper 
trigger1 = p2bodydist x <= 60 
ID = 9963 
stateno = 9961 
pos = 0,0 
postype = p1 
name = "Um amigo envergonhado" 
helpertype = player 
keyctrl = 0 
ownpal = 1 

[State 162, 1] 
type = VelMul 
trigger1 = Anim = 162 
x = 0 
y = 0 

[State 162, 1] 
type = NotHitBy 
trigger1 = Anim = 162 
value = SCA 
time = 2 

[State 162, 1] 
type = PlaySnd 
trigger1 = AnimElem = 1 
value = 0, 3 
volume = 175 

[State 162, 2] 
type = ForceFeedback 
trigger1 = Time = 0 
waveform = square 
time = 25 

[State 162, 2] 
type = ChangeState 
trigger1 = HitShakeOver = 1 && Time >= 15 
value = 163 

[Statedef 163] 
type    = A 
physics = N 

[State 163, 1] 
type = velset 
trigger1 = Time = 0 
x = -4 

[State 163, 2] 
type = ChangeState 
trigger1 = Time = 0 
value = 50 
ctrl = 1 

; Push code 
[Statedef 9961] 
movetype= A 
physics = N 
anim = 9961 
ctrl = 0 

[State 9961, 1] 
type = NotHitBy 
trigger1 = Anim = 9961 
value = SCA 
time = 2 

[State 9961, 2] 
type = velset 
trigger1 = Time = 0 
x = (root, time*2)

[State 9961, 3] 
type = DestroySelf 
trigger1 = Time = 6 

; Roll Code
; (THANKS TO: Oroch Herman's Moriya)
; (THANKS TO: Mappy's Akari)
;--------------------------------------------------------------------------- 
; getup1 
[Statedef 5120] 
type    = L 
movetype= I 
physics = N 

[State 5120, 0] 
type = ChangeState 
triggerall = time <= 8 
triggerall = command = "holdback" 
trigger1 = command = "hold_z" || command = "hold_y" || command = "hold_x"
trigger2 = command = "hold_a" || command = "hold_b" || command = "hold_c"
value = 5123 

[State 5120, 1] 
type = ChangeState 
triggerall = time <= 8 
triggerall = command = "holdfwd" 
trigger1 = command = "hold_z" || command = "hold_y" || command = "hold_x"
trigger2 = command = "hold_a" || command = "hold_b" || command = "hold_c"
value = 5124 

[State 5120, 1a] ;Get up anim (normal) 
type = ChangeAnim 
triggerall = time = 0 
trigger1 = anim != 5111 
trigger2 = !animexist(5121) 
value = 5120 

[State 5120, 1b] ;Get up anim (for hit up) 
type = ChangeAnim 
triggerall = time = 0 
trigger1 = anim = 5111 
trigger1 = animexist(5121) 
value = 5121 

[State 5120, 2] 
type = VelSet 
trigger1 = Time = 0 
x = 0 

[State 5120, 3] 
type = VelAdd 
trigger1 = Time >= 10 
y = .6 

[State 5120, 3] 
type = NotHitBy 
trigger1 = 1 
value = SCA 
time = 20

[State 5120, 5] 
type = HitFallSet 
trigger1 = AnimTime = 0 
value = 1 

[State 5120, 6] ;Can't be thrown right after getting up 
type = NotHitBy 
trigger1 = AnimTime = 0 
value = , NT,ST,HT 
time = 12 

[State 5120, 6] ;Can't be hit right after getting up (short time) 
type = NotHitBy 
trigger1 = AnimTime = 0 
value2 = SCA 
time = 3 

[State 5120, 7] 
type = ChangeState 
trigger1 = Vel Y > 0 
trigger1 = Pos Y >= 0 
value = 5125 
;---------------------------------------------------------------------------
; Recovery Roll

[Statedef 5123] 
type    = C 
movetype= I 
physics = N 
ctrl = 0 
Anim = 5122 + (var(3)=2)
sprpriority = -2
velset=0,0

[State 182, 2]
type = PlayerPush
trigger1 = 1
value = 0

[State 1005, 8]
trigger1 = pos y > 0;time = 0
type = posset
y=0

[State 5123, 2]
type = Velset;add 
triggerall = anim != 5125
trigger1 = AnimElemTime(2) = 0
x = -8 + 16 * (var(3)=2)

[State 900, VelSet 2]
type = VelSet
trigger1 = animelem = 1 && anim = 5125
;trigger2 = animelem = 2 && anim = 5125
;trigger3 = animelem = 3 && anim = 5125
trigger4 = time = 0
x = (vel x) / 2
y = 0

[State 5123, 3] 
type = NotHitBy 
trigger1 = 1 
value = SCA 
time = 1 

[State 5123, 6] 
type = NotHitBy 
triggerall = anim = 5125
trigger1 = AnimTime = 0 
value = , NT,ST,HT 
time = 12 

[State 5123, 7] 
type = Changeanim 
triggerall = anim != 5125
triggerall = time > 8
trigger1 = backedgedist < 50 && vel x < 0
trigger2 = frontedgedist < 50 && vel x > 0
trigger3 = abs(p2bodydist x) < 20
value = 5125

[State 5123, 7] 
type = Statetypeset
triggerall = anim = 5125
trigger1 = animelem = 1
statetype = S

[State 5123, 7] 
type = ChangeState 
triggerall = anim = 5125
trigger1 = animtime = 0 
value = 0 
ctrl = 1 
;---------------------------------------------------------------------------
; rolf 

[Statedef 5124] 
type    = L 
movetype= I 
physics = N 

[State 1010, 1] 
type = VarSet 
trigger1 = 1 
var(3) = 2 

[State 1010, 1] 
type = ChangeState 
trigger1 = 1 
value = 5123

;---------------------------------------------------------------------------
; getup2 

[Statedef 5125] 
type    = L 
movetype= I 
physics = N 
 
[State 5122, 0] 
type = PlaySnd 
trigger1 = time = 0 
value = S10, 1 

[State 5122, 1] 
type = VelSet 
trigger1 = Time = 0 
y = 0 

[State 5122, 3] 
type = PosSet 
trigger1 = Time = 0 
y = 0 

[State 5122, 6] ;Can't be thrown right after getting up 
type = NotHitBy 
trigger1 = AnimTime = 0 
value = , NT,ST,HT 
time = 12 

[State 5122, 6] ;Can't be hit right after getting up (short time) 
type = NotHitBy 
trigger1 = AnimTime = 0 
value2 = SCA 
time = 3 

[State 5122, 7] 
type = ChangeState 
trigger1 = animtime = 0 
value = 0 
ctrl = 1 



;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
