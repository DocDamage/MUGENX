;-| 超必殺技 |--------------------------------------------------------
[Command]
name = "HY"
command = ~D, DF, F, D, DF, F, a
time = 20

[Command] 
name = "HY"   ;Same name as above
command = ~D, DF, F, D, DF, F, b
time = 20

[Command]
name = "HY_r"
command = ~D, DB, B, D, DB, B, a
time = 20

[Command]
name = "HY_r"
command = ~D, DB, B, D, DB, B, b
time = 20

;-| 必殺技 |------------------------------------------------------
[Command]
name = "SP1"
command = ~D, D, x
time = 10

[Command]
name = "SP2"
command = ~D, D, a
time = 10

[Command]
name = "SP3_w"
command = ~D, DB, B, a
time = 20

[Command]
name = "SP3_s"
command = ~D, DB, B, b
time = 20

[Command]
name = "SP4_w"
command = ~D, DB, B, x
time = 20

[Command]
name = "SP4_s"
command = ~D, DB, B, y
time = 20

[Command]
name = "SP5_w"
command = ~38$D, $U, x
time = 15  

[Command]
name = "SP5_s"
command = ~38$D, $U, y
time = 15 
 
;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

[Command]
name = "switch"
command = a,a,a
time = 1

[Command]
name = "switch2"
command = b,b,b
time = 1

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "yb"
command = y+b
time = 1

[Command]
name = "xa"
command = x+a
time = 1

[Command]
name = "back_xa"
command = /$B, x+a
time = 1

;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| ボタン設定（いじらない）|---------------------------------------------------------
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

[Command]
name = "fwd_a"
command = /F, a
time = 1

[Command]
name = "fwd_y"
command = /F, y
time = 1

[Command]
name = "fwd_b"
command = /F, b
time = 1

[Command]
name = "back_a"
command = /B, a
time = 1

[Command]
name = "fwd_x"
command = /F, x
time = 1

[Command]
name = "back_x"
command = /B, x
time = 1

[Command]
name = "back_z"
command = /B, z
time = 1

[Command]
name = "up_y"
command = /$U, y
time = 1

[Command]
name = "down_y"
command = /$D, y
time = 1

;-| 押しっぱなし設定（いじらない）-------------------------------------------------------
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

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

; 下の記述↓は絶対に消さないでください。
[Statedef -1]

;---------------------------------------------------------------------
;鳳凰裂爪脚
[State -1]
type = ChangeState
value = 3300
triggerall = Life <= 300
triggerall = Power >= 1000
triggerall = command = "HY"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger3 = stateno = 230
trigger4 = stateno = 400
trigger5 = stateno = 410
trigger6 = stateno = 430
trigger7 = stateno = 101

[State -1]
type = ChangeState
value = 3000
triggerall = Power >= 1000
triggerall = command = "HY"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger3 = stateno = 230
trigger4 = stateno = 400
trigger5 = stateno = 410
trigger6 = stateno = 430
trigger7 = stateno = 101

;鳳凰天舞脚
[State -1]
type = ChangeState
value = 3400
triggerall = Life <= 300
triggerall = Power >= 1000
triggerall = command = "HY"
triggerall = Facing != enemynear,facing
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 3400
triggerall = Life <= 300
triggerall = Power >= 1000
triggerall = command = "HY_r"
triggerall = Facing = enemynear,facing
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 3100
triggerall = Power >= 1000
triggerall = command = "HY"
trigger1 = statetype = A
trigger1 = ctrl = 1

[State -1]
type = ChangeState
value = 3100
triggerall = Power >= 1000
triggerall = command = "HY_r"
triggerall = Facing = enemynear,facing
trigger1 = statetype = A
trigger1 = ctrl = 1

;---------------------------------------------------------------------
;狙鷲陣
[State -1]
type = ChangeState
value = 6500
triggerall = command = "SP1"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger3 = stateno = 230
trigger4 = stateno = 400
trigger5 = stateno = 410
trigger6 = stateno = 430
trigger7 = stateno = 101

;猟虎陣
[State -1]
type = ChangeState
value = 6011
triggerall = command = "SP2"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger3 = stateno = 230
trigger4 = stateno = 400
trigger5 = stateno = 410
trigger6 = stateno = 430
trigger7 = stateno = 101

;満月斬
[State -1]
type = ChangeState
value = 1000
triggerall = command = "SP3_w"
trigger1 = Statetype != A
trigger1 = Ctrl = 1 
trigger2 = stateno = 210
trigger3 = stateno = 230
trigger4 = stateno = 400
trigger5 = stateno = 410
trigger6 = stateno = 430
trigger7 = stateno = 101

[State -1]
type = ChangeState
value = 1050
triggerall = command = "SP3_s"
trigger1 = Statetype != A
trigger1 = Ctrl = 1 
trigger2 = stateno = 210
trigger3 = stateno = 230
trigger4 = stateno = 400
trigger5 = stateno = 410
trigger6 = stateno = 430
trigger7 = stateno = 101

;排気撃
[State -1]
type = ChangeState
value = 1100
triggerall = command = "SP4_w"
trigger1 = Statetype != A
trigger1 = Ctrl = 1 
trigger2 = stateno = 210
trigger3 = stateno = 230
trigger4 = stateno = 400
trigger5 = stateno = 410
trigger6 = stateno = 430
trigger7 = stateno = 101

[State -1]
type = ChangeState
value = 1150
triggerall = command = "SP4_s"
trigger1 = Statetype != A
trigger1 = Ctrl = 1 
trigger2 = stateno = 210
trigger3 = stateno = 230
trigger4 = stateno = 400
trigger5 = stateno = 410
trigger6 = stateno = 430
trigger7 = stateno = 101

;空砂塵
[State -1]
type = ChangeState
value = 1200
triggerall = command = "SP5_w"
trigger1 = Statetype != A
trigger1 = Ctrl = 1 
trigger2 = StateNo = 40
trigger3 = stateno = 210
trigger4 = stateno = 230
trigger5 = stateno = 400
trigger6 = stateno = 410
trigger7 = stateno = 430
trigger8 = stateno = 101

[State -1]
type = ChangeState
value = 1250
triggerall = command = "SP5_s"
trigger1 = Statetype != A
trigger1 = Ctrl = 1 
trigger2 = StateNo = 40
trigger3 = stateno = 210
trigger4 = stateno = 230
trigger5 = stateno = 400
trigger6 = stateno = 410
trigger7 = stateno = 430
trigger8 = stateno = 101

;===========================================================================
;後回避
[State -1]
type = ChangeState
value = 2010
triggerall = Command = "back_xa"
trigger1 = statetype = S
trigger1 = ctrl = 1

;前回避
[State -1]
type = ChangeState
value = 2000
triggerall = Command = "xa"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;----------------------------------------------------------------------
;猟虎撃
[State -1]
type = ChangeState
value = 300
triggerall = command = "fwd_a"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger3 = stateno = 230
trigger4 = stateno = 400
trigger5 = stateno = 410
trigger6 = stateno = 430
trigger7 = stateno = 101

;-------------------------------------
;流滝蹴
[State -1]
type = ChangeState
value = 695
triggerall = Vel X = 0
triggerall = command = "down_a"
trigger1 = statetype = A
trigger1 = ctrl

[State -1]
type = ChangeState
value = 690
triggerall = command = "down_a"
trigger1 = statetype = A
trigger1 = ctrl

;----------------------------------------
;投げ
;反動撃
[State -1]
type = ChangeState
value = 800
triggerall = command = "fwd_y"
triggerall = p2bodydist X < 30
trigger1 = statetype = S
trigger1 = ctrl

;回旋風
[State -1]
type = ChangeState
value = 850
triggerall = command = "fwd_b"
triggerall = p2bodydist X < 30
trigger1 = statetype = S
trigger1 = ctrl

;----------------------------------------
;吹っ飛ばし
[State -1]
type = ChangeState
value = 350
triggerall = command = "yb"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101

[State -1]
type = ChangeState
value = 700
triggerall = command = "yb"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち弱パンチ
[State -1]
type = ChangeState
value = 210
triggerall = P2BodyDist X < 30
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = StateNo = 420 && Time > 10 && MoveContact

[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = StateNo = 420 && Time > 10 && MoveContact  

;---------------------------------------------------------------------------
;立ち強パンチ
[State -1]
type = ChangeState
value = 230
triggerall = P2BodyDist X < 30
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101

[State -1]
type = ChangeState
value = 220
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101

;---------------------------------------------------------------------------
;立ち弱キック
[State -1]
type = ChangeState
value = 250
triggerall = P2BodyDist X < 30
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = StateNo = 420 && Time > 10 && MoveContact

[State -1]
type = ChangeState
value = 240
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = StateNo = 420 && Time > 10 && MoveContact

;---------------------------------------------------------------------------
;立ち強キック
[State -1]
type = ChangeState
value = 270
triggerall = P2BodyDist X < 30
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101

[State -1]
type = ChangeState
value = 260
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101

;---------------------------------------------------------------------------
;挑発
[State -1]
type = ChangeState
value = 195
triggerall = command = "start"
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
trigger2 = stateno = 101
trigger3 = StateNo = 420 && Time > 10 && MoveContact

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1]
type = ChangeState
value = 420
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
trigger3 = StateNo = 420 && Time > 10 && MoveContact

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1]
type = ChangeState
value = 430
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 101

;---------------------------------------------------------------------------
;空中弱パンチ
[State -1]
type = ChangeState
value = 610
triggerall = Var(56) = 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強パンチ
[State -1]
type = ChangeState
value = 630
triggerall = Var(56) = 1
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

[State -1]
type = ChangeState
value = 620
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中弱キック
[State -1]
type = ChangeState
value = 640
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強キック
[State -1]
type = ChangeState
value = 660
triggerall = var(56) = 1
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

[State -1]
type = ChangeState
value = 650
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
