;-| Super Motions |--------------------------------------------------------

[Command]
name = "qcfhcb_x"
command = D, F, D, B, x
time = 45

[Command]
name = "qcfhcb_y"
command = D, F, D, B,  y
time = 45

[Command]
name = "qcbhcf_x"
command = D, B, D, F, x
time = 45

[Command]
name = "qcbhcf_y"
command = D, B, D, F, y
time = 45

[Command]
name = "dfdf_x"
command = D, DF, F, D, DF, F, x
time = 45

[Command]
name = "dfdf_y"
command = D, DF, F, D, DF, F, y
time = 45

;-| Special Motions |------------------------------------------------------

[Command]
name = "qcf_x"
command = ~D, F, x
time = 15

[Command]
name = "qcf_y"
command = ~D, F, y
time = 15

[Command]
name = "qcb_a"
command = ~D, B, a
time = 15

[Command]
name = "qcb_b"
command = ~D, B, b
time = 15

[Command]
name = "dp_x"
command = ~F, D, DF, x
time = 15

[Command]
name = "dp_y"
command = ~F, D, DF, y
time = 15

[Command]
name = "dp_a"
command = ~F, D, DF, a
time = 15

[Command]
name = "dp_b"
command = ~F, D, DF, b
time = 15

[Command]
name = "charge_x"
command = ~30$B, F, x
time = 15

[Command]
name = "charge_y"
command = ~30$B, F, y
time = 15

[Command]
name = "wheel_x"
command = x, x, x, x
time = 35
buffer.time = 20

[Command]
name = "wheel_y"
command = y, y, y, y
time = 30
buffer.time = 20

[Command]
name = "ltp_x"
command = ~D, F, x
time = 15

[Command]
name = "ltp_y"
command = ~D, F, y
time = 15

[Command]
name = "df_x"
command = ~D, F , x

[Command]
name = "df_y"
command = ~D, F , y

[Command]
name = "db_x"
command = ~D, B, x
time = 15

[Command]
name = "db_y"
command = ~D, B, y
time = 15

[Command]
name = "longjump"
command = $D, $U
time = 18

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

[Command];stricker call
name = "striker"
command = a+y
time = 1

[Command]
name = "recovery"
command = z
time = 1

[Command]
name = "dodge"
command = z
time = 1

[Command]
name = "dodge1"
command = a+x
time = 1

[Command]
name = "knockdown"
command = b+y
time = 1

[Command]
name = "abc"
command = a+b+c
time = 1

[Command]
name = "charge"
command = a+x+y
time = 1

;-| Dir + Button |---------------------------------------------------------

[Command]
name = "fwd_a"
command = /F, a
time = 1

[Command]
name = "fwd_b"
command = /F, b
time = 1

[Command]
name = "fwd_x"
command = /F, x
time = 1

[Command]
name = "fwd_y"
command = /F, y
time = 1

[Command]
name = "back_x"
command = /B, x

[Command]
name = "fwd_y"
command = /F, y
time = 1

[Command]
name = "back_y"
command = /B, y
time = 1

[Command]
name = "fwd_roll"
command = /F, z
time = 1

[Command]
name = "back_roll"
command = /B, z
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "hold_x"
command = /$x
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "s"
command = s
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
name = "B"
command = B
time = 1

[Command]
name = "F"
command = F
time = 1

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "holdfwd_x"
command = /$F, x
time = 1

[Command]
name = "holdfwd_y"
command = /$F, y
time = 1

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
name = "time"
command = a+x
time = 1
;-|Commands|------------------------------------------------------------------------------

[Statedef -1]

;스트라이커 호출
[State -1]
type = ChangeState
value = 9890
triggerall = command = "striker" && var(30) !=0 && roundstate = 2  
trigger1 = numhelper(7500) <= 0 && numhelper(7600) <= 0 && numhelper(7700) <= 0 && numhelper(7800) <= 0
trigger1 = (stateno != [2700,2800]) && (stateno != [2950,2960]) && (stateno != [1900,1910])
trigger1 = (stateno != [2100,2140]) && stateno != 1700
trigger1 = var(36) = 0 && var(21) != 0
trigger1 = statetype != A && ctrl
trigger1 = p2movetype != H

;타이머
;[State -1]
;type = ChangeState
;value = 5301
;trigger1 = command = "time"
;trigger1 = NumExplod(4100) = 0
;trigger1 = statetype = S
;trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Salamander Stream light
[State -1]
type = ChangeState
value = 1900
triggerall = command = "qcbhcf_x"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1

; Salamander Stream Hard Full
[State -1]
type = ChangeState
value = 1920
triggerall = command = "qcbhcf_y"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1

; Salamander Stream light
[State -1]
type = ChangeState
value = 1900
triggerall = command = "qcbhcf_y"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------

; Flaming Stick Spin light
[State -1]
type = ChangeState
value = 1800
triggerall = command = "qcfhcb_x"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Flaming Stick Spin Hard Full
[State -1]
type = ChangeState
value = 1860
triggerall = command = "qcfhcb_y"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1

; Flaming Stick Spin light long
[State -1]
type = ChangeState
value = 1850
triggerall = command = "qcfhcb_y"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
; Super Stick Swing
[State -1]
type = ChangeState
value = 2500
triggerall = command = "dfdf_x"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1

; Super Stick Swing Hard
[State -1]
type = ChangeState
value = 2510
triggerall = command = "dfdf_y"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1

; Super Stick Swing
[State -1]
type = ChangeState
value = 2500
triggerall = command = "dfdf_y"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; HongRenSalgon light
[State -1]
type = ChangeState
value = 1500
triggerall = command = "dp_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movehit
trigger3 = stateno = 201
trigger3 = movehit
trigger4 = stateno = 211
trigger4 = movehit
trigger5 = stateno = 221
trigger5 = movehit
trigger6 = stateno = 231
trigger6 = movehit
trigger7 = stateno = 400
trigger7 = movehit
trigger8 = stateno = 420
trigger8 = movehit

; HongRenSalgon Hard
[State -1]
type = ChangeState
value = 1520
triggerall = command = "dp_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movehit
trigger3 = stateno = 201
trigger3 = movehit
trigger4 = stateno = 211
trigger4 = movehit
trigger5 = stateno = 221
trigger5 = movehit
trigger6 = stateno = 231
trigger6 = movehit
trigger7 = stateno = 400
trigger7 = movehit
trigger8 = stateno = 420
trigger8 = movehit
;---------------------------------------------------------------------------
; Light Three Part Cane
[State -1]
type = ChangeState
value = 1700
triggerall = command = "ltp_x"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 221

;---------------------------------------------------------------------------
; Hard Three Part Cane
[State -1]
type = ChangeState
value = 1710
triggerall = command = "ltp_y"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 221

;---------------------------------------------------------------------------
; Sparrow Killer
[State -1]
type = ChangeState
value = 1790
triggerall = command = "db_x"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 221

; Sparrow Killer
[State -1]
type = ChangeState
value = 1790
triggerall = command = "db_y"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 221

;---------------------------------------------------------------------------
; Counter Attack (upper)
[State -1]
type = ChangeState
value = 1100
triggerall = command = "qcb_a"
trigger1 = statetype != A
trigger1 = ctrl = 1

; Counter Attack (under)
[State -1]
type = ChangeState
value = 1105
triggerall = command = "qcb_b"
trigger1 = statetype != A
trigger1 = ctrl = 1

;Whirlwind Cane (Light)
[State -1]
type = ChangeState
value = 1600
triggerall = command = "wheel_x"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 225
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 310
trigger4 = movecontact

;Rapid Wave Cane (Hard)
[State -1]
type = ChangeState
value = 1610
triggerall = command = "wheel_y"
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 225
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 310
trigger4 = movecontact

; Jumping knockdown attack
[State -1]
type = ChangeState
value = 640
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = command = "knockdown"
trigger2 = command = "c"

; Jumping forward light punch
[State -1]
type = ChangeState
value = 600
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = Vel X != 0
trigger1 = ctrl = 1

; Jumping light punch
[State -1]
type = ChangeState
value = 605
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1

; Jumping forward light kick
[State -1]
type = ChangeState
value = 615
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = Vel X != 0
trigger1 = ctrl = 1

; Jumping light kick
[State -1]
type = ChangeState
value = 610
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1

; Jumping forward hard punch
[State -1]
type = ChangeState
value = 621
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = Vel X != 0
trigger1 = ctrl = 1

; Jumping hard punch
[State -1]
type = ChangeState
value = 620
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1

; Jumping forward hard kick
[State -1]
type = ChangeState
value = 635
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = Vel X != 0
trigger1 = ctrl = 1

; Jumping hard kick
[State -1]
type = ChangeState
value = 630
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1

; Hold type 2
[State -1]
type = ChangeState
value = 3020
trigger1 = command = "fwd_y"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2bodydist x <= 10
trigger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = ctrl = 1

; Strong Attack Flying Cane light
[State -1]
type = ChangeState
value = 1300
triggerall = command = "dp_a"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Strong Attack Flying Cane Hard
[State -1]
type = ChangeState
value = 1305
triggerall = command = "dp_b"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Hold type 1
[State -1]
type = ChangeState
value = 3000
trigger1 = command = "fwd_b"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2bodydist x <= 10
trigger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = ctrl = 1

; Crouching light punch
[State -1]
type = ChangeState
value = 400
trigger1 = statetype = C
trigger1 = command = "x"
trigger1 = ctrl = 1

; Crouching light kick
[State -1]
type = ChangeState
value = 410
trigger1 = statetype = C
trigger1 = command = "a"
trigger1 = ctrl = 1

; Crouching hard punch
[State -1]
type = ChangeState
value = 420
trigger1 = statetype = C
trigger1 = command = "y"
trigger1 = ctrl = 1

; Crouching hard kick
[State -1]
type = ChangeState
value = 430
trigger1 = statetype = C
trigger1 = command = "b"
trigger1 = ctrl = 1

; Guard cancel roll (backwards)
[State -1]
type = ChangeState
value = 260
triggerall = stateno >= 150
triggerall = stateno <= 151
triggerall = power >= 1500
triggerall = command = "holdback"
trigger1 = command = "dodge"
trigger2 = command = "z"

; Guard cancel roll (forward)
[State -1]
type = ChangeState
value = 250
triggerall = stateno >= 150
triggerall = stateno <= 151
triggerall = power >= 1500
trigger1 = command = "dodge"
trigger2 = command = "z"

; Guard cancel attack
[State -1]
type = ChangeState
value = 270
triggerall = stateno >= 150
triggerall = stateno <= 151
triggerall = power >= 1500
trigger1 = command = "knockdown"
trigger2 = command = "c"

; Standing knockdown attack
[State -1]
type = ChangeState
value = 240
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = command = "knockdown"
trigger2 = command = "c"

; Forward light punch
[State -1]
type = ChangeState
value = 216
triggerall = command = "fwd_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movehit
trigger3 = stateno = 201
trigger3 = movehit
trigger4 = stateno = 211
trigger4 = movehit
trigger5 = stateno = 221
trigger5 = movehit
trigger6 = stateno = 231
trigger6 = movehit
trigger7 = stateno = 400
trigger7 = movehit
trigger8 = stateno = 420
trigger8 = movehit

; Standing light punch (close)
[State -1]
type = ChangeState
value = 201
trigger1 = command = "x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2bodydist X <= 25

; Standing light punch
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Standing hard punch (close)
[State -1]
type = ChangeState
value = 221
trigger1 = command = "y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2bodydist X <= 25

; Standing hard punch
[State -1]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Forward light kick
[State -1]
type = ChangeState
value = 215
triggerall = command = "fwd_a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movehit
trigger3 = stateno = 201
trigger3 = movehit
trigger4 = stateno = 211
trigger4 = movehit
trigger5 = stateno = 221
trigger5 = movehit
trigger6 = stateno = 231
trigger6 = movehit
trigger7 = stateno = 400
trigger7 = movehit
trigger8 = stateno = 420
trigger8 = movehit

; Standing light kick (close)
[State -1]
type = ChangeState
value = 211
trigger1 = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2bodydist X <= 25

; Standing light kick
[State -1]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Standing hard kick (close)
[State -1]
type = ChangeState
value = 231
trigger1 = command = "b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2bodydist X <= 10

; Standing hard kick
[State -1]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Taunt
[State -1]
type = ChangeState
value = 195
trigger1 = command = "s"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

; Run Forward
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = command != "holddown"
trigger1 = ctrl = 1

; Run Backwards
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = command != "holddown"
trigger1 = ctrl = 1

; Roll forward
[State -1]
type = ChangeState
value = 255
trigger1 = command = "fwd_roll"
trigger1 = statetype != A
trigger1 = ctrl = 1

; Roll backwards
[State -1]
type = ChangeState
value = 265
trigger1 = command = "back_roll"
trigger1 = statetype != A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
; Evade
[State -1]
type = ChangeState
value = 251
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Evade (attack)
[State -1]
type = ChangeState
value = 252
triggerall = stateno = 251
triggerall = AnimElem = 2, >= 0
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "a"
trigger4 = command = "b"
;;---------------------------------------------------------------------------
; Power charge
;[State -1]
;type = ChangeState
;value = 3100
;triggerall = command = "holdx" && command = "holdy"
;trigger1 = power < 3000
;trigger1 = statetype = S
;trigger1 = ctrl = 1

