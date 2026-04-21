;-| AI |--------------------------------------------------------
[command]
name = "ai1"
command = U, F, D, B, U, F, D, B, a
time = 0

[command]
name = "ai2"
command = U, F, D, B, U, F, D, B, b
time = 0

[command]
name = "ai3"
command = U, F, D, B, U, F, D, B, c
time = 0

[command]
name = "ai4"
command = U, F, D, B, U, F, D, B, x
time = 0

[command]
name = "ai5"
command = U, F, D, B, U, F, D, B, y
time = 0

[command]
name = "ai6"
command = U, F, D, B, U, F, D, B, z
time = 0

[command]
name = "ai7"
command = U, F, D, B, U, F, D, B, s
time = 0

[command]
name = "ai8"
command = U, B, D, F, U, B, D, F, a
time = 0

[command]
name = "ai9"
command = U, B, D, F, U, B, D, F, b
time = 0

[command]
name = "ai10"
command = U, B, D, F, U, B, D, F, c
time = 0

[command]
name = "ai11"
command = U, B, D, F, U, B, D, F, x
time = 0

[command]
name = "ai12"
command = U, B, D, F, U, B, D, F, y
time = 0

[command]
name = "ai13"
command = U, B, D, F, U, B, D, F, z
time = 0

[command]
name = "ai14"
command = U, B, D, F, U, B, D, F, s
time = 0

[command]
name = "ai15"
command = a, a, a, a, a
time = 0

[command]
name = "ai16"
command = b, b, b, b, b
time = 0

[command]
name = "ai17"
command = c, c, c, c, c
time = 0

[command]
name = "ai18"
command = x, x, x, x, x
time = 0

[command]
name = "ai19"
command = y, y, y, y, y
time = 0

[command]
name = "ai20"
command = z, z, z, z, z
time = 0

[command]
name = "ai21"
command = s, s, s, s, s
time = 0

[command]
name = "ai22"
command = U, U, U, U, U
time = 0

[command]
name = "ai23"
command = D, D, D, D, D
time = 0

[command]
name = "ai24"
command = B, B, B, B, B
time = 0

[command]
name = "ai25"
command = F, F, F, F, F
time = 0

;-| Super Motions |--------------------------------------------------------
[Command]
name = "F-HCF_x"
command = F, B, D, F, x
time = 30

[Command]
name = "F-HCF_a"
command = F, B, D, F, a
time = 30

[Command]
name = "F-HCF_y"
command = F, B, D, F, y
time = 30

[Command]
name = "F-HCF_b"
command = F, B, D, F, b
time = 30

;-| Special Motions |--------------------------------------------------------
[Command]
name = "QCF_x"
command = D, DF, F, x

[Command]
name = "QCF_y"
command = D, DF, F, y

[Command]
name = "DP_x"
command = ~F, D, DF, x

[Command]
name = "DP_y"
command = ~F, D, DF, y

[Command]
name = "Tap_x"
command = x, x, x, x
time = 30

[Command]
name = "Tap2_x"
command = x, x, x
time = 18

[Command]
name = "Tap_y"
command = y, y, y, y
time = 30

[Command]
name = "DP_a"
command = ~F, D, DF, a

[Command]
name = "DP_b"
command = ~F, D, DF, b

[Command]
name = "QCB_x"
command = D, DB, B, x

[Command]
name = "QCB_y"
command = D, DB, B, y

[Command]
name = "QCB_a"
command = D, DB, B, a

[Command]
name = "QCB_b"
command = D, DB, B, b

[Command]
name = "QCF_a"
command = D, DF, F, a

[Command]
name = "QCF_b"
command = D, DF, F, b

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

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "DF_x"
command = /DF,x
time = 1

[Command]
name = "Hold_x"
command = /$x
time = 1

[Command]
name = "Hold_y"
command = /$y
time = 1

[Command]
name = "Hold_a"
command = /a
time = 1

[Command]
name = "Hold_b"
command = /$b
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
;AI
[State -1]
type = varset
trigger1 = command = "ai1"
trigger2 = command = "ai2"
trigger3 = command = "ai3"
trigger4 = command = "ai4"
trigger5 = command = "ai5"
trigger6 = command = "ai6"
trigger7 = command = "ai7"
trigger8 = command = "ai8"
trigger9 = command = "ai9"
trigger10 = command = "ai10"
trigger11 = command = "ai11"
trigger12 = command = "ai12"
trigger13 = command = "ai13"
trigger14 = command = "ai14"
trigger15 = command = "ai15"
trigger16 = command = "ai16"
trigger17 = command = "ai17"
trigger18 = command = "ai18"
trigger19 = command = "ai19"
trigger20 = command = "ai20"
trigger21 = command = "ai21"
trigger22 = command = "ai22"
trigger23 = command = "ai23"
trigger24 = command = "ai24"
trigger25 = command = "ai25"
v = 5
value = 1

;---------------------------------------------------------------------------
; AI Stand Guard
[State -1]
type = ChangeState
triggerall = Var(5) = 1
triggerall = Random < 500
trigger1 = Statetype != A
trigger1 = P2statetype != C
trigger1 = P2Movetype = A
trigger1 = Ctrl = 1
value = 130

; AI Crouch Guard
[State -1]
type = ChangeState
triggerall = Var(5) = 1
triggerall = Random < 500
trigger1 = StateType != A
trigger1 = P2statetype = C
trigger1 = P2Movetype = A
trigger1 = Ctrl = 1
value = 131

; AI Air Guard
[State -1]
type = ChangeState
triggerall = Var(5) = 1
triggerall = Random < 500
trigger1 = Statetype = A
trigger1 = P2Movetype = A
trigger1 = Ctrl = 1
value = 132

; AI Air Recover
[State -1]
type = ChangeState
triggerall = Var(5) = 1
triggerall = Random < 500
trigger1 = StateType = A
trigger1 = StateType != L
trigger1 = StateNo = 5050
trigger1 = CanRecover = 1
trigger1 = Alive = 1
value = 5210

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Outrageous Man
[State -1]
type = ChangeState
value = 3000
triggerall = Var(5) != 1
triggerall = command = "F-HCF_x"
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
trigger2 = stateno != 230
trigger2 = stateno != 430
trigger2 = stateno != 435

; AI Outrageous Man
[State -1]
type = ChangeState
value = 3000
triggerall = Var(5) = 1
triggerall = Random < 250
triggerall = P2bodydist X < 100
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
trigger2 = stateno != 230
trigger2 = stateno != 430
trigger2 = stateno != 435

;---------------------------------------------------------------------------
; Senpu Gouken
[State -1]
type = ChangeState
value = 3100
triggerall = Var(5) != 1
triggerall = command = "F-HCF_a"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
trigger2 = stateno != 230
trigger2 = stateno != 430
trigger2 = stateno != 435

; AI Senpu Gouken
[State -1]
type = ChangeState
value = 3100
triggerall = Var(5) = 1
triggerall = Random < 200
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
trigger2 = (stateno != 230) && (Time <15)
trigger2 = stateno != 430
trigger2 = stateno != 435

;---------------------------------------------------------------------------
;Shin Geki-Ha
[State -1]
type = ChangeState
value = 3200
triggerall = Var(5) != 1
triggerall = command = "F-HCF_b"
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
trigger2 = stateno != 230
trigger2 = stateno != 430
trigger2 = stateno != 435

;AI Shin Geki-Ha
[State -1]
type = ChangeState
value = 3200
triggerall = Var(5) = 1
triggerall = Random >= 250
triggerall = Random < 500
triggerall = P2bodydist X < 50
triggerall = statetype != A
triggerall = power >= 2000
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
trigger2 = stateno != 230
trigger2 = stateno != 430
trigger2 = stateno != 435

;---------------------------------------------------------------------------
Ancients Gi-Fury
[State -1]
type = ChangeState
value = 3300
triggerall = Var(5) != 1
triggerall = command = "F-HCF_y"
triggerall = statetype != A
triggerall = power >= 3000
trigger1 = ctrl

;AI Ancients Gi-Fury
[State -1]
type = ChangeState
value = 3300
triggerall = Var(5) = 1
triggerall = Random >= 500
triggerall = Random < 900
triggerall = P2bodydist X > 50
triggerall = statetype != A
triggerall = power >= 3000
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Terry
[State -1]
type = ChangeState
value = 4000
triggerall = Var(5) != 1
triggerall = command = "z"
triggerall = statetype != A
triggerall = numhelper(4000) = 0
triggerall = power >= 500
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA

; Andy
[State -1]
type = ChangeState
value = 4500
triggerall = Var(5) != 1
triggerall = command = "c"
triggerall = statetype != A
triggerall = numhelper(4500) = 0
triggerall = power >= 500
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA

; AI Terry
[State -1]
type = ChangeState
value = 4000
trigger1 = Var(5) = 1
trigger1 = command = "z"
trigger1 = P2bodydist X < 100
trigger1 = statetype != A
trigger1 = numhelper(4000) = 0
trigger1 = power >= 500
trigger1 = ctrl

; AI Andy
[State -1]
type = ChangeState
value = 4500
trigger1 = Var(5) = 1
trigger1 = command = "c"
trigger1 = P2bodydist X < 100
trigger1 = statetype != A
trigger1 = numhelper(4500) = 0
trigger1 = power >= 500
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
; Ressen Shou (light)
[State -1]
type = ChangeState
value = 1000
triggerall = command = "Tap_x"
trigger1 = StateType != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact = 1
trigger2 = stateno != 230
trigger2 = stateno != 430
trigger2 = stateno != 435
trigger3 = (stateno = 200) && time > 6
trigger4 = (stateno = 205) && time > 5

; Ressen Shou (strong)
[State -1]
type = ChangeState
value = 1050
triggerall = command = "Tap_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact = 1
trigger2 = stateno != 230
trigger2 = stateno != 430
trigger2 = stateno != 435

;---------------------------------------------------------------------------
; Shou-Ha
[State -1]
type = ChangeState
value = 1100
triggerall = command = "QCF_x"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact = 1

; Daï Shou-Ha
[State -1]
type = ChangeState
value = 1150
triggerall = command = "QCF_y"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact = 1
trigger2 = stateno != 230
trigger2 = stateno != 430
trigger2 = stateno != 435

;---------------------------------------------------------------------------
; Spit Fireball (light)
[State -1]
type = ChangeState
value = 1200
triggerall = command = "DP_x"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact = 1
trigger2 = stateno != 230
trigger2 = stateno != 430
trigger2 = stateno != 435

; Spit Fireball (strong)
[State -1]
type = ChangeState
value = 1250
triggerall = command = "DP_y"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact = 1
trigger2 = stateno != 230
trigger2 = stateno != 430
trigger2 = stateno != 435
trigger3 = (stateno = 1200) && (AnimElem = 16)

;---------------------------------------------------------------------------
;Ressen Kyaku (light)
[State -1]
type = ChangeState
value = 1300
triggerall = command = "DP_a"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact = 1
trigger2 = stateno != 230
trigger2 = stateno != 430
trigger2 = stateno != 435

;Ressen Kyaku (strong)
[State -1]
type = ChangeState
value = 1350
triggerall = command = "DP_b"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact = 1
trigger2 = stateno != 230
trigger2 = stateno != 430
trigger2 = stateno != 435

;AI Ressen Kyaku (strong)
[State -1]
type = ChangeState
value = 1350
triggerall = Var(5) = 1
triggerall = Var(4) <= 1
trigger1 = P2StateType = A
trigger1 = P2MoveType != H
trigger1 = P2Stateno != 105
trigger1 = statetype != A
trigger1 = ctrl = 1
;trigger2 = hitdefattr = SC, NA
;trigger2 = movecontact = 1
;trigger2 = stateno != 230
;trigger2 = stateno != 430
;trigger2 = stateno != 435

;---------------------------------------------------------------------------
;Shin Shippu (light)
[State -1]
type = ChangeState
value = 1400
triggerall = command = "QCB_x"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact = 1
trigger2 = stateno != 230
trigger2 = stateno != 430
trigger2 = stateno != 435

;Shin Shippu (strong)
[State -1]
type = ChangeState
value = 1450
triggerall = command = "QCB_y"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact = 1
trigger2 = stateno != 230
trigger2 = stateno != 430
trigger2 = stateno != 435

;---------------------------------------------------------------------------
;Gekihou
[State -1]
type = ChangeState
value = 1500
triggerall = command = "QCF_a"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact = 1
trigger2 = stateno != 230
trigger2 = stateno != 430
trigger2 = stateno != 435

;Geki-ha
[State -1]
type = ChangeState
value = 1550
triggerall = command = "QCF_b"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact = 1
trigger2 = stateno != 230
trigger2 = stateno != 430
trigger2 = stateno != 435

;---------------------------------------------------------------------------
;Senpu (light)
[State -1]
type = ChangeState
value = 1600
triggerall = command = "QCB_a"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact = 1
trigger2 = stateno != 230
trigger2 = stateno != 430
trigger2 = stateno != 435

;Senpu (strong)
[State -1]
type = ChangeState
value = 1650
triggerall = command = "QCB_b"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = hitdefattr = SC, NA
trigger2 = movecontact = 1
trigger2 = stateno != 230
trigger2 = stateno != 430
trigger2 = stateno != 435

;===========================================================================
;---------------------------------------------------------------------------
;Energy Blast (Throw)
[State -1]
type = ChangeState
value = 800
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 10
trigger1 = command = "fwd_y"
trigger1 = stateno != 100
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = p2stateno != 5120

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X > 35
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 9
trigger3 = (stateno = 205) && time > 7
trigger4 = (stateno = 210) && time > 20
trigger5 = (stateno = 215) && time > 10

;Stand Light Punch close
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
;triggerall = P2bodydist X <= 35
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 9
trigger3 = (stateno = 205) && time > 7
trigger4 = (stateno = 210) && time > 20
trigger5 = (stateno = 215) && time > 10

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X > 37
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 9
trigger3 = (stateno = 205) && time > 7
trigger4 = (stateno = 210) && time > 20
trigger5 = (stateno = 215) && time > 10

;---------------------------------------------------------------------------
;Stand Strong Punch (close)
[State -1, Stand Strong Punch]
type = ChangeState
value = 235
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 37
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 9
trigger3 = (stateno = 205) && time > 7
trigger4 = (stateno = 210) && time > 20
trigger5 = (stateno = 215) && time > 10

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X > 25
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 9
trigger3 = (stateno = 205) && time > 7
trigger4 = (stateno = 210) && time > 20
trigger5 = (stateno = 215) && time > 10

;Stand Light Kick close
[State -1, Stand Light Kick]
type = ChangeState
value = 215
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 25
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 9
trigger3 = (stateno = 205) && time > 7
trigger4 = (stateno = 210) && time > 20
trigger5 = (stateno = 215) && time > 10

;---------------------------------------------------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 9
trigger3 = (stateno = 205) && time > 7
trigger4 = (stateno = 210) && time > 20
trigger5 = (stateno = 215) && time > 10

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = stateno != 195
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;Uppercut
[State -1, Crouching Light Punch]
type = ChangeState
value = 405
Triggerall = Command = "DF_x"
triggerall = command = "holddown"
Triggerall = Statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 430
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 410)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Punch (falling)
[State -1, Crouching Strong Punch]
type = ChangeState
value = 435
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 410)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 410)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
