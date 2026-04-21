;==============================
;必殺技にて発生するヘルパー関係
;==============================

;------------------
;オラオラ弱（移動）
;------------------
[statedef 11000]
type = S
anim = 11000
movetype = A
velset = 3,0

[state 11000,1]
type = playerpush
Trigger1 = Time >= 0
value = 1

[State 11000,2]
type = velset
trigger1 = animelem = 2
x = 0

[state 11000,3]
type = sprpriority
Trigger1 = Time >= 0
value = -1

[State 11000,4]
type = changestate
trigger1 = root,movetype = H
value = 6001

[State 11000,5]
type = changestate
trigger1 = time = 10
value = 11001

[State 11000,6]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 6000

;------------------
;オラオラ弱（殴る）
;------------------
[statedef 11001]
type = S
anim = 11001
movetype = A
velset = 0,0

[State 11011,0]
type = HitDef
trigger1 = animelem = 1
trigger1 = root,var(1) <3
attr = S, NA
animtype = light
damage = 25,5
guardflag = MA
pausetime = 3,6
sparkxy = 0,-90
sparkno = 2
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 15
ground.velocity = -1
air.velocity = -0.5,-1
air.fall = 1

[State 11011,0]
type = HitDef
trigger1 = animelem = 8
trigger1 = root,var(1) <3 
attr = S, NA
animtype = high
damage = 15,5
guardflag = MA
pausetime = 3,6
sparkxy = 10,-60
sparkno = 2
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 15
ground.velocity = -1
air.velocity = -0.5,-1
air.fall = 1

[State 11011,0]
type = HitDef
trigger1 = animelem = 14
trigger1 = root,var(1) <3 
attr = S, NA
animtype = hard
damage = 12,5
sparkno = 2
guard.sparkno = 40
guardflag = MA
pausetime = 3,6
sparkxy = 0,-80
hitsound   = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 6
ground.hittime = 12
ground.velocity = -2,0
air.velocity = -0.5,-1
air.fall = 1

[State 11011,0]
type = HitDef
trigger1 = animelem = 1
trigger1 = root,var(1) >2
attr = S, NA
animtype = light
damage = 25
guardflag = MA
pausetime = 3,6
sparkxy = 0,-90
sparkno = 2
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 15
ground.velocity = -1
air.velocity = -0.5,-1
air.fall = 1

[State 11011,0]
type = HitDef
trigger1 = animelem = 8
trigger1 = root,var(1) >2 
attr = S, NA
animtype = high
damage = 15
guardflag = MA
pausetime = 3,6
sparkxy = 0,-60
sparkno = 2
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 15
ground.velocity = -1
air.velocity = -1,0.1
air.fall = 1

[State 11011,0]
type = HitDef
trigger1 = animelem = 14
trigger1 = root,var(1) >2 
attr = S, NA
animtype = back
damage = 12,5
guardflag = MA
pausetime = 3,6
sparkxy = 10,-75
sparkno = 2
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 6
ground.hittime = 0
ground.velocity = -2,0
air.velocity = -0.8,0

[State 11001,1]
type = changestate
trigger1 = root,movetype = H
trigger1 = root,stateno != 150
trigger1 = root,stateno != 151
trigger1 = root,stateno != 152
trigger1 = root,stateno != 153
trigger1 = root,stateno != 154
trigger1 = root,stateno != 155
value = 6001

[state 11001,2]
type = playerpush
Trigger1 = Time >= 0
value = 1

[State 11001,3]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 6000

[state 11001,4]
type = sprpriority
Trigger1 = Time >= 0
value = -1

[State 11000,5]
type = changestate
trigger1 = animtime = 0
value = 11002

;----------------
;オラオラ（終了）
;----------------
[statedef 11002]
type = S
anim = 11002
velset = 0,0

[state 11002,1]
type = velset
Trigger1 = Time >= 0
x = 0

[State 11002,2]
type = DestroySelf
trigger1 = animtime = 0

;------------------
;オラオラ中（移動）
;------------------
[statedef 11010]
type = S
anim = 11000
movetype = A
velset = 2.5,0

[state 11010,1]
type = veladd
Trigger1 = Time >= 0
x = 0.3

[state 11010,1]
type = playerpush
Trigger1 = Time >= 0
value = 1

[state 11010,1]
type = sprpriority
Trigger1 = Time >= 0
value = -1

[State 11010,1]
type = changestate
trigger1 = root,movetype = H
value = 6000

[State 11010,1]
type = changestate
trigger1 = time = 13
value = 11011

[State 11010, 2]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 6000

;--------------
;オラオラ（中）
;--------------
[statedef 11011]
type = S
anim = 11001
movetype = A
velset = 1.5,0

[State 11011,0]
type = HitDef
trigger1 = animelem = 1
trigger1 = root,var(1) <3
attr = S, NA
animtype = light
damage = 25,5
guardflag = MA
pausetime = 3,6
sparkno = 2
guard.sparkno = 40
sparkxy = 10,-90
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 15
ground.velocity = -3.5
air.velocity = -3,-1
air.fall = 1

[State 11011,0]
type = HitDef
trigger1 = animelem = 5
trigger1 = root,var(1) <3 
attr = S, NA
animtype = back
damage = 10,5
guardflag = MA
pausetime = 3,6
sparkxy = 0,-30
sparkno = 2
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 6
ground.hittime = 15
ground.velocity = -3.5
air.velocity = -3,-0
air.fall = 1

[State 11011,0]
type = HitDef
trigger1 = animelem = 8
trigger1 = root,var(1) <3 
attr = S, NA
animtype = high
damage = 15,5
guardflag = MA
pausetime = 3,6
sparkxy = 5,-90
sparkno = 2
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 15
ground.velocity = -3.5
air.velocity = -3,0.1
air.fall = 0
ground.fall = 1

[State 11011,0]
type = HitDef
trigger1 = animelem = 11
trigger1 = root,var(1) <3 
attr = S, NA
animtype = light
damage = 8,5
sparkno = 2
guard.sparkno = 40
guardflag = MA
pausetime = 3,6
sparkxy = 0,-30
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 10
ground.velocity = -3.5
air.velocity = -3,0
air.fall = 1

[State 11011,0]
type = HitDef
trigger1 = animelem = 14
trigger1 = root,var(1) <3 
attr = S, NA
animtype = back
damage = 12,5
guardflag = MA
pausetime = 3,6
sparkxy = 10,-60
sparkno = 2
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 6
ground.hittime = 15
ground.velocity = -3.5
air.velocity = -3,-0
air.fall = 1

[State 11011,1]
type = HitDef
trigger1 = animelem = 1
trigger1 = root,var(1) >2 
attr = S, NA
animtype = light
damage = 20,5
guardflag = MA
pausetime = 3,5
sparkno = 2
guard.sparkno = 40
sparkxy = -20,-90
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 10
ground.velocity = -3
air.velocity = -3,1
air.fall = 1

[State 11011,1]
type = HitDef
trigger1 = animelem = 5
trigger1 = root,var(1) >2 
attr = S, NA
animtype = back
damage = 8,5
guardflag = MA
pausetime = 3,5
sparkno = 2
guard.sparkno = 40
sparkxy = -40,-30
hitsound   = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 6
ground.hittime = 10
ground.velocity = -3
air.velocity = -3,1
air.fall = 1

[State 11011,1]
type = HitDef
trigger1 = animelem = 8
trigger1 = root,var(1) >2
attr = S, NA
animtype = high
damage = 12,5
guardflag = MA
pausetime = 3,5
sparkno = 2
guard.sparkno = 40
sparkxy = -23,-90
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 10
ground.velocity = -3
air.velocity = -3,1
air.fall = 1

[State 11011,1]
type = HitDef
trigger1 = animelem = 11
trigger1 = root,var(1) >2 
attr = S, NA
animtype = light
damage = 5,5
guardflag = MA
pausetime = 3,5
sparkno = 2
guard.sparkno = 40
sparkxy = -10,-30
hitsound   = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 6
ground.hittime = 10
ground.velocity = -3
air.velocity = -3,1
air.fall = 1

[State 11011,1]
type = HitDef
trigger1 = animelem = 14
trigger1 = root,var(1) >2
attr = S, NA
animtype = back
damage = 9,5
guardflag = MA
pausetime = 3,5
sparkno = 2
guard.sparkno = 40
sparkxy = -22,-60
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 0
ground.velocity = -3,-0.1
air.velocity = -3,1
air.fall = 1

[State 11011,2]
type = posset
trigger1 = facing = 1
trigger1 = time >= 0
trigger1 = FrontEdgeDist < 30
x = 130

[State 11011,3]
type = posset
trigger1 = facing = -1
trigger1 = time >= 0
trigger1 = FrontEdgeDist < 30
x = -130

[state 11011,4]
type = playerpush
Trigger1 = Time >= 0
value = 1

[State 11011, 5]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 6000

[state 11011,6]
type = sprpriority
Trigger1 = Time >= 0
value = -1

[State 11011,7]
type = changestate
trigger1 = root,movetype = H
trigger1 = root,stateno != 150
trigger1 = root,stateno != 151
trigger1 = root,stateno != 152
trigger1 = root,stateno != 153
trigger1 = root,stateno != 154
trigger1 = root,stateno != 155
value = 6001

[State 11011,9]
type = changestate
trigger1 = animtime = 0
value = 11002

[state 11011,10]
type = velset
triggerall = movecontact = 1
triggerall = vel x != 3
trigger1 = animelem = 4
trigger2 = animelem = 7
trigger3 = animelem = 10
trigger4 = animelem = 13
x = 1.5

;------------------
;オラオラ強（移動）
;------------------
[statedef 11020]
type = S
anim = 11000
;physics = S
movetype = A
velset = 3,0

[State 11020,0]
type = posset
trigger1 = facing = 1
trigger1 = time >= 0
trigger1 = FrontEdgeDist < 30
x = 130

[State 11020,0]
type = posset
trigger1 = facing = -1
trigger1 = time >= 0
trigger1 = FrontEdgeDist < 30
x = -130

[state 11020,1]
type = veladd
Trigger1 = Time >= 0
x = 0.5

[state 11020,1]
type = playerpush
Trigger1 = Time >= 0
value = 1

[state 11020,1]
type = sprpriority
Trigger1 = Time >= 0
value = -1

[State 11020,1]
type = changestate
trigger1 = root,movetype = H
value = 6001

[State 11000,1]
type = changestate
trigger1 = animtime = 0
value = 11021

[State 11000, 2]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 6000

;----------------
;オラオラ（殴る）
;----------------
[statedef 11021]
type = S
anim = 11001
movetype = A
;physics = S
velset = 3,0

[State 11011,0]
type = HitDef
trigger1 = animelem = 1
trigger1 = root,var(1) <3
attr = S, NA
animtype = light
damage = 25,5
guardflag = MA
pausetime = 3,5
sparkno = 2
guard.sparkno = 40
sparkxy = 10,-90
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 15
ground.velocity = -3.5
air.velocity = -3,-1
air.fall = 1

[State 11011,0]
type = HitDef
trigger1 = animelem = 5
trigger1 = root,var(1) <3 
attr = S, NA
animtype = back
damage = 10,5
guardflag = MA
pausetime = 3,5
sparkxy = 0,-30
sparkno = 2
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 6
ground.hittime = 15
ground.velocity = -3.5
air.velocity = -3,-0
air.fall = 1

[State 11011,0]
type = HitDef
trigger1 = animelem = 8
trigger1 = root,var(1) <3 
attr = S, NA
animtype = high
damage = 15,5
guardflag = MA
pausetime = 3,5
sparkxy = 5,-90
sparkno = 2
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 15
ground.velocity = -3.5
air.velocity = -3,0.1
air.fall = 0
ground.fall = 1

[State 11011,0]
type = HitDef
trigger1 = animelem = 11
trigger1 = root,var(1) <3 
attr = S, NA
animtype = light
damage = 8,5
sparkno = 2
guard.sparkno = 40
guardflag = MA
pausetime = 3,5
sparkxy = 0,-30
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 10
ground.velocity = -3.5
air.velocity = -3,0
air.fall = 1

[State 11011,0]
type = HitDef
trigger1 = animelem = 14
trigger1 = root,var(1) <3 
attr = S, NA
animtype = back
damage = 12,5
guardflag = MA
pausetime = 3,5
sparkxy = 10,-60
sparkno = 2
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 6
ground.hittime = 15
ground.velocity = -3.5
air.velocity = -3,-0
air.fall = 1

[State 11011,1]
type = HitDef
trigger1 = animelem = 1
trigger1 = root,var(1) >2 
attr = S, NA
animtype = light
damage = 20,5
guardflag = MA
pausetime = 3,5
sparkno = 2
guard.sparkno = 40
sparkxy = -20,-90
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 10
ground.velocity = -3
air.velocity = -3,1
air.fall = 1

[State 11011,1]
type = HitDef
trigger1 = animelem = 5
trigger1 = root,var(1) >2 
attr = S, NA
animtype = back
damage = 8,5
guardflag = MA
pausetime = 3,5
sparkno = 2
guard.sparkno = 40
sparkxy = -40,-30
hitsound   = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 6
ground.hittime = 10
ground.velocity = -3
air.velocity = -3,1
air.fall = 1

[State 11011,1]
type = HitDef
trigger1 = animelem = 8
trigger1 = root,var(1) >2
attr = S, NA
animtype = high
damage = 12,5
guardflag = MA
pausetime = 3,5
sparkno = 2
guard.sparkno = 40
sparkxy = -23,-90
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 10
ground.velocity = -3
air.velocity = -3,1
air.fall = 1

[State 11011,1]
type = HitDef
trigger1 = animelem = 11
trigger1 = root,var(1) >2 
attr = S, NA
animtype = light
damage = 5,5
guardflag = MA
pausetime = 3,5
sparkno = 2
guard.sparkno = 40
sparkxy = -10,-30
hitsound   = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 6
ground.hittime = 10
ground.velocity = -3
air.velocity = -3,1
air.fall = 1

[State 11011,1]
type = HitDef
trigger1 = animelem = 14
trigger1 = root,var(1) >2
attr = S, NA
animtype = back
damage = 9,5
guardflag = MA
pausetime = 3,5
sparkno = 2
guard.sparkno = 40
sparkxy = -22,-60
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 0
ground.velocity = -3,-0.1
air.velocity = -3,1
air.fall = 1

[State 11021,2]
type = posset
trigger1 = facing = 1
trigger1 = time >= 0
trigger1 = FrontEdgeDist < 30
x = 130

[State 11021,3]
type = posset
trigger1 = facing = -1
trigger1 = time >= 0
trigger1 = FrontEdgeDist < 30
x = -130

[state 11021,4]
type = playerpush
Trigger1 = Time >= 0
value = 1

[State 11021, 5]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 6000

[state 11021,6]
type = sprpriority
Trigger1 = Time >= 0
value = -1

[State 11021,7]
type = changestate
trigger1 = root,movetype = H
trigger1 = root,stateno != 150
trigger1 = root,stateno != 151
trigger1 = root,stateno != 152
trigger1 = root,stateno != 153
trigger1 = root,stateno != 154
trigger1 = root,stateno != 155
value = 6001

[State 11021,9]
type = changestate
trigger1 = animtime = 0
value = 11002

[state 11021,10]
type = velset
triggerall = movecontact = 1
triggerall = vel x != 3
trigger1 = animelem = 4
trigger2 = animelem = 7
trigger3 = animelem = 10
trigger4 = animelem = 13
x = 3

;--------------------
;マッハオラ弱（構え）
;--------------------
[statedef 11100]
type = S
anim = 12000
movetype = A
velset = 0,0

[state 11100,1]
type = playerpush
Trigger1 = Time >= 0
value = 1

[State 11100,1]
type = velset
trigger1 = animelem = 3
x = 0

[state 11100,1]
type = sprpriority
Trigger1 = Time >= 0
value = -1

[State 11101,7]
type = changestate
trigger1 = root,movetype = H
trigger1 = root,stateno != 150
trigger1 = root,stateno != 151
trigger1 = root,stateno != 152
trigger1 = root,stateno != 153
trigger1 = root,stateno != 154
trigger1 = root,stateno != 155
value = 6001

[State 11100,1]
type = changestate
trigger1 = animtime = 0
value = 11101

[State 11100, 2]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 6000

;--------------------
;マッハオラ弱（移動）
;--------------------
[statedef 11101]
type = S
anim = 12001
movetype = A
velset = 3.4,0

[State 11101,7]
type = changestate
trigger1 = root,movetype = H
trigger1 = root,stateno != 150
trigger1 = root,stateno != 151
trigger1 = root,stateno != 152
trigger1 = root,stateno != 153
trigger1 = root,stateno != 154
trigger1 = root,stateno != 155
value = 6001

[state 11101,1]
type = playerpush
Trigger1 = Time >= 0
value = 1

[State 11101, 2]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 6000

[state 11101,1]
type = sprpriority
Trigger1 = Time >= 0
value = -1

[State 11101,1]
type = changestate
trigger1 = animtime = 0
trigger2 = P2bodyDist x <=0
value = 11102


;--------------------------
;マッハオラ弱（攻撃～終了）
;--------------------------
[statedef 11102]
type = S
anim = 12004
velset = 0,0
movetype = A

[State 11102,2]
type = changestate
trigger1 = time < 4
trigger1 = root,movetype = H
trigger1 = root,stateno != 150
trigger1 = root,stateno != 151
trigger1 = root,stateno != 152
trigger1 = root,stateno != 153
trigger1 = root,stateno != 154
trigger1 = root,stateno != 155
value = 6001

[State 11102,1]
type = HitDef
trigger1 = animelem = 1
trigger1 = root,var(1) <= 4
attr = S, NA
animtype = hard
damage = 65,5
sparkno = 2
guard.sparkno = 40
guardflag = MA
pausetime = 10,15
sparkxy = -10,-80
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 10
ground.velocity = -5
air.velocity = -5,-1
air.fall = 1

[State 11102,1]
type = HitDef
trigger1 = animelem = 1
trigger1 = root,var(1) >4
attr = S, NA
animtype = hard
damage = 45,5
guardflag = MA
pausetime = 10,15
sparkxy = -10,-80
sparkno = 2
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 10
ground.velocity = -5
air.velocity = -5,-1
air.fall = 1

[State 11102,1]
type = HitDef
trigger1 = animelem = 1
trigger1 = root,var(1) >6
attr = S, NA
animtype = hard
damage = 35,5
guardflag = MA
pausetime = 4,8
sparkxy = -10,-80
sparkno = 2
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 6
ground.hittime = 10
ground.velocity = -5
air.velocity = -5,-1
air.fall = 1

[State 11102,2]
type = DestroySelf
trigger1 = animtime = 0

[state 11102,3]
type = velset
trigger1 = time = 4
x = 0

;--------------------
;マッハオラ中（構え）
;--------------------
[statedef 11110]
type = S
anim = 12000
movetype = A
velset = 0,0

[state 11110,1]
type = playerpush
Trigger1 = Time >= 0
value = 1

[State 11110,2]
type = velset
trigger1 = animelem = 3
x = 0

[state 11110,3]
type = sprpriority
Trigger1 = Time >= 0
value = -1

[State 11110,4]
type = changestate
trigger1 = root,movetype = H
trigger1 = root,stateno != 150
trigger1 = root,stateno != 151
trigger1 = root,stateno != 152
trigger1 = root,stateno != 153
trigger1 = root,stateno != 154
trigger1 = root,stateno != 155
value = 6001

[State 11110,5]
type = changestate
trigger1 = animtime = 0
value = 11111

[State 11110,6]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 6000

;--------------------
;マッハオラ中（移動）
;--------------------
[statedef 11111]
type = S
anim = 12002
movetype = A
velset = 8,0

[state 11111,1]
type = playerpush
Trigger1 = Time >= 0
value = 1

[State 11111,2]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 6000

[State 11101,7]
type = changestate
trigger1 = root,movetype = H
trigger1 = root,stateno != 150
trigger1 = root,stateno != 151
trigger1 = root,stateno != 152
trigger1 = root,stateno != 153
trigger1 = root,stateno != 154
trigger1 = root,stateno != 155
value = 6001

[state 11111,1]
type = sprpriority
Trigger1 = Time >= 0
value = -1

[State 11111,1]
type = changestate
trigger1 = animtime = 0
trigger2 = P2bodyDist x <=0
trigger2 = time >= 6
value = 11112

;--------------------------
;マッハオラ中（攻撃～終了）
;--------------------------
[statedef 11112]
type = S
anim = 12004
velset = 0,0
movetype = A

[State 11112,2]
type = changestate
trigger1 = time < 4
trigger1 = root,movetype = H
trigger1 = root,stateno != 150
trigger1 = root,stateno != 151
trigger1 = root,stateno != 152
trigger1 = root,stateno != 153
trigger1 = root,stateno != 154
trigger1 = root,stateno != 155
value = 6001

[State 11102,1]
type = HitDef
trigger1 = animelem = 1
trigger1 = root,var(1) <= 4
attr = S, NA
animtype = hard
damage = 65,5
sparkno = 2
guard.sparkno = 40
guardflag = MA
pausetime = 10,15
sparkxy = -10,-80
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 10
ground.velocity = -5
air.velocity = -5,-1
air.fall = 1

[State 11102,1]
type = HitDef
trigger1 = animelem = 1
trigger1 = root,var(1) >4
attr = S, NA
animtype = hard
damage = 45,5
guardflag = MA
pausetime = 10,15
sparkxy = -10,-80
sparkno = 2
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 10
ground.velocity = -5
air.velocity = -5,-1
air.fall = 1

[State 11102,1]
type = HitDef
trigger1 = animelem = 1
trigger1 = root,var(1) >6
attr = S, NA
animtype = hard
damage = 35,5
guardflag = MA
pausetime = 4,8
sparkxy = -10,-80
sparkno = 2
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 6
ground.hittime = 10
ground.velocity = -5
air.velocity = -5,-1
air.fall = 1

[State 11112,2]
type = DestroySelf
trigger1 = animtime = 0

[state 11112,3]
type = velset
trigger1 = time = 4
x = 0

;--------------------
;マッハオラ強（構え）
;--------------------
[statedef 11120]
type = S
anim = 12000
movetype = A
velset = 0,0

[state 11120,1]
type = playerpush
Trigger1 = Time >= 0
value = 1

[State 11120,2]
type = velset
trigger1 = animelem = 3
x = 0

[state 11120,3]
type = sprpriority
Trigger1 = Time >= 0
value = -1

[State 11120,4]
type = changestate
trigger1 = root,movetype = H
trigger1 = root,stateno != 150
trigger1 = root,stateno != 151
trigger1 = root,stateno != 152
trigger1 = root,stateno != 153
trigger1 = root,stateno != 154
trigger1 = root,stateno != 155
value = 6001

[State 11120,5]
type = changestate
trigger1 = animtime = 0
value = 11121

[State 11120,6]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 6000

;--------------------
;マッハオラ強（移動）
;--------------------
[statedef 11121]
type = S
anim = 12003
movetype = A
velset = 10,0

[state 11121,1]
type = playerpush
Trigger1 = Time >= 0
value = 1

[State 11121,2]
type = HitOverride
trigger1 = time = 0
time = -1
attr = SCA, AA, AT, AP
slot = 0
stateno = 6000

[state 11121,3]
type = sprpriority
Trigger1 = Time >= 0
value = -1

[State 11121,4]
type = changestate
trigger1 = animtime = 0
trigger2 = P2bodyDist x <=0
trigger2 = time >= 8
value = 11122

[State 11121,5]
type = changestate
trigger1 = root,movetype = H
trigger1 = root,stateno != 150
trigger1 = root,stateno != 151
trigger1 = root,stateno != 152
trigger1 = root,stateno != 153
trigger1 = root,stateno != 154
trigger1 = root,stateno != 155
value = 6001

;--------------------------
;マッハオラ強（攻撃～終了）
;--------------------------
[statedef 11122]
type = S
anim = 12004
velset = 0,0
movetype = A

[State 11122,2]
type = changestate
trigger1 = time < 4
trigger1 = root,movetype = H
trigger1 = root,stateno != 150
trigger1 = root,stateno != 151
trigger1 = root,stateno != 152
trigger1 = root,stateno != 153
trigger1 = root,stateno != 154
trigger1 = root,stateno != 155
value = 6001

[State 11102,1]
type = HitDef
trigger1 = animelem = 1
trigger1 = root,var(1) <= 4
attr = S, NA
animtype = hard
damage = 65,5
sparkno = 2
guard.sparkno = 40
guardflag = MA
pausetime = 10,15
sparkxy = -10,-80
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 10
ground.velocity = -5
air.velocity = -5,-1
air.fall = 1

[State 11102,1]
type = HitDef
trigger1 = animelem = 1
trigger1 = root,var(1) >4
attr = S, NA
animtype = hard
damage = 45,5
guardflag = MA
pausetime = 10,15
sparkxy = -10,-80
sparkno = 2
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = high
ground.slidetime = 6
ground.hittime = 10
ground.velocity = -5
air.velocity = -5,-1
air.fall = 1

[State 11102,1]
type = HitDef
trigger1 = animelem = 1
trigger1 = root,var(1) >6
attr = S, NA
animtype = hard
damage = 35,5
guardflag = MA
pausetime = 4,8
sparkxy = -10,-80
sparkno = 2
guard.sparkno = 40
hitsound   = 5,3
guardsound = 6,0
ground.type = low
ground.slidetime = 6
ground.hittime = 10
ground.velocity = -5
air.velocity = -5,-1
air.fall = 1

[State 11122,2]
type = DestroySelf
trigger1 = animtime = 0

[state 11122,3]
type = velset
trigger1 = time = 4
x = 0
