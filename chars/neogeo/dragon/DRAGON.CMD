;---------------------------------------------------------------------------
[Command]
name = "cpu"
command = ~D, DF, F, a
time = 1

[Command]
name = "cpu"
command = ~D, DF, F, b
time = 1

[Command]
name = "cpu"
command = ~D, DF, F, c
time = 1

[Command]
name = "cpu"
command = ~D, DF, F, x
time = 1

[Command]
name = "cpu"
command = ~D, DF, F, y
time = 1

[Command]
name = "cpu"
command = ~D, DF, F, z
time = 1

[Command]
name = "cpu"
command = ~D, DB, B, a
time = 1

[Command]
name = "cpu"
command = ~D, DB, B, b
time = 1

[Command]
name = "cpu"
command = ~D, DB, B, c
time = 1

[Command]
name = "cpu"
command = ~D, DB, B, x
time = 1

[Command]
name = "cpu"
command = ~D, DB, B, y
time = 1

[Command]
name = "cpu"
command = ~D, DB, B, z
time = 1

[Command]
name = "cpu"
command = ~F, D, DF, a
time = 1

[Command]
name = "cpu"
command = ~F, D, DF, b
time = 1

[Command]
name = "cpu"
command = ~F, D, DF, c
time = 1

[Command]
name = "cpu"
command = ~F, D, DF, x
time = 1

[Command]
name = "cpu"
command = ~F, D, DF, y
time = 1

[Command]
name = "cpu"
command = ~F, D, DF, z
time = 1
;---------------------------------------------------------------------------
[Command]
name = "hyper_1"
command = ~F, B, F, a+b

[Command]
name = "hyper_1"
command = ~F, B, F, b+c

[Command]
name = "hyper_1"
command = ~F, B, F, a+c

[Command]
name = "qcf_a"
command = ~D, DF, F, a

[Command]
name = "qcf_b"
command = ~D, DF, F, b

[Command]
name = "qcf_c"
command = ~D, DF, F, c

[Command]
name = "qcb_a"
command = ~D, DB, B, a

[Command]
name = "qcb_b"
command = ~D, DB, B, b

[Command]
name = "qcb_c"
command = ~D, DB, B, c

[Command]
name = "uppercut_a"
command = ~F, D, DF, a

[Command]
name = "uppercut_b"
command = ~F, D, DF, b

[Command]
name = "uppercut_c"
command = ~F, D, DF, c

[Command]
name = "rapid_x"
command = x, x, x
time = 20
buffer.time = 5

[Command]
name = "rapid_y"
command = y, y, y
time = 20
buffer.time = 10

[Command]
name = "rapid_z"
command = z, z, z
time = 20
buffer.time = 15

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = a+b
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
name = "airfwd_z"
command = /$F, z
time = 1

[Command]
name = "airback_z"
command = /$B, z
time = 1

[Command]
name = "down_s"
command = /D, s
time = 1

[Command]
name = "counter"
command = x+y
time = 1

[Command]
name = "counter"
command = y+z
time = 1

[Command]
name = "counter"
command = x+z
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
name = "s"
command = s
time = 1

[Command]
name = "fwdback"
command = F, B
time = 10

[Command]
name = "fwdback"
command = B, F
time = 10

[Command]
name = "upfwd"
command = /UF
time = 1

[Command]
name = "upback"
command = /UB
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
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Statedef -1]
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 1130
trigger1 = Var(30)
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = p2BodyDist y < -20
trigger1 = random < 50

[State -1]
type = ChangeState
value = 3000
trigger1 = Var(30)
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = power >= 1000
trigger1 = p2BodyDist X > 100
trigger1 = random < 100

[State -1]
type = ChangeState
value = 810
trigger1 = Var(30)
trigger1 = statetype = S
trigger1 = p2bodydist x < 10
trigger1 = random < 20
trigger1 = ctrl

[State -1]
type = ChangeState
value = 830
trigger1 = Var(30)
trigger1 = statetype = A
trigger1 = p2bodydist x < 10
trigger1 = p2bodydist y > -65
trigger1 = p2bodydist y < 65
trigger1 = random < 500
trigger1 = ctrl

[State -1]
type = ChangeState
value = 840
trigger1 = Var(30)
trigger1 = statetype = A
trigger1 = p2bodydist x < 10
trigger1 = p2bodydist y > -65
trigger1 = p2bodydist y < 65
trigger1 = random < 500
trigger1 = ctrl

[State -1]
type = ChangeState
value = 1020
trigger1 = Var(30)
trigger1 = statetype != A
trigger1 = p2bodydist x > 150
trigger1 = random < 50
trigger1 = ctrl

[State -1]
type = ChangeState
value = 800
trigger1 = Var(30)
trigger1 = statetype = S
trigger1 = p2bodydist x < 50
trigger1 = random < 20
trigger1 = ctrl

[State -1]
type = ChangeState
value = 850
trigger1 = Var(30)
trigger1 = statetype = C
trigger1 = p2bodydist x < 50
trigger1 = random < 20
trigger1 = ctrl

[State -1]
type = ChangeState
value = 420
trigger1 = Var(30)
trigger1 = Var(28) = 1
trigger1 = statetype = C
trigger1 = ctrl

[State -1]
type = ChangeState
value = 410
trigger1 = Var(30)
trigger1 = Var(28) = 2
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;投げ
[State -1]
type = ChangeState
value = 810
triggerall = statetype = S
triggerall = ctrl
triggerall = p2bodydist x < 10
trigger1 = command = "fwd_z"
trigger2 = command = "back_z"
;---------------------------------------------------------------------------
;つかみ技
[State -1]
type = ChangeState
value = 820
triggerall = statetype = S
triggerall = ctrl
triggerall = p2bodydist x < 10
trigger1 = command = "fwd_c"
trigger2 = command = "back_c"
;---------------------------------------------------------------------------
[State -1]
type = VarAdd
v = 4
value = -1
trigger1 = stateno = 825
trigger1 = command = "fwdback"
trigger1 = Var(4) && Var(3)
;---------------------------------------------------------------------------
;後方空中投げ
[State -1]
type = ChangeState
value = 830
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2statetype = A
trigger1 = p2bodydist x < 10
trigger1 = p2bodydist y > -65
trigger1 = p2bodydist y < 65
trigger1 = command = "airback_z"
;---------------------------------------------------------------------------
;前方空中投げ
[State -1]
type = ChangeState
value = 840
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2statetype = A
trigger1 = p2bodydist x < 10
trigger1 = p2bodydist y > -65
trigger1 = p2bodydist y < 65
trigger1 = command = "airfwd_z"
;---------------------------------------------------------------------------
;神龍連環檄
[State -1]
type = ChangeState
value = 3000
triggerall = command = "hyper_1"
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = ctrl
trigger2 = movecontact && stateno = 230
trigger3 = movecontact && stateno = 240
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 290
trigger6 = movecontact && stateno = 300
trigger7 = movecontact && stateno = 310
trigger8 = movecontact && stateno = 320
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 430
;---------------------------------------------------------------------------
;百烈蹴弱
[State -1]
type = ChangeState
value = 1060
triggerall = command = "uppercut_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 230
trigger3 = movecontact && stateno = 240
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 290
trigger6 = movecontact && stateno = 300
trigger7 = movecontact && stateno = 310
trigger8 = movecontact && stateno = 320
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 430
;---------------------------------------------------------------------------
;百烈蹴中
[State -1]
type = ChangeState
value = 1070
triggerall = command = "uppercut_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 230
trigger3 = movecontact && stateno = 240
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 290
trigger6 = movecontact && stateno = 300
trigger7 = movecontact && stateno = 310
trigger8 = movecontact && stateno = 320
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 430
;---------------------------------------------------------------------------
;百烈蹴強
[State -1]
type = ChangeState
value = 1080
triggerall = command = "uppercut_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 230
trigger3 = movecontact && stateno = 240
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 290
trigger6 = movecontact && stateno = 300
trigger7 = movecontact && stateno = 310
trigger8 = movecontact && stateno = 320
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 430
;---------------------------------------------------------------------------
;飛足刀弱
[State -1]
type = ChangeState
value = 1000
triggerall = command = "qcf_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 230
trigger3 = movecontact && stateno = 240
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 290
trigger6 = movecontact && stateno = 300
trigger7 = movecontact && stateno = 310
trigger8 = movecontact && stateno = 320
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 430
;---------------------------------------------------------------------------
;飛足刀中
[State -1]
type = ChangeState
value = 1010
triggerall = command = "qcf_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 230
trigger3 = movecontact && stateno = 240
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 290
trigger6 = movecontact && stateno = 300
trigger7 = movecontact && stateno = 310
trigger8 = movecontact && stateno = 320
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 430
;---------------------------------------------------------------------------
;飛足刀強
[State -1]
type = ChangeState
value = 1020
triggerall = command = "qcf_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 230
trigger3 = movecontact && stateno = 240
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 290
trigger6 = movecontact && stateno = 300
trigger7 = movecontact && stateno = 310
trigger8 = movecontact && stateno = 320
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 430
;---------------------------------------------------------------------------
;龍牙脚弱
[State -1]
type = ChangeState
value = 1090
triggerall = command = "qcb_a"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 230
trigger3 = movecontact && stateno = 240
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 290
trigger6 = movecontact && stateno = 300
trigger7 = movecontact && stateno = 310
trigger8 = movecontact && stateno = 320
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 430
;---------------------------------------------------------------------------
;龍牙脚中
[State -1]
type = ChangeState
value = 1110
triggerall = command = "qcb_b"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 230
trigger3 = movecontact && stateno = 240
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 290
trigger6 = movecontact && stateno = 300
trigger7 = movecontact && stateno = 310
trigger8 = movecontact && stateno = 320
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 430
;---------------------------------------------------------------------------
;龍牙脚強
[State -1]
type = ChangeState
value = 1130
triggerall = command = "qcb_c"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 230
trigger3 = movecontact && stateno = 240
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 290
trigger6 = movecontact && stateno = 300
trigger7 = movecontact && stateno = 310
trigger8 = movecontact && stateno = 320
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 430
;---------------------------------------------------------------------------
;百烈拳弱
[State -1]
type = ChangeState
value = 1030
triggerall = command = "rapid_x"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 230
trigger3 = movecontact && stateno = 240
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 290
trigger6 = movecontact && stateno = 300
trigger7 = movecontact && stateno = 310
trigger8 = movecontact && stateno = 320
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 430
;---------------------------------------------------------------------------
;百烈拳中
[State -1]
type = ChangeState
value = 1040
triggerall = command = "rapid_y"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 230
trigger3 = movecontact && stateno = 240
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 290
trigger6 = movecontact && stateno = 300
trigger7 = movecontact && stateno = 310
trigger8 = movecontact && stateno = 320
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 430
;---------------------------------------------------------------------------
;百烈拳強
[State -1]
type = ChangeState
value = 1050
triggerall = command = "rapid_z"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = movecontact && stateno = 230
trigger3 = movecontact && stateno = 240
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 290
trigger6 = movecontact && stateno = 300
trigger7 = movecontact && stateno = 310
trigger8 = movecontact && stateno = 320
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 430
;---------------------------------------------------------------------------
;百烈拳弱（継続）
[State -1]
type = VarAdd
v = 1
value = 1
triggerall = command = "rapid_x"
trigger1 = stateno = 1030
trigger2 = stateno = 1035
;---------------------------------------------------------------------------
;百烈拳中（継続）
[State -1]
type = VarAdd
v = 1
value = 1
triggerall = command = "rapid_y"
trigger1 = stateno = 1040
trigger2 = stateno = 1045
;---------------------------------------------------------------------------
;百烈拳強（継続）
[State -1]
type = VarAdd
v = 1
value = 1
triggerall = command = "rapid_z"
trigger1 = stateno = 1050
trigger2 = stateno = 1055
;---------------------------------------------------------------------------
;龍閃撃上段
[State -1]
type = ChangeState
value = 800
trigger1 = command = "counter"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;龍閃撃下段
[State -1]
type = ChangeState
value = 850
trigger1 = command = "counter"
trigger1 = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;ソバット
[State -1]
type = ChangeState
value = 310
trigger1 = command = "fwd_c"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist x > 20
;---------------------------------------------------------------------------
;近距離立ち弱パンチ
[State -1]
type = ChangeState
value = 230
trigger1 = command = "x"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist x < 20
;---------------------------------------------------------------------------
;近距離立ち中パンチ
[State -1]
type = ChangeState
value = 240
trigger1 = command = "y"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist x < 20
;---------------------------------------------------------------------------
;近距離立ち強パンチ
[State -1]
type = ChangeState
value = 250
trigger1 = command = "z"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist x < 20
;---------------------------------------------------------------------------
;近距離立ち弱キック
[State -1]
type = ChangeState
value = 290
trigger1 = command = "a"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist x < 20
;---------------------------------------------------------------------------
;近距離立ち中キック
[State -1]
type = ChangeState
value = 300
trigger1 = command = "b"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist x < 20
;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1]
type = ChangeState
value = 200
trigger1 = command = "x"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;立ち中パンチ
[State -1]
type = ChangeState
value = 210
trigger1 = command = "y"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;立ち強パンチ
[State -1]
type = ChangeState
value = 220
trigger1 = command = "z"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;立ち弱キック
[State -1]
type = ChangeState
value = 260
trigger1 = command = "a"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;立ち中キック
[State -1]
type = ChangeState
value = 270
trigger1 = command = "b"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;立ち強キック
[State -1]
type = ChangeState
value = 280
trigger1 = command = "c"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
trigger1 = command = "x"
trigger1 = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ中パンチ
[State -1]
type = ChangeState
value = 410
trigger1 = command = "y"
trigger1 = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1]
type = ChangeState
value = 420
trigger1 = command = "z"
trigger1 = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1]
type = ChangeState
value = 430
trigger1 = command = "a"
trigger1 = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ中キック
[State -1]
type = ChangeState
value = 440
trigger1 = command = "b"
trigger1 = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1]
type = ChangeState
value = 450
trigger1 = command = "c"
trigger1 = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;垂直ジャンプ弱キック
[State -1]
type = ChangeState
value = 660
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X = 0
;---------------------------------------------------------------------------
;垂直ジャンプ中キック
[State -1]
type = ChangeState
value = 670
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X = 0
;---------------------------------------------------------------------------
;垂直ジャンプ強キック
[State -1]
type = ChangeState
value = 680
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X = 0
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
;ジャンプ強キック
[State -1]
type = ChangeState
value = 650
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ダッシュ
[State -1]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = stateno != 101
trigger1 = ctrl
;---------------------------------------------------------------------------
;バックダッシュ
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = stateno != 106
trigger1 = ctrl
;---------------------------------------------------------------------------
;三角飛び
[State -1]
type = ChangeState
value = 6000
triggerall = command = "upfwd"
triggerall = statetype = A
triggerall = BackEdgeDist < 10
triggerall = Vel X <= 0
trigger1 = stateno != 6005
trigger1 = ctrl
trigger2 = stateno = 600
trigger3 = stateno = 610
trigger4 = stateno = 620
trigger5 = stateno = 630
trigger6 = stateno = 640
trigger7 = stateno = 650
trigger8 = stateno = 660
trigger9 = stateno = 670
trigger10 = stateno = 680
;---------------------------------------------------------------------------
;三角飛び（前方）
[State -1]
type = ChangeState
value = 6010
triggerall = command = "upback"
triggerall = statetype = A
triggerall = FrontEdgeDist < 10
trigger1 = stateno != 6005
trigger1 = ctrl
trigger2 = stateno = 600
trigger3 = stateno = 610
trigger4 = stateno = 620
trigger5 = stateno = 630
trigger6 = stateno = 640
trigger7 = stateno = 650
trigger8 = stateno = 660
trigger9 = stateno = 670
trigger10 = stateno = 680
trigger11 = time > 15 && stateno = 1095
trigger12 = time > 15 && stateno = 1115
trigger13 = time > 15 && stateno = 1135
;---------------------------------------------------------------------------
;騙し気絶
[State -1]
type = ChangeState
value = 6030
trigger1 = command = "down_s"
trigger1 = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;挑発
[State -1]
type = ChangeState
value = 6020
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = ctrl

