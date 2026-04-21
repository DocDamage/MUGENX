;===========================================================================
; Q-Bee (Vampire Savior)
; Made by M@PPY
;http://izanai.cjb.net/

;===========================================================================

;-| Super Motions |--------------------------------------------------------

;+B1
[Command]
name = "+B"
command = ~B,DB,D,DF,F, a+b
time = 30

;+B2
[Command]
name = "+B"
command = ~B,DB,D,DF,F, b+c
time = 30

;+B3
[Command]
name = "+B"
command = ~B,DB,D,DF,F, a+c
time = 30

;+B4
[Command]
name = "+B"
command = ~B,DB,D,DF,F, a+b+c
time = 30

;Qj1
[Command]
name = "Qj"
command = ~F,D,DF, x+y
time = 30

;Qj2
[Command]
name = "Qj"
command = ~F,D,DF, y+z
time = 30

;Qj3
[Command]
name = "Qj"
command = ~F,D,DF, x+z
time = 30

;Qj4
[Command]
name = "Qj"
command = ~F,D,DF, x+y+z
time = 30

;i2
[Command]
name = "i2"
command = a+x
time = 1

;i2
[Command]
name = "i2"
command = b+y
time = 1

;i2
[Command]
name = "i2"
command = c+z
time = 1


;-| Special Motions |------------------------------------------------------
;S×P_a
[Command]
name = "SxP_a"
command = a, a, a
time = 20

;S×P_b
[Command]
name = "SxP_b"
command = b, b, b
time = 20

;S×P_c
[Command]
name = "SxP_c"
command = c, c, c
time = 20

;C->R_x
[Command]
name = "C-R_x"
command = ~B,DB,D,DF,F, x
time = 30

;C->R_y
[Command]
name = "C-R_y"
command = ~B,DB,D,DF,F, y
time = 30

;C->R_z
[Command]
name = "C-R_z"
command = ~B,DB,D,DF,F, z
time = 30

;C->R_ES1
[Command]
name = "C-R_ES"
command = ~B,DB,D,DF,F, x+y
time = 30

;C->R_ES2
[Command]
name = "C-R_ES"
command = ~B,DB,D,DF,F, x+z
time = 30

;C->R_ES3
[Command]
name = "C-R_ES"
command = ~B,DB,D,DF,F, y+z
time = 30

;C->R_ES4
[Command]
name = "C-R_ES"
command = ~B,DB,D,DF,F, x+y+z
time = 30

;O.M._y
[Command]
name = "OM"
command = ~F,DF,D,DB,B, y
time = 30

;O.M._z
[Command]
name = "OM"
command = ~F,DF,D,DB,B, z
time = 30

;O.M._ES1
[Command]
name = "OM_ES"
command = ~F,DF,D,DB,B, x+y
time = 30

;O.M._ES2
[Command]
name = "OM_ES"
command = ~F,DF,D,DB,B, y+z
time = 30

;O.M._ES3
[Command]
name = "OM_ES"
command = ~F,DF,D,DB,B, x+y+z
time = 30

;O.M._ES4
[Command]
name = "OM_ES"
command = ~F,DF,D,DB,B, x+z
time = 30

;R.B.1
[Command]
name = "RB"
command = ~F,D,DF, a
time = 30

;R.B.2
[Command]
name = "RB"
command = ~F,D,DF, b
time = 30

;R.B.3
[Command]
name = "RB"
command = ~F,D,DF, c
time = 30

;R.B._ES1
[Command]
name = "RB_ES"
command = ~F,D,DF, a+b
time = 30

;R.B._ES2
[Command]
name = "RB_ES"
command = ~F,D,DF, b+c
time = 30

;R.B._ES3
[Command]
name = "RB_ES"
command = ~F,D,DF, a+b+c
time = 30

;R.B._ES4
[Command]
name = "RB_ES"
command = ~F,D,DF, a+c
time = 30

;ΔA1
[Command]
name = "DA1"
command = ~D,DB,B, a
time = 30

;ΔA2
[Command]
name = "DA2"
command = ~D,DB,B, b
time = 30

;ΔA3
[Command]
name = "DA3"
command = ~D,DB,B, c
time = 30

;ΔA ES1
[Command]
name = "DA_ES1"
command = ~D,DB,B, a+b
time = 30

;ΔA ES2
[Command]
name = "DA_ES2"
command = ~D,DB,B, b+c
time = 30

;ΔA ES3
[Command]
name = "DA_ES3"
command = ~D,DB,B, a+b+c
time = 30

;ΔA ES4
[Command]
name = "DA_ES4"
command = ~D,DB,B, a+c
time = 30

;追撃1
[Command]
name = "tuigeki"
command = ~D, U, a
time = 20

;追撃2
[Command]
name = "tuigeki"
command = ~D, U, b
time = 20

;追撃3
[Command]
name = "tuigeki"
command = ~D, U, c
time = 20

;アドバンシングガード1
[Command]
name = "adv_a"
command = a, a, a
time = 20
buffer.time = 25

;アドバンシングガード2
[Command]
name = "adv_b"
command = b, b, b
time = 20
buffer.time = 35

;アドバンシングガード3
[Command]
name = "adv_c"
command = c, c, c
time = 20
buffer.time = 45

;アドバンシングガード4
[Command]
name = "adv_x"
command = x, x, x
time = 20
buffer.time = 25

;アドバンシングガード5
[Command]
name = "adv_y"
command = y, y, y
time = 20
buffer.time = 35

;アドバンシングガード6
[Command]
name = "adv_z"
command = z, z, z
time = 20
buffer.time = 75


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

[Command]
name = "a+b"
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------

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

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holddownforward"
command = /$DF
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


[Statedef -1]
;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;Air stop
[State -1, Air_stop]
type = ChangeState
value = 2041
triggerall = stateno = 50 && time = [20,23]
triggerall = command = "holdup"
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = command = "FF"
triggerall = stateno != 100 && stateno != 101 && stateno != 105 && stateno != 106
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Air Dash
[State -1, Air_dash]
type = ChangeState
value = 102
triggerall = stateno = 50 || stateno = 2041
triggerall = command = "FF"
triggerall = stateno != 102 && stateno != 103
;triggerall = p2bodydist x > 0
triggerall = var(3) != 2;not run jump
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = command = "BB"
triggerall = stateno != 100 && stateno != 101 && stateno != 105 && stateno != 106
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;i2
[State -1]
type = ChangeState
value = 3500
triggerall = var(23) = 0 && var(26) = 0 && var(27) = 0;DF OFF
triggerall = command = "i2"
;triggerall = command = "a+b"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;R.B._ES
[State -1]
type = ChangeState
value = 1410
triggerall = stateno = 150 || stateno = 152;guarding
triggerall = power >= 1000
trigger1 = command = "RB_ES"


;---------------------------------------------------------------------------
;R.B.
[State -1]
type = ChangeState
value = 1400
triggerall = stateno = 150 || stateno = 152;guarding
trigger1 = command = "RB"


;---------------------------------------------------------------------------
;Qj
[State -1]
type = ChangeState
value = 2500
triggerall = command = "Qj"
triggerall = power >= 1000
triggerall = numhelper(2501) = 0 && numhelper(2502) = 0 && numhelper(2500) = 0;重複防止
triggerall = numhelper(2801) = 0 && numhelper(2802) = 0 && numhelper(2800) = 0;重複防止
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440



;---------------------------------------------------------------------------
;空中Qj
[State -1]
type = ChangeState
value = 2800
triggerall = command = "Qj"
triggerall = power >= 1000
triggerall = numhelper(2501) = 0 && numhelper(2502) = 0 && numhelper(2500) = 0;重複防止
triggerall = numhelper(2801) = 0 && numhelper(2802) = 0 && numhelper(2800) = 0;重複防止
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640


;---------------------------------------------------------------------------
;+B
[State -1]
type = ChangeState
value = 2000
triggerall = command = "+B"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440



;---------------------------------------------------------------------------
;空中+B
[State -1]
type = ChangeState
value = 2000
triggerall = command = "+B"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640


;---------------------------------------------------------------------------
;C->R_ES
[State -1]
type = ChangeState
value = 1280
triggerall = command = "C-R_ES"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440


;---------------------------------------------------------------------------
;C->R_ES 空中
[State -1]
type = ChangeState
value = 1300
triggerall = command = "C-R_ES"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640


;---------------------------------------------------------------------------
;C->R_x
[State -1]
type = ChangeState
value = 1200
triggerall = command = "C-R_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440


;---------------------------------------------------------------------------
;C->R_y
[State -1]
type = ChangeState
value = 1230
triggerall = command = "C-R_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440


;---------------------------------------------------------------------------
;C->R_z
[State -1]
type = ChangeState
value = 1240
triggerall = command = "C-R_z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440


;---------------------------------------------------------------------------
;空中C->R_x
[State -1]
type = ChangeState
value = 1250
triggerall = command = "C-R_x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640


;---------------------------------------------------------------------------
;空中C->R_y
[State -1]
type = ChangeState
value = 1260
triggerall = command = "C-R_y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640


;---------------------------------------------------------------------------
;空中C->R_z
[State -1]
type = ChangeState
value = 1270
triggerall = command = "C-R_z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640


;---------------------------------------------------------------------------
;O.M._ES
[State -1]
type = ChangeState
value = 1350
triggerall = command = "OM_ES"
triggerall = power >= 1000
triggerall = p2bodydist X < 20
triggerall = p2movetype != H
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;O.M.
[State -1]
type = ChangeState
value = 1310
triggerall = command = "OM"
triggerall = p2bodydist X < 20
triggerall = p2movetype != H
triggerall = p2statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1


;---------------------------------------------------------------------------
;S×P_a
[State -1]
type = ChangeState
value = 1000
triggerall = command = "SxP_a"
triggerall = statetype = S || statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440



;---------------------------------------------------------------------------
;S×P_b
[State -1]
type = ChangeState
value = 1010
triggerall = command = "SxP_b"
triggerall = statetype = S || statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440



;---------------------------------------------------------------------------
;S×P_c
[State -1]
type = ChangeState
value = 1020
triggerall = command = "SxP_c"
triggerall = statetype = S || statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440



;---------------------------------------------------------------------------
;空中S×P_a
[State -1]
type = ChangeState
value = 1100
triggerall = command = "SxP_a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640


;---------------------------------------------------------------------------
;空中S×P_b
[State -1]
type = ChangeState
value = 1110
triggerall = command = "SxP_b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640


;---------------------------------------------------------------------------
;空中S×P_c
[State -1]
type = ChangeState
value = 1120
triggerall = command = "SxP_c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640


;---------------------------------------------------------------------------
;ΔA ES
[State -1]
type = ChangeState
value = 1580
triggerall = command = "DA_ES1" || command = "DA_ES2" || command = "DA_ES3" || command = "DA_ES4"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440



;---------------------------------------------------------------------------
;Air_ΔA ES
[State -1]
type = ChangeState
value = 1590
triggerall = command = "DA_ES1" || command = "DA_ES2" || command = "DA_ES3" || command = "DA_ES4"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640


;---------------------------------------------------------------------------
;ΔA1
[State -1]
type = ChangeState
value = 1500
triggerall = command = "DA1"
;triggerall = command = "a+b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440



;---------------------------------------------------------------------------
;ΔA2
[State -1]
type = ChangeState
value = 1510
triggerall = command = "DA2"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440



;---------------------------------------------------------------------------
;ΔA3
[State -1]
type = ChangeState
value = 1520
triggerall = command = "DA3"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440



;---------------------------------------------------------------------------
;Air_ΔA1
[State -1]
type = ChangeState
value = 1550
triggerall = command = "DA1"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640


;---------------------------------------------------------------------------
;Air_ΔA2
[State -1]
type = ChangeState
value = 1560
triggerall = command = "DA2"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640


;---------------------------------------------------------------------------
;Air_ΔA3
[State -1]
type = ChangeState
value = 1570
triggerall = command = "DA3"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact && stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640


;---------------------------------------------------------------------------
;アドバンシングガードS
[State -1]
type = ChangeState
value = 980
triggerall = stateno = [150,151]
trigger1 = command = "adv_a" || command = "adv_b" || command = "adv_c" || command = "adv_x" || command = "adv_y" || command = "adv_z"


;---------------------------------------------------------------------------
;アドバンシングガードC
[State -1]
type = ChangeState
value = 982
triggerall = stateno = [152,153]
trigger1 = command = "adv_a" || command = "adv_b" || command = "adv_c" || command = "adv_x" || command = "adv_y" || command = "adv_z"


;---------------------------------------------------------------------------
;アドバンシングガードA
[State -1]
type = null;ChangeState
value = 983
triggerall = stateno = [154,155]
trigger1 = command = "adv_a" || command = "adv_b" || command = "adv_c" || command = "adv_x" || command = "adv_y" || command = "adv_z"


;---------------------------------------------------------------------------
;Cn
[State -1]
type = ChangeState
value = 900
triggerall = command = "y" || command = "z"
triggerall = command != "holddown"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = p2bodydist X < 10
triggerall = p2movetype != H
triggerall = p2statetype = S || p2statetype = C
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Ca
[State -1]
type = ChangeState
value = 950
triggerall = command = "y" || command = "z"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = p2bodydist X < 10 && p2bodydist Y > -25 && p2bodydist Y < 25
triggerall = p2movetype != H
triggerall = p2statetype = A
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
;追撃
[State -1]
type = ChangeState
value = 700
triggerall = command = "tuigeki"
;triggerall = command = "a+b"
triggerall = p2stateno = 5110; && p2statetype = L && movetype= H
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 40 || (stateno = [400,499])
trigger3 = stateno >= 10 && stateno <= 12


;===========================================================================
;---------------------------------------------------------------------------
;立ちキック弱
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && time > 5
trigger3 = movecontact && stateno = 230 || stateno = 400 || stateno = 430


;---------------------------------------------------------------------------
;立ちキック中
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440


;---------------------------------------------------------------------------
;立ちキック強
[State -1]
type = ChangeState
value = 220
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 410 || stateno = 430 || stateno = 440


;---------------------------------------------------------------------------
;立ちパンチ弱
[State -1]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 230 && time > 5
trigger3 = movecontact && stateno = 430 

;---------------------------------------------------------------------------
;立ちパンチ中
[State -1]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 230 || stateno = 430 || stateno = 440


;---------------------------------------------------------------------------
;立ちパンチ強
[State -1]
type = ChangeState
value = 250
triggerall = !numhelper(250)
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 230 || stateno = 240 || stateno = 430 || stateno = 440


;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && stateno = 400 && time > 5
trigger3 = movecontact && stateno = 200 || stateno = 210 || stateno = 430


;---------------------------------------------------------------------------
;しゃがみ中キック
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 || stateno = 210 || stateno = 230 || stateno = 240 || stateno = 400 || stateno = 430 || stateno = 440


;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1]
type = ChangeState
value = 420
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && stateno = 430 && time > 5
trigger3 = movecontact && stateno = 230


;---------------------------------------------------------------------------
;しゃがみ中パンチ
[State -1]
type = ChangeState
value = 440
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && stateno = 230 || stateno = 430 || stateno = 240


;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1]
type = ChangeState
value = 450
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && stateno = 230 || stateno = 240 || stateno = 430 || stateno = 440


;---------------------------------------------------------------------------
;ジャンプ弱キック
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプ中キック
[State -1]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && stateno = 600 || stateno = 630

;---------------------------------------------------------------------------
;ジャンプ強キック
[State -1]
type = ChangeState
value = 620
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640

;---------------------------------------------------------------------------
;ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプ中パンチ
[State -1]
type = ChangeState
value = 640
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && stateno = 600 || stateno = 630

;---------------------------------------------------------------------------
;ジャンプ強パンチ
[State -1]
type = ChangeState
value = 650
triggerall = !numhelper(650)
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && stateno = 600 || stateno = 610 || stateno = 630 || stateno = 640


