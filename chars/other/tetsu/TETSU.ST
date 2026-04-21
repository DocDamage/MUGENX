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
;---------------------------------------------------------------------------
; LOSE (Time over)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0,0

[State 170, 1]
type = VarSet
trigger1 = Time = 0
v = 5
value = 1
;---------------------------------------------------------------------------
; WIN1
[Statedef 180]
type = S
ctrl = 0
velset = 0,0,0

[State 180, 1]; Win Screen
type = Helper
trigger1 = !NumHelper(9991)
trigger1 = MatchOver
stateno = 9991
postype = p1
pos = 0,0
name = "Win Screen"
id = 9991


[State 0, 1]
type = ChangeState
trigger1 = 1
value = 181 +(random%4)



; WIN1
[Statedef 181]
type = S
ctrl = 0
anim = 180
velset = 0,0,0

[State 193, 2]
type = PlaySnd
trigger1 = time = 0
value = 1,2

[State 193, 2]
type = PlaySnd
trigger1 = time = 50
value = 0,9

[State 0, 1]
type = PalFX
trigger1 = time = 50
add = 125,255,255
sinadd = -125,-255,-255,75
persistent = 0
time =20
ignorehitpause = 1

[State 0, 1]
type = Explod
trigger1 = time = [48,95]
trigger1 = time%7 = 0
facing = ifelse(Random<=600,1,-1)
anim = 1051
scale = .4,.4
postype = p1
pos = 0,-30
sprpriority = 2
supermove = 1
ownpal = 1
random = 40,70
ID = 1051

[State 193, 2]
type = RemoveExplod
trigger1 = MatchOver & time = 100
ID = 1051



;---------------------------------------------------------------------------
; WIN2
[Statedef 182]
type = S
ctrl = 0
anim = 181
velset = 0,0,0
sprpriority = 2

[State 182, 1]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1



[State 0, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,4
volume = 255
channel = 0


;---------------------------------------------------------------------------
[Statedef 183]
type = S
ctrl = 0
anim = 182
velset = 0,0,0

[State 1101, 5]
type = envshake
trigger1 = AnimElem = 3
time = 25
ampl = 7
freq = 176



[State 0, 1]
type = BGPalFX
trigger1 = AnimElem = 3
add = 75,255,255
sinadd = -75,-255,-255,38
persistent = 0
time =10
ignorehitpause = 1


[State 193, 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 0,5
volume = 255

[State 193, 2]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1,0
channel = 0
volume = 255



[State 0, ]
type = Explod
trigger1 = AnimElemtime(3) >= 0 && AnimElemTime(5) < 40
trigger1 = time% 6 = 0
anim = 186
pos = 0,0
postype = p1
bindtime = -1
random = 60,0
sprpriority = 3

;---------------------------------------------------------------------------
[Statedef 184]
type = S
ctrl = 0
anim = 100
velset = 0,0,0

[State 1510, 5]
type = Screenbound
trigger1 = 1
movecamera = 0,0

[State 1404, Helper]
type = Helper
trigger1 = Time = 120
name = "?????"
id = 185
postype = Back
pos = -40,0
stateno = 185
ownpal = 1


[State 0, 1]
type = Explod
trigger1 = !time 
anim = 998
scale = 1,1
postype = p1
pos = 0,0
sprpriority = 5
supermove = 1
ownpal = 1

[State 1404, Helper];afterimages
type = Helper
trigger1 = (Time%3 = 0) && (frontedgedist > 0)
name = "after image helper"
id = 1045
postype = P1
pos = 0,0
stateno = 1045
ownpal = 1

[State 100, 7]
type = MakeDust
trigger1 = frontedgedist > 0
pos = -15,-2

[State 0, 1]
type = PlaySnd
trigger1 = time =7
volume = 255
value = 0,7

[State 0, 1]
type = PlaySnd
trigger1 = time = 10
volume = 255
value = 1,4
channel = 0



[State 0, 1]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
;time = 
;ignorehitpause = 0
;persistent = 1



[State 0, 3]
type = SprPriority
trigger1 = Time = 8
value = -1

[State 1000, 4]
type = VelSet
trigger1 = !time
x = 15.5

[State 0, 7]
type = PlayerPush
trigger1 = 1
value = 0

[State 1101, 5]
type = envshake
trigger1 = !time
time = 25
ampl = 7
freq = 176


[Statedef 185]
type = S
ctrl = 0
anim = 187
velset = 0,0,0

[State 1510, 5]
type = Screenbound
trigger1 = 1
movecamera = 0,0

[State 1404, Helper];afterimages
type = Helper
trigger1 = (Time%3 = 0) && (frontedgedist > 0)
name = "after image helper"
id = 1045
postype = P1
pos = 0,0
stateno = 1045
ownpal = 1

[State 100, 7]
type = MakeDust
trigger1 = frontedgedist > 0
pos = -15,-2

[State 100, 7]
type = DestroySelf
trigger1 = time = 100


[State 0, 1]
type = PlaySnd
trigger1 = time =7
volume = 255
value = 0,7

[State 0, 1]
type = PlaySnd
trigger1 = time = 10
volume = 255
value = 4,0
channel = 0



[State 0, 1]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
;time = 
;ignorehitpause = 0
;persistent = 1



[State 0, 3]
type = SprPriority
trigger1 = Time = 8
value = -1

[State 1000, 4]
type = VelSet
trigger1 = !time
x = 10.5

[State 0, 7]
type = PlayerPush
trigger1 = 1
value = 0

[State 1101, 5]
type = envshake
trigger1 = !time
time = 25
ampl = 7
freq = 176


;---------------------------------------------------------------------------
; INTRO
[Statedef 191]
type = S
ctrl = 0
anim = 190
velset = 0,0,0


[State 193, 2]
type = PlaySnd
trigger1 = AnimElem = 2 || Animelem = 8 || AnimElem = 14
value = 0,2

[State 193, 2]
type = PlaySnd
trigger1 = AnimElem = 20
value = 0,5
volume = 255

[State 193, 2]
type = PlaySnd
trigger1 = AnimElem = 23
value = 1,3
channel = 0
volume = 255

[State 0, 1]
type = allPalFX
trigger1 = AnimElem = 20
add = 75,255,255
sinadd = -75,-255,-255,38
persistent = 0
time =10
ignorehitpause = 1


[State 1101, 5]
type = envshake
trigger1 = AnimElem = 20
time = 45
ampl = 7
freq = 176

[State 0, ]
type = Explod
trigger1 = AnimElemtime(20) >= 0 && AnimElemTime(22) < 40
trigger1 = time% 6 = 0
anim = 186
pos = 0,0
postype = p1
bindtime = -1
random = 60,0
sprpriority = 3




[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = AnimTime != 0
flag = Intro


[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = ChangeState
trigger1 = AnimTime = 0
value = 0


; TAUNT
[Statedef 195]
type = S
anim = 195
ctrl = 0
poweradd = 150
velset = 0,0

[State 195, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 0
channel = 0

[State 0, 1]
type = PalFX
trigger1 = AnimElemtime(4) >=0 && AnimElemtime(6) < 0
trigger1 = time%5=0
add = 62,127,127
sinadd = 62,127,127,5
time =4
ignorehitpause = 1

[State 0, 1]
type = Explod
trigger1 = AnimElemtime(4) >=0 && AnimElemtime(5) < 31
trigger1 = time%7 = 0
facing = ifelse(Random<=600,1,-1)
anim = 1051
scale = .5,.5
postype = p1
pos = 0,-30
sprpriority = 2
supermove = 1
ownpal = 1
random = 40,70
bindtime = -1

[State 0, 1]
type = PlaySnd
trigger1 = AnimElemtime(4) >=0 && AnimElemtime(6) < 0
trigger1 = time%20 = 0
value = 0,9
volume = 255

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;Standing Light Kick 
[Statedef 210]
number = 6
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 30
ctrl = 0
anim = 210
velset = 0

[State 210, 1]
type = HitDef
trigger1 = Time = 3              ;Time to activate controller
attr = S, NA                     ;Attribute: Standing, Normal Attack
damage    = 12                    ;Damage that move inflicts
guardflag = MA                   ;Flags on how move is to be guarded against
;hitflag = MAF                    ;Flags of conditions that move can hit
priority = 3                     ;Attack priority: 0 (least) to 7 (most), 4 default
pausetime = 10,10                ;Time attacker pauses, time opponent shakes
sparkno = 0                   ;Spark image group and no
sparkxy = 0,-20                  ;X-offset for the "hit spark" rel. to p2,
                                 ;Y-offset for the spark rel. to p1
hitsound = s5,3                   ;Sound to play on hit
guardsound = 6,0                 ;Sound to play on guard
; mindist  = 0,0,0                 ;Min distance of p2 from p1 when hit
; maxdist  = 0,0,0                 ;Max distance of p2 from p1 when hit
ground.type = High               ;Type (refer to testp.h)
ground.slidetime = 5             ;Time that the victim slides back
ground.hittime  = 15             ;Time victim is in hit state
ground.velocity = -4             ;Velocity at which victim is pushed
; guard.slidetime = 5              ;Values for guarded attack (def: ground.slidetime)
; guard.hittime  = 15              ; (def: ground.hittime)
; guard.velocity = -4              ; (def: ground.velocity)
; guard.ctrltime = 7               ;Time to regain control after guard (def: guard.slidetime)
; airguard.velocity = -2.6         ;Guard velocity in air (def: (air.xvel*2              
; airguard.ctrltime = 7            ;Time to regain control after air guard (def: ground.ctrltime)
air.type = High                  ;Type (refer to testp.h)
air.velocity = -1.3,-1           ;X-velocity at which victim is pushed,
                                 ;Y-velocity at which victim is pushed
fall = 0                         ;1 to cause opponent to fall. If omitted, assumed 0.

[State 200, 7]
type = Playsnd
trigger1 = time = 2
value = 0,0

[State 200, 7]
type = Playsnd
trigger1 = time = 2 && random <= 300
value = 2,1

[State 210, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Medium Punch 
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 40
ctrl = 0
anim = 230
velset = 0,0,0

[State 230, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
damage   = 42
animtype = Med
guardflag = MA
pausetime = 8,10
sparkno = 1
sparkxy =  0,-65
hitsound   = s5,1
guardsound = 6,0
ground.type = Hi
ground.slidetime = 3
ground.hittime  = 17
ground.velocity = -6
air.velocity = -3.1,-3.3
airguard.velocity = -3.5     


[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,1    

[State 200, 7]
type = Playsnd
trigger1 = time = 2 && random <= 300
value = 2,0

[State 230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Heavy Punch 
[Statedef 250]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
anim = 250
velset = 0,0

[State 250, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype = hard
damage = 41
givepower  = 38,55
guardflag = MA
pausetime = 12,12
sparkno = 2
sparkxy = 0,-60
hitsound = s5,2
guardsound = 6,0
ground.type = high
ground.slidetime = 20
ground.hittime = 20
guard.velocity = -8.2
ground.velocity = -8.2
air.velocity = -6,-5.5
airguard.velocity = -1.5 

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,2    

[State 200, 7]
type = Playsnd
trigger1 = time = 2 && random <= 300
value = 2,4

[State 250, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Standing Light Punch 
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 40
ctrl = 0
anim = 200
velset = 0

[State 200, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage   = 12
priority = 3
guardflag = MA
pausetime = 8,8
sparkno = 0
sparkxy =  0,-63
hitsound   = s5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 11
ground.hittime  = 11
ground.velocity = -3.5
air.velocity = -2,-3
airguard.velocity = -3     

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,0

[State 200, 7]
type = Playsnd
trigger1 = time = 2 && random <= 300
value = 2,1

[State 200, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;Standing Medium Kick 
[Statedef 220]
type    = S     
movetype= A     
physics = S     
juggle  = 1     
velset = 0,0
ctrl = 0  
anim = 220 
poweradd = 40

[State 202, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA   
damage = 65
animtype = Heavy
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 8,8
sparkno = 1
sparkxy = 0,-60
hitsound = s5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 20
ground.velocity = -6
air.velocity = -4,-4

[State 7300, 9]
type = MoveHitReset
trigger1 = AnimElem = 3



[State 200, 7]
type = Playsnd
trigger1 = time = 2 && random <= 300
value = 2,0

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 3
value = 0,1

[State 202, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Standing Heavy Kick 
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 50
ctrl = 0
velset = 1,0,0
anim = 240


[State 240, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype = hard
damage = 63
givepower  = 38,55
guardflag = MA
pausetime = 12,12
sparkno = 2
sparkxy = 0,-60
hitsound = s5,5
guardsound = 6,0
ground.type = high
ground.slidetime = 20
ground.hittime = 20
guard.velocity = -8.2
ground.velocity = -8.2
air.velocity = -6,-5.5
airguard.velocity = -1.5 

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 1
value = 0,2 

[State 200, 7]
type = Playsnd
trigger1 = time = 2 && random <= 300
value = 2,2 

[State 240, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Axe Kick 
[Statedef 260]
type    = S     
movetype= A     
physics = S     
juggle  = 1     
velset = 2,0
ctrl = 0  
anim = 260 
poweradd = 40

[State 202, 1]
type = HitDef
trigger1 = AnimElem = 6 || AnimElem = 7
attr = S, NA   
damage = 35
animtype = Heavy
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8,8
sparkno = 1
sparkxy = 0, -40
hitsound = s5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 20
ground.velocity = -6
air.velocity = -4,-4

[State 202, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA   
damage = 65
animtype = Heavy
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 8,8
sparkno = 2
guard.sparkno = 41
hitsound = s5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 25
ground.hittime  = 20
ground.velocity = -6
air.velocity = -4,-4



[State 0, 2]
type = VelSet
trigger1 = AnimElemtime(5)>=0 && AnimElemtime(7) < 0
x = 3
;y = 
;ignorehitpause = 0
;persistent = 1


[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 5 
value = 2,2

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 5
value = 0,1

[State 202, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
; Crouch Light Kick
[Statedef 410]
type    = S
movetype= A
physics = C
juggle  = 5
poweradd= 40
ctrl = 0
anim = 410
velset = 0,0,0

[State 410, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = C, NA
damage    = 13
guardflag = LA
pausetime = 11,11
sparkno = 0
sparkxy = 0,-10
hitsound   = s5,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 9
ground.hittime  = 9
ground.velocity = -4.1
air.type = High
air.velocity = -1.4,-3

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,0

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2 && random <= 350
value = 2,1

[State 410, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[Statedef 430]
type    = S
movetype= A
physics = C
juggle  = 5
poweradd= 55
ctrl = 0
anim = 430
velset = 0,0,0

[State 430, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage    = 17
guardflag = LA
pausetime = 11,11
sparkno = 1
sparkxy = -5,-35
hitsound   = s5,4
guardsound = 6,0
ground.type = Low
ground.slidetime = 14
ground.hittime  = 14
ground.velocity = -5
air.type = High
air.velocity = -1.8,-3.1

[State 430, 3]
type = SprPriority
trigger1 = AnimElem = 1
value = -2

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,1

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2 && random <= 350
value = 2,0


[State 430, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Crouch Heavy Kick
[Statedef 450]
type    = S
movetype= A
physics = S
juggle  = 2
poweradd= 60
ctrl = 0
anim = 450
velset = 0,0,0

[State 202, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
damage   = 85
guardflag = LA
pausetime = 12,12
sparkno = 2
sparkxy =  0,-10
hitsound   = s5,5
guardsound = 6,0
ground.type = Trip
ground.slidetime = 18
ground.hittime  = 25
guard.hittime = 36
guard.ctrltime = 36
ground.velocity = -2,-4
guard.velocity = -6
air.velocity = -2.4,-3.5
airguard.velocity = -3,-3
fall = 1

[State 450, 3]
type = SprPriority
trigger1 = AnimElem = 4
value = -2

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,2

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2 && random <= 350
value = 2,4


[State 450, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Punch
[Statedef 400]
number = 6
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 46
ctrl = 0
anim = 400

[State 400, 2]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage    = 11
guardflag = MA
pausetime = 9,9
sparkno = 0
sparkxy = 0,-35
hitsound   = s5,0
guardsound = 6,0
ground.type = Low
ground.slidetime = 9
ground.hittime  = 9
ground.velocity = -4
air.type = High
air.velocity = -1.2,-3
guard.velocity = -5

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,0

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2 && random <= 350
value = 2,1


[State 400, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[Statedef 420]
type    = S
movetype= A
physics = S
juggle  = 1
poweradd= 50
ctrl = 0
anim = 420

[State 420, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
damage    = 15
guardflag = MA
pausetime = 11,11
sparkno = 1
sparkxy = -5,-35
hitsound   = s5,1
guardsound = 6,0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -4.7
air.type = High
air.velocity = -1.5,-3.2

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 3
value = 0,1

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 3 && random <= 350
value = 2,0


[State 420, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Heavy Punch
[Statedef 440]
type    = S
movetype= A
physics = C
juggle  = 5
poweradd= 75
ctrl = 0
anim = 440

[State 440, 2]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
attr = S, NA
damage   = 21
animtype = Med
guardflag = MA
pausetime = 12,12
sparkno = 2
sparkxy = -0,-60
hitsound   = s5,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 16
ground.hittime  = 20
ground.velocity = -6    
air.type = High
air.velocity = -1,-10
airguard.velocity = -2.5
yaccel = .45
air.fall = 1

[State 440, 3]
type = Width
trigger1 = AnimElem = 3, >= 0
trigger1 = AnimElem = 6, < 0
value = 15

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,2

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2 && random <= 350
value = 2,3


[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Jumping Light Kick (neutral)
[Statedef 610]
type    = A
movetype= A
physics = A
poweradd= 45
ctrl = 0
anim = 610

[State 610, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 11
getpower  = 10
givepower = 10
guardflag = HA
priority = 3
pausetime = 7,8
sparkxy = -10,-58
hitsound   = s5,3
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,0

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2 && random <= 550
value = 2,1


[State 610, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------
;Jumping Medium Kick (neutral)
[Statedef 640]
type    = A
movetype= A
physics = A
poweradd= 65
ctrl = 0
anim = 640

[State 640, 3]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 20
getpower  = 25
givepower = 25
guardflag = HA
priority = 3
pausetime = 9,10
sparkxy = -10,-51
hitsound   = s5,4
guardsound = 6,0
ground.type = High
ground.slidetime = 9
ground.hittime  = 9
ground.velocity = -4
air.velocity = -1.3,-3

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,1
[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2 && random <= 550
value = 2,0


[State 640, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;Jumping Heavy Kick (neutral)
[Statedef 670]
type    = A
movetype= A
physics = A
poweradd= 45
ctrl = 0
anim = 670

[State 670, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
animtype = hard
damage = 63
givepower  = 25,48
guardflag = HA
pausetime = 12,12
sparkxy = -25,-53
hitsound = s5,5
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 15
guard.velocity = -7.5
ground.velocity = -7.5
air.velocity = -5,-1.2
airguard.velocity = -0.7     
air.hittime = 20

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,2

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2 && random <= 550
value = 2,3


[State 670, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------
;Jumping Lp
[Statedef 600]
type    = A
movetype= A
physics = A
poweradd= 45
ctrl = 0
anim = 600

[State 600, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 11
getpower  = 10
givepower = 10
guardflag = HA
priority = 3
pausetime = 8,8
sparkxy = -10,-58
hitsound   = s5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,0

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2 && random <= 550
value = 2,1


[State 600, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------
;Jumping Medium Punch (neutral)
[Statedef 630]
type    = A
movetype= A
physics = A
poweradd= 40
ctrl = 0
anim = 630

[State 630, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 14
getpower  = 10
givepower = 10
guardflag = HA
priority = 3
pausetime = 7,8
sparkxy = -10,-58
hitsound   = s5,1
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2
value = 0,1

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 2 && random <= 550
value = 2,0


[State 630, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------
;Jumping Heavy Punch (neutral)
[Statedef 661]
type    = A
movetype= A
physics = A
poweradd= 46
ctrl = 0
anim = 661

[State 661, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage    = 39
getpower  = 10
givepower = 10
guardflag = HA
priority = 3
pausetime = 8,8
sparkxy = -10,-58
hitsound   = s5,2
guardsound = 6,0
ground.type = High
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -4
air.velocity = -12,12
air.fall = 1
fall.recover = 0
envshake.time = 5
fall.envshake.time = 10

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 3
value = 0,2

[State 200, 7]
type = Playsnd
trigger1 = AnimElem = 3 && random <= 550
value = 2,4

[State 661, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 50


;------------------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Run Forward
[Statedef 100]
type    = S
physics = N
anim = 100
ctrl = 0

[State 100, 2]
type = VelSet
trigger1 = AnimElem = 1
x = const(velocity.run.fwd.x)

[State 100, 7]
type = MakeDust
trigger1 = AnimElem = 2, >= 0
pos = -15,-2

[State 100, 2]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 5]
type = ChangeState
trigger1 = time = 15
value = 101

[State 100, 4]
type = CtrlSet
trigger1 = Time = 5
value = 1

;Stop
[Statedef 101]
type    = S
physics = S
anim = 101
ctrl = 0

[State 101,1]
type = VelSet 
trigger1 = time = 0
y = 0

[State 101,1]
type = PosSet 
trigger1 = time = 0
y = 0


[State 100, 7]
type = MakeDust
trigger1 = AnimElem = 2, >= 0
pos = -15,-2

[State 100, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;--------------------------------------------------------------------------
; Flip Backward
[Statedef 105]
type    = A
physics = N
anim = 105
ctrl = 0

[State 100, 2]
type = VelSet
trigger1 = AnimElem = 1
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 100, 2]
type = AssertSpecial
trigger1 = 1
flag = NoWalk


[State 100, 4]
type = CtrlSet
trigger1 = Time = 5
value = 1

[State 100, 1]
type = Gravity
trigger1 = 1

[State 100, 5]
type = ChangeState
trigger1 = pos Y >= 0 && vel Y  > 0
value = 101


;-----------------------------------------------------------
;Flip Over Slam - Attempt
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 2

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 800
value = 800


[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = A, NT
damage = 30
hitflag = MA-
priority = 1, Miss
sparkno = -1
sprpriority = 1
numhits = 1
p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 810
p2stateno = 820
fall = 1
kill = 0

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 801]
type    = A
movetype= A
physics = A
juggle  = 0
ctrl = 0
sprpriority = 2

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 800
value = 800


[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = A, NT
damage = 30
hitflag = AF
priority = 1, Miss
sparkno = -1
sprpriority = 1
numhits = 1
p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 810
p2stateno = 820
fall = 1
fall.recover = 0
kill =0


[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;Flipping over
[Statedef 810]
type    = A
movetype= A
physics = N
anim = 810
poweradd = 60

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 10



[State 0, ]
type = BindToTarget
trigger1 = AnimElemTime(3) <0
;time = 1
pos = 0,0,head
;ignorehitpause = 0
;persistent = 1


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = 0, -5
time = 6

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 4
pos = -29, -14
time = 8

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElemTime(5)>= 0
pos = -48, -97

[State 810, Width 2-11]
type = Width
trigger1 = 1
edge = 60,40


[State 810, VelSet]
type = PosAdd 
trigger1 = AnimElem = 3
y = 5


[State 810, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 5
y = -5 


[State 0, 1]
type = Veladd
trigger1 = AnimElemTime(3) > 2
y = .65



[State 810, State End]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 811


;---------------------------------------------------------------------------
;Slamming
[Statedef 811]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 811



[State 0, 1]
type = PosSet
trigger1 = !time
y = 0
;ignorehitpause = 0
;persistent = 1


[State 812, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 4, -96


[State 812, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 66, -19


[State 610, 2]
type = PlaySnd
trigger1 = Time = 2
value = 2, 4

[State 1475, 10]
type = TargetState
trigger1 = AnimElem = 2,4
value = 825

[State 1475, 0.2]
type = PlaySnd
trigger1 = AnimElem = 2,4
value = 5, 6
volume = 255

[State 1950, 5]
type = TargetLifeAdd
trigger1 = animelem = 2,4
value = -95

[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Thrown by Rising Throw
[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0



[State 0, ]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
;ignorehitpause = 0
;persistent = 1


[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

[State 820, 1]
type = ChangeAnim2
Trigger1 = p2stateno = 811 && Anim !=821
value = 821

[State 0, 1]
type = SelfState
trigger1 = time >=2 &&  (p2stateno !=[810,811])
value = 5010
;anim = 
;ctrl = 
;ignorehitpause = 0
;persistent = 1


; Throw (hit by, into air)
[Statedef 825]
type    = A
movetype= H ;Get hit
physics = N
velset = -6,-9
ctrl = 0

[State 0, 1]
type = PosSet
trigger1 = time = 0
y = 0

[State 192, 0]
type = GameMakeAnim
trigger1 = time = 0
pos = -5,0
value = 62

[State 1485, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 5100

[State 1485, 1]
type = ChangeAnim
trigger1 = Time = 4
value = 5160

[State 1486, 2] ;Gravity
type = VelAdd
trigger1 = Time > 0
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

;Electrocution - Attempt
[Statedef 850]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
sprpriority = 2

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 800
value = 800


[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = A, NT
damage = 10
hitflag = MA-
priority = 1, Miss
sparkno = -1
sprpriority = 1
numhits = 1
p1facing = ifelse (command = "holdfwd", 1, -1)
p2facing = 1
p1stateno = 860
p2stateno = 870
fall = 1
kill = 0

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1


;Grab and Shock
[Statedef 860]
type    = A
movetype= A
physics = N
anim = 850
poweradd = 60
sprpriority = 1

[State 810, Grab Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5, 10


[State 0, ]
type = Explod
trigger1 =Animelemtime(3)%(ifelse(command = "a" || command = "b" || command = "c",10,20))=0
anim = 186
pos = 28,0
postype = p1
bindtime = -1
sprpriority = 3

[State 0, ]
type = TargetBind
trigger1 = AnimElemTime(3) <0
pos = 30,0
;ignorehitpause = 0
;persistent = 1


[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3, >=0
pos = 38, -95
time = 1

[State 0, 1]
type = BGPalFX
trigger1 =Animelemtime(3)=0
add = 75,255,255
sinadd = -75,-255,-255,38
persistent = 0
time =10
ignorehitpause = 1

[State 0, 1]
type = BGPalFX
trigger1 =Animelemtime(3)=20
add = 75,255,255
sinadd = -75,-255,-255,38
persistent = 0
time =10
ignorehitpause = 1

[State 0, 1]
type = BGPalFX
trigger1 =Animelemtime(3)=40
add = 75,255,255
sinadd = -75,-255,-255,38
persistent = 0
time =10
ignorehitpause = 1

[State 0, 1]
type = BGPalFX
trigger1 =Animelemtime(3)=60
add = 75,255,255
sinadd = -75,-255,-255,38
persistent = 0
time =10
ignorehitpause = 1

[State 0, 1]
type = BGPalFX
trigger1 =Animelemtime(3)=80
add = 75,255,255
sinadd = -75,-255,-255,38
persistent = 0
time =10
ignorehitpause = 1

[State 193, 2]
type = PlaySnd
trigger1 =Animelemtime(3)%(ifelse(command = "a" || command = "b" || command = "c",10,20))=0
value = 0,5
volume = 255



[State 0, 1]
type = HitAdd
trigger1 =Animelemtime(3)%(ifelse(command = "a" || command = "b" || command = "c",10,20))=0
value = 1
;ignorehitpause = 0
;persistent = 1



[State 0, 1]
type = TargetLifeAdd
trigger1 =Animelemtime(3)%(ifelse(command = "a" || command = "b" || command = "c",10,20))=0
value = -10
kill = 0
;absolute = 0
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = Explod
trigger1 =Animelemtime(3)%7=0
facing = ifelse(Random<=600,1,-1)
anim = 1051
scale = .4,.4
postype = p2
pos = 0,50
sprpriority = 2
supermove = 1
ownpal = 1
random = 40,70

[State 810, Width 2-11]
type = Width
trigger1 = 1
edge = 60,40

[State 810, State End]
type = ChangeState
trigger1 = time = 100
value = 861


;---------------------------------------------------------------------------
;Slamming
[Statedef 861]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 250


[State 812, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 48, -86

[State 812, Bind 1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 50, -86

[State 812, Bind 1]
type = TargetBind
trigger1 = AnimElem = 3
pos = 64, -86
[State 610, 2]
type = PlaySnd
trigger1 = AnimElem = 5
value = 2, 4

[State 0, 1]
type = HitDef
trigger1 = animelem = 5
attr = S,NA
hitflag = MAF
guardflag = HA
;affectteam = E
animtype = Up
;air.animtype = Light
;fall.animtype = Back
priority = 5,Hit
damage = 40,5
pausetime = 10,10
;guard.pausetime = 0,0
sparkno = s1052
;guard.sparkno = 
sparkxy = -10,-40
hitsound = s5,9 
guardsound = 6,0
ground.type = High
air.type = High
ground.slidetime = 30
guard.slidetime = 30
ground.hittime = 30
guard.hittime = 15
air.hittime = 30
;guard.ctrltime = 0
;guard.dist = 
snap = 64,0,0
yaccel = 0.4
ground.velocity = -20,-0
guard.velocity = -6
air.velocity = -20,-0
airguard.velocity = -3,-3
fall = 1
fall.recover = 0
getpower = 40,20
givepower = 10,40
envshake.time = 10
fall.envshake.time = 10
palfx.time = 60
palfx.add = 0,15,75
palfx.color = 0
palfx.invertall = 1
palfx.sinadd= 125,125,125,5
p2stateno = 1078
p2facing = 1
sprpriority = 2

[State 0, 1]
type = Explod
trigger1 = (movehit) && (P2MoveType = H) && (Enemynear, Time = 0) && (NumExplod(1051) < 2)
anim = 1051
ID = 1051
pos = 0,-25
postype = p2
vfacing = -1
bindtime = -1
removetime = 60
sprpriority = 3
ignorehitpause = 1
scale = .75,.75

[State 0, 1]
type = Explod
trigger1 = (movehit) && (P2MoveType = H) && (Enemynear, Time = 0) && (NumExplod(1051) < 2)
anim = 1051
ID = 1051
pos = 0,-65
postype = p2
facing = -1
bindtime = -1
removetime = 60
sprpriority = 3
ignorehitpause = 1
scale=.5,.5


[State 440, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Thrown by Rising Throw
[Statedef 870]
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 2


[State 0, 1]
type = PalFX
trigger1 = time > 8
trigger1 = (time+8)%5=0
time = 5
add = 0,15,75
invertall = 1
color = 0
sinadd= 125,125,125,5

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
;ignorehitpause = 0
;persistent = 1


[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 860

[State 0, 1]
type = PosSet
trigger1 = time >=2 &&  (p2stateno !=[860,861])
y = -5
;ignorehitpause = 0
;persistent = 1

[State 0, 1]
type = SelfState
trigger1 = time >=2 &&  (p2stateno !=[860,861])
value = 5010
;anim = 
;ctrl = 
;ignorehitpause = 0
;persistent = 1







; Standing Parry
[Statedef 22] 
type = S
movetype= I
physics = N
juggle = 0
ctrl = 0
anim = 22
velset = const(velocity.walk.fwd.x),0

[state 9500,1]
type = ReversalDef
trigger1 = 1
attr = S,NT
reversal.attr = SA, NA, SA, HA 
pausetime = 0,25
sparkno =40
sparkxy = 40,-55
sprpriority = 2
p1stateno = 99

[State 0, 3] 
type = HitOverride 
trigger1 = 1 
attr = SA, AP 
stateno = 99 
time = 1

[State 0, 1]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 1030, 4] 
type = ChangeState 
trigger1 = AnimTime = 0
value = 20
ctrl = 1
; Crouching Parry
[Statedef 23] 
type = C
movetype= I
physics = C
juggle = 0
anim = 13
velset = 0,0
ctrl = 0

[state 9500,1]
type = ReversalDef
trigger1 = 1
attr = C,NT
reversal.attr = C, NA, SA, HA
pausetime = 0,25
sparkno = 40
sparkxy = 30,-15
sprpriority = 2
p1stateno = 99



[State 0, 3] 
type = HitOverride 
trigger1 = 1 
attr = SC, AP 
stateno = 99 
time = 1




[State 1030, 4] 
type = ChangeState 
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----------------------------------------------------------------------
;Succesful Parry
[Statedef 99] 
type = S 
movetype= I 
physics = N 
anim = 99
velset = 0,0 
ctrl = 0

[State 1031, 1] 
type = PlayerPush 
trigger1 = Time >= 0 
value = 0

[State 1031, 2] 
type = PowerAdd
trigger1 = Time = 0 
value = 100


[State 0, 1]
type = Palfx    
trigger1 = AnimElem = 1
add = 0,0,128   
sinadd = 0, 0, 128,3
time = 18         
persistent = 0  

[State 0, 2] 
type = PlaySnd 
trigger1 = Time = 0 
value = 6,1
volume = 255

[State 0, 2] 
type = PlaySnd 
trigger1 = Time = 0 
value = 2,0
volume = 255


[State 1031, 3] 
type = ChangeState 
Trigger1 = AnimTime = 0 
value = 0 
ctrl = 1

;Fall Parry
[Statedef 900] 
type = A 
movetype= I 
physics = A 
anim = 900
velset = -4,-4 
ctrl = 0

[State 0, 1]
type = PosSet
trigger1 = !time
y = 0
;ignorehitpause = 0
;persistent = 1

[State 192, 0]
type = GameMakeAnim
trigger1 = time = 0
pos = -5,0
value = 62

[State 0, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 10
;ignorehitpause = 0
;persistent = 1


[State 1031, 1] 
type = PlayerPush 
trigger1 = Time >= 0 
value = 0

[State 1031, 2] 
type = PowerAdd
trigger1 = Time = 0 
value = 100


[State 0, 1]
type = Palfx    
trigger1 = AnimElem = 1
add = 0,0,128   
sinadd = 0, 0, 128,3
time = 18         
persistent = 0  

[State 0, 2] 
type = PlaySnd 
trigger1 = Time = 0 
value = 6,1
volume = 255

[State 0, 2] 
type = PlaySnd 
trigger1 = Time = 0 
value = 2,0
volume = 255

; Emergency Recover
[Statedef 910]
type    = A
movetype= I
physics = N
anim = 5210
ctrl = 0
poweradd = -3000

[State 5210, 1] ;Blink white
type = BGPalFX
trigger1 = Time = 0
time = 10
add = 255,255,255 ;256,256,256
sinadd = -255,-255,-255,38
 
[State 0, 1]
type = PlaySnd
trigger1 = !time
value = 20, 1

[State 0, 1]
type = PlaySnd
trigger1 = !time
value = 2, 2
channel = 0

[State 3510, 4]
type = explod
trigger1 = time =0
anim = 8503
pos = 0,-50
postype = p1
sprpriority = -2
supermove = 1
bindtime = 1
vel = 0,0
ownpal = 1

[State 5210, 1]
type = PosFreeze
trigger1 = Time = 0
value = 4

[State 5210, 2] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < -20

[State 5210, 1] 
type = VelMul
trigger1 = Time = 4
x = .8
y = .8

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
y = -4.5

[State 5210, 1] 
type = VelMul
trigger1 = Time = 4
trigger1 = Vel Y > 0
y = .5

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -3
y = -2

[State 5210, 1]
type = VelAdd
trigger1 = Time = 4
trigger1 = Vel Y > -2
y = -1

[State 5210, 2] ;Go up
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdup"
y = -2

[State 5210, 2] ;Go down
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holddown"
y = 1.5

[State 5210, 2] ;Go fwd
type = VelMul
trigger1 = Time = 4
trigger1 = Command = "holdfwd"
x = 1

[State 5210, 2] ;Go back
type = VelAdd
trigger1 = Time = 4
trigger1 = Command = "holdback"
x = -1

[State 5210, 3]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 15

[State 5210, 4]
type = CtrlSet
trigger1 = Time = 10
value = 1

[State 5210, 5]
type = VelAdd;Gravity
trigger1 = Time >= 4
y = .35

[State 5210, 5] ;Land on ground
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;JUMP_LAND
ctrl = 1

;Override Trip Anim
; HIT_TRIP (shaking)
[Statedef 5070]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5070, 1]
type = ChangeAnim 
trigger1 = 1
value = 5070

[State 5070, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 5071

[State 5070, 3]
type = ForceFeedback
trigger1 = time = 0
time = 12
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
; HIT_TRIP2 (fall through air)
[Statedef 5071]
type    = A
movetype= H
physics = N

[State 5071, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5071, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 15
type = ChangeState
value = 5110

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground)
[Statedef 5100]
type    = L
movetype= H
physics = N




[State 0, 1] ;fall parry
type = ChangeState
trigger1 = alive
trigger1 = time < 2 && command = "lparry"
value = 900


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
trigger1 = (anim != [5052,5059]) && (anim != [5062,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim = 5070)

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5052,5059]) || (anim = [5062,5069])
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

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

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

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 5101]
type    = L
movetype= H
physics = N

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5102,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim = 5101)

[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5102,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 5101, 3]
type = HitFallVel
trigger1 = Time = 0

[State 5101, 4]
type = PosSet
trigger1 = Time = 0
y = 20

[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .4

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = ChangeState
value = 5110

;---------------------------------------------------------------------------
; HIT_LIEDOWN
[Statedef 5110]
type    = L
movetype= H
physics = N

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1] ;For hit up/up-diag type (from state 5081)
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5110, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim != [5162,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim = 5070)

[State 5110, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] ;Not already changed anim
trigger1 = anim = [5162,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
;value = F7, 0 ;Hit ground
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5110, 7]
type = GameMakeAnim
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 10

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9] ;For hit up type
type = ChangeAnim
persistent = 0
triggerall = anim = [5172,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground anim
value = 5110 + (anim % 10)

[State 5110, 10] ;For normal
type = ChangeAnim
persistent = 0
triggerall = Anim != [5112,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
value = 5110 + (anim = 5171)

[State 5110, 11] ;If just died
type = ChangeState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5112,5119]
value = 5150

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 15]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

; HIT_GETUP
[Statedef 5120]
type    = L
movetype= I
physics = N

[State 5120, 1a] ;Get up anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5112,5119]
trigger2 = !SelfAnimExist(5120 + (anim % 10))
value = 5120 + (Anim = 5111)

[State 5120, 1b] ;Get up anim (for hit up/diag-up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5112,5119]
trigger1 = SelfAnimExist(5120 + (anim % 10))
value = 5120 + (anim % 10)

[State 5120, 2]
type = VelSet
trigger1 = Time = 0
x = 0

[State 5120, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

[State 5120, 5] ;Can't be thrown right after getting up
type = NotHitBy
trigger1 = AnimTime = 0
value = , NT,ST,HT
time = 12

[State 5120, 6] ;Can't be hit right after getting up (short time)
type = NotHitBy
trigger1 = AnimTime = 0
value2 = SCA
time = 3

[State 0, ]
type = PosAdd
trigger1 = AnimElem = 7
x = 20



[State 5120, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------

;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]
;This controller plays a sound everytime KFM lands from a jump, or
;from his back-dash.

[State 3000, 1]
type = StopSnd
trigger1 = prevstateno >= 10000
ignorehitpause = 1
channel = 9


[State 0,1]
type = Helper
triggerall = (WinKO) && (Var(51) !=1) && !NumHelper(9994)
trigger1 = stateno = [3000,4100]
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
ID = 999
ignorehitpause = 1

[State 0, 1]
type = AssertSpecial
trigger1 =  NumHelper(9994) 
ignorehitpause = 1
flag = NoFG
flag2 = NoBarDisplay
flag3= NoMusic

[State -2, Finish SFX]
type = AllPalFX
triggerall = (WinKO) && (Var(51) !=1)
trigger1 = stateno >= 1000
add = 255,255,255
sinadd = -255,-255,-255,75
persistent = 0
time =20
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


[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
trigger2 = stateno = 101
value = 55, 2

[State -3, Landing Sound]
type = GameMakeAnim
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
trigger2 = stateno = 101
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

[State -3, Ow Sound]
type = PlaySnd
triggerall = p2stateno = 2052 && p2movetype = H
trigger1 = (enemynear,time)%20=0
value = 0,9

[State 3510, 4]
type = AssertSpecial
trigger1 = NumExplod(999) 
flag = noFG
flag2= NoBG
ignorehitpause =1 

[State 1000, ChangeState]
type = RemoveExplod
trigger1 = NumHelper(9999) = 1
trigger1 = helper(9999), time <= 5
ID = 999

[State -2, Lightning Hit Detection]
type =Varset
trigger1 = P2movetype != H && Var(1) =1
var(1) = 0
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
type = BGPalFX
trigger1 = time >= 100
color = 0
persistent = 1
time =1
ignorehitpause = 1

[State -2, Reset]
type = AssertSpecial
trigger1 = time = [0,500]
flag = RoundNotOver

[State -2, Reset]
type = AssertSpecial
trigger1 = time = [0,1200]
flag = NoBarDisplay
flag2 =NoMusic


[State -2, Reset]
type = AssertSpecial
trigger1 = time = [100,1200]
flag =NoFG

[State 9990, Good]
type = PlaySnd
trigger1 = time = 0 
value = 65,0
abspan = 0
volume = 255
freqmul = .5



[State 9990, Good]
trigger1 = time = 100 && parent, Var(56) !=2
type = Explod
ownpal = 1
anim = 9996
postype = left
pos = 160,120
bindtime = -1
removetime =800
ID = 9996
ontop =1

[State 9999,0]
type = ModifyExplod
trigger1 = time = [100,110]
ID = 9996
scale = 2.0 - (.1*(time-100)), 2.0 - (.1*(time-100))

[State 9990, Good]
trigger1 = time = 105 && parent, Var(56) !=2
type = Explod
ownpal = 1
anim = 9998
postype = left
pos = 0,170
bindtime = -1
removetime =700
ID = 9990
ontop =1


[State 9990, Good]
trigger1 = time = 120 && parent, Var(56) !=2
type = Explod
ownpal = 1
anim = 9995
postype = left
pos = 160,205
bindtime = -1
removetime =700
vfacing = -1
ID = 9995
ontop =1

[State 9999,0]
type = ModifyExplod
trigger1 = time = [120,130]
ID = 9995
scale = (.1*(time-120)), (.1*(time-120))

[State 9990, Good]
trigger1 = time = 135 && parent, Var(56) !=2
type = Explod
ownpal = 1
anim = 9980+(random%8)
postype = left
pos = 160,205
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


[State -2,1]
type = PlaySnd
trigger1 = !time 
persistent = 0
value = 9,0
volume =455
ignorehitpause = 1
abspan = 0

[State 3510, 4]
type = explod
trigger1 = time = 0
anim = 9500
pos = 0,0
postype = left
sprpriority = -10
supermove = 1
bindtime = 50
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

;-------------------
;MEE Template Files
;   provided by
;  Kitsune Sniper
;       ***
; Thanks, Kitsune!
;-------------------

