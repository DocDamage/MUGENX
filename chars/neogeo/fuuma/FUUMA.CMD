[Command]
name = "hyper1"
command = ~D, DB, B, D, DB, B, x
Time = 25

[Command]
name = "hyper1"
command = ~D, DB, B, D, DB, B, y
Time = 25

[Command]
name = "hyper1"
command = ~D, DB, B, D, DB, B, z
Time = 25

[Command]
name = "hyper2"
command = ~D, DF, F, D, DF, F, a
Time = 25

[Command]
name = "hyper2"
command = ~D, DF, F, D, DF, F, b
Time = 25

[Command]
name = "hyper2"
command = ~D, DF, F, D, DF, F, c
Time = 25

[Command]
name = "qcf_x"
command = ~D, DF, F, x

[Command]
name = "qcf_y"
command = ~D, DF, F, y

[Command]
name = "qcf_z"
command = ~D, DF, F, z

[Command]
name = "qcf2_x"
command = ~D, DF, F, D, DF, F, x
Time = 25

[Command]
name = "qcf2_y"
command = ~D, DF, F, D, DF, F, y
Time = 25

[Command]
name = "qcf2_z"
command = ~D, DF, F, D, DF, F, z
Time = 25

[Command]
name = "qcf_ex"
command = ~D, DF, F, x+y

[Command]
name = "qcf_ex"
command = ~D, DF, F, x+z

[Command]
name = "qcf_ex"
command = ~D, DF, F, y+z

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_z"
command = ~F, D, DF, z

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
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "upfwd"
command = UF
time = 1

[Command]
name = "upback"
command = UB
time = 1

[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "fwd_c"
command = /F, c
time = 1

[Command]
name = "fwd_z"
command = /F, z
time = 1

[Command]
name = "back_z"
command = /B, z
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

;---------------------------------------------------------------------------
;獅子咆哮弾
[State -1]
type = ChangeState
value = 3000
triggerall = command = "hyper1"
triggerall = power >= 1000
trigger1 = ctrl && statetype != A
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 290
trigger7 = movecontact && stateno = 300
trigger8 = movecontact && stateno = 310
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 420
trigger12 = movecontact && stateno = 430
trigger13 = movecontact && stateno = 440
;---------------------------------------------------------------------------
;爆裂究極拳
[State -1]
type = ChangeState
value = 3020
triggerall = command = "hyper2"
triggerall = power >= 1000
trigger1 = ctrl && statetype != A
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 290
trigger7 = movecontact && stateno = 300
trigger8 = movecontact && stateno = 310
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 420
trigger12 = movecontact && stateno = 430
trigger13 = movecontact && stateno = 440
;---------------------------------------------------------------------------
;ダブル烈風斬・弱
[State -1]
type = ChangeState
value = 1030
triggerall = command = "qcf2_x"
triggerall = NumProj = 0
trigger1 = ctrl && statetype != A
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 290
trigger7 = movecontact && stateno = 300
trigger8 = movecontact && stateno = 310
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 420
trigger12 = movecontact && stateno = 430
trigger13 = movecontact && stateno = 440
;---------------------------------------------------------------------------
;ダブル烈風斬・中
[State -1]
type = ChangeState
value = 1040
triggerall = command = "qcf2_y"
triggerall = NumProj = 0
trigger1 = ctrl && statetype != A
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 290
trigger7 = movecontact && stateno = 300
trigger8 = movecontact && stateno = 310
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 420
trigger12 = movecontact && stateno = 430
trigger13 = movecontact && stateno = 440
;---------------------------------------------------------------------------
;ダブル烈風斬・強
[State -1]
type = ChangeState
value = 1050
triggerall = command = "qcf2_z"
triggerall = NumProj = 0
trigger1 = ctrl && statetype != A
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 290
trigger7 = movecontact && stateno = 300
trigger8 = movecontact && stateno = 310
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 420
trigger12 = movecontact && stateno = 430
trigger13 = movecontact && stateno = 440
;---------------------------------------------------------------------------
;炎龍波弱
[State -1]
type = ChangeState
value = 1060
triggerall = command = "upper_x"
trigger1 = ctrl && statetype != A
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 290
trigger7 = movecontact && stateno = 300
trigger8 = movecontact && stateno = 310
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 420
trigger12 = movecontact && stateno = 430
trigger13 = movecontact && stateno = 440
;--------------------------------------------------------------------------
;炎龍波弱
[State -1]
type = ChangeState
value = 1070
triggerall = command = "upper_y"
trigger1 = ctrl && statetype != A
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 290
trigger7 = movecontact && stateno = 300
trigger8 = movecontact && stateno = 310
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 420
trigger12 = movecontact && stateno = 430
trigger13 = movecontact && stateno = 440
;---------------------------------------------------------------------------
;炎龍波強
[State -1]
type = ChangeState
value = 1080
triggerall = command = "upper_z"
trigger1 = ctrl && statetype != A
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 290
trigger7 = movecontact && stateno = 300
trigger8 = movecontact && stateno = 310
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 420
trigger12 = movecontact && stateno = 430
trigger13 = movecontact && stateno = 440
;---------------------------------------------------------------------------
;空中炎龍波弱
[State -1]
type = ChangeState
value = 1120
triggerall = command = "upper_x"
trigger1 = ctrl && statetype = A
trigger2 = stateno = 600
trigger3 = stateno = 610
trigger4 = stateno = 620
trigger5 = stateno = 630
trigger6 = stateno = 640
trigger7 = stateno = 650
trigger8 = stateno = 660
trigger9 = stateno = 670
trigger10 = stateno = 680
trigger11 = stateno = 690
trigger12 = stateno = 700
trigger13 = stateno = 1063 && Vel Y > -.5
trigger14 = stateno = 1073 && Vel Y > -.5
trigger15 = stateno = 1083 && Vel Y > -.5
trigger16 = stateno = 1098 && AnimElem = 2,> 0
;---------------------------------------------------------------------------
;空中炎龍波中
[State -1]
type = ChangeState
value = 1130
triggerall = command = "upper_y"
trigger1 = ctrl && statetype = A
trigger2 = stateno = 600
trigger3 = stateno = 610
trigger4 = stateno = 620
trigger5 = stateno = 630
trigger6 = stateno = 640
trigger7 = stateno = 650
trigger8 = stateno = 660
trigger9 = stateno = 670
trigger10 = stateno = 680
trigger11 = stateno = 690
trigger12 = stateno = 700
trigger13 = stateno = 1063 && Vel Y > -.5
trigger14 = stateno = 1073 && Vel Y > -.5
trigger15 = stateno = 1083 && Vel Y > -.5
trigger16 = stateno = 1098 && AnimElem = 2,> 0
;---------------------------------------------------------------------------
;空中炎龍波強
[State -1]
type = ChangeState
value = 1140
triggerall = command = "upper_z"
trigger1 = ctrl && statetype = A
trigger2 = stateno = 600
trigger3 = stateno = 610
trigger4 = stateno = 620
trigger5 = stateno = 630
trigger6 = stateno = 640
trigger7 = stateno = 650
trigger8 = stateno = 660
trigger9 = stateno = 670
trigger10 = stateno = 680
trigger11 = stateno = 690
trigger12 = stateno = 700
trigger13 = stateno = 1063 && Vel Y > -.5
trigger14 = stateno = 1073 && Vel Y > -.5
trigger15 = stateno = 1083 && Vel Y > -.5
trigger16 = stateno = 1098 && AnimElem = 2,> 0
;---------------------------------------------------------------------------
;烈風斬
[State -1]
type = ChangeState
value = 1150
triggerall = command = "qcf_ex"
triggerall = NumProj = 0
trigger1 = ctrl && statetype != A
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 290
trigger7 = movecontact && stateno = 300
trigger8 = movecontact && stateno = 310
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 420
trigger12 = movecontact && stateno = 430
trigger13 = movecontact && stateno = 440
trigger14 = movecontact && stateno = 450
;---------------------------------------------------------------------------
;烈風斬・弱
[State -1]
type = ChangeState
value = 1000
triggerall = command = "qcf_x"
triggerall = NumProj = 0
trigger1 = ctrl && statetype != A
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 290
trigger7 = movecontact && stateno = 300
trigger8 = movecontact && stateno = 310
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 420
trigger12 = movecontact && stateno = 430
trigger13 = movecontact && stateno = 440
trigger14 = movecontact && stateno = 450
;---------------------------------------------------------------------------
;烈風斬・中
[State -1]
type = ChangeState
value = 1010
triggerall = command = "qcf_y"
triggerall = NumProj = 0
trigger1 = ctrl && statetype != A
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 290
trigger7 = movecontact && stateno = 300
trigger8 = movecontact && stateno = 310
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 420
trigger12 = movecontact && stateno = 430
trigger13 = movecontact && stateno = 440
trigger14 = movecontact && stateno = 450
;---------------------------------------------------------------------------
;烈風斬・強
[State -1]
type = ChangeState
value = 1020
triggerall = command = "qcf_z"
triggerall = NumProj = 0
trigger1 = ctrl && statetype != A
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 290
trigger7 = movecontact && stateno = 300
trigger8 = movecontact && stateno = 310
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 420
trigger12 = movecontact && stateno = 430
trigger13 = movecontact && stateno = 440
trigger14 = movecontact && stateno = 450
;---------------------------------------------------------------------------
;風輪火斬・弱
[State -1]
type = ChangeState
value = 1090
triggerall = command = "qcb_a"
trigger1 = ctrl && statetype != A
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 290
trigger7 = movecontact && stateno = 300
trigger8 = movecontact && stateno = 310
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 420
trigger12 = movecontact && stateno = 430
trigger13 = movecontact && stateno = 440
trigger14 = movecontact && stateno = 450
;---------------------------------------------------------------------------
;風輪火斬・中
[State -1]
type = ChangeState
value = 1100
triggerall = command = "qcb_b"
trigger1 = ctrl && statetype != A
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 290
trigger7 = movecontact && stateno = 300
trigger8 = movecontact && stateno = 310
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 420
trigger12 = movecontact && stateno = 430
trigger13 = movecontact && stateno = 440
trigger14 = movecontact && stateno = 450
;---------------------------------------------------------------------------
;風輪火斬・強
[State -1]
type = ChangeState
value = 1110
triggerall = command = "qcb_c"
trigger1 = ctrl && statetype != A
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 230
trigger4 = movecontact && stateno = 250
trigger5 = movecontact && stateno = 260
trigger6 = movecontact && stateno = 290
trigger7 = movecontact && stateno = 300
trigger8 = movecontact && stateno = 310
trigger9 = movecontact && stateno = 400
trigger10 = movecontact && stateno = 410
trigger11 = movecontact && stateno = 420
trigger12 = movecontact && stateno = 430
trigger13 = movecontact && stateno = 440
trigger14 = movecontact && stateno = 450
;---------------------------------------------------------------------------
;飯綱落とし
[State -1]
type = ChangeState
value = 800
trigger1 = command = "fwd_z"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != 101
trigger1 = p2bodydist x < 20
;---------------------------------------------------------------------------
;忍者式裏投げ
[State -1]
type = ChangeState
value = 810
trigger1 = command = "back_z"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = p2bodydist x < 20
;---------------------------------------------------------------------------
;猿投げ
[State -1]
type = ChangeState
value = 820
triggerall = statetype = A
triggerall = ctrl
triggerall = p2statetype = A
triggerall = p2bodydist x < 15
triggerall = p2bodydist y > -65
triggerall = p2bodydist y < 65
trigger1 = command = "fwd_z"
trigger2 = command = "back_z"
;---------------------------------------------------------------------------
;疾風の術（立ち）
[State -1]
type = ChangeState
value = 840
triggerall = command = "ab"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 210
trigger4 = movecontact && stateno = 220
trigger5 = movecontact && stateno = 230
trigger6 = movecontact && stateno = 240
trigger7 = movecontact && stateno = 250
trigger8 = movecontact && stateno = 260
trigger9 = movecontact && stateno = 270
trigger10 = movecontact && stateno = 280
trigger11 = movecontact && stateno = 290
trigger12 = movecontact && stateno = 300
trigger13 = movecontact && stateno = 310
;---------------------------------------------------------------------------
;疾風の術（立ち）
[State -1]
type = ChangeState
value = 845
triggerall = command = "ab"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
trigger2 = movecontact && stateno = 400
trigger3 = movecontact && stateno = 410
trigger4 = movecontact && stateno = 420
trigger5 = movecontact && stateno = 430
trigger6 = movecontact && stateno = 440
trigger7 = movecontact && stateno = 450
;---------------------------------------------------------------------------
;ダッシュ
[State -1]
type = ChangeState
value = 100
triggerall = command = "FF"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 840
trigger3 = stateno = 845
;---------------------------------------------------------------------------
;バックダッシュ
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger1 = stateno != 105 && stateno != 106
;---------------------------------------------------------------------------
;近距離弱パンチ
[State -1]
type = ChangeState
value = 230
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist x < 20
triggerall = stateno != 101
trigger1 = ctrl
;---------------------------------------------------------------------------
;近距離中パンチ
[State -1]
type = ChangeState
value = 240
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist x < 20
triggerall = stateno != 101
trigger1 = ctrl
;---------------------------------------------------------------------------
;近距離強パンチ
[State -1]
type = ChangeState
value = 250
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist x < 20
triggerall = stateno != 101
trigger1 = ctrl
;---------------------------------------------------------------------------
;弱パンチ
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;中パンチ
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;強パンチ
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;近距離中キック
[State -1]
type = ChangeState
value = 290
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist x < 20
triggerall = stateno != 101
trigger1 = ctrl
;---------------------------------------------------------------------------
;近距離レバー入れ強キック
[State -1]
type = ChangeState
value = 310
triggerall = command = "fwd_c"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = p2bodydist x < 20
triggerall = stateno != 101
trigger1 = ctrl
;---------------------------------------------------------------------------
;近距離強キック
[State -1]
type = ChangeState
value = 300
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = p2bodydist x < 20 && ctrl
trigger2 = stateno = 101
;---------------------------------------------------------------------------
;弱キック
[State -1]
type = ChangeState
value = 260
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;中キック
[State -1]
type = ChangeState
value = 270
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;強キック
[State -1]
type = ChangeState
value = 280
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ中パンチ
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ中キック
[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
;垂直ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 630
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X = 0
;---------------------------------------------------------------------------
;垂直ジャンプ中パンチ
[State -1]
type = ChangeState
value = 640
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X = 0
;---------------------------------------------------------------------------
;垂直ジャンプ強パンチ
[State -1]
type = ChangeState
value = 650
trigger1 = command = "z"
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
;垂直ジャンプ中キック
[State -1]
type = ChangeState
value = 690
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X = 0
;---------------------------------------------------------------------------
;垂直ジャンプ強キック
[State -1]
type = ChangeState
value = 700
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X = 0
;---------------------------------------------------------------------------
;ジャンプ弱キック
[State -1]
type = ChangeState
value = 660
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ジャンプ中キック
[State -1]
type = ChangeState
value = 670
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ジャンプ強キック
[State -1]
type = ChangeState
value = 680
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;三角飛び
[State -1]
type = null;ChangeState
value = 830
triggerall = command = "upfwd"
triggerall = statetype = A
triggerall = BackEdgeDist < 10
triggerall = Vel X <= 0
trigger1 = stateno != 835
trigger1 = ctrl
;---------------------------------------------------------------------------
;挑発
[State -1]
type = ChangeState
value = 195
trigger1 = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

