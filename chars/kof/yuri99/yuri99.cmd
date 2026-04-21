;-| Super Motions |--------------------------------------------------------

[Command]
name = "ryuko_a"
command = ~D, DF, F, DF, B, a
time = 40

[Command]
name = "ryuko_b"
command = ~D, DF, F, DF, B, b
time = 40

[Command]
name = "qcfqcf_x"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "qcfqcf_y"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "qcfqcfkk"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "qcfqcfkk2"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "qcbqcb_a"
command = ~D, DB, B, D, DB, B, a
time = 30

[Command]
name = "qcbqcb_b"
command = ~D, DB, B, D, DB, B, b
time = 30

[Command]
name = "qcbhcf_x"
command = ~D, DB, B, D, DB, B, x
time = 30

[Command]
name = "qcbhcf_y"
command = ~D, DB, B, D, DB, B,  y
time = 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "binta_a"
command = ~F, DF, D, DB, F, a
time = 30

[Command]
name = "binta_b"
command = ~F, DF, D, DB, F, b
time = 30

[Command]
name = "qcf_x"
command = ~D, F, x
time = 15

[Command]
name = "qcf_y"
command = ~D, F, y
time = 15

[Command]
name = "qcb_x"
command = ~D, B, x
time = 15

[Command]
name = "qcb_y"
command = ~D, B, y
time = 15

[Command]
name = "hcb_x"
command = ~F, D, B, x
time = 30

[Command]
name = "hcb_y"
command = ~F, D, B, y
time = 30

[Command]
name = "hcb_a"
command = ~F, D, B, a
time = 30

[Command]
name = "hcb_b"
command = ~F, D, B, b
time = 30

[Command]
name = "rdp_a"
command = ~B, D, DB, a
time = 15

[Command]
name = "rdp_b"
command = ~B, D, DB, b
time = 15

[Command]
name = "qcf_a"
command = ~D, F, a
time = 15

[Command]
name = "qcf_b"
command = ~D, F, b
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
name = "charge_a"
command = ~D, DB, B, a
time = 15

[Command]
name = "charge_b"
command = ~D, DB, B, b
time = 15


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
name = "kaihi2"
command = /B,x+a
time = 1

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "dodge"
command = x+y
time = 1

[Command]
name = "kaihi"
command = x+a
time = 1

[Command]
name = "bakuhatu"
command = y+b
time = 1

[Command]
name = "knockdown"
command = a+b
time = 1

[Command]
name = "abc"
command = a+b+c
time = 1

;-| Dir + Button |---------------------------------------------------------
 
[Command]
name = "fwd_a"
command = /F,a

[Command]
name = "back_a"
command = /B,a

[Command]
name = "fwd_b"
command = /F,b

[Command]
name = "back_b"
command = /B,b

[Command]
name = "fwd_x"
command = /F,x

[Command]
name = "back_x"
command = /B,x

[Command]
name = "fwd_y"
command = /F,y

[Command]
name = "back_y"
command = /B,y

[Command]
name = "down_y"
command = /D, y


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
name = "x"
command = x
time = 1

[Command]
name = "hold_x"
command = /$x
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
name = "z"
command = z
time = 1

[Command]
name = "hold_z"
command = /$z
time = 1


[Command]
name = "s"
command = s
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

;-|Commands|------------------------------------------------------------------------------


[Statedef -1]

[State -1]
type = ChangeState
value = 4912
triggerall = command = "ryuko_a"
triggerall = power >= 1000
trigger1 = var(5) >= 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = var(5) >= 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = var(5) >= 1
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = var(5) >= 1
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = var(5) >= 1
trigger5 = stateno = 250
trigger5 = movecontact
trigger6 = var(5) >= 1
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = var(5) >= 1
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = var(5) >= 1
trigger8 = stateno = 235
trigger8 = movecontact
trigger9 = var(5) >= 1
trigger9 = stateno = 260
trigger9 = movecontact
trigger10 = var(5) >= 1
trigger10 = stateno = 400
trigger10 = movecontact
trigger11 = var(5) >= 1
trigger11 = stateno = 410
trigger11 = movecontact
trigger12 = var(5) >= 1
trigger12 = stateno = 430
trigger12 = movecontact
trigger13 = var(5) >= 1
trigger13 = stateno = 320
trigger13 = movecontact
trigger14 = var(5) >= 1
trigger14 = stateno = 215
trigger14 = movecontact
trigger15 = var(5) >= 1
trigger15 = stateno = 220
trigger15 = movecontact
trigger16 = var(5) >= 1
trigger16 = stateno = 258
trigger16 = movecontact
trigger17 = var(5) >= 1
trigger17 = stateno = 302
trigger17 = movecontact
trigger18 = life <= 200
trigger18 = statetype != A
trigger18 = ctrl = 1
trigger19 = life <= 200
trigger19 = stateno = 200
trigger19 = movecontact
trigger20 = life <= 200
trigger20 = stateno = 205
trigger20 = movecontact
trigger21 = life <= 200
trigger21 = stateno = 210
trigger21 = movecontact
trigger22 = life <= 200
trigger22 = stateno = 250
trigger22 = movecontact
trigger23 = life <= 200
trigger23 = stateno = 225
trigger23 = movecontact
trigger24 = life <= 200
trigger24 = stateno = 230
trigger24 = movecontact
trigger25 = life <= 200
trigger25 = stateno = 235
trigger25 = movecontact
trigger26 = life <= 200
trigger26 = stateno = 260
trigger26 = movecontact
trigger27 = life <= 200
trigger27 = stateno = 400
trigger27 = movecontact
trigger28 = life <= 200
trigger28 = stateno = 410
trigger28 = movecontact
trigger29 = life <= 200
trigger29 = stateno = 430
trigger29 = movecontact
trigger30 = life <= 200
trigger30 = stateno = 320
trigger30 = movecontact
trigger31 = life <= 200
trigger31 = stateno = 215
trigger31 = movecontact
trigger32 = life <= 200
trigger32 = stateno = 220
trigger32 = movecontact
trigger33 = life <= 200
trigger33 = stateno = 258
trigger33 = movecontact
trigger34 = life <= 200
trigger34 = stateno = 302
trigger34 = movecontact


[State -1]
type = ChangeState
value = 4913
triggerall = command = "ryuko_b"
triggerall = power >= 1000
trigger1 = var(5) >= 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = var(5) >= 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = var(5) >= 1
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = var(5) >= 1
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = var(5) >= 1
trigger5 = stateno = 250
trigger5 = movecontact
trigger6 = var(5) >= 1
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = var(5) >= 1
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = var(5) >= 1
trigger8 = stateno = 235
trigger8 = movecontact
trigger9 = var(5) >= 1
trigger9 = stateno = 260
trigger9 = movecontact
trigger10 = var(5) >= 1
trigger10 = stateno = 400
trigger10 = movecontact
trigger11 = var(5) >= 1
trigger11 = stateno = 410
trigger11 = movecontact
trigger12 = var(5) >= 1
trigger12 = stateno = 430
trigger12 = movecontact
trigger13 = var(5) >= 1
trigger13 = stateno = 320
trigger13 = movecontact
trigger14 = var(5) >= 1
trigger14 = stateno = 215
trigger14 = movecontact
trigger15 = var(5) >= 1
trigger15 = stateno = 220
trigger15 = movecontact
trigger16 = var(5) >= 1
trigger16 = stateno = 258
trigger16 = movecontact
trigger17 = var(5) >= 1
trigger17 = stateno = 302
trigger17 = movecontact
trigger18 = life <= 200
trigger18 = statetype != A
trigger18 = ctrl = 1
trigger19 = life <= 200
trigger19 = stateno = 200
trigger19 = movecontact
trigger20 = life <= 200
trigger20 = stateno = 205
trigger20 = movecontact
trigger21 = life <= 200
trigger21 = stateno = 210
trigger21 = movecontact
trigger22 = life <= 200
trigger22 = stateno = 250
trigger22 = movecontact
trigger23 = life <= 200
trigger23 = stateno = 225
trigger23 = movecontact
trigger24 = life <= 200
trigger24 = stateno = 230
trigger24 = movecontact
trigger25 = life <= 200
trigger25 = stateno = 235
trigger25 = movecontact
trigger26 = life <= 200
trigger26 = stateno = 260
trigger26 = movecontact
trigger27 = life <= 200
trigger27 = stateno = 400
trigger27 = movecontact
trigger28 = life <= 200
trigger28 = stateno = 410
trigger28 = movecontact
trigger29 = life <= 200
trigger29 = stateno = 430
trigger29 = movecontact
trigger30 = life <= 200
trigger30 = stateno = 320
trigger30 = movecontact
trigger31 = life <= 200
trigger31 = stateno = 215
trigger31 = movecontact
trigger32 = life <= 200
trigger32 = stateno = 220
trigger32 = movecontact
trigger33 = life <= 200
trigger33 = stateno = 258
trigger33 = movecontact
trigger34 = life <= 200
trigger34 = stateno = 302
trigger34 = movecontact


; 182 shiki (DM)
[State -1]
type = ChangeState
value = 4600
triggerall = command = "qcfqcf_x"
triggerall = power >= 1000
trigger1 = var(5) >= 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = var(5) >= 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = var(5) >= 1
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = var(5) >= 1
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = var(5) >= 1
trigger5 = stateno = 250
trigger5 = movecontact
trigger6 = var(5) >= 1
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = var(5) >= 1
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = var(5) >= 1
trigger8 = stateno = 235
trigger8 = movecontact
trigger9 = var(5) >= 1
trigger9 = stateno = 260
trigger9 = movecontact
trigger10 = var(5) >= 1
trigger10 = stateno = 400
trigger10 = movecontact
trigger11 = var(5) >= 1
trigger11 = stateno = 410
trigger11 = movecontact
trigger12 = var(5) >= 1
trigger12 = stateno = 430
trigger12 = movecontact
trigger13 = var(5) >= 1
trigger13 = stateno = 320
trigger13 = movecontact
trigger14 = var(5) >= 1
trigger14 = stateno = 215
trigger14 = movecontact
trigger15 = var(5) >= 1
trigger15 = stateno = 220
trigger15 = movecontact
trigger16 = var(5) >= 1
trigger16 = stateno = 258
trigger16 = movecontact
trigger17 = var(5) >= 1
trigger17 = stateno = 302
trigger17 = movecontact
trigger18 = life <= 200
trigger18 = statetype != A
trigger18 = ctrl = 1
trigger19 = life <= 200
trigger19 = stateno = 200
trigger19 = movecontact
trigger20 = life <= 200
trigger20 = stateno = 205
trigger20 = movecontact
trigger21 = life <= 200
trigger21 = stateno = 210
trigger21 = movecontact
trigger22 = life <= 200
trigger22 = stateno = 250
trigger22 = movecontact
trigger23 = life <= 200
trigger23 = stateno = 225
trigger23 = movecontact
trigger24 = life <= 200
trigger24 = stateno = 230
trigger24 = movecontact
trigger25 = life <= 200
trigger25 = stateno = 235
trigger25 = movecontact
trigger26 = life <= 200
trigger26 = stateno = 260
trigger26 = movecontact
trigger27 = life <= 200
trigger27 = stateno = 400
trigger27 = movecontact
trigger28 = life <= 200
trigger28 = stateno = 410
trigger28 = movecontact
trigger29 = life <= 200
trigger29 = stateno = 430
trigger29 = movecontact
trigger30 = life <= 200
trigger30 = stateno = 320
trigger30 = movecontact
trigger31 = life <= 200
trigger31 = stateno = 215
trigger31 = movecontact
trigger32 = life <= 200
trigger32 = stateno = 220
trigger32 = movecontact
trigger33 = life <= 200
trigger33 = stateno = 258
trigger33 = movecontact
trigger34 = life <= 200
trigger34 = stateno = 302
trigger34 = movecontact


; 182 shiki (DM)
[State -1]
type = ChangeState
value = 4660
triggerall = command = "qcfqcf_y"
triggerall = power >= 1000
trigger1 = var(5) >= 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = var(5) >= 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = var(5) >= 1
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = var(5) >= 1
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = var(5) >= 1
trigger5 = stateno = 250
trigger5 = movecontact
trigger6 = var(5) >= 1
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = var(5) >= 1
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = var(5) >= 1
trigger8 = stateno = 235
trigger8 = movecontact
trigger9 = var(5) >= 1
trigger9 = stateno = 260
trigger9 = movecontact
trigger10 = var(5) >= 1
trigger10 = stateno = 400
trigger10 = movecontact
trigger11 = var(5) >= 1
trigger11 = stateno = 410
trigger11 = movecontact
trigger12 = var(5) >= 1
trigger12 = stateno = 430
trigger12 = movecontact
trigger13 = var(5) >= 1
trigger13 = stateno = 320
trigger13 = movecontact
trigger14 = var(5) >= 1
trigger14 = stateno = 215
trigger14 = movecontact
trigger15 = var(5) >= 1
trigger15 = stateno = 220
trigger15 = movecontact
trigger16 = var(5) >= 1
trigger16 = stateno = 258
trigger16 = movecontact
trigger17 = var(5) >= 1
trigger17 = stateno = 302
trigger17 = movecontact
trigger18 = life <= 200
trigger18 = statetype != A
trigger18 = ctrl = 1
trigger19 = life <= 200
trigger19 = stateno = 200
trigger19 = movecontact
trigger20 = life <= 200
trigger20 = stateno = 205
trigger20 = movecontact
trigger21 = life <= 200
trigger21 = stateno = 210
trigger21 = movecontact
trigger22 = life <= 200
trigger22 = stateno = 250
trigger22 = movecontact
trigger23 = life <= 200
trigger23 = stateno = 225
trigger23 = movecontact
trigger24 = life <= 200
trigger24 = stateno = 230
trigger24 = movecontact
trigger25 = life <= 200
trigger25 = stateno = 235
trigger25 = movecontact
trigger26 = life <= 200
trigger26 = stateno = 260
trigger26 = movecontact
trigger27 = life <= 200
trigger27 = stateno = 400
trigger27 = movecontact
trigger28 = life <= 200
trigger28 = stateno = 410
trigger28 = movecontact
trigger29 = life <= 200
trigger29 = stateno = 430
trigger29 = movecontact
trigger30 = life <= 200
trigger30 = stateno = 320
trigger30 = movecontact
trigger31 = life <= 200
trigger31 = stateno = 215
trigger31 = movecontact
trigger32 = life <= 200
trigger32 = stateno = 220
trigger32 = movecontact
trigger33 = life <= 200
trigger33 = stateno = 258
trigger33 = movecontact
trigger34 = life <= 200
trigger34 = stateno = 302
trigger34 = movecontact


;Ryukuranbu
[State -1]
type = ChangeState
value = 4800
triggerall = command = "qcfqcfkk"
triggerall = power >= 1000 ;Level 1
trigger1 = var(5) >= 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = var(5) >= 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = var(5) >= 1
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = var(5) >= 1
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = var(5) >= 1
trigger5 = stateno = 250
trigger5 = movecontact
trigger6 = var(5) >= 1
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = var(5) >= 1
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = var(5) >= 1
trigger8 = stateno = 235
trigger8 = movecontact
trigger9 = var(5) >= 1
trigger9 = stateno = 260
trigger9 = movecontact
trigger10 = var(5) >= 1
trigger10 = stateno = 400
trigger10 = movecontact
trigger11 = var(5) >= 1
trigger11 = stateno = 410
trigger11 = movecontact
trigger12 = var(5) >= 1
trigger12 = stateno = 430
trigger12 = movecontact
trigger13 = var(5) >= 1
trigger13 = stateno = 320
trigger13 = movecontact
trigger14 = var(5) >= 1
trigger14 = stateno = 215
trigger14 = movecontact
trigger15 = var(5) >= 1
trigger15 = stateno = 220
trigger15 = movecontact
trigger16 = var(5) >= 1
trigger16 = stateno = 258
trigger16 = movecontact
trigger17 = var(5) >= 1
trigger17 = stateno = 302
trigger17 = movecontact
trigger18 = life <= 200
trigger18 = statetype != A
trigger18 = ctrl = 1
trigger19 = life <= 200
trigger19 = stateno = 200
trigger19 = movecontact
trigger20 = life <= 200
trigger20 = stateno = 205
trigger20 = movecontact
trigger21 = life <= 200
trigger21 = stateno = 210
trigger21 = movecontact
trigger22 = life <= 200
trigger22 = stateno = 250
trigger22 = movecontact
trigger23 = life <= 200
trigger23 = stateno = 225
trigger23 = movecontact
trigger24 = life <= 200
trigger24 = stateno = 230
trigger24 = movecontact
trigger25 = life <= 200
trigger25 = stateno = 235
trigger25 = movecontact
trigger26 = life <= 200
trigger26 = stateno = 260
trigger26 = movecontact
trigger27 = life <= 200
trigger27 = stateno = 400
trigger27 = movecontact
trigger28 = life <= 200
trigger28 = stateno = 410
trigger28 = movecontact
trigger29 = life <= 200
trigger29 = stateno = 430
trigger29 = movecontact
trigger30 = life <= 200
trigger30 = stateno = 320
trigger30 = movecontact
trigger31 = life <= 200
trigger31 = stateno = 215
trigger31 = movecontact
trigger32 = life <= 200
trigger32 = stateno = 220
trigger32 = movecontact
trigger33 = life <= 200
trigger33 = stateno = 258
trigger33 = movecontact
trigger34 = life <= 200
trigger34 = stateno = 302
trigger34 = movecontact


 [State -1]
type = ChangeState
value = 4901
triggerall = command = "qcfqcfkk2"
triggerall = power >= 1000 ;Level 1
trigger1 = var(5) >= 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = var(5) >= 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = var(5) >= 1
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = var(5) >= 1
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = var(5) >= 1
trigger5 = stateno = 250
trigger5 = movecontact
trigger6 = var(5) >= 1
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = var(5) >= 1
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = var(5) >= 1
trigger8 = stateno = 235
trigger8 = movecontact
trigger9 = var(5) >= 1
trigger9 = stateno = 260
trigger9 = movecontact
trigger10 = var(5) >= 1
trigger10 = stateno = 400
trigger10 = movecontact
trigger11 = var(5) >= 1
trigger11 = stateno = 410
trigger11 = movecontact
trigger12 = var(5) >= 1
trigger12 = stateno = 430
trigger12 = movecontact
trigger13 = var(5) >= 1
trigger13 = stateno = 320
trigger13 = movecontact
trigger14 = var(5) >= 1
trigger14 = stateno = 215
trigger14 = movecontact
trigger15 = var(5) >= 1
trigger15 = stateno = 220
trigger15 = movecontact
trigger16 = var(5) >= 1
trigger16 = stateno = 258
trigger16 = movecontact
trigger17 = var(5) >= 1
trigger17 = stateno = 302
trigger17 = movecontact
trigger18 = life <= 200
trigger18 = statetype != A
trigger18 = ctrl = 1
trigger19 = life <= 200
trigger19 = stateno = 200
trigger19 = movecontact
trigger20 = life <= 200
trigger20 = stateno = 205
trigger20 = movecontact
trigger21 = life <= 200
trigger21 = stateno = 210
trigger21 = movecontact
trigger22 = life <= 200
trigger22 = stateno = 250
trigger22 = movecontact
trigger23 = life <= 200
trigger23 = stateno = 225
trigger23 = movecontact
trigger24 = life <= 200
trigger24 = stateno = 230
trigger24 = movecontact
trigger25 = life <= 200
trigger25 = stateno = 235
trigger25 = movecontact
trigger26 = life <= 200
trigger26 = stateno = 260
trigger26 = movecontact
trigger27 = life <= 200
trigger27 = stateno = 400
trigger27 = movecontact
trigger28 = life <= 200
trigger28 = stateno = 410
trigger28 = movecontact
trigger29 = life <= 200
trigger29 = stateno = 430
trigger29 = movecontact
trigger30 = life <= 200
trigger30 = stateno = 320
trigger30 = movecontact
trigger31 = life <= 200
trigger31 = stateno = 215
trigger31 = movecontact
trigger32 = life <= 200
trigger32 = stateno = 220
trigger32 = movecontact
trigger33 = life <= 200
trigger33 = stateno = 258
trigger33 = movecontact
trigger34 = life <= 200
trigger34 = stateno = 302
trigger34 = movecontact


 [State -1]
type = ChangeState
value = 4919
triggerall = command = "qcbhcf_x"
triggerall = power >= 1000 ;Level 1
triggerall = NumHelper(4500) = 0
triggerall = NumHelper(4919) = 0
trigger1 = var(5) >= 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = var(5) >= 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = var(5) >= 1
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = var(5) >= 1
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = var(5) >= 1
trigger5 = stateno = 250
trigger5 = movecontact
trigger6 = var(5) >= 1
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = var(5) >= 1
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = var(5) >= 1
trigger8 = stateno = 235
trigger8 = movecontact
trigger9 = var(5) >= 1
trigger9 = stateno = 260
trigger9 = movecontact
trigger10 = var(5) >= 1
trigger10 = stateno = 400
trigger10 = movecontact
trigger11 = var(5) >= 1
trigger11 = stateno = 410
trigger11 = movecontact
trigger12 = var(5) >= 1
trigger12 = stateno = 430
trigger12 = movecontact
trigger13 = var(5) >= 1
trigger13 = stateno = 320
trigger13 = movecontact
trigger14 = var(5) >= 1
trigger14 = stateno = 215
trigger14 = movecontact
trigger15 = var(5) >= 1
trigger15 = stateno = 220
trigger15 = movecontact
trigger16 = var(5) >= 1
trigger16 = stateno = 258
trigger16 = movecontact
trigger17 = var(5) >= 1
trigger17 = stateno = 302
trigger17 = movecontact
trigger18 = life <= 200
trigger18 = statetype != A
trigger18 = ctrl = 1
trigger19 = life <= 200
trigger19 = stateno = 200
trigger19 = movecontact
trigger20 = life <= 200
trigger20 = stateno = 205
trigger20 = movecontact
trigger21 = life <= 200
trigger21 = stateno = 210
trigger21 = movecontact
trigger22 = life <= 200
trigger22 = stateno = 250
trigger22 = movecontact
trigger23 = life <= 200
trigger23 = stateno = 225
trigger23 = movecontact
trigger24 = life <= 200
trigger24 = stateno = 230
trigger24 = movecontact
trigger25 = life <= 200
trigger25 = stateno = 235
trigger25 = movecontact
trigger26 = life <= 200
trigger26 = stateno = 260
trigger26 = movecontact
trigger27 = life <= 200
trigger27 = stateno = 400
trigger27 = movecontact
trigger28 = life <= 200
trigger28 = stateno = 410
trigger28 = movecontact
trigger29 = life <= 200
trigger29 = stateno = 430
trigger29 = movecontact
trigger30 = life <= 200
trigger30 = stateno = 320
trigger30 = movecontact
trigger31 = life <= 200
trigger31 = stateno = 215
trigger31 = movecontact
trigger32 = life <= 200
trigger32 = stateno = 220
trigger32 = movecontact
trigger33 = life <= 200
trigger33 = stateno = 258
trigger33 = movecontact
trigger34 = life <= 200
trigger34 = stateno = 302
trigger34 = movecontact


 [State -1]
type = ChangeState
value = 4919
triggerall = command = "qcbhcf_y"
triggerall = power >= 1000 ;Level 1
triggerall = NumHelper(4500) = 0
triggerall = NumHelper(4919) = 0
trigger1 = var(5) >= 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = var(5) >= 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = var(5) >= 1
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = var(5) >= 1
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = var(5) >= 1
trigger5 = stateno = 250
trigger5 = movecontact
trigger6 = var(5) >= 1
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = var(5) >= 1
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = var(5) >= 1
trigger8 = stateno = 235
trigger8 = movecontact
trigger9 = var(5) >= 1
trigger9 = stateno = 260
trigger9 = movecontact
trigger10 = var(5) >= 1
trigger10 = stateno = 400
trigger10 = movecontact
trigger11 = var(5) >= 1
trigger11 = stateno = 410
trigger11 = movecontact
trigger12 = var(5) >= 1
trigger12 = stateno = 430
trigger12 = movecontact
trigger13 = var(5) >= 1
trigger13 = stateno = 320
trigger13 = movecontact
trigger14 = var(5) >= 1
trigger14 = stateno = 215
trigger14 = movecontact
trigger15 = var(5) >= 1
trigger15 = stateno = 220
trigger15 = movecontact
trigger16 = var(5) >= 1
trigger16 = stateno = 258
trigger16 = movecontact
trigger17 = var(5) >= 1
trigger17 = stateno = 302
trigger17 = movecontact
trigger18 = life <= 200
trigger18 = statetype != A
trigger18 = ctrl = 1
trigger19 = life <= 200
trigger19 = stateno = 200
trigger19 = movecontact
trigger20 = life <= 200
trigger20 = stateno = 205
trigger20 = movecontact
trigger21 = life <= 200
trigger21 = stateno = 210
trigger21 = movecontact
trigger22 = life <= 200
trigger22 = stateno = 250
trigger22 = movecontact
trigger23 = life <= 200
trigger23 = stateno = 225
trigger23 = movecontact
trigger24 = life <= 200
trigger24 = stateno = 230
trigger24 = movecontact
trigger25 = life <= 200
trigger25 = stateno = 235
trigger25 = movecontact
trigger26 = life <= 200
trigger26 = stateno = 260
trigger26 = movecontact
trigger27 = life <= 200
trigger27 = stateno = 400
trigger27 = movecontact
trigger28 = life <= 200
trigger28 = stateno = 410
trigger28 = movecontact
trigger29 = life <= 200
trigger29 = stateno = 430
trigger29 = movecontact
trigger30 = life <= 200
trigger30 = stateno = 320
trigger30 = movecontact
trigger31 = life <= 200
trigger31 = stateno = 215
trigger31 = movecontact
trigger32 = life <= 200
trigger32 = stateno = 220
trigger32 = movecontact
trigger33 = life <= 200
trigger33 = stateno = 258
trigger33 = movecontact
trigger34 = life <= 200
trigger34 = stateno = 302
trigger34 = movecontact


[State -1]
type = ChangeState
value = 4000
triggerall = command = "ryuko_a"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 250
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 235
trigger8 = movecontact
trigger9 = stateno = 260
trigger9 = movecontact
trigger10 = stateno = 400
trigger10 = movecontact
trigger11 = stateno = 410
trigger11 = movecontact
trigger12 = stateno = 430
trigger12 = movecontact
trigger13 = stateno = 320
trigger13 = movecontact
trigger14 = stateno = 215
trigger14 = movecontact
trigger15 = stateno = 220
trigger15 = movecontact
trigger16 = stateno = 258
trigger16 = movecontact
trigger17 = stateno = 302
trigger17 = movecontact


[State -1]
type = ChangeState
value = 4010
triggerall = command = "ryuko_b"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 250
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 235
trigger8 = movecontact
trigger9 = stateno = 260
trigger9 = movecontact
trigger10 = stateno = 400
trigger10 = movecontact
trigger11 = stateno = 410
trigger11 = movecontact
trigger12 = stateno = 430
trigger12 = movecontact
trigger13 = stateno = 320
trigger13 = movecontact
trigger14 = stateno = 215
trigger14 = movecontact
trigger15 = stateno = 220
trigger15 = movecontact
trigger16 = stateno = 258
trigger16 = movecontact
trigger17 = stateno = 302
trigger17 = movecontact


; 182 shiki (DM)
[State -1]
type = ChangeState
value = 3100
triggerall = command = "qcfqcf_x"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 250
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 235
trigger8 = movecontact
trigger9 = stateno = 260
trigger9 = movecontact
trigger10 = stateno = 400
trigger10 = movecontact
trigger11 = stateno = 410
trigger11 = movecontact
trigger12 = stateno = 430
trigger12 = movecontact
trigger13 = stateno = 320
trigger13 = movecontact
trigger14 = stateno = 215
trigger14 = movecontact
trigger15 = stateno = 220
trigger15 = movecontact
trigger16 = stateno = 258
trigger16 = movecontact
trigger17 = stateno = 302
trigger17 = movecontact


; 182 shiki (DM)
[State -1]
type = ChangeState
value = 3160
triggerall = command = "qcfqcf_y"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 250
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 235
trigger8 = movecontact
trigger9 = stateno = 260
trigger9 = movecontact
trigger10 = stateno = 400
trigger10 = movecontact
trigger11 = stateno = 410
trigger11 = movecontact
trigger12 = stateno = 430
trigger12 = movecontact
trigger13 = stateno = 320
trigger13 = movecontact
trigger14 = stateno = 215
trigger14 = movecontact
trigger15 = stateno = 220
trigger15 = movecontact
trigger16 = stateno = 258
trigger16 = movecontact
trigger17 = stateno = 302
trigger17 = movecontact


;Ryukuranbu
[State -1]
type = ChangeState
value = 3500
triggerall = command = "qcfqcfkk"
triggerall = power >= 1000 ;Level 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 250
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 235
trigger8 = movecontact
trigger9 = stateno = 260
trigger9 = movecontact
trigger10 = stateno = 400
trigger10 = movecontact
trigger11 = stateno = 410
trigger11 = movecontact
trigger12 = stateno = 430
trigger12 = movecontact
trigger13 = stateno = 320
trigger13 = movecontact
trigger14 = stateno = 215
trigger14 = movecontact
trigger15 = stateno = 220
trigger15 = movecontact
trigger16 = stateno = 258
trigger16 = movecontact
trigger17 = stateno = 302
trigger17 = movecontact


 [State -1]
type = ChangeState
value = 3570
triggerall = command = "qcfqcfkk2"
triggerall = power >= 1000 ;Level 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 250
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 235
trigger8 = movecontact
trigger9 = stateno = 260
trigger9 = movecontact
trigger10 = stateno = 400
trigger10 = movecontact
trigger11 = stateno = 410
trigger11 = movecontact
trigger12 = stateno = 430
trigger12 = movecontact
trigger13 = stateno = 320
trigger13 = movecontact
trigger14 = stateno = 215
trigger14 = movecontact
trigger15 = stateno = 220
trigger15 = movecontact
trigger16 = stateno = 258
trigger16 = movecontact
trigger17 = stateno = 302
trigger17 = movecontact


 [State -1]
type = ChangeState
value = 4500
triggerall = command = "qcbhcf_x"
triggerall = power >= 1000 ;Level 1
triggerall = NumHelper(4500) = 0
triggerall = NumHelper(4919) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 250
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 235
trigger8 = movecontact
trigger9 = stateno = 260
trigger9 = movecontact
trigger10 = stateno = 400
trigger10 = movecontact
trigger11 = stateno = 410
trigger11 = movecontact
trigger12 = stateno = 430
trigger12 = movecontact
trigger13 = stateno = 320
trigger13 = movecontact
trigger14 = stateno = 215
trigger14 = movecontact
trigger15 = stateno = 220
trigger15 = movecontact
trigger16 = stateno = 258
trigger16 = movecontact
trigger17 = stateno = 302
trigger17 = movecontact


 [State -1]
type = ChangeState
value = 4500
triggerall = command = "qcbhcf_y"
triggerall = power >= 1000 ;Level 1
triggerall = NumHelper(4500) = 0
triggerall = NumHelper(4919) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 250
trigger5 = movecontact
trigger6 = stateno = 225
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact
trigger8 = stateno = 235
trigger8 = movecontact
trigger9 = stateno = 260
trigger9 = movecontact
trigger10 = stateno = 400
trigger10 = movecontact
trigger11 = stateno = 410
trigger11 = movecontact
trigger12 = stateno = 430
trigger12 = movecontact
trigger13 = stateno = 320
trigger13 = movecontact
trigger14 = stateno = 215
trigger14 = movecontact
trigger15 = stateno = 220
trigger15 = movecontact
trigger16 = stateno = 258
trigger16 = movecontact
trigger17 = stateno = 302
trigger17 = movecontact


[State -1]
type = ChangeState
value = 1700
triggerall = command = "binta_a"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 235
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 260
trigger10 = movecontact
trigger11 = stateno = 302
trigger11 = movecontact

[State -1]
type = ChangeState
value = 1710
triggerall = command = "binta_b"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 235
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 260
trigger10 = movecontact
trigger11 = stateno = 302
trigger11 = movecontact

[State -1]
type = ChangeState
value = 1400
triggerall = command = "dp_x"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 235
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 260
trigger10 = movecontact
trigger11 = stateno = 302
trigger11 = movecontact

[State -1]
type = ChangeState
value = 1420
triggerall = command = "dp_y"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 235
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 260
trigger10 = movecontact
trigger11 = stateno = 302
trigger11 = movecontact


;---------------------------------------------------------------------------

; 104 shiki ara gami
[State -1]
type = ChangeState
value = 1000
triggerall = command = "qcf_x"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 235
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 260
trigger10 = movecontact
trigger11 = stateno = 302
trigger11 = movecontact


[State -1]
type = ChangeState
value = 1010
triggerall = command = "qcf_y"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 235
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 260
trigger10 = movecontact
trigger11 = stateno = 302
trigger11 = movecontact


; Light 900 shiki nue tsumi
[State -1]
type = ChangeState
value = 1200
triggerall = command = "qcb_x"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 235
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 260
trigger10 = movecontact
trigger11 = stateno = 302
trigger11 = movecontact


; Hard 900 shiki nue tsumi
[State -1]
type = ChangeState
value = 1230
triggerall = command = "qcb_y"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 235
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 260
trigger10 = movecontact
trigger11 = stateno = 302
trigger11 = movecontact


; Light 75 shiki kai
[State -1]
type = ChangeState
value = 1300
triggerall = command = "qcf_a"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 235
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 260
trigger10 = movecontact
trigger11 = stateno = 302
trigger11 = movecontact


;Hard 75 shiki kai
[State -1]
type = ChangeState
value = 1310
triggerall = command = "qcf_b"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 235
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 260
trigger10 = movecontact
trigger11 = stateno = 302
trigger11 = movecontact


; Light Dashing Elbow
[State -1]
type = ChangeState
value = 1500
triggerall = command = "charge_a"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 235
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 260
trigger10 = movecontact
trigger11 = stateno = 302
trigger11 = movecontact


; Hard Dashing Elbow
[State -1]
type = ChangeState
value = 1530
triggerall = command = "charge_b"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 235
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 260
trigger10 = movecontact
trigger11 = stateno = 302
trigger11 = movecontact


;Throw_C
[State -1]
type = ChangeState
value = 288
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno != 100    ;Not running
triggerall = p2bodydist X < 6
trigger1 = command = "fwd_b"   ;Near, p2 stand
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_b"   ;Near, p2 crouch
trigger2 = p2statetype = C
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;Throw_D
[State -1]
type = ChangeState
value = 277
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = stateno != 100    ;Not running
triggerall = p2bodydist X < 6
trigger1 = command = "fwd_y"   ;Near, p2 stand
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_y"   ;Near, p2 crouch
trigger2 = p2statetype = C
trigger2 = p2movetype != H


; Jumping knockdown attack
[State -1]
type = ChangeState
value = 640
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = command = "knockdown"
trigger2 = command = "c"

[State -1]
type = ChangeState
value = 605
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = Vel X != 0
trigger1 = ctrl = 1

; Jumping light punch
[State -1]
type = ChangeState
value = 600
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

; Jumping down + hard punch
[State -1]
type = ChangeState
value = 625
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

[State -1]
type = ChangeState
value = 350
triggerall = statetype != A
triggerall = var(5) = 0
triggerall = ctrl = 1
triggerall = power >= 1000
trigger1 = command = "bakuhatu"

[State -1]
type = ChangeState
value = 300
triggerall = stateno >= 150
triggerall = stateno <= 151
triggerall = power >= 1000
trigger1 = command = "kaihi2"

[State -1]
type = ChangeState
value = 301
triggerall = stateno >= 150
triggerall = stateno <= 151
triggerall = power >= 1000
trigger1 = command = "kaihi"

[State -1]
type = ChangeState
value = 295
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = command = "kaihi2"

[State -1]
type = ChangeState
value = 291
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = command = "kaihi"


; Guard cancel attack
[State -1]
type = ChangeState
value = 270
triggerall = stateno >= 150
triggerall = stateno <= 151
triggerall = power >= 1000
trigger1 = command = "knockdown"
trigger2 = command = "c"

; Standing knockdown attack
[State -1]
type = ChangeState
value = 260
triggerall = statetype != A
triggerall = ctrl = 1
trigger1 = command = "knockdown"
trigger2 = command = "c"

[State -1]
type = ChangeState
value = 240
triggerall = command = "fwd_x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 235
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact

; Standing light punch (close)
[State -1]
type = ChangeState
value = 205
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
value = 225
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
value = 250
triggerall = command = "fwd_a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 205
trigger3 = movecontact
trigger4 = stateno = 215
trigger4 = movecontact
trigger5 = stateno = 225
trigger5 = movecontact
trigger6 = stateno = 235
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 420
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact

; Standing light kick (close)
[State -1]
type = ChangeState
value = 215
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
value = 235
trigger1 = command = "b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = P2bodydist X <= 25

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

;---------------------------------------------------------------------------
;POW Charge
[State -1]
type = ChangeState
value = 950
triggerall = power < 3000
trigger1 = command = "hold_z"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------


