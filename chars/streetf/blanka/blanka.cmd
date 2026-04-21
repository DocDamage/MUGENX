;=====================================================================
;  CMD File For "blanka"                                    Made By H"
;                                                           2002.3.25
;=====================================================================

;=====================================================================
; Definition of the Commands
;=====================================================================

;-| 超必殺技 |--------------------------------------------------------
[Command]
name = "GSR_x"
command = ~48$B, F, B, $F, x
Time = 25

[Command]
name = "GSR_y"
command = ~48$B, F, B, $F, y
Time = 25

[Command]
name = "GSR_z"
command = ~48$B, F, B, $F, z
Time = 25

[Command]
name = "TH_a"
command = ~48DB, DF, DB, $U, a
time = 25

[Command]
name = "TH_b"
command = ~48DB, DF, DB, $U, b
time = 25

[Command]
name = "TH_c"
command = ~48DB, DF, DB, $U, c
time = 25

;-| 必殺技 |------------------------------------------------------

[Command]
name = "electric_x"
command = x, x, x, x, x
time = 45
buffer.time = 25

[Command]
name = "electric_y"
command = y, y, y, y, y
time = 35
buffer.time = 25

[Command]
name = "electric_z"
command = z, z, z, z, z
time = 25
buffer.time = 100

[Command]
name = "electric1"
command = x
time = 1

[Command]
name = "electric2"
command = y
time = 1

[Command]
name = "electric3"
command = z
time = 1

[Command]
name = "RA_x"
command = ~48$B, F, x
Time = 15

[Command]
name = "RA_y"
command = ~48$B, F, y
Time = 15

[Command]
name = "RA_z"
command = ~48$B, F, z
Time = 15

[Command]
name = "BR_a"
command = ~48$B, F, a
Time = 15

[Command]
name = "BR_b"
command = ~48$B, F, b
Time = 15

[Command]
name = "BR_c"
command = ~48$B, F, c
Time = 15

[Command]
name = "VR_a"
command = ~48$D, $U, a
Time = 15

[Command]
name = "VR_b"
command = ~48$D, $U, b
Time = 15

[Command]
name = "VR_c"
command = ~48$D, $U, c
Time = 15

[Command]
name = "SF"
command = a+b+c
time = 1

[Command]
name = "SB"
command = /B, a+b+c
time = 1

;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = z+x
time = 1

[Command]
name = "recovery_b"
command = a+b
time = 1

[Command]
name = "recovery_b"
command = b+c
time = 1

[Command]
name = "recovery_b"
command = c+a
time = 1

;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "ZC"
command = /F, x+a
time = 1

[Command]
name = "ZC"
command = /F, y+b
time = 1

[Command]
name = "ZC"
command = /F, z+c
time = 1

;------------------- Street Fighter Zero 3
[Command]
name = "throw"
command = /F, x+y
time = 1

[Command]
name = "throw"
command = /F, y+z
time = 1

[Command]
name = "throw"
command = /F, z+x
time = 1

[Command]
name = "throw"
command = /B, x+y
time = 1

[Command]
name = "throw"
command = /B, y+z
time = 1

[Command]
name = "throw"
command = /B, z+x
time = 1

[Command]
name = "airthrow_p"
command = /$F,x+y
time = 1

[Command]
name = "airthrow_p"
command = /$F,y+z
time = 1

[Command]
name = "airthrow_p"
command = /$F,z+x
time = 1

[Command]
name = "airthrow_p"
command = /$B,x+y
time = 1

[Command]
name = "airthrow_p"
command = /$B,y+z
time = 1

[Command]
name = "airthrow_p"
command = /$B,z+x
time = 1

[Command]
name = "airthrow_k"
command = /$F,a+b
time = 1

[Command]
name = "airthrow_k"
command = /$F,b+c
time = 1

[Command]
name = "airthrow_k"
command = /$F,c+a
time = 1

[Command]
name = "airthrow_k"
command = /$B,a+b
time = 1

[Command]
name = "airthrow_k"
command = /$B,b+c
time = 1

[Command]
name = "airthrow_k"
command = /$B,c+a
time = 1

[Command]
name = "FD+z"
command = /DF, z
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "back_y"
command = /B,y
time = 1

;------------------------ レバガチャ
[Command]
name = "random"
command = x
time = 1

[Command]
name = "random"
command = y
time = 1

[Command]
name = "random"
command = z
time = 1

[Command]
name = "random"
command = a
time = 1

[Command]
name = "random"
command = b
time = 1

[Command]
name = "random"
command = c
time = 1

[Command]
name = "random"
command = F
time = 1

[Command]
name = "random"
command = DF
time = 1

[Command]
name = "random"
command = D
time = 1

[Command]
name = "random"
command = DB
time = 1

[Command]
name = "random"
command = B
time = 1

[Command]
name = "random"
command = UB
time = 1

[Command]
name = "random"
command = U
time = 1

[Command]
name = "random"
command = UF
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
name = "K_renda"
command = a
time = 1

[Command]
name = "K_renda"
command = b
time = 1

[Command]
name = "K_renda"
command = c
time = 1

[Command]
name = "P_renda"
command = x
time = 1

[Command]
name = "P_renda"
command = y
time = 1

[Command]
name = "P_renda"
command = z
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
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

; 下の記述↓は絶対に消さないでください。
[Statedef -1]
;=====================================================================
; Super Arts
;=====================================================================
;---------------------------------------------------------------------
; グランドシェイブローリング（Ｌｖ１）
[State -1]
type = ChangeState
value = 3000
triggerall = StateType != A
triggerall = Ctrl = 1
triggerall = Power >= 1000
trigger1 = Command = "GSR_x"
trigger2 = (Command = "GSR_y" && Power < 2000) 
trigger3 = (Command = "GSR_z" && Power < 2000)

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 3000
triggerall = Power >= 1000
triggerall = StateType != A
triggerall = MoveContact
triggerall = StateNo = 200 || StateNo = 210 || StateNo = 205 || StateNo = 400 || StateNo = 430 || StateNo = 440 ||  StateNo = 300 && Time <= 5
trigger1 = Command = "GSR_x"
trigger2 = Command = "GSR_y" && Power < 2000
trigger3 = Command = "GSR_z" && Power < 2000

;---------------------------------------------------------------------
; グランドシェイブローリング（Ｌｖ２）
[State -1]
type = ChangeState
value = 3100
triggerall = StateType != A
triggerall = Ctrl = 1
triggerall = Power >= 2000
trigger1 = Command = "GSR_y"
trigger2 = (Command = "GSR_z" && Power < 3000)

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 3100
triggerall = Power >= 2000
triggerall = StateType != A
triggerall = MoveContact
triggerall = StateNo = 200 || StateNo = 210 || StateNo = 205 || StateNo = 400 || StateNo = 430 || StateNo = 440 ||  StateNo = 300 && Time <= 5
trigger1 = Command = "GSR_y"
trigger2 = Command = "GSR_z" && Power < 2000

;---------------------------------------------------------------------
; グランドシェイブローリング（Ｌｖ３）
[State -1]
type = ChangeState
value = 3200
triggerall = StateType != A
triggerall = Ctrl = 1
triggerall = Power >= 3000
trigger1 = Command = "GSR_z"

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 3200
triggerall = Power >= 3000
triggerall = StateType != A
triggerall = MoveContact
triggerall = StateNo = 200 || StateNo = 210 || StateNo = 205 || StateNo = 400 || StateNo = 430 || StateNo = 440 ||  StateNo = 300 && Time <= 5
trigger1 = Command = "GSR_z"

;---------------------------------------------------------------------
; トロピカルハザード（Ｌｖ１）
[State -1]
type = ChangeState
value = 3500
triggerall = StateType != A
triggerall = MoveType != H
triggerall = Power >= 1000
trigger1 = (Command = "TH_a") && (Ctrl = 1 || StateNo = 40)
trigger2 = (Command = "TH_b" && Power < 2000) && (Ctrl = 1 || StateNo = 40)
trigger3 = (Command = "TH_c" && Power < 2000) && (Ctrl = 1 || StateNo = 40)

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 3500
triggerall = Power >= 1000
triggerall = StateType != A
triggerall = MoveContact
triggerall = StateNo = 200 || StateNo = 210 || StateNo = 205 || StateNo = 400 || StateNo = 430 || StateNo = 440 ||  StateNo = 300 && Time <= 5
trigger1 = Command = "TH_a"
trigger2 = Command = "TH_b" && Power < 2000
trigger3 = Command = "TH_c" && Power < 2000

;---------------------------------------------------------------------
; トロピカルハザード（Ｌｖ２）
[State -1]
type = ChangeState
value = 3600
triggerall = StateType != A
triggerall = MoveType != H
triggerall = Ctrl = 1
triggerall = Power >= 2000
trigger1 = (Command = "GSR_y") && (Ctrl = 1 || StateNo = 40)
trigger2 = (Command = "GSR_z" && Power < 3000) && (Ctrl = 1 || StateNo = 40)

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 3600
triggerall = Power >= 2000
triggerall = StateType != A
triggerall = MoveContact
triggerall = StateNo = 200 || StateNo = 210 || StateNo = 205 || StateNo = 400 || StateNo = 430 || StateNo = 440 ||  StateNo = 300 && Time <= 5
trigger1 = Command = "TH_b"
trigger2 = Command = "TH_c" && Power < 2000

;---------------------------------------------------------------------
; トロピカルハザード（Ｌｖ３）
[State -1]
type = ChangeState
value = 3700
triggerall = StateType != A
triggerall = Power >= 3000
triggerall = MoveType != H
triggerall = Command = "TH_c"
trigger1 = Ctrl = 1 
trigger2 = StateNo = 40

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 3700
triggerall = Power >= 3000
triggerall = StateType != A
triggerall = MoveContact
triggerall = StateNo = 200 || StateNo = 210 || StateNo = 205 || StateNo = 400 || StateNo = 430 || StateNo = 440 ||  StateNo = 300 && Time <= 5
trigger1 = Command = "TH_c" 

;=====================================================================
; Basic Throws
;=====================================================================
;---------------------------------------------------------------------------
; ワイルドファング（Ｐ通常投げ）
[State -1, Run Back]
type = ChangeState
value = 800
trigger1 = command = "throw"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------
; ジャングルスラム（Ｐ空中投げ）
[State -1]
type = ChangeState
value = 900
triggerall = StateType = A
triggerall = Ctrl = 1
trigger1 = Command = "airthrow_p"

;---------------------------------------------------------------------
; ワイルドシュート（Ｋ空中投げ）
[State -1]
type = ChangeState
value = 950
triggerall = StateType = A
triggerall = Ctrl = 1
trigger1 = Command = "airthrow_k"


;=====================================================================
; Special Arts 
;=====================================================================
;---------------------------------------------------------------------
;エレクトリックサンダ－　弱
[State -1]
type = ChangeState
value = 1000
triggerall = command = "electric_x" && statetype != A
trigger1 = ctrl

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1000
triggerall = command = "electric_x"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = StateNo = 200 || StateNo = 210 || StateNo = 205 || StateNo = 400 
trigger2 = StateNo = 430 || StateNo = 440 ||  StateNo = 300 && Time <= 5


;---------------------------------------------------------------------
;エレクトリックサンダ－　中
[State -1]
type = ChangeState
value = 1010
triggerall = command = "electric_y" && statetype != A
trigger1 = ctrl

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1010
triggerall = command = "electric_y"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = StateNo = 200 || StateNo = 210 || StateNo = 205 || StateNo = 400 
trigger2 = StateNo = 430 || StateNo = 440 ||  StateNo = 300 && Time <= 5


;---------------------------------------------------------------------
;エレクトリックサンダ－　強
[State -1]
type = ChangeState
value = 1020
triggerall = command = "electric_z" && statetype != A
trigger1 = ctrl

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1020
triggerall = command = "electric_z"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = StateNo = 200 || StateNo = 210 || StateNo = 205 || StateNo = 400 
trigger2 = StateNo = 430 || StateNo = 440 ||  StateNo = 300 && Time <= 5

;---------------------------------------------------------------------
;ローリングアタック　弱
[State -1]
type = ChangeState
value = 1100
triggerall = command = "RA_x" && statetype != A
trigger1 = ctrl

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1100
triggerall = command = "RA_x"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = StateNo = 200 || StateNo = 210 || StateNo = 205 || StateNo = 400 
trigger2 = StateNo = 430 || StateNo = 440 ||  StateNo = 300 && Time <= 5

;---------------------------------------------------------------------
;ローリングアタック　中
[State -1]
type = ChangeState
value = 1110
triggerall = command = "RA_y" && statetype != A
trigger1 = ctrl

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1110
triggerall = command = "RA_y"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = StateNo = 200 || StateNo = 210 || StateNo = 205 || StateNo = 400 
trigger2 = StateNo = 430 || StateNo = 440 ||  StateNo = 300 && Time <= 5

;---------------------------------------------------------------------
;ローリングアタック　強
[State -1]
type = ChangeState
value = 1120
triggerall = command = "RA_z" && statetype != A
trigger1 = ctrl

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1120
triggerall = command = "RA_z"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = StateNo = 200 || StateNo = 210 || StateNo = 205 || StateNo = 400 
trigger2 = StateNo = 430 || StateNo = 440 ||  StateNo = 300 && Time <= 5

;---------------------------------------------------------------------
;バックステップローリング　弱
[State -1]
type = ChangeState
value = 1200
triggerall = command = "BR_a" && statetype != A
trigger1 = ctrl

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1200
triggerall = command = "BR_a"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = StateNo = 200 || StateNo = 210 || StateNo = 205 || StateNo = 400 
trigger2 = StateNo = 430 || StateNo = 440 ||  StateNo = 300 && Time <= 5

;---------------------------------------------------------------------
;バックステップローリング　中
[State -1]
type = ChangeState
value = 1210
triggerall = command = "BR_b" && statetype != A
trigger1 = ctrl

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1210
triggerall = command = "BR_b"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = StateNo = 200 || StateNo = 210 || StateNo = 205 || StateNo = 400 
trigger2 = StateNo = 430 || StateNo = 440 ||  StateNo = 300 && Time <= 5

;---------------------------------------------------------------------
;バックステップローリング　強
[State -1]
type = ChangeState
value = 1220
triggerall = command = "BR_c" && statetype != A
trigger1 = ctrl

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1220
triggerall = command = "BR_c"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = StateNo = 200 || StateNo = 210 || StateNo = 205 || StateNo = 400 
trigger2 = StateNo = 430 || StateNo = 440 ||  StateNo = 300 && Time <= 5

;---------------------------------------------------------------------
;バーチカルローリング　弱
[State -1]
type = ChangeState
value = 1300
triggerall = command = "VR_a" && statetype != A
trigger1 = ctrl
trigger2 = StateNo = 40
trigger2 = MoveType != H

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1300
triggerall = command = "VR_a"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = StateNo = 200 || StateNo = 210 || StateNo = 205 || StateNo = 400 
trigger2 = StateNo = 430 || StateNo = 440 ||  StateNo = 300 && Time <= 5

;---------------------------------------------------------------------
;バーチカルローリング　中
[State -1]
type = ChangeState
value = 1310
triggerall = command = "VR_b" && statetype != A
trigger1 = ctrl
trigger2 = StateNo = 40
trigger2 = MoveType != H

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1310
triggerall = command = "VR_b"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = StateNo = 200 || StateNo = 210 || StateNo = 205 || StateNo = 400 
trigger2 = StateNo = 430 || StateNo = 440 ||  StateNo = 300 && Time <= 5

;---------------------------------------------------------------------
;バーチカルローリング　強
[State -1]
type = ChangeState
value = 1320
triggerall = command = "VR_c" && statetype != A
trigger1 = ctrl
trigger2 = StateNo = 40
trigger2 = MoveType != H

;------------------------ キャンセル設定
[State -1]
type = ChangeState
value = 1320
triggerall = command = "VR_c"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = StateNo = 200 || StateNo = 210 || StateNo = 205 || StateNo = 400 
trigger2 = StateNo = 430 || StateNo = 440 ||  StateNo = 300 && Time <= 5

;---------------------------------------------------------------------------
;サプライズフォワード
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "SF"
trigger1 = command != "SB"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------ 空キャンセル設定
[State -1]
type = ChangeState
value = 100
triggerall = command = "SF"
triggerall = command != "SB"
triggerall = StateType != A
triggerall = MoveContact
trigger1 = StateNo = 200&& Time <= 7 || StateNo = 210&& Time <= 7 || StateNo = 205&& Time <= 6 || StateNo = 400&& Time <= 7 
trigger2 = StateNo = 430&& Time <=10 || StateNo = 440&& Time <= 10 ||  StateNo = 300 && Time <= 5


;---------------------------------------------------------------------------
;サプライズバック
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "SB"
trigger1 = statetype = S
trigger1 = ctrl

;=====================================================================
; Special Attacks , Moves and so on.
;=====================================================================
;---------------------------------------------------------------------
;ゼロカウンター
[State -1]
type = ChangeState
value = 2000
triggerall = Command = "ZC"
triggerall = Power >= 1000
trigger1 = StateNo = [150,153]  
ignorhitpause = 1

;=====================================================================
; Dir + Button
;=====================================================================
;---------------------------------------------------------------------------
;アマゾンリバーラン
[State -1]
type = ChangeState
value = 500
triggerall = command = "FD+z"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; ロッククラッシュ
[State -1]
type = ChangeState
value = 300
triggerall = command != "holddown"
triggerall = P2Bodydist X < 30
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "fwd_y"
trigger2 = command = "back_y"

;=====================================================================
; Taunts
;=====================================================================

;---------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;=====================================================================
; Basic Arts
;=====================================================================

;---------------------------------------------------------------------
;立ち弱パンチ（遠距離）
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2Bodydist X >= 30
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち弱パンチ（近距離）
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2Bodydist X < 30
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち中パンチ
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち弱キック（遠距離）
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2Bodydist X >= 30
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち弱キック（近距離）
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2Bodydist X < 30
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち中キック（遠距離）
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2Bodydist X >= 30
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち中キック（近距離）
[State -1, Stand Medium Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2Bodydist X < 30
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立ち強キック
[State -1, Stand Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 6

;---------------------------------------------------------------------------
;しゃがみ中パンチ
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 200) && time >= 6

;---------------------------------------------------------------------------
;しゃがみ中キック
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中中パンチ
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------
;空中強パンチ（垂直Ｊ）
[State -1,J]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X = 0

;---------------------------------------------------------------------------
;空中強パンチ（斜めＪ）
[State -1, Jump Strong Punch]
type = ChangeState
value = 625
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = Vel X != 0

;---------------------------------------------------------------------------
;空中弱キック
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中中キック
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

