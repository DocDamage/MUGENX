;-| AI Commands |----------------------------------------------------------
[Command]
name = "AI_1"
command = U,D,F,F,B,B
time = 1

[Command]
name = "AI_2"
command = U,D,F,F,B,F
time = 1

[Command]
name = "AI_3"
command = U,D,F,F,B,D
time = 1

[Command]
name = "AI_4"
command = U,D,F,F,B,U
time = 1

[Command]
name = "AI_5"
command = U,D,F,F,U,B
time = 1

[Command]
name = "AI_6"
command = U,D,F,F,D,B
time = 1

[Command]
name = "AI_7"
command = U,D,F,F,F,B
time = 1

[Command]
name = "AI_8"
command = U,D,U,F,B,B
time = 1

[Command]
name = "AI_9"
command = U,D,D,F,B,B
time = 1

[Command]
name = "AI_10"
command = D,D,F,F,B,B
time = 1

[Command]
name = "AI_11"
command = U,U,F,F,B,B
time = 1

[Command]
name = "AI_12"
command = U,B,F,F,B,B
time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "df2_p1"
command = ~D, DF, F, D, DF, F, x
time = 30
[Command]
name = "df2_p2"
command = ~D, DF, F, D, DF, F, y
time = 30
[Command]
name = "df2_p3"
command = ~D, DF, F, D, DF, F, z
time = 30

[Command]
name = "db2_p1"
command = ~D, DB, B, D, DB, B, x
time = 30
[Command]
name = "db2_p2"
command = ~D, DB, B, D, DB, B, y
time = 30
[Command]
name = "db2_p3"
command = ~D, DB, B, D, DB, B, z
time = 30

[Command]
name = "df2_k1"
command = ~D, DF, F, D, DF, F, a
time = 30
[Command]
name = "df2_k2"
command = ~D, DF, F, D, DF, F, b
time = 30
[Command]
name = "df2_k3"
command = ~D, DF, F, D, DF, F, c
time = 30

[Command]
name = "db2_k1"
command = ~D, DB, B, D, DB, B, a
time = 30
[Command]
name = "db2_k2"
command = ~D, DB, B, D, DB, B, b
time = 30
[Command]
name = "db2_k3"
command = ~D, DB, B, D, DB, B, c
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "dp_k1"
command = ~F, D, DF, a
time = 20
[Command]
name = "dp_k2"
command = ~F, D, DF, b
time = 20
[Command]
name = "dp_k3"
command = ~F, D, DF, c
time = 20

[Command]
name = "B_F_x"
command = ~30$B, F, x
time = 20
[Command]
name = "B_F_y"
command = ~30$B, F, y
time = 20
[Command]
name = "B_F_z"
command = ~30$B, F, z
time = 20

[Command]
name = "D_U_a"
command = ~30$D, U, a
time = 20
[Command]
name = "D_U_b"
command = ~30$D, U, b
time = 20
[Command]
name = "D_U_c"
command = ~30$D, U, c
time = 20

[Command]
name = "XXX"
command = x, x, x
time = 30
buffer.time = 25

[Command]
name = "YYY"
command = y, y, y
time = 23
buffer.time = 35

[Command]
name = "ZZZ"
command = z, z, z
time = 18
buffer.time = 45

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "Shaking"
command = B, F
time = 10

[Command]
name = "Shaking"
command = F, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = a+b
time = 1
[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "PPP"
command = x+y+z
time = 2
[Command]
name = "KKK"
command = a+b+c
time = 2

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

[Command]
name = "dizzyrecover"
command = F,B
time = 12

;---------------------------------------------------------
; Commands
[Statedef -1]


;-| Basic Movements |-------------------------------------


[State -1, Ensei Ken]
type = ChangeState
value = 1
trigger1 = command = "KKK"
trigger1 = statetype != A
trigger1 = Var(1) = 0
trigger1 = ctrl

[State -1, Ensei Ken]
type = VarSet
trigger1 = command = "KKK"
v = 1
value = 1

[State -1, Toru Ken]
type = ChangeState
value = 2
trigger1 = command = "PPP"
trigger1 = statetype != A
trigger1 = Var(1) > 0
trigger1 = ctrl

[State -1, Toru Ken]
type = VarSet
trigger1 = command = "PPP"
v = 1
value = 0

;remove the ';' to add back dash
;[State -1, Dash Back]
;type = ChangeState
;value = 105
;trigger1 = command = "BB"
;trigger1 = statetype != A
;trigger1 = ctrl = 1

[State -1, Taunt]
type = ChangeState
value = 195
trigger1 = command = "s"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1


;-| Super |-----------------------------------------------


[State -1, Shin Ten Shu (Level 3)]
type = ChangeState
value = 2002
triggerall = Var(1) = 0
triggerall = power >= 3000
triggerall = command = "db2_p3"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = movecontact
trigger2 = Var(1) = 0


[State -1, Shin Ten Shu (Level 2)]
type = ChangeState
value = 2001
triggerall = Var(1) = 0
triggerall = power >= 2000
triggerall = command = "db2_p2" || command = "db2_p3"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = movecontact
trigger2 = Var(1) = 0


[State -1, Shin Ten Shu (Level 1)]
type = ChangeState
value = 2000
triggerall = Var(1) = 0
triggerall = power >= 1000
triggerall = command = "db2_p1" || command = "db2_p2" || command = "db2_p3"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = movecontact
trigger2 = Var(1) = 0


[State -1, Custom Super-Yang, SF3 (Level 3)]
type = ChangeState
value = 2102
triggerall = Var(1) = 0
triggerall = power >= 3000
triggerall = command = "df2_k3"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = movecontact
trigger2 = Var(1) = 0


[State -1, Custom Super-Yang, SF3 (Level 2)]
type = ChangeState
value = 2101
triggerall = Var(1) = 0
triggerall = power >= 2000
triggerall = command = "df2_k2" || command = "df2_k3"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = movecontact
trigger2 = Var(1) = 0


[State -1, Custom Super-Yang, SF3 (Level 1)]
type = ChangeState
value = 2100
triggerall = Var(1) = 0
triggerall = power >= 1000
triggerall = command = "df2_k1" || command = "df2_k2" || command = "df2_k3"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = movecontact
trigger2 = Var(1) = 0


[State -1, Zan Ei (Level 3)]
type = ChangeState
value = 2202
triggerall = Var(1) = 0
triggerall = power >= 3000
triggerall = command = "df2_p3"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = movecontact
trigger2 = Var(1) = 0


[State -1, Zan Ei (Level 2)]
type = ChangeState
value = 2201
triggerall = Var(1) = 0
triggerall = power >= 2000
triggerall = command = "df2_p2" || command = "df2_p3"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = movecontact
trigger2 = Var(1) = 0


[State -1, Zan Ei (Level 1)]
type = ChangeState
value = 2200
triggerall = Var(1) = 0
triggerall = power >= 1000
triggerall = command = "df2_p1" || command = "df2_p2" || command = "df2_p3"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 220
trigger2 = movecontact
trigger2 = Var(1) = 0


[State -1, Jya Ho Ha(Level 3)]
type = ChangeState
value = 2302
trigger1 = Var(1) > 0
trigger1 = power >= 3000
trigger1 = command = "df2_k3"
trigger1 = statetype != A
trigger1 = ctrl


[State -1, Jya Ho Ha(Level 2)]
type = ChangeState
value = 2301
trigger1 = Var(1) > 0
trigger1 = power >= 2000
trigger1 = command = "df2_k2" || command = "df2_k3"
trigger1 = statetype != A
trigger1 = ctrl


[State -1, Jya Ho Ha (Level 1)]
type = ChangeState
value = 2300
trigger1 = Var(1) > 0
trigger1 = power >= 1000
trigger1 = command = "df2_k1" ||  command = "df2_k2" || command = "df2_k3"
trigger1 = statetype != A
trigger1 = ctrl


[State -1, Kouga (Level 3)]
type = ChangeState
value = 2402
trigger1 = Var(1) > 0
trigger1 = power >= 3000
trigger1 = command = "db2_k3"
trigger1 = statetype = A
trigger1 = ctrl


[State -1, Kouga (Level 2)]
type = ChangeState
value = 2401
trigger1 = Var(1) > 0
trigger1 = power >= 2000
trigger1 = command = "db2_k2" || command = "db2_k3"
trigger1 = statetype = A
trigger1 = ctrl


[State -1, Kouga (Level 1)]
type = ChangeState
value = 2400
trigger1 = Var(1) > 0
trigger1 = power >= 1000
trigger1 = command = "db2_k1" || command = "db2_k2" || command = "db2_k3"
trigger1 = statetype = A
trigger1 = ctrl


;-| Special |---------------------------------------------


[State -1, Kyaku Renko-Slow]
type = ChangeState
value = 1000
trigger1 = Var(1) = 0
trigger1 = command = "XXX"
trigger1 = statetype != A
trigger1 = ctrl


[State -1, Kyaku Renko-Normal]
type = ChangeState
value = 1001
trigger1 = Var(1) = 0
trigger1 = command = "YYY"
trigger1 = statetype != A
trigger1 = ctrl


[State -1, Kyaku Renko-Fast]
type = ChangeState
value = 1002
trigger1 = Var(1) = 0
trigger1 = command = "ZZZ"
trigger1 = statetype != A
trigger1 = ctrl


[State -1, Geki Ro-Light]
type = ChangeState
value = 1100
trigger1 = Var(1) = 0
trigger1 = command = "dp_k1"
trigger1 = statetype != A
trigger1 = ctrl


[State -1, Geki Ro-Medium]
type = ChangeState
value = 1110
trigger1 = Var(1) = 0
trigger1 = command = "dp_k2"
trigger1 = statetype != A
trigger1 = ctrl


[State -1, Geki Ro-Hard]
type = ChangeState
value = 1120
trigger1 = Var(1) = 0
trigger1 = command = "dp_k3"
trigger1 = statetype != A
trigger1 = ctrl


[State -1, Jya Sen-Light]
type = ChangeState
value = 1200
trigger1 = Var(1) > 0
trigger1 = command = "B_F_x"
trigger1 = statetype != A
trigger1 = ctrl


[State -1, Jya Sen-Medium]
type = ChangeState
value = 1210
trigger1 = Var(1) > 0
trigger1 = command = "B_F_y"
trigger1 = statetype != A
trigger1 = ctrl


[State -1, Jya Sen-Hard]
type = ChangeState
value = 1220
trigger1 = Var(1) > 0
trigger1 = command = "B_F_z"
trigger1 = statetype != A
trigger1 = ctrl


[State -1, Ouga-Jump 1]
type = ChangeState
value = 1300
triggerall = Var(1) > 0
triggerall = command = "D_U_a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 40


[State -1, Ouga-Jump 2]
type = ChangeState
value = 1301
triggerall = Var(1) > 0
triggerall = command = "D_U_b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 40


[State -1, Ouga-Jump 3]
type = ChangeState
value = 1302
triggerall = Var(1) > 0
triggerall = command = "D_U_c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 40


;-| Attacks |---------------------------------------------


[State -1, Throw 1]
type = ChangeState
value = 700
trigger1 = command = "fwd_y" || command = "fwd_z" || command = "back_y" || command = "back_z"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2bodydist x <= 10
trigger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = ctrl = 1

[State -1, Throw 2]
type = ChangeState
value = 710
trigger1 = command = "fwd_b" || command = "fwd_c" || command = "back_b" || command = "back_c"
trigger1 = statetype = S
trigger1 = stateno != 100
trigger1 = p2bodydist x <= 10
trigger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = ctrl = 1


[State -1, Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger2 = movecontact
trigger2 = var(1) = 0
trigger2 = animelemtime(3)<1
trigger3 = stateno = 230
trigger3 = movecontact
trigger3 = Var(1) = 0
trigger3 = animelemtime(5)<1


[State -1, Medium Punch (Var1:0)]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = Var(1) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger2 = movecontact
trigger2 = var(1) = 0
trigger2 = animelemtime(3)>1 && animelemtime(3)<3
trigger3 = stateno = 230 || stateno = 430 || stateno = 240
trigger3 = movecontact
trigger3 = Var(1) = 0
trigger3 = animelemtime(5)=1 && animelemtime(5)<3
trigger4 = stateno = 220
trigger4 = movecontact
trigger4 = Var(1) = 0
trigger4 = animelemtime(4)=1 && animelemtime(4)<3
trigger5 = stateno = 440
trigger5 = movecontact
trigger5 = Var(1) = 0
trigger5 = animelemtime(4)=1 && animelemtime(4)<3


[State -1, Medium Punch (Var1:1)]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = Var(1) > 0
trigger1 = statetype = S
trigger1 = ctrl


[State -1, Hard Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger2 = movecontact
trigger2 = var(1) = 0
trigger2 = animelemtime(3)<1
trigger3 = stateno = 230 || stateno = 430 || stateno = 240
trigger3 = movecontact
trigger3 = Var(1) = 0
trigger3 = animelemtime(5)<1
trigger4 = stateno = 440 || stateno = 410
trigger4 = movecontact
trigger4 = Var(1) = 0
trigger4 = animelemtime(4)<1
trigger5 = stateno = 210
trigger5 = movecontact
trigger5 = Var(1) = 0
trigger5 = animelemtime(4)<1
trigger6 = stateno = 250
trigger6 = movecontact
trigger6 = Var(1) = 0
trigger6 = animelemtime(6)<1


[State -1, Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger2 = movecontact
trigger2 = var(1) = 0
trigger2 = animelemtime(3)<1


[State -1, Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger2 = movecontact
trigger2 = var(1) = 0
trigger2 = animelemtime(3)<1
trigger3 = stateno = 230
trigger3 = movecontact
trigger3 = Var(1) = 0
trigger3 = animelemtime(5)<1
trigger4 = stateno = 210
trigger4 = movecontact
trigger4 = Var(1) = 0
trigger4 = animelemtime(4)<1
trigger6 = stateno = 250
trigger6 = movecontact
trigger6 = Var(1) = 0
trigger6 = animelemtime(6)<1
trigger7 = stateno = 410
trigger7 = movecontact
trigger7 = Var(1) = 0
trigger7 = animelemtime(4)<1


[State -1, Hard Kick (Var1:0)]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = Var(1) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400 || stateno = 430
trigger2 = movecontact
trigger2 = var(1) = 0
trigger2 = animelemtime(3)<1
trigger3 = stateno = 230 || stateno = 430 || stateno = 240
trigger3 = movecontact
trigger3 = Var(1) = 0
trigger3 = animelemtime(5)<1
trigger4 = stateno = 220
trigger4 = movecontact
trigger4 = Var(1) = 0
trigger4 = animelemtime(4)<1
trigger5 = stateno = 440 || stateno = 410 || stateno = 420
trigger5 = movecontact
trigger5 = Var(1) = 0
trigger5 = animelemtime(4)<1
trigger6 = stateno = 210
trigger6 = movecontact
trigger6 = Var(1) = 0
trigger6 = animelemtime(4)<1


[State -1, Hard Kick (Var1:1)]
type = ChangeState
value = 255
trigger1 = command = "c"
trigger1 = command != "holddown"
trigger1 = Var(1) > 0
trigger1 = statetype = S
trigger1 = ctrl


[State -1, Light Punch (Crouch)]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
trigger2 = var(1) = 0
trigger3 = stateno = 200
trigger3 = time > 7
trigger3 = var(1) > 0
trigger4 = stateno = 200
trigger4 = movecontact
trigger4 = Var(1) = 0
trigger5 = stateno = 230
trigger5 = movecontact
trigger5 = Var(1) = 0
trigger6 = stateno = 400
trigger6 = time > 6
trigger7 = stateno = 430
trigger7 = movecontact
trigger7 = Var(1) = 0


[State -1, Medium Punch (Crouch)]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
trigger2 = var(1) = 0
trigger3 = stateno = 200
trigger3 = time > 7
trigger3 = var(1) > 0
trigger4 = stateno = 200
trigger4 = movecontact
trigger4 = Var(1) = 0
trigger5 = stateno = 230
trigger5 = movecontact
trigger5 = Var(1) = 0
trigger6 = stateno = 240
trigger6 = movecontact
trigger6 = Var(1) = 0
trigger7 = stateno = 400
trigger7 = movecontact
trigger7 = Var(1) = 0
trigger8 = stateno = 430
trigger8 = movecontact
trigger8 = Var(1) = 0
trigger9 = stateno = 440
trigger9 = movecontact
trigger9 = Var(1) = 0


[State -1, Hard Punch (Crouch)]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
trigger2 = var(1) = 0
trigger3 = stateno = 200
trigger3 = time > 7
trigger3 = var(1) > 0
trigger4 = stateno = 200
trigger4 = movecontact
trigger4 = Var(1) = 0
trigger5 = stateno = 210
trigger5 = movecontact
trigger5 = Var(1) = 0
trigger6 = stateno = 230
trigger6 = movecontact
trigger6 = Var(1) = 0
trigger7 = stateno = 240
trigger7 = movecontact
trigger7 = Var(1) = 0
trigger8 = stateno = 250
trigger8 = movecontact
trigger8 = Var(1) = 0
trigger9 = stateno = 400
trigger9 = movecontact
trigger9 = Var(1) = 0
trigger10 = stateno = 410
trigger10 = movecontact
trigger10 = Var(1) = 0
trigger11 = stateno = 430
trigger11 = movecontact
trigger11 = Var(1) = 0
trigger12 = stateno = 440
trigger12 = movecontact
trigger12 = Var(1) = 0


[State -1, Light Kick (Crouch)]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
trigger2 = var(1) = 0
trigger3 = stateno = 200
trigger3 = time > 7
trigger3 = var(1) > 0
trigger4 = stateno = 200
trigger4 = movecontact
trigger4 = Var(1) = 0
trigger5 = stateno = 230
trigger5 = movecontact
trigger5 = Var(1) = 0
trigger6 = stateno = 400
trigger6 = movecontact
trigger6 = Var(1) = 0


[State -1, Medium Kick (Crouch/Var1:1)]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
trigger2 = var(1) = 0
trigger3 = stateno = 200
trigger3 = time > 7
trigger3 = var(1) > 0
trigger4 = stateno = 200
trigger4 = movecontact
trigger4 = var(1) = 0
trigger5 = stateno = 210
trigger5 = movecontact
trigger5 = var(1) = 0
trigger6 = stateno = 230
trigger6 = movecontact
trigger6 = var(1) = 0
trigger7 = stateno = 400
trigger7 = movecontact
trigger7 = var(1) = 0
trigger8 = stateno = 410
trigger8 = movecontact
trigger8 = var(1) = 0
trigger9 = stateno = 430
trigger9 = movecontact
trigger9 = var(1) = 0


[State -1, Hard Kick (Crouch/Var1:1)]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = var(1) = 0
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
trigger4 = stateno = 400
trigger4 = time > 6


[State -1, Hard Kick (Crouch/Var1:2)]
type = ChangeState
value = 455
trigger1 = command = "c"
trigger1 = command = "holddown"
trigger1 = var(1) > 0
trigger1 = statetype = C
trigger1 = ctrl


[State -1, Light Punch (Air)]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl


[State -1, Medium Punch (Air)]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl


[State -1, Hard Punch (Air)]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl


[State -1, Light Kick (Air)]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl


[State -1, Medium Kick (Air)]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl


[State -1, Hard Kick (Air)]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl


[State -1, Double Kick (Air)]
type = ChangeState
value = 655
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = movecontact
trigger1 = stateno = 650
trigger1 = var(1) > 0


;-| AI Mode |---------------------------------------------
;=========================================================
; Stand Guard
[State -1]
type = ChangeState
value = 130
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = statetype != A
triggerall = var(3) = 1
triggerall = ctrl
triggerall = p2statetype = S
trigger1 = random <= 700
trogger1 = p2stateno = [2000,4999]
trigger2 = random <= 600
trogger2 = p2stateno = [1000,1999]
trigger3 = random <= 500
trigger4 = random <= 700
trogger4 = p2stateno >= 6000
[State -1]
type = ChangeState
value = 130
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = statetype != A
triggerall = var(3) = 1
triggerall = ctrl
triggerall = p2statetype = A
trigger1 = random <= 700
trogger1 = p2stateno = [2000,4999]
trigger2 = random <= 600
trogger2 = p2stateno = [1000,1999]
trigger3 = random <= 500
trigger4 = random <= 700
trogger4 = p2stateno >= 6000

; Crouch Guard
[State -1]
type = ChangeState
value = 152
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = statetype != A
triggerall = var(3) = 1
triggerall = ctrl
triggerall = p2statetype = C
trigger1 = random <= 700
trogger1 = p2stateno = [2000,4999]
trigger2 = random <= 600
trogger2 = p2stateno = [1000,1999]
trigger3 = random <= 500
trigger4 = random <= 700
trogger4 = p2stateno >= 6000

; Air Guard
[State -1]
type = ChangeState
value = 132
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = statetype = A
triggerall = random <= 600
triggerall = var(3) = 1
triggerall = ctrl
trigger1 = random <= 700
trogger1 = p2stateno = [2000,4999]
trigger2 = random <= 600
trogger2 = p2stateno = [1000,1999]
trigger3 = random <= 500
trigger4 = random <= 700
trogger4 = p2stateno >= 6000

; Do Recover near ground
[State -1]
type = ChangeState
value = 5200
triggerall = var(3) = 1
triggerall = random <= 700
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
trigger1 = alive
trigger1 = CanRecover
trigger1 = stateno = 5050

; Throw
[State -1]
type = ChangeState
value = 700
triggerall = var(3) = 1
trigger1 = p2bodydist x <= 10
trigger1 = random <= 400
trigger1 = statetype = S
trigger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = ctrl

; Throw  2
[State -1]
type = ChangeState
value = 710
triggerall = var(3) = 1
trigger1 = p2bodydist x <= 10
trigger1 = random <= 400
trigger1 = statetype = S
trigger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = ctrl

; Combo Start (punch)
[State -1]
type = ChangeState
value = 210
trigger1 = var(1) = 0
trigger1 = var(3) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2statetype = S
trigger1 = P2bodydist X <= 30
trigger1 = random <= 500

; Super Setup (crkick)
[State -1]
type = ChangeState
value = 430
trigger1 = var(1) > 0
trigger1 = var(3) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2statetype = S
trigger1 = P2bodydist X <= 40
trigger1 = random <= 400

; Geki Ro
[State -1]
type = ChangeState
value = 1120
triggerall = var(1) > 0
triggerall = var(3) = 1
triggerall = statetype != A
triggerall = ctrl
triggerall = P2bodydist X <= 50
trigger1 = p2statetype = A
trigger1 = p2stateno = 42
trigger2 = p2statetype = A
trigger2 = p2stateno = 45
trigger3 = p2movetype = A
trigger4 = p2stateno = [1000,1999]

; Ouga
[State -1]
type = ChangeState
value = 1302
trigger1 = var(1) > 0
trigger1 = var(3) = 1
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2stateno = [2000,4000]
trigger1 = random <= 100
