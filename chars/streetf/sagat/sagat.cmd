;---------------------------------------------------------------------------
;超必殺技
;========================================================
;タイガージェノサイド
[command]
name = "HY1_w"
command = ~D, DF, F, D, DF, a
time = 30

[command]
name = "HY1_m"
command = ~D, DF, F, D, DF, b
time = 30

[command]
name = "HY1_s"
command = ~D, DF, F, D, DF, c
time = 30

;タイガーキャノン
[command]
name = "HY2_w"
command = ~D, DF, F, D, DF, F, x
time = 30

[command]
name = "HY2_m"
command = ~D, DF, F, D, DF, F, y
time = 30

[command]
name = "HY2_s"
command = ~D, DF, F, D, DF, F, z 
time = 30

;タイガーレイド
[command]
name = "HY3_w"
command = ~D, DB, B, D, DB, B,  a
time = 30

[command]
name = "HY3_m"
command = ~D, DB, B, D, DB, B,  b
time = 30

[command]
name = "HY3_s"
command = ~D, DB, B, D, DB, B,  c
time = 30

;アングリーチャージ
[command]
name = "HY4"
command = ~D, DF, F, s
time = 20

;--------------------------------------------------------
;必殺技
;========================================================
;タイガーブロゥ
[command]
name = "SP1_w"
command = ~F, D, DF, x
time = 20

[command]
name = "SP1_m"
command = ~F, D, DF, y
time = 20

[command]
name = "SP1_s"
command = ~F, D, DF, z
time = 20

;タイガークラッシュ
[command]
name = "SP2_w"
command = ~F, D, DF, a
time = 20

[command]
name = "SP2_m"
command = ~F, D, DF, b
time = 20

[command]
name = "SP2_s"
command = ~F, D, DF, c
time = 20

;タイガーショット
[command]
name = "SP3_w"
command = ~D, DF, F, x
time = 20

[command]
name = "SP3_m"
command = ~D, DF, F, y
time = 20

[command]
name = "SP3_s"
command = ~D, DF, F, z
time = 20

;グラウンドタイガーショット
[command]
name = "SP4_w"
command = ~D, DF, F, a
time = 20

[command]
name = "SP4_m"
command = ~D, DF, F, b
time = 20

[command]
name = "SP4_s"
command = ~D, DF, F, c
time = 20

;==================================================
;投げ
;タイガーキャリー
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

;タイガーレイジ
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
name = "fwd_b"
command = /F, b
time = 1

[command]
name = "fwd_x"
command = /F, x
time = 1

[command]
name = "fwd_y"
command = /F, y
time = 1

[command]
name = "fwd_z"
command = /F, z
time = 1

[command]
name = "fwd_c"
command = /F, c
time = 1

[command]
name = "back_c"
command = /B, c

[command]
name = "back_x"
command = /B, x
time = 1

[command]
name = "back_y"
command = /B, y
time = 1

[command]
name = "back_z"
command = /B, z
time = 1

[command]
name = "back_a"
command = /B, a
time = 1

[command]
name = "back_b"
command = /B, b
time = 1

[command]
name = "back_c"
command = /B, c
time = 1

[command]
name = "down_a"
command = /D, a
time = 1

[command]
name = "down_b"
command = /D, b
time = 1

[command]
name = "down_c"
command = /D, c
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
;---------------------------------------------------------------------------
;☆超必殺技☆
;==========================================================
;タイガージェノサイド
[State -1]
type = ChangeState
value = 3000
triggerall = command = "HY1_w"
triggerall = command != "holddown"
triggerall = Power >= 1000
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 220
trigger4 = movecontact
trigger4 = StateNo = 240
trigger5 = movecontact
trigger5 = StateNo = 250
trigger6 = movecontact
trigger6 = StateNo = 270
trigger7 = movecontact
trigger7 = StateNo = 400
trigger8 = movecontact
trigger8 = StateNo = 410
trigger9 = movecontact
trigger9 = StateNo = 430

[State -1]
type = ChangeState
value = 3010
triggerall = command = "HY1_m"
triggerall = command != "holddown"
triggerall = Power >= 2000
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 220
trigger4 = movecontact
trigger4 = StateNo = 240
trigger5 = movecontact
trigger5 = StateNo = 250
trigger6 = movecontact
trigger6 = StateNo = 270
trigger7 = movecontact
trigger7 = StateNo = 400
trigger8 = movecontact
trigger8 = StateNo = 410
trigger9 = movecontact
trigger9 = StateNo = 430

[State -1]
type = ChangeState
value = 3020
triggerall = command = "HY1_s"
triggerall = command != "holddown"
triggerall = Power >= 3000
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 220
trigger4 = movecontact
trigger4 = StateNo = 240
trigger5 = movecontact
trigger5 = StateNo = 250
trigger6 = movecontact
trigger6 = StateNo = 270
trigger7 = movecontact
trigger7 = StateNo = 400
trigger8 = movecontact
trigger8 = StateNo = 410
trigger9 = movecontact
trigger9 = StateNo = 430

;タイガーキャノン
[State -1]
type = ChangeState
value = 3100
triggerall = NumProj = 0
triggerall = command = "HY2_w"
triggerall = command != "holddown"
triggerall = Power >= 1000
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 220
trigger4 = movecontact
trigger4 = StateNo = 240
trigger5 = movecontact
trigger5 = StateNo = 250
trigger6 = movecontact
trigger6 = StateNo = 270
trigger7 = movecontact
trigger7 = StateNo = 400
trigger8 = movecontact
trigger8 = StateNo = 410
trigger9 = movecontact
trigger9 = StateNo = 430

[State -1]
type = ChangeState
value = 3110
triggerall = NumProj = 0
triggerall = command = "HY2_m"
triggerall = command != "holddown"
triggerall = Power >= 2000
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 220
trigger4 = movecontact
trigger4 = StateNo = 240
trigger5 = movecontact
trigger5 = StateNo = 250
trigger6 = movecontact
trigger6 = StateNo = 270
trigger7 = movecontact
trigger7 = StateNo = 400
trigger8 = movecontact
trigger8 = StateNo = 410
trigger9 = movecontact
trigger9 = StateNo = 430

[State -1]
type = ChangeState
value = 3120
triggerall = NumProj = 0
triggerall = command = "HY2_s"
triggerall = command != "holddown"
triggerall = Power >= 3000
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 220
trigger4 = movecontact
trigger4 = StateNo = 240
trigger5 = movecontact
trigger5 = StateNo = 250
trigger6 = movecontact
trigger6 = StateNo = 270
trigger7 = movecontact
trigger7 = StateNo = 400
trigger8 = movecontact
trigger8 = StateNo = 410
trigger9 = movecontact
trigger9 = StateNo = 430

;タイガーレイド
[State -1]
type = ChangeState
value = 3200
triggerall = command = "HY3_w"
triggerall = command != "holddown"
triggerall = Power >= 1000
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 220
trigger4 = movecontact
trigger4 = StateNo = 240
trigger5 = movecontact
trigger5 = StateNo = 250
trigger6 = movecontact
trigger6 = StateNo = 270
trigger7 = movecontact
trigger7 = StateNo = 400
trigger8 = movecontact
trigger8 = StateNo = 410
trigger9 = movecontact
trigger9 = StateNo = 430

[State -1]
type = ChangeState
value = 3210
triggerall = command = "HY3_m"
triggerall = command != "holddown"
triggerall = Power >= 2000
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 220
trigger4 = movecontact
trigger4 = StateNo = 240
trigger5 = movecontact
trigger5 = StateNo = 250
trigger6 = movecontact
trigger6 = StateNo = 270
trigger7 = movecontact
trigger7 = StateNo = 400
trigger8 = movecontact
trigger8 = StateNo = 410
trigger9 = movecontact
trigger9 = StateNo = 430

[State -1]
type = ChangeState
value = 3220
triggerall = command = "HY3_s"
triggerall = command != "holddown"
triggerall = Power >= 3000
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 220
trigger4 = movecontact
trigger4 = StateNo = 240
trigger5 = movecontact
trigger5 = StateNo = 250
trigger6 = movecontact
trigger6 = StateNo = 270
trigger7 = movecontact
trigger7 = StateNo = 400
trigger8 = movecontact
trigger8 = StateNo = 410
trigger9 = movecontact
trigger9 = StateNo = 430

;---------------------------------------------------
;アングリーチャージ
[State -1]
type = ChangeState
value = 3300
triggerall = command = "HY4"
triggerall = command != "holddown"
triggerall = Power >= 1000
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 220
trigger4 = movecontact
trigger4 = StateNo = 240
trigger5 = movecontact
trigger5 = StateNo = 250
trigger6 = movecontact
trigger6 = StateNo = 270
trigger7 = movecontact
trigger7 = StateNo = 400
trigger8 = movecontact
trigger8 = StateNo = 410
trigger9 = movecontact
trigger9 = StateNo = 430

;----------------------------------------------------
;★必殺技★
;==========================================================================
;タイガーブロゥ
[State -1]
type = ChangeState
value = 1050
triggerall = Var(57) = 1
triggerall = command = "SP1_w"
triggerall = command != "holddown"
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 220
trigger4 = movecontact
trigger4 = StateNo = 240
trigger5 = movecontact
trigger5 = StateNo = 250
trigger6 = movecontact
trigger6 = StateNo = 270
trigger7 = movecontact
trigger7 = StateNo = 400
trigger8 = movecontact
trigger8 = StateNo = 410
trigger9 = movecontact
trigger9 = StateNo = 430

[State -1]
type = ChangeState
value = 1060
triggerall = Var(57) = 1
triggerall = command = "SP1_m"
triggerall = command != "holddown"
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 220
trigger4 = movecontact
trigger4 = StateNo = 240
trigger5 = movecontact
trigger5 = StateNo = 250
trigger6 = movecontact
trigger6 = StateNo = 270
trigger7 = movecontact
trigger7 = StateNo = 400
trigger8 = movecontact
trigger8 = StateNo = 410
trigger9 = movecontact
trigger9 = StateNo = 430

[State -1]
type = ChangeState
value = 1070
triggerall = Var(57) = 1
triggerall = command = "SP1_s"
triggerall = command != "holddown"
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 220
trigger4 = movecontact
trigger4 = StateNo = 240
trigger5 = movecontact
trigger5 = StateNo = 250
trigger6 = movecontact
trigger6 = StateNo = 270
trigger7 = movecontact
trigger7 = StateNo = 400
trigger8 = movecontact
trigger8 = StateNo = 410
trigger9 = movecontact
trigger9 = StateNo = 430

[State -1]
type = ChangeState
value = 1000
triggerall = Var(57) = 0
triggerall = command = "SP1_w"
triggerall = command != "holddown"
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 220
trigger4 = movecontact
trigger4 = StateNo = 240
trigger5 = movecontact
trigger5 = StateNo = 250
trigger6 = movecontact
trigger6 = StateNo = 270
trigger7 = movecontact
trigger7 = StateNo = 400
trigger8 = movecontact
trigger8 = StateNo = 410
trigger9 = movecontact
trigger9 = StateNo = 430

[State -1]
type = ChangeState
value = 1010
triggerall = Var(57) = 0
triggerall = command = "SP1_m"
triggerall = command != "holddown"
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 220
trigger4 = movecontact
trigger4 = StateNo = 240
trigger5 = movecontact
trigger5 = StateNo = 250
trigger6 = movecontact
trigger6 = StateNo = 270
trigger7 = movecontact
trigger7 = StateNo = 400
trigger8 = movecontact
trigger8 = StateNo = 410
trigger9 = movecontact
trigger9 = StateNo = 430

[State -1]
type = ChangeState
value = 1020
triggerall = Var(57) = 0
triggerall = command = "SP1_s"
triggerall = command != "holddown"
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 220
trigger4 = movecontact
trigger4 = StateNo = 240
trigger5 = movecontact
trigger5 = StateNo = 250
trigger6 = movecontact
trigger6 = StateNo = 270
trigger7 = movecontact
trigger7 = StateNo = 400
trigger8 = movecontact
trigger8 = StateNo = 410
trigger9 = movecontact
trigger9 = StateNo = 430

;---------------------------------------------------------
;タイガークラッシュ
[State -1]
type = ChangeState
value = 1100
triggerall = command = "SP2_w"
triggerall = command != "holddown"
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 220
trigger4 = movecontact
trigger4 = StateNo = 240
trigger5 = movecontact
trigger5 = StateNo = 250
trigger6 = movecontact
trigger6 = StateNo = 270
trigger7 = movecontact
trigger7 = StateNo = 400
trigger8 = movecontact
trigger8 = StateNo = 410
trigger9 = movecontact
trigger9 = StateNo = 430

[State -1]
type = ChangeState
value = 1110
triggerall = command = "SP2_m"
triggerall = command != "holddown"
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 220
trigger4 = movecontact
trigger4 = StateNo = 240
trigger5 = movecontact
trigger5 = StateNo = 250
trigger6 = movecontact
trigger6 = StateNo = 270
trigger7 = movecontact
trigger7 = StateNo = 400
trigger8 = movecontact
trigger8 = StateNo = 410
trigger9 = movecontact
trigger9 = StateNo = 430

[State -1]
type = ChangeState
value = 1120
triggerall = command = "SP2_s"
triggerall = command != "holddown"
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 220
trigger4 = movecontact
trigger4 = StateNo = 240
trigger5 = movecontact
trigger5 = StateNo = 250
trigger6 = movecontact
trigger6 = StateNo = 270
trigger7 = movecontact
trigger7 = StateNo = 400
trigger8 = movecontact
trigger8 = StateNo = 410
trigger9 = movecontact
trigger9 = StateNo = 430

;---------------------------------------------------------
;タイガーショット
[State -1]
type = ChangeState
value = 1200
triggerall = command = "SP3_w"
triggerall = command != "holddown"
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 220
trigger4 = movecontact
trigger4 = StateNo = 240
trigger5 = movecontact
trigger5 = StateNo = 250
trigger6 = movecontact
trigger6 = StateNo = 270
trigger7 = movecontact
trigger7 = StateNo = 400
trigger8 = movecontact
trigger8 = StateNo = 410
trigger9 = movecontact
trigger9 = StateNo = 430

[State -1]
type = ChangeState
value = 1210
triggerall = command = "SP3_m"
triggerall = command != "holddown"
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 220
trigger4 = movecontact
trigger4 = StateNo = 240
trigger5 = movecontact
trigger5 = StateNo = 250
trigger6 = movecontact
trigger6 = StateNo = 270
trigger7 = movecontact
trigger7 = StateNo = 400
trigger8 = movecontact
trigger8 = StateNo = 410
trigger9 = movecontact
trigger9 = StateNo = 430

[State -1]
type = ChangeState
value = 1220
triggerall = command = "SP3_s"
triggerall = command != "holddown"
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 220
trigger4 = movecontact
trigger4 = StateNo = 240
trigger5 = movecontact
trigger5 = StateNo = 250
trigger6 = movecontact
trigger6 = StateNo = 270
trigger7 = movecontact
trigger7 = StateNo = 400
trigger8 = movecontact
trigger8 = StateNo = 410
trigger9 = movecontact
trigger9 = StateNo = 430

;---------------------------------------------------------
;グラウンドタイガーショット
[State -1]
type = ChangeState
value = 1300
triggerall = command = "SP4_w"
triggerall = command != "holddown"
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 220
trigger4 = movecontact
trigger4 = StateNo = 240
trigger5 = movecontact
trigger5 = StateNo = 250
trigger6 = movecontact
trigger6 = StateNo = 270
trigger7 = movecontact
trigger7 = StateNo = 400
trigger8 = movecontact
trigger8 = StateNo = 410
trigger9 = movecontact
trigger9 = StateNo = 430

[State -1]
type = ChangeState
value = 1310
triggerall = command = "SP4_m"
triggerall = command != "holddown"
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 220
trigger4 = movecontact
trigger4 = StateNo = 240
trigger5 = movecontact
trigger5 = StateNo = 250
trigger6 = movecontact
trigger6 = StateNo = 270
trigger7 = movecontact
trigger7 = StateNo = 400
trigger8 = movecontact
trigger8 = StateNo = 410
trigger9 = movecontact
trigger9 = StateNo = 430

[State -1]
type = ChangeState
value = 1320
triggerall = command = "SP4_s"
triggerall = command != "holddown"
trigger1 = (statetype = S) || (StateType = C)
trigger1 = ctrl 
trigger2 = movecontact
trigger2 = StateNo = 200
trigger3 = movecontact
trigger3 = StateNo = 220
trigger4 = movecontact
trigger4 = StateNo = 240
trigger5 = movecontact
trigger5 = StateNo = 250
trigger6 = movecontact
trigger6 = StateNo = 270
trigger7 = movecontact
trigger7 = StateNo = 400
trigger8 = movecontact
trigger8 = StateNo = 410
trigger9 = movecontact
trigger9 = StateNo = 430

;============================================
;ゼロカウンター
[State -1]
type = ChangeState
value = 2600
triggerall = Command = "ZC"
triggerall = Power >= 500
trigger1 = StateNo = [150,153]  
ignorhitpause = 1

;==========================================================
;投げ
;----------------------------------------------------------
;タイガーキャリー
[State -1]
type = ChangeState
value = 810
triggerall = command = "PT"
triggerall = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 815
triggerall = command = "PT2"
triggerall = statetype = S
trigger1 = ctrl

;タイガーレイジ
[State -1]
type = ChangeState
value = 820
triggerall = command = "KT"
triggerall = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 825
triggerall = command = "KT2"
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;挑発
[State -1]
type = ChangeState
value = 195
triggerall = command = "s"
triggerall = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl 

;---------------------------------------------------------------------------
;立ち中パンチ
[State -1]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 81
trigger1 = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
 
;---------------------------------------------------------------------------
;立ち強パンチ
[State -1]
type = ChangeState
value = 240
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = P2BodyDist X <= 81
trigger1 = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 230
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
 
;---------------------------------------------------------------------------
;立ち弱キック
[State -1]
type = ChangeState
value = 250
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
 
;--------------------------------------------------------------------------
;立ち中キック
[State -1]
type = ChangeState
value = 260
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち強キック
[State -1]
type = ChangeState
value = 270
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
value = 610
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
 
;---------------------------------------------------------------------------
;ジャンプ強パンチ
[State -1]
type = ChangeState
value = 620
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
 
;---------------------------------------------------------------------------
;ジャンプ弱キック
[State -1]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl 

;---------------------------------------------------------------------------
;ジャンプ中キック
[State -1]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
 
;---------------------------------------------------------------------------
;ジャンプ強キック
[State -1]
type = ChangeState
value = 650
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl 

;---------------------------------------------------------------------------


