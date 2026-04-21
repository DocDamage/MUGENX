;-| Super Motions |--------------------------------------------------------
[Command]
name = "hcf_bc"
command = B, D, F, b+c
time = 45

[Command]
name = "hcf_bc"
command = ~D, DB, B, b+c
time = 45

[Command]
name = "fhcf_c"
command = F, B, D, F, c
time = 45

[Command]
name = "fhcf_c"
command = D, B, D, B, c
time = 45

;-| Special Motions |------------------------------------------------------
[Command]
name = "qcf_a"
command = ~D, DF, F, a
time = 20

[Command]
name = "qcf_c"
command = ~D, DF, F, c
time = 20

[Command]
name = "qcb_a"
command = ~D, DB, B, a
time = 20

[Command]
name = "qcb_b"
command = ~D, DB, B, b
time = 20

[Command]
name = "qcb_c"
command = ~D, DB, B, c
time = 20

[Command]
name = "hcb_b"
command = F, D, B, b
time = 20

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 12

[Command]
name = "BB"
command = B, B
time = 12

[Command]
name = "longjump"
command = $D, $U
time = 18

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = a+b
time = 1
[Command]
name = "recovery2"
command = a+b
time = 1
[Command]
name = "recovery3"
command = a+b
time = 1

;-| Hold Button |-----------------------------------------------------------
[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "back_x"
command = /B,x
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

[Command]
name = "back_z"
command = /B,z
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

;-| Single Button |---------------------------------------
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
name = "s"
command = s
time = 1

;-| Hold Dir |--------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

;---------------------------------------------------------
; Commands
[Statedef -1]

;-| Basic Movements |-------------------------------------

; Run Foward
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1


; Hop Backward
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1


; Taunt
[State -1]
type = ChangeState
value = 195
trigger1 = command = "s"
;trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1


;-| DM/SDM |----------------------------------------------

; Final Impact
[State -1]
type = ChangeState
value = 2015
trigger1 = power >= 2000
trigger1 = command = "qcb_c"
trigger1 = stateno = 1021
trigger1 = movehit


; S. Power
[State -1]
type = ChangeState
value = 2000
trigger1 = command = "hcf_bc"
trigger1 = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl = 1


; P. Power
[State -1]
type = ChangeState
value = 2010
triggerall = command = "fhcf_c"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger4 = hitcount >= 2
trigger5 = stateno = 235
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact


;-| Special |---------------------------------------------

; S. TOL
[State -1]
type = ChangeState
value = 1040
triggerall = command = "hcb_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger4 = hitcount >= 2
trigger5 = stateno = 235
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact


; Divergence (Combo In)
[State -1]
type = ChangeState
value = 1001
triggerall = command = "qcf_c"
trigger1 = stateno = 200
trigger1 = movecontact
trigger2 = stateno = 205
trigger2 = movecontact
trigger3 = stateno = 215
trigger3 = movecontact
trigger3 = hitcount >= 2
trigger4 = stateno = 235
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact


; Divergence
[State -1]
type = ChangeState
value = 1000
triggerall = command = "qcf_c"
trigger1 = statetype = S
trigger1 = ctrl = 1


; Augmenter Wing
[State -1]
type = ChangeState
value = 1010
triggerall = command = "qcf_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger4 = hitcount >= 2
trigger5 = stateno = 235
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact


; Critical Wing (Strong)
[State -1]
type = ChangeState
value = 1020
triggerall = command = "qcb_c"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger4 = hitcount >= 2
trigger5 = stateno = 235
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact


; Critical Wing (Light)
[State -1]
type = ChangeState
value = 1021
triggerall = command = "qcb_a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger4 = hitcount >= 2
trigger5 = stateno = 235
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact


; Mayday! Mayday!
[State -1]
type = ChangeState
value = 1030
trigger1 = command = "qcb_b"
trigger1 = statetype = A
trigger1 = ctrl = 1


;-| Attacks |---------------------------------------------

; Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = time > 7


; Light Punch (Running)
[State -1]
type = ChangeState
value = 205
trigger1 = command = "a"
trigger1 = stateno = 100
trigger1 = animelem = 2, >=0


; Hard Punch
[State -1]
type = ChangeState
value = 210
triggerall = command = "c"
triggerall = P2bodydist X > 23
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 100
trigger2 = animelem = 2, >=0


; Hard Punch (Close)
[State -1]
type = ChangeState
value = 215
triggerall = command = "c"
triggerall = P2bodydist X <= 23
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 100
trigger2 = animelem = 2, >=0


; Light Kick (Forward)
[State -1]
type = ChangeState
value = 235
triggerall = command = "fwd_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 100
trigger2 = animelem = 2, >=0


; Light Kick
;[State -1]
;type = ChangeState
;value = 230
;trigger1 = command = "b"
;trigger1 = statetype = S
;trigger1 = ctrl = 1


; Hard Kick (Backward)
[State -1]
type = ChangeState
value = 245
trigger1 = command = "back_b"
trigger1 = statetype = S
trigger1 = ctrl = 1


; Hard Kick
[State -1]
type = ChangeState
value = 240
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 100
trigger2 = animelem = 2, >=0


; Light Punch (Crouch)
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = command = "holddown"
trigger2 = stateno = 200
trigger3 = time > 6
trigger3 = command = "holddown"
trigger3 = stateno = 400
trigger3 = time > 6


; Hard Punch (Crouch)
[State -1]
type = ChangeState
value = 410
triggerall = command = "c"
trigger1 = statetype = C
trigger1 = ctrl = 1


; Light Kick (Crouch)
[State -1]
type = ChangeState
value = 430
triggerall = command = "b"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = command = "holddown"
trigger2 = stateno = 200
trigger2 = time > 6


; Light Punch (Air)
[State -1]
type = ChangeState
value = 600
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1


; Hard Punch (Air)
[State -1]
type = ChangeState
value = 610
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = vel x = 0


; Hard Kick (Air)
[State -1]
type = ChangeState
value = 615
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = vel x != 0


; Light Kick (Air)
[State -1]
type = ChangeState
value = 630
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = vel x = 0


; Light Kick (Air2)
[State -1]
type = ChangeState
value = 635
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = vel x != 0
