
[Statedef 7000] ;foto cara mal
type     = A
movetype = I
physics  = N
ctrl     = 0
anim     = parent,var(16)
SprPriority = -5
velSet = 3,7


[State ex, Vel]
type = VelSet
trigger1 = time = 25 
X = 0
Y = 0


[State ex, Vel]
type = VelSet
trigger1 = time = 40 
X = -7
Y = 0

[State ex, chang]
type = ChangeAnim
trigger1 = time = 35 
value = (parent,var(16)) + 1


[State ex, Var]
type = VarAdd
trigger1 = time > 35
fv = 9
value = 0.01
ignoreHitPause = 1
persistent = 1


[State ex, Cor]
type = Palfx
trigger1 = time > 35
add = ceil(-fvar(9)*1000), ceil(-fvar(9)*1000), ceil(-fvar(9)*1000)
time = 1
ignoreHitPause = 1
 persistent = 1


[State ex, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1
persistent = 1


[State ex, destroy]
type = DestroySelf
trigger1 = Time = 120

