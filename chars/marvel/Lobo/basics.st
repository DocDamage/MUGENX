; States file for Lobo -- Basics
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
; Lose (on timeover)
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,1

[State 170,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Draw game (on timeover)
[Statedef 175]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 175,0]
type = PlaySnd
trigger1 = Time = 0
value = 6,2

[State 175,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Clone Losepose (either draw game or lose, on timeover)
[Statedef 179]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 179,1]
type = AssertSpecial     
trigger1 = Time = [0,100]
flag = RoundNotOver


;---------------------------------------------------------------------------
; Winposes
[Statedef 180]  ; winpose selector
type = S
ctrl = 0
velset = 0,0

[State 180, special MainMen finish]
type = ChangeState
trigger1 = NumHelper(10) > 0
value = 189

[State 180,Winpose decider]
type = ChangeState
trigger1 = (Time = 0) && (NumHelper(10) = 0)
value = 181 + ((Random * 2) / 1000)     ; change the 1 to however many winposes you have

;-----------------------
; Winpose 1 - "The Main Man always delivers!"
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 181, 0]
type = PlaySnd
trigger1 = Time = 60
value = 6, 0

[State 181, tossed match]
type = Explod
trigger1 = Time = 70
anim = 981
pos = 48,-104
vel = 2,0
accel = 0,0.5
removetime = 15

[State 181, 1]
type = AssertSpecial     
trigger1 = Time = [0,260]
flag = roundnotover

;-----------------------
; Winpose 2 - "Noone messes with the Main Man!"
[Statedef 182]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 182, 0]
type = PlaySnd
trigger1 = Time = 6
value = 6, 3

[State 182, 1]
type = AssertSpecial     
trigger1 = Time = [0,200]
flag = roundnotover


;-----------------------
; Special Winpose (when KO with clones) - "The Main MEN always deliver!"
[Statedef 189]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 182, 0]
type = PlaySnd
trigger1 = (Time = 6) && (!IsHelper)
value = 6, 4

[State 182, 1]
type = AssertSpecial     
trigger1 = Time = [0,200]
flag = roundnotover

;---------------------------------------------------------------------------
; Intros
[Statedef 190]  ; intro selector
type = S
ctrl = 0
velset = 0,0

[State 190,intro decider]
type = ChangeState
trigger1 = Time = 1
value = 191 + ((Random * 1) / 1000)     ; change the 1 to however many intros you have

[State 190, vs Superboy]
type = Null ;ChangeState
trigger1 = (Time = 0) && (P2Name = "Kon-El")
value = 193

;;-----------------------
;; Intro 1 - "I'm the Main Man"
;[Statedef 191]
;type = S
;ctrl = 0
;anim = 191
;
;[State 191, 1]
;type = PlaySnd
;trigger1 = Time = 25
;value = 5,0
;
;[State 192, 2]             
;type = AssertSpecial
;trigger1 = Time = [0,70]
;flag = Intro


;-----------------------
; Intro 2 - spacebike
;[Statedef 192]
[Statedef 191]
type = S
ctrl = 0
anim = 192

[State 192, playsnd1]
type = PlaySnd
trigger1 = Time = 25
value = 5,1

[State 192, playsnd2]
type = PlaySnd
trigger1 = AnimElem = 25
value = 5,0

[state 192, no lifebars]
type = assertspecial
trigger1 = Time >= 0
flag = NoBarDisplay

[State 192, bike flying offscreen]
type = Explod
trigger1 = AnimElem = 17
anim = 992
pos = 0,0   ;60,0
vel = 0,0   ;25,0
;removetime = 60 ;-2
sprpriority = -1

[State 192, 2]             
type = AssertSpecial
trigger1 = Time = [0,70]
flag = Intro


;-----------------------
; Special Intro 1 - Slobo (vs Superboy)
[Statedef 193]
type = S
ctrl = 0
anim = 193

[State 193, 2]
type = AssertSpecial
trigger1 = Time = [0,30]
flag = Intro



;-----------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0

[State 195, 0]
type = PlaySnd
trigger1 = Time = 6
value = 6,1

[State 195, reload]
type = VarSet
trigger1 = AnimTime > -6    ;AnimTime = -1
v = 5
value = 6 + (AnimTime)  ;6

[State 195, reloadClick]
type = PlaySnd
trigger1 = AnimTime = -1
value = 9,2
;volume = 0
;channel = -1
;lowpriority = 
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan = 0
;ignorehitpause = 0
;persistent = 1



[State 195, 1]
type = SelfState     
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; Stand Light Punch
[StateDef 210]
anim = 210
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 20

[State 210, swoosh]
type = PlaySnd
trigger1 = Time = 0
value = 0,0

[State 210, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 1,0

[State 210, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 20
guardflag = MA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-80
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

[State 210, return to stance (regular)]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Light Kick
[StateDef 220]
anim = 220
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 5

[State 220, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 220, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 220, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 10
guardflag = MAFD
pausetime = 6,6
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-10
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -3
guard.velocity = -2
air.velocity = -2,-3

[State 220, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Punch
[StateDef 230]
anim = 230
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 45

[State 230, swoosh]
type = PlaySnd
trigger1 = Time = 0
value = 0,1

[State 230, grunt]
type = PlaySnd
trigger1 = Time = 1
value = 1,1

[State 230, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 45
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-75
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 230, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Medium Kick
[StateDef 240]
anim = 240
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 10

[State 240, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 240, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 240, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 25
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-70
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 240, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Hard Punch
[StateDef 250]
anim = 250
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0
poweradd = 65

[State 250, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 250, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 250, Hit 1]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 25
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -8
guard.velocity = -5
air.velocity = -4,8

[State 250, Hit 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
damage = 40
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-30
animtype = Heavy
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -10
guard.velocity = -5
air.velocity = -4,-8

[State 250, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Hard Kick
[StateDef 260]
anim = 260
ctrl = 0
type = S
movetype = A
physics = S
velset = 5,0
poweradd = 25

[State 260, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 260, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 260, HitDef 1]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 35
guardflag = MA
pausetime = 8,8
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 20
ground.velocity = -7
guard.velocity = -4
air.velocity = -4,-8

[State 260, HitDef 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
damage = 35
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-20
animtype = Heavy
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -9
guard.velocity = -6
air.velocity = -4,-8

[State 260, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Stand Hard Kick (alternate, launcher)
[StateDef 261]
anim = 261
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0

[State 261, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 60
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -2,-10
guard.velocity = -12
air.velocity = -4,-8

[State 261, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Headbutt (close-range Stand Medium Punch)
[StateDef 310]
anim = 310
ctrl = 0
type = S
movetype = A
physics = S
velset = 5,0
poweradd = 50

[State 310, swoosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2

[State 310, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 310, Hit 1]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 20
guardflag = MA
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-70
animtype = Medium
ground.type = High
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8
guard.velocity = -10
air.velocity = -3,-6

[State 310, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Double-uppercut (close-range Stand Hard Punch)
[StateDef 320]
anim = 320
ctrl = 0
type = S
movetype = A
physics = S
velset = 0,0    ;5,0
poweradd = 75

[State 320, swoosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2

[State 320, grunt]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,2

[State 320, Hit 1]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
damage = 35
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkxy = -20,-64
animtype = Up
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,-5;-8
guard.velocity = -6
air.velocity = 0,-7

[State 320, Hit 2]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
damage = 40
guardflag = MA
pausetime = 9,9
hitsound = S2,2
guardsound = S3,0
sparkxy = 15,-110
animtype = Up
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = 0,-11
guard.velocity = -6
air.velocity = 0,-11

[State 320, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Punch
[StateDef 410]
anim = 410
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 20

[State 410, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 410, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 410, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 20
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-60
animtype = Light
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -3
guard.velocity = -2
air.velocity = -3,-6

[State 410, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Light Kick
[StateDef 420]
anim = 420
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 5

[State 420, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 420, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,0

[State 420, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 15
guardflag = L
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,0
animtype = Light
ground.type = Low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -2
guard.velocity = -1
air.velocity = -2,-3

[State 420, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Punch
[StateDef 430]
anim = 430
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 45

[State 430, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 430, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 430, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 45
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-70
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -8
guard.velocity = -10
air.velocity = -3,-6

[State 430, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Medium Kick
[StateDef 440]
anim = 440
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 10

[State 440, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 440, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 440, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 30
guardflag = L
pausetime = 9,9
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-50
animtype = Medium
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -4
guard.velocity = -2
air.velocity = -3,-6

[State 440, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Hard Punch (1-2 punch; for combos)
[StateDef 450]
anim = 450
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 65

[State 450, swoosh #1]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 450, swoosh #2]
type = PlaySnd
trigger1 = AnimElem = 5
value = 0,2

[State 450, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 450, Hit #1]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 25
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-70
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 450, Hit #2]
type = HitDef
trigger1 = animelem = 5
attr = C, NA
damage = 40
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-70
animtype = Heavy
ground.type = Low
ground.slidetime = 15
ground.hittime  = 15
ground.velocity = -7
guard.velocity = -5
air.velocity = -3,-6

[State 450, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Crouching hard punch (launcher)
[StateDef 455]
anim = 455
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 75
juggle = 15

[State 455, swoosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 0,2

[State 455, grunt]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,2

[State 320, Hit 1]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
damage = 35
guardflag = MA
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkxy = -20,-64
animtype = Up
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0,-8
guard.velocity = -6
air.velocity = 0,-7

[State 320, Hit 2]
type = HitDef
trigger1 = AnimElem = 4
attr = C, NA
damage = 40
guardflag = MA
pausetime = 9,9
hitsound = S2,2
guardsound = S3,0
sparkxy = 15,-110
animtype = Up
ground.type = High
ground.slidetime = 8
ground.hittime  = 20
ground.velocity = 0,-11
guard.velocity = -6
air.velocity = 0,-11
fall = 1
fall.recover = 0

[State 455, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1




;---------------------------------------------------------------------------
; Crouch Hard Kick
[StateDef 460]
anim = 460
ctrl = 0
type = C
movetype = A
physics = C
velset = 0,0
poweradd = 25

[State 460, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 460, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,4

[State 460, HitDef]
type = HitDef
trigger1 = Time = 0
attr = C, NA
hitflag = MD
damage = 60
guardflag = L
pausetime = 11,11
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,0
animtype = Back
ground.type = Trip
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6
guard.velocity = -3

[State 460, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Air Light Punch
[StateDef 610]
anim = 610
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 20

[State 610, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 610, grunt]
type = PlaySnd
trigger1 = (Time = 0) && (Random < 500)
value = 1,0

[State 610, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 20
guardflag = HA
pausetime = 6,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-70
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 610, ChangeAnim]  ;Change to jumping descent anim
type = ChangeAnim
trigger1 = AnimTime = 0
value = 41

[State 610, CtrlSet]
type = CtrlSet
trigger1 = anim = 48
value = 1

[State 610, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------
; Air Light Kick
[StateDef 620]
anim = 620
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 10

[State 620, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,0

[State 620, grunt]
type = PlaySnd
trigger1 = (Time = 0) && (Random < 500)
value = 1,0

[State 620, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 10
guardflag = HA
pausetime = 8,8
hitsound = S2,0
guardsound = S3,0
sparkxy = 0,-10
animtype = Light
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 620, ChangeAnim]  ;Change to jumping descent anim
type = ChangeAnim
trigger1 = AnimTime = 0
value = 44

[State 620, CtrlSet]
type = CtrlSet
trigger1 = anim = 48
value = 1

[State 620, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------
; Air Medium Punch
[StateDef 630]
anim = 630
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 65

[State 630, swoosh]
type = PlaySnd
trigger1 = Time = 0
value = 0,1

[State 630, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 630, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 70
guardflag = HA
pausetime = 8,8
hitsound = S2,2
guardsound = S3,0
sparkxy = -10,-50
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

;---------------------------------------------------------------------------
; Air Medium Kick
[StateDef 640]
anim = 640
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 20

[State 640, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,1

[State 640, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,1

[State 640, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 30
guardflag = HA
pausetime = 8,8
hitsound = S2,1
guardsound = S3,0
sparkxy = 0,-10
animtype = Medium
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 640, ChangeAnim]  ;Change to jumping descent anim
type = ChangeAnim
trigger1 = AnimTime = 0
value = 44

[State 640, CtrlSet]
type = CtrlSet
trigger1 = anim = 48
value = 1

[State 640, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------
; Air Hard Punch
[StateDef 650]
anim = 650
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 80

[State 650, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,2

[State 650, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 650, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 85
guardflag = HA
pausetime = 8,8
hitsound = S2,2
guardsound = S3,0
sparkxy = 0,-70
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 650, ChangeAnim]  ;Change to jumping descent anim
type = ChangeAnim
trigger1 = AnimTime = 0
value = 44

[State 650, CtrlSet]
type = CtrlSet
trigger1 = anim = 48
value = 1

[State 650, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50

;---------------------------------------------------------------------------
; Air Hard Kick
[StateDef 660]
anim = 660
ctrl = 0
type = A
movetype = A
physics = A
poweradd = 25

[State 660, swoosh]
type = PlaySnd
trigger1 = Time = 2
value = 0,3

[State 660, grunt]
type = PlaySnd
trigger1 = Time = 0
value = 1,2

[State 660, HitDef]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 50
guardflag = HA
pausetime = 8,8
hitsound = S2,2
guardsound = S3,0
sparkxy = -20,-40
animtype = Heavy
ground.type = High
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -5
guard.velocity = -7
air.velocity = -2,-3

[State 660, ChangeAnim]  ;Change to jumping descent anim
type = ChangeAnim
trigger1 = AnimTime = 0
value = 44

[State 660, CtrlSet]
type = CtrlSet
trigger1 = anim = 48
value = 1

[State 660, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 50



;---------------------------------------------------------------------------
; combo commentaries

; Good
[StateDef 790]
anim = 790
ctrl = 0
movetype = I
physics = N

[State 790, sound]
type = PlaySnd
trigger1 = Time = 3
value = 12,10

[State 790, cleanup]
type = DestroySelf
trigger1 = IsHelper(3) && (Time > 10)


;-----------------------
;  DCvM Template Files
;      provided by
;       Buyog2099
;(based on MEE template
;  by Kitsune Sniper)
;         ***
;   Thanks, Kitsune!
;-----------------------
