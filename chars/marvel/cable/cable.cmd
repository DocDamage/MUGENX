; (THANKS TO: Ribeiro) 
; (THANKS TO: Mr_Karai's Jin Saotome)
; (THANKS TO: Zero Gravity Studios)
;-| Super Motions |------------

[Command]
name = "HVbeam"
command = ~D, DF, F, x+y

[Command]
name = "HVbeam"
command = ~D, DF, F, x+z

[Command]
name = "HVbeam"
command = ~D, DF, F, y+z

[Command]
name = "TimeWarp"
command = ~D, DF, F, a+b

[Command]
name = "TimeWarp"
command = ~D, DF, F, a+c

[Command]
name = "TimeWarp"
command = ~D, DF, F, b+c

[Command]
name = "DoubleDragon"
command = ~D, DF, F, c+z

[Command]
name = "DoubleDragonCounter"
command = ~B, DB, D, c+z
time = 10

[Command]
name = "SnapBack"
command = ~D, DF, F, y+b

;--------------------------------
;Counter Dragon Punch
[Command]
name = "Counter"
command = ~B, DB, D, z
time = 10

[Command]
name = "Counter"
command = ~B, DB, D, y
time = 10

[Command]
name = "Counter"
command = ~B, DB, D, x
time = 10

;-| Special Motions |------------
[Command]
name = "ElecTrap_x"
command = ~D, DB, B, a

[Command]
name = "ElecTrap_y"
command = ~D, DB, B, b

[Command]
name = "ElecTrap_z"
command = ~D, DB, B, c

[Command]
name = "Pcharge"
command = ~D, DB, B, x

[Command]
name = "Pcharge"
command = ~D, DB, B, y

[Command]
name = "Pcharge"
command = ~D, DB, B, z

[Command]
name = "Tiger_uppercut_x"
command = ~F, D, DF, x

[Command]
name = "Tiger_uppercut_y"
command = ~F, D, DF, y

[Command]
name = "Tiger_uppercut_z"
command = ~F, D, DF, z

[Command]
name = "Ppunch_A"
command = ~D, DF, F, a

[Command]
name = "Ppunch_B"
command = ~D, DF, F, b

[Command]
name = "Ppunch_C"
command = ~D, DF, F, c

[Command]
name = "Vbeam_X"
command = ~D, DF, F, x

[Command]
name = "Vbeam_Y"
command = ~D, DF, F, y

[Command]
name = "Vbeam_Z"
command = ~D, DF, F, z

; -| CPU Commands |------

[Command]
name = "CPU1"
command = D, D, U, U, D, U
time = 1

[Command]
name = "CPU2"
command = D, U, U, D, D, U
time = 1

[Command] 
name = "CPU3"
command = U, D, D, U, U, D
time = 1

;-| Double Tap |------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| MvC S-Jump |------------
[Command]
name = "DU"
command = D, U
time = 20

[Command]
name = "DUF"
command = D, UF
time = 20

[Command]
name = "DUB"
command = D, UB
time = 20

;-| 2/3 Button Combination |------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

;-| PartnerChange |------------
[Command]
name = "troca"
command = z+c
time = 1

[Command] 
name = "Assist"
command = y+b
time = 1

;-| ADVGUARD |------------
[Command] 
name = "AdvGuard"
command = y+z
time = 10

[Command] 
name = "AdvGuard"
command = x+y
time = 10

[Command] 
name = "AdvGuard"
command = x+z
time = 10

;-| Dir + Button |------------
[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
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
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
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

;-| Single Button |------------
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

;-| Hold Dir |------------
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
command = /$x
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

;--------------------------------
;Recovery Roll
[State -1, Falling]
type = VarSet
triggerall = command = "rroll"
triggerall = alive = 1
trigger1 = (stateno = 5050) || (stateno = 5071)
v = 3;0
value = 1

[State -1, Rolling]
type = ChangeState
value = 5123;900
triggerall = Var(3) = 1
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;====================================
; Commands
[Statedef -1]

;AI Ground Combo 1
[State -1]
type = ChangeState
value = 210
triggerall = var(20) = 1
triggerall = random > life && time % 4
triggerall = ctrl && p2statetype != C
triggerall = statetype != A
triggerall = roundstate = 2
trigger1 = stateno = 100 && P2BodyDist X <= 51 
trigger2 = stateno = 430 && P2BodyDist X <= 51 

[State -1]
type = ChangeState
value = 430
triggerall = var(20) = 1
triggerall = random > life && time % 4 && ctrl
triggerall = roundstate = 2
triggerall = stateno = 100 && P2BodyDist X <= 70 
trigger1 = P2Movetype != A
trigger1 = P2StateType != A
trigger2 = P2Movetype = A && P2StateType = S
trigger2 = P2life < life

[State -1]
type = ChangeState
value = 400
triggerall = var(20) = 1
triggerall = roundstate = 2
triggerall = random > life && time % 4 && ctrl
triggerall = stateno = 100 && P2BodyDist X <= 65 
trigger1 = P2StateType = A
trigger2 = P2Movetype = A && P2StateType = S
trigger2 = P2life < life

[State -1]
type = ChangeState
value = 410
triggerall = roundstate = 2
triggerall = var(20) = 1
trigger1 = stateno = 400 || stateno = 430
trigger1 = movecontact && ctrl
trigger1 = random > life && time % 4
trigger1 = P2BodyDist X <= 65
trigger1 = P2BodyDist Y = [0,67]

[State -1]
type = ChangeState
value = 440
triggerall = roundstate = 2
triggerall = var(20) = 1
triggerall = stateno = 400 || stateno = 430 || stateno = 200 || stateno = 230
trigger1 = movecontact && ctrl
trigger1 = random > life && time % 4
trigger1 = P2BodyDist X <= 80
trigger1 = P2BodyDist Y = [0,80]

[State -1]
type = ChangeState
value = 420
triggerall = roundstate = 2
triggerall = var(20) = 1 && random > life && time % 4
triggerall = movecontact && ctrl
triggerall = P2BodyDist X <= 50
trigger1 = stateno = 400
trigger2 = stateno = 410
trigger3 = stateno = 430
trigger4 = stateno = 440

[State -1]
type = ChangeState
value = 450
triggerall = roundstate = 2
triggerall = var(20) = 1 && random > life && time % 4
triggerall = movecontact && ctrl
triggerall = P2BodyDist X <= 80
trigger1 = stateno = 410
trigger2 = stateno = 440
trigger3 = stateno = 400
trigger4 = stateno = 430

;--------------------------------

[State -1]
type = ChangeState
value = 220
triggerall = roundstate = 2
triggerall = var(20) = 1 && random > life && time % 4
triggerall = ctrl
triggerall = P2StateType != C && StateType != A
trigger1 = (stateno = 200 || stateno = 230) && P2BodyDist X <= 83
trigger2 = (stateno = 240 || stateno = 440) && P2BodyDist X <= 83

[State -1]
type = ChangeState
value = 250
triggerall = roundstate = 2
triggerall = var(20) = 1 && random > life && time % 4
triggerall = movecontact && ctrl
triggerall = P2BodyDist X <= 94 && P2StateType != C
triggerall = StateType != A
trigger1 = stateno = 200
trigger2 = stateno = 210
trigger3 = stateno = 230
trigger4 = stateno = 240

[State -1]
type = ChangeState
value = 240
triggerall = roundstate = 2
triggerall = var(20) = 1
triggerall = StateType != A
trigger1 = stateno = 200 || stateno = 230
trigger1 = movecontact && ctrl
trigger1 = random > life && time % 4
trigger1 = P2BodyDist X <= 90
trigger1 = P2BodyDist Y > -10

[State -1]
type = ChangeState
value = 230
triggerall = roundstate = 2
triggerall = var(20) = 1 && time > 7
triggerall = random > life && time % 4 && ctrl
trigger1 = StateType != A
trigger1 = P2BodyDist X <= 51
trigger1 = P2Movetype != A
trigger1 = P2StateType != A
trigger1 = p2bodydist Y > -10

[State -1]
type = ChangeState
value = 200
triggerall = roundstate = 2
triggerall = var(20) = 1 && time > 7
triggerall = random > life && time % 4 && ctrl
trigger1 = StateType != A
trigger1 = P2BodyDist X <= 76
trigger1 = P2StateType != C
trigger1 = p2bodydist Y > -20

;--------------------------------
[State -1]
type = ChangeState
value = 9800
triggerall = roundstate = 2 && pos y = 0 && P2MoveType!=A
triggerall = var(20) = 1 && random > life && time % 4 && ctrl
trigger1 = p2bodydist Y < -120
trigger2 = p2StateNo > 5000 && p2bodydist Y < -100
trigger3 = var(20) = 1 && random < life && animtime = 0 && stateno = [1000,1005]
;trigger4 = stateno = 210 && var(20) = 1
;--------------------------------
[State -1]
type = ChangeState
value = 2035
triggerall = roundstate = 2
triggerall = var(20) = 1 && random > life && time % 4
triggerall = movecontact && ctrl
triggerall = P2BodyDist X <= 80
triggerall = P2StateType = A
trigger1 = stateno = 410
trigger2 = stateno = 440
trigger3 = stateno = 400
trigger4 = stateno = 430

;--------------------------------
; Viper Beam_X
[State -1]
type = ChangeState
value = 1000; + ((StateType = A)*5)
triggerall = roundstate = 2
triggerall = var(20) = 1 && time > 2
triggerall = random > life && time % 4 && ctrl
trigger1 = P2BodyDist X > 150
trigger1 = p2bodydist Y > 0
;--------------------------------
;Double Hyper Combo
[State -1]
type = ChangeState
value = 4460
triggerall = power >= 2000
triggerall = command = "DoubleDragon" && var(34) = 1 && var(38) != 3
triggerall = Roundstate = 2
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = [3000,4400]
trigger3 = stateno = [4500,4999]
trigger4 = statetype !=A && stateno = [200,1200]
trigger5 = statetype !=A && stateno = [1600,2000]

;SnapBack
[State -1]
type = ChangeState
value = 4490
triggerall = power >= 1000
triggerall = command = "SnapBack"; && var(34) = 1 && var(38) != 3
triggerall = Roundstate = 2
trigger1 = statetype = S
trigger1 = ctrl
;trigger2 = stateno = [3000,4400]
;trigger3 = stateno = [4500,4999]
;trigger2 = statetype !=A && stateno = [200,1200]
;trigger5 = statetype !=A && stateno = [1600,2000]

;partner Change
[State -1]
type = ChangeState
value = 4410
triggerall = command = "troca" && var(34) = 1 && var(38) !=3
triggerall = Roundstate = 2 && statetype !=A
trigger1 = statetype = S
trigger1 = ctrl

;partner Assist
[State -1]
type = ChangeState
value = 4480
triggerall = command = "Assist" && var(34) = 1 && var(38) !=3
triggerall = Roundstate = 2 && statetype !=A
trigger1 = statetype = S
trigger1 = ctrl

;Double Dragon Counter
[State -1]
type = ChangeState
value = 4420
triggerall = command = "DoubleDragonCounter" && var(34) = 1 && var(38) !=3
triggerall = Roundstate = 2 && statetype !=A && power >= 1000
trigger1 = ctrl && StateNo = [150,151]

;RunFwd
[State -1]
type = ChangeState
value = 100
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "FF"
trigger2 = P2Movetype = H && P2BodyDist X <= 70 && ctrl
trigger2 = pos y =0 && var(20) = 1 && random > life && time % 4
trigger2 = statetype != A

;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1

; AUTO AI

[State -1, Activate AI] 
type = VarSet 
trigger1 = var(20) != 1 && IsHomeTeam = 1 && matchno > 1
v = 20
value = 1

; Reset Air combo

[State -1, reset] 
type = VarSet 
trigger1 = var(3) != 0 && statetype != A
trigger1 = stateNo != [5000,5125]
v = 3
value = 0
;====================================

; Hyper Viper Beam
[State -1]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = command = "HVbeam" && NumHelper(7777) = 0
trigger1 = ctrl
trigger2 = movecontact && stateno != 210
trigger2 = (stateno = [200,650]) && var(20) =0
trigger3 = stateno = [220,228]
trigger4 = stateno = [1000,1005]
trigger5 = stateno = [1600,1605]
trigger6 = stateno = [2000,2040]
trigger7 = stateno = 250
trigger8 = MoveGuarded && stateno = 1208
trigger9 = stateno = 1500

;--------------------------------
;Time Slip
[State -1]
type = ChangeState
value = 4000
triggerall = command = "TimeWarp"
triggerall = NumHelper(7777) = 0
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = MoveContact && var(20)=1 && random > life && time % 4
trigger3 = stateno != 210 && stateno = [200,450]
trigger4 = stateno = [220,228]
trigger5 = stateno = [1000,1005]
trigger6 = stateno = [1600,1605]
trigger7 = projcontact && var(20)=1 && random > life && time % 4
trigger7 = p2bodydist X< 250
trigger8 = stateno = [2000,2040]
trigger9 = MoveGuarded && stateno = 1208
trigger10 = stateno = 1500
;--------------------------------

;Counter - Psycimitar
[State -1]
type = ChangeState
value = 3300
triggerall = command = "Counter" && power >= 1000
triggerall = statetype != A
trigger1 = stateno = [150,152]

;--------------------------------
; Tiger Uppercut Jab (X)
[State -1]
type = ChangeState
value = 2030
triggerall = command = "Tiger_uppercut_x"
trigger1 = var(20) = 1 && stateno = [200,440]
trigger2 = var(20) = 0 && stateno = [200,450]
trigger3 = statetype != A && ctrl
;--------------------------------
; Tiger Uppercut Medium Punch (Y)
[State -1]
type = ChangeState
value = 2035
triggerall = command = "Tiger_uppercut_y"
trigger1 = var(20) = 1 && stateno = [200,440]
trigger2 = var(20) = 0 && stateno = [200,450]
trigger3 = statetype != A && ctrl
;--------------------------------
; Tiger Uppercut Fierce Punch (Z)
[State -1]
type = ChangeState
value = 2040
triggerall = command = "Tiger_uppercut_z"
trigger1 = var(20) = 1 && stateno = [200,440]
trigger2 = var(20) = 0 && stateno = [200,450]
trigger3 = statetype != A && ctrl
;--------------------------------
; Viper Beam_X
[State -1]
type = ChangeState
value = 1010
triggerall = command = "Vbeam_X"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno != 210 && stateno = [200,450]
trigger3 = MoveContact && var(20)=1 && random > life && time % 4
trigger3 = p2bodydist y > 0
trigger4 = stateno = [220,228]

;--------------------------------
; Viper Beam_Y
[State -1]
type = ChangeState
value = 1015
triggerall = command = "Vbeam_Y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact
trigger2 = stateno = [200,450]
trigger3 = MoveContact && var(20)=1 && random > life && time % 4
trigger3 = p2bodydist y > 0
trigger4 = stateno = [220,228]

;--------------------------------
; Viper Beam_Z
[State -1]
type = ChangeState
value = 1020
triggerall = command = "Vbeam_Z"
trigger1 = statetype = S && ctrl
trigger2 = stateno != 210 && stateno = [200,450]
trigger3 = stateno = [220,228]

;--------------------------------

;Aerial Rave Jump
[State -1]
type = ChangeState
value = 9800
triggerall = Command = "holdup"
triggerall = movehit
trigger1 = StateNo = 210
trigger2 = stateno = 210 && var(20) = 1 ;&& random > life && time % 4

;--------------------------------
;AIR Viper Beam_X
[State -1]
type = ChangeState
value = 1040
triggerall = command = "Vbeam_X"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = p2statetype = A
trigger2 = movecontact = 1
trigger2 = stateno = [600,650]
trigger3 = MoveContact && var(20)=1 && random > life && time % 4
trigger3 = p2bodydist y > 0

;--------------------------------
;;AIR Viper Beam_Y
[State -1]
type = ChangeState
value = 1045
triggerall = command = "Vbeam_Y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = p2statetype = A
trigger2 = movecontact = 1
trigger2 = stateno = [600,650]
trigger3 = MoveContact && var(20)=1 && random > life && time % 4
trigger3 = p2bodydist y < 0

;--------------------------------
;;AIR Viper Beam_Z
[State -1]
type = ChangeState
value = 1050
triggerall = command = "Vbeam_Z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = p2statetype = A
trigger2 = movecontact = 1
trigger2 = stateno = [600,650]

;--------------------------------
;AIR Electro Trap X
[State -1]
type = ChangeState
value = 1510;1537
triggerall = command = "ElecTrap_x"
triggerall = p2stateno != 5000
trigger1 = statetype = A && ctrl
trigger2 = p2statetype = A  && var(20) = 0
trigger2 = stateno = [600,650]

;AIR Electro Trap Y
[State -1]
type = ChangeState
value = 1515;1547
triggerall = command = "ElecTrap_y"
triggerall = p2stateno != 5000
trigger1 = statetype = A && ctrl
trigger2 = p2statetype = A && var(20) = 0
trigger2 = stateno = [600,650]

;AIR Electro Trap Z
[State -1]
type = ChangeState
value = 1520;1557
triggerall = command = "ElecTrap_z"
triggerall = p2stateno != 5000
trigger1 = statetype = A && ctrl
trigger2 = p2statetype = A && var(20) = 0
trigger2 = stateno = [600,650]

;--------------------------------

;Electro Trap Z
[State -1]
type = ChangeState
value = 1520
triggerall = command = "ElecTrap_z"
triggerall = NumHelper(1500) = 0  && p2stateno != 5000
trigger1 = stateno = 210; && stateno = [200,450]
trigger1 = var(20) = 1 && P2BodyDist X > 150 && P2StateType != A && movecontact && P2BodyDist Y < 50;100
trigger2 = statetype = S && ctrl && var(20) != 1

;Electro Trap Y
[State -1]
type = ChangeState
value = 1515
triggerall = command = "ElecTrap_y"
triggerall = NumHelper(1500) = 0 && p2stateno != 5000
trigger1 = stateno != 210; && stateno = [200,450]
trigger1 = var(20) = 1 && P2BodyDist X > 200 && P2StateType != A && movecontact && P2BodyDist Y < 50;100
trigger2 = statetype = S && ctrl && var(20) != 1

;Electro Trap X
[State -1]
type = ChangeState
value = 1510
triggerall = command = "ElecTrap_x"
triggerall = NumHelper(1500) = 0 && p2stateno != 5000
trigger1 = stateno != 210; && stateno = [200,450]
trigger1 = var(20) = 1 && P2BodyDist X > 300 && P2StateType != A && movecontact && P2BodyDist Y < 50;100
trigger2 = statetype = S && ctrl && var(20) != 1

;--------------------------------
;Psy_punch_A
[State -1]
type = ChangeState
value = 1610
triggerall = command = "Ppunch_A"
trigger1 = statetype = S && ctrl && var(20) != 1
trigger2 = stateno != 210 && stateno = [200,250]
trigger2 = movecontact
trigger3 = stateno = [220,228]
trigger3 = stateno = 450
trigger4 = var(20) = 0 && stateno = [200,450]

;;Psy_punch_B
[State -1]
type = ChangeState
value = 1615
triggerall = command = "Ppunch_B"
trigger1 = statetype = S && ctrl && var(20) != 1
trigger2 = stateno != 210 && stateno = [200,250]
trigger2 = movecontact
trigger3 = stateno = [220,228]
trigger3 = stateno = 450
trigger4 = var(20) = 0 && stateno = [200,450]

;;Psy_punch_C
[State -1]
type = ChangeState
value = 1620
triggerall = command = "Ppunch_C"
trigger1 = statetype = S && ctrl && var(20) != 1
trigger2 = stateno != 210 && stateno = [200,250]
trigger2 = movecontact
trigger3 = stateno = [220,228]
trigger3 = stateno = 450
trigger4 = var(20) = 0 && stateno = [200,450]

;--------------------------------

;;Psi-charge
[State -1]
type = ChangeState
value = 1200
triggerall = command = "Pcharge"
trigger1 = statetype = S && ctrl && var(20) != 1
trigger2 = stateno != 210 && stateno = [200,450]
trigger2 = movecontact
trigger2 = var(20) !=1 && P2BodyDist X > 50 && P2StateType = S && movecontact

;--------------------------------
;Tornado kick
[State -1]
type = ChangeState
value = 251
triggerall = command = "fwd_b"
triggerall = command != "holddown"
triggerall = p2bodydist X > 18
trigger1 = statetype = S && ctrl && var(20) != 1

;--------------------------------
;Stand_Throw
[State -1]
type = ChangeState
value = 800
triggerall = statetype = S && p2statetype != A
triggerall = stateno != 100 && p2bodydist X <= 20 && ctrl
trigger1 = command = "fwd_c"
trigger2 = command = "fwd_b"
trigger3 = command = "fwd_z"
trigger4 = command = "fwd_y"
trigger5 = command = "back_c"
trigger6 = command = "back_b"
trigger7 = command = "back_z"
trigger8 = command = "back_y"

;Air_Throw
[State -1]
type = ChangeState
value = 800
triggerall = statetype = A && p2statetype = A
triggerall = p2movetype != H && p2bodydist X <= 20 && ctrl
trigger1 = command = "fwd_c"
trigger2 = command = "fwd_b"
trigger3 = command = "fwd_z"
trigger4 = command = "fwd_y"
trigger5 = command = "back_c"
trigger6 = command = "back_b"
trigger7 = command = "back_z"
trigger8 = command = "back_y"

;--------------------------------
;Standing Light Punch
[State -1, Standing Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl && var(20) != 1
trigger2 = stateno = 200 && time > 7
trigger3 = stateno = 105 || stateno = 100

;--------------------------------
;Standing Medium Punch
[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl && var(20) != 1
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = 430) && movecontact
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = stateno = 105 || stateno = 100

;--------------------------------
;Standing Strong Punch
[State -1, Standing Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl && var(20) != 1
trigger2 = movecontact && stateno = [400,410]
trigger3 = movecontact && stateno = 200
trigger4 = movecontact && stateno = [430,440]
trigger5 = movecontact && stateno = [230,240]
trigger6 = moveguarded && stateno = 210
trigger7 = stateno = 105 || stateno = 100

;--------------------------------
;Standing Light Kick
[State -1, Standing Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl && var(20) != 1
trigger2 = stateno = 200 && time > 7
trigger3 = p2statetype!=A && stateno=400 && movecontact
trigger4 = stateno = 105 || stateno = 100

;--------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl && var(20) != 1
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = 430) && movecontact
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 230) && movecontact
trigger6 = stateno = 105 || stateno = 100

;--------------------------------
;Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl && var(20) != 1
trigger2 = movecontact && stateno = [400,410]
trigger3 = movecontact && stateno = [200,210]
trigger4 = movecontact && stateno = [430,440]
trigger5 = movecontact && stateno = [230,240]
trigger6 = stateno = 105 || stateno = 100

;--------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "down_x"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl && var(20) != 1
trigger2 = stateno = 400 && time > 7

;--------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "down_y"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl && var(20) != 1
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = 430) && movecontact
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 230) && movecontact

;--------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "down_z"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl && var(20) != 1
trigger2 = movecontact && stateno = [400,410]
trigger3 = movecontact && stateno = [430,440]

;--------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "down_a"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl && var(20) != 1

;--------------------------------
;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "down_b"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl && var(20) != 1
trigger2 = (stateno = 400) && movecontact
trigger3 = (stateno = 430) && movecontact
trigger4 = (stateno = 200) && movecontact
trigger5 = (stateno = 230) && movecontact

;--------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "down_c"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl && var(20) != 1
trigger2 = movecontact && stateno = [400,410]
trigger3 = movecontact && stateno = [430,440]

;--------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A && var(3) < 3
trigger1 = ctrl
trigger2 = stateno = 9800 && var(20)=1 && P2MoveType=H
trigger3 = (stateno = 630) && movecontact

;--------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A && var(3) < 12
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = movecontact && stateno = [630,640]

;--------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && stateno = [600,610]
trigger3 = movecontact && stateno = [630,640]

;--------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = statetype = A  && var(3) < 3
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = stateno = 9800 && var(20)=1 && P2MoveType=H

;--------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = statetype = A && var(3) < 12
trigger1 = ctrl
trigger2 = movecontact && stateno = [600,610]
trigger3 = movecontact && stateno = 630

;--------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && stateno = [600,610]
trigger3 = movecontact && stateno = [630,640]

;--------------------------------
;S-Jump UP/FWD
[State -1]
type = ChangeState
value = 9800
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "DU"
trigger2 = command = "DUF"

;S-Jump BWD
[State -1]
type = ChangeState
value = 9900
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "DUB"

;--------------------------------
;Aerial Rave Follow-Jump

[State -1, Aerial Rave]
type = ChangeState
value = 9800
triggerall = command = "holdup"
triggerall = movehit
trigger1 = stateno = 210

;--------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = statetype != A && ctrl
trigger1 = var(20) != 1
trigger2 = random < life && var(20)=1

; AI Standing Guard
; ==========================
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = Statetype = S
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = 1;random <= 800 ;triggers at 80% probability
value = 130 ;Default standing guard state

; AI Stand to Crouch Guard Transition
; =============================
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152

; AI Crouching Guard
; =============================
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = StateType != A
triggerall = P2statetype = C
triggerall = P2Movetype = A
triggerall = Pos Y != [-1,-999]
triggerall = ctrl = 1
trigger1 = 1
value = 131

; AI Crouch to Stand Guard Transition
; =============================
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = Statetype != A
triggerall = P2statetype != C
triggerall = P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

; AI Aerial Guard
; =============================
[State -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = Statetype = A
triggerall = P2Movetype = A
triggerall = ctrl = 1
trigger1 = 1
value = 132
