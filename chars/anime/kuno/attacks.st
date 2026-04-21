;---------------------------------------------------------------------------
; Slash_A
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 10
ctrl = 0
velset = 0,0,0
anim = 200

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 1

[State 200, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = light
damage    = 20, 1
guardflag = MA
pausetime = 5,5
sparkno = 0
sparkxy = -15,-55
hitsound   = S5,2
guardsound = S7,15
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2  
air.velocity = -2,0

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Slash_B
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 10
ctrl = 0
velset = 0,0,0
anim = 210

[State 210, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Medium
damage    = 40, 1
guardflag = MA
pausetime = 5,5
sparkno = 0
sparkxy = -15,-14
hitsound   = S5,2
guardsound = S7,15
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3  
air.velocity = -3,0

[State 210, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Slash_C_Far
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 220

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 2

[State 220, 2]
type = VelSet
trigger1 = AnimElem = 2
x = 5

[State 220, 2.5]
type = MakeDust
trigger1 = Time = 0
trigger2 = Time = 1
trigger3 = Time = 2
trigger4 = Time = 3
trigger5 = Time = 4
trigger6 = Time = 5
trigger7 = Time = 6
trigger8 = Time = 7
trigger9 = Time = 8
pos = 0, 0

[State 220, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Heavy
damage    = 75, 1
guardflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = -25,-55
hitsound   = S5,1
guardsound = S7,16
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8  
air.velocity = -4,0

[State 220, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Slash_C_Far_Run
[Statedef 221]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
velset = 10,0,0
ctrl = 0
anim = 220

[State 221, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 2

[State 221, 2]
type = MakeDust
trigger1 = Time = 0
trigger2 = Time = 1
trigger3 = Time = 2
trigger4 = Time = 3
trigger5 = Time = 4
trigger6 = Time = 5
trigger7 = Time = 6
trigger8 = Time = 7
trigger9 = Time = 8
pos = 0, 0

[State 221, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Heavy
damage    = 75, 1
guardflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = -25,-55
hitsound   = S5,1
guardsound = S7,16
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8   
air.velocity = -4,0
fall = 1

[State 221, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Slash_A_B_Close
[Statedef 225]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 10
ctrl = 0
velset = 0,0,0
anim = 225

[State 225, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 2

[State 225, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = S, NA
animtype  = Heavy
damage    = 55, 1
guardflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = -25,-55
hitsound   = S5,1
guardsound = S7,15
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4  
air.velocity = -4,0

[State 225, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Slash_D_Far
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 230

[State 230, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 2

[State 230, 2]
type = VelSet
trigger1 = AnimElem = 2
x = 5

[State 230, 2.5]
type = MakeDust
trigger1 = Time = 0
trigger2 = Time = 1
trigger3 = Time = 2
trigger4 = Time = 3
trigger5 = Time = 4
trigger6 = Time = 5
trigger7 = Time = 6
trigger8 = Time = 7
trigger9 = Time = 8
pos = 0, 0

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Heavy
damage    = 85, 1
guardflag = MA
pausetime = 5,9
sparkno = 2
sparkxy = -5,-60
hitsound   = S5,1
guardsound = S7,15
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -7  
air.velocity = -4,0

[State 230, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Slash_D_Far_Run
[Statedef 231]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
velset = 10,0,0
ctrl = 0
anim = 230

[State 231, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 2

[State 231, 2]
type = MakeDust
trigger1 = Time = 0
trigger2 = Time = 1
trigger3 = Time = 2
trigger4 = Time = 3
trigger5 = Time = 4
trigger6 = Time = 5
trigger7 = Time = 6
trigger8 = Time = 7
trigger9 = Time = 8
pos = 0, 0

[State 231, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Heavy
damage    = 85, 1
guardflag = MA
pausetime = 5,9
sparkno = 2
sparkxy = -5,-60
hitsound   = S5,1
guardsound = S7,16
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -11  
air.velocity = -4,0

[State 231, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Slash_C_D_Close
[Statedef 235]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 235

[State 235, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 2

[State 235, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Heavy
damage    = 85, 1
guardflag = MA
pausetime = 5,5
sparkno = 2
sparkxy = -5,-60
hitsound   = S5,1
guardsound = S7,16
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4,4  
air.velocity = -4,4
fall = 1

[State 235, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Slash_C_D_Close_[as follow up!]
[Statedef 236]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 235

[State 236, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 2

[State 236, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype  = Heavy
damage    = 35, 1
guardflag = MA
pausetime = 5,5
sparkno = 2
sparkxy = -5,-60
hitsound   = S5,1
guardsound = S7,16
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -4,4  
air.velocity = -4,4
fall = 1

[State 236, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Slash_Crouch_A
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 10
ctrl = 0
velset = 0,0,0
anim = 400

[State 400, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 1

[State 400, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
animtype  = Light
damage    = 20, 1
guardflag = MA
pausetime = 5,1
sparkno = 0
sparkxy = -15,-30
hitsound   = S5,2
guardsound = S7,15
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2  
air.velocity = -2,0

[State 400, 3]
type = CtrlSet
trigger1 = Time = 14
value = 1

[State 400, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Slash_Crouch_B
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 10
ctrl = 0
velset = 0,0,0
anim = 410

[State 410, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 1

[State 410, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
animtype  = Light
damage    = 30, 1
guardflag = MA
pausetime = 5,3
sparkno = 0
sparkxy = -15,-10
hitsound   = S5,2
guardsound = S7,15
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3  
air.velocity = -3,0

[State 410, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Slash_Crouch_C
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 420

[State 420, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 2

[State 420, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
animtype  = Heavy
damage    = 70, 1
guardflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = -15,-30
hitsound   = S5,1
guardsound = S7,16
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3  
air.velocity = -3,0

[State 420, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Slash_Crouch_D
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 430

[State 430, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 2

[State 430, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = C, NA
animtype  = heavy
damage    = 85, 1
guardflag = L
pausetime = 2,5
sparkno = 2
sparkxy = -25,-10
hitsound   = S5,0
guardsound = S7,16
ground.type = Trip
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1, -5   
air.velocity = -1,0
fall.recover = 0

[State 430, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
;Slash_Air_A_B
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 10
ctrl = 0
anim = 600

[State 600, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 7, 0

[State 600, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = A, NA
animtype  = Medium
damage    = 20, 1
guardflag = MA
pausetime = 5,5
sparkno = 1
sparkxy = -25,-30
hitsound   = S5,2
guardsound = S7,15
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2  
air.velocity = -2,0

[State 600, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;Slash_Air_C
[Statedef 620]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 30
ctrl = 0
anim = 620

[State 620, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 2

[State 620, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = A, NA
animtype  = Heavy
damage    = 80, 1
guardflag = MA
pausetime = 8,8
sparkno = 2
sparkxy = -25,-30
hitsound   = S5,1
guardsound = S7,15
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -3,-2   
air.velocity = -3,-2
fall = 1

[State 620, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;Slash_Air_D
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 30
ctrl = 0
anim = 630

[State 630, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 2

[State 630, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
animtype  = Heavy
damage    = 100, 1
guardflag = MA
pausetime = 9,9
sparkno = 2
sparkxy = -25,-50
hitsound   = S5,2
guardsound = S7,16
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1.2,5
air.velocity = -1.2, 5
fall = 1

[State 630, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; Uppercut
[Statedef 1000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 40
ctrl = 0
velset = 0,0,0
anim = 1000

[State 1000, 1]
type = ReversalDef
trigger1 = AnimElem = 1
reversal.attr = SC, NA, SA
pausetime = 20,46
hitsound = S7,15
palfx.time = 5
palfx.add = 156,156,156

[State 1000, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1010
ctrl = 0

;------------
; Uppercut_up
[Statedef 1010]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 0
ctrl = 0
velset = 2.5,-10,0
anim = 1010

[State 1010, 1]
type = PlaySnd
trigger1 = Time = 0
value = 7,25

[State 1010, 2]
type = PlaySnd
trigger1 = Time = 0
value = 7,2

[State 1010, 2.5]
type = AfterImage
trigger1 = Time = 1
time = 38
length = 4
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 1010, 3]
type = HitDef
trigger1 = AnimElem = 1
attr = A, NA
animtype  = Heavy
damage    = 125, 1
guardflag = MA
pausetime = 5,5
sparkno = 2
sparkxy = -5,-60
hitsound   = S5,1
guardsound = S7,16
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1,-10.5      
air.velocity = -1,-10.5
fall = 1
fall.recover = 0

[State 1010, 3]
type = ChangeState
trigger1 = Vel Y >= 0
value = 1020
ctrl = 0

;------------
; Uppercut_zenith
[Statedef 1020]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 0
ctrl = 0
anim = 1020

[State 1020, 1]
type = VelSet
trigger1 = Time >= 0
x = 0
y = 0
z = 0

[State 1020, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7,2

[State 1020, 3]
type = ChangeState
trigger1 = AnimTime= 0
value = 1030
ctrl = 0

;------------
; Uppercut_down
[Statedef 1030]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 0
velset = 0,3,0
ctrl = 0
anim = 1030

[State 1030, 2]
type = PlaySnd
trigger1 = Time = 0
value = 7,13

[State 1030, 1]
type = HitDef
trigger1 = Time = 1
attr = A, NA
animtype  = Heavy
damage    = 55, 1
guardflag = MA
pausetime = 15,10
sparkno = 2
sparkxy = -5,-60
hitsound   = S7,12
guardsound = S7,15
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1,4  
air.velocity = -1,4
fall = 1
fall.recover = 0
palfx.time = 20
palfx.add = 175,175,255

[State 1030, 3]
type = ChangeState
trigger1 = Time = 200
value = 50
ctrl = 0

;---------------------------------------------------------------------------
; Uppercut_y
[Statedef 1050]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 40
ctrl = 0
anim = 1050

[State 1050, 1]
type = MakeDust
trigger1 = Time = 0
trigger2 = Time = 1
trigger3 = Time = 2
trigger4 = Time = 3
trigger5 = Time = 4
trigger6 = Time = 5
trigger7 = Time = 6
trigger8 = Time = 7
trigger9 = Time = 8
pos = 0, 0

[State 1050, 1.5]
type = VelSet
trigger1 = Time < 10
x = 9

[State 1050, 2]
type = VelAdd
trigger1 = Time >= 10
x = -.2

[State 1050, 2.5]
type = PlaySnd
trigger1 = Time = 0
value = 7,10

[State 1050, 2.5]
type = AfterImage
trigger1 = Time = 1
time = 8
length = 4
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 1050, 3]
type = Null ;ReversalDef
trigger1 = AnimElem = 1
reversal.attr = SC, NA, SA
pausetime = 20,46
hitsound = S7,15
palfx.time = 5
palfx.add = 156,156,156

[State 1050, 4]
type = ChangeState
trigger1 = Vel X <= 0
value = 1060

;---------
; Uppercut_Strong_y_start
[Statedef 1060]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 1000

[State 1060, 3]
type = ReversalDef
trigger1 = AnimElem = 1
reversal.attr = SC, NA, SA
pausetime = 20,46
hitsound = S7,15
palfx.time = 5
palfx.add = 156,156,156

[State 1060, 4]
type = ChangeState
trigger1 = Time = 8
value = 1010
ctrl = 0

;---------------------------------------------------------------------------
; Uppercut_a
[Statedef 1200]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 35
ctrl = 0
velset = 0,0,0
anim = 1000

[State 1200, 3]
type = ReversalDef
trigger1 = AnimElem = 1
reversal.attr = SC, NA, SA
pausetime = 20,46
hitsound = S7,15
palfx.time = 5
palfx.add = 156,156,156

[State 1200, 4]
type = ChangeState
trigger1 = Time = 8
value = 1210
ctrl = 0

;------------
; Uppercut_up
[Statedef 1210]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 0
ctrl = 0
velset = 1.5,-6,0
anim = 1010

[State 1210, 1]
type = PlaySnd
trigger1 = Time = 0
value = 7,25

[State 1210, 2]
type = PlaySnd
trigger1 = Time = 0
value = 7,2

[State 1210, 2.5]
type = AfterImage
trigger1 = Time = 1
time = 38
length = 4
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 1210, 3]
type = HitDef
trigger1 = AnimElem = 1
attr = A, NA
animtype  = Heavy
damage    = 85, 1
guardflag = MA
pausetime = 5,5
sparkno = 2
sparkxy = -5,-60
hitsound   = S5,1
guardsound = S7,15
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1,-6.5     
air.velocity = -1,-6.5
fall = 1
fall.recover = 0

[State 1210, 3]
type = ChangeState
trigger1 = Vel Y >= 0
value = 1020
ctrl = 0

;---------------------------------------------------------------------------
; Hadoken_x
[Statedef 1100]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 1100

[State 1100, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 6

[State 1100, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 2

[State 1100, 3]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 14

[State 1100, 3.5]
type = VelSet
trigger1 = AnimElem = 2
x = 5

[State 1100, 4]
type = Projectile
trigger1 = AnimElem = 3
projid = 1110
projanim = 1110
projhitanim = 1120
projremanim = 1130
projremovetime = 80
projshadow = -1
projsprpriority = 5
offset = 50, -65
velocity = 4, 0
remvelocity = 1, 0
accel = 0, 0
attr = S, SP
damage    = 115,5
getpower  = 40
givepower = 30
hitflag = MAF
guardflag = MA
pausetime = 12,12
guard.pausetime = 6,12
sparkno = 2
sparkxy = 0, 0
hitsound   = S7,12
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -6,-2   
fall = 1
airguard.velocity = 0   
guard.velocity = 0   
air.type = High
air.velocity = -5,-6
palfx.time = 20
palfx.add = 175,175,255

[State 1100, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hadoken_a
[Statedef 1150]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 1100

[State 1150, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 6

[State 1150, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 2

[State 1150, 3]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 14

[State 1150, 3.5]
type = VelSet
trigger1 = AnimElem = 2
x = 2.5

[State 1150, 4]
type = Projectile
trigger1 = AnimElem = 3
projid = 1150
projanim = 1110
projhitanim = 1120
projremanim = 1130
projremovetime = 80
projshadow = -1
projsprpriority = 5
offset = 50, -65
velocity = 2, 0
remvelocity = 1, 0
accel = 0, 0
attr = S, SP
damage    = 115,5
getpower  = 40
givepower = 30
hitflag = MAF
guardflag = MA
pausetime = 12,12
guard.pausetime = 6,12
sparkno = 2
sparkxy = 0, 0
hitsound   = S7,12
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -10,-2 
airguard.velocity = 0   
guard.velocity = 0   
air.type = High
air.velocity = -5,-2
palfx.time = 20
palfx.add = 175,175,255

[State 1150, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hadoken_a_x_combo
[Statedef 1170]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 1170

[State 1170, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 6

[State 1170, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7, 2

[State 1170, 3]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7, 14

[State 1170, 3.5]
type = VelSet
trigger1 = AnimElem = 2
x = 5

[State 1170, 4]
type = Projectile
trigger1 = AnimElem = 3
projid = 1110
projanim = 1110
projhitanim = 1120
projremanim = 1130
projremovetime = 80
projshadow = -1
projsprpriority = 5
offset = 50, -65
velocity = 4, 0
remvelocity = 1, 0
accel = 0, 0
attr = S, SP
damage    = 85,5
getpower  = 40
givepower = 30
hitflag = MAF
guardflag = MA
pausetime = 12,12
guard.pausetime = 6,12
sparkno = 2
sparkxy = 0, 0
hitsound   = S7,12
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -6,-2   
fall = 1
airguard.velocity = 0   
guard.velocity = 0   
air.type = High
air.velocity = -5,-6
palfx.time = 20
palfx.add = 175,175,255

[State 1170, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Melon_Splicing_x
[Statedef 2000]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 45
ctrl = 0
velset = 0,0,0
anim = 2000

[State 2000, 1]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 11
value = 7, 2

[State 2000, 1.5]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 11
value = 7,5

[State 2000, 2]
type = VelSet
trigger1 = AnimElem = 4
x = 16

[State 2000, 2]
type = VelSet
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
x = 5

[State 2000, 2.5]
type = MakeDust
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
pos = 0, 0

[State 2000, 2.5]
type = AfterImage
trigger1 = Time = 1
time = 68
length = 8
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 2000, 3]
type = ReversalDef
trigger1 = AnimElem = 2
reversal.attr = SC, NA, SA
pausetime = 20,46
hitsound = S7,15
palfx.time = 5
palfx.add = 156,156,156

[State 2000, 4]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Heavy
damage    = 40, 1
guardflag = MA
pausetime = 4,18
sparkno = 2
sparkxy = -25,-55
hitsound   = S5,1
guardsound = S7,15
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8  
air.velocity = -4,0

[State 2000, 5]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
attr = S, NA
animtype  = Heavy
damage    = 40, 1
guardflag = MA
pausetime = 4,18
sparkno = 2
sparkxy = -25,-55
hitsound   = S5,1
guardsound = S7,16
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8  
air.velocity = -4,0

[State 2000, 6]
type = HitDef
trigger1 = AnimElem = 11
attr = S, NA
animtype  = Heavy
damage    = 60, 1
guardflag = MA
pausetime = 8,12
sparkno = 2
sparkxy = -25,-35
hitsound   = S5,1
guardsound = S7,15
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6,7  
air.velocity = -6,7
fall = 1

[State 2000, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Melon_Splicing_a
[Statedef 2050]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 2050

[State 2050, 1]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 11
value = 7, 2

[State 2050, 1.5]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 11
value = 7,5

[State 2050, 2]
type = VelSet
trigger1 = AnimElem = 4
x = 5

[State 2050, 2]
type = VelSet
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
x = 3

[State 2050, 2.5]
type = MakeDust
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
pos = 0, 0

[State 2050, 2.5]
type = AfterImage
trigger1 = Time = 1
time = 58
length = 8
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 2050, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Heavy
damage    = 30, 1
guardflag = MA
pausetime = 4,18
sparkno = 2
sparkxy = -25,-55
hitsound   = S5,1
guardsound = S7,16
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5  
air.velocity = -2,0

[State 2050, 3]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
attr = S, NA
animtype  = Heavy
damage    = 30, 1
guardflag = MA
pausetime = 4,18
sparkno = 2
sparkxy = -25,-55
hitsound   = S5,1
guardsound = S7,15
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5  
air.velocity = -2,0

[State 2050, 3.5]
type = HitDef
trigger1 = AnimElem = 11
attr = S, NA
animtype  = Heavy
damage    = 55, 1
guardflag = MA
pausetime = 8,12
sparkno = 2
sparkxy = -25,-35
hitsound   = S5,1
guardsound = S7,16
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -7  
air.velocity = -7,0

[State 2050, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Melon_Splicing_a_x_combo
[Statedef 2070]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0,0
anim = 2070

[State 2070, 1]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 11
value = 7, 2

[State 2070, 1.5]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 11
value = 7,5

[State 2070, 2]
type = VelSet
trigger1 = AnimElem = 4
x = 5

[State 2070, 2]
type = VelSet
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
x = 3

[State 2070, 2.5]
type = MakeDust
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
pos = 0, 0

[State 2070, 2.5]
type = AfterImage
trigger1 = Time = 1
time = 58
length = 8
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 2070, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype  = Heavy
damage    = 20, 1
guardflag = MA
pausetime = 4,18
sparkno = 2
sparkxy = -25,-55
hitsound   = S5,1
guardsound = S7,16
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5  
air.velocity = -2,0

[State 2070, 3]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
attr = S, NA
animtype  = Heavy
damage    = 20, 1
guardflag = MA
pausetime = 4,18
sparkno = 2
sparkxy = -25,-55
hitsound   = S5,1
guardsound = S7,15
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -5  
air.velocity = -2,0

[State 2070, 3.5]
type = HitDef
trigger1 = AnimElem = 11
attr = S, NA
animtype  = Heavy
damage    = 45, 1
guardflag = MA
pausetime = 8,12
sparkno = 2
sparkxy = -25,-35
hitsound   = S5,1
guardsound = S7,16
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -7  
air.velocity = -7,0

[State 2070, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Melon_Splicing_y_start!
[Statedef 2100]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 45
ctrl = 0
velset = -4,-3,0
anim = 105

[State 2100, 1]
type = AfterImage
trigger1 = Time = 1
time = 18
length = 8
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 2100, 2]
type = VarSet
trigger1 = Time = 0
v = 15
value = 3

[State 2100, 3]
type = VarAdd
trigger1 = command = "y"
trigger1 = command != "holddown"
v = 15
value = 1

[State 2100, 4]
type = ChangeState
trigger1 = Pos Y >= -5
trigger1 = Vel Y >= 0 
value = 2105
ctrl = 0

; Melon_Splicing_y_wait!
[Statedef 2105]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 45
ctrl = 0
velset = 0,0,0
anim = 2100

[State 2105, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 2105, 2]
type = ChangeState
trigger1 = Time >= 8
trigger1 = command != "holdy"
value = 2110
ctrl = 0

; Melon_Splicing_y_go!
[Statedef 2110]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 25,0,0
anim = 2110

[State 2110, 1]
type = PlaySnd
trigger1 = Time = 2
value = 7, 2

[State 2110, 2.5]
type = MakeDust
trigger1 = Time = 1
trigger2 = Time = 2
trigger3 = Time = 3
trigger4 = Time = 4
trigger5 = Time = 5
trigger6 = Time = 6
trigger7 = Time = 7
trigger8 = Time = 8
trigger9 = Time = 9
pos = 0, 0

[State 2110, 2.5]
type = AfterImage
trigger1 = Time = 1
time = 18
length = 8
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 2110, 7]
type = ChangeState
trigger1 = P2BodyDist X <= 80
trigger1 = var(15) <= 5
value = 2120
ctrl = 0

[State 2110, 7]
type = ChangeState
trigger1 = P2BodyDist X <= 80
trigger1 = var(15) > 5
value = 2125
ctrl = 0

[State 2110, 7]
type = ChangeState
trigger1 = Vel X <= 0
trigger1 = var(15) <= 5
value = 2120
ctrl = 0

[State 2110, 7]
type = ChangeState
trigger1 = Vel X <= 0
trigger1 = var(15) > 5
value = 2125
ctrl = 0

[Statedef 2120]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
anim = 2120

[State 2120, 1]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
trigger3 = AnimElem = 12
value = 7, 2

[State 2120, 1]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
trigger3 = AnimElem = 12
value = 7, 5

[State 2120, 2]
type = VelSet
trigger1 = AnimElem = 7
trigger2 = AnimElem = 12
x = 5

[State 2120, 2]
type = VelSet
trigger1 = Vel X >= 10
x = 5

[State 2120, 2.5]
type = MakeDust
trigger1 = Time = 0
trigger2 = Time = 1
trigger3 = Time = 2
trigger4 = Time = 3
trigger5 = Time = 4
trigger6 = Time = 5
trigger7 = Time = 6
trigger8 = Time = 7
trigger9 = Time = 8
pos = 0, 0

[State 2120, 3]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
attr = S, NA
animtype  = Heavy
damage    = 55, 1
guardflag = MA
pausetime = 0,8
sparkno = 2
sparkxy = -5,-60
hitsound   = S5,1
guardsound = S7,15
ground.type = High
ground.slidetime = 32
ground.hittime  = 35
ground.velocity = -7  
air.velocity = -4,0

[State 2120, 3]
type = HitDef
trigger1 = AnimElem = 13
attr = S, NA
animtype  = Heavy
damage    = 55, 1
guardflag = MA
pausetime = 12,0
sparkno = 2
sparkxy = -5,-60
hitsound   = S5,1
guardsound = S7,15
ground.type = Low
ground.slidetime = 22
ground.hittime  = 25
ground.velocity = -2 ,8 
air.velocity = -2,8
fall = 1

[State 2120, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 2125]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
anim = 2125

[State 2125, 1]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
trigger3 = AnimElem = 12
trigger4 = AnimElem = 17
trigger5 = AnimElem = 22
trigger6 = AnimElem = 27
value = 7, 2

[State 2125, 1]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
trigger3 = AnimElem = 12
trigger4 = AnimElem = 17
trigger5 = AnimElem = 22
trigger6 = AnimElem = 27
value = 7, 5

[State 2125, 2]
type = VelSet
trigger1 = AnimElem = 7
trigger2 = AnimElem = 12
trigger3 = AnimElem = 17
trigger4 = AnimElem = 22
trigger5 = AnimElem = 27
x = 5

[State 2125, 2]
type = VelSet
trigger1 = Vel X >= 10
x = 5

[State 2125, 2.5]
type = MakeDust
trigger1 = Time = 0
trigger2 = Time = 1
trigger3 = Time = 2
trigger4 = Time = 3
trigger5 = Time = 4
trigger6 = Time = 5
trigger7 = Time = 6
trigger8 = Time = 7
trigger9 = Time = 8
pos = 0, 0

[State 2125, 3]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 13
trigger4 = AnimElem = 18
trigger5 = AnimElem = 23
attr = S, NA
animtype  = Heavy
damage    = 35, 1
guardflag = MA
pausetime = 0,8
sparkno = 2
sparkxy = -5,-60
hitsound   = S5,1
guardsound = S7,15
ground.type = High
ground.slidetime = 32
ground.hittime  = 35
ground.velocity = -7  
air.velocity = -4,0

[State 2125, 3]
type = HitDef
trigger1 = AnimElem = 28
attr = S, NA
animtype  = Heavy
damage    = 35, 1
guardflag = MA
pausetime = 12,10
sparkno = 2
sparkxy = -5,-60
hitsound   = S5,1
guardsound = S7,15
ground.type = Low
ground.slidetime = 22
ground.hittime  = 25
ground.velocity = -2 ,8 
air.velocity = -2,8
fall = 1

[State 2125, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;DIZZY_P2!
[Statedef 2190]
type    = S
movetype= H
physics = N
velset = 0,0,0

[State 2190, 1]
type = ChangeAnim2
Trigger1 = time = 0
Trigger2 = time = 10
Trigger3 = time = 20
Trigger4 = time = 30
value = 5000

[State 2190, 1]
type = ChangeAnim2
Trigger1 = time = 5
Trigger2 = time = 15
Trigger3 = time = 25
Trigger4 = time = 35
value = 5010

[State 2190, 2]
type = Selfstate
trigger1 = Time > 40
value = 0
ctrl = 1

;DIZZY_P1!
[Statedef 2195]
type    = S
movetype= A
physics = S
velset = 0,0,0
anim = 2195

[State 2195, 1]
type = VarSet
trigger1 = time = 0
v = 4
value = 0

[State 2195, 2]
type = ChangeState
value = 4200
trigger1 = command = "QCFQCF_y"

[State 2195, 2]
type = ChangeState
value = 4000
trigger1 = command = "QCFQCF_b"

[State 2195, 2]
type = ChangeState
value = 4100
trigger1 = command = "QCFQCF_a"

[State 2195, 2]
type = ChangeState
value = 4300
trigger1 = command = "QCFQCF_x"

[State 2195, 2]
type = changestate
trigger1 = Time > 40
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Charge
[Statedef 2500]
type    = S
physics = N
ctrl = 0
velset = 0,0,0

[State 2500, 0]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0
z = 0

[State 2500, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 2500

[State 2500, 2]
type = poweradd
trigger1 = Time = [0, 999999]
value = 2

[State 2500, 3]
type = poweradd
trigger1 = Time = [30, 999999]
value = 2

[State 2500, 4]
type = poweradd
trigger1 = Time = [90, 999999]
value = 2

[State 2500, 5]
type = poweradd
trigger1 = Time = [120, 999999]
value = 2

[State 2500, 6]
type = GameMakeAnim
trigger1 = TimeMod = 9, 0
value = 130
pos = 0, 0

[State 2500, 7]
type = PlaySnd
trigger1 = TimeMod = 24, 0
value = 7,18

[State 2500, 8]
type = PalFX
trigger1 = TimeMod = 8, 0
time = 3
add = 156,0,0

[State 2500, 9]
type = PlaySnd
trigger1 = power >= 3000
value = 7,19

[State 2500, 10]
type = ChangeState
trigger1 = power >= 3000
value = 0
ctrl = 1

[State 2500, 11]
type = ChangeState
trigger1 = command != "charge"
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Super#1
[Statedef 4000]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 4000

[State 4000, Super A]
type = SuperPause
trigger1 = AnimElem = 3
pos = 2, -114
anim = 100
time = 44

[State 4000, Super B]
type = PlaySnd
trigger1 = AnimElem = 3
value = F20,0

[State 4000, Super C]
type = PowerAdd
trigger1 = AnimElem = 3
value = -1000

[State 4000, Super D]
type = AfterImage
trigger1 = AnimElem = 3
time = 2

[State 4000, Super E]
type = AfterImage
trigger1 = AnimElem = 3
Time = 84

[State 4000, Super F]
type = NotHitBy
trigger1 = AnimElem = 3
value = , NA, SA, AT
time = 12

[State 4000]
type = Explod
trigger1 = AnimElem = 3
anim = 10000
id = 10000
pos = -320,-10
postype = right
velocity = -16,0
sprpriority = -2
supermove = 1
removetime = 44
ownpal = 1

[State 4000, 1]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 11
trigger5 = AnimElem = 13
trigger6 = AnimElem = 15
trigger7 = AnimElem = 18
value = 7, 2

[State 4000, 1.5]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7,8

[State 4000, 2]
type = VelSet
trigger1 = AnimElem = 4
x = 15

[State 4000, 2]
type = VelSet
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 11
trigger4 = AnimElem = 13
trigger5 = AnimElem = 15
x = 8.5

[State 4000, 2.5]
type = MakeDust
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 11
trigger5 = AnimElem = 13
trigger6 = AnimElem = 15
pos = 0, 0

[State 4000, 2.5]
type = envshake
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 11
trigger5 = AnimElem = 13
trigger6 = AnimElem = 15
trigger7 = AnimElem = 18
triggerall = movehit = 1
time = 10

[State 4000, 2.5]
type = AfterImage
trigger1 = Time = 1
time = 100
length = 8
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 4000, 3]
type = ReversalDef
trigger1 = AnimElem = 2
reversal.attr = SC, NA, SA
pausetime = 20,46
hitsound = S7,15
palfx.time = 5
palfx.add = 156,156,156

[State 4000, 4]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 11
attr = S, HA
animtype  = Heavy
damage    = 40, 1
getpower = 0
givepower = 20
guardflag = MA
pausetime = 10,24
sparkno = 2
sparkxy = -25,-55
hitsound   = S5,1
guardsound = S7,15
ground.type = Low
ground.slidetime = 3
ground.hittime  = 15
ground.velocity = -8  
air.velocity = -4,0
snap = 20,0

[State 4000, 5]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 13
trigger4 = AnimElem = 15
attr = S, HA
animtype  = Heavy
damage    = 40, 1
getpower = 0
givepower = 20
guardflag = MA
pausetime = 10,24
sparkno = 2
sparkxy = -25,-55
hitsound   = S5,1
guardsound = S7,16
ground.type = High
ground.slidetime = 3
ground.hittime  = 15
ground.velocity = -8  
air.velocity = -4,0
snap = 20,0

[State 4000, 6]
type = HitDef
trigger1 = AnimElem = 18
attr = S, HA
animtype  = Heavy
damage    = 40, 1
getpower = 0
givepower = 20
guardflag = MA
pausetime = 18,60
guard.pausetime = 18,18
sparkno = 2
sparkxy = -25,-35
hitsound   = S5,1
guardsound = S7,15
ground.type = Low
ground.slidetime = 3
ground.hittime  = 15
ground.velocity = -6,-7   
air.velocity = -6,-7
fall = 1
snap = 20,0

[State 4000, 7]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = movehit = 1
value = 4010
ctrl = 0

[State 4000, 7]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = movehit = 0
value = 4090
ctrl = 0

; up
[Statedef 4010]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 0
ctrl = 0
velset = 2.5,-10,0
anim = 1010

[State 4010, 2]
type = PlaySnd
trigger1 = Time = 0
value = 7,2

[State 4010, 2.5]
type = AfterImage
trigger1 = Time = 1
time = 38
length = 4
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 4010, 3]
type = HitDef
trigger1 = AnimElem = 1
attr = A, HA
animtype  = Heavy
damage    = 15, 1
getpower = 0
givepower = 20
guardflag = MA
pausetime = 5,5
sparkno = 2
sparkxy = -5,-60
hitsound   = S5,1
guardsound = S7,16
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1,-10.5      
air.velocity = -1,-10.5
fall = 1
fall.recover = 0
snap = 20,0

[State 4010, 3]
type = ChangeState
trigger1 = Vel Y >= 0
value = 4020
ctrl = 0

; zenith
[Statedef 4020]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 0
ctrl = 0
anim = 1020

[State 4020, 1]
type = VelSet
trigger1 = Time >= 0
x = 0
y = 0
z = 0

[State 4020, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7,2

[State 4020, 3]
type = ChangeState
trigger1 = AnimTime= 0
value = 4030
ctrl = 0

; down
[Statedef 4030]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 0
velset = 0,0,0
ctrl = 0
anim = 1030

[State 4040, 1]
type = VelSet
trigger1 = Time < 50
x = 0
y = 0
z = 0

[State 4040, 1.5]
type = ChangeAnim
trigger1 = Time = 35
value = 4010

[State 4030, 2]
type = PlaySnd
trigger1 = Time = 0
trigger2 = Time = 9
trigger3 = Time = 19
trigger4 = Time = 29
value = 7,13

[State 4030, 1]
type = HitDef
trigger1 = Time = 1
trigger2 = Time = 10
trigger3 = Time = 20
trigger4 = Time = 30
attr = A, HA
animtype  = Heavy
damage    = 25, 1
getpower = 0
givepower = 20
guardflag = MA
pausetime = 10,25
sparkno = 2
sparkxy = -20,-70
hitsound   = S7,12
guardsound = S7,15
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1,4  
air.velocity = -1,4
fall = 1
fall.recover = 0
palfx.time = 20
palfx.add = 175,175,255

[State 4030, 4]
type = changestate
trigger1 = Time = 40
trigger1 = P2Life <= 0
trigger1 = p2name = "Ranma Saotome"
value = 4900
ctrl = 0

[State 4030, 4]
type = ChangeState
trigger1 = Time = 200
trigger2 = Time = 10
trigger2 = movehit = 0
value = 50
ctrl = 0

; not_hit
[Statedef 4090]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
anim = 4090

[State 4090, 3]
type = ChangeState
trigger1 = AnimTime= 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Super#2
[Statedef 4100]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 4150

[State 4100, Super A]
type = SuperPause
trigger1 = Time = 0
pos = -38, -86
anim = 100
time = 44

[State 4100, Super B]
type = PlaySnd
trigger1 = Time = 0
value = F20,0

[State 4100, Super C]
type = PowerAdd
trigger1 = AnimElem = 3
value = -1000

[State 4100, Super E]
type = AfterImage
trigger1 = Time = 0
Time = 10

[State 4100, Super F]
type = NotHitBy
trigger1 = Time = 0
value = , NA, SA, AT
time = 12

[State 4100]
type = Explod
trigger1 = Time = 0
anim = 10000
id = 10000
pos = -320,-10
postype = right
velocity = -16,0
sprpriority = -2
supermove = 1
removetime = 44
ownpal = 1

[State 4100, 1]
type = PlaySnd
trigger1 = Time = 0
value = 7, 8

[State 4100, 2]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 11
value = 7, 2

[State 4100, 2]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 11
value = 7, 14

[State 4100, 4]
type = Projectile
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 11
projid = 1110
projanim = 1110
projhitanim = 1120
projremanim = 1130
projremovetime = 180
projshadow = -1
projsprpriority = 5
offset = 40, -65
velocity = 8, 0
remvelocity = 1, 0
accel = 0, -.1
attr = S, HP
damage    = 75,5
getpower  = 0
givepower = 30
hitflag = MAF
guardflag = MA
pausetime = 12,12
guard.pausetime = 6,12
sparkno = 2
sparkxy = 0, 0
hitsound   = S7,12
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -6,-7   
fall = 1
fall.recover = 0
airguard.velocity = 0   
guard.velocity = 0   
air.type = High
air.velocity = -5,-7
palfx.time = 20
palfx.add = 175,175,255

[State 4100, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Super#3
[Statedef 4200]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0,0,0
anim = 4000

[State 4200, Super A]
type = SuperPause
trigger1 = AnimElem = 3
pos = 2, -114
anim = 102
time = 44

[State 4200, Super B]
type = PlaySnd
trigger1 = AnimElem = 3
value = F20,0

[State 4200, Super C]
type = PowerAdd
trigger1 = AnimElem = 3
value = -3000

[State 4200, Super D]
type = AfterImage
trigger1 = AnimElem = 3
time = 2

[State 4200, Super E]
type = AfterImage
trigger1 = AnimElem = 3
Time = 84

[State 4200, Super F]
type = NotHitBy
trigger1 = AnimElem = 3
value = , NA, SA, AT
time = 12

[State 4200]
type = Explod
trigger1 = AnimElem = 3
anim = 10000
id = 10000
pos = -320,-10
postype = right
velocity = -16,0
sprpriority = -2
supermove = 1
removetime = 44
ownpal = 1

[State 4200, 1]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 11
trigger5 = AnimElem = 13
trigger6 = AnimElem = 15
trigger7 = AnimElem = 18
value = 7, 2

[State 4200, 1.5]
type = PlaySnd
trigger1 = AnimElem = 3
value = 7,8

[State 4200, 2]
type = VelSet
trigger1 = AnimElem = 4
x = 15

[State 4200, 2]
type = VelSet
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 11
trigger4 = AnimElem = 13
trigger5 = AnimElem = 15
x = 8.5

[State 4200, 2.5]
type = MakeDust
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 11
trigger5 = AnimElem = 13
trigger6 = AnimElem = 15
pos = 0, 0

[State 4200, 2.5]
type = envshake
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 11
trigger5 = AnimElem = 13
trigger6 = AnimElem = 15
trigger7 = AnimElem = 18
triggerall = movehit = 1
time = 10

[State 4200, 2.5]
type = AfterImage
trigger1 = Time = 1
time = 100
length = 8
PalBright   =   0,  0,  0
PalContrast = 128,128,128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1
FrameGap = 3
trans = add1

[State 4200, 3]
type = ReversalDef
trigger1 = AnimElem = 2
reversal.attr = SC, NA, SA
pausetime = 20,46
hitsound = S7,15
palfx.time = 5
palfx.add = 156,156,156

[State 4200, 4]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 11
attr = S, HA
animtype  = Heavy
damage    = 40, 1
getpower = 0
givepower = 20
guardflag = MA
pausetime = 10,24
sparkno = 2
sparkxy = -25,-55
hitsound   = S5,1
guardsound = S7,15
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8  
air.velocity = -4,0
snap = 20,0

[State 4200, 5]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 13
trigger4 = AnimElem = 15
attr = S, HA
animtype  = Heavy
damage    = 40, 1
getpower = 0
givepower = 30
guardflag = MA
pausetime = 10,24
sparkno = 2
sparkxy = -25,-55
hitsound   = S5,1
guardsound = S7,16
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -8  
air.velocity = -4,0
snap = 20,0

[State 4200, 6]
type = HitDef
trigger1 = AnimElem = 18
attr = S, HA
animtype  = Heavy
damage    = 40, 1
getpower = 0
givepower = 20
guardflag = MA
pausetime = 18,54
guard.pausetime = 18,18
sparkno = 2
sparkxy = -25,-35
hitsound   = S5,1
guardsound = S7,15
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -6,-7   
air.velocity = -6,-7
fall = 1
snap = 20,0

[State 4200, 4]
type = Projectile
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 11
trigger5 = AnimElem = 13
trigger6 = AnimElem = 15
projid = 1810
projanim = 1810
projhitanim = 1820
projremanim = 1830
projremovetime = 180
projshadow = -1
projsprpriority = 5
offset = 40, -65
velocity = 12, 0
remvelocity = 1, 0
accel = 0, 0
attr = S, HP
damage    = 25,5
getpower  = 0
givepower = 30
hitflag = MAF
guardflag = MA
pausetime = 12,40
guard.pausetime = 6,12
sparkno = 2
sparkxy = 0, 0
hitsound   = S7,12
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -6  
airguard.velocity = 0   
guard.velocity = 0   
air.type = High
air.velocity = -5,0
palfx.time = 20
palfx.add = 255,175,175

[State 4200, 7]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = movehit = 1
value = 4010
ctrl = 0

[State 4200, 7]
type = ChangeState
trigger1 = AnimTime = 0
trigger1 = movehit = 0
value = 4090
ctrl = 0

;---------------------------------------------------------------------------
; Super#4
[Statedef 4300]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0,0
anim = 4000

[State 4300, Super A]
type = SuperPause
trigger1 = Time = 0
pos = -38, -86
anim = 102
time = 44

[State 4300, Super B]
type = PlaySnd
trigger1 = Time = 0
value = F20,0

[State 4300, Super C]
type = PowerAdd
trigger1 = AnimElem = 3
value = -3000

[State 4300, Super E]
type = AfterImage
trigger1 = Time = 0
Time = 78

[State 4300, Super F]
type = NotHitBy
trigger1 = Time = 0
value = , NA, SA, AT
time = 2

[State 4300]
type = Explod
trigger1 = Time = 0
anim = 10000
id = 10000
pos = -320,-10
postype = right
velocity = -16,0
sprpriority = -2
supermove = 1
removetime = 44
ownpal = 1

[State 4300, 1]
type = PlaySnd
trigger1 = Time = 0
value = 7, 8

[State 4300, 2]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 11
trigger5 = AnimElem = 13
trigger6 = AnimElem = 15
trigger7 = AnimElem = 18
value = 7, 2

[State 4300, 2.5]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 11
trigger5 = AnimElem = 13
trigger6 = AnimElem = 15
trigger7 = AnimElem = 18
value = 7, 14

[State 4300, 4]
type = Projectile
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 11
trigger5 = AnimElem = 13
trigger6 = AnimElem = 15
trigger7 = AnimElem = 18
projid = 1810
projanim = 1810
projhitanim = 1820
projremanim = 1830
projremovetime = 180
projshadow = -1
projsprpriority = 5
offset = 40, -65
velocity = 11, 0
remvelocity = 1, 0
accel = 0, 0
attr = S, HP
damage    = 65,5
getpower  = 0
givepower = 30
hitflag = MAF
guardflag = MA
pausetime = 12,13
guard.pausetime = 6,12
sparkno = 2
sparkxy = 0, 0
hitsound   = S7,12
guardsound = 6,0
ground.type = High
ground.slidetime = 22
ground.hittime  = 22
ground.velocity = -6,-6   
fall = 1
fall.recover = 0
airguard.velocity = 0   
guard.velocity = 0   
air.type = High
air.velocity = -5,-6
palfx.time = 20
palfx.add = 255,175,175

[State 4300, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 4090
ctrl = 1

;---------------------------------------------------------------------------
; Super#5
[Statedef 4400]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 0
ctrl = 0
anim = 1020

[State 4400, Super A]
type = SuperPause
trigger1 = Time = 1
pos = 2, -114
anim = 102
time = 44

[State 4400, Super B]
type = PlaySnd
trigger1 = Time = 1
value = F20,0

[State 4400, Super C]
type = PowerAdd
trigger1 = Time = 1
value = -3000

[State 4400, Super D]
type = AfterImage
trigger1 = Time = 1
time = 2

[State 4400, Super E]
type = AfterImage
trigger1 = Time = 1
Time = 84

[State 4400, Super F]
type = NotHitBy
trigger1 = Time = 1
value = , NA, SA, AT
time = 12

[State 4400, 1]
type = VelSet
trigger1 = Time >= 0
x = 0
y = 0
z = 0

[State 4400, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 7,2

[State 4400, 3]
type = ChangeState
trigger1 = AnimTime= 0
value = 4410
ctrl = 0

; down
[Statedef 4410]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 0
velset = 0,0,0
ctrl = 0
anim = 1030

[State 4410, 1]
type = VelSet
trigger1 = Time < 150
x = 0
y = 0
z = 0

[State 4410, 1]
type = PalFX
trigger1 = Time = 1
trigger2 = Time = 10
trigger3 = Time = 20
trigger4 = Time = 30
trigger5 = Time = 40
trigger6 = Time = 50
trigger7 = Time = 60
trigger8 = Time = 70
trigger9 = Time = 80
trigger10 = Time = 90
trigger11 = Time = 100
trigger12 = Time = 110
trigger13 = Time = 120
trigger14 = Time = 130
trigger15 = Time = 140
trigger16 = Time = 150
time = 4
add = 255,255,255
ignorehitpause = 1

[State 4410, 1]
type = EnvColor
trigger1 = Time = 1
trigger2 = Time = 10
trigger3 = Time = 20
trigger4 = Time = 30
trigger5 = Time = 40
trigger6 = Time = 50
trigger7 = Time = 60
trigger8 = Time = 70
trigger9 = Time = 80
trigger10 = Time = 90
trigger11 = Time = 100
trigger12 = Time = 110
trigger13 = Time = 120
trigger14 = Time = 130
trigger15 = Time = 140
trigger16 = Time = 150
time = 6
value = 255,255,255
ontop = 0
under = 1
ignorehitpause = 1

[State 4410, 1]
type = EnvColor
trigger1 = Time = 5
trigger2 = Time = 15
trigger3 = Time = 25
trigger4 = Time = 35
trigger5 = Time = 45
trigger6 = Time = 55
trigger7 = Time = 65
trigger8 = Time = 75
trigger9 = Time = 85
trigger10 = Time = 95
trigger11 = Time = 105
trigger12 = Time = 115
trigger13 = Time = 125
trigger14 = Time = 135
trigger15 = Time = 145
trigger16 = Time = 155
time = 6
value = 0,0,255
ontop = 0
under = 1
ignorehitpause = 1

[State 4410, 1.5]
type = ChangeAnim
trigger1 = Time = 135
value = 4010

[State 4410, 2]
type = PlaySnd
trigger1 = Time = 1
trigger2 = Time = 9
trigger3 = Time = 19
trigger4 = Time = 29
trigger5 = Time = 39
trigger6 = Time = 49
trigger7 = Time = 59
trigger8 = Time = 69
trigger9 = Time = 79
trigger10 = Time = 89
trigger11 = Time = 99
trigger12 = Time = 109
trigger13 = Time = 119
trigger14 = Time = 129
trigger15 = Time = 139
trigger16 = Time = 149
value = 7,13

[State 4410, 1]
type = HitDef
trigger1 = Time = 1
trigger2 = Time = 10
trigger3 = Time = 20
trigger4 = Time = 30
trigger5 = Time = 40
trigger6 = Time = 50
trigger7 = Time = 60
trigger8 = Time = 70
trigger9 = Time = 80
trigger10 = Time = 90
trigger11 = Time = 100
trigger12 = Time = 110
trigger13 = Time = 120
trigger14 = Time = 130
trigger15 = Time = 140
trigger16 = Time = 150
attr = A, HA
animtype  = Heavy
damage    = 25, 1
getpower = 0
givepower = 20
guardflag = MA
pausetime = 2,75 ;10,25
sparkno = 2
sparkxy = -20,-70
hitsound   = S7,12
guardsound = S7,15
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -1,4  
air.velocity = -1,4
fall = 1
fall.recover = 0
palfx.time = 20
palfx.add = 175,175,255

[State 4410, 4]
type = changestate
trigger1 = Time = 160
trigger1 = P2Life <= 0
trigger1 = p2name = "Ranma Saotome"
value = 4900
ctrl = 0

[State 4410, 4]
type = ChangeState
trigger1 = Time = 200
trigger2 = Time = 10
trigger2 = movehit = 0
value = 50
ctrl = 0

;---------------------------------------------------------------------------
; Smote_him_well_fall
[Statedef 4900]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 0
ctrl = 0

[State 4900, 1]
type = ChangeState
trigger1 = Pos Y > -5
value = 4910
ctrl = 0

; Smote_him_well_land
[Statedef 4910]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
velset = 0,0,0
ctrl = 0
anim = 11

[State 4910, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 4910, 1.5]
type = ChangeAnim
trigger1 = Time = 8
value = 185

[State 4910, 2]
type = playsnd
trigger1 = Time = 10
value = 7,20
volume = 250

[State 4910, 3]
type = ChangeState
trigger1 = Time = 200
value = 0
ctrl = 1
