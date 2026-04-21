;-------------------- block atak - reversal Aereo
[Statedef 920] 
type    = A
movetype= A
physics = A
juggle  = 2
ctrl = 0
anim = 920
sprpriority = 2


[State 920, 0]
type = VarSet
trigger1 = 1
v = 10
value = 47


[State 900, Segura]
type = reversaldef
trigger1 = Time= 0
reversal.attr = SCA, HA, SA, NA, HP, SP, NP, AP, AA
P1StateNo = 921
pausetime  = 16
sparkno    = -1
hitsound   = s10,0

[State 900, rebater]
type = hitoverride
trigger1 = Time >= 0
attr = SCA, HA, SA, NA, HP, SP, NP, AP, AA
stateno = 921
IgnoreHitPause = 1
time = 1


[State 901, Transparent]
type = Explod
trigger1 = Time = 4
anim = 922
postype = p1
pos = -2,2
scale = 1.1,1
sprpriority = 7
supermovetime = 666
pausemovetime = 666
bindtime = 12
ownpal = 1
velocity = .1
ignorehitpause = 1


[State 900, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 50
ctrl = 1


[Statedef 921]
type = A
movetype = I
physics = N
juggle  = 2
poweradd= 20
ctrl = 0
anim = 921
sprpriority = 2


[State -3, treme]
type = PlaySnd
trigger1 = time = 2
value = 1000,14


[State 620, 1]
type = VelMul
trigger1 = time = 0
x = .15
y = .15

[State 620, 2]
type = VelAdd
trigger1 = time = 0
trigger1 = Vel Y = [-.08,.08]
y = ifelse(Vel Y <= 0, .08, -.08)


[State 620, 3]
type = VelSet
trigger1 = Pos Y >= 4
y = 0


[State 620, 1]
type = VelMul
trigger1 = time = 30
x = 0
y = 0

[State 620, 2]
type = VelAdd
trigger1 = time >= 25 && timeMod = 5,1
y = 1

[State 901, 1]
type = Pause
trigger1 = time = 0
time = 20
movetime = 20
IgnoreHitPause = 1


[State 901, 2]
type = PlayerPush
trigger1 = 1
value = 1


[State 100, 666] ;pisca tela na explosao
type = EnvColor
trigger1 = time = 0
value = 50,50,255
time = 1
under = 0

[State 901, ctrl]
type = ctrlSet
trigger1 = Time > 6
value = 1


[State 901, Change]
type = ChangeState
Trigger1 = AnimTime = 0
value = 50
ctrl = 1




;-------------------- block atak - reversal baixo
[Statedef 910] 
type     = C
physics  = N
movetype = I
ctrl     = 0
anim     = 910


[State 900, Segura]
type = reversaldef
trigger1 = Time = 0
reversal.attr = SCA, HA, SA, NA, HP, SP, NP, AP, AA
P1StateNo = 911
pausetime  = 16
sparkno    = -1
hitsound  = s10,0

[State 900, rebater]
type = hitoverride
trigger1 = Time >= 0
attr = SCA, HA, SA, NA, HP, SP, NP, AP, AA
stateno = 911
IgnoreHitPause = 1
time = 1


[State 901, Transparent]
type = Explod
trigger1 = Time = 4
anim = 912
postype = p1
pos = -2,2
scale = 1.1,1
sprpriority = 7
supermovetime = 666
pausemovetime = 666
bindtime = 1
ownpal = 1
velocity = .2,-.2
ignorehitpause = 1


[State 900, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1


[Statedef 911]
type     = C
physics  = N
movetype = A
poweradd = 30
anim     = 911
ctrl = 0

[State -3, treme]
type = PlaySnd
trigger1 = time = 2
value = 1000,14


[State 901, 1]
type = Pause
trigger1 = time = 0
time = 20
movetime = 20
IgnoreHitPause = 1


[State 901, 2]
type = PlayerPush
trigger1 = 1
value = 1

[State 100, 666] ;pisca tela na explosao
type = EnvColor
trigger1 = time = 0
value = 50,50,255
time = 1
under = 0

[State 901, ctrl]
type = ctrlSet
trigger1 = Time > 5
value = 1


[State 901, Change]
type = ChangeState
Trigger1 = AnimTime = 0
value = 11
ctrl = 1



;-------------------- block atak - reversal em pe
[Statedef 900] 
type     = S
physics  = S
movetype = I
ctrl     = 0
anim     = 900


[State 900, Segura]
type = reversaldef
trigger1 = Time = 0
reversal.attr = SCA, HA, SA, NA, HP, SP, NP, AP, AA
P1StateNo = 701
pausetime  = 16
sparkno    = -1
hitsound  = s10,0

[State 900, rebater]
type = hitoverride
trigger1 = Time >= 0
attr = SCA, HA, SA, NA, HP, SP, NP, AP, AA
stateno = 901
IgnoreHitPause = 1
time = 1


[State 901, Transparent]
type = Explod
trigger1 = Time = 4
anim = 902
postype = p1
pos = -2,2
scale = 1.1,1
sprpriority = 7
supermovetime = 666
pausemovetime = 666
bindtime = 1
ownpal = 1
velocity = .2,-.2
ignorehitpause = 1


[State 900, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


[Statedef 901]
type     = S
physics  = N
movetype = A
poweradd = 30
anim     = 901
ctrl = 0

[State -3, treme]
type = PlaySnd
trigger1 = time = 2
value = 1000,14


[State 901, 1]
type = Pause
trigger1 = time = 0
time = 20
movetime = 20
IgnoreHitPause = 1


[State 901, 2]
type = PlayerPush
trigger1 = 1
value = 1


[State 100, 666] ;pisca tela na explosao
type = EnvColor
trigger1 = time = 0
value = 50,50,255
time = 1
under = 0


[State 901, ctrl]
type = ctrlSet
trigger1 = Time > 6
value = 1


[State 901, Change]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

