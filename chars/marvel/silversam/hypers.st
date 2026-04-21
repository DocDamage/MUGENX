;Lightning
;
;3150  (0-100)             (200-300           (400-500)          (600-700)
;3151  (0-100) (100-200)                                (500-600)
;3152  (0-100) (100-200)   (200-300) (300-400)
;3153  (0-100)             (200-300)          (400-500) 
;3154          (100-200)             (300-400)                    (600-700)
;3155                      (200-300)          (400-500) (500-600) (600-700)
;3156  (0-100)                       (300-400)          (500-600)
;3157          (100-200)             (300-400)          (500-600) (600-700)
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

; Super Star
[Statedef 3000]
type = A  
movetype = A  
physics = N  
velset = 0,0
ctrl = 0  
anim = 3000 

[State 3000, Superpause]
type = SuperPause
triggerall = Anim = 3000
trigger1 = AnimElem = 3
time = 55
pos = -17, -75
darken = 1
poweradd = -1000
p2defmul = 1

[State 3000, playsnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 300, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 100, 1

[State 1000, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 1002
postype = p1
pos = 0, 0
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 0

[State 1000, 1]
type = Helper
trigger1 = AnimElem = 5
Stateno = 3001
id = 3000
Name = "Ninja"
pos = 30,-50
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = AnimElem = 5
Stateno = 3002
id = 3000
Name = "Ninja"
pos = -30,-50
ownpal = 1

[State 1000, 1]
type = Helper;
trigger1 = AnimElem = 5
Stateno = 3003
id = 3000
Name = "Ninja"
pos = 0,-85
ownpal = 1

[State 1000, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Air Super Star
[Statedef 3050]
type = A  
movetype = A  
physics = S  
velset = 0,0
ctrl = 0  
anim = 1001 

[State 3000, Superpause]
type = SuperPause
triggerall = Anim = 1001
trigger1 = AnimElem = 1
time = 55
pos = -17, -75
darken = 1
poweradd = -1000
p2defmul = 1

[State 3000, playsnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 300, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 100, 1

[State 1000, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 1002
postype = p1
pos = 0, 0
bindtime = 1
removetime = -2
ownpal = 1
sprpriority = 0

[State 1030, VelAdd]
type = VelAdd
trigger1 = Time >= 0
y = .05

[State 1030, PosSet]
type = PosSet
trigger1 = Pos Y >= 0
y = 0

[State 1000, 1]
type = Helper
trigger1 = AnimElem = 3
Stateno = 3001
id = 3000
Name = "Ninja"
pos = 30,-50
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = AnimElem = 3
Stateno = 3002
id = 3000
Name = "Ninja"
pos = -30,-50
ownpal = 1

[State 1000, 1]
type = Helper;
trigger1 = AnimElem = 3
Stateno = 3003
id = 3000
Name = "Ninja"
pos = 0,-85
ownpal = 1

[State 1030, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 53
ctrl = 1

; Star (Helper)
[Statedef 3001]
type = A
movetype = A  
physics = N
velset = 0, 0
ctrl = 0 
anim = 3001
sprpriority = 1

[state b]
type = velset
trigger1 = time
X = cos(26+time/7) * 1/2 * 2* pi 
Y = -sin(26+time/7) * 1/2 * 2* pi 

[state b]
type = veladd
trigger1 = time 
x = 9

[State 1001, VelAdd]
type = PosAdd
triggerall = Time
Trigger1 = parent, command = "holddown"
y = 1.5

[State 1001, VelAdd]
triggerall = Time
type = PosAdd
Trigger1 = parent, command = "holdup"
y = -1.5

[State 1001, 1]
type = hitdef
trigger1 = Time 
attr = A,SA
damage = 18,7
animtype = Hard
pausetime = 0,11
guardflag = MA
;sparkxy = 0,0
hitsound = S5,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = 0
air.velocity = 0,0
persistent = 1


[State 1001, 3]
type = ChangeState
trigger1 = FrontEdgeDist < -18
value = 1007
ignorehitpause = 1

[State 1001, 3]
type = ChangeState
triggerall = MoveContact = 0
trigger1 = Time >= 150
value = 1007
IgnoreHitpause = 1

; Star (Helper)
[Statedef 3002]
type = A
movetype = A  
physics = N
velset = 0, 0
ctrl = 0 
anim = 3001
sprpriority = 1

[state b]
type = velset
trigger1 = time
X = cos(18+time/7) * 1/2 * 2* pi 
Y = -sin(18+time/7) * 1/2 * 2* pi 

[state b]
type = veladd
trigger1 = time 
x = 9

[State 1001, VelAdd]
type = PosAdd
triggerall = Time
Trigger1 = parent, command = "holddown"
y = 1.5

[State 1001, VelAdd]
triggerall = Time
type = PosAdd
Trigger1 = parent, command = "holdup"
y = -1.5

[State 1001, 1]
type = hitdef
trigger1 = Time 
attr = A,SA
damage = 18,7
animtype = Hard
pausetime = 0,11
guardflag = MA
;sparkxy = 0,0
hitsound = S5,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = 0
air.velocity = 0,0
persistent = 1

[State 1001, 3]
type = ChangeState
trigger1 = FrontEdgeDist < -18
value = 1007
ignorehitpause = 1

[State 1001, 3]
type = ChangeState
triggerall = MoveContact = 0
trigger1 = Time >= 150
value = 1007
IgnoreHitpause = 1

; Star (Helper)
[Statedef 3003]
type = A
movetype = A  
physics = N
velset = 0, 0
ctrl = 0 
anim = 3001
sprpriority = 1

[state b]
type = velset
trigger1 = time
X = cos(22+time/7) * 1/2 * 2* pi 
Y = -sin(22+time/7) * 1/2 * 2* pi 

[state b]
type = veladd
trigger1 = time 
x = 9

[State 1001, VelAdd]
type = PosAdd
triggerall = Time
Trigger1 = parent, command = "holddown"
y = 1.5

[State 1001, VelAdd]
triggerall = Time
type = PosAdd
Trigger1 = parent, command = "holdup"
y = -1.5

[State 1001, 1]
type = hitdef
trigger1 = Time 
attr = A,SA
damage = 18,7
animtype = Hard
pausetime = 0,11
guardflag = MA
;sparkxy = 0,0
hitsound = S5,3
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = 0
air.velocity = 0,0
persistent = 1

[State 1001, 3]
type = ChangeState
trigger1 = FrontEdgeDist < -18
value = 1007
ignorehitpause = 1

[State 1001, 3]
type = ChangeState
triggerall = MoveContact = 0
trigger1 = Time >= 150
value = 1007
IgnoreHitpause = 1

; Raimenken
[Statedef 3100]
type = S  
movetype = A  
physics = S  
velset = 0,0
ctrl = 0  
anim = 3100 

[State 3100, Superpause]
type = SuperPause
triggerall = Anim = 3100
trigger1 = AnimElem = 2
time = 55
pos = 0, -105
darken = 1
poweradd = -1000
p2defmul = 1

[State 3000, playsnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 300, 0

[State 3100, 0]
type = Playsnd
trigger1 = AnimElem = 4
value = 100, 6

[State 3100, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3125

; Raimenken Cont1'
[Statedef 3125]
type = S  
movetype = A  
physics = S  
velset = 0,0
ctrl = 0  
anim = 3125 

[State 3100, 0]
type = Playsnd
trigger1 = Time = 0
value = 4, 6

[State 1000, 4]
type = Helper
trigger1 = time = 0
StateNo = 3102
id = 3102
Name = "Explodlightning"
pos = 0,0
ownpal = 1

[State 180, 1]
type = VarRandom
trigger1 = time >= 0
v = 0
range = 0, 700

[State 1000, 4]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 100
trigger1 = var(0) >= 0
trigger2 = time = 10
trigger2 = var(0) < 100
trigger2 = var(0) >= 0
trigger3 = time = 20
trigger3 = var(0) < 100
trigger3 = var(0) >= 0
trigger4 = time = 30
trigger4 = var(0) < 100
trigger4 = var(0) >= 0
trigger5 = time = 40
trigger5 = var(0) < 100
trigger5 = var(0) >= 0
trigger6 = time = 50
trigger6 = var(0) < 100
trigger6 = var(0) >= 0
trigger7 = time = 60
trigger7 = var(0) < 100
trigger7 = var(0) >= 0
trigger8 = time = 70
trigger8 = var(0) < 100
trigger8 = var(0) >= 0
trigger9 = time = 80
trigger9 = var(0) < 100
trigger9 = var(0) >= 0
trigger10 = time = 90
trigger10 = var(0) < 100
trigger10 = var(0) >= 0
trigger11 = time = 100
trigger11 = var(0) < 100
trigger11 = var(0) >= 0
trigger12 = time = 110
trigger12 = var(0) < 100
trigger12 = var(0) >= 0
trigger13 = time = 120
trigger13 = var(0) < 100
trigger13 = var(0) >= 0
trigger14 = time = 130
trigger14 = var(0) < 100
trigger14 = var(0) >= 0
trigger15 = time = 140
trigger15 = var(0) < 100
trigger15 = var(0) >= 0
trigger16 = time = 150
trigger16 = var(0) < 100
trigger16 = var(0) >= 0
trigger17 = time = 160
trigger17 = var(0) < 100
trigger17 = var(0) >= 0
trigger18 = time = 170
trigger18 = var(0) < 100
trigger18 = var(0) >= 0
StateNo = 3153
id = 3153
Name = "Lightning"
pos = -90,-120
ownpal = 1

[State 1000, 4]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 100
trigger1 = var(0) >= 0
trigger2 = time = 10
trigger2 = var(0) < 100
trigger2 = var(0) >= 0
trigger3 = time = 20
trigger3 = var(0) < 100
trigger3 = var(0) >= 0
trigger4 = time = 30
trigger4 = var(0) < 100
trigger4 = var(0) >= 0
trigger5 = time = 40
trigger5 = var(0) < 100
trigger5 = var(0) >= 0
trigger6 = time = 50
trigger6 = var(0) < 100
trigger6 = var(0) >= 0
trigger7 = time = 60
trigger7 = var(0) < 100
trigger7 = var(0) >= 0
trigger8 = time = 70
trigger8 = var(0) < 100
trigger8 = var(0) >= 0
trigger9 = time = 80
trigger9 = var(0) < 100
trigger9 = var(0) >= 0
trigger10 = time = 90
trigger10 = var(0) < 100
trigger10 = var(0) >= 0
trigger11 = time = 100
trigger11 = var(0) < 100
trigger11 = var(0) >= 0
trigger12 = time = 110
trigger12 = var(0) < 100
trigger12 = var(0) >= 0
trigger13 = time = 120
trigger13 = var(0) < 100
trigger13 = var(0) >= 0
trigger14 = time = 130
trigger14 = var(0) < 100
trigger14 = var(0) >= 0
trigger15 = time = 140
trigger15 = var(0) < 100
trigger15 = var(0) >= 0
trigger16 = time = 150
trigger16 = var(0) < 100
trigger16 = var(0) >= 0
trigger17 = time = 160
trigger17 = var(0) < 100
trigger17 = var(0) >= 0
trigger18 = time = 170
trigger18 = var(0) < 100
trigger18 = var(0) >= 0
StateNo = 3158
id = 3158
Name = "Lightning"
pos = -150,-120
ownpal = 1

[State 1000, 4]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 100
trigger1 = var(0) >= 0
trigger2 = time = 10
trigger2 = var(0) < 100
trigger2 = var(0) >= 0
trigger3 = time = 20
trigger3 = var(0) < 100
trigger3 = var(0) >= 0
trigger4 = time = 30
trigger4 = var(0) < 100
trigger4 = var(0) >= 0
trigger5 = time = 40
trigger5 = var(0) < 100
trigger5 = var(0) >= 0
trigger6 = time = 50
trigger6 = var(0) < 100
trigger6 = var(0) >= 0
trigger7 = time = 60
trigger7 = var(0) < 100
trigger7 = var(0) >= 0
trigger8 = time = 70
trigger8 = var(0) < 100
trigger8 = var(0) >= 0
trigger9 = time = 80
trigger9 = var(0) < 100
trigger9 = var(0) >= 0
trigger10 = time = 90
trigger10 = var(0) < 100
trigger10 = var(0) >= 0
trigger11 = time = 100
trigger11 = var(0) < 100
trigger11 = var(0) >= 0
trigger12 = time = 110
trigger12 = var(0) < 100
trigger12 = var(0) >= 0
trigger13 = time = 120
trigger13 = var(0) < 100
trigger13 = var(0) >= 0
trigger14 = time = 130
trigger14 = var(0) < 100
trigger14 = var(0) >= 0
trigger15 = time = 140
trigger15 = var(0) < 100
trigger15 = var(0) >= 0
trigger16 = time = 150
trigger16 = var(0) < 100
trigger16 = var(0) >= 0
trigger17 = time = 160
trigger17 = var(0) < 100
trigger17 = var(0) >= 0
trigger18 = time = 170
trigger18 = var(0) < 100
trigger18 = var(0) >= 0
StateNo = 3154
id = 3154
Name = "Lightning"
pos = -150,0
ownpal = 1

[State 1000, 4]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 100
trigger1 = var(0) >= 0
trigger2 = time = 10
trigger2 = var(0) < 100
trigger2 = var(0) >= 0
trigger3 = time = 20
trigger3 = var(0) < 100
trigger3 = var(0) >= 0
trigger4 = time = 30
trigger4 = var(0) < 100
trigger4 = var(0) >= 0
trigger5 = time = 40
trigger5 = var(0) < 100
trigger5 = var(0) >= 0
trigger6 = time = 50
trigger6 = var(0) < 100
trigger6 = var(0) >= 0
trigger7 = time = 60
trigger7 = var(0) < 100
trigger7 = var(0) >= 0
trigger8 = time = 70
trigger8 = var(0) < 100
trigger8 = var(0) >= 0
trigger9 = time = 80
trigger9 = var(0) < 100
trigger9 = var(0) >= 0
trigger10 = time = 90
trigger10 = var(0) < 100
trigger10 = var(0) >= 0
trigger11 = time = 100
trigger11 = var(0) < 100
trigger11 = var(0) >= 0
trigger12 = time = 110
trigger12 = var(0) < 100
trigger12 = var(0) >= 0
trigger13 = time = 120
trigger13 = var(0) < 100
trigger13 = var(0) >= 0
trigger14 = time = 130
trigger14 = var(0) < 100
trigger14 = var(0) >= 0
trigger15 = time = 140
trigger15 = var(0) < 100
trigger15 = var(0) >= 0
trigger16 = time = 150
trigger16 = var(0) < 100
trigger16 = var(0) >= 0
trigger17 = time = 160
trigger17 = var(0) < 100
trigger17 = var(0) >= 0
trigger18 = time = 170
trigger18 = var(0) < 100
trigger18 = var(0) >= 0
StateNo = 3159
id = 3159
Name = "Lightning"
pos = 150,-120
ownpal = 1

[State 1000, 4]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 100
trigger1 = var(0) >= 0
trigger2 = time = 10
trigger2 = var(0) < 100
trigger2 = var(0) >= 0
trigger3 = time = 20
trigger3 = var(0) < 100
trigger3 = var(0) >= 0
trigger4 = time = 30
trigger4 = var(0) < 100
trigger4 = var(0) >= 0
trigger5 = time = 40
trigger5 = var(0) < 100
trigger5 = var(0) >= 0
trigger6 = time = 50
trigger6 = var(0) < 100
trigger6 = var(0) >= 0
trigger7 = time = 60
trigger7 = var(0) < 100
trigger7 = var(0) >= 0
trigger8 = time = 70
trigger8 = var(0) < 100
trigger8 = var(0) >= 0
trigger9 = time = 80
trigger9 = var(0) < 100
trigger9 = var(0) >= 0
trigger10 = time = 90
trigger10 = var(0) < 100
trigger10 = var(0) >= 0
trigger11 = time = 100
trigger11 = var(0) < 100
trigger11 = var(0) >= 0
trigger12 = time = 110
trigger12 = var(0) < 100
trigger12 = var(0) >= 0
trigger13 = time = 120
trigger13 = var(0) < 100
trigger13 = var(0) >= 0
trigger14 = time = 130
trigger14 = var(0) < 100
trigger14 = var(0) >= 0
trigger15 = time = 140
trigger15 = var(0) < 100
trigger15 = var(0) >= 0
trigger16 = time = 150
trigger16 = var(0) < 100
trigger16 = var(0) >= 0
trigger17 = time = 160
trigger17 = var(0) < 100
trigger17 = var(0) >= 0
trigger18 = time = 170
trigger18 = var(0) < 100
trigger18 = var(0) >= 0
StateNo = 3157
id = 3157
Name = "Lightning"
pos = 150,0
ownpal = 1

[State 1000, 1]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 100
trigger1 = var(0) >= 0
trigger2 = time = 10
trigger2 = var(0) < 100
trigger2 = var(0) >= 0
trigger3 = time = 20
trigger3 = var(0) < 100
trigger3 = var(0) >= 0
trigger4 = time = 30
trigger4 = var(0) < 100
trigger4 = var(0) >= 0
trigger5 = time = 40
trigger5 = var(0) < 100
trigger5 = var(0) >= 0
trigger6 = time = 50
trigger6 = var(0) < 100
trigger6 = var(0) >= 0
trigger7 = time = 60
trigger7 = var(0) < 100
trigger7 = var(0) >= 0
trigger8 = time = 70
trigger8 = var(0) < 100
trigger8 = var(0) >= 0
trigger9 = time = 80
trigger9 = var(0) < 100
trigger9 = var(0) >= 0
trigger10 = time = 90
trigger10 = var(0) < 100
trigger10 = var(0) >= 0
trigger11 = time = 100
trigger11 = var(0) < 100
trigger11 = var(0) >= 0
trigger12 = time = 110
trigger12 = var(0) < 100
trigger12 = var(0) >= 0
trigger13 = time = 120
trigger13 = var(0) < 100
trigger13 = var(0) >= 0
trigger14 = time = 130
trigger14 = var(0) < 100
trigger14 = var(0) >= 0
trigger15 = time = 140
trigger15 = var(0) < 100
trigger15 = var(0) >= 0
trigger16 = time = 150
trigger16 = var(0) < 100
trigger16 = var(0) >= 0
trigger17 = time = 160
trigger17 = var(0) < 100
trigger17 = var(0) >= 0
trigger18 = time = 170
trigger18 = var(0) < 100
trigger18 = var(0) >= 0
Stateno = 3150
id = 3150
Name = "Lightning"
pos = 0,-170
ownpal = 1

[State 1000, 7]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 100
trigger1 = var(0) >= 0
trigger2 = time = 10
trigger2 = var(0) < 100
trigger2 = var(0) >= 0
trigger3 = time = 20
trigger3 = var(0) < 100
trigger3 = var(0) >= 0
trigger4 = time = 30
trigger4 = var(0) < 100
trigger4 = var(0) >= 0
trigger5 = time = 40
trigger5 = var(0) < 100
trigger5 = var(0) >= 0
trigger6 = time = 50
trigger6 = var(0) < 100
trigger6 = var(0) >= 0
trigger7 = time = 60
trigger7 = var(0) < 100
trigger7 = var(0) >= 0
trigger8 = time = 70
trigger8 = var(0) < 100
trigger8 = var(0) >= 0
trigger9 = time = 80
trigger9 = var(0) < 100
trigger9 = var(0) >= 0
trigger10 = time = 90
trigger10 = var(0) < 100
trigger10 = var(0) >= 0
trigger11 = time = 100
trigger11 = var(0) < 100
trigger11 = var(0) >= 0
trigger10 = time = 110
trigger10 = var(0) < 100
trigger10 = var(0) >= 0
trigger11 = time = 120
trigger11 = var(0) < 100
trigger11 = var(0) >= 0
trigger12 = time = 110
trigger12 = var(0) < 100
trigger12 = var(0) >= 0
trigger13 = time = 120
trigger13 = var(0) < 100
trigger13 = var(0) >= 0
trigger14 = time = 130
trigger14 = var(0) < 100
trigger14 = var(0) >= 0
trigger15 = time = 140
trigger15 = var(0) < 100
trigger15 = var(0) >= 0
trigger16 = time = 150
trigger16 = var(0) < 100
trigger16 = var(0) >= 0
trigger17 = time = 160
trigger17 = var(0) < 100
trigger17 = var(0) >= 0
trigger18 = time = 170
trigger18 = var(0) < 100
trigger18 = var(0) >= 0
StateNo = 3156
id = 3156
Name = "Lightning"
pos = -70,0
ownpal = 1

[State 1000, 2]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 100
trigger1 = var(0) >= 0
trigger2 = time = 10
trigger2 = var(0) < 100
trigger2 = var(0) >= 0
trigger3 = time = 20
trigger3 = var(0) < 100
trigger3 = var(0) >= 0
trigger4 = time = 30
trigger4 = var(0) < 100
trigger4 = var(0) >= 0
trigger5 = time = 40
trigger5 = var(0) < 100
trigger5 = var(0) >= 0
trigger6 = time = 50
trigger6 = var(0) < 100
trigger6 = var(0) >= 0
trigger7 = time = 60
trigger7 = var(0) < 100
trigger7 = var(0) >= 0
trigger8 = time = 70
trigger8 = var(0) < 100
trigger8 = var(0) >= 0
trigger9 = time = 80
trigger9 = var(0) < 100
trigger9 = var(0) >= 0
trigger10 = time = 90
trigger10 = var(0) < 100
trigger10 = var(0) >= 0
trigger11 = time = 100
trigger11 = var(0) < 100
trigger11 = var(0) >= 0
trigger12 = time = 110
trigger12 = var(0) < 100
trigger12 = var(0) >= 0
trigger13 = time = 120
trigger13 = var(0) < 100
trigger13 = var(0) >= 0
trigger14 = time = 130
trigger14 = var(0) < 100
trigger14 = var(0) >= 0
trigger15 = time = 140
trigger15 = var(0) < 100
trigger15 = var(0) >= 0
trigger16 = time = 150
trigger16 = var(0) < 100
trigger16 = var(0) >= 0
trigger17 = time = 160
trigger17 = var(0) < 100
trigger17 = var(0) >= 0
trigger18 = time = 170
trigger18 = var(0) < 100
trigger18 = var(0) >= 0
StateNo = 3151
id = 3151
Name = "Lightning"
pos = 70,-120
ownpal = 1

[State 1000, 3]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 100
trigger1 = var(0) >= 0
trigger2 = time = 10
trigger2 = var(0) < 100
trigger2 = var(0) >= 0
trigger3 = time = 20
trigger3 = var(0) < 100
trigger3 = var(0) >= 0
trigger4 = time = 30
trigger4 = var(0) < 100
trigger4 = var(0) >= 0
trigger5 = time = 40
trigger5 = var(0) < 100
trigger5 = var(0) >= 0
trigger6 = time = 50
trigger6 = var(0) < 100
trigger6 = var(0) >= 0
trigger7 = time = 60
trigger7 = var(0) < 100
trigger7 = var(0) >= 0
trigger8 = time = 70
trigger8 = var(0) < 100
trigger8 = var(0) >= 0
trigger9 = time = 80
trigger9 = var(0) < 100
trigger9 = var(0) >= 0
trigger10 = time = 90
trigger10 = var(0) < 100
trigger10 = var(0) >= 0
trigger11 = time = 100
trigger11 = var(0) < 100
trigger11 = var(0) >= 0
trigger12 = time = 110
trigger12 = var(0) < 100
trigger12 = var(0) >= 0
trigger13 = time = 120
trigger13 = var(0) < 100
trigger13 = var(0) >= 0
trigger14 = time = 130
trigger14 = var(0) < 100
trigger14 = var(0) >= 0
trigger15 = time = 140
trigger15 = var(0) < 100
trigger15 = var(0) >= 0
trigger16 = time = 150
trigger16 = var(0) < 100
trigger16 = var(0) >= 0
trigger17 = time = 160
trigger17 = var(0) < 100
trigger17 = var(0) >= 0
trigger18 = time = 170
trigger18 = var(0) < 100
trigger18 = var(0) >= 0
StateNo = 3152
id = 3152
Name = "Lightning"
pos = -70, -120
ownpal = 1

[State 1000, 2]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 200
trigger1 = var(0) >= 100
trigger2 = time = 10
trigger2 = var(0) < 200
trigger2 = var(0) >= 100
trigger3 = time = 20
trigger3 = var(0) < 200
trigger3 = var(0) >= 100
trigger4 = time = 30
trigger4 = var(0) < 200
trigger4 = var(0) >= 100
trigger5 = time = 40
trigger5 = var(0) < 200
trigger5 = var(0) >= 100
trigger6 = time = 50
trigger6 = var(0) < 200
trigger6 = var(0) >= 100
trigger7 = time = 60
trigger7 = var(0) < 200
trigger7 = var(0) >= 100
trigger8 = time = 70
trigger8 = var(0) < 200
trigger8 = var(0) >= 100
trigger9 = time = 80
trigger9 = var(0) < 200
trigger9 = var(0) >= 100
trigger10 = time = 90
trigger10 = var(0) < 200
trigger10 = var(0) >= 100
trigger11 = time = 100
trigger11 = var(0) < 200
trigger11 = var(0) >= 100
trigger12 = time = 110
trigger12 = var(0) < 200
trigger12 = var(0) >= 100
trigger13 = time = 120
trigger13 = var(0) < 200
trigger13 = var(0) >= 100
trigger14 = time = 130
trigger14 = var(0) < 200
trigger14 = var(0) >= 100
trigger15 = time = 140
trigger15 = var(0) < 200
trigger15 = var(0) >= 100
trigger16 = time = 150
trigger16 = var(0) < 200
trigger16 = var(0) >= 100
trigger17 = time = 160
trigger17 = var(0) < 200
trigger17 = var(0) >= 100
trigger18 = time = 170
trigger18 = var(0) < 200
trigger18 = var(0) >= 100
StateNo = 3154
id = 3154
Name = "Lightning"
pos = 90,-150
ownpal = 1

[State 1000, 2]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 200
trigger1 = var(0) >= 100
trigger2 = time = 10
trigger2 = var(0) < 200
trigger2 = var(0) >= 100
trigger3 = time = 20
trigger3 = var(0) < 200
trigger3 = var(0) >= 100
trigger4 = time = 30
trigger4 = var(0) < 200
trigger4 = var(0) >= 100
trigger5 = time = 40
trigger5 = var(0) < 200
trigger5 = var(0) >= 100
trigger6 = time = 50
trigger6 = var(0) < 200
trigger6 = var(0) >= 100
trigger7 = time = 60
trigger7 = var(0) < 200
trigger7 = var(0) >= 100
trigger8 = time = 70
trigger8 = var(0) < 200
trigger8 = var(0) >= 100
trigger9 = time = 80
trigger9 = var(0) < 200
trigger9 = var(0) >= 100
trigger10 = time = 90
trigger10 = var(0) < 200
trigger10 = var(0) >= 100
trigger11 = time = 100
trigger11 = var(0) < 200
trigger11 = var(0) >= 100
trigger12 = time = 110
trigger12 = var(0) < 200
trigger12 = var(0) >= 100
trigger13 = time = 120
trigger13 = var(0) < 200
trigger13 = var(0) >= 100
trigger14 = time = 130
trigger14 = var(0) < 200
trigger14 = var(0) >= 100
trigger15 = time = 140
trigger15 = var(0) < 200
trigger15 = var(0) >= 100
trigger16 = time = 150
trigger16 = var(0) < 200
trigger16 = var(0) >= 100
trigger17 = time = 160
trigger17 = var(0) < 200
trigger17 = var(0) >= 100
trigger18 = time = 170
trigger18 = var(0) < 200
trigger18 = var(0) >= 100
StateNo = 3160
id = 3160
Name = "Lightning"
pos = -150,-120
ownpal = 1

[State 1000, 2]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 200
trigger1 = var(0) >= 100
trigger2 = time = 10
trigger2 = var(0) < 200
trigger2 = var(0) >= 100
trigger3 = time = 20
trigger3 = var(0) < 200
trigger3 = var(0) >= 100
trigger4 = time = 30
trigger4 = var(0) < 200
trigger4 = var(0) >= 100
trigger5 = time = 40
trigger5 = var(0) < 200
trigger5 = var(0) >= 100
trigger6 = time = 50
trigger6 = var(0) < 200
trigger6 = var(0) >= 100
trigger7 = time = 60
trigger7 = var(0) < 200
trigger7 = var(0) >= 100
trigger8 = time = 70
trigger8 = var(0) < 200
trigger8 = var(0) >= 100
trigger9 = time = 80
trigger9 = var(0) < 200
trigger9 = var(0) >= 100
trigger10 = time = 90
trigger10 = var(0) < 200
trigger10 = var(0) >= 100
trigger11 = time = 100
trigger11 = var(0) < 200
trigger11 = var(0) >= 100
trigger12 = time = 110
trigger12 = var(0) < 200
trigger12 = var(0) >= 100
trigger13 = time = 120
trigger13 = var(0) < 200
trigger13 = var(0) >= 100
trigger14 = time = 130
trigger14 = var(0) < 200
trigger14 = var(0) >= 100
trigger15 = time = 140
trigger15 = var(0) < 200
trigger15 = var(0) >= 100
trigger16 = time = 150
trigger16 = var(0) < 200
trigger16 = var(0) >= 100
trigger17 = time = 160
trigger17 = var(0) < 200
trigger17 = var(0) >= 100
trigger18 = time = 170
trigger18 = var(0) < 200
trigger18 = var(0) >= 100
StateNo = 3150
id = 3150
Name = "Lightning"
pos = -150,0
ownpal = 1

[State 1000, 2]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 200
trigger1 = var(0) >= 100
trigger2 = time = 10
trigger2 = var(0) < 200
trigger2 = var(0) >= 100
trigger3 = time = 20
trigger3 = var(0) < 200
trigger3 = var(0) >= 100
trigger4 = time = 30
trigger4 = var(0) < 200
trigger4 = var(0) >= 100
trigger5 = time = 40
trigger5 = var(0) < 200
trigger5 = var(0) >= 100
trigger6 = time = 50
trigger6 = var(0) < 200
trigger6 = var(0) >= 100
trigger7 = time = 60
trigger7 = var(0) < 200
trigger7 = var(0) >= 100
trigger8 = time = 70
trigger8 = var(0) < 200
trigger8 = var(0) >= 100
trigger9 = time = 80
trigger9 = var(0) < 200
trigger9 = var(0) >= 100
trigger10 = time = 90
trigger10 = var(0) < 200
trigger10 = var(0) >= 100
trigger11 = time = 100
trigger11 = var(0) < 200
trigger11 = var(0) >= 100
trigger12 = time = 110
trigger12 = var(0) < 200
trigger12 = var(0) >= 100
trigger13 = time = 120
trigger13 = var(0) < 200
trigger13 = var(0) >= 100
trigger14 = time = 130
trigger14 = var(0) < 200
trigger14 = var(0) >= 100
trigger15 = time = 140
trigger15 = var(0) < 200
trigger15 = var(0) >= 100
trigger16 = time = 150
trigger16 = var(0) < 200
trigger16 = var(0) >= 100
trigger17 = time = 160
trigger17 = var(0) < 200
trigger17 = var(0) >= 100
trigger18 = time = 170
trigger18 = var(0) < 200
trigger18 = var(0) >= 100
StateNo = 3158
id = 3158
Name = "Lightning"
pos = 150,-120
ownpal = 1

[State 1000, 2]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 200
trigger1 = var(0) >= 100
trigger2 = time = 10
trigger2 = var(0) < 200
trigger2 = var(0) >= 100
trigger3 = time = 20
trigger3 = var(0) < 200
trigger3 = var(0) >= 100
trigger4 = time = 30
trigger4 = var(0) < 200
trigger4 = var(0) >= 100
trigger5 = time = 40
trigger5 = var(0) < 200
trigger5 = var(0) >= 100
trigger6 = time = 50
trigger6 = var(0) < 200
trigger6 = var(0) >= 100
trigger7 = time = 60
trigger7 = var(0) < 200
trigger7 = var(0) >= 100
trigger8 = time = 70
trigger8 = var(0) < 200
trigger8 = var(0) >= 100
trigger9 = time = 80
trigger9 = var(0) < 200
trigger9 = var(0) >= 100
trigger10 = time = 90
trigger10 = var(0) < 200
trigger10 = var(0) >= 100
trigger11 = time = 100
trigger11 = var(0) < 200
trigger11 = var(0) >= 100
trigger12 = time = 110
trigger12 = var(0) < 200
trigger12 = var(0) >= 100
trigger13 = time = 120
trigger13 = var(0) < 200
trigger13 = var(0) >= 100
trigger14 = time = 130
trigger14 = var(0) < 200
trigger14 = var(0) >= 100
trigger15 = time = 140
trigger15 = var(0) < 200
trigger15 = var(0) >= 100
trigger16 = time = 150
trigger16 = var(0) < 200
trigger16 = var(0) >= 100
trigger17 = time = 160
trigger17 = var(0) < 200
trigger17 = var(0) >= 100
trigger18 = time = 170
trigger18 = var(0) < 200
trigger18 = var(0) >= 100
StateNo = 3151
id = 3151
Name = "Lightning"
pos = 150,0
ownpal = 1

[State 1000, 2]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 200
trigger1 = var(0) >= 100
trigger2 = time = 10
trigger2 = var(0) < 200
trigger2 = var(0) >= 100
trigger3 = time = 20
trigger3 = var(0) < 200
trigger3 = var(0) >= 100
trigger4 = time = 30
trigger4 = var(0) < 200
trigger4 = var(0) >= 100
trigger5 = time = 40
trigger5 = var(0) < 200
trigger5 = var(0) >= 100
trigger6 = time = 50
trigger6 = var(0) < 200
trigger6 = var(0) >= 100
trigger7 = time = 60
trigger7 = var(0) < 200
trigger7 = var(0) >= 100
trigger8 = time = 70
trigger8 = var(0) < 200
trigger8 = var(0) >= 100
trigger9 = time = 80
trigger9 = var(0) < 200
trigger9 = var(0) >= 100
trigger10 = time = 90
trigger10 = var(0) < 200
trigger10 = var(0) >= 100
trigger11 = time = 100
trigger11 = var(0) < 200
trigger11 = var(0) >= 100
trigger12 = time = 110
trigger12 = var(0) < 200
trigger12 = var(0) >= 100
trigger13 = time = 120
trigger13 = var(0) < 200
trigger13 = var(0) >= 100
trigger14 = time = 130
trigger14 = var(0) < 200
trigger14 = var(0) >= 100
trigger15 = time = 140
trigger15 = var(0) < 200
trigger15 = var(0) >= 100
trigger16 = time = 150
trigger16 = var(0) < 200
trigger16 = var(0) >= 100
trigger17 = time = 160
trigger17 = var(0) < 200
trigger17 = var(0) >= 100
trigger18 = time = 170
trigger18 = var(0) < 200
trigger18 = var(0) >= 100
StateNo = 3157
id = 3157
Name = "Lightning"
pos = 90,0
ownpal = 1

[State 1000, 2]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 200
trigger1 = var(0) >= 100
trigger2 = time = 10
trigger2 = var(0) < 200
trigger2 = var(0) >= 100
trigger3 = time = 20
trigger3 = var(0) < 200
trigger3 = var(0) >= 100
trigger4 = time = 30
trigger4 = var(0) < 200
trigger4 = var(0) >= 100
trigger5 = time = 40
trigger5 = var(0) < 200
trigger5 = var(0) >= 100
trigger6 = time = 50
trigger6 = var(0) < 200
trigger6 = var(0) >= 100
trigger7 = time = 60
trigger7 = var(0) < 200
trigger7 = var(0) >= 100
trigger8 = time = 70
trigger8 = var(0) < 200
trigger8 = var(0) >= 100
trigger9 = time = 80
trigger9 = var(0) < 200
trigger9 = var(0) >= 100
trigger10 = time = 90
trigger10 = var(0) < 200
trigger10 = var(0) >= 100
trigger11 = time = 100
trigger11 = var(0) < 200
trigger11 = var(0) >= 100
trigger12 = time = 110
trigger12 = var(0) < 200
trigger12 = var(0) >= 100
trigger13 = time = 120
trigger13 = var(0) < 200
trigger13 = var(0) >= 100
trigger14 = time = 130
trigger14 = var(0) < 200
trigger14 = var(0) >= 100
trigger15 = time = 140
trigger15 = var(0) < 200
trigger15 = var(0) >= 100
trigger16 = time = 150
trigger16 = var(0) < 200
trigger16 = var(0) >= 100
trigger17 = time = 160
trigger17 = var(0) < 200
trigger17 = var(0) >= 100
trigger18 = time = 170
trigger18 = var(0) < 200
trigger18 = var(0) >= 100
StateNo = 3153
id = 3153
Name = "Lightning"
pos = -70,0
ownpal = 1

[State 1000, 2]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 200
trigger1 = var(0) >= 100
trigger2 = time = 10
trigger2 = var(0) < 200
trigger2 = var(0) >= 100
trigger3 = time = 20
trigger3 = var(0) < 200
trigger3 = var(0) >= 100
trigger4 = time = 30
trigger4 = var(0) < 200
trigger4 = var(0) >= 100
trigger5 = time = 40
trigger5 = var(0) < 200
trigger5 = var(0) >= 100
trigger6 = time = 50
trigger6 = var(0) < 200
trigger6 = var(0) >= 100
trigger7 = time = 60
trigger7 = var(0) < 200
trigger7 = var(0) >= 100
trigger8 = time = 70
trigger8 = var(0) < 200
trigger8 = var(0) >= 100
trigger9 = time = 80
trigger9 = var(0) < 200
trigger9 = var(0) >= 100
trigger10 = time = 90
trigger10 = var(0) < 200
trigger10 = var(0) >= 100
trigger11 = time = 100
trigger11 = var(0) < 200
trigger11 = var(0) >= 100
trigger12 = time = 110
trigger12 = var(0) < 200
trigger12 = var(0) >= 100
trigger13 = time = 120
trigger13 = var(0) < 200
trigger13 = var(0) >= 100
trigger14 = time = 130
trigger14 = var(0) < 200
trigger14 = var(0) >= 100
trigger15 = time = 140
trigger15 = var(0) < 200
trigger15 = var(0) >= 100
trigger16 = time = 150
trigger16 = var(0) < 200
trigger16 = var(0) >= 100
trigger17 = time = 160
trigger17 = var(0) < 200
trigger17 = var(0) >= 100
trigger18 = time = 170
trigger18 = var(0) < 200
trigger18 = var(0) >= 100
StateNo = 3151
id = 3151
Name = "Lightning"
pos = -90,-150
ownpal = 1

[State 1000, 3]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 200
trigger1 = var(0) >= 100
trigger2 = time = 10
trigger2 = var(0) < 200
trigger2 = var(0) >= 100
trigger3 = time = 20
trigger3 = var(0) < 200
trigger3 = var(0) >= 100
trigger4 = time = 30
trigger4 = var(0) < 200
trigger4 = var(0) >= 100
trigger5 = time = 40
trigger5 = var(0) < 200
trigger5 = var(0) >= 100
trigger6 = time = 50
trigger6 = var(0) < 200
trigger6 = var(0) >= 100
trigger7 = time = 60
trigger7 = var(0) < 200
trigger7 = var(0) >= 100
trigger8 = time = 70
trigger8 = var(0) < 200
trigger8 = var(0) >= 100
trigger9 = time = 80
trigger9 = var(0) < 200
trigger9 = var(0) >= 100
trigger10 = time = 90
trigger10 = var(0) < 200
trigger10 = var(0) >= 100
trigger11 = time = 100
trigger11 = var(0) < 200
trigger11 = var(0) >= 100
trigger12 = time = 110
trigger12 = var(0) < 200
trigger12 = var(0) >= 100
trigger13 = time = 120
trigger13 = var(0) < 200
trigger13 = var(0) >= 100
trigger14 = time = 130
trigger14 = var(0) < 200
trigger14 = var(0) >= 100
trigger15 = time = 140
trigger15 = var(0) < 200
trigger15 = var(0) >= 100
trigger16 = time = 150
trigger16 = var(0) < 200
trigger16 = var(0) >= 100
trigger17 = time = 160
trigger17 = var(0) < 200
trigger17 = var(0) >= 100
trigger18 = time = 170
trigger18 = var(0) < 200
trigger18 = var(0) >= 100
StateNo = 3152
id = 3152
Name = "Lightning"
pos = 0,-150
ownpal = 1

[State 1000, 4]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 300
trigger1 = var(0) >= 200
trigger2 = time = 10
trigger2 = var(0) < 300
trigger2 = var(0) >= 200
trigger3 = time = 20
trigger3 = var(0) < 300
trigger3 = var(0) >= 200
trigger4 = time = 30
trigger4 = var(0) < 300
trigger4 = var(0) >= 200
trigger5 = time = 40
trigger5 = var(0) < 300
trigger5 = var(0) >= 200
trigger6 = time = 50
trigger6 = var(0) < 300
trigger6 = var(0) >= 200
trigger7 = time = 60
trigger7 = var(0) < 300
trigger7 = var(0) >= 200
trigger8 = time = 70
trigger8 = var(0) < 300
trigger8 = var(0) >= 200
trigger9 = time = 80
trigger9 = var(0) < 300
trigger9 = var(0) >= 200
trigger10 = time = 90
trigger10 = var(0) < 300
trigger10 = var(0) >= 200
trigger11 = time = 100
trigger11 = var(0) < 300
trigger11 = var(0) >= 200
trigger12 = time = 110
trigger12 = var(0) < 300
trigger12 = var(0) >= 200
trigger13 = time = 120
trigger13 = var(0) < 300
trigger13 = var(0) >= 200
trigger14 = time = 130
trigger14 = var(0) < 300
trigger14 = var(0) >= 200
trigger15 = time = 140
trigger15 = var(0) < 300
trigger15 = var(0) >= 200
trigger16 = time = 150
trigger16 = var(0) < 300
trigger16 = var(0) >= 200
trigger17 = time = 160
trigger17 = var(0) < 300
trigger17 = var(0) >= 200
StateNo = 3156
id = 3153
Name = "Lightning"
pos = 150,0
ownpal = 1

[State 1000, 4]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 300
trigger1 = var(0) >= 200
trigger2 = time = 10
trigger2 = var(0) < 300
trigger2 = var(0) >= 200
trigger3 = time = 20
trigger3 = var(0) < 300
trigger3 = var(0) >= 200
trigger4 = time = 30
trigger4 = var(0) < 300
trigger4 = var(0) >= 200
trigger5 = time = 40
trigger5 = var(0) < 300
trigger5 = var(0) >= 200
trigger6 = time = 50
trigger6 = var(0) < 300
trigger6 = var(0) >= 200
trigger7 = time = 60
trigger7 = var(0) < 300
trigger7 = var(0) >= 200
trigger8 = time = 70
trigger8 = var(0) < 300
trigger8 = var(0) >= 200
trigger9 = time = 80
trigger9 = var(0) < 300
trigger9 = var(0) >= 200
trigger10 = time = 90
trigger10 = var(0) < 300
trigger10 = var(0) >= 200
trigger11 = time = 100
trigger11 = var(0) < 300
trigger11 = var(0) >= 200
trigger12 = time = 110
trigger12 = var(0) < 300
trigger12 = var(0) >= 200
trigger13 = time = 120
trigger13 = var(0) < 300
trigger13 = var(0) >= 200
trigger14 = time = 130
trigger14 = var(0) < 300
trigger14 = var(0) >= 200
trigger15 = time = 140
trigger15 = var(0) < 300
trigger15 = var(0) >= 200
trigger16 = time = 150
trigger16 = var(0) < 300
trigger16 = var(0) >= 200
trigger17 = time = 160
trigger17 = var(0) < 300
trigger17 = var(0) >= 200
StateNo = 3160
id = 3160
Name = "Lightning"
pos = 150,-120
ownpal = 1

[State 1000, 4]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 300
trigger1 = var(0) >= 200
trigger2 = time = 10
trigger2 = var(0) < 300
trigger2 = var(0) >= 200
trigger3 = time = 20
trigger3 = var(0) < 300
trigger3 = var(0) >= 200
trigger4 = time = 30
trigger4 = var(0) < 300
trigger4 = var(0) >= 200
trigger5 = time = 40
trigger5 = var(0) < 300
trigger5 = var(0) >= 200
trigger6 = time = 50
trigger6 = var(0) < 300
trigger6 = var(0) >= 200
trigger7 = time = 60
trigger7 = var(0) < 300
trigger7 = var(0) >= 200
trigger8 = time = 70
trigger8 = var(0) < 300
trigger8 = var(0) >= 200
trigger9 = time = 80
trigger9 = var(0) < 300
trigger9 = var(0) >= 200
trigger10 = time = 90
trigger10 = var(0) < 300
trigger10 = var(0) >= 200
trigger11 = time = 100
trigger11 = var(0) < 300
trigger11 = var(0) >= 200
trigger12 = time = 110
trigger12 = var(0) < 300
trigger12 = var(0) >= 200
trigger13 = time = 120
trigger13 = var(0) < 300
trigger13 = var(0) >= 200
trigger14 = time = 130
trigger14 = var(0) < 300
trigger14 = var(0) >= 200
trigger15 = time = 140
trigger15 = var(0) < 300
trigger15 = var(0) >= 200
trigger16 = time = 150
trigger16 = var(0) < 300
trigger16 = var(0) >= 200
trigger17 = time = 160
trigger17 = var(0) < 300
trigger17 = var(0) >= 200
StateNo = 3158
id = 3158
Name = "Lightning"
pos = -150, -120
ownpal = 1

[State 1000, 4]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 300
trigger1 = var(0) >= 200
trigger2 = time = 10
trigger2 = var(0) < 300
trigger2 = var(0) >= 200
trigger3 = time = 20
trigger3 = var(0) < 300
trigger3 = var(0) >= 200
trigger4 = time = 30
trigger4 = var(0) < 300
trigger4 = var(0) >= 200
trigger5 = time = 40
trigger5 = var(0) < 300
trigger5 = var(0) >= 200
trigger6 = time = 50
trigger6 = var(0) < 300
trigger6 = var(0) >= 200
trigger7 = time = 60
trigger7 = var(0) < 300
trigger7 = var(0) >= 200
trigger8 = time = 70
trigger8 = var(0) < 300
trigger8 = var(0) >= 200
trigger9 = time = 80
trigger9 = var(0) < 300
trigger9 = var(0) >= 200
trigger10 = time = 90
trigger10 = var(0) < 300
trigger10 = var(0) >= 200
trigger11 = time = 100
trigger11 = var(0) < 300
trigger11 = var(0) >= 200
trigger12 = time = 110
trigger12 = var(0) < 300
trigger12 = var(0) >= 200
trigger13 = time = 120
trigger13 = var(0) < 300
trigger13 = var(0) >= 200
trigger14 = time = 130
trigger14 = var(0) < 300
trigger14 = var(0) >= 200
trigger15 = time = 140
trigger15 = var(0) < 300
trigger15 = var(0) >= 200
trigger16 = time = 150
trigger16 = var(0) < 300
trigger16 = var(0) >= 200
trigger17 = time = 160
trigger17 = var(0) < 300
trigger17 = var(0) >= 200
StateNo = 3154
id = 3154
Name = "Lightning"
pos = -150, 0
ownpal = 1

[State 1000, 4]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 300
trigger1 = var(0) >= 200
trigger2 = time = 10
trigger2 = var(0) < 300
trigger2 = var(0) >= 200
trigger3 = time = 20
trigger3 = var(0) < 300
trigger3 = var(0) >= 200
trigger4 = time = 30
trigger4 = var(0) < 300
trigger4 = var(0) >= 200
trigger5 = time = 40
trigger5 = var(0) < 300
trigger5 = var(0) >= 200
trigger6 = time = 50
trigger6 = var(0) < 300
trigger6 = var(0) >= 200
trigger7 = time = 60
trigger7 = var(0) < 300
trigger7 = var(0) >= 200
trigger8 = time = 70
trigger8 = var(0) < 300
trigger8 = var(0) >= 200
trigger9 = time = 80
trigger9 = var(0) < 300
trigger9 = var(0) >= 200
trigger10 = time = 90
trigger10 = var(0) < 300
trigger10 = var(0) >= 200
trigger11 = time = 100
trigger11 = var(0) < 300
trigger11 = var(0) >= 200
trigger12 = time = 110
trigger12 = var(0) < 300
trigger12 = var(0) >= 200
trigger13 = time = 120
trigger13 = var(0) < 300
trigger13 = var(0) >= 200
trigger14 = time = 130
trigger14 = var(0) < 300
trigger14 = var(0) >= 200
trigger15 = time = 140
trigger15 = var(0) < 300
trigger15 = var(0) >= 200
trigger16 = time = 150
trigger16 = var(0) < 300
trigger16 = var(0) >= 200
trigger17 = time = 160
trigger17 = var(0) < 300
trigger17 = var(0) >= 200
StateNo = 3153
id = 3153
Name = "Lightning"
pos = 70,0
ownpal = 1

[State 1000, 4]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 300
trigger1 = var(0) >= 200
trigger2 = time = 10
trigger2 = var(0) < 300
trigger2 = var(0) >= 200
trigger3 = time = 20
trigger3 = var(0) < 300
trigger3 = var(0) >= 200
trigger4 = time = 30
trigger4 = var(0) < 300
trigger4 = var(0) >= 200
trigger5 = time = 40
trigger5 = var(0) < 300
trigger5 = var(0) >= 200
trigger6 = time = 50
trigger6 = var(0) < 300
trigger6 = var(0) >= 200
trigger7 = time = 60
trigger7 = var(0) < 300
trigger7 = var(0) >= 200
trigger8 = time = 70
trigger8 = var(0) < 300
trigger8 = var(0) >= 200
trigger9 = time = 80
trigger9 = var(0) < 300
trigger9 = var(0) >= 200
trigger10 = time = 90
trigger10 = var(0) < 300
trigger10 = var(0) >= 200
trigger11 = time = 100
trigger11 = var(0) < 300
trigger11 = var(0) >= 200
trigger12 = time = 110
trigger12 = var(0) < 300
trigger12 = var(0) >= 200
trigger13 = time = 120
trigger13 = var(0) < 300
trigger13 = var(0) >= 200
trigger14 = time = 130
trigger14 = var(0) < 300
trigger14 = var(0) >= 200
trigger15 = time = 140
trigger15 = var(0) < 300
trigger15 = var(0) >= 200
trigger16 = time = 150
trigger16 = var(0) < 300
trigger16 = var(0) >= 200
trigger17 = time = 160
trigger17 = var(0) < 300
trigger17 = var(0) >= 200
StateNo = 3150
id = 3150
Name = "Lightning"
pos = -70,0
ownpal = 1


[State 1000, 4]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 300
trigger1 = var(0) >= 200
trigger2 = time = 10
trigger2 = var(0) < 300
trigger2 = var(0) >= 200
trigger3 = time = 20
trigger3 = var(0) < 300
trigger3 = var(0) >= 200
trigger4 = time = 30
trigger4 = var(0) < 300
trigger4 = var(0) >= 200
trigger5 = time = 40
trigger5 = var(0) < 300
trigger5 = var(0) >= 200
trigger6 = time = 50
trigger6 = var(0) < 300
trigger6 = var(0) >= 200
trigger7 = time = 60
trigger7 = var(0) < 300
trigger7 = var(0) >= 200
trigger8 = time = 70
trigger8 = var(0) < 300
trigger8 = var(0) >= 200
trigger9 = time = 80
trigger9 = var(0) < 300
trigger9 = var(0) >= 200
trigger10 = time = 90
trigger10 = var(0) < 300
trigger10 = var(0) >= 200
trigger11 = time = 100
trigger11 = var(0) < 300
trigger11 = var(0) >= 200
trigger12 = time = 110
trigger12 = var(0) < 300
trigger12 = var(0) >= 200
trigger13 = time = 120
trigger13 = var(0) < 300
trigger13 = var(0) >= 200
trigger14 = time = 130
trigger14 = var(0) < 300
trigger14 = var(0) >= 200
trigger15 = time = 140
trigger15 = var(0) < 300
trigger15 = var(0) >= 200
trigger16 = time = 150
trigger16 = var(0) < 300
trigger16 = var(0) >= 200
trigger17 = time = 160
trigger17 = var(0) < 300
trigger17 = var(0) >= 200
StateNo = 3152
id = 3152
Name = "Lightning"
pos = -70,-120
ownpal = 1

[State 1000, 6]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 300
trigger1 = var(0) >= 200
trigger2 = time = 10
trigger2 = var(0) < 300
trigger2 = var(0) >= 200
trigger3 = time = 20
trigger3 = var(0) < 300
trigger3 = var(0) >= 200
trigger4 = time = 30
trigger4 = var(0) < 300
trigger4 = var(0) >= 200
trigger5 = time = 40
trigger5 = var(0) < 300
trigger5 = var(0) >= 200
trigger6 = time = 50
trigger6 = var(0) < 300
trigger6 = var(0) >= 200
trigger7 = time = 60
trigger7 = var(0) < 300
trigger7 = var(0) >= 200
trigger8 = time = 70
trigger8 = var(0) < 300
trigger8 = var(0) >= 200
trigger9 = time = 80
trigger9 = var(0) < 300
trigger9 = var(0) >= 200
trigger10 = time = 90
trigger10 = var(0) < 300
trigger10 = var(0) >= 200
trigger11 = time = 100
trigger11 = var(0) < 300
trigger11 = var(0) >= 200
trigger12 = time = 110
trigger12 = var(0) < 300
trigger12 = var(0) >= 200
trigger13 = time = 120
trigger13 = var(0) < 300
trigger13 = var(0) >= 200
trigger14 = time = 130
trigger14 = var(0) < 300
trigger14 = var(0) >= 200
trigger15 = time = 140
trigger15 = var(0) < 300
trigger15 = var(0) >= 200
trigger16 = time = 150
trigger16 = var(0) < 300
trigger16 = var(0) >= 200
trigger17 = time = 160
trigger17 = var(0) < 300
trigger17 = var(0) >= 200
StateNo = 3155
id = 3155
Name = "Lightning"
pos = 70,-120
ownpal = 1

[State 1000, 4]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 400
trigger1 = var(0) >= 300
trigger2 = time = 10
trigger2 = var(0) < 400
trigger2 = var(0) >= 300
trigger3 = time = 20
trigger3 = var(0) < 400
trigger3 = var(0) >= 300
trigger4 = time = 30
trigger4 = var(0) < 400
trigger4 = var(0) >= 300
trigger5 = time = 40
trigger5 = var(0) < 400
trigger5 = var(0) >= 300
trigger6 = time = 50
trigger6 = var(0) < 400
trigger6 = var(0) >= 300
trigger7 = time = 60
trigger7 = var(0) < 400
trigger7 = var(0) >= 300
trigger8 = time = 70
trigger8 = var(0) < 400
trigger8 = var(0) >= 300
trigger9 = time = 80
trigger9 = var(0) < 400
trigger9 = var(0) >= 300
trigger10 = time = 90
trigger10 = var(0) < 400
trigger10 = var(0) >= 300
trigger11 = time = 100
trigger11 = var(0) < 400
trigger11 = var(0) >= 300
trigger12 = time = 110
trigger12 = var(0) < 400
trigger12 = var(0) >= 300
trigger13 = time = 120
trigger13 = var(0) < 400
trigger13 = var(0) >= 300
trigger14 = time = 130
trigger14 = var(0) < 400
trigger14 = var(0) >= 300
trigger15 = time = 140
trigger15 = var(0) < 400
trigger15 = var(0) >= 300
trigger16 = time = 150
trigger16 = var(0) < 400
trigger16 = var(0) >= 300
trigger17 = time = 160
trigger17 = var(0) < 400
trigger17 = var(0) >= 300
trigger18 = time = 170
trigger18 = var(0) < 400
trigger18 = var(0) >= 300
StateNo = 3152
id = 3152
Name = "Lightning"
pos = -70,-120
ownpal = 1

[State 1000, 4]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 400
trigger1 = var(0) >= 300
trigger2 = time = 10
trigger2 = var(0) < 400
trigger2 = var(0) >= 300
trigger3 = time = 20
trigger3 = var(0) < 400
trigger3 = var(0) >= 300
trigger4 = time = 30
trigger4 = var(0) < 400
trigger4 = var(0) >= 300
trigger5 = time = 40
trigger5 = var(0) < 400
trigger5 = var(0) >= 300
trigger6 = time = 50
trigger6 = var(0) < 400
trigger6 = var(0) >= 300
trigger7 = time = 60
trigger7 = var(0) < 400
trigger7 = var(0) >= 300
trigger8 = time = 70
trigger8 = var(0) < 400
trigger8 = var(0) >= 300
trigger9 = time = 80
trigger9 = var(0) < 400
trigger9 = var(0) >= 300
trigger10 = time = 90
trigger10 = var(0) < 400
trigger10 = var(0) >= 300
trigger11 = time = 100
trigger11 = var(0) < 400
trigger11 = var(0) >= 300
trigger12 = time = 110
trigger12 = var(0) < 400
trigger12 = var(0) >= 300
trigger13 = time = 120
trigger13 = var(0) < 400
trigger13 = var(0) >= 300
trigger14 = time = 130
trigger14 = var(0) < 400
trigger14 = var(0) >= 300
trigger15 = time = 140
trigger15 = var(0) < 400
trigger15 = var(0) >= 300
trigger16 = time = 150
trigger16 = var(0) < 400
trigger16 = var(0) >= 300
trigger17 = time = 160
trigger17 = var(0) < 400
trigger17 = var(0) >= 300
trigger18 = time = 170
trigger18 = var(0) < 400
trigger18 = var(0) >= 300
StateNo = 3158
id = 3158
Name = "Lightning"
pos = 150,-120
ownpal = 1

[State 1000, 4]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 400
trigger1 = var(0) >= 300
trigger2 = time = 10
trigger2 = var(0) < 400
trigger2 = var(0) >= 300
trigger3 = time = 20
trigger3 = var(0) < 400
trigger3 = var(0) >= 300
trigger4 = time = 30
trigger4 = var(0) < 400
trigger4 = var(0) >= 300
trigger5 = time = 40
trigger5 = var(0) < 400
trigger5 = var(0) >= 300
trigger6 = time = 50
trigger6 = var(0) < 400
trigger6 = var(0) >= 300
trigger7 = time = 60
trigger7 = var(0) < 400
trigger7 = var(0) >= 300
trigger8 = time = 70
trigger8 = var(0) < 400
trigger8 = var(0) >= 300
trigger9 = time = 80
trigger9 = var(0) < 400
trigger9 = var(0) >= 300
trigger10 = time = 90
trigger10 = var(0) < 400
trigger10 = var(0) >= 300
trigger11 = time = 100
trigger11 = var(0) < 400
trigger11 = var(0) >= 300
trigger12 = time = 110
trigger12 = var(0) < 400
trigger12 = var(0) >= 300
trigger13 = time = 120
trigger13 = var(0) < 400
trigger13 = var(0) >= 300
trigger14 = time = 130
trigger14 = var(0) < 400
trigger14 = var(0) >= 300
trigger15 = time = 140
trigger15 = var(0) < 400
trigger15 = var(0) >= 300
trigger16 = time = 150
trigger16 = var(0) < 400
trigger16 = var(0) >= 300
trigger17 = time = 160
trigger17 = var(0) < 400
trigger17 = var(0) >= 300
trigger18 = time = 170
trigger18 = var(0) < 400
trigger18 = var(0) >= 300
StateNo = 3155
id = 3155
Name = "Lightning"
pos = 150,0
ownpal = 1

[State 1000, 4]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 400
trigger1 = var(0) >= 300
trigger2 = time = 10
trigger2 = var(0) < 400
trigger2 = var(0) >= 300
trigger3 = time = 20
trigger3 = var(0) < 400
trigger3 = var(0) >= 300
trigger4 = time = 30
trigger4 = var(0) < 400
trigger4 = var(0) >= 300
trigger5 = time = 40
trigger5 = var(0) < 400
trigger5 = var(0) >= 300
trigger6 = time = 50
trigger6 = var(0) < 400
trigger6 = var(0) >= 300
trigger7 = time = 60
trigger7 = var(0) < 400
trigger7 = var(0) >= 300
trigger8 = time = 70
trigger8 = var(0) < 400
trigger8 = var(0) >= 300
trigger9 = time = 80
trigger9 = var(0) < 400
trigger9 = var(0) >= 300
trigger10 = time = 90
trigger10 = var(0) < 400
trigger10 = var(0) >= 300
trigger11 = time = 100
trigger11 = var(0) < 400
trigger11 = var(0) >= 300
trigger12 = time = 110
trigger12 = var(0) < 400
trigger12 = var(0) >= 300
trigger13 = time = 120
trigger13 = var(0) < 400
trigger13 = var(0) >= 300
trigger14 = time = 130
trigger14 = var(0) < 400
trigger14 = var(0) >= 300
trigger15 = time = 140
trigger15 = var(0) < 400
trigger15 = var(0) >= 300
trigger16 = time = 150
trigger16 = var(0) < 400
trigger16 = var(0) >= 300
trigger17 = time = 160
trigger17 = var(0) < 400
trigger17 = var(0) >= 300
trigger18 = time = 170
trigger18 = var(0) < 400
trigger18 = var(0) >= 300
StateNo = 3160
id = 3160
Name = "Lightning"
pos = -150,-120
ownpal = 1

[State 1000, 4]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 400
trigger1 = var(0) >= 300
trigger2 = time = 10
trigger2 = var(0) < 400
trigger2 = var(0) >= 300
trigger3 = time = 20
trigger3 = var(0) < 400
trigger3 = var(0) >= 300
trigger4 = time = 30
trigger4 = var(0) < 400
trigger4 = var(0) >= 300
trigger5 = time = 40
trigger5 = var(0) < 400
trigger5 = var(0) >= 300
trigger6 = time = 50
trigger6 = var(0) < 400
trigger6 = var(0) >= 300
trigger7 = time = 60
trigger7 = var(0) < 400
trigger7 = var(0) >= 300
trigger8 = time = 70
trigger8 = var(0) < 400
trigger8 = var(0) >= 300
trigger9 = time = 80
trigger9 = var(0) < 400
trigger9 = var(0) >= 300
trigger10 = time = 90
trigger10 = var(0) < 400
trigger10 = var(0) >= 300
trigger11 = time = 100
trigger11 = var(0) < 400
trigger11 = var(0) >= 300
trigger12 = time = 110
trigger12 = var(0) < 400
trigger12 = var(0) >= 300
trigger13 = time = 120
trigger13 = var(0) < 400
trigger13 = var(0) >= 300
trigger14 = time = 130
trigger14 = var(0) < 400
trigger14 = var(0) >= 300
trigger15 = time = 140
trigger15 = var(0) < 400
trigger15 = var(0) >= 300
trigger16 = time = 150
trigger16 = var(0) < 400
trigger16 = var(0) >= 300
trigger17 = time = 160
trigger17 = var(0) < 400
trigger17 = var(0) >= 300
trigger18 = time = 170
trigger18 = var(0) < 400
trigger18 = var(0) >= 300
StateNo = 3151
id = 3151
Name = "Lightning"
pos = -150,0
ownpal = 1

[State 1000, 5]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 400
trigger1 = var(0) >= 300
trigger2 = time = 10
trigger2 = var(0) < 400
trigger2 = var(0) >= 300
trigger3 = time = 20
trigger3 = var(0) < 400
trigger3 = var(0) >= 300
trigger4 = time = 30
trigger4 = var(0) < 400
trigger4 = var(0) >= 300
trigger5 = time = 40
trigger5 = var(0) < 400
trigger5 = var(0) >= 300
trigger6 = time = 50
trigger6 = var(0) < 400
trigger6 = var(0) >= 300
trigger7 = time = 60
trigger7 = var(0) < 400
trigger7 = var(0) >= 300
trigger8 = time = 70
trigger8 = var(0) < 400
trigger8 = var(0) >= 300
trigger9 = time = 80
trigger9 = var(0) < 400
trigger9 = var(0) >= 300
trigger10 = time = 90
trigger10 = var(0) < 400
trigger10 = var(0) >= 300
trigger11 = time = 100
trigger11 = var(0) < 400
trigger11 = var(0) >= 300
trigger12 = time = 110
trigger12 = var(0) < 400
trigger12 = var(0) >= 300
trigger13 = time = 120
trigger13 = var(0) < 400
trigger13 = var(0) >= 300
trigger14 = time = 130
trigger14 = var(0) < 400
trigger14 = var(0) >= 300
trigger15 = time = 140
trigger15 = var(0) < 400
trigger15 = var(0) >= 300
trigger16 = time = 150
trigger16 = var(0) < 400
trigger16 = var(0) >= 300
trigger17 = time = 160
trigger17 = var(0) < 400
trigger17 = var(0) >= 300
trigger18 = time = 170
trigger18 = var(0) < 400
trigger18 = var(0) >= 300
StateNo = 3157
id = 3157
Name = "Lightning"
pos = 0,-150
ownpal = 1

[State 1000, 5]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 400
trigger1 = var(0) >= 300
trigger2 = time = 10
trigger2 = var(0) < 400
trigger2 = var(0) >= 300
trigger3 = time = 20
trigger3 = var(0) < 400
trigger3 = var(0) >= 300
trigger4 = time = 30
trigger4 = var(0) < 400
trigger4 = var(0) >= 300
trigger5 = time = 40
trigger5 = var(0) < 400
trigger5 = var(0) >= 300
trigger6 = time = 50
trigger6 = var(0) < 400
trigger6 = var(0) >= 300
trigger7 = time = 60
trigger7 = var(0) < 400
trigger7 = var(0) >= 300
trigger8 = time = 70
trigger8 = var(0) < 400
trigger8 = var(0) >= 300
trigger9 = time = 80
trigger9 = var(0) < 400
trigger9 = var(0) >= 300
trigger10 = time = 90
trigger10 = var(0) < 400
trigger10 = var(0) >= 300
trigger11 = time = 100
trigger11 = var(0) < 400
trigger11 = var(0) >= 300
trigger12 = time = 110
trigger12 = var(0) < 400
trigger12 = var(0) >= 300
trigger13 = time = 120
trigger13 = var(0) < 400
trigger13 = var(0) >= 300
trigger14 = time = 130
trigger14 = var(0) < 400
trigger14 = var(0) >= 300
trigger15 = time = 140
trigger15 = var(0) < 400
trigger15 = var(0) >= 300
trigger16 = time = 150
trigger16 = var(0) < 400
trigger16 = var(0) >= 300
trigger17 = time = 160
trigger17 = var(0) < 400
trigger17 = var(0) >= 300
trigger18 = time = 170
trigger18 = var(0) < 400
trigger18 = var(0) >= 300
StateNo = 3156
id = 3156
Name = "Lightning"
pos = 70,0
ownpal = 1

[State 1000, 5]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 400
trigger1 = var(0) >= 300
trigger2 = time = 10
trigger2 = var(0) < 400
trigger2 = var(0) >= 300
trigger3 = time = 20
trigger3 = var(0) < 400
trigger3 = var(0) >= 300
trigger4 = time = 30
trigger4 = var(0) < 400
trigger4 = var(0) >= 300
trigger5 = time = 40
trigger5 = var(0) < 400
trigger5 = var(0) >= 300
trigger6 = time = 50
trigger6 = var(0) < 400
trigger6 = var(0) >= 300
trigger7 = time = 60
trigger7 = var(0) < 400
trigger7 = var(0) >= 300
trigger8 = time = 70
trigger8 = var(0) < 400
trigger8 = var(0) >= 300
trigger9 = time = 80
trigger9 = var(0) < 400
trigger9 = var(0) >= 300
trigger10 = time = 90
trigger10 = var(0) < 400
trigger10 = var(0) >= 300
trigger11 = time = 100
trigger11 = var(0) < 400
trigger11 = var(0) >= 300
trigger12 = time = 110
trigger12 = var(0) < 400
trigger12 = var(0) >= 300
trigger13 = time = 120
trigger13 = var(0) < 400
trigger13 = var(0) >= 300
trigger14 = time = 130
trigger14 = var(0) < 400
trigger14 = var(0) >= 300
trigger15 = time = 140
trigger15 = var(0) < 400
trigger15 = var(0) >= 300
trigger16 = time = 150
trigger16 = var(0) < 400
trigger16 = var(0) >= 300
trigger17 = time = 160
trigger17 = var(0) < 400
trigger17 = var(0) >= 300
trigger18 = time = 170
trigger18 = var(0) < 400
trigger18 = var(0) >= 300
StateNo = 3154
id = 3154
Name = "Lightning"
pos = 70,-120
ownpal = 1

[State 1000, 4]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 500
trigger1 = var(0) >= 400
trigger2 = time = 10
trigger2 = var(0) < 500
trigger2 = var(0) >= 400
trigger3 = time = 20
trigger3 = var(0) < 500
trigger3 = var(0) >= 400
trigger4 = time = 30
trigger4 = var(0) < 500
trigger4 = var(0) >= 400
trigger5 = time = 40
trigger5 = var(0) < 500
trigger5 = var(0) >= 400
trigger6 = time = 50
trigger6 = var(0) < 500
trigger6 = var(0) >= 400
trigger7 = time = 60
trigger7 = var(0) < 500
trigger7 = var(0) >= 400
trigger8 = time = 70
trigger8 = var(0) < 500
trigger8 = var(0) >= 400
trigger9 = time = 80
trigger9 = var(0) < 500
trigger9 = var(0) >= 400
trigger10 = time = 90
trigger10 = var(0) < 500
trigger10 = var(0) >= 400
trigger11 = time = 100
trigger11 = var(0) < 500
trigger11 = var(0) >= 400
trigger12 = time = 110
trigger12 = var(0) < 500
trigger12 = var(0) >= 400
trigger13 = time = 120
trigger13 = var(0) < 500
trigger13 = var(0) >= 400
trigger14 = time = 130
trigger14 = var(0) < 500
trigger14 = var(0) >= 400
trigger15 = time = 140
trigger15 = var(0) < 500
trigger15 = var(0) >= 400
trigger16 = time = 150
trigger16 = var(0) < 500
trigger16 = var(0) >= 400
trigger17 = time = 160
trigger17 = var(0) < 500
trigger17 = var(0) >= 400
trigger18 = time = 170
trigger18 = var(0) < 500
trigger18 = var(0) >= 400
StateNo = 3153
id = 3153
Name = "Lightning"
pos = 70,0
ownpal = 1

[State 1000, 6]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 500
trigger1 = var(0) >= 400
trigger2 = time = 10
trigger2 = var(0) < 500
trigger2 = var(0) >= 400
trigger3 = time = 20
trigger3 = var(0) < 500
trigger3 = var(0) >= 400
trigger4 = time = 30
trigger4 = var(0) < 500
trigger4 = var(0) >= 400
trigger5 = time = 40
trigger5 = var(0) < 500
trigger5 = var(0) >= 400
trigger6 = time = 50
trigger6 = var(0) < 500
trigger6 = var(0) >= 400
trigger7 = time = 60
trigger7 = var(0) < 500
trigger7 = var(0) >= 400
trigger8 = time = 70
trigger8 = var(0) < 500
trigger8 = var(0) >= 400
trigger9 = time = 80
trigger9 = var(0) < 500
trigger9 = var(0) >= 400
trigger10 = time = 90
trigger10 = var(0) < 500
trigger10 = var(0) >= 400
trigger11 = time = 100
trigger11 = var(0) < 500
trigger11 = var(0) >= 400
trigger12 = time = 110
trigger12 = var(0) < 500
trigger12 = var(0) >= 400
trigger13 = time = 120
trigger13 = var(0) < 500
trigger13 = var(0) >= 400
trigger14 = time = 130
trigger14 = var(0) < 500
trigger14 = var(0) >= 400
trigger15 = time = 140
trigger15 = var(0) < 500
trigger15 = var(0) >= 400
trigger16 = time = 150
trigger16 = var(0) < 500
trigger16 = var(0) >= 400
trigger17 = time = 160
trigger17 = var(0) < 500
trigger17 = var(0) >= 400
trigger18 = time = 170
trigger18 = var(0) < 500
trigger18 = var(0) >= 400
StateNo = 3155
id = 3155
Name = "Lightning"
pos = 70,-120
ownpal = 1

[State 1000, 6]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 500
trigger1 = var(0) >= 400
trigger2 = time = 10
trigger2 = var(0) < 500
trigger2 = var(0) >= 400
trigger3 = time = 20
trigger3 = var(0) < 500
trigger3 = var(0) >= 400
trigger4 = time = 30
trigger4 = var(0) < 500
trigger4 = var(0) >= 400
trigger5 = time = 40
trigger5 = var(0) < 500
trigger5 = var(0) >= 400
trigger6 = time = 50
trigger6 = var(0) < 500
trigger6 = var(0) >= 400
trigger7 = time = 60
trigger7 = var(0) < 500
trigger7 = var(0) >= 400
trigger8 = time = 70
trigger8 = var(0) < 500
trigger8 = var(0) >= 400
trigger9 = time = 80
trigger9 = var(0) < 500
trigger9 = var(0) >= 400
trigger10 = time = 90
trigger10 = var(0) < 500
trigger10 = var(0) >= 400
trigger11 = time = 100
trigger11 = var(0) < 500
trigger11 = var(0) >= 400
trigger12 = time = 110
trigger12 = var(0) < 500
trigger12 = var(0) >= 400
trigger13 = time = 120
trigger13 = var(0) < 500
trigger13 = var(0) >= 400
trigger14 = time = 130
trigger14 = var(0) < 500
trigger14 = var(0) >= 400
trigger15 = time = 140
trigger15 = var(0) < 500
trigger15 = var(0) >= 400
trigger16 = time = 150
trigger16 = var(0) < 500
trigger16 = var(0) >= 400
trigger17 = time = 160
trigger17 = var(0) < 500
trigger17 = var(0) >= 400
trigger18 = time = 170
trigger18 = var(0) < 500
trigger18 = var(0) >= 400
StateNo = 3156
id = 3156
Name = "Lightning"
pos = 150,0
ownpal = 1

[State 1000, 6]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 500
trigger1 = var(0) >= 400
trigger2 = time = 10
trigger2 = var(0) < 500
trigger2 = var(0) >= 400
trigger3 = time = 20
trigger3 = var(0) < 500
trigger3 = var(0) >= 400
trigger4 = time = 30
trigger4 = var(0) < 500
trigger4 = var(0) >= 400
trigger5 = time = 40
trigger5 = var(0) < 500
trigger5 = var(0) >= 400
trigger6 = time = 50
trigger6 = var(0) < 500
trigger6 = var(0) >= 400
trigger7 = time = 60
trigger7 = var(0) < 500
trigger7 = var(0) >= 400
trigger8 = time = 70
trigger8 = var(0) < 500
trigger8 = var(0) >= 400
trigger9 = time = 80
trigger9 = var(0) < 500
trigger9 = var(0) >= 400
trigger10 = time = 90
trigger10 = var(0) < 500
trigger10 = var(0) >= 400
trigger11 = time = 100
trigger11 = var(0) < 500
trigger11 = var(0) >= 400
trigger12 = time = 110
trigger12 = var(0) < 500
trigger12 = var(0) >= 400
trigger13 = time = 120
trigger13 = var(0) < 500
trigger13 = var(0) >= 400
trigger14 = time = 130
trigger14 = var(0) < 500
trigger14 = var(0) >= 400
trigger15 = time = 140
trigger15 = var(0) < 500
trigger15 = var(0) >= 400
trigger16 = time = 150
trigger16 = var(0) < 500
trigger16 = var(0) >= 400
trigger17 = time = 160
trigger17 = var(0) < 500
trigger17 = var(0) >= 400
trigger18 = time = 170
trigger18 = var(0) < 500
trigger18 = var(0) >= 400
StateNo = 3159
id = 3159
Name = "Lightning"
pos = 150,-120
ownpal = 1


[State 1000, 6]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 500
trigger1 = var(0) >= 400
trigger2 = time = 10
trigger2 = var(0) < 500
trigger2 = var(0) >= 400
trigger3 = time = 20
trigger3 = var(0) < 500
trigger3 = var(0) >= 400
trigger4 = time = 30
trigger4 = var(0) < 500
trigger4 = var(0) >= 400
trigger5 = time = 40
trigger5 = var(0) < 500
trigger5 = var(0) >= 400
trigger6 = time = 50
trigger6 = var(0) < 500
trigger6 = var(0) >= 400
trigger7 = time = 60
trigger7 = var(0) < 500
trigger7 = var(0) >= 400
trigger8 = time = 70
trigger8 = var(0) < 500
trigger8 = var(0) >= 400
trigger9 = time = 80
trigger9 = var(0) < 500
trigger9 = var(0) >= 400
trigger10 = time = 90
trigger10 = var(0) < 500
trigger10 = var(0) >= 400
trigger11 = time = 100
trigger11 = var(0) < 500
trigger11 = var(0) >= 400
trigger12 = time = 110
trigger12 = var(0) < 500
trigger12 = var(0) >= 400
trigger13 = time = 120
trigger13 = var(0) < 500
trigger13 = var(0) >= 400
trigger14 = time = 130
trigger14 = var(0) < 500
trigger14 = var(0) >= 400
trigger15 = time = 140
trigger15 = var(0) < 500
trigger15 = var(0) >= 400
trigger16 = time = 150
trigger16 = var(0) < 500
trigger16 = var(0) >= 400
trigger17 = time = 160
trigger17 = var(0) < 500
trigger17 = var(0) >= 400
trigger18 = time = 170
trigger18 = var(0) < 500
trigger18 = var(0) >= 400
StateNo = 3150
id = 3150
Name = "Lightning"
pos = 0,-150
ownpal = 1

[State 1000, 6]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 500
trigger1 = var(0) >= 400
trigger2 = time = 10
trigger2 = var(0) < 500
trigger2 = var(0) >= 400
trigger3 = time = 20
trigger3 = var(0) < 500
trigger3 = var(0) >= 400
trigger4 = time = 30
trigger4 = var(0) < 500
trigger4 = var(0) >= 400
trigger5 = time = 40
trigger5 = var(0) < 500
trigger5 = var(0) >= 400
trigger6 = time = 50
trigger6 = var(0) < 500
trigger6 = var(0) >= 400
trigger7 = time = 60
trigger7 = var(0) < 500
trigger7 = var(0) >= 400
trigger8 = time = 70
trigger8 = var(0) < 500
trigger8 = var(0) >= 400
trigger9 = time = 80
trigger9 = var(0) < 500
trigger9 = var(0) >= 400
trigger10 = time = 90
trigger10 = var(0) < 500
trigger10 = var(0) >= 400
trigger11 = time = 100
trigger11 = var(0) < 500
trigger11 = var(0) >= 400
trigger12 = time = 110
trigger12 = var(0) < 500
trigger12 = var(0) >= 400
trigger13 = time = 120
trigger13 = var(0) < 500
trigger13 = var(0) >= 400
trigger14 = time = 130
trigger14 = var(0) < 500
trigger14 = var(0) >= 400
trigger15 = time = 140
trigger15 = var(0) < 500
trigger15 = var(0) >= 400
trigger16 = time = 150
trigger16 = var(0) < 500
trigger16 = var(0) >= 400
trigger17 = time = 160
trigger17 = var(0) < 500
trigger17 = var(0) >= 400
trigger18 = time = 170
trigger18 = var(0) < 500
trigger18 = var(0) >= 400
StateNo = 3158
id = 3158
Name = "Lightning"
pos = -150,-120
ownpal = 1

[State 1000, 6]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 500
trigger1 = var(0) >= 400
trigger2 = time = 10
trigger2 = var(0) < 500
trigger2 = var(0) >= 400
trigger3 = time = 20
trigger3 = var(0) < 500
trigger3 = var(0) >= 400
trigger4 = time = 30
trigger4 = var(0) < 500
trigger4 = var(0) >= 400
trigger5 = time = 40
trigger5 = var(0) < 500
trigger5 = var(0) >= 400
trigger6 = time = 50
trigger6 = var(0) < 500
trigger6 = var(0) >= 400
trigger7 = time = 60
trigger7 = var(0) < 500
trigger7 = var(0) >= 400
trigger8 = time = 70
trigger8 = var(0) < 500
trigger8 = var(0) >= 400
trigger9 = time = 80
trigger9 = var(0) < 500
trigger9 = var(0) >= 400
trigger10 = time = 90
trigger10 = var(0) < 500
trigger10 = var(0) >= 400
trigger11 = time = 100
trigger11 = var(0) < 500
trigger11 = var(0) >= 400
trigger12 = time = 110
trigger12 = var(0) < 500
trigger12 = var(0) >= 400
trigger13 = time = 120
trigger13 = var(0) < 500
trigger13 = var(0) >= 400
trigger14 = time = 130
trigger14 = var(0) < 500
trigger14 = var(0) >= 400
trigger15 = time = 140
trigger15 = var(0) < 500
trigger15 = var(0) >= 400
trigger16 = time = 150
trigger16 = var(0) < 500
trigger16 = var(0) >= 400
trigger17 = time = 160
trigger17 = var(0) < 500
trigger17 = var(0) >= 400
trigger18 = time = 170
trigger18 = var(0) < 500
trigger18 = var(0) >= 400
StateNo = 3157
id = 3157
Name = "Lightning"
pos = -150,0
ownpal = 1


[State 1000, 6]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 500
trigger1 = var(0) >= 400
trigger2 = time = 10
trigger2 = var(0) < 500
trigger2 = var(0) >= 400
trigger3 = time = 20
trigger3 = var(0) < 500
trigger3 = var(0) >= 400
trigger4 = time = 30
trigger4 = var(0) < 500
trigger4 = var(0) >= 400
trigger5 = time = 40
trigger5 = var(0) < 500
trigger5 = var(0) >= 400
trigger6 = time = 50
trigger6 = var(0) < 500
trigger6 = var(0) >= 400
trigger7 = time = 60
trigger7 = var(0) < 500
trigger7 = var(0) >= 400
trigger8 = time = 70
trigger8 = var(0) < 500
trigger8 = var(0) >= 400
trigger9 = time = 80
trigger9 = var(0) < 500
trigger9 = var(0) >= 400
trigger10 = time = 90
trigger10 = var(0) < 500
trigger10 = var(0) >= 400
trigger11 = time = 100
trigger11 = var(0) < 500
trigger11 = var(0) >= 400
trigger12 = time = 110
trigger12 = var(0) < 500
trigger12 = var(0) >= 400
trigger13 = time = 120
trigger13 = var(0) < 500
trigger13 = var(0) >= 400
trigger14 = time = 130
trigger14 = var(0) < 500
trigger14 = var(0) >= 400
trigger15 = time = 140
trigger15 = var(0) < 500
trigger15 = var(0) >= 400
trigger16 = time = 150
trigger16 = var(0) < 500
trigger16 = var(0) >= 400
trigger17 = time = 160
trigger17 = var(0) < 500
trigger17 = var(0) >= 400
trigger18 = time = 170
trigger18 = var(0) < 500
trigger18 = var(0) >= 400
StateNo = 3150
id = 3150
Name = "Lightning"
pos = -70,0
ownpal = 1

[State 1000, 6]
type = Helper
triggerall = time >= 0
trigger1 = time = 0
trigger1 = var(0) < 600
trigger1 = var(0) >= 500
trigger2 = time = 10
trigger2 = var(0) < 600
trigger2 = var(0) >= 500
trigger3 = time = 20
trigger3 = var(0) < 600
trigger3 = var(0) >= 500
trigger4 = time = 30
trigger4 = var(0) < 600
trigger4 = var(0) >= 500
trigger5 = time = 40
trigger5 = var(0) < 600
trigger5 = var(0) >= 500
trigger6 = time = 50
trigger6 = var(0) < 600
trigger6 = var(0) >= 500
trigger7 = time = 60
trigger7 = var(0) < 600
trigger7 = var(0) >= 500
trigger8 = time = 70
trigger8 = var(0) < 600
trigger8 = var(0) >= 500
trigger9 = time = 80
trigger9 = var(0) < 600
trigger9 = var(0) >= 500
trigger10 = time = 90
trigger10 = var(0) < 600
trigger10 = var(0) >= 500
trigger11 = time = 100
trigger11 = var(0) < 600
trigger11 = var(0) >= 500
trigger12 = time = 110
trigger12 = var(0) < 600
trigger12 = var(0) >= 500
trigger13 = time = 120
trigger13 = var(0) < 600
trigger13 = var(0) >= 500
trigger14 = time = 130
trigger14 = var(0) < 600
trigger14 = var(0) >= 500
trigger15 = time = 140
trigger15 = var(0) < 600
trigger15 = var(0) >= 500
trigger16 = time = 150
trigger16 = var(0) < 600
trigger16 = var(0) >= 500
trigger17 = time = 160
trigger17 = var(0) < 600
trigger17 = var(0) >= 500
trigger18 = time = 170
trigger18 = var(0) < 600
trigger18 = var(0) >= 500
StateNo = 3155
id = 3155
Name = "Lightning"
pos = -70,0
ownpal = 1

[State 1000, 7]
type = Helper
triggerall = time >= 0
trigger1 = time = 0
trigger1 = var(0) < 600
trigger1 = var(0) >= 500
trigger2 = time = 10
trigger2 = var(0) < 600
trigger2 = var(0) >= 500
trigger3 = time = 20
trigger3 = var(0) < 600
trigger3 = var(0) >= 500
trigger4 = time = 30
trigger4 = var(0) < 600
trigger4 = var(0) >= 500
trigger5 = time = 40
trigger5 = var(0) < 600
trigger5 = var(0) >= 500
trigger6 = time = 50
trigger6 = var(0) < 600
trigger6 = var(0) >= 500
trigger7 = time = 60
trigger7 = var(0) < 600
trigger7 = var(0) >= 500
trigger8 = time = 70
trigger8 = var(0) < 600
trigger8 = var(0) >= 500
trigger9 = time = 80
trigger9 = var(0) < 600
trigger9 = var(0) >= 500
trigger10 = time = 90
trigger10 = var(0) < 600
trigger10 = var(0) >= 500
trigger11 = time = 100
trigger11 = var(0) < 600
trigger11 = var(0) >= 500
trigger12 = time = 110
trigger12 = var(0) < 600
trigger12 = var(0) >= 500
trigger13 = time = 120
trigger13 = var(0) < 600
trigger13 = var(0) >= 500
trigger14 = time = 130
trigger14 = var(0) < 600
trigger14 = var(0) >= 500
trigger15 = time = 140
trigger15 = var(0) < 600
trigger15 = var(0) >= 500
trigger16 = time = 150
trigger16 = var(0) < 600
trigger16 = var(0) >= 500
trigger17 = time = 160
trigger17 = var(0) < 600
trigger17 = var(0) >= 500
trigger18 = time = 170
trigger18 = var(0) < 600
trigger18 = var(0) >= 500
StateNo = 3156
id = 3156
Name = "Lightning"
pos = 70,0
ownpal = 1

[State 1000, 8]
type = Helper
triggerall = time >= 0
trigger1 = time = 0
trigger1 = var(0) < 600
trigger1 = var(0) >= 500
trigger2 = time = 10
trigger2 = var(0) < 600
trigger2 = var(0) >= 500
trigger3 = time = 20
trigger3 = var(0) < 600
trigger3 = var(0) >= 500
trigger4 = time = 30
trigger4 = var(0) < 600
trigger4 = var(0) >= 500
trigger5 = time = 40
trigger5 = var(0) < 600
trigger5 = var(0) >= 500
trigger6 = time = 50
trigger6 = var(0) < 600
trigger6 = var(0) >= 500
trigger7 = time = 60
trigger7 = var(0) < 600
trigger7 = var(0) >= 500
trigger8 = time = 70
trigger8 = var(0) < 600
trigger8 = var(0) >= 500
trigger9 = time = 80
trigger9 = var(0) < 600
trigger9 = var(0) >= 500
trigger10 = time = 90
trigger10 = var(0) < 600
trigger10 = var(0) >= 500
trigger11 = time = 100
trigger11 = var(0) < 600
trigger11 = var(0) >= 500
trigger12 = time = 110
trigger12 = var(0) < 600
trigger12 = var(0) >= 500
trigger13 = time = 120
trigger13 = var(0) < 600
trigger13 = var(0) >= 500
trigger14 = time = 130
trigger14 = var(0) < 600
trigger14 = var(0) >= 500
trigger15 = time = 140
trigger15 = var(0) < 600
trigger15 = var(0) >= 500
trigger16 = time = 150
trigger16 = var(0) < 600
trigger16 = var(0) >= 500
trigger17 = time = 160
trigger17 = var(0) < 600
trigger17 = var(0) >= 500
trigger18 = time = 170
trigger18 = var(0) < 600
trigger18 = var(0) >= 500
StateNo = 3151
id = 3151
Name = "Lightning"
pos = -70,-120
ownpal = 1

[State 1000, 8]
type = Helper
triggerall = time >= 0
trigger1 = time = 0
trigger1 = var(0) < 600
trigger1 = var(0) >= 500
trigger2 = time = 10
trigger2 = var(0) < 600
trigger2 = var(0) >= 500
trigger3 = time = 20
trigger3 = var(0) < 600
trigger3 = var(0) >= 500
trigger4 = time = 30
trigger4 = var(0) < 600
trigger4 = var(0) >= 500
trigger5 = time = 40
trigger5 = var(0) < 600
trigger5 = var(0) >= 500
trigger6 = time = 50
trigger6 = var(0) < 600
trigger6 = var(0) >= 500
trigger7 = time = 60
trigger7 = var(0) < 600
trigger7 = var(0) >= 500
trigger8 = time = 70
trigger8 = var(0) < 600
trigger8 = var(0) >= 500
trigger9 = time = 80
trigger9 = var(0) < 600
trigger9 = var(0) >= 500
trigger10 = time = 90
trigger10 = var(0) < 600
trigger10 = var(0) >= 500
trigger11 = time = 100
trigger11 = var(0) < 600
trigger11 = var(0) >= 500
trigger12 = time = 110
trigger12 = var(0) < 600
trigger12 = var(0) >= 500
trigger13 = time = 120
trigger13 = var(0) < 600
trigger13 = var(0) >= 500
trigger14 = time = 130
trigger14 = var(0) < 600
trigger14 = var(0) >= 500
trigger15 = time = 140
trigger15 = var(0) < 600
trigger15 = var(0) >= 500
trigger16 = time = 150
trigger16 = var(0) < 600
trigger16 = var(0) >= 500
trigger17 = time = 160
trigger17 = var(0) < 600
trigger17 = var(0) >= 500
trigger18 = time = 170
trigger18 = var(0) < 600
trigger18 = var(0) >= 500
StateNo = 3157
id = 3157
Name = "Lightning"
pos = 70,-120
ownpal = 1

[State 1000, 8]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 700
trigger1 = var(0) >= 600
trigger2 = time = 10
trigger2 = var(0) < 700
trigger2 = var(0) >= 600
trigger3 = time = 20
trigger3 = var(0) < 700
trigger3 = var(0) >= 600
trigger4 = time = 30
trigger4 = var(0) < 700
trigger4 = var(0) >= 600
trigger5 = time = 40
trigger5 = var(0) < 700
trigger5 = var(0) >= 600
trigger6 = time = 50
trigger6 = var(0) < 700
trigger6 = var(0) >= 600
trigger7 = time = 60
trigger7 = var(0) < 700
trigger7 = var(0) >= 600
trigger8 = time = 70
trigger8 = var(0) < 700
trigger8 = var(0) >= 600
trigger9 = time = 80
trigger9 = var(0) < 700
trigger9 = var(0) >= 600
trigger10 = time = 90
trigger10 = var(0) < 700
trigger10 = var(0) >= 600
trigger11 = time = 100
trigger11 = var(0) < 700
trigger11 = var(0) >= 600
trigger12 = time = 110
trigger12 = var(0) < 700
trigger12 = var(0) >= 600
trigger13 = time = 120
trigger13 = var(0) < 700
trigger13 = var(0) >= 600
trigger14 = time = 130
trigger14 = var(0) < 700
trigger14 = var(0) >= 600
trigger15 = time = 140
trigger15 = var(0) < 700
trigger15 = var(0) >= 600
trigger16 = time = 150
trigger16 = var(0) < 700
trigger16 = var(0) >= 600
trigger17 = time = 160
trigger17 = var(0) < 700
trigger17 = var(0) >= 600
trigger18 = time = 170
trigger18 = var(0) < 700
trigger18 = var(0) >= 600
StateNo = 3154
id = 3154
Name = "Lightning"
pos = -70,-120
ownpal = 1

[State 1000, 8]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 700
trigger1 = var(0) >= 600
trigger2 = time = 10
trigger2 = var(0) < 700
trigger2 = var(0) >= 600
trigger3 = time = 20
trigger3 = var(0) < 700
trigger3 = var(0) >= 600
trigger4 = time = 30
trigger4 = var(0) < 700
trigger4 = var(0) >= 600
trigger5 = time = 40
trigger5 = var(0) < 700
trigger5 = var(0) >= 600
trigger6 = time = 50
trigger6 = var(0) < 700
trigger6 = var(0) >= 600
trigger7 = time = 60
trigger7 = var(0) < 700
trigger7 = var(0) >= 600
trigger8 = time = 70
trigger8 = var(0) < 700
trigger8 = var(0) >= 600
trigger9 = time = 80
trigger9 = var(0) < 700
trigger9 = var(0) >= 600
trigger10 = time = 90
trigger10 = var(0) < 700
trigger10 = var(0) >= 600
trigger11 = time = 100
trigger11 = var(0) < 700
trigger11 = var(0) >= 600
trigger12 = time = 110
trigger12 = var(0) < 700
trigger12 = var(0) >= 600
trigger13 = time = 120
trigger13 = var(0) < 700
trigger13 = var(0) >= 600
trigger14 = time = 130
trigger14 = var(0) < 700
trigger14 = var(0) >= 600
trigger15 = time = 140
trigger15 = var(0) < 700
trigger15 = var(0) >= 600
trigger16 = time = 150
trigger16 = var(0) < 700
trigger16 = var(0) >= 600
trigger17 = time = 160
trigger17 = var(0) < 700
trigger17 = var(0) >= 600
trigger18 = time = 170
trigger18 = var(0) < 700
trigger18 = var(0) >= 600
StateNo = 3155
id = 3154
Name = "Lightning"
pos = -90,0
ownpal = 1

[State 1000, 8]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 700
trigger1 = var(0) >= 600
trigger2 = time = 10
trigger2 = var(0) < 700
trigger2 = var(0) >= 600
trigger3 = time = 20
trigger3 = var(0) < 700
trigger3 = var(0) >= 600
trigger4 = time = 30
trigger4 = var(0) < 700
trigger4 = var(0) >= 600
trigger5 = time = 40
trigger5 = var(0) < 700
trigger5 = var(0) >= 600
trigger6 = time = 50
trigger6 = var(0) < 700
trigger6 = var(0) >= 600
trigger7 = time = 60
trigger7 = var(0) < 700
trigger7 = var(0) >= 600
trigger8 = time = 70
trigger8 = var(0) < 700
trigger8 = var(0) >= 600
trigger9 = time = 80
trigger9 = var(0) < 700
trigger9 = var(0) >= 600
trigger10 = time = 90
trigger10 = var(0) < 700
trigger10 = var(0) >= 600
trigger11 = time = 100
trigger11 = var(0) < 700
trigger11 = var(0) >= 600
trigger12 = time = 110
trigger12 = var(0) < 700
trigger12 = var(0) >= 600
trigger13 = time = 120
trigger13 = var(0) < 700
trigger13 = var(0) >= 600
trigger14 = time = 130
trigger14 = var(0) < 700
trigger14 = var(0) >= 600
trigger15 = time = 140
trigger15 = var(0) < 700
trigger15 = var(0) >= 600
trigger16 = time = 150
trigger16 = var(0) < 700
trigger16 = var(0) >= 600
trigger17 = time = 160
trigger17 = var(0) < 700
trigger17 = var(0) >= 600
trigger18 = time = 170
trigger18 = var(0) < 700
trigger18 = var(0) >= 600
StateNo = 3157
id = 3157
Name = "Lightning"
pos = 70,-120
ownpal = 1

[State 1000, 1]
type = Helper
triggerall = Time >= 0
trigger1 = time = 0
trigger1 = var(0) < 700
trigger1 = var(0) >= 600
trigger2 = time = 10
trigger2 = var(0) < 700
trigger2 = var(0) >= 600
trigger3 = time = 20
trigger3 = var(0) < 700
trigger3 = var(0) >= 600
trigger4 = time = 30
trigger4 = var(0) < 700
trigger4 = var(0) >= 600
trigger5 = time = 40
trigger5 = var(0) < 700
trigger5 = var(0) >= 600
trigger6 = time = 50
trigger6 = var(0) < 700
trigger6 = var(0) >= 600
trigger7 = time = 60
trigger7 = var(0) < 700
trigger7 = var(0) >= 600
trigger8 = time = 70
trigger8 = var(0) < 700
trigger8 = var(0) >= 600
trigger9 = time = 80
trigger9 = var(0) < 700
trigger9 = var(0) >= 600
trigger10 = time = 90
trigger10 = var(0) < 700
trigger10 = var(0) >= 600
trigger11 = time = 100
trigger11 = var(0) < 700
trigger11 = var(0) >= 600
trigger12 = time = 110
trigger12 = var(0) < 700
trigger12 = var(0) >= 600
trigger13 = time = 120
trigger13 = var(0) < 700
trigger13 = var(0) >= 600
trigger14 = time = 130
trigger14 = var(0) < 700
trigger14 = var(0) >= 600
trigger15 = time = 140
trigger15 = var(0) < 700
trigger15 = var(0) >= 600
trigger16 = time = 150
trigger16 = var(0) < 700
trigger16 = var(0) >= 600
trigger17 = time = 160
trigger17 = var(0) < 700
trigger17 = var(0) >= 600
trigger18 = time = 170
trigger18 = var(0) < 700
trigger18 = var(0) >= 600
Stateno = 3150
id = 3150
Name = "Lightning"
pos = 0,-150
ownpal = 1


[State 3100, 9]
type = ChangeState
trigger1 = Time = 150
value = 3103
ctrl = 0

; Lightning(Helper)
[Statedef 3150]
type = A
movetype = A  
physics = N
velset = 0, 0
ctrl = 0 
anim = 3150
sprpriority = 1

[State 1001, 1]
type = hitdef
trigger1 = Time = 0
attr = A,SA
damage = 14,2
animtype = Hard
pausetime = 0,2
guardflag = MA
hitflag = MAFD
;sparkxy = 0,0
hitsound = S5,6
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -.5, -3
air.velocity = -.3,-3
persistent = 1
fall = 1
palfx.time = 80
palfx.mul = 100, 200, 200
palfx.add = 15, 10, 245
palfx.sinadd = 60,70,0,10

[State 1000, Explod]
type = Explod
trigger1 = Movehit = 1
anim = 3500
postype = p2
pos = 10, -4
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 1

[State 1001, 3]
type = Destroyself
trigger1 = Time = 9
ignorehitpause = 1

; Lightning(Helper)
[Statedef 3151]
type = A
movetype = A  
physics = N
velset = 0, 0
ctrl = 0 
anim = 3151
sprpriority = 1

[State 1001, 1]
type = hitdef
trigger1 = Time = 0
attr = A,SA
damage = 14,2
animtype = Hard
pausetime = 0,2
guardflag = MA
hitflag = MAFD
;sparkxy = 0,0
hitsound = S5,6
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -.5, -3
air.velocity = -.3,-3
persistent = 1
fall = 1
palfx.time = 80
palfx.mul = 100, 200, 200
palfx.add = 225, 140, 245
palfx.sinadd = 60,70,0,10

[State 1000, Explod]
type = Explod
trigger1 = Movehit = 1
anim = 3500
postype = p2
pos = 5, -80
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 1

[State 1001, 3]
type = Destroyself
trigger1 = Time = 9
ignorehitpause = 1

; Lightning(Helper)
[Statedef 3152]
type = A
movetype = A  
physics = N
velset = 0, 0
ctrl = 0 
anim = 3152
sprpriority = 1

[State 1001, 1]
type = hitdef
trigger1 = Time = 0
attr = A,SA
damage = 14,2
animtype = Hard
pausetime = 0,2
guardflag = MA
hitflag = MAFD
;sparkxy = 0,0
hitsound = S5,6
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -.5, -3
air.velocity = -.3,-3
persistent = 1
fall = 1
palfx.time = 80
palfx.mul = 100, 200, 200
palfx.add = 225, 140, 245
palfx.sinadd = 60,70,0,10

[State 1000, Explod]
type = Explod
trigger1 = Movehit = 1
anim = 3500
postype = p2
pos = -15, -10
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 1

[State 1001, 3]
type = Destroyself
trigger1 = Time = 9
ignorehitpause = 1

; Lightning(Helper)
[Statedef 3153]
type = A
movetype = A  
physics = N
velset = 0, 0
ctrl = 0 
anim = 3153
sprpriority = 1

[State 1001, 1]
type = hitdef
trigger1 = Time = 0
attr = A,SA
damage = 14,2
animtype = Hard
pausetime = 0,2
guardflag = MA
hitflag = MAFD
;sparkxy = 0,0
hitsound = S5,6
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -.5, -3
air.velocity = -.3,-3
persistent = 1
fall = 1
palfx.time = 80
palfx.mul = 100, 200, 200
palfx.add = 225, 140, 245
palfx.sinadd = 60,70,0,10

[State 1000, Explod]
type = Explod
trigger1 = Movehit = 1
anim = 3500
postype = p2
pos = -45, -45
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 1


[State 1001, 3]
type = Destroyself
trigger1 = Time = 9
ignorehitpause = 1

; Lightning(Helper)
[Statedef 3154]
type = A
movetype = A  
physics = N
velset = 0, 0
ctrl = 0 
anim = 3154
sprpriority = 1

[State 1001, 1]
type = hitdef
trigger1 = Time = 0
attr = A,SA
damage = 14,2
animtype = Hard
pausetime = 0,2
guardflag = MA
hitflag = MAFD
;sparkxy = 0,0
hitsound = S5,6
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -.5, -3
air.velocity = -.3,-3
persistent = 1
fall = 1
palfx.time = 80
palfx.mul = 100, 200, 200
palfx.add = 225, 140, 245
palfx.sinadd = 60,70,0,10

[State 1000, Explod]
type = Explod
trigger1 = Movehit = 1
anim = 3500
postype = p2
pos = 0, 0
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 1

[State 1001, 3]
type = Destroyself
trigger1 = Time = 9
ignorehitpause = 1

; Lightning(Helper)
[Statedef 3155]
type = A
movetype = A  
physics = N
velset = 0, 0
ctrl = 0 
anim = 3155
sprpriority = 1

[State 1001, 1]
type = hitdef
trigger1 = Time = 0
attr = A,SA
damage = 14,2
animtype = Hard
pausetime = 0,2
guardflag = MA
hitflag = MAFD
;sparkxy = 0,0
hitsound = S5,6
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -.5, -3
air.velocity = -.3,-3
persistent = 1
fall = 1
palfx.time = 80
palfx.mul = 100, 200, 200
palfx.add = 225, 140, 245
palfx.sinadd = 60,70,0,10

[State 1000, Explod]
type = Explod
trigger1 = Movehit = 1
anim = 3500
postype = p2
pos = -30, -40
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 1

[State 1001, 3]
type = Destroyself
trigger1 = Time = 9
ignorehitpause = 1

; Lightning(Helper)
[Statedef 3156]
type = A
movetype = A  
physics = N
velset = 0, 0
ctrl = 0 
anim = 3156
sprpriority = 1

[State 1001, 1]
type = hitdef
trigger1 = Time = 0
attr = A,SA
damage = 14,2
animtype = Hard
pausetime = 0,2
guardflag = MA
hitflag = MAFD
;sparkxy = 0,0
hitsound = S5,6
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -.5, -3
air.velocity = -.3,-3
persistent = 1
fall = 1
palfx.time = 80
palfx.mul = 100, 200, 200
palfx.add = 225, 140, 245
palfx.sinadd = 60,70,0,10

[State 1000, Explod]
type = Explod
trigger1 = Movehit = 1
anim = 3500
postype = p2
pos = -35, -65
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 1

[State 1001, 3]
type = Destroyself
trigger1 = Time = 9
ignorehitpause = 1

; Lightning(Helper)
[Statedef 3157]
type = A
movetype = A  
physics = N
velset = 0, 0
ctrl = 0 
anim = 3157
sprpriority = 1

[State 1001, 1]
type = hitdef
trigger1 = Time = 0
attr = A,SA
damage = 14,2
animtype = Hard
pausetime = 0,2
guardflag = MA
hitflag = MAFD
;sparkxy = 0,0
hitsound = S5,6
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -.5, -3
air.velocity = -.3,-3
persistent = 1
fall = 1
palfx.time = 80
palfx.mul = 100, 200, 200
palfx.add = 225, 140, 245
palfx.sinadd = 60,70,0,10

[State 1000, Explod]
type = Explod
trigger1 = Movehit = 1
anim = 3500
postype = p2
pos = -5, -70
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 1

[State 1001, 3]
type = Destroyself
trigger1 = Time = 9
ignorehitpause = 1

; Lightning(Helper)
[Statedef 3158]
type = A
movetype = A  
physics = N
velset = 0, 0
ctrl = 0 
anim = 3158
sprpriority = 1

[State 1001, 1]
type = hitdef
trigger1 = Time = 0
attr = A,SA
damage = 14,2
animtype = Hard
pausetime = 0,2
guardflag = MA
hitflag = MAFD
;sparkxy = 0,0
hitsound = S5,6
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -.5, -3
air.velocity = -.3,-3
persistent = 1
fall = 1
palfx.time = 80
palfx.mul = 100, 200, 200
palfx.add = 225, 140, 245
palfx.sinadd = 60,70,0,10

[State 1000, Explod]
type = Explod
trigger1 = Movehit = 1
anim = 3500
postype = p2
pos = -32, -35
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 1


[State 1001, 3]
type = Destroyself
trigger1 = Time = 9
ignorehitpause = 1

; Lightning(Helper)
[Statedef 3159]
type = A
movetype = A  
physics = N
velset = 0, 0
ctrl = 0 
anim = 3159
sprpriority = 1

[State 1001, 1]
type = hitdef
trigger1 = Time = 0
attr = A,SA
damage = 14,2
animtype = Hard
pausetime = 0,2
guardflag = MA
hitflag = MAFD
;sparkxy = 0,0
hitsound = S5,6
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -.5, -3
air.velocity = -.3,-3
persistent = 1
fall = 1
palfx.time = 80
palfx.mul = 100, 200, 200
palfx.add = 225, 140, 245
palfx.sinadd = 60,70,0,10

[State 1000, Explod]
type = Explod
trigger1 = Movehit = 1
anim = 3500
postype = p2
pos = -55, -55
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 1

[State 1001, 3]
type = Destroyself
trigger1 = Time = 9
ignorehitpause = 1

; Lightning(Helper)
[Statedef 3160]
type = A
movetype = A  
physics = N
velset = 0, 0
ctrl = 0 
anim = 3160
sprpriority = 1

[State 1001, 1]
type = hitdef
trigger1 = Time = 0
attr = A,SA
damage = 14,2
animtype = Hard
pausetime = 0,2
guardflag = MA
hitflag = MAFD
;sparkxy = 0,0
hitsound = S5,6
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -.5, -3
air.velocity = -.3,-3
persistent = 1
fall = 1
palfx.time = 80
palfx.mul = 100, 200, 200
palfx.add = 225, 140, 245
palfx.sinadd = 60,70,0,10

[State 1000, Explod]
type = Explod
trigger1 = Movehit = 1
anim = 3500
postype = p2
pos = -85, -5
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 1

[State 1001, 3]
type = Destroyself
trigger1 = Time = 9
ignorehitpause = 1

; Lightning(Helper)
[Statedef 3102]
type = A
movetype = A  
physics = N
velset = 0, 0
ctrl = 0 
anim = 3102
sprpriority = 1

[State 1001, 1]
type = hitdef
trigger1 = Time 
attr = A,SA
damage = 0,0
animtype = Hard
pausetime = 2,0
guardflag = MA
;sparkxy = 0,0
hitsound = S5,6
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -3, -3
air.velocity = -3,-3
persistent = 1
fall = 1
palfx.time = 80
palfx.mul = 100, 200, 200
palfx.add = 225, 140, 245
palfx.sinadd = 60,70,0,10

[State 1001, 3]
type = Destroyself
trigger1 = parent, Stateno != 3125  ;Time = 165 || 
ignorehitpause = 1

; Raimenken Cont1'
[Statedef 3103]
type = S  
movetype = I  
physics = S  
velset = 0,0
ctrl = 0  
anim = 3101

[State 3103, 1]
type = ChangeState
trigger1 = AnimTime = 0 
value = 0
ctrl = 1

;Hyper YAYAYA
[Statedef 3200]
type = S
movetype = A  
physics = S
ctrl = 0  
anim = 182
sprpriority = 1
Velset = 0, 0

[State 3000, Superpause]
type = SuperPause
triggerall = Anim = 182
trigger1 = AnimElem = 1
time = 55
pos = -17, -75
darken = 1
poweradd = -1000
p2defmul = 1
movetime = 55

[State 3000, playsnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 300, 0

[State 1108, 2]
type = ChangeState
Trigger1 = AnimTime = 55
value = 3201
ctrl = 1
 
;Hyper YAYAYA
[Statedef 3201]
type = S
movetype = A  
physics = N
ctrl = 0  
anim = 1101
sprpriority = 1
Velset = 3.2, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 100, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 100, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4, 0

[State 1108, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 1107
postype = p1
pos = 0, 0
bindtime = -1
removetime = -2
ignorehitpause = 0
ownpal = 1
ontop = 1

[State 1108, 1]
type = hitdef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 5
trigger3 = AnimElem = 9
attr = A,SA
damage = 13,4
animtype = Hard
pausetime = 3,3
guardflag = MA
sparkxy = -20,-59
hitsound = S5,4
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -4.2
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
air.velocity = -4.2

[State 1108, 1]
type = hitdef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
attr = A,SA
damage = 13,4
animtype = Hard
pausetime = 3,3
guardflag = MA
sparkxy = -20,-59
hitsound = S5,4
guardsound = S6,0
ground.type = Low
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -4.2
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
air.velocity = -4.2

[State 1108, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 3202
ctrl = 1

;Hyper YAYAYA
[Statedef 3202]
type = S
movetype = A  
physics = N
ctrl = 0  
anim = 1101
sprpriority = 1
Velset = 3.2, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 100, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 100, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4, 0

[State 1108, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 1107
postype = p1
pos = 0, 0
bindtime = -1
removetime = -2
ignorehitpause = 0
ownpal = 1
ontop = 1

[State 1108, 1]
type = hitdef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 5
trigger3 = AnimElem = 9
attr = A,SA
damage = 13,4
animtype = Hard
pausetime = 3,3
guardflag = MA
sparkxy = -20,-59
hitsound = S5,4
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -4.2
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
air.velocity = -4.2

[State 1108, 1]
type = hitdef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
attr = A,SA
damage = 13,4
animtype = Hard
pausetime = 3,3
guardflag = MA
sparkxy = -20,-59
hitsound = S5,4
guardsound = S6,0
ground.type = Low
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -4.2
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
air.velocity = -4.2

[State 1108, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 3203
ctrl = 1

;Hyper YAYAYA
[Statedef 3203]
type = S
movetype = A  
physics = N
ctrl = 0  
anim = 1101
sprpriority = 1
Velset = 3.2, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 100, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 100, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4, 0

[State 1108, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 1107
postype = p1
pos = 0, 0
bindtime = -1
removetime = -2
ignorehitpause = 0
ownpal = 1
ontop = 1

[State 1108, 1]
type = hitdef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 5
trigger3 = AnimElem = 9
attr = A,SA
damage = 13,3
animtype = Hard
pausetime = 3,3
guardflag = MA
sparkxy = -20,-59
hitsound = S5,4
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -4.2
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
air.velocity = -4.2

[State 1108, 1]
type = hitdef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
attr = A,SA
damage = 13,4
animtype = Hard
pausetime = 3,3
guardflag = MA
sparkxy = -20,-59
hitsound = S5,4
guardsound = S6,0
ground.type = Low
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -4.2
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
air.velocity = -4.2

[State 1108, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 3204
ctrl = 1

;Hyper YAYAYA
[Statedef 3204]
type = S
movetype = A  
physics = N
ctrl = 0  
anim = 1101
sprpriority = 1
Velset = 3.2, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 100, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 100, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, 0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4, 0

[State 1108, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 1107
postype = p1
pos = 0, 0
bindtime = -1
removetime = -2
ignorehitpause = 0
ownpal = 1
ontop = 1

[State 1108, 1]
type = hitdef
trigger1 = AnimElem = 1
trigger2 = AnimElem = 5
trigger3 = AnimElem = 9
attr = A,SA
damage = 13,3
animtype = Hard
pausetime = 3,3
guardflag = MA
sparkxy = -20,-59
hitsound = S5,4
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -4.2
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
air.velocity = -4.2

[State 1108, 1]
type = hitdef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
attr = A,SA
damage = 13,4
animtype = Hard
pausetime = 3,3
guardflag = MA
sparkxy = -20,-59
hitsound = S5,4
guardsound = S6,0
ground.type = Low
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -4.2
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
air.velocity = -4.2

[State 1108, 1]
type = hitdef
trigger1 = AnimElem = 11
attr = A,SA
damage = 13,3
animtype = Hard
pausetime = 3,3
guardflag = MA
sparkxy = -20,-59
hitsound = S5,4
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -6.2, -1.5
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
air.velocity = -6.2, -1.5
fall = 1

[State 1108, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 1109
ctrl = 1

;Glacial Spike
[Statedef 3300]
type = S
movetype = A  
physics = N
ctrl = 0  
anim = 3300
sprpriority = 1

[State 3300, 1]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0
ignorehitpause = 1

[State 3300, 1]
type = PlayerPush
trigger1 = time >=0
value = 0 

[State 3300,1]
type = StateTypeSet
trigger1 = AnimElem = 1
statetype = A

[State 3300, ]
type = VelSet
trigger1 = AnimElem = 1
x = ((-1*Facing)*Pos X)/10
y = (Pos Y-40)/10

[State 0, 1]
type = ChangeState
trigger1 = time = 10
value = 3301

[Statedef 3301]
type = A
movetype = A  
physics = N
ctrl = 0  
anim = 3301
sprpriority = 1
velset = 0, 0

[State 3000, Superpause]
type = SuperPause
triggerall = Anim = 3301
trigger1 = AnimElem = 1
time = 55
pos = -17, -75
darken = 1
poweradd = -1000
p2defmul = 1

[State 3000, playsnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 300, 0

[State 3300, ]
type = VelSet
trigger1 = AnimElem = 2
x = 0
y = 5

[state 3300, ]
type = ChangeState
trigger1 = Pos Y >= 0
value = 3302
ctrl 

[Statedef 3302]
type = S
movetype = A  
physics = S
ctrl = 0  
anim = 3302
sprpriority = 1
velset = 0, 0

[State 3302, EnvShake]
type = EnvShake
trigger1 = AnimElem = 1
time = 20
freq = 50

[State 1000, 1]
type = Helper
trigger1 = Time = 1
Stateno = 3303
id = 3303
Name = "Ice"
pos = 0,0
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 2
Stateno = 3303
id = 3303
Name = "Ice"
pos = -20,0
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 2
Stateno = 3303
id = 3303
Name = "Ice"
pos =  20,0
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 4
Stateno = 3303
id = 3303
Name = "Ice"
pos = -40,0
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 4
Stateno = 3303
id = 3303
Name = "Ice"
pos = 40,0
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 6
Stateno = 3303
id = 3303
Name = "Ice"
pos = -60,0
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 6
Stateno = 3303
id = 3303
Name = "Ice"
pos = 60,0
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 8
Stateno = 3303
id = 3303
Name = "Ice"
pos = -80,0
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 8
Stateno = 3303
id = 3303
Name = "Ice"
pos = 80,0
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 10
Stateno = 3303
id = 3303
Name = "Ice"
pos = -100,0
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 10
Stateno = 3303
id = 3303
Name = "Ice"
pos = 100,0
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 12
Stateno = 3303
id = 3303
Name = "Ice"
pos = -120,0
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 12
Stateno = 3303
id = 3303
Name = "Ice"
pos = 120,0
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 14
Stateno = 3303
id = 3303
Name = "Ice"
pos = -140,0
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 14
Stateno = 3303
id = 3303
Name = "Ice"
pos = 140,0
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 16
Stateno = 3303
id = 3303
Name = "Ice"
pos = 160,0
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 16
Stateno = 3303
id = 3303
Name = "Ice"
pos = -160,0
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 18
Stateno = 3303
id = 3303
Name = "Ice"
pos = 180,0
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 18
Stateno = 3303
id = 3303
Name = "Ice"
pos = -180,0
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 20
Stateno = 3303
id = 3303
Name = "Ice"
pos = 200,0
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 20
Stateno = 3303
id = 3303
Name = "Ice"
pos = -200,0
ownpal = 1

[state 3302, End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; Ice Spike (Helper)
[Statedef 3303]
type = A
movetype = A  
physics = N
velset = 0, 0
ctrl = 0 
anim = 3303
sprpriority = 2

[State 3303, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = 300, 3

[State 3303, 1]
type = hitdef
trigger1 = Time = 0
attr = A,SA
damage = 20,2
animtype = Hard
pausetime = 0,100
guardflag = LA
hitflag = MAFD
;sparkxy = 0,0
hitsound = S300,2
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -.5
air.velocity = -.3
persistent = 1
palfx.time = 100
palfx.mul = 200, 200, 200
palfx.add = 225, 140, 245

[State 1000, Explod]
type = Explod
trigger1 = Movehit = 1
anim = 3510
postype = p2
pos = 0, -15
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 1

[State 1000, Explod]
type = Explod
trigger1 = Movehit = 1
anim = 3510
postype = p2
pos = -15, -15
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 1

[State 1000, Explod]
type = Explod
trigger1 = Movehit = 1
anim = 3510
postype = p2
pos = -30, -15
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 1

[State 1000, Explod]
type = Explod
trigger1 = Movehit = 1
anim = 3510
postype = p2
pos = -45, -15
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 1

[State 1000, Explod]
type = Explod
trigger1 = Movehit = 1
anim = 3511
postype = p2
pos = -10, -30
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 1

[State 1000, Explod]
type = Explod
trigger1 = Movehit = 1
anim = 3511
postype = p2
pos = -25, -30
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 1

[State 1000, Explod]
type = Explod
trigger1 = Movehit = 1
anim = 3511
postype = p2
pos = -40, -30
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 1

[State 1000, Explod]
type = Explod
trigger1 = Movehit = 1
anim = 3512
postype = p2
pos = -30, -45
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 1

[State 1000, Explod]
type = Explod
trigger1 = Movehit = 1
anim = 3512
postype = p2
pos = -45, -45
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 1

[State 3303, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7
value = 300, 4

[State 1001, 3]
type = Destroyself
trigger1 = AnimTime = 0
ignorehitpause = 1

; Inferno Spiral
[Statedef 3400]
type = S  
movetype = A  
physics = S  
velset = 0,0
ctrl = 0  
anim = 3100 

[State 3100, Superpause]
type = SuperPause
triggerall = Anim = 3100
trigger1 = AnimElem = 2
time = 55
pos = 0, -105
darken = 1
poweradd = -1000
p2defmul = 1

[State 3000, playsnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 300, 0

[State 3100, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3401

; Infernal Spiral Cont'd
[Statedef 3401]
type = S  
movetype = A  
physics = S  
velset = 0,0
ctrl = 0  
anim = 3125 

[State 1000, 1]
type = Helper
trigger1 = Time = 1
Stateno = 3520
id = 3520
Name = "Fire"
pos = -90,0
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 2
Stateno = 3520
id = 3520
Name = "Fire"
pos = -60,-10
size.xscale= 1.25
size.yscale= 1.25
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 3
Stateno = 3520
id = 3520
Name = "Fire"
pos = -30,-20
size.xscale= 1.5
size.yscale= 1.5
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 4
Stateno = 3520
id = 3520
Name = "Fire"
pos = 0,-30
size.xscale= 1.75
size.yscale= 1.75
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 5
Stateno = 3520
id = 3520
Name = "Fire"
pos = 30,-40
size.xscale= 1.5
size.yscale= 1.5
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 6
Stateno = 3520
id = 3520
Name = "Fire"
pos = 60,-50
size.xscale= 1.25
size.yscale= 1.25
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 7
Stateno = 3520
id = 3520
Name = "Fire"
pos = 90,-60
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 10
Stateno = 3520
id = 3520
Name = "Fire"
pos = -90,-100
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 18
Stateno = 3520
id = 3520
Name = "Fire"
pos = -60,-110
ownpal = 1
size.xscale= 1.25
size.yscale= 1.25

[State 1000, 1]
type = Helper
trigger1 = Time = 20
Stateno = 3520
id = 3520
Name = "Fire"
pos = -30,-120
ownpal = 1
size.xscale= 1.5
size.yscale= 1.5

[State 1000, 1]
type = Helper
trigger1 = Time = 22
Stateno = 3520
id = 3520
Name = "Fire"
pos = 0,-130
ownpal = 1
size.xscale= 1.75
size.yscale= 1.75

[State 1000, 1]
type = Helper
trigger1 = Time = 24
Stateno = 3520
id = 3520
Name = "Fire"
pos = 30,-140
ownpal = 1
scale = 2, 2
size.xscale= 1.5
size.yscale= 1.5

[State 1000, 1]
type = Helper
trigger1 = Time = 26
Stateno = 3520
id = 3520
Name = "Fire"
pos = 60,-150
ownpal = 1
size.xscale= 1.25
size.yscale= 1.25

[State 1000, 1]
type = Helper
trigger1 = Time = 28
Stateno = 3520
id = 3520
Name = "Fire"
pos = 90,-160
ownpal = 1
scale = 2, 2

[State 1000, 1]
type = Helper
trigger1 = Time = 30
Stateno = 3520
id = 3520
Name = "Fire"
pos = -90,-200
ownpal = 1
scale = 2, 2

[State 1000, 1]
type = Helper
trigger1 = Time = 32
Stateno = 3520
id = 3520
Name = "Fire"
pos = -60,-210
ownpal = 1
size.xscale= 1.25
size.yscale= 1.25

[State 1000, 1]
type = Helper
trigger1 = Time = 34
Stateno = 3520
id = 3520
Name = "Fire"
pos = -30,-220
ownpal = 1
size.xscale= 1.5
size.yscale= 1.5

[State 1000, 1]
type = Helper
trigger1 = Time = 36
Stateno = 3520
id = 3520
Name = "Fire"
pos = 0,-230
ownpal = 1
size.xscale= 1.75
size.yscale= 1.75

[State 1000, 1]
type = Helper
trigger1 = Time = 38
Stateno = 3520
id = 3520
Name = "Fire"
pos = 30,-240
ownpal = 1
size.xscale= 1.5
size.yscale= 1.5

[State 1000, 1]
type = Helper
trigger1 = Time = 40
Stateno = 3520
id = 3520
Name = "Fire"
pos = 60,-250
ownpal = 1
size.xscale= 1.25
size.yscale= 1.25

[State 1000, 1]
type = Helper
trigger1 = Time = 42
Stateno = 3520
id = 3520
Name = "Fire"
pos = 90,-260
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 44
Stateno = 3520
id = 3520
Name = "Fire"
pos = -90,-300
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 46
Stateno = 3520
id = 3520
Name = "Fire"
pos = -60,-310
ownpal = 1
size.xscale= 1.25
size.yscale= 1.25

[State 1000, 1]
type = Helper
trigger1 = Time = 48
Stateno = 3520
id = 3520
Name = "Fire"
pos = -30,-320
ownpal = 1
size.xscale= 1.5
size.yscale= 1.5

[State 1000, 1]
type = Helper
trigger1 = Time = 50
Stateno = 3520
id = 3520
Name = "Fire"
pos = 0,-330
ownpal = 1
size.xscale= 1.75
size.yscale= 1.75

[State 1000, 1]
type = Helper
trigger1 = Time = 52
Stateno = 3520
id = 3520
Name = "Fire"
pos = 30,-340
ownpal = 1
size.xscale= 1.5
size.yscale= 1.5

[State 1000, 1]
type = Helper
trigger1 = Time = 54
Stateno = 3520
id = 3520
Name = "Fire"
pos = 60,-350
ownpal = 1
size.xscale= 1.25
size.yscale= 1.25

[State 1000, 1]
type = Helper
trigger1 = Time = 56
Stateno = 3520
id = 3520
Name = "Fire"
pos = 90,-360
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 58
Stateno = 3520
id = 3520
Name = "Fire"
pos = -90,-400
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 60
Stateno = 3520
id = 3520
Name = "Fire"
pos = -60,-410
ownpal = 1
size.xscale= 1.25
size.yscale= 1.25

[State 1000, 1]
type = Helper
trigger1 = Time = 62
Stateno = 3520
id = 3520
Name = "Fire"
pos = -30,-420
ownpal = 1
size.xscale= 1.5
size.yscale= 1.5

[State 1000, 1]
type = Helper
trigger1 = Time = 64
Stateno = 3520
id = 3520
Name = "Fire"
pos = 0,-430
ownpal = 1
size.xscale= 1.75
size.yscale= 1.75

[State 1000, 1]
type = Helper
trigger1 = Time = 66
Stateno = 3520
id = 3520
Name = "Fire"
pos = 30,-440
ownpal = 1
size.xscale= 1.5
size.yscale= 1.5

[State 1000, 1]
type = Helper
trigger1 = Time = 68
Stateno = 3520
id = 3520
Name = "Fire"
pos = 60,-450
ownpal = 1
size.xscale= 1.25
size.yscale= 1.25


[State 1000, 1]
type = Helper
trigger1 = Time = 70
Stateno = 3520
id = 3520
Name = "Fire"
pos = 90,-460
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 72
Stateno = 3520
id = 3520
Name = "Fire"
pos = -90,-500
ownpal = 1

[State 1000, 1]
type = Helper
trigger1 = Time = 74
Stateno = 3520
id = 3520
Name = "Fire"
pos = -60,-510
ownpal = 1
size.xscale= 1.25
size.yscale= 1.25

[State 1000, 1]
type = Helper
trigger1 = Time = 76
Stateno = 3520
id = 3520
Name = "Fire"
pos = -30,-520
ownpal = 1
size.xscale= 1.5
size.yscale= 1.5

[State 1000, 1]
type = Helper
trigger1 = Time = 78
Stateno = 3520
id = 3520
Name = "Fire"
pos = 0,-530
ownpal = 1
size.xscale= 1.75
size.yscale= 1.75

[State 1000, 1]
type = Helper
trigger1 = Time = 80
Stateno = 3520
id = 3520
Name = "Fire"
pos = 30,-540
ownpal = 1
size.xscale= 1.5
size.yscale= 1.5

[State 1000, 1]
type = Helper
trigger1 = Time = 82
Stateno = 3520
id = 3520
Name = "Fire"
pos = 60,-550
ownpal = 1
size.xscale= 1.25
size.yscale= 1.25

[State 1000, 1]
type = Helper
trigger1 = Time = 84
Stateno = 3520
id = 3520
Name = "Fire"
pos = 90,-560
ownpal = 1
scale = 2, 2

[State 3100, 9]
type = ChangeState
trigger1 = Time = 160
value = 3103
ctrl = 0

; Flame (Helper)
[Statedef 3520]
type = A
movetype = A  
physics = N
velset = 0, 0
ctrl = 0 
anim = 3520
Scale = 4, 4
sprpriority = 2

[State 3303, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = 300, 1

[State 3303, 1]
type = hitdef
trigger1 = Time = 0
attr = A,SA
damage = 10,2
animtype = Hard
pausetime = 3,1
guardflag = MA
hitflag = MAFD
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -.5,-9
air.velocity = -.3,-3
persistent = 1
palfx.time = 80
palfx.mul = 200, 200, 200
palfx.add = 225, 10, 10
palfx.sinadd = 60,70,0,10
fall = 1

[State 3303, 1]
type = hitdef
trigger1 = AnimElem = 4
attr = A,SA
damage = 10,2
animtype = Hard
pausetime = 3,1
guardflag = MA
hitflag = MAFD
guardsound = S6,0
ground.type = High
ground.slidetime = 15
ground.hittime = 12
ground.velocity = -.5,-9
air.velocity = -.3,-11
persistent = 1
palfx.time = 80
palfx.mul = 200, 200, 200
palfx.add = 225, 10, 10
palfx.sinadd = 60,70,0,10
fall = 1

[State 1000, Explod]
type = Explod
trigger1 = Movehit = 1
anim = 3520
postype = p2
pos = 0, -15
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 1

[State 1000, Explod]
type = Explod
trigger1 = Movehit = 1
anim = 3520
postype = p2
pos = -30, -75
bindtime = -1
removetime = -2
ownpal = 1
sprpriority = 1

[State 1001, 3]
type = Destroyself
trigger1 = AnimTime = 0
ignorehitpause = 1
;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

;[Statedef -2]

;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

;[Statedef -3]



;-------------------
;MEE Template Files
;   provided by
;  Kitsune Sniper
;       ***
; Thanks, Kitsune!
;-------------------