;-| Button Remapping |-----------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------
[Command]
name = "QCF_x"     ;Required (do not remove)
command = D, DF, F, x
time = 16

[Command]
name = "QCF_x"     ;Required (do not remove)
command = D, DF, F, a
time = 16

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
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

[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;Baby's Last Breat
[State -1, Taunt]
type = ChangeState
value = 1100
triggerall = Command = "QCF_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = StateNo = [200,250] 
trigger2 = AnimElemNo(0) <= 2

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Cane Jab
[State -1, Taunt]
type = ChangeState
value = 220 + (15*(Command = "holdfwd")*(Command != "holddown")) + (17*(Command = "holdfwd")*(Command = "holddown"))
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "x"
trigger2 = command = "a"

;---------------------------------------------------------------------------
;Upper Cane
;’§”­
[State -1, Taunt]
type = ChangeState
value = 230
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "y"
trigger2 = command = "b"

;---------------------------------------------------------------------------
;Upper Cane Smash
;’§”­
[State -1, Taunt]
type = ChangeState
value = 240 + (5*(Command = "holdfwd")*(Command != "holddown")) + (7*(Command = "holdfwd")*(Command = "holddown"))
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "z"
trigger2 = command = "c"