;-| Super Motions |--------------------------------------------------------

[Command]
name = "Chireitou"
command = ~B, D, F, a+b
time = 20

[Command]
name = "Chireitou"
command = ~B, D, F, a+c
time = 20

[Command]
name = "Chireitou"
command = ~B, D, F, b+c
time = 20

[Command]
name = "Chuukadan"
command = ~B, D, F, x+y
time = 20

[Command]
name = "Chuukadan"
command = ~B, D, F, x+z
time = 20

[Command]
name = "Chuukadan"
command = ~B, D, F, y+z
time = 20

[Command]
name = "Chuukadan2"
command = ~D, B, D, B, a
time = 20

[Command]
name = "Chuukadan2"
command = ~D, B, D, B, b
time = 20

[Command]
name = "Chuukadan2"
command = ~D, B, D, B, c
time = 20

[Command]
name = "Tenraiha"
command = ~D, F, D, F, x
time = 20

[Command]
name = "Tenraiha"
command = ~D, F, D, F, y
time = 20

[Command]
name = "Tenraiha"
command = ~D, F, D, F, z
time = 20

;Dark Force
[Command]
name = "Dark_Force"
command = a+x
time = 1

;Dark Force
[Command]
name = "Dark_Force"
command = b+y
time = 1

;Dark Force
[Command]
name = "Dark_Force"
command = c+z
time = 1

;-| Special Motions |------------------------------------------------------
[Command]
name = "Ankihou_x"
command = ~D, F, x
time = 20

[Command]
name = "Ankihou_y"
command = ~D, F, y
time = 20

[Command]
name = "Ankihou_z"
command = ~D, F, z
time = 20

[Command]
name = "ES_Ankihou"
command = ~D, F, x+y
time = 20

[Command]
name = "ES_Ankihou"
command = ~D, F, x+z
time = 20

[Command]
name = "ES_Ankihou"
command = ~D, F, y+z
time = 20

[Command]
name = "Henkyouki_x"
command = ~D, B, x
time = 20

[Command]
name = "Henkyouki_y"
command = ~D, B, y
time = 20

[Command]
name = "Henkyouki_z"
command = ~D, B, z
time = 20

[Command]
name = "ES_Henkyouki"
command = ~D, B, x+y
time = 20

[Command]
name = "ES_Henkyouki"
command = ~D, B, x+z
time = 20

[Command]
name = "ES_Henkyouki"
command = ~D, B, y+z
time = 20

[Command]
name = "Senpuubu_x"
command = ~F, D, F, x
time = 20

[Command]
name = "Senpuubu_y"
command = ~F, D, F, y
time = 20

[Command]
name = "Senpuubu_z"
command = ~F, D, F, z
time = 20

[Command]
name = "ES_Senpuubu"
command = ~F, D, F, x+y
time = 20

[Command]
name = "ES_Senpuubu"
command = ~F, D, F, x+z
time = 20

[Command]
name = "ES_Senpuubu"
command = ~F, D, F, y+z
time = 20

[Command]
name = "Houtengeki"
command = ~F, D, B, x
time = 20

[Command]
name = "Houtengeki"
command = ~F, D, B, y
time = 20

[Command]
name = "Houtengeki"
command = ~F, D, B, z
time = 20

[Command]
name = "Pounce"
command = ~D, D, x

[Command]
name = "Pounce"
command = ~D, D, y

[Command]
name = "Pounce"
command = ~D, D, z

[Command]
name = "Pounce"
command = ~D, D, a

[Command]
name = "Pounce"
command = ~D, D, b

[Command]
name = "Pounce"
command = ~D, D, c

[Command]
name = "ES_Pounce"
command = ~D, D, x+y

[Command]
name = "ES_Pounce"
command = ~D, D, x+z

[Command]
name = "ES_Pounce"
command = ~D, D, y+z

[Command]
name = "ES_Pounce"
command = ~D, D, a+b

[Command]
name = "ES_Pounce"
command = ~D, D, a+c

[Command]
name = "ES_Pounce"
command = ~D, D, b+c

[Command]
name = "adv_guard"
command = x,x,x
time = 20

[Command]
name = "adv_guard"
command = y,y,y
time = 20

[Command]
name = "adv_guard"
command = z,z,z
time = 20

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
name = "s"
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

;-| Hold Button |--------------------------------------------------------------

[Command]
name = "hold_s";Required (do not remove)
command = /$s
time = 1

;---------------------------------------------------------------------------

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;***********************************************
;DARK FORCE
;***********************************************
;Dark Force
[State -1, Dark Force]
type = ChangeState
value = 1900 + 50*(var(12)=1)
triggerall = command = "Dark_Force"
triggerall = power >= 1000 || var(12)=1
triggerall = var(9) != 1
trigger1 = statetype = S
trigger1 = ctrl

;***********************************************
;EX MOVES
;***********************************************
;Chireitou
[State -1, Chireitou]
type = ChangeState
value = 3100
triggerall = command = "Chireitou"
triggerall = !var(12) ;D.F. OFF
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl

;Tenraiha
[State -1, Tenraiha]
type = ChangeState
value = 3200
triggerall = command = "Tenraiha"
triggerall = !var(12) ;D.F. OFF
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl

;Chuukadan
[State -1, Chuukadan]
type = ChangeState
value = 3300+1*(command = "Chuukadan2")
triggerall = command = "Chuukadan" || command = "Chuukadan2"
triggerall = !var(12) ;D.F. OFF
triggerall = power >= 2000
triggerall = NumHelper(3300) = 0
trigger1 = statetype = S
trigger1 = ctrl

;***********************************************
;ES MOVES
;***********************************************
;Senpuubuu ES
[State -1, Henkyouki ES]
type = ChangeState
value = 1250+10*(stateno=[150,155])
triggerall = command = "ES_Senpuubu"
triggerall = !var(12) ;D.F. OFF
triggerall = stateno != 4040
triggerall = var(9) != 1
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = ctrl
trigger3 = stateno = [150,151]
trigger4 = stateno = [152,153]
trigger5 = stateno = [154,155]

;Ankihou ES
[State -1, Ankihou ES]
type = ChangeState
value = 1050
triggerall = command = "ES_Ankihou"
triggerall = !var(12) ;D.F. OFF
triggerall = !var(1)
triggerall = var(9) != 1
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl

;Henkyouki ES
[State -1, Henkyouki ES]
type = ChangeState
value = 1130+50*(statetype=A)
triggerall = command = "ES_Henkyouki"
triggerall = !var(12) ;D.F. OFF
triggerall = stateno != 4040
triggerall = var(9) != 1
triggerall = power >= 1000
triggerall = ctrl
trigger1 = statetype = S
trigger2 = statetype = A

;***********************************************
;SPECIALS
;***********************************************
;Houtengeki
[State -1, Houtengeki]
type = ChangeState
value = 1300
triggerall = command = "Houtengeki"
triggerall = !var(12) ;D.F. OFF
triggerall = p2bodydist X<20
trigger1 = statetype = S
trigger1 = ctrl

;Senpuubu
[State -1, Senpuubu]
type = ChangeState
value = 1200+10*(stateno=[150,155])
triggerall = command = "Senpuubu_x" || command = "Senpuubu_y" || command = "Senpuubu_z"
triggerall = stateno != 4040
triggerall = !var(12) ;D.F. OFF
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = ctrl
trigger3 = stateno = [150,151]
trigger4 = stateno = [152,153]
trigger5 = stateno = [154,155]

;Ankihou_x
[State -1, Anikihou_x]
type = ChangeState
value = 1000
triggerall = command = "Ankihou_x"
triggerall = !var(12) ;D.F. OFF
triggerall = !var(1)  ;NO OBJECT
trigger1 = statetype = S
trigger1 = ctrl

;Ankihou_y
[State -1, Anikihou_y]
type = ChangeState
value = 1020
triggerall = command = "Ankihou_y"
triggerall = !var(12) ;D.F. OFF
triggerall = !var(1)  ;NO OBJECT
trigger1 = statetype = S
trigger1 = ctrl

;Ankihou_z
[State -1, Anikihou_z]
type = ChangeState
value = 1010
triggerall = command = "Ankihou_z"
triggerall = !var(12) ;D.F. OFF
triggerall = !var(1)  ;NO OBJECT
trigger1 = statetype = S
trigger1 = ctrl

;Henkyouki_x
[State -1, Henkyouki_x]
type = ChangeState
value = 1100+50*(statetype = A)
triggerall = command = "Henkyouki_x"
triggerall = stateno != 4040
triggerall = !var(12) ;D.F. OFF
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = ctrl

;Henkyouki_y
[State -1, Henkyouki_y]
type = ChangeState
value = 1110+50*(statetype = A)
triggerall = command = "Henkyouki_y"
triggerall = stateno != 4040
triggerall = !var(12) ;D.F. OFF
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = ctrl

;Henkyouki_z
[State -1, Henkyouki_z]
type = ChangeState
value = 1120+50*(statetype = A)
triggerall = command = "Henkyouki_z"
triggerall = stateno != 4040
triggerall = !var(12) ;D.F. OFF
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = ctrl

;Pounce
[State -1, Pounce]
type = ChangeState
value = 1400 + 50*(command = "ES_Pounce" && power >= 1000)
triggerall = command = "Pounce" || command = "ES_Pounce"
triggerall = !var(12) ;D.F. OFF
triggerall = p2statetype = L
trigger1 = statetype = S
trigger1 = ctrl

;***********************************************
;ADVANCING GUARD
;***********************************************
;Advancing Guard (standing)
[State -1, Advancing_guard]
type = ChangeState
value = 1700
triggerall = command = "adv_guard"
triggerall = !var(12) ;D.F. OFF
trigger1 = stateno = [150,151]

;Advancing Guard (crouching)
[State -1, Advancing_guard]
type = ChangeState
value = 1701
triggerall = command = "adv_guard"
triggerall = !var(12) ;D.F. OFF
trigger1 = stateno = [152,153]

;Advancing Guard (aerial)
[State -1,Advancing_guard]
type = ChangeState
value = 1702
triggerall = command = "adv_guard"
triggerall = !var(12) ;D.F. OFF
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10

;***********************************************
;RUN
;***********************************************
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100+10*(statetype = A)
triggerall = command = "FF"
triggerall = stateno != 4040
triggerall = stateno != [100,115]
triggerall = !var(12) ;D.F. OFF
triggerall = ctrl
trigger1 = statetype = S
trigger2 = statetype = A

;Run Back
[State -1, Run Back]
type = ChangeState
value = 105+10*(statetype = A)
triggerall = command = "BB"
triggerall = stateno != 4040
triggerall = stateno != [100,115]
triggerall = !var(12) ;D.F. OFF
triggerall = ctrl
trigger1 = statetype = S
trigger2 = statetype = A

;***********************************************
;THROWS
;***********************************************

[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y" || command = "z" || command = "b" || command = "c"
triggerall = command = "holdfwd" || command = "holdback"
triggerall = command != "holddown"
triggerall = !var(12) ;D.F. OFF
triggerall = p2bodydist X<10
triggerall = p2statetype != A
triggerall = p2movetype != H
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Air Throw]
type = ChangeState
value = 850
triggerall = command = "y" || command = "z" || command = "b" || command = "c"
triggerall = command = "holdfwd"
triggerall = !var(12) ;D.F. OFF
triggerall = p2bodydist X<15
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = statetype = A
trigger1 = ctrl

;***********************************************
;STAND BASIC
;***********************************************

;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = !var(12) ;D.F. OFF
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = Time > 6
trigger3 = stateno = 400
trigger3 = Time > 4

;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210 + 100*(command = "holdfwd" && p2bodydist X>10)
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = !var(12) ;D.F. OFF
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 450
trigger5 = movecontact

;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220 + 100*(command = "holdfwd" && p2bodydist X>10)
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = !var(12) ;D.F. OFF
trigger1  = statetype = S
trigger1  = ctrl
trigger2  = stateno = 200
trigger2  = movecontact
trigger3  = stateno = 210
trigger3  = movecontact
trigger4  = stateno = 250
trigger4  = movecontact
trigger5  = stateno = 260
trigger5  = movecontact
trigger6  = stateno = 310
trigger6  = movecontact
trigger7  = stateno = 400
trigger7  = movecontact
trigger8  = stateno = 410
trigger8  = movecontact
trigger9  = stateno = 450
trigger9  = movecontact
trigger10 = stateno = 460
trigger10 = movecontact

;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 250
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = !var(12) ;D.F. OFF
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 250
trigger4 = time > 4

;Standing Medium Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 260
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = !var(12) ;D.F. OFF
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 250
trigger4 = movecontact
trigger5 = stateno = 310
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 450
trigger8 = movecontact

;Stand Strong Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 270
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = !var(12) ;D.F. OFF
trigger1 = statetype = S
trigger1 = ctrl
trigger2  = stateno = 200
trigger2  = movecontact
trigger3  = stateno = 210
trigger3  = movecontact
trigger4  = stateno = 220
trigger4  = movecontact
trigger5  = stateno = 250
trigger5  = movecontact
trigger6  = stateno = 260
trigger6  = movecontact
trigger7  = stateno = 310
trigger7  = movecontact
trigger8  = stateno = 320
trigger8  = movecontact
trigger9  = stateno = 400
trigger9  = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 420
trigger11 = movecontact
trigger12 = stateno = 450
trigger12 = movecontact
trigger13 = stateno = 460
trigger13 = movecontact

;DF x
[State -1, DF]
type = ChangeState
value = 2200
triggerall = var(12) ;D.F. ON
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;DF y
[State -1, DF]
type = ChangeState
value = 2210
triggerall = var(12) ;D.F. ON
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2  = stateno = 2200
trigger2  = movecontact
trigger3  = stateno = 2250
trigger3  = movecontact

;DF z
[State -1, DF]
type = ChangeState
value = 2220
triggerall = var(12) ;D.F. ON
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2  = stateno = 2200
trigger2  = movecontact
trigger3  = stateno = 2210
trigger3  = movecontact
trigger4  = stateno = 2250
trigger4  = movecontact
trigger5  = stateno = 2260
trigger5  = movecontact

;DF a
[State -1, DF]
type = ChangeState
value = 2250
triggerall = var(12) ;D.F. ON
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2  = stateno = 2200
trigger2  = movecontact

;DF b
[State -1, DF]
type = ChangeState
value = 2260
triggerall = var(12) ;D.F. ON
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2  = stateno = 2200
trigger2  = movecontact
trigger3  = stateno = 2250
trigger3  = movecontact
trigger4  = stateno = 2210
trigger4  = movecontact

;DF c
[State -1, DF]
type = ChangeState
value = 2270
triggerall = var(12) ;D.F. ON
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2  = stateno = 2200
trigger2  = movecontact
trigger3  = stateno = 2210
trigger3  = movecontact
trigger4  = stateno = 2220
trigger4  = movecontact
trigger5  = stateno = 2250
trigger5  = movecontact
trigger6  = stateno = 2260
trigger6  = movecontact

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
triggerall = !var(12) ;D.F. OFF
trigger1 = statetype != A
trigger1 = ctrl

;***********************************************
;CROUCH
;***********************************************

;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = !var(12) ;D.F. OFF
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = Time > 6
trigger3 = stateno = 400
trigger3 = Time > 4

;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = !var(12) ;D.F. OFF
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 250
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 450
trigger5 = movecontact

;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = !var(12) ;D.F. OFF
trigger1 = statetype = C
trigger1 = ctrl
trigger2  = stateno = 200
trigger2  = movecontact
trigger3  = stateno = 210
trigger3  = movecontact
trigger4  = stateno = 250
trigger4  = movecontact
trigger5  = stateno = 260
trigger5  = movecontact
trigger6  = stateno = 310
trigger6  = movecontact
trigger7  = stateno = 400
trigger7  = movecontact
trigger8  = stateno = 410
trigger8  = movecontact
trigger9  = stateno = 450
trigger9  = movecontact
trigger10 = stateno = 460
trigger10 = movecontact

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 450
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = !var(12) ;D.F. OFF
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 450
trigger4 = Time > 3

;Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 460
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = !var(12) ;D.F. OFF
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 250
trigger4 = movecontact
trigger5 = stateno = 310
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 450
trigger8 = movecontact

;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 470
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = !var(12) ;D.F. OFF
trigger1 = statetype = C
trigger1 = ctrl
trigger2  = stateno = 200
trigger2  = movecontact
trigger3  = stateno = 210
trigger3  = movecontact
trigger4  = stateno = 220
trigger4  = movecontact
trigger5  = stateno = 250
trigger5  = movecontact
trigger6  = stateno = 260
trigger6  = movecontact
trigger7  = stateno = 310
trigger7  = movecontact
trigger8  = stateno = 320
trigger8  = movecontact
trigger9  = stateno = 400
trigger9  = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 420
trigger11 = movecontact
trigger12 = stateno = 450
trigger12 = movecontact
trigger13 = stateno = 460
trigger13 = movecontact

;DF x
[State -1, DF]
type = ChangeState
value = 2400
triggerall = var(12) ;D.F. ON
triggerall = command = "holddown"
triggerall = statetype = C
triggerall = ctrl
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
trigger4 = command = "a"
trigger5 = command = "b"
trigger6 = command = "c"

;***********************************************
;AIR
;***********************************************
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = !var(12) ;D.F. OFF
trigger1 = statetype = A
trigger1 = ctrl

;Jump medium Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = !var(12) ;D.F. OFF
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 650
trigger3 = movecontact

;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = !var(12) ;D.F. OFF
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 650
trigger4 = movecontact
trigger5 = stateno = 660
trigger5 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 650
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = !var(12) ;D.F. OFF
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

;Jump Medium Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 660
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = !var(12) ;D.F. OFF
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 650
trigger4 = movecontact

;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 670
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = !var(12) ;D.F. OFF
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 650
trigger5 = movecontact
trigger6 = stateno = 660
trigger6 = movecontact

;Air DF
[State -1, DF]
type = ChangeState
value = 2600
triggerall = var(12) ;D.F. ON
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "x"
trigger2 = command = "y"
trigger3 = command = "z"
trigger4 = command = "a"
trigger5 = command = "b"
trigger6 = command = "c"

;***********************************************
;GETUP
;***********************************************
;Getting Up Recovery Roll Forward
[State -1]
type = ChangeState
value = 900
trigger1 = command = "holdfwd"
trigger1 = stateno = 5120
trigger1 = Time = 1

;Getting Up Recovery Roll Backwards
[State -1]
type = ChangeState
value = 901
trigger1 = command = "holdback"
trigger1 = stateno = 5120
trigger1 = Time = 1

