; Command file for David Demianoff 's PRINCE VEGETA
; Please don't edit, thanks
;
;
;
;
;-| Super Motions |--------------------------------------------------------
[Command]
name = "Bigbang"
command = ~D, F, D, F, y
time = 25

[Command]
name = "explosion"
command = ~F, D, B, F, D, B, b
time = 30

[Command]
name = "dragonrush"
command = ~D, B, D, B, a
time = 25

;-| Special Motions |------------------------------------------------------
[Command]
name = "koho"
command = ~F, D, DF, x
time = 20

[Command]
name = "vegeta"
command = ~F, D, DF, b
time = 20


[Command]
name = "hishou"
command = ~D, DB, B, a
time = 20

[Command]
name = "wakeup"
command = ~F, DF, D, DB, B, y
time = 25

[Command]
name = "QCF_y"
command = ~D, F, y

[Command]
name = "QCF_x"
command = ~D, F, x

[Command]
name = "QCB_y"
command = ~B, F, y


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
name = "recovery"
command = x+a
time = 1

[Command]
name = "recovery"
command = c
time = 1

[Command]
name = "cd"
command = b+y
time = 1

[Command]
name = "ab"
command = a+x
time = 1

[Command]
name = "abc"
command = a+y+x
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
command = /$z
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
name = "holddownfwd";Required (do not remove)
command = /$DF
time = 1

[Command]
name = "longjump"
command = ~D, $U
time = 11

[Statedef -1]

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;--------------------------------------------------------------------------- 
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Explosion
[State -1,]
type = ChangeState
value = 2300
triggerall = command = "explosion"
triggerall = var(17) = 0
triggerall = life <= 250
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && time = [6,11]
trigger4 = stateno = 202 && time = [7,12]
trigger5 = stateno = 250 && time = [6,11]
trigger6 = stateno = 400 && time = [6,11]

;Dragon Rush
[State -1,]
type = ChangeState
value = 2100
triggerall = command = "dragonrush"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && time = [6,11]
trigger4 = stateno = 202 && time = [7,12]
trigger5 = stateno = 250 && time = [6,11]
trigger6 = stateno = 400 && time = [6,11]

;big Bang Attack
[State -1,]
type = ChangeState
value = 2000
triggerall = command = "Bigbang"
triggerall = power >= 1000
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && time = [6,11]
trigger4 = stateno = 202 && time = [7,12]
trigger5 = stateno = 250 && time = [6,11]
trigger6 = stateno = 400 && time = [6,11]

;-----Air Super
[State -1]
type = ChangeState
value = 2500
triggerall = command = "Bigbang"
triggerall = power >= 1000
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 600
trigger3 = movecontact = 1
trigger3 = stateno = 601
trigger4 = movecontact = 1
trigger4 = stateno = 602
trigger5 = movecontact = 1
trigger5 = stateno = 604
trigger6 = movecontact = 1
trigger6 = stateno = 605
trigger7 = movecontact = 1
trigger7 = stateno = 606
trigger8 = movecontact = 1
trigger8 = stateno = 704
trigger9 = movecontact = 1
trigger9 = stateno = 705
trigger10 = stateno = 1350
trigger10 = time >= 39
trigger11 = stateno = 1360
trigger11 = time >= 39
trigger12 = stateno = 1370
trigger12 = time >= 39
trigger13 = stateno = 2500
trigger13 = time >= 131
trigger14 = stateno = 2600
trigger14 = time >= 131
trigger15 = stateno = 2700
trigger15 = time >= 131
trigger16 = movecontact = 1
trigger16 = stateno = 706
trigger17 = stateno = 550
trigger18 = stateno = 800
trigger19 = movecontact = 1
trigger19 = stateno = 850
trigger20 = movecontact = 1
trigger20 = stateno = 3030
trigger21 = movecontact = 1
trigger21 = stateno = 3040
trigger22 = movecontact = 1
trigger22 = stateno = 3050
trigger23 = projcontact = 1
trigger23 = stateno = 1350
trigger24 = projcontact = 1
trigger24 = stateno = 1360
trigger25 = projcontact = 1
trigger25 = stateno = 1370
trigger26 = projcontact = 1
trigger26 = stateno = 1300
trigger27 = projcontact = 1
trigger27 = stateno = 1301
trigger28 = projcontact = 1
trigger28 = stateno = 1302
trigger29 = movecontact = 1
trigger29 = stateno = 3520
trigger30 = movecontact = 1
trigger30 = stateno = 3001
trigger31 = movecontact = 1
trigger31 = stateno = 3011
trigger32 = movecontact = 1
trigger32 = stateno = 3021



;Cho Oozaru Ken
[State -1,]
type = ChangeState
value = 1100
triggerall = command = "koho"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && time = [6,11]
trigger4 = stateno = 202 && time = [7,12]
trigger5 = stateno = 250 && time = [6,11]
trigger6 = stateno = 400 && time = [6,11]

;Vegeta
[State -1,]
type = ChangeState
value = 7000
triggerall = command = "vegeta"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && time = [6,11]
trigger4 = stateno = 202 && time = [7,12]
trigger5 = stateno = 250 && time = [6,11]
trigger6 = stateno = 400 && time = [6,11]

;Air Vegeta
[State -1,]
type = ChangeState
value = 7005
triggerall = command = "vegeta"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && time = [6,11]
trigger4 = stateno = 202 && time = [7,12]
trigger5 = stateno = 250 && time = [6,11]
trigger6 = stateno = 400 && time = [6,11]


;Hishou Kyaku
[State -1,]
type = ChangeState
value = 1200
triggerall = command = "hishou"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Dash Forward
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(22) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;Dash Forward Air
[State -1, Run Fwd]
type = ChangeState
value = 110
triggerall = var(22) = 0
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

; Dash Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(22) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

; Dash Back Air
[State -1, Run Back]
type = ChangeState
value = 112
triggerall = var(22) = 0
triggerall = vel x <= 0;-1
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl


;Counter
[State -1]
type = ChangeState
value = 305
triggerall = command = "recovery" ^^ command = "z"
trigger1 = (stateno = 150 || stateno = 151) && power >= 1000
trigger2 = (stateno = 152 || stateno = 153) && power >= 1000

; Taunt
[State -1]
type = ChangeState
value = 195
trigger1 = command = "start"
trigger1 = Vel X = 0
trigger1 = stateno != 195
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------
;-----------------------------------------DODGE
;---------------------------------------------------------------------
; Dodge backward (Kof98)
[State -1]
type = ChangeState
value = 360
triggerall = command = "ab" ^^ command = "c"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101

; Dodge forward 98(after dodge forward 99)
[State -1]
type = ChangeState
value = 361
triggerall = command = "ab" ^^ command = "c"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101

;---------------------------------------------------------------------------
;===========================================================================
;Throw
[State -1,]
type = ChangeState
value = 2700
triggerall = (command = "holdfwd" || command = "holdback") && (command = "y")
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 7
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
;---------------------------------------------------------------------------
;Standing Weak punch
[State -1,]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1

;Standing Strong punch
[State -1,]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1

;Standing strong punch close
[State -1,]
type = ChangeState
value = 202
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x < 15
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201 && movecontact
trigger3 = stateno = 203 && movecontact
trigger4 = stateno = 500 && movecontact

;A, A
[State -1,]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command = "holdfwd"
trigger1 = stateno = 200 && time = [6,11]

;A, A, A
[State -1,]
type = ChangeState
value = 202
triggerall = command = "x"
triggerall = command = "holdfwd"
trigger1 = stateno = 201 && time = [7,12]

;A, A, B, A
[State -1,]
type = ChangeState
value = 203
triggerall = command = "x"
triggerall = command = "holdup"
trigger1 = stateno = 253 && time = [7,12]

;B, B, B, A
[State -1,]
type = ChangeState
value = 204
triggerall = command = "x"
triggerall = command = "holdback"
trigger1 = stateno = 252 && time = [7,12]

;---------------------------------------------------------------------------
;Standing Weak Kick
[State -1]
type = ChangeState
value = 250
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1

;Standing Strong Kick
[State -1]
type = ChangeState
value = 260
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist x > 15
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1

;Standing Strong Kick Close
[State -1,]
type = ChangeState
value = 257
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist x < 15
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 202 && movecontact
trigger3 = stateno = 203 && movecontact
trigger4 = stateno = 251 && movecontact
trigger5 = stateno = 253 && movecontact
trigger6 = stateno = 500 && movecontact

;B, B
[State -1,]
type = ChangeState
value = 251
triggerall = command = "a"
trigger1 = stateno = 250 && time = [6,11]

;B, B, B
[State -1,]
type = ChangeState
value = 252
triggerall = command = "a"
triggerall = command = "holdback"
trigger1 = stateno = 251 && time = [7,12]

;A, A, B
[State -1,]
type = ChangeState
value = 253
triggerall = command = "a"
triggerall = command = "holdfwd"
trigger1 = stateno = 201 && time = [7,12]

;---------------------------------------------------------------------------
;Fire Ball
[State -1]
type = ChangeState
value = 1077
triggerall = command = "QCF_x"
triggerall = power >= 100
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact = 1
trigger4 = stateno = 201 && movecontact = 1
trigger5 = stateno = 202 && movecontact = 1
trigger6 = stateno = 203 && movecontact = 1
trigger7 = stateno = 204 && movecontact = 1
trigger8 = stateno = 251 && movecontact = 1
trigger9 = stateno = 253 && movecontact = 1
trigger10 = stateno = 250 && movecontact = 1
trigger11 = stateno = 252 && movecontact = 1
trigger12 = stateno = 400 && movecontact = 1
trigger13 = stateno = 410 && movecontact = 1
trigger14 = stateno = 420 && movecontact = 1
trigger15 = stateno = 450 && movecontact = 1
trigger16 = stateno = 500 && movecontact = 1


;Fire Ball 2
[State -1]
type = ChangeState
value = 1000
triggerall = command = "QCF_y"
triggerall = power >= 100
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 52 || stateno = 101
trigger2 = animelem = 1, >= 1
trigger3 = stateno = 200 && movecontact = 1
trigger4 = stateno = 201 && movecontact = 1
trigger5 = stateno = 202 && movecontact = 1
trigger6 = stateno = 203 && movecontact = 1
trigger7 = stateno = 204 && movecontact = 1
trigger8 = stateno = 251 && movecontact = 1
trigger9 = stateno = 253 && movecontact = 1
trigger10 = stateno = 250 && movecontact = 1
trigger11 = stateno = 252 && movecontact = 1
trigger12 = stateno = 400 && movecontact = 1
trigger13 = stateno = 410 && movecontact = 1
trigger14 = stateno = 420 && movecontact = 1
trigger15 = stateno = 450 && movecontact = 1
trigger16 = stateno = 500 && movecontact = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Crouching Weak punch
[State -1]
type = ChangeState
value = 401
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101

;Crouching Strong punch
[State -1]
type = ChangeState
value = 400
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101

;Crouching weak Kick
[State -1]
type = ChangeState
value = 450
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101

;Crouching strong Kick
[State -1]
type = ChangeState
value = 451
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Jumping Weak punch
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl

;Jumping Weak punch
[State -1]
type = ChangeState
value = 601
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl

;Jumping Strong punch
[State -1]
type = ChangeState
value = 602
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl


;---------------------------------------------------------------------------
;Jumping Weak Kick
[State -1]
type = ChangeState
value = 650
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl

; Stomp
[State -1]
type = ChangeState
value = 653
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl


;Jumping Strong Kick
[State -1]
type = ChangeState
value = 651
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Teleport
[State -1]
type = ChangeState
value = 2164
triggerall = var(22) = 0
triggerall = command = "recovery" ^^ command = "z"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 101
trigger4 = stateno = 102
;------------------------------------
; 高速移動 (前方)
[State -1]
type = ChangeState
value = 2165
triggerall = var(22) = 0
triggerall = command = "recovery" ^^ command = "z"
trigger1 = statetype = S
trigger1 = ctrl

 ダッシュ高速移動 (前方)
[State -1]
type = ChangeState
value = 2165
triggerall = stateno = 100 || stateno = 101 || stateno = 102
triggerall = ctrl = 0
trigger1 = command = "hold_x" && command = "hold_a"
trigger2 = command = "hold_z"
trigger3 = command = "hold_c"
;--------------------------------------------
[State -1]
type = ChangeState
value = 1900
triggerall = statetype = S
triggerall = Power < 3000
triggerall = ctrl = 1
trigger1 = command = "hold_b" && command = "hold_y"
trigger2 = command = "hold_c"
;---------------------------------------------
;Air Fireball
[State -1]
type = ChangeState
value = 1015
triggerall = command = "QCF_y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 600
trigger3 = movecontact = 1
trigger3 = stateno = 601
trigger4 = movecontact = 1
trigger4 = stateno = 602
trigger5 = movecontact = 1
trigger5 = stateno = 604
trigger6 = movecontact = 1
trigger6 = stateno = 605
trigger7 = movecontact = 1
trigger7 = stateno = 606
trigger8 = movecontact = 1
trigger8 = stateno = 704
trigger9 = movecontact = 1
trigger9 = stateno = 705
trigger10 = movecontact = 1
trigger10 = stateno = 706
trigger11 = stateno = 550
trigger12 = stateno = 800
trigger13 = movecontact = 1
trigger13 = stateno = 3520

;Juggle Kick
[State -1,]
type = ChangeState
value = 257
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist x < 15
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 202 && movecontact
trigger3 = stateno = 203 && movecontact
trigger4 = stateno = 251 && movecontact
trigger5 = stateno = 253 && movecontact
trigger6 = stateno = 500 && movecontact

