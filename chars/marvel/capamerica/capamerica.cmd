; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  ;;;;;;   CMD file for Captain America   ;;;;;;
;   ;;;;;                by                ;;;;;
;    ;;;;           MystikBlaze            ;;;;
;     ;;;     (mystik3984@hotmail.com)     ;;;
;      ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;
;
;===========================================================================
;---------------------------------------------------------------------------
;Commands
;---------------------------------------------------------------------------
;===========================================================================


;-| Super Motions |--------------------------------------------------------

[Command]
name = "QCF_xyz"
command = ~D, DF, F, x+y

[Command]
name = "QCF_xyz"
command = ~D, DF, F, x+z

[Command]
name = "QCF_xyz"
command = ~D, DF, F, y+z

[Command]
name = "QCF_abc"
command = ~D, DF, F, a+b

[Command]
name = "QCF_abc"
command = ~D, DF, F, a+c

[Command]
name = "QCF_abc"
command = ~D, DF, F, b+c

[Command]
name = "QCB_xyz"
command = ~D, DB, B, x+y

[Command]
name = "QCB_xyz"
command = ~D, DB, B, x+z

[Command]
name = "QCB_xyz"
command = ~D, DB, B, y+z

[Command]
name = "DP_xyz"
command = ~F, D, DF, x+y

[Command]
name = "DP_xyz"
command = ~F, D, DF, x+z

[Command]
name = "DP_xyz"
command = ~F, D, DF, y+z


;-| Special Motions |------------------------------------------------------

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "DP_x"
command = ~F, D, DF, x

[Command]
name = "DP_y"
command = ~F, D, DF, y

[Command]
name = "DP_z"
command = ~F, D, DF, z

[Command]
name = "HCB_x"
command = ~F, DF, D, DB, B, x

[Command]
name = "HCB_y"
command = ~F, DF, D, DB, B, y

[Command]
name = "HCB_z"
command = ~F, DF, D, DB, B, z

[Command]
name = "HCB_x"
command = ~F, DF, D, B, x

[Command]
name = "HCB_y"
command = ~F, DF, D, B, y

[Command]
name = "HCB_z"
command = ~F, DF, D, B, z

[Command]
name = "HCB_x"
command = ~F, D, DB, B, x

[Command]
name = "HCB_y"
command = ~F, D, DB, B, y

[Command]
name = "HCB_z"
command = ~F, D, DB, B, z

[Command]
name = "HCB_x"
command = ~F, D, B, x

[Command]
name = "HCB_y"
command = ~F, D, B, y

[Command]
name = "HCB_z"
command = ~F, D, B, z

[Command]
name = "HCF_a"
command = ~B, DB, D, DF, F, a

[Command]
name = "HCF_b"
command = ~B, DB, D, DF, F, b

[Command]
name = "HCF_c"
command = ~B, DB, D, DF, F, c

[Command]
name = "HCF_a"
command = ~B, DB, D, F, a

[Command]
name = "HCF_b"
command = ~B, DB, D, F, b

[Command]
name = "HCF_c"
command = ~B, DB, D, F, c

[Command]
name = "HCF_a"
command = ~B, D, DF, F, a

[Command]
name = "HCF_b"
command = ~B, D, DF, F, b

[Command]
name = "HCF_c"
command = ~B, D, DF, F, c

[Command]
name = "HCF_a"
command = ~B, D, F, a

[Command]
name = "HCF_b"
command = ~B, D, F, b

[Command]
name = "HCF_c"
command = ~B, D, F, c

;-| Super Jump |-----------------------------------------------------------
[Command]
name = "superjump"
command = ~D, U
time = 5

;-| Others Commands |------------------------------------------------------
[Command]
name = "rroll"
command = ~B, DB, D, x

[Command]
name = "rroll"
command = ~B, DB, D, y

[Command]
name = "rroll"
command = ~B, DB, D, z

[Command]
name = "rroll"
command = ~B, DB, D, a

[Command]
name = "rroll"
command = ~B, DB, D, b

[Command]
name = "rroll"
command = ~B, DB, D, c

[Command]
name = "ic"
command = ~B, DB, D, x

[Command]
name = "ic"
command = ~B, DB, D, y

[Command]
name = "ic"
command = ~B, DB, D, z

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

;-| Hold Single Button |----------------------------------------------------
[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
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

;-| Tap Button |------------------------------------------------------------
[Command]
name = "tap_a"
command = ~a
time = 5

[Command]
name = "tap_b"
command = ~b
time = 5

[Command]
name = "tap_c"
command = ~c
time = 5

[Command]
name = "tap_x"
command = ~x
time = 5

[Command]
name = "tap_y"
command = ~y
time = 5

[Command]
name = "tap_z"
command = ~z
time = 5


;===========================================================================
;---------------------------------------------------------------------------
;State Entry
;---------------------------------------------------------------------------
;===========================================================================

[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;Super Attacks
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Hyper Stars N' Stripes

[State -1, Hyper Stars N' Stripes]
type = ChangeState
value = 3100
triggerall = command = "DP_xyz"
triggerall = (power >= 1000) && (PalNo > 6)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA

;---------------------------------------------------------------------------
;Hyper Charging Star

[State -1, Hyper Charging Star]
type = ChangeState
value = 3200
triggerall = command = "QCF_abc"
triggerall = (power >= 1000) && (PalNo > 6)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA

;---------------------------------------------------------------------------
;Final Justice

[State -1, Final Justice]
type = ChangeState
value = 3000
triggerall = command = "QCF_xyz"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA

;---------------------------------------------------------------------------
;Activate Gem

[State -1, Activate Gem]
type = ChangeState
value = 3900
triggerall = command = "QCB_xyz"
triggerall = Var(40) = [1,6]
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA

;===========================================================================
;---------------------------------------------------------------------------
;Special Attacks
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Cartwheel X

[State -1, Cartwheel X]
type = ChangeState
value = 1300
triggerall = command = "HCB_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA

;---------------------------------------------------------------------------
;Cartwheel Y

[State -1, Cartwheel Y]
type = ChangeState
value = 1300
triggerall = command = "HCB_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA

;---------------------------------------------------------------------------
;Cartwheel Z

[State -1, Cartwheel Z]
type = ChangeState
value = 1300
triggerall = command = "HCB_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA

;---------------------------------------------------------------------------
;Charging Star A (MSH)

[State -1, Charging Star A]
type = ChangeState
value = 1400
triggerall = command = "HCF_a"
triggerall = PalNo <= 6
triggerall = Var(40) != 12
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA

;---------------------------------------------------------------------------
;Charging Star B (MSH)

[State -1, Charging Star B]
type = ChangeState
value = 1410
triggerall = command = "HCF_b"
triggerall = PalNo <= 6
triggerall = Var(40) != 12
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA

;---------------------------------------------------------------------------
;Charging Star C (MSH)

[State -1, Charging Star C]
type = ChangeState
value = 1420
triggerall = command = "HCF_c"
triggerall = PalNo <= 6
triggerall = Var(40) != 12
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA

;---------------------------------------------------------------------------
;Power Gem Charging Star A

[State -1, Power Gem Charging Star A]
type = ChangeState
value = 1450
triggerall = command = "HCF_a"
triggerall = Var(40) = 12
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA

;---------------------------------------------------------------------------
;Power Gem Charging Star B

[State -1, Power Gem Charging Star B]
type = ChangeState
value = 1460
triggerall = command = "HCF_b"
triggerall = Var(40) = 12
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA

;---------------------------------------------------------------------------
;Power Gem Charging Star C

[State -1, Power Gem Charging Star C]
type = ChangeState
value = 1470
triggerall = command = "HCF_c"
triggerall = Var(40) = 12
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA

;---------------------------------------------------------------------------
;Stars N' Stripes X

[State -1, Stars N' Stripes X]
type = ChangeState
value = 1200
triggerall = command = "DP_x"
triggerall = Var(40) != 12
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA

;---------------------------------------------------------------------------
;Stars N' Stripes Y

[State -1, Stars N' Stripes Y]
type = ChangeState
value = 1210
triggerall = command = "DP_y"
triggerall = Var(40) != 12
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA

;---------------------------------------------------------------------------
;Stars N' Stripes Z

[State -1, Stars N' Stripes Z]
type = ChangeState
value = 1220
triggerall = command = "DP_z"
triggerall = Var(40) != 12
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA

;---------------------------------------------------------------------------
;Power Gem Stars N' Stripes X

[State -1, Power Gem Stars N' Stripes X]
type = ChangeState
value = 1250
triggerall = command = "DP_x"
triggerall = Var(40) = 12
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA

;---------------------------------------------------------------------------
;Power Gem Stars N' Stripes Y

[State -1, Power Gem Stars N' Stripes Y]
type = ChangeState
value = 1260
triggerall = command = "DP_y"
triggerall = Var(40) = 12
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA

;---------------------------------------------------------------------------
;Power Gem Stars N' Stripes Z

[State -1, Power Gem Stars N' Stripes Z]
type = ChangeState
value = 1270
triggerall = command = "DP_z"
triggerall = Var(40) = 12
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA

;---------------------------------------------------------------------------
;Shield Slash X

[State -1, Shield Slash X]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
triggerall = Var(59) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA

;---------------------------------------------------------------------------
;Shield Slash Y

[State -1, Shield Slash Y]
type = ChangeState
value = 1010
triggerall = command = "QCF_y"
triggerall = Var(59) = 1
triggerall = Var(40) != 12
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA

;---------------------------------------------------------------------------
;Shield Slash Z

[State -1, Shield Slash Z]
type = ChangeState
value = 1020
triggerall = command = "QCF_z"
triggerall = Var(59) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA

;---------------------------------------------------------------------------
;Power Gem Shield Slash Y

[State -1, Power Gem Shield Slash Y]
type = ChangeState
value = 1060
triggerall = command = "QCF_y"
triggerall = Var(59) = 1
triggerall = Var(40) = 12
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA

;---------------------------------------------------------------------------
;Air Shield Slash X

[State -1, Air Shield Slash X]
type = ChangeState
value = 1100
triggerall = command = "QCF_x"
triggerall = Var(59) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = hitdefattr = A, NA

;---------------------------------------------------------------------------
;Air Shield Slash Y

[State -1, Air Shield Slash Y]
type = ChangeState
value = 1110
triggerall = command = "QCF_y"
triggerall = Var(59) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = hitdefattr = A, NA

;---------------------------------------------------------------------------
;Air Shield Slash Z

[State -1, Air Shield Slash Z]
type = ChangeState
value = 1120
triggerall = command = "QCF_z"
triggerall = Var(59) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = hitdefattr = A, NA

;---------------------------------------------------------------------------
;Charging Star A (MvC)

[State -1, Charging Star A]
type = ChangeState
value = 1400
triggerall = command = "QCF_a"
triggerall = PalNo > 6
triggerall = Var(40) != 12
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA

;---------------------------------------------------------------------------
;Charging Star B (MvC)

[State -1, Charging Star B]
type = ChangeState
value = 1410
triggerall = command = "QCF_b"
triggerall = PalNo > 6
triggerall = Var(40) != 12
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA

;---------------------------------------------------------------------------
;Charging Star C (MvC)

[State -1, Charging Star C]
type = ChangeState
value = 1420
triggerall = command = "QCF_c"
triggerall = PalNo > 6
triggerall = Var(40) != 12
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA


;===========================================================================
;---------------------------------------------------------------------------
;Miscellaneous
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Recovery Roll
[State -1, Falling]
type = VarSet
triggerall = command = "rroll"
triggerall = alive = 1
trigger1 = (stateno = 5050) || (stateno = 5071)
v = 30
value = 1

[State -1, Rolling]
type = ChangeState
value = 900
triggerall = Var(30) = 1
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

;---------------------------------------------------------------------------
;Infinite Counter

[State -1, Infinite Counter]
type = ChangeState
value = 950
triggerall = command = "ic"
triggerall = power >= 1000
trigger1 = stateno = [150,153]

;---------------------------------------------------------------------------
;Dash Fwd

[State -1, Dash Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back

[State -1, Dash Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Throw P

[State -1, Throw P]
type = ChangeState
value = 800
triggerall = (command = "z") || (command = "y")
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = (P2StateType = S) || (P2StateType = C)
triggerall = P2MoveType != H
trigger1 = Command = "holdfwd"
trigger1 = P2BodyDist X < 10
trigger2 = Command = "holdback"
trigger2 = P2BodyDist X < 15

;---------------------------------------------------------------------------
;Throw K

[State -1, Throw K]
type = ChangeState
value = 820
triggerall = (command = "c") || (command = "b")
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = (P2StateType = S) || (P2StateType = C)
triggerall = P2MoveType != H
trigger1 = Command = "holdfwd"
trigger1 = P2BodyDist X < 10
trigger2 = Command = "holdback"
trigger2 = P2BodyDist X < 15

;---------------------------------------------------------------------------
;Air Throw P

[State -1, Air Throw P]
type = ChangeState
value = 850
triggerall = (command = "z") || (command = "y")
triggerall = statetype = A
triggerall = ctrl
triggerall = (P2StateType = A) && (P2MoveType != H)
trigger1 = Command = "holdfwd"
trigger1 = (P2BodyDist X < 20) && (P2BodyDist Y = [-40,30])
trigger2 = Command = "holdback"
trigger2 = (P2BodyDist X < 25) && (P2BodyDist Y = [-40,30])


;===========================================================================
;---------------------------------------------------------------------------
;Basic Attacks
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;Stand X

[State -1, Stand X]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 105

;---------------------------------------------------------------------------
;Stand Y

[State -1, Stand Y]
type = ChangeState
value = 201
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 410 && movecontact
trigger6 = stateno = 100
trigger7 = stateno = 105

;---------------------------------------------------------------------------
;Stand Z (without shield)

[State -1, Stand Z]
type = ChangeState
value = 202
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = Var(59) != 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 201 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 211 && movecontact
trigger6 = stateno = 213 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 401 && movecontact
trigger9 = stateno = 404 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 411 && movecontact
trigger12 = stateno = 100
trigger13 = stateno = 105

;---------------------------------------------------------------------------
;Stand Z (with shield)

[State -1, Stand Z]
type = ChangeState
value = 203
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = Var(59) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 201 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 211 && movecontact
trigger6 = stateno = 213 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 401 && movecontact
trigger9 = stateno = 404 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 411 && movecontact
trigger12 = stateno = 100
trigger13 = stateno = 105

;---------------------------------------------------------------------------
;Stand A

[State -1, Stand A]
type = ChangeState
value = 210
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 105

;---------------------------------------------------------------------------
;Stand B

[State -1, Stand B]
type = ChangeState
value = 211
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 410 && movecontact
trigger6 = stateno = 100
trigger7 = stateno = 105

;---------------------------------------------------------------------------
;Stand C

[State -1, Stand C]
type = ChangeState
value = 212
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 201 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 211 && movecontact
trigger6 = stateno = 213 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 401 && movecontact
trigger9 = stateno = 404 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 411 && movecontact
trigger12 = stateno = 100
trigger13 = stateno = 105

;---------------------------------------------------------------------------
;Taunt

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouch X

[State -1, Crouch X]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouch Y (with shield)

[State -1, Crouch Y]
type = ChangeState
value = 401
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = Var(59) = 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 410 && movecontact

;---------------------------------------------------------------------------
;Crouch Z (without shield)

[State -1, Crouch Z]
type = ChangeState
value = 402
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = Var(59) != 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 201 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 211 && movecontact
trigger6 = stateno = 213 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 401 && movecontact
trigger9 = stateno = 404 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 411 && movecontact

;---------------------------------------------------------------------------
;Crouch Z (with shield)

[State -1, Crouch Z]
type = ChangeState
value = 403
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = Var(59) = 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 201 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 211 && movecontact
trigger6 = stateno = 213 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 401 && movecontact
trigger9 = stateno = 404 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 411 && movecontact

;---------------------------------------------------------------------------
;Crouch Y (without shield)

[State -1, Crouch Y]
type = ChangeState
value = 404
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = Var(59) != 1
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 410 && movecontact

;---------------------------------------------------------------------------
;Crouch A

[State -1, Crouch A]
type = ChangeState
value = 410
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouch B

[State -1, Crouch B]
type = ChangeState
value = 411
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 410 && movecontact

;---------------------------------------------------------------------------
;Crouch C

[State -1, Crouch C]
type = ChangeState
value = 412
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 201 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 211 && movecontact
trigger6 = stateno = 213 && movecontact
trigger7 = stateno = 400 && movecontact
trigger8 = stateno = 401 && movecontact
trigger9 = stateno = 404 && movecontact
trigger10 = stateno = 410 && movecontact
trigger11 = stateno = 411 && movecontact

;---------------------------------------------------------------------------
;Down Jump C

[State -1, Down Jump C]
type = ChangeState
value = 613
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 601 && movecontact
trigger4 = stateno = 602 && movecontact
trigger5 = stateno = 605 && movecontact
trigger6 = stateno = 606 && movecontact
trigger7 = stateno = 610 && movecontact
trigger8 = stateno = 611 && movecontact

;---------------------------------------------------------------------------
;Jump X

[State -1, Jump X]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Y (with shield)

[State -1, Jump Y]
type = ChangeState
value = 601
triggerall = command = "y"
triggerall = Var(59) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact

;---------------------------------------------------------------------------
;Jump Z (without shield)

[State -1, Jump Z]
type = ChangeState
value = 602
triggerall = command = "z"
triggerall = Var(59) != 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 601 && movecontact
trigger4 = stateno = 605 && movecontact
trigger5 = stateno = 610 && movecontact
trigger6 = stateno = 611 && movecontact

;---------------------------------------------------------------------------
;Jump Y (without shield)

[State -1, Jump Y]
type = ChangeState
value = 605
triggerall = command = "y"
triggerall = Var(59) != 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact

;---------------------------------------------------------------------------
;Jump Z (with shield)

[State -1, Jump Y]
type = ChangeState
value = 606
triggerall = command = "z"
triggerall = Var(59) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 601 && movecontact
trigger4 = stateno = 605 && movecontact
trigger5 = stateno = 610 && movecontact
trigger6 = stateno = 611 && movecontact

;---------------------------------------------------------------------------
;Jump A

[State -1, Jump A]
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact

;---------------------------------------------------------------------------
;Jump B

[State -1, Jump B]
type = ChangeState
value = 611
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 601 && movecontact
trigger4 = stateno = 605 && movecontact
trigger5 = stateno = 610 && movecontact

;---------------------------------------------------------------------------
;Jump C

[State -1, Jump C]
type = ChangeState
value = 612
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 601 && movecontact
trigger4 = stateno = 602 && movecontact
trigger5 = stateno = 605 && movecontact
trigger6 = stateno = 606 && movecontact
trigger7 = stateno = 610 && movecontact
trigger8 = stateno = 611 && movecontact

;---------------------------------------------------------------------------
;Super Jump

[State -1, Super Jump]
type = ChangeState
value = 40
triggerall = command = "superjump"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Aerial Rave Follow-Jump

[State -1, Aerial Rave]
type = ChangeState
value = 40
triggerall = command = "holdup"
triggerall = movehit
trigger1 = (stateno = 201) && (PalNo <= 6)
trigger2 = (stateno = 201) && (PalNo > 6) && (P2StateType = A)
trigger3 = (stateno = 202) && (P2StateType = A)
trigger4 = stateno = 402
trigger5 = stateno = 403
