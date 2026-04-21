;-| Super Motions |--------------------------------------------------------
[Command]
name = "stress"
command = ~F, DF, D, DB, B, F, y
time = 30

[Command]
name = "ippatu"
command = ~D, DF, F, D, DF, F, y
time = 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "nage"
command = ~F, DF, D, DB, B, b
time = 25

[Command]
name = "raikou_a"
command = ~a,a,a,a
time = 35

[Command]
name = "raikou_b"
command = ~b,b,b,b
time = 35

[Command]
name = "ryuen_x"
command = ~F, D, DF, x

[Command]
name = "ryuen_y"
command = ~F, D, DF, y

[Command]
name = "enbu_a"
command = ~D, DB, B, a

[Command]
name = "enbu_b"
command = ~D, DB, B, b

[Command]
name = "hado_x"
command = ~D, DF, F, x

[Command]
name = "hado_y"
command = ~D, DF, F, y

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
command = x+y
time = 1

[Command]
name = "x+a"
command = x+a
time = 1

[Command]
name = "y+b"
command = y+b
time = 1

[Command]
name = "y+a"
command = y+a
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

[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, ˆê”­‰œ‹`]
type = ChangeState
value = 3500
triggerall = roundstate != 3
triggerall = power >= 2000
triggerall = command = "ippatu"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 520

;===========================================================================
[State -1, ƒXƒgƒŒƒXƒVƒ…[ƒg]
type = ChangeState
value = 3000
triggerall = roundstate != 3
triggerall = power >= 1000
triggerall = command = "stress"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 235 || stateno = 240 || stateno = 250 || stateno = 260
trigger2 = movecontact = 1
trigger3 = stateno = 300 || stateno = 310 || stateno = 320 || stateno = 330 || stateno = 340
trigger3 = movecontact = 1
trigger4 = stateno = 400 || stateno = 410
trigger4 = movecontact = 1
trigger5 = stateno = 500 || stateno = 510 || stateno = 520
trigger5 = movecontact = 1
trigger6 = stateno = 530 && movecontact
trigger6 = NumTarget(530)

[State -1, ƒXƒgƒŒƒXƒVƒ…[ƒg’Ç‰Á]
type = ChangeState
value = 3100
triggerall = roundstate != 3
triggerall = power >= 1000
triggerall = command = "ryuen_y"
triggerall = statetype != A
trigger1 = stateno = 3001 && AnimElem = 72,< 0
;===========================================================================
[State -1, ƒ_ƒbƒVƒ…—‹E‹r]
type = ChangeState
value = 1250
triggerall = command = "raikou_a" || command = "raikou_b"
trigger1 = stateno = 250 || stateno = 340
trigger2 = stateno = 100 || stateno = 101

[State -1, —‹E‹r‚a]
type = ChangeState
value = 1200
triggerall = command = "raikou_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 235 || stateno = 240 || stateno = 250 || stateno = 260
trigger2 = movecontact = 1
trigger3 = stateno = 300 || stateno = 310 || stateno = 320 || stateno = 330 || stateno = 340
trigger3 = movecontact = 1
trigger4 = stateno = 400 || stateno = 410
trigger4 = movecontact = 1
trigger5 = stateno = 500 || stateno = 510 || stateno = 520
trigger5 = movecontact = 1
trigger6 = stateno = 530 && movecontact
trigger6 = NumTarget(530)

[State -1, —‹E‹r‚c]
type = ChangeState
value = 1210
triggerall = command = "raikou_b"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 235 || stateno = 240 || stateno = 250 || stateno = 260
trigger2 = movecontact = 1
trigger3 = stateno = 300 || stateno = 310 || stateno = 320 || stateno = 330 || stateno = 340
trigger3 = movecontact = 1
trigger4 = stateno = 400 || stateno = 410
trigger4 = movecontact = 1
trigger5 = stateno = 500 || stateno = 510 || stateno = 520
trigger5 = movecontact = 1
trigger6 = stateno = 530 && movecontact
trigger6 = NumTarget(530)

;===========================================================================
[State -1, ƒ_ƒbƒVƒ…—¬‰Š¸]
type = ChangeState
value = 1150
triggerall = command = "ryuen_x" || command = "ryuen_y"
trigger1 = stateno = 250 || stateno = 340
trigger2 = stateno = 100 || stateno = 101

[State -1, —¬‰Š¸‚`]
type = ChangeState
value = 1100
triggerall = command = "ryuen_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 235 || stateno = 240 || stateno = 250 || stateno = 260
trigger2 = movecontact = 1
trigger3 = stateno = 300 || stateno = 310 || stateno = 320 || stateno = 330 || stateno = 340
trigger3 = movecontact = 1
trigger4 = stateno = 400 || stateno = 410
trigger4 = movecontact = 1
trigger5 = stateno = 500 || stateno = 510 || stateno = 520
trigger5 = movecontact = 1
trigger6 = stateno = 530 && movecontact
trigger6 = NumTarget(530)

[State -1, —¬‰Š¸‚b]
type = ChangeState
value = 1110
triggerall = command = "ryuen_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 235 || stateno = 240 || stateno = 250 || stateno = 260
trigger2 = movecontact = 1
trigger3 = stateno = 300 || stateno = 310 || stateno = 320 || stateno = 330 || stateno = 340
trigger3 = movecontact = 1
trigger4 = stateno = 400 || stateno = 410
trigger4 = movecontact = 1
trigger5 = stateno = 500 || stateno = 510 || stateno = 520
trigger5 = movecontact = 1
trigger6 = stateno = 530 && movecontact
trigger6 = NumTarget(530)

;===========================================================================
[State -1, ¸‰•‘‚a]
type = ChangeState
value = 1300
triggerall = command = "enbu_a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = stateno = 530
trigger2 = movecontact = 1
trigger3 = stateno = 600 || stateno = 610 || stateno = 620
trigger3 = movecontact = 1
trigger4 = stateno = 700 || stateno = 710 || stateno = 720
trigger4 = movecontact = 1

[State -1, ¸‰•‘‚c]
type = ChangeState
value = 1350
triggerall = command = "enbu_b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = statetype = A
trigger2 = stateno = 530
trigger2 = movecontact = 1
trigger3 = stateno = 600 || stateno = 610 || stateno = 620
trigger3 = movecontact = 1
trigger4 = stateno = 700 || stateno = 710 || stateno = 720
trigger4 = movecontact = 1

;===========================================================================
[State -1, Œƒ¶”g“®”g‚`]
type = ChangeState
value = 1000
triggerall = command = "hado_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 235 || stateno = 240 || stateno = 250 || stateno = 260
trigger2 = movecontact = 1
trigger3 = stateno = 300 || stateno = 310 || stateno = 320 || stateno = 330 || stateno = 340
trigger3 = movecontact = 1
trigger4 = stateno = 400 || stateno = 410
trigger4 = movecontact = 1
trigger5 = stateno = 500 || stateno = 510 || stateno = 520
trigger5 = movecontact = 1
trigger6 = stateno = 530 && movecontact
trigger6 = NumTarget(530)

[State -1, Œƒ¶”g“®”g‚b]
type = ChangeState
value = 1050
triggerall = command = "hado_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 235 || stateno = 240 || stateno = 250 || stateno = 260
trigger2 = movecontact = 1
trigger3 = stateno = 300 || stateno = 310 || stateno = 320 || stateno = 330 || stateno = 340
trigger3 = movecontact = 1
trigger4 = stateno = 400 || stateno = 410
trigger4 = movecontact = 1
trigger5 = stateno = 500 || stateno = 510 || stateno = 520
trigger5 = movecontact = 1
trigger6 = stateno = 530 && movecontact
trigger6 = NumTarget(530)

;===========================================================================
[State -1, ƒ_ƒbƒVƒ…]
type = ChangeState
value = 100
triggerall = statetype = S
triggerall = ctrl
trigger1 = P2Dist x > 1
trigger1 = command = "FF"

;---------------------------------------------------------------------------
[State -1, ƒoƒbƒNƒXƒeƒbƒv]
type = ChangeState
value = 105
triggerall = statetype = S
triggerall = ctrl
trigger1 = P2Dist x > 1
trigger1 = command = "BB"
trigger2 = P2Dist x < 1
trigger2 = command = "FF"

;===========================================================================
[State -1, “Š‚°]
type = ChangeState
value = 1400
triggerall = command = "nage"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, ‹ó’†“Š‚°]
type = ChangeState
value = 850
triggerall = command = "y"
triggerall = p2statetype = A
triggerall = ctrl
triggerall = statetype = A
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = P2bodyDist Y >= -20
trigger1 = P2bodyDist Y <= 20

[State -1, “Š‚°]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2statetype = S
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 5
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 7
trigger2 = p2statetype = S
trigger2 = p2movetype != H

;===========================================================================
[State -1, •qŒÄ‚Ñ]
type = ChangeState
value = 196
triggerall = command = "y+a"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, è‡‚í‚¹‡}]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
[State -1, ‘O“]]
type = ChangeState
value = 900
triggerall = command != "holddown"
triggerall = command != "holdback"
trigger1 = command = "x+a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "z"
trigger2 = statetype = S
trigger2 = ctrl

[State -1, Œã“]]
type = ChangeState
value = 910
triggerall = command != "holddown"
triggerall = command = "holdback"
trigger1 = command = "x+a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "z"
trigger2 = statetype = S
trigger2 = ctrl

;===========================================================================
[State -1, ƒWƒƒƒ“ƒvƒLƒƒƒ“ƒZƒ‹]
type = ChangeState
value = 45
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = Var(4) != 2
trigger1 = stateno = 600 || stateno = 610 || stateno = 620
trigger1 = movecontact = 1
trigger2 = stateno = 700 || stateno = 710 || stateno = 720
trigger2 = movecontact = 1

;===========================================================================
[State -1, ƒK[ƒhƒLƒƒƒ“ƒZƒ‹B]
type = ChangeState
value = 920
triggerall = command = "y+b" || command = "c"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = Stateno = 150
trigger2 = Stateno = 151
trigger3 = Stateno = 152
trigger4 = Stateno = 153

;===========================================================================
[State -1, ‹ü‚²‚Á‚ÂB]
type = ChangeState
value = 520
triggerall = command = "holddown"
trigger1 = command = "y+b" || command = "c"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, —§‚¿‚²‚Á‚ÂB]
type = ChangeState
value = 240
triggerall = command != "holddown"
trigger1 = command = "y+b" || command = "c"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
[State -1, ƒ_ƒbƒVƒ…ƒpƒ“ƒ`]
type = ChangeState
value = 250
triggerall = command = "x" || command = "y"
triggerall = command != "holddown"
trigger1 = stateno = 100
trigger1 = statetype = S
trigger2 = stateno = 101
trigger2 = statetype = S

[State -1, ƒ_ƒbƒVƒ…ƒLƒbƒN]
type = ChangeState
value = 340
triggerall = command = "a" || command = "b"
triggerall = command != "holddown"
trigger1 = stateno = 100
trigger1 = statetype = S
trigger2 = stateno = 101
trigger2 = statetype = S

;===========================================================================
[State -1, ƒŒƒo[“ü‚ê‚`]
type = ChangeState
value = 260
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 235 || stateno = 240 || stateno = 250
trigger2 = movecontact
trigger3 = stateno = 300 || stateno = 310 || stateno = 320 || stateno = 330 || stateno = 340
trigger3 = movecontact
trigger4 = stateno = 400 || stateno = 410
trigger4 = movecontact
trigger5 = stateno = 500 || stateno = 510 || stateno = 520
trigger5 = movecontact
trigger6 = stateno = 530 && movecontact
trigger6 = NumTarget(530)

;===========================================================================
[State -1, ‹ß‹——£‚`]
type = ChangeState
value = 220
triggerall = command = "x"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 15
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 220
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, ‹ß‹——£‚a]
type = ChangeState
value = 320
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 25
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, ‹ß‹——£‚b]
type = ChangeState
value = 235
triggerall = command = "y"
triggerall = stateno = 410
trigger1 = movecontact = 1

;---------------------------------------------------------------------------
[State -1, ‹ß‹——£‚b]
type = ChangeState
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 15
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, ‹ß‹——£‚c]
type = ChangeState
value = 330
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 25
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 320
trigger2 = movecontact

;===========================================================================
[State -1, ‰“‹——£‚`]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holdfwd"
triggerall = command != "holddown"
triggerall = p2bodydist X > 15
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 220
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, ‰“‹——£‚a]
type = ChangeState
value = 300
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist X > 25
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 235
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
[State -1, ‰“‹——£‚b]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist X > 15
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, ‰“‹——£‚c]
type = ChangeState
value = 310
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist X > 25
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 320
trigger2 = movecontact

;===========================================================================
[State -1, ‹ü‚`]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && time > 9
trigger2 = movecontact

;---------------------------------------------------------------------------
[State -1, ‹ü‚b]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, ‹üƒŒƒo[“ü‚ê‚a]
type = ChangeState
value = 530
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 235 || stateno = 240 || stateno = 250 || stateno = 260
trigger2 = movecontact = 1
trigger3 = stateno = 300 || stateno = 310 || stateno = 320 || stateno = 330 || stateno = 340
trigger3 = movecontact = 1
trigger4 = stateno = 400 || stateno = 410
trigger4 = movecontact = 1
trigger5 = stateno = 500 || stateno = 510 || stateno = 520

[State -1, ‹ü‚a]
type = ChangeState
value = 500
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, ‹ü‚c]
type = ChangeState
value = 510
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 235
trigger2 = movecontact = 1

;===========================================================================
[State -1, ‹ó’†‚`]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, ‹ó’†‚b(vertical)]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = Vel x = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, ‹ó’†‚b(horizontal)]
type = ChangeState
value = 620
triggerall = command = "y"
triggerall = Vel x != 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, ‹ó’†‚a]
type = ChangeState
value = 700
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, ‹ó’†‚c(vertical)]
type = ChangeState
value = 710
triggerall = command = "b"
triggerall = Vel x = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, ‹ó’†‚b(horizontal)]
type = ChangeState
value = 720
triggerall = command = "b"
triggerall = Vel x != 0
trigger1 = statetype = A
trigger1 = ctrl
