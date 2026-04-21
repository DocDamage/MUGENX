;===========================================================================
;---------------------------------------------------------------------------
; オリジナルコンボ
;---------------------------------------------------------------------------
; 地上・弱
;---------------------------------------------------------------------------
[Statedef 4000]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 4000
ctrl = 0
sprpriority = 3

[State 4000, 5]
type = ChangeState
trigger1 = AnimElemTime(2) = 0
value = 4001

[Statedef 4001]
type    = S
movetype= A
physics = S
ctrl = 0
sprpriority = 3

[State 4000,OriCom-Level]
type = VarSet
trigger1 = time = 0
V = 7
Value = 1

[State 4000, Super A]
type = SuperPause
trigger1 = time = 1
pos = 0, -70
anim = S8070
sound = S50, 2
time = 28
movetime = 26

[State 4000, Voice]
type = PlaySnd
Trigger1 = Time = 1
value = 100,17
channel = 0

[State 4000, FrontLayer]
type = Explod
trigger1 = Time = 3
anim = 8076
postype = p1
pos = 0, 0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
removeongethit = 1
shadow = 0
supermovetime=28
pausemovetime=10
[State 4000, BackLayer]
type = Explod
trigger1 = Time = 3
anim = 8075
postype = p1
pos = 0, 0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 1
removeongethit = 1
shadow = 0
supermovetime=28
pausemovetime=28

[State 4000, BonusTimer]
type = VarSet
trigger1 = time = 27
v = 13
value = ifelse(Power >= 3000, 26, 0)

[State 4000, Super A]
type = Pause
trigger1 = time = 27
time = ceil(Power / 333) + 1
movetime = ceil(Power / 333) + 1

[State 4000, AfterImage]
type = AfterImage
trigger1 = Time = 1
time = 2
paladd = 55,35,15
palmul = .55,.55,.89
framegap = 4
timegap = 4
length = 10

[State 4000, AfterImageTime]
type = AfterImageTime
trigger1 = Time > 1
time = 2

[State 4000, Super D]
type = NotHitBy
trigger1 = Time < 27
value = , AA, AP, AT

[State 4000, Super D]
type = NotHitBy
trigger1 = time = 27
value = , AA, AP, AT
time = ceil(Power / 333) + 6

[State 4000, 5]
type = Helper
trigger1 = Time = 2
name = "PosHelper"
id = 4100
stateno = 4100
postype = front
pausemovetime = 9999
x = 0
y = 0
ownpal = 1
supermovetime = 1

[State 4000, 5]
type = Helper
trigger1 = Time = 3
name = "OriCom"
id = 4300
stateno = 4300
postype = front
pausemovetime = 9999
x = 0
y = 0
ownpal = 1
supermovetime = 1

[State 4000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; 地上・中
;---------------------------------------------------------------------------
[Statedef 4010]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 4000
ctrl = 0
sprpriority = 3

[State 4010, 5]
type = ChangeState
trigger1 = AnimElemTime(2) = 0
value = 4011

[Statedef 4011]
type    = S
movetype= A
physics = S
ctrl = 0
sprpriority = 3

[State 4010,OriCom-Level]
type = VarSet
trigger1 = time = 0
V = 7
Value = 2

[State 4010, Super A]
type = SuperPause
trigger1 = time = 1
pos = 0, -70
anim = S8070
sound = S50, 2
time = 28
movetime = 26

[State 4000, Voice]
type = PlaySnd
Trigger1 = Time = 1
value = 100,17
channel = 0

[State 4000, FrontLayer]
type = Explod
trigger1 = Time = 3
anim = 8076
postype = p1
pos = 0, 0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
removeongethit = 1
shadow = 0
supermovetime=28
pausemovetime=28
[State 4000, BackLayer]
type = Explod
trigger1 = Time = 3
anim = 8075
postype = p1
pos = 0, 0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 1
removeongethit = 1
shadow = 0
supermovetime=28
pausemovetime=28


[State 4000, BonusTimer]
type = VarSet
trigger1 = time = 27
v = 13
value = ifelse(Power >= 3000, 26, 0)

[State 4000, Super A]
type = Pause
trigger1 = time = 27
time = ceil(Power / 333) + 1
movetime = ceil(Power / 333) + 1

[State 4000, AfterImage]
type = AfterImage
trigger1 = Time = 1
time = 2
paladd = 55,35,15
palmul = .55,.55,.89
framegap = 14
timegap = 14
length = 30

[State 4000, AfterImageTime]
type = AfterImageTime
trigger1 = Time > 1
time = 2

[State 4010, Super D]
type = NotHitBy
trigger1 = Time < 27
value = , AA, AP, AT

[State 4000, Super D]
type = NotHitBy
trigger1 = time = 27
value = , AA, AP, AT
time = ceil(Power / 333) + 6

[State 4010, 5]
type = Helper
trigger1 = Time = 2
name = "PosHelper"
id = 4100
stateno = 4100
postype = front
pausemovetime = 9999
x = 0
y = 0
ownpal = 1
supermovetime = 1

[State 4000, 5]
type = Helper
trigger1 = Time = 3
name = "OriCom"
id = 4300
stateno = 4300
postype = front
pausemovetime = 9999
x = 0
y = 0
ownpal = 1
supermovetime = 1

[State 4010, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; 地上・強
;---------------------------------------------------------------------------
[Statedef 4020]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 4000
ctrl = 0
sprpriority = 3

[State 4020, 5]
type = ChangeState
trigger1 = AnimElemTime(2) = 0
value = 4021

[Statedef 4021]
type    = S
movetype= A
physics = S
ctrl = 0
sprpriority = 3

[State 4020,OriCom-Level]
type = VarSet
trigger1 = time = 0
V = 7
Value = 3

[State 4020, Super A]
type = SuperPause
trigger1 = time = 1
pos = 0, -70
anim = S8070
sound = S50, 2
time = 28
movetime = 26

[State 4000, Voice]
type = PlaySnd
Trigger1 = Time = 1
value = 100,17
channel = 0

[State 4000, FrontLayer]
type = Explod
trigger1 = Time = 3
anim = 8076
postype = p1
pos = 0, 0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
removeongethit = 1
shadow = 0
supermovetime=28
pausemovetime=28
[State 4000, BackLayer]
type = Explod
trigger1 = Time = 3
anim = 8075
postype = p1
pos = 0, 0
facing = 1
bindtime = 1
removetime = -2
sprpriority = 1
removeongethit = 1
shadow = 0
supermovetime=28
pausemovetime=28

[State 4000, BonusTimer]
type = VarSet
trigger1 = time = 27
v = 13
value = ifelse(Power >= 3000, 26, 0)

[State 4000, Super A]
type = Pause
trigger1 = time = 27
time = ceil(Power / 333) + 1
movetime = ceil(Power / 333) + 1

[State 4000, AfterImage]
type = AfterImage
trigger1 = Time = 1
time = 2
paladd = 55,35,15
palmul = .55,.55,.89
framegap = 24
timegap = 24
length = 50

[State 4000, AfterImageTime]
type = AfterImageTime
trigger1 = Time > 1
time = 2

[State 4020, Super D]
type = NotHitBy
trigger1 = Time < 27
value = , AA, AP, AT

[State 4000, Super D]
type = NotHitBy
trigger1 = time = 27
value = , AA, AP, AT
time = ceil(Power / 333) + 6

[State 4020, 5]
type = Helper
trigger1 = Time = 2
name = "PosHelper"
id = 4100
stateno = 4100
postype = front
pausemovetime = 9999
x = 0
y = 0
ownpal = 1
supermovetime = 1

[State 4000, 5]
type = Helper
trigger1 = Time = 3
name = "OriCom"
id = 4300
stateno = 4300
postype = front
pausemovetime = 9999
x = 0
y = 0
ownpal = 1
supermovetime = 1

[State 4020, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; 空中・弱
;---------------------------------------------------------------------------
[Statedef 4050]
type    = A
movetype= A
physics = N
juggle  = 0
anim = 4050
ctrl = 0
sprpriority = 3

[State 4050, 5]
type = PosFreeze
trigger1 = 1

[State 4050, 5]
type = ChangeState
trigger1 = AnimElemTime(2) = 0
value = 4051

[Statedef 4051]
type    = A
movetype= A
physics = N
ctrl = 0
sprpriority = 3

[State 4051, 5]
type = PosFreeze
trigger1 = 1

[State 4050,OriCom-Level]
type = VarSet
trigger1 = time = 0
V = 7
Value = 1

[State 4050, Super A]
type = SuperPause
trigger1 = time = 1
pos = 0, -70
anim = S8070
sound = S50, 2
time = 28
movetime = 26

[State 4000, Voice]
type = PlaySnd
Trigger1 = Time = 1
value = 100,7
channel = 0

[State 4000, BonusTimer]
type = VarSet
trigger1 = time = 27
v = 13
value = ifelse(Power >= 3000, 26, 0)

[State 4000, Super A]
type = Pause
trigger1 = time = 27
time = ceil(Power / 333) + 1
movetime = ceil(Power / 333) + 1

[State 4000, AfterImage]
type = AfterImage
trigger1 = Time = 1
time = 2
paladd = 55,35,15
palmul = .55,.55,.89
framegap = 4
timegap = 4
length = 10

[State 4000, AfterImageTime]
type = AfterImageTime
trigger1 = Time > 1
time = 2

[State 4050, Super D]
type = NotHitBy
trigger1 = Time < 27
value = , AA, AP, AT

[State 4000, Super D]
type = NotHitBy
trigger1 = time = 27
value = , AA, AP, AT
time = ceil(Power / 333) + 6

[State 4050, 5]
type = Helper
trigger1 = Time = 2
name = "PosHelper"
id = 4100
stateno = 4100
postype = front
pausemovetime = 9999
x = 0
y = 0
ownpal = 1
supermovetime = 1

[State 4000, 5]
type = Helper
trigger1 = Time = 3
name = "OriCom"
id = 4300
stateno = 4300
postype = front
pausemovetime = 9999
x = 0
y = 0
ownpal = 1
supermovetime = 1

[State 4050, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1


;---------------------------------------------------------------------------
; 空中・中
;---------------------------------------------------------------------------
[Statedef 4060]
type    = A
movetype= A
physics = N
juggle  = 0
anim = 4050
ctrl = 0
sprpriority = 3

[State 4060, 5]
type = PosFreeze
trigger1 = 1

[State 4060, 5]
type = ChangeState
trigger1 = AnimElemTime(2) = 0
value = 4051

[Statedef 4061]
type    = A
movetype= A
physics = N
ctrl = 0
sprpriority = 3

[State 4061, 5]
type = PosFreeze
trigger1 = 1

[State 4060,OriCom-Level]
type = VarSet
trigger1 = time = 0
V = 7
Value = 2

[State 4060, Super A]
type = SuperPause
trigger1 = time = 1
pos = 0, -70
anim = S8070
sound = S50, 2
time = 28
movetime = 26

[State 4000, Voice]
type = PlaySnd
Trigger1 = Time = 1
value = 100,7
channel = 0

[State 4000, BonusTimer]
type = VarSet
trigger1 = time = 27
v = 13
value = ifelse(Power >= 3000, 26, 0)

[State 4000, Super A]
type = Pause
trigger1 = time = 27
time = ceil(Power / 333) + 1
movetime = ceil(Power / 333) + 1

[State 4000, AfterImage]
type = AfterImage
trigger1 = Time = 1
time = 2
paladd = 55,35,15
palmul = .55,.55,.89
framegap = 14
timegap = 14
length = 30

[State 4000, AfterImageTime]
type = AfterImageTime
trigger1 = Time > 1
time = 2

[State 4060, Super D]
type = NotHitBy
trigger1 = Time < 27
value = , AA, AP, AT

[State 4000, Super D]
type = NotHitBy
trigger1 = time = 27
value = , AA, AP, AT
time = ceil(Power / 333) + 6

[State 4060, 5]
type = Helper
trigger1 = Time = 2
name = "PosHelper"
id = 4100
stateno = 4100
postype = front
pausemovetime = 9999
x = 0
y = 0
ownpal = 1
supermovetime = 1

[State 4000, 5]
type = Helper
trigger1 = Time = 3
name = "OriCom"
id = 4300
stateno = 4300
postype = front
pausemovetime = 9999
x = 0
y = 0
ownpal = 1
supermovetime = 1

[State 4060, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1


;---------------------------------------------------------------------------
; 空中・強
;---------------------------------------------------------------------------
[Statedef 4070]
type    = A
movetype= A
physics = N
juggle  = 0
anim = 4050
ctrl = 0
sprpriority = 3

[State 4070, 5]
type = PosFreeze
trigger1 = 1

[State 4070, 5]
type = ChangeState
trigger1 = AnimElemTime(2) = 0
value = 4071

[Statedef 4071]
type    = A
movetype= A
physics = N
ctrl = 0
sprpriority = 3

[State 4071, 5]
type = PosFreeze
trigger1 = 1

[State 4070,OriCom-Level]
type = VarSet
trigger1 = time = 0
V = 7
Value = 3

[State 4070, Super A]
type = SuperPause
trigger1 = time = 1
pos = 0, -70
anim = S8070
sound = S50, 2
time = 28
movetime = 26

[State 4000, Voice]
type = PlaySnd
Trigger1 = Time = 1
value = 100,17
channel = 0

[State 4000, BonusTimer]
type = VarSet
trigger1 = time = 27
v = 13
value = ifelse(Power >= 3000, 26, 0)

[State 4000, Super A]
type = Pause
trigger1 = time = 27
time = ceil(Power / 333) + 1
movetime = ceil(Power / 333) + 1

[State 4000, AfterImage]
type = AfterImage
trigger1 = Time = 1
time = 2
paladd = 55,35,15
palmul = .55,.55,.89
framegap = 24
timegap = 24
length = 50

[State 4000, AfterImageTime]
type = AfterImageTime
trigger1 = Time > 1
time = 2

[State 4070, Super D]
type = NotHitBy
trigger1 = Time < 27
value = , AA, AP, AT

[State 4000, Super D]
type = NotHitBy
trigger1 = time = 27
value = , AA, AP, AT
time = ceil(Power / 333) + 6

[State 4070, 5]
type = Helper
trigger1 = Time = 2
name = "PosHelper"
id = 4100
stateno = 4100
postype = front
pausemovetime = 9999
x = 0
y = 0
ownpal = 1
supermovetime = 1

[State 4000, 5]
type = Helper
trigger1 = Time = 3
name = "OriCom"
id = 4300
stateno = 4300
postype = front
pausemovetime = 9999
x = 0
y = 0
ownpal = 1
supermovetime = 1

[State 4070, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1



;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; 基点位置情報ヘルパー
;---------------------------------------------------------------------------
[Statedef 4100]
type    = S
movetype= I
physics = N
juggle  = 0
velset = 0,0
anim = 4001
ctrl = 0
sprpriority = 3

[State 4100, PosSet]
type = PosSet
trigger1 = time = 0
x = 0
y = 0

[State 4100, NotHitBy]
type = NotHitBy
trigger1 = 1
value = , AA, AP, AT

[State 4100, ScreenBind]
type = ScreenBound
trigger1 = 1
value = 0

;デバッグ用
[State -3,debug]
type = displaytoclipboard
trigger1 = 1
text = "ScreenPos X = %f"
params = screenpos X
ignorehitpause = 1

[State 4100, 5]
type = DestroySelf
trigger1 = root,Var(7) = 0


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; キャリ１
;---------------------------------------------------------------------------
[Statedef 4200]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 4001
ctrl = 0
sprpriority = 3

[State 4200, PosSet]
type = PosSet
trigger1 = time = 0
x = 0
y = 110

;--------------------------
;All-Var-Initializing
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 0
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 1
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 2
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 3
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 4
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 5
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 6
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 7
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 8
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 9
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 10
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 11
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 12
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 13
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 14
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 15
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 16
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 17
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 18
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 19
value = root,Var(10)
ignorehitpause = 1

[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 20
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 21
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 22
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 23
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 24
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 25
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 26
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 27
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 28
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 29
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 30
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 31
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 32
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 33
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 34
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 35
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 36
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 37
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 38
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 39
value = root,Var(11)
ignorehitpause = 1

[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 40
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 41
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 42
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 43
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 44
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 45
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 46
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 47
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 48
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 49
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 50
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 51
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 52
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 53
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 54
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 55
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 56
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 57
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 58
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 59
value = root,Var(12)
ignorehitpause = 1

[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 0
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 1
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 2
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 3
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 4
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 5
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 6
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 7
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 8
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 9
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 10
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 11
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 12
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 13
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 14
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 15
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 16
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 17
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 18
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 19
value = root,fVar(10)
ignorehitpause = 1


[State 4200, NotHitBy]
type = NotHitBy
trigger1 = 1
value = , AA, AP, AT

[State 4200, ScreenBind]
type = ScreenBound
trigger1 = 1
value = 0



[State 4200, CarryEnoughCheck]
type = VarSet
trigger1 = time = 0
fv = 39
value = floor(parent,fVar(39)) - 1.0
ignorehitpause = 1

[State 4200, RecallCarry]
type = Helper
trigger1 = Time = 1
trigger1 = fVar(39) > 0
name = "Carry"
id = 4200 + floor(fVar(39)) - 1
stateno = 4200
postype = front
pausemovetime = 9999
x = 0
y = 0
ownpal = 1
supermovetime = 1


[State 4200, VarPassToParent]
type = ParentVarSet
trigger1 = 1
v = 19
value = Var(0)
ignorehitpause = 1

[State 4200, VarPassToParent]
type = ParentVarSet
trigger1 = 1
v = 39
value = Var(20)
ignorehitpause = 1

[State 4200, VarPassToParent]
type = ParentVarSet
trigger1 = 1
v = 59
value = Var(40)
ignorehitpause = 1

[State 4200, VarPassToParent]
type = ParentVarSet
trigger1 = 1
fv = 19
value = fVar(0)
ignorehitpause = 1


;--------------------------
;Medium-VarSet
[State 4200, Medium]
type = VarSet
trigger1 = root,Var(7) = 2
v = 19
value = root,Var(10)
ignorehitpause = 1

[State 4200, Medium]
type = VarSet
trigger1 = root,Var(7) = 2
v = 39
value = root,Var(11)
ignorehitpause = 1

[State 4200, Medium]
type = VarSet
trigger1 = root,Var(7) = 2
v = 59
value = root,Var(12)
ignorehitpause = 1

[State 4200, Medium]
type = VarSet
trigger1 = root,Var(7) = 2
fv = 19
value = root,fVar(10)
ignorehitpause = 1


;--------------------------
;Strong-VarSet
[State 4200, Strong]
type = VarSet
trigger1 = root,Var(7) = 3
trigger1 = IsHelper(4200)
v = 15
value = root,Var(10)
ignorehitpause = 1

[State 4200, Strong]
type = VarSet
trigger1 = root,Var(7) = 3
trigger1 = IsHelper(4200)
v = 35
value = root,Var(11)
ignorehitpause = 1

[State 4200, Strong]
type = VarSet
trigger1 = root,Var(7) = 3
trigger1 = IsHelper(4200)
v = 55
value = root,Var(12)
ignorehitpause = 1

[State 4200, Strong]
type = VarSet
trigger1 = root,Var(7) = 3
trigger1 = IsHelper(4200)
fv = 15
value = root,fVar(10)
ignorehitpause = 1












[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 0
value = Var(1)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 1
value = Var(2)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 2
value = Var(3)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 3
value = Var(4)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 4
value = Var(5)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 5
value = Var(6)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 6
value = Var(7)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 7
value = Var(8)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 8
value = Var(9)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 9
value = Var(10)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 10
value = Var(11)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 11
value = Var(12)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 12
value = Var(13)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 13
value = Var(14)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 14
value = Var(15)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 15
value = Var(16)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 16
value = Var(17)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 17
value = Var(18)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 18
value = Var(19)
ignorehitpause = 1





[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 20
value = Var(21)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 21
value = Var(22)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 22
value = Var(23)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 23
value = Var(24)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 24
value = Var(25)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 25
value = Var(26)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 26
value = Var(27)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 27
value = Var(28)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 28
value = Var(29)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 29
value = Var(30)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 30
value = Var(31)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 31
value = Var(32)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 32
value = Var(33)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 33
value = Var(34)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 34
value = Var(35)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 35
value = Var(36)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 36
value = Var(37)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 37
value = Var(38)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 38
value = Var(39)
ignorehitpause = 1





[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 40
value = Var(41)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 41
value = Var(42)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 42
value = Var(43)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 43
value = Var(44)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 44
value = Var(45)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 45
value = Var(46)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 46
value = Var(47)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 47
value = Var(48)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 48
value = Var(49)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 49
value = Var(50)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 50
value = Var(51)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 51
value = Var(52)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 52
value = Var(53)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 53
value = Var(54)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 54
value = Var(55)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 55
value = Var(56)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 56
value = Var(57)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 57
value = Var(58)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 58
value = Var(59)
ignorehitpause = 1






[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 0
value = fVar(1)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 1
value = fVar(2)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 2
value = fVar(3)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 3
value = fVar(4)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 4
value = fVar(5)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 5
value = fVar(6)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 6
value = fVar(7)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 7
value = fVar(8)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 8
value = fVar(9)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 9
value = fVar(10)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 10
value = fVar(11)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 11
value = fVar(12)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 12
value = fVar(13)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 13
value = fVar(14)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 14
value = fVar(15)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 15
value = fVar(16)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 16
value = fVar(17)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 17
value = fVar(18)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 18
value = fVar(19)
ignorehitpause = 1






[State -3,debug]
type = displaytoclipboard
trigger1 = 1
text = "ishelper(4200) = %d"
params = ishelper(4200)
ignorehitpause = 1

[State 4200, 5]
type = DestroySelf
trigger1 = root,Var(7) = 0








;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; 攻撃力のある残像
;---------------------------------------------------------------------------
[Statedef 4300]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 0
ctrl = 0
juggle = 0
sprpriority = 0
hitdefpersist = 1

;--------------------------
;All-Var-Initializing
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 0
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 1
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 2
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 3
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 4
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 5
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 6
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 7
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 8
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 9
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 10
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 11
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 12
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 13
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 14
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 15
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 16
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 17
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 18
value = root,Var(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 19
value = root,Var(10)
ignorehitpause = 1

[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 20
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 21
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 22
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 23
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 24
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 25
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 26
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 27
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 28
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 29
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 30
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 31
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 32
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 33
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 34
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 35
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 36
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 37
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 38
value = root,Var(11)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 39
value = root,Var(11)
ignorehitpause = 1

[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 40
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 41
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 42
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 43
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 44
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 45
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 46
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 47
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 48
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 49
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 50
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 51
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 52
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 53
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 54
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 55
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 56
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 57
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 58
value = root,Var(12)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
v = 59
value = root,Var(12)
ignorehitpause = 1

[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 0
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 1
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 2
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 3
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 4
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 5
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 6
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 7
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 8
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 9
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 10
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 11
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 12
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 13
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 14
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 15
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 16
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 17
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 18
value = root,fVar(10)
ignorehitpause = 1
[State 4200, Init]
type = VarSet
trigger1 = time = 0
fv = 19
value = root,fVar(10)
ignorehitpause = 1






;AttackMul
[State -3,Combo-AttackMul]
type = AttackMulSet
trigger1 = ((root,Var(21)+(root,Var(22))+(root,Var(23))*2-1)/32.0) <= 0
value = ifelse((root,Var(59))=0,1.0,ifelse((root,Var(59))=1,1.2,0.8))

[State -3,Combo-AttackMul]
type = AttackMulSet
trigger1 = ((root,Var(21)+(root,Var(22))+(root,Var(23))*2-1)/32.0) > 0
trigger1 = (ifelse((root,Var(59))=0,1.0,ifelse((root,Var(59))=1,1.2,0.8))-(((root,Var(21))+(root,Var(22))+(root,Var(23))*2-1)/32.0)) > 0.001
value = ifelse((root,Var(59))=0,1.0,ifelse((root,Var(59))=1,1.2,0.8))-(((root,Var(21))+(root,Var(22))+(root,Var(23))*2-1)/32.0)

[State -3,Combo-AttackMul]
type = AttackMulSet
trigger1 = ((root,Var(21)+(root,Var(22))+(root,Var(23))*2-1)/32.0) > 0
trigger1 = (ifelse((root,Var(59))=0,1.0,ifelse((root,Var(59))=1,1.2,0.8))-(((root,Var(21))+(root,Var(22))+(root,Var(23))*2-1)/32.0)) <= 0.001
value = 0.001


[State 4300, pal]
type = PalFX
trigger1 = 1
time = 5
add = 30,30,74
mul = 165,130,210
ignorehitpause = 1

[State 4300, ScreenBind]
type = ScreenBound
trigger1 = 1
value = 0

[State 4300, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 4300, NotHitBy]
type = NotHitBy
trigger1 = 1
value = , AA, AP, AT

[State 4300, CarryNumber]
type = VarSet
trigger1 = Time = 0
fv = 39
value = ifelse((root,Var(7))=3,3.0,ifelse((root,Var(7))=2,1.0,0))

[State 4300, Carry]
type = Helper
trigger1 = Time = 1
trigger1 = fVar(39) > 0
name = "Carry"
id = 4200 + ceil(fVar(39))
stateno = 4200
postype = front
pausemovetime = 9999
x = 0
y = 0
ownpal = 1
supermovetime = 1



;Var(0)はStateNo

[State 4300, Pos]
type = PosSet
trigger1 = 1
x = (root,Var(8) - 160) + Var(20)
y = - (Abs(Var(40))) + 10

[State 4300, Anim]
type = ChangeAnim
trigger1 = 1
Value = floor(fVar(0))
elem = floor(Var(0) / 1000000)

[State 4300, turn]
type = turn
trigger1 = (Var(40) < 0) && (facing = -1)
trigger2 = (Var(40) > 0) && (facing = 1)




;--------------------------
;weak-VarSet
[State 4200, Weak]
type = VarSet
trigger1 = root,Var(7) = 1
v = 12
value = root,Var(10)
ignorehitpause = 1

[State 4200, Weak]
type = VarSet
trigger1 = root,Var(7) = 1
v = 32
value = root,Var(11)
ignorehitpause = 1

[State 4200, Weak]
type = VarSet
trigger1 = root,Var(7) = 1
v = 52
value = root,Var(12)
ignorehitpause = 1

[State 4200, Weak]
type = VarSet
trigger1 = root,Var(7) = 1
fv = 12
value = root,fVar(10)
ignorehitpause = 1












[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 0
value = Var(1)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 1
value = Var(2)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 2
value = Var(3)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 3
value = Var(4)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 4
value = Var(5)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 5
value = Var(6)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 6
value = Var(7)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 7
value = Var(8)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 8
value = Var(9)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 9
value = Var(10)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 10
value = Var(11)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 11
value = Var(12)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 12
value = Var(13)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 13
value = Var(14)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 14
value = Var(15)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 15
value = Var(16)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 16
value = Var(17)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 17
value = Var(18)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 18
value = Var(19)
ignorehitpause = 1





[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 20
value = Var(21)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 21
value = Var(22)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 22
value = Var(23)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 23
value = Var(24)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 24
value = Var(25)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 25
value = Var(26)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 26
value = Var(27)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 27
value = Var(28)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 28
value = Var(29)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 29
value = Var(30)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 30
value = Var(31)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 31
value = Var(32)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 32
value = Var(33)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 33
value = Var(34)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 34
value = Var(35)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 35
value = Var(36)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 36
value = Var(37)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 37
value = Var(38)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 38
value = Var(39)
ignorehitpause = 1





[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 40
value = Var(41)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 41
value = Var(42)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 42
value = Var(43)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 43
value = Var(44)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 44
value = Var(45)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 45
value = Var(46)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 46
value = Var(47)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 47
value = Var(48)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 48
value = Var(49)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 49
value = Var(50)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 50
value = Var(51)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 51
value = Var(52)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 52
value = Var(53)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 53
value = Var(54)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 54
value = Var(55)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 55
value = Var(56)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 56
value = Var(57)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 57
value = Var(58)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
v = 58
value = Var(59)
ignorehitpause = 1






[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 0
value = fVar(1)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 1
value = fVar(2)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 2
value = fVar(3)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 3
value = fVar(4)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 4
value = fVar(5)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 5
value = fVar(6)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 6
value = fVar(7)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 7
value = fVar(8)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 8
value = fVar(9)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 9
value = fVar(10)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 10
value = fVar(11)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 11
value = fVar(12)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 12
value = fVar(13)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 13
value = fVar(14)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 14
value = fVar(15)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 15
value = fVar(16)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 16
value = fVar(17)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 17
value = fVar(18)
ignorehitpause = 1

[State 4200, VarPass]
type = VarSet
trigger1 = 1
fv = 18
value = fVar(19)
ignorehitpause = 1






[State 4200, 5]
type = DestroySelf
trigger1 = root,Var(7) = 0



;---------------------------------------------------------------------------
; 攻撃設定部分
;---------------------------------------------------------------------------
;立ち
;-------------------------
;SWP
[State 200, 1]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 200
attr = S, NA
damage = 18, 0
animtype = Light
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 0,0
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10, -76
hitsound = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 11
guard.hittime  = 10
ground.velocity = -4
air.type = High
air.velocity = -1.2,-7.9
airguard.velocity = -1.9,-.8
air.hittime = 12
getpower = 0,0
givepower = 20,0

;SMP
[State 210, 2]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 210
attr = S, NA
animtype  = Medium
damage    = 42
guardflag = M
pausetime = 0,0
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-70
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -5.1
air.velocity = -1.8,-7.1
getpower = 0,0
givepower = 20,0

;SHP
[State 220, 2]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 220
attr = S, NA
animtype  = Heavy
damage    = 54
guardflag = M
pausetime = 0,0
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-82
hitsound   = S1,2
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -7.5
air.velocity = -1.9,-9.2
getpower = 0,0
givepower = 20,0

;SWK
[State 230, 2]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 230
attr = S, NA
animtype  = Light
damage    = 18
guardflag = M
pausetime = 0,0
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10, -20
hitsound   = S1,10
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -4
air.velocity = -1.2,-5.5
getpower = 0,0
givepower = 20,0

;SMK
[State 240, 2]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 240
attr = S, NA
animtype  = Medium
damage    = 36
guardflag = M
pausetime = 0,0
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-62
hitsound   = S1,11
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -5.2
air.velocity = -2.0,-6.6
getpower = 0,0
givepower = 20,0

;SHK
[State 250, 2]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 250
attr = S, NA
animtype  = Back
damage    = 48
guardflag = M
pausetime = 0,0
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-83
hitsound   = S1,12
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -3.2,-5.9
air.velocity = -3.15,-6.4
getpower = 0,0
givepower = 20,0
fall = 1
air.fall = 1


;-------------------------
;レバー入れ
;-------------------------
[State 300, 2]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 300
trigger2 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 310
attr = S, NA
animtype  = Medium
damage    = 33
guardflag = M
pausetime = 0,0
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-66
hitsound   = S1,11
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -4.5
air.velocity = -2.0,-6.6
getpower = 0,0
givepower = 20,0


;-------------------------
;屈み
;-------------------------
;CWP
[State 400, 2]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 400
attr = C, NA
damage    = 15
priority  = 3
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 0,0
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10,-48
hitsound   = S1,0
guardsound = S6,0
ground.type = Low
ground.slidetime = 4
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -4.4
air.velocity = -1.0,-3.0
getpower = 0,0
givepower = 20,0

;CMP
[State 410, 2]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 410
trigger2 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 415
attr = C, NA
damage    = 39
animtype  = Medium
hitflag = MAF
guardflag = M
pausetime = 0,0
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-91
hitsound   = S1,1
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -4.7
air.velocity = -1.05,-8.4
getpower = 0,0
givepower = 20,0

;CHP
[State 420, 2]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 420
attr = C, NA
damage    = 48
priority  = 3
animtype  = Heavy
hitflag = MAF
guardflag = M
pausetime = 0,0
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-42
hitsound   = S1,2
guardsound = S6,0
ground.type = Low
ground.slidetime = 4
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -2.05,-6.9
air.velocity = -2.0,-7.2
getpower = 0,0
givepower = 20,0
fall = 1
air.fall = 1

;CWK
[State 430, 2]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 430
attr = C, NA
damage    = 12
animtype  = Light
hitflag = MAF
guardflag = L
pausetime = 0,0
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10,-32
hitsound   = S1,10
guardsound = S6,0
ground.type = Low
ground.slidetime = 6
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -4.1
air.velocity = -1.05,-5.8
getpower = 0,0
givepower = 20,0

;CMK
[State 440, 3]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 440
attr = C, NA
damage    = 33
hitflag = MAF
guardflag = M
pausetime = 0,0
sparkno = S7101
guard.sparkno = S7000
sparkxy = -5,-45
hitsound   = S1,11
guardsound = S6,0
ground.type = Low
ground.slidetime = 10
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -4.4
air.velocity = -1.15,-5.5
guard.velocity = -5
getpower = 0,0
givepower = 20,0

;CSK
[State 450, 3]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 450
attr = C, NA
damage    = 45
hitflag = MAF
guardflag = L
pausetime = 0,0
sparkno = S7102
guard.sparkno = S7000
sparkxy = -5,-10
hitsound   = S1,12
guardsound = S6,0
ground.type = Trip
ground.slidetime = 10
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -0.76,-4
air.velocity = -0.63,-4.4
guard.velocity = -5
fall = 1
getpower = 0,0
givepower = 20,0


;-------------------------
;跳び
;-------------------------
;AWP
[State 600, 2]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 600
attr = A, NA
damage    = 24
guardflag = HA
priority = 3
pausetime = 0,0
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10,-58
hitsound   = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 11
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -3.2
air.velocity = -0.7,-5
getpower = 0,0
givepower = 20,0

;AWP2
[State 605, 2]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 605
attr = A, NA
damage    = 24
guardflag = HA
priority = 3
pausetime = 0,0
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10,-58
hitsound   = S1,0
guardsound = S6,0
ground.type = High
ground.slidetime = 11
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -4.1
air.velocity = -0.7,-5
getpower = 0,0
givepower = 20,0

;AMP
[State 610, 3]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 610
attr = A, NA
damage = 39
guardflag = HA
priority = 4
pausetime = 0,0
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-55
hitsound   = S1,1
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 18
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -5
air.velocity = -1,-6.1
getpower = 0,0
givepower = 20,0

;AMP2
[State 615, 3]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 615
attr = A, NA
damage = 39
guardflag = HA
priority = 4
pausetime = 0,0
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-55
hitsound   = S1,1
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 18
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -5.2
air.velocity = -1,-6.1
getpower = 0,0
givepower = 20,0

;AHP
[State 620, 3]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 620
attr = A, NA
damage = 51
guardflag = HA
priority = 4
pausetime = 0,0
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-25
hitsound   = S1,2
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 23
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -6.2
air.velocity = -1.5,-6.5
getpower = 0,0
givepower = 20,0

;AHP2
[State 625, 3]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 625
attr = A, NA
damage = 51
guardflag = HA
priority = 4
pausetime = 0,0
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-25
hitsound   = S1,2
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 23
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -6.6
air.velocity = -1.5,-6.5
getpower = 0,0
givepower = 20,0

;AWK
[State 630, 2]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 630
attr = A, NA
damage = 18
guardflag = HA
priority = 3
pausetime = 0,0
sparkno = S7100
guard.sparkno = S7000
sparkxy = -5,-65
hitsound   = S1,10
guardsound = S6,0
ground.type = High
ground.slidetime = 11
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -4.1
air.velocity = -0.7,-5
getpower = 0,0
givepower = 20,0

;AMK
[State 640, 3]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 640
attr = A, NA
damage    = 33
guardflag = HA
priority = 4
pausetime = 0,0
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-62
hitsound   = S1,11
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 18
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -5
air.velocity = -1,-6.1
getpower = 0,0
givepower = 20,0

;AMK2
[State 645, 3]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 645
attr = A, NA
damage    = 33
guardflag = HA
priority = 4
pausetime = 0,0
sparkno = S7101
guard.sparkno = S7000
sparkxy = -10,-62
hitsound   = S1,11
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 18
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -5.2
air.velocity = -1,-6.2
getpower = 0,0
givepower = 20,0

;AHK
[State 650, 3]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 650
attr = A, NA
damage    = 51
guardflag = HA
priority = 4
pausetime = 0,0
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-48
hitsound   = S1,12
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 23
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -6.6
air.velocity = -2.1,-6.5
getpower = 0,0
givepower = 20,0

;AHK2
[State 655, 3]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 655
attr = A, NA
damage    = 51
guardflag = HA
priority = 4
pausetime = 0,0
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-30
hitsound   = S1,12
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 23
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -6.3
air.velocity = -1.6,-6.2
getpower = 0,0
givepower = 20,0

;BodyPress
[State 660, 3]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 660
attr = A, NA
damage    = 51
guardflag = HA
priority = 4
pausetime = 0,0
sparkno = S7102
guard.sparkno = S7000
sparkxy = -10,-40
hitsound   = S1,2
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 23
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -6.1
air.velocity = -1.5,-6
getpower = 0,0
givepower = 20,0

;KneeDrop
[State 670, 3]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 670
attr = A, NA
damage    = 18
guardflag = HA
priority = 4
pausetime = 0,0
sparkno = S7100
guard.sparkno = S7000
sparkxy = -10,-40
hitsound   = S1,10
guardsound = S6,0
animtype = Med
ground.type = High
ground.slidetime = 11
ground.hittime = 11
guard.hittime  = 10
ground.velocity = -4
air.velocity = -1.15,-5
getpower = 0,0
givepower = 20,0


;-------------------------
;フライングピーチ
;-------------------------
;W.Peach
[State 1000, 6]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 1001
trigger2 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 1051
attr = A, SA
animtype  = Back
damage    = 48, 6
priority  = 5
guardflag = MA
pausetime = 0,0
guard.sparkno = S7001
sparkno = S7200
sparkxy = 0,-40
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2.45,-5.7
air.velocity = -2.2,-4.7
guard.hittime  = 12
fall = 1
air.fall = 1
getpower = 0,0
givepower = 20,0

;M.Peach
[State 1010, 7]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 1011
trigger2 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 1061
attr = A, SA
animtype  = Back
damage    = 51, 6
priority  = 5
guardflag = MA
pausetime = 0,0
guard.sparkno = S7001
sparkno = S7200
sparkxy = 0,-40
hitsound   = S1,13
guardsound = S6,0
ground.type = High
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2.5,-5.7
air.velocity = -2.25,-4.7
guard.hittime  = 13
fall = 1
air.fall = 1
getpower = 0,0
givepower = 20,0

;H.Peach
[State 1020, 6]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 1021
trigger2 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = 1071
attr = A, SA
animtype  = Back
damage    = 54, 7
getpower  = 0
priority  = 5
guardflag = MA
pausetime = 0,0
guard.sparkno = S7001
sparkno = S7200
sparkxy = 0,-40
hitsound   = S1,13
guardsound = S6,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2.55,-5.7
air.velocity = -2.3,-4.7
guard.hittime  = 13
fall = 1
air.fall = 1
getpower = 0,0
givepower = 20,0

;-------------------------
;当たらないように
;-------------------------
;Empty
[State 1300, 6]
type = HitDef
trigger1 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = [1200,1399]
trigger2 =  (Var(0) - (floor(Var(0) / 1000000) * 1000000)) = [780,899]
attr = A, NT
animtype  = Back
damage    = 0, 0
getpower  = 0
priority  = 5
hitflag = 
getpower = 0,0
givepower = 0,0

