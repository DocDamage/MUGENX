;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "recovery"
command = c
time = 1

[Command]
name = "charge"
command = y+b
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[command]
name="fwd"
command=F
time=1

[command]
name="back"
command=B
time=1

[command]
name="up"
command=U
time=1

[command]
name="down"
command=D
time=1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_z"
command = /$z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownfwd";Required (do not remove)
command = /$DF
time = 1

[Command]
name = "longjump"
command = ~D, $U
time = 11


;=====================================================================================================================================================================================================================================================================
;AI
;=====================================================================================================================================================================================================================================================================

[Statedef -1]

[State -1,]
type = ChangeState
value = 90000
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,]
type = ChangeState
value = 90001
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,]
type = ChangeState
value = 90002
triggerall = command = "c"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,]
type = ChangeState
value = 90003
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,]
type = ChangeState
value = 90004
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,]
type = ChangeState
value = 90005
triggerall = command = "z"
trigger1 = statetype = S
trigger1 = ctrl