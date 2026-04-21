;===========================================================================
;Œ‰Ø‚ÌŒ•m2 Š[
;Created by M@PPY
;http://izanai.cjb.net/

;===========================================================================
;-----------------------------------
;CPU only
[Command]
name = "cpu"
command = ~D,B,F,D,F,DF,B,DF,B,B,U,F, c
time = 1

[Command]
name = "cpu2"
command = ~D,B,F,D,F,DF,B,DF,B,B,F,B, c
time = 1

[Command]
name = "cpu3"
command = ~D,B,F,D,F,DF,B,DF,B,B,F,F, c
time = 1

[Command]
name = "cpu4"
command = ~D,B,F,D,B,DF,B,DF,B,B,U,B, c
time = 1

[Command]
name = "cpu5"
command = ~D,B,F,D,F,DF,B,DF,B,B,U,B, c
time = 1

[Command]
name = "cpu6"
command = ~D,B,F,D,F,DF,B,DF,B,B,D,F, c
time = 1

[Command]
name = "cpu7"
command = ~D,F,F,D,F,DF,B,DF,B,B,D,F, c
time = 1

[Command]
name = "cpu8"
command = ~D,F,F,D,F,DF,U,DF,B,B,D,F, c
time = 1

[Command]
name = "cpu9"
command = ~D,DF,B,BU,U,UF,F,DF,D,F, c
time = 1

[Command]
name = "cpu10"
command = ~D,DF,B,DB,U,UF,F,DF,D,F, c
time = 1


;-| Super Motions |--------------------------------------------------------

;–À‹¢€ŠE‹¥Ší
[Command]
name = "kyoki"
command = ~D, DF, F, D, DF, F, x+y
time = 45

[Command]
name = "debug"
command = c
time = 1

;-| Special Motions |------------------------------------------------------

;“Ã˜h x
[Command]
name = "hagewashi_x"
command = ~D, DB, B, x

;“Ã˜h y
[Command]
name = "hagewashi_y"
command = ~D, DB, B, y

;a“÷Š™êŒx
[Command]
name = "kamaitati_x"
command = ~B, DB, D, DF, F, x
time = 45

;a“÷Š™êŒy
[Command]
name = "kamaitati_y"
command = ~B, DB, D, DF, F, y
time = 45

;‰ô“]ŠÌ‚¦‚®‚èx
[Command]
name = "kimoeguri_x"
command = ~F, D, DF, x

;‰ô“]ŠÌ‚¦‚®‚èy
[Command]
name = "kimoeguri_y"
command = ~F, D, DF, y

;‚Ô‚¿T‚«x
[Command]
name = "buchimaki_x"
command = x,x
time = 12

;‚Ô‚¿T‚«y
[Command]
name = "buchimaki_y"
command = y,y
time = 12

;–³œ”ßh‚µ
[Command]
name = "mujihizashi"
command = ~F, DF, D, DB, B, a
time = 45

;-| For Debug |---------------------------------
;mu
[Command]
name = "debug2"
command = /$D,c
time = 1

;kai_w
[Command]
name = "debug4"
command = /F,c
time = 1

;kai_s
[Command]
name = "debug3"
command = /B,c
time = 1

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

[Command]
name = "jinamesuberi"
command = F, B, F, a
time = 30

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "kamituki"
command = y+z
time = 1


;-| Dir + Button |---------------------------------------------------------
[Command]
name = "abaraori"
command = /F,a
time = 1

[Command]
name = "abarazashi"
command = /F,y
time = 1

[Command]
name = "sunekudaki"
command = /DF,a
time = 1

[Command]
name = "nodoyaburi"
command = /B,x
time = 1

[Command]
name = "sujigiri"
command = /$D,x
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
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
name = "holdup";Required (do not remove)
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
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "longjump"
command = D, $U
time = 18

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_x+y"
command = /x+y
time = 1

[Statedef -1]
;===========================================================================

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;’när‚ßŠŠ‚è
[State -1]
type = ChangeState
value = 110
triggerall = command = "jinamesuberi"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 245)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)

;---------------------------------------------------------------------------
;RunFwd
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;’´‰œ‹` –À‹¢€ŠE‹¥Ší
[State -1]
type = ChangeState
value = 2000
triggerall = power >= 2000
triggerall = command = "kyoki"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 245)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)

;---------------------------------------------------------------------------
;–³œ”ßh‚µ
[State -1]
type = ChangeState
value = 550
triggerall = command = "mujihizashi"
triggerall = p2bodydist x < 20
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 245)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------

;“Ã˜h_ã
[State -1]
type = ChangeState
value = 1500
triggerall = command = "hagewashi_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 245)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)

;---------------------------------------------------------------------------

;“Ã˜h_‹­
[State -1]
type = ChangeState
value = 1600
triggerall = command = "hagewashi_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 245)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;a“÷Š™êŒ ã
[State -1]
type = ChangeState
value = 950
triggerall = command = "kamaitati_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 245)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;a“÷Š™êŒ ‹­
[State -1]
type = ChangeState
value = 991
triggerall = command = "kamaitati_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 245)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;‰ô“]ŠÌ‚¦‚®‚è ã
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1000
triggerall = command = "kimoeguri_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 245)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;‰ô“]ŠÌ‚¦‚®‚è ‹­
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1020
triggerall = command = "kimoeguri_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 245)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;‹¥‹sEƒXƒlÓ‚«
[State -1]
type = ChangeState
value = 405
triggerall = command = "sunekudaki"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)
trigger6 = movecontact && (stateno = 245)
trigger7 = movecontact && (stateno = 400)
trigger8 = movecontact && (stateno = 430)
trigger9 = movecontact && (stateno = 440)

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;‹¥‹sEƒAƒoƒ‰Ü‚è
[State -1]
type = ChangeState
value = 205
triggerall = command = "abaraori"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;‹¥èEA”j‚è
[State -1]
type = ChangeState
value = 235
triggerall = command = "nodoyaburi"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 235
trigger2 = movecontact
trigger2 = time = [7,12]


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;‹¥nEƒAƒoƒ‰h‚µ
[State -1]
type = ChangeState
value = 245
triggerall = command = "abarazashi"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 240)

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;‹¥sE“Å‚ğH‚ç‚í‚Î
[State -1]
type = ChangeState
value = 900
triggerall = command = "kamituki"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Stand_A
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 235)


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Stand_X
[State -1]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 235)

;---------------------------------------------------------------------------
;Stand_Y
[State -1]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 430)

;---------------------------------------------------------------------------
;Crouch_A
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)


;---------------------------------------------------------------------------
;Crouch_X
[State -1]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 220)
trigger4 = movecontact && (stateno = 235)

;---------------------------------------------------------------------------
;Crouch_Y
[State -1]
type = ChangeState
value = 440
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)
trigger5 = movecontact && (stateno = 430)

;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump_X
[State -1]
type = ChangeState
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump_Y
[State -1]
type = ChangeState
value = 640
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;CPU only
;---------------------------------------------------------------------------
; —§‚¿ƒK[ƒh
[State -1]
type = ChangeState
value = 120
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = random <= 200
triggerall = statetype != A
triggerall = var(9) = 1
triggerall = ctrl
trigger1 = p2statetype = S

; —§‚¿ƒK[ƒh2
[State -1]
type = ChangeState
value = 130
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = random <= 200
triggerall = statetype != A
triggerall = var(9) = 1
triggerall = ctrl
trigger1 = p2statetype = A

;---------------------------------------------------------------------------
; ‚µ‚á‚ª‚İƒK[ƒh
[State -1]
type = ChangeState
value = 121
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = statetype != A
triggerall = random <= 200
triggerall = var(9) = 1
triggerall = ctrl
trigger1 = p2statetype = C

;---------------------------------------------------------------------------
; ‹ó’†ƒK[ƒh
[State -1]
type = ChangeState
value = 122
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = statetype = A
triggerall = random <= 200
triggerall = var(9) = 1
triggerall = ctrl
trigger1 = p2statetype = A

;---------------------------------------------------------------------------
; ‹ó’†“¯m‚Å640
[State -1]
type = ChangeState
value = 640
triggerall = var(9) = 1
triggerall = random < 100
triggerall = P2bodydist X <= 35
trigger1 = statetype = A
trigger1 = p2statetype != L
trigger1 = ctrl

;---------------------------------------------------------------------------
; ‹ó’†‰ñ•œ
[State -1]
type = ChangeState
value = 5200
triggerall = var(9) = 1
triggerall = random <= 700
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
trigger1 = alive
trigger1 = CanRecover
trigger1 = stateno = 5050

;---------------------------------------------------------------------------
; ƒ_ƒbƒVƒ…
[State -1]
type = ChangeState
value = 110
triggerall = var(9) = 1
triggerall = winko != 1
triggerall = p2movetype != A
triggerall = P2bodydist X >= 60
triggerall = random < 100
trigger1 = stateno = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
; ’[‚É’Ç‚¢‚Â‚ß‚ç‚ê‚½‚ç’när‚ßŠŠ‚è‚Å‰ñ”ğ
[State -1]
type = ChangeState
value = 110
triggerall = var(20) = 1
triggerall = statetype != A
triggerall = winko != 1
triggerall = (FrontEdgeBodyDist - p2BodyDist X) > 220
triggerall = BackEdgeBodyDist <= 20
triggerall = random < 300
trigger1 = ctrl

;---------------------------------------------------------------------------
; ‹¥Ší
[State -1]
type = ChangeState
value = 2000
triggerall = var(9) = 1
triggerall = random < 100
triggerall = power >= 2000
triggerall = statetype != A
triggerall = winko != 1
triggerall = p2BodyDist X <= 60
triggerall = p2statetype != L
trigger1 = ctrl


;---------------------------------------------------------------------------
; ‹¥Ší‚ğ—­‚ß‚È‚¢
[State -1]
type = ChangeState
value = 2010
triggerall = var(9) = 1
trigger1 = time = 19
trigger1 = stateno = 2000

;---------------------------------------------------------------------------
; ŠÌ‚¦‚®‚è
[State -1]
type = ChangeState
value = 1000
triggerall = var(9) = 1
triggerall = winko != 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = random < 200
trigger1 = ctrl
trigger1 = P2bodydist X < 60

;---------------------------------------------------------------------------
; a“÷Š™êŒx
[State -1]
type = ChangeState
value = 950
triggerall = var(9) = 1
triggerall = winko != 1
triggerall = statetype != A
triggerall = (p2statetype != L) && (p2statetype != A)
triggerall = random < 200
trigger1 = ctrl
trigger1 = P2bodydist X < 60

;---------------------------------------------------------------------------
; a“÷Š™êŒy
[State -1]
type = ChangeState
value = 991
triggerall = var(9) = 1
triggerall = winko != 1
triggerall = statetype != A
triggerall = (p2statetype != L) && (p2statetype != A)
triggerall = random < 50
trigger1 = ctrl
trigger1 = P2bodydist X >= 80

;---------------------------------------------------------------------------
; –³œ”ß
[State -1]
type = ChangeState
value = 550
triggerall = var(9) = 1
triggerall = winko != 1
triggerall = statetype = S
triggerall = (p2statetype != L) && (p2statetype != A)
triggerall = random < 50
trigger1 = ctrl
trigger1 = P2bodydist X < 15

;---------------------------------------------------------------------------
; “Ã˜h
[State -1]
type = ChangeState
value = 1600
triggerall = var(9) = 1
triggerall = winko != 1
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = random < 20
trigger1 = ctrl
trigger1 = P2bodydist X > 50

;---------------------------------------------------------------------------
; ŠÔ‡‚¢‚Ì—£‚ê‚Ä‚¢‚é‚Æ‚«‚ÉƒXƒ‰ƒCƒhƒLƒbƒN
[State -1]
type = ChangeState
value = 405
triggerall = var(9) = 1
triggerall = winko != 1
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = random < 50
trigger1 = ctrl
trigger1 = P2bodydist X >= 60



