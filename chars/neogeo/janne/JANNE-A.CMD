[Command]
name = "dbdf"
command = ~D, B, D, F, x
time = 35

[Command]
name = "dbdf"
command = ~D, B, D, F, y
time = 35

[Command]
name = "dbdf"
command = ~D, B, D, F, z
time = 35

[Command]
name = "qcf2"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "qcf2"
command = ~D, DF, F, D, DF, F, b

[Command]
name = "qcf2"
command = ~D, DF, F, D, DF, F, c

[Command]
name = "ex_bird"
command = ~40$B, F, x+y

[Command]
name = "ex_bird"
command = ~40$B, F, y+z

[Command]
name = "ex_bird"
command = ~40$B, F, x+z

[Command]
name = "bird_x"
command = ~40$B, F, x

[Command]
name = "bird_y"
command = ~40$B, F, y

[Command]
name = "bird_z"
command = ~40$B, F, z

[Command]
name = "flash_a"
command = ~40$B, F, a

[Command]
name = "flash_b"
command = ~40$B, F, b

[Command]
name = "flash_c"
command = ~40$B, F, c

[Command]
name = "justice_a"
command = ~40$D, U, a

[Command]
name = "justice_b"
command = ~40$D, U, b

[Command]
name = "justice_c"
command = ~40$D, U, c

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "downfwd_a"
command = /DF, a
time = 1

[Command]
name = "downfwd_b"
command = /DF, b
time = 1

[Command]
name = "downfwd_c"
command = /DF, c
time = 1

[Command]
name = "fwd_z"
command = /F, z
time = 1

[Command]
name = "fwd_c"
command = /F, c
time = 1

[Command]
name = "back_z"
command = /B, z
time = 1

[Command]
name = "back_c"
command = /B, c
time = 1

[Command]
name = "down_y"
command = /D, y
time = 1

[Command]
name = "whip"
command = a+b
time = 1

[Command]
name = "whip"
command = b+c
time = 1

[Command]
name = "whip"
command = a+c
time = 1

[Command]
name = "fb"
command = F, B
time = 10

[Command]
name = "fb"
command = B, F
time = 10

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

;---------------------------------------------------------------------------
[Statedef -1]

;ファイヤーバード
[State -1]
type = ChangeState
value = 3000
triggerall = command = "qcf2"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = movecontact && stateno = 210
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 240
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 270
trigger7 = movecontact && stateno = 400
trigger8 = movecontact && stateno = 410
trigger9 = movecontact && stateno = 430
trigger10 = movecontact && stateno = 440
trigger11 = movecontact && stateno = 800
;---------------------------------------------------------------------------
;エンジェルアロー
[State -1]
type = ChangeState
value = 3020
triggerall = command = "dbdf"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = movecontact && stateno = 210
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 240
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 270
trigger7 = movecontact && stateno = 400
trigger8 = movecontact && stateno = 410
trigger9 = movecontact && stateno = 430
trigger10 = movecontact && stateno = 440
trigger11 = movecontact && stateno = 800
;---------------------------------------------------------------------------
;オーラバードEX
[State -1]
type = ChangeState
value = 1090
triggerall = command = "ex_bird"
triggerall = statetype != A
triggerall = power >= 500
trigger1 = ctrl
trigger2 = movecontact && stateno = 210
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 240
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 270
trigger7 = movecontact && stateno = 400
trigger8 = movecontact && stateno = 410
trigger9 = movecontact && stateno = 430
trigger10 = movecontact && stateno = 440
trigger11 = movecontact && stateno = 800
;---------------------------------------------------------------------------
;オーラバード弱
[State -1]
type = ChangeState
value = 1000
triggerall = command = "bird_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 210
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 240
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 270
trigger7 = movecontact && stateno = 400
trigger8 = movecontact && stateno = 410
trigger9 = movecontact && stateno = 430
trigger10 = movecontact && stateno = 440
trigger11 = movecontact && stateno = 800
;---------------------------------------------------------------------------
;オーラバード中
[State -1]
type = ChangeState
value = 1010
triggerall = command = "bird_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 210
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 240
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 270
trigger7 = movecontact && stateno = 400
trigger8 = movecontact && stateno = 410
trigger9 = movecontact && stateno = 430
trigger10 = movecontact && stateno = 440
trigger11 = movecontact && stateno = 800
;---------------------------------------------------------------------------
;オーラバード強
[State -1]
type = ChangeState
value = 1020
triggerall = command = "bird_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 210
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 240
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 270
trigger7 = movecontact && stateno = 400
trigger8 = movecontact && stateno = 410
trigger9 = movecontact && stateno = 430
trigger10 = movecontact && stateno = 440
trigger11 = movecontact && stateno = 800
;---------------------------------------------------------------------------
;フラッシュソード弱
[State -1]
type = ChangeState
value = 1030
triggerall = command = "flash_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 210
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 240
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 270
trigger7 = movecontact && stateno = 400
trigger8 = movecontact && stateno = 410
trigger9 = movecontact && stateno = 430
trigger10 = movecontact && stateno = 440
trigger11 = movecontact && stateno = 800
;---------------------------------------------------------------------------
;フラッシュソード中
[State -1]
type = ChangeState
value = 1040
triggerall = command = "flash_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 210
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 240
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 270
trigger7 = movecontact && stateno = 400
trigger8 = movecontact && stateno = 410
trigger9 = movecontact && stateno = 430
trigger10 = movecontact && stateno = 440
trigger11 = movecontact && stateno = 800
;---------------------------------------------------------------------------
;フラッシュソード強
[State -1]
type = ChangeState
value = 1050
triggerall = command = "flash_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 210
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 240
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 270
trigger7 = movecontact && stateno = 400
trigger8 = movecontact && stateno = 410
trigger9 = movecontact && stateno = 430
trigger10 = movecontact && stateno = 440
trigger11 = movecontact && stateno = 800
;---------------------------------------------------------------------------
;ジャスティスソード弱
[State -1]
type = ChangeState
value = 1060
triggerall = command = "justice_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 210
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 240
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 270
trigger7 = movecontact && stateno = 400
trigger8 = movecontact && stateno = 410
trigger9 = movecontact && stateno = 430
trigger10 = movecontact && stateno = 440
trigger11 = movecontact && stateno = 800
;---------------------------------------------------------------------------
;ジャスティスソード中
[State -1]
type = ChangeState
value = 1070
triggerall = command = "justice_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 210
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 240
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 270
trigger7 = movecontact && stateno = 400
trigger8 = movecontact && stateno = 410
trigger9 = movecontact && stateno = 430
trigger10 = movecontact && stateno = 440
trigger11 = movecontact && stateno = 800
;---------------------------------------------------------------------------
;ジャスティスソード強
[State -1]
type = ChangeState
value = 1080
triggerall = command = "justice_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 210
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 240
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 270
trigger7 = movecontact && stateno = 400
trigger8 = movecontact && stateno = 410
trigger9 = movecontact && stateno = 430
trigger10 = movecontact && stateno = 440
trigger11 = movecontact && stateno = 800
;---------------------------------------------------------------------------
;スラッシュウィップ
[State -1]
type = ChangeState
value = 800
triggerall = command = "whip"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 210
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 240
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 270
trigger7 = movecontact && stateno = 400
trigger8 = movecontact && stateno = 410
trigger9 = movecontact && stateno = 430
trigger10 = movecontact && stateno = 440
;---------------------------------------------------------------------------
;投げ
[State -1]
type = ChangeState
value = 810
triggerall = statetype != A
triggerall = ctrl
triggerall = p2bodydist x < 15
trigger1 = command = "fwd_z"
trigger2 = command = "back_z"
;---------------------------------------------------------------------------
;往復ビンタ
[State -1]
type = ChangeState
value = 820
triggerall = statetype != A
triggerall = ctrl
triggerall = p2bodydist x < 15
trigger1 = command = "fwd_c"
trigger2 = command = "back_c"
;---------------------------------------------------------------------------
;往復ビンタ（回数アップ）
[State -1]
type = VarAdd
v = 2
value = 1
trigger1 = stateno = 828
trigger1 = command = "fb"
;---------------------------------------------------------------------------
;ダッシュ
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;バックステップ
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;弱スライディング
[State -1]
type = ChangeState
value = 460
trigger1 = command = "downfwd_a"
trigger1 != command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;中スライディング
[State -1]
type = ChangeState
value = 470
trigger1 = command = "downfwd_b"
trigger1 != command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;強スライディング
[State -1]
type = ChangeState
value = 480
trigger1 = command = "downfwd_c"
trigger1 != command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;近距離レバー入れ強パンチ
[State -1]
type = ChangeState
value = 260
trigger1 = command = "fwd_z"
trigger1 != command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2BodyDist X < 20
;---------------------------------------------------------------------------
;遠距離レバー入れ強パンチ
[State -1]
type = ChangeState
value = 250
trigger1 = command = "fwd_z"
trigger1 != command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;下突き
[State -1]
type = ChangeState
value = 670
trigger1 = command = "down_y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;近距離弱パンチ
[State -1]
type = ChangeState
value = 230
trigger1 = command = "x"
trigger1 != command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2BodyDist X < 20
;---------------------------------------------------------------------------
;近距離強パンチ
[State -1]
type = ChangeState
value = 240
trigger1 = command = "z"
trigger1 != command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2BodyDist X < 20
;---------------------------------------------------------------------------
;遠距離弱パンチ
[State -1]
type = ChangeState
value = 200
trigger1 = command = "x"
trigger1 != command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;遠距離中パンチ
[State -1]
type = ChangeState
value = 210
trigger1 = command = "y"
trigger1 != command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;遠距離強パンチ
[State -1]
type = ChangeState
value = 220
trigger1 = command = "z"
trigger1 != command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;弱キック
[State -1]
type = ChangeState
value = 270
trigger1 = command = "a"
trigger1 != command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;中キック
[State -1]
type = ChangeState
value = 280
trigger1 = command = "b"
trigger1 != command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;強キック
[State -1]
type = ChangeState
value = 290
trigger1 = command = "c"
trigger1 != command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
trigger1 = command = "x"
trigger1 != command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ中パンチ
[State -1]
type = ChangeState
value = 410
trigger1 = command = "y"
trigger1 != command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1]
type = ChangeState
value = 420
trigger1 = command = "z"
trigger1 != command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1]
type = ChangeState
value = 430
trigger1 = command = "a"
trigger1 != command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ中キック
[State -1]
type = ChangeState
value = 440
trigger1 = command = "b"
trigger1 != command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1]
type = ChangeState
value = 450
trigger1 = command = "c"
trigger1 != command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 600
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ジャンプ中パンチ
[State -1]
type = ChangeState
value = 610
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ジャンプ強パンチ
[State -1]
type = ChangeState
value = 620
trigger1 = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ジャンプ弱キック
[State -1]
type = ChangeState
value = 630
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ジャンプ中キック
[State -1]
type = ChangeState
value = 640
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;垂直ジャンプ強キック
[State -1]
type = ChangeState
value = 660
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X = 0
;---------------------------------------------------------------------------
;ジャンプ強キック
[State -1]
type = ChangeState
value = 650
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;挑発
[State -1]
type = ChangeState
value = 195
trigger1 = command = "s"
trigger1 != command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

