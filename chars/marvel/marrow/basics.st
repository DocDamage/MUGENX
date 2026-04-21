; States file for Marrow -- Basics
;---------------------------------------------------------------------------
; Lose (on timeover)
[Statedef 170]
type = S
ctrl = 0
anim = 170
VelSet = 0,0

;[State 170,0]
;type = PlaySnd
;trigger1 = Time = 0
;value = 6,1

[State 170,1]
type = AssertSpecial     
trigger1 = time = [0,70]
flag = RoundNotOver

;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 175]
type = S
ctrl = 0
anim = 175
VelSet = 0,0

;[State 175,0]
;type = PlaySnd
;trigger1 = Time = 0
;value = 6,2

[State 175,1]
type = AssertSpecial     
trigger1 = time = [0,70]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Winposes
[Statedef 180]  ; winpose selector
type = S
ctrl = 0
VelSet = 0,0

[State 180,Winpose decider]
type = ChangeState
trigger1 = time = 0
;value = 181 + ((random * 2) / 1000)     ; change the 1 to however many winposes you have
value = IfElse((WinPerfect||random>750), 182, 181)

;-----------------------
; Winpose #1 (hand on hip)
[Statedef 181]
type = S
ctrl = 0
anim = 181
VelSet = 0,0

[State 181,0]
type = PlaySnd
trigger1 = time = 16
value = 6,0
channel=0
volume=255

[State 181,1]
type = AssertSpecial     
trigger1 = time = [0,120];60]
flag = RoundNotOver

;-----------------------
; Winpose #2 (throwing bone at the "camera")
[Statedef 182]
type = S
ctrl = 0
anim = 182
VelSet = 0,0

[State 182,0]
type = PlaySnd
trigger1 = time = 40;16
value = 1,0
channel=0
volume=255

[State 182,1]
type = AssertSpecial     
trigger1 = time = [0,200]
flag = RoundNotOver

[State 182, 2]
type = Explod
trigger1 = AnimElem = 7
anim = 183
pos = 0,-80
postype = p1
vel = 2,0
ontop = 1

[State 182, 3]
type = Explod
trigger1 = Time = 72
anim = 184
pos = 0,0
postype = left
ontop = 1
removetime = -1

[State 182,0]
type = PlaySnd
trigger1 = time = 72
value = 5,1
volume=255

[State 182, 4]
type = EnvShake
trigger1 = Time = 72
time = 30
freq = 75;25
ampl = 10

;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
VelSet = 0,0

[State 191] 
type = Explod 
triggerall = NumPartner = 1
trigger1 = id > (partner, id)
trigger1 = roundstate < 2
pos = 0,-100
postype = p1 
bindtime = 1
sprpriority = 4 
anim = 201
removetime = 100
facing = (facing)
ownpal = 1

[State 191] 
type = Explod 
triggerall = NumPartner = 1
trigger1 = id > (partner, id)
trigger1 = roundstate < 2
trigger1 = TeamSide = 2
pos = 0,-100
postype = p1 
bindtime = 1
sprpriority = 5 
anim = 202
removetime = 100
facing = (facing)
ownpal = 1

[State 190,intro decider]
type = ChangeState
trigger1 = time = 0
value = 191; + ((random * 1) / 1000)     ; change the 1 to however many intros you have

;-----------------------
; Intro #1
[Statedef 191]
type = S
ctrl = 0
anim = 191
VelSet = 0,0

; "Brace yourself!"
[State 191, 1]
type = PlaySnd
trigger1 = time = 90
value = 5,0
channel=0
volume=255

; superjump sound
[State 191, 1]
type = PlaySnd
trigger1 = time = 56;32
value = 8,0

; explod #2: manhole hole (anim 992)
[State 191, manhole]
type = Explod
trigger1 = time = 54;28
anim = 992
pos = 0,0
postype = p1

; explod #1: manhole cover (anim 991)
[State 191, manholeCover]
type = Explod
trigger1 = time = 54;32
trigger2 = time = 102
anim = 991 + 2*(time=102)
pos = 160*(time=102),0
postype = p1
velocity=1.5+1.5*(time = 54),-6-6*(time = 54) 
accel=0,0.5
removetime=27+21*(time = 54);

; manhole cover bounce sound
[State 191, 1]
type = PlaySnd
trigger1 = time = 100
value = 5,1
volume=190

[State 191, 2]             
type = AssertSpecial
trigger1 = 1;time = [0,140]
;trigger1 = AnimTime = 0
flag = Intro

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;-----------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
VelSet = 0,0

[State 195, decider]
type = ChangeState
trigger1 = time = 0
value = 196; + ((random * 2) / 1000)     ; change the 1 to however many winposes you have

;------------
; Taunt 1 (knife toss)
[Statedef 196]
type = S
ctrl = 0
anim = 195
VelSet = 0,0

; "Show me your guts!"
[State 196, 1]
type = PlaySnd
trigger1 = time = 6
value = 7,0

[State 196, explod]
type = Explod
trigger1 = Time = 16
anim = 196
pos = 30,-80

[State 196, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Punch X 
; (THANKS TO: Charlzn64's Ryu Turbo) 
[StateDef 200]
type    = S 
movetype= A 
physics = S 
;juggle  = 1 
ctrl = 0 
poweradd= 14 
anim = 210

[State 210, swoosh]
type = PlaySnd
trigger1 = time = 0
value = 0,0
channel = 0 
volume=255

[State 200, 3] 
type = HitDef 
trigger1 = !movecontact
attr = S, NA 
damage    = 21-var(13)/5,0 
animtype = Light 
guardflag = MA 
hitflag = MAF 
priority = 5, Hit 
pausetime = 8,8
guard.sparkno=S910
sparkno= S930
sparkxy = 0,-71 
hitsound = S2,0
guardsound = 6, 0
ground.type = High 
ground.slidetime = 5 
ground.hittime  = 15 
ground.velocity = -4 
guard.velocity = -7 
air.type = Low 
air.velocity = -1.3,-1 
p2facing=1

[State 200, 3] 
type = MakeDust 
trigger1 = Vel x != 0 && gametime % 2
pos = -5,-2 
spacing = 1 

[State 600, 4] 
type = VarSet 
trigger1 = time=0
trigger2 = animtime=0
var(3) = (var(3) + 1)*(time=0) 

[State 600, 5] 
type = ChangeState 
trigger1 = AnimTime = 0 
value = 0 
ctrl = 1 

;-------------------------- Ai only!
[State 600, 5] 
type = ChangeState 
triggerall = movehit && var(3)< 3
trigger1 = p2life > life && var(20)= 1
value = 230
;---------------------------------------------------------------------------
; Stand Light Kick A 
; (THANKS TO: Charlzn64's Ryu Turbo) 
[Statedef 230] 
type    = S 
movetype= A 
physics = S 
;juggle  = 3 
poweradd= 14 
ctrl = 0 
anim = 220

[State 220, swoosh]
type = PlaySnd
trigger1 = time = 2
value = 0,0
channel = 0 
volume=255

[State 230, 2] 
type = HitDef 
trigger1 = !movecontact
attr = S, NA 
damage   = 21-var(13)/5,0 
animtype = light
priority = 3 
guardflag = MA 
pausetime = 8,8 
guard.sparkno=S910
sparkno=S930
sparkxy =  -5,-63 
hitsound   = S2,0 
guardsound = 6,0 
ground.type = High 
ground.slidetime = 8 
ground.hittime  = 8 
ground.velocity = -3.5 
air.type = Low 
air.velocity = -2,-3 
air.cornerpush.veloff = -4 
;air.hittime = 5 
airguard.velocity = -3,-2.5 
p2facing=1

[State 230, 3] 
type = CtrlSet 
trigger1 = AnimTime = -1 
value = 1 

[State 230, 3] 
type = MakeDust 
trigger1 = Vel x != 0 && gametime % 2
pos = -5,-2 
spacing = 1 

[State 600, 4] 
type = VarSet 
trigger1 = time=0
trigger2 = animtime=0
var(3) = (var(3) + 2)*(time=0) 

[State 600, 5] 
type = ChangeState 
trigger1 = AnimTime = 0 
value = 0 
ctrl = 1 

;-------------------------- Ai only!
[State 600, 5] 
type = ChangeState 
triggerall = movehit && var(3)< 3
trigger1 = p2life > life && var(20)= 1
value = 200
;---------------------------------------------------------------------------
; Stand Medium Punch Y 
; (THANKS TO: Limited Moon's Ryu-x) 
[Statedef 210] 
type    = S 
movetype= A 
physics = S 
;juggle  = 3 
poweradd= 42 
ctrl = 0 
anim = 230

[State 230, swoosh]
type = PlaySnd
trigger1 = time = 0
value = 0,1
channel = 0 
volume=255

[State 210, 3] 
type = MakeDust 
trigger1 = Vel x != 0 && gametime % 2
pos = -5,-2 
spacing = 1 

[State 210, 3] 
type = HitDef 
trigger1 = !movecontact
attr = S, NA 
damage   = 42-var(13)/5,0 
animtype = Medium
guardflag = MA 
hitflag = MAF 
priority = 4, Hit 
pausetime = 10,10
guard.sparkno=S910
sparkno= S900
sparkxy =  -10,-67
hitsound   = S2,1
guardsound = 6,0 
ground.type = Low
ground.slidetime = 13 
ground.hittime  = 14 
ground.velocity = -4.2 
air.type = Low 
air.velocity = -2.5,-3.2 
airguard.velocity = -3,-2.8 
priority = 5 
p2facing=1

[State 610, 4] 
type = VarSet 
trigger1 = time = 0
trigger2 = animtime = 0
var(3) = (var(3) + 4) * (time=0)

[State 610, 4] 
type = ChangeState 
trigger1 = AnimTime = 0 
value = 0 
ctrl = 1 

;-------------------------- Ai only!
[State 610, 1] 
type = ChangeState 
trigger1 = movehit && var(3)< 15
trigger1 = p2life > life && var(20)= 1
value = 240 
;---------------------------------------------------------------------------
; Stand Medium Kick B 
; (THANKS TO: Charlzn64's Ryu Turbo) 
[Statedef 240] 
type    = S 
movetype= A 
physics = S 
;juggle  = 4 
poweradd= 42 
ctrl = 0 
anim = 240 

[State 240, swoosh]
type = PlaySnd
trigger1 = time = 2
value = 0,1
channel = 0 
volume=255

[State 240, 2] 
type = HitDef 
trigger1 = !movecontact
attr = S, NA 
damage   = 42-var(13)/5,0 
guardflag = MA 
pausetime = 9,9 
guard.sparkno=S910
sparkno= S900
sparkxy =  -5,-60 
hitsound   = S2,1 
guardsound = 6,0 
animtype  = Medium 
ground.type = High 
ground.slidetime = 13 
ground.hittime  = 14 
ground.velocity = -4.2 
air.type = Low 
air.velocity = -2.5,-3.2 
airguard.velocity = -3,-2.8 
priority = 5 
p2facing=1

[State 240, 3] 
type = MakeDust 
trigger1 = Vel x != 0 && gametime % 2
pos = -5,-2 
spacing = 1 

[State 610, 4] 
type = VarSet 
trigger1 = time = 0
trigger2 = animtime = 0
var(3) = (var(3) + 8) * (time=0)

[State 610, 4] 
type = ChangeState 
trigger1 = AnimTime = 0 
value = 0 
ctrl = 1 

;-------------------------- Ai only!
[State 610, 1] 
type = ChangeState 
trigger1 = movehit && var(3)< 15
trigger1 = p2life > life && var(20)= 1
value = 210 
;---------------------------------------------------------------------------
; Stand Hard Punch Z 
; (THANKS TO: K-man's Cable) 
[Statedef 220] 
type    = S 
movetype= A 
physics = S 
;juggle  = 3 
ctrl = 0 
anim = 250
poweradd = 56 

[State 250, swoosh]
type = PlaySnd
trigger1 = anim = 250
trigger1 = AnimElem = 3
value = 0,5
channel = 0 
volume=255


[State 250, grunt]
type = PlaySnd
trigger1 = anim = 250 
trigger1 = AnimElem = 4
value = 1,1
;channel = 0 
volume=255

[State 250, bones crumbling]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,4
;channel = 1
volume=190;255

[State 220, 1] 
type = HitDef 
trigger1 = time=0
attr = S, NA 
damage    = 84-var(13)/5,20 
animtype = Back
getpower = 24,12 
guardflag = MA 
hitflag = MAF 
priority = 3, Hit 
pausetime = 0,11
;numhits = 1 
sparkxy = 0,-50
hitsound = S2, 2
guardsound = S3,0
;guardsound = 6, 0
guard.sparkno=S910
sparkno= S900
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -3,-3
airguard.velocity = -1.9 
air.velocity = -3,3;-4,8
air.type = Low 
guard.velocity = -5
;fall = 1
;p1stateno = 225
air.fall = 1 
p2stateno = 1250
p2facing=1
;fall.recovertime = 40 
;fall.recover = 1 

; (play a different anim if the hit connects)
[State 255, move hit anim]
type = ChangeAnim
trigger1 = Anim = 250 && movecontact
value = 255

[State 255, bones crumbling]
type = PlaySnd
trigger1 = anim = 255 && animelemtime(1)=0
value = 0,4
channel = 1
volume=190;255

[State 220, 3] 
type = MakeDust 
trigger1 = Vel x != 0 && gametime % 2
pos = -5,-2 
spacing = 1 

[State 220, 9] 
type = VarSet 
trigger1 = Time = 0 
var(4) = 0 

[State 220, 8] 
type = ChangeState 
trigger1 = AnimTime = 0 
value = 0 
ctrl = 1 

;---------------------------------------------------------------------------
; Stand Hard Kick C 
; (THANKS TO: Charlzn64's Ryu Turbo) 
[Statedef 250] 
type    = S 
movetype= A 
physics = S 
;juggle  = 4 
poweradd= 56 
ctrl = 0 
anim = 260

[State 260, grunt]
type = PlaySnd
trigger1 = time = 6
value = 1,1
channel = 0 
volume=255

[State 260, swoosh]
type = PlaySnd
trigger1 = time = 9
value = 0,2
channel = 1
volume=255

[State 250, 2] 
type = HitDef 
trigger1 = !movecontact
attr = S, NA 
animtype  = Hard 
damage    = 42-var(13)/5,0 
guardflag = MA 
pausetime = 12,12
guard.sparkno=S910
sparkno= S900
sparkxy = -10,-86 
hitsound   = S2,2 
guardsound = 6,0 
ground.type = High 
ground.slidetime = 12 
ground.hittime  = 15 
ground.velocity = -5 
air.velocity = -2.2,-3.2 
air.type = Low 
p2facing=1

[State 250, 3] 
type = MakeDust 
trigger1 = Vel x != 0 && gametime % 2
pos = -5,-2 
spacing = 1 


[State 250, 3] 
type = ChangeState 
trigger1 = AnimTime = 0 
value = 0 
ctrl = 1 

;---------------------------------------------------------------------------
; Crouch Light Punch X 
; (THANKS TO: K-man's Cable) 
[Statedef 400] 
type    = C 
movetype= A 
physics = C 
;juggle  = 1 
poweradd= 14 
ctrl = 0 
anim = 410 

[State 410, swoosh]
type = PlaySnd
trigger1 = time = 2
value = 0,0
channel = 0 
volume=255

[State 400, 1] 
type = HitDef 
trigger1 = !movecontact
attr = C, NA 
damage    = 21-var(13)/5,0 
animtype  = Light 
givepower = 8 
hitflag = MAFD 
guardflag = MA 
pausetime = 8,8
guard.sparkno=S910
sparkno=S930
sparkxy = -2,-56 
hitsound   = S2,0 
guardsound = 6,0 
ground.type = Low 
ground.slidetime = 4 
ground.hittime  = 15 
ground.velocity = -4 
air.velocity = -1.3,-3 
air.type = Low 
down.velocity = -2,-6.5
down.hittime = 20 
;yaccel = 21
p2facing=1
;air.cornerpush.veloff = -5
;ground.cornerpush.veloff = -10;15
down.cornerpush.veloff = -20;15

[State 400, 3] 
type = MakeDust 
trigger1 = Vel x != 0 && gametime % 2
pos = -5,-2 
spacing = 1 

[State 600, 4] 
type = VarSet 
trigger1 = time=0
trigger2 = animtime=0
var(3) = (var(3) + 1)*(time=0) 

[State 600, 5] 
type = ChangeState 
trigger1 = AnimTime = 0 
value = 11 
ctrl = 1 

;-------------------------- Ai only!
[State 600, 5] 
type = ChangeState 
triggerall = movehit && var(3)< 3
trigger1 = p2life > life && var(20)= 1
value = 430
;---------------------------------------------------------------------------
; Crouch Light Kick A 
; (THANKS TO: Charlzn64's Ryu Turbo) 
[Statedef 430] 
type    = S 
movetype= A 
physics = S 
;juggle  = 2 
poweradd= 14 
ctrl = 0 
anim = 420

[State 420, swoosh]
type = PlaySnd
trigger1 = time = 2
value = 0,0
channel = 0 
volume=255

[State 430, 2] 
type = HitDef 
trigger1 = !movecontact
attr = C, NA
animtype = light 
damage    = 21-var(13)/5,0 
hitflag = MD 
guardflag = LA 
pausetime = 8,8
sparkxy = -5,-34 
hitsound   = S2,0 
guard.sparkno=S910
sparkno=S930
guardsound = 6,0 
ground.type = Low 
ground.slidetime = 9 
ground.hittime  = 9 
ground.velocity = -4 
air.type = Low 
air.velocity = -1.2,-3 
guard.velocity = -5 
down.velocity = -2,-6.5
down.hittime = 20
p2facing=1
;air.cornerpush.veloff = -5
;ground.cornerpush.veloff = -10;15
down.cornerpush.veloff = -20;15

[State 430, 3] 
type = MakeDust 
trigger1 = Vel x != 0 && gametime % 2
pos = -5,-2 
spacing = 1 

[State 600, 4] 
type = VarSet 
trigger1 = time=0
trigger2 = animtime=0
var(3) = (var(3) + 2)*(time=0) 

[State 600, 5] 
type = ChangeState 
trigger1 = AnimTime = 0 
value = 11 
ctrl = 1 

;-------------------------- Ai only!
[State 600, 5] 
type = ChangeState 
triggerall = movehit && var(3)< 3
trigger1 = p2life > life && var(20)= 1
value = 400
;---------------------------------------------------------------------------
; Crouch Medium Punch Y 
; (THANKS TO: Charlzn64's Ryu Turbo) 
[Statedef 410] 
type    = S 
movetype= A 
physics = C 
;juggle  = 4 
poweradd= 42 
ctrl = 0 
anim = 430

[State 430, swoosh]
type = PlaySnd
trigger1 = time = 2
value = 0,1
channel = 0 
volume=255

[State 410, 2] 
type = HitDef 
trigger1 = !movecontact
attr = C, NA 
animtype = medium;Up 
damage    = 42-var(13)/5,0 
guardflag = MA 
;hitflag = MAF 
hitflag = MAFD 
;guardflag = MA 
pausetime = 10,10
guard.sparkno=S910
sparkno= S900
sparkxy = -10,-60 
hitsound   = S2,1 
guardsound = 6,0 
ground.type = Low 
ground.slidetime = 14 
ground.hittime  = 14 
;ground.velocity = -8
air.type = Low 
;air.velocity = -6,-1 
down.velocity = -2,-6.5
down.hittime = 20
p2facing=1
ground.velocity = -1.3;-4.7 
air.velocity = -1.5,-3.2 
;air.cornerpush.veloff = -5
;ground.cornerpush.veloff = -10;15
down.cornerpush.veloff = -20;15

[State 410, 3] 
type = MakeDust 
trigger1 = Vel x != 0 && gametime % 2
pos = -5,-2 
spacing = 1 

[State 610, 4] 
type = VarSet 
trigger1 = time = 0
trigger2 = animtime = 0
var(3) = (var(3) + 4) * (time=0)

[State 610, 4] 
type = ChangeState 
trigger1 = AnimTime = 0 
value = 11 
ctrl = 1 

;-------------------------- Ai only!
[State 610, 1] 
type = ChangeState 
trigger1 = movehit && var(3)< 15
trigger1 = p2life > life && var(20)= 1
value = 440 
;---------------------------------------------------------------------------
; Crouch Medium Kick B 
; (THANKS TO: Charlzn64's Ryu Turbo) 
[Statedef 440] 
type    = S 
movetype= A 
physics = S 
;juggle  = 3 
poweradd= 42 
ctrl = 0 
anim = 440 

[State 440, swoosh]
type = PlaySnd
trigger1 = time = 2
value = 0,1
channel = 0 
volume=255

[State 440, 2] 
type = HitDef 
trigger1 = !movecontact
attr = C, NA 
animtype = medium;UP
damage    = 42-var(13)/5,0 
guardflag = MA 
hitflag = MAF 
;hitflag = MDF
;guardflag = MA 
pausetime = 9,9
guard.sparkno=S910
sparkno= S900
sparkxy = -7,-23 
hitsound   = S2,1 
guardsound = 6,0 
;animtype = DiagUp
ground.type = Low
ground.slidetime = 4 
ground.hittime  = 18
ground.velocity = 0,-4
air.type = Low 
air.velocity = -3,-6 
down.velocity = -2,-6.5
down.hittime = 20 
p2facing=1
;air.cornerpush.veloff = -5
;ground.cornerpush.veloff = -10;15
down.cornerpush.veloff = -20;15

[State 440, 3] 
type = MakeDust 
trigger1 = Vel x != 0 && gametime % 2
pos = -5,-2 
spacing = 1 

[State 610, 4] 
type = VarSet 
trigger1 = time = 0
trigger2 = animtime = 0
var(3) = (var(3) + 8) * (time=0)

[State 610, 4] 
type = ChangeState 
trigger1 = AnimTime = 0 
value = 11 
ctrl = 1 

;-------------------------- Ai only!
[State 610, 1] 
type = ChangeState 
trigger1 = movehit && var(3)< 15
trigger1 = p2life > life && var(20)= 1
value = 410 
;---------------------------------------------------------------------------
; Crouch Hard Punch
[StateDef 420]
anim = 450
type    = C 
movetype= A 
physics = C 
;juggle  = 12 
poweradd= 56 
ctrl = 0 

[State 450, swoosh #1]
type = PlaySnd
trigger1 = time = 2
value = 0,2
channel = 0 
volume=255

[State 450, grunt]
type = PlaySnd
trigger1 = time = 0
value = 1,1
channel = 1 
volume=255

[State 450, HitDef]
type = HitDef
trigger1 = !movecontact
attr = C, NA
damage    = 84-var(13)/5,0 
guardflag = MA;L
pausetime = 10,10
numhits = 1 
hitflag = MAF
getpower = 30,15 
givepower = 15,8 
priority = 3, Hit 
guard.sparkno=S910
sparkno= S900
sparkxy = -10,-54 
hitsound = S2, 2
guardsound = 6, 0
guard.velocity = -5
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
air.type = Low
airguard.velocity = -3.5,-3 
down.velocity = -2,-6.5
down.hittime = 20
p2facing=1
air.velocity = -0.5,-14 
ground.velocity = 0,-14
fall = 1 
air.fall = 1 
fall.recovertime = 40 
fall.recover = 1 
animtype = Up
;air.cornerpush.veloff = -5
;ground.cornerpush.veloff = -10;15
down.cornerpush.veloff = -20;15

[State 420, 3] 
type = MakeDust 
trigger1 = Vel x != 0 && gametime % 2
pos = -5,-2 
spacing = 1 

[State 160, Spark] 
type = Explod 
trigger1 = movehit
trigger1 = numexplod(920)=0
id = 920 
persistent = 0 
anim = 920 
pos = 54,-53 
postype = p1 
sprpriority = 5;10 
bindtime = 1 
ignorehitpause = 0 

[State 160, Spark] 
type = Explod 
trigger1 = movehit
trigger1 = numexplod(921)=0
id = 921 
persistent = 0 
anim = 920 
pos = 54,-53 
postype = p1 
sprpriority = 5;10 
bindtime = 1 
ignorehitpause = 0
facing=-1

[State 420, 3] 
type = ChangeState
value = 9800
trigger1 = Command = "holdup" && movehit
trigger2 = var(20)=1 && movehit

[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Kick C 
; (THANKS TO: Charlzn64's Ryu Turbo) 
[Statedef 450] 
type    = C 
movetype= A 
physics = C 
;juggle  = 3 
poweradd= 56 
ctrl = 0 
anim = 460

[State 460, swoosh]
type = PlaySnd
trigger1 = time = 2
value = 0,2
channel = 0 
volume=175;255

[State 450, 1] 
type = HitDef 
trigger1 = !movecontact
attr = C, NA 
animtype = Hard
damage    = 84-var(13)/5,0 
hitflag = MDF;hitflag = MAFD 
guardflag = LA 
pausetime = 18,18
guard.sparkno=S910
sparkno= S900
sparkxy = -2,-25 
hitsound   = S2,2 
guardsound = 6,0 
ground.type = Trip 
ground.slidetime = 4 
ground.hittime  = 18
ground.velocity = -1,-3
air.type = Low 
air.velocity = -1.3,-3 
getpower  = 10 
givepower = 8 
down.velocity = -2,-6.5
down.hittime = 20 
ground.slidetime = 4 
fall = 1 
p2facing=1
;air.cornerpush.veloff = -5
;ground.cornerpush.veloff = -10;15
down.cornerpush.veloff = -20;15

[State 450, 3] 
type = MakeDust 
trigger1 = Vel x != 0 && gametime % 2
pos = -5,-2 
spacing = 1 

[State 450, 2] 
type = ChangeState 
trigger1 = AnimTime = 0 
value = 11 
ctrl = 1 

;---------------------------------------------------------------------------
; Air Light Punch X 
; (THANKS TO: Charlzn64's Ryu Turbo & K-man's Cable) 
[Statedef 600] 
type    = A 
movetype= A 
physics = A 
;;juggle  = 2 
poweradd= 14 
ctrl = 0 
anim = 610 

[State 610, swoosh]
type = PlaySnd
trigger1 = time = 2
value = 0,0
channel = 0 
volume=255

[State 600, 2] 
type = HitDef 
trigger1 = !movecontact
attr = A, NA 
damage   = 21-var(13)/5,0 
animtype = Light 
guardflag = HA 
priority = 3 
pausetime = 8,8
sparkxy =  -5,-81 
hitsound   = S2,0 
guard.sparkno=S910
sparkno=S930
guardsound = 6,0 
ground.type = High 
ground.slidetime = 10 
ground.hittime  = 10 
ground.velocity = -3.6 
air.velocity = -0.5,-5 
airguard.velocity = -2.2,-2.5 
air.type = Low
;air.hittime  = 25 
yaccel = const(movement.yaccel)
p2facing=1

[State 600, 3] 
type=VelSet 
trigger1=var(3)>0 && time = 0
trigger1=enemynear, vel y < 4
y=-4*(enemynear, statetype=A)

[State 600, 4] 
type = VarSet 
trigger1 = time=0
trigger2 = animtime=0
var(3) = (var(3) + 1)*(time=0) 

[State 600, 5] 
type = ChangeState 
trigger1 = AnimTime = 0 
value = 50 
ctrl = 1 

;-------------------------- Ai only!
[State 600, 5] 
type = ChangeState 
triggerall = movehit && var(3)< 3
trigger1 = p2life > life && var(20)= 1
value = 630
;---------------------------------------------------------------------------
; Air Light Kick A 
; (THANKS TO: Overmind's Captain Commando) 
[Statedef 630] 
type    = A 
movetype= A 
physics = A 
;;juggle  = 3 
poweradd= 14 
ctrl = 0 
anim = 620

[State 620, swoosh]
type = PlaySnd
trigger1 = time = 2
value = 0,0
channel = 0 
volume=255

[State 630, 2] 
type = HitDef 
trigger1 = !movecontact
attr = A, NA 
animtype = Light 
damage = 21-var(13)/5,0 
guardflag = HA 
priority = 3 
pausetime = 8,8
guard.sparkno=S910
sparkno=S930
sparkxy = -2,-52
hitsound = S2, 0
guardsound = 6, 0
ground.type = High 
ground.slidetime = 6 
ground.hittime  = 6 
ground.velocity = -2 
air.velocity = -0.5,-5 
;air.hittime = 25 
air.type = Low
;air.hittime  = 20  
yaccel = const(movement.yaccel)
p2facing=1

[State 630, 3] 
type=VelSet 
trigger1=var(3)>0 && time = 0
trigger1=enemynear, vel y < 4
y=-4*(enemynear, statetype=A)

[State 630, 4] 
type = VarSet 
trigger1 = time=0
trigger2 = animtime=0
var(3) = (var(3) + 2 )*(time=0)

[State 630, 4] 
type = ChangeState 
trigger1 = AnimTime = 0 
value = 50 
ctrl = 1 

;-------------------------- Ai only!
[State 630, 5] 
type = ChangeState 
trigger1 = movehit && var(3)< 3
trigger1 = p2life > life && var(20)= 1
value = 600 
;---------------------------------------------------------------------------
; Air Medium Punch Y 
; (THANKS TO: Charlzn64's Ryu Turbo) 
[Statedef 610] 
type    = A 
movetype= A 
physics = A 
;;juggle  = 3 
poweradd= 42 
ctrl = 0 
anim = 630

[State 630, swoosh]
type = PlaySnd
trigger1 = time = 2
value = 0,1
channel = 0 
volume=255

[State 610, 2] 
type = HitDef 
trigger1 = !movecontact
attr = A, NA 
damage   = 42-var(13)/5,0 
animtype = medium 
guardflag = HA 
priority = 3 
pausetime = 10,10
guard.sparkno=S910
sparkno= S900
sparkxy =  -2,-84 
hitsound   = S2,1 
guardsound = 6,0 
ground.type = High 
ground.slidetime = 14 
ground.hittime  = 14 
ground.velocity = -4 
air.velocity = -0.5,-7.5 
airguard.velocity = -3.3,-5 
air.type = Low
;air.hittime  = 25
yaccel = const(movement.yaccel)
p2facing=1

[State 610, 3] 
type=VelSet 
trigger1=var(3)>2 && time = 0
trigger1=enemynear, vel y < 4
y=-4*(enemynear, statetype=A)

[State 610, 4] 
type = VarSet 
trigger1 = time = 0
trigger2 = animtime = 0
var(3) = (var(3) + 4) * (time=0)

[State 610, 4] 
type = ChangeState 
trigger1 = AnimTime = 0 
value = 50 
ctrl = 1 

;-------------------------- Ai only!
[State 610, 1] 
type = ChangeState 
trigger1 = movehit && var(3)< 15
trigger1 = p2life > life && var(20)= 1
value = 640 
;---------------------------------------------------------------------------
; Air Medium Kick B 
; (THANKS TO: Overmind's Captain Commando) 
[Statedef 640] 
type    = A 
movetype= A 
physics = A 
;;juggle  = 4 
poweradd= 42 
ctrl = 0 
anim = 640

[State 640, swoosh]
type = PlaySnd
trigger1 = time = 2
value = 0,1
channel = 0 
volume=175;255

[State 640, 3] 
type = HitDef 
trigger1 = !movecontact
animtype = medium 
attr = A, NA 
damage    = 42-var(13)/5,0 
guardflag = HA 
priority = 4 
pausetime = 10,10
guard.sparkno=S910
sparkno= S900
sparkxy = -1,-70 
hitsound = S2, 1
guardsound = 6, 0
ground.type = High 
ground.slidetime = 17 
ground.hittime  = 17 
ground.velocity = -5 
air.velocity = -0.5,-5 
;air.hittime = 25 
air.type = Low 
yaccel = const(movement.yaccel)
p2facing=1

[State 640, 3] 
type=VelSet 
trigger1=var(3)>2 && time = 0
trigger1=enemynear, vel y < 4
y=-4*(enemynear, statetype=A)

[State 640, 4] 
type = VarSet 
trigger1 = time=0
trigger2 = animtime=0
var(3) = (var(3) + 8)*(time=0)

[State 640, 4] 
type = ChangeState 
trigger1 = AnimTime = 0 
value = 50 
ctrl = 1 

;-------------------------- Ai only!
[State 640, 5] 
type = ChangeState 
trigger1 = movehit && var(3)< 15
trigger1 = p2life > life && var(20)= 1
value = 610 

;---------------------------------------------------------------------------
; Air Hard Punch Z 
; (THANKS TO: K-man's Cable) 
[Statedef 620] 
type    = A 
movetype= A 
physics = A 
;;juggle  = 2 
poweradd= 56 
ctrl = 0 
anim = 650

[State 650, swoosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,2
channel = 0 
volume=255

[State 620, 3] 
type = HitDef 
trigger1 = !movecontact && P2Movetype != H 
attr = A, NA 
damage    = 84-var(13)/5,0 
guardflag = HA 
animtype = hard 
priority = 4 
pausetime = 18,18 
guard.sparkno=S910
sparkno= S900
sparkxy = -1,-40 
hitsound = S2, 2
guardsound = 6, 0
ground.type = High 
ground.slidetime = 17 
ground.hittime  = 17 
ground.velocity = -5 
air.velocity = -0.5,-5
air.type = Low 
p2facing=1

[State 620, 3] 
type = HitDef 
trigger1 = !movecontact && P2Movetype = H 
attr = A, NA 
damage    = 84-var(13)/5,0 
guardflag = HA 
animtype = hard 
priority = 4 
pausetime = 12,12
sparkno = 2 
sparkxy = -10,-30 
hitsound = S2, 2
guardsound = 6, 0
ground.type = High 
ground.slidetime = 17 
ground.hittime  = 17 
ground.velocity = -5 
air.velocity = -7,12
;air.hittime = 25 
air.type = Low
fall=1 
p2facing=1

[State 620, 3] 
type = ScreenBound 
trigger1 = var(3)!=0 && movehit
value = 1
movecamera = 0,0

[State 620, 3] 
type=VelSet 
trigger1=var(3)>2 && time = 0
trigger1=enemynear, vel y < 4
y=-4*(enemynear, statetype=A)

[State 620, 3] 
type = VelMul 
trigger1 = MoveHit && var(3)!=0 && pos y < -200
y = 0
x = 0

[State 620, 3] 
type = VarSet 
trigger1 = time=0
;trigger2 = animtime=0
var(3) = (var(3) + 16)*(time=0)

[State 620, 3] 
type = ChangeState 
trigger1 = var(3)!=0 && movehit
value = 660 
ignorehitpause=1

[State 620, 6] 
type = ChangeState 
trigger1 = AnimTime = 0 
value = 50 
ctrl = (1-(movehit))


;---------------------------------------------------------------------------
; Air Hard Kick C 
; (THANKS TO: Overmind's Captain Commando) 
[Statedef 650] 
type    = A 
movetype= A 
physics = A 
;;juggle  = 4 
poweradd= 56 
ctrl = 0 
anim = 660

[State 660, swoosh]
type = PlaySnd
trigger1 = AnimElem = 6
value = 0,2
channel = 0
volume=255

[State 620, 3] 
type = HitDef 
trigger1 = !movecontact && P2Movetype != H 
attr = A, NA 
damage    = 84-var(13)/5,0 
guardflag = HA 
animtype = hard 
priority = 4 
pausetime = 18,18 
guard.sparkno=S910
sparkno= S900
sparkxy = -1,-40 
hitsound = S2, 2
guardsound = 6, 0
ground.type = High 
ground.slidetime = 17 
ground.hittime  = 17 
ground.velocity = -5 
air.velocity = -0.5,-5
air.type = Low 
p2facing=1

[State 620, 3] 
type = HitDef 
trigger1 = !movecontact && P2Movetype = H 
attr = A, NA 
damage    = 84-var(13)/5,0 
guardflag = HA 
animtype = hard 
priority = 4 
pausetime = 12,12
sparkno = 2 
sparkxy = -10,-30 
hitsound = S2, 2
guardsound = 6, 0
ground.type = High 
ground.slidetime = 17 
ground.hittime  = 17 
ground.velocity = -5 
air.velocity = -7,12
;air.hittime = 25 
air.type = Low
fall=1 
p2facing=1

[State 620, 3] 
type = ScreenBound 
trigger1 = var(3)!=0 && movehit
value = 1
movecamera = 0,0

[State 620, 3] 
type=VelSet 
trigger1=var(3)>2 && time = 0
trigger1=enemynear, vel y < 4
y=-4*(enemynear, statetype=A)

[State 620, 3] 
type = VelMul 
trigger1 = MoveHit && var(3)!=0 && pos y < -200
y = 0
x = 0

[State 620, 3] 
type = VarSet 
trigger1 = time=0
;trigger2 = animtime=0
var(3) = (var(3) + 16)*(time=0)

[State 620, 3] 
type = ChangeState 
trigger1 = var(3)!=0 && movehit
value = 660 
ignorehitpause=1

[State 620, 6] 
type = ChangeState 
trigger1 = AnimTime = 0 
value = 50 
ctrl = (1-(movehit))


; Finish Combo 
[Statedef 660] 
type = A 
movetype = I 
physics = A 
ctrl=0

[State 660, 3] 
type = ScreenBound
trigger1 = vel y < 4
movecamera = 0
value=0

[State 660, 1] 
type = VelMul 
trigger1 = pos y < -200
y = 0
x = 0

[State 650, 4] 
type = VarSet 
trigger1 = time=0
trigger2 = animtime=0
var(3) = (var(3) + 32)*(time=0)

[State 660, 8] 
type = ChangeState 
trigger1 = pos y > -10
trigger2 = animtime = 0
value = 50 
ctrl = 1 

; AI Air Combo
[Statedef 670] 
type    = A 
movetype= A 
physics = A 
;juggle  = 4 
ctrl = 0 

[State 670, 4] 
type = ChangeAnim
trigger1 = var(3)= 2
value = 610  

[State 670, 4] 
type = ChangeAnim
trigger1 = var(3)= 1
value = 620  

[State 670, 4] 
type = ChangeAnim
trigger1 = var(3)= 2
value = 610  

[State 670, 4] 
type = ChangeAnim
trigger1 = var(3)= 1
value = 620  

[State 670, 1] 
type = PlaySnd 
trigger1 = Time = 1 
value = 250,0 
channel = 0 

[State 670, 3] 
type = HitDef 
trigger1 = 1
animtype = medium 
attr = A, NA 
damage = 38-var(13)/5,0 
guardflag = HA 
priority = 4 
pausetime = 10,10
sparkno = 1 
sparkxy = -10,-127 
hitsound = S2, 1
guardsound = 6, 0
ground.type = High 
ground.slidetime = 17 
ground.hittime  = 17 
ground.velocity = -5 
air.velocity = -0.5,-5 
;air.hittime = 25 
air.type = Low 
yaccel = const(movement.yaccel)
p2facing=1

[State 670, 3] 
type=VelSet
trigger1=!MoveGuarded && Movehit && P2StateType = A 
trigger1 = var(3)!=0
y=enemynear,vel y

[State 670, 4] 
type = VarSet 
trigger1 = time=0
var(3) = var(3) + 8 

[State 670, 4] 
type = ChangeState 
trigger1 = AnimTime = 0 
value = 50 
ctrl = 1 

;-------------------------- Ai only!
[State 640, 5] 
type = ChangeState 
trigger1 = movehit && var(3)< 15
trigger1 = p2life > life && var(20)= 1
value = 610 

;
;---------------------------------------------------------------------------
; Wall Cling
;---------------------------------------------------------------------------
[Statedef 920]
type    = A
physics = N
movetype = I
;ctrl = 1
anim = 9920
velset = 0,0

[State 200, a]
type = velset
trigger1 = animtime=0
x= 5
y=-5 

;velset = 0,0
[State 200, a]
type = posadd;set
trigger1 = (backedgedist)!=0
x=-(backedgedist)

;[State 920, let go]
;type = ChangeAnim
;trigger1 = animTime = 0
;value = 9921

[State 920, let go]
type = changeState;TypeSet
trigger1 = animTime = 0
;physics = A
value=50

;---------------------------------------------------------------------------
; Grab
;---------------------------------------------------------------------------
[Statedef 800];950]
type    = U;S
movetype = A
physics = U;S
anim = 800;950
ctrl = 0
;velset = 0,0
sprpriority = 1
hitcountpersist = 0

[State 800, 1] 
type = HitDef 
trigger1 = Time = 0 && statetype!=A
attr = S, NT 
hitflag = M 
priority = 1, Miss 
sparkno = -1 
p2facing = 1
p1facing = ifelse (command = "holdback", -1, 1) ;Turn if holding forwards
sprpriority = 1
p1stateno = 852
p2stateno = 853
numhits = 0
fall.damage = 45 
hitonce = 1
guard.dist = 0        ;This prevents p2 from going into a guard state if close

[State 800, 1] 
type = HitDef 
trigger1 = Time = 0 && statetype=A
attr = A, NT 
hitflag = AF 
priority = 1, Miss 
sparkno = -1 
p2facing = 1
p1facing = ifelse (command = "holdback", -1, 1) ;Turn if holding forwards
sprpriority = 1
p1stateno = 852
p2stateno = 853
numhits = 0
fall.damage = 45 
hitonce = 1
guard.dist = 0        ;This prevents p2 from going into a guard state if close

[State 850, missed]
type = ChangeState
trigger1 = AnimTime = 0
value = 50 * (statetype=A)
ctrl = 1

;-------------------------------------------
; Grab (connected)
[StateDef 852]
anim = 802 + 50 * (statetype=A);952
ctrl = 0
type = U
movetype = A
physics = N
poweradd = 50
velset = 0,0
hitcountpersist = 0

[State 3500, 4] ; círculo no chão -tremor
type = Explod 
trigger1 = statetype = A
trigger1 = time = 1
pos = 0,0
postype = p1 
bindtime = -1
sprpriority = 3 
anim = 853
removetime = -2
ownpal = 1

[State 852, 0]
type = PlaySnd
trigger1 = Time = 0
persistent = 0
value = 3,1
volume=190

[State 852, 0]
type = PlaySnd
trigger1 = Time = 5
persistent = 0
value = 1,2;9,4
channel=0
volume=255

[State 852, 1]
type = MoveHitReset
trigger1 = Time = 0

[State 852, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = enemy, const(size.ground.front), 0;,37, 0

[State 852, 2]
type = HitDef
trigger1 = !MOVEHIT;AnimElem = 2
attr = S, ST
damage = 112
guardflag = M
pausetime = 1,1
hitsound = S2, 2
guardsound = S3,0
;guardsound = 6, 0
guard.sparkno=S910
sparkno= S900
sparkxy = -85,-95
animtype = DiagUp
ground.type = High
ground.velocity = 20,-20
air.velocity = -10,-10
fall = 1
hitonce=1

[State 250, bones crumbling]
type = PlaySnd
trigger1 = time=40;AnimElem = 5
value = 0,4
;channel = 1
volume=190;255

[State 1250, NotHitBy]
type = NotHitBy
trigger1 = 1;Time >= 0
value = SCA
time = 1

[State 852, back to stance]
type = ChangeState
trigger1 = AnimTime = 0
value = 50 * (statetype=A)
ctrl = 1

;-------------------------------------------
; Grabbed (p2 custom hit state)
[StateDef 853]
type = A
movetype = H
physics = N
ctrl = 0
velset = 0,0
hitcountpersist = 0

[State 182, 2]
type = PlayerPush
trigger1 = 1
value = 0

[State 1250, NotHitBy]
type = NotHitBy
trigger1 = Time <= 40
value = SCA
time = 1

[State 853, 0]
type = ChangeAnim2
Trigger1 = Time = 0
value = 803;953

[State 854, 1]  ; if her move doesn't connect for some reason, give the player back his control
type = SelfState
trigger1 = Time = 60
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

