;===========================================================================
;åéâÿÇÃåïém éáãæ
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
[Command]
name = "kyoki"
command = ~D, DF, F, D, DF, F, x+y
time = 40

;-| Special Motions |------------------------------------------------------

;--------------------------------------------
;for debug
[Command]
name = "debug"
command = /F,c
time = 1

;debug2
[Command]
name = "debug2"
command = c
time = 1

[Command]
name = "debug3"
command = /$D,c
time = 1

[Command]
name = "debug4"
command = /B,c
time = 1

[Command]
name = "debug5"
command = /U,c
time = 1

;--------------------------------------------
;éaì˜ëÂÁı
[Command]
name = "oobasami"
command = ~D, DB, B, y

;ì√òh x
[Command]
name = "hagewashi_x"
command = ~D, DB, B, x

;ì√òh y
[Command]
name = "hagewashi_y"
command = ~D, DB, B, y

;ñ≥éúîﬂéhÇµ
[Command]
name = "mujihizashi"
command = ~F, DF, D, DB, B, a
time = 40

;éaì˜äôÍåx
[Command]
name = "kamaitati_x"
command = ~B, DB, D, DF, F, x
time = 40

;éaì˜äôÍåy
[Command]
name = "kamaitati_y"
command = ~B, DB, D, DF, F, y
time = 40

;âÙì]äÃÇ¶ÇÆÇËx
[Command]
name = "kimoeguri_x"
command = ~F, D, DF, x
time = 40

;âÙì]äÃÇ¶ÇÆÇËy
[Command]
name = "kimoeguri_y"
command = ~F, D, DF, y
time = 40

;ín‰rÇﬂääÇË
[Command]
name = "jinamesuberi"
command = F, B, F, a
time = 20

;Ç‘ÇøéTÇ´x
[Command]
name = "buchimaki_x"
command = x,x
time = 12

;Ç‘ÇøéTÇ´y
[Command]
name = "buchimaki_y"
command = y,y
time = 12

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF";Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10


;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "agowari"
command = x+y
time = 1


;-| Dir + Button |---------------------------------------------------------
;ã•éËÅEçAîjÇË
[Command]
name = "nodoyaburi"
command = /B,x
time = 1

[Command]
name = "6y"
command = /F,y
time = 1

[Command]
name = "doku"
command = /F,y
time = 1

[Command]
name = "abaraori"
command = /F,a
time = 1

[Command]
name = "slidekick"
command = /DF,a
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
;taunt
[State -1]
type = ChangeState
value = 195
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ín‰rÇﬂääÇË
[State -1]
type = ChangeState
value = 110
triggerall = command = "jinamesuberi"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 230) || (stateno = 235) || (stateno = 240) || (stateno = 270) || (stateno = 400) || (stateno = 430) || (stateno = 440))

;---------------------------------------------------------------------------
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
;í¥âúã` ñ¿ã¢éÄêäÅEã•äÌ
[State -1]
type = ChangeState
value = 3100
triggerall = power >= 2000
triggerall = winko != 1
triggerall = command = "kyoki"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 230) || (stateno = 235) || (stateno = 240) || (stateno = 270) || (stateno = 400) || (stateno = 430) || (stateno = 440))


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ñ≥éúîﬂéhÇµ
[State -1]
type = ChangeState
value = 550
triggerall = command = "mujihizashi"
triggerall = p2bodydist x < 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 230) || (stateno = 235) || (stateno = 240) || (stateno = 270) || (stateno = 400) || (stateno = 430) || (stateno = 440))


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ì√òh_é„
[State -1]
type = ChangeState
value = 1600
triggerall = command = "hagewashi_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 230) || (stateno = 235) || (stateno = 240) || (stateno = 270) || (stateno = 400) || (stateno = 430) || (stateno = 440))


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ì√òh_ã≠
[State -1]
type = ChangeState
value = 1650
triggerall = command = "hagewashi_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 230) || (stateno = 235) || (stateno = 240) || (stateno = 270) || (stateno = 400) || (stateno = 430) || (stateno = 440))


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;éaì˜ëÂÁı
[State -1]
type = ChangeState
value = 1520
triggerall = command = "oobasami"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 600)
trigger3 = movecontact && (stateno = 630)
trigger4 = movecontact && (stateno = 640)

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;éaì˜äôÍå ã≠
[State -1]
type = ChangeState
value = 991
triggerall = command = "kamaitati_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 230) || (stateno = 235) || (stateno = 240) || (stateno = 270) || (stateno = 400) || (stateno = 430) || (stateno = 440))

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;âÙì]äÃÇ¶ÇÆÇË é„
[State -1]
type = ChangeState
value = 1000
triggerall = command = "kimoeguri_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 230) || (stateno = 235) || (stateno = 240) || (stateno = 270) || (stateno = 400) || (stateno = 430) || (stateno = 440))

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;éaì˜äôÍå é„
[State -1]
type = ChangeState
value = 950
triggerall = command = "kamaitati_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 230) || (stateno = 235) || (stateno = 240) || (stateno = 270) || (stateno = 400) || (stateno = 430) || (stateno = 440))

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;âÙì]äÃÇ¶ÇÆÇË ã≠
[State -1]
type = ChangeState
value = 1020
triggerall = command = "kimoeguri_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 230) || (stateno = 235) || (stateno = 240) || (stateno = 270) || (stateno = 400) || (stateno = 430) || (stateno = 440))

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ã•ênÅEä{äÑÇË
[State -1]
type = ChangeState
value = 260
triggerall = command = "agowari"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 230) || (stateno = 235) || (stateno = 240) || (stateno = 270) || (stateno = 400) || (stateno = 430) || (stateno = 440))

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ã•ãsÅEÉAÉoÉâê‹ÇË
[State -1]
type = ChangeState
value = 205
triggerall = command = "abaraori"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ã•ãsÅEÉXÉlç”Ç´
[State -1]
type = ChangeState
value = 405
triggerall = command = "slidekick"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 230) || (stateno = 235) || (stateno = 240) || (stateno = 270) || (stateno = 400) || (stateno = 430) || (stateno = 440))

;---------------------------------------------------------------------------
;ã•éËÅEçAîjÇË
[State -1]
type = ChangeState
value = 235
triggerall = command = "nodoyaburi"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 235) && movecontact && (time = [7,12])

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ã•çsÅEì≈ÇêHÇÁÇÌÇŒ
[State -1]
type = ChangeState
value = 900
triggerall = P2bodydist X <= 30
triggerall = command = "doku"
triggerall = p2statetype != A
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ã•ênÅEî˜êoçèÇ›
[State -1]
type = ChangeState
value = 270
triggerall = P2bodydist X > 30
triggerall = command = "6y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 200)
trigger3 = movecontact && (stateno = 230)
trigger4 = movecontact && (stateno = 235)


;===========================================================================
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
trigger2 = movecontact && (stateno = 235)

;---------------------------------------------------------------------------
;Stand_Y
[State -1]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 230)
trigger3 = movecontact && (stateno = 235)

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
trigger3 = movecontact && (stateno = 235)

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
trigger3 = movecontact && (stateno = 235)

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
trigger5 = movecontact && (stateno = 400)
trigger6 = movecontact && (stateno = 430)

;---------------------------------------------------------------------------
;Jump_A
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
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
;CPU only
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; óßÇøÉKÅ[Éh
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

; óßÇøÉKÅ[Éh2
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
; ÇµÇ·Ç™Ç›ÉKÅ[Éh
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
; ãÛíÜÉKÅ[Éh
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
; ìGÉWÉÉÉìÉvéûÇ…äÃÇ¶ÇÆÇË
[State -1]
type = ChangeState
value = 1020
triggerall = p2movetype != A
triggerall = random <= 200
triggerall = var(9) = 1
triggerall = statetype != A
triggerall = P2bodydist X >= 30
triggerall = ctrl
trigger1 = p2statetype = A
trigger1 = P2bodydist y > 50

;---------------------------------------------------------------------------
; ãÛíÜìØémÇ≈640
[State -1]
type = ChangeState
value = 640
triggerall = var(9) = 1
triggerall = random < 500
triggerall = P2bodydist X <= 35
trigger1 = statetype = A
trigger1 = p2statetype != L
trigger1 = ctrl

;---------------------------------------------------------------------------
; ãÛíÜâÒïú
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
; É_ÉbÉVÉÖ
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
; í[Ç…í«Ç¢Ç¬ÇﬂÇÁÇÍÇΩÇÁín‰rÇﬂääÇËÇ≈âÒî
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
; ã•äÌ
[State -1]
type = ChangeState
value = 3100
triggerall = var(9) = 1
triggerall = random < 100
triggerall = power >= 2000
triggerall = statetype != A
triggerall = winko != 1
triggerall = p2BodyDist X <= 60
triggerall = p2statetype != L
trigger1 = ctrl

;---------------------------------------------------------------------------
; ëÂÁı
[State -1]
type = ChangeState
value = 1520
triggerall = var(9) = 1
triggerall = winko != 1
triggerall = statetype = A
triggerall = p2statetype != L
triggerall = random < 20
triggerall = Pos Y >= -60
trigger1 = ctrl

;---------------------------------------------------------------------------
; éaì˜äôÍåx
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
; ñ≥éúîﬂ
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
; ì√òh
[State -1]
type = ChangeState
value = 1650
triggerall = var(9) = 1
triggerall = winko != 1
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = random < 20
trigger1 = ctrl
trigger1 = P2bodydist X > 60

;---------------------------------------------------------------------------
; ì√òh2
[State -1]
type = ChangeState
value = 1600
triggerall = var(9) = 1
triggerall = winko != 1
triggerall = statetype = S
triggerall = p2statetype != L
triggerall = random < 20
trigger1 = ctrl
trigger1 = P2bodydist X > 60

;---------------------------------------------------------------------------
; ä‘çáÇ¢ÇÃó£ÇÍÇƒÇ¢ÇÈÇ∆Ç´Ç…ÉXÉâÉCÉhÉLÉbÉN
[State -1]
type = ChangeState
value = 405
triggerall = var(9) = 1
triggerall = winko != 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = random < 10
trigger1 = ctrl
trigger1 = P2bodydist X >= 40


