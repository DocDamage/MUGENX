;===========================================================================
; 北斗丸 (飢狼MOTW)
; Made by M@PPY
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
;超必殺手裏剣
[Command]
name = "super1"
command = ~D, DF, F, DF, F, x
time = 45

;奥義・超必殺竜巻
[Command]
name = "super2"
command = ~D, DF, F, DF, F, a
time = 45

;超爆煙苦無
[Command]
name = "super3"
command = ~D, DF, F, DF, F, y
time = 45

;究極奥義･超爆煙竜巻
[Command]
name = "super4"
command = ~D, DF, F, DF, F, b
time = 45


;-| Special Motions |------------------------------------------------------
;手裏剣弱
[Command]
name = "syuriken_x"
command = ~D, DF, F, x
time = 15

;手裏剣強
[Command]
name = "syuriken_y"
command = ~D, DF, F, y
time = 15

;空破弾弱
[Command]
name = "kuhadan_a"
command = ~D, DF, F, a
time = 15

;空破弾強
[Command]
name = "kuhadan_b"
command = ~D, DF, F, b
time = 15

;唐草斬り弱
[Command]
name = "karakusa_x"
command = ~D, DB, B, x
time = 15

;唐草斬り強
[Command]
name = "karakusa_y"
command = ~D, DB, B, y
time = 15

;落下斬弱
[Command]
name = "rakka_a"
command = ~D, DB, B, a
time = 15

;落下斬強
[Command]
name = "rakka_b"
command = ~D, DB, B, b
time = 15




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

;避け
[Command]
name = "dodge"
command = a+b
time = 1

;TOPアタック
[Command]
name = "top"
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

[Command]
name = "4y"
command = /B,y
time = 1

[Command]
name = "6y"
command = /F,y
time = 1

[Command]
name = "sliding"
command = /$DF,a
time = 1

[Command]
name = "kuten"
command = /$DF,b
time = 1

;------------------------------------
;空中投げ
[Command]
name = "at"
command = /$D,y
time = 1


;-| Single Button |---------------------------------------------------------
[Command]
name = "back"
command = B
time = 1

[Command]
name = "upback"
command = UB
time = 1

[Command]
name = "downback"
command = DB
time = 1

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
name = "longjump"
command = D, $U
time = 18

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1


[Statedef -1]
;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt
[State -1]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = p2life >= 700
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt2(?)
[State -1]
type = ChangeState
value = 196
triggerall = command = "start"
triggerall = p2life = [350,700]
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Taunt3(?)
[State -1]
type = ChangeState
value = 197
triggerall = command = "start"
triggerall = p2life < 350
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;超必殺手裏剣
[State -1]
type = ChangeState
value = 3000
triggerall = command = "super1"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 205) || (stateno = 230) || (stateno = 235) || (stateno = 400) ||  (stateno = 430) ||  (stateno = 210) || (stateno = 470))
trigger3 = movecontact && ((stateno = 240) && (animelem = 9, <= 0))
trigger4 = movecontact && ((stateno = 460) && (hitcount >= 2))


;---------------------------------------------------------------------------
;奥義・超必殺竜巻
[State -1]
type = ChangeState
value = 3100
triggerall = command = "super2"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 205) || (stateno = 230) || (stateno = 235) || (stateno = 400) ||  (stateno = 430) ||  (stateno = 210) || (stateno = 470))
trigger3 = movecontact && ((stateno = 240) && (animelem = 9, <= 0))
trigger4 = movecontact && ((stateno = 460) && (hitcount >= 2))


;---------------------------------------------------------------------------
;超爆煙苦無
[State -1]
type = ChangeState
value = 3200
triggerall = command = "super3"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 205) || (stateno = 230) || (stateno = 235) || (stateno = 400) ||  (stateno = 430) ||  (stateno = 210) || (stateno = 470))
trigger3 = movecontact && ((stateno = 240) && (animelem = 9, <= 0))
trigger4 = movecontact && ((stateno = 460) && (hitcount >= 2))


;---------------------------------------------------------------------------
;究極奥義・超爆煙竜巻
[State -1]
type = ChangeState
value = 3300
;triggerall = command = "c"
triggerall = command = "super4"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 205) || (stateno = 230) || (stateno = 235) || (stateno = 400) ||  (stateno = 430) ||  (stateno = 210) || (stateno = 470))
trigger3 = movecontact && ((stateno = 240) && (animelem = 9, <= 0))
trigger4 = movecontact && ((stateno = 460) && (hitcount >= 2))


;---------------------------------------------------------------------------
;手裏剣弱
[State -1]
type = ChangeState
value = 1000
triggerall = command = "syuriken_x"
triggerall = (NumProjID(1000) = 0) && (NumProjID(1050) = 0) && (NumProjID(1060) = 0)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 205) || (stateno = 230) || (stateno = 235) || (stateno = 400) ||  (stateno = 430) ||  (stateno = 210) || (stateno = 470))
trigger3 = movecontact && ((stateno = 240) && (animelem = 9, <= 0))
trigger4 = movecontact && ((stateno = 460) && (hitcount >= 2))


;---------------------------------------------------------------------------
;手裏剣強
[State -1]
type = ChangeState
value = 1050
triggerall = command = "syuriken_y"
triggerall = (NumProjID(1000) = 0) && (NumProjID(1050) = 0) && (NumProjID(1060) = 0)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 205) || (stateno = 230) || (stateno = 235) || (stateno = 400) ||  (stateno = 430) ||  (stateno = 210) || (stateno = 470))
trigger3 = movecontact && ((stateno = 240) && (animelem = 9, <= 0))
trigger4 = movecontact && ((stateno = 460) && (hitcount >= 2))


;---------------------------------------------------------------------------
;空中手裏剣
[State -1]
type = ChangeState
value = 1060
triggerall = (command = "syuriken_x") || (command = "syuriken_y")
triggerall = (NumProjID(1000) = 0) && (NumProjID(1050) = 0) && (NumProjID(1060) = 0)
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 600) || (stateno = 610) || (stateno = 630) || (stateno = 640))


;---------------------------------------------------------------------------
;空破弾弱
[State -1]
type = ChangeState
value = 1100
triggerall = command = "kuhadan_a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 205) || (stateno = 230) || (stateno = 235) || (stateno = 400) ||  (stateno = 430) ||  (stateno = 210) || (stateno = 470))
trigger3 = movecontact && ((stateno = 240) && (animelem = 9, <= 0))
trigger4 = movecontact && ((stateno = 460) && (hitcount >= 2))

;---------------------------------------------------------------------------
;空破弾強
[State -1]
type = ChangeState
value = 1150
triggerall = command = "kuhadan_b"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 205) || (stateno = 230) || (stateno = 235) || (stateno = 400) ||  (stateno = 430) ||  (stateno = 210) || (stateno = 470))
trigger3 = movecontact && ((stateno = 240) && (animelem = 9, <= 0))
trigger4 = movecontact && ((stateno = 460) && (hitcount >= 2))


;---------------------------------------------------------------------------
;唐草斬り弱
[State -1]
type = ChangeState
value = 1200
triggerall = command = "karakusa_x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 205) || (stateno = 230) || (stateno = 235) || (stateno = 400) ||  (stateno = 430) ||  (stateno = 210) || (stateno = 470))
trigger3 = movecontact && ((stateno = 240) && (animelem = 9, <= 0))
trigger4 = movecontact && ((stateno = 460) && (hitcount >= 2))

;---------------------------------------------------------------------------
;唐草斬り強
[State -1]
type = ChangeState
value = 1250
triggerall = command = "karakusa_y"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 205) || (stateno = 230) || (stateno = 235) || (stateno = 400) ||  (stateno = 430) ||  (stateno = 210) || (stateno = 470))
trigger3 = movecontact && ((stateno = 240) && (animelem = 9, <= 0))
trigger4 = movecontact && ((stateno = 460) && (hitcount >= 2))


;---------------------------------------------------------------------------
;落下斬・虚
[State -1]
type = ChangeState
value = 1300
triggerall = command = "rakka_a"
trigger1 = (statetype = S) || (statetype = A)
trigger1 = ctrl


;---------------------------------------------------------------------------
;落下斬・実
[State -1]
type = ChangeState
value = 1350
triggerall = command = "rakka_b"
trigger1 = (statetype = S) || (statetype = A)
trigger1 = ctrl


;---------------------------------------------------------------------------
;引っ掻き
[State -1]
type = ChangeState
value = 900
triggerall = (command = "6y") || (command = "4y")
triggerall = command != "holddown"
triggerall = p2bodydist X <= 20
triggerall = p2statetype != L
triggerall = ctrl
trigger1 = statetype = S
trigger1 = p2statetype != A

;---------------------------------------------------------------------------
;能面造り
[State -1]
type = ChangeState
value = 950
triggerall = (command = "at") || (command = "6y") || (command = "4y")
triggerall = p2bodydist X <= 20
triggerall = ctrl
trigger1 = statetype = A
trigger1 = p2statetype = A
trigger1 = p2movetype != H

;---------------------------------------------------------------------------
;すらいでぃんぐ
[State -1]
type = ChangeState
value = 450
triggerall = command = "sliding"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;空転蹴り
[State -1]
type = ChangeState
value = 460
triggerall = command = "kuten"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 205) || (stateno = 230) || (stateno = 235) || (stateno = 400) ||  (stateno = 430))

;---------------------------------------------------------------------------
;下段避け
[State -1]
type = ChangeState
value = 480
triggerall = command = "dodge"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;上段避け
[State -1]
type = ChangeState
value = 470
triggerall = command = "dodge"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


;---------------------------------------------------------------------------
;忍法爆炎じゃんぷ
[State -1]
type = ChangeState
value = 3400
triggerall = command = "top"
;triggerall = command = "c"
triggerall = Var(10) = 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 205) || (stateno = 230) || (stateno = 235) || (stateno = 400) ||  (stateno = 430) ||  (stateno = 210) || (stateno = 470))
trigger3 = movecontact && ((stateno = 240) && (animelem = 9, <= 0))
trigger4 = movecontact && ((stateno = 460) && (hitcount >= 2))


;---------------------------------------------------------------------------
;立ちキック弱 近
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 15
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 470)

;---------------------------------------------------------------------------
;立ちキック弱 遠
[State -1]
type = ChangeState
value = 205
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2bodydist X > 15
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 470)

;---------------------------------------------------------------------------
;立ちキック強 近
[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 15
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 205) || (stateno = 230) || (stateno = 235) || (stateno = 400) ||  (stateno = 430))

;---------------------------------------------------------------------------
;立ちキック強 遠
[State -1]
type = ChangeState
value = 215
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2bodydist X > 15
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 205) || (stateno = 230) || (stateno = 235) || (stateno = 400) ||  (stateno = 430))

;---------------------------------------------------------------------------
;立ちパンチ弱 近
[State -1]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 15
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 230) && movehit && (time >= 4)
trigger3 = movecontact && (stateno = 470)

;---------------------------------------------------------------------------
;立ちパンチ弱 遠
[State -1]
type = ChangeState
value = 235
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2bodydist X > 15
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 470)

;---------------------------------------------------------------------------
;立ちパンチ強 近
[State -1]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X <= 15
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 205) || (stateno = 230) || (stateno = 235) || (stateno = 400) ||  (stateno = 430))

;---------------------------------------------------------------------------
;立ちパンチ強 遠
[State -1]
type = ChangeState
value = 245
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2bodydist X > 15
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 205) || (stateno = 230) || (stateno = 235) || (stateno = 400) ||  (stateno = 430))


;---------------------------------------------------------------------------
;しゃがみキック弱
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) && movehit && (time >= 6)

;---------------------------------------------------------------------------
;しゃがみキック強
[State -1]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 205) || (stateno = 230) || (stateno = 235) || (stateno = 400) ||  (stateno = 430))

;---------------------------------------------------------------------------
;しゃがみパンチ弱
[State -1]
type = ChangeState
value = 430
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 430) && movehit && (time >= 6)

;---------------------------------------------------------------------------
;しゃがみパンチ強
[State -1]
type = ChangeState
value = 440
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 200) || (stateno = 205) || (stateno = 230) || (stateno = 235) || (stateno = 400) ||  (stateno = 430))

;---------------------------------------------------------------------------
;ジャンプキック弱
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプキック強
[State -1]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 600) || (stateno = 630))

;---------------------------------------------------------------------------
;ジャンプパンチ弱
[State -1]
type = ChangeState
value = 630
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプパンチ強
[State -1]
type = ChangeState
value = 640
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && ((stateno = 600) || (stateno = 630))


;---------------------------------------------------------------------------
;CPU
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; 立ちガード
[State -1]
type = ChangeState
value = 120
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = random <= 200
triggerall = statetype != A
triggerall = var(20) = 1
triggerall = ctrl
trigger1 = p2statetype = S

; 立ちガード2
[State -1]
type = ChangeState
value = 130
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = random <= 200
triggerall = statetype != A
triggerall = var(20) = 1
triggerall = ctrl
trigger1 = p2statetype = A

; しゃがみガード
[State -1]
type = ChangeState
value = 121
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = statetype != A
triggerall = random <= 200
triggerall = var(20) = 1
triggerall = ctrl
trigger1 = p2statetype = C

; 空中ガード
[State -1]
type = ChangeState
value = 122
triggerall = p2movetype = A
triggerall = P2bodydist X <= 40
triggerall = statetype = A
triggerall = random <= 200
triggerall = var(20) = 1
triggerall = ctrl
trigger1 = p2statetype = A

;---------------------------------------------------------------------------
; 至近距離で投げ
[State -1]
type = ChangeState
value = 900
triggerall = var(20) = 1
triggerall = statetype = S
triggerall = (p2statetype != L) && (p2statetype != A)
triggerall = p2BodyDist X <= 20
triggerall = winko != 1
triggerall = random < 20
trigger1 = ctrl

;---------------------------------------------------------------------------
; 超必1
[State -1]
type = ChangeState
value = 3000
triggerall = var(20) = 1
triggerall = statetype = S
triggerall = winko != 1
triggerall = power >= 1000
triggerall = random < 5
triggerall = p2BodyDist X > 25
triggerall = p2statetype != L
trigger1 = ctrl

;---------------------------------------------------------------------------
; 超必2
[State -1]
type = ChangeState
value = 3100
triggerall = var(20) = 1
triggerall = statetype = S
triggerall = winko != 1
triggerall = power >= 1000
triggerall = random < 10
triggerall = p2BodyDist X <= 25
triggerall = p2statetype != L
trigger1 = ctrl

;---------------------------------------------------------------------------
; 超必3
[State -1]
type = ChangeState
value = 3200
triggerall = var(20) = 1
triggerall = statetype = S
triggerall = winko != 1
triggerall = power >= 2000
triggerall = random < 5
triggerall = p2BodyDist X > 25
triggerall = p2statetype != L
trigger1 = ctrl

;---------------------------------------------------------------------------
; 超必4
[State -1]
type = ChangeState
value = 3300
triggerall = var(20) = 1
triggerall = statetype = S
triggerall = winko != 1
triggerall = power >= 2000
triggerall = random < 20
triggerall = p2BodyDist X <= 25
triggerall = p2statetype != L
trigger1 = ctrl

;---------------------------------------------------------------------------
; 手裏剣1
[State -1]
type = ChangeState
value = 1000
triggerall = var(20) = 1
triggerall = statetype = S
triggerall = winko != 1
triggerall = random < 5
triggerall = p2statetype != L
triggerall = (NumProjID(1000) = 0) && (NumProjID(1050) = 0) && (NumProjID(1060) = 0)
trigger1 = ctrl

;---------------------------------------------------------------------------
; 手裏剣2
[State -1]
type = ChangeState
value = 1050
triggerall = var(20) = 1
triggerall = statetype = S
triggerall = winko != 1
triggerall = random < 5
triggerall = p2statetype != L
triggerall = (NumProjID(1000) = 0) && (NumProjID(1050) = 0) && (NumProjID(1060) = 0)
trigger1 = ctrl

;---------------------------------------------------------------------------
; 手裏剣3
[State -1]
type = ChangeState
value = 1060
triggerall = var(20) = 1
triggerall = statetype = A
triggerall = winko != 1
triggerall = random < 5
triggerall = p2statetype != L
triggerall = (NumProjID(1000) = 0) && (NumProjID(1050) = 0) && (NumProjID(1060) = 0)
trigger1 = ctrl

;---------------------------------------------------------------------------
; 空破弾1
[State -1]
type = ChangeState
value = 1100
triggerall = var(20) = 1
triggerall = statetype = S
triggerall = winko != 1
triggerall = random < 10
triggerall = p2statetype != L
triggerall = p2BodyDist X > 20
trigger1 = ctrl

;---------------------------------------------------------------------------
; 空破弾2
[State -1]
type = ChangeState
value = 1150
triggerall = var(20) = 1
triggerall = statetype = S
triggerall = winko != 1
triggerall = random < 10
triggerall = p2statetype != L
triggerall = p2BodyDist X > 20
trigger1 = ctrl

;---------------------------------------------------------------------------
; 唐草斬り1
[State -1]
type = ChangeState
value = 1200
triggerall = var(20) = 1
triggerall = statetype = S
triggerall = winko != 1
triggerall = random < 10
triggerall = p2statetype != L
triggerall = p2BodyDist X > 30
trigger1 = ctrl

;---------------------------------------------------------------------------
; 落下斬
[State -1]
type = ChangeState
value = 1350
triggerall = var(20) = 1
triggerall = (statetype = S) || (statetype = A)
triggerall = winko != 1
triggerall = random < 5
triggerall = p2statetype != L
triggerall = p2BodyDist X > 50
trigger1 = ctrl

;---------------------------------------------------------------------------
; 後ろダッシュ(隙)
[State -1]
type = ChangeState
value = 105
triggerall = var(20) = 1
triggerall = statetype = S
triggerall = winko != 1
triggerall = p2BodyDist X < 20
triggerall = random < 50
trigger1 = ctrl

;---------------------------------------------------------------------------
; 遠距離でダッシュ
[State -1]
type = ChangeState
value = 100
triggerall = var(20) = 1
triggerall = statetype = S
triggerall = winko != 1
triggerall = p2BodyDist X > 70
triggerall = random < 50
trigger1 = ctrl

;---------------------------------------------------------------------------
; すらいでぃんぐ
[State -1]
type = ChangeState
value = 450
triggerall = var(20) = 1
triggerall = winko != 1
triggerall = statetype != A
triggerall = p2statetype != L
triggerall = random < 10
trigger1 = ctrl
trigger1 = P2bodydist X > 60

;---------------------------------------------------------------------------
; 空中投げ
[State -1]
type = ChangeState
value = 950
triggerall = var(20) = 1
triggerall = winko != 1
triggerall = random < 50
triggerall = P2bodydist X <= 20
triggerall = statetype = A
triggerall = p2statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; 空中回復
[State -1]
type = ChangeState
value = 5200
triggerall = var(20) = 1
triggerall = random <= 300
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
trigger1 = alive
trigger1 = CanRecover
trigger1 = stateno = 5050


