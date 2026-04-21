;-| Super Motions |--------------------------------------------------------
[Command]
name = "hissyou"
command = ~DB, DF,DB, DF, b
time = 30

[Command]
name = "gokuaku"
command = ~D, DF, F, D, $B, y
time = 35

;-| Special Motions |------------------------------------------------------
[Command]
name = "seien_a"
command = ~$B, $D, $F, a

[Command]
name = "seien_b"
command = ~$B, $D, $F, b

[Command]
name = "ryuen_x"
command = ~D, DF, F, x

[Command]
name = "ryuen_y"
command = ~D, DF, F, y

[Command]
name = "syouryu_x"
command = ~D, DB, B, x

[Command]
name = "syouryu_y"
command = ~D, DB, B, y

[Command]
name = "syouryu_a"
command = ~D, DB, B, a
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
[State -1, ˆê”­‰œ‹`]
type = ChangeState
value = 3500
triggerall = roundstate != 3
triggerall = power >= 2000
triggerall = command = "hissyou"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 530
trigger2 = movecontact = 1
trigger2 = time >= 15

;===========================================================================
[State -1, ‹ó’†‹Éˆ«¸—´’e]
type = ChangeState
value = 3100
triggerall = roundstate != 3
triggerall = power >= 1000
triggerall = command = "gokuaku"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 600 || stateno = 610 || stateno = 620
trigger3 = movecontact = 1
trigger3 = stateno = 700 || stateno = 710 || stateno = 720 || stateno = 730

[State -1, ‹Éˆ«¸—´’e]
type = ChangeState
value = 3000
triggerall = roundstate != 3
triggerall = power >= 1000
triggerall = command = "gokuaku"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 25
trigger3 = movecontact = 1
trigger3 = stateno = 300 || stateno = 310 || stateno = 320 || stateno = 330 || stateno = 340
trigger4 = movecontact = 1
trigger4 = stateno = 400 || stateno = 410
trigger5 = movecontact = 1
trigger5 = stateno = 500 || stateno = 510 || stateno = 520 || stateno = 530
;===========================================================================
[State -1, ƒ_ƒbƒVƒ…Â‰Š—ôa]
type = ChangeState
value = 1320
triggerall = command = "seien_a" || command = "seien_b"
triggerall = statetype != A
trigger1 = stateno = 250 || stateno = 340
trigger2 = stateno = 100 || stateno = 101

[State -1, Â‰Š—ôa‚a]
type = ChangeState
value = 1300
triggerall = command = "seien_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230
trigger3 = movecontact = 1
trigger3 = stateno = 300 || stateno = 310 || stateno = 320 || stateno = 330
trigger4 = movecontact = 1
trigger4 = stateno = 400 || stateno = 410 || stateno = 500 || stateno = 510 || stateno = 520 || stateno = 530

[State -1, Â‰Š—ôa‚c]
type = ChangeState
value = 1310
triggerall = command = "seien_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230
trigger3 = movecontact = 1
trigger3 = stateno = 300 || stateno = 310 || stateno = 320 || stateno = 330
trigger4 = movecontact = 1
trigger4 = stateno = 400 || stateno = 410 || stateno = 500 || stateno = 510 || stateno = 520 || stateno = 530

;===========================================================================
[State -1, k‹óù•—a‚`]
type = ChangeState
value = 1200
triggerall = command = "syouryu_x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 600 || stateno = 610 || stateno = 620
trigger3 = movecontact = 1
trigger3 = stateno = 700 || stateno = 710 || stateno = 720 || stateno = 730

[State -1, k‹óù•—a‚b]
type = ChangeState
value = 1210
triggerall = command = "syouryu_y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 600 || stateno = 610 || stateno = 620
trigger3 = movecontact = 1
trigger3 = stateno = 700 || stateno = 710 || stateno = 720 || stateno = 730
;===========================================================================
[State -1, –‰Š¸—¬’e‚`]
type = ChangeState
value = 1100
triggerall = command = "syouryu_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 25
trigger3 = movecontact = 1
trigger3 = stateno = 300 || stateno = 310 || stateno = 320 || stateno = 330 || stateno = 340
trigger4 = movecontact = 1
trigger4 = stateno = 400 || stateno = 410 || stateno = 500 || stateno = 510 || stateno = 520 || stateno = 530
trigger5 = stateno = 1000 && time >38
trigger6 = stateno = 1050 && time >43
trigger7 = stateno = 1300 && time >31
trigger8 = stateno = 1310 && time >43

[State -1, –‰Š¸—¬’e‚b]
type = ChangeState
value = 1110
triggerall = command = "syouryu_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 25
trigger3 = movecontact = 1
trigger3 = stateno = 300 || stateno = 310 || stateno = 320 || stateno = 330 || stateno = 340
trigger4 = movecontact = 1
trigger4 = stateno = 400 || stateno = 410 || stateno = 500 || stateno = 510 || stateno = 520 || stateno = 530
trigger5 = stateno = 1000 && time >38
trigger6 = stateno = 1050 && time >43
trigger7 = stateno = 1300 && time >31
trigger8 = stateno = 1310 && time >43

[State -1, •s”­’e]
type = ChangeState
value = 1120
triggerall = command = "syouryu_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 25
trigger3 = movecontact = 1
trigger3 = stateno = 300 || stateno = 310 || stateno = 320 || stateno = 330 || stateno = 340
trigger4 = movecontact = 1
trigger4 = stateno = 400 || stateno = 410 || stateno = 500 || stateno = 510 || stateno = 520 || stateno = 530
trigger5 = stateno = 1000 && time >38
trigger6 = stateno = 1050 && time >43
trigger7 = stateno = 1300 && time >31
trigger8 = stateno = 1310 && time >43
;===========================================================================
[State -1, —´‰Š”g‚`]
type = ChangeState
value = 1000
triggerall = command = "ryuen_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 250
trigger3 = movecontact = 1
trigger3 = stateno = 300 || stateno = 310 || stateno = 320 || stateno = 330 || stateno = 340
trigger4 = movecontact = 1
trigger4 = stateno = 400 || stateno = 410 || stateno = 500 || stateno = 510 || stateno = 520 || stateno = 530

[State -1, —´‰Š”g‚b]
type = ChangeState
value = 1050
triggerall = command = "ryuen_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 250
trigger3 = movecontact = 1
trigger3 = stateno = 300 || stateno = 310 || stateno = 320 || stateno = 330 || stateno = 340
trigger4 = movecontact = 1
trigger4 = stateno = 400 || stateno = 410 || stateno = 500 || stateno = 510 || stateno = 520 || stateno = 530
;---------------------------------------------------------------------------
[State -1, ‘–]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, ƒoƒbƒNƒXƒeƒbƒv]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
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
[State -1, w“J]
type = ChangeState
value = 196
triggerall = command = "y+a"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, ’§”­]
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
trigger1 = stateno = 600
trigger1 = movecontact = 1
trigger2 = stateno = 610
trigger2 = movecontact = 1
trigger3 = stateno = 620
trigger3 = movecontact = 1
trigger4 = stateno = 700
trigger4 = movecontact = 1
trigger5 = stateno = 710
trigger5 = movecontact = 1
trigger6 = stateno = 720
trigger6 = movecontact = 1

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
[State -1, ‹ß‹——£‚`]
type = ChangeState
value = 220
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 25
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger2 = time >= 11 
trigger3 = movecontact = 1
trigger3 = stateno = 220
trigger3 = time >= 9 

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
value = 230
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = p2bodydist X <= 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = p2bodydist X <= 30
trigger2 = movecontact = 1
trigger2 = stateno = 220
trigger2 = time >= 9 
trigger3 = movecontact = 1
trigger3 = stateno = 410

;---------------------------------------------------------------------------
[State -1, ‹ß‹——£‚c]
type = ChangeState
value = 330
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = p2bodydist X <= 25
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 320
trigger2 = time >= 8
;===========================================================================
[State -1, ‚`]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist X > 25
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 200
trigger2 = time >= 11
trigger3 = movecontact = 1
trigger3 = stateno = 220
trigger3 = time >= 11 

;---------------------------------------------------------------------------
[State -1, ‚b]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = p2bodydist X > 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 400

;---------------------------------------------------------------------------
[State -1, ‚a]
type = ChangeState
value = 300
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist X > 25
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, ‚c]
type = ChangeState
value = 310
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = p2bodydist X > 25
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = PrevStateno = 320
trigger2 = movecontact = 1
trigger2 = stateno = 330
trigger2 = time >= 11

;===========================================================================
[State -1, ‚µ‚á‚ª‚İ‚`]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact = 1
trigger2 = stateno = 400
trigger2 = time >= 11

;---------------------------------------------------------------------------
[State -1, ‚µ‚á‚ª‚İ‚b]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, ‚µ‚á‚ª‚İƒŒƒo[“ü‚ê‚a]
type = ChangeState
value = 530
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = PrevStateno = 330
trigger2 = movecontact = 1
trigger2 = stateno = 310
trigger2 = time >= 13
trigger3 = movecontact = 1
trigger3 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 250
trigger4 = movecontact = 1
trigger4 = stateno = 300 || stateno = 310 || stateno = 320 || stateno = 330 || stateno = 340
trigger5 = movecontact = 1
trigger5 = stateno = 400 || stateno = 410 || stateno = 500 || stateno = 510

[State -1, ‚µ‚á‚ª‚İ‚a]
type = ChangeState
value = 500
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = command != "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, ‚µ‚á‚ª‚İ‚c]
type = ChangeState
value = 510
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;===========================================================================
[State -1, ‹ó’†‚`]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, ‹ó’†‚b]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = Vel x = 0
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ‹ó’†‘OŒã‚b]
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
[State -1, ‹ó’†‚c]
type = ChangeState
value = 710
triggerall = command != "holddown"
triggerall = command = "b"
triggerall = Vel x = 0
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ‹ó’†‘OŒã‚c]
type = ChangeState
value = 720
triggerall = command != "holddown"
triggerall = command = "b"
triggerall = Vel x != 0
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ‹ó’†‰º~‚c]
type = ChangeState
value = 730
triggerall = command = "holddown"
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610
trigger2 = movecontact = 1
trigger3 = stateno = 620
trigger3 = movecontact = 1
trigger4 = stateno = 700
trigger4 = movecontact = 1
trigger5 = stateno = 710
trigger5 = movecontact = 1
trigger6 = stateno = 720
trigger6 = movecontact = 1