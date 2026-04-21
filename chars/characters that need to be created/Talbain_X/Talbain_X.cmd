
[Command]
name = "high_jump"
command = $D, $U
time = 10

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "special_1"
command = ~D, DF, F, x
time = 15

[Command]
name = "special_2"
command = ~D, DB, B, y
time = 15

[Command]
name = "super_1"
command = ~D, DF, F, D, DF, F, x
time = 30

; --- AI LOGIC ---
[Statedef -1]

[State -1, Special 1 (Bite)]
type = ChangeState
value = 1000
triggerall = command = "special_1"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Special 2 (Howl)]
type = ChangeState
value = 1100
triggerall = command = "special_2"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Super (RollingAttack)]
type = ChangeState
value = 3000
triggerall = command = "super_1"
trigger1 = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
