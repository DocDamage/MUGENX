;-| Super Motions |--------------------------------------------------------

[Command]
name = "ˆê‘¾“"
command = ~D,DB,B, x+y
time = 15

[Command]
name = "ˆê‘¾“"
command = ~D,DB,B, y+z
time = 15

[Command]
name = "ˆê‘¾“"
command = ~D,DB,B, x+z
time = 15

[Command]
name = "ˆê‘¾“"
command = ~D,DB,B, b
time = 15

[Command]
name = "cŠ[a"
command = ~D,DF,F, x+y
time = 15

[Command]
name = "cŠ[a"
command = ~D,DF,F, y+z
time = 15

[Command]
name = "cŠ[a"
command = ~D,DF,F, x+z
time = 15

[Command]
name = "cŠ[a"
command = ~D,DF,F, b
time = 15

;-| Special Motions |------------------------------------------------------

[Command]
name = "‰¯‚¦‚½"
command = ~D,DB,B, z
time = 15

[Command]
name = "‰¯‚¦‚½"
command = ~D,DB,B, y
time = 15

[Command]
name = "‰¯‚¦‚½"
command = ~D,DB,B, x
time = 15

[Command]
name = "Šù–½a_z"
command = ~F,D,DF, z
time = 15

[Command]
name = "Šù–½a_y"
command = ~F,D,DF, y
time = 15

[Command]
name = "Šù–½a_x"
command = ~F,D,DF, x
time = 15

[Command]
name = "‹S|aE‹­"
command = ~25$B, F, z
time = 10

[Command]
name = "‹S|aEã•’†"
command = ~25$B, F, y
time = 10

[Command]
name = "‹S|aEã•’†"
command = ~25$B, F, x
time = 10

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
name = "‰ñ‚è‚İ"
command = x+y+z
time = 1

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = b
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

;-| Hold Dir |-------------------------------------------------------
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
name = "hold_a"
command = /a
time = 1

[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;ƒAƒhƒoƒ“ƒVƒ“ƒOƒK[ƒh
[State -1]
type = ChangeState
value = 2300
triggerall = stateno = 150
triggerall = statetype != A
trigger1 = command = "b"
trigger2 = command = "‰ñ‚è‚İ"
ignorehitpause = 1

[State -1]
type = ChangeState
value = 2300
triggerall = stateno = 151
triggerall = statetype != A
triggerall = prevstateno != [2300,2301]
trigger1 = command = "b"
trigger2 = command = "‰ñ‚è‚İ"
ignorehitpause = 1

[State -1]
type = ChangeState
value = 2300
triggerall = stateno = 152
triggerall = statetype != A
trigger1 = command = "b"
trigger2 = command = "‰ñ‚è‚İ"
ignorehitpause = 1

[State -1]
type = ChangeState
value = 2300
triggerall = stateno = 153
triggerall = statetype != A
triggerall = prevstateno != [2300,2301]
trigger1 = command = "b"
trigger2 = command = "‰ñ‚è‚İ"
ignorehitpause = 1

;---------------------------------------------------------------------------
;ˆê‘¾“
[State -1]
type = ChangeState
value = 2100
triggerall = command = "ˆê‘¾“"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 200
trigger4 = stateno = [400,410]
trigger5 = stateno = 195

;---------------------------------------------------------------------------
;cŠ[a
[State -1]
type = ChangeState
value = 2000
triggerall = command = "cŠ[a"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 200
trigger4 = stateno = [400,410]
trigger5 = stateno = 195

;---------------------------------------------------------------------------
;‰¯‚¦‚½
[State -1]
type = ChangeState
value = 1200
triggerall = command = "‰¯‚¦‚½"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 200
trigger4 = stateno = [400,410]
trigger5 = stateno = 195

;---------------------------------------------------------------------------
;‰¯‚¦‚½ia‚è•Ô‚µj
[State -1]
type = VarSet
triggerall = stateno = 150|stateno = 152
trigger1 = time = 0
v = 8
value = 0

[State -1]
type = VarSet
triggerall = stateno = 150|stateno = 152
trigger1 = time = 0
trigger2 = command != "holdback" && command != "holddown"
v = 9
value = 0

[State -1]
type = VarSet
triggerall = stateno = [150,153]
trigger1 = command = "x"
v = 8
value = 1

[State -1]
type = VarSet
triggerall = stateno = [150,153]
trigger1 = command = "y"
v = 8
value = 2

[State -1]
type = VarSet
triggerall = stateno = [150,153]
trigger1 = command = "z"
v = 8
value = 3

[State -1]
type = VarSet
triggerall = stateno = [150,153]
trigger1 = command = "holdback"
v = 9
value = 1

[State -1]
type = VarSet
triggerall = stateno = [150,153]
trigger1 = command = "holddown"
v = 9
value = 2

[State -1]
type = ChangeState
value = 1230
triggerall = stateno = 150|stateno = 152
triggerall = command = "x"|command = "y"|command = "z"
triggerall = statetype != A
trigger1 = enemy,stateno = var(10)|enemy,stateno = var(11)|enemy,stateno = var(12)|enemy,stateno = var(13)|enemy,stateno = var(14)|enemy,stateno = var(15)
trigger2 = enemy,stateno = var(16)|enemy,stateno = var(17)|enemy,stateno = var(18)|enemy,stateno = var(19)|enemy,stateno = var(20)|enemy,stateno = var(21)
trigger3 = enemy,stateno = var(22)|enemy,stateno = var(23)|enemy,stateno = var(24)|enemy,stateno = var(25)|enemy,stateno = var(26)|enemy,stateno = var(27)
trigger4 = enemy,stateno = var(28)|enemy,stateno = var(29)|enemy,stateno = var(30)|enemy,stateno = var(31)|enemy,stateno = var(32)|enemy,stateno = var(33)
trigger5 = enemy,stateno = var(34)|enemy,stateno = var(35)|enemy,stateno = var(36)|enemy,stateno = var(37)|enemy,stateno = var(38)|enemy,stateno = var(39)
trigger6 = enemy,stateno = var(40)|enemy,stateno = var(41)|enemy,stateno = var(42)|enemy,stateno = var(43)|enemy,stateno = var(44)|enemy,stateno = var(45)
trigger7 = enemy,stateno = var(46)|enemy,stateno = var(47)|enemy,stateno = var(48)|enemy,stateno = var(49)|enemy,stateno = var(50)|enemy,stateno = var(51)
trigger8 = enemy,stateno = var(52)|enemy,stateno = var(53)|enemy,stateno = var(54)|enemy,stateno = var(55)|enemy,stateno = var(56)|enemy,stateno = var(57)
trigger9 = enemy,stateno = var(58)
ignorehitpause = 1

;---------------------------------------------------------------------------
;ƒK[ƒhƒLƒƒƒ“ƒZƒ‹EŠù–½a
[State -1]
type = ChangeState
value = 2200
triggerall = stateno = 150|stateno = 152
triggerall = statetype != A
trigger1 = command = "Šù–½a_x"
trigger2 = command = "Šù–½a_y"
trigger3 = command = "Šù–½a_z"
ignorehitpause = 1

;---------------------------------------------------------------------------
;Šù–½a
[State -1]
type = varset
trigger1 = stateno != [1100,1101]
trigger1 = command = "Šù–½a_z"
v = 5
value = 3

[State -1]
type = varset
trigger1 = stateno != [1100,1101]
trigger1 = command = "Šù–½a_y"
v = 5
value = 2

[State -1]
type = varset
trigger1 = stateno != [1100,1101]
trigger1 = command = "Šù–½a_x"
v = 5
value = 1

[State -1]
type = ChangeState
value = 1100
triggerall = command = "Šù–½a_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 200
trigger4 = stateno = [400,410]
trigger5 = stateno = 195
trigger6 = stateno = [1000,1001]
trigger6 = prevstateno != 1005
trigger7 = stateno = 1003

[State -1]
type = ChangeState
value = 1100
triggerall = command = "Šù–½a_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 200
trigger4 = stateno = [400,410]
trigger5 = stateno = 195
trigger6 = stateno = [1000,1001]
trigger6 = prevstateno != 1005
trigger7 = stateno = 1003

[State -1]
type = ChangeState
value = 1100
triggerall = command = "Šù–½a_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 200
trigger4 = stateno = [400,410]
trigger5 = stateno = 195
trigger6 = stateno = [1000,1001]
trigger6 = prevstateno != 1005
trigger7 = stateno = 1003

;---------------------------------------------------------------------------
;‹S|aE‹­
[State -1]
type = ChangeState
value = 1005
triggerall = command = "‹S|aE‹­"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = [400,410]
trigger4 = stateno = 195

;---------------------------------------------------------------------------
;‹S|aEã•’†
[State -1]
type = ChangeState
value = 1000
triggerall = command = "‹S|aEã•’†"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200
trigger3 = stateno = [400,410]
trigger4 = stateno = 195

;---------------------------------------------------------------------------
;‰ñ‚è‚İ
[State -1]
type = ChangeState
value = 900
triggerall = statetype != A
triggerall = stateno != 55 && stateno != 901
triggerall = command = "b"
trigger1 = ctrl
trigger2 = stateno = [100,102]

[State -1]
type = ChangeState
value = 900
triggerall = statetype != A
triggerall = stateno != 55 && stateno != 901
triggerall = command = "‰ñ‚è‚İ"
trigger1 = ctrl
trigger2 = stateno = [100,102]

;---------------------------------------------------------------------------
;ƒ_ƒbƒVƒ…
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ƒoƒbƒNƒ_ƒbƒVƒ…
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;“Š‚°
[State -1]
type = ChangeState
value = 800
triggerall = command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 4
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 4
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
;˜A‰Øa
[State -1]
type = ChangeState
value = 700
triggerall = command = "a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 200
trigger4 = stateno = [400,410]
trigger5 = stateno = 195

;˜A‰Øai‹ó’†j
[State -1]
type = ChangeState
value = 710
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600,620]

;---------------------------------------------------------------------------
;—§‚¿ãUŒ‚
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 107

;---------------------------------------------------------------------------
;—§‚¿’†UŒ‚
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command != "holdback"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 107

;---------------------------------------------------------------------------
;Œã‚ëƒŒƒo[“ü‚ê—§‚¿’†UŒ‚
[State -1]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command = "holdback"
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;—§‚¿‹­UŒ‚iˆê”­–Új
[State -1]
type = ChangeState
value = 230
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 107

;—§‚¿‹­UŒ‚i“ñ”­–Új
[State -1]
type = ChangeState
value = 240
triggerall = command = "z"
trigger1 = stateno = 231 && var(3) = 0

;---------------------------------------------------------------------------
;’§”­
[State -1]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚İãUŒ‚
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = statetype = C && stateno = 400 && animelemtime(2) > 2 && var(3) = 0
trigger3 = stateno = [100,102]
trigger4 = stateno = 107

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚İ’†UŒ‚
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 107

;---------------------------------------------------------------------------
;‚µ‚á‚ª‚İ‹­UŒ‚
[State -1]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = [100,102]
trigger3 = stateno = 107

;---------------------------------------------------------------------------
;‹ó’†ãUŒ‚
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;‹ó’†’†UŒ‚
[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;‹ó’†‹­UŒ‚
[State -1]
type = ChangeState
value = 620
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl