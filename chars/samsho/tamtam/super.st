[Statedef 1010]
type    = S
movetype= A
physics = S
ctrl = 0
juggle = 8
anim = 1100
velset = 0,0,0
poweradd = 30

[State 1010, 1]
type = Projectile
trigger1 = animelem = 17
ProjAnim = 830
ProjHitAnim = 831
ProjRemAnim = -1
ProjShadow = -1
projid = 830
offset = 45, 0
velocity = 4.5, 0
remvelocity = 1, 0
velmul = 1, 0
accel = 0, 0
attr = S, SP
damage    = 135,5
air.juggle = 8
animtype  = Heavy
getpower  = 0
givepower = 55
guardflag = MA
pausetime = 0,12
guard.pausetime = 5,5
sparkno = s20001
guard.sparkno = s20001
sparkxy = 90, -96
hitsound   = S4, 18
guardsound = s4, 20
ground.type = high
air.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5   
air.velocity = -1.2,-3
guard.velocity = -5
fall = 0
down.hittime = 0

[State 1010, 3]
type = Explod
trigger1 = movehit = 1 =1
trigger1 = numexplod(920) = 0
anim = 920
id = 920
postype = p2
pos = 0,0
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1010, 4]
type = PlaySnd
trigger1 = animelem = 4
value = 1, 16
persistent = 0

[State 1010, 5]
type = PlaySnd
trigger1 = animelem = 16
value = 4, 22
persistent = 0

[State 1010, 10]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1011]
type    = S
movetype= A
physics = S
ctrl = 0
juggle = 8
anim = 1100
velset = 0,0,0
poweradd = 30

[State 1011, 1]
type = Projectile
trigger1 =  animelem = 17 
ProjAnim = 835
ProjHitAnim = 831
ProjRemAnim = -1
ProjShadow = -1
projid = 835
offset = 45, 0
velocity = 1.2,0
remvelocity = 1, 0
velmul = 1, 0
accel = 0, 0
attr = S, SP
damage    = 80,2
air.juggle = 8
animtype  = heavy
getpower  = 30
givepower = 55
guardflag = MA
pausetime = 0,12
guard.pausetime = 5,5
sparkno = s20001
guard.sparkno = s20001
sparkxy = 90, -96
hitsound   = S4, 18
guardsound = s4, 20
ground.type = high
air.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5   
air.velocity = -1.2,-3
guard.velocity = -5
fall = 0
down.hittime = 0

[State 1011, 2]
type = PlaySnd
trigger1 = animelem = 4
value = 1, 16
persistent = 0

[State 1011, 3]
type = PlaySnd
trigger1 = animelem = 16
value = 4, 22
persistent = 0

[State 1011, 10]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1012]
type    = S
movetype= A
physics = S
ctrl = 0
juggle = 8
anim = 1100
velset = 0,0,0
poweradd = 30

[State 1012, 1]
type = Projectile
trigger1 = animelem = 17
ProjAnim = 836
ProjHitAnim = 831
ProjRemAnim = -1
ProjShadow = -1
projid = 836
offset = 45, 0
velocity = 8.2, 0
remvelocity = 1, 0
velmul = 1, 0
accel = 0, 0
attr = S, SP
damage    = 135,5
air.juggle = 8
animtype  = Heavy
getpower  = 0
givepower = 55
guardflag = MA
pausetime = 0,12
guard.pausetime = 5,5
sparkno = s20001
guard.sparkno = s20001
sparkxy = 90, -96
hitsound   = S4, 18
guardsound = s4, 20
ground.type = high
air.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5   
air.velocity = -1.2,-3
guard.velocity = -5
fall = 0
down.hittime = 0

[State 1012, 2]
type = PlaySnd
trigger1 = animelem = 4
value = 1, 16
persistent = 0

[State 1012, 3]
type = PlaySnd
trigger1 = animelem = 16
value = 4, 22
persistent = 0

[State 1012, 10]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------------
[Statedef 1020]
type    = S
movetype= A
physics = S
ctrl = 0
juggle = 8
anim = 1110
velset = 0,0,0
poweradd = 30

[State 1020, 1]
type = Projectile
trigger1 = animelem = 16
ProjAnim = 810
ProjHitAnim = 820
ProjRemAnim = -1
ProjShadow = -1
projid = 830
offset = 45, 0
velocity = 4.5, 0
remvelocity = 1, 0
velmul = 1, 0
accel = 0, 0
attr = S, SP
damage    = 135,5
air.juggle = 8
animtype  = Heavy
getpower  = 0
givepower = 55
guardflag = MA
pausetime = 0,12
guard.pausetime = 5,5
sparkno = s20001
sparkxy = 0, 0
hitsound   = S4, 18
guardsound = s4, 20
guard.sparkno = s20001
ground.type = low
air.type = low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5   
air.velocity = -1.2,-3
guard.velocity = -5
fall = 0
down.hittime = 0

[State 1020, 2]
type = PlaySnd
trigger1 = animelem = 4
value = 1, 17
persistent = 0

[State 1020, 3]
type = PlaySnd
trigger1 = animelem = 16
value = 4, 22
persistent = 0

[State 1020, 10]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1021]
type    = S
movetype= A
physics = S
ctrl = 0
juggle = 8
anim = 1110
velset = 0,0,0
poweradd = 30

[State 1020, 1]
type = Projectile
trigger1 = animelem = 16
ProjAnim = 812
ProjHitAnim = 820
ProjRemAnim = -1
ProjShadow = -1
projid = 812
offset = 45, 0
velocity = 2.3, 0
remvelocity = 1, 0
velmul = 1, 0
accel = 0, 0
attr = S, SP
damage    = 95,5
air.juggle = 8
animtype  = Heavy
getpower  = 0
givepower = 55
guardflag = MA
pausetime = 0,12
guard.pausetime = 5,5
sparkno = s20001
sparkxy = 0, 0
guard.sparkno = s20001
hitsound   = S4, 18
guardsound = s4, 20
ground.type = low
air.type = low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5   
air.velocity = -1.2,-3
guard.velocity = -5
fall = 0
down.hittime = 0

[State 1021, 2]
type = PlaySnd
trigger1 = animelem = 4
value = 1, 17
persistent = 0

[State 1021, 3]
type = PlaySnd
trigger1 = animelem = 16
value = 4, 22
persistent = 0

[State 1021, 10]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1022]
type    = S
movetype= A
physics = S
ctrl = 0
juggle = 8
anim = 1110
velset = 0,0,0
poweradd = 30

[State 1022, 1]
type = Projectile
trigger1 = animelem = 16
ProjAnim = 811
ProjHitAnim = 820
ProjRemAnim = -1
ProjShadow = -1
projid = 811
offset = 45, 0
velocity = 8.5, 0
remvelocity = 1, 0
velmul = 1, 0
accel = 0, 0
attr = S, SP
damage    = 210,5
air.juggle = 8
animtype  = Heavy
getpower  = 0
givepower = 55
guardflag = MA
pausetime = 0,12
guard.pausetime = 5,5
sparkno = s20001
sparkxy = 0, 0
guard.sparkno = s20001
hitsound   = S4, 18
guardsound = s4, 20
ground.type = trip
air.type = low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5   
air.velocity = -1.2,-3
guard.velocity = -5
fall = 0
down.hittime = 0

[State 1022, 2]
type = PlaySnd
trigger1 = animelem = 4
value = 1, 17
persistent = 0

[State 1022, 3]
type = PlaySnd
trigger1 = animelem = 16
value = 4, 22
persistent = 0

[State 1022, 10]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------

[Statedef 1000]
type = S
movetype = A
physics = S
anim = 1000
velset = 0
juggle = 3
poweradd = 10
ctrl = 0

[State 1000, 2] 
type = ReversalDef
trigger1 = Time = [0, 18]
reversal.attr = SCA, NA, SA
numhits = 0
pausetime = 8,10
sparkxy = 20,-65
hitsound = 6,0

[State 1000, 3] ; medium
type = HitDef
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8
trigger3 = AnimElem = 13
trigger4 = AnimElem = 14
trigger5 = AnimElem = 19
trigger6 = AnimElem = 20
trigger7 = AnimElem = 25
attr = S, SA
animtype = medium
damage = 0
hitflag = MAF
guardflag = H
pausetime = 2,4
hitsound = S1700, 1
priority = 6
sparkno = 2
sparkxy = -5, -50
;hitsound = s4, var(1)
guard.sparkno = svar(7)
guardsound = s4, var(6)
ground.type = High
ground.slidetime = 5
ground.hittime = 8
ground.velocity = -1
air.velocity = -1,0
p1stateno = 1001
snap = 60, 0
kill = 0

[State 1000, 3] ; low
type = HitDef
trigger1 = AnimElem = 9
trigger2 = AnimElem = 10
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
trigger5 = AnimElem = 21
trigger6 = AnimElem = 22
attr = S, SA
animtype = medium
damage = 0
hitflag = MAF
guardflag = M
pausetime = 2,4
priority = 6
sparkno = 2
sparkxy = -5, -var(12) = [15, 35]
hitsound = s4, var(1)
guard.sparkno = svar(7)
guardsound = s4, var(6)
ground.type = Low
ground.slidetime = 5
ground.hittime = 8
ground.velocity = -1
air.velocity = -1,0
p1stateno = 1001
snap = 60, 0
kill = 0

[State 1000, 4] ; High
type = HitDef
trigger1 = AnimElem = 11
trigger2 = AnimElem = 12
trigger3 = AnimElem = 17
trigger4 = AnimElem = 18
trigger5 = AnimElem = 23
trigger6 = AnimElem = 24
attr = S, SA
animtype = medium
damage = 0
hitflag = MAF
guardflag = M
pausetime = 2,4
priority = 6
sparkno = 2
sparkxy = -5, -85
;hitsound = s4, var(1)
guard.sparkno = svar(7)
guardsound = s4, var(6)
ground.type = High
ground.slidetime = 5
ground.hittime = 8
ground.velocity = -1
air.velocity = -1,0
p1stateno = 1001
snap = 60, 0
kill = 0

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,18
persistent = 0

[State 1000, 1]
type = PlaySnd
trigger1 = animelem = 26
value = 1,19
persistent = 0

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 10
trigger3 = AnimElem = 13
trigger4 = AnimElem = 16
trigger5 = AnimElem = 19
trigger6 = AnimElem = 22
trigger7 = AnimElem = 25
value = 4,21

[State 1000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1001]
type = S
movetype = A
physics = S
anim=1001
velset = 0
juggle = 0
poweradd = 50
ctrl = 0

[State 1001, 1]
type = EnvColor 
Trigger1 = time = 0
time = 3
Value = 250,0,0

;[State 1001, 1]
;type = Afterimage
;trigger1 = time = 0
;time = 47
;length = 9
;PalBright   =   0,  0,  0
;PalContrast = 128, 128, 128
;PalAdd      =   0,  0,  0
;PalMul      =  1,1,1;.9, .9, .9
;FrameGap = 4
;Trans = Add1

[State 1001, 4]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
trigger5 = AnimElem = 13
trigger6 = AnimElem = 14
attr = S, SA
animtype = medium
numhits = 0
damage = 0
hitflag = MAF
guardflag = M
pausetime = 0,3
priority = 6
sparkno = s903
sparkxy = -5, var(13)
;hitsound = s4, var(1)
guard.sparkno = svar(7)
guardsound = s4, var(6)
ground.type = High
ground.slidetime = 5
ground.hittime = 10
ground.velocity = 0, -1.5
air.velocity = 0, -1.5
kill = 0

[State 1001, 5]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 9
trigger4 = AnimElem = 10
trigger5 = AnimElem = 15
trigger6 = AnimElem = 16
attr = S, SA
animtype = medium
damage = 9
hitflag = MAF
guardflag = M
pausetime = 0,3
priority = 6
sparkno = s903
sparkxy = -6, var(14)
;hitsound = s4, var(1)
guard.sparkno = svar(7)
guardsound = s4, var(6)
ground.type = Low
ground.slidetime = 5
ground.hittime = 10
ground.velocity = 0, -1.2
air.velocity = 0, -1.2
kill = 0

[State 1001, 6]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 11
trigger4 = AnimElem = 12
trigger5 = AnimElem = 17
trigger6 = AnimElem = 18
attr = S, SA
animtype = medium
damage = 9
hitflag = MAF
guardflag = M
pausetime = 0,3
priority = 6
sparkno = s903
sparkxy = -4, var(15)
hitsound = s4, var(1)
guard.sparkno = svar(7)
guardsound = s4, var(6)
ground.type = High
ground.slidetime = 5
ground.hittime = 10
ground.velocity = 0, -1.2
air.velocity = 0, -1.2
kill = 0

[State 1001, 7]
type = HitDef
trigger1 = AnimElem = 19
attr = S, SA
animtype = Back
damage = 25
numhits = 0
hitflag = MAF
guardflag = M
pausetime = 0,3
priority = 6
sparkno = s932
sparkxy = -5, -80
hitsound = s4, var(1)
guard.sparkno = svar(7)
guardsound = s4, var(6)
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -6,-8
air.velocity = -6,-8
air.recover = 0
fall = 1
fall.recover = 0


[State 1001, 8]
type = Explod
trigger1 = Time > 10
trigger1 = movehit = 1
trigger1 = numexplod(926) = 0
anim = 926
id = 926
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1001, 9]
type = Explod
trigger1 = Time > 10
trigger1 = movehit = 1
trigger1 = numexplod(923) = 0
anim = 923
id = 923
postype = p2
pos = -12,-56
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1001, 10]
type = Explod
trigger1 = Time > 10
trigger1 = movehit = 1
trigger1 = numexplod(922) = 0
anim = 922
id = 922
postype = p2
pos = -10,-50
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1001, 11]
type = Explod
trigger1 = Time = 20
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

[State 1001, 12]
type = PlaySnd
trigger1 = AnimElem = 1
;trigger2 = AnimElem = 4
trigger3 = AnimElem = 7
;trigger4 = AnimElem = 10
trigger5 = AnimElem = 13
;trigger6 = AnimElem = 16
trigger7 = AnimElem = 19
value = 4,21

[State 1001, 13]
type = PlaySnd
trigger1 = AnimElem = 19
value = 1,20
persistent = 0

[State 1001, 14]
type = CtrlSet
trigger1 = animtime = 0
value = 1

[State 1001, 15]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;--------------------------------------------------------------------------------------------

[Statedef 1050]
type = S
movetype = A
physics = S
anim = 1050
velset = 0
juggle = 3
poweradd = 30
ctrl = 0

[State 1050, 0] 
type = veladd
triggerall = command = "holdfwd"
trigger1 = time = [19, 79]
x= 1

[State 1050, 1] 
type = veladd
triggerall = command = "holdback"
trigger1 = time = [19, 79]
x= -0.8

[State 1050, 2] 
type = ReversalDef
trigger1 = Time = [0, 21]
reversal.attr = SCA, NA, SA
numhits = 0
pausetime = 5,8
sparkxy = 20,-65
hitsound = 6,0

[State 1050, 3] ; medium
type = HitDef
trigger1 = AnimElem = 9
trigger2 = AnimElem = 10
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
trigger5 = AnimElem = 21
trigger6 = AnimElem = 22
trigger7 = AnimElem = 27
trigger8 = AnimElem = 28
trigger9 = AnimElem = 33
trigger10 = AnimElem = 34
trigger11 = AnimElem = 39
attr = S, SA
animtype = medium
damage = 0
hitflag = MAF
guardflag = H
pausetime = 2,4
priority = 6
sparkno = 2
sparkxy = -5, -50
;hitsound = s4, var(1)
guard.sparkno = svar(7)
guardsound = s4, var(6)
ground.type = High
ground.slidetime = 5
ground.hittime = 8
ground.velocity = -1
air.velocity = -1,0
p1stateno = 1051
snap = 60, 0
kill = 0

[State 1000, 3] ; low
type = HitDef
trigger1 = AnimElem = 11
trigger2 = AnimElem = 12
trigger3 = AnimElem = 17
trigger4 = AnimElem = 18
trigger5 = AnimElem = 23
trigger6 = AnimElem = 24
trigger7 = AnimElem = 29
trigger8 = AnimElem = 30
trigger9 = AnimElem = 35
trigger10 = AnimElem = 36
attr = S, SA
animtype = medium
damage = 0
hitflag = MAF
guardflag = M
pausetime = 2,4
priority = 6
sparkno = 2
sparkxy = -5, -var(12) = [15, 35]
hitsound = s4, var(1)
guard.sparkno = svar(7)
guardsound = s4, var(6)
ground.type = Low
ground.slidetime = 5
ground.hittime = 8
ground.velocity = -1
air.velocity = -1,0
p1stateno = 1051
snap = 60, 0
kill = 0

[State 1000, 4] ; High
type = HitDef
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 19
trigger4 = AnimElem = 20
trigger5 = AnimElem = 25
trigger6 = AnimElem = 26
trigger7 = AnimElem = 31
trigger8 = AnimElem = 32
trigger9 = AnimElem = 37
trigger10 = AnimElem = 38
attr = S, SA
animtype = medium
damage = 0
hitflag = MAF
guardflag = M
pausetime = 2,4
priority = 6
sparkno = 2
sparkxy = -5, -85
;hitsound = s4, var(1)
guard.sparkno = svar(7)
guardsound = s4, var(6)
ground.type = High
ground.slidetime = 5
ground.hittime = 8
ground.velocity = -1
air.velocity = -1,0
p1stateno = 1051
snap = 60, 0
kill = 0

[State 1050, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,18
persistent = 0

[State 1050, 1]
type = PlaySnd
trigger1 = animelem = 40
value = 1,19
persistent = 0

[State 1050, 1]
type = PlaySnd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 21
trigger6 = AnimElem = 24
trigger7 = AnimElem = 27
trigger8 = AnimElem = 30
trigger9 = AnimElem = 33
trigger10 = AnimElem = 36
trigger8 = AnimElem = 38
value = 4,21

[State 1050, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------

[Statedef 1051]
type = S
movetype = A
physics = S
anim=1051
velset = 0
juggle = 0
poweradd = 80
ctrl = 0

[State 1051, 1]
type = EnvColor 
Trigger1 = time = 0
time = 3
Value = 250,0,0

;[State 1001, 1]
;type = Afterimage
;trigger1 = time = 0
;time = 47
;length = 9
;PalBright   =   0,  0,  0
;PalContrast = 128, 128, 128
;PalAdd      =   0,  0,  0
;PalMul      =  1,1,1;.9, .9, .9
;FrameGap = 4
;Trans = Add1

[State 1051, 4]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
trigger5 = AnimElem = 13
trigger6 = AnimElem = 14
trigger7 = AnimElem = 19
trigger8 = AnimElem = 20
trigger9 = AnimElem = 25
trigger10 = AnimElem = 26
attr = S, SA
animtype = medium
numhits = 0
damage = 0
hitflag = MAF
guardflag = M
pausetime = 0,3
priority = 6
sparkno = s903
sparkxy = -5, var(13)
;hitsound = s4, var(8)
guard.sparkno = svar(7)
guardsound = s4, var(6)
ground.type = High
ground.slidetime = 5
ground.hittime = 10
ground.velocity = 0, -1.5
air.velocity = 0, -1.5
kill = 0

[State 1051, 5]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 9
trigger4 = AnimElem = 10
trigger5 = AnimElem = 15
trigger6 = AnimElem = 16
trigger7 = AnimElem = 21
trigger8 = AnimElem = 27
trigger9 = AnimElem = 28
attr = S, SA
animtype = medium
damage = 11
hitflag = MAF
guardflag = M
pausetime = 0,3
priority = 6
sparkno = s903
sparkxy = -6, var(14)
;hitsound = s4, var(8)
guard.sparkno = svar(7)
guardsound = s4, var(6)
ground.type = Low
ground.slidetime = 5
ground.hittime = 10
ground.velocity = 0, -1.2
air.velocity = 0, -1.2
kill = 0

[State 1051, 6]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 11
trigger4 = AnimElem = 12
trigger5 = AnimElem = 17
trigger6 = AnimElem = 18
trigger7 = AnimElem = 23
trigger8 = AnimElem = 24
trigger9 = AnimElem = 29
trigger10 = AnimElem = 30
attr = S, SA
animtype = medium
damage = 11
hitflag = MAF
guardflag = M
pausetime = 0,3
priority = 6
sparkno = s903
sparkxy = -4, var(15)
hitsound = s4, var(8)
guard.sparkno = svar(7)
guardsound = s4, var(6)
ground.type = High
ground.slidetime = 5
ground.hittime = 10
ground.velocity = 0, -1.2
air.velocity = 0, -1.2
kill = 0

[State 1051, 7]
type = HitDef
trigger1 = AnimElem = 31
attr = S, SA
animtype = Back
damage = 30
numhits = 0
hitflag = MAF
guardflag = M
pausetime = 0,3
priority = 6
sparkno = s932
sparkxy = -5, -80
hitsound = s4, var(1)
guard.sparkno = svar(7)
guardsound = s4, var(6)
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -6,-8
air.velocity = -6,-8
air.recover = 0
fall = 1
fall.recover = 0

[State 1051, 8]
type = Explod
trigger1 = Time > 10
trigger1 = movehit = 1
trigger1 = numexplod(926) = 0
anim = 926
id = 926
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 2

[State 1051, 9]
type = Explod
trigger1 = Time > 10
trigger1 = movehit = 1
trigger1 = numexplod(923) = 0
anim = 923
id = 923
postype = p2
pos = -12,-56
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 2

[State 1051, 10]
type = Explod
trigger1 = Time > 10
trigger1 = movehit = 1
trigger1 = numexplod(922) = 0
anim = 922
id = 922
postype = p2
pos = -10,-50
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 2

[State 1051, 11]
type = Explod
trigger1 = Time = 20
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
persistent = 2

[State 1051, 12]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 7
trigger3 = AnimElem = 13
trigger4 = AnimElem = 19
trigger5 = AnimElem = 25
trigger6 = AnimElem = 30
value = 4,21

[State 1051, 13]
type = PlaySnd
trigger1 = Animelem = 31
value = 1,20
persistent = 0

[State 1051, 14]
type = CtrlSet
trigger1 = animtime = 0
value = 1

[State 1051, 15]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------------------

;--------------------------------------------------------------------------------------------

[Statedef 1080]
type = S
movetype = A
physics = S
anim = 1080
velset = 0
juggle = 3
poweradd = 60
ctrl = 0

[State 1080, 0] 
type = veladd
triggerall = command = "holdfwd"
trigger1 = time = [31, 127]
x= 1

[State 1080, 1] 
type = veladd
triggerall = command = "holdback"
trigger1 = time = [31, 127]
x= -1

[State 1080, 2] 
type = ReversalDef
trigger1 = Time = [0, 121]
reversal.attr = SCA, NA, SA
numhits = 0
pausetime = 5,8
sparkxy = 20,-60
hitsound = 6,0

[State 1080, 3] 
type = HitDef
trigger1 = AnimElem = 15
trigger2 = AnimElem = 16
trigger3 = AnimElem = 21
trigger4 = AnimElem = 22
trigger5 = AnimElem = 27
trigger6 = AnimElem = 28
trigger7 = AnimElem = 33
trigger8 = AnimElem = 34
trigger9 = AnimElem = 39
trigger10 = AnimElem = 40
trigger11 = AnimElem = 45
trigger12 = AnimElem = 46
trigger13 = AnimElem = 51
trigger14 = AnimElem = 52
trigger15 = AnimElem = 57
trigger16 = AnimElem = 58
trigger17 = AnimElem = 63
attr = S, SA
animtype = medium
damage = 0
hitflag = MAF
guardflag = H
pausetime = 2,4
priority = 6
sparkno = 2
sparkxy = -5, -50
;hitsound = s4, var(1)
guard.sparkno = svar(7)
guardsound = s4, var(6)
ground.type = High
ground.slidetime = 5
ground.hittime = 8
ground.velocity = -1
air.velocity = -1,0
p1stateno = 1081
snap = 60, 0
kill = 0

[State 1080, 3] 
type = HitDef
trigger1 = AnimElem = 17
trigger2 = AnimElem = 18
trigger3 = AnimElem = 23
trigger4 = AnimElem = 24
trigger5 = AnimElem = 29
trigger6 = AnimElem = 30
trigger7 = AnimElem = 34
trigger8 = AnimElem = 35
trigger9 = AnimElem = 36
trigger10 = AnimElem = 41
trigger11 = AnimElem = 42
trigger12 = AnimElem = 47
trigger13 = AnimElem = 48
trigger14 = AnimElem = 53
trigger15 = AnimElem = 54
trigger16 = AnimElem = 59
trigger17 = AnimElem = 60
attr = S, SA
animtype = medium
damage = 0
hitflag = MAF
guardflag = M
pausetime = 2,4
priority = 6
sparkno = 2
sparkxy = -5, -var(12) = [15, 35]
hitsound = s4, var(1)
guard.sparkno = svar(7)
guardsound = s4, var(6)
ground.type = Low
ground.slidetime = 5
ground.hittime = 8
ground.velocity = -1
air.velocity = -1,0
p1stateno = 1081
snap = 60, 0
kill = 0

[State 1080, 4]
type = HitDef
trigger1 = AnimElem = 19
trigger2 = AnimElem = 20
trigger3 = AnimElem = 25
trigger4 = AnimElem = 26
trigger5 = AnimElem = 31
trigger6 = AnimElem = 32
trigger7 = AnimElem = 36
trigger8 = AnimElem = 37
trigger9 = AnimElem = 38
trigger10 = AnimElem = 43
trigger11 = AnimElem = 44
trigger12 = AnimElem = 49
trigger13 = AnimElem = 50
trigger14 = AnimElem = 55
trigger15 = AnimElem = 56
trigger16 = AnimElem = 61
trigger17 = AnimElem = 62
attr = S, SA
animtype = medium
damage = 0
hitflag = MAF
guardflag = M
pausetime = 2,4
priority = 6
sparkno = 2
sparkxy = -5, -85
;hitsound = s4, var(1)
guard.sparkno = svar(7)
guardsound = s4, var(6)
ground.type = High
ground.slidetime = 5
ground.hittime = 8
ground.velocity = -1
air.velocity = -1,0
p1stateno = 1081
snap = 60, 0
kill = 0

[State 1080, 7]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,18
persistent = 0

[State 1080, 8]
type = PlaySnd
trigger1 = animelem = 62
value = 1,19
persistent = 0

[State 1080, 9]
type = PlaySnd
trigger1 = AnimElem = 15
trigger2 = AnimElem = 17
trigger3 = AnimElem = 19
trigger4 = AnimElem = 21
trigger5 = AnimElem = 23
trigger6 = AnimElem = 25
trigger7 = AnimElem = 27
trigger8 = AnimElem = 29
trigger9 = AnimElem = 31
trigger10 = AnimElem = 33
trigger11 = AnimElem = 35
trigger12 = AnimElem = 37
trigger13 = AnimElem = 39
trigger14 = AnimElem = 41
trigger15 = AnimElem = 43
trigger16 = AnimElem = 45
trigger17 = AnimElem = 47
trigger18 = AnimElem = 49
trigger19 = AnimElem = 51
trigger20 = AnimElem = 53
trigger21 = AnimElem = 55
trigger22 = AnimElem = 57
trigger23 = AnimElem = 59
trigger24 = AnimElem = 61
trigger25 = AnimElem = 62
value = 4,21

[State 1080, 10]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------

[Statedef 1081]
type = S
movetype = A
physics = S
anim = 1081
velset = 0
juggle = 0
poweradd = 80
ctrl = 0

[State 1081, 1]
type = EnvColor 
Trigger1 = time = 0
time = 3
Value = 250,0,0

;[State 1001, 1]
;type = Afterimage
;trigger1 = time = 0
;time = 47
;length = 9
;PalBright   =   0,  0,  0
;PalContrast = 128, 128, 128
;PalAdd      =   0,  0,  0
;PalMul      =  1,1,1;.9, .9, .9
;FrameGap = 4
;Trans = Add1

[State 1081, 4]
type = HitDef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
trigger5 = AnimElem = 13
trigger6 = AnimElem = 14
trigger7 = AnimElem = 19
trigger8 = AnimElem = 20
trigger9 = AnimElem = 25
trigger10 = AnimElem = 26
trigger11 = AnimElem = 31
trigger12 = AnimElem = 32
trigger13 = AnimElem = 37
trigger14 = AnimElem = 38
trigger15 = AnimElem = 43
trigger16 = AnimElem = 44
attr = S, SA
animtype = medium
damage = 5
hitflag = MAF
guardflag = M
pausetime = 0,3
priority = 6
sparkno = s903
sparkxy = -5, var(13)
hitsound = s4, var(9)
guard.sparkno = svar(7)
guardsound = s4, var(6)
ground.type = High
ground.slidetime = 5
ground.hittime = 10
ground.velocity = 0, -1.5
air.velocity = 0, -1.5
kill = 0

[State 1081, 5]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 9
trigger4 = AnimElem = 10
trigger5 = AnimElem = 15
trigger6 = AnimElem = 16
trigger7 = AnimElem = 21
trigger8 = AnimElem = 27
trigger9 = AnimElem = 28
trigger10 = AnimElem = 33
trigger11 = AnimElem = 34
trigger12 = AnimElem = 39
trigger13 = AnimElem = 40
trigger14 = AnimElem = 45
trigger15 = AnimElem = 46
attr = S, SA
animtype = medium
damage = 5
hitflag = MAF
guardflag = M
pausetime = 0,3
priority = 6
sparkno = s903
sparkxy = -6, var(14)
;hitsound = s4, var(9)
guard.sparkno = svar(7)
guardsound = s4, var(6)
ground.type = Low
ground.slidetime = 5
ground.hittime = 10
ground.velocity = 0, -1.2
air.velocity = 0, -1.2
kill = 0

[State 1081, 6]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 11
trigger4 = AnimElem = 12
trigger5 = AnimElem = 17
trigger6 = AnimElem = 18
trigger7 = AnimElem = 23
trigger8 = AnimElem = 24
trigger9 = AnimElem = 29
trigger10 = AnimElem = 30
trigger11 = AnimElem = 35
trigger12 = AnimElem = 36
trigger13 = AnimElem = 41
trigger14 = AnimElem = 42
trigger15 = AnimElem = 47
trigger16 = AnimElem = 48
attr = S, SA
animtype = medium
damage = 5
hitflag = MAF
guardflag = M
pausetime = 0,3
priority = 6
sparkno = s903
sparkxy = -4, var(15)
hitsound = s4, var(9)
guard.sparkno = svar(7)
guardsound = s4, var(6)
ground.type = High
ground.slidetime = 5
ground.hittime = 10
ground.velocity = 0, -1.2
air.velocity = 0, -1.2
kill = 0

[State 1081, 7]
type = HitDef
trigger1 = AnimElem = 49
attr = S, SA
animtype = Back
damage = 15
numhits = 0
hitflag = MAF
guardflag = M
pausetime = 0,3
priority = 6
sparkno = s932
sparkxy = -5, -80
hitsound = s4, var(9)
guard.sparkno = svar(7)
guardsound = s4, var(6)
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -6,-8
air.velocity = -6,-8
air.recover = 0
fall = 1
fall.recover = 0

[State 1081, 8]
type = Explod
trigger1 = Time > 10
trigger1 = movehit = 1
trigger1 = numexplod(926) = 0
anim = 926
id = 926
postype = p2
pos = -10,-60
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 2

[State 1081, 9]
type = Explod
trigger1 = Time > 10
trigger1 = movehit = 1
trigger1 = numexplod(923) = 0
anim = 923
id = 923
postype = p2
pos = -12,-56
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 3

[State 1081, 10]
type = Explod
trigger1 = Time > 10
trigger1 = movehit = 1
trigger1 = numexplod(922) = 0
anim = 922
id = 922
postype = p2
pos = -10,-50
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 3

[State 1081, 11]
type = Explod
trigger1 = Time = 20
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
persistent = 3

[State 1081, 12]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 4
trigger3 = AnimElem = 7
trigger4 = AnimElem = 10
trigger5 = AnimElem = 13
trigger6 = AnimElem = 16
trigger7 = AnimElem = 19
trigger8 = AnimElem = 22
trigger9 = AnimElem = 25
trigger10 = AnimElem = 28
trigger11 = AnimElem = 31
trigger12 = AnimElem = 34
trigger13 = AnimElem = 37
trigger14 = AnimElem = 40
trigger15 = AnimElem = 43
trigger16 = AnimElem = 46
trigger17 = AnimElem = 48
value = 4,21

[State 1081, 13]
type = PlaySnd
trigger1 = Animelem = 49
value = 1,20
persistent = 0

[State 1081, 14]
type = CtrlSet
trigger1 = animtime = 0
value = 1

[State 1081, 15]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;------------------------BITE-------------------------------------------
[Statedef 1500]
type = S
movetype = A
physics = S
anim = 1500
velset = 0
juggle = 0
poweradd = 80
ctrl = 0

[State 1500, 0] 
type = playsnd
trigger1 = animelem = 1
value = 1,5

[State 1500, 1] 
type = playsnd
trigger1 = animelem = 6
value = 4,7

[State 1500, 2] 
type = HitDef
trigger1 = AnimElem = 9
attr = S, S
animtype = medium
damage = 0
hitflag = ML
guardflag = MAf
pausetime = 2,4
priority = 100
sparkno = s1111902
guard.sparkno = s1111902
hitsound = s2, 5
guardsound = s4, 20
ground.type = high
ground.slidetime = 5
ground.hittime = 8
ground.velocity = -1
air.velocity = -1,0
p1stateno = 1510
p2stateno = 1530
snap = 60, 0
kill = 0

[State 1500, 4]
type 		= PlayerPush
trigger1 	= time = 0 
value 	= 0

[State 1500, 5]
type = CtrlSet
trigger1 = animtime = 0
value = 1

[State 1500, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

[Statedef 1510]
type = S
movetype = A
physics = S
anim = 1510
velset = 0
juggle = 0
poweradd = 0
ctrl = 0

[State 1080, 3] 
type = playsnd
trigger1 = animelem = 2
value = 1,9

[State 1080, 3] 
type = playsnd
trigger1 = animelem = 55
value = 1,22
persistent = 0

[State 6010, 2]
type 		= PlayerPush
trigger1 	= time = [0, 160]
value 	= 0

[State 600, 2]
type = targetbind
trigger1 = animelem = 1
time = 4
pos = 55, -115

[State 600, 2]
type = targetbind
trigger1 = animelem = 2
trigger2 = animelem = 3
trigger3 = animelem = 4
trigger4 = animelem = 5
trigger5 = animelem = 6
trigger6 = animelem = 7
trigger7 = animelem = 8
trigger8 = animelem = 9
trigger9 = animelem = 10
time = 4
pos = 40, -150

[State 600, 2]
type = targetbind
trigger1 = animelem = 11
time = 250
pos = -15, -30

[State 600, 2]
type = HitDef
trigger1 = AnimElem = 12
trigger2 = AnimElem = 16
trigger3 = AnimElem = 20
trigger4 = AnimElem = 24
trigger5 = AnimElem = 28
trigger6 = AnimElem = 32
trigger7 = AnimElem = 36
trigger8 = AnimElem = 40
trigger9 = AnimElem = 44
trigger10 = AnimElem = 48
attr = S, SA
damage    = 22
animtype = medium
priority = 6
pausetime = 3,8
sparkno = s920
sparkxy = 30,-100
hitsound   = S4,12
ground.type = high
ground.slidetime = 0
ground.hittime  = 30
air.hittime  = 30
ground.velocity = 1.5,0
air.velocity = 0,0
kill = 0

[State 1081, 7]
type = HitDef
trigger1 = AnimElem = 52
attr = S, SA
animtype = diagup
damage = 44
numhits = 0
hitflag = MAF
pausetime = 0,3
priority = 6
sparkno = s926
sparkxy = 30, -100
hitsound = s4, var(9)
guard.sparkno = svar(7)
guardsound = s4, var(6)
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -6,-8
air.velocity = -6,-8
air.recover = 0
fall.recover = 0
fall = 1
kill = 1

[State 1081, 14]
type = CtrlSet
trigger1 = time = 300
value = 1

[State 1081, 15]
type = ChangeState
trigger1 = Time = 300
value = 1520

[Statedef 1520]
type = S
movetype = I
physics = S
anim = 1520
velset = 0
juggle = 0
poweradd = 0
ctrl = 0

[State 1520, 14]
type = CtrlSet
trigger1 = animtime = 0
value = 1

[State 1520, 15]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

[Statedef 1530]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 6010, 2]
type 		= PlayerPush
trigger1 	= time = 0
trigger2 	= animelem = 1
trigger3 	= animelem = 2
trigger4 	= animelem = 3
trigger5 	= animelem = 4
trigger6 	= animelem = 5
trigger7 	= animelem = 6
trigger8 	= animelem = 6
trigger9 	= animelem = 7
trigger10 	= animelem = 8
trigger11 	= animelem = 9
value 	= 0

[State 1530, 0]
type = DestroySelf
Trigger1 = Time = 0

[State 1530, 2]
type = Changeanim2
Trigger1 = Time = 0
Value = 1530

[State 600, 2]
type = posfreeze
trigger1 =  time = 52
value = 1


[State 1530, 3]
type = SelfState
trigger1 = AnimTime = 0
value = 20
ctrl = 1

;----------------------------------------------------------------------------------------------


[Statedef 1002]
type = S
movetype = A
physics = S
anim = 1002
velset = 0
juggle = 3
poweradd = 100
ctrl = 0

[State 1000, 2] 
type = ReversalDef
trigger1 = Time = [0, 18]
reversal.attr = SCA, NA, SA
numhits = 0
pausetime = 8,10
sparkxy = 20,-65
hitsound = 6,0

[State 1000, 3] ; medium
type = HitDef
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 21
trigger6 = AnimElem = 24
trigger7 = AnimElem = 27
attr = S, SA
animtype = medium
damage = 0
hitflag = MAF
guardflag = MA
pausetime = 2,4
hitsound = S1700, 1
priority = 6
sparkno = 2
sparkxy = -5, -50
;hitsound = s4, var(1)
guard.sparkno = s902
guardsound = s4, 16
ground.type = High
ground.slidetime = 5
ground.hittime = 8
ground.velocity = -1
air.velocity = -1,0
p1stateno = 1003
snap = 60, 0
kill = 0

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,22
persistent = 0

[State 1000, 1]
type = PlaySnd
trigger1 = animelem = 28
value = 1,19
persistent = 0

[State 1000, 1]
type = PlaySnd
trigger1 = AnimElem = 8
trigger2 = AnimElem = 11
trigger3 = AnimElem = 14
trigger4 = AnimElem = 17
trigger5 = AnimElem = 20
trigger6 = AnimElem = 23
trigger7 = AnimElem = 26
value = 4,21

[State 1000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1003]
type = S
movetype = A
physics = S
anim=1003
velset = 0
juggle = 0
poweradd = 50
ctrl = 0

[State 1001, 1]
type = EnvColor 
Trigger1 = time = 0
time = 3
Value = 250,0,0

[State 1001, 1]
type = Afterimage
trigger1 = time = 0
time = 75
length = 9
PalBright   =   0,  0,  0
PalContrast = 128, 128, 128
PalAdd      =   0,  0,  0
PalMul      =  1,1,1;.9, .9, .9
FrameGap = 4
Trans = Add1

[State 1001, 5]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 8
trigger3 = AnimElem = 14
trigger4 = AnimElem = 20
trigger5 = AnimElem = 26
trigger6 = AnimElem = 32
attr = S, SA
animtype = medium
damage = 10
hitflag = MAF
guardflag = M
pausetime = 0,3
priority = 6
sparkno = s20001
sparkxy = -6, var(15)
hitsound = s4, 18
guard.sparkno = s902
guardsound = s4, 16
ground.type = Low
ground.slidetime = 5
ground.hittime = 10
ground.velocity = 0, -0.2
air.velocity = 0, -0.2
kill = 0

[State 1001, 6]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 11
trigger3 = AnimElem = 17
trigger4 = AnimElem = 23
trigger5 = AnimElem = 29
attr = S, SA
animtype = medium
damage = 10
hitflag = MAF
guardflag = M
pausetime = 0,3
priority = 6
sparkno = s20001
sparkxy = -4, var(15)
hitsound = s4, 18
guard.sparkno = s902
guardsound = s4, 16
ground.type = High
ground.slidetime = 5
ground.hittime = 10
ground.velocity = 0, -0.2
air.velocity = 0, -0.2
kill = 0

[State 1001, 7]
type = HitDef
trigger1 = AnimElem = 35
attr = S, SA
animtype = Back
damage = 25
numhits = 0
hitflag = MAF
guardflag = M
pausetime = 0,3
priority = 6
sparkno = 20001
sparkxy = -5, var(14)
hitsound = s4, 17
guard.sparkno = s902
guardsound = s4, 16
ground.type = High
ground.slidetime = 15
ground.hittime = 20
ground.velocity = -3,-5
air.velocity = -3,-5
air.recover = 0
fall.recover = 0
fall = 1

[State 1001, 12]
type = PlaySnd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 4
trigger3 = AnimElem = 7
trigger4 = AnimElem = 10
trigger5 = AnimElem = 13
trigger6 = AnimElem = 16
trigger7 = AnimElem = 19
trigger8 = AnimElem = 22
trigger9 = AnimElem = 25
trigger10 = AnimElem = 28
trigger11 = AnimElem = 31
trigger12 = AnimElem = 34
value = 4,19

[State 1001, 13]
type = PlaySnd
trigger1 = AnimElem = 37
value = 1,20
persistent = 0

[State 1001, 14]
type = CtrlSet
trigger1 = animtime = 0
value = 1

[State 1001, 15]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;-----------------------------------------------------------------------------------------------
[Statedef 1200]
type    = A
movetype= A
physics = S
ctrl = 0
juggle = 4
anim = 1200
velset = 0,0,0
poweradd = 75

[State 210, 1]
type = Helper
trigger1 = AnimElem = 12
name = "fuego"
ID = 975
postype = p1
pos = 20,-73
facing = 1
stateno = 975
keyctrl = 0
ownpal = 1
ontop = 1
persistent = 0
size.yscale = 1
size.ground.back = 10
size.ground.front = 10
size.air.back = 20
size.air.front = 20
size.height = 100
size.proj.doscale = 1
size.head.pos = 99
size.mid.pos = 50
size.shadowoffset = 0
 
[State 1010, 4]
type = PlaySnd
trigger1 = animelem =1
value = 1, 9
persistent = 0

[State 1010, 5]
type = PlaySnd
trigger1 = animelem = 9
value = 1, 24
persistent = 0

[State 1010, 4]
type = PlaySnd
trigger1 = animelem = 9 = 1
value = 4, 24
persistent = 0

[State 1200, 10]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 0

[State 1200, 10]
type = Ctrlset
trigger1 = pos y = 0
value = 1

;----------------------medio--------------------------------------------------------------------

[Statedef 1201]
type    = A
movetype= A
physics = S
ctrl = 0
juggle = 4
anim = 1200
velset = 0,0,0
poweradd = 100

[State 210, 1]
type = Helper
trigger1 = AnimElem = 12
name = "fuego_medium"
ID = 985
postype = p1
pos = 20,-73
facing = 1
stateno = 985
keyctrl = 0
ownpal = 1
ontop = 1
persistent = 0
size.yscale = 1
size.ground.back = 10
size.ground.front = 10
size.air.back = 20
size.air.front = 20
size.height = 100
size.proj.doscale = 1
size.head.pos = 99
size.mid.pos = 50
size.shadowoffset = 0
 
[State 1010, 4]
type = PlaySnd
trigger1 = animelem =1
value = 1, 9
persistent = 0

[State 1010, 5]
type = PlaySnd
trigger1 = animelem = 9
value = 1, 24
persistent = 0

[State 1010, 4]
type = PlaySnd
trigger1 = animelem = 9 = 1
value = 4, 24
persistent = 0

[State 1200, 10]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 0

[State 1200, 10]
type = Ctrlset
trigger1 = pos y = 0
value = 1

;-----------------------fuerte

[Statedef 1202]
type    = A
movetype= A
physics = S
ctrl = 0
juggle = 4
anim = 1200
velset = 0,0,0
poweradd = 150

[State 210, 1]
type = Helper
trigger1 = AnimElem = 12
name = "fuego_picante"
ID = 995
postype = p1
pos = 20,-73
facing = 1
stateno = 995
keyctrl = 0
ownpal = 1
ontop = 1
persistent = 0
size.yscale = 1
size.ground.back = 10
size.ground.front = 10
size.air.back = 20
size.air.front = 20
size.height = 100
size.proj.doscale = 1
size.head.pos = 99
size.mid.pos = 50
size.shadowoffset = 0
 
[State 1010, 4]
type = PlaySnd
trigger1 = animelem =1
value = 1, 9
persistent = 0

[State 1010, 5]
type = PlaySnd
trigger1 = animelem = 9
value = 1, 24
persistent = 0

[State 1010, 4]
type = PlaySnd
trigger1 = animelem = 9 = 1
value = 4, 24
persistent = 0

[State 1200, 10]
type = ChangeState
trigger1 = animtime = 0
value = 50
ctrl = 0

[State 1200, 10]
type = Ctrlset
trigger1 = pos y = 0
value = 1

;--------------------------
[Statedef 1700]
type = S
movetype = A
physics = S
anim = 1700
velset = 0
juggle = 3
poweradd = 50
ctrl = 0

[State 1050, 0] 
type = velset
trigger1 = time > 10
trigger1 = time < 70
x= 5

[State 400, 2]
type = HitDef
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 15
trigger4 = animelem = 20
trigger5 = animelem = 25
trigger6 = animelem = 30
trigger7 = animelem = 35
trigger8 = animelem = 36
trigger9 = animelem = 37
attr = C, SA
damage    = 40
priority  = 7
animtype  = back
hitflag = MAF
guardflag = MAF
pausetime = 0
sparkno = s20001
sparkxy = 10,-26
hitsound   = s4,17
guardsound = s4,16
guard.sparkno = s902
ground.type = low 
ground.slidetime = 2
ground.hittime = 60
ground.velocity = -2, -6
air.velocity = -2, -4
guard.velocity = -5
fall = 0
down.hittime = 20
;PERSISTENT = 0  

[State 1050, 0] 
type = playsnd
trigger1 = animelem = 1
value= 1,6

[State 1050, 0] 
type = playsnd
trigger1 = animelem = 7
value= 20,7

[State 1200, 10]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1710]
type = S
movetype = A
physics = S
anim = 1710
velset = 0
juggle = 3
poweradd = 100
ctrl = 0

[State 1050, 0] 
type = velset
trigger1 = time > 10
trigger1 = time < 110
x= 8

[State 400, 2]
type = HitDef
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 15
trigger4 = animelem = 20
trigger5 = animelem = 25
trigger6 = animelem = 30
trigger7 = animelem = 35
trigger8 = animelem = 40
trigger9 = animelem = 45
trigger10 = animelem = 50
trigger11 = animelem = 55
trigger12 = animelem = 60
trigger13 = animelem = 65
trigger14 = animelem = 70
trigger15 = animelem = 71
attr = C, SA
damage    = 70
priority  = 11
animtype  = UP
hitflag = MAF
guardflag = MAF
pausetime = 0
sparkno = s20001
sparkxy = 10,-26
hitsound   = s4,17
guardsound = s4,16
guard.sparkno = s902
ground.type = LOW 
ground.slidetime = 2
ground.hittime = 60
ground.velocity = -4, -8
air.velocity = -4, -8
guard.velocity = -5
fall = 1
down.hittime = 40

[State 1050, 0] 
type = playsnd
trigger1 = animelem = 1
value= 1,6

[State 1050, 0] 
type = playsnd
trigger1 = animelem = 7
value= 20,7

[State 1050, 0] 
type = playsnd
trigger1 = animelem = 72
value= 2,0

[State 400, 3]
type = Explod
trigger1 = animelem = 72
trigger1 = numexplod(925) = 0
anim = 925
id = 925
postype = p1
pos = 0,0
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 10]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1720]
type = S
movetype = A
physics = S
anim = 1710
velset = 0
juggle = 3
poweradd = 100
ctrl = 0

[State 1050, 0] 
type = velset
trigger1 = time > 10
trigger1 = time < 110
x= 8

[State 1001, 1]
type = EnvColor 
trigger1 = movehit = 1 
time = 3
Value = 250,0,0

[State 400, 2]
type = HitDef
trigger1 = animelem = 5
trigger2 = animelem = 10
trigger3 = animelem = 15
trigger4 = animelem = 20
trigger5 = animelem = 25
trigger6 = animelem = 30
trigger7 = animelem = 35
trigger8 = animelem = 40
trigger9 = animelem = 45
trigger10 = animelem = 50
trigger11 = animelem = 55
trigger12 = animelem = 60
trigger13 = animelem = 65
trigger14 = animelem = 70
trigger15 = animelem = 71
attr = C, SA
damage    = 0
priority  = 11
animtype  = light
hitflag = MAF
guardflag = MAF
pausetime = 0
sparkno = s20001
sparkxy = 10,-26
hitsound   = s4,17
guardsound = s4,16
guard.sparkno = s902
ground.type = LOW 
ground.slidetime = 2
ground.hittime = 60
ground.velocity = 0, 0
air.velocity = 0, 0
guard.velocity = -5
p1stateno = 1730
snap = 60 , 0
down.hittime = 0
numhits = 0

[State 1050, 0] 
type = playsnd
trigger1 = animelem = 1
value= 1,6

[State 1050, 0] 
type = playsnd
trigger1 = animelem = 7
value= 20,7

[State 1050, 0] 
type = playsnd
trigger1 = animelem = 72
value= 2,0

[State 400, 3]
type = Explod
trigger1 = animelem = 72
trigger1 = numexplod(925) = 0
anim = 925
id = 925
postype = p1
pos = 0,0
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 10]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 1730]
type = S
movetype = A
physics = S
anim = 1730
velset = 0
juggle = 3
poweradd = 0
ctrl = 0

[State 400, 2]
type = HitDef
trigger1 = animelem = 3
trigger2 = animelem = 7
trigger3 = animelem = 12
trigger4 = animelem = 16
trigger5 = animelem = 20
trigger6 = animelem = 24
attr = C, SA
damage    = 20
priority  = 7
animtype  = light
hitflag = MAF
guardflag = 
pausetime = 0
sparkno = s20001
sparkxy = 10,-26
hitsound   = s4,17
guardsound = s4,16
guard.sparkno = s902
ground.type = LOW 
ground.slidetime = 2
ground.hittime = 2
ground.velocity = 0, 0
air.velocity = 0, 0
guard.velocity = -5
down.hittime = 1

[State 400, 3]
type = HitDef
trigger1 = animelem = 26
attr = C, SA
damage    = 20
priority  = 11
animtype  = back
hitflag = MAF
guardflag = MAF
pausetime = 0
sparkno = s20001
sparkxy = 10,-46
hitsound   = s20,6
guardsound = s4,16
guard.sparkno = s902
ground.type = HIGH
ground.slidetime = 2
ground.hittime = 1
ground.velocity = -4, -6
air.velocity = -2, -8
guard.velocity = -4
FALL = 1
down.hittime = 60
NUMHITS = 3

[State 1050, 0] 
type = playsnd
trigger1 = animelem = 34
value= 2,0

[State 400, 3]
type = Explod
trigger1 = animelem = 34
trigger1 = numexplod(925) = 0
anim = 925
id = 925
postype = p1
pos = 0,0
sprpriority = 5
bindtime = 10
facing = -1
ontop = 1
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1200, 10]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1