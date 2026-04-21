;「ユェン・ソイレン」コマンドファイル


;-| Super Motions |--------------------------------------------------------
[Command]
name = "AI01"
command = U,D,F,F,B,B,x
time = 1

[Command]
name = "AI02"
command = U,D,F,F,B,F,y
time = 1

[Command]
name = "AI03"
command = U,D,F,F,B,D,z
time = 1

[Command]
name = "AI04"
command = U,D,F,F,B,U,x
time = 1

[Command]
name = "AI05"
command = U,D,F,F,U,B,y
time = 1

[Command]
name = "AI06"
command = U,D,F,F,D,B,z
time = 1

[Command]
name = "AI07"
command = U,D,F,F,F,B,x
time = 1

[Command]
name = "AI08"
command = U,D,U,F,B,B,y
time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "super_a"
command = ~D, F, D, F, a
time = 30

[Command]
name = "super_b"
command = ~D, F, D, F, b
time = 30

[Command]
name = "super_c"
command = ~D, F, D, F, c
time = 30

[Command]
name = "gun"
command = z
time = 1
;-| Special Motions |------------------------------------------------------

[Command]
name = "shoryu_a"
command = ~F, D, DF, a
time = 20

[Command]
name = "shoryu_b"
command = ~F, D, DF, b
time = 20

[Command]
name = "qcf_a"
command = ~D, F, a
time = 15

[Command]
name = "qcf_b"
command = ~D, F, b
time = 15

[Command]
name = "qcf_c"
command = ~D, F, c
time = 15

[Command]
name = "qcb_a"
command = ~D, B, a
time = 15

[Command]
name = "qcb_b"
command = ~D, B, b
time = 15

[Command]
name = "qcb_c"
command = ~D, B, c
time = 15

[Command]
name = "bit"
command = ~D, D, a
time = 15

;-| Double Tap |-----------------------------------------------------------

[Command]
name = "FF"
command = F, F
time = 15

[Command]
name = "BB"
command = B, B
time = 15

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "ab"
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------

;-| Single Button |---------------------------------------------------------

[Command]
name = "a"
command = a
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "s"
command = s
time = 1

[Command]
name = "hold_s"
command = /s
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

;モータースレイヤー
[State -1]
type = ChangeState
value = 2500
triggerall = command = "super_c" && power >= 3000
trigger1 = statetype = S && ctrl

;インパルスフィンガー
[State -1]
type = ChangeState
value = 2300
triggerall = command = "super_b" && power >= 2000
trigger1 = statetype = S && ctrl

;フルバーストファイヤー
[State -1]
type = ChangeState
value = 2100
triggerall = command = "super_a" && numprojid(1000) = 0 && power >= 1000
trigger1 = statetype = S && ctrl

;クラッシュガン
[State -1]
type = ChangeState
value = 2000
triggerall = command = "gun" && numprojid(1000) = 0 && power >= 1000
trigger1 = statetype = S && ctrl && Var(50) = 0
trigger2 = stateno = 200 && MoveContact && Var(50) = 0
trigger3 = stateno = 205 && MoveContact && Var(50) = 0
trigger4 = stateno = 210 && MoveContact && Var(50) = 0
trigger5 = stateno = 230 && MoveContact && Var(50) = 0
trigger6 = stateno = 235 && MoveContact && Var(50) = 0
trigger7 = stateno = 240 && MoveContact && Var(50) = 0
trigger8 = stateno = 260 && MoveContact && Var(50) = 0
trigger9 = stateno = 265 && MoveContact && Var(50) = 0
trigger10 = stateno = 270 && MoveContact
trigger11 = stateno = 2000 && AnimElem = 9, >= 1 && command != "holddown" && Var(50) = 0
trigger12 = stateno = 150 && Var(50) = 0
trigger13 = stateno = 1100 && MoveContact && Var(50) = 0
trigger14 = stateno = 1070 && Var(50) = 0
trigger15 = stateno = 1150 && AnimElem = 6, >= 1 && Var(50) = 0
trigger16 = stateno = 1250 && AnimElem = 6, >= 1 && Var(50) = 0
trigger17 = stateno = 1310 && AnimElem = 3, >= 1 && Var(50) = 0

;クラッシュガン空中エクストラ
[State -1]
type = ChangeState
value = 2050
triggerall = command = "gun" && numprojid(1000) = 0 && power >= 1000
trigger1 = stateno = 1201 && MoveHit = 1
trigger2 = stateno = 1202 && MoveHit = 1
trigger3 = stateno = 1321 && Var(50) = 0
trigger4 = stateno = 1322 && Var(50) = 0

;バーチカルクラッシュガン
[State -1]
type = ChangeState
value = 2060
triggerall = command = "gun" && numprojid(1000) = 0 && power >= 1000
trigger1 = stateno = 1510 && AnimElem = 9, >= 1 && MoveHit
trigger2 = stateno = 1451 && Var(50) = 0


;クラッシュガン空中
[State -1]
type = ChangeState
value = 2030
triggerall = command = "gun" && numprojid(1000) = 0 && power >= 1000
trigger1 = statetype = A && ctrl && Var(50) = 0
trigger2 = stateno = 600 && MoveContact && Var(50) = 0
trigger3 = stateno = 605 && MoveContact && Var(50) = 0
trigger4 = stateno = 630 && MoveContact && Var(50) = 0
trigger5 = stateno = 635 && MoveContact && Var(50) = 0
trigger6 = stateno = 660 && MoveContact && Var(50) = 0
trigger7 = stateno = 276 && Var(50) = 0
trigger8 = stateno = 280
trigger9 = stateno = 285 && Var(50) = 0
trigger10 = stateno = 2030 && AnimElem = 8, >= 1  && Var(50) = 0
trigger11 = stateno = 154 && Var(50) = 0
trigger12 = stateno = 1180 && Var(50) = 0
trigger13 = stateno = 1401 && Var(50) = 0
trigger14 = stateno = 1431 && Var(50) = 0
trigger15 = stateno = 1441 && Var(50) = 0
trigger16 = stateno = 1550 && Var(50) = 0
trigger17 = stateno = 1580 && Var(50) = 0

;クラッシュガンしゃがみ
[State -1]
type = ChangeState
value = 2040
triggerall = command = "gun" && command = "holddown" && numprojid(1000) = 0 && power >= 1000
trigger1 = statetype = C && ctrl && Var(50) = 0
trigger2 = stateno = 400 && MoveContact && Var(50) = 0
trigger3 = stateno = 435 && MoveContact && Var(50) = 0
trigger4 = stateno = 440 && MoveContact && Var(50) = 0
trigger5 = stateno = 460 && AnimElem = 5, >= 1 && AnimElem = 8, < 0 && MoveContact && Var(50) = 0
trigger6 = stateno = 470 && AnimElem = 5, >= 1 && AnimElem = 8, < 0 && MoveContact
trigger7 = stateno = 2040 && AnimElem = 9, >= 1 && Var(50) = 0
trigger8 = stateno = 2000 && AnimElem = 9, >= 1 && command = "holddown" && Var(50) = 0

;クラッシュガンしゃがみ連繋用
[State -1]
type = ChangeState
value = 2040
triggerall = command = "gun" && numprojid(1000) = 0 && power >= 1000
trigger1 = stateno = 1510 && Var(50) = 0

;-以下必殺技------------------------------------------------------------------------------


;ヴォルテックザッパー
[State -1]
type = ChangeState
value = 1200
triggerall = command = "shoryu_a"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 210 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 240 && MoveContact
trigger8 = stateno = 270 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 430 && MoveContact
trigger11 = stateno = 440 && MoveContact
trigger12 = stateno = 475 && MoveContact


;ダブルミサイルエクスプロウダー
[State -1]
type = ChangeState
value = 1250
triggerall = command = "qcf_c"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 210 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 240 && MoveContact
trigger8 = stateno = 270 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 430 && MoveContact
trigger11 = stateno = 440 && MoveContact
trigger12 = stateno = 475 && MoveContact

;ブーステッドドリラー
[State -1]
type = ChangeState
value = 1050
triggerall = command = "qcb_c"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 210 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 240 && MoveContact
trigger8 = stateno = 270 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 430 && MoveContact
trigger11 = stateno = 440 && MoveContact
trigger12 = stateno = 475 && MoveContact
trigger13 = stateno = 1451

;ガトリングヒール
[State -1]
type = ChangeState
value = 1400
triggerall = command = "qcb_b"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 210 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 240 && MoveContact
trigger8 = stateno = 270 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 430 && MoveContact
trigger11 = stateno = 440 && MoveContact
trigger12 = stateno = 475 && MoveContact
trigger13 = stateno = 460 && MoveContact
trigger14 = stateno = 470 && MoveContact

;ガトリングヒールローリング版
[State -1]
type = ChangeState
value = 1430
trigger1 = stateno = 1451
trigger1 = command = "b"
trigger1 = command = "holdback"

;空中スタンブラスト
[State -1]
type = ChangeState
value = 1180
triggerall = command = "qcf_a" && NumProjID(2000) = 0
trigger1 = statetype = A && ctrl

;スタンブラスト
[State -1]
type = ChangeState
value = 1150
triggerall = command = "qcf_a" && NumProjID(2000) = 0
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 210 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 240 && MoveContact
trigger8 = stateno = 270 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 430 && MoveContact
trigger11 = stateno = 440 && MoveContact
trigger12 = stateno = 475 && MoveContact

;アクセルロール
[State -1]
type = ChangeState
value = 1450
triggerall = command = "qcf_b"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 210 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 240 && MoveContact
trigger8 = stateno = 270 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 430 && MoveContact
trigger11 = stateno = 440 && MoveContact
trigger12 = stateno = 475 && MoveContact

;フラッシュディバイド・ヴィクトライザー
[State -1]
type = ChangeState
value = 1320
triggerall = command = "qcf_c"
trigger1 = stateno = 1310 && MoveContact

;フラッシュガトリングヒール
[State -1]
type = ChangeState
value = 1430
triggerall = command = "qcb_b"
trigger1 = stateno = 1310 && MoveContact

;ガトリングスライダー
[State -1]
type = ChangeState
value = 1510
trigger1 = command = "b"
trigger1 = stateno = 1451
trigger2 = command = "qcf_b"
trigger2 = stateno = 1310 && MoveContact

;スーパーインパルスブリット
[State -1]
type = ChangeState
value = 1550
triggerall = command = "qcf_b" && Pos Y < -150
trigger1 = statetype = A && ctrl
trigger2 = stateno = 103
trigger3 = stateno = 108
trigger4 = stateno = 600 && MoveContact
trigger5 = stateno = 605 && MoveContact
trigger6 = stateno = 630 && MoveContact
trigger7 = stateno = 635 && MoveContact
trigger8 = stateno = 660 && MoveContact

;インパルスブリット
[State -1]
type = ChangeState
value = 1580
triggerall = command = "qcf_b" && Pos Y < -30
trigger1 = statetype = A && ctrl
trigger2 = stateno = 103
trigger3 = stateno = 108
trigger4 = stateno = 600 && MoveContact
trigger5 = stateno = 605 && MoveContact
trigger6 = stateno = 630 && MoveContact
trigger7 = stateno = 635 && MoveContact
trigger8 = stateno = 660 && MoveContact

;エアロガトリングヒール
[State -1]
type = ChangeState
value = 1440
triggerall = command = "qcb_b" && Pos Y < -30
trigger1 = statetype = A && ctrl
trigger2 = stateno = 103
trigger3 = stateno = 108
trigger4 = stateno = 600 && MoveContact
trigger5 = stateno = 605 && MoveContact
trigger6 = stateno = 630 && MoveContact
trigger7 = stateno = 635 && MoveContact
trigger8 = stateno = 660 && MoveContact

;フラッシュディバイダー
[State -1]
type = ChangeState
value = 1300
trigger1 = command = "qcf_b"
trigger1 = stateno = 1150 && AnimElem = 6, >= 1

;ＥＣＨＯブレード
[State -1]
type = ChangeState
value = 1100
triggerall = command = "qcb_a"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 200 && MoveContact
trigger3 = stateno = 205 && MoveContact
trigger4 = stateno = 210 && MoveContact
trigger5 = stateno = 230 && MoveContact
trigger6 = stateno = 235 && MoveContact
trigger7 = stateno = 240 && MoveContact
trigger8 = stateno = 270 && MoveContact
trigger9 = stateno = 400 && MoveContact
trigger10 = stateno = 430 && MoveContact
trigger11 = stateno = 440 && MoveContact
trigger12 = stateno = 475 && MoveContact

;アイアンテンペスト
[State -1]
type = ChangeState
value = 1350
triggerall = command = "y" && power >= 500
trigger1 = statetype != A && ctrl
trigger1 = Var(50) = 0

;ECHOシステムビット
[State -1]
type = ChangeState
value = 1650
triggerall = command = "bit"
trigger1 = statetype != A && ctrl
trigger1 = var(12) != 0

;ECHOシステムビット２
[State -1]
type = ChangeState
value = 1655
triggerall = command = "bit"
trigger1 = statetype != A && ctrl
trigger1 = var(12) = 0
trigger1 = var(11) != 0


;ECHOシステムビット３
[State -1]
type = ChangeState
value = 1656
triggerall = command = "bit"
trigger1 = statetype != A && ctrl
trigger1 = var(11) = 0
trigger1 = var(10) != 0


;空中ECHOシステムビット
[State -1]
type = ChangeState
value = 1660
triggerall = command = "bit"
trigger1 = statetype = A && ctrl
trigger1 = var(12) != 0

;空中ECHOシステムビット２
[State -1]
type = ChangeState
value = 1665
triggerall = command = "bit"
trigger1 = statetype = A && ctrl
trigger1 = var(12) = 0
trigger1 = var(11) != 0


;空中ECHOシステムビット３
[State -1]
type = ChangeState
value = 1666
triggerall = command = "bit"
trigger1 = statetype = A && ctrl
trigger1 = var(11) = 0
trigger1 = var(10) != 0

;読書の時間
[State -1]
type = ChangeState
value = 2900
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger1 = command = "s"


;P
[State -1]
type = ChangeState
value = 200
triggerall = command = "a" && p2bodydist x > 22
trigger1 = statetype = S && ctrl && stateno != 195
trigger2 = stateno = 100 || stateno = 102

;接近P
[State -1]
type = ChangeState
value = 205
triggerall = command = "a"
trigger1 = statetype = S && ctrl && stateno != 195
trigger2 = stateno = 100 || stateno = 102

;Pコンボ２段目
[State -1]
type = ChangeState
value = 210
triggerall = command = "a"
trigger1 = stateno = 200 && AnimElem = 4, >= 1
trigger2 = stateno = 205 && AnimElem = 2, >= 1
trigger3 = stateno = 400 && command != "holddown"

;K
[State -1]
type = ChangeState
value = 230
triggerall = command = "b" && p2bodydist x > 38
trigger1 = statetype = S && ctrl && stateno != 195
trigger2 = stateno = 100 || stateno = 102

;接近K
[State -1]
type = ChangeState
value = 235
triggerall = command = "b"
trigger1 = statetype = S && ctrl && stateno != 195
trigger2 = stateno = 100 || stateno = 102

;Kコンボ２段目
[State -1]
type = ChangeState
value = 240
triggerall = command = "b" && command != "holddown"
trigger1 = stateno = 200 && AnimElem = 4, >= 1
trigger2 = stateno = 205 && AnimElem = 2, >= 1
trigger3 = stateno = 230 && AnimElem = 3, >= 1
trigger4 = stateno = 235 && AnimElem = 3, >= 1
trigger5 = stateno = 400 && AnimElem = 2, >= 1
trigger6 = stateno = 430 && AnimElem = 2, >= 1

;ブレード
[State -1]
type = ChangeState
value = 260
triggerall = command = "c" && p2bodydist x > 22
trigger1 = statetype = S && ctrl && stateno != 195
trigger2 = stateno = 100 || stateno = 102

;接近ブレード
[State -1]
type = ChangeState
value = 265
triggerall = command = "c"
trigger1 = statetype = S && ctrl && stateno != 195
trigger2 = stateno = 100 || stateno = 102

;地上ブレードコンボフィニッシュ
[State -1]
type = ChangeState
value = 270
triggerall = command = "c" && command != "holddown"
trigger1 = stateno = 210 && MoveContact
trigger2 = stateno = 240 && MoveContact

;エアブレードコンボ
[State -1]
type = ChangeState
value = 275
trigger1 = command = "c"
trigger1 = stateno = 265 && AnimElem = 3, >= 1 && MoveHit

;エアブレードコンボ２
[State -1]
type = ChangeState
value = 280
trigger1 = command = "c" && command = "holddown"
trigger1 = stateno = 276 && AnimElem = 2, >= 1 && MoveHit

;エアブレードコンボ３
[State -1]
type = ChangeState
value = 285
trigger1 = command = "c" && command = "holdfwd"
trigger1 = stateno = 280 && AnimElem = 2, >= 1 && MoveHit

;しゃがみP
[State -1]
type = ChangeState
value = 400
trigger1 = command = "a" && statetype = C && ctrl

;しゃがみK
[State -1]
type = ChangeState
value = 430
trigger1 = command = "b" && statetype = C && ctrl

;しゃがみKコンボ
[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
trigger1 = stateno = 200 && AnimElem = 4, >= 1
trigger2 = stateno = 205 && AnimElem = 2, >= 1
trigger3 = stateno = 230 && AnimElem = 3, >= 1
trigger4 = stateno = 235 && AnimElem = 3, >= 1
trigger5 = stateno = 400 && AnimElem = 2, >= 1
trigger6 = stateno = 430 && AnimElem = 2, >= 1

;しゃがみブレード
[State -1]
type = ChangeState
value = 460
trigger1 = command = "c" && statetype = C && ctrl

;しゃがみブレードコンボ
[State -1]
type = ChangeState
value = 470
triggerall = command = "c"
trigger1 = stateno = 210 && AnimElem = 4, >= 1 && MoveContact
trigger2 = stateno = 240 && AnimElem = 3, >= 1 && MoveContact
trigger3 = stateno = 440 && AnimElem = 2, >= 1 && command = "holddown" && MoveContact

;ジャンプP
[State -1]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = stateno != 48
trigger2 = stateno = 103
trigger3 = stateno = 108
trigger4 = stateno = 276 && AnimElem = 2, >= 1 && MoveHit

;ジャンプK
[State -1]
type = ChangeState
value = 630
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = stateno != 48
trigger2 = stateno = 103
trigger3 = stateno = 108
trigger4 = stateno = 600 && MoveContact
trigger5 = stateno = 276 && AnimElem = 2, >= 1 && MoveHit

;垂直ジャンプブレード
[State -1]
type = ChangeState
value = 660
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger1 = stateno != 48
trigger1 = Vel X = 0
trigger2 = stateno = 103
trigger3 = stateno = 108
trigger4 = stateno = 630 && MoveContact

;斜めジャンプブレード
[State -1]
type = ChangeState
value = 660
trigger1 = command = "c" && statetype = A && stateno != 48 && ctrl

;ダッシュ
[State -1]
type = ChangeState
value = 100
triggerall = command = "FF"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 1150 && AnimElem = 10, >= 1


;前進ダッシュ(空中)
[State -1]
type = ChangeState
value = 103
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 1180 && AnimElem = 6, >= 1  && command = "FF"

;バックダッシュ
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB" && command != "holddown"
trigger1 = statetype = S && ctrl

; 空中バックダッシュ
[State -1]
type = ChangeState
value = 108
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl = 1
