;---------------------------------------------------------------------------
;超必殺技
;========================================================
;真空波動拳
[Command]
name = "HY1_w"
command = ~D ,DF ,F, D, DF, F, x
time = 25

[Command]
name = "HY1_m"
command = ~D ,DF ,F, D, DF, F, y
time = 25

[Command]
name = "HY1_s"
command = ~D ,DF ,F, D, DF, F, z
time = 25

;滅昇竜拳
[Command]
name = "HY2"
command = ~D ,DF ,F, D, DF, a
time = 25

[Command]
name = "HY2"
command = ~D ,DF ,F, D, DF, b
time = 25

[Command]
name = "HY2"
command = ~D ,DF ,F, D, DF, c
time = 25

;真空竜巻旋風脚
[Command]
name = "HY3_w"
command = ~D ,DB ,B, D, DB, B, a
time = 25

[Command]
name = "HY3_m"
command = ~D ,DB ,B, D, DB, B, b
time = 25

[Command]
name = "HY3_s"
command = ~D ,DB ,B, D, DB, B, c
time = 25

;--------------------------------------------------------
;必殺技
;========================================================
;昇竜拳
[Command]
name = "SP1_w"
command = ~F ,D ,DF , x
time = 15

[Command]
name = "SP1_m"
command = ~F ,D ,DF , y
time = 15

[Command]
name = "SP1_s"
command = ~F ,D ,DF , z
time = 15

;波動拳
[Command]
name = "SP2_w"
command = ~D ,DF ,F, x
time = 15

[Command]
name = "SP2_m"
command = ~D ,DF ,F, y
time = 15

[Command]
name = "SP2_s"
command = ~D ,DF ,F, z
time = 15

;竜巻旋風脚
[Command]
name = "SP3_w"
command = ~D ,DB ,B, a
time = 15

[Command]
name = "SP3_m"
command = ~D ,DB ,B, b
time = 15

[Command]
name = "SP3_s"
command = ~D ,DB ,B, c
time = 15

;波動の構え
[Command]
name = "SP4"
command = ~D ,DF ,F, s
time = 15

;灼熱波動拳
[Command]
name = "SP5_w"
command = ~B,DB,D ,DF ,F, x
time = 20

[Command]
name = "SP5_m"
command = ~B,DB,D ,DF ,F, y
time = 20

[Command]
name = "SP5_s"
command = ~B,DB,D ,DF ,F, z
time = 20

;==================================================
;投げ
;背負い投げ
[Command]
name = "PT"
command = /F, x+y
time = 3

[Command]
name = "PT"
command = /F, z+y
time = 3

[Command]
name = "PT"
command = /F, x+z
time = 3

[Command]
name = "PT2"
command = /B, x+y
time = 3

[Command]
name = "PT2"
command = /B, z+y
time = 3

[Command]
name = "PT2"
command = /B, x+z
time = 3

;巴投げ
[Command]
name = "KT"
command = /F, a+b
time = 3

[Command]
name = "KT"
command = /F, b+c
time = 3

[Command]
name = "KT"
command = /F, a+c
time = 3

[Command]
name = "KT2"
command = /B, a+b
time = 3

[Command]
name = "KT2"
command = /B, b+c
time = 3

[Command]
name = "KT2"
command = /B, a+c
time = 3

;ゼロカウンター
[Command]
name = "ZC"
command = /$F, x+a
time = 3

[Command]
name = "ZC"
command = /$F, y+b
time = 3

[Command]
name = "ZC"
command = /$F, z+c
time = 3

;----------------------------------------------------------------------
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
command = x+z
time = 1

[Command]
name = "recovery"
command = z+y
time = 1

[Command]
name = "rolling"
command = a+b
time = 1

[Command]
name = "rolling"
command = a+c
time = 1

[Command]
name = "rolling"
command = c+b
time = 1

;-------------------------------------
[command]
name = "fwd_y"
command = /F, y
time = 1

[command]
name = "fwd_b"
command = /F, b
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

;===========================================
;スーパーコンボ
;-------------------------------------------
;真空竜巻旋風脚
;Lv1
[State -1]
type = ChangeState
value = 3100
triggerall = Power >= 1000
triggerall = command = "HY3_w"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && Time < 10
trigger3 = StateNo = 210 && Time < 10
trigger4 = StateNo = 230 && Time < 14
trigger5 = StateNo = 250 && Time < 9
trigger6 = StateNo = 400 && Time < 10
trigger7 = StateNo = 410 && Time < 11
trigger8 = StateNo = 420 && Time < 11
trigger9 = StateNo = 430 && Time < 10
trigger10 = StateNo = 440 && Time < 10

;Lv2
[State -1]
type = ChangeState
value = 3110
triggerall = Power >= 2000
triggerall = command = "HY3_m"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && Time < 10
trigger3 = StateNo = 210 && Time < 10
trigger4 = StateNo = 230 && Time < 14
trigger5 = StateNo = 250 && Time < 9
trigger6 = StateNo = 400 && Time < 10
trigger7 = StateNo = 410 && Time < 11
trigger8 = StateNo = 420 && Time < 11
trigger9 = StateNo = 430 && Time < 10
trigger10 = StateNo = 440 && Time < 10

;Lv3
[State -1]
type = ChangeState
value = 3120
triggerall = Power >= 3000
triggerall = command = "HY3_s"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && Time < 10
trigger3 = StateNo = 210 && Time < 10
trigger4 = StateNo = 230 && Time < 14
trigger5 = StateNo = 250 && Time < 9
trigger6 = StateNo = 400 && Time < 10
trigger7 = StateNo = 410 && Time < 11
trigger8 = StateNo = 420 && Time < 11
trigger9 = StateNo = 430 && Time < 10
trigger10 = StateNo = 440 && Time < 10

;真空波動拳
;Lv1
[State -1]
type = ChangeState
value = 3000
triggerall = Power >= 1000
triggerall = command = "HY1_w"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && Time < 10
trigger3 = StateNo = 210 && Time < 10
trigger4 = StateNo = 230 && Time < 14
trigger5 = StateNo = 250 && Time < 9
trigger6 = StateNo = 400 && Time < 10
trigger7 = StateNo = 410 && Time < 11
trigger8 = StateNo = 420 && Time < 11
trigger9 = StateNo = 430 && Time < 10
trigger10 = StateNo = 440 && Time < 10

;Lv1
[State -1]
type = ChangeState
value = 3010
triggerall = Power >= 2000
triggerall = command = "HY1_m"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && Time < 10
trigger3 = StateNo = 210 && Time < 10
trigger4 = StateNo = 230 && Time < 14
trigger5 = StateNo = 250 && Time < 9
trigger6 = StateNo = 400 && Time < 10
trigger7 = StateNo = 410 && Time < 11
trigger8 = StateNo = 420 && Time < 11
trigger9 = StateNo = 430 && Time < 10
trigger10 = StateNo = 440 && Time < 10

;Lv3
[State -1]
type = ChangeState
value = 3020
triggerall = Power >= 3000
triggerall = command = "HY1_s"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && Time < 10
trigger3 = StateNo = 210 && Time < 10
trigger4 = StateNo = 230 && Time < 14
trigger5 = StateNo = 250 && Time < 9
trigger6 = StateNo = 400 && Time < 10
trigger7 = StateNo = 410 && Time < 11
trigger8 = StateNo = 420 && Time < 11
trigger9 = StateNo = 430 && Time < 10
trigger10 = StateNo = 440 && Time < 10

;滅昇竜拳
[State -1]
type = ChangeState
value = 3200
triggerall = Power >= 3000
triggerall = command = "HY2"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && Time < 10
trigger3 = StateNo = 210 && Time < 10
trigger4 = StateNo = 230 && Time < 14
trigger5 = StateNo = 250 && Time < 9
trigger6 = StateNo = 400 && Time < 10
trigger7 = StateNo = 410 && Time < 11
trigger8 = StateNo = 420 && Time < 11
trigger9 = StateNo = 430 && Time < 10
trigger10 = StateNo = 440 && Time < 10

;===========================================
;必殺技
;-------------------------------------------
;昇竜拳
[State -1]
type = ChangeState
value = 1000
triggerall = command = "SP1_w"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && Time < 8
trigger3 = StateNo = 210 && Time < 8
trigger4 = StateNo = 230 && Time < 12
trigger5 = StateNo = 250 && Time < 7
trigger6 = StateNo = 400 && Time < 8
trigger7 = StateNo = 410 && Time < 9
trigger8 = StateNo = 420 && Time < 9
trigger9 = StateNo = 430 && Time < 8
trigger10 = StateNo = 440 && Time < 8

[State -1]
type = ChangeState
value = 1010
triggerall = command = "SP1_m"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && Time < 8
trigger3 = StateNo = 210 && Time < 8
trigger4 = StateNo = 230 && Time < 12
trigger5 = StateNo = 250 && Time < 7
trigger6 = StateNo = 400 && Time < 8
trigger7 = StateNo = 410 && Time < 9
trigger8 = StateNo = 420 && Time < 9
trigger9 = StateNo = 430 && Time < 8
trigger10 = StateNo = 440 && Time < 8

[State -1]
type = ChangeState
value = 1020
triggerall = command = "SP1_s"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && Time < 8
trigger3 = StateNo = 210 && Time < 8
trigger4 = StateNo = 230 && Time < 12
trigger5 = StateNo = 250 && Time < 7
trigger6 = StateNo = 400 && Time < 8
trigger7 = StateNo = 410 && Time < 9
trigger8 = StateNo = 420 && Time < 9
trigger9 = StateNo = 430 && Time < 8
trigger10 = StateNo = 440 && Time < 8

;灼熱波動拳
[State -1]
type = ChangeState
value = 1200
triggerall = command = "SP5_w"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && Time < 8
trigger3 = StateNo = 210 && Time < 8
trigger4 = StateNo = 230 && Time < 12
trigger5 = StateNo = 250 && Time < 7
trigger6 = StateNo = 400 && Time < 8
trigger7 = StateNo = 410 && Time < 9
trigger8 = StateNo = 420 && Time < 9
trigger9 = StateNo = 430 && Time < 8
trigger10 = StateNo = 440 && Time < 8

[State -1]
type = ChangeState
value = 1210
triggerall = command = "SP5_m"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && Time < 8
trigger3 = StateNo = 210 && Time < 8
trigger4 = StateNo = 230 && Time < 12
trigger5 = StateNo = 250 && Time < 7
trigger6 = StateNo = 400 && Time < 8
trigger7 = StateNo = 410 && Time < 9
trigger8 = StateNo = 420 && Time < 9
trigger9 = StateNo = 430 && Time < 8
trigger10 = StateNo = 440 && Time < 8

[State -1]
type = ChangeState
value = 1220
triggerall = command = "SP5_s"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && Time < 8
trigger3 = StateNo = 210 && Time < 8
trigger4 = StateNo = 230 && Time < 12
trigger5 = StateNo = 250 && Time < 7
trigger6 = StateNo = 400 && Time < 8
trigger7 = StateNo = 410 && Time < 9
trigger8 = StateNo = 420 && Time < 9
trigger9 = StateNo = 430 && Time < 8
trigger10 = StateNo = 440 && Time < 8

;波動拳
[State -1]
type = ChangeState
value = 1100
triggerall = command = "SP2_w"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && Time < 8
trigger3 = StateNo = 210 && Time < 8
trigger4 = StateNo = 230 && Time < 12
trigger5 = StateNo = 250 && Time < 7
trigger6 = StateNo = 400 && Time < 8
trigger7 = StateNo = 410 && Time < 9
trigger8 = StateNo = 420 && Time < 9
trigger9 = StateNo = 430 && Time < 8
trigger10 = StateNo = 440 && Time < 8

[State -1]
type = ChangeState
value = 1110
triggerall = command = "SP2_m"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && Time < 8
trigger3 = StateNo = 210 && Time < 8
trigger4 = StateNo = 230 && Time < 12
trigger5 = StateNo = 250 && Time < 7
trigger6 = StateNo = 400 && Time < 8
trigger7 = StateNo = 410 && Time < 9
trigger8 = StateNo = 420 && Time < 9
trigger9 = StateNo = 430 && Time < 8
trigger10 = StateNo = 440 && Time < 8

[State -1]
type = ChangeState
value = 1120
triggerall = command = "SP2_s"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && Time < 8
trigger3 = StateNo = 210 && Time < 8
trigger4 = StateNo = 230 && Time < 12
trigger5 = StateNo = 250 && Time < 7
trigger6 = StateNo = 400 && Time < 8
trigger7 = StateNo = 410 && Time < 9
trigger8 = StateNo = 420 && Time < 9
trigger9 = StateNo = 430 && Time < 8
trigger10 = StateNo = 440 && Time < 8

;竜巻旋風脚
[State -1]
type = ChangeState
value = 1300
triggerall = command = "SP3_w"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && Time < 8
trigger3 = StateNo = 210 && Time < 8
trigger4 = StateNo = 230 && Time < 12
trigger5 = StateNo = 250 && Time < 7
trigger6 = StateNo = 400 && Time < 8
trigger7 = StateNo = 410 && Time < 9
trigger8 = StateNo = 420 && Time < 9
trigger9 = StateNo = 430 && Time < 8
trigger10 = StateNo = 440 && Time < 8

[State -1]
type = ChangeState
value = 1310
triggerall = command = "SP3_m"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && Time < 8
trigger3 = StateNo = 210 && Time < 8
trigger4 = StateNo = 230 && Time < 12
trigger5 = StateNo = 250 && Time < 7
trigger6 = StateNo = 400 && Time < 8
trigger7 = StateNo = 410 && Time < 9
trigger8 = StateNo = 420 && Time < 9
trigger9 = StateNo = 430 && Time < 8
trigger10 = StateNo = 440 && Time < 8

[State -1]
type = ChangeState
value = 1320
triggerall = command = "SP3_s"
triggerall = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && Time < 8
trigger3 = StateNo = 210 && Time < 8
trigger4 = StateNo = 230 && Time < 12
trigger5 = StateNo = 250 && Time < 7
trigger6 = StateNo = 400 && Time < 8
trigger7 = StateNo = 410 && Time < 9
trigger8 = StateNo = 420 && Time < 9
trigger9 = StateNo = 430 && Time < 8
trigger10 = StateNo = 440 && Time < 8

[State -1]
type = ChangeState
value = 1400
triggerall = command = "SP3_w"
triggerall = statetype = A
trigger1 = ctrl

[State -1]
type = ChangeState
value = 1410
triggerall = command = "SP3_m"
triggerall = statetype = A
trigger1 = ctrl

[State -1]
type = ChangeState
value = 1420
triggerall = command = "SP3_s"
triggerall = statetype = A
trigger1 = ctrl

;------------------------------
;ゼロカウンター
[State -1]
type = ChangeState
value = 2600
triggerall = Power >= 500
triggerall = Command = "ZC"
trigger1 = StateNo = 150
trigger2 = StateNo = 152

;---------------------------------------------------------------------------
;波動の構え
[State -1]
type = ChangeState
value = 196
triggerall = command = "SP4"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = StateNo = 200 && Time < 8
trigger3 = StateNo = 210 && Time < 8
trigger4 = StateNo = 230 && Time < 12
trigger5 = StateNo = 250 && Time < 7
trigger6 = StateNo = 400 && Time < 8
trigger7 = StateNo = 410 && Time < 9
trigger8 = StateNo = 420 && Time < 9
trigger9 = StateNo = 430 && Time < 8
trigger10 = StateNo = 440 && Time < 8

;挑発
[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
triggerall = statetype = S
trigger1 = ctrl

;------------------------------------------
;投げ
;背負い投げ
[State -1]
type = ChangeState
value = 800
triggerall = command = "PT"
triggerall = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 805
triggerall = command = "PT2"
triggerall = statetype = S
trigger1 = ctrl

;巴投げ
[State -1]
type = ChangeState
value = 850
triggerall = command = "KT"
triggerall = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 855
triggerall = command = "KT2"
triggerall = statetype = S
trigger1 = ctrl

;-------------------------------------------
;特殊技
;鎖骨割り
[State -1]
type = ChangeState
value = 300
triggerall = command = "fwd_y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl 

;旋風脚
[State -1]
type = ChangeState
value = 310
triggerall = command = "fwd_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl 

--------------------------------------------------------------------------
;立ち弱パンチ
[State -1]
type = ChangeState
value = 210
triggerall = P2BodyDist X <= 25
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = StateNo = 200 && Time > 7
trigger3 = StateNo = 210 && Time > 7
trigger4 = StateNo = 400 && Time > 7
trigger5 = StateNo = 430 && Time > 7

[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl 
trigger2 = StateNo = 200 && Time > 7
trigger3 = StateNo = 210 && Time > 7
trigger4 = StateNo = 400 && Time > 7
trigger5 = StateNo = 430 && Time > 7

;---------------------------------------------------------------------------
;立ち中パンチ
[State -1]
type = ChangeState
value = 230
triggerall = P2BodyDist X <= 25
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
 
;---------------------------------------------------------------------------
;立ち強パンチ
[State -1]
type = ChangeState
value = 250
triggerall = P2BodyDist X <= 25
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
 
[State -1]
type = ChangeState
value = 240
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち弱キック
[State -1]
type = ChangeState
value = 260
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
 
;--------------------------------------------------------------------------
;立ち中キック
[State -1]
type = ChangeState
value = 270
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち強キック
[State -1]
type = ChangeState
value = 290
triggerall = P2BodyDist X <= 25
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 280
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl 
trigger2 = StateNo = 200 && Time > 7
trigger3 = StateNo = 210 && Time > 7
trigger4 = StateNo = 400 && Time > 7
trigger5 = StateNo = 430 && Time > 7

;---------------------------------------------------------------------------
;しゃがみ中パンチ
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl 

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = StateNo = 200 && Time > 7
trigger3 = StateNo = 210 && Time > 7
trigger4 = StateNo = 400 && Time > 7
trigger5 = StateNo = 430 && Time > 7

;---------------------------------------------------------------------------
;しゃがみ中キック
[State -1]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl 

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl 

;---------------------------------------------------------------------------
;ジャンプ弱パンチ
[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl 

;---------------------------------------------------------------------------
;ジャンプ中パンチ
[State -1]
type = ChangeState
value = 620
triggerall = Vel X = 0
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl

[State -1]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
 
;---------------------------------------------------------------------------
;ジャンプ強パンチ
[State -1]
type = ChangeState
value = 630
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
 
;---------------------------------------------------------------------------
;ジャンプ弱キック
[State -1]
type = ChangeState
value = 650
triggerall = Vel X = 0
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl 

[State -1]
type = ChangeState
value = 640
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl 

;---------------------------------------------------------------------------
;ジャンプ中キック
[State -1]
type = ChangeState
value = 670
triggerall = Vel X = 0
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl

[State -1]
type = ChangeState
value = 660
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
 
;---------------------------------------------------------------------------
;ジャンプ強キック
[State -1]
type = ChangeState
value = 690
triggerall = Vel X = 0
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl 

[State -1]
type = ChangeState
value = 680
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl 

;---------------------------------------------------------------------------


