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

; Initialize (at the start of the round)
[Statedef 5900]
type = S

[state 191, 0]
type = changestate
trigger1 = !RoundsExisted && TeamMode = Turns
trigger1 = RoundNo != 1
value = 193


[State 5900, 1] ;Intro
type = ChangeState
trigger1 = roundno = 1
value = 190

;  I ran out of time! There's no justice!
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 9999, 0]
type = Helper
trigger1 = time = 0
pos = 0,0
postype = p1
stateno = 171
helpertype = normal
name = "Eddie Brock"
keyctrl = 0
ownpal = 1
ID =192
bindtime = 50000

[State 192, 2]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1, 8

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

; Brock for losepose 
[Statedef 171]
type = S
ctrl = 0
anim = 171
velset = 0,0

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Winner is me!
[Statedef 180]
type = S
ctrl = 0

[State 180, 1]; Win Screen
type = Helper
trigger1 = !NumHelper(9991)
trigger1 = MatchOver
stateno = 9991
postype = p1
pos = 0,0
name = "Win Screen"
id = 9991


[State 180, 1]
type = VarRandom
trigger1 = Time = 0
v = 1
range = 181,182

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
value = Var(1)


;---------------------------------------------------------------------------
; Give Up?
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 9999, 0]
type = Helper
trigger1 = time = 0
pos = 0,0
postype = p1
stateno = 183
helpertype = normal
name = "Eddie Brock"
keyctrl = 0
ownpal = 1
ID =192
bindtime = 50000

[State 192, 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 4

[State 192, 2]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1, 9

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

; We want to eat your brain.
[Statedef 182]
type = S
ctrl = 0
anim = 182
velset = 0,0

[State 9999, 0]
type = Helper
trigger1 = time = 0
pos = 0,0
postype = p1
stateno = 184
helpertype = normal
name = "Eddie Brock"
keyctrl = 0
ownpal = 1
ID =192
bindtime = 50000

[State 192, 2]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1, ifelse(random < 500, 6,3)

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

; Brock for winpose 1
[Statedef 183]
type = S
ctrl = 0
anim = 183
velset = 0,0

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

; Brock for Winpose 2
[Statedef 184]
type = s
ctrl = 0
anim = 184
velset = 0,0


[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1


;---------------------------------------------------------------------------
; Eddie Brock's Body
[Statedef 192]
type = S
ctrl = 0
anim = 191
velset = 0,0
sprpriority = 1

[State 191, 2] 
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 7]
type = DestroySelf
trigger1 = AnimTime = 0
;---------------------------------------------------------------------------
; We are Venom
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0
sprpriority = 2

[State 9999, 0]
type = Helper
trigger1 = time = 0
pos = 0,0
postype = p1
stateno = 192
helpertype = normal
name = "Eddie Brock"
keyctrl = 0
ownpal = 1
ID =192
bindtime = 50000

[State 192, 1] 
type = AssertSpecial
trigger1 = AnimTime != 0
flag = Intro

[State 192, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,0 

[State 192, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

; Jump in for Turns Mode
[Statedef 193]
type = A
physics = N
ctrl = 0
anim = 45
velset = 0,0


[State 196, 1] ;Intro not yet over
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 196, 2]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 196, 3]
type = PosAdd
trigger1 = Time = 0
persistent = 0
x = -160
y = -40

[State 196, 4]
type = VelSet
trigger1 = Time = 20
x = 5
y = -6

[State 196, 4]
type = VelAdd
trigger1 = Time > 20
y = .45

[State 196, 5]
type = ChangeState
trigger1 = Pos y >= -10
value = 194

;---------
; C'mon
[Statedef 194]
type = S
physics = S
anim = 192
velset = 0,0

[State 192, 0]; Too lazy to rip the actual ground shock
type = GameMakeAnim
trigger1 = time = 0
pos = -5,0
value = 60

[State 192, 0]
type = PlaySnd
trigger1 = time = 0
value = 55, 2

[State 197, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 0, 1]
type = Explod
trigger1 = AnimElem = 4
anim = ifelse(facing=1,194,193)
ID = 196
pos = 0,0
postype = p1
facing = facing
bindtime = -1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
;persistent = 1

[State 197, 3] ;Intro not yet over
type = AssertSpecial
trigger1 = animtime !=0
flag = Intro

[State 197, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

[State 197, 5]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,1
channel = 0

;---------------------------------------------------------------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 2



[State 0, 1]
type = VarRandom
trigger1 = !time 
v = 0
range = 1,3
;ignorehitpause = 0
;persistent = 1

[State 9999, 0]
type = Helper
trigger1 = time = 0
pos = 0,0
postype = p1
stateno = 196
helpertype = normal
name = "Eddie Brock"
keyctrl = 0
ownpal = 1
ID =192
bindtime = 50000

[State 0, 1]
type = Explod
trigger1 = AnimElem = 9
anim = ifelse(var(0)=1,196,ifelse(var(0)=2,197,198))
ID = 196
pos = 55,-138
postype = p1
facing = facing
bindtime = -1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
;persistent = 1



[State 192, 2]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1, ifelse(var(0)=1,13,ifelse(var(0)=2,2,7))

[State 0, 1]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1



; Brock for taunt 
[Statedef 196]
type = S
ctrl = 0
anim = 199
velset = 0,0



[State 0, 1]
type = BindToParent
trigger1 = 1
time = 1
pos = 0,0
;ignorehitpause = 0
;persistent = 1


[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1


[State 0, 1]
type = DestroySelf
trigger1 = Animtime = 0 || parent, stateno !=195
;ignorehitpause = 0
;persistent = 1

;---------------------------------------------------------------------------
; Stand Jab
[Statedef 200]
type    = S                      
movetype= A                      
physics = S                      
juggle  = 1                      
ctrl = 0                         
poweradd = 20                    
sprpriority = 2
velset = 0,0                  
anim = ifelse(Var(55),201,200)


[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA                    
damage = 23, 0                   
animtype = Light                 
guardflag = MA                   
hitflag = MAF                   
priority = 3, Hit                
pausetime = 7,7                 
sparkno = 0                      
sparkxy = -10, -76              
hitsound = s5, 0                  
guardsound = 6, 0               
ground.type = High               
ground.slidetime = 10             
ground.hittime  = 10             
ground.velocity = -6             
airguard.velocity = -1.9,-.8     
air.type = High                  
air.velocity = -1.4,-3           
air.hittime = 12
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -6
down.cornerpush.veloff = -6
guard.cornerpush.veloff = -6
airguard.cornerpush.veloff = -6                

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
; Standing strong 
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
sprpriority = 2
velset = 0,0
anim = ifelse(Var(55),200,210)


[State 210, 1]
type = PlaySnd
trigger1 = Time = 6
value = 0, 1

[State 210, 1]
type = PlaySnd
trigger1 = Time = 6
value = 2, 1-(Var(55))
channel = 0

[State 200, 1]
type = HitDef
trigger1 = AnimElem = 2 && Var(55)
attr = S, NA                    
damage = 23, 0                   
animtype = Light                 
guardflag = MA                   
hitflag = MAF                   
priority = 3, Hit                
pausetime = 9,7                 
sparkno = 0                      
sparkxy = -10, -76              
hitsound = s5, 0                  
guardsound = 6, 0               
ground.type = High               
ground.slidetime = 12             
ground.hittime  = 12             
ground.velocity = -7             
airguard.velocity = -1.9,-.8     
air.type = High                  
air.velocity = -1.4,-3           
air.hittime = 12 
 ground.cornerpush.veloff = -7
air.cornerpush.veloff = -7
down.cornerpush.veloff = -7
guard.cornerpush.veloff = -7
airguard.cornerpush.veloff = -7               


[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3 && !Var(55)
attr = S, NA
animtype  = Up
damage    = 47
guardflag = MA
pausetime = 10,10
sparkno = 1
sparkxy = -10,-50
hitsound   = s5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
guard.velocity = -9
airguard.velocity = -1,-6
air.hittime  = 25
ground.velocity = -2,-13.5
air.velocity = -2,-13.5
yaccel = 0.55
ground.cornerpush.veloff = -9
air.cornerpush.veloff = -9
down.cornerpush.veloff = -9
guard.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2 && !Var(55)
anim = 211
ID = 211
pos = 0,0
postype = p1
bindtime = -1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
sprpriority = 3
;persistent = 1

[State 210, 3]
type = ChangeAnim
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(4) <= 0
trigger1 = movecontact && !Var(55)
ignorehitpause = 1
persistent = 0
value = 210
elem = 4



[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Stand Fierce
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
sprpriority = 2
velset = 0,0
anim = ifelse(Var(55),210,220)

[State 210, Width]
type = Width
trigger1 = (AnimElemTime (3) >= 0) && (AnimElemTime (7) < 0) && !Var(55)
value = 95,0

[State 210, 1]
type = PlaySnd
trigger1 = Time = 10
value = 0, 2

[State 210, 1]
type = PlaySnd
trigger1 = Time = 10
value = 2, 2-(Var(55))
channel = 0

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3 && !Var(55)
attr = S, NA
animtype  = Back
damage    = 57
guardflag = MA
pausetime = 10,10
sparkno = 2
sparkxy = -10,-70
hitsound   = s5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 30
ground.velocity = -14.5, -4
air.velocity = -14.5, -4
yaccel = 0.6
p2stateno = 6000

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3 && Var(55)
attr = S, NA
animtype  = Up
damage    = 47
guardflag = MA
pausetime = 10,10
sparkno = 1
sparkxy = -10,-50
hitsound   = s5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
guard.velocity = -9
airguard.velocity = -1,-6
air.hittime  = 25
ground.velocity = -2,-13.5
air.velocity = -2,-13.5
yaccel = 0.55
ground.cornerpush.veloff = -9
air.cornerpush.veloff = -9
down.cornerpush.veloff = -9
guard.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9

[State 0, 1]
type = Explod
trigger1 = AnimElem = 2 && Var(55)
anim = 211
ID = 211
pos = 0,0
postype = p1
bindtime = -1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
sprpriority = 3
;persistent = 1


[State 210, 3]
type = ChangeAnim
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(5) < 0
trigger1 = movecontact && !Var(55)
ignorehitpause = 1
persistent = 0
value = 220
elem = Animelemno(0) + 1



[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Standing short
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 22
ctrl = 0
sprpriority = 2
velset = 0,0
anim = ifelse(Var(55),231,230)


[State 230, 1]
type = PlaySnd
trigger1 = Time = 4
value = 0, 0



[State 230, 2]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype  = Light
damage    = 26
guardflag = MA
pausetime = 6,6
sparkno = 0
sparkxy = -10,-17
hitsound   = s5,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -7
air.velocity = -2.5,-3.5
ground.cornerpush.veloff = -7

[State 230, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing forward
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
sprpriority = 2
velset = 0,0
anim = ifelse(Var(55),230,240)


[State 210, Width]
type = Width
trigger1 = (AnimElemTime (2) >= 0) && (AnimElemTime (7) < 0)
value = 15,0

[State 240, 1]
type = PlaySnd
trigger1 = Time = 5
value = 0, 1

[State 240, 1]
type = PlaySnd
trigger1 = Time = 5
value = 2, 0
channel = 0

[State 230, 2]
type = HitDef
trigger1 = Time = 0 && Var(55)
attr = S, NA
animtype  = Light
damage    = 26
guardflag = MA
pausetime = 6,6
sparkno = 0
sparkxy = -10,-17
hitsound   = s5,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 17
ground.velocity = -7
air.velocity = -2.5,-3.5
ground.cornerpush.veloff = -8

[State 240, 2]
type = HitDef
triggerall = !Var(55)
trigger1 = AnimElem = 4 ||  AnimElem = 6
attr = S, NA
animtype  = Medium
damage    = 30
guardflag = MA
pausetime = 5,5
sparkno = 2
sparkxy = -10,-20
hitsound   = s5,4
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -2.2,-3.2
persistent = 1
ground.cornerpush.veloff = -7
air.cornerpush.veloff = -7
down.cornerpush.veloff = -7
guard.cornerpush.veloff = -7
airguard.cornerpush.veloff = -7

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
sprpriority = 2
velset = 0,0
anim = ifelse(Var(55),240,250)


[State 240, 1]
type = PlaySnd
trigger1 = AnimElem = 4 || AnimElem = 8
value = 0, 2

[State 210, 1]
type = PlaySnd
trigger1 = Time = 8
value = 2, 2
channel = 0

[State 240, 2]
type = HitDef
triggerall = !Var(55)
trigger1 = AnimElem =4 || AnimElem = 8
attr = S, NA
animtype  = Hard
damage    = 37
guardflag = MA
pausetime = 6,6
sparkno = 1
sparkxy = -10,-50
hitsound   = s5+var(30),5
guardsound = 6,0
ground.type = High
ground.slidetime = 25
ground.hittime = 25
air.hittime  = 25
ground.velocity = -10
air.velocity = -4,-9
yaccel = 0.5
ground.cornerpush.veloff = -10
air.cornerpush.veloff = -10
down.cornerpush.veloff = -10
guard.cornerpush.veloff = -10

[State 240, 2]
type = HitDef
triggerall = Var(55)
trigger1 = AnimElem = 4 ||  AnimElem = 6
attr = S, NA
animtype  = Medium
damage    = 30
guardflag = MA
pausetime = 5,5
sparkno = 2
sparkxy = -10,-20
hitsound   = s5,4
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4
air.velocity = -2.2,-3.2
persistent = 1
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -6
down.cornerpush.veloff = -6
guard.cornerpush.veloff = -6
airguard.cornerpush.veloff = -6


[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Crouching light punch
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 15
ctrl = 0
sprpriority = 2
velset = 0,0

[State 1, Speed Anim Up]
type = changeanim
triggerall = (Var(55))
trigger1 = animelemtime(animelemno(0)+1) < 0 
trigger1 = animelemtime(animelemno(0)) > floor((animelemtime(animelemno(0))-animelemtime(animelemno(0)+1))/2)
ignorehitpause = 1
value = anim
elem = animelemno(0)+1


[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 400
trigger2 = Time = 0 && var(5) = 4
value = 400


[State 400, 1]
type = PlaySnd
trigger1 = Time = 4
value = 0, 0

[State 400, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 23
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 10,10
sparkno = 0
sparkxy = -10,-32
hitsound   = s5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -7
air.velocity = -1.5,-3
ground.cornerpush.veloff = -7
air.cornerpush.veloff = -7
down.cornerpush.veloff = -7
guard.cornerpush.veloff = -7
airguard.cornerpush.veloff = -7

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
physics = N
juggle  = 6
poweradd= 50
ctrl = 0
sprpriority = 2
velset = 0,0

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 410
trigger2 = Time = 0 && var(5) = 4
value = 410

[State 1, Speed Anim Up]
type = changeanim
triggerall = (Var(55))
trigger1 = animelemtime(animelemno(0)+1) < 0 
trigger1 = animelemtime(animelemno(0)) > floor((animelemtime(animelemno(0))-animelemtime(animelemno(0)+1))/2)
ignorehitpause = 1
value = anim
elem = animelemno(0)+1
[State 410, 1]
type = PlaySnd
trigger1 = Time = 5
value = 0, 1

[State 210, Width]
type = Width
trigger1 = (AnimElemTime (2) >= 0) && (AnimElemTime (7) < 0)
value = 25,0

[State 410, 1]
type = PlaySnd
trigger1 = Time = 5
value = 2, 2
channel = 0


[State 410, 2]
type = HitDef
trigger1 = time = 0
attr = C, NA
damage    = 37
animtype  = Medium
hitflag = MAF
guardflag = M
pausetime = 12,12
sparkno = 1
sparkxy = -10,-45
hitsound   = s5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 17
ground.velocity = -9
air.velocity = -3,-4
ground.cornerpush.veloff = -9
air.cornerpush.veloff =-9
down.cornerpush.veloff = -9
guard.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9


[State 410, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 65
ctrl = 0
sprpriority = 2
velset = 0,0

[State 1, Speed Anim Up]
type = changeanim
triggerall = (Var(55))
trigger1 = animelemtime(animelemno(0)+1) < 0 
trigger1 = animelemtime(animelemno(0)) > floor((animelemtime(animelemno(0))-animelemtime(animelemno(0)+1))/2)
ignorehitpause = 1
value = anim
elem = animelemno(0)+1

[State 210, Width]
type = Width
trigger1 = (AnimElemTime (3) >= 0) && (AnimElemTime (7) < 0) && !Var(55)
value = 85,0

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 420
trigger2 = Time = 0 && var(5) = 4
value = 420

[State 240, 1]
type = PlaySnd
trigger1 = Time = 12
value = 0, 2

[State 210, 1]
type = PlaySnd
trigger1 = Time = 12
value = 2, 2
channel = 0

[State 240, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
animtype  = Up
damage    = 63
guardflag = MA
pausetime = 10,10
sparkno = 2
sparkxy = -10,-70
hitsound   = s5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 30
ground.velocity = -14, -4
air.velocity = -14, -4
yaccel = 0.6
p2stateno = 6000


[State 210, 3]
type = ChangeAnim
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(4) <= 0
trigger1 = movecontact
ignorehitpause = 1
persistent = 0
value = 420
elem = Animelemno(0) + 1

[State 240, 4]
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
juggle  = 5
poweradd= 22
ctrl = 0
sprpriority = 2
velset = 0,0

[State 1, Speed Anim Up]
type = changeanim
triggerall = (Var(55))
trigger1 = animelemtime(animelemno(0)+1) < 0 
trigger1 = animelemtime(animelemno(0)) > floor((animelemtime(animelemno(0))-animelemtime(animelemno(0)+1))/2)
ignorehitpause = 1
value = anim
elem = animelemno(0)+1

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 430
trigger2 = Time = 0 && var(5) = 4
value = 430

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
hitflag = MAFD
guardflag = L
pausetime = 7,7
sparkno = 0
sparkxy = -10,-8
hitsound   = s5+var(30),3
guardsound = 6,0
ground.type = Low
ground.slidetime = 6
ground.hittime  = 12
ground.velocity = -7
air.velocity = -2,-3
down.velocity = -5,0
down.hittime = 12
ground.cornerpush.veloff = -7
air.cornerpush.veloff = -7
down.cornerpush.veloff = -7
guard.cornerpush.veloff = -7
airguard.cornerpush.veloff = -7

[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouch Strong Kick
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 70
ctrl = 0
sprpriority = 2
velset = 0,0

[State 1, Speed Anim Up]
type = changeanim
triggerall = (Var(55))
trigger1 = animelemtime(animelemno(0)+1) < 0 
trigger1 = animelemtime(animelemno(0)) > floor((animelemtime(animelemno(0))-animelemtime(animelemno(0)+1))/2)
ignorehitpause = 1
value = anim
elem = animelemno(0)+1

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 440
trigger2 = Time = 0 && var(5) = 4
value = 440

[State 440, 2]
type = PlaySnd
trigger1 = Time = 6
value = 0, 1

[State 440, 2]
type = PlaySnd
trigger1 = Time = 6
value = 2, 0
channel = 0


[State 440, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 60
hitflag = MAFD
animtype = Medium
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = -5,-10
hitsound   = s5+var(30),4
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = -9
air.velocity = -1.2,-5
guard.velocity = -5
ground.cornerpush.veloff = -9
air.cornerpush.veloff = -9
down.cornerpush.veloff = -9
guard.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

[Statedef 450]
type    = C
movetype= A
physics = C
juggle  = 7
poweradd= 70
ctrl = 0
sprpriority = 2
velset = 0,0
anim = ifelse(Var(55),451,450)

[State 440, 2]
type = PlaySnd
trigger1 = Time = 5
value = 0, 2

[State 440, 2]
type = PlaySnd
trigger1 = Time = 5
value = 2, 1
channel = 0

[State 440, 3]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 72
hitflag = MAFD
guardflag = MA
pausetime = 12,12
sparkno = 1
sparkxy = -5,-10
hitsound   = s5+var(30),5
guardsound = 6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime  = 15
ground.velocity = 0,-4
air.velocity = 0,-4
guard.velocity = -9
fall = 1
fall.recover=0
yaccel = .45
ground.cornerpush.veloff = -9
air.cornerpush.veloff = -9
down.cornerpush.veloff = -9
guard.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9


[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;Jump Light Punch
; CNS difficulty: easy
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 11
ctrl = 0
sprpriority = 2

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 600
trigger2 = Time = 0 && var(5) = 4
value = 600


[State 600, 1]
type = PlaySnd
trigger1 = Time = 4
value = 0, 0


[State 600, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 20
guardflag = HA
priority = 3
pausetime = 9,9
sparkno = 0
sparkxy = -10,-58
hitsound   = s5+var(30),0
guardsound = 6,0
ground.type = High
ground.slidetime = 7
ground.hittime  = 7
ground.velocity = -5
air.velocity = -1,-9.5
yaccel = 0.6
ground.cornerpush.veloff = -5
down.cornerpush.veloff = -5
guard.cornerpush.veloff = -5
airguard.cornerpush.veloff = -5

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;Jump Strong Punch
; CNS difficulty: easy
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 65
ctrl = 0
sprpriority = 2
anim = ifelse(Var(55),600,610)

[State 610, 2]
type = PlaySnd
trigger1 = Time = 4
value = 0, 1

[State 600, 1]
type = PlaySnd
trigger1 = Time = 4
value = 2, 2

[State 610, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 42
guardflag = HA
priority = 4
pausetime = 9,9
sparkno = 1
sparkxy = -10,-55
hitsound   = s5+var(30),1
guardsound = 6,0
animtype = Med
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -7
air.velocity = -1,-7
yaccel = 0.6
ground.cornerpush.veloff = -7
down.cornerpush.veloff = -7
guard.cornerpush.veloff = -7
airguard.cornerpush.veloff = -7

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
sprpriority = 2
anim = ifelse(Var(55),610,620)


[State 610, 2]
type = PlaySnd
trigger1 = Time = 6
value = 0, 2

[State 600, 1]
type = PlaySnd
trigger1 = Time = 6
value = 2, 1

[State 610, 3]
type = HitDef
trigger1 = AnimElem = 4 && !Var(55)
attr = A, NA
damage = 20
guardflag = HA
priority = 4
pausetime = 5,5
sparkno = 1
sparkxy = -10,-55
hitsound   = s5+var(30),2
guardsound = 6,0
animtype = Hard
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -9
air.velocity = -1,3
yaccel = 0.6
ground.cornerpush.veloff = -9
down.cornerpush.veloff = -9
guard.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9

[State 610, 3]
type = HitDef
trigger1 = AnimElem = 6 && !Var(55)
trigger2 = AnimElem = 3 && Var(55)
attr = A, NA
damage = 50+(20*Var(55))
guardflag = HA
priority = 4
pausetime = 5,5
sparkno = 1
sparkxy = -10,-55
hitsound   = s5+var(30),2
guardsound = 6,0
animtype = Hard
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -9
air.velocity = -9,22
fall.yvelocity = 0
air.fall = 1
fall.recover = 0
fall.envshake.time = 5
ground.cornerpush.veloff = -9
air.cornerpush.veloff = -9
down.cornerpush.veloff = -9
guard.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9

[State 192, b]
type = ScreenBound
trigger1 = (movehit) && (Pos Y < -150)
value = 0

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;Jump Light Kick
; CNS difficulty: easy
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 20
ctrl = 0
sprpriority = 2

[State 1, Speed Anim Up]
type = changeanim
triggerall = (Var(55))
trigger1 = animelemtime(animelemno(0)+1) < 0 
trigger1 = animelemtime(animelemno(0)) > floor((animelemtime(animelemno(0))-animelemtime(animelemno(0)+1))/2)
ignorehitpause = 1
value = anim
elem = animelemno(0)+1

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 630
trigger2 = Time = 0 && var(5) = 4
value = 630


[State 630, 1]
type = PlaySnd
trigger1 = Time = 4
value = 0, 0

[State 630, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 26
guardflag = HA
priority = 3
pausetime = 9,9
sparkno = 1
sparkxy = -5,-35
hitsound   = s5+var(30),3
guardsound = 6,0
ground.type = High
ground.slidetime = 6
ground.hittime  = 6
ground.velocity = -5
air.velocity = -1,-9.5
yaccel = 0.6
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
down.cornerpush.veloff = -5
guard.cornerpush.veloff = -5
airguard.cornerpush.veloff = -5

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;Jump Strong Kick
; CNS difficulty: easy
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 1
poweradd= 65
ctrl = 0
sprpriority = 2

[State 1, Speed Anim Up]
type = changeanim
triggerall = (Var(55))
trigger1 = animelemtime(animelemno(0)+1) < 0 
trigger1 = animelemtime(animelemno(0)) > floor((animelemtime(animelemno(0))-animelemtime(animelemno(0)+1))/2)
ignorehitpause = 1
value = anim
elem = animelemno(0)+1
[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 640
trigger2 = Time = 0 && var(5) = 4
value = 640


[State 640, 2]
type = PlaySnd
trigger1 = Time = 6
value = 0, 1

[State 640, 2]
type = PlaySnd
trigger1 = Time = 6
value = 2, 0

[State 640, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 40
guardflag = HA
pausetime = 9,9
sparkno = 1
sparkxy = -10,-40
hitsound   = s5+var(30),4
guardsound = 6,0
animtype = Med
ground.type = High
ground.slidetime = 12
ground.hittime  = 12
ground.velocity = -7
air.velocity = -1,-7
yaccel = 0.6
ground.cornerpush.veloff = -7
air.cornerpush.veloff = -7
down.cornerpush.veloff = -7
guard.cornerpush.veloff = -7
airguard.cornerpush.veloff = -7

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

[Statedef 650]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
sprpriority = 2
anim = ifelse(Var(55),651,650)



[State 640, 2]
type = PlaySnd
trigger1 = Time = 8
value = 0, 2

[State 640, 2]
type = PlaySnd
trigger1 = Time = 8
value = 2, 2

[State 640, 3]
type = HitDef
trigger1 = AnimElem = 5 || AnimElem = 7 || AnimElem = 9
attr = A, NA
damage    = 28
guardflag = HA
priority = 4
pausetime = 5,5
sparkno = 1
sparkxy = -10,-40
hitsound   = s5+var(30),5
guardsound = 6,0
animtype = Hard
ground.type = High
ground.slidetime = 17
ground.hittime  = 17
ground.velocity = -9
air.velocity = -1, -7
air.hittime = 25
yaccel = 0.6
ground.cornerpush.veloff = -9
air.cornerpush.veloff = -9
down.cornerpush.veloff = -9
guard.cornerpush.veloff = -9
airguard.cornerpush.veloff = -9


[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;Web Trap
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 2
anim = 800


[State 800, 1]
type = HitDef
Trigger1 = Time = 0
animtype = Hard
attr = A, NT
damage = 20
hitflag = M-
priority = 1, Miss
sparkno = 2
sparkxy = -25,-83
sprpriority = 1
numhits = 1
p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 801
p2stateno = 805
ground.velocity = -8,-4
air.velocity = -8, -4
kill = 0

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1


;Grab and Web
[Statedef 801]
type    = S
movetype= A
physics = N
anim = 801
poweradd = 60
sprpriority = 1

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 10

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 4
value = 2, 1

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 4,4
value = 0,3

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 4,7
value = 0, 4

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 102, -72

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 102, 0


[State 810, Width 2-11]
type = Width
trigger1 = 1
edge = 110,110

[State 0, 1]
type = Explod
trigger1 = AnimElem = 4,4
anim = 802
ID = 802
pos = 0,0
postype = p1
bindtime = -1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
sprpriority = 5
;persistent = 1



[State 0, 1]
type = Helper
trigger1 = AnimElem = 4,7
helpertype = normal
name = "Coccoon"
ID = 898
pos = 0,0
postype = p2
ownpal = 1
stateno = 898



[State 0, ]
type = TargetLifeAdd
trigger1 = AnimElem = 4,7
value = -40
;ID = 
;kill = 1
;absolute = 0
;ignorehitpause = 0
;persistent = 1




[State 810, State End]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
;Caught in the Web
[Statedef 805]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 805



[State 0, 1]
type = AssertSpecial
trigger1 = AnimElemtime(4) > 12
flag = invisible
;flag2 = 
;flag3 = 
;ignorehitpause = 0
;persistent = 1



[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = SelfState
trigger1 = Animelemtime(4)<0 && enemy, stateno !=801 && enemy, stateno !=3018
trigger2 = !alive
value = 5000
ctrl = 1

[State 0, ]
type = SelfState
trigger1 = time = 85
value = ifelse(p2movetype = A,120,0)
;anim = 
ctrl = p2movetype != A
;ignorehitpause = 0
;persistent = 1

;Venom Slam
[Statedef 820]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 2
anim = 800


[State 800, 1]
type = HitDef
Trigger1 = Time = 0
animtype = Hard
attr = A, NT
damage = 20
hitflag = M-
priority = 1, Miss
sparkno = 2
sparkxy = -25,-90
sprpriority = 1
numhits = 1
p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 821
p2stateno = 825
ground.velocity = -8,-4
air.velocity = -8, -4
kill = 0
fall = 1

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1


;Waste the Creep
[Statedef 821]
type    = S
movetype= A
physics = N
anim = 821
poweradd = 60
sprpriority = 2

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 10

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 5
value = 2, 1

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 6
value = 5,6

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 4
value = 0, 2

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 95, -90
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 102, -145
time = 16

[State 0, 1]
type = Turn
trigger1 = AnimElem = 4
;ignorehitpause = 0
;persistent = 1

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 4
pos = 0, -130
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 5
pos = 127, -6
time = 6


[State 810, Width 2-11]
type = Width
trigger1 = AnimElemTime(5) < 0
edge = 110,110


[State 0, 1]
type = TargetLifeAdd
trigger1 = AnimElem = 6
value = -80



[State 0, 1]
type = TargetState
trigger1 = AnimElem = 6
value = 826


[State 810, State End]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
;Grabbed
[Statedef 825]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 825

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = SelfState
trigger1 =  enemy, stateno !=821
value = 5000
ctrl = 1

; Throw (hit by, into air)
[Statedef 826]
type    = A
movetype= H ;Get hit
physics = N
ctrl = 0

[State 1486, 2] ;Gravity
type = VelAdd
trigger1 = Time = 5
x = 10
y = -10

[State 0, 1]
type = PosSet
trigger1 = time = 4
y = 0

[State 192, 0]
type = GameMakeAnim
trigger1 = time = 0
pos = -5,0
value = 62

[State 1485, 1]
type = ChangeAnim
trigger1 = Time = 4
value = ifelse(SelfAnimExist(5035),5035,5050)

[State 1486, 2] ;Gravity
type = VelAdd
trigger1 = Time > 5
y = .49

[State 1486, 3]
type = EnvShake
trigger1 = time = 0
time = 25
ampl = -3
freq = 90
phase = 90

[State 1486, 5] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

;Venom Slam
[Statedef 850]
type    = A
movetype= A
physics = A
juggle  = 0
ctrl = 0
sprpriority = 2
anim = 850


[State 800, 1]
type = HitDef
Trigger1 = Time = 0
animtype = Hard
attr = A, NT
damage = 20
hitflag = AF
priority = 1, Miss
sparkno = 2
sparkxy = -25,-90
sprpriority = 1
numhits = 1
p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 851
p2stateno = 855
ground.velocity = -8,-4
air.velocity = -8, -4
kill = 0
fall = 1

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 50
ctrl = 1


;Waste the Creep
[Statedef 851]
type    = A
movetype= A
physics = N
anim = 851
poweradd = 60
sprpriority = 2
velset = 0,0

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 10



[State 0, 1]
type = VelSet
trigger1 = Animelem = 1, 10
y = -.5
;ignorehitpause = 0
;persistent = 1



[State 0, 2]
type = Gravity
trigger1 = Animelemtime(1) > 10
;ignorehitpause = 0
;persistent = 1

[State 810, Width 2-11]
type = Width
trigger1 = AnimElemTime(2) < 0
edge = 110,110

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 86, -121
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2, >=0
pos = 88, -66
time = 1



[State 0, 3]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 10
value = 852
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

[Statedef 852]
type    = S
movetype= A
physics = S
anim = 852
sprpriority = 2
velset = 0,0



[State 0, 1]
type = PosSet
trigger1 = !time
;x = 
y = 0
;ignorehitpause = 0
;persistent = 1



[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 88, -10
time = 4

[State 0, 1]
type = TargetLifeAdd
trigger1 = !time
value = -80



[State 0, 1]
type = TargetState
trigger1 = !time
value = 856

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 6

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0, 1
channel = 0



[State 0, ]
type = VelSet
trigger1 = Animelem = 2,6
x = -3.55
y = -8.2
;ignorehitpause = 0
;persistent = 1


[State 810, State End]
type = ChangeState
trigger1 = Animtime = 0
value = 50
 



;---------------------------------------------------------------------------
;Grabbed
[Statedef 855]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 855

[State 0, 1]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = SelfState
trigger1 =  enemy, stateno !=851
value = 5010


; Throw (hit by, into air)
[Statedef 856]
type    = A
movetype= H ;Get hit
physics = N
ctrl = 0

[State 1486, 2] ;Gravity
type = VelAdd
trigger1 = Time = 5
x = -8
y = -8

[State 0, 1]
type = PosSet
trigger1 = time = 4
y = 0

[State 192, 0]
type = GameMakeAnim
trigger1 = time = 0
pos = -5,0
value = 62

[State 1485, 1]
type = ChangeAnim2
trigger1 = !Time 
value = 856

[State 1485, 1]
type = ChangeAnim
trigger1 = Time = 4
value = ifelse(SelfAnimExist(5035),5035,5050)

[State 1486, 2] ;Gravity
type = VelAdd
trigger1 = Time > 5
y = .49

[State 1486, 3]
type = EnvShake
trigger1 = time = 0
time = 25
ampl = -3
freq = 90
phase = 90

[State 1486, 5] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Web Coccoon (SMALL)
[Statedef 898]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 898
sprpriority = 4

[State 0, 1]
type = BindToTarget
trigger1 = 1
time = 1
facing = 0
pos = 0,0
;ignorehitpause = 0
;persistent = 1

[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 0, ]
type = DestroySelf
trigger1 = RoundState !=2


[State 0, 1]
type = ChangeState
trigger1 = enemynear, stateno != 805 && enemynear, stateno !=3018
value = 899

;Web Coccoon (SMALL)
[Statedef 899]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 899
sprpriority = 4

[State 192, 2]
type = PlaySnd
trigger1 = !time 
value = 0, 5

[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 2601, Fade In]
type = PalFX
trigger1 = 1
mul = 255-((StateTime)*10),255-((StateTime)*10),255-((StateTime)*10)
time = 5

[State 0, ]
type = DestroySelf
trigger1 = Animtime = 0
;ignorehitpause = 0
;persistent = 1

; Counter Attack 1 - Hard Punch
[Statedef 950]
type = S
movetype = A
Physics = S
anim = 950
velset = 0,0
ctrl = 0
juggle = 0


[State 740, Ikuzo!]
type = PlaySnd
trigger1 = Time = 0
value = 40,10

[State 740, Ikuzo!]
type = PlaySnd
trigger1 = Time = 0
value = 40,9


[State -2, First Attack]
type = Explod
trigger1 = time = 0
anim = 7009
sprpriority = 100
postype = Left
pos = ifelse(TeamSide = 2,240,80),55
bindtime = -1
supermove = 1
ownpal = 1
persistent = 0
ignorehitpause = 1
ontop = 1
size.shadowoffset = -9999
id = 7009


[State 790, Super Pause!]
type = SuperPause
trigger1 = Time = 0
time = 30
poweradd = -1000
darken = 1
anim = -1

[State 790, Super Pause!]
type = Pause
trigger1 = Time = 1
time = 10
movetime = 10

[State 740, Ikuzo!]
type = Nothitby
trigger1 = AnimElem = 4, <0
value = SCA
time = 6

[State 3510, 4]
type = explod
trigger1 = time =0
anim = 9100
pos = 0,0
postype = back
under = 1
supermove = 1
bindtime = 30
ID = 9999
ownpal = 1


[State 0, 1]
type = Explod
trigger1 = animtime = 0
anim = 1009
ID = 1009
pos = -25,0
postype = p1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
sprpriority = 5
;persistent = 1

[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 1001

; Counter Attack 1 - Hard Punch
[Statedef 960]
type = S
movetype = A
Physics = S
anim = 250
velset = 0,0
ctrl = 0
juggle = 0


[State 740, Ikuzo!]
type = PlaySnd
trigger1 = Time = 0
value = 40,10

[State 740, Ikuzo!]
type = PlaySnd
trigger1 = Time = 0
value = 40,9


[State -2, First Attack]
type = Explod
trigger1 = time = 0
anim = 7009
sprpriority = 100
postype = Left
pos = ifelse(TeamSide = 2,240,80),55
bindtime = -1
supermove = 1
ownpal = 1
persistent = 0
ignorehitpause = 1
ontop = 1
size.shadowoffset = -9999
id = 7009


[State 790, Super Pause!]
type = SuperPause
trigger1 = Time = 0
time = 30
poweradd = -1000
darken = 1
anim = -1

[State 790, Super Pause!]
type = Pause
trigger1 = Time = 1
time = 10
movetime = 10

[State 740, Ikuzo!]
type = Nothitby
trigger1 = AnimElem = 4, <0
value = SCA
time = 6

[State 3510, 4]
type = explod
trigger1 = time =0
anim = 9100
pos = 0,0
postype = back
under = 1
supermove = 1
bindtime = 30
ID = 9999
ownpal = 1

[State 240, 1]
type = PlaySnd
trigger1 = AnimElem = 4 || AnimElem = 8
value = 0, 2

[State 210, 1]
type = PlaySnd
trigger1 = Time = 8
value = 1, 6
channel = 0

[State 240, 2]
type = HitDef
trigger1 = AnimElem =4 || AnimElem = 8
attr = S, NA
animtype  = Up
damage    = 37
guardflag = MA
pausetime = 0,10
sparkno = 3
sparkxy = -10,-60
hitsound   = s55,1
guardsound = 6,0
ground.type = High
ground.slidetime = 25
ground.hittime = 25
air.hittime  = 25
ground.velocity = -2,-12
air.velocity = -2,-12
yaccel = 0.5
fall = 1
fall.recover = 0
ground.cornerpush.veloff = -10
air.cornerpush.veloff = -10
down.cornerpush.veloff = -10
guard.cornerpush.veloff = -10

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


; Venom Fang Weak
[Statedef 1000]
type = S
movetype = A
physics = S
poweradd = 100
velset = 0, 0
ctrl = 0
anim = 1000

[State 0, 1]
type = Explod
trigger1 = animtime = 0
anim = 1009
ID = 1009
pos = -25,0
postype = p1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
sprpriority = 5
;persistent = 1

[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 1001

[Statedef 1001]
type = A
movetype = A
physics = N
velset = 2.5, -6
ctrl = 0
anim = 1001
juggle = 4

[State 0, 1]
type = Helper
trigger1 = !time
helpertype = normal
name = "Venom Fang FX"
ID = 1019
pos = 0,0
postype = p1
ownpal = 1
stateno = 1019

[State 0, 1]
type = PosAdd
trigger1 = !time
x = 25
;y = 
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = VelAdd
trigger1 = 1
y = .61
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 1,10
;volume = 0
channel = 0
;lowpriority = 
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan = 0
;ignorehitpause = 0
;persistent = 1


[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 1 || AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
animtype = Back
attr = A, SA
damage    = 25, 7
getpower  = 20
givepower = 10
guardflag = MA
pausetime = 6,6
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,7
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 25
ground.Velocity = -5,-10
air.Velocity = -5, -10
air.hittime = 25
yaccel = 0.6



[State 0, 1]
type = ChangeState
trigger1 = Vel y > 0 && Pos Y >=0
value = 1009
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

; Venom Fang Med
[Statedef 1002]
type = S
movetype = A
physics = S
poweradd = 100
velset = 0, 0
ctrl = 0
anim = 1002

[State 0, 1]
type = Explod
trigger1 = animtime = 0
anim = 1009
ID = 1009
pos = -25,0
postype = p1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
sprpriority = 5
;persistent = 1

[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 1003

[Statedef 1003]
type = A
movetype = A
physics = N
velset = 5, -7.5
ctrl = 0
anim = 1003
juggle = 4


[State 0, 1]
type = Helper
trigger1 = !time
helpertype = normal
name = "Venom Fang FX"
ID = 1019
pos = 0,0
postype = p1
ownpal = 1
stateno = 1019

[State 0, 1]
type = PosAdd
trigger1 = !time
x = 25
;y = 
;ignorehitpause = 0
;persistent = 1




[State 0, 1]
type = VelAdd
trigger1 = 1
y = .61
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 1,10
;volume = 0
channel = 0
;lowpriority = 
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan = 0
;ignorehitpause = 0
;persistent = 1


[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 1 || AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
animtype = Back
attr = A, SA
damage    = 25, 7
getpower  = 20
givepower = 10
guardflag = MA
pausetime = 6,6
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,7
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 25
ground.Velocity = -5,-10
air.Velocity = -5, -10
air.hittime = 25
yaccel = 0.6



[State 0, 1]
type = ChangeState
trigger1 = Vel y > 0 && Pos Y >=0
value = 1009
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

; Venom Fang Strong
[Statedef 1004]
type = S
movetype = A
physics = S
poweradd = 100
velset = 0, 0
ctrl = 0
anim = 1004


[State 0, 1]
type = Explod
trigger1 = animtime = 0
anim = 1009
ID = 1009
pos = -25,0
postype = p1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
sprpriority = 5
;persistent = 1
[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 1005

[Statedef 1005]
type = A
movetype = A
physics = N
velset = 9, -9
ctrl = 0
anim = 1005
juggle = 4

[State 0, 1]
type = Helper
trigger1 = !time
helpertype = normal
name = "Venom Fang FX"
ID = 1019
pos = 0,0
postype = p1
ownpal = 1
stateno = 1019

[State 0, 1]
type = PosAdd
trigger1 = !time
x = 25
;y = 
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = VelAdd
trigger1 = 1
y = .6
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 1,10
;volume = 0
channel = 0
;lowpriority = 
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan = 0
;ignorehitpause = 0
;persistent = 1


[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 1 || AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
animtype = Back
attr = A, SA
damage    = 25, 7
getpower  = 20
givepower = 10
guardflag = MA
pausetime = 6,6
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,7
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 25
ground.Velocity = -5,-10
air.Velocity = -5, -10
air.hittime = 25
yaccel = 0.6



[State 0, 1]
type = ChangeState
trigger1 = Vel y > 0 && Pos Y >=0
value = 1009
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

[Statedef 1009]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
anim = 1008



[State 0, 1]
type = ScreenBound
trigger1 = prevstateno =3013
value = 0
;movecamera = 0,0
;ignorehitpause = 0
;persistent = 1



[State -3, Landing Sound]
type = PlaySnd
trigger1 = !Time 
value = 0, 6

[State 0, 1]
type = Explod
trigger1 = AnimElem = 4
anim = 1009
ID = 1009
pos = 0,0
postype = p1
bindtime = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
sprpriority = 5
;persistent = 1

[State 0, ]
type = PosSet
trigger1 = !time
y = 0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = ChangeState
trigger1 = animtime = 0 && backedgedist > -40
value = 11
ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = ChangeState
trigger1 = animtime = 0 && backedgedist <= -40
value = 3003
;anim = 
;ignorehitpause = 0
;persistent = 1

; Air Venom Fang Weak
[Statedef 1010]
type = A
movetype = A
physics = N
poweradd = 100
velset = 0, 0
ctrl = 0
anim = 1010


[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 1011

[Statedef 1011]
type = A
movetype = A
physics = N
velset = 2, -3
ctrl = 0
anim = 1011
juggle = 4


[State 0, 1]
type = Helper
trigger1 = !time
helpertype = normal
name = "Venom Fang FX"
ID = 1019
pos = 0,0
postype = p1
ownpal = 1
stateno = 1019
[State 0, 1]
type = PosAdd
trigger1 = !time
x = 25
;y = 
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = VelAdd
trigger1 = 1
y = .61
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 1,10
;volume = 0
channel = 0
;lowpriority = 
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan = 0
;ignorehitpause = 0
;persistent = 1


[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 1 || AnimElem = 2 || AnimElem = 3 || AnimElem = 4 
animtype = Back
attr = A, SA
damage    = 25, 7
getpower  = 20
givepower = 10
guardflag = MA
pausetime = 6,6
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,7
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 25
ground.Velocity = -5,-10
air.Velocity = -5, -10
air.hittime = 25
yaccel = 0.6



[State 0, 1]
type = ChangeState
trigger1 = Vel y > 0 && Pos Y >=0
value = 1009
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

; Air Venom Fang Weak
[Statedef 1012]
type = A
movetype = A
physics = N
poweradd = 100
velset = 0, 0
ctrl = 0
anim = 1010


[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 1013

[Statedef 1013]
type = A
movetype = A
physics = N
velset = 5, -6
ctrl = 0
anim = 1012
juggle = 4

[State 0, 1]
type = Helper
trigger1 = !time
helpertype = normal
name = "Venom Fang FX"
ID = 1019
pos = 0,0
postype = p1
ownpal = 1
stateno = 1019

[State 0, 1]
type = PosAdd
trigger1 = !time
x = 25
;y = 
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = VelAdd
trigger1 = 1
y = .61
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 1,10
;volume = 0
channel = 0
;lowpriority = 
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan = 0
;ignorehitpause = 0
;persistent = 1


[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 1 || AnimElem = 2 || AnimElem = 3 || AnimElem = 4 
animtype = Back
attr = A, SA
damage    = 25, 7
getpower  = 20
givepower = 10
guardflag = MA
pausetime = 6,6
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,7
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 25
ground.Velocity = -5,-10
air.Velocity = -5, -10
air.hittime = 25
yaccel = 0.6



[State 0, 1]
type = ChangeState
trigger1 = Vel y > 0 && Pos Y >=0
value = 1009
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

; Air Venom Fang Weak
[Statedef 1014]
type = A
movetype = A
physics = N
poweradd = 100
velset = 0, 0
ctrl = 0
anim = 1010


[State 0, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 1015

;
[Statedef 1015]
type = A
movetype = A
physics = N
velset = 8, -10
ctrl = 0
anim = 1013
juggle = 4

[State 0, 1]
type = Helper
trigger1 = !time
helpertype = normal
name = "Venom Fang FX"
ID = 1019
pos = 0,0
postype = p1
ownpal = 1
stateno = 1019

[State 0, 1]
type = PosAdd
trigger1 = !time
x = 25
;y = 
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = VelAdd
trigger1 = 1
y = .61
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PlaySnd
trigger1 = time = 0
value = 1,10
;volume = 0
channel = 0
;lowpriority = 
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan = 0
;ignorehitpause = 0
;persistent = 1


[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 1 || AnimElem = 2 || AnimElem = 3 || AnimElem = 4 
animtype = Back
attr = A, SA
damage    = 25, 7
getpower  = 20
givepower = 10
guardflag = MA
pausetime = 6,6
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,7
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 25
ground.Velocity = -5,-10
air.Velocity = -5, -10
air.hittime = 25
yaccel = 0.6



[State 0, 1]
type = ChangeState
trigger1 = Vel y > 0 && Pos Y >=0
value = 1009
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1


;Venom Fang FX
[Statedef 1019]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 1014
sprpriority = 4



[State 0, 1]
type = ChangeAnim
triggerall = anim !=1014
trigger1 = parent, anim = 1001 || parent, anim = 1003 || parent, anim = 1005
trigger1 = parent, AnimElem = 1
value = 1014

[State 0, 1]
type = ChangeAnim
triggerall = anim !=1015
trigger1 = parent, anim = 1001 || parent, anim = 1003 || parent, anim = 1005
trigger1 = parent, AnimElem = 2
trigger2 = parent, anim = [1011,1013]
trigger2 = parent, AnimElem = 1
value = 1015

[State 0, 1]
type = ChangeAnim
triggerall = anim !=1016
trigger1 = parent, anim = 1001 || parent, anim = 1003 || parent, anim = 1005
trigger1 = parent, AnimElem = 3
trigger2 = parent, anim = [1011,1013]
trigger2 = parent, AnimElem = 2
value = 1016

[State 0, 1]
type = ChangeAnim
triggerall = anim !=1017
trigger1 = parent, anim = 1001 || parent, anim = 1003 || parent, anim = 1005
trigger1 = parent, AnimElem = 4
trigger2 = parent, anim = [1011,1013]
trigger2 = parent, AnimElem = 3
value = 1017

[State 0, 1]
type = ChangeAnim
triggerall = anim !=1018
trigger1 = parent, anim = 1001 || parent, anim = 1003 || parent, anim = 1005
trigger1 = parent, AnimElem = 5
trigger2 = parent, anim = [1011,1013]
trigger2 = parent, AnimElem = 4
value = 1018


[State 0, 1]
type = BindToParent
trigger1 = 1
time = 1
facing = 0
pos = 0,0
;ignorehitpause = 0
;persistent = 1

[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 0, 1]
type = DestroySelf
trigger1 = parent, stateno !=[1000,1005]
trigger1 = parent, stateno !=[1010,1015]

;Venom Rush
[Statedef 1020]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 1020
juggle = 4
sprpriority = 2

[State 0, 1]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "Shadow"
ID = 1025
pos = 0,0
postype = p1
ownpal = 1
stateno = 1025
persistent = 0

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,11
channel = 0
persistent = 0





[State 0, 1]
type = ChangeState
trigger1 = time >=25
trigger1 = !Numhelper(1025)
value = 1023
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

;Venom Rush
[Statedef 1021]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 1021
juggle = 4
sprpriority = 2
[State 0, 1]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "Shadow"
ID = 1025
pos = 0,0
postype = p1
ownpal = 1
stateno = 1025
persistent = 0

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,11
channel = 0
persistent = 0





[State 0, 1]
type = ChangeState
trigger1 = time >=25
trigger1 = !Numhelper(1025)
value = 1023
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

;Venom Rush
[Statedef 1022]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 1022
juggle = 4
sprpriority = 2

[State 0, 1]
type = Helper
trigger1 = AnimElem = 4
helpertype = normal
name = "Shadow"
ID = 1025
pos = 0,0
postype = p1
ownpal = 1
stateno = 1025
persistent = 0

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,11
channel = 0
persistent = 0





[State 0, 1]
type = ChangeState
trigger1 = time >=25
trigger1 = !Numhelper(1025)
value = 1023
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

[Statedef 1023]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
anim = 1023





[State 0, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1



;Venom Rush Shadow
[Statedef 1025]
type    = A
movetype= I
physics = N
velset = ifelse(parent,stateno = 1020, 7,ifelse(parent,stateno=1021,15,23)),0
anim = 1024
sprpriority = -2

[State 0, 1]
type = Explod
trigger1 = !time
anim = 1025
ID = 1025
pos = 0,0
postype = p1
bindtime = ifelse(facing =-1,-1,1)
ownpal = 1
removeongethit = 1
ignorehitpause = 1
sprpriority = -2
;persistent = 1
under = 1



[State 0, 1]
type = ModifyExplod
trigger1 = 1
ID = 1025
scale = (ParentDist X), 1
sprpriority = -1
[State 0, 1]
type = Helper
trigger1 = time = 10
helpertype = normal
name = "Symbiote"
ID = 1026
pos = 0,0
postype = p1
ownpal = 1
stateno = 1026

[State 0, 1]
type = VelSet
trigger1 = time = 10
x = 0
;y = 
;ignorehitpause = 0
;persistent = 1


[State 0, 1]
type = VelSet
trigger1 = time = 45
x = (ParentDist X)/7
;y = 
;ignorehitpause = 0
;persistent = 1

[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0



[State 0, 1]
type = RemoveExplod
trigger1 = parent, stateno !=[1020,1022]
trigger2 = time >=52
ID = 1025
;ignorehitpause = 0
;persistent = 1


[State 0, 1]
type = DestroySelf
trigger1 = parent, stateno !=[1020,1022]
trigger2 = time >=52


;Venom Rush Symbiote
[Statedef 1026]
type    = A
movetype= A
physics = N
velset = 0,0
sprpriority = 4



[State 0, 1]
type = ChangeAnim
trigger1 = !time && Anim !=1026
value = 1026
;elem = 
;ignorehitpause = 0
;persistent = 1



[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0


[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 6



[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3 || AnimElem = 7 || AnimElem = 10
attr = S, HA
animtype  = Up
damage    = 30,4
guardflag = MA
pausetime = 0,10
sparkno = 3
sparkxy = -10,-90
hitsound   = s5,7
guardsound = 6,0
ground.type = Low
ground.slidetime = 12
guard.velocity = -9
airguard.velocity = -1,-6
air.hittime  = 25
ground.velocity = 0,-13.5
air.velocity = 0,-13.5
yaccel = 0.55
sprpriority = 4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
ground.slidetime = 18
ground.hittime = 18

[State 0, 1]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 0, 1]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1026
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, 1]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1


[State 0, 1]
type = DestroySelf
trigger1 = root, stateno !=[1020,1022]
trigger2 = animtime=0

;Web Throw
[Statedef 1030]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 1030
juggle = 4
sprpriority = 2



[State 0, 1]
type = Width
trigger1 = Animelem = 5
player = 110,0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = Helper
trigger1 = AnimElem = 5
helpertype = normal
name = "Webbing"
ID = 1034
pos = 129,-88
postype = p1
ownpal = 1
stateno = 1034
persistent = 0
bindtime = 2

[State 4000, 3]
type = Projectile
trigger1 = Numhelper(1034)
trigger1 = helper(1034), movehit
trigger1 = helper(1034), Animelemtime(11)< 0
postype  = p2
projAnim = 1043
sparkno = -1
offset = 0,-30
projhitanim = -1
projremovetime = 5
attr = S, SP
animtype = Medium
guardflag = MA
p1stateno = 1040
p2stateno = 1050
p2facing = 1
numhits = 0
kill = 0

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,15
channel = 0
persistent = 0

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,7
persistent = 0


[State 0, 1]
type = ChangeState
trigger1 = time >=25
trigger1 = !Numhelper(1034)
trigger2 = time >= 50
value = 1033
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

;Web Throw
[Statedef 1031]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 1031
juggle = 4
sprpriority = 2

[State 0, 1]
type = Width
trigger1 = Animelem = 5
player = 100,0
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = Helper
trigger1 = AnimElem = 5
helpertype = normal
name = "Webbing"
ID = 1036
pos = 112,-146
postype = p1
ownpal = 1
stateno = 1036
persistent = 0

[State 4000, 3]
type = Projectile
trigger1 = Numhelper(1036)
trigger1 = helper(1036), movehit
trigger1 = helper(1036), Animelemtime(10)< 0
postype  = p2
projAnim = 1043
sparkno = -1
offset = 0,-30
projhitanim = -1
projremovetime = 5
attr = S, SP
animtype = Medium
guardflag = MA
p1stateno = 1041
p2stateno = 1051
p2facing = 1
numhits = 0
kill = 0

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,15
channel = 0
persistent = 0

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,7
persistent = 0




[State 0, 1]
type = ChangeState
trigger1 = time >=25
trigger1 = !Numhelper(1036)
trigger2 = time >= 50
value = 1033
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

;Web Throw
[Statedef 1032]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 1032
juggle = 4
sprpriority = 2


[State 0, 1]
type = Helper
trigger1 = AnimElem = 5
helpertype = normal
name = "Shadow"
ID = 1038
pos = 15,-188
postype = p1
ownpal = 1
stateno = 1038
persistent = 0

[State 4000, 3]
type = Projectile
trigger1 = Numhelper(1038)
trigger1 = helper(1038), movehit
trigger1 = helper(1038), Animelemtime(11)< 0
postype  = p2
projAnim = 1043
sparkno = -1
offset = 0,-30
projhitanim = -1
projremovetime = 5
attr = S, SP
animtype = Medium
guardflag = MA
p1stateno = 1042
p2stateno = 1052
p2facing = 1
numhits = 0
kill = 0

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,15
channel = 0
persistent = 0

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,7
persistent = 0




[State 0, 1]
type = ChangeState
trigger1 = time >=25
trigger1 = !Numhelper(1038)
trigger2 = time >= 50
value = 1033
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

[Statedef 1033]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
anim = 1033





[State 0, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

;Webbing
[Statedef 1034]
type    = A
movetype= A
physics = N
velset = 0,0
sprpriority = 3
anim = 1034




[State 0, 1]
type = BindToParent
trigger1 = Animelemtime(11) < 0
time = 1
;facing = 0
pos = 135+((Animelemno(0)-1)*16),-88
;ignorehitpause = 0
;persistent = 1




[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0


[State 0, 2]
type = VelSet
trigger1 = AnimElemtime(11)>=0
x = 8
;y = 
;ignorehitpause = 0
;persistent = 1





[State 210, 2]
type = HitDef
trigger1 = AnimElem = 10, < 2 
attr = S, SP
animtype  = Hard
damage    = 15,4
guardflag = MA
hitflag = MAF
pausetime = 0,5
sparkno = 3
sparkxy = -10,0
hitsound   = s0,4
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime = 20
guard.velocity = -6
airguard.velocity = -1,-6
air.hittime  = 25
ground.velocity = -7
down.velocity = -7
air.velocity = -2
yaccel = 0.55
sprpriority = 4
;fall = 1
;fall.recover = 0
envshake.time = 3
p2getp1state = 1



[State 210, 2]
type = HitDef
trigger1 = AnimElem = 11, >= 0 
attr = S, SP
animtype  = Hard
damage    = 15
guardflag = MA
hitflag = MAF
pausetime = 0,5
sparkno = 3
sparkxy = -10,0
hitsound   = s0,4
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime = 20
guard.velocity = -6
airguard.velocity = -1,-6
air.hittime  = 25
ground.velocity = -7
down.velocity = -7
air.velocity = -2
yaccel = 0.55
sprpriority = 4
;fall = 1
;fall.recover = 0
envshake.time = 3

[State 0, 1]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 0, 1]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1035
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, 1]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 0, 1]
type = ChangeState
trigger1 = moveguarded
trigger2 = movehit && Animelemtime(11) >=0
value = 1035
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1


[State 0, 1]
type = DestroySelf
trigger1 = FrontEdgeBodyDist < -220  || time = 55
trigger2 = movehit && Animelemtime(11) <0

[Statedef 1035]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 1035
sprpriority = 3



[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 2601, Fade In]
type = PalFX
trigger1 = 1
mul = 255-((StateTime)*12),255-((StateTime)*12),255-((StateTime)*12)
time = 5

[State 0, 1]
type = DestroySelf
trigger1 = Animtime = 0
;ignorehitpause = 0
;persistent = 1

;Webbing
[Statedef 1036]
type    = A
movetype= A
physics = N
velset = 0,0
sprpriority = 1
anim = 1036




[State 0, 1]
type = BindToParent
trigger1 = Animelemtime(10) < 0
time = 1
;facing = 0
pos = 112+((Animelemno(0)-1)*12),-146-((Animelemno(0)-1)*10)
;ignorehitpause = 0
;persistent = 1




[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0


[State 0, 2]
type = VelSet
trigger1 = AnimElemtime(10)>=0
x = 6
y = -5
;ignorehitpause = 0
;persistent = 1





[State 210, 2]
type = HitDef
trigger1 = AnimElem = 9, < 2 
attr = S, HA
animtype  = Hard
damage    = 15,4
guardflag = MA
hitflag = MAF
pausetime = 0,5
sparkno = 3
sparkxy = -10,0
hitsound   = s0,4
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime = 20
guard.velocity = -6
airguard.velocity = -3,-6
air.hittime  = 25
ground.velocity = -7
down.velocity = -7
air.velocity = -4,-4
yaccel = 0.55
sprpriority = 4
;fall = 1
;fall.recover = 0
envshake.time = 3
;p2stateno = 3018
kill = 0

[State 0, 1]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 0, 1]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1037
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, 1]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 0, 1]
type = ChangeState
trigger1 = moveguarded
trigger2 = movehit && Animelemtime(10) >= 0
value = 1037
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1


[State 0, 1]
type = DestroySelf
trigger1 = Screenpos Y <= -200
trigger2 = movehit && Animelemtime(10) <0


[Statedef 1037]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 1037
sprpriority = 3



[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 2601, Fade In]
type = PalFX
trigger1 = 1
mul = 255-((StateTime)*12),255-((StateTime)*12),255-((StateTime)*12)
time = 5

[State 0, 1]
type = DestroySelf
trigger1 = Animtime = 0
;ignorehitpause = 0
;persistent = 1

;Webbing
[Statedef 1038]
type    = A
movetype= A
physics = N
velset = 0,0
sprpriority = 1
anim = 1038




[State 0, 1]
type = BindToParent
trigger1 = Animelemtime(11) < 0
time = 1
;facing = 0
pos = 15,-188-((Animelemno(0)-1)*16)
;ignorehitpause = 0
;persistent = 1




[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0


[State 0, 2]
type = VelSet
trigger1 = AnimElemtime(11)>=0
y = -8
;y = 
;ignorehitpause = 0
;persistent = 1





[State 210, 2]
type = HitDef
trigger1 = AnimElem = 10, < 2 
attr = S, HA
animtype  = Hard
damage    = 15,4
guardflag = MA
hitflag = MAF
pausetime = 0,5
sparkno = 3
sparkxy = -10,0
hitsound   = s0,4
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime = 20
guard.velocity = -6
airguard.velocity = -1,-6
air.hittime  = 25
ground.velocity = -7
down.velocity = -7
air.velocity = -2,-4
yaccel = 0.55
sprpriority = 4
;fall = 1
;fall.recover = 0
envshake.time = 3
;p2stateno = 3018
kill = 0

[State 0, 1]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 0, 1]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1039
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, 1]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 0, 1]
type = ChangeState
trigger1 = moveguarded
trigger2 = movehit && Animelemtime(11) >=0
value = 1039
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1


[State 0, 1]
type = DestroySelf
trigger1 = Screenpos Y <= -200
trigger2 = movehit && Animelemtime(11) <0

[Statedef 1039]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 1039
sprpriority = 3



[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 2601, Fade In]
type = PalFX
trigger1 = 1
mul = 255-((StateTime)*12),255-((StateTime)*12),255-((StateTime)*12)
time = 5

[State 0, 1]
type = DestroySelf
trigger1 = Animtime = 0
;ignorehitpause = 0
;persistent = 1



;Slam
[Statedef 1040]
type    = S
movetype= A
physics = N
anim = 1040
poweradd = 60
sprpriority = 2



[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 244, -89
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 244, -69
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = 240, -51
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 4
pos = 234, -41
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 5
pos = 224, -27
time = 16


[State 0, 1]
type = Turn
trigger1 = AnimElem = 6
;ignorehitpause = 0
;persistent = 1



[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 6
pos = -165, -12
time = 16



[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 7
pos = -159, -8
time = 6


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 8
pos = -132, 3
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 9
pos = -120, -7
time = 6


[State 0, 1]
type = TargetState
trigger1 = Animtime = 0
value = 1055


[State 810, State End]
type = ChangeState
trigger1 = Animtime = 0
value = 1045

;Slam
[Statedef 1041]
type    = S
movetype= A
physics = N
anim = 1041
poweradd = 60
sprpriority = 2



[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 149, -181
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 177, -175
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = 216, -155
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 4
pos = 234, -41
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 5
pos = 231, -129
time = 16


[State 0, 1]
type = Turn
trigger1 = AnimElem = 7
;ignorehitpause = 0
;persistent = 1



[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 6
pos = 211, -82
time = 16



[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 7
pos = -78, -40
time = 6


[State 0, 1]
type = TargetState
trigger1 = Animtime = 0
value = 1055


[State 810, State End]
type = ChangeState
trigger1 = Animtime = 0
value = 1045

;Slam
[Statedef 1042]
type    = S
movetype= A
physics = N
anim = 1042
poweradd = 60
sprpriority = 2



[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 18, -231
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 30, -240
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = 78, -233
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 4
pos = 87, -245
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 5
pos = 100, -230
time = 16


[State 0, 1]
type = Turn
trigger1 = AnimElem = 10
;ignorehitpause = 0
;persistent = 1



[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 6
pos = 137, -212
time = 16



[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 7
pos = 159, -189
time = 6


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 8
pos = 160, -160
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 9
pos = 148, -122
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 10
pos = -103, -53
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 11
pos = -77, -40
time = 6

[State 0, 1]
type = TargetState
trigger1 = Animtime = 0
value = 1055


[State 810, State End]
type = ChangeState
trigger1 = Animtime = 0
value = 1045

;Waste the Creep
[Statedef 1045]
type    = S
movetype= A
physics = N
anim = 1045
poweradd = 60
sprpriority = 2

[State 1030, 1]
type = VarSet
trigger1 = time = 0
v = 0
value = 0

[State 1030, 1]
type = VarAdd
trigger1 = command = "x" || command = "y" || command = "z"
v = 0
value = 1


[State 810, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 12 || AnimElem = 31
value = 5,6



[State 0, 1]
type = TargetLifeAdd
trigger1 =  Animelem = 12 || AnimElem = 31
value = -35
kill = 0


[State 192, 0]
type = GameMakeAnim
trigger1 = Animelem = 12 || AnimElem = 31
pos = floor(P2Dist X),0
value = 62

[State 1486, 3]
type = EnvShake
trigger1 = Animelem = 12 || AnimElem = 31
time = 25
ampl = -3
freq = 90
phase = 90

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = -65, -39
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = -80, -50
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = -106, -70
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 4
pos = -115, -84
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 5
pos = -130, -128
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 6
pos = 135, -125
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 7
pos = 155, -117
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 8
pos = 217, -85
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 9
pos = 229, -66
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 10
pos = 237, -49
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 11
pos = 243, -5
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 12
pos = 243, 5
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 13
pos = 235, 33
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 14
pos = 213, -16
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 15
pos = 210, -7
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 16
pos = 206, -3
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 17
pos = 137, -23
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 18
pos = 123, -19
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 19
pos = 130, -23
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 20
pos = 119, -23
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 21
pos = 125, -29
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 22
pos =171, -54
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 23
pos = 192, -90
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 24
pos = 196, -147
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 25
pos = 31, -127
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 26
pos = 0, -147
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 27
pos = -23, -149
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 28
pos = -93, -153
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 29
pos = -192, -91
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 30
pos = -198, -56
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 31
pos = -199, -12
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 32
pos = -177, 25
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 33
pos = -168, 44
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 34
pos = -186, -6
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 35
pos = -165, 13
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 36
pos = -182, -3
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 37
pos = -206, -25
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 38
pos = -217, -43
time = 6

[State 0, 1]
type = TargetState
trigger1 = Animtime = 0
value = ifelse(Var(0)>9,1056,1057)


[State 810, State End]
type = ChangeState
trigger1 = Animtime = 0
value = ifelse(Var(0)>9,1046,1047)


;Waste the Creep
[Statedef 1046]
type    = S
movetype= A
physics = N
anim = 1046
sprpriority = 2

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 12 || AnimElem = 31
value = 5,6

[State 0, 1]
type = TargetLifeAdd
trigger1 =  Animelem = 12 || AnimElem = 31
value = -20
kill = 0


[State 192, 0]
type = GameMakeAnim
trigger1 = Animelem = 12 || AnimElem = 31
pos = floor(P2Dist X),0
value = 62

[State 1486, 3]
type = EnvShake
trigger1 = Animelem = 12 || AnimElem = 31
time = 25
ampl = -3
freq = 90
phase = 90

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = -65, -39
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = -80, -50
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = -106, -70
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 4
pos = -115, -84
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 5
pos = -130, -128
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 6
pos = 135, -125
time = 16


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 7
pos = 155, -117
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 8
pos = 217, -85
time = 16

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 9
pos = 229, -66
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 10
pos = 237, -49
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 11
pos = 243, -5
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 12
pos = 243, 5
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 13
pos = 235, 33
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 14
pos = 213, -16
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 15
pos = 210, -7
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 16
pos = 206, -3
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 17
pos = 137, -23
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 18
pos = 123, -19
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 19
pos = 130, -23
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 20
pos = 119, -23
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 21
pos = 125, -29
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 22
pos =171, -54
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 23
pos = 192, -90
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 24
pos = 196, -147
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 25
pos = 31, -127
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 26
pos = 0, -147
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 27
pos = -23, -149
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 28
pos = -93, -153
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 29
pos = -192, -91
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 30
pos = -198, -56
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 31
pos = -199, -12
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 32
pos = -177, 25
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 33
pos = -168, 44
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 34
pos = -186, -6
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 35
pos = -165, 13
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 36
pos = -182, -3
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 37
pos = -206, -25
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 38
pos = -217, -43
time = 6

[State 0, 1]
type = TargetState
trigger1 = Animtime = 0
value = 1057


[State 810, State End]
type = ChangeState
trigger1 = Animtime = 0
value = 1047

;Slam
[Statedef 1047]
type    = S
movetype= A
physics = N
anim = 1047
sprpriority = 2

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Animelem = 3
value = 2,1



[State 0, 1]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = Explod
trigger1 = AnimElem = 3
anim = 1048
ID = 1048
pos = 0,-55
postype = p2
bindtime = 18
ownpal = 1
removeongethit = 1
ignorehitpause = 1
sprpriority = 5
velocity = 1,0
facing = -1


[State 0, 1]
type = TargetLifeAdd
trigger1 =  Animelem = 3
value = -85


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = -183, -70
time = 1

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 18, -78
time = 1

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = 89, -35
time = 1

[State 0, 1]
type = ChangeState
trigger1 = animtime = 0 && backedgebodydist <= -50
value = 3003




[State 0, 1]
type = ChangeState
trigger1 = animtime = 0 && backedgebodydist > -50
value = 0
ctrl = 1


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Grabbed
[Statedef 1050]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1050

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0
;ignorehitpause = 0
;persistent = 1

;Grabbed
[Statedef 1051]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1051

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0
;ignorehitpause = 0
;persistent = 1

;Grabbed
[Statedef 1052]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1052

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0
;ignorehitpause = 0
;persistent = 1


;Grabbed
[Statedef 1055]
type    = S
movetype= H
physics = N
sprpriority = 1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1055

[State 0, 1]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0
;ignorehitpause = 0
;persistent = 1



;Grabbed
[Statedef 1056]
type    = S
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1056

[State 0, 1]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = SelfState
trigger1 =  time > 2 && enemy, stateno !=1046
value = 5000
ctrl = 1


; Throw (hit by, into air)
[Statedef 1057]
type    = A
movetype= H ;Get hit
physics = N
ctrl = 0
sprpriority = 3

[State 6003, 1]
type = PosFreeze
trigger1 = BackEdgeBodyDist <= 0 && Anim =ifelse(SelfAnimExist(5035),5035,5050)
value = 4
persistent = 0

[State 1027, Spark]
type = Explod
trigger1 = BackEdgeBodyDist <= 0 && Anim =ifelse(SelfAnimExist(5035),5035,5050)
anim = F72
pos = 0, floor (screenpos y) - 50
postype = back
sprpriority = 3
persistent = 0



[State 0, 1]
type = PlaySnd
trigger1 = BackEdgeBodyDist <= 0 && Anim =ifelse(SelfAnimExist(5035),5035,5050)
value = F7,0
volume = 255
persistent = 0



[State 0, 1]
type = Turn
trigger1 = !time
;ignorehitpause = 0
;persistent = 1



[State 1486, 2] ;Gravity
type = VelAdd
trigger1 = Time = 13
x = -22
y = -6



[State 1485, 1]
type = ChangeAnim2
trigger1 = !Time 
value = 1057

[State 1485, 1]
type = ChangeAnim
trigger1 = time = 12
value = ifelse(SelfAnimExist(5035),5035,5050)

[State 1486, 2] ;Gravity
type = VelAdd
trigger1 = Time > 13
y = .49



[State 1486, 5] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground



;Venom Lunge
[Statedef 2000]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
poweradd = 50
anim = 2000

[State 1030, 1]
type = VarSet
trigger1 = time = 0
v = 0
value = 0

[State 1030, 1]
type = VarAdd
trigger1 = command = "x" || command = "y" || command = "z"
v = 0
value = 1

[State 1030, 2]
type = Width
trigger1 = 1
value = 85, 0


[State 1030, 3]
type = VelSet
trigger1 = AnimElem = 3
x = 4

[State 1030, 3]
type = VelSet
trigger1 = AnimElem = 6
x = 3

[State 1030, 3]
type = VelSet
trigger1 = AnimElem = 9
x = 2

[State 1030, 3]
type = VelSet
trigger1 = AnimElem = 12
x = 1

[State 1030, 3]
type = VelSet
trigger1 = AnimElem = 15
x = 0


[State 1030, 4]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
trigger4 = AnimElem = 12
trigger5 = AnimElem = 15
trigger6 = AnimElem = 18
trigger7 = AnimElem = 21
attr = S, SA
hitflag = MAF
guardflag = MA
Animtype = Hard
damage = 15, 4
pausetime = 0,6
sparkxy = -5, -113
hitsound = s5,7
guardsound = 6,0
ground.type = high
ground.hittime = 20
air.hittime = 20
ground.velocity = -3
air.velocity = -2, -9
guard.velocity = -8
ground.cornerpush.veloff = -1

[State 1030, 5]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2, 2
channel = 0

[State 1030, 5]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
trigger4 = AnimElem = 12
trigger5 = AnimElem = 15
trigger6 = AnimElem = 18
trigger7 = AnimElem = 21
value = 0, 2



[State 1030, 6]
type = ChangeState
trigger1 = AnimElem = 6 && Var(0) < 3
trigger2 = AnimElem= 9 && Var(0) < 5
trigger3 = AnimElem= 12 && Var(0) < 7
trigger4 = AnimElem = 15 && Var(0) < 9
trigger5 = AnimElem= 18 && Var(0) < 12
trigger6 = AnimElem= 21 && Var(0) < 14
trigger7 = AnimTime = 0
value = 2001 

;Final Bite
[Statedef 2001]
type    = s
movetype= A
physics = N
ctrl = 0
velset = 0, 0
anim = 2001

[State 600, 1]
type = PlaySnd
trigger1 = Time = 1
value = 0, 2

[State 610, 3]
type = HitDef
trigger1 = Time = 0
attr = S, SA
damage = 20,0
guardflag = MA
priority = 4
pausetime = 6,6
sparkno = 1
sparkxy = -10,-55
hitsound   = s5,7
guardsound = 6,0
animtype = Back
ground.type = High
ground.slidetime = 25
ground.hittime  = 25
air.hittime = 25
ground.velocity = -18,-9
air.velocity = -18,-9
fall.yvelocity = 0
fall.envshake.time = 5
yaccel = .55
ground.cornerpush.veloff = -1

[State 210, 3]
type = ChangeAnim
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(3) < 0
trigger1 = movecontact && !Var(55)
ignorehitpause = 1
persistent = 0
value = 2001
elem = Animelemno(0) + 1


[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Venom Bite
[Statedef 2010]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
poweradd = 50
anim = 2010

[State 1030, 1]
type = VarSet
trigger1 = time = 0 
trigger2 = AnimElem = 3,1
v = 0
value = 0
persistent = 1

[State 1030, 1]
type = VarAdd
trigger1 = command = "a" || command = "b" || command = "c"
v = 0
value = 1
ignorehitpause = 1


[State 1030, 4]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
attr = S, SA
hitflag = MAF
guardflag = MA
Animtype = Up
damage = 20, 4
pausetime = 1,2
sparkxy = -5, -113
hitsound = s5,7
guardsound = 6,0
ground.type = low
ground.hittime = 20
air.hittime = 20
ground.velocity = -1,-7
air.velocity = -2, -7
guard.velocity = -8
ground.cornerpush.veloff = -1
yaccel = .55

[State 1030, 5]
type = PlaySnd
trigger1 = AnimElem = 4
value = 2, 2
channel = 0

[State 1030, 5]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
value = 0, 2

[State 210, 3]
type = ChangeAnim
trigger1 = AnimElem= 15,1
trigger1 = var(0) >= 2
value = 2010
elem = 3

[State 1030, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;Venom Dive
[Statedef 2020]
type = A
physics = N
movetype = A
ctrl = 0
velset = 4, 6
poweradd = 50
anim = 2020


[State 1030, 4]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
attr = A, SA
hitflag = MAF
guardflag = MA
Animtype = Hard
damage = 20, 4
pausetime = 6,6
sparkxy = -5, -113
hitsound = s5,7
guardsound = 6,0
ground.type = low
ground.hittime = 20
air.hittime = 20
ground.velocity = -6
air.velocity = -2, -7
guard.velocity = -8
ground.cornerpush.veloff = -1
yaccel = .55

[State 1030, 5]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2, 1
channel = 0

[State 1030, 5]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
value = 0, 2


[State 1030, 6]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 2021

; Land
[Statedef 2021]
type    = S
movetype= I
physics = S
sprpriority = 1
velset = 0,0
anim = 2021


[State 192, 0]; Too lazy to rip the actual ground shock
type = GameMakeAnim
trigger1 = time = 0
pos = -5,0
value = 60

[State 1052, 1] ;Reset y-position to ground level
type = PosSet
trigger1 = Time = 0
y = 0

[State 1052, 2] ;Play a sound for landing
type = PlaySnd
trigger1 = Time = 0
value = 55, 2

[State 1052, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;================================================================
;SUPERS


;Death Bite
[Statedef 3000]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3000
juggle = 4
sprpriority = 2

[State 9999, 0]
type = Helper
trigger1 = AnimElem = 3
pos = -28, -95
postype = p1
stateno = 9999
helpertype = normal
name = "Super Trigger"
keyctrl = 0
ownpal = 1
pausemovetime = 999999

[State 3900, 1]
type = Explod
trigger1 = AnimElem = 3,3 
anim = 9995
pos = 0,0
postype = back
supermove = 1
facing = 1 
bindtime = 700
sprpriority = -3
removetime = 800
scale = 1,1
removeongethit = 1
ID = 998
pausemovetime = 9999999
ownpal = 1


[State 0, 1]
type = VarSet
trigger1 = !time
v =  0
value = 0
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = VarSet
trigger1 = NumHelper(3002)
trigger1 = helper(3002), movehit
v =  0
value = 1
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = ScreenBound
trigger1 = var(0)
value = 0
;movecamera = 0,0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = Helper
trigger1 = AnimElem = 2,3
helpertype = normal
name = "Shadow"
ID = 3001
pos = 0,0
postype = p1
ownpal = 1
stateno = 3001
persistent = 0

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,6
channel = 0
persistent = 0

[State 0, 1]
type = Helper
trigger1 = AnimElem = 6
helpertype = normal
name = "Symbiote"
ID = 3002
pos = 80,0
postype = p1
ownpal = 1
stateno = 3002
persistent = 0

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 4 
attr = S, HA
animtype  = Up
damage    = 15,4
guardflag = MA
hitflag = MAFD
pausetime = 0,3
sparkno = 3
sparkxy = -10,-70
hitsound   = s5,7
guardsound = 6,0
ground.type = High
guard.velocity = -9
airguard.velocity = -1,-6
air.hittime  = 25
ground.velocity = -5,-11.5
down.velocity = -5, -11.5
air.velocity = -2,-5.5
yaccel = 0.55
sprpriority = 4
fall = 1
fall.recover = 0
envshake.time = 3


[State 200, 6]
type = RemoveExplod
trigger1 = time >=25 && backedgebodydist > 0
trigger1 = !Numhelper(3001)
trigger2 = time >=25 && backedgebodydist <= 0
trigger2 = !Numhelper(3002)
ID = 998


[State 0, 1]
type = ChangeState
trigger1 = time >=25 && backedgebodydist > -50
trigger1 = !Numhelper(3001)
value = 1023
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = ChangeState
trigger1 = time >=25 && backedgebodydist <= -50
trigger1 = !Numhelper(3002)
value = 3003
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

;Venom Rush Shadow
[Statedef 3001]
type    = A
movetype= I
physics = N
velset = 7,0
anim = 1024
sprpriority = -2

[State 0, 1]
type = Explod
trigger1 = !time
anim = 1025
ID = 1025
pos = 0,0
postype = p1
bindtime = ifelse(facing =-1,-1,1)
ownpal = 1
removeongethit = 1
ignorehitpause = 1
sprpriority = -2
;persistent = 1
under = 1



[State 0, 1]
type = ModifyExplod
trigger1 = 1
ID = 1025
scale = (ParentDist X), 1
sprpriority = -1

[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 0, 1]
type = RemoveExplod
trigger1 = parent, stateno !=[3000,3003]
ID = 1025
;ignorehitpause = 0
;persistent = 1


[State 0, 1]
type = DestroySelf
trigger1 = parent, stateno !=[3000,3003]



[State 0, 1]
type = ChangeState
trigger1 = time >= 30 && parent, Numhelper(3002) = 0
value = 3004
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1



;Venom Rush Symbiote
[Statedef 3002]
type    = A
movetype= A
physics = N
velset = 0,0
sprpriority = 4


[State 0, 1]
type = ChangeAnim
trigger1 = !time && Anim !=1026
value = 1026
;elem = 
;ignorehitpause = 0
;persistent = 1

[State 0, 1];Chain Reaction
type = Helper
trigger1 = time = 18 && frontedgedist >= 0 && root, time < 150
helpertype = normal
name = "Symbiote"
ID = 3002
pos = 98,0
postype = p1
ownpal = 1
stateno = 3002

[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0


[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 0, 6



[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3 
attr = S, HA
animtype  = Up
damage    = 15,4
guardflag = MA
hitflag = MAFD
pausetime = 0,3
sparkno = 3
sparkxy = -10,-70
hitsound   = s5,7
guardsound = 6,0
ground.type = High
guard.velocity = -7
airguard.velocity = -1,-6
air.hittime  = 25
ground.velocity = 0,-11.5
down.velocity = 0, -11.5
air.velocity = -2,-5.5
yaccel = 0.55
sprpriority = 4
fall = 1
fall.recover = 0
envshake.time = 3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
ground.slidetime = 18
ground.hittime = 18

[State 210, 2]
type = HitDef
trigger1 =  AnimElem = 6 
attr = S, HA
animtype  = Hard
damage    = 20,4
guardflag = MA
pausetime = 0,12
sparkno = 3
sparkxy = -10,-70
hitsound   = s5,7
guardsound = 6,0
ground.type = High
guard.velocity = -7
airguard.velocity = -1,-6
air.hittime  = 25
ground.velocity = -2,-2
air.velocity = -2,-2
yaccel = 0.55
sprpriority = 4
fall = 1
fall.recover = 0
envshake.time = 3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 9
attr = S, NA
animtype  = Hard
damage    = 20,4
guardflag = MA
pausetime = 0,2
sparkno = 3
sparkxy = -10,-70
hitsound   = s5,7
guardsound = 6,0
ground.type = High
guard.velocity = -9
airguard.velocity = -1,-6
air.hittime  = 25
ground.velocity = -10,-3.3
air.velocity = -10,-3.3
yaccel = 0.55
sprpriority = 4
fall = 1
fall.recover = 0
envshake.time = 3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
ground.slidetime = 18
ground.hittime = 18

[State 0, 1]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 0, 1]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 1026
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 0, 1]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1


[State 0, 1]
type = DestroySelf
trigger1 = root, stateno !=3000
trigger2 = animtime=0

; If Off-screen
[Statedef 3003] 
type = S
movetype = I
physics = N
anim = 0
ctrl = 0
velset = 0,0

[State 9995,2]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 9995, 2]
type = PosAdd
trigger1 = BackEdgeDist < -100
x = -100 - BackEdgeDist

[State 742, Dash Onscreen!]
type = ChangeAnim
trigger1 = Time = 50
value = 100

[state 100, 2]
type = sprpriority
trigger1 = 1
value = 1

[State 100, 4]
type = Velset
trigger1 = Time = 50
x = 8

[State 100, 5]
type = ChangeState
trigger1 = BackEdgeDist > 60
value = 101


;Venom Rush Shadow
[Statedef 3004]
type    = A
movetype= I
physics = N
velset = 0,0
sprpriority = -2

[State 0, 1]
type = ModifyExplod
trigger1 = 1
ID = 1025
scale = (ParentDist X), 1
sprpriority = -1



[State 0, 1]
type = VelSet
trigger1 = !time
x = (ParentDist X)/7
;y = 
;ignorehitpause = 0
;persistent = 1

[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 0, 1]
type = RemoveExplod
trigger1 = time >= 7
ID = 1025
;ignorehitpause = 0
;persistent = 1


[State 0, 1]
type = DestroySelf
trigger1 = time >=7

;Venom Web Start
[Statedef 3010]
type = S
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 3010

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,5
channel = 0
persistent = 0

[State 0, 1]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
ignorehitpause = 1
;persistent = 1



[State 0, 1]
type = PlayerPush
trigger1 = AnimElem = 3, >=0
value = 0 
;ignorehitpause = 0
;persistent = 1



[State 1, 9]
type = PalFX
trigger1 = AnimElemtime(2) < 6
trigger1 = time%2 = 0
time = 1
add = 20,20,20
mul = 800, 800,800
ignorehitpause = 1



[State 0,1]
type = StateTypeSet
trigger1 = AnimElem = 3
statetype = A


[State 0, ]
type = VelSet
trigger1 = AnimElem = 3
x = ((-1*Facing)*Pos X)/15
y = (Pos Y-55)/15
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = ChangeState
trigger1 = time = 31
value = 3011

[Statedef 3011]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 3011
juggle = 4
sprpriority = 2

[State 0, 1]
type = PlayerPush
trigger1 = 1
value = 0 
;ignorehitpause = 0
;persistent = 1

[State 9999, 0]
type = Helper
trigger1 = !time
pos = 6, -88
postype = p1
stateno = 9999
helpertype = normal
name = "Super Trigger"
keyctrl = 0
ownpal = 1
pausemovetime = 999999

[State 3900, 1]
type = Explod
trigger1 = time = 2
anim = 9995
pos = 0,0
postype = back
supermove = 1
facing = 1 
bindtime = 700
sprpriority = -3
removetime = 800
scale = 1,1
removeongethit = 1
ID = 998
pausemovetime = 9999999
ownpal = 1


[State 0, 1]
type = VarSet
trigger1 = !time
v =  1
value = 0
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = VarSet
trigger1 = NumHelper(3015) 
trigger1 = helper(3015), movehit
v =  1
value = 1
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = Helper
trigger1 = AnimElem = 3
helpertype = normal
name = "Web"
ID = 3015
pos = 0,-83
postype = p1
ownpal = 1
stateno = 3015
persistent = 0

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,12
channel = 0
persistent = 0

[State 200, 6]
type = RemoveExplod
trigger1 = time >=30 && Var(1) = 0
ID = 998


[State 0, 1]
type = ChangeState
trigger1 = time >=30 && Var(1) = 0
value = 50
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = ChangeState
trigger1 = time >=30 && Var(1) = 1
value = 3012
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

[Statedef 3012]
type = A
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 3012

[State 0, 1]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = Turn
trigger1 = P2Dist X < 0 && !time
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PlayerPush
trigger1 = 1
value = 0 
;ignorehitpause = 0
;persistent = 1
[State 0, 1]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
ignorehitpause = 1
;persistent = 1

[State 0, ]
type = VelSet
trigger1 = time = 1
x = (P2Dist X - 50)/8
y = (P2Dist Y)/8
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = ChangeState
trigger1 = time = 9
value = 3013


[Statedef 3013]
type = A
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 3013


[State 0, 1]
type = Helper
trigger1 = AnimElem = 25
helpertype = normal
name = "Venom Fang FX"
ID = 3017
pos = 0,0
postype = p1
ownpal = 1
stateno = 3017

[State 0, 1]
type = ScreenBound
trigger1 = AnimElemtime(26) < 0
value = 1
movecamera = 0,0
;ignorehitpause = 0
;persistent = 1


[State 0, ]
type = VelSet
trigger1 = AnimElem = 25
x = 6
y = -4
;ignorehitpause = 0
;persistent = 1


[State 0, 1]
type = VelAdd
trigger1 = Animelemtime(25) >= 0
y = .61
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 25
value = 2,1
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
trigger1 = AnimElem = 2 || AnimElem = 4 || AnimElem = 6 || AnimElem = 8 
trigger2 = AnimElem = 10 || AnimElem = 14 
value = 2,0
;volume = 0
channel = 0


[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 2 || AnimElem = 4 || AnimElem = 6 || AnimElem = 8 
trigger2 = AnimElem = 10 || AnimElem = 14 || AnimElem = 16
animtype = Back
attr = A, SA
damage    = 25, 7
getpower  = 0
givepower = 10
guardflag = MA
pausetime = 7,8
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,7
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 25
ground.Velocity = -5,-10
air.Velocity = -5, -10
air.hittime = 25
yaccel = 0.6
p2stateno = 3019
envshake.time = 5
kill = 0

[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 18
animtype = Back
attr = A, SA
damage    = 25, 7
getpower  = 0
givepower = 10
guardflag = MA
pausetime = 0,2
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,7
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 25
ground.Velocity = 0,-6
air.Velocity = 0, -6
air.hittime = 45
kill = 0

[State 1061, 4]
type = HitDef
trigger1 = AnimElem = 25,0 || AnimElem = 25,1 || AnimElem = 26 
animtype = Back
attr = A, SA
damage    = 40, 7
getpower  = 20
givepower = 10
guardflag = MA
pausetime = 7,7
sparkxy = -5,-62
sparkno = 3
hitsound   = s5,7
guardsound = 6,0
ground.type = High
air.type = Low
ground.slidetime = 12
ground.hittime  = 25
ground.Velocity = -15,-6
air.Velocity = -15, -6
air.hittime = 25
yaccel = 0.6
envshake.time = 5
fall= 1
fall.recover = 0

[State 200, 6]
type = RemoveExplod
trigger1 = Vel y > 0 && Pos Y >=0
ID = 998

[State 0, 1]
type = ChangeState
trigger1 = Vel y > 0 && Pos Y >=0
value = 1009
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1

;Web
[Statedef 3015]
type    = A
movetype= A
physics = N
velset = 0,0
sprpriority = 4
anim = 3016


[State 0, 1]
type = Helper
trigger1 = !NumHelper(898) && enemy, stateno = 3018 
helpertype = normal
name = "Coccoon"
ID = 898
pos = 0,0
postype = p2
ownpal = 1
stateno = 898



[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0


[State 210, 1]
type = PlaySnd
trigger1 = !time
value = 0, 3


[State 0, 1]
type = Explod
trigger1 = !time
anim = 3014
ID = 3014
pos = 0,0
postype = p1
bindtime = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
sprpriority = -1
;persistent = 1

[State 0, 1]
type = Explod
trigger1 = !time
anim = 3014
ID = 3014
pos = 0,0
postype = p1
bindtime = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
sprpriority = -1
;persistent = 1
facing = -1

[State 0, 1]
type = Explod
trigger1 = !time
anim = 3014
ID = 3014
pos = 0,0
postype = p1
bindtime = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
sprpriority = -1
;persistent = 1
vfacing = -1

[State 0, 1]
type = Explod
trigger1 = !time
anim = 3014
ID = 3014
pos = 0,0
postype = p1
bindtime = 1
ownpal = 1
removeongethit = 1
ignorehitpause = 1
sprpriority = -1
;persistent = 1
facing=-1
vfacing = -1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 2 
attr = S, HA
animtype  = Up
damage    = 15,4
guardflag = MA
hitflag = MAF
pausetime = 0,5
sparkno = 3
sparkxy = -10,floor(p2dist Y)-70
hitsound   = s0,4
guardsound = 6,0
ground.type = High
ground.slidetime = 20
ground.hittime = 20
guard.velocity = -6
airguard.velocity = -1,-6
air.hittime  = 25
ground.velocity = -7
down.velocity = -7
air.velocity = -2
yaccel = 0.55
sprpriority = 4
fall = 1
fall.recover = 0
envshake.time = 3
p2stateno = 3018
kill = 0

[State 0, 1]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1



[State 0, 1]
type = ChangeState
trigger1 = time >= 20 && !movehit
trigger2 = parent, stateno = 3013 && parent, AnimElemtime(25) > 0
value = 3016
;ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = RemoveExplod
trigger1 = root, stateno !=[3011,3013]
ID = 3014
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = DestroySelf
trigger1 = root, stateno !=[3011,3013]

[Statedef 3016]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 9997
sprpriority = 4



[State 0, 1]
type = RemoveExplod
trigger1 = !time 
ID = 3014
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = Explod
trigger1 = !time
anim = 3015
ID = 3015
pos = 0,0
postype = p1
bindtime = 1
removeongethit = 1
ignorehitpause = 1
sprpriority = -1
;persistent = 1

[State 0, 1]
type = Explod
trigger1 = !time
anim = 3015
ID = 3015
pos = 0,0
postype = p1
bindtime = 1
removeongethit = 1
ignorehitpause = 1
sprpriority = -1
;persistent = 1
facing = -1

[State 0, 1]
type = Explod
trigger1 = !time
anim = 3015
ID = 3015
pos = 0,0
postype = p1
bindtime = 1
removeongethit = 1
ignorehitpause = 1
sprpriority = -1
;persistent = 1
vfacing = -1

[State 0, 1]
type = Explod
trigger1 = !time
anim = 3015
ID = 3015
pos = 0,0
postype = p1
bindtime = 1
removeongethit = 1
ignorehitpause = 1
sprpriority = -1
;persistent = 1
facing=-1
vfacing = -1



[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 2601, Fade In]
type = PalFX
trigger1 = 1
mul = 255-((StateTime)*10),255-((StateTime)*10),255-((StateTime)*10)
time = 5

[State 0, 1]
type = DestroySelf
trigger1 = time = 20
;ignorehitpause = 0
;persistent = 1

;Venom Fang FX
[Statedef 3017]
type    = A
movetype= I
physics = N
velset = 0,0
anim = 1016
sprpriority = 4




[State 0, 1]
type = ChangeAnim
triggerall = anim !=1016
trigger1 = parent, anim = 3013 
trigger1 = parent, AnimElem = 25
value = 1016

[State 0, 1]
type = ChangeAnim
triggerall = anim !=1017
trigger1 = parent, anim = 3013 
trigger1 = parent, AnimElem = 26
value = 1017

[State 0, 1]
type = ChangeAnim
triggerall = anim !=1018
trigger1 = parent, anim = 3013 
trigger1 = parent, AnimElem = 27
value = 1018


[State 0, 1]
type = BindToParent
trigger1 = 1
time = 1
facing = 0
pos = 0,0
;ignorehitpause = 0
;persistent = 1

[State 4001, 2]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 0, 1]
type = DestroySelf
trigger1 = parent, stateno !=3013



[Statedef 3018]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3018



[State 0, 1]
type = AssertSpecial
trigger1 = time > 4
flag = invisible
;flag2 = 
;flag3 = 
;ignorehitpause = 0
;persistent = 1



[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
;ignorehitpause = 0
;persistent = 1



[State 0, ]
type = SelfState
trigger1 = time = 85
value = 5050


;Stuck in Combo
[Statedef 3019]
type    = A
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 0, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 3019

[State 0, 2]
type = HitFallSet
trigger1 = Time = 0
value = 0

[State 0, 3]
type = SelfState
trigger1 = time >= 40
value = 5000

;Mode Switch
[Statedef 3020]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 3020
juggle = 4
sprpriority = 2

[State 9999, 0]
type = Helper
trigger1 = AnimElem = 4
pos = -28, -95
postype = p1
stateno = 9999
helpertype = normal
name = "Super Trigger"
keyctrl = 0
ownpal = 1
pausemovetime = 999999

[State 0, 1]
type = VarSet
trigger1 = AnimElem = 4
v =  55
value = ifelse(Var(55),0,1)
;ignorehitpause = 0
;persistent = 1

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 2
channel = 0



[State 0, 1]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1
;anim = 
;ignorehitpause = 0
;persistent = 1




;Dash
[Statedef 100]
type    = S
physics = N
velset = 7,0
ctrl = 1

[State 105 , 1]
type = AssertSpecial
trigger1 = 1
flag=NoWalk

[State 105 , 1]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 100
value = 100

[State 105 , 2]
type = ChangeState
trigger1 = time = 20
value = 101

[Statedef 101]
type    = S
physics = N

[State 410, 1]
type = VelSet
trigger1 = !time
x = 0


[State 105 , 1]
type = AssertSpecial
trigger1 = 1
flag=NoWalk

[State 105 , 1]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 101
value = 101


[State 105 , 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 102]
type    = A
physics = N
velset = 0,-5
ctrl = 0
anim = 102



[State 0, 1]
type = PlaySnd
trigger1 = !time 
value = 5, 10
volume = 0




[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2,1
volume = 255
channel = 0


[State 0, 1]
type = VelAdd
trigger1 = Animelemtime(2) < 9
y = .45 
;ignorehitpause = 0
;persistent = 1

[State 0, 2]
type = VelAdd
trigger1 = Animelemtime(1) > 8 &&  AnimElemtime(3) < 0
x = .53 

[State 0, 3]
type = VelAdd
trigger1 = Animelemtime(2) >= 4 && AnimElemtime(3) <7
y = -.55
;ignorehitpause = 0
;persistent = 1

[State 0, 2]
type = VelSet
trigger1 = Animelem = 3
x = 7.5 
y = -4.5

[State 0, 1]
type = Gravity
trigger1 = Animelemtime(3) > 3
;ignorehitpause = 0
;persistent = 1



[State 0, 2]
type = PlayerPush
trigger1 = 1
value = 0
;ignorehitpause = 0
;persistent = 1



[State 105 , 1]
type = AssertSpecial
trigger1 = 1
flag=NoWalk

[State 9999, 0]
type = Helper
trigger1 = time = 0
pos = 68,-175
postype = p1
stateno = 103
helpertype = normal
name = "Webbing"
keyctrl = 0
ownpal = 1
ID =103

[State 105 , 2]
type = ChangeState
trigger1 = Animtime = 0
value = 50
ctrl = 1

; Webrope 
[Statedef 103]
type = S
ctrl = 0
anim = 103
velset = 0,0

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1



[State 0, 1]
type = PosFreeze
trigger1 = 1
value = 1
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = DestroySelf
trigger1 = Animtime = 0 || parent, stateno !=102
;ignorehitpause = 0
;persistent = 1
[Statedef 105]
type    = S
physics = N
velset = -7,0
ctrl = 1

[State 105 , 1]
type = AssertSpecial
trigger1 = 1
flag=NoWalk

[State 105 , 1]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 105
value = 105

[State 105 , 2]
type = ChangeState
trigger1 = time = 20
value = 101

;---------------------------------------------------------------------------
; Walk
[Statedef 20]
type    = S
physics = S
sprpriority = 0

[State 20, 1]
type = VelSet
trigger1 = command = "holdfwd"
x = ifelse(Var(55),7,const(velocity.walk.fwd.x))

[State 20, 2]
type = VelSet
trigger1 = command = "holdback"
x = ifelse(Var(55),-7,const(velocity.walk.back.x))

[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != ifelse(Var(55),100,20) && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = ifelse(Var(55),100,20)

[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != ifelse(Var(55),105,21) && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = ifelse(Var(55),105,21)

; Super Jump 
[Statedef 260]
type    = A
movetype = I
physics = A
ctrl = 1


[State 3510, 4]
type = explod
trigger1 = time = 0
anim = F62
pos = 0,0
postype = p1
sprpriority = -10
supermove = 1
scale = 2,2

[State 192, 2]
type = PlaySnd
trigger1 = time = 0
value = 16, 0

[State 50, 1]
type = VarSet
trigger1 = Time = 0
var(4) = 1

[State 50, 2]
type = ChangeState
trigger1 = Time = 0
value = 40
ctrl = 1

; Jump Start
[Statedef 40]
type    = S
physics = S
anim = 40
ctrl = 0
sprpriority = 1

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
y = ifelse(prevstateno = 260,-14,const(velocity.jump.y))

[State 50, 1]
type = VarSet
trigger1 = AnimTime = 0 && prevstateno = 260
var(4) = 1

[State 40, 5]
type = VelSet
trigger1 = AnimTime = 0
trigger1 = prevstateno = 100 || Var(55) ;RUN_FWD
trigger1 = sysvar(1) = 1
x = const(velocity.runjump.fwd.x)

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
type = PlayerPush
trigger1 = enemynear, statetype !=A
value = 0
;ignorehitpause = 0
;persistent = 1


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

[State 0, 1]
type = VelAdd
triggerall = (Var(4) = 1) && (Vel X <= const(velocity.jump.fwd.x)) && (Time >= 10)
trigger1 = Command = "holdfwd"
x = 0.45

[State 0, 2]
type = VelAdd
triggerall = (Var(4) = 1) && (Vel X >= const(velocity.jump.back.x)) && (Time >= 10)
trigger1 = Command = "holdback"
x = -0.35

[State 0, 3] 
type = VelAdd
trigger1 = (Var(4) = 1)
y = -0.1

[State 0, 4]
type = Turn
trigger1 = (Var(4) = 1) && (P2Dist X < -5)



; SGUARDHIT (shaking)
[Statedef 150]
type    = S
movetype= H
physics = N
velset = 0,0

[State 150, 1]
type = ChangeAnim
trigger1 = (Anim != [160,161]) && Anim != 130
value = 130

[State 150, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 151

[State 150, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 3


;Guard Push
[State 0, 4]
type = VelSet
trigger1 = Time = 0 && (Anim = [160,161])
x = 0
y = 0

[State 0, 5]
type = ChangeAnim
triggerall = (Anim != [160,161])
trigger1 = command = "recovery"
value = 160


[State 0, 5]
type = ChangeAnim
trigger1 = (Anim = [160,161]) && Animtime = 0
value = 130



[State 0, 1]
type = PlaySnd
trigger1 = (Anim = [160,161]) && Animelemtime(1)=1
value = 6,2
volume = 255

[State 154, Guard Push Spark]
type = Explod
trigger1 = (Anim = [160,161]) && Animelemtime(1)=1
anim = 911
ID = 161
postype = p1
pos = 52,-76
bindtime = -1
sprpriority = 2
ownpal = 1

[State 0,6]
type = Helper
triggerall = NumHelper(160) = 0
trigger1 = command = "recovery" 
ID = 160
name = "Guard_Push"
pos = 0, 0
postype = p1
stateno = 940
helpertype = normal
keyctrl = 0
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30
ignorehitpause = 1



;---------------------------------------------------------------------------
; SGUARDHIT2 (knocked back)
[Statedef 151]
type    = S
movetype= H
physics = S

[State 150, 1]
type = ChangeAnim
trigger1 = Anim != 160 && Anim != 161 && Anim != 130
value = 130

[State 151, 1]
type = HitVelSet
trigger1 = Time = 0 && (Anim != [160,161])
x = 1

[State 151, 2]
type = VelSet
triggerall = (Anim != [160,161])
trigger1 = Time = GetHitVar(slidetime)
trigger2 = Time >= GetHitVar(hittime)
x = 0

[State 151, 3]
type = CtrlSet
trigger1 = (Time = GetHitVar(ctrltime)) && (Anim != [160,161])
value = 1

[State 151, 4]
type = ChangeState
trigger1 = (Time >= GetHitVar(hittime)) && (Anim != [160,161])
value = 130
ctrl = 1

;Guard Push
[State 0, 4]
type = VelSet
trigger1 = Time = 0 && (Anim = [160,161])
x = 0
y = 0

[State 0, 5]
type = ChangeAnim
triggerall = (Anim != [160,161])
trigger1 = command = "recovery"
value = 160


[State 0, 5]
type = ChangeAnim
trigger1 = (Anim = [160,161]) && Animtime = 0
value = 130



[State 0, 1]
type = PlaySnd
trigger1 = (Anim = [160,161]) && Animelemtime(1)=1
value = 6,2
volume = 255

[State 154, Guard Push Spark]
type = Explod
trigger1 = (Anim = [160,161]) && Animelemtime(1)=1
anim = 911
ID = 161
postype = p1
pos = 52,-76
bindtime = -1
sprpriority = 2
ownpal = 1

[State 0,6]
type = Helper
triggerall = NumHelper(160) = 0
trigger1 = command = "recovery" 
ID = 160
name = "Guard_Push"
pos = 0, 0
postype = p1
stateno = 940
helpertype = normal
keyctrl = 0
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30
ignorehitpause = 1
;---------------------------------------------------------------------------
; CGUARDHIT (shaking)
[Statedef 152]
type    = C
movetype= H
physics = N
velset = 0,0

[State 150, 1]
type = ChangeAnim
trigger1 = Anim != 160 && Anim != 161 && Anim != 131
value = 131

[State 152, 3]
type = ChangeState
trigger1 = HitShakeOver
value = 153

[State 152, 4]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;Guard Push
[State 0, 4]
type = VelSet
trigger1 = Time = 0 && (Anim = [160,161])
x = 0
y = 0

[State 0, 5]
type = ChangeAnim
triggerall = (Anim != [160,161])
trigger1 = command = "recovery"
value = 161


[State 0, 5]
type = ChangeAnim
trigger1 = (Anim = [160,161]) && Animtime = 0
value = 131



[State 0, 1]
type = PlaySnd
trigger1 = (Anim = [160,161]) && Animelemtime(1)=1
value = 6,2
volume = 255

[State 154, Guard Push Spark]
type = Explod
trigger1 = (Anim = [160,161]) && Animelemtime(1)=1
anim = 911
ID = 161
postype = p1
pos = 52,-76
bindtime = -1
sprpriority = 2
ownpal = 1

[State 0,6]
type = Helper
triggerall = NumHelper(160) = 0
trigger1 = command = "recovery" 
ID = 160
name = "Guard_Push"
pos = 0, 0
postype = p1
stateno = 940
helpertype = normal
keyctrl = 0
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30
ignorehitpause = 1

;---------------------------------------------------------------------------
; CGUARDHIT2 (knocked back)
[Statedef 153]
type    = C
movetype= H
physics = C


[State 150, 1]
type = ChangeAnim
trigger1 = Anim != 160 && Anim != 161 && Anim != 131
value = 131

[State 153, 1]
type = HitVelSet
trigger1 = Time = 0 && (Anim != [160,161])
x = 1

[State 153, 2]
type = VelSet
triggerall = (Anim != [160,161])
trigger1 = Time = GetHitVar(slidetime)
trigger2 = Time >= GetHitVar(hittime)
x = 0

[State 153, 3]
type = CtrlSet
trigger1 = (Time = GetHitVar(ctrltime)) && (Anim != [160,161])
value = 1

[State 153, 4]
type = ChangeState
trigger1 = (Time >= GetHitVar(hittime)) && (Anim != [160,161])
value = 131
ctrl = 1

;Guard Push
[State 0, 4]
type = VelSet
trigger1 = Time = 0 && (Anim = [160,161])
x = 0
y = 0

[State 0, 5]
type = ChangeAnim
triggerall = (Anim != [160,161])
trigger1 = command = "recovery"
value = 161


[State 0, 5]
type = ChangeAnim
trigger1 = (Anim = [160,161]) && Animtime = 0
value = 131



[State 0, 1]
type = PlaySnd
trigger1 = (Anim = [160,161]) && Animelemtime(1)=1
value = 6,2
volume = 255

[State 154, Guard Push Spark]
type = Explod
trigger1 = (Anim = [160,161]) && Animelemtime(1)=1
anim = 911
ID = 161
postype = p1
pos = 52,-76
bindtime = -1
sprpriority = 2
ownpal = 1

[State 0,6]
type = Helper
triggerall = NumHelper(160) = 0
trigger1 = command = "recovery" 
ID = 160
name = "Guard_Push"
pos = 0, 0
postype = p1
stateno = 940
helpertype = normal
keyctrl = 0
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30
ignorehitpause = 1
;---------------------------------------------------------------------------
; AGUARDHIT (shaking)
[Statedef 154]
type    = A
movetype= H
physics = N
velset = 0,0

[State 150, 1]
type = ChangeAnim
trigger1 = Anim != 162 && Anim != 132
value = 132

[State 154, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 155 ;AGUARDHIT2

[State 154, 3]
type = ForceFeedback
trigger1 = time = 0
waveform = square
time = 4

;Guard Push
[State 0, 4]
type = VelSet
trigger1 = Time = 0 && (Anim != 162)
trigger2 = Anim = 162
x = 0
y = 0

[State 0, 5]
type = ChangeAnim
trigger1 = (Anim != 162)
trigger1 = command = "recovery"
value = 162


[State 0, 5]
type = ChangeAnim
trigger1 = (Anim = 162) && Animtime = 0
value = 132



[State 0, 1]
type = PlaySnd
trigger1 = (Anim = 162) && Animelemtime(1)=1
value = 6,2
volume = 255

[State 154, Guard Push Spark]
type = Explod
trigger1 = (Anim = 162) && Animelemtime(1)=1
anim = 911
ID = 161
postype = p1
pos = 52,-76
bindtime = -1
sprpriority = 2
ownpal = 1

[State 0,6]
type = Helper
triggerall = NumHelper(160) = 0
trigger1 = command = "recovery" 
ID = 160
name = "Guard_Push"
pos = 0, 0
postype = p1
stateno = 940
helpertype = normal
keyctrl = 0
ownpal = 1
size.height = 200
size.ground.back = 30
size.ground.front = 30
ignorehitpause = 1


;---------------------------------------------------------------------------
; AGUARDHIT2 (knocked away)
[Statedef 155]
type    = A
movetype= H
physics = N

[State 150, 1]
type = ChangeAnim
trigger1 = Anim != 162 && Anim != 132
value = 132

[State 155, VelSet 2]
type = VelSet
trigger1 = (Anim = 162) && (AnimTime = 0)
x = -5


[State 155, 1]
type = HitVelSet
trigger1 = Time = 0 && (Anim != 162)
x = 1
y = 1

[State 155, 2]
type = VelAdd
trigger1 = (Anim != 162)
y = Const(movement.yaccel)

[State 155, 3]
type = CtrlSet
trigger1 = (Time = GetHitVar(ctrltime)) && (Anim != 162)
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
triggerall = (Anim != 162)
trigger1 = sysvar(0)
trigger1 = command != "holdback"
value = 52

[State 155, 8]
type = ChangeState
trigger1 = sysvar(0) && (Anim != 162)
value = 130

;Guard Push
[State 0, 4]
type = VelSet
trigger1 = Anim = 162
x = 0
y = 0

[State 0, 5]
type = ChangeAnim
triggerall = (Anim != 162)
trigger1 = command = "recovery"
value = 162


[State 0, 5]
type = ChangeAnim
trigger1 = (Anim = 162) && Animtime = 0
value = 132



[State 0, 1]
type = PlaySnd
trigger1 = (Anim = 162) && Animelemtime(1)=1
value = 6,2
volume = 255

[State 154, Guard Push Spark]
type = Explod
trigger1 = (Anim = 162) && Animelemtime(1)=1
anim = 911
ID = 161
postype = p1
pos = 52,-76
bindtime = -1
sprpriority = 2
ownpal = 1

[State 0,6]
type = Helper
triggerall = NumHelper(160) = 0
trigger1 = command = "recovery" 
ID = 160
name = "Guard_Push"
pos = 0, 0
postype = p1
stateno = 940
helpertype = normal
keyctrl = 0
ownpal = 1
size.height = 300
size.ground.back = 30
size.ground.front = 30
ignorehitpause = 1

;Push Block helper (forwards)
[Statedef 940]
type    = A
movetype= I 
physics = N
velset = 0,0
anim = 940

[State 890, Not Get Hit]
type = NotHitBy
Trigger1 = Time >= 0
value = , AA ,AP ,AT
Time = 1

[State 890, Push]
type = PlayerPush
trigger1 = Time >= 0
value = 1

[State 890, Shove]
type = VelSet
trigger1 = 1
x = 20

[State 890, Done]
type = DestroySelf
trigger1 = Time = 20



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

; Rollin', rollin' rollin......
[Statedef 5999]
type = S
movetype = I
physics = N
anim = 900
velset = 0,0
facep2 = 1
ctrl = 0

[State 680, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 680, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = ifelse(var(8) = 1,3,ifelse(var(8) = 2,7.5,10))

[State 680, NotHitBy]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA, AA, AP

[State 680, NotHitBy]
type = NotHitBy
trigger1 = 1
time = 11
value = SCA, AT

[State 680, ChangeState]
type = ChangeState
trigger1 = Time = ifelse(var(8) = 1,10,ifelse(var(8) = 2,18,25))
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

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

[State -2,1]
type = RemoveExplod
trigger1 = NumHelper(9994) 
ID = 998
ignorehitpause = 1

[State 0, 1]
type = AssertSpecial
trigger1 =  NumHelper(9994) 
ignorehitpause = 1
flag = NoFG
flag2 = NoBarDisplay
flag3= NoMusic

[State 0, 1]
type = Explod
trigger1 = (WinKO) && (Var(51) !=1) && NumExplod(9900) = 0
anim = 9900
ID = 9900
pos = 0,0
postype = left
pausemovetime = 9999999
ontop = 1
ignorehitpause = 1
;persistent = 1
bindtime = -1
removetime = 20

[State -2, Finish SFX]
type = AllPalFX
trigger1 = (WinKO) && (Var(51) !=1)
add = 255,255,255
persistent = 0
time =2
ignorehitpause = 1

[State -2,1]
type = PlaySnd
trigger1 = (WinKO) && (Var(51) !=1) && !NumHelper(994)
persistent = 0
value = 55,1
volume =255
ignorehitpause = 1

[State -2, 1]
type = EnvShake
trigger1 = (WinKO) && (Var(51) !=1) 
time = 10
ignorehitpause = 1
persistent = 0

[State -2, Super Var 2]
type = VarSet
trigger1 = (WinKO) && (Var(51) !=1) 
v = 51
value = 1
ignorehitpause = 1


;TeamMode Player Detection
[State 5900, 1] 
type = VarSet
triggerall = p3name = "Rogue" || p3name = "Big Eli King" || p3name = "Dark Chun-Li R" || p3name = "Peach" || p3name = "Venom" || p3name = "VenomEX" || p3name = "Silent Storm EX"
trigger1 = roundstate < 2
trigger1 = pos X < partner, Pos X ;Am I player 3 or 4
var(56) = ifelse(teamside =2,1,2)

[State 5900, 1] 
type = VarSet
triggerall = p3name = "Rogue" || p3name = "Big Eli King" || p3name = "Dark Chun-Li R" || p3name = "Peach" || p3name = "Venom" || p3name = "VenomEX" || p3name = "Silent Storm EX"
trigger1 = roundstate < 2
trigger1 = pos X > partner, Pos X ;Am I player 1 or 2
var(56) = ifelse(TeamSide = 2,2,1)

;This controller plays a sound everytime KFM lands from a jump, or
;from his back-dash.
[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
value = 55, 2

[State -3, Landing Sound]
type = GameMakeAnim
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
value = 60
pos = 0,0

; Play "ow" sound when hit
[State -3, Ow Sound]
type = PlaySnd
triggerall = Time = 1
triggerall = alive && (random <= 500)
trigger1 = stateno = 5001 || stateno = 5011
trigger2 = stateno = 5040 || stateno = 5050
trigger3 = stateno = 5070
value = 3,0+(random<=500)

[State -2, Super Jump Detect]
type = VarSet
trigger1 = statetype !=A && Var(4) !=0 
var(4) = 0

[State 3510, 4]
type = AssertSpecial
trigger1 = NumExplod(998) = 1
flag = noFG
flag2= NoBG
ignorehitpause =1 


;Air Dash Restrictor
[State -2, Air Dash Restrict]
type = VarSet
trigger1 = stateno =102
var(2) = 1

[State -2, Air Dash Restrict]
type = VarSet
trigger1 = statetype !=A
var(2) = 0


[State 0, Super Jump Vel Correct] 
type = VelAdd
trigger1 = (Var(4) = 1) && (stateno = [600,650])
y = -0.1

;[State 0, Air Dash Vel Correct] 
;type = VelSet
;trigger1 = time < 2
;trigger1 = (stateno = [600,650]) && prevstateno = 102
;x = 4.5

[State 0, Air Dash Vel Correct] 
type = VelSet
trigger1 = !time 
trigger1 = (stateno = [600,650]) && prevstateno = 102 && Vel Y >0
y = -1

;EX Venom stuff
[State 2, EX1]
type = VarSet
trigger1 = name = "VenomEX"
v =  55
value = 1
;ignorehitpause = 0
;persistent = 1



[State -2, EX2];afterimages
type = Helper
triggerall = (Gametime%3 = 0) && (Var(55))
trigger1 = !(movetype = H && (anim !=[5000,5200]))
trigger1 = stateno !=[1030,1050]
trigger1 = Roundstate >= 2
name = "image"
id = 10000
postype = P1
pos = 0,0
stateno = 10000
ownpal = 1



[State -2, EX3]
type = DefenceMulSet
trigger1 = 1
value = ifelse(Var(55),1.7,1)
;ignorehitpause = 0
;persistent = 1

;First Attack Message
[State -2, First Attack]
type = VarSet
triggerall = Var(10) = 0
triggerall = RoundState = 2
trigger1 = movetype = A && movehit
trigger2 = NumHelper = 1
trigger2 = helper, movehit 
trigger3 = (stateno = [1020,1022]) || stateno = 3000
trigger3 = p2movetype = H && p2stateno != [120,160]
v = 10
value = 1
ignorehitpause = 1

[State -2, First Attack]
type = Explod
trigger1 = NumExplod(7000) = 0
trigger1 = Var(10) = 1
anim = 7000
sprpriority = 100
postype = Left
pos = ifelse(TeamSide = 2,240,80),55
bindtime = -1
supermove = 1
ownpal = 1
persistent = 0
ignorehitpause = 1
ontop = 1
size.shadowoffset = -9999
id = 7000


[State -2, First Attack]
type = PlaySnd
triggerall = (Teamside =1 && IsHomeTeam) || (Teamside =2 && !IsHomeTeam) || (TeamSide=1 && !IsHomeTeam)
trigger1 = Var(10) = 1
value = 40,0
volume = 255

[State -2, First Attack]
type = VarSet
trigger1 = Var(10) = 1
trigger2 = movetype = H && Var(10) = 0 && stateno != [150,159]
v = 10
value = 2

;Kamek's Combo counter system

[State -2, Set Up For Count]
type = VarSet
trigger1 = p2movetype = H
trigger1 = !Var(15)
v = 15
value = 1

[State -2, Keep Track Of Hit Count]
type = VarSet
trigger1 = UniqHitCount > 0
trigger1 = Var(15)
v = 16
value = UniqHitCount

[State -2, Keep Track Of Hit Count]
type = VarAdd
trigger1 = p2statetype = A && statetype = A
trigger1 = movehit && hitpausetime = 1
v = 18
value = 1
ignorehitpause =1

[State -2, Add To Total Hit Count]
type = VarSet
triggerall = Var(15)
trigger1 = UniqHitCount < Var(16)
trigger2 = p2movetype != H
v = 17
value = Var(17) + Var(16)

[State -2, Add Helper Hits To Total Hit Count]
type = VarSet
triggerall = Var(15)
trigger1 = Var(19) != 0
trigger2 = p2movetype != H
v = 17
value = Var(17) + Var(19)

[State -2, Keep Track of Helper Hit Count]
type = VarSet
trigger1 = Var(19) != 0
trigger1 = Var(15)
v = 19
value = 0

[State -2, Projectile Hits]
type = VarSet
triggerall = Var(15)
trigger1 = ProjHit = 1
v = 17
value = Var(17) + 1

[State -2, Display]
type = DisplayToClipboard
trigger1 = Var(15)
text = "Aerial Hits: %d  Combo: %d\nEX Mode?: %d Team Pos: %d "
params = Var(18), Var(17), Var(55), Var(56)

[State -2, Reset Current Hit Count]
type = VarSet
trigger1 = UniqHitCount < Var(16)
trigger1 = Var(15)
v = 16
value = UniqHitCount

[State -2, Combo Is Finished]
type = VarSet
trigger1 = p2movetype != H
trigger1 = Var(15)
v = 16
value = 0

;[State -2, Combo Is Finished]
;type = Helper
;triggerall = Var(15)
;triggerall = Var(17) > 1
;triggerall = !NumHelper(9990)
;trigger1 = p2movetype != H
;;trigger1 = p2stateno != [5000,5999]
;stateno = 9990
;ID = 9990

[State -2, Reset]
type = VarSet
triggerall = Var(15)
trigger1 = p2movetype != H
;trigger1 = p2stateno != [5000,5999]
v = 15
value = 0

[State -2, Reset]
type = VarSet
trigger1 = p2movetype != H
v = 14
value = 0

[State -2, Reset]
type = VarSet
trigger1 = !NumHelper(9990)
trigger1 = !Var(15)
trigger1 = Var(17) > 0
v = 17
value = 0

[State -2, Reset]
type = VarSet
trigger1 = !NumHelper(9990)
trigger1 = !Var(15)
trigger1 = Var(18) > 0
v = 18
value = 0


;Danger!
[State -2, Danger]
type = PlaySnd
triggerall = Var(21) = 1
triggerall = (Teamside =1 && IsHomeTeam) || (Teamside =2 && !IsHomeTeam) || (TeamSide=1 && !IsHomeTeam)
trigger1 = Life <= 200
value = 40,8

[State -2, First Attack]
type = Explod
trigger1 = NumExplod(7008) = 0
trigger1 = Var(21) = 1
anim = 7008
sprpriority = 100
postype = Left
pos = ifelse(TeamSide = 2,240,80),55
bindtime = -1
supermove = 1
ownpal = 1
persistent = 0
ignorehitpause = 1
ontop = 1
size.shadowoffset = -9999
id = 7008

[State -2, Danger VarAdd]
type = varadd
triggerall = Life <= 200
trigger1 = Var(21) <= 2 
v = 21
value = 1

;Roll recovery (Thanx Sunboy!)
[State -2]
type = VarSet
triggerall = statetype = A && alive
triggerall = movetype = H
trigger1 = command = "counter2a"
trigger2 = var(57) = 1 
trigger2 = random <= 300
var(8) = 1

[State -2]
type = VarSet
triggerall = statetype = A && alive
triggerall = movetype = H
trigger1 = command = "counter2b"
trigger2 = var(57) = 1 
trigger2 = random <= 300
var(8) = 2

[State -2]
type = VarSet
triggerall = statetype = A && alive
triggerall = movetype = H
trigger1 = command = "counter2c"
trigger2 = var(57) = 1 
trigger2 = random <= 300
var(8) = 3

[State -2]
type = VarSet
trigger1 = StateNo < 5000
trigger2 = StateNo > 5999
trigger3 = !alive
var(8) = 0


;Sunboy's combo dampener (Sunboy programmed a lot of useful shit, didn't he?)
[State -2] 
type = VarSet
trigger1 = var(17) = 0
fvar(0) = 1
ignorehitpause = 1

[State -2] 
type = VarSet
trigger1 = var(17) = [1,4]
fvar(0) = .75
ignorehitpause = 1

[State -2] 
type = VarSet
trigger1 = var(17) =[5,8]
fvar(0) = .55
ignorehitpause = 1

[State -2]
type = VarSet
trigger1 = var(17)=[9,12]
fvar(0) = .45
ignorehitpause = 1

[State -2]
type = VarSet
trigger1 = var(17)=[13,16]
fvar(0) = .35
ignorehitpause = 1

[State -2]
type = VarSet
trigger1 = var(17) >= 17
fvar(0) = .25
ignorehitpause = 1

[State -2, 43]
type = AttackMulSet
trigger1 = 1
value = fvar(0)


;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

;[Statedef -3]

;Win Screen
[Statedef 9991]
type = S
movetype = I
anim = 9997

[State 0, 1]
type = AllPalFX
trigger1 = time = 200
add = 255,255,255
sinadd = -255,-255,-255,75
persistent = 0
time =20
ignorehitpause = 1

[State -2, Reset]
type = AssertSpecial
trigger1 = time = [0,800]
flag = RoundNotOver

[State -2, Reset]
type = AssertSpecial
trigger1 = time = [200,1200]
flag = NoBarDisplay
flag2 =NoMusic
flag3 =NoFG

[State 9990, Good]
type = PlaySnd
trigger1 = time = 200 && parent, Var(56) !=2
value = 65,1
abspan = 0
volume = 255
freqmul = 0.5

[State 9990, Good]
type = PlaySnd
trigger1 = time = 220 && parent, Var(56) !=2
value = 1,6
abspan = 0
volume = 0

[State 9990, Good]
trigger1 = time = 200 && parent, Var(56) !=2
type = Explod
ownpal = 1
anim = 9500
postype = left
pos = 0,0
bindtime = -1
removetime =700
ID = 9995
sprpriority =5
ontop = 1

[State 9990, Good]
trigger1 = time = 205 && parent, Var(56) !=2
type = Explod
ownpal = 1
anim = 9993
postype = left
pos = 0,0
bindtime = -1
removetime =700
ID = 9990
ontop =1

[State 9990, Good]
trigger1 = time = 202 && parent, Var(56) =2
type = Explod
ownpal = 1
anim = 9993
postype = left
pos = 319,0
bindtime = -1
removetime =700
ID = 9990
ontop =1
facing = -1

[State 9990, Good]
trigger1 = time = 220 && parent, Var(56) !=2
type = Explod
ownpal = 1
anim = 9992
postype = left
pos = 0,240
bindtime = -1
removetime =700
ID = 9990
ontop =1

[State 9990, Good]
trigger1 = time = 235 && parent, Var(56) !=2
type = Explod
ownpal = 1
anim = 9980+(random%5) 
postype = left
pos = 0,240
bindtime = -1
removetime =700
ID = 9990
ontop =1







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
trigger1 = 1
ignorehitpause = 1
flag = NoFG
flag2 = NoBG
flag3= NoMusic


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

[State -2,1]
type = PlaySnd
trigger1 = time = 0
persistent = 0
value = 9,1
volume =455
ignorehitpause = 1


[State 3510, 4]
type = explod
trigger1 = time = 0
anim = 9500
pos = 0,0
postype = left
sprpriority = -10
supermove = 1
bindtime = 50
removetime = 50
ID = 9996
ignorehitpause = 1


[State 7001, 2]
type = DestroySelf
trigger1 = time =50


[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1


[State 1110, Darken]
type = PalFX
trigger1 = !time
add = 100,0,0
sinadd = 155,255,255,200
time = 50
color = 0

; MvC2 Super flash
[Statedef 9999]
type = S
ctrl = 0
anim = 9997
velset = 0,0
sprpriority = 4

[State 3000, Super A]
type = SuperPause
trigger1 = time = 0
pos = 0, 0
anim = s9998
poweradd = -1000
time = 50
movetime = 50
darken = 0

[State 192, 2]
type = PlaySnd
trigger1 = time = 0
value = 20, 0

[State 3510, 4]
type = explod
trigger1 = time =0
anim = 9999
pos = 0,0
postype = back
under = 1
supermove = 1
bindtime = 15
removetime = 50
vel = -0.1,0
scale = 2.2,2.2
ID = 9999
sprpriority = -3

[State 7001, 2]
type = DestroySelf
trigger1 = time =50

[State 9999,0]
type = ModifyExplod
trigger1 = time = [0,15]
ID = 9999
scale = 2.2 - (.08*time), 2.2 - (.08*time)
sprpriority = -3
under = -1


[State 9999, 1]
type = AssertSpecial
trigger1 = 1
ignorehitpause = 1
flag = NoFG
flag2 = NoBG

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;The Shadows
[Statedef 10000]
type    = S
movetype= I
physics = N
ctrl = 0
velset = 0,0
sprpriority = 0

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

;-------------------
;MEE Template Files
;   provided by
;  Kitsune Sniper
;       ***
; Thanks, Kitsune!
;-------------------

