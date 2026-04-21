;-| Super Motions |--------------------------------------------------------
[Command];ストレスシュート
name = "stress"
command = ~D, DF, F, DF, D, DB, B, b
time = 35

[Command];一発奥義
name = "ippatu_x"
command = ~B, DB, B, F, x
time = 30

[Command];一発奥義
name = "ippatu"
command = ~B, DB, B, F, y
time = 30

;-| Special Motions |------------------------------------------------------
[Command];サーンコッツィ弱
name = "san_a"
command = ~F, D, DF, a

[Command];サーンコッツィ強
name = "san_b"
command = ~F, D, DF, b

[Command];パクヴァドラータム弱＆ヴァニザディエーニィー弱
name = "pakva_a"
command = ~D, DB, B, a

[Command];パクヴァドラータム強＆ヴァニザディエーニィー強
name = "pakva_b"
command = ~D, DB, B, b

[Command];ビートヴァＡ
name = "beat_x"
command = ~D, DF, F, x

[Command];ビートヴァＣ
name = "beat_y"
command = ~D, DF, F, y

[Command];ビートヴァＢ
name = "beat_a"
command = ~D, DF, F, a

[Command];ビートヴァＤ
name = "beat_b"
command = ~D, DF, F, b

;-| Double Tap |-----------------------------------------------------------
;大ジャンプ
[Command]
name = "jump"    
command = D, $U
time = 20

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
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = x+a
time = 1

[Command]
name = "recovery"
command = y+b
time = 1

[Command];ぶっとばし、ガードキャンセル
name = "cansel";Required (do not remove)
command = y+b
time = 1

[Command];回避
name = "kaihi";Required (do not remove)
command = x+a
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

;--------------------------------------------------------------------------
[Statedef -1] ;この一行は削除しないで下さい
;===========================================================================
;                              超必殺技
;===========================================================================
;ストレスシュート
[State -1, stress]
type = ChangeState
value = 3100
triggerall = command = "stress"
triggerall = power >= 1000
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 205
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 215
trigger6 = movecontact
trigger6 = stateno = 230
trigger7 = movecontact
trigger7 = stateno = 235
trigger8 = movecontact
trigger8 = stateno = 240
trigger9 = movecontact
trigger9 = stateno = 245
trigger10 = movecontact
trigger10 = stateno = 400
trigger11 = movecontact
trigger11 = stateno = 410
trigger12 = movecontact
trigger12 = stateno = 430
trigger13 = movecontact
trigger13 = stateno = 440
trigger14 = movecontact
trigger14 = stateno = 270
trigger15 = movecontact
trigger15 = stateno = 280
trigger16 = movecontact
trigger16 = stateno = 450
trigger17 = movecontact
trigger17 = stateno = 290
trigger18 = movecontact
trigger18 = stateno = 250
trigger19 = movecontact
trigger19 = stateno = 260
trigger20 = stateno = 100
trigger21 = stateno = 103

;--------------------------------------------------------------------------------
;一発奥義フェイント
[State -1, ippatu]
type = ChangeState
value = 3050
triggerall = command = "ippatu_x"
triggerall = power >= 2000
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 205
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 215
trigger6 = movecontact
trigger6 = stateno = 230
trigger7 = movecontact
trigger7 = stateno = 235
trigger8 = movecontact
trigger8 = stateno = 240
trigger9 = movecontact
trigger9 = stateno = 245
trigger10 = movecontact
trigger10 = stateno = 400
trigger11 = movecontact
trigger11 = stateno = 410
trigger12 = movecontact
trigger12 = stateno = 430
trigger13 = movecontact
trigger13 = stateno = 440
trigger14 = movecontact
trigger14 = stateno = 270
trigger15 = movecontact
trigger15 = stateno = 280
trigger16 = movecontact
trigger16 = stateno = 450
trigger17 = movecontact
trigger17 = stateno = 290
trigger18 = movecontact
trigger18 = stateno = 250
trigger19 = movecontact
trigger19 = stateno = 260
trigger20 = stateno = 100
trigger21 = stateno = 103

;--------------------------------------------------------------------------
;一発奥義
[State -1, ippatu]
type = ChangeState
value = 3000
triggerall = command = "ippatu"
triggerall = power >= 2000
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 205
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 215
trigger6 = movecontact
trigger6 = stateno = 230
trigger7 = movecontact
trigger7 = stateno = 235
trigger8 = movecontact
trigger8 = stateno = 240
trigger9 = movecontact
trigger9 = stateno = 245
trigger10 = movecontact
trigger10 = stateno = 400
trigger11 = movecontact
trigger11 = stateno = 410
trigger12 = movecontact
trigger12 = stateno = 430
trigger13 = movecontact
trigger13 = stateno = 440
trigger14 = movecontact
trigger14 = stateno = 270
trigger15 = movecontact
trigger15 = stateno = 280
trigger16 = movecontact
trigger16 = stateno = 450
trigger17 = movecontact
trigger17 = stateno = 290
trigger18 = movecontact
trigger18 = stateno = 250
trigger19 = movecontact
trigger19 = stateno = 260
trigger20 = stateno = 100
trigger21 = stateno = 103

;===========================================================================
;                              必殺技
;===========================================================================
;サーンコッツィダッシュ
[State -1, san_dash]
type = ChangeState
value = 1120
triggerall = command = "san_a" || command = "san_b"
trigger1 = stateno = 280
trigger1 = movecontact
trigger2 = stateno = 290
trigger2 = movecontact
trigger3 = stateno = 100
trigger4 = stateno = 103

;----------------------------------------------------------------------------
;サーンコッツィ弱
[State -1, san_a]
type = ChangeState
value = 1100
triggerall = command = "san_a"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 205
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 215
trigger6 = movecontact
trigger6 = stateno = 230
trigger7 = movecontact
trigger7 = stateno = 235
trigger8 = movecontact
trigger8 = stateno = 240
trigger9 = movecontact
trigger9 = stateno = 245
trigger10 = movecontact
trigger10 = stateno = 400
trigger11 = movecontact
trigger11 = stateno = 410
trigger12 = movecontact
trigger12 = stateno = 430
trigger13 = movecontact
trigger13 = stateno = 440
trigger14 = movecontact
trigger14 = stateno = 270
trigger15 = movecontact
trigger15 = stateno = 450
trigger16 = movecontact
trigger16 = stateno = 250
trigger17 = movecontact
trigger17 = stateno = 260

;----------------------------------------------------------------------------
;サーンコッツィ強
[State -1, san_b]
type = ChangeState
value = 1110
triggerall = command = "san_b"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 205
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 215
trigger6 = movecontact
trigger6 = stateno = 230
trigger7 = movecontact
trigger7 = stateno = 235
trigger8 = movecontact
trigger8 = stateno = 240
trigger9 = movecontact
trigger9 = stateno = 245
trigger10 = movecontact
trigger10 = stateno = 400
trigger11 = movecontact
trigger11 = stateno = 410
trigger12 = movecontact
trigger12 = stateno = 430
trigger13 = movecontact
trigger13 = stateno = 440
trigger14 = movecontact
trigger14 = stateno = 270
trigger15 = movecontact
trigger15 = stateno = 450
trigger16 = movecontact
trigger16 = stateno = 250
trigger17 = movecontact
trigger17 = stateno = 260

;---------------------------------------------------------------------------
;パクヴァドラータム弱
[State -1, pakva_a]
type = ChangeState
value = 1000
triggerall = command = "pakva_a"
triggerall = statetype != S
triggerall = statetype != C
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 615
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = stateno = 640
trigger6 = movecontact
trigger7 = stateno = 645
trigger7 = movecontact
trigger8 = stateno = 650
trigger8 = movecontact

;----------------------------------------------------------------------------------
;パクヴァドラータム弱
[State -1, pakva_b]
type = ChangeState
value = 1010
triggerall = command = "pakva_b"
triggerall = statetype != S
triggerall = statetype != C
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 615
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = stateno = 640
trigger6 = movecontact
trigger7 = stateno = 645
trigger7 = movecontact
trigger8 = stateno = 650
trigger8 = movecontact

;----------------------------------------------------------------------------
;ダッシュヴァニザディエーニィー
[State -1, vani_dash]
type = ChangeState
value = 1070
triggerall = command = "pakva_a" || command = "pakva_b"
trigger1 = stateno = 280
trigger1 = movecontact
trigger2 = stateno = 290
trigger2 = movecontact
trigger3 = stateno = 100
trigger4 = stateno = 103

;----------------------------------------------------------------------------
;ヴァニザディエーニィー弱
[State -1, vani_a]
type = ChangeState
value = 1050
triggerall = command = "pakva_a"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 205
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 215
trigger6 = movecontact
trigger6 = stateno = 230
trigger7 = movecontact
trigger7 = stateno = 235
trigger8 = movecontact
trigger8 = stateno = 240
trigger9 = movecontact
trigger9 = stateno = 245
trigger10 = movecontact
trigger10 = stateno = 400
trigger11 = movecontact
trigger11 = stateno = 410
trigger12 = movecontact
trigger12 = stateno = 430
trigger13 = movecontact
trigger13 = stateno = 440
trigger14 = movecontact
trigger14 = stateno = 270
trigger15 = movecontact
trigger15 = stateno = 450
trigger16 = movecontact
trigger16 = stateno = 250
trigger17 = movecontact
trigger17 = stateno = 260

;----------------------------------------------------------------------------
;ヴァニザディエーニィー弱
[State -1, vani_a]
type = ChangeState
value = 1060
triggerall = command = "pakva_b"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 205
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 215
trigger6 = movecontact
trigger6 = stateno = 230
trigger7 = movecontact
trigger7 = stateno = 235
trigger8 = movecontact
trigger8 = stateno = 240
trigger9 = movecontact
trigger9 = stateno = 245
trigger10 = movecontact
trigger10 = stateno = 400
trigger11 = movecontact
trigger11 = stateno = 410
trigger12 = movecontact
trigger12 = stateno = 430
trigger13 = movecontact
trigger13 = stateno = 440
trigger14 = movecontact
trigger14 = stateno = 270
trigger15 = movecontact
trigger15 = stateno = 450
trigger16 = movecontact
trigger16 = stateno = 250
trigger17 = movecontact
trigger17 = stateno = 260

;----------------------------------------------------------------------------
;ビートヴァＡ
[State -1, beat_x]
type = ChangeState
value = 1150
triggerall = command = "beat_x"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 205
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 215
trigger6 = movecontact
trigger6 = stateno = 230
trigger7 = movecontact
trigger7 = stateno = 235
trigger8 = movecontact
trigger8 = stateno = 240
trigger9 = movecontact
trigger9 = stateno = 245
trigger10 = movecontact
trigger10 = stateno = 400
trigger11 = movecontact
trigger11 = stateno = 410
trigger12 = movecontact
trigger12 = stateno = 430
trigger13 = movecontact
trigger13 = stateno = 440
trigger14 = movecontact
trigger14 = stateno = 270
trigger15 = movecontact
trigger15 = stateno = 280
trigger16 = movecontact
trigger16 = stateno = 450
trigger17 = movecontact
trigger17 = stateno = 290
trigger18 = movecontact
trigger18 = stateno = 250
trigger19 = movecontact
trigger19 = stateno = 260

;----------------------------------------------------------------------------
;ビートヴァＣ
[State -1, beat_y]
type = ChangeState
value = 1155
triggerall = command = "beat_y"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 205
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 215
trigger6 = movecontact
trigger6 = stateno = 230
trigger7 = movecontact
trigger7 = stateno = 235
trigger8 = movecontact
trigger8 = stateno = 240
trigger9 = movecontact
trigger9 = stateno = 245
trigger10 = movecontact
trigger10 = stateno = 400
trigger11 = movecontact
trigger11 = stateno = 410
trigger12 = movecontact
trigger12 = stateno = 430
trigger13 = movecontact
trigger13 = stateno = 440
trigger14 = movecontact
trigger14 = stateno = 270
trigger15 = movecontact
trigger15 = stateno = 280
trigger16 = movecontact
trigger16 = stateno = 450
trigger17 = movecontact
trigger17 = stateno = 290
trigger18 = movecontact
trigger18 = stateno = 250
trigger19 = movecontact
trigger19 = stateno = 260

;----------------------------------------------------------------------------
;ビートヴァＢ
[State -1, beat_a]
type = ChangeState
value = 1160
triggerall = command = "beat_a"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 205
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 215
trigger6 = movecontact
trigger6 = stateno = 230
trigger7 = movecontact
trigger7 = stateno = 235
trigger8 = movecontact
trigger8 = stateno = 240
trigger9 = movecontact
trigger9 = stateno = 245
trigger10 = movecontact
trigger10 = stateno = 400
trigger11 = movecontact
trigger11 = stateno = 410
trigger12 = movecontact
trigger12 = stateno = 430
trigger13 = movecontact
trigger13 = stateno = 440
trigger14 = movecontact
trigger14 = stateno = 270
trigger15 = movecontact
trigger15 = stateno = 280
trigger16 = movecontact
trigger16 = stateno = 450
trigger17 = movecontact
trigger17 = stateno = 290
trigger18 = movecontact
trigger18 = stateno = 250
trigger19 = movecontact
trigger19 = stateno = 260

;----------------------------------------------------------------------------
;ビートヴァＤ
[State -1, beat_b]
type = ChangeState
value = 1165
triggerall = command = "beat_b"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 205
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 215
trigger6 = movecontact
trigger6 = stateno = 230
trigger7 = movecontact
trigger7 = stateno = 235
trigger8 = movecontact
trigger8 = stateno = 240
trigger9 = movecontact
trigger9 = stateno = 245
trigger10 = movecontact
trigger10 = stateno = 400
trigger11 = movecontact
trigger11 = stateno = 410
trigger12 = movecontact
trigger12 = stateno = 430
trigger13 = movecontact
trigger13 = stateno = 440
trigger14 = movecontact
trigger14 = stateno = 270
trigger15 = movecontact
trigger15 = stateno = 280
trigger16 = movecontact
trigger16 = stateno = 450
trigger17 = movecontact
trigger17 = stateno = 290
trigger18 = movecontact
trigger18 = stateno = 250
trigger19 = movecontact
trigger19 = stateno = 260

;===========================================================================
;大ジャンプ
[State -1]
type = ChangeState
value = 900
triggerall = command = "jump"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 100
trigger3 = stateno = 103

;-------------------------------------------------------------------------
;空中大ジャンプ
[State -1]
type = ChangeState
value = 46
triggerall = command = "jump"
triggerall = statetype = A
triggerall = var(4) = 1
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;空中大ジャンプキャンセル
[State -1, Air Jump cansel]
type = ChangeState
value = 46
triggerall = command = "jump"
triggerall = statetype = A
triggerall = var(5) = 1
triggerall = var(4) <= 1
trigger1 = stateno = 600
trigger1 = movecontact
trigger2 = stateno = 610
trigger2 = movecontact
trigger3 = stateno = 615
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 640
trigger5 = movecontact
trigger6 = stateno = 645
trigger6 = movecontact
trigger7 = stateno = 650
trigger7 = movecontact

;---------------------------------------------------------------------------
;空中ジャンプキャンセル
[State -1, Air Jump cansel]
type = ChangeState
value = 45
triggerall = command = "holdup"
triggerall = statetype = A
triggerall = var(5) = 1
triggerall = var(4) <= 1
trigger1 = stateno = 600
trigger1 = movecontact
trigger2 = stateno = 610
trigger2 = movecontact
trigger3 = stateno = 615
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 640
trigger5 = movecontact
trigger6 = stateno = 645
trigger6 = movecontact
trigger7 = stateno = 650
trigger7 = movecontact

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
;ガードキャンセル
[State -1, guard cansel]
type = ChangeState
value = 950
triggerall = command = "cansel" || command = "c"
triggerall = power >= 1000
trigger1 = Stateno = 150
trigger2 = Stateno = 151
trigger3 = Stateno = 152
trigger4 = Stateno = 153

;---------------------------------------------------------------------------
;立ちごっつい攻撃
[State -1, y+b]
type = ChangeState
value = 270
triggerall = command = "cansel" || command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103

;-------------------------------------------------------------------------------
;しゃがみごっつい攻撃
[State -1, crunch y+b]
type = ChangeState
value = 450
triggerall = command = "cansel" || command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C || statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103

;---------------------------------------------------------------------------
;前避け
[State -1, kaihi]
type = ChangeState
value = 910
triggerall = command = "kaihi" || command = "z"
triggerall = command = "holdfwd" || command != "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl
trigger3 = stateno = 100
trigger4 = stateno = 103

;---------------------------------------------------------------------------
;前避け
[State -1, kaihi]
type = ChangeState
value = 911
triggerall = command = "kaihi" || command = "z"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl
trigger3 = stateno = 100
trigger4 = stateno = 103

;---------------------------------------------------------------------------
;避け
[State -1, kaihi]
type = ChangeState
value = 910
triggerall = command = "kaihi" || command = "z"
triggerall = command != "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype = C
trigger2 = ctrl
trigger3 = stateno = 100
trigger4 = stateno = 103

;---------------------------------------------------------------------------
;空中投げ
[State -1, Air Throw]
type = ChangeState
value = 850
triggerall = command = "y"
triggerall = p2statetype = A
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = P2bodyDist Y >= -20
trigger1 = P2bodyDist Y <= 20

;------------------------------------------------------------------------------------------
;投げ
[State -1, Throw]
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
;ダッシュＰ
[State -1, Dash P]
type = ChangeState
value = 280
triggerall = command = "x" || command = "y"
triggerall = statetype = S
trigger1 = stateno = 100 
trigger2 = stateno = 103

;----------------------------------------------------------------------------
;ダッシュＫ
[State -1, Dash K]
type = ChangeState
value = 290
triggerall = command = "a" || command = "b"
triggerall = statetype = S
trigger1 = stateno = 100 
trigger2 = stateno = 103

;----------------------------------------------------------------------------
;立ち↓→Ｂ
[State -1, kakato otosi]
type = ChangeState
value = 260
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command = "holddown"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 205
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 215
trigger6 = movecontact
trigger6 = stateno = 230
trigger7 = movecontact
trigger7 = stateno = 235
trigger8 = movecontact
trigger8 = stateno = 240
trigger9 = movecontact
trigger9 = stateno = 245
trigger10 = movecontact
trigger10 = stateno = 400
trigger11 = movecontact
trigger11 = stateno = 410
trigger12 = movecontact
trigger12 = stateno = 430
trigger13 = movecontact
trigger13 = stateno = 440
trigger14 = movecontact
trigger14 = stateno = 270
trigger15 = movecontact
trigger15 = stateno = 280
trigger16 = movecontact
trigger16 = stateno = 450
trigger17 = movecontact
trigger17 = stateno = 290

;---------------------------------------------------------------------------
;立ち→Ａ
[State -1, kakato otosi]
type = ChangeState
value = 250
triggerall = command = "x"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 200
trigger3 = movecontact
trigger3 = stateno = 205
trigger4 = movecontact
trigger4 = stateno = 210
trigger5 = movecontact
trigger5 = stateno = 215
trigger6 = movecontact
trigger6 = stateno = 230
trigger7 = movecontact
trigger7 = stateno = 235
trigger8 = movecontact
trigger8 = stateno = 240
trigger9 = movecontact
trigger9 = stateno = 245
trigger10 = movecontact
trigger10 = stateno = 400
trigger11 = movecontact
trigger11 = stateno = 410
trigger12 = movecontact
trigger12 = stateno = 430
trigger13 = movecontact
trigger13 = stateno = 440
trigger14 = movecontact
trigger14 = stateno = 270
trigger15 = movecontact
trigger15 = stateno = 280
trigger16 = movecontact
trigger16 = stateno = 450
trigger17 = movecontact
trigger17 = stateno = 290

;---------------------------------------------------------------------------
;近距離立ちＣ
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 30
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ちＤ
[State -1, Stand Strong Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 215

;---------------------------------------------------------------------------
;立ちＡ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = p2bodydist X > 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = p2bodydist X > 18
trigger2 = movecontact
trigger2 = stateno = 205

;---------------------------------------------------------------------------
;近距離立ちＡ
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 205

;---------------------------------------------------------------------------
;立ちＣ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ちＢ
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = p2bodydist X > 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = p2bodydist X > 15
trigger2 = movecontact
trigger2 = stateno = 235

;---------------------------------------------------------------------------
;近距離立ちＢ
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist X <= 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact
trigger2 = stateno = 235

;---------------------------------------------------------------------------
;立ちＤ
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみＡ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみＣ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみＢ
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103

;---------------------------------------------------------------------------
;しゃがみＤ
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 103

;---------------------------------------------------------------------------
;空中Ａ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;垂直空中Ｃ
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;移動空中Ｃ
[State -1, Jump Strong Punch]
type = ChangeState
value = 615
triggerall = command = "y"
triggerall = vel X != 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中Ｂ
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;垂直空中Ｄ
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;移動空中Ｄ
[State -1, Jump Strong Kick]
type = ChangeState
value = 645
triggerall = command = "b"
triggerall = vel X != 0
trigger1 = statetype = A
trigger1 = ctrl
