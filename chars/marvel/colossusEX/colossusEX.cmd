;//=========================
;//Colossus's command file
;//=========================
;//Created By Loki

;-| Super Motions |--------------------------------------------------------

[Command]
name = "Torpedo"
command = D, DF, F, a+b+c

[Command]
name = "Secret"
command = D, DF, F, x+y+z

;-| Special Motions |------------------------------------------------------

[Command]
name = "Dash_A"
command = D, DF, F, a

[Command]
name = "Dash_B"
command = D, DF, F, b

[Command]
name = "Dash_C"
command = D, DF, F, c

[Command]
name = "Catch_X"
command = D, DF, F, x

[Command]
name = "Catch_Y"
command = D, DF, F, y

[Command]
name = "Catch_Z"
command = D, DF, F, z

[Command]
name = "Armor"
command = D, DB, B, z+y+z


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "DU"
command = D, U
time = 10

[Command]
name = "DUF"
command = D, UF
time = 10

[Command]
name = "DUB"
command = D, UB
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "dash"
command = x+y+z
time = 1

[Command]
name = "abc"
command = a+b+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "down_z"
command = /$D,z
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

[Command]
name = "F"
command = F
time = 1

[Command]
name = "B"
command = B
time = 1

[Command]
name = "U"
command = U
time = 1

[Command]
name = "D"
command = D
time = 1

[Command]
name = "UF"
command = UF
time = 1

[Command]
name = "UB"
command = UB
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

;-| Hold Button |-----------------------------------------------------------
[Command]
name = "hold_x"
command = /x

[Command]
name = "hold_y"
command = /y

[Command]
name = "hold_z"
command = /z

[Command]
name = "hold_a"
command = /a

[Command]
name = "hold_b"
command = /b

[Command]
name = "hold_c"
command = /c

;-| CPU Commands |----------------------------------------------------------------

[Command]
name = "cpu"
command = F, F
time = 0

[Command]
name = "cpu"
command = F, B
time = 0

[Command]
name = "cpu"
command = F, U
time = 0

[Command]
name = "cpu"
command = F, D
time = 0

[Command]
name = "cpu"
command = F, x
time = 0

[Command]
name = "cpu"
command = F, y
time = 0

[Command]
name = "cpu"
command = F, z
time = 0

[Command]
name = "cpu"
command = F, a
time = 0

[Command]
name = "cpu"
command = F, b
time = 0

[Command]
name = "cpu"
command = F, c
time = 0

[Command]
name = "cpu"
command = F, s
time = 0

[Command]
name = "cpu"
command = B, F
time = 0

[Command]
name = "cpu"
command = B, B
time = 0

[Command]
name = "cpu"
command = B, U
time = 0

[Command]
name = "cpu"
command = B, D
time = 0

[Command]
name = "cpu"
command = B, x
time = 0

[Command]
name = "cpu"
command = B, y
time = 0

[Command]
name = "cpu"
command = B, z
time = 0

[Command]
name = "cpu"
command = B, a
time = 0

[Command]
name = "cpu"
command = B, b
time = 0

[Command]
name = "cpu"
command = B, c
time = 0

[Command]
name = "cpu"
command = B, s
time = 0

[Command]
name = "cpu"
command = U, F
time = 0

[Command]
name = "cpu"
command = U, B
time = 0

[Command]
name = "cpu"
command = U, U
time = 0

[Command]
name = "cpu"
command = U, D
time = 0

[Command]
name = "cpu"
command = U, x
time = 0

[Command]
name = "cpu"
command = U, y
time = 0

[Command]
name = "cpu"
command = U, z
time = 0

[Command]
name = "cpu"
command = U, a
time = 0

[Command]
name = "cpu"
command = U, b
time = 0

[Command]
name = "cpu"
command = U, c
time = 0

[Command]
name = "cpu"
command = U, s
time = 0

[Command]
name = "cpu"
command = D, F
time = 0

[Command]
name = "cpu"
command = D, B
time = 0

[Command]
name = "cpu"
command = D, U
time = 0

[Command]
name = "cpu"
command = D, D
time = 0

[Command]
name = "cpu"
command = D, x
time = 0

[Command]
name = "cpu"
command = D, y
time = 0

[Command]
name = "cpu"
command = D, z
time = 0

[Command]
name = "cpu"
command = D, a
time = 0

[Command]
name = "cpu"
command = D, b
time = 0

[Command]
name = "cpu"
command = D, c
time = 0

[Command]
name = "cpu"
command = D, s
time = 0

[Command]
name = "cpu"
command = x, F
time = 0

[Command]
name = "cpu"
command = x, B
time = 0

[Command]
name = "cpu"
command = x, U
time = 0

[Command]
name = "cpu"
command = x, D
time = 0

[Command]
name = "cpu"
command = x, x
time = 0

[Command]
name = "cpu"
command = x, y
time = 0

[Command]
name = "cpu"
command = x, z
time = 0

[Command]
name = "cpu"
command = x, a
time = 0

[Command]
name = "cpu"
command = x, b
time = 0

[Command]
name = "cpu"
command = x, c
time = 0

[Command]
name = "cpu"
command = x, s
time = 0

[Command]
name = "cpu"
command = y, F
time = 0

[Command]
name = "cpu"
command = y, B
time = 0

[Command]
name = "cpu"
command = y, U
time = 0

[Command]
name = "cpu"
command = y, D
time = 0

[Command]
name = "cpu"
command = y, x
time = 0

[Command]
name = "cpu"
command = y, y
time = 0

[Command]
name = "cpu"
command = y, z
time = 0

[Command]
name = "cpu"
command = y, a
time = 0

[Command]
name = "cpu"
command = y, b
time = 0

[Command]
name = "cpu"
command = y, c
time = 0

[Command]
name = "cpu"
command = y, s
time = 0

[Command]
name = "cpu"
command = z, F
time = 0

[Command]
name = "cpu"
command = z, B
time = 0

[Command]
name = "cpu"
command = z, U
time = 0

[Command]
name = "cpu"
command = z, D
time = 0

[Command]
name = "cpu"
command = z, x
time = 0

[Command]
name = "cpu"
command = z, y
time = 0

[Command]
name = "cpu"
command = z, z
time = 0

[Command]
name = "cpu"
command = z, a
time = 0

[Command]
name = "cpu"
command = z, b
time = 0

[Command]
name = "cpu"
command = z, c
time = 0

[Command]
name = "cpu"
command = z, s
time = 0

[Command]
name = "cpu"
command = a, F
time = 0

[Command]
name = "cpu"
command = a, B
time = 0

[Command]
name = "cpu"
command = a, U
time = 0

[Command]
name = "cpu"
command = a, D
time = 0

[Command]
name = "cpu"
command = a, x
time = 0

[Command]
name = "cpu"
command = a, y
time = 0

[Command]
name = "cpu"
command = a, z
time = 0

[Command]
name = "cpu"
command = a, a
time = 0

[Command]
name = "cpu"
command = a, b
time = 0

[Command]
name = "cpu"
command = a, c
time = 0

[Command]
name = "cpu"
command = a, s
time = 0

[Command]
name = "cpu"
command = b, F
time = 0

[Command]
name = "cpu"
command = b, B
time = 0

[Command]
name = "cpu"
command = b, U
time = 0

[Command]
name = "cpu"
command = b, D
time = 0

[Command]
name = "cpu"
command = b, x
time = 0

[Command]
name = "cpu"
command = b, y
time = 0

[Command]
name = "cpu"
command = b, z
time = 0

[Command]
name = "cpu"
command = b, a
time = 0

[Command]
name = "cpu"
command = b, b
time = 0

[Command]
name = "cpu"
command = b, c
time = 0

[Command]
name = "cpu"
command = b, s
time = 0

[Command]
name = "cpu"
command = c, F
time = 0

[Command]
name = "cpu"
command = c, B
time = 0

[Command]
name = "cpu"
command = c, U
time = 0

[Command]
name = "cpu"
command = c, D
time = 0

[Command]
name = "cpu"
command = c, x
time = 0

[Command]
name = "cpu"
command = c, y
time = 0

[Command]
name = "cpu"
command = c, z
time = 0

[Command]
name = "cpu"
command = c, a
time = 0

[Command]
name = "cpu"
command = c, b
time = 0

[Command]
name = "cpu"
command = c, c
time = 0

[Command]
name = "cpu"
command = c, s
time = 0

[Command]
name = "cpu"
command = s, F
time = 0

[Command]
name = "cpu"
command = s, B
time = 0

[Command]
name = "cpu"
command = s, U
time = 0

[Command]
name = "cpu"
command = s, D
time = 0

[Command]
name = "cpu"
command = s, x
time = 0

[Command]
name = "cpu"
command = s, y
time = 0

[Command]
name = "cpu"
command = s, z
time = 0

[Command]
name = "cpu"
command = s, a
time = 0

[Command]
name = "cpu"
command = s, b
time = 0

[Command]
name = "cpu"
command = s, c
time = 0

[Command]
name = "cpu"
command = s, s
time = 0

[Statedef -1]

;-| AI |--------------------------------------------------------------------------

[State -1, AI Deactivator]
type = varset
var(5) = 0
trigger1 = roundstate = [3, 4]

;-| Specials |--------------------------------------------------------------------

; Secret
[State -1, Dash Attack]
type = changestate
value = 3700
triggerall = var(5) = 0
triggerall = command = "Secret"
triggerall = statetype = S
triggerall = power >= 3000
triggerall = life <= 200
trigger1 = ctrl

; Super Torpedo
[State -1, Dash Attack]
type = changestate
value = 3000
triggerall = var(5) = 0
triggerall = command = "Torpedo"
triggerall = statetype = S
triggerall = power >= 1000
trigger1 = ctrl

; Super Torpedo Air
[State -1, Dash Attack]
type = changestate
value = 3000
triggerall = var(5) = 0
triggerall = command = "Torpedo"
triggerall = statetype = A
trigger1 = ctrl

;Dash Attack A
[State -1, Dash Attack]
type = changestate
value = 1000
triggerall = var(5) = 0
triggerall = command = "Dash_A"
triggerall = statetype = S
trigger1 = ctrl

;Dash Attack B
[State -1, Dash Attack]
type = changestate
value = 1100
triggerall = var(5) = 0
triggerall = command = "Dash_B"
triggerall = statetype = S
trigger1 = ctrl

;Dash Attack C
[State -1, Dash Attack]
type = changestate
value = 1200
triggerall = var(5) = 0
triggerall = command = "Dash_C"
triggerall = statetype = S
trigger1 = ctrl

; Catch Attack X
[State -1, Dash Attack]
type = changestate
value = 1500
triggerall = var(5) = 0
triggerall = command = "Catch_X"
triggerall = statetype = S
trigger1 = ctrl

; Catch Attack Y
[State -1, Dash Attack]
type = changestate
value = 1510
triggerall = var(5) = 0
triggerall = command = "Catch_Y"
triggerall = statetype = S
trigger1 = ctrl

; Catch Attack Z
[State -1, Dash Attack]
type = changestate
value = 1520
triggerall = var(5) = 0
triggerall = command = "Catch_Z"
triggerall = statetype = S
trigger1 = ctrl

; Armor
[State -1, Dash Attack]
type = changestate
value = 1060
triggerall = var(5) = 0
triggerall = command = "Armor"
triggerall = statetype = S
triggerall = power >= 1000
trigger1 = ctrl

;-| Dashes |----------------------------------------------------------------------

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(5) = 0
triggerall = command = "BB" 
triggerall = stateno != [100, 101]
triggerall = statetype = S
trigger1 = ctrl

;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(5) = 0
triggerall = command = "FF" 
triggerall = stateno != [100, 101]
triggerall = statetype = S
trigger1 = ctrl


;-| Super Jump |------------------------------------------------------------------

;Super Jump
[State -1, Super Jump]
type = changestate
value = 41
triggerall = var(5) = 0
triggerall = statetype = S
trigger1 = command = "DU" || command = "abc" || command = "DUF" || command = "DUB"
trigger1 = ctrl
trigger2 = command = "holdup" || command = "U"
trigger2 = stateno = 210
trigger2 = movehit = 1

;-| Throws |----------------------------------------------------------------------
;Throw
[State -1, Throw]
type = changestate
value = 700
triggerall = var(5) = 0
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = statetype = S
triggerall = p2statetype != A
triggerall = p2dist x = [0, 100]
trigger1 = ctrl

;Throw 2
[State -1, Throw 2]
type =  changestate
value = 710
triggerall = var(5) = 0
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = statetype = S
triggerall = p2statetype != A
triggerall = p2dist x = [0, 100]
trigger1 = ctrl

;-| Moves |-----------------------------------------------------------------------
;Strong Punch 2 Close
[State -1, Strong Punch 2]
type = changestate
value = 221
triggerall = var(5) = 0
triggerall = command = "fwd_z"
triggerall = statetype = S
trigger1 = ctrl

;A Strong Punch 2 Hammer
[State -1, A Strong Punch 2]
type = changestate
value = 621
triggerall = var(5) = 0
triggerall = command = "down_z"
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl

;Weak Punch
[State -1, Weak Punch]
type = changestate
value = 200
triggerall = var(5) = 0
triggerall = command = "x"
triggerall = statetype = S
trigger1 = ctrl

;Medium Punch
[State -1, Medium Punch]
type = changestate
value = 210
triggerall = var(5) = 0
triggerall = command = "y"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1

Strong Punch
[State -1, Strong Punch]
type = changestate
value = 220
triggerall = var(5) = 0
triggerall = command = "z"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1

;Weak Kick
[State -1, Weak Kick]
type = changestate
value = 230
triggerall = var(5) = 0
triggerall = command = "a"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1

;Medium Kick
[State -1, Medium Kick]
type = changestate
value = 240
triggerall = var(5) = 0
triggerall = command = "b"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 200
trigger3 = movecontact = 1
trigger4 = stateno = 230
trigger4 = movecontact = 1

;Strong Kick
[State -1, Strong Kick]
type = changestate
value = 250
triggerall = var(5) = 0
triggerall = command = "c"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 240
trigger4 = movecontact = 1

;C Weak Punch
[State -1, C Weak Punch]
type = changestate
value = 400
triggerall = var(5) = 0
triggerall = command = "x"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = movecontact = 1

;C Medium Punch
[State -1, C Medium Punch]
type = changestate
value = 410
triggerall = var(5) = 0
triggerall = command = "y"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 430
trigger3 = movecontact = 1
trigger4 = stateno = 440
trigger4 = movecontact = 1

;C Strong Punch
[State -1, C Strong Punch]
type = changestate
value = 420
triggerall = var(5) = 0
triggerall = command = "z"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 410
trigger3 = movecontact = 1
trigger4 = stateno = 430
trigger4 = movecontact = 1
trigger5 = stateno = 440
trigger5 = movecontact = 1

;C Weak Kick
[State -1, C Weak Kick]
type = changestate
value = 430
triggerall = var(5) = 0
triggerall = command = "a"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1

;C Medium Kick
[State -1, C Medium Kick]
type = changestate
value = 440
triggerall = var(5) = 0
triggerall = command = "b"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact = 1
trigger3 = stateno = 410
trigger3 = movecontact = 1
trigger4 = stateno = 430
trigger4 = movecontact = 1

;C Strong Kick
[State -1, C Strong Kick]
type = changestate
value = 450
triggerall = var(5) = 0
triggerall = command = "c"
triggerall = statetype = C
trigger1 = ctrl

;A Weak Punch
[State -1, A Weak Punch]
type = changestate
value = 600
triggerall = var(5) = 0
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 630
trigger2 = movecontact = 1

;A Medium Punch
[State -1, A Medium Punch]
type = changestate
value = 610
triggerall = var(5) = 0
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 630
trigger3 = movecontact = 1
trigger4 = stateno = 640
trigger4 = movecontact = 1

;A Strong Punch
[State -1, A Strong Punch]
type = changestate
value = 620
triggerall = var(5) = 0
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 630
trigger4 = movecontact = 1
trigger5 = stateno = 640
trigger5 = movecontact = 1
trigger6 = stateno = 650
trigger6 = movecontact = 1

;A Weak Kick
[State -1, A Weak Kick]
type = changestate
value = 630
triggerall = var(5) = 0
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1

;A Medium Kick
[State -1, A Medium Kick]
type = changestate
value = 640
triggerall = var(5) = 0
triggerall = command = "b" 
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 630
trigger4 = movecontact = 1

;A Strong Kick
[State -1, A Strong Kick]
type = changestate
value = 650
triggerall = var(5) = 0
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact = 1
trigger3 = stateno = 610
trigger3 = movecontact = 1
trigger4 = stateno = 620
trigger4 = movecontact = 1
trigger5 = stateno = 630
trigger5 = movecontact = 1
trigger6 = stateno = 640
trigger6 = movecontact = 1

[State -1, P2AirCombo VelSet]
type = null;targetvelset
x = 0
y = vel y
triggerall = movecontact = 1
triggerall = p2statetype = A
triggerall = p2stateno != 5050
triggerall = prevstateno = [600, 650]
trigger1 = stateno = 600
trigger2 = stateno = 630
trigger3 = stateno = 640

;-| Misc |------------------------------------------------------------------------

[State -1, Taunt]
type = changestate
value = 195
triggerall = var(5) = 0
triggerall = command = "start"
triggerall = statetype = S
trigger1 = ctrl

[State -1, Dizzy Add]
type = varadd
var(0) = (gethitvar(animtype) + 1) * 3
trigger1 = movetype = H
trigger1 = stateno != 5050
trigger1 = stateno != 5110
trigger1 = stateno != 5300
trigger1 = anim != 5300
ignorehitpause = 1

[State -1, Dizzy Set]
type = varset
var(0) = 0
trigger1 = var(0) < 0

[State -1, Dizzy Minus]
type = varadd
var(0) = -3
trigger1 = var(0) > 0
trigger1 = var(0) < 2400
trigger1 = movetype != H